; ModuleID = 'samples/554.bc'
source_filename = "x509write_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_x509write_cert = type { i32, %struct.mbedtls_mpi, ptr, ptr, ptr, ptr, i32, [16 x i8], [16 x i8], ptr }
%struct.mbedtls_mpi = type { i32, i64, ptr }

@.str = private unnamed_addr constant [4 x i8] c"U\1D\13\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"U\1D\0E\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"U\1D#\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"U\1D\0F\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"`\86H\01\86\F8B\01\01\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"-----BEGIN CERTIFICATE-----\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"-----END CERTIFICATE-----\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_x509write_crt_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 112, i1 false)
  %1 = load ptr, ptr %ctx.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %1, i32 0, i32 1
  call void @mbedtls_mpi_init(ptr noundef %serial)
  %2 = load ptr, ptr %ctx.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %2, i32 0, i32 0
  store i32 2, ptr %version, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @mbedtls_mpi_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_x509write_crt_free(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 1
  call void @mbedtls_mpi_free(ptr noundef %serial)
  %1 = load ptr, ptr %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %1, i32 0, i32 4
  call void @mbedtls_asn1_free_named_data_list(ptr noundef %subject)
  %2 = load ptr, ptr %ctx.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %2, i32 0, i32 5
  call void @mbedtls_asn1_free_named_data_list(ptr noundef %issuer)
  %3 = load ptr, ptr %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %3, i32 0, i32 9
  call void @mbedtls_asn1_free_named_data_list(ptr noundef %extensions)
  %4 = load ptr, ptr %ctx.addr, align 8
  call void @mbedtls_platform_zeroize(ptr noundef %4, i64 noundef 112)
  ret void
}

declare void @mbedtls_mpi_free(ptr noundef) #2

declare void @mbedtls_asn1_free_named_data_list(ptr noundef) #2

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_x509write_crt_set_version(ptr noundef %ctx, i32 noundef %version) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %version.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %version, ptr %version.addr, align 4
  %0 = load i32, ptr %version.addr, align 4
  %1 = load ptr, ptr %ctx.addr, align 8
  %version1 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %1, i32 0, i32 0
  store i32 %0, ptr %version1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_x509write_crt_set_md_alg(ptr noundef %ctx, i32 noundef %md_alg) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %md_alg.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %md_alg, ptr %md_alg.addr, align 4
  %0 = load i32, ptr %md_alg.addr, align 4
  %1 = load ptr, ptr %ctx.addr, align 8
  %md_alg1 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %1, i32 0, i32 6
  store i32 %0, ptr %md_alg1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_x509write_crt_set_subject_key(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %0 = load ptr, ptr %key.addr, align 8
  %1 = load ptr, ptr %ctx.addr, align 8
  %subject_key = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %1, i32 0, i32 2
  store ptr %0, ptr %subject_key, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @mbedtls_x509write_crt_set_issuer_key(ptr noundef %ctx, ptr noundef %key) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  %0 = load ptr, ptr %key.addr, align 8
  %1 = load ptr, ptr %ctx.addr, align 8
  %issuer_key = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %1, i32 0, i32 3
  store ptr %0, ptr %issuer_key, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_subject_name(ptr noundef %ctx, ptr noundef %subject_name) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %subject_name.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %subject_name, ptr %subject_name.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %subject_name.addr, align 8
  %call = call i32 @mbedtls_x509_string_to_names(ptr noundef %subject, ptr noundef %1)
  ret i32 %call
}

declare i32 @mbedtls_x509_string_to_names(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_issuer_name(ptr noundef %ctx, ptr noundef %issuer_name) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %issuer_name.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %issuer_name, ptr %issuer_name.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %issuer_name.addr, align 8
  %call = call i32 @mbedtls_x509_string_to_names(ptr noundef %issuer, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_serial(ptr noundef %ctx, ptr noundef %serial) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %serial.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %serial, ptr %serial.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %serial1 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %serial.addr, align 8
  %call = call i32 @mbedtls_mpi_copy(ptr noundef %serial1, ptr noundef %1)
  store i32 %call, ptr %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @mbedtls_mpi_copy(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_validity(ptr noundef %ctx, ptr noundef %not_before, ptr noundef %not_after) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %not_before.addr = alloca ptr, align 8
  %not_after.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %not_before, ptr %not_before.addr, align 8
  store ptr %not_after, ptr %not_after.addr, align 8
  %0 = load ptr, ptr %not_before.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #6
  %cmp = icmp ne i64 %call, 14
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %not_after.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1) #6
  %cmp2 = icmp ne i64 %call1, 14
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -10240, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %ctx.addr, align 8
  %not_before3 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %2, i32 0, i32 7
  %arraydecay = getelementptr inbounds [16 x i8], ptr %not_before3, i64 0, i64 0
  %3 = load ptr, ptr %not_before.addr, align 8
  %call4 = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %3, i64 noundef 15) #7
  %4 = load ptr, ptr %ctx.addr, align 8
  %not_after5 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %4, i32 0, i32 8
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %not_after5, i64 0, i64 0
  %5 = load ptr, ptr %not_after.addr, align 8
  %call7 = call ptr @strncpy(ptr noundef %arraydecay6, ptr noundef %5, i64 noundef 15) #7
  %6 = load ptr, ptr %ctx.addr, align 8
  %not_before8 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %6, i32 0, i32 7
  %arrayidx = getelementptr inbounds [16 x i8], ptr %not_before8, i64 0, i64 14
  store i8 90, ptr %arrayidx, align 2
  %7 = load ptr, ptr %ctx.addr, align 8
  %not_after9 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %7, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [16 x i8], ptr %not_after9, i64 0, i64 14
  store i8 90, ptr %arrayidx10, align 2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_extension(ptr noundef %ctx, ptr noundef %oid, i64 noundef %oid_len, i32 noundef %critical, ptr noundef %val, i64 noundef %val_len) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %oid.addr = alloca ptr, align 8
  %oid_len.addr = alloca i64, align 8
  %critical.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %val_len.addr = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %oid, ptr %oid.addr, align 8
  store i64 %oid_len, ptr %oid_len.addr, align 8
  store i32 %critical, ptr %critical.addr, align 4
  store ptr %val, ptr %val.addr, align 8
  store i64 %val_len, ptr %val_len.addr, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %oid.addr, align 8
  %2 = load i64, ptr %oid_len.addr, align 8
  %3 = load i32, ptr %critical.addr, align 4
  %4 = load ptr, ptr %val.addr, align 8
  %5 = load i64, ptr %val_len.addr, align 8
  %call = call i32 @mbedtls_x509_set_extension(ptr noundef %extensions, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i32 %call
}

declare i32 @mbedtls_x509_set_extension(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_basic_constraints(ptr noundef %ctx, i32 noundef %is_ca, i32 noundef %max_pathlen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %is_ca.addr = alloca i32, align 4
  %max_pathlen.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [9 x i8], align 1
  %c = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %is_ca, ptr %is_ca.addr, align 4
  store i32 %max_pathlen, ptr %max_pathlen.addr, align 4
  %arraydecay = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 9
  store ptr %add.ptr, ptr %c, align 8
  store i64 0, ptr %len, align 8
  %arraydecay1 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay1, i8 0, i64 9, i1 false)
  %0 = load i32, ptr %is_ca.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %max_pathlen.addr, align 4
  %cmp = icmp sgt i32 %1, 127
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -10240, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %is_ca.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.end22

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %max_pathlen.addr, align 4
  %cmp4 = icmp sge i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then3
  br label %do.body

do.body:                                          ; preds = %if.then5
  %arraydecay6 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %4 = load i32, ptr %max_pathlen.addr, align 4
  %call = call i32 @mbedtls_asn1_write_int(ptr noundef %c, ptr noundef %arraydecay6, i32 noundef %4)
  store i32 %call, ptr %ret, align 4
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.body
  %5 = load i32, ptr %ret, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %6 = load i32, ptr %ret, align 4
  %conv = sext i32 %6 to i64
  %7 = load i64, ptr %len, align 8
  %add = add i64 %7, %conv
  store i64 %add, ptr %len, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then3
  br label %do.body11

do.body11:                                        ; preds = %if.end10
  %arraydecay12 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %call13 = call i32 @mbedtls_asn1_write_bool(ptr noundef %c, ptr noundef %arraydecay12, i32 noundef 1)
  store i32 %call13, ptr %ret, align 4
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %do.body11
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.else17:                                        ; preds = %do.body11
  %9 = load i32, ptr %ret, align 4
  %conv18 = sext i32 %9 to i64
  %10 = load i64, ptr %len, align 8
  %add19 = add i64 %10, %conv18
  store i64 %add19, ptr %len, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else17
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %if.end
  br label %do.body23

do.body23:                                        ; preds = %if.end22
  %arraydecay24 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %11 = load i64, ptr %len, align 8
  %call25 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay24, i64 noundef %11)
  store i32 %call25, ptr %ret, align 4
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %do.body23
  %12 = load i32, ptr %ret, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.else29:                                        ; preds = %do.body23
  %13 = load i32, ptr %ret, align 4
  %conv30 = sext i32 %13 to i64
  %14 = load i64, ptr %len, align 8
  %add31 = add i64 %14, %conv30
  store i64 %add31, ptr %len, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else29
  br label %do.end33

do.end33:                                         ; preds = %if.end32
  br label %do.body34

do.body34:                                        ; preds = %do.end33
  %arraydecay35 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %call36 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay35, i8 noundef zeroext 48)
  store i32 %call36, ptr %ret, align 4
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %do.body34
  %15 = load i32, ptr %ret, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

