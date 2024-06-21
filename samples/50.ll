; ModuleID = 'samples/50.bc'
source_filename = "psa_crypto_slot_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_global_data_t = type { [32 x %struct.psa_key_slot_t], i8 }
%struct.psa_key_slot_t = type { %struct.psa_core_key_attributes_t, i64, %struct.key_data }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.key_data = type { ptr, i64 }
%struct.mbedtls_psa_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@global_data = internal global %struct.psa_global_data_t zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define i32 @psa_is_valid_key_id(i32 noundef %key, i32 noundef %vendor_ok) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %vendor_ok.addr = alloca i32, align 4
  %key_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !4
  store i32 %vendor_ok, ptr %vendor_ok.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %key_id) #5
  %0 = load i32, ptr %key.addr, align 4, !tbaa !4
  store i32 %0, ptr %key_id, align 4, !tbaa !4
  %1 = load i32, ptr %key_id, align 4, !tbaa !4
  %cmp = icmp ule i32 1, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %key_id, align 4, !tbaa !4
  %cmp1 = icmp ule i32 %2, 1073741823
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, ptr %vendor_ok.addr, align 4, !tbaa !4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true2, label %if.end7

land.lhs.true2:                                   ; preds = %if.end
  %4 = load i32, ptr %key_id, align 4, !tbaa !4
  %cmp3 = icmp ule i32 1073741824, %4
  br i1 %cmp3, label %land.lhs.true4, label %if.end7

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %5 = load i32, ptr %key_id, align 4, !tbaa !4
  %cmp5 = icmp ule i32 %5, 2147483647
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true4, %land.lhs.true2, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %key_id) #5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @psa_initialize_key_slots() #0 {
entry:
  %bf.load = load i8, ptr getelementptr inbounds (%struct.psa_global_data_t, ptr @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr getelementptr inbounds (%struct.psa_global_data_t, ptr @global_data, i32 0, i32 1), align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @psa_wipe_all_key_slots() #0 {
entry:
  %slot_idx = alloca i64, align 8
  %slot = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot_idx) #5
  store i64 0, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %cmp = icmp ult i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #5
  %1 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], ptr @global_data, i64 0, i64 %1
  store ptr %arrayidx, ptr %slot, align 8, !tbaa !10
  %2 = load ptr, ptr %slot, align 8, !tbaa !10
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, ptr %2, i32 0, i32 1
  store i64 1, ptr %lock_count, align 8, !tbaa !12
  %3 = load ptr, ptr %slot, align 8, !tbaa !10
  %call = call i32 @psa_wipe_key_slot(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %bf.load = load i8, ptr getelementptr inbounds (%struct.psa_global_data_t, ptr @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr getelementptr inbounds (%struct.psa_global_data_t, ptr @global_data, i32 0, i32 1), align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot_idx) #5
  ret void
}

