; ModuleID = 'samples/873.bc'
source_filename = "crypto/bio/bio_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { ptr, ptr, i32, i32, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.servent = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [22 x i8] c"crypto/bio/bio_addr.c\00", align 1
@__func__.BIO_ADDR_new = private unnamed_addr constant [13 x i8] c"BIO_ADDR_new\00", align 1
@__func__.BIO_parse_hostserv = private unnamed_addr constant [19 x i8] c"BIO_parse_hostserv\00", align 1
@__func__.BIO_lookup_ex = private unnamed_addr constant [14 x i8] c"BIO_lookup_ex\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"calling getaddrinfo()\00", align 1
@BIO_lookup_ex.he_fallback_address = internal global i32 0, align 4
@BIO_lookup_ex.he_fallback_addresses = internal global [2 x ptr] [ptr @BIO_lookup_ex.he_fallback_address, ptr null], align 16
@BIO_lookup_ex.he_fallback = internal constant %struct.hostent { ptr null, ptr null, i32 2, i32 4, ptr @BIO_lookup_ex.he_fallback_addresses }, align 8
@bio_lookup_init = internal global i32 0, align 4
@do_bio_lookup_init_ossl_ret_ = internal global i32 0, align 4
@bio_lookup_lock = global ptr null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"calling gethostbyname()\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"calling getservbyname()\00", align 1
@__func__.addr_strings = private unnamed_addr constant [13 x i8] c"addr_strings\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"calling getnameinfo()\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__func__.addrinfo_wrap = private unnamed_addr constant [14 x i8] c"addrinfo_wrap\00", align 1

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDR_new() #0 {
entry:
  %retval = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9
  %call = call noalias ptr @CRYPTO_zalloc(i64 noundef 112, ptr noundef @.str, i32 noundef 54)
  store ptr %call, ptr %ret, align 8, !tbaa !4
  %0 = load ptr, ptr %ret, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 57, ptr noundef @__func__.BIO_ADDR_new)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ret, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 0
  store i16 0, ptr %sa_family, align 4, !tbaa !8
  %2 = load ptr, ptr %ret, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) #2

declare void @ERR_new() #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @BIO_ADDR_free(ptr noundef %ap) #0 {
entry:
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %0, ptr noundef @.str, i32 noundef 67)
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @BIO_ADDR_clear(ptr noundef %ap) #0 {
entry:
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 112, i1 false)
  %1 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 0
  store i16 0, ptr %sa_family, align 4, !tbaa !8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDR_make(ptr noundef %ap, ptr noundef %sa) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %sa.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %sa, ptr %sa.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sa.addr, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %sa_family, align 2, !tbaa !9
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %sa.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 2 %3, i64 16, i1 false)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %sa.addr, align 8, !tbaa !4
  %sa_family2 = getelementptr inbounds %struct.sockaddr, ptr %4, i32 0, i32 0
  %5 = load i16, ptr %sa_family2, align 2, !tbaa !9
  %conv3 = zext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %sa.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 2 %7, i64 28, i1 false)
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %sa.addr, align 8, !tbaa !4
  %sa_family8 = getelementptr inbounds %struct.sockaddr, ptr %8, i32 0, i32 0
  %9 = load i16, ptr %sa_family8, align 2, !tbaa !9
  %conv9 = zext i16 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  %10 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %sa.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 2 %11, i64 110, i1 false)
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then6, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDR_rawmake(ptr noundef %ap, i32 noundef %family, ptr noundef %where, i64 noundef %wherelen, i16 noundef zeroext %port) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %family.addr = alloca i32, align 4
  %where.addr = alloca ptr, align 8
  %wherelen.addr = alloca i64, align 8
  %port.addr = alloca i16, align 2
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store i32 %family, ptr %family.addr, align 4, !tbaa !12
  store ptr %where, ptr %where.addr, align 8, !tbaa !4
  store i64 %wherelen, ptr %wherelen.addr, align 8, !tbaa !14
  store i16 %port, ptr %port.addr, align 2, !tbaa !16
  %0 = load i32, ptr %family.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %wherelen.addr, align 8, !tbaa !14
  %add = add i64 %1, 1
  %cmp1 = icmp ugt i64 %add, 108
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 110, i1 false)
  %3 = load i32, ptr %family.addr, align 4, !tbaa !12
  %conv = trunc i32 %3 to i16
  %4 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sun_family = getelementptr inbounds %struct.sockaddr_un, ptr %4, i32 0, i32 0
  store i16 %conv, ptr %sun_family, align 4, !tbaa !8
  %5 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], ptr %sun_path, i64 0, i64 0
  %6 = load ptr, ptr %where.addr, align 8, !tbaa !4
  %call = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %6, i64 noundef 107) #9
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %7 = load i32, ptr %family.addr, align 4, !tbaa !12
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end3
  %8 = load i64, ptr %wherelen.addr, align 8, !tbaa !14
  %cmp7 = icmp ne i64 %8, 4
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %9 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 16, i1 false)
  %10 = load i32, ptr %family.addr, align 4, !tbaa !12
  %conv11 = trunc i32 %10 to i16
  %11 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin_family = getelementptr inbounds %struct.sockaddr_in, ptr %11, i32 0, i32 0
  store i16 %conv11, ptr %sin_family, align 4, !tbaa !8
  %12 = load i16, ptr %port.addr, align 2, !tbaa !16
  %13 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %13, i32 0, i32 1
  store i16 %12, ptr %sin_port, align 2, !tbaa !8
  %14 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %where.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %sin_addr, ptr align 4 %15, i64 4, i1 false), !tbaa.struct !17
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end3
  %16 = load i32, ptr %family.addr, align 4, !tbaa !12
  %cmp13 = icmp eq i32 %16, 10
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end12
  %17 = load i64, ptr %wherelen.addr, align 8, !tbaa !14
  %cmp16 = icmp ne i64 %17, 16
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then15
  %18 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 28, i1 false)
  %19 = load i32, ptr %family.addr, align 4, !tbaa !12
  %conv20 = trunc i32 %19 to i16
  %20 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin6_family = getelementptr inbounds %struct.sockaddr_in6, ptr %20, i32 0, i32 0
  store i16 %conv20, ptr %sin6_family, align 4, !tbaa !8
  %21 = load i16, ptr %port.addr, align 2, !tbaa !16
  %22 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %22, i32 0, i32 1
  store i16 %21, ptr %sin6_port, align 2, !tbaa !8
  %23 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %where.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %sin6_addr, ptr align 4 %24, i64 16, i1 false), !tbaa.struct !18
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.end19, %if.then18, %if.end10, %if.then9, %if.end, %if.then2
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDR_family(ptr noundef %ap) #0 {
entry:
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %sa_family, align 4, !tbaa !8
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDR_rawaddress(ptr noundef %ap, ptr noundef %p, ptr noundef %l) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %addrptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #9
  store i64 0, ptr %len, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %addrptr) #9
  store ptr null, ptr %addrptr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %sa_family, align 4, !tbaa !8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 4, ptr %len, align 8, !tbaa !14
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 2
  store ptr %sin_addr, ptr %addrptr, align 8, !tbaa !4
  br label %if.end15

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family2 = getelementptr inbounds %struct.sockaddr, ptr %3, i32 0, i32 0
  %4 = load i16, ptr %sa_family2, align 4, !tbaa !8
  %conv3 = zext i16 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i64 16, ptr %len, align 8, !tbaa !14
  %5 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3
  store ptr %sin6_addr, ptr %addrptr, align 8, !tbaa !4
  br label %if.end14