if.else40:                                        ; preds = %do.body34
  %16 = load i32, ptr %ret, align 4
  %conv41 = sext i32 %16 to i64
  %17 = load i64, ptr %len, align 8
  %add42 = add i64 %17, %conv41
  store i64 %add42, ptr %len, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else40
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  %18 = load ptr, ptr %ctx.addr, align 8
  %arraydecay45 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %add.ptr46 = getelementptr inbounds i8, ptr %arraydecay45, i64 9
  %19 = load i64, ptr %len, align 8
  %idx.neg = sub i64 0, %19
  %add.ptr47 = getelementptr inbounds i8, ptr %add.ptr46, i64 %idx.neg
  %20 = load i64, ptr %len, align 8
  %call48 = call i32 @mbedtls_x509write_crt_set_extension(ptr noundef %18, ptr noundef @.str, i64 noundef 3, i32 noundef 0, ptr noundef %add.ptr47, i64 noundef %20)
  store i32 %call48, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end44, %if.then39, %if.then28, %if.then16, %if.then8, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

declare i32 @mbedtls_asn1_write_int(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @mbedtls_asn1_write_bool(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @mbedtls_asn1_write_len(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @mbedtls_asn1_write_tag(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_subject_key_identifier(ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %buf = alloca [2068 x i8], align 16
  %c = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %arraydecay = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 2068
  store ptr %add.ptr, ptr %c, align 8
  store i64 0, ptr %len, align 8
  %arraydecay1 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay1, i8 0, i64 2068, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %0 = load ptr, ptr %ctx.addr, align 8
  %subject_key = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %subject_key, align 8
  %call = call i32 @mbedtls_pk_write_pubkey(ptr noundef %c, ptr noundef %arraydecay2, ptr noundef %1)
  store i32 %call, ptr %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, ptr %ret, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %3 = load i32, ptr %ret, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, ptr %len, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr4 = getelementptr inbounds i8, ptr %arraydecay3, i64 2068
  %5 = load i64, ptr %len, align 8
  %idx.neg = sub i64 0, %5
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 %idx.neg
  %6 = load i64, ptr %len, align 8
  %arraydecay6 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr7 = getelementptr inbounds i8, ptr %arraydecay6, i64 2068
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 -20
  %call9 = call i32 @mbedtls_sha1_ret(ptr noundef %add.ptr5, i64 noundef %6, ptr noundef %add.ptr8)
  store i32 %call9, ptr %ret, align 4
  %7 = load i32, ptr %ret, align 4
  %cmp10 = icmp ne i32 %7, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %do.end
  %arraydecay14 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr15 = getelementptr inbounds i8, ptr %arraydecay14, i64 2068
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr15, i64 -20
  store ptr %add.ptr16, ptr %c, align 8
  store i64 20, ptr %len, align 8
  br label %do.body17

do.body17:                                        ; preds = %if.end13
  %arraydecay18 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %9 = load i64, ptr %len, align 8
  %call19 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay18, i64 noundef %9)
  store i32 %call19, ptr %ret, align 4
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %do.body17
  %10 = load i32, ptr %ret, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.else23:                                        ; preds = %do.body17
  %11 = load i32, ptr %ret, align 4
  %conv24 = sext i32 %11 to i64
  %12 = load i64, ptr %len, align 8
  %add25 = add i64 %12, %conv24
  store i64 %add25, ptr %len, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else23
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %arraydecay29 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %call30 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay29, i8 noundef zeroext 4)
  store i32 %call30, ptr %ret, align 4
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %do.body28
  %13 = load i32, ptr %ret, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.else34:                                        ; preds = %do.body28
  %14 = load i32, ptr %ret, align 4
  %conv35 = sext i32 %14 to i64
  %15 = load i64, ptr %len, align 8
  %add36 = add i64 %15, %conv35
  store i64 %add36, ptr %len, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else34
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  %16 = load ptr, ptr %ctx.addr, align 8
  %arraydecay39 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr40 = getelementptr inbounds i8, ptr %arraydecay39, i64 2068
  %17 = load i64, ptr %len, align 8
  %idx.neg41 = sub i64 0, %17
  %add.ptr42 = getelementptr inbounds i8, ptr %add.ptr40, i64 %idx.neg41
  %18 = load i64, ptr %len, align 8
  %call43 = call i32 @mbedtls_x509write_crt_set_extension(ptr noundef %16, ptr noundef @.str.1, i64 noundef 3, i32 noundef 0, ptr noundef %add.ptr42, i64 noundef %18)
  store i32 %call43, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end38, %if.then33, %if.then22, %if.then12, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i32 @mbedtls_pk_write_pubkey(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @mbedtls_sha1_ret(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_authority_key_identifier(ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %buf = alloca [2068 x i8], align 16
  %c = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  %arraydecay = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 2068
  store ptr %add.ptr, ptr %c, align 8
  store i64 0, ptr %len, align 8
  %arraydecay1 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay1, i8 0, i64 2068, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %0 = load ptr, ptr %ctx.addr, align 8
  %issuer_key = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %issuer_key, align 8
  %call = call i32 @mbedtls_pk_write_pubkey(ptr noundef %c, ptr noundef %arraydecay2, ptr noundef %1)
  store i32 %call, ptr %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32, ptr %ret, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %3 = load i32, ptr %ret, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, ptr %len, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr4 = getelementptr inbounds i8, ptr %arraydecay3, i64 2068
  %5 = load i64, ptr %len, align 8
  %idx.neg = sub i64 0, %5
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr4, i64 %idx.neg
  %6 = load i64, ptr %len, align 8
  %arraydecay6 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr7 = getelementptr inbounds i8, ptr %arraydecay6, i64 2068
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 -20
  %call9 = call i32 @mbedtls_sha1_ret(ptr noundef %add.ptr5, i64 noundef %6, ptr noundef %add.ptr8)
  store i32 %call9, ptr %ret, align 4
  %7 = load i32, ptr %ret, align 4
  %cmp10 = icmp ne i32 %7, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %do.end
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %do.end
  %arraydecay14 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr15 = getelementptr inbounds i8, ptr %arraydecay14, i64 2068
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr15, i64 -20
  store ptr %add.ptr16, ptr %c, align 8
  store i64 20, ptr %len, align 8
  br label %do.body17

do.body17:                                        ; preds = %if.end13
  %arraydecay18 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %9 = load i64, ptr %len, align 8
  %call19 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay18, i64 noundef %9)
  store i32 %call19, ptr %ret, align 4
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %do.body17
  %10 = load i32, ptr %ret, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.else23:                                        ; preds = %do.body17
  %11 = load i32, ptr %ret, align 4
  %conv24 = sext i32 %11 to i64
  %12 = load i64, ptr %len, align 8
  %add25 = add i64 %12, %conv24
  store i64 %add25, ptr %len, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else23
  br label %do.end27

do.end27:                                         ; preds = %if.end26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  %arraydecay29 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %call30 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay29, i8 noundef zeroext -128)
  store i32 %call30, ptr %ret, align 4
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %do.body28
  %13 = load i32, ptr %ret, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.else34:                                        ; preds = %do.body28
  %14 = load i32, ptr %ret, align 4
  %conv35 = sext i32 %14 to i64
  %15 = load i64, ptr %len, align 8
  %add36 = add i64 %15, %conv35
  store i64 %add36, ptr %len, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else34
  br label %do.end38

do.end38:                                         ; preds = %if.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  %arraydecay40 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %16 = load i64, ptr %len, align 8
  %call41 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay40, i64 noundef %16)
  store i32 %call41, ptr %ret, align 4
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %do.body39
  %17 = load i32, ptr %ret, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

if.else45:                                        ; preds = %do.body39
  %18 = load i32, ptr %ret, align 4
  %conv46 = sext i32 %18 to i64
  %19 = load i64, ptr %len, align 8
  %add47 = add i64 %19, %conv46
  store i64 %add47, ptr %len, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else45
  br label %do.end49

do.end49:                                         ; preds = %if.end48
  br label %do.body50

do.body50:                                        ; preds = %do.end49
  %arraydecay51 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %call52 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay51, i8 noundef zeroext 48)
  store i32 %call52, ptr %ret, align 4
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %do.body50
  %20 = load i32, ptr %ret, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.else56:                                        ; preds = %do.body50
  %21 = load i32, ptr %ret, align 4
  %conv57 = sext i32 %21 to i64
  %22 = load i64, ptr %len, align 8
  %add58 = add i64 %22, %conv57
  store i64 %add58, ptr %len, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else56
  br label %do.end60

do.end60:                                         ; preds = %if.end59
  %23 = load ptr, ptr %ctx.addr, align 8
  %arraydecay61 = getelementptr inbounds [2068 x i8], ptr %buf, i64 0, i64 0
  %add.ptr62 = getelementptr inbounds i8, ptr %arraydecay61, i64 2068
  %24 = load i64, ptr %len, align 8
  %idx.neg63 = sub i64 0, %24
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr62, i64 %idx.neg63
  %25 = load i64, ptr %len, align 8
  %call65 = call i32 @mbedtls_x509write_crt_set_extension(ptr noundef %23, ptr noundef @.str.2, i64 noundef 3, i32 noundef 0, ptr noundef %add.ptr64, i64 noundef %25)
  store i32 %call65, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end60, %if.then55, %if.then44, %if.then33, %if.then22, %if.then12, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_key_usage(ptr noundef %ctx, i32 noundef %key_usage) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %key_usage.addr = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  %ku = alloca i8, align 1
  %c = alloca ptr, align 8
  %ret = alloca i32, align 4
  %unused_bits = alloca i64, align 8
  %allowed_bits = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store i32 %key_usage, ptr %key_usage.addr, align 4
  store i32 254, ptr %allowed_bits, align 4
  %0 = load i32, ptr %key_usage.addr, align 4
  %and = and i32 %0, -255
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -8320, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 4
  store ptr %add.ptr, ptr %c, align 8
  %1 = load i32, ptr %key_usage.addr, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, ptr %ku, align 1
  %2 = load i8, ptr %ku, align 1
  %call = call i64 @crt_get_unused_bits_for_named_bitstring(i8 noundef zeroext %2, i64 noundef 1)
  store i64 %call, ptr %unused_bits, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %3 = load i64, ptr %unused_bits, align 8
  %sub = sub i64 8, %3
  %call2 = call i32 @mbedtls_asn1_write_bitstring(ptr noundef %c, ptr noundef %arraydecay1, ptr noundef %ku, i64 noundef %sub)
  store i32 %call2, ptr %ret, align 4
  %4 = load i32, ptr %ret, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i32, ptr %ret, align 4
  %cmp6 = icmp slt i32 %6, 3
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i32, ptr %ret, align 4
  %cmp8 = icmp sgt i32 %7, 4
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.else
  store i32 -8576, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %8 = load ptr, ptr %ctx.addr, align 8
  %9 = load ptr, ptr %c, align 8
  %10 = load i32, ptr %ret, align 4
  %conv13 = sext i32 %10 to i64
  %call14 = call i32 @mbedtls_x509write_crt_set_extension(ptr noundef %8, ptr noundef @.str.3, i64 noundef 3, i32 noundef 1, ptr noundef %9, i64 noundef %conv13)
  store i32 %call14, ptr %ret, align 4
  %11 = load i32, ptr %ret, align 4
  %cmp15 = icmp ne i32 %11, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %12 = load i32, ptr %ret, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.then10, %if.then5, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crt_get_unused_bits_for_named_bitstring(i8 noundef zeroext %bitstring, i64 noundef %bit_offset) #0 {
entry:
  %bitstring.addr = alloca i8, align 1
  %bit_offset.addr = alloca i64, align 8
  %unused_bits = alloca i64, align 8
  store i8 %bitstring, ptr %bitstring.addr, align 1
  store i64 %bit_offset, ptr %bit_offset.addr, align 8
  %0 = load i64, ptr %bit_offset.addr, align 8
  store i64 %0, ptr %unused_bits, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %unused_bits, align 8
  %cmp = icmp ult i64 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, ptr %bitstring.addr, align 1
  %conv = zext i8 %2 to i32
  %3 = load i64, ptr %unused_bits, align 8
  %sh_prom = trunc i64 %3 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, ptr %unused_bits, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %unused_bits, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i64, ptr %unused_bits, align 8
  ret i64 %5
}

declare i32 @mbedtls_asn1_write_bitstring(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_set_ns_cert_type(ptr noundef %ctx, i8 noundef zeroext %ns_cert_type) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %ns_cert_type.addr = alloca i8, align 1
  %buf = alloca [4 x i8], align 1
  %c = alloca ptr, align 8
  %unused_bits = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store i8 %ns_cert_type, ptr %ns_cert_type.addr, align 1
  %arraydecay = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 4
  store ptr %add.ptr, ptr %c, align 8
  %0 = load i8, ptr %ns_cert_type.addr, align 1
  %call = call i64 @crt_get_unused_bits_for_named_bitstring(i8 noundef zeroext %0, i64 noundef 0)
  store i64 %call, ptr %unused_bits, align 8
  %arraydecay1 = getelementptr inbounds [4 x i8], ptr %buf, i64 0, i64 0
  %1 = load i64, ptr %unused_bits, align 8
  %sub = sub i64 8, %1
  %call2 = call i32 @mbedtls_asn1_write_bitstring(ptr noundef %c, ptr noundef %arraydecay1, ptr noundef %ns_cert_type.addr, i64 noundef %sub)
  store i32 %call2, ptr %ret, align 4
  %2 = load i32, ptr %ret, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %ret, align 4
  %cmp3 = icmp sgt i32 %3, 4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, ptr %ret, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %ctx.addr, align 8
  %6 = load ptr, ptr %c, align 8
  %7 = load i32, ptr %ret, align 4
  %conv = sext i32 %7 to i64
  %call4 = call i32 @mbedtls_x509write_crt_set_extension(ptr noundef %5, ptr noundef @.str.4, i64 noundef 9, i32 noundef 0, ptr noundef %6, i64 noundef %conv)
  store i32 %call4, ptr %ret, align 4
  %8 = load i32, ptr %ret, align 4
  %cmp5 = icmp ne i32 %8, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_der(ptr noundef %ctx, ptr noundef %buf, i64 noundef %size, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %sig_oid = alloca ptr, align 8
  %sig_oid_len = alloca i64, align 8
  %c = alloca ptr, align 8
  %c2 = alloca ptr, align 8
  %hash = alloca [64 x i8], align 16
  %sig = alloca [1024 x i8], align 16
  %tmp_buf = alloca [2048 x i8], align 16
  %sub_len = alloca i64, align 8
  %pub_len = alloca i64, align 8
  %sig_and_oid_len = alloca i64, align 8
  %sig_len = alloca i64, align 8
  %len = alloca i64, align 8
  %pk_alg = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %f_rng, ptr %f_rng.addr, align 8
  store ptr %p_rng, ptr %p_rng.addr, align 8
  store i64 0, ptr %sig_oid_len, align 8
  store i64 0, ptr %sub_len, align 8
  store i64 0, ptr %pub_len, align 8
  store i64 0, ptr %sig_and_oid_len, align 8
  store i64 0, ptr %len, align 8
  %arraydecay = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 2048
  store ptr %add.ptr, ptr %c, align 8
  %0 = load ptr, ptr %ctx.addr, align 8
  %issuer_key = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %issuer_key, align 8
  %call = call i32 @mbedtls_pk_can_do(ptr noundef %1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %pk_alg, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8
  %issuer_key1 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %issuer_key1, align 8
  %call2 = call i32 @mbedtls_pk_can_do(ptr noundef %3, i32 noundef 4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 4, ptr %pk_alg, align 4
  br label %if.end

if.else5:                                         ; preds = %if.else
  store i32 -8960, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %4 = load i32, ptr %pk_alg, align 4
  %5 = load ptr, ptr %ctx.addr, align 8
  %md_alg = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %md_alg, align 8
  %call7 = call i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef %4, i32 noundef %6, ptr noundef %sig_oid, ptr noundef %sig_oid_len)
  store i32 %call7, ptr %ret, align 4
  %cmp = icmp ne i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %7 = load i32, ptr %ret, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %8 = load ptr, ptr %ctx.addr, align 8
  %version = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %version, align 8
  %cmp10 = icmp eq i32 %9, 2
  br i1 %cmp10, label %if.then11, label %if.end62

if.then11:                                        ; preds = %if.end9
  br label %do.body

do.body:                                          ; preds = %if.then11
  %arraydecay12 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %10 = load ptr, ptr %ctx.addr, align 8
  %extensions = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %extensions, align 8
  %call13 = call i32 @mbedtls_x509_write_extensions(ptr noundef %c, ptr noundef %arraydecay12, ptr noundef %11)
  store i32 %call13, ptr %ret, align 4
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %do.body
  %12 = load i32, ptr %ret, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.else16:                                        ; preds = %do.body
  %13 = load i32, ptr %ret, align 4
  %conv = sext i32 %13 to i64
  %14 = load i64, ptr %len, align 8
  %add = add i64 %14, %conv
  store i64 %add, ptr %len, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else16
  br label %do.end

do.end:                                           ; preds = %if.end17
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %arraydecay19 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %15 = load i64, ptr %len, align 8
  %call20 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay19, i64 noundef %15)
  store i32 %call20, ptr %ret, align 4
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %do.body18
  %16 = load i32, ptr %ret, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.else24:                                        ; preds = %do.body18
  %17 = load i32, ptr %ret, align 4
  %conv25 = sext i32 %17 to i64
  %18 = load i64, ptr %len, align 8
  %add26 = add i64 %18, %conv25
  store i64 %add26, ptr %len, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else24
  br label %do.end28

do.end28:                                         ; preds = %if.end27
  br label %do.body29

do.body29:                                        ; preds = %do.end28
  %arraydecay30 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %call31 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay30, i8 noundef zeroext 48)
  store i32 %call31, ptr %ret, align 4
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %do.body29
  %19 = load i32, ptr %ret, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.else35:                                        ; preds = %do.body29
  %20 = load i32, ptr %ret, align 4
  %conv36 = sext i32 %20 to i64
  %21 = load i64, ptr %len, align 8
  %add37 = add i64 %21, %conv36
  store i64 %add37, ptr %len, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else35
  br label %do.end39

do.end39:                                         ; preds = %if.end38
  br label %do.body40

do.body40:                                        ; preds = %do.end39
  %arraydecay41 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %22 = load i64, ptr %len, align 8
  %call42 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay41, i64 noundef %22)
  store i32 %call42, ptr %ret, align 4
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %do.body40
  %23 = load i32, ptr %ret, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

if.else46:                                        ; preds = %do.body40
  %24 = load i32, ptr %ret, align 4
  %conv47 = sext i32 %24 to i64
  %25 = load i64, ptr %len, align 8
  %add48 = add i64 %25, %conv47
  store i64 %add48, ptr %len, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else46
  br label %do.end50

do.end50:                                         ; preds = %if.end49
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %arraydecay52 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %call53 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay52, i8 noundef zeroext -93)
  store i32 %call53, ptr %ret, align 4
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %do.body51
  %26 = load i32, ptr %ret, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.else57:                                        ; preds = %do.body51
  %27 = load i32, ptr %ret, align 4
  %conv58 = sext i32 %27 to i64
  %28 = load i64, ptr %len, align 8
  %add59 = add i64 %28, %conv58
  store i64 %add59, ptr %len, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else57
  br label %do.end61