declare i32 @psa_wipe_key_slot(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @psa_get_empty_key_slot(ptr noundef %volatile_key_id, ptr noundef %p_slot) #0 {
entry:
  %retval = alloca i32, align 4
  %volatile_key_id.addr = alloca ptr, align 8
  %p_slot.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %slot_idx = alloca i64, align 8
  %selected_slot = alloca ptr, align 8
  %unlocked_persistent_key_slot = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %volatile_key_id, ptr %volatile_key_id.addr, align 8, !tbaa !10
  store ptr %p_slot, ptr %p_slot.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  store i32 -151, ptr %status, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot_idx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %selected_slot) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %unlocked_persistent_key_slot) #5
  %bf.load = load i8, ptr getelementptr inbounds (%struct.psa_global_data_t, ptr @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -137, ptr %status, align 4, !tbaa !4
  br label %error

if.end:                                           ; preds = %entry
  store ptr null, ptr %unlocked_persistent_key_slot, align 8, !tbaa !10
  store ptr null, ptr %selected_slot, align 8, !tbaa !10
  store i64 0, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %cmp = icmp ult i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #5
  %1 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], ptr @global_data, i64 0, i64 %1
  store ptr %arrayidx, ptr %slot, align 8, !tbaa !10
  %2 = load ptr, ptr %slot, align 8, !tbaa !10
  %call = call i32 @psa_is_key_slot_occupied(ptr noundef %2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %for.body
  %3 = load ptr, ptr %slot, align 8, !tbaa !10
  store ptr %3, ptr %selected_slot, align 8, !tbaa !10
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %for.body
  %4 = load ptr, ptr %unlocked_persistent_key_slot, align 8, !tbaa !10
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  %5 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr = getelementptr inbounds %struct.psa_key_slot_t, ptr %5, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr, i32 0, i32 2
  %6 = load i32, ptr %lifetime, align 4, !tbaa !20
  %and = and i32 %6, 255
  %conv = trunc i32 %and to i8
  %conv5 = zext i8 %conv to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.end12, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %slot, align 8, !tbaa !10
  %call9 = call i32 @psa_is_key_slot_locked(ptr noundef %7)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true8
  %8 = load ptr, ptr %slot, align 8, !tbaa !10
  store ptr %8, ptr %unlocked_persistent_key_slot, align 8, !tbaa !10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true8, %land.lhs.true, %if.end3
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %cleanup, %for.cond
  %10 = load ptr, ptr %selected_slot, align 8, !tbaa !10
  %cmp13 = icmp eq ptr %10, null
  br i1 %cmp13, label %land.lhs.true15, label %if.end20

land.lhs.true15:                                  ; preds = %for.end
  %11 = load ptr, ptr %unlocked_persistent_key_slot, align 8, !tbaa !10
  %cmp16 = icmp ne ptr %11, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true15
  %12 = load ptr, ptr %unlocked_persistent_key_slot, align 8, !tbaa !10
  store ptr %12, ptr %selected_slot, align 8, !tbaa !10
  %13 = load ptr, ptr %selected_slot, align 8, !tbaa !10
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, ptr %13, i32 0, i32 1
  store i64 1, ptr %lock_count, align 8, !tbaa !12
  %14 = load ptr, ptr %selected_slot, align 8, !tbaa !10
  %call19 = call i32 @psa_wipe_key_slot(ptr noundef %14)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true15, %for.end
  %15 = load ptr, ptr %selected_slot, align 8, !tbaa !10
  %cmp21 = icmp ne ptr %15, null
  br i1 %cmp21, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  %16 = load ptr, ptr %selected_slot, align 8, !tbaa !10
  %call24 = call i32 @psa_lock_key_slot(ptr noundef %16)
  store i32 %call24, ptr %status, align 4, !tbaa !4
  %17 = load i32, ptr %status, align 4, !tbaa !4
  %cmp25 = icmp ne i32 %17, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  br label %error

if.end28:                                         ; preds = %if.then23
  %18 = load ptr, ptr %selected_slot, align 8, !tbaa !10
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @global_data to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  %conv29 = trunc i64 %sub.ptr.div to i32
  %add = add i32 2147483616, %conv29
  %19 = load ptr, ptr %volatile_key_id.addr, align 8, !tbaa !10
  store i32 %add, ptr %19, align 4, !tbaa !4
  %20 = load ptr, ptr %selected_slot, align 8, !tbaa !10
  %21 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  store ptr %20, ptr %21, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

if.end30:                                         ; preds = %if.end20
  store i32 -141, ptr %status, align 4, !tbaa !4
  br label %error

error:                                            ; preds = %if.end30, %if.then27, %if.then
  %22 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  store ptr null, ptr %22, align 8, !tbaa !10
  %23 = load ptr, ptr %volatile_key_id.addr, align 8, !tbaa !10
  store i32 0, ptr %23, align 4, !tbaa !4
  %24 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %error, %if.end28
  call void @llvm.lifetime.end.p0(i64 8, ptr %unlocked_persistent_key_slot) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %selected_slot) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot_idx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %25 = load i32, ptr %retval, align 4
  ret i32 %25

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_is_key_slot_occupied(ptr noundef %slot) #3 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %attr = getelementptr inbounds %struct.psa_key_slot_t, ptr %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr, i32 0, i32 0
  %1 = load i16, ptr %type, align 8, !tbaa !22
  %conv = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_is_key_slot_locked(ptr noundef %slot) #3 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %lock_count, align 8, !tbaa !12
  %cmp = icmp ugt i64 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_lock_key_slot(ptr noundef %slot) #3 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %lock_count, align 8, !tbaa !12
  %cmp = icmp uge i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -151, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %lock_count1 = getelementptr inbounds %struct.psa_key_slot_t, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %lock_count1, align 8, !tbaa !12
  %inc = add i64 %3, 1
  store i64 %inc, ptr %lock_count1, align 8, !tbaa !12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @psa_get_and_lock_key_slot(i32 noundef %key, ptr noundef %p_slot) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %p_slot.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %volatile_key_id = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !4
  store ptr %p_slot, ptr %p_slot.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  store i32 -151, ptr %status, align 4, !tbaa !4
  %0 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  store ptr null, ptr %0, align 8, !tbaa !10
  %bf.load = load i8, ptr getelementptr inbounds (%struct.psa_global_data_t, ptr @global_data, i32 0, i32 1), align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -137, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %key.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  %call = call i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %1, ptr noundef %2)
  store i32 %call, ptr %status, align 4, !tbaa !4
  %3 = load i32, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %3, -140
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %volatile_key_id) #5
  %5 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  %call3 = call i32 @psa_get_empty_key_slot(ptr noundef %volatile_key_id, ptr noundef %5)
  store i32 %call3, ptr %status, align 4, !tbaa !4
  %6 = load i32, ptr %status, align 4, !tbaa !4
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  %7 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %8 = load i32, ptr %key.addr, align 4, !tbaa !4
  %9 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %attr = getelementptr inbounds %struct.psa_key_slot_t, ptr %10, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr, i32 0, i32 3
  store i32 %8, ptr %id, align 8, !tbaa !23
  %11 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %attr7 = getelementptr inbounds %struct.psa_key_slot_t, ptr %12, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr7, i32 0, i32 2
  store i32 1, ptr %lifetime, align 4, !tbaa !20
  store i32 -140, ptr %status, align 4, !tbaa !4
  %13 = load i32, ptr %status, align 4, !tbaa !4
  %cmp8 = icmp eq i32 %13, -140
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %14 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %call10 = call i32 @psa_load_persistent_key_into_slot(ptr noundef %15)
  store i32 %call10, ptr %status, align 4, !tbaa !4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6
  %16 = load i32, ptr %status, align 4, !tbaa !4
  %cmp12 = icmp ne i32 %16, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %17 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %call14 = call i32 @psa_wipe_key_slot(ptr noundef %18)
  %19 = load i32, ptr %status, align 4, !tbaa !4
  %cmp15 = icmp eq i32 %19, -140
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then13
  store i32 -136, ptr %status, align 4, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13
  br label %if.end19