if.else7:                                         ; preds = %if.else
  %6 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family8 = getelementptr inbounds %struct.sockaddr, ptr %6, i32 0, i32 0
  %7 = load i16, ptr %sa_family8, align 4, !tbaa !8
  %conv9 = zext i16 %7 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else7
  %8 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], ptr %sun_path, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay) #10
  store i64 %call, ptr %len, align 8, !tbaa !14
  %9 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sun_path13 = getelementptr inbounds %struct.sockaddr_un, ptr %9, i32 0, i32 1
  store ptr %sun_path13, ptr %addrptr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.else7
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %10 = load ptr, ptr %addrptr, align 8, !tbaa !4
  %cmp16 = icmp eq ptr %10, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %11 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %cmp20 = icmp ne ptr %11, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %addrptr, align 8, !tbaa !4
  %14 = load i64, ptr %len, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %14, i1 false)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  %15 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %cmp24 = icmp ne ptr %15, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  %16 = load i64, ptr %len, align 8, !tbaa !14
  %17 = load ptr, ptr %l.addr, align 8, !tbaa !4
  store i64 %16, ptr %17, align 8, !tbaa !14
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %addrptr) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #9
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind uwtable
define zeroext i16 @BIO_ADDR_rawport(ptr noundef %ap) #0 {
entry:
  %retval = alloca i16, align 2
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %sa_family, align 4, !tbaa !8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %sin_port, align 2, !tbaa !8
  store i16 %3, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family2 = getelementptr inbounds %struct.sockaddr, ptr %4, i32 0, i32 0
  %5 = load i16, ptr %sa_family2, align 4, !tbaa !8
  %conv3 = zext i16 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %6, i32 0, i32 1
  %7 = load i16, ptr %sin6_port, align 2, !tbaa !8
  store i16 %7, ptr %retval, align 2
  br label %return

if.end7:                                          ; preds = %if.end
  store i16 0, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i16, ptr %retval, align 2
  ret i16 %8
}

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDR_hostname_string(ptr noundef %ap, i32 noundef %numeric) #0 {
entry:
  %retval = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %numeric.addr = alloca i32, align 4
  %hostname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store i32 %numeric, ptr %numeric.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %hostname) #9
  store ptr null, ptr %hostname, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %1 = load i32, ptr %numeric.addr, align 4, !tbaa !12
  %call = call i32 @addr_strings(ptr noundef %0, i32 noundef %1, ptr noundef %hostname, ptr noundef null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hostname, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hostname) #9
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal i32 @addr_strings(ptr noundef %ap, i32 noundef %numeric, ptr noundef %hostname, ptr noundef %service) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  %numeric.addr = alloca i32, align 4
  %hostname.addr = alloca ptr, align 8
  %service.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %host = alloca [1025 x i8], align 16
  %serv = alloca [32 x i8], align 16
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store i32 %numeric, ptr %numeric.addr, align 4, !tbaa !12
  store ptr %hostname, ptr %hostname.addr, align 8, !tbaa !4
  store ptr %service, ptr %service.addr, align 8, !tbaa !4
  %call = call i32 @BIO_sock_init()
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9
  store i32 0, ptr %ret, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1025, ptr %host) #9
  call void @llvm.memset.p0.i64(ptr align 16 %host, i8 0, i64 1025, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr %serv) #9
  call void @llvm.memset.p0.i64(ptr align 16 %serv, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #9
  store i32 0, ptr %flags, align 4, !tbaa !12
  %0 = load i32, ptr %numeric.addr, align 4, !tbaa !12
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %1 = load i32, ptr %flags, align 4, !tbaa !12
  %or = or i32 %1, 3
  store i32 %or, ptr %flags, align 4, !tbaa !12
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %call3 = call ptr @BIO_ADDR_sockaddr(ptr noundef %2)
  %3 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %call4 = call i32 @BIO_ADDR_sockaddr_size(ptr noundef %3)
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %host, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [32 x i8], ptr %serv, i64 0, i64 0
  %4 = load i32, ptr %flags, align 4, !tbaa !12
  %call6 = call i32 @getnameinfo(ptr noundef %call3, i32 noundef %call4, ptr noundef %arraydecay, i32 noundef 1025, ptr noundef %arraydecay5, i32 noundef 32, i32 noundef %4)
  store i32 %call6, ptr %ret, align 4, !tbaa !12
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end2
  %5 = load i32, ptr %ret, align 4, !tbaa !12
  %cmp9 = icmp eq i32 %5, -11
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 224, ptr noundef @__func__.addr_strings)
  %call11 = call ptr @__errno_location() #11
  %6 = load i32, ptr %call11, align 4, !tbaa !12
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 2, i32 noundef %6, ptr noundef @.str.6)
  br label %if.end13

if.else:                                          ; preds = %if.then8
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 229, ptr noundef @__func__.addr_strings)
  %7 = load i32, ptr %ret, align 4, !tbaa !12
  %call12 = call ptr @gai_strerror(i32 noundef %7) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, ptr noundef %call12)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end2
  %arrayidx = getelementptr inbounds [32 x i8], ptr %serv, i64 0, i64 0
  %8 = load i8, ptr %arrayidx, align 16, !tbaa !8
  %conv = sext i8 %8 to i32
  %cmp15 = icmp eq i32 %conv, 0
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end14
  %arraydecay18 = getelementptr inbounds [32 x i8], ptr %serv, i64 0, i64 0
  %9 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %call19 = call zeroext i16 @BIO_ADDR_rawport(ptr noundef %9)
  %call20 = call zeroext i16 @__bswap_16(i16 noundef zeroext %call19)
  %conv21 = zext i16 %call20 to i32
  %call22 = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef %arraydecay18, i64 noundef 32, ptr noundef @.str.7, i32 noundef %conv21)
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14
  %10 = load ptr, ptr %hostname.addr, align 8, !tbaa !4
  %cmp24 = icmp ne ptr %10, null
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  %arraydecay27 = getelementptr inbounds [1025 x i8], ptr %host, i64 0, i64 0
  %call28 = call noalias ptr @CRYPTO_strdup(ptr noundef %arraydecay27, ptr noundef @.str, i32 noundef 246)
  %11 = load ptr, ptr %hostname.addr, align 8, !tbaa !4
  store ptr %call28, ptr %11, align 8, !tbaa !4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23
  %12 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %cmp30 = icmp ne ptr %12, null
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end29
  %arraydecay33 = getelementptr inbounds [32 x i8], ptr %serv, i64 0, i64 0
  %call34 = call noalias ptr @CRYPTO_strdup(ptr noundef %arraydecay33, ptr noundef @.str, i32 noundef 248)
  %13 = load ptr, ptr %service.addr, align 8, !tbaa !4
  store ptr %call34, ptr %13, align 8, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end13
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %serv) #9
  call void @llvm.lifetime.end.p0(i64 1025, ptr %host) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  %14 = load ptr, ptr %hostname.addr, align 8, !tbaa !4
  %cmp39 = icmp ne ptr %14, null
  br i1 %cmp39, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cleanup.cont
  %15 = load ptr, ptr %hostname.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %15, align 8, !tbaa !4
  %cmp41 = icmp eq ptr %16, null
  br i1 %cmp41, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cleanup.cont
  %17 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %17, null
  br i1 %cmp43, label %land.lhs.true45, label %if.end57