do.end61:                                         ; preds = %if.end60
  br label %if.end62

if.end62:                                         ; preds = %do.end61, %if.end9
  br label %do.body63

do.body63:                                        ; preds = %if.end62
  %29 = load ptr, ptr %ctx.addr, align 8
  %subject_key = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %subject_key, align 8
  %arraydecay64 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %31 = load ptr, ptr %c, align 8
  %arraydecay65 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay65 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call66 = call i32 @mbedtls_pk_write_pubkey_der(ptr noundef %30, ptr noundef %arraydecay64, i64 noundef %sub.ptr.sub)
  store i32 %call66, ptr %ret, align 4
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %do.body63
  %32 = load i32, ptr %ret, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.else70:                                        ; preds = %do.body63
  %33 = load i32, ptr %ret, align 4
  %conv71 = sext i32 %33 to i64
  %34 = load i64, ptr %pub_len, align 8
  %add72 = add i64 %34, %conv71
  store i64 %add72, ptr %pub_len, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.else70
  br label %do.end74

do.end74:                                         ; preds = %if.end73
  %35 = load i64, ptr %pub_len, align 8
  %36 = load ptr, ptr %c, align 8
  %idx.neg = sub i64 0, %35
  %add.ptr75 = getelementptr inbounds i8, ptr %36, i64 %idx.neg
  store ptr %add.ptr75, ptr %c, align 8
  %37 = load i64, ptr %pub_len, align 8
  %38 = load i64, ptr %len, align 8
  %add76 = add i64 %38, %37
  store i64 %add76, ptr %len, align 8
  br label %do.body77