if.else:                                          ; preds = %if.end11
  %20 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %attr18 = getelementptr inbounds %struct.psa_key_slot_t, ptr %21, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr18, i32 0, i32 4
  %usage = getelementptr inbounds %struct.psa_key_policy_s, ptr %policy, i32 0, i32 0
  call void @psa_extend_key_usage_flags(ptr noundef %usage)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end17
  %22 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %volatile_key_id) #5
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %key, ptr noundef %p_slot) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %p_slot.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %key_id = alloca i32, align 4
  %slot_idx = alloca i64, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !4
  store ptr %p_slot, ptr %p_slot.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  store i32 -151, ptr %status, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %key_id) #5
  %0 = load i32, ptr %key.addr, align 4, !tbaa !4
  store i32 %0, ptr %key_id, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot_idx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #5
  store ptr null, ptr %slot, align 8, !tbaa !10
  %1 = load i32, ptr %key_id, align 4, !tbaa !4
  %call = call i32 @psa_key_id_is_volatile(i32 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %key_id, align 4, !tbaa !4
  %sub = sub i32 %2, 2147483616
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], ptr @global_data, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %slot, align 8, !tbaa !10
  %3 = load i32, ptr %key.addr, align 4, !tbaa !4
  %4 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr = getelementptr inbounds %struct.psa_key_slot_t, ptr %4, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr, i32 0, i32 3
  %5 = load i32, ptr %id, align 8, !tbaa !23
  %call1 = call i32 @mbedtls_svc_key_id_equal(i32 noundef %3, i32 noundef %5)
  %tobool2 = icmp ne i32 %call1, 0
  %6 = zext i1 %tobool2 to i64
  %cond = select i1 %tobool2, i32 0, i32 -140
  store i32 %cond, ptr %status, align 4, !tbaa !4
  br label %if.end15

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %key.addr, align 4, !tbaa !4
  %call3 = call i32 @psa_is_valid_key_id(i32 noundef %7, i32 noundef 1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  store i32 -136, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  store i64 0, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %cmp = icmp ult i64 %8, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds [32 x %struct.psa_key_slot_t], ptr @global_data, i64 0, i64 %9
  store ptr %arrayidx6, ptr %slot, align 8, !tbaa !10
  %10 = load i32, ptr %key.addr, align 4, !tbaa !4
  %11 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr7 = getelementptr inbounds %struct.psa_key_slot_t, ptr %11, i32 0, i32 0
  %id8 = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr7, i32 0, i32 3
  %12 = load i32, ptr %id8, align 8, !tbaa !23
  %call9 = call i32 @mbedtls_svc_key_id_equal(i32 noundef %10, i32 noundef %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  br label %for.end

if.end12:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %13 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %if.then11, %for.cond
  %14 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %cmp13 = icmp ult i64 %14, 32
  %15 = zext i1 %cmp13 to i64
  %cond14 = select i1 %cmp13, i32 0, i32 -140
  store i32 %cond14, ptr %status, align 4, !tbaa !4
  br label %if.end15

if.end15:                                         ; preds = %for.end, %if.then
  %16 = load i32, ptr %status, align 4, !tbaa !4
  %cmp16 = icmp eq i32 %16, 0
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.end15
  %17 = load ptr, ptr %slot, align 8, !tbaa !10
  %call18 = call i32 @psa_lock_key_slot(ptr noundef %17)
  store i32 %call18, ptr %status, align 4, !tbaa !4
  %18 = load i32, ptr %status, align 4, !tbaa !4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  %19 = load ptr, ptr %slot, align 8, !tbaa !10
  %20 = load ptr, ptr %p_slot.addr, align 8, !tbaa !10
  store ptr %19, ptr %20, align 8, !tbaa !10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end15
  %21 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot_idx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %key_id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @psa_load_persistent_key_into_slot(ptr noundef %slot) #0 {
entry:
  %slot.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %key_data = alloca ptr, align 8
  %key_data_length = alloca i64, align 8
  store ptr %slot, ptr %slot.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  store i32 0, ptr %status, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_data) #5
  store ptr null, ptr %key_data, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_data_length) #5
  store i64 0, ptr %key_data_length, align 8, !tbaa !8
  %0 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %attr = getelementptr inbounds %struct.psa_key_slot_t, ptr %0, i32 0, i32 0
  %call = call i32 @psa_load_persistent_key(ptr noundef %attr, ptr noundef %key_data, ptr noundef %key_data_length)
  store i32 %call, ptr %status, align 4, !tbaa !4
  %1 = load i32, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %3 = load ptr, ptr %key_data, align 8, !tbaa !10
  %4 = load i64, ptr %key_data_length, align 8, !tbaa !8
  %call1 = call i32 @psa_copy_key_material_into_slot(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  store i32 %call1, ptr %status, align 4, !tbaa !4
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %5 = load ptr, ptr %key_data, align 8, !tbaa !10
  %6 = load i64, ptr %key_data_length, align 8, !tbaa !8
  call void @psa_free_persistent_key_data(ptr noundef %5, i64 noundef %6)
  %7 = load i32, ptr %status, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_data_length) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_data) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @psa_extend_key_usage_flags(ptr noundef %usage_flags) #3 {