land.lhs.true45:                                  ; preds = %lor.lhs.false
  %18 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %18, align 8, !tbaa !4
  %cmp46 = icmp eq ptr %19, null
  br i1 %cmp46, label %if.then48, label %if.end57

if.then48:                                        ; preds = %land.lhs.true45, %land.lhs.true
  %20 = load ptr, ptr %hostname.addr, align 8, !tbaa !4
  %cmp49 = icmp ne ptr %20, null
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then48
  %21 = load ptr, ptr %hostname.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %22, ptr noundef @.str, i32 noundef 263)
  %23 = load ptr, ptr %hostname.addr, align 8, !tbaa !4
  store ptr null, ptr %23, align 8, !tbaa !4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then48
  %24 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %cmp53 = icmp ne ptr %24, null
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  %25 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %25, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %26, ptr noundef @.str, i32 noundef 267)
  %27 = load ptr, ptr %service.addr, align 8, !tbaa !4
  store ptr null, ptr %27, align 8, !tbaa !4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 270, ptr noundef @__func__.addr_strings)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %land.lhs.true45, %lor.lhs.false
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end57, %if.end56, %cleanup, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDR_service_string(ptr noundef %ap, i32 noundef %numeric) #0 {
entry:
  %retval = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %numeric.addr = alloca i32, align 4
  %service = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store i32 %numeric, ptr %numeric.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %service) #9
  store ptr null, ptr %service, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %1 = load i32, ptr %numeric.addr, align 4, !tbaa !12
  %call = call i32 @addr_strings(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef %service)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %service, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %service) #9
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDR_path_string(ptr noundef %ap) #0 {
entry:
  %retval = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %sa_family, align 4, !tbaa !8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sun_path = getelementptr inbounds %struct.sockaddr_un, ptr %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [108 x i8], ptr %sun_path, i64 0, i64 0
  %call = call noalias ptr @CRYPTO_strdup(ptr noundef %arraydecay, ptr noundef @.str, i32 noundef 301)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

declare noalias ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDR_sockaddr(ptr noundef %ap) #0 {
entry:
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDR_sockaddr_noconst(ptr noundef %ap) #0 {
entry:
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDR_sockaddr_size(ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %ap.addr = alloca ptr, align 8
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family = getelementptr inbounds %struct.sockaddr, ptr %0, i32 0, i32 0
  %1 = load i16, ptr %sa_family, align 4, !tbaa !8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family2 = getelementptr inbounds %struct.sockaddr, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %sa_family2, align 4, !tbaa !8
  %conv3 = zext i16 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 28, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %sa_family8 = getelementptr inbounds %struct.sockaddr, ptr %4, i32 0, i32 0
  %5 = load i16, ptr %sa_family8, align 4, !tbaa !8
  %conv9 = zext i16 %5 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store i32 110, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end7
  store i32 112, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then6, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDRINFO_next(ptr noundef %bai) #0 {
entry:
  %retval = alloca ptr, align 8
  %bai.addr = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %ai_next, align 8, !tbaa !19
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDRINFO_family(ptr noundef %bai) #0 {
entry:
  %retval = alloca i32, align 4
  %bai.addr = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %ai_family, align 4, !tbaa !21
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDRINFO_socktype(ptr noundef %bai) #0 {
entry:
  %retval = alloca i32, align 4
  %bai.addr = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %ai_socktype, align 8, !tbaa !22
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDRINFO_protocol(ptr noundef %bai) #0 {
entry:
  %retval = alloca i32, align 4
  %bai.addr = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %ai_protocol, align 4, !tbaa !23
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_protocol3 = getelementptr inbounds %struct.addrinfo, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %ai_protocol3, align 4, !tbaa !23
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %ai_family, align 4, !tbaa !21
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %ai_socktype, align 8, !tbaa !22
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end6
  store i32 6, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end6
  store i32 17, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %sw.bb7, %sw.bb, %if.then5, %if.then2
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @BIO_ADDRINFO_sockaddr_size(ptr noundef %bai) #0 {
entry:
  %retval = alloca i32, align 4
  %bai.addr = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %ai_addrlen, align 8, !tbaa !24
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDRINFO_sockaddr(ptr noundef %bai) #0 {
entry:
  %retval = alloca ptr, align 8
  %bai.addr = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %ai_addr, align 8, !tbaa !25
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define ptr @BIO_ADDRINFO_address(ptr noundef %bai) #0 {
entry:
  %retval = alloca ptr, align 8
  %bai.addr = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %ai_addr, align 8, !tbaa !25
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define void @BIO_ADDRINFO_free(ptr noundef %bai) #0 {
entry:
  %bai.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %ai_family, align 4, !tbaa !21
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  call void @freeaddrinfo(ptr noundef %3) #9
  br label %while.end

if.end3:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %4 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %4, null
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #9
  %5 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %ai_next, align 8, !tbaa !19
  store ptr %6, ptr %next, align 8, !tbaa !4
  %7 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %ai_addr, align 8, !tbaa !25
  call void @CRYPTO_free(ptr noundef %8, ptr noundef @.str, i32 noundef 449)
  %9 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %9, ptr noundef @.str, i32 noundef 450)
  %10 = load ptr, ptr %next, align 8, !tbaa !4
  store ptr %10, ptr %bai.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #9
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %if.then, %if.then2, %while.cond
  ret void
}

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) #5

; Function Attrs: nounwind uwtable
define i32 @BIO_parse_hostserv(ptr noundef %hostserv, ptr noundef %host, ptr noundef %service, i32 noundef %hostserv_prio) #0 {
entry:
  %retval = alloca i32, align 4
  %hostserv.addr = alloca ptr, align 8
  %host.addr = alloca ptr, align 8
  %service.addr = alloca ptr, align 8
  %hostserv_prio.addr = alloca i32, align 4
  %h = alloca ptr, align 8
  %hl = alloca i64, align 8
  %p = alloca ptr, align 8
  %pl = alloca i64, align 8
  %p2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hostserv, ptr %hostserv.addr, align 8, !tbaa !4
  store ptr %host, ptr %host.addr, align 8, !tbaa !4
  store ptr %service, ptr %service.addr, align 8, !tbaa !4
  store i32 %hostserv_prio, ptr %hostserv_prio.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #9
  store ptr null, ptr %h, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hl) #9
  store i64 0, ptr %hl, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9
  store ptr null, ptr %p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pl) #9
  store i64 0, ptr %pl, align 8, !tbaa !14
  %0 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  %1 = load i8, ptr %0, align 1, !tbaa !8
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 91
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  %call = call ptr @strchr(ptr noundef %2, i32 noundef 93) #10
  store ptr %call, ptr %p, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  br label %spec_err

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %add.ptr, ptr %h, align 8, !tbaa !4
  %4 = load ptr, ptr %p, align 8, !tbaa !4
  %5 = load ptr, ptr %h, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %hl, align 8, !tbaa !14
  %6 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %7 = load ptr, ptr %p, align 8, !tbaa !4
  %8 = load i8, ptr %7, align 1, !tbaa !8
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %p, align 8, !tbaa !4
  br label %if.end17

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %p, align 8, !tbaa !4
  %10 = load i8, ptr %9, align 1, !tbaa !8
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp ne i32 %conv9, 58
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  br label %spec_err

