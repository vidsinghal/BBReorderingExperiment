; ModuleID = 'samples/647.bc'
source_filename = "crypto/asn1/d2i_pu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, ptr, ptr, ptr, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, ptr, ptr, i32, i8, %struct.crypto_ex_data_st, ptr, ptr, i64, ptr, i64, %struct.anon }
%union.legacy_pkey_st = type { ptr }
%struct.crypto_ex_data_st = type { ptr, ptr }
%struct.anon = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"crypto/asn1/d2i_pu.c\00", align 1
@__func__.d2i_PublicKey = private unnamed_addr constant [14 x i8] c"d2i_PublicKey\00", align 1

; Function Attrs: nounwind uwtable
define ptr @d2i_PublicKey(i32 noundef %type, ptr noundef %a, ptr noundef %pp, i64 noundef %length) #0 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %ret = alloca ptr, align 8
  %copy = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !8
  store ptr %pp, ptr %pp.addr, align 8, !tbaa !8
  store i64 %length, ptr %length.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #3
  store ptr null, ptr %copy, align 8, !tbaa !8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %1, align 8, !tbaa !8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call ptr @EVP_PKEY_new()
  store ptr %call, ptr %ret, align 8, !tbaa !8
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 36, ptr noundef @__func__.d2i_PublicKey)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  store ptr %4, ptr %ret, align 8, !tbaa !8
  %5 = load ptr, ptr %ret, align 8, !tbaa !8
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %keymgmt, align 8, !tbaa !12
  %cmp4 = icmp ne ptr %6, null
  br i1 %cmp4, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.else
  %7 = load ptr, ptr %ret, align 8, !tbaa !8
  %call5 = call i32 @EVP_PKEY_get_base_id(ptr noundef %7)
  %cmp6 = icmp eq i32 %call5, 408
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %ret, align 8, !tbaa !8
  %call8 = call i32 @evp_pkey_copy_downgraded(ptr noundef %copy, ptr noundef %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then7
  br label %err

if.end10:                                         ; preds = %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %9 = load i32, ptr %type.addr, align 4, !tbaa !4
  %10 = load ptr, ptr %ret, align 8, !tbaa !8
  %call13 = call i32 @EVP_PKEY_get_id(ptr noundef %10)
  %cmp14 = icmp ne i32 %9, %call13
  br i1 %cmp14, label %land.lhs.true17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end12
  %11 = load ptr, ptr %copy, align 8, !tbaa !8
  %cmp16 = icmp ne ptr %11, null
  br i1 %cmp16, label %land.lhs.true17, label %if.end21

land.lhs.true17:                                  ; preds = %lor.lhs.false15, %if.end12
  %12 = load ptr, ptr %ret, align 8, !tbaa !8
  %13 = load i32, ptr %type.addr, align 4, !tbaa !4
  %call18 = call i32 @EVP_PKEY_set_type(ptr noundef %12, i32 noundef %13)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 53, ptr noundef @__func__.d2i_PublicKey)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524294, ptr noundef null)
  br label %err

if.end21:                                         ; preds = %land.lhs.true17, %lor.lhs.false15
  %14 = load ptr, ptr %ret, align 8, !tbaa !8
  %call22 = call i32 @EVP_PKEY_get_base_id(ptr noundef %14)
  switch i32 %call22, label %sw.default [
    i32 6, label %sw.bb
    i32 116, label %sw.bb27
    i32 408, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end21
  %15 = load ptr, ptr %pp.addr, align 8, !tbaa !8
  %16 = load i64, ptr %length.addr, align 8, !tbaa !10
  %call23 = call ptr @d2i_RSAPublicKey(ptr noundef null, ptr noundef %15, i64 noundef %16)
  %17 = load ptr, ptr %ret, align 8, !tbaa !8
  %pkey = getelementptr inbounds %struct.evp_pkey_st, ptr %17, i32 0, i32 5
  store ptr %call23, ptr %pkey, align 8, !tbaa !16
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 60, ptr noundef @__func__.d2i_PublicKey)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524301, ptr noundef null)
  br label %err

if.end26:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end21
  %18 = load ptr, ptr %ret, align 8, !tbaa !8
  %pkey28 = getelementptr inbounds %struct.evp_pkey_st, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %pp.addr, align 8, !tbaa !8
  %20 = load i64, ptr %length.addr, align 8, !tbaa !10
  %call29 = call ptr @d2i_DSAPublicKey(ptr noundef %pkey28, ptr noundef %19, i64 noundef %20)
  %tobool30 = icmp ne ptr %call29, null
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %sw.bb27
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 67, ptr noundef @__func__.d2i_PublicKey)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524301, ptr noundef null)
  br label %err