do.body77:                                        ; preds = %do.end74
  %arraydecay78 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %39 = load ptr, ptr %ctx.addr, align 8
  %subject = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %subject, align 8
  %call79 = call i32 @mbedtls_x509_write_names(ptr noundef %c, ptr noundef %arraydecay78, ptr noundef %40)
  store i32 %call79, ptr %ret, align 4
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %do.body77
  %41 = load i32, ptr %ret, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.else83:                                        ; preds = %do.body77
  %42 = load i32, ptr %ret, align 4
  %conv84 = sext i32 %42 to i64
  %43 = load i64, ptr %len, align 8
  %add85 = add i64 %43, %conv84
  store i64 %add85, ptr %len, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.else83
  br label %do.end87

do.end87:                                         ; preds = %if.end86
  store i64 0, ptr %sub_len, align 8
  br label %do.body88

do.body88:                                        ; preds = %do.end87
  %arraydecay89 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %44 = load ptr, ptr %ctx.addr, align 8
  %not_after = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %44, i32 0, i32 8
  %arraydecay90 = getelementptr inbounds [16 x i8], ptr %not_after, i64 0, i64 0
  %call91 = call i32 @x509_write_time(ptr noundef %c, ptr noundef %arraydecay89, ptr noundef %arraydecay90, i64 noundef 15)
  store i32 %call91, ptr %ret, align 4
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.else95