if.else13:                                        ; preds = %if.else
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr14 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr14, ptr %p, align 8, !tbaa !4
  %12 = load ptr, ptr %p, align 8, !tbaa !4
  %call15 = call i64 @strlen(ptr noundef %12) #10
  store i64 %call15, ptr %pl, align 8, !tbaa !14
  br label %if.end16

if.end16:                                         ; preds = %if.else13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then8
  br label %if.end42

if.else18:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #9
  %13 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  %call19 = call ptr @strrchr(ptr noundef %13, i32 noundef 58) #10
  store ptr %call19, ptr %p2, align 8, !tbaa !4
  %14 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  %call20 = call ptr @strchr(ptr noundef %14, i32 noundef 58) #10
  store ptr %call20, ptr %p, align 8, !tbaa !4
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %16 = load ptr, ptr %p2, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %15, %16
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else18
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.else18
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %cmp25 = icmp ne ptr %17, null
  br i1 %cmp25, label %if.then27, label %if.else33

if.then27:                                        ; preds = %if.end24
  %18 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  store ptr %18, ptr %h, align 8, !tbaa !4
  %19 = load ptr, ptr %p, align 8, !tbaa !4
  %20 = load ptr, ptr %h, align 8, !tbaa !4
  %sub.ptr.lhs.cast28 = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast29 = ptrtoint ptr %20 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  store i64 %sub.ptr.sub30, ptr %hl, align 8, !tbaa !14
  %21 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr31 = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr31, ptr %p, align 8, !tbaa !4
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %call32 = call i64 @strlen(ptr noundef %22) #10
  store i64 %call32, ptr %pl, align 8, !tbaa !14
  br label %if.end41

if.else33:                                        ; preds = %if.end24
  %23 = load i32, ptr %hostserv_prio.addr, align 4, !tbaa !8
  %cmp34 = icmp eq i32 %23, 0
  br i1 %cmp34, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.else33
  %24 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  store ptr %24, ptr %h, align 8, !tbaa !4
  %25 = load ptr, ptr %h, align 8, !tbaa !4
  %call37 = call i64 @strlen(ptr noundef %25) #10
  store i64 %call37, ptr %hl, align 8, !tbaa !14
  br label %if.end40

if.else38:                                        ; preds = %if.else33
  %26 = load ptr, ptr %hostserv.addr, align 8, !tbaa !4
  store ptr %26, ptr %p, align 8, !tbaa !4
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %call39 = call i64 @strlen(ptr noundef %27) #10
  store i64 %call39, ptr %pl, align 8, !tbaa !14
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end41
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup96 [
    i32 0, label %cleanup.cont
    i32 3, label %amb_err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end42

if.end42:                                         ; preds = %cleanup.cont, %if.end17
  %28 = load ptr, ptr %p, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %28, null
  br i1 %cmp43, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.end42
  %29 = load ptr, ptr %p, align 8, !tbaa !4
  %call45 = call ptr @strchr(ptr noundef %29, i32 noundef 58) #10
  %tobool = icmp ne ptr %call45, null
  br i1 %tobool, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true
  br label %spec_err

if.end47:                                         ; preds = %land.lhs.true, %if.end42
  %30 = load ptr, ptr %h, align 8, !tbaa !4
  %cmp48 = icmp ne ptr %30, null
  br i1 %cmp48, label %land.lhs.true50, label %if.end70

land.lhs.true50:                                  ; preds = %if.end47
  %31 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %cmp51 = icmp ne ptr %31, null
  br i1 %cmp51, label %if.then53, label %if.end70

if.then53:                                        ; preds = %land.lhs.true50
  %32 = load i64, ptr %hl, align 8, !tbaa !14
  %cmp54 = icmp eq i64 %32, 0
  br i1 %cmp54, label %if.then62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then53
  %33 = load i64, ptr %hl, align 8, !tbaa !14
  %cmp56 = icmp eq i64 %33, 1
  br i1 %cmp56, label %land.lhs.true58, label %if.else63

land.lhs.true58:                                  ; preds = %lor.lhs.false
  %34 = load ptr, ptr %h, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx, align 1, !tbaa !8
  %conv59 = sext i8 %35 to i32
  %cmp60 = icmp eq i32 %conv59, 42
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %land.lhs.true58, %if.then53
  %36 = load ptr, ptr %host.addr, align 8, !tbaa !4
  store ptr null, ptr %36, align 8, !tbaa !4
  br label %if.end69

if.else63:                                        ; preds = %land.lhs.true58, %lor.lhs.false
  %37 = load ptr, ptr %h, align 8, !tbaa !4
  %38 = load i64, ptr %hl, align 8, !tbaa !14
  %call64 = call noalias ptr @CRYPTO_strndup(ptr noundef %37, i64 noundef %38, ptr noundef @.str, i32 noundef 539)
  %39 = load ptr, ptr %host.addr, align 8, !tbaa !4
  store ptr %call64, ptr %39, align 8, !tbaa !4
  %40 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %40, align 8, !tbaa !4
  %cmp65 = icmp eq ptr %41, null
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.else63
  br label %memerr

if.end68:                                         ; preds = %if.else63
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then62
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %land.lhs.true50, %if.end47
  %42 = load ptr, ptr %p, align 8, !tbaa !4
  %cmp71 = icmp ne ptr %42, null
  br i1 %cmp71, label %land.lhs.true73, label %if.end95

land.lhs.true73:                                  ; preds = %if.end70
  %43 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %cmp74 = icmp ne ptr %43, null
  br i1 %cmp74, label %if.then76, label %if.end95

if.then76:                                        ; preds = %land.lhs.true73
  %44 = load i64, ptr %pl, align 8, !tbaa !14
  %cmp77 = icmp eq i64 %44, 0
  br i1 %cmp77, label %if.then87, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.then76
  %45 = load i64, ptr %pl, align 8, !tbaa !14
  %cmp80 = icmp eq i64 %45, 1
  br i1 %cmp80, label %land.lhs.true82, label %if.else88

land.lhs.true82:                                  ; preds = %lor.lhs.false79
  %46 = load ptr, ptr %p, align 8, !tbaa !4
  %arrayidx83 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx83, align 1, !tbaa !8
  %conv84 = sext i8 %47 to i32
  %cmp85 = icmp eq i32 %conv84, 42
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %land.lhs.true82, %if.then76
  %48 = load ptr, ptr %service.addr, align 8, !tbaa !4
  store ptr null, ptr %48, align 8, !tbaa !4
  br label %if.end94

if.else88:                                        ; preds = %land.lhs.true82, %lor.lhs.false79
  %49 = load ptr, ptr %p, align 8, !tbaa !4
  %50 = load i64, ptr %pl, align 8, !tbaa !14
  %call89 = call noalias ptr @CRYPTO_strndup(ptr noundef %49, i64 noundef %50, ptr noundef @.str, i32 noundef 549)
  %51 = load ptr, ptr %service.addr, align 8, !tbaa !4
  store ptr %call89, ptr %51, align 8, !tbaa !4
  %52 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %52, align 8, !tbaa !4
  %cmp90 = icmp eq ptr %53, null
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.else88
  br label %memerr

if.end93:                                         ; preds = %if.else88
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then87
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %land.lhs.true73, %if.end70
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96

amb_err:                                          ; preds = %cleanup
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 557, ptr noundef @__func__.BIO_parse_hostserv)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 129, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96