if.end32:                                         ; preds = %sw.bb27
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end21
  %21 = load ptr, ptr %copy, align 8, !tbaa !8
  %cmp34 = icmp ne ptr %21, null
  br i1 %cmp34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %sw.bb33
  %22 = load ptr, ptr %copy, align 8, !tbaa !8
  %pkey36 = getelementptr inbounds %struct.evp_pkey_st, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %pkey36, align 8, !tbaa !16
  %24 = load ptr, ptr %ret, align 8, !tbaa !8
  %pkey37 = getelementptr inbounds %struct.evp_pkey_st, ptr %24, i32 0, i32 5
  store ptr %23, ptr %pkey37, align 8, !tbaa !16
  %25 = load ptr, ptr %copy, align 8, !tbaa !8
  %pkey38 = getelementptr inbounds %struct.evp_pkey_st, ptr %25, i32 0, i32 5
  store ptr null, ptr %pkey38, align 8, !tbaa !16
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %sw.bb33
  %26 = load ptr, ptr %ret, align 8, !tbaa !8
  %pkey40 = getelementptr inbounds %struct.evp_pkey_st, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pp.addr, align 8, !tbaa !8
  %28 = load i64, ptr %length.addr, align 8, !tbaa !10
  %call41 = call ptr @o2i_ECPublicKey(ptr noundef %pkey40, ptr noundef %27, i64 noundef %28)
  %tobool42 = icmp ne ptr %call41, null
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 80, ptr noundef @__func__.d2i_PublicKey)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524301, ptr noundef null)
  br label %err

if.end44:                                         ; preds = %if.end39
  br label %sw.epilog

sw.default:                                       ; preds = %if.end21
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 86, ptr noundef @__func__.d2i_PublicKey)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 163, ptr noundef null)
  br label %err

sw.epilog:                                        ; preds = %if.end44, %if.end32, %if.end26
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %cmp45 = icmp ne ptr %29, null
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %sw.epilog
  %30 = load ptr, ptr %ret, align 8, !tbaa !8
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !8
  store ptr %30, ptr %31, align 8, !tbaa !8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %sw.epilog
  %32 = load ptr, ptr %copy, align 8, !tbaa !8
  call void @EVP_PKEY_free(ptr noundef %32)
  %33 = load ptr, ptr %ret, align 8, !tbaa !8
  store ptr %33, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %sw.default, %if.then43, %if.then31, %if.then25, %if.then20, %if.then9
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %cmp48 = icmp eq ptr %34, null
  br i1 %cmp48, label %if.then51, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %err
  %35 = load ptr, ptr %a.addr, align 8, !tbaa !8
  %36 = load ptr, ptr %35, align 8, !tbaa !8
  %37 = load ptr, ptr %ret, align 8, !tbaa !8
  %cmp50 = icmp ne ptr %36, %37
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %lor.lhs.false49, %err
  %38 = load ptr, ptr %ret, align 8, !tbaa !8
  call void @EVP_PKEY_free(ptr noundef %38)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false49
  %39 = load ptr, ptr %copy, align 8, !tbaa !8
  call void @EVP_PKEY_free(ptr noundef %39)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end47, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #3
  %40 = load ptr, ptr %retval, align 8
  ret ptr %40
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @EVP_PKEY_new() #2

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

declare i32 @EVP_PKEY_get_base_id(ptr noundef) #2

declare i32 @evp_pkey_copy_downgraded(ptr noundef, ptr noundef) #2

declare i32 @EVP_PKEY_get_id(ptr noundef) #2

declare i32 @EVP_PKEY_set_type(ptr noundef, i32 noundef) #2

declare ptr @d2i_RSAPublicKey(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @d2i_DSAPublicKey(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @o2i_ECPublicKey(ptr noundef, ptr noundef, i64 noundef) #2

declare void @EVP_PKEY_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!13, !9, i64 96}
!13 = !{!"evp_pkey_st", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !9, i64 56, !9, i64 64, !5, i64 72, !5, i64 76, !14, i64 80, !9, i64 96, !9, i64 104, !11, i64 112, !9, i64 120, !11, i64 128, !15, i64 136}
!14 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!16 = !{!6, !6, i64 0}
