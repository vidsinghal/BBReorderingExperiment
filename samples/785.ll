; ModuleID = 'samples/785.bc'
source_filename = "crypto/ec/ecx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecx_key_st = type { ptr, ptr, i8, [57 x i8], ptr, i64, i32, i32, ptr }

@.str = private unnamed_addr constant [20 x i8] c"crypto/ec/ecx_key.c\00", align 1
@__func__.ossl_ecx_key_new = private unnamed_addr constant [17 x i8] c"ossl_ecx_key_new\00", align 1

; Function Attrs: nounwind uwtable
define ptr @ossl_ecx_key_new(ptr noundef %libctx, i32 noundef %type, i32 noundef %haspubkey, ptr noundef %propq) #0 {
entry:
  %retval = alloca ptr, align 8
  %libctx.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %haspubkey.addr = alloca i32, align 4
  %propq.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  store i32 %type, ptr %type.addr, align 4, !tbaa !8
  store i32 %haspubkey, ptr %haspubkey.addr, align 4, !tbaa !9
  store ptr %propq, ptr %propq.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4
  %call = call noalias ptr @CRYPTO_zalloc(i64 noundef 112, ptr noundef @.str, i32 noundef 17)
  store ptr %call, ptr %ret, align 8, !tbaa !4
  %0 = load ptr, ptr %ret, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ret, align 8, !tbaa !4
  %libctx1 = getelementptr inbounds %struct.ecx_key_st, ptr %2, i32 0, i32 0
  store ptr %1, ptr %libctx1, align 8, !tbaa !11
  %3 = load i32, ptr %haspubkey.addr, align 4, !tbaa !9
  %4 = load ptr, ptr %ret, align 8, !tbaa !4
  %haspubkey2 = getelementptr inbounds %struct.ecx_key_st, ptr %4, i32 0, i32 2
  %5 = trunc i32 %3 to i8
  %bf.load = load i8, ptr %haspubkey2, align 8
  %bf.value = and i8 %5, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %haspubkey2, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  %6 = load i32, ptr %type.addr, align 4, !tbaa !8
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load ptr, ptr %ret, align 8, !tbaa !4
  %keylen = getelementptr inbounds %struct.ecx_key_st, ptr %7, i32 0, i32 5
  store i64 32, ptr %keylen, align 8, !tbaa !14
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %8 = load ptr, ptr %ret, align 8, !tbaa !4
  %keylen4 = getelementptr inbounds %struct.ecx_key_st, ptr %8, i32 0, i32 5
  store i64 56, ptr %keylen4, align 8, !tbaa !14
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %9 = load ptr, ptr %ret, align 8, !tbaa !4
  %keylen6 = getelementptr inbounds %struct.ecx_key_st, ptr %9, i32 0, i32 5
  store i64 32, ptr %keylen6, align 8, !tbaa !14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %10 = load ptr, ptr %ret, align 8, !tbaa !4
  %keylen8 = getelementptr inbounds %struct.ecx_key_st, ptr %10, i32 0, i32 5
  store i64 57, ptr %keylen8, align 8, !tbaa !14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %11 = load i32, ptr %type.addr, align 4, !tbaa !8
  %12 = load ptr, ptr %ret, align 8, !tbaa !4
  %type9 = getelementptr inbounds %struct.ecx_key_st, ptr %12, i32 0, i32 6
  store i32 %11, ptr %type9, align 8, !tbaa !15
  %13 = load ptr, ptr %ret, align 8, !tbaa !4
  %references = getelementptr inbounds %struct.ecx_key_st, ptr %13, i32 0, i32 7
  store atomic i32 1, ptr %references seq_cst, align 4, !tbaa !16
  %14 = load ptr, ptr %propq.addr, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %14, null
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %sw.epilog
  %15 = load ptr, ptr %propq.addr, align 8, !tbaa !4
  %call12 = call noalias ptr @CRYPTO_strdup(ptr noundef %15, ptr noundef @.str, i32 noundef 42)
  %16 = load ptr, ptr %ret, align 8, !tbaa !4
  %propq13 = getelementptr inbounds %struct.ecx_key_st, ptr %16, i32 0, i32 1
  store ptr %call12, ptr %propq13, align 8, !tbaa !17
  %17 = load ptr, ptr %ret, align 8, !tbaa !4
  %propq14 = getelementptr inbounds %struct.ecx_key_st, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %propq14, align 8, !tbaa !17
  %cmp15 = icmp eq ptr %18, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then11
  br label %err

if.end17:                                         ; preds = %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %sw.epilog
  %call19 = call ptr @CRYPTO_THREAD_lock_new()
  %19 = load ptr, ptr %ret, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.ecx_key_st, ptr %19, i32 0, i32 8
  store ptr %call19, ptr %lock, align 8, !tbaa !18
  %20 = load ptr, ptr %ret, align 8, !tbaa !4
  %lock20 = getelementptr inbounds %struct.ecx_key_st, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %lock20, align 8, !tbaa !18
  %cmp21 = icmp eq ptr %21, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  br label %err

if.end23:                                         ; preds = %if.end18
  %22 = load ptr, ptr %ret, align 8, !tbaa !4
  store ptr %22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then22, %if.then16
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 52, ptr noundef @__func__.ossl_ecx_key_new)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, ptr noundef null)
  %23 = load ptr, ptr %ret, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %23, ptr noundef @.str, i32 noundef 53)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) #2