spec_err:                                         ; preds = %if.then46, %if.then12, %if.then4
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 560, ptr noundef @__func__.BIO_parse_hostserv)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 130, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96

memerr:                                           ; preds = %if.then92, %if.then67
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 563, ptr noundef @__func__.BIO_parse_hostserv)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup96

cleanup96:                                        ; preds = %memerr, %spec_err, %amb_err, %if.end95, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %pl) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %hl) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #9
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #6

declare noalias ptr @CRYPTO_strndup(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @BIO_lookup(ptr noundef %host, ptr noundef %service, i32 noundef %lookup_type, i32 noundef %family, i32 noundef %socktype, ptr noundef %res) #0 {
entry:
  %host.addr = alloca ptr, align 8
  %service.addr = alloca ptr, align 8
  %lookup_type.addr = alloca i32, align 4
  %family.addr = alloca i32, align 4
  %socktype.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %host, ptr %host.addr, align 8, !tbaa !4
  store ptr %service, ptr %service.addr, align 8, !tbaa !4
  store i32 %lookup_type, ptr %lookup_type.addr, align 4, !tbaa !8
  store i32 %family, ptr %family.addr, align 4, !tbaa !12
  store i32 %socktype, ptr %socktype.addr, align 4, !tbaa !12
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %2 = load i32, ptr %lookup_type.addr, align 4, !tbaa !8
  %3 = load i32, ptr %family.addr, align 4, !tbaa !12
  %4 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %call = call i32 @BIO_lookup_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @BIO_lookup_ex(ptr noundef %host, ptr noundef %service, i32 noundef %lookup_type, i32 noundef %family, i32 noundef %socktype, i32 noundef %protocol, ptr noundef %res) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca ptr, align 8
  %service.addr = alloca ptr, align 8
  %lookup_type.addr = alloca i32, align 4
  %family.addr = alloca i32, align 4
  %socktype.addr = alloca i32, align 4
  %protocol.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %gai_ret = alloca i32, align 4
  %old_ret = alloca i32, align 4
  %hints = alloca %struct.addrinfo, align 8
  %he = alloca ptr, align 8
  %se = alloca ptr, align 8
  %se_fallback = alloca %struct.servent, align 8
  %endp = alloca ptr, align 8
  %portnum = alloca i64, align 8
  %proto = alloca ptr, align 8
  %addrlistp = alloca ptr, align 8
  %addresses = alloca i64, align 8
  %tmp_bai = alloca ptr, align 8
  store ptr %host, ptr %host.addr, align 8, !tbaa !4
  store ptr %service, ptr %service.addr, align 8, !tbaa !4
  store i32 %lookup_type, ptr %lookup_type.addr, align 4, !tbaa !12
  store i32 %family, ptr %family.addr, align 4, !tbaa !12
  store i32 %socktype, ptr %socktype.addr, align 4, !tbaa !12
  store i32 %protocol, ptr %protocol.addr, align 4, !tbaa !12
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #9
  store i32 0, ptr %ret, align 4, !tbaa !12
  %0 = load i32, ptr %family.addr, align 4, !tbaa !12
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb
    i32 1, label %sw.bb
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 670, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 131, ptr noundef null)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122

sw.epilog:                                        ; preds = %sw.bb
  %1 = load i32, ptr %family.addr, align 4, !tbaa !12
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %sw.epilog
  %2 = load i32, ptr %family.addr, align 4, !tbaa !12
  %3 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  %4 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %5) #10
  %6 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %call1 = call i32 @addrinfo_wrap(i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %call, i16 noundef zeroext 0, ptr noundef %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122

if.else:                                          ; preds = %if.then
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 679, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122

if.end3:                                          ; preds = %sw.epilog
  %call4 = call i32 @BIO_sock_init()
  %cmp5 = icmp ne i32 %call4, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122

if.end7:                                          ; preds = %if.end3
  br i1 true, label %if.then8, label %if.else35

if.then8:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gai_ret) #9
  store i32 0, ptr %gai_ret, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_ret) #9
  store i32 0, ptr %old_ret, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 48, ptr %hints) #9
  call void @llvm.memset.p0.i64(ptr align 8 %hints, i8 0, i64 48, i1 false)
  %7 = load i32, ptr %family.addr, align 4, !tbaa !12
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 1
  store i32 %7, ptr %ai_family, align 4, !tbaa !21
  %8 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 2
  store i32 %8, ptr %ai_socktype, align 8, !tbaa !22
  %9 = load i32, ptr %protocol.addr, align 4, !tbaa !12
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 3
  store i32 %9, ptr %ai_protocol, align 4, !tbaa !23
  %10 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %10, null
  br i1 %cmp9, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then8
  %11 = load i32, ptr %family.addr, align 4, !tbaa !12
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  %ai_flags = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0
  %12 = load i32, ptr %ai_flags, align 8, !tbaa !28
  %or = or i32 %12, 32
  store i32 %or, ptr %ai_flags, align 8, !tbaa !28
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.then8
  %13 = load i32, ptr %lookup_type.addr, align 4, !tbaa !12
  %cmp13 = icmp eq i32 %13, 1
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %ai_flags15 = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0
  %14 = load i32, ptr %ai_flags15, align 8, !tbaa !28
  %or16 = or i32 %14, 1
  store i32 %or16, ptr %ai_flags15, align 8, !tbaa !28
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  br label %retry

retry:                                            ; preds = %if.then26, %if.end17
  %15 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %call18 = call i32 @getaddrinfo(ptr noundef %15, ptr noundef %16, ptr noundef %hints, ptr noundef %17)
  store i32 %call18, ptr %gai_ret, align 4, !tbaa !12
  switch i32 %call18, label %sw.default23 [
    i32 -11, label %sw.bb19
    i32 -10, label %sw.bb21
    i32 0, label %sw.bb22
  ]

sw.bb19:                                          ; preds = %retry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 716, ptr noundef @__func__.BIO_lookup_ex)
  %call20 = call ptr @__errno_location() #11
  %18 = load i32, ptr %call20, align 4, !tbaa !12
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 2, i32 noundef %18, ptr noundef @.str.1)
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 718, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, ptr noundef null)
  br label %sw.epilog34

sw.bb21:                                          ; preds = %retry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 723, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  br label %sw.epilog34

sw.bb22:                                          ; preds = %retry
  store i32 1, ptr %ret, align 4, !tbaa !12
  br label %sw.epilog34