if.then94:                                        ; preds = %do.body88
  %45 = load i32, ptr %ret, align 4
  store i32 %45, ptr %retval, align 4
  br label %return

if.else95:                                        ; preds = %do.body88
  %46 = load i32, ptr %ret, align 4
  %conv96 = sext i32 %46 to i64
  %47 = load i64, ptr %sub_len, align 8
  %add97 = add i64 %47, %conv96
  store i64 %add97, ptr %sub_len, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.else95
  br label %do.end99

do.end99:                                         ; preds = %if.end98
  br label %do.body100

do.body100:                                       ; preds = %do.end99
  %arraydecay101 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %48 = load ptr, ptr %ctx.addr, align 8
  %not_before = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %48, i32 0, i32 7
  %arraydecay102 = getelementptr inbounds [16 x i8], ptr %not_before, i64 0, i64 0
  %call103 = call i32 @x509_write_time(ptr noundef %c, ptr noundef %arraydecay101, ptr noundef %arraydecay102, i64 noundef 15)
  store i32 %call103, ptr %ret, align 4
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.else107

if.then106:                                       ; preds = %do.body100
  %49 = load i32, ptr %ret, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

if.else107:                                       ; preds = %do.body100
  %50 = load i32, ptr %ret, align 4
  %conv108 = sext i32 %50 to i64
  %51 = load i64, ptr %sub_len, align 8
  %add109 = add i64 %51, %conv108
  store i64 %add109, ptr %sub_len, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.else107
  br label %do.end111

do.end111:                                        ; preds = %if.end110
  %52 = load i64, ptr %sub_len, align 8
  %53 = load i64, ptr %len, align 8
  %add112 = add i64 %53, %52
  store i64 %add112, ptr %len, align 8
  br label %do.body113

do.body113:                                       ; preds = %do.end111
  %arraydecay114 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %54 = load i64, ptr %sub_len, align 8
  %call115 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay114, i64 noundef %54)
  store i32 %call115, ptr %ret, align 4
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %do.body113
  %55 = load i32, ptr %ret, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

if.else119:                                       ; preds = %do.body113
  %56 = load i32, ptr %ret, align 4
  %conv120 = sext i32 %56 to i64
  %57 = load i64, ptr %len, align 8
  %add121 = add i64 %57, %conv120
  store i64 %add121, ptr %len, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.else119
  br label %do.end123

do.end123:                                        ; preds = %if.end122
  br label %do.body124

do.body124:                                       ; preds = %do.end123
  %arraydecay125 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %call126 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay125, i8 noundef zeroext 48)
  store i32 %call126, ptr %ret, align 4
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.else130

if.then129:                                       ; preds = %do.body124
  %58 = load i32, ptr %ret, align 4
  store i32 %58, ptr %retval, align 4
  br label %return

if.else130:                                       ; preds = %do.body124
  %59 = load i32, ptr %ret, align 4
  %conv131 = sext i32 %59 to i64
  %60 = load i64, ptr %len, align 8
  %add132 = add i64 %60, %conv131
  store i64 %add132, ptr %len, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.else130
  br label %do.end134

do.end134:                                        ; preds = %if.end133
  br label %do.body135

do.body135:                                       ; preds = %do.end134
  %arraydecay136 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %61 = load ptr, ptr %ctx.addr, align 8
  %issuer = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %61, i32 0, i32 5
  %62 = load ptr, ptr %issuer, align 8
  %call137 = call i32 @mbedtls_x509_write_names(ptr noundef %c, ptr noundef %arraydecay136, ptr noundef %62)
  store i32 %call137, ptr %ret, align 4
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then140, label %if.else141

if.then140:                                       ; preds = %do.body135
  %63 = load i32, ptr %ret, align 4
  store i32 %63, ptr %retval, align 4
  br label %return

if.else141:                                       ; preds = %do.body135
  %64 = load i32, ptr %ret, align 4
  %conv142 = sext i32 %64 to i64
  %65 = load i64, ptr %len, align 8
  %add143 = add i64 %65, %conv142
  store i64 %add143, ptr %len, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.else141
  br label %do.end145

do.end145:                                        ; preds = %if.end144
  br label %do.body146

do.body146:                                       ; preds = %do.end145
  %arraydecay147 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %66 = load ptr, ptr %sig_oid, align 8
  %67 = load ptr, ptr %sig_oid, align 8
  %call148 = call i64 @strlen(ptr noundef %67) #6
  %call149 = call i32 @mbedtls_asn1_write_algorithm_identifier(ptr noundef %c, ptr noundef %arraydecay147, ptr noundef %66, i64 noundef %call148, i64 noundef 0)
  store i32 %call149, ptr %ret, align 4
  %cmp150 = icmp slt i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %do.body146
  %68 = load i32, ptr %ret, align 4
  store i32 %68, ptr %retval, align 4
  br label %return