entry:
  %usage_flags.addr = alloca ptr, align 8
  store ptr %usage_flags, ptr %usage_flags.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %usage_flags.addr, align 8, !tbaa !10
  %1 = load i32, ptr %0, align 4, !tbaa !4
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %usage_flags.addr, align 8, !tbaa !10
  %3 = load i32, ptr %2, align 4, !tbaa !4
  %or = or i32 %3, 1024
  store i32 %or, ptr %2, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %usage_flags.addr, align 8, !tbaa !10
  %5 = load i32, ptr %4, align 4, !tbaa !4
  %and1 = and i32 %5, 8192
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %usage_flags.addr, align 8, !tbaa !10
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %or4 = or i32 %7, 2048
  store i32 %or4, ptr %6, align 4, !tbaa !4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @psa_unlock_key_slot(ptr noundef %slot) #0 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, ptr %1, i32 0, i32 1
  %2 = load i64, ptr %lock_count, align 8, !tbaa !12
  %cmp1 = icmp ugt i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %slot.addr, align 8, !tbaa !10
  %lock_count3 = getelementptr inbounds %struct.psa_key_slot_t, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %lock_count3, align 8, !tbaa !12
  %dec = add i64 %4, -1
  store i64 %dec, ptr %lock_count3, align 8, !tbaa !12
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 -151, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @psa_validate_key_location(i32 noundef %lifetime, ptr noundef %p_drv) #0 {
entry:
  %retval = alloca i32, align 4
  %lifetime.addr = alloca i32, align 4
  %p_drv.addr = alloca ptr, align 8
  store i32 %lifetime, ptr %lifetime.addr, align 4, !tbaa !4
  store ptr %p_drv, ptr %p_drv.addr, align 8, !tbaa !10
  %0 = load i32, ptr %lifetime.addr, align 4, !tbaa !4
  %call = call i32 @psa_key_lifetime_is_external(i32 noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p_drv.addr, align 8, !tbaa !10
  store i32 -135, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_key_lifetime_is_external(i32 noundef %lifetime) #3 {
entry:
  %lifetime.addr = alloca i32, align 4
  store i32 %lifetime, ptr %lifetime.addr, align 4, !tbaa !4
  %0 = load i32, ptr %lifetime.addr, align 4, !tbaa !4
  %shr = lshr i32 %0, 8
  %cmp = icmp ne i32 %shr, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @psa_validate_key_persistence(i32 noundef %lifetime) #0 {
entry:
  %retval = alloca i32, align 4
  %lifetime.addr = alloca i32, align 4
  store i32 %lifetime, ptr %lifetime.addr, align 4, !tbaa !4
  %0 = load i32, ptr %lifetime.addr, align 4, !tbaa !4
  %and = and i32 %0, 255
  %conv = trunc i32 %and to i8
  %conv1 = zext i8 %conv to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %lifetime.addr, align 4, !tbaa !4
  %and3 = and i32 %1, 255
  %conv4 = trunc i32 %and3 to i8
  %conv5 = zext i8 %conv4 to i32
  %cmp6 = icmp eq i32 %conv5, 255
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 -135, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else9, %if.then8, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @psa_open_key(i32 noundef %key, ptr noundef %handle) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #5
  %0 = load i32, ptr %key.addr, align 4, !tbaa !4
  %call = call i32 @psa_get_and_lock_key_slot(i32 noundef %0, ptr noundef %slot)
  store i32 %call, ptr %status, align 4, !tbaa !4
  %1 = load i32, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handle.addr, align 8, !tbaa !10
  store i32 0, ptr %2, align 4, !tbaa !4
  %3 = load i32, ptr %status, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %3, -136
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -140, ptr %status, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %5 = load i32, ptr %key.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %handle.addr, align 8, !tbaa !10
  store i32 %5, ptr %6, align 4, !tbaa !4
  %7 = load ptr, ptr %slot, align 8, !tbaa !10
  %call4 = call i32 @psa_unlock_key_slot(ptr noundef %7)
  store i32 %call4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @psa_close_key(i32 noundef %handle) #0 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %handle, ptr %handle.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #5
  %0 = load i32, ptr %handle.addr, align 4, !tbaa !4
  %call = call i32 @psa_key_handle_is_null(i32 noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %handle.addr, align 4, !tbaa !4
  %call1 = call i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %1, ptr noundef %slot)
  store i32 %call1, ptr %status, align 4, !tbaa !4
  %2 = load i32, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %3, -140
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  store i32 -136, ptr %status, align 4, !tbaa !4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  %4 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %slot, align 8, !tbaa !10
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %lock_count, align 8, !tbaa !12
  %cmp7 = icmp ule i64 %6, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %7 = load ptr, ptr %slot, align 8, !tbaa !10
  %call9 = call i32 @psa_wipe_key_slot(ptr noundef %7)
  store i32 %call9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %8 = load ptr, ptr %slot, align 8, !tbaa !10
  %call10 = call i32 @psa_unlock_key_slot(ptr noundef %8)
  store i32 %call10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_key_handle_is_null(i32 noundef %handle) #3 {
entry:
  %handle.addr = alloca i32, align 4
  store i32 %handle, ptr %handle.addr, align 4, !tbaa !4
  %0 = load i32, ptr %handle.addr, align 4, !tbaa !4
  %call = call i32 @mbedtls_svc_key_id_is_null(i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psa_purge_key(i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #5
  %0 = load i32, ptr %key.addr, align 4, !tbaa !4
  %call = call i32 @psa_get_and_lock_key_slot_in_memory(i32 noundef %0, ptr noundef %slot)
  store i32 %call, ptr %status, align 4, !tbaa !4
  %1 = load i32, ptr %status, align 4, !tbaa !4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !tbaa !4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr = getelementptr inbounds %struct.psa_key_slot_t, ptr %3, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr, i32 0, i32 2
  %4 = load i32, ptr %lifetime, align 4, !tbaa !20
  %and = and i32 %4, 255
  %conv = trunc i32 %and to i8
  %conv1 = zext i8 %conv to i32
  %cmp2 = icmp eq i32 %conv1, 0
  br i1 %cmp2, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %slot, align 8, !tbaa !10
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %lock_count, align 8, !tbaa !12
  %cmp4 = icmp ule i64 %6, 1
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %slot, align 8, !tbaa !10
  %call7 = call i32 @psa_wipe_key_slot(ptr noundef %7)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %slot, align 8, !tbaa !10
  %call8 = call i32 @psa_unlock_key_slot(ptr noundef %8)
  store i32 %call8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @mbedtls_psa_get_stats(ptr noundef %stats) #0 {
entry:
  %stats.addr = alloca ptr, align 8
  %slot_idx = alloca i64, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %id = alloca i32, align 4
  %id25 = alloca i32, align 4
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot_idx) #5
  %0 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 64, i1 false)
  store i64 0, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %cmp = icmp ult i64 %1, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #5
  %2 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds [32 x %struct.psa_key_slot_t], ptr @global_data, i64 0, i64 %2
  store ptr %arrayidx, ptr %slot, align 8, !tbaa !10
  %3 = load ptr, ptr %slot, align 8, !tbaa !10
  %call = call i32 @psa_is_key_slot_locked(ptr noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %locked_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %4, i32 0, i32 6
  %5 = load i64, ptr %locked_slots, align 8, !tbaa !25
  %inc = add i64 %5, 1
  store i64 %inc, ptr %locked_slots, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load ptr, ptr %slot, align 8, !tbaa !10
  %call1 = call i32 @psa_is_key_slot_occupied(ptr noundef %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %empty_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %empty_slots, align 8, !tbaa !27
  %inc4 = add i64 %8, 1
  store i64 %inc4, ptr %empty_slots, align 8, !tbaa !27
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr = getelementptr inbounds %struct.psa_key_slot_t, ptr %9, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr, i32 0, i32 2
  %10 = load i32, ptr %lifetime, align 4, !tbaa !20
  %and = and i32 %10, 255
  %conv = trunc i32 %and to i8
  %conv6 = zext i8 %conv to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  %11 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %volatile_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %volatile_slots, align 8, !tbaa !28
  %inc10 = add i64 %12, 1
  store i64 %inc10, ptr %volatile_slots, align 8, !tbaa !28
  br label %if.end19

if.else:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #5
  %13 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr11 = getelementptr inbounds %struct.psa_key_slot_t, ptr %13, i32 0, i32 0
  %id12 = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr11, i32 0, i32 3
  %14 = load i32, ptr %id12, align 8, !tbaa !23
  store i32 %14, ptr %id, align 4, !tbaa !4
  %15 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %persistent_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %persistent_slots, align 8, !tbaa !29
  %inc13 = add i64 %16, 1
  store i64 %inc13, ptr %persistent_slots, align 8, !tbaa !29
  %17 = load i32, ptr %id, align 4, !tbaa !4
  %18 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %max_open_internal_key_id = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %18, i32 0, i32 7
  %19 = load i32, ptr %max_open_internal_key_id, align 8, !tbaa !30
  %cmp14 = icmp ugt i32 %17, %19
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.else
  %20 = load i32, ptr %id, align 4, !tbaa !4
  %21 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %max_open_internal_key_id17 = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %21, i32 0, i32 7
  store i32 %20, ptr %max_open_internal_key_id17, align 8, !tbaa !30
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then9
  %22 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr20 = getelementptr inbounds %struct.psa_key_slot_t, ptr %22, i32 0, i32 0
  %lifetime21 = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr20, i32 0, i32 2
  %23 = load i32, ptr %lifetime21, align 4, !tbaa !20
  %shr = lshr i32 %23, 8
  %cmp22 = icmp ne i32 %shr, 0
  br i1 %cmp22, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr %id25) #5
  %24 = load ptr, ptr %slot, align 8, !tbaa !10
  %attr26 = getelementptr inbounds %struct.psa_key_slot_t, ptr %24, i32 0, i32 0
  %id27 = getelementptr inbounds %struct.psa_core_key_attributes_t, ptr %attr26, i32 0, i32 3
  %25 = load i32, ptr %id27, align 8, !tbaa !23
  store i32 %25, ptr %id25, align 4, !tbaa !4
  %26 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %external_slots = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %26, i32 0, i32 2
  %27 = load i64, ptr %external_slots, align 8, !tbaa !31
  %inc28 = add i64 %27, 1
  store i64 %inc28, ptr %external_slots, align 8, !tbaa !31
  %28 = load i32, ptr %id25, align 4, !tbaa !4
  %29 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %max_open_external_key_id = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %29, i32 0, i32 8
  %30 = load i32, ptr %max_open_external_key_id, align 4, !tbaa !32
  %cmp29 = icmp ugt i32 %28, %30
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then24
  %31 = load i32, ptr %id25, align 4, !tbaa !4
  %32 = load ptr, ptr %stats.addr, align 8, !tbaa !10
  %max_open_external_key_id32 = getelementptr inbounds %struct.mbedtls_psa_stats_s, ptr %32, i32 0, i32 8
  store i32 %31, ptr %max_open_external_key_id32, align 4, !tbaa !32
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %id25) #5
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end19
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #5
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %33 = load i64, ptr %slot_idx, align 8, !tbaa !8
  %inc35 = add i64 %33, 1
  store i64 %inc35, ptr %slot_idx, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot_idx) #5
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @psa_key_id_is_volatile(i32 noundef %key_id) #3 {
entry:
  %key_id.addr = alloca i32, align 4
  store i32 %key_id, ptr %key_id.addr, align 4, !tbaa !4
  %0 = load i32, ptr %key_id.addr, align 4, !tbaa !4
  %cmp = icmp uge i32 %0, 2147483616
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %key_id.addr, align 4, !tbaa !4
  %cmp1 = icmp ule i32 %1, 2147483647
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mbedtls_svc_key_id_equal(i32 noundef %id1, i32 noundef %id2) #3 {
entry:
  %id1.addr = alloca i32, align 4
  %id2.addr = alloca i32, align 4
  store i32 %id1, ptr %id1.addr, align 4, !tbaa !4
  store i32 %id2, ptr %id2.addr, align 4, !tbaa !4
  %0 = load i32, ptr %id1.addr, align 4, !tbaa !4
  %1 = load i32, ptr %id2.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @psa_load_persistent_key(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @psa_copy_key_material_into_slot(ptr noundef, ptr noundef, i64 noundef) #2

declare void @psa_free_persistent_key_data(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mbedtls_svc_key_id_is_null(i32 noundef %key) #3 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4, !tbaa !4
  %0 = load i32, ptr %key.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !9, i64 32}
!13 = !{!"", !14, i64 0, !9, i64 32, !17, i64 40}
!14 = !{!"", !15, i64 0, !15, i64 2, !5, i64 4, !5, i64 8, !16, i64 12, !15, i64 24}
!15 = !{!"short", !6, i64 0}
!16 = !{!"psa_key_policy_s", !5, i64 0, !5, i64 4, !5, i64 8}
!17 = !{!"key_data", !11, i64 0, !9, i64 8}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!13, !5, i64 4}
!21 = distinct !{!21, !19}
!22 = !{!13, !15, i64 0}
!23 = !{!13, !5, i64 8}
!24 = distinct !{!24, !19}
!25 = !{!26, !9, i64 48}
!26 = !{!"mbedtls_psa_stats_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !5, i64 56, !5, i64 60}
!27 = !{!26, !9, i64 40}
!28 = !{!26, !9, i64 0}
!29 = !{!26, !9, i64 8}
!30 = !{!26, !5, i64 56}
!31 = !{!26, !9, i64 16}
!32 = !{!26, !5, i64 60}
!33 = distinct !{!33, !19}