sw.default23:                                     ; preds = %retry
  %ai_flags24 = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0
  %19 = load i32, ptr %ai_flags24, align 8, !tbaa !28
  %and = and i32 %19, 32
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %sw.default23
  %ai_flags27 = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0
  %20 = load i32, ptr %ai_flags27, align 8, !tbaa !28
  %and28 = and i32 %20, -33
  store i32 %and28, ptr %ai_flags27, align 8, !tbaa !28
  %ai_flags29 = getelementptr inbounds %struct.addrinfo, ptr %hints, i32 0, i32 0
  %21 = load i32, ptr %ai_flags29, align 8, !tbaa !28
  %or30 = or i32 %21, 4
  store i32 %or30, ptr %ai_flags29, align 8, !tbaa !28
  %22 = load i32, ptr %gai_ret, align 4, !tbaa !12
  store i32 %22, ptr %old_ret, align 4, !tbaa !12
  br label %retry

if.end31:                                         ; preds = %sw.default23
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 738, ptr noundef @__func__.BIO_lookup_ex)
  %23 = load i32, ptr %old_ret, align 4, !tbaa !12
  %tobool32 = icmp ne i32 %23, 0
  br i1 %tobool32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end31
  %24 = load i32, ptr %old_ret, align 4, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %if.end31
  %25 = load i32, ptr %gai_ret, align 4, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  %call33 = call ptr @gai_strerror(i32 noundef %cond) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, ptr noundef %call33)
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %cond.end, %sw.bb22, %sw.bb21, %sw.bb19
  call void @llvm.lifetime.end.p0(i64 48, ptr %hints) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_ret) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %gai_ret) #9
  br label %if.end121

if.else35:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %he) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %se) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr %se_fallback) #9
  call void @llvm.memset.p0.i64(ptr align 8 %se_fallback, i8 0, i64 32, i1 false)
  %call36 = call i32 @CRYPTO_THREAD_run_once(ptr noundef @bio_lookup_init, ptr noundef @do_bio_lookup_init_ossl_)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false40

cond.true38:                                      ; preds = %if.else35
  %26 = load i32, ptr @do_bio_lookup_init_ossl_ret_, align 4, !tbaa !12
  %tobool39 = icmp ne i32 %26, 0
  br i1 %tobool39, label %if.end42, label %if.then41

cond.false40:                                     ; preds = %if.else35
  br i1 false, label %if.end42, label %if.then41

if.then41:                                        ; preds = %cond.false40, %cond.true38
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 780, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !12
  br label %err

if.end42:                                         ; preds = %cond.false40, %cond.true38
  %27 = load ptr, ptr @bio_lookup_lock, align 8, !tbaa !4
  %call43 = call i32 @CRYPTO_THREAD_write_lock(ptr noundef %27)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end42
  store i32 0, ptr %ret, align 4, !tbaa !12
  br label %err

if.end46:                                         ; preds = %if.end42
  store i32 0, ptr @BIO_lookup_ex.he_fallback_address, align 4, !tbaa !12
  %28 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %cmp47 = icmp eq ptr %28, null
  br i1 %cmp47, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.end46
  store ptr @BIO_lookup_ex.he_fallback, ptr %he, align 8, !tbaa !4
  %29 = load i32, ptr %lookup_type.addr, align 4, !tbaa !12
  switch i32 %29, label %sw.default51 [
    i32 0, label %sw.bb49
    i32 1, label %sw.bb50
  ]

sw.bb49:                                          ; preds = %if.then48
  store i32 2130706433, ptr @BIO_lookup_ex.he_fallback_address, align 4, !tbaa !12
  br label %sw.epilog52

sw.bb50:                                          ; preds = %if.then48
  store i32 0, ptr @BIO_lookup_ex.he_fallback_address, align 4, !tbaa !12
  br label %sw.epilog52

sw.default51:                                     ; preds = %if.then48
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 802, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786691, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !12
  br label %err

sw.epilog52:                                      ; preds = %sw.bb50, %sw.bb49
  br label %if.end59

if.else53:                                        ; preds = %if.end46
  %30 = load ptr, ptr %host.addr, align 8, !tbaa !4
  %call54 = call ptr @gethostbyname(ptr noundef %30)
  store ptr %call54, ptr %he, align 8, !tbaa !4
  %31 = load ptr, ptr %he, align 8, !tbaa !4
  %cmp55 = icmp eq ptr %31, null
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.else53
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 827, ptr noundef @__func__.BIO_lookup_ex)
  %call57 = call ptr @__h_errno_location() #11
  %32 = load i32, ptr %call57, align 4, !tbaa !12
  %add = add nsw i32 1000, %32
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 2, i32 noundef %add, ptr noundef @.str.2)
  store i32 0, ptr %ret, align 4, !tbaa !12
  br label %err

if.end58:                                         ; preds = %if.else53
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %sw.epilog52
  %33 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %cmp60 = icmp eq ptr %33, null
  br i1 %cmp60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.end59
  %s_port = getelementptr inbounds %struct.servent, ptr %se_fallback, i32 0, i32 2
  store i32 0, ptr %s_port, align 8, !tbaa !29
  %s_proto = getelementptr inbounds %struct.servent, ptr %se_fallback, i32 0, i32 3
  store ptr null, ptr %s_proto, align 8, !tbaa !31
  store ptr %se_fallback, ptr %se, align 8, !tbaa !4
  br label %if.end98

if.else62:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 8, ptr %endp) #9
  store ptr null, ptr %endp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %portnum) #9
  %34 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %call63 = call i64 @strtol(ptr noundef %34, ptr noundef %endp, i32 noundef 10) #9
  store i64 %call63, ptr %portnum, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %proto) #9
  store ptr null, ptr %proto, align 8, !tbaa !4
  %35 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  switch i32 %35, label %sw.epilog66 [
    i32 1, label %sw.bb64
    i32 2, label %sw.bb65
  ]

sw.bb64:                                          ; preds = %if.else62
  store ptr @.str.3, ptr %proto, align 8, !tbaa !4
  br label %sw.epilog66

sw.bb65:                                          ; preds = %if.else62
  store ptr @.str.4, ptr %proto, align 8, !tbaa !4
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %if.else62, %sw.bb65, %sw.bb64
  %36 = load ptr, ptr %endp, align 8, !tbaa !4
  %37 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %cmp67 = icmp ne ptr %36, %37
  br i1 %cmp67, label %land.lhs.true68, label %if.else83

land.lhs.true68:                                  ; preds = %sw.epilog66
  %38 = load ptr, ptr %endp, align 8, !tbaa !4
  %39 = load i8, ptr %38, align 1, !tbaa !8
  %conv = sext i8 %39 to i32
  %cmp69 = icmp eq i32 %conv, 0
  br i1 %cmp69, label %land.lhs.true71, label %if.else83

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %40 = load i64, ptr %portnum, align 8, !tbaa !14
  %cmp72 = icmp sgt i64 %40, 0
  br i1 %cmp72, label %land.lhs.true74, label %if.else83

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %41 = load i64, ptr %portnum, align 8, !tbaa !14
  %cmp75 = icmp slt i64 %41, 65536
  br i1 %cmp75, label %if.then77, label %if.else83