if.else153:                                       ; preds = %do.body146
  %69 = load i32, ptr %ret, align 4
  %conv154 = sext i32 %69 to i64
  %70 = load i64, ptr %len, align 8
  %add155 = add i64 %70, %conv154
  store i64 %add155, ptr %len, align 8
  br label %if.end156

if.end156:                                        ; preds = %if.else153
  br label %do.end157

do.end157:                                        ; preds = %if.end156
  br label %do.body158

do.body158:                                       ; preds = %do.end157
  %arraydecay159 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %71 = load ptr, ptr %ctx.addr, align 8
  %serial = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %71, i32 0, i32 1
  %call160 = call i32 @mbedtls_asn1_write_mpi(ptr noundef %c, ptr noundef %arraydecay159, ptr noundef %serial)
  store i32 %call160, ptr %ret, align 4
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then163, label %if.else164

if.then163:                                       ; preds = %do.body158
  %72 = load i32, ptr %ret, align 4
  store i32 %72, ptr %retval, align 4
  br label %return

if.else164:                                       ; preds = %do.body158
  %73 = load i32, ptr %ret, align 4
  %conv165 = sext i32 %73 to i64
  %74 = load i64, ptr %len, align 8
  %add166 = add i64 %74, %conv165
  store i64 %add166, ptr %len, align 8
  br label %if.end167

if.end167:                                        ; preds = %if.else164
  br label %do.end168

do.end168:                                        ; preds = %if.end167
  %75 = load ptr, ptr %ctx.addr, align 8
  %version169 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %version169, align 8
  %cmp170 = icmp ne i32 %76, 0
  br i1 %cmp170, label %if.then172, label %if.end208

if.then172:                                       ; preds = %do.end168
  store i64 0, ptr %sub_len, align 8
  br label %do.body173

do.body173:                                       ; preds = %if.then172
  %arraydecay174 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %77 = load ptr, ptr %ctx.addr, align 8
  %version175 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %77, i32 0, i32 0
  %78 = load i32, ptr %version175, align 8
  %call176 = call i32 @mbedtls_asn1_write_int(ptr noundef %c, ptr noundef %arraydecay174, i32 noundef %78)
  store i32 %call176, ptr %ret, align 4
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %if.then179, label %if.else180

if.then179:                                       ; preds = %do.body173
  %79 = load i32, ptr %ret, align 4
  store i32 %79, ptr %retval, align 4
  br label %return

if.else180:                                       ; preds = %do.body173
  %80 = load i32, ptr %ret, align 4
  %conv181 = sext i32 %80 to i64
  %81 = load i64, ptr %sub_len, align 8
  %add182 = add i64 %81, %conv181
  store i64 %add182, ptr %sub_len, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.else180
  br label %do.end184

do.end184:                                        ; preds = %if.end183
  %82 = load i64, ptr %sub_len, align 8
  %83 = load i64, ptr %len, align 8
  %add185 = add i64 %83, %82
  store i64 %add185, ptr %len, align 8
  br label %do.body186

do.body186:                                       ; preds = %do.end184
  %arraydecay187 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %84 = load i64, ptr %sub_len, align 8
  %call188 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay187, i64 noundef %84)
  store i32 %call188, ptr %ret, align 4
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %if.then191, label %if.else192

if.then191:                                       ; preds = %do.body186
  %85 = load i32, ptr %ret, align 4
  store i32 %85, ptr %retval, align 4
  br label %return

if.else192:                                       ; preds = %do.body186
  %86 = load i32, ptr %ret, align 4
  %conv193 = sext i32 %86 to i64
  %87 = load i64, ptr %len, align 8
  %add194 = add i64 %87, %conv193
  store i64 %add194, ptr %len, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.else192
  br label %do.end196

do.end196:                                        ; preds = %if.end195
  br label %do.body197

do.body197:                                       ; preds = %do.end196
  %arraydecay198 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %call199 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay198, i8 noundef zeroext -96)
  store i32 %call199, ptr %ret, align 4
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %if.then202, label %if.else203

if.then202:                                       ; preds = %do.body197
  %88 = load i32, ptr %ret, align 4
  store i32 %88, ptr %retval, align 4
  br label %return

if.else203:                                       ; preds = %do.body197
  %89 = load i32, ptr %ret, align 4
  %conv204 = sext i32 %89 to i64
  %90 = load i64, ptr %len, align 8
  %add205 = add i64 %90, %conv204
  store i64 %add205, ptr %len, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.else203
  br label %do.end207

do.end207:                                        ; preds = %if.end206
  br label %if.end208

if.end208:                                        ; preds = %do.end207, %do.end168
  br label %do.body209

do.body209:                                       ; preds = %if.end208
  %arraydecay210 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %91 = load i64, ptr %len, align 8
  %call211 = call i32 @mbedtls_asn1_write_len(ptr noundef %c, ptr noundef %arraydecay210, i64 noundef %91)
  store i32 %call211, ptr %ret, align 4
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %if.then214, label %if.else215

if.then214:                                       ; preds = %do.body209
  %92 = load i32, ptr %ret, align 4
  store i32 %92, ptr %retval, align 4
  br label %return

if.else215:                                       ; preds = %do.body209
  %93 = load i32, ptr %ret, align 4
  %conv216 = sext i32 %93 to i64
  %94 = load i64, ptr %len, align 8
  %add217 = add i64 %94, %conv216
  store i64 %add217, ptr %len, align 8
  br label %if.end218

if.end218:                                        ; preds = %if.else215
  br label %do.end219

do.end219:                                        ; preds = %if.end218
  br label %do.body220

do.body220:                                       ; preds = %do.end219
  %arraydecay221 = getelementptr inbounds [2048 x i8], ptr %tmp_buf, i64 0, i64 0
  %call222 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c, ptr noundef %arraydecay221, i8 noundef zeroext 48)
  store i32 %call222, ptr %ret, align 4
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.else226

if.then225:                                       ; preds = %do.body220
  %95 = load i32, ptr %ret, align 4
  store i32 %95, ptr %retval, align 4
  br label %return

if.else226:                                       ; preds = %do.body220
  %96 = load i32, ptr %ret, align 4
  %conv227 = sext i32 %96 to i64
  %97 = load i64, ptr %len, align 8
  %add228 = add i64 %97, %conv227
  store i64 %add228, ptr %len, align 8
  br label %if.end229

if.end229:                                        ; preds = %if.else226
  br label %do.end230

do.end230:                                        ; preds = %if.end229
  %98 = load ptr, ptr %ctx.addr, align 8
  %md_alg231 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %98, i32 0, i32 6
  %99 = load i32, ptr %md_alg231, align 8
  %call232 = call ptr @mbedtls_md_info_from_type(i32 noundef %99)
  %100 = load ptr, ptr %c, align 8
  %101 = load i64, ptr %len, align 8
  %arraydecay233 = getelementptr inbounds [64 x i8], ptr %hash, i64 0, i64 0
  %call234 = call i32 @mbedtls_md(ptr noundef %call232, ptr noundef %100, i64 noundef %101, ptr noundef %arraydecay233)
  store i32 %call234, ptr %ret, align 4
  %cmp235 = icmp ne i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.end238

if.then237:                                       ; preds = %do.end230
  %102 = load i32, ptr %ret, align 4
  store i32 %102, ptr %retval, align 4
  br label %return