declare noalias ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @CRYPTO_THREAD_lock_new() #2

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @ossl_ecx_key_free(ptr noundef %key) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %references = getelementptr inbounds %struct.ecx_key_st, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.ecx_key_st, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %lock, align 8, !tbaa !18
  %call = call i32 @CRYPTO_DOWN_REF(ptr noundef %references, ptr noundef %i, ptr noundef %3)
  %4 = load i32, ptr %i, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %propq = getelementptr inbounds %struct.ecx_key_st, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %propq, align 8, !tbaa !17
  call void @CRYPTO_free(ptr noundef %6, ptr noundef @.str, i32 noundef 70)
  %7 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %privkey = getelementptr inbounds %struct.ecx_key_st, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %privkey, align 8, !tbaa !19
  %9 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %keylen = getelementptr inbounds %struct.ecx_key_st, ptr %9, i32 0, i32 5
  %10 = load i64, ptr %keylen, align 8, !tbaa !14
  call void @CRYPTO_secure_clear_free(ptr noundef %8, i64 noundef %10, ptr noundef @.str, i32 noundef 71)
  %11 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %lock4 = getelementptr inbounds %struct.ecx_key_st, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %lock4, align 8, !tbaa !18
  call void @CRYPTO_THREAD_lock_free(ptr noundef %12)
  %13 = load ptr, ptr %key.addr, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %13, ptr noundef @.str, i32 noundef 73)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @CRYPTO_DOWN_REF(ptr noundef %val, ptr noundef %ret, ptr noundef %lock) #3 {
entry:
  %val.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %.atomictmp = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !4
  store ptr %lock, ptr %lock.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i32 1, ptr %.atomictmp, align 4, !tbaa !9
  %1 = load i32, ptr %.atomictmp, align 4
  %2 = atomicrmw sub ptr %0, i32 %1 monotonic, align 4
  store i32 %2, ptr %atomic-temp, align 4
  %3 = load i32, ptr %atomic-temp, align 4, !tbaa !9
  %sub = sub nsw i32 %3, 1
  %4 = load ptr, ptr %ret.addr, align 8, !tbaa !4
  store i32 %sub, ptr %4, align 4, !tbaa !9
  %5 = load ptr, ptr %ret.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !9
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare void @CRYPTO_secure_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare void @CRYPTO_THREAD_lock_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @ossl_ecx_key_set0_libctx(ptr noundef %key, ptr noundef %libctx) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %libctx.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  store ptr %libctx, ptr %libctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %libctx.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %libctx1 = getelementptr inbounds %struct.ecx_key_st, ptr %1, i32 0, i32 0
  store ptr %0, ptr %libctx1, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ossl_ecx_key_up_ref(ptr noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %references = getelementptr inbounds %struct.ecx_key_st, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %lock = getelementptr inbounds %struct.ecx_key_st, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %lock, align 8, !tbaa !18
  %call = call i32 @CRYPTO_UP_REF(ptr noundef %references, ptr noundef %i, ptr noundef %2)
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %3, 1
  %4 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @CRYPTO_UP_REF(ptr noundef %val, ptr noundef %ret, ptr noundef %lock) #3 {
entry:
  %val.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %.atomictmp = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %ret, ptr %ret.addr, align 8, !tbaa !4
  store ptr %lock, ptr %lock.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %val.addr, align 8, !tbaa !4
  store i32 1, ptr %.atomictmp, align 4, !tbaa !9
  %1 = load i32, ptr %.atomictmp, align 4
  %2 = atomicrmw add ptr %0, i32 %1 monotonic, align 4
  store i32 %2, ptr %atomic-temp, align 4
  %3 = load i32, ptr %atomic-temp, align 4, !tbaa !9
  %add = add nsw i32 %3, 1
  %4 = load ptr, ptr %ret.addr, align 8, !tbaa !4
  store i32 %add, ptr %4, align 4, !tbaa !9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define ptr @ossl_ecx_key_allocate_privkey(ptr noundef %key) #0 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %keylen = getelementptr inbounds %struct.ecx_key_st, ptr %0, i32 0, i32 5
  %1 = load i64, ptr %keylen, align 8, !tbaa !14
  %call = call noalias ptr @CRYPTO_secure_zalloc(i64 noundef %1, ptr noundef @.str, i32 noundef 95)
  %2 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %privkey = getelementptr inbounds %struct.ecx_key_st, ptr %2, i32 0, i32 4
  store ptr %call, ptr %privkey, align 8, !tbaa !19
  %3 = load ptr, ptr %key.addr, align 8, !tbaa !4
  %privkey1 = getelementptr inbounds %struct.ecx_key_st, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %privkey1, align 8, !tbaa !19
  ret ptr %4
}

declare noalias ptr @CRYPTO_secure_zalloc(i64 noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"ecx_key_st", !5, i64 0, !5, i64 8, !10, i64 16, !6, i64 17, !5, i64 80, !13, i64 88, !6, i64 96, !6, i64 100, !5, i64 104}
!13 = !{!"long", !6, i64 0}
!14 = !{!12, !13, i64 88}
!15 = !{!12, !6, i64 96}
!16 = !{!12, !6, i64 100}
!17 = !{!12, !5, i64 8}
!18 = !{!12, !5, i64 104}
!19 = !{!12, !5, i64 80}