if.then77:                                        ; preds = %land.lhs.true74
  %42 = load i64, ptr %portnum, align 8, !tbaa !14
  %conv78 = trunc i64 %42 to i16
  %call79 = call zeroext i16 @__bswap_16(i16 noundef zeroext %conv78)
  %conv80 = zext i16 %call79 to i32
  %s_port81 = getelementptr inbounds %struct.servent, ptr %se_fallback, i32 0, i32 2
  store i32 %conv80, ptr %s_port81, align 8, !tbaa !29
  %43 = load ptr, ptr %proto, align 8, !tbaa !4
  %s_proto82 = getelementptr inbounds %struct.servent, ptr %se_fallback, i32 0, i32 3
  store ptr %43, ptr %s_proto82, align 8, !tbaa !31
  store ptr %se_fallback, ptr %se, align 8, !tbaa !4
  br label %if.end95

if.else83:                                        ; preds = %land.lhs.true74, %land.lhs.true71, %land.lhs.true68, %sw.epilog66
  %44 = load ptr, ptr %endp, align 8, !tbaa !4
  %45 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %cmp84 = icmp eq ptr %44, %45
  br i1 %cmp84, label %if.then86, label %if.else93

if.then86:                                        ; preds = %if.else83
  %46 = load ptr, ptr %service.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %proto, align 8, !tbaa !4
  %call87 = call ptr @getservbyname(ptr noundef %46, ptr noundef %47)
  store ptr %call87, ptr %se, align 8, !tbaa !4
  %48 = load ptr, ptr %se, align 8, !tbaa !4
  %cmp88 = icmp eq ptr %48, null
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.then86
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 878, ptr noundef @__func__.BIO_lookup_ex)
  %call91 = call ptr @__errno_location() #11
  %49 = load i32, ptr %call91, align 4, !tbaa !12
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 2, i32 noundef %49, ptr noundef @.str.5)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end92:                                         ; preds = %if.then86
  br label %if.end94

if.else93:                                        ; preds = %if.else83
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 883, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 130, ptr noundef null)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.end92
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then77
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else93, %if.then90, %if.end95
  call void @llvm.lifetime.end.p0(i64 8, ptr %proto) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %portnum) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %endp) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end98

if.end98:                                         ; preds = %cleanup.cont, %if.then61
  %50 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store ptr null, ptr %50, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %addrlistp) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %addresses) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_bai) #9
  store ptr null, ptr %tmp_bai, align 8, !tbaa !4
  %51 = load ptr, ptr %he, align 8, !tbaa !4
  %h_addr_list = getelementptr inbounds %struct.hostent, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %h_addr_list, align 8, !tbaa !32
  store ptr %52, ptr %addrlistp, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end98
  %53 = load ptr, ptr %addrlistp, align 8, !tbaa !4
  %54 = load ptr, ptr %53, align 8, !tbaa !4
  %cmp99 = icmp ne ptr %54, null
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load ptr, ptr %addrlistp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds ptr, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %addrlistp, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %56 = load ptr, ptr %addrlistp, align 8, !tbaa !4
  %57 = load ptr, ptr %he, align 8, !tbaa !4
  %h_addr_list101 = getelementptr inbounds %struct.hostent, ptr %57, i32 0, i32 4
  %58 = load ptr, ptr %h_addr_list101, align 8, !tbaa !32
  %sub.ptr.lhs.cast = ptrtoint ptr %56 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  store i64 %sub.ptr.div, ptr %addresses, align 8, !tbaa !14
  br label %for.cond102

for.cond102:                                      ; preds = %if.end113, %for.end
  %59 = load ptr, ptr %addrlistp, align 8, !tbaa !4
  %incdec.ptr103 = getelementptr inbounds ptr, ptr %59, i32 -1
  store ptr %incdec.ptr103, ptr %addrlistp, align 8, !tbaa !4
  %60 = load i64, ptr %addresses, align 8, !tbaa !14
  %dec = add i64 %60, -1
  store i64 %dec, ptr %addresses, align 8, !tbaa !14
  %cmp104 = icmp ugt i64 %60, 0
  br i1 %cmp104, label %for.body106, label %for.end114

for.body106:                                      ; preds = %for.cond102
  %61 = load ptr, ptr %he, align 8, !tbaa !4
  %h_addrtype = getelementptr inbounds %struct.hostent, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %h_addrtype, align 8, !tbaa !35
  %63 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  %64 = load ptr, ptr %addrlistp, align 8, !tbaa !4
  %65 = load ptr, ptr %64, align 8, !tbaa !4
  %66 = load ptr, ptr %he, align 8, !tbaa !4
  %h_length = getelementptr inbounds %struct.hostent, ptr %66, i32 0, i32 3
  %67 = load i32, ptr %h_length, align 4, !tbaa !36
  %conv107 = sext i32 %67 to i64
  %68 = load ptr, ptr %se, align 8, !tbaa !4
  %s_port108 = getelementptr inbounds %struct.servent, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %s_port108, align 8, !tbaa !29
  %conv109 = trunc i32 %69 to i16
  %call110 = call i32 @addrinfo_wrap(i32 noundef %62, i32 noundef %63, ptr noundef %65, i64 noundef %conv107, i16 noundef zeroext %conv109, ptr noundef %tmp_bai)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %for.body106
  br label %addrinfo_malloc_err

if.end113:                                        ; preds = %for.body106
  %70 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %70, align 8, !tbaa !4
  %72 = load ptr, ptr %tmp_bai, align 8, !tbaa !4
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %72, i32 0, i32 7
  store ptr %71, ptr %ai_next, align 8, !tbaa !19
  %73 = load ptr, ptr %tmp_bai, align 8, !tbaa !4
  %74 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store ptr %73, ptr %74, align 8, !tbaa !4
  br label %for.cond102, !llvm.loop !37

addrinfo_malloc_err:                              ; preds = %if.then112
  %75 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %75, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(ptr noundef %76)
  %77 = load ptr, ptr %res.addr, align 8, !tbaa !4
  store ptr null, ptr %77, align 8, !tbaa !4
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 925, ptr noundef @__func__.BIO_lookup_ex)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %ret, align 4, !tbaa !12
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

for.end114:                                       ; preds = %for.cond102
  store i32 1, ptr %ret, align 4, !tbaa !12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

cleanup115:                                       ; preds = %addrinfo_malloc_err, %for.end114
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_bai) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %addresses) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %addrlistp) #9
  %cleanup.dest118 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest118, label %unreachable [
    i32 0, label %cleanup.cont119
    i32 5, label %err
  ]

cleanup.cont119:                                  ; preds = %cleanup115
  br label %err

err:                                              ; preds = %cleanup.cont119, %cleanup115, %cleanup, %if.then56, %sw.default51, %if.then45, %if.then41
  %78 = load ptr, ptr @bio_lookup_lock, align 8, !tbaa !4
  %call120 = call i32 @CRYPTO_THREAD_unlock(ptr noundef %78)
  call void @llvm.lifetime.end.p0(i64 32, ptr %se_fallback) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %se) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %he) #9
  br label %if.end121