if.end238:                                        ; preds = %do.end230
  %103 = load ptr, ptr %ctx.addr, align 8
  %issuer_key239 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %103, i32 0, i32 3
  %104 = load ptr, ptr %issuer_key239, align 8
  %105 = load ptr, ptr %ctx.addr, align 8
  %md_alg240 = getelementptr inbounds %struct.mbedtls_x509write_cert, ptr %105, i32 0, i32 6
  %106 = load i32, ptr %md_alg240, align 8
  %arraydecay241 = getelementptr inbounds [64 x i8], ptr %hash, i64 0, i64 0
  %arraydecay242 = getelementptr inbounds [1024 x i8], ptr %sig, i64 0, i64 0
  %107 = load ptr, ptr %f_rng.addr, align 8
  %108 = load ptr, ptr %p_rng.addr, align 8
  %call243 = call i32 @mbedtls_pk_sign(ptr noundef %104, i32 noundef %106, ptr noundef %arraydecay241, i64 noundef 0, ptr noundef %arraydecay242, ptr noundef %sig_len, ptr noundef %107, ptr noundef %108)
  store i32 %call243, ptr %ret, align 4
  %cmp244 = icmp ne i32 %call243, 0
  br i1 %cmp244, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.end238
  %109 = load i32, ptr %ret, align 4
  store i32 %109, ptr %retval, align 4
  br label %return

if.end247:                                        ; preds = %if.end238
  %110 = load ptr, ptr %buf.addr, align 8
  %111 = load i64, ptr %size.addr, align 8
  %add.ptr248 = getelementptr inbounds i8, ptr %110, i64 %111
  store ptr %add.ptr248, ptr %c2, align 8
  br label %do.body249

do.body249:                                       ; preds = %if.end247
  %112 = load ptr, ptr %buf.addr, align 8
  %113 = load ptr, ptr %sig_oid, align 8
  %114 = load i64, ptr %sig_oid_len, align 8
  %arraydecay250 = getelementptr inbounds [1024 x i8], ptr %sig, i64 0, i64 0
  %115 = load i64, ptr %sig_len, align 8
  %call251 = call i32 @mbedtls_x509_write_sig(ptr noundef %c2, ptr noundef %112, ptr noundef %113, i64 noundef %114, ptr noundef %arraydecay250, i64 noundef %115)
  store i32 %call251, ptr %ret, align 4
  %cmp252 = icmp slt i32 %call251, 0
  br i1 %cmp252, label %if.then254, label %if.else255

if.then254:                                       ; preds = %do.body249
  %116 = load i32, ptr %ret, align 4
  store i32 %116, ptr %retval, align 4
  br label %return

if.else255:                                       ; preds = %do.body249
  %117 = load i32, ptr %ret, align 4
  %conv256 = sext i32 %117 to i64
  %118 = load i64, ptr %sig_and_oid_len, align 8
  %add257 = add i64 %118, %conv256
  store i64 %add257, ptr %sig_and_oid_len, align 8
  br label %if.end258

if.end258:                                        ; preds = %if.else255
  br label %do.end259

do.end259:                                        ; preds = %if.end258
  %119 = load i64, ptr %len, align 8
  %120 = load ptr, ptr %c2, align 8
  %121 = load ptr, ptr %buf.addr, align 8
  %sub.ptr.lhs.cast260 = ptrtoint ptr %120 to i64
  %sub.ptr.rhs.cast261 = ptrtoint ptr %121 to i64
  %sub.ptr.sub262 = sub i64 %sub.ptr.lhs.cast260, %sub.ptr.rhs.cast261
  %cmp263 = icmp ugt i64 %119, %sub.ptr.sub262
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %do.end259
  store i32 -108, ptr %retval, align 4
  br label %return

if.end266:                                        ; preds = %do.end259
  %122 = load i64, ptr %len, align 8
  %123 = load ptr, ptr %c2, align 8
  %idx.neg267 = sub i64 0, %122
  %add.ptr268 = getelementptr inbounds i8, ptr %123, i64 %idx.neg267
  store ptr %add.ptr268, ptr %c2, align 8
  %124 = load ptr, ptr %c2, align 8
  %125 = load ptr, ptr %c, align 8
  %126 = load i64, ptr %len, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %125, i64 %126, i1 false)
  %127 = load i64, ptr %sig_and_oid_len, align 8
  %128 = load i64, ptr %len, align 8
  %add269 = add i64 %128, %127
  store i64 %add269, ptr %len, align 8
  br label %do.body270

do.body270:                                       ; preds = %if.end266
  %129 = load ptr, ptr %buf.addr, align 8
  %130 = load i64, ptr %len, align 8
  %call271 = call i32 @mbedtls_asn1_write_len(ptr noundef %c2, ptr noundef %129, i64 noundef %130)
  store i32 %call271, ptr %ret, align 4
  %cmp272 = icmp slt i32 %call271, 0
  br i1 %cmp272, label %if.then274, label %if.else275

if.then274:                                       ; preds = %do.body270
  %131 = load i32, ptr %ret, align 4
  store i32 %131, ptr %retval, align 4
  br label %return

if.else275:                                       ; preds = %do.body270
  %132 = load i32, ptr %ret, align 4
  %conv276 = sext i32 %132 to i64
  %133 = load i64, ptr %len, align 8
  %add277 = add i64 %133, %conv276
  store i64 %add277, ptr %len, align 8
  br label %if.end278

if.end278:                                        ; preds = %if.else275
  br label %do.end279

do.end279:                                        ; preds = %if.end278
  br label %do.body280

do.body280:                                       ; preds = %do.end279
  %134 = load ptr, ptr %buf.addr, align 8
  %call281 = call i32 @mbedtls_asn1_write_tag(ptr noundef %c2, ptr noundef %134, i8 noundef zeroext 48)
  store i32 %call281, ptr %ret, align 4
  %cmp282 = icmp slt i32 %call281, 0
  br i1 %cmp282, label %if.then284, label %if.else285

if.then284:                                       ; preds = %do.body280
  %135 = load i32, ptr %ret, align 4
  store i32 %135, ptr %retval, align 4
  br label %return

if.else285:                                       ; preds = %do.body280
  %136 = load i32, ptr %ret, align 4
  %conv286 = sext i32 %136 to i64
  %137 = load i64, ptr %len, align 8
  %add287 = add i64 %137, %conv286
  store i64 %add287, ptr %len, align 8
  br label %if.end288

if.end288:                                        ; preds = %if.else285
  br label %do.end289

do.end289:                                        ; preds = %if.end288
  %138 = load i64, ptr %len, align 8
  %conv290 = trunc i64 %138 to i32
  store i32 %conv290, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end289, %if.then284, %if.then274, %if.then265, %if.then254, %if.then246, %if.then237, %if.then225, %if.then214, %if.then202, %if.then191, %if.then179, %if.then163, %if.then152, %if.then140, %if.then129, %if.then118, %if.then106, %if.then94, %if.then82, %if.then69, %if.then56, %if.then45, %if.then34, %if.then23, %if.then15, %if.then8, %if.else5
  %139 = load i32, ptr %retval, align 4
  ret i32 %139
}

declare i32 @mbedtls_pk_can_do(ptr noundef, i32 noundef) #2