if.end121:                                        ; preds = %err, %sw.epilog34
  %79 = load i32, ptr %ret, align 4, !tbaa !12
  store i32 %79, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122

cleanup122:                                       ; preds = %if.end121, %if.then6, %if.end, %if.then2, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #9
  %80 = load i32, ptr %retval, align 4
  ret i32 %80

unreachable:                                      ; preds = %cleanup, %cleanup115
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @addrinfo_wrap(i32 noundef %family, i32 noundef %socktype, ptr noundef %where, i64 noundef %wherelen, i16 noundef zeroext %port, ptr noundef %bai) #0 {
entry:
  %retval = alloca i32, align 4
  %family.addr = alloca i32, align 4
  %socktype.addr = alloca i32, align 4
  %where.addr = alloca ptr, align 8
  %wherelen.addr = alloca i64, align 8
  %port.addr = alloca i16, align 2
  %bai.addr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  store i32 %family, ptr %family.addr, align 4, !tbaa !12
  store i32 %socktype, ptr %socktype.addr, align 4, !tbaa !12
  store ptr %where, ptr %where.addr, align 8, !tbaa !4
  store i64 %wherelen, ptr %wherelen.addr, align 8, !tbaa !14
  store i16 %port, ptr %port.addr, align 2, !tbaa !16
  store ptr %bai, ptr %bai.addr, align 8, !tbaa !4
  %call = call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef @.str, i32 noundef 581)
  %0 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  store ptr %call, ptr %0, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str, i32 noundef 582, ptr noundef @__func__.addrinfo_wrap)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %family.addr, align 4, !tbaa !12
  %2 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %ai_family = getelementptr inbounds %struct.addrinfo, ptr %3, i32 0, i32 1
  store i32 %1, ptr %ai_family, align 4, !tbaa !21
  %4 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %5, align 8, !tbaa !4
  %ai_socktype = getelementptr inbounds %struct.addrinfo, ptr %6, i32 0, i32 2
  store i32 %4, ptr %ai_socktype, align 8, !tbaa !22
  %7 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  %cmp1 = icmp eq i32 %7, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %8, align 8, !tbaa !4
  %ai_protocol = getelementptr inbounds %struct.addrinfo, ptr %9, i32 0, i32 3
  store i32 6, ptr %ai_protocol, align 4, !tbaa !23
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load i32, ptr %socktype.addr, align 4, !tbaa !12
  %cmp4 = icmp eq i32 %10, 2
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %11 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %11, align 8, !tbaa !4
  %ai_protocol6 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 3
  store i32 17, ptr %ai_protocol6, align 4, !tbaa !23
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %13 = load i32, ptr %family.addr, align 4, !tbaa !12
  %cmp8 = icmp eq i32 %13, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %14, align 8, !tbaa !4
  %ai_protocol10 = getelementptr inbounds %struct.addrinfo, ptr %15, i32 0, i32 3
  store i32 0, ptr %ai_protocol10, align 4, !tbaa !23
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9
  %call12 = call ptr @BIO_ADDR_new()
  store ptr %call12, ptr %addr, align 8, !tbaa !4
  %16 = load ptr, ptr %addr, align 8, !tbaa !4
  %cmp13 = icmp ne ptr %16, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  %17 = load ptr, ptr %addr, align 8, !tbaa !4
  %18 = load i32, ptr %family.addr, align 4, !tbaa !12
  %19 = load ptr, ptr %where.addr, align 8, !tbaa !4
  %20 = load i64, ptr %wherelen.addr, align 8, !tbaa !14
  %21 = load i16, ptr %port.addr, align 2, !tbaa !16
  %call15 = call i32 @BIO_ADDR_rawmake(ptr noundef %17, i32 noundef %18, ptr noundef %19, i64 noundef %20, i16 noundef zeroext %21)
  %22 = load ptr, ptr %addr, align 8, !tbaa !4
  %call16 = call ptr @BIO_ADDR_sockaddr_noconst(ptr noundef %22)
  %23 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %23, align 8, !tbaa !4
  %ai_addr = getelementptr inbounds %struct.addrinfo, ptr %24, i32 0, i32 5
  store ptr %call16, ptr %ai_addr, align 8, !tbaa !25
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9
  %25 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %25, align 8, !tbaa !4
  %ai_next = getelementptr inbounds %struct.addrinfo, ptr %26, i32 0, i32 7
  store ptr null, ptr %ai_next, align 8, !tbaa !19
  %27 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %27, align 8, !tbaa !4
  %ai_addr18 = getelementptr inbounds %struct.addrinfo, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %ai_addr18, align 8, !tbaa !25
  %cmp19 = icmp eq ptr %29, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %30 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %30, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(ptr noundef %31)
  %32 = load ptr, ptr %bai.addr, align 8, !tbaa !4
  store ptr null, ptr %32, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare i32 @BIO_sock_init() #2

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #7

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) #5

declare i32 @CRYPTO_THREAD_run_once(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @do_bio_lookup_init_ossl_() #0 {
entry:
  %call = call i32 @do_bio_lookup_init()
  store i32 %call, ptr @do_bio_lookup_init_ossl_ret_, align 4, !tbaa !12
  ret void
}

declare i32 @CRYPTO_THREAD_write_lock(ptr noundef) #2

declare ptr @gethostbyname(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__h_errno_location() #7

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #8 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, ptr %__bsx.addr, align 2, !tbaa !16
  %0 = load i16, ptr %__bsx.addr, align 2, !tbaa !16
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %1 = load i16, ptr %__bsx.addr, align 2, !tbaa !16
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 255
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

declare ptr @getservbyname(ptr noundef, ptr noundef) #2

declare i32 @CRYPTO_THREAD_unlock(ptr noundef) #2

declare i32 @getnameinfo(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @BIO_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @do_bio_lookup_init() #0 {
entry:
  %call = call ptr @CRYPTO_THREAD_lock_new()
  store ptr %call, ptr @bio_lookup_lock, align 8, !tbaa !4
  %0 = load ptr, ptr @bio_lookup_lock, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare ptr @CRYPTO_THREAD_lock_new() #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"sockaddr", !11, i64 0, !6, i64 2}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{i64 0, i64 4, !12}
!18 = !{i64 0, i64 16, !8, i64 0, i64 16, !8, i64 0, i64 16, !8}
!19 = !{!20, !5, i64 40}
!20 = !{!"addrinfo", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!21 = !{!20, !13, i64 4}
!22 = !{!20, !13, i64 8}
!23 = !{!20, !13, i64 12}
!24 = !{!20, !13, i64 16}
!25 = !{!20, !5, i64 24}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!20, !13, i64 0}
!29 = !{!30, !13, i64 16}
!30 = !{!"servent", !5, i64 0, !5, i64 8, !13, i64 16, !5, i64 24}
!31 = !{!30, !5, i64 24}
!32 = !{!33, !5, i64 24}
!33 = !{!"hostent", !5, i64 0, !5, i64 8, !13, i64 16, !13, i64 20, !5, i64 24}
!34 = distinct !{!34, !27}
!35 = !{!33, !13, i64 16}
!36 = !{!33, !13, i64 20}
!37 = distinct !{!37, !27}