declare i32 @mbedtls_oid_get_oid_by_sig_alg(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @mbedtls_x509_write_extensions(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @mbedtls_pk_write_pubkey_der(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @mbedtls_x509_write_names(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_write_time(ptr noundef %p, ptr noundef %start, ptr noundef %t, i64 noundef %size) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %start, ptr %start.addr, align 8
  store ptr %t, ptr %t.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store i64 0, ptr %len, align 8
  %0 = load ptr, ptr %t.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 50
  br i1 %cmp, label %land.lhs.true, label %if.else35

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %t.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 48
  br i1 %cmp4, label %land.lhs.true6, label %if.else35

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %t.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp slt i32 %conv8, 53
  br i1 %cmp9, label %if.then, label %if.else35

if.then:                                          ; preds = %land.lhs.true6
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load ptr, ptr %start.addr, align 8
  %8 = load ptr, ptr %t.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 2
  %9 = load i64, ptr %size.addr, align 8
  %sub = sub i64 %9, 2
  %call = call i32 @mbedtls_asn1_write_raw_buffer(ptr noundef %6, ptr noundef %7, ptr noundef %add.ptr, i64 noundef %sub)
  store i32 %call, ptr %ret, align 4
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.body
  %10 = load i32, ptr %ret, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %do.body
  %11 = load i32, ptr %ret, align 4
  %conv14 = sext i32 %11 to i64
  %12 = load i64, ptr %len, align 8
  %add = add i64 %12, %conv14
  store i64 %add, ptr %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body15

do.body15:                                        ; preds = %do.end
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load ptr, ptr %start.addr, align 8
  %15 = load i64, ptr %len, align 8
  %call16 = call i32 @mbedtls_asn1_write_len(ptr noundef %13, ptr noundef %14, i64 noundef %15)
  store i32 %call16, ptr %ret, align 4
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %do.body15
  %16 = load i32, ptr %ret, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.else20:                                        ; preds = %do.body15
  %17 = load i32, ptr %ret, align 4
  %conv21 = sext i32 %17 to i64
  %18 = load i64, ptr %len, align 8
  %add22 = add i64 %18, %conv21
  store i64 %add22, ptr %len, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else20
  br label %do.end24

do.end24:                                         ; preds = %if.end23
  br label %do.body25

do.body25:                                        ; preds = %do.end24
  %19 = load ptr, ptr %p.addr, align 8
  %20 = load ptr, ptr %start.addr, align 8
  %call26 = call i32 @mbedtls_asn1_write_tag(ptr noundef %19, ptr noundef %20, i8 noundef zeroext 23)
  store i32 %call26, ptr %ret, align 4
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %do.body25
  %21 = load i32, ptr %ret, align 4
  store i32 %21, ptr %retval, align 4
  br label %return

if.else30:                                        ; preds = %do.body25
  %22 = load i32, ptr %ret, align 4
  %conv31 = sext i32 %22 to i64
  %23 = load i64, ptr %len, align 8
  %add32 = add i64 %23, %conv31
  store i64 %add32, ptr %len, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else30
  br label %do.end34

do.end34:                                         ; preds = %if.end33
  br label %if.end66

if.else35:                                        ; preds = %land.lhs.true6, %land.lhs.true, %entry
  br label %do.body36

do.body36:                                        ; preds = %if.else35
  %24 = load ptr, ptr %p.addr, align 8
  %25 = load ptr, ptr %start.addr, align 8
  %26 = load ptr, ptr %t.addr, align 8
  %27 = load i64, ptr %size.addr, align 8
  %call37 = call i32 @mbedtls_asn1_write_raw_buffer(ptr noundef %24, ptr noundef %25, ptr noundef %26, i64 noundef %27)
  store i32 %call37, ptr %ret, align 4
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %do.body36
  %28 = load i32, ptr %ret, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.else41:                                        ; preds = %do.body36
  %29 = load i32, ptr %ret, align 4
  %conv42 = sext i32 %29 to i64
  %30 = load i64, ptr %len, align 8
  %add43 = add i64 %30, %conv42
  store i64 %add43, ptr %len, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else41
  br label %do.end45

do.end45:                                         ; preds = %if.end44
  br label %do.body46

do.body46:                                        ; preds = %do.end45
  %31 = load ptr, ptr %p.addr, align 8
  %32 = load ptr, ptr %start.addr, align 8
  %33 = load i64, ptr %len, align 8
  %call47 = call i32 @mbedtls_asn1_write_len(ptr noundef %31, ptr noundef %32, i64 noundef %33)
  store i32 %call47, ptr %ret, align 4
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %do.body46
  %34 = load i32, ptr %ret, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.else51:                                        ; preds = %do.body46
  %35 = load i32, ptr %ret, align 4
  %conv52 = sext i32 %35 to i64
  %36 = load i64, ptr %len, align 8
  %add53 = add i64 %36, %conv52
  store i64 %add53, ptr %len, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else51
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %do.body56

do.body56:                                        ; preds = %do.end55
  %37 = load ptr, ptr %p.addr, align 8
  %38 = load ptr, ptr %start.addr, align 8
  %call57 = call i32 @mbedtls_asn1_write_tag(ptr noundef %37, ptr noundef %38, i8 noundef zeroext 24)
  store i32 %call57, ptr %ret, align 4
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %do.body56
  %39 = load i32, ptr %ret, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

if.else61:                                        ; preds = %do.body56
  %40 = load i32, ptr %ret, align 4
  %conv62 = sext i32 %40 to i64
  %41 = load i64, ptr %len, align 8
  %add63 = add i64 %41, %conv62
  store i64 %add63, ptr %len, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else61
  br label %do.end65

do.end65:                                         ; preds = %if.end64
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %do.end34
  %42 = load i64, ptr %len, align 8
  %conv67 = trunc i64 %42 to i32
  store i32 %conv67, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end66, %if.then60, %if.then50, %if.then40, %if.then29, %if.then19, %if.then13
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

declare i32 @mbedtls_asn1_write_algorithm_identifier(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare i32 @mbedtls_asn1_write_mpi(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @mbedtls_md(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare ptr @mbedtls_md_info_from_type(i32 noundef) #2

declare i32 @mbedtls_pk_sign(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @mbedtls_x509_write_sig(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define i32 @mbedtls_x509write_crt_pem(ptr noundef %crt, ptr noundef %buf, i64 noundef %size, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %crt.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %output_buf = alloca [4096 x i8], align 16
  %olen = alloca i64, align 8
  store ptr %crt, ptr %crt.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %f_rng, ptr %f_rng.addr, align 8
  store ptr %p_rng, ptr %p_rng.addr, align 8
  store i64 0, ptr %olen, align 8
  %0 = load ptr, ptr %crt.addr, align 8
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %output_buf, i64 0, i64 0
  %1 = load ptr, ptr %f_rng.addr, align 8
  %2 = load ptr, ptr %p_rng.addr, align 8
  %call = call i32 @mbedtls_x509write_crt_der(ptr noundef %0, ptr noundef %arraydecay, i64 noundef 4096, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [4096 x i8], ptr %output_buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 4096
  %4 = load i32, ptr %ret, align 4
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %5 = load i32, ptr %ret, align 4
  %conv = sext i32 %5 to i64
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i64, ptr %size.addr, align 8
  %call3 = call i32 @mbedtls_pem_write_buffer(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %add.ptr2, i64 noundef %conv, ptr noundef %6, i64 noundef %7, ptr noundef %olen)
  store i32 %call3, ptr %ret, align 4
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @mbedtls_pem_write_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @mbedtls_asn1_write_raw_buffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
