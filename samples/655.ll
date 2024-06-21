; ModuleID = 'samples/655.bc'
source_filename = "sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_sha1_context = type { [2 x i32], [5 x i32], [64 x i8] }
%struct.anon = type { i32, [16 x i32], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"  SHA-1 test #%d: \00", align 1
@sha1_test_buf = internal constant [3 x [57 x i8]] [[57 x i8] c"abc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", [57 x i8] zeroinitializer], align 16
@sha1_test_buflen = internal constant [3 x i64] [i64 3, i64 56, i64 1000], align 16
@sha1_test_sum = internal constant [3 x [20 x i8]] [[20 x i8] c"\A9\99>6G\06\81j\BA>%qxP\C2l\9C\D0\D8\9D", [20 x i8] c"\84\98>D\1C;\D2n\BA\AEJ\A1\F9Q)\E5\E5Fp\F1", [20 x i8] c"4\AA\97<\D4\C4\DA\A4\F6\1E\EB+\DB\AD'1e4\01o"], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_sha1_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 92, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_sha1_free(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  call void @mbedtls_platform_zeroize(ptr noundef %1, i64 noundef 92)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @mbedtls_sha1_clone(ptr noundef %dst, ptr noundef %src) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !5
  store ptr %src, ptr %src.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %src.addr, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 92, i1 false), !tbaa.struct !9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_sha1_starts(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], ptr %total, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4, !tbaa !11
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total1 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %total1, i64 0, i64 1
  store i32 0, ptr %arrayidx2, align 4, !tbaa !11
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %2, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [5 x i32], ptr %state, i64 0, i64 0
  store i32 1732584193, ptr %arrayidx3, align 4, !tbaa !11
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state4 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [5 x i32], ptr %state4, i64 0, i64 1
  store i32 -271733879, ptr %arrayidx5, align 4, !tbaa !11
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state6 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [5 x i32], ptr %state6, i64 0, i64 2
  store i32 -1732584194, ptr %arrayidx7, align 4, !tbaa !11
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state8 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [5 x i32], ptr %state8, i64 0, i64 3
  store i32 271733878, ptr %arrayidx9, align 4, !tbaa !11
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state10 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %state10, i64 0, i64 4
  store i32 -1009589776, ptr %arrayidx11, align 4, !tbaa !11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_internal_sha1_process(ptr noundef %ctx, ptr noundef %data) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %local = alloca %struct.anon, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 88, ptr %local) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1, !tbaa !10
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx8, align 1, !tbaa !10
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  %W = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [16 x i32], ptr %W, i64 0, i64 0
  store i32 %or10, ptr %arrayidx11, align 4, !tbaa !11
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx12, align 1, !tbaa !10
  %conv13 = zext i8 %9 to i32
  %shl14 = shl i32 %conv13, 24
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds i8, ptr %10, i64 5
  %11 = load i8, ptr %arrayidx15, align 1, !tbaa !10
  %conv16 = zext i8 %11 to i32
  %shl17 = shl i32 %conv16, 16
  %or18 = or i32 %shl14, %shl17
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i8, ptr %12, i64 6
  %13 = load i8, ptr %arrayidx19, align 1, !tbaa !10
  %conv20 = zext i8 %13 to i32
  %shl21 = shl i32 %conv20, 8
  %or22 = or i32 %or18, %shl21
  %14 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds i8, ptr %14, i64 7
  %15 = load i8, ptr %arrayidx23, align 1, !tbaa !10
  %conv24 = zext i8 %15 to i32
  %or25 = or i32 %or22, %conv24
  %W26 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [16 x i32], ptr %W26, i64 0, i64 1
  store i32 %or25, ptr %arrayidx27, align 4, !tbaa !11
  %16 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, ptr %16, i64 8
  %17 = load i8, ptr %arrayidx28, align 1, !tbaa !10
  %conv29 = zext i8 %17 to i32
  %shl30 = shl i32 %conv29, 24
  %18 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds i8, ptr %18, i64 9
  %19 = load i8, ptr %arrayidx31, align 1, !tbaa !10
  %conv32 = zext i8 %19 to i32
  %shl33 = shl i32 %conv32, 16
  %or34 = or i32 %shl30, %shl33
  %20 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, ptr %20, i64 10
  %21 = load i8, ptr %arrayidx35, align 1, !tbaa !10
  %conv36 = zext i8 %21 to i32
  %shl37 = shl i32 %conv36, 8
  %or38 = or i32 %or34, %shl37
  %22 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx39 = getelementptr inbounds i8, ptr %22, i64 11
  %23 = load i8, ptr %arrayidx39, align 1, !tbaa !10
  %conv40 = zext i8 %23 to i32
  %or41 = or i32 %or38, %conv40
  %W42 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [16 x i32], ptr %W42, i64 0, i64 2
  store i32 %or41, ptr %arrayidx43, align 4, !tbaa !11
  %24 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds i8, ptr %24, i64 12
  %25 = load i8, ptr %arrayidx44, align 1, !tbaa !10
  %conv45 = zext i8 %25 to i32
  %shl46 = shl i32 %conv45, 24
  %26 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8, ptr %26, i64 13
  %27 = load i8, ptr %arrayidx47, align 1, !tbaa !10
  %conv48 = zext i8 %27 to i32
  %shl49 = shl i32 %conv48, 16
  %or50 = or i32 %shl46, %shl49
  %28 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds i8, ptr %28, i64 14
  %29 = load i8, ptr %arrayidx51, align 1, !tbaa !10
  %conv52 = zext i8 %29 to i32
  %shl53 = shl i32 %conv52, 8
  %or54 = or i32 %or50, %shl53
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx55 = getelementptr inbounds i8, ptr %30, i64 15
  %31 = load i8, ptr %arrayidx55, align 1, !tbaa !10
  %conv56 = zext i8 %31 to i32
  %or57 = or i32 %or54, %conv56
  %W58 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [16 x i32], ptr %W58, i64 0, i64 3
  store i32 %or57, ptr %arrayidx59, align 4, !tbaa !11
  %32 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds i8, ptr %32, i64 16
  %33 = load i8, ptr %arrayidx60, align 1, !tbaa !10
  %conv61 = zext i8 %33 to i32
  %shl62 = shl i32 %conv61, 24
  %34 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx63 = getelementptr inbounds i8, ptr %34, i64 17
  %35 = load i8, ptr %arrayidx63, align 1, !tbaa !10
  %conv64 = zext i8 %35 to i32
  %shl65 = shl i32 %conv64, 16
  %or66 = or i32 %shl62, %shl65
  %36 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx67 = getelementptr inbounds i8, ptr %36, i64 18
  %37 = load i8, ptr %arrayidx67, align 1, !tbaa !10
  %conv68 = zext i8 %37 to i32
  %shl69 = shl i32 %conv68, 8
  %or70 = or i32 %or66, %shl69
  %38 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds i8, ptr %38, i64 19
  %39 = load i8, ptr %arrayidx71, align 1, !tbaa !10
  %conv72 = zext i8 %39 to i32
  %or73 = or i32 %or70, %conv72
  %W74 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [16 x i32], ptr %W74, i64 0, i64 4
  store i32 %or73, ptr %arrayidx75, align 4, !tbaa !11
  %40 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i8, ptr %40, i64 20
  %41 = load i8, ptr %arrayidx76, align 1, !tbaa !10
  %conv77 = zext i8 %41 to i32
  %shl78 = shl i32 %conv77, 24
  %42 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx79 = getelementptr inbounds i8, ptr %42, i64 21
  %43 = load i8, ptr %arrayidx79, align 1, !tbaa !10
  %conv80 = zext i8 %43 to i32
  %shl81 = shl i32 %conv80, 16
  %or82 = or i32 %shl78, %shl81
  %44 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx83 = getelementptr inbounds i8, ptr %44, i64 22
  %45 = load i8, ptr %arrayidx83, align 1, !tbaa !10
  %conv84 = zext i8 %45 to i32
  %shl85 = shl i32 %conv84, 8
  %or86 = or i32 %or82, %shl85
  %46 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds i8, ptr %46, i64 23
  %47 = load i8, ptr %arrayidx87, align 1, !tbaa !10
  %conv88 = zext i8 %47 to i32
  %or89 = or i32 %or86, %conv88
  %W90 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [16 x i32], ptr %W90, i64 0, i64 5
  store i32 %or89, ptr %arrayidx91, align 4, !tbaa !11
  %48 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx92 = getelementptr inbounds i8, ptr %48, i64 24
  %49 = load i8, ptr %arrayidx92, align 1, !tbaa !10
  %conv93 = zext i8 %49 to i32
  %shl94 = shl i32 %conv93, 24
  %50 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx95 = getelementptr inbounds i8, ptr %50, i64 25
  %51 = load i8, ptr %arrayidx95, align 1, !tbaa !10
  %conv96 = zext i8 %51 to i32
  %shl97 = shl i32 %conv96, 16
  %or98 = or i32 %shl94, %shl97
  %52 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx99 = getelementptr inbounds i8, ptr %52, i64 26
  %53 = load i8, ptr %arrayidx99, align 1, !tbaa !10
  %conv100 = zext i8 %53 to i32
  %shl101 = shl i32 %conv100, 8
  %or102 = or i32 %or98, %shl101
  %54 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx103 = getelementptr inbounds i8, ptr %54, i64 27
  %55 = load i8, ptr %arrayidx103, align 1, !tbaa !10
  %conv104 = zext i8 %55 to i32
  %or105 = or i32 %or102, %conv104
  %W106 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [16 x i32], ptr %W106, i64 0, i64 6
  store i32 %or105, ptr %arrayidx107, align 4, !tbaa !11
  %56 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx108 = getelementptr inbounds i8, ptr %56, i64 28
  %57 = load i8, ptr %arrayidx108, align 1, !tbaa !10
  %conv109 = zext i8 %57 to i32
  %shl110 = shl i32 %conv109, 24
  %58 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx111 = getelementptr inbounds i8, ptr %58, i64 29
  %59 = load i8, ptr %arrayidx111, align 1, !tbaa !10
  %conv112 = zext i8 %59 to i32
  %shl113 = shl i32 %conv112, 16
  %or114 = or i32 %shl110, %shl113
  %60 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx115 = getelementptr inbounds i8, ptr %60, i64 30
  %61 = load i8, ptr %arrayidx115, align 1, !tbaa !10
  %conv116 = zext i8 %61 to i32
  %shl117 = shl i32 %conv116, 8
  %or118 = or i32 %or114, %shl117
  %62 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx119 = getelementptr inbounds i8, ptr %62, i64 31
  %63 = load i8, ptr %arrayidx119, align 1, !tbaa !10
  %conv120 = zext i8 %63 to i32
  %or121 = or i32 %or118, %conv120
  %W122 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [16 x i32], ptr %W122, i64 0, i64 7
  store i32 %or121, ptr %arrayidx123, align 4, !tbaa !11
  %64 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx124 = getelementptr inbounds i8, ptr %64, i64 32
  %65 = load i8, ptr %arrayidx124, align 1, !tbaa !10
  %conv125 = zext i8 %65 to i32
  %shl126 = shl i32 %conv125, 24
  %66 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx127 = getelementptr inbounds i8, ptr %66, i64 33
  %67 = load i8, ptr %arrayidx127, align 1, !tbaa !10
  %conv128 = zext i8 %67 to i32
  %shl129 = shl i32 %conv128, 16
  %or130 = or i32 %shl126, %shl129
  %68 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx131 = getelementptr inbounds i8, ptr %68, i64 34
  %69 = load i8, ptr %arrayidx131, align 1, !tbaa !10
  %conv132 = zext i8 %69 to i32
  %shl133 = shl i32 %conv132, 8
  %or134 = or i32 %or130, %shl133
  %70 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx135 = getelementptr inbounds i8, ptr %70, i64 35
  %71 = load i8, ptr %arrayidx135, align 1, !tbaa !10
  %conv136 = zext i8 %71 to i32
  %or137 = or i32 %or134, %conv136
  %W138 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [16 x i32], ptr %W138, i64 0, i64 8
  store i32 %or137, ptr %arrayidx139, align 4, !tbaa !11
  %72 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx140 = getelementptr inbounds i8, ptr %72, i64 36
  %73 = load i8, ptr %arrayidx140, align 1, !tbaa !10
  %conv141 = zext i8 %73 to i32
  %shl142 = shl i32 %conv141, 24
  %74 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx143 = getelementptr inbounds i8, ptr %74, i64 37
  %75 = load i8, ptr %arrayidx143, align 1, !tbaa !10
  %conv144 = zext i8 %75 to i32
  %shl145 = shl i32 %conv144, 16
  %or146 = or i32 %shl142, %shl145
  %76 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx147 = getelementptr inbounds i8, ptr %76, i64 38
  %77 = load i8, ptr %arrayidx147, align 1, !tbaa !10
  %conv148 = zext i8 %77 to i32
  %shl149 = shl i32 %conv148, 8
  %or150 = or i32 %or146, %shl149
  %78 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx151 = getelementptr inbounds i8, ptr %78, i64 39
  %79 = load i8, ptr %arrayidx151, align 1, !tbaa !10
  %conv152 = zext i8 %79 to i32
  %or153 = or i32 %or150, %conv152
  %W154 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [16 x i32], ptr %W154, i64 0, i64 9
  store i32 %or153, ptr %arrayidx155, align 4, !tbaa !11
  %80 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx156 = getelementptr inbounds i8, ptr %80, i64 40
  %81 = load i8, ptr %arrayidx156, align 1, !tbaa !10
  %conv157 = zext i8 %81 to i32
  %shl158 = shl i32 %conv157, 24
  %82 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx159 = getelementptr inbounds i8, ptr %82, i64 41
  %83 = load i8, ptr %arrayidx159, align 1, !tbaa !10
  %conv160 = zext i8 %83 to i32
  %shl161 = shl i32 %conv160, 16
  %or162 = or i32 %shl158, %shl161
  %84 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx163 = getelementptr inbounds i8, ptr %84, i64 42
  %85 = load i8, ptr %arrayidx163, align 1, !tbaa !10
  %conv164 = zext i8 %85 to i32
  %shl165 = shl i32 %conv164, 8
  %or166 = or i32 %or162, %shl165
  %86 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx167 = getelementptr inbounds i8, ptr %86, i64 43
  %87 = load i8, ptr %arrayidx167, align 1, !tbaa !10
  %conv168 = zext i8 %87 to i32
  %or169 = or i32 %or166, %conv168
  %W170 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [16 x i32], ptr %W170, i64 0, i64 10
  store i32 %or169, ptr %arrayidx171, align 4, !tbaa !11
  %88 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx172 = getelementptr inbounds i8, ptr %88, i64 44
  %89 = load i8, ptr %arrayidx172, align 1, !tbaa !10
  %conv173 = zext i8 %89 to i32
  %shl174 = shl i32 %conv173, 24
  %90 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx175 = getelementptr inbounds i8, ptr %90, i64 45
  %91 = load i8, ptr %arrayidx175, align 1, !tbaa !10
  %conv176 = zext i8 %91 to i32
  %shl177 = shl i32 %conv176, 16
  %or178 = or i32 %shl174, %shl177
  %92 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx179 = getelementptr inbounds i8, ptr %92, i64 46
  %93 = load i8, ptr %arrayidx179, align 1, !tbaa !10
  %conv180 = zext i8 %93 to i32
  %shl181 = shl i32 %conv180, 8
  %or182 = or i32 %or178, %shl181
  %94 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx183 = getelementptr inbounds i8, ptr %94, i64 47
  %95 = load i8, ptr %arrayidx183, align 1, !tbaa !10
  %conv184 = zext i8 %95 to i32
  %or185 = or i32 %or182, %conv184
  %W186 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [16 x i32], ptr %W186, i64 0, i64 11
  store i32 %or185, ptr %arrayidx187, align 4, !tbaa !11
  %96 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx188 = getelementptr inbounds i8, ptr %96, i64 48
  %97 = load i8, ptr %arrayidx188, align 1, !tbaa !10
  %conv189 = zext i8 %97 to i32
  %shl190 = shl i32 %conv189, 24
  %98 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx191 = getelementptr inbounds i8, ptr %98, i64 49
  %99 = load i8, ptr %arrayidx191, align 1, !tbaa !10
  %conv192 = zext i8 %99 to i32
  %shl193 = shl i32 %conv192, 16
  %or194 = or i32 %shl190, %shl193
  %100 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx195 = getelementptr inbounds i8, ptr %100, i64 50
  %101 = load i8, ptr %arrayidx195, align 1, !tbaa !10
  %conv196 = zext i8 %101 to i32
  %shl197 = shl i32 %conv196, 8
  %or198 = or i32 %or194, %shl197
  %102 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx199 = getelementptr inbounds i8, ptr %102, i64 51
  %103 = load i8, ptr %arrayidx199, align 1, !tbaa !10
  %conv200 = zext i8 %103 to i32
  %or201 = or i32 %or198, %conv200
  %W202 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [16 x i32], ptr %W202, i64 0, i64 12
  store i32 %or201, ptr %arrayidx203, align 4, !tbaa !11
  %104 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx204 = getelementptr inbounds i8, ptr %104, i64 52
  %105 = load i8, ptr %arrayidx204, align 1, !tbaa !10
  %conv205 = zext i8 %105 to i32
  %shl206 = shl i32 %conv205, 24
  %106 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx207 = getelementptr inbounds i8, ptr %106, i64 53
  %107 = load i8, ptr %arrayidx207, align 1, !tbaa !10
  %conv208 = zext i8 %107 to i32
  %shl209 = shl i32 %conv208, 16
  %or210 = or i32 %shl206, %shl209
  %108 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx211 = getelementptr inbounds i8, ptr %108, i64 54
  %109 = load i8, ptr %arrayidx211, align 1, !tbaa !10
  %conv212 = zext i8 %109 to i32
  %shl213 = shl i32 %conv212, 8
  %or214 = or i32 %or210, %shl213
  %110 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx215 = getelementptr inbounds i8, ptr %110, i64 55
  %111 = load i8, ptr %arrayidx215, align 1, !tbaa !10
  %conv216 = zext i8 %111 to i32
  %or217 = or i32 %or214, %conv216
  %W218 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [16 x i32], ptr %W218, i64 0, i64 13
  store i32 %or217, ptr %arrayidx219, align 4, !tbaa !11
  %112 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx220 = getelementptr inbounds i8, ptr %112, i64 56
  %113 = load i8, ptr %arrayidx220, align 1, !tbaa !10
  %conv221 = zext i8 %113 to i32
  %shl222 = shl i32 %conv221, 24
  %114 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx223 = getelementptr inbounds i8, ptr %114, i64 57
  %115 = load i8, ptr %arrayidx223, align 1, !tbaa !10
  %conv224 = zext i8 %115 to i32
  %shl225 = shl i32 %conv224, 16
  %or226 = or i32 %shl222, %shl225
  %116 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx227 = getelementptr inbounds i8, ptr %116, i64 58
  %117 = load i8, ptr %arrayidx227, align 1, !tbaa !10
  %conv228 = zext i8 %117 to i32
  %shl229 = shl i32 %conv228, 8
  %or230 = or i32 %or226, %shl229
  %118 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx231 = getelementptr inbounds i8, ptr %118, i64 59
  %119 = load i8, ptr %arrayidx231, align 1, !tbaa !10
  %conv232 = zext i8 %119 to i32
  %or233 = or i32 %or230, %conv232
  %W234 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [16 x i32], ptr %W234, i64 0, i64 14
  store i32 %or233, ptr %arrayidx235, align 4, !tbaa !11
  %120 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx236 = getelementptr inbounds i8, ptr %120, i64 60
  %121 = load i8, ptr %arrayidx236, align 1, !tbaa !10
  %conv237 = zext i8 %121 to i32
  %shl238 = shl i32 %conv237, 24
  %122 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx239 = getelementptr inbounds i8, ptr %122, i64 61
  %123 = load i8, ptr %arrayidx239, align 1, !tbaa !10
  %conv240 = zext i8 %123 to i32
  %shl241 = shl i32 %conv240, 16
  %or242 = or i32 %shl238, %shl241
  %124 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx243 = getelementptr inbounds i8, ptr %124, i64 62
  %125 = load i8, ptr %arrayidx243, align 1, !tbaa !10
  %conv244 = zext i8 %125 to i32
  %shl245 = shl i32 %conv244, 8
  %or246 = or i32 %or242, %shl245
  %126 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %arrayidx247 = getelementptr inbounds i8, ptr %126, i64 63
  %127 = load i8, ptr %arrayidx247, align 1, !tbaa !10
  %conv248 = zext i8 %127 to i32
  %or249 = or i32 %or246, %conv248
  %W250 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [16 x i32], ptr %W250, i64 0, i64 15
  store i32 %or249, ptr %arrayidx251, align 4, !tbaa !11
  %128 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %128, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [5 x i32], ptr %state, i64 0, i64 0
  %129 = load i32, ptr %arrayidx252, align 4, !tbaa !11
  %A = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %129, ptr %A, align 4, !tbaa !13
  %130 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state253 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %130, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [5 x i32], ptr %state253, i64 0, i64 1
  %131 = load i32, ptr %arrayidx254, align 4, !tbaa !11
  %B = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %131, ptr %B, align 4, !tbaa !15
  %132 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state255 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %132, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [5 x i32], ptr %state255, i64 0, i64 2
  %133 = load i32, ptr %arrayidx256, align 4, !tbaa !11
  %C = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %133, ptr %C, align 4, !tbaa !16
  %134 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state257 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %134, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [5 x i32], ptr %state257, i64 0, i64 3
  %135 = load i32, ptr %arrayidx258, align 4, !tbaa !11
  %D = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %135, ptr %D, align 4, !tbaa !17
  %136 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state259 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %136, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [5 x i32], ptr %state259, i64 0, i64 4
  %137 = load i32, ptr %arrayidx260, align 4, !tbaa !11
  %E = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %137, ptr %E, align 4, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %entry
  %A261 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %138 = load i32, ptr %A261, align 4, !tbaa !13
  %shl262 = shl i32 %138, 5
  %A263 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %139 = load i32, ptr %A263, align 4, !tbaa !13
  %and = and i32 %139, -1
  %shr = lshr i32 %and, 27
  %or264 = or i32 %shl262, %shr
  %D265 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %140 = load i32, ptr %D265, align 4, !tbaa !17
  %B266 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %141 = load i32, ptr %B266, align 4, !tbaa !15
  %C267 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %142 = load i32, ptr %C267, align 4, !tbaa !16
  %D268 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %143 = load i32, ptr %D268, align 4, !tbaa !17
  %xor = xor i32 %142, %143
  %and269 = and i32 %141, %xor
  %xor270 = xor i32 %140, %and269
  %add = add i32 %or264, %xor270
  %add271 = add i32 %add, 1518500249
  %W272 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx273 = getelementptr inbounds [16 x i32], ptr %W272, i64 0, i64 0
  %144 = load i32, ptr %arrayidx273, align 4, !tbaa !11
  %add274 = add i32 %add271, %144
  %E275 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %145 = load i32, ptr %E275, align 4, !tbaa !18
  %add276 = add i32 %145, %add274
  store i32 %add276, ptr %E275, align 4, !tbaa !18
  %B277 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %146 = load i32, ptr %B277, align 4, !tbaa !15
  %shl278 = shl i32 %146, 30
  %B279 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %147 = load i32, ptr %B279, align 4, !tbaa !15
  %and280 = and i32 %147, -1
  %shr281 = lshr i32 %and280, 2
  %or282 = or i32 %shl278, %shr281
  %B283 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or282, ptr %B283, align 4, !tbaa !15
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body284

do.body284:                                       ; preds = %do.end
  %E285 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %148 = load i32, ptr %E285, align 4, !tbaa !18
  %shl286 = shl i32 %148, 5
  %E287 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %149 = load i32, ptr %E287, align 4, !tbaa !18
  %and288 = and i32 %149, -1
  %shr289 = lshr i32 %and288, 27
  %or290 = or i32 %shl286, %shr289
  %C291 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %150 = load i32, ptr %C291, align 4, !tbaa !16
  %A292 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %151 = load i32, ptr %A292, align 4, !tbaa !13
  %B293 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %152 = load i32, ptr %B293, align 4, !tbaa !15
  %C294 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %153 = load i32, ptr %C294, align 4, !tbaa !16
  %xor295 = xor i32 %152, %153
  %and296 = and i32 %151, %xor295
  %xor297 = xor i32 %150, %and296
  %add298 = add i32 %or290, %xor297
  %add299 = add i32 %add298, 1518500249
  %W300 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [16 x i32], ptr %W300, i64 0, i64 1
  %154 = load i32, ptr %arrayidx301, align 4, !tbaa !11
  %add302 = add i32 %add299, %154
  %D303 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %155 = load i32, ptr %D303, align 4, !tbaa !17
  %add304 = add i32 %155, %add302
  store i32 %add304, ptr %D303, align 4, !tbaa !17
  %A305 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %156 = load i32, ptr %A305, align 4, !tbaa !13
  %shl306 = shl i32 %156, 30
  %A307 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %157 = load i32, ptr %A307, align 4, !tbaa !13
  %and308 = and i32 %157, -1
  %shr309 = lshr i32 %and308, 2
  %or310 = or i32 %shl306, %shr309
  %A311 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or310, ptr %A311, align 4, !tbaa !13
  br label %do.cond312

do.cond312:                                       ; preds = %do.body284
  br label %do.end313

do.end313:                                        ; preds = %do.cond312
  br label %do.body314

do.body314:                                       ; preds = %do.end313
  %D315 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %158 = load i32, ptr %D315, align 4, !tbaa !17
  %shl316 = shl i32 %158, 5
  %D317 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %159 = load i32, ptr %D317, align 4, !tbaa !17
  %and318 = and i32 %159, -1
  %shr319 = lshr i32 %and318, 27
  %or320 = or i32 %shl316, %shr319
  %B321 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %160 = load i32, ptr %B321, align 4, !tbaa !15
  %E322 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %161 = load i32, ptr %E322, align 4, !tbaa !18
  %A323 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %162 = load i32, ptr %A323, align 4, !tbaa !13
  %B324 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %163 = load i32, ptr %B324, align 4, !tbaa !15
  %xor325 = xor i32 %162, %163
  %and326 = and i32 %161, %xor325
  %xor327 = xor i32 %160, %and326
  %add328 = add i32 %or320, %xor327
  %add329 = add i32 %add328, 1518500249
  %W330 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [16 x i32], ptr %W330, i64 0, i64 2
  %164 = load i32, ptr %arrayidx331, align 4, !tbaa !11
  %add332 = add i32 %add329, %164
  %C333 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %165 = load i32, ptr %C333, align 4, !tbaa !16
  %add334 = add i32 %165, %add332
  store i32 %add334, ptr %C333, align 4, !tbaa !16
  %E335 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %166 = load i32, ptr %E335, align 4, !tbaa !18
  %shl336 = shl i32 %166, 30
  %E337 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %167 = load i32, ptr %E337, align 4, !tbaa !18
  %and338 = and i32 %167, -1
  %shr339 = lshr i32 %and338, 2
  %or340 = or i32 %shl336, %shr339
  %E341 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or340, ptr %E341, align 4, !tbaa !18
  br label %do.cond342

do.cond342:                                       ; preds = %do.body314
  br label %do.end343

do.end343:                                        ; preds = %do.cond342
  br label %do.body344

do.body344:                                       ; preds = %do.end343
  %C345 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %168 = load i32, ptr %C345, align 4, !tbaa !16
  %shl346 = shl i32 %168, 5
  %C347 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %169 = load i32, ptr %C347, align 4, !tbaa !16
  %and348 = and i32 %169, -1
  %shr349 = lshr i32 %and348, 27
  %or350 = or i32 %shl346, %shr349
  %A351 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %170 = load i32, ptr %A351, align 4, !tbaa !13
  %D352 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %171 = load i32, ptr %D352, align 4, !tbaa !17
  %E353 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %172 = load i32, ptr %E353, align 4, !tbaa !18
  %A354 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %173 = load i32, ptr %A354, align 4, !tbaa !13
  %xor355 = xor i32 %172, %173
  %and356 = and i32 %171, %xor355
  %xor357 = xor i32 %170, %and356
  %add358 = add i32 %or350, %xor357
  %add359 = add i32 %add358, 1518500249
  %W360 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [16 x i32], ptr %W360, i64 0, i64 3
  %174 = load i32, ptr %arrayidx361, align 4, !tbaa !11
  %add362 = add i32 %add359, %174
  %B363 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %175 = load i32, ptr %B363, align 4, !tbaa !15
  %add364 = add i32 %175, %add362
  store i32 %add364, ptr %B363, align 4, !tbaa !15
  %D365 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %176 = load i32, ptr %D365, align 4, !tbaa !17
  %shl366 = shl i32 %176, 30
  %D367 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %177 = load i32, ptr %D367, align 4, !tbaa !17
  %and368 = and i32 %177, -1
  %shr369 = lshr i32 %and368, 2
  %or370 = or i32 %shl366, %shr369
  %D371 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or370, ptr %D371, align 4, !tbaa !17
  br label %do.cond372

do.cond372:                                       ; preds = %do.body344
  br label %do.end373

do.end373:                                        ; preds = %do.cond372
  br label %do.body374

do.body374:                                       ; preds = %do.end373
  %B375 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %178 = load i32, ptr %B375, align 4, !tbaa !15
  %shl376 = shl i32 %178, 5
  %B377 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %179 = load i32, ptr %B377, align 4, !tbaa !15
  %and378 = and i32 %179, -1
  %shr379 = lshr i32 %and378, 27
  %or380 = or i32 %shl376, %shr379
  %E381 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %180 = load i32, ptr %E381, align 4, !tbaa !18
  %C382 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %181 = load i32, ptr %C382, align 4, !tbaa !16
  %D383 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %182 = load i32, ptr %D383, align 4, !tbaa !17
  %E384 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %183 = load i32, ptr %E384, align 4, !tbaa !18
  %xor385 = xor i32 %182, %183
  %and386 = and i32 %181, %xor385
  %xor387 = xor i32 %180, %and386
  %add388 = add i32 %or380, %xor387
  %add389 = add i32 %add388, 1518500249
  %W390 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [16 x i32], ptr %W390, i64 0, i64 4
  %184 = load i32, ptr %arrayidx391, align 4, !tbaa !11
  %add392 = add i32 %add389, %184
  %A393 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %185 = load i32, ptr %A393, align 4, !tbaa !13
  %add394 = add i32 %185, %add392
  store i32 %add394, ptr %A393, align 4, !tbaa !13
  %C395 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %186 = load i32, ptr %C395, align 4, !tbaa !16
  %shl396 = shl i32 %186, 30
  %C397 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %187 = load i32, ptr %C397, align 4, !tbaa !16
  %and398 = and i32 %187, -1
  %shr399 = lshr i32 %and398, 2
  %or400 = or i32 %shl396, %shr399
  %C401 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or400, ptr %C401, align 4, !tbaa !16
  br label %do.cond402

do.cond402:                                       ; preds = %do.body374
  br label %do.end403

do.end403:                                        ; preds = %do.cond402
  br label %do.body404

do.body404:                                       ; preds = %do.end403
  %A405 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %188 = load i32, ptr %A405, align 4, !tbaa !13
  %shl406 = shl i32 %188, 5
  %A407 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %189 = load i32, ptr %A407, align 4, !tbaa !13
  %and408 = and i32 %189, -1
  %shr409 = lshr i32 %and408, 27
  %or410 = or i32 %shl406, %shr409
  %D411 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %190 = load i32, ptr %D411, align 4, !tbaa !17
  %B412 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %191 = load i32, ptr %B412, align 4, !tbaa !15
  %C413 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %192 = load i32, ptr %C413, align 4, !tbaa !16
  %D414 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %193 = load i32, ptr %D414, align 4, !tbaa !17
  %xor415 = xor i32 %192, %193
  %and416 = and i32 %191, %xor415
  %xor417 = xor i32 %190, %and416
  %add418 = add i32 %or410, %xor417
  %add419 = add i32 %add418, 1518500249
  %W420 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [16 x i32], ptr %W420, i64 0, i64 5
  %194 = load i32, ptr %arrayidx421, align 4, !tbaa !11
  %add422 = add i32 %add419, %194
  %E423 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %195 = load i32, ptr %E423, align 4, !tbaa !18
  %add424 = add i32 %195, %add422
  store i32 %add424, ptr %E423, align 4, !tbaa !18
  %B425 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %196 = load i32, ptr %B425, align 4, !tbaa !15
  %shl426 = shl i32 %196, 30
  %B427 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %197 = load i32, ptr %B427, align 4, !tbaa !15
  %and428 = and i32 %197, -1
  %shr429 = lshr i32 %and428, 2
  %or430 = or i32 %shl426, %shr429
  %B431 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or430, ptr %B431, align 4, !tbaa !15
  br label %do.cond432

do.cond432:                                       ; preds = %do.body404
  br label %do.end433

do.end433:                                        ; preds = %do.cond432
  br label %do.body434

do.body434:                                       ; preds = %do.end433
  %E435 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %198 = load i32, ptr %E435, align 4, !tbaa !18
  %shl436 = shl i32 %198, 5
  %E437 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %199 = load i32, ptr %E437, align 4, !tbaa !18
  %and438 = and i32 %199, -1
  %shr439 = lshr i32 %and438, 27
  %or440 = or i32 %shl436, %shr439
  %C441 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %200 = load i32, ptr %C441, align 4, !tbaa !16
  %A442 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %201 = load i32, ptr %A442, align 4, !tbaa !13
  %B443 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %202 = load i32, ptr %B443, align 4, !tbaa !15
  %C444 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %203 = load i32, ptr %C444, align 4, !tbaa !16
  %xor445 = xor i32 %202, %203
  %and446 = and i32 %201, %xor445
  %xor447 = xor i32 %200, %and446
  %add448 = add i32 %or440, %xor447
  %add449 = add i32 %add448, 1518500249
  %W450 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx451 = getelementptr inbounds [16 x i32], ptr %W450, i64 0, i64 6
  %204 = load i32, ptr %arrayidx451, align 4, !tbaa !11
  %add452 = add i32 %add449, %204
  %D453 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %205 = load i32, ptr %D453, align 4, !tbaa !17
  %add454 = add i32 %205, %add452
  store i32 %add454, ptr %D453, align 4, !tbaa !17
  %A455 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %206 = load i32, ptr %A455, align 4, !tbaa !13
  %shl456 = shl i32 %206, 30
  %A457 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %207 = load i32, ptr %A457, align 4, !tbaa !13
  %and458 = and i32 %207, -1
  %shr459 = lshr i32 %and458, 2
  %or460 = or i32 %shl456, %shr459
  %A461 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or460, ptr %A461, align 4, !tbaa !13
  br label %do.cond462

do.cond462:                                       ; preds = %do.body434
  br label %do.end463

do.end463:                                        ; preds = %do.cond462
  br label %do.body464

do.body464:                                       ; preds = %do.end463
  %D465 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %208 = load i32, ptr %D465, align 4, !tbaa !17
  %shl466 = shl i32 %208, 5
  %D467 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %209 = load i32, ptr %D467, align 4, !tbaa !17
  %and468 = and i32 %209, -1
  %shr469 = lshr i32 %and468, 27
  %or470 = or i32 %shl466, %shr469
  %B471 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %210 = load i32, ptr %B471, align 4, !tbaa !15
  %E472 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %211 = load i32, ptr %E472, align 4, !tbaa !18
  %A473 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %212 = load i32, ptr %A473, align 4, !tbaa !13
  %B474 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %213 = load i32, ptr %B474, align 4, !tbaa !15
  %xor475 = xor i32 %212, %213
  %and476 = and i32 %211, %xor475
  %xor477 = xor i32 %210, %and476
  %add478 = add i32 %or470, %xor477
  %add479 = add i32 %add478, 1518500249
  %W480 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [16 x i32], ptr %W480, i64 0, i64 7
  %214 = load i32, ptr %arrayidx481, align 4, !tbaa !11
  %add482 = add i32 %add479, %214
  %C483 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %215 = load i32, ptr %C483, align 4, !tbaa !16
  %add484 = add i32 %215, %add482
  store i32 %add484, ptr %C483, align 4, !tbaa !16
  %E485 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %216 = load i32, ptr %E485, align 4, !tbaa !18
  %shl486 = shl i32 %216, 30
  %E487 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %217 = load i32, ptr %E487, align 4, !tbaa !18
  %and488 = and i32 %217, -1
  %shr489 = lshr i32 %and488, 2
  %or490 = or i32 %shl486, %shr489
  %E491 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or490, ptr %E491, align 4, !tbaa !18
  br label %do.cond492

do.cond492:                                       ; preds = %do.body464
  br label %do.end493

do.end493:                                        ; preds = %do.cond492
  br label %do.body494

do.body494:                                       ; preds = %do.end493
  %C495 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %218 = load i32, ptr %C495, align 4, !tbaa !16
  %shl496 = shl i32 %218, 5
  %C497 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %219 = load i32, ptr %C497, align 4, !tbaa !16
  %and498 = and i32 %219, -1
  %shr499 = lshr i32 %and498, 27
  %or500 = or i32 %shl496, %shr499
  %A501 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %220 = load i32, ptr %A501, align 4, !tbaa !13
  %D502 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %221 = load i32, ptr %D502, align 4, !tbaa !17
  %E503 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %222 = load i32, ptr %E503, align 4, !tbaa !18
  %A504 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %223 = load i32, ptr %A504, align 4, !tbaa !13
  %xor505 = xor i32 %222, %223
  %and506 = and i32 %221, %xor505
  %xor507 = xor i32 %220, %and506
  %add508 = add i32 %or500, %xor507
  %add509 = add i32 %add508, 1518500249
  %W510 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx511 = getelementptr inbounds [16 x i32], ptr %W510, i64 0, i64 8
  %224 = load i32, ptr %arrayidx511, align 4, !tbaa !11
  %add512 = add i32 %add509, %224
  %B513 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %225 = load i32, ptr %B513, align 4, !tbaa !15
  %add514 = add i32 %225, %add512
  store i32 %add514, ptr %B513, align 4, !tbaa !15
  %D515 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %226 = load i32, ptr %D515, align 4, !tbaa !17
  %shl516 = shl i32 %226, 30
  %D517 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %227 = load i32, ptr %D517, align 4, !tbaa !17
  %and518 = and i32 %227, -1
  %shr519 = lshr i32 %and518, 2
  %or520 = or i32 %shl516, %shr519
  %D521 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or520, ptr %D521, align 4, !tbaa !17
  br label %do.cond522

do.cond522:                                       ; preds = %do.body494
  br label %do.end523

do.end523:                                        ; preds = %do.cond522
  br label %do.body524

do.body524:                                       ; preds = %do.end523
  %B525 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %228 = load i32, ptr %B525, align 4, !tbaa !15
  %shl526 = shl i32 %228, 5
  %B527 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %229 = load i32, ptr %B527, align 4, !tbaa !15
  %and528 = and i32 %229, -1
  %shr529 = lshr i32 %and528, 27
  %or530 = or i32 %shl526, %shr529
  %E531 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %230 = load i32, ptr %E531, align 4, !tbaa !18
  %C532 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %231 = load i32, ptr %C532, align 4, !tbaa !16
  %D533 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %232 = load i32, ptr %D533, align 4, !tbaa !17
  %E534 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %233 = load i32, ptr %E534, align 4, !tbaa !18
  %xor535 = xor i32 %232, %233
  %and536 = and i32 %231, %xor535
  %xor537 = xor i32 %230, %and536
  %add538 = add i32 %or530, %xor537
  %add539 = add i32 %add538, 1518500249
  %W540 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx541 = getelementptr inbounds [16 x i32], ptr %W540, i64 0, i64 9
  %234 = load i32, ptr %arrayidx541, align 4, !tbaa !11
  %add542 = add i32 %add539, %234
  %A543 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %235 = load i32, ptr %A543, align 4, !tbaa !13
  %add544 = add i32 %235, %add542
  store i32 %add544, ptr %A543, align 4, !tbaa !13
  %C545 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %236 = load i32, ptr %C545, align 4, !tbaa !16
  %shl546 = shl i32 %236, 30
  %C547 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %237 = load i32, ptr %C547, align 4, !tbaa !16
  %and548 = and i32 %237, -1
  %shr549 = lshr i32 %and548, 2
  %or550 = or i32 %shl546, %shr549
  %C551 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or550, ptr %C551, align 4, !tbaa !16
  br label %do.cond552

do.cond552:                                       ; preds = %do.body524
  br label %do.end553

do.end553:                                        ; preds = %do.cond552
  br label %do.body554

do.body554:                                       ; preds = %do.end553
  %A555 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %238 = load i32, ptr %A555, align 4, !tbaa !13
  %shl556 = shl i32 %238, 5
  %A557 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %239 = load i32, ptr %A557, align 4, !tbaa !13
  %and558 = and i32 %239, -1
  %shr559 = lshr i32 %and558, 27
  %or560 = or i32 %shl556, %shr559
  %D561 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %240 = load i32, ptr %D561, align 4, !tbaa !17
  %B562 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %241 = load i32, ptr %B562, align 4, !tbaa !15
  %C563 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %242 = load i32, ptr %C563, align 4, !tbaa !16
  %D564 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %243 = load i32, ptr %D564, align 4, !tbaa !17
  %xor565 = xor i32 %242, %243
  %and566 = and i32 %241, %xor565
  %xor567 = xor i32 %240, %and566
  %add568 = add i32 %or560, %xor567
  %add569 = add i32 %add568, 1518500249
  %W570 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [16 x i32], ptr %W570, i64 0, i64 10
  %244 = load i32, ptr %arrayidx571, align 4, !tbaa !11
  %add572 = add i32 %add569, %244
  %E573 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %245 = load i32, ptr %E573, align 4, !tbaa !18
  %add574 = add i32 %245, %add572
  store i32 %add574, ptr %E573, align 4, !tbaa !18
  %B575 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %246 = load i32, ptr %B575, align 4, !tbaa !15
  %shl576 = shl i32 %246, 30
  %B577 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %247 = load i32, ptr %B577, align 4, !tbaa !15
  %and578 = and i32 %247, -1
  %shr579 = lshr i32 %and578, 2
  %or580 = or i32 %shl576, %shr579
  %B581 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or580, ptr %B581, align 4, !tbaa !15
  br label %do.cond582

do.cond582:                                       ; preds = %do.body554
  br label %do.end583

do.end583:                                        ; preds = %do.cond582
  br label %do.body584

do.body584:                                       ; preds = %do.end583
  %E585 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %248 = load i32, ptr %E585, align 4, !tbaa !18
  %shl586 = shl i32 %248, 5
  %E587 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %249 = load i32, ptr %E587, align 4, !tbaa !18
  %and588 = and i32 %249, -1
  %shr589 = lshr i32 %and588, 27
  %or590 = or i32 %shl586, %shr589
  %C591 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %250 = load i32, ptr %C591, align 4, !tbaa !16
  %A592 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %251 = load i32, ptr %A592, align 4, !tbaa !13
  %B593 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %252 = load i32, ptr %B593, align 4, !tbaa !15
  %C594 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %253 = load i32, ptr %C594, align 4, !tbaa !16
  %xor595 = xor i32 %252, %253
  %and596 = and i32 %251, %xor595
  %xor597 = xor i32 %250, %and596
  %add598 = add i32 %or590, %xor597
  %add599 = add i32 %add598, 1518500249
  %W600 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx601 = getelementptr inbounds [16 x i32], ptr %W600, i64 0, i64 11
  %254 = load i32, ptr %arrayidx601, align 4, !tbaa !11
  %add602 = add i32 %add599, %254
  %D603 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %255 = load i32, ptr %D603, align 4, !tbaa !17
  %add604 = add i32 %255, %add602
  store i32 %add604, ptr %D603, align 4, !tbaa !17
  %A605 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %256 = load i32, ptr %A605, align 4, !tbaa !13
  %shl606 = shl i32 %256, 30
  %A607 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %257 = load i32, ptr %A607, align 4, !tbaa !13
  %and608 = and i32 %257, -1
  %shr609 = lshr i32 %and608, 2
  %or610 = or i32 %shl606, %shr609
  %A611 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or610, ptr %A611, align 4, !tbaa !13
  br label %do.cond612

do.cond612:                                       ; preds = %do.body584
  br label %do.end613

do.end613:                                        ; preds = %do.cond612
  br label %do.body614

do.body614:                                       ; preds = %do.end613
  %D615 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %258 = load i32, ptr %D615, align 4, !tbaa !17
  %shl616 = shl i32 %258, 5
  %D617 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %259 = load i32, ptr %D617, align 4, !tbaa !17
  %and618 = and i32 %259, -1
  %shr619 = lshr i32 %and618, 27
  %or620 = or i32 %shl616, %shr619
  %B621 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %260 = load i32, ptr %B621, align 4, !tbaa !15
  %E622 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %261 = load i32, ptr %E622, align 4, !tbaa !18
  %A623 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %262 = load i32, ptr %A623, align 4, !tbaa !13
  %B624 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %263 = load i32, ptr %B624, align 4, !tbaa !15
  %xor625 = xor i32 %262, %263
  %and626 = and i32 %261, %xor625
  %xor627 = xor i32 %260, %and626
  %add628 = add i32 %or620, %xor627
  %add629 = add i32 %add628, 1518500249
  %W630 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx631 = getelementptr inbounds [16 x i32], ptr %W630, i64 0, i64 12
  %264 = load i32, ptr %arrayidx631, align 4, !tbaa !11
  %add632 = add i32 %add629, %264
  %C633 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %265 = load i32, ptr %C633, align 4, !tbaa !16
  %add634 = add i32 %265, %add632
  store i32 %add634, ptr %C633, align 4, !tbaa !16
  %E635 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %266 = load i32, ptr %E635, align 4, !tbaa !18
  %shl636 = shl i32 %266, 30
  %E637 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %267 = load i32, ptr %E637, align 4, !tbaa !18
  %and638 = and i32 %267, -1
  %shr639 = lshr i32 %and638, 2
  %or640 = or i32 %shl636, %shr639
  %E641 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or640, ptr %E641, align 4, !tbaa !18
  br label %do.cond642

do.cond642:                                       ; preds = %do.body614
  br label %do.end643

do.end643:                                        ; preds = %do.cond642
  br label %do.body644

do.body644:                                       ; preds = %do.end643
  %C645 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %268 = load i32, ptr %C645, align 4, !tbaa !16
  %shl646 = shl i32 %268, 5
  %C647 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %269 = load i32, ptr %C647, align 4, !tbaa !16
  %and648 = and i32 %269, -1
  %shr649 = lshr i32 %and648, 27
  %or650 = or i32 %shl646, %shr649
  %A651 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %270 = load i32, ptr %A651, align 4, !tbaa !13
  %D652 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %271 = load i32, ptr %D652, align 4, !tbaa !17
  %E653 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %272 = load i32, ptr %E653, align 4, !tbaa !18
  %A654 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %273 = load i32, ptr %A654, align 4, !tbaa !13
  %xor655 = xor i32 %272, %273
  %and656 = and i32 %271, %xor655
  %xor657 = xor i32 %270, %and656
  %add658 = add i32 %or650, %xor657
  %add659 = add i32 %add658, 1518500249
  %W660 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx661 = getelementptr inbounds [16 x i32], ptr %W660, i64 0, i64 13
  %274 = load i32, ptr %arrayidx661, align 4, !tbaa !11
  %add662 = add i32 %add659, %274
  %B663 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %275 = load i32, ptr %B663, align 4, !tbaa !15
  %add664 = add i32 %275, %add662
  store i32 %add664, ptr %B663, align 4, !tbaa !15
  %D665 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %276 = load i32, ptr %D665, align 4, !tbaa !17
  %shl666 = shl i32 %276, 30
  %D667 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %277 = load i32, ptr %D667, align 4, !tbaa !17
  %and668 = and i32 %277, -1
  %shr669 = lshr i32 %and668, 2
  %or670 = or i32 %shl666, %shr669
  %D671 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or670, ptr %D671, align 4, !tbaa !17
  br label %do.cond672

do.cond672:                                       ; preds = %do.body644
  br label %do.end673

do.end673:                                        ; preds = %do.cond672
  br label %do.body674

do.body674:                                       ; preds = %do.end673
  %B675 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %278 = load i32, ptr %B675, align 4, !tbaa !15
  %shl676 = shl i32 %278, 5
  %B677 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %279 = load i32, ptr %B677, align 4, !tbaa !15
  %and678 = and i32 %279, -1
  %shr679 = lshr i32 %and678, 27
  %or680 = or i32 %shl676, %shr679
  %E681 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %280 = load i32, ptr %E681, align 4, !tbaa !18
  %C682 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %281 = load i32, ptr %C682, align 4, !tbaa !16
  %D683 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %282 = load i32, ptr %D683, align 4, !tbaa !17
  %E684 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %283 = load i32, ptr %E684, align 4, !tbaa !18
  %xor685 = xor i32 %282, %283
  %and686 = and i32 %281, %xor685
  %xor687 = xor i32 %280, %and686
  %add688 = add i32 %or680, %xor687
  %add689 = add i32 %add688, 1518500249
  %W690 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx691 = getelementptr inbounds [16 x i32], ptr %W690, i64 0, i64 14
  %284 = load i32, ptr %arrayidx691, align 4, !tbaa !11
  %add692 = add i32 %add689, %284
  %A693 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %285 = load i32, ptr %A693, align 4, !tbaa !13
  %add694 = add i32 %285, %add692
  store i32 %add694, ptr %A693, align 4, !tbaa !13
  %C695 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %286 = load i32, ptr %C695, align 4, !tbaa !16
  %shl696 = shl i32 %286, 30
  %C697 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %287 = load i32, ptr %C697, align 4, !tbaa !16
  %and698 = and i32 %287, -1
  %shr699 = lshr i32 %and698, 2
  %or700 = or i32 %shl696, %shr699
  %C701 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or700, ptr %C701, align 4, !tbaa !16
  br label %do.cond702

do.cond702:                                       ; preds = %do.body674
  br label %do.end703

do.end703:                                        ; preds = %do.cond702
  br label %do.body704

do.body704:                                       ; preds = %do.end703
  %A705 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %288 = load i32, ptr %A705, align 4, !tbaa !13
  %shl706 = shl i32 %288, 5
  %A707 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %289 = load i32, ptr %A707, align 4, !tbaa !13
  %and708 = and i32 %289, -1
  %shr709 = lshr i32 %and708, 27
  %or710 = or i32 %shl706, %shr709
  %D711 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %290 = load i32, ptr %D711, align 4, !tbaa !17
  %B712 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %291 = load i32, ptr %B712, align 4, !tbaa !15
  %C713 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %292 = load i32, ptr %C713, align 4, !tbaa !16
  %D714 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %293 = load i32, ptr %D714, align 4, !tbaa !17
  %xor715 = xor i32 %292, %293
  %and716 = and i32 %291, %xor715
  %xor717 = xor i32 %290, %and716
  %add718 = add i32 %or710, %xor717
  %add719 = add i32 %add718, 1518500249
  %W720 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx721 = getelementptr inbounds [16 x i32], ptr %W720, i64 0, i64 15
  %294 = load i32, ptr %arrayidx721, align 4, !tbaa !11
  %add722 = add i32 %add719, %294
  %E723 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %295 = load i32, ptr %E723, align 4, !tbaa !18
  %add724 = add i32 %295, %add722
  store i32 %add724, ptr %E723, align 4, !tbaa !18
  %B725 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %296 = load i32, ptr %B725, align 4, !tbaa !15
  %shl726 = shl i32 %296, 30
  %B727 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %297 = load i32, ptr %B727, align 4, !tbaa !15
  %and728 = and i32 %297, -1
  %shr729 = lshr i32 %and728, 2
  %or730 = or i32 %shl726, %shr729
  %B731 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or730, ptr %B731, align 4, !tbaa !15
  br label %do.cond732

do.cond732:                                       ; preds = %do.body704
  br label %do.end733

do.end733:                                        ; preds = %do.cond732
  br label %do.body734

do.body734:                                       ; preds = %do.end733
  %E735 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %298 = load i32, ptr %E735, align 4, !tbaa !18
  %shl736 = shl i32 %298, 5
  %E737 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %299 = load i32, ptr %E737, align 4, !tbaa !18
  %and738 = and i32 %299, -1
  %shr739 = lshr i32 %and738, 27
  %or740 = or i32 %shl736, %shr739
  %C741 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %300 = load i32, ptr %C741, align 4, !tbaa !16
  %A742 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %301 = load i32, ptr %A742, align 4, !tbaa !13
  %B743 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %302 = load i32, ptr %B743, align 4, !tbaa !15
  %C744 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %303 = load i32, ptr %C744, align 4, !tbaa !16
  %xor745 = xor i32 %302, %303
  %and746 = and i32 %301, %xor745
  %xor747 = xor i32 %300, %and746
  %add748 = add i32 %or740, %xor747
  %add749 = add i32 %add748, 1518500249
  %W750 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx751 = getelementptr inbounds [16 x i32], ptr %W750, i64 0, i64 13
  %304 = load i32, ptr %arrayidx751, align 4, !tbaa !11
  %W752 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx753 = getelementptr inbounds [16 x i32], ptr %W752, i64 0, i64 8
  %305 = load i32, ptr %arrayidx753, align 4, !tbaa !11
  %xor754 = xor i32 %304, %305
  %W755 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx756 = getelementptr inbounds [16 x i32], ptr %W755, i64 0, i64 2
  %306 = load i32, ptr %arrayidx756, align 4, !tbaa !11
  %xor757 = xor i32 %xor754, %306
  %W758 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx759 = getelementptr inbounds [16 x i32], ptr %W758, i64 0, i64 0
  %307 = load i32, ptr %arrayidx759, align 4, !tbaa !11
  %xor760 = xor i32 %xor757, %307
  %temp = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor760, ptr %temp, align 4, !tbaa !19
  %temp761 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %308 = load i32, ptr %temp761, align 4, !tbaa !19
  %shl762 = shl i32 %308, 1
  %temp763 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %309 = load i32, ptr %temp763, align 4, !tbaa !19
  %and764 = and i32 %309, -1
  %shr765 = lshr i32 %and764, 31
  %or766 = or i32 %shl762, %shr765
  %W767 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx768 = getelementptr inbounds [16 x i32], ptr %W767, i64 0, i64 0
  store i32 %or766, ptr %arrayidx768, align 4, !tbaa !11
  %add769 = add i32 %add749, %or766
  %D770 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %310 = load i32, ptr %D770, align 4, !tbaa !17
  %add771 = add i32 %310, %add769
  store i32 %add771, ptr %D770, align 4, !tbaa !17
  %A772 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %311 = load i32, ptr %A772, align 4, !tbaa !13
  %shl773 = shl i32 %311, 30
  %A774 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %312 = load i32, ptr %A774, align 4, !tbaa !13
  %and775 = and i32 %312, -1
  %shr776 = lshr i32 %and775, 2
  %or777 = or i32 %shl773, %shr776
  %A778 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or777, ptr %A778, align 4, !tbaa !13
  br label %do.cond779

do.cond779:                                       ; preds = %do.body734
  br label %do.end780

do.end780:                                        ; preds = %do.cond779
  br label %do.body781

do.body781:                                       ; preds = %do.end780
  %D782 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %313 = load i32, ptr %D782, align 4, !tbaa !17
  %shl783 = shl i32 %313, 5
  %D784 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %314 = load i32, ptr %D784, align 4, !tbaa !17
  %and785 = and i32 %314, -1
  %shr786 = lshr i32 %and785, 27
  %or787 = or i32 %shl783, %shr786
  %B788 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %315 = load i32, ptr %B788, align 4, !tbaa !15
  %E789 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %316 = load i32, ptr %E789, align 4, !tbaa !18
  %A790 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %317 = load i32, ptr %A790, align 4, !tbaa !13
  %B791 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %318 = load i32, ptr %B791, align 4, !tbaa !15
  %xor792 = xor i32 %317, %318
  %and793 = and i32 %316, %xor792
  %xor794 = xor i32 %315, %and793
  %add795 = add i32 %or787, %xor794
  %add796 = add i32 %add795, 1518500249
  %W797 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx798 = getelementptr inbounds [16 x i32], ptr %W797, i64 0, i64 14
  %319 = load i32, ptr %arrayidx798, align 4, !tbaa !11
  %W799 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx800 = getelementptr inbounds [16 x i32], ptr %W799, i64 0, i64 9
  %320 = load i32, ptr %arrayidx800, align 4, !tbaa !11
  %xor801 = xor i32 %319, %320
  %W802 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx803 = getelementptr inbounds [16 x i32], ptr %W802, i64 0, i64 3
  %321 = load i32, ptr %arrayidx803, align 4, !tbaa !11
  %xor804 = xor i32 %xor801, %321
  %W805 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx806 = getelementptr inbounds [16 x i32], ptr %W805, i64 0, i64 1
  %322 = load i32, ptr %arrayidx806, align 4, !tbaa !11
  %xor807 = xor i32 %xor804, %322
  %temp808 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor807, ptr %temp808, align 4, !tbaa !19
  %temp809 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %323 = load i32, ptr %temp809, align 4, !tbaa !19
  %shl810 = shl i32 %323, 1
  %temp811 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %324 = load i32, ptr %temp811, align 4, !tbaa !19
  %and812 = and i32 %324, -1
  %shr813 = lshr i32 %and812, 31
  %or814 = or i32 %shl810, %shr813
  %W815 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx816 = getelementptr inbounds [16 x i32], ptr %W815, i64 0, i64 1
  store i32 %or814, ptr %arrayidx816, align 4, !tbaa !11
  %add817 = add i32 %add796, %or814
  %C818 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %325 = load i32, ptr %C818, align 4, !tbaa !16
  %add819 = add i32 %325, %add817
  store i32 %add819, ptr %C818, align 4, !tbaa !16
  %E820 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %326 = load i32, ptr %E820, align 4, !tbaa !18
  %shl821 = shl i32 %326, 30
  %E822 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %327 = load i32, ptr %E822, align 4, !tbaa !18
  %and823 = and i32 %327, -1
  %shr824 = lshr i32 %and823, 2
  %or825 = or i32 %shl821, %shr824
  %E826 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or825, ptr %E826, align 4, !tbaa !18
  br label %do.cond827

do.cond827:                                       ; preds = %do.body781
  br label %do.end828

do.end828:                                        ; preds = %do.cond827
  br label %do.body829

do.body829:                                       ; preds = %do.end828
  %C830 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %328 = load i32, ptr %C830, align 4, !tbaa !16
  %shl831 = shl i32 %328, 5
  %C832 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %329 = load i32, ptr %C832, align 4, !tbaa !16
  %and833 = and i32 %329, -1
  %shr834 = lshr i32 %and833, 27
  %or835 = or i32 %shl831, %shr834
  %A836 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %330 = load i32, ptr %A836, align 4, !tbaa !13
  %D837 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %331 = load i32, ptr %D837, align 4, !tbaa !17
  %E838 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %332 = load i32, ptr %E838, align 4, !tbaa !18
  %A839 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %333 = load i32, ptr %A839, align 4, !tbaa !13
  %xor840 = xor i32 %332, %333
  %and841 = and i32 %331, %xor840
  %xor842 = xor i32 %330, %and841
  %add843 = add i32 %or835, %xor842
  %add844 = add i32 %add843, 1518500249
  %W845 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx846 = getelementptr inbounds [16 x i32], ptr %W845, i64 0, i64 15
  %334 = load i32, ptr %arrayidx846, align 4, !tbaa !11
  %W847 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx848 = getelementptr inbounds [16 x i32], ptr %W847, i64 0, i64 10
  %335 = load i32, ptr %arrayidx848, align 4, !tbaa !11
  %xor849 = xor i32 %334, %335
  %W850 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx851 = getelementptr inbounds [16 x i32], ptr %W850, i64 0, i64 4
  %336 = load i32, ptr %arrayidx851, align 4, !tbaa !11
  %xor852 = xor i32 %xor849, %336
  %W853 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx854 = getelementptr inbounds [16 x i32], ptr %W853, i64 0, i64 2
  %337 = load i32, ptr %arrayidx854, align 4, !tbaa !11
  %xor855 = xor i32 %xor852, %337
  %temp856 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor855, ptr %temp856, align 4, !tbaa !19
  %temp857 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %338 = load i32, ptr %temp857, align 4, !tbaa !19
  %shl858 = shl i32 %338, 1
  %temp859 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %339 = load i32, ptr %temp859, align 4, !tbaa !19
  %and860 = and i32 %339, -1
  %shr861 = lshr i32 %and860, 31
  %or862 = or i32 %shl858, %shr861
  %W863 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx864 = getelementptr inbounds [16 x i32], ptr %W863, i64 0, i64 2
  store i32 %or862, ptr %arrayidx864, align 4, !tbaa !11
  %add865 = add i32 %add844, %or862
  %B866 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %340 = load i32, ptr %B866, align 4, !tbaa !15
  %add867 = add i32 %340, %add865
  store i32 %add867, ptr %B866, align 4, !tbaa !15
  %D868 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %341 = load i32, ptr %D868, align 4, !tbaa !17
  %shl869 = shl i32 %341, 30
  %D870 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %342 = load i32, ptr %D870, align 4, !tbaa !17
  %and871 = and i32 %342, -1
  %shr872 = lshr i32 %and871, 2
  %or873 = or i32 %shl869, %shr872
  %D874 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or873, ptr %D874, align 4, !tbaa !17
  br label %do.cond875

do.cond875:                                       ; preds = %do.body829
  br label %do.end876

do.end876:                                        ; preds = %do.cond875
  br label %do.body877

do.body877:                                       ; preds = %do.end876
  %B878 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %343 = load i32, ptr %B878, align 4, !tbaa !15
  %shl879 = shl i32 %343, 5
  %B880 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %344 = load i32, ptr %B880, align 4, !tbaa !15
  %and881 = and i32 %344, -1
  %shr882 = lshr i32 %and881, 27
  %or883 = or i32 %shl879, %shr882
  %E884 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %345 = load i32, ptr %E884, align 4, !tbaa !18
  %C885 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %346 = load i32, ptr %C885, align 4, !tbaa !16
  %D886 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %347 = load i32, ptr %D886, align 4, !tbaa !17
  %E887 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %348 = load i32, ptr %E887, align 4, !tbaa !18
  %xor888 = xor i32 %347, %348
  %and889 = and i32 %346, %xor888
  %xor890 = xor i32 %345, %and889
  %add891 = add i32 %or883, %xor890
  %add892 = add i32 %add891, 1518500249
  %W893 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx894 = getelementptr inbounds [16 x i32], ptr %W893, i64 0, i64 0
  %349 = load i32, ptr %arrayidx894, align 4, !tbaa !11
  %W895 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx896 = getelementptr inbounds [16 x i32], ptr %W895, i64 0, i64 11
  %350 = load i32, ptr %arrayidx896, align 4, !tbaa !11
  %xor897 = xor i32 %349, %350
  %W898 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx899 = getelementptr inbounds [16 x i32], ptr %W898, i64 0, i64 5
  %351 = load i32, ptr %arrayidx899, align 4, !tbaa !11
  %xor900 = xor i32 %xor897, %351
  %W901 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx902 = getelementptr inbounds [16 x i32], ptr %W901, i64 0, i64 3
  %352 = load i32, ptr %arrayidx902, align 4, !tbaa !11
  %xor903 = xor i32 %xor900, %352
  %temp904 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor903, ptr %temp904, align 4, !tbaa !19
  %temp905 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %353 = load i32, ptr %temp905, align 4, !tbaa !19
  %shl906 = shl i32 %353, 1
  %temp907 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %354 = load i32, ptr %temp907, align 4, !tbaa !19
  %and908 = and i32 %354, -1
  %shr909 = lshr i32 %and908, 31
  %or910 = or i32 %shl906, %shr909
  %W911 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx912 = getelementptr inbounds [16 x i32], ptr %W911, i64 0, i64 3
  store i32 %or910, ptr %arrayidx912, align 4, !tbaa !11
  %add913 = add i32 %add892, %or910
  %A914 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %355 = load i32, ptr %A914, align 4, !tbaa !13
  %add915 = add i32 %355, %add913
  store i32 %add915, ptr %A914, align 4, !tbaa !13
  %C916 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %356 = load i32, ptr %C916, align 4, !tbaa !16
  %shl917 = shl i32 %356, 30
  %C918 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %357 = load i32, ptr %C918, align 4, !tbaa !16
  %and919 = and i32 %357, -1
  %shr920 = lshr i32 %and919, 2
  %or921 = or i32 %shl917, %shr920
  %C922 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or921, ptr %C922, align 4, !tbaa !16
  br label %do.cond923

do.cond923:                                       ; preds = %do.body877
  br label %do.end924

do.end924:                                        ; preds = %do.cond923
  br label %do.body925

do.body925:                                       ; preds = %do.end924
  %A926 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %358 = load i32, ptr %A926, align 4, !tbaa !13
  %shl927 = shl i32 %358, 5
  %A928 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %359 = load i32, ptr %A928, align 4, !tbaa !13
  %and929 = and i32 %359, -1
  %shr930 = lshr i32 %and929, 27
  %or931 = or i32 %shl927, %shr930
  %B932 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %360 = load i32, ptr %B932, align 4, !tbaa !15
  %C933 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %361 = load i32, ptr %C933, align 4, !tbaa !16
  %xor934 = xor i32 %360, %361
  %D935 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %362 = load i32, ptr %D935, align 4, !tbaa !17
  %xor936 = xor i32 %xor934, %362
  %add937 = add i32 %or931, %xor936
  %add938 = add i32 %add937, 1859775393
  %W939 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx940 = getelementptr inbounds [16 x i32], ptr %W939, i64 0, i64 1
  %363 = load i32, ptr %arrayidx940, align 4, !tbaa !11
  %W941 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx942 = getelementptr inbounds [16 x i32], ptr %W941, i64 0, i64 12
  %364 = load i32, ptr %arrayidx942, align 4, !tbaa !11
  %xor943 = xor i32 %363, %364
  %W944 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx945 = getelementptr inbounds [16 x i32], ptr %W944, i64 0, i64 6
  %365 = load i32, ptr %arrayidx945, align 4, !tbaa !11
  %xor946 = xor i32 %xor943, %365
  %W947 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx948 = getelementptr inbounds [16 x i32], ptr %W947, i64 0, i64 4
  %366 = load i32, ptr %arrayidx948, align 4, !tbaa !11
  %xor949 = xor i32 %xor946, %366
  %temp950 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor949, ptr %temp950, align 4, !tbaa !19
  %temp951 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %367 = load i32, ptr %temp951, align 4, !tbaa !19
  %shl952 = shl i32 %367, 1
  %temp953 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %368 = load i32, ptr %temp953, align 4, !tbaa !19
  %and954 = and i32 %368, -1
  %shr955 = lshr i32 %and954, 31
  %or956 = or i32 %shl952, %shr955
  %W957 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx958 = getelementptr inbounds [16 x i32], ptr %W957, i64 0, i64 4
  store i32 %or956, ptr %arrayidx958, align 4, !tbaa !11
  %add959 = add i32 %add938, %or956
  %E960 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %369 = load i32, ptr %E960, align 4, !tbaa !18
  %add961 = add i32 %369, %add959
  store i32 %add961, ptr %E960, align 4, !tbaa !18
  %B962 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %370 = load i32, ptr %B962, align 4, !tbaa !15
  %shl963 = shl i32 %370, 30
  %B964 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %371 = load i32, ptr %B964, align 4, !tbaa !15
  %and965 = and i32 %371, -1
  %shr966 = lshr i32 %and965, 2
  %or967 = or i32 %shl963, %shr966
  %B968 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or967, ptr %B968, align 4, !tbaa !15
  br label %do.cond969

do.cond969:                                       ; preds = %do.body925
  br label %do.end970

do.end970:                                        ; preds = %do.cond969
  br label %do.body971

do.body971:                                       ; preds = %do.end970
  %E972 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %372 = load i32, ptr %E972, align 4, !tbaa !18
  %shl973 = shl i32 %372, 5
  %E974 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %373 = load i32, ptr %E974, align 4, !tbaa !18
  %and975 = and i32 %373, -1
  %shr976 = lshr i32 %and975, 27
  %or977 = or i32 %shl973, %shr976
  %A978 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %374 = load i32, ptr %A978, align 4, !tbaa !13
  %B979 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %375 = load i32, ptr %B979, align 4, !tbaa !15
  %xor980 = xor i32 %374, %375
  %C981 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %376 = load i32, ptr %C981, align 4, !tbaa !16
  %xor982 = xor i32 %xor980, %376
  %add983 = add i32 %or977, %xor982
  %add984 = add i32 %add983, 1859775393
  %W985 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx986 = getelementptr inbounds [16 x i32], ptr %W985, i64 0, i64 2
  %377 = load i32, ptr %arrayidx986, align 4, !tbaa !11
  %W987 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx988 = getelementptr inbounds [16 x i32], ptr %W987, i64 0, i64 13
  %378 = load i32, ptr %arrayidx988, align 4, !tbaa !11
  %xor989 = xor i32 %377, %378
  %W990 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx991 = getelementptr inbounds [16 x i32], ptr %W990, i64 0, i64 7
  %379 = load i32, ptr %arrayidx991, align 4, !tbaa !11
  %xor992 = xor i32 %xor989, %379
  %W993 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx994 = getelementptr inbounds [16 x i32], ptr %W993, i64 0, i64 5
  %380 = load i32, ptr %arrayidx994, align 4, !tbaa !11
  %xor995 = xor i32 %xor992, %380
  %temp996 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor995, ptr %temp996, align 4, !tbaa !19
  %temp997 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %381 = load i32, ptr %temp997, align 4, !tbaa !19
  %shl998 = shl i32 %381, 1
  %temp999 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %382 = load i32, ptr %temp999, align 4, !tbaa !19
  %and1000 = and i32 %382, -1
  %shr1001 = lshr i32 %and1000, 31
  %or1002 = or i32 %shl998, %shr1001
  %W1003 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1004 = getelementptr inbounds [16 x i32], ptr %W1003, i64 0, i64 5
  store i32 %or1002, ptr %arrayidx1004, align 4, !tbaa !11
  %add1005 = add i32 %add984, %or1002
  %D1006 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %383 = load i32, ptr %D1006, align 4, !tbaa !17
  %add1007 = add i32 %383, %add1005
  store i32 %add1007, ptr %D1006, align 4, !tbaa !17
  %A1008 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %384 = load i32, ptr %A1008, align 4, !tbaa !13
  %shl1009 = shl i32 %384, 30
  %A1010 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %385 = load i32, ptr %A1010, align 4, !tbaa !13
  %and1011 = and i32 %385, -1
  %shr1012 = lshr i32 %and1011, 2
  %or1013 = or i32 %shl1009, %shr1012
  %A1014 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or1013, ptr %A1014, align 4, !tbaa !13
  br label %do.cond1015

do.cond1015:                                      ; preds = %do.body971
  br label %do.end1016

do.end1016:                                       ; preds = %do.cond1015
  br label %do.body1017

do.body1017:                                      ; preds = %do.end1016
  %D1018 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %386 = load i32, ptr %D1018, align 4, !tbaa !17
  %shl1019 = shl i32 %386, 5
  %D1020 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %387 = load i32, ptr %D1020, align 4, !tbaa !17
  %and1021 = and i32 %387, -1
  %shr1022 = lshr i32 %and1021, 27
  %or1023 = or i32 %shl1019, %shr1022
  %E1024 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %388 = load i32, ptr %E1024, align 4, !tbaa !18
  %A1025 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %389 = load i32, ptr %A1025, align 4, !tbaa !13
  %xor1026 = xor i32 %388, %389
  %B1027 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %390 = load i32, ptr %B1027, align 4, !tbaa !15
  %xor1028 = xor i32 %xor1026, %390
  %add1029 = add i32 %or1023, %xor1028
  %add1030 = add i32 %add1029, 1859775393
  %W1031 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1032 = getelementptr inbounds [16 x i32], ptr %W1031, i64 0, i64 3
  %391 = load i32, ptr %arrayidx1032, align 4, !tbaa !11
  %W1033 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1034 = getelementptr inbounds [16 x i32], ptr %W1033, i64 0, i64 14
  %392 = load i32, ptr %arrayidx1034, align 4, !tbaa !11
  %xor1035 = xor i32 %391, %392
  %W1036 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1037 = getelementptr inbounds [16 x i32], ptr %W1036, i64 0, i64 8
  %393 = load i32, ptr %arrayidx1037, align 4, !tbaa !11
  %xor1038 = xor i32 %xor1035, %393
  %W1039 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1040 = getelementptr inbounds [16 x i32], ptr %W1039, i64 0, i64 6
  %394 = load i32, ptr %arrayidx1040, align 4, !tbaa !11
  %xor1041 = xor i32 %xor1038, %394
  %temp1042 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1041, ptr %temp1042, align 4, !tbaa !19
  %temp1043 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %395 = load i32, ptr %temp1043, align 4, !tbaa !19
  %shl1044 = shl i32 %395, 1
  %temp1045 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %396 = load i32, ptr %temp1045, align 4, !tbaa !19
  %and1046 = and i32 %396, -1
  %shr1047 = lshr i32 %and1046, 31
  %or1048 = or i32 %shl1044, %shr1047
  %W1049 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1050 = getelementptr inbounds [16 x i32], ptr %W1049, i64 0, i64 6
  store i32 %or1048, ptr %arrayidx1050, align 4, !tbaa !11
  %add1051 = add i32 %add1030, %or1048
  %C1052 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %397 = load i32, ptr %C1052, align 4, !tbaa !16
  %add1053 = add i32 %397, %add1051
  store i32 %add1053, ptr %C1052, align 4, !tbaa !16
  %E1054 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %398 = load i32, ptr %E1054, align 4, !tbaa !18
  %shl1055 = shl i32 %398, 30
  %E1056 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %399 = load i32, ptr %E1056, align 4, !tbaa !18
  %and1057 = and i32 %399, -1
  %shr1058 = lshr i32 %and1057, 2
  %or1059 = or i32 %shl1055, %shr1058
  %E1060 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or1059, ptr %E1060, align 4, !tbaa !18
  br label %do.cond1061

do.cond1061:                                      ; preds = %do.body1017
  br label %do.end1062

do.end1062:                                       ; preds = %do.cond1061
  br label %do.body1063

do.body1063:                                      ; preds = %do.end1062
  %C1064 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %400 = load i32, ptr %C1064, align 4, !tbaa !16
  %shl1065 = shl i32 %400, 5
  %C1066 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %401 = load i32, ptr %C1066, align 4, !tbaa !16
  %and1067 = and i32 %401, -1
  %shr1068 = lshr i32 %and1067, 27
  %or1069 = or i32 %shl1065, %shr1068
  %D1070 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %402 = load i32, ptr %D1070, align 4, !tbaa !17
  %E1071 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %403 = load i32, ptr %E1071, align 4, !tbaa !18
  %xor1072 = xor i32 %402, %403
  %A1073 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %404 = load i32, ptr %A1073, align 4, !tbaa !13
  %xor1074 = xor i32 %xor1072, %404
  %add1075 = add i32 %or1069, %xor1074
  %add1076 = add i32 %add1075, 1859775393
  %W1077 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1078 = getelementptr inbounds [16 x i32], ptr %W1077, i64 0, i64 4
  %405 = load i32, ptr %arrayidx1078, align 4, !tbaa !11
  %W1079 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1080 = getelementptr inbounds [16 x i32], ptr %W1079, i64 0, i64 15
  %406 = load i32, ptr %arrayidx1080, align 4, !tbaa !11
  %xor1081 = xor i32 %405, %406
  %W1082 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1083 = getelementptr inbounds [16 x i32], ptr %W1082, i64 0, i64 9
  %407 = load i32, ptr %arrayidx1083, align 4, !tbaa !11
  %xor1084 = xor i32 %xor1081, %407
  %W1085 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1086 = getelementptr inbounds [16 x i32], ptr %W1085, i64 0, i64 7
  %408 = load i32, ptr %arrayidx1086, align 4, !tbaa !11
  %xor1087 = xor i32 %xor1084, %408
  %temp1088 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1087, ptr %temp1088, align 4, !tbaa !19
  %temp1089 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %409 = load i32, ptr %temp1089, align 4, !tbaa !19
  %shl1090 = shl i32 %409, 1
  %temp1091 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %410 = load i32, ptr %temp1091, align 4, !tbaa !19
  %and1092 = and i32 %410, -1
  %shr1093 = lshr i32 %and1092, 31
  %or1094 = or i32 %shl1090, %shr1093
  %W1095 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1096 = getelementptr inbounds [16 x i32], ptr %W1095, i64 0, i64 7
  store i32 %or1094, ptr %arrayidx1096, align 4, !tbaa !11
  %add1097 = add i32 %add1076, %or1094
  %B1098 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %411 = load i32, ptr %B1098, align 4, !tbaa !15
  %add1099 = add i32 %411, %add1097
  store i32 %add1099, ptr %B1098, align 4, !tbaa !15
  %D1100 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %412 = load i32, ptr %D1100, align 4, !tbaa !17
  %shl1101 = shl i32 %412, 30
  %D1102 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %413 = load i32, ptr %D1102, align 4, !tbaa !17
  %and1103 = and i32 %413, -1
  %shr1104 = lshr i32 %and1103, 2
  %or1105 = or i32 %shl1101, %shr1104
  %D1106 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or1105, ptr %D1106, align 4, !tbaa !17
  br label %do.cond1107

do.cond1107:                                      ; preds = %do.body1063
  br label %do.end1108

do.end1108:                                       ; preds = %do.cond1107
  br label %do.body1109

do.body1109:                                      ; preds = %do.end1108
  %B1110 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %414 = load i32, ptr %B1110, align 4, !tbaa !15
  %shl1111 = shl i32 %414, 5
  %B1112 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %415 = load i32, ptr %B1112, align 4, !tbaa !15
  %and1113 = and i32 %415, -1
  %shr1114 = lshr i32 %and1113, 27
  %or1115 = or i32 %shl1111, %shr1114
  %C1116 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %416 = load i32, ptr %C1116, align 4, !tbaa !16
  %D1117 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %417 = load i32, ptr %D1117, align 4, !tbaa !17
  %xor1118 = xor i32 %416, %417
  %E1119 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %418 = load i32, ptr %E1119, align 4, !tbaa !18
  %xor1120 = xor i32 %xor1118, %418
  %add1121 = add i32 %or1115, %xor1120
  %add1122 = add i32 %add1121, 1859775393
  %W1123 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1124 = getelementptr inbounds [16 x i32], ptr %W1123, i64 0, i64 5
  %419 = load i32, ptr %arrayidx1124, align 4, !tbaa !11
  %W1125 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1126 = getelementptr inbounds [16 x i32], ptr %W1125, i64 0, i64 0
  %420 = load i32, ptr %arrayidx1126, align 4, !tbaa !11
  %xor1127 = xor i32 %419, %420
  %W1128 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1129 = getelementptr inbounds [16 x i32], ptr %W1128, i64 0, i64 10
  %421 = load i32, ptr %arrayidx1129, align 4, !tbaa !11
  %xor1130 = xor i32 %xor1127, %421
  %W1131 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1132 = getelementptr inbounds [16 x i32], ptr %W1131, i64 0, i64 8
  %422 = load i32, ptr %arrayidx1132, align 4, !tbaa !11
  %xor1133 = xor i32 %xor1130, %422
  %temp1134 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1133, ptr %temp1134, align 4, !tbaa !19
  %temp1135 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %423 = load i32, ptr %temp1135, align 4, !tbaa !19
  %shl1136 = shl i32 %423, 1
  %temp1137 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %424 = load i32, ptr %temp1137, align 4, !tbaa !19
  %and1138 = and i32 %424, -1
  %shr1139 = lshr i32 %and1138, 31
  %or1140 = or i32 %shl1136, %shr1139
  %W1141 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1142 = getelementptr inbounds [16 x i32], ptr %W1141, i64 0, i64 8
  store i32 %or1140, ptr %arrayidx1142, align 4, !tbaa !11
  %add1143 = add i32 %add1122, %or1140
  %A1144 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %425 = load i32, ptr %A1144, align 4, !tbaa !13
  %add1145 = add i32 %425, %add1143
  store i32 %add1145, ptr %A1144, align 4, !tbaa !13
  %C1146 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %426 = load i32, ptr %C1146, align 4, !tbaa !16
  %shl1147 = shl i32 %426, 30
  %C1148 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %427 = load i32, ptr %C1148, align 4, !tbaa !16
  %and1149 = and i32 %427, -1
  %shr1150 = lshr i32 %and1149, 2
  %or1151 = or i32 %shl1147, %shr1150
  %C1152 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or1151, ptr %C1152, align 4, !tbaa !16
  br label %do.cond1153

do.cond1153:                                      ; preds = %do.body1109
  br label %do.end1154

do.end1154:                                       ; preds = %do.cond1153
  br label %do.body1155

do.body1155:                                      ; preds = %do.end1154
  %A1156 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %428 = load i32, ptr %A1156, align 4, !tbaa !13
  %shl1157 = shl i32 %428, 5
  %A1158 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %429 = load i32, ptr %A1158, align 4, !tbaa !13
  %and1159 = and i32 %429, -1
  %shr1160 = lshr i32 %and1159, 27
  %or1161 = or i32 %shl1157, %shr1160
  %B1162 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %430 = load i32, ptr %B1162, align 4, !tbaa !15
  %C1163 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %431 = load i32, ptr %C1163, align 4, !tbaa !16
  %xor1164 = xor i32 %430, %431
  %D1165 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %432 = load i32, ptr %D1165, align 4, !tbaa !17
  %xor1166 = xor i32 %xor1164, %432
  %add1167 = add i32 %or1161, %xor1166
  %add1168 = add i32 %add1167, 1859775393
  %W1169 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1170 = getelementptr inbounds [16 x i32], ptr %W1169, i64 0, i64 6
  %433 = load i32, ptr %arrayidx1170, align 4, !tbaa !11
  %W1171 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1172 = getelementptr inbounds [16 x i32], ptr %W1171, i64 0, i64 1
  %434 = load i32, ptr %arrayidx1172, align 4, !tbaa !11
  %xor1173 = xor i32 %433, %434
  %W1174 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1175 = getelementptr inbounds [16 x i32], ptr %W1174, i64 0, i64 11
  %435 = load i32, ptr %arrayidx1175, align 4, !tbaa !11
  %xor1176 = xor i32 %xor1173, %435
  %W1177 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1178 = getelementptr inbounds [16 x i32], ptr %W1177, i64 0, i64 9
  %436 = load i32, ptr %arrayidx1178, align 4, !tbaa !11
  %xor1179 = xor i32 %xor1176, %436
  %temp1180 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1179, ptr %temp1180, align 4, !tbaa !19
  %temp1181 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %437 = load i32, ptr %temp1181, align 4, !tbaa !19
  %shl1182 = shl i32 %437, 1
  %temp1183 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %438 = load i32, ptr %temp1183, align 4, !tbaa !19
  %and1184 = and i32 %438, -1
  %shr1185 = lshr i32 %and1184, 31
  %or1186 = or i32 %shl1182, %shr1185
  %W1187 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1188 = getelementptr inbounds [16 x i32], ptr %W1187, i64 0, i64 9
  store i32 %or1186, ptr %arrayidx1188, align 4, !tbaa !11
  %add1189 = add i32 %add1168, %or1186
  %E1190 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %439 = load i32, ptr %E1190, align 4, !tbaa !18
  %add1191 = add i32 %439, %add1189
  store i32 %add1191, ptr %E1190, align 4, !tbaa !18
  %B1192 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %440 = load i32, ptr %B1192, align 4, !tbaa !15
  %shl1193 = shl i32 %440, 30
  %B1194 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %441 = load i32, ptr %B1194, align 4, !tbaa !15
  %and1195 = and i32 %441, -1
  %shr1196 = lshr i32 %and1195, 2
  %or1197 = or i32 %shl1193, %shr1196
  %B1198 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or1197, ptr %B1198, align 4, !tbaa !15
  br label %do.cond1199

do.cond1199:                                      ; preds = %do.body1155
  br label %do.end1200

do.end1200:                                       ; preds = %do.cond1199
  br label %do.body1201

do.body1201:                                      ; preds = %do.end1200
  %E1202 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %442 = load i32, ptr %E1202, align 4, !tbaa !18
  %shl1203 = shl i32 %442, 5
  %E1204 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %443 = load i32, ptr %E1204, align 4, !tbaa !18
  %and1205 = and i32 %443, -1
  %shr1206 = lshr i32 %and1205, 27
  %or1207 = or i32 %shl1203, %shr1206
  %A1208 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %444 = load i32, ptr %A1208, align 4, !tbaa !13
  %B1209 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %445 = load i32, ptr %B1209, align 4, !tbaa !15
  %xor1210 = xor i32 %444, %445
  %C1211 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %446 = load i32, ptr %C1211, align 4, !tbaa !16
  %xor1212 = xor i32 %xor1210, %446
  %add1213 = add i32 %or1207, %xor1212
  %add1214 = add i32 %add1213, 1859775393
  %W1215 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1216 = getelementptr inbounds [16 x i32], ptr %W1215, i64 0, i64 7
  %447 = load i32, ptr %arrayidx1216, align 4, !tbaa !11
  %W1217 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1218 = getelementptr inbounds [16 x i32], ptr %W1217, i64 0, i64 2
  %448 = load i32, ptr %arrayidx1218, align 4, !tbaa !11
  %xor1219 = xor i32 %447, %448
  %W1220 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1221 = getelementptr inbounds [16 x i32], ptr %W1220, i64 0, i64 12
  %449 = load i32, ptr %arrayidx1221, align 4, !tbaa !11
  %xor1222 = xor i32 %xor1219, %449
  %W1223 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1224 = getelementptr inbounds [16 x i32], ptr %W1223, i64 0, i64 10
  %450 = load i32, ptr %arrayidx1224, align 4, !tbaa !11
  %xor1225 = xor i32 %xor1222, %450
  %temp1226 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1225, ptr %temp1226, align 4, !tbaa !19
  %temp1227 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %451 = load i32, ptr %temp1227, align 4, !tbaa !19
  %shl1228 = shl i32 %451, 1
  %temp1229 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %452 = load i32, ptr %temp1229, align 4, !tbaa !19
  %and1230 = and i32 %452, -1
  %shr1231 = lshr i32 %and1230, 31
  %or1232 = or i32 %shl1228, %shr1231
  %W1233 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1234 = getelementptr inbounds [16 x i32], ptr %W1233, i64 0, i64 10
  store i32 %or1232, ptr %arrayidx1234, align 4, !tbaa !11
  %add1235 = add i32 %add1214, %or1232
  %D1236 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %453 = load i32, ptr %D1236, align 4, !tbaa !17
  %add1237 = add i32 %453, %add1235
  store i32 %add1237, ptr %D1236, align 4, !tbaa !17
  %A1238 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %454 = load i32, ptr %A1238, align 4, !tbaa !13
  %shl1239 = shl i32 %454, 30
  %A1240 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %455 = load i32, ptr %A1240, align 4, !tbaa !13
  %and1241 = and i32 %455, -1
  %shr1242 = lshr i32 %and1241, 2
  %or1243 = or i32 %shl1239, %shr1242
  %A1244 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or1243, ptr %A1244, align 4, !tbaa !13
  br label %do.cond1245

do.cond1245:                                      ; preds = %do.body1201
  br label %do.end1246

do.end1246:                                       ; preds = %do.cond1245
  br label %do.body1247

do.body1247:                                      ; preds = %do.end1246
  %D1248 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %456 = load i32, ptr %D1248, align 4, !tbaa !17
  %shl1249 = shl i32 %456, 5
  %D1250 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %457 = load i32, ptr %D1250, align 4, !tbaa !17
  %and1251 = and i32 %457, -1
  %shr1252 = lshr i32 %and1251, 27
  %or1253 = or i32 %shl1249, %shr1252
  %E1254 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %458 = load i32, ptr %E1254, align 4, !tbaa !18
  %A1255 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %459 = load i32, ptr %A1255, align 4, !tbaa !13
  %xor1256 = xor i32 %458, %459
  %B1257 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %460 = load i32, ptr %B1257, align 4, !tbaa !15
  %xor1258 = xor i32 %xor1256, %460
  %add1259 = add i32 %or1253, %xor1258
  %add1260 = add i32 %add1259, 1859775393
  %W1261 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1262 = getelementptr inbounds [16 x i32], ptr %W1261, i64 0, i64 8
  %461 = load i32, ptr %arrayidx1262, align 4, !tbaa !11
  %W1263 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1264 = getelementptr inbounds [16 x i32], ptr %W1263, i64 0, i64 3
  %462 = load i32, ptr %arrayidx1264, align 4, !tbaa !11
  %xor1265 = xor i32 %461, %462
  %W1266 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1267 = getelementptr inbounds [16 x i32], ptr %W1266, i64 0, i64 13
  %463 = load i32, ptr %arrayidx1267, align 4, !tbaa !11
  %xor1268 = xor i32 %xor1265, %463
  %W1269 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1270 = getelementptr inbounds [16 x i32], ptr %W1269, i64 0, i64 11
  %464 = load i32, ptr %arrayidx1270, align 4, !tbaa !11
  %xor1271 = xor i32 %xor1268, %464
  %temp1272 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1271, ptr %temp1272, align 4, !tbaa !19
  %temp1273 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %465 = load i32, ptr %temp1273, align 4, !tbaa !19
  %shl1274 = shl i32 %465, 1
  %temp1275 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %466 = load i32, ptr %temp1275, align 4, !tbaa !19
  %and1276 = and i32 %466, -1
  %shr1277 = lshr i32 %and1276, 31
  %or1278 = or i32 %shl1274, %shr1277
  %W1279 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1280 = getelementptr inbounds [16 x i32], ptr %W1279, i64 0, i64 11
  store i32 %or1278, ptr %arrayidx1280, align 4, !tbaa !11
  %add1281 = add i32 %add1260, %or1278
  %C1282 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %467 = load i32, ptr %C1282, align 4, !tbaa !16
  %add1283 = add i32 %467, %add1281
  store i32 %add1283, ptr %C1282, align 4, !tbaa !16
  %E1284 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %468 = load i32, ptr %E1284, align 4, !tbaa !18
  %shl1285 = shl i32 %468, 30
  %E1286 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %469 = load i32, ptr %E1286, align 4, !tbaa !18
  %and1287 = and i32 %469, -1
  %shr1288 = lshr i32 %and1287, 2
  %or1289 = or i32 %shl1285, %shr1288
  %E1290 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or1289, ptr %E1290, align 4, !tbaa !18
  br label %do.cond1291

do.cond1291:                                      ; preds = %do.body1247
  br label %do.end1292

do.end1292:                                       ; preds = %do.cond1291
  br label %do.body1293

do.body1293:                                      ; preds = %do.end1292
  %C1294 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %470 = load i32, ptr %C1294, align 4, !tbaa !16
  %shl1295 = shl i32 %470, 5
  %C1296 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %471 = load i32, ptr %C1296, align 4, !tbaa !16
  %and1297 = and i32 %471, -1
  %shr1298 = lshr i32 %and1297, 27
  %or1299 = or i32 %shl1295, %shr1298
  %D1300 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %472 = load i32, ptr %D1300, align 4, !tbaa !17
  %E1301 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %473 = load i32, ptr %E1301, align 4, !tbaa !18
  %xor1302 = xor i32 %472, %473
  %A1303 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %474 = load i32, ptr %A1303, align 4, !tbaa !13
  %xor1304 = xor i32 %xor1302, %474
  %add1305 = add i32 %or1299, %xor1304
  %add1306 = add i32 %add1305, 1859775393
  %W1307 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1308 = getelementptr inbounds [16 x i32], ptr %W1307, i64 0, i64 9
  %475 = load i32, ptr %arrayidx1308, align 4, !tbaa !11
  %W1309 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1310 = getelementptr inbounds [16 x i32], ptr %W1309, i64 0, i64 4
  %476 = load i32, ptr %arrayidx1310, align 4, !tbaa !11
  %xor1311 = xor i32 %475, %476
  %W1312 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1313 = getelementptr inbounds [16 x i32], ptr %W1312, i64 0, i64 14
  %477 = load i32, ptr %arrayidx1313, align 4, !tbaa !11
  %xor1314 = xor i32 %xor1311, %477
  %W1315 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1316 = getelementptr inbounds [16 x i32], ptr %W1315, i64 0, i64 12
  %478 = load i32, ptr %arrayidx1316, align 4, !tbaa !11
  %xor1317 = xor i32 %xor1314, %478
  %temp1318 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1317, ptr %temp1318, align 4, !tbaa !19
  %temp1319 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %479 = load i32, ptr %temp1319, align 4, !tbaa !19
  %shl1320 = shl i32 %479, 1
  %temp1321 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %480 = load i32, ptr %temp1321, align 4, !tbaa !19
  %and1322 = and i32 %480, -1
  %shr1323 = lshr i32 %and1322, 31
  %or1324 = or i32 %shl1320, %shr1323
  %W1325 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1326 = getelementptr inbounds [16 x i32], ptr %W1325, i64 0, i64 12
  store i32 %or1324, ptr %arrayidx1326, align 4, !tbaa !11
  %add1327 = add i32 %add1306, %or1324
  %B1328 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %481 = load i32, ptr %B1328, align 4, !tbaa !15
  %add1329 = add i32 %481, %add1327
  store i32 %add1329, ptr %B1328, align 4, !tbaa !15
  %D1330 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %482 = load i32, ptr %D1330, align 4, !tbaa !17
  %shl1331 = shl i32 %482, 30
  %D1332 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %483 = load i32, ptr %D1332, align 4, !tbaa !17
  %and1333 = and i32 %483, -1
  %shr1334 = lshr i32 %and1333, 2
  %or1335 = or i32 %shl1331, %shr1334
  %D1336 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or1335, ptr %D1336, align 4, !tbaa !17
  br label %do.cond1337

do.cond1337:                                      ; preds = %do.body1293
  br label %do.end1338

do.end1338:                                       ; preds = %do.cond1337
  br label %do.body1339

do.body1339:                                      ; preds = %do.end1338
  %B1340 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %484 = load i32, ptr %B1340, align 4, !tbaa !15
  %shl1341 = shl i32 %484, 5
  %B1342 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %485 = load i32, ptr %B1342, align 4, !tbaa !15
  %and1343 = and i32 %485, -1
  %shr1344 = lshr i32 %and1343, 27
  %or1345 = or i32 %shl1341, %shr1344
  %C1346 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %486 = load i32, ptr %C1346, align 4, !tbaa !16
  %D1347 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %487 = load i32, ptr %D1347, align 4, !tbaa !17
  %xor1348 = xor i32 %486, %487
  %E1349 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %488 = load i32, ptr %E1349, align 4, !tbaa !18
  %xor1350 = xor i32 %xor1348, %488
  %add1351 = add i32 %or1345, %xor1350
  %add1352 = add i32 %add1351, 1859775393
  %W1353 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1354 = getelementptr inbounds [16 x i32], ptr %W1353, i64 0, i64 10
  %489 = load i32, ptr %arrayidx1354, align 4, !tbaa !11
  %W1355 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1356 = getelementptr inbounds [16 x i32], ptr %W1355, i64 0, i64 5
  %490 = load i32, ptr %arrayidx1356, align 4, !tbaa !11
  %xor1357 = xor i32 %489, %490
  %W1358 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1359 = getelementptr inbounds [16 x i32], ptr %W1358, i64 0, i64 15
  %491 = load i32, ptr %arrayidx1359, align 4, !tbaa !11
  %xor1360 = xor i32 %xor1357, %491
  %W1361 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1362 = getelementptr inbounds [16 x i32], ptr %W1361, i64 0, i64 13
  %492 = load i32, ptr %arrayidx1362, align 4, !tbaa !11
  %xor1363 = xor i32 %xor1360, %492
  %temp1364 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1363, ptr %temp1364, align 4, !tbaa !19
  %temp1365 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %493 = load i32, ptr %temp1365, align 4, !tbaa !19
  %shl1366 = shl i32 %493, 1
  %temp1367 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %494 = load i32, ptr %temp1367, align 4, !tbaa !19
  %and1368 = and i32 %494, -1
  %shr1369 = lshr i32 %and1368, 31
  %or1370 = or i32 %shl1366, %shr1369
  %W1371 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1372 = getelementptr inbounds [16 x i32], ptr %W1371, i64 0, i64 13
  store i32 %or1370, ptr %arrayidx1372, align 4, !tbaa !11
  %add1373 = add i32 %add1352, %or1370
  %A1374 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %495 = load i32, ptr %A1374, align 4, !tbaa !13
  %add1375 = add i32 %495, %add1373
  store i32 %add1375, ptr %A1374, align 4, !tbaa !13
  %C1376 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %496 = load i32, ptr %C1376, align 4, !tbaa !16
  %shl1377 = shl i32 %496, 30
  %C1378 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %497 = load i32, ptr %C1378, align 4, !tbaa !16
  %and1379 = and i32 %497, -1
  %shr1380 = lshr i32 %and1379, 2
  %or1381 = or i32 %shl1377, %shr1380
  %C1382 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or1381, ptr %C1382, align 4, !tbaa !16
  br label %do.cond1383

do.cond1383:                                      ; preds = %do.body1339
  br label %do.end1384

do.end1384:                                       ; preds = %do.cond1383
  br label %do.body1385

do.body1385:                                      ; preds = %do.end1384
  %A1386 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %498 = load i32, ptr %A1386, align 4, !tbaa !13
  %shl1387 = shl i32 %498, 5
  %A1388 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %499 = load i32, ptr %A1388, align 4, !tbaa !13
  %and1389 = and i32 %499, -1
  %shr1390 = lshr i32 %and1389, 27
  %or1391 = or i32 %shl1387, %shr1390
  %B1392 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %500 = load i32, ptr %B1392, align 4, !tbaa !15
  %C1393 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %501 = load i32, ptr %C1393, align 4, !tbaa !16
  %xor1394 = xor i32 %500, %501
  %D1395 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %502 = load i32, ptr %D1395, align 4, !tbaa !17
  %xor1396 = xor i32 %xor1394, %502
  %add1397 = add i32 %or1391, %xor1396
  %add1398 = add i32 %add1397, 1859775393
  %W1399 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1400 = getelementptr inbounds [16 x i32], ptr %W1399, i64 0, i64 11
  %503 = load i32, ptr %arrayidx1400, align 4, !tbaa !11
  %W1401 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1402 = getelementptr inbounds [16 x i32], ptr %W1401, i64 0, i64 6
  %504 = load i32, ptr %arrayidx1402, align 4, !tbaa !11
  %xor1403 = xor i32 %503, %504
  %W1404 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1405 = getelementptr inbounds [16 x i32], ptr %W1404, i64 0, i64 0
  %505 = load i32, ptr %arrayidx1405, align 4, !tbaa !11
  %xor1406 = xor i32 %xor1403, %505
  %W1407 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1408 = getelementptr inbounds [16 x i32], ptr %W1407, i64 0, i64 14
  %506 = load i32, ptr %arrayidx1408, align 4, !tbaa !11
  %xor1409 = xor i32 %xor1406, %506
  %temp1410 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1409, ptr %temp1410, align 4, !tbaa !19
  %temp1411 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %507 = load i32, ptr %temp1411, align 4, !tbaa !19
  %shl1412 = shl i32 %507, 1
  %temp1413 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %508 = load i32, ptr %temp1413, align 4, !tbaa !19
  %and1414 = and i32 %508, -1
  %shr1415 = lshr i32 %and1414, 31
  %or1416 = or i32 %shl1412, %shr1415
  %W1417 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1418 = getelementptr inbounds [16 x i32], ptr %W1417, i64 0, i64 14
  store i32 %or1416, ptr %arrayidx1418, align 4, !tbaa !11
  %add1419 = add i32 %add1398, %or1416
  %E1420 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %509 = load i32, ptr %E1420, align 4, !tbaa !18
  %add1421 = add i32 %509, %add1419
  store i32 %add1421, ptr %E1420, align 4, !tbaa !18
  %B1422 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %510 = load i32, ptr %B1422, align 4, !tbaa !15
  %shl1423 = shl i32 %510, 30
  %B1424 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %511 = load i32, ptr %B1424, align 4, !tbaa !15
  %and1425 = and i32 %511, -1
  %shr1426 = lshr i32 %and1425, 2
  %or1427 = or i32 %shl1423, %shr1426
  %B1428 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or1427, ptr %B1428, align 4, !tbaa !15
  br label %do.cond1429

do.cond1429:                                      ; preds = %do.body1385
  br label %do.end1430

do.end1430:                                       ; preds = %do.cond1429
  br label %do.body1431

do.body1431:                                      ; preds = %do.end1430
  %E1432 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %512 = load i32, ptr %E1432, align 4, !tbaa !18
  %shl1433 = shl i32 %512, 5
  %E1434 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %513 = load i32, ptr %E1434, align 4, !tbaa !18
  %and1435 = and i32 %513, -1
  %shr1436 = lshr i32 %and1435, 27
  %or1437 = or i32 %shl1433, %shr1436
  %A1438 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %514 = load i32, ptr %A1438, align 4, !tbaa !13
  %B1439 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %515 = load i32, ptr %B1439, align 4, !tbaa !15
  %xor1440 = xor i32 %514, %515
  %C1441 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %516 = load i32, ptr %C1441, align 4, !tbaa !16
  %xor1442 = xor i32 %xor1440, %516
  %add1443 = add i32 %or1437, %xor1442
  %add1444 = add i32 %add1443, 1859775393
  %W1445 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1446 = getelementptr inbounds [16 x i32], ptr %W1445, i64 0, i64 12
  %517 = load i32, ptr %arrayidx1446, align 4, !tbaa !11
  %W1447 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1448 = getelementptr inbounds [16 x i32], ptr %W1447, i64 0, i64 7
  %518 = load i32, ptr %arrayidx1448, align 4, !tbaa !11
  %xor1449 = xor i32 %517, %518
  %W1450 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1451 = getelementptr inbounds [16 x i32], ptr %W1450, i64 0, i64 1
  %519 = load i32, ptr %arrayidx1451, align 4, !tbaa !11
  %xor1452 = xor i32 %xor1449, %519
  %W1453 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1454 = getelementptr inbounds [16 x i32], ptr %W1453, i64 0, i64 15
  %520 = load i32, ptr %arrayidx1454, align 4, !tbaa !11
  %xor1455 = xor i32 %xor1452, %520
  %temp1456 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1455, ptr %temp1456, align 4, !tbaa !19
  %temp1457 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %521 = load i32, ptr %temp1457, align 4, !tbaa !19
  %shl1458 = shl i32 %521, 1
  %temp1459 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %522 = load i32, ptr %temp1459, align 4, !tbaa !19
  %and1460 = and i32 %522, -1
  %shr1461 = lshr i32 %and1460, 31
  %or1462 = or i32 %shl1458, %shr1461
  %W1463 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1464 = getelementptr inbounds [16 x i32], ptr %W1463, i64 0, i64 15
  store i32 %or1462, ptr %arrayidx1464, align 4, !tbaa !11
  %add1465 = add i32 %add1444, %or1462
  %D1466 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %523 = load i32, ptr %D1466, align 4, !tbaa !17
  %add1467 = add i32 %523, %add1465
  store i32 %add1467, ptr %D1466, align 4, !tbaa !17
  %A1468 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %524 = load i32, ptr %A1468, align 4, !tbaa !13
  %shl1469 = shl i32 %524, 30
  %A1470 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %525 = load i32, ptr %A1470, align 4, !tbaa !13
  %and1471 = and i32 %525, -1
  %shr1472 = lshr i32 %and1471, 2
  %or1473 = or i32 %shl1469, %shr1472
  %A1474 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or1473, ptr %A1474, align 4, !tbaa !13
  br label %do.cond1475

do.cond1475:                                      ; preds = %do.body1431
  br label %do.end1476

do.end1476:                                       ; preds = %do.cond1475
  br label %do.body1477

do.body1477:                                      ; preds = %do.end1476
  %D1478 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %526 = load i32, ptr %D1478, align 4, !tbaa !17
  %shl1479 = shl i32 %526, 5
  %D1480 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %527 = load i32, ptr %D1480, align 4, !tbaa !17
  %and1481 = and i32 %527, -1
  %shr1482 = lshr i32 %and1481, 27
  %or1483 = or i32 %shl1479, %shr1482
  %E1484 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %528 = load i32, ptr %E1484, align 4, !tbaa !18
  %A1485 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %529 = load i32, ptr %A1485, align 4, !tbaa !13
  %xor1486 = xor i32 %528, %529
  %B1487 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %530 = load i32, ptr %B1487, align 4, !tbaa !15
  %xor1488 = xor i32 %xor1486, %530
  %add1489 = add i32 %or1483, %xor1488
  %add1490 = add i32 %add1489, 1859775393
  %W1491 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1492 = getelementptr inbounds [16 x i32], ptr %W1491, i64 0, i64 13
  %531 = load i32, ptr %arrayidx1492, align 4, !tbaa !11
  %W1493 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1494 = getelementptr inbounds [16 x i32], ptr %W1493, i64 0, i64 8
  %532 = load i32, ptr %arrayidx1494, align 4, !tbaa !11
  %xor1495 = xor i32 %531, %532
  %W1496 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1497 = getelementptr inbounds [16 x i32], ptr %W1496, i64 0, i64 2
  %533 = load i32, ptr %arrayidx1497, align 4, !tbaa !11
  %xor1498 = xor i32 %xor1495, %533
  %W1499 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1500 = getelementptr inbounds [16 x i32], ptr %W1499, i64 0, i64 0
  %534 = load i32, ptr %arrayidx1500, align 4, !tbaa !11
  %xor1501 = xor i32 %xor1498, %534
  %temp1502 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1501, ptr %temp1502, align 4, !tbaa !19
  %temp1503 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %535 = load i32, ptr %temp1503, align 4, !tbaa !19
  %shl1504 = shl i32 %535, 1
  %temp1505 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %536 = load i32, ptr %temp1505, align 4, !tbaa !19
  %and1506 = and i32 %536, -1
  %shr1507 = lshr i32 %and1506, 31
  %or1508 = or i32 %shl1504, %shr1507
  %W1509 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1510 = getelementptr inbounds [16 x i32], ptr %W1509, i64 0, i64 0
  store i32 %or1508, ptr %arrayidx1510, align 4, !tbaa !11
  %add1511 = add i32 %add1490, %or1508
  %C1512 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %537 = load i32, ptr %C1512, align 4, !tbaa !16
  %add1513 = add i32 %537, %add1511
  store i32 %add1513, ptr %C1512, align 4, !tbaa !16
  %E1514 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %538 = load i32, ptr %E1514, align 4, !tbaa !18
  %shl1515 = shl i32 %538, 30
  %E1516 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %539 = load i32, ptr %E1516, align 4, !tbaa !18
  %and1517 = and i32 %539, -1
  %shr1518 = lshr i32 %and1517, 2
  %or1519 = or i32 %shl1515, %shr1518
  %E1520 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or1519, ptr %E1520, align 4, !tbaa !18
  br label %do.cond1521

do.cond1521:                                      ; preds = %do.body1477
  br label %do.end1522

do.end1522:                                       ; preds = %do.cond1521
  br label %do.body1523

do.body1523:                                      ; preds = %do.end1522
  %C1524 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %540 = load i32, ptr %C1524, align 4, !tbaa !16
  %shl1525 = shl i32 %540, 5
  %C1526 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %541 = load i32, ptr %C1526, align 4, !tbaa !16
  %and1527 = and i32 %541, -1
  %shr1528 = lshr i32 %and1527, 27
  %or1529 = or i32 %shl1525, %shr1528
  %D1530 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %542 = load i32, ptr %D1530, align 4, !tbaa !17
  %E1531 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %543 = load i32, ptr %E1531, align 4, !tbaa !18
  %xor1532 = xor i32 %542, %543
  %A1533 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %544 = load i32, ptr %A1533, align 4, !tbaa !13
  %xor1534 = xor i32 %xor1532, %544
  %add1535 = add i32 %or1529, %xor1534
  %add1536 = add i32 %add1535, 1859775393
  %W1537 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1538 = getelementptr inbounds [16 x i32], ptr %W1537, i64 0, i64 14
  %545 = load i32, ptr %arrayidx1538, align 4, !tbaa !11
  %W1539 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1540 = getelementptr inbounds [16 x i32], ptr %W1539, i64 0, i64 9
  %546 = load i32, ptr %arrayidx1540, align 4, !tbaa !11
  %xor1541 = xor i32 %545, %546
  %W1542 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1543 = getelementptr inbounds [16 x i32], ptr %W1542, i64 0, i64 3
  %547 = load i32, ptr %arrayidx1543, align 4, !tbaa !11
  %xor1544 = xor i32 %xor1541, %547
  %W1545 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1546 = getelementptr inbounds [16 x i32], ptr %W1545, i64 0, i64 1
  %548 = load i32, ptr %arrayidx1546, align 4, !tbaa !11
  %xor1547 = xor i32 %xor1544, %548
  %temp1548 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1547, ptr %temp1548, align 4, !tbaa !19
  %temp1549 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %549 = load i32, ptr %temp1549, align 4, !tbaa !19
  %shl1550 = shl i32 %549, 1
  %temp1551 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %550 = load i32, ptr %temp1551, align 4, !tbaa !19
  %and1552 = and i32 %550, -1
  %shr1553 = lshr i32 %and1552, 31
  %or1554 = or i32 %shl1550, %shr1553
  %W1555 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1556 = getelementptr inbounds [16 x i32], ptr %W1555, i64 0, i64 1
  store i32 %or1554, ptr %arrayidx1556, align 4, !tbaa !11
  %add1557 = add i32 %add1536, %or1554
  %B1558 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %551 = load i32, ptr %B1558, align 4, !tbaa !15
  %add1559 = add i32 %551, %add1557
  store i32 %add1559, ptr %B1558, align 4, !tbaa !15
  %D1560 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %552 = load i32, ptr %D1560, align 4, !tbaa !17
  %shl1561 = shl i32 %552, 30
  %D1562 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %553 = load i32, ptr %D1562, align 4, !tbaa !17
  %and1563 = and i32 %553, -1
  %shr1564 = lshr i32 %and1563, 2
  %or1565 = or i32 %shl1561, %shr1564
  %D1566 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or1565, ptr %D1566, align 4, !tbaa !17
  br label %do.cond1567

do.cond1567:                                      ; preds = %do.body1523
  br label %do.end1568

do.end1568:                                       ; preds = %do.cond1567
  br label %do.body1569

do.body1569:                                      ; preds = %do.end1568
  %B1570 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %554 = load i32, ptr %B1570, align 4, !tbaa !15
  %shl1571 = shl i32 %554, 5
  %B1572 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %555 = load i32, ptr %B1572, align 4, !tbaa !15
  %and1573 = and i32 %555, -1
  %shr1574 = lshr i32 %and1573, 27
  %or1575 = or i32 %shl1571, %shr1574
  %C1576 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %556 = load i32, ptr %C1576, align 4, !tbaa !16
  %D1577 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %557 = load i32, ptr %D1577, align 4, !tbaa !17
  %xor1578 = xor i32 %556, %557
  %E1579 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %558 = load i32, ptr %E1579, align 4, !tbaa !18
  %xor1580 = xor i32 %xor1578, %558
  %add1581 = add i32 %or1575, %xor1580
  %add1582 = add i32 %add1581, 1859775393
  %W1583 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1584 = getelementptr inbounds [16 x i32], ptr %W1583, i64 0, i64 15
  %559 = load i32, ptr %arrayidx1584, align 4, !tbaa !11
  %W1585 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1586 = getelementptr inbounds [16 x i32], ptr %W1585, i64 0, i64 10
  %560 = load i32, ptr %arrayidx1586, align 4, !tbaa !11
  %xor1587 = xor i32 %559, %560
  %W1588 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1589 = getelementptr inbounds [16 x i32], ptr %W1588, i64 0, i64 4
  %561 = load i32, ptr %arrayidx1589, align 4, !tbaa !11
  %xor1590 = xor i32 %xor1587, %561
  %W1591 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1592 = getelementptr inbounds [16 x i32], ptr %W1591, i64 0, i64 2
  %562 = load i32, ptr %arrayidx1592, align 4, !tbaa !11
  %xor1593 = xor i32 %xor1590, %562
  %temp1594 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1593, ptr %temp1594, align 4, !tbaa !19
  %temp1595 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %563 = load i32, ptr %temp1595, align 4, !tbaa !19
  %shl1596 = shl i32 %563, 1
  %temp1597 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %564 = load i32, ptr %temp1597, align 4, !tbaa !19
  %and1598 = and i32 %564, -1
  %shr1599 = lshr i32 %and1598, 31
  %or1600 = or i32 %shl1596, %shr1599
  %W1601 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1602 = getelementptr inbounds [16 x i32], ptr %W1601, i64 0, i64 2
  store i32 %or1600, ptr %arrayidx1602, align 4, !tbaa !11
  %add1603 = add i32 %add1582, %or1600
  %A1604 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %565 = load i32, ptr %A1604, align 4, !tbaa !13
  %add1605 = add i32 %565, %add1603
  store i32 %add1605, ptr %A1604, align 4, !tbaa !13
  %C1606 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %566 = load i32, ptr %C1606, align 4, !tbaa !16
  %shl1607 = shl i32 %566, 30
  %C1608 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %567 = load i32, ptr %C1608, align 4, !tbaa !16
  %and1609 = and i32 %567, -1
  %shr1610 = lshr i32 %and1609, 2
  %or1611 = or i32 %shl1607, %shr1610
  %C1612 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or1611, ptr %C1612, align 4, !tbaa !16
  br label %do.cond1613

do.cond1613:                                      ; preds = %do.body1569
  br label %do.end1614

do.end1614:                                       ; preds = %do.cond1613
  br label %do.body1615

do.body1615:                                      ; preds = %do.end1614
  %A1616 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %568 = load i32, ptr %A1616, align 4, !tbaa !13
  %shl1617 = shl i32 %568, 5
  %A1618 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %569 = load i32, ptr %A1618, align 4, !tbaa !13
  %and1619 = and i32 %569, -1
  %shr1620 = lshr i32 %and1619, 27
  %or1621 = or i32 %shl1617, %shr1620
  %B1622 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %570 = load i32, ptr %B1622, align 4, !tbaa !15
  %C1623 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %571 = load i32, ptr %C1623, align 4, !tbaa !16
  %xor1624 = xor i32 %570, %571
  %D1625 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %572 = load i32, ptr %D1625, align 4, !tbaa !17
  %xor1626 = xor i32 %xor1624, %572
  %add1627 = add i32 %or1621, %xor1626
  %add1628 = add i32 %add1627, 1859775393
  %W1629 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1630 = getelementptr inbounds [16 x i32], ptr %W1629, i64 0, i64 0
  %573 = load i32, ptr %arrayidx1630, align 4, !tbaa !11
  %W1631 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1632 = getelementptr inbounds [16 x i32], ptr %W1631, i64 0, i64 11
  %574 = load i32, ptr %arrayidx1632, align 4, !tbaa !11
  %xor1633 = xor i32 %573, %574
  %W1634 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1635 = getelementptr inbounds [16 x i32], ptr %W1634, i64 0, i64 5
  %575 = load i32, ptr %arrayidx1635, align 4, !tbaa !11
  %xor1636 = xor i32 %xor1633, %575
  %W1637 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1638 = getelementptr inbounds [16 x i32], ptr %W1637, i64 0, i64 3
  %576 = load i32, ptr %arrayidx1638, align 4, !tbaa !11
  %xor1639 = xor i32 %xor1636, %576
  %temp1640 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1639, ptr %temp1640, align 4, !tbaa !19
  %temp1641 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %577 = load i32, ptr %temp1641, align 4, !tbaa !19
  %shl1642 = shl i32 %577, 1
  %temp1643 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %578 = load i32, ptr %temp1643, align 4, !tbaa !19
  %and1644 = and i32 %578, -1
  %shr1645 = lshr i32 %and1644, 31
  %or1646 = or i32 %shl1642, %shr1645
  %W1647 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1648 = getelementptr inbounds [16 x i32], ptr %W1647, i64 0, i64 3
  store i32 %or1646, ptr %arrayidx1648, align 4, !tbaa !11
  %add1649 = add i32 %add1628, %or1646
  %E1650 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %579 = load i32, ptr %E1650, align 4, !tbaa !18
  %add1651 = add i32 %579, %add1649
  store i32 %add1651, ptr %E1650, align 4, !tbaa !18
  %B1652 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %580 = load i32, ptr %B1652, align 4, !tbaa !15
  %shl1653 = shl i32 %580, 30
  %B1654 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %581 = load i32, ptr %B1654, align 4, !tbaa !15
  %and1655 = and i32 %581, -1
  %shr1656 = lshr i32 %and1655, 2
  %or1657 = or i32 %shl1653, %shr1656
  %B1658 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or1657, ptr %B1658, align 4, !tbaa !15
  br label %do.cond1659

do.cond1659:                                      ; preds = %do.body1615
  br label %do.end1660

do.end1660:                                       ; preds = %do.cond1659
  br label %do.body1661

do.body1661:                                      ; preds = %do.end1660
  %E1662 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %582 = load i32, ptr %E1662, align 4, !tbaa !18
  %shl1663 = shl i32 %582, 5
  %E1664 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %583 = load i32, ptr %E1664, align 4, !tbaa !18
  %and1665 = and i32 %583, -1
  %shr1666 = lshr i32 %and1665, 27
  %or1667 = or i32 %shl1663, %shr1666
  %A1668 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %584 = load i32, ptr %A1668, align 4, !tbaa !13
  %B1669 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %585 = load i32, ptr %B1669, align 4, !tbaa !15
  %xor1670 = xor i32 %584, %585
  %C1671 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %586 = load i32, ptr %C1671, align 4, !tbaa !16
  %xor1672 = xor i32 %xor1670, %586
  %add1673 = add i32 %or1667, %xor1672
  %add1674 = add i32 %add1673, 1859775393
  %W1675 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1676 = getelementptr inbounds [16 x i32], ptr %W1675, i64 0, i64 1
  %587 = load i32, ptr %arrayidx1676, align 4, !tbaa !11
  %W1677 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1678 = getelementptr inbounds [16 x i32], ptr %W1677, i64 0, i64 12
  %588 = load i32, ptr %arrayidx1678, align 4, !tbaa !11
  %xor1679 = xor i32 %587, %588
  %W1680 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1681 = getelementptr inbounds [16 x i32], ptr %W1680, i64 0, i64 6
  %589 = load i32, ptr %arrayidx1681, align 4, !tbaa !11
  %xor1682 = xor i32 %xor1679, %589
  %W1683 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1684 = getelementptr inbounds [16 x i32], ptr %W1683, i64 0, i64 4
  %590 = load i32, ptr %arrayidx1684, align 4, !tbaa !11
  %xor1685 = xor i32 %xor1682, %590
  %temp1686 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1685, ptr %temp1686, align 4, !tbaa !19
  %temp1687 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %591 = load i32, ptr %temp1687, align 4, !tbaa !19
  %shl1688 = shl i32 %591, 1
  %temp1689 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %592 = load i32, ptr %temp1689, align 4, !tbaa !19
  %and1690 = and i32 %592, -1
  %shr1691 = lshr i32 %and1690, 31
  %or1692 = or i32 %shl1688, %shr1691
  %W1693 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1694 = getelementptr inbounds [16 x i32], ptr %W1693, i64 0, i64 4
  store i32 %or1692, ptr %arrayidx1694, align 4, !tbaa !11
  %add1695 = add i32 %add1674, %or1692
  %D1696 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %593 = load i32, ptr %D1696, align 4, !tbaa !17
  %add1697 = add i32 %593, %add1695
  store i32 %add1697, ptr %D1696, align 4, !tbaa !17
  %A1698 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %594 = load i32, ptr %A1698, align 4, !tbaa !13
  %shl1699 = shl i32 %594, 30
  %A1700 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %595 = load i32, ptr %A1700, align 4, !tbaa !13
  %and1701 = and i32 %595, -1
  %shr1702 = lshr i32 %and1701, 2
  %or1703 = or i32 %shl1699, %shr1702
  %A1704 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or1703, ptr %A1704, align 4, !tbaa !13
  br label %do.cond1705

do.cond1705:                                      ; preds = %do.body1661
  br label %do.end1706

do.end1706:                                       ; preds = %do.cond1705
  br label %do.body1707

do.body1707:                                      ; preds = %do.end1706
  %D1708 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %596 = load i32, ptr %D1708, align 4, !tbaa !17
  %shl1709 = shl i32 %596, 5
  %D1710 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %597 = load i32, ptr %D1710, align 4, !tbaa !17
  %and1711 = and i32 %597, -1
  %shr1712 = lshr i32 %and1711, 27
  %or1713 = or i32 %shl1709, %shr1712
  %E1714 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %598 = load i32, ptr %E1714, align 4, !tbaa !18
  %A1715 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %599 = load i32, ptr %A1715, align 4, !tbaa !13
  %xor1716 = xor i32 %598, %599
  %B1717 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %600 = load i32, ptr %B1717, align 4, !tbaa !15
  %xor1718 = xor i32 %xor1716, %600
  %add1719 = add i32 %or1713, %xor1718
  %add1720 = add i32 %add1719, 1859775393
  %W1721 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1722 = getelementptr inbounds [16 x i32], ptr %W1721, i64 0, i64 2
  %601 = load i32, ptr %arrayidx1722, align 4, !tbaa !11
  %W1723 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1724 = getelementptr inbounds [16 x i32], ptr %W1723, i64 0, i64 13
  %602 = load i32, ptr %arrayidx1724, align 4, !tbaa !11
  %xor1725 = xor i32 %601, %602
  %W1726 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1727 = getelementptr inbounds [16 x i32], ptr %W1726, i64 0, i64 7
  %603 = load i32, ptr %arrayidx1727, align 4, !tbaa !11
  %xor1728 = xor i32 %xor1725, %603
  %W1729 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1730 = getelementptr inbounds [16 x i32], ptr %W1729, i64 0, i64 5
  %604 = load i32, ptr %arrayidx1730, align 4, !tbaa !11
  %xor1731 = xor i32 %xor1728, %604
  %temp1732 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1731, ptr %temp1732, align 4, !tbaa !19
  %temp1733 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %605 = load i32, ptr %temp1733, align 4, !tbaa !19
  %shl1734 = shl i32 %605, 1
  %temp1735 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %606 = load i32, ptr %temp1735, align 4, !tbaa !19
  %and1736 = and i32 %606, -1
  %shr1737 = lshr i32 %and1736, 31
  %or1738 = or i32 %shl1734, %shr1737
  %W1739 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1740 = getelementptr inbounds [16 x i32], ptr %W1739, i64 0, i64 5
  store i32 %or1738, ptr %arrayidx1740, align 4, !tbaa !11
  %add1741 = add i32 %add1720, %or1738
  %C1742 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %607 = load i32, ptr %C1742, align 4, !tbaa !16
  %add1743 = add i32 %607, %add1741
  store i32 %add1743, ptr %C1742, align 4, !tbaa !16
  %E1744 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %608 = load i32, ptr %E1744, align 4, !tbaa !18
  %shl1745 = shl i32 %608, 30
  %E1746 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %609 = load i32, ptr %E1746, align 4, !tbaa !18
  %and1747 = and i32 %609, -1
  %shr1748 = lshr i32 %and1747, 2
  %or1749 = or i32 %shl1745, %shr1748
  %E1750 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or1749, ptr %E1750, align 4, !tbaa !18
  br label %do.cond1751

do.cond1751:                                      ; preds = %do.body1707
  br label %do.end1752

do.end1752:                                       ; preds = %do.cond1751
  br label %do.body1753

do.body1753:                                      ; preds = %do.end1752
  %C1754 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %610 = load i32, ptr %C1754, align 4, !tbaa !16
  %shl1755 = shl i32 %610, 5
  %C1756 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %611 = load i32, ptr %C1756, align 4, !tbaa !16
  %and1757 = and i32 %611, -1
  %shr1758 = lshr i32 %and1757, 27
  %or1759 = or i32 %shl1755, %shr1758
  %D1760 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %612 = load i32, ptr %D1760, align 4, !tbaa !17
  %E1761 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %613 = load i32, ptr %E1761, align 4, !tbaa !18
  %xor1762 = xor i32 %612, %613
  %A1763 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %614 = load i32, ptr %A1763, align 4, !tbaa !13
  %xor1764 = xor i32 %xor1762, %614
  %add1765 = add i32 %or1759, %xor1764
  %add1766 = add i32 %add1765, 1859775393
  %W1767 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1768 = getelementptr inbounds [16 x i32], ptr %W1767, i64 0, i64 3
  %615 = load i32, ptr %arrayidx1768, align 4, !tbaa !11
  %W1769 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1770 = getelementptr inbounds [16 x i32], ptr %W1769, i64 0, i64 14
  %616 = load i32, ptr %arrayidx1770, align 4, !tbaa !11
  %xor1771 = xor i32 %615, %616
  %W1772 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1773 = getelementptr inbounds [16 x i32], ptr %W1772, i64 0, i64 8
  %617 = load i32, ptr %arrayidx1773, align 4, !tbaa !11
  %xor1774 = xor i32 %xor1771, %617
  %W1775 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1776 = getelementptr inbounds [16 x i32], ptr %W1775, i64 0, i64 6
  %618 = load i32, ptr %arrayidx1776, align 4, !tbaa !11
  %xor1777 = xor i32 %xor1774, %618
  %temp1778 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1777, ptr %temp1778, align 4, !tbaa !19
  %temp1779 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %619 = load i32, ptr %temp1779, align 4, !tbaa !19
  %shl1780 = shl i32 %619, 1
  %temp1781 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %620 = load i32, ptr %temp1781, align 4, !tbaa !19
  %and1782 = and i32 %620, -1
  %shr1783 = lshr i32 %and1782, 31
  %or1784 = or i32 %shl1780, %shr1783
  %W1785 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1786 = getelementptr inbounds [16 x i32], ptr %W1785, i64 0, i64 6
  store i32 %or1784, ptr %arrayidx1786, align 4, !tbaa !11
  %add1787 = add i32 %add1766, %or1784
  %B1788 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %621 = load i32, ptr %B1788, align 4, !tbaa !15
  %add1789 = add i32 %621, %add1787
  store i32 %add1789, ptr %B1788, align 4, !tbaa !15
  %D1790 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %622 = load i32, ptr %D1790, align 4, !tbaa !17
  %shl1791 = shl i32 %622, 30
  %D1792 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %623 = load i32, ptr %D1792, align 4, !tbaa !17
  %and1793 = and i32 %623, -1
  %shr1794 = lshr i32 %and1793, 2
  %or1795 = or i32 %shl1791, %shr1794
  %D1796 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or1795, ptr %D1796, align 4, !tbaa !17
  br label %do.cond1797

do.cond1797:                                      ; preds = %do.body1753
  br label %do.end1798

do.end1798:                                       ; preds = %do.cond1797
  br label %do.body1799

do.body1799:                                      ; preds = %do.end1798
  %B1800 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %624 = load i32, ptr %B1800, align 4, !tbaa !15
  %shl1801 = shl i32 %624, 5
  %B1802 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %625 = load i32, ptr %B1802, align 4, !tbaa !15
  %and1803 = and i32 %625, -1
  %shr1804 = lshr i32 %and1803, 27
  %or1805 = or i32 %shl1801, %shr1804
  %C1806 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %626 = load i32, ptr %C1806, align 4, !tbaa !16
  %D1807 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %627 = load i32, ptr %D1807, align 4, !tbaa !17
  %xor1808 = xor i32 %626, %627
  %E1809 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %628 = load i32, ptr %E1809, align 4, !tbaa !18
  %xor1810 = xor i32 %xor1808, %628
  %add1811 = add i32 %or1805, %xor1810
  %add1812 = add i32 %add1811, 1859775393
  %W1813 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1814 = getelementptr inbounds [16 x i32], ptr %W1813, i64 0, i64 4
  %629 = load i32, ptr %arrayidx1814, align 4, !tbaa !11
  %W1815 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1816 = getelementptr inbounds [16 x i32], ptr %W1815, i64 0, i64 15
  %630 = load i32, ptr %arrayidx1816, align 4, !tbaa !11
  %xor1817 = xor i32 %629, %630
  %W1818 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1819 = getelementptr inbounds [16 x i32], ptr %W1818, i64 0, i64 9
  %631 = load i32, ptr %arrayidx1819, align 4, !tbaa !11
  %xor1820 = xor i32 %xor1817, %631
  %W1821 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1822 = getelementptr inbounds [16 x i32], ptr %W1821, i64 0, i64 7
  %632 = load i32, ptr %arrayidx1822, align 4, !tbaa !11
  %xor1823 = xor i32 %xor1820, %632
  %temp1824 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1823, ptr %temp1824, align 4, !tbaa !19
  %temp1825 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %633 = load i32, ptr %temp1825, align 4, !tbaa !19
  %shl1826 = shl i32 %633, 1
  %temp1827 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %634 = load i32, ptr %temp1827, align 4, !tbaa !19
  %and1828 = and i32 %634, -1
  %shr1829 = lshr i32 %and1828, 31
  %or1830 = or i32 %shl1826, %shr1829
  %W1831 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1832 = getelementptr inbounds [16 x i32], ptr %W1831, i64 0, i64 7
  store i32 %or1830, ptr %arrayidx1832, align 4, !tbaa !11
  %add1833 = add i32 %add1812, %or1830
  %A1834 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %635 = load i32, ptr %A1834, align 4, !tbaa !13
  %add1835 = add i32 %635, %add1833
  store i32 %add1835, ptr %A1834, align 4, !tbaa !13
  %C1836 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %636 = load i32, ptr %C1836, align 4, !tbaa !16
  %shl1837 = shl i32 %636, 30
  %C1838 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %637 = load i32, ptr %C1838, align 4, !tbaa !16
  %and1839 = and i32 %637, -1
  %shr1840 = lshr i32 %and1839, 2
  %or1841 = or i32 %shl1837, %shr1840
  %C1842 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or1841, ptr %C1842, align 4, !tbaa !16
  br label %do.cond1843

do.cond1843:                                      ; preds = %do.body1799
  br label %do.end1844

do.end1844:                                       ; preds = %do.cond1843
  br label %do.body1845

do.body1845:                                      ; preds = %do.end1844
  %A1846 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %638 = load i32, ptr %A1846, align 4, !tbaa !13
  %shl1847 = shl i32 %638, 5
  %A1848 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %639 = load i32, ptr %A1848, align 4, !tbaa !13
  %and1849 = and i32 %639, -1
  %shr1850 = lshr i32 %and1849, 27
  %or1851 = or i32 %shl1847, %shr1850
  %B1852 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %640 = load i32, ptr %B1852, align 4, !tbaa !15
  %C1853 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %641 = load i32, ptr %C1853, align 4, !tbaa !16
  %and1854 = and i32 %640, %641
  %D1855 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %642 = load i32, ptr %D1855, align 4, !tbaa !17
  %B1856 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %643 = load i32, ptr %B1856, align 4, !tbaa !15
  %C1857 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %644 = load i32, ptr %C1857, align 4, !tbaa !16
  %or1858 = or i32 %643, %644
  %and1859 = and i32 %642, %or1858
  %or1860 = or i32 %and1854, %and1859
  %add1861 = add i32 %or1851, %or1860
  %add1862 = add i32 %add1861, -1894007588
  %W1863 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1864 = getelementptr inbounds [16 x i32], ptr %W1863, i64 0, i64 5
  %645 = load i32, ptr %arrayidx1864, align 4, !tbaa !11
  %W1865 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1866 = getelementptr inbounds [16 x i32], ptr %W1865, i64 0, i64 0
  %646 = load i32, ptr %arrayidx1866, align 4, !tbaa !11
  %xor1867 = xor i32 %645, %646
  %W1868 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1869 = getelementptr inbounds [16 x i32], ptr %W1868, i64 0, i64 10
  %647 = load i32, ptr %arrayidx1869, align 4, !tbaa !11
  %xor1870 = xor i32 %xor1867, %647
  %W1871 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1872 = getelementptr inbounds [16 x i32], ptr %W1871, i64 0, i64 8
  %648 = load i32, ptr %arrayidx1872, align 4, !tbaa !11
  %xor1873 = xor i32 %xor1870, %648
  %temp1874 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1873, ptr %temp1874, align 4, !tbaa !19
  %temp1875 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %649 = load i32, ptr %temp1875, align 4, !tbaa !19
  %shl1876 = shl i32 %649, 1
  %temp1877 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %650 = load i32, ptr %temp1877, align 4, !tbaa !19
  %and1878 = and i32 %650, -1
  %shr1879 = lshr i32 %and1878, 31
  %or1880 = or i32 %shl1876, %shr1879
  %W1881 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1882 = getelementptr inbounds [16 x i32], ptr %W1881, i64 0, i64 8
  store i32 %or1880, ptr %arrayidx1882, align 4, !tbaa !11
  %add1883 = add i32 %add1862, %or1880
  %E1884 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %651 = load i32, ptr %E1884, align 4, !tbaa !18
  %add1885 = add i32 %651, %add1883
  store i32 %add1885, ptr %E1884, align 4, !tbaa !18
  %B1886 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %652 = load i32, ptr %B1886, align 4, !tbaa !15
  %shl1887 = shl i32 %652, 30
  %B1888 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %653 = load i32, ptr %B1888, align 4, !tbaa !15
  %and1889 = and i32 %653, -1
  %shr1890 = lshr i32 %and1889, 2
  %or1891 = or i32 %shl1887, %shr1890
  %B1892 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or1891, ptr %B1892, align 4, !tbaa !15
  br label %do.cond1893

do.cond1893:                                      ; preds = %do.body1845
  br label %do.end1894

do.end1894:                                       ; preds = %do.cond1893
  br label %do.body1895

do.body1895:                                      ; preds = %do.end1894
  %E1896 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %654 = load i32, ptr %E1896, align 4, !tbaa !18
  %shl1897 = shl i32 %654, 5
  %E1898 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %655 = load i32, ptr %E1898, align 4, !tbaa !18
  %and1899 = and i32 %655, -1
  %shr1900 = lshr i32 %and1899, 27
  %or1901 = or i32 %shl1897, %shr1900
  %A1902 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %656 = load i32, ptr %A1902, align 4, !tbaa !13
  %B1903 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %657 = load i32, ptr %B1903, align 4, !tbaa !15
  %and1904 = and i32 %656, %657
  %C1905 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %658 = load i32, ptr %C1905, align 4, !tbaa !16
  %A1906 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %659 = load i32, ptr %A1906, align 4, !tbaa !13
  %B1907 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %660 = load i32, ptr %B1907, align 4, !tbaa !15
  %or1908 = or i32 %659, %660
  %and1909 = and i32 %658, %or1908
  %or1910 = or i32 %and1904, %and1909
  %add1911 = add i32 %or1901, %or1910
  %add1912 = add i32 %add1911, -1894007588
  %W1913 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1914 = getelementptr inbounds [16 x i32], ptr %W1913, i64 0, i64 6
  %661 = load i32, ptr %arrayidx1914, align 4, !tbaa !11
  %W1915 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1916 = getelementptr inbounds [16 x i32], ptr %W1915, i64 0, i64 1
  %662 = load i32, ptr %arrayidx1916, align 4, !tbaa !11
  %xor1917 = xor i32 %661, %662
  %W1918 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1919 = getelementptr inbounds [16 x i32], ptr %W1918, i64 0, i64 11
  %663 = load i32, ptr %arrayidx1919, align 4, !tbaa !11
  %xor1920 = xor i32 %xor1917, %663
  %W1921 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1922 = getelementptr inbounds [16 x i32], ptr %W1921, i64 0, i64 9
  %664 = load i32, ptr %arrayidx1922, align 4, !tbaa !11
  %xor1923 = xor i32 %xor1920, %664
  %temp1924 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1923, ptr %temp1924, align 4, !tbaa !19
  %temp1925 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %665 = load i32, ptr %temp1925, align 4, !tbaa !19
  %shl1926 = shl i32 %665, 1
  %temp1927 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %666 = load i32, ptr %temp1927, align 4, !tbaa !19
  %and1928 = and i32 %666, -1
  %shr1929 = lshr i32 %and1928, 31
  %or1930 = or i32 %shl1926, %shr1929
  %W1931 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1932 = getelementptr inbounds [16 x i32], ptr %W1931, i64 0, i64 9
  store i32 %or1930, ptr %arrayidx1932, align 4, !tbaa !11
  %add1933 = add i32 %add1912, %or1930
  %D1934 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %667 = load i32, ptr %D1934, align 4, !tbaa !17
  %add1935 = add i32 %667, %add1933
  store i32 %add1935, ptr %D1934, align 4, !tbaa !17
  %A1936 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %668 = load i32, ptr %A1936, align 4, !tbaa !13
  %shl1937 = shl i32 %668, 30
  %A1938 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %669 = load i32, ptr %A1938, align 4, !tbaa !13
  %and1939 = and i32 %669, -1
  %shr1940 = lshr i32 %and1939, 2
  %or1941 = or i32 %shl1937, %shr1940
  %A1942 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or1941, ptr %A1942, align 4, !tbaa !13
  br label %do.cond1943

do.cond1943:                                      ; preds = %do.body1895
  br label %do.end1944

do.end1944:                                       ; preds = %do.cond1943
  br label %do.body1945

do.body1945:                                      ; preds = %do.end1944
  %D1946 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %670 = load i32, ptr %D1946, align 4, !tbaa !17
  %shl1947 = shl i32 %670, 5
  %D1948 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %671 = load i32, ptr %D1948, align 4, !tbaa !17
  %and1949 = and i32 %671, -1
  %shr1950 = lshr i32 %and1949, 27
  %or1951 = or i32 %shl1947, %shr1950
  %E1952 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %672 = load i32, ptr %E1952, align 4, !tbaa !18
  %A1953 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %673 = load i32, ptr %A1953, align 4, !tbaa !13
  %and1954 = and i32 %672, %673
  %B1955 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %674 = load i32, ptr %B1955, align 4, !tbaa !15
  %E1956 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %675 = load i32, ptr %E1956, align 4, !tbaa !18
  %A1957 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %676 = load i32, ptr %A1957, align 4, !tbaa !13
  %or1958 = or i32 %675, %676
  %and1959 = and i32 %674, %or1958
  %or1960 = or i32 %and1954, %and1959
  %add1961 = add i32 %or1951, %or1960
  %add1962 = add i32 %add1961, -1894007588
  %W1963 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1964 = getelementptr inbounds [16 x i32], ptr %W1963, i64 0, i64 7
  %677 = load i32, ptr %arrayidx1964, align 4, !tbaa !11
  %W1965 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1966 = getelementptr inbounds [16 x i32], ptr %W1965, i64 0, i64 2
  %678 = load i32, ptr %arrayidx1966, align 4, !tbaa !11
  %xor1967 = xor i32 %677, %678
  %W1968 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1969 = getelementptr inbounds [16 x i32], ptr %W1968, i64 0, i64 12
  %679 = load i32, ptr %arrayidx1969, align 4, !tbaa !11
  %xor1970 = xor i32 %xor1967, %679
  %W1971 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1972 = getelementptr inbounds [16 x i32], ptr %W1971, i64 0, i64 10
  %680 = load i32, ptr %arrayidx1972, align 4, !tbaa !11
  %xor1973 = xor i32 %xor1970, %680
  %temp1974 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor1973, ptr %temp1974, align 4, !tbaa !19
  %temp1975 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %681 = load i32, ptr %temp1975, align 4, !tbaa !19
  %shl1976 = shl i32 %681, 1
  %temp1977 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %682 = load i32, ptr %temp1977, align 4, !tbaa !19
  %and1978 = and i32 %682, -1
  %shr1979 = lshr i32 %and1978, 31
  %or1980 = or i32 %shl1976, %shr1979
  %W1981 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx1982 = getelementptr inbounds [16 x i32], ptr %W1981, i64 0, i64 10
  store i32 %or1980, ptr %arrayidx1982, align 4, !tbaa !11
  %add1983 = add i32 %add1962, %or1980
  %C1984 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %683 = load i32, ptr %C1984, align 4, !tbaa !16
  %add1985 = add i32 %683, %add1983
  store i32 %add1985, ptr %C1984, align 4, !tbaa !16
  %E1986 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %684 = load i32, ptr %E1986, align 4, !tbaa !18
  %shl1987 = shl i32 %684, 30
  %E1988 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %685 = load i32, ptr %E1988, align 4, !tbaa !18
  %and1989 = and i32 %685, -1
  %shr1990 = lshr i32 %and1989, 2
  %or1991 = or i32 %shl1987, %shr1990
  %E1992 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or1991, ptr %E1992, align 4, !tbaa !18
  br label %do.cond1993

do.cond1993:                                      ; preds = %do.body1945
  br label %do.end1994

do.end1994:                                       ; preds = %do.cond1993
  br label %do.body1995

do.body1995:                                      ; preds = %do.end1994
  %C1996 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %686 = load i32, ptr %C1996, align 4, !tbaa !16
  %shl1997 = shl i32 %686, 5
  %C1998 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %687 = load i32, ptr %C1998, align 4, !tbaa !16
  %and1999 = and i32 %687, -1
  %shr2000 = lshr i32 %and1999, 27
  %or2001 = or i32 %shl1997, %shr2000
  %D2002 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %688 = load i32, ptr %D2002, align 4, !tbaa !17
  %E2003 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %689 = load i32, ptr %E2003, align 4, !tbaa !18
  %and2004 = and i32 %688, %689
  %A2005 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %690 = load i32, ptr %A2005, align 4, !tbaa !13
  %D2006 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %691 = load i32, ptr %D2006, align 4, !tbaa !17
  %E2007 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %692 = load i32, ptr %E2007, align 4, !tbaa !18
  %or2008 = or i32 %691, %692
  %and2009 = and i32 %690, %or2008
  %or2010 = or i32 %and2004, %and2009
  %add2011 = add i32 %or2001, %or2010
  %add2012 = add i32 %add2011, -1894007588
  %W2013 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2014 = getelementptr inbounds [16 x i32], ptr %W2013, i64 0, i64 8
  %693 = load i32, ptr %arrayidx2014, align 4, !tbaa !11
  %W2015 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2016 = getelementptr inbounds [16 x i32], ptr %W2015, i64 0, i64 3
  %694 = load i32, ptr %arrayidx2016, align 4, !tbaa !11
  %xor2017 = xor i32 %693, %694
  %W2018 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2019 = getelementptr inbounds [16 x i32], ptr %W2018, i64 0, i64 13
  %695 = load i32, ptr %arrayidx2019, align 4, !tbaa !11
  %xor2020 = xor i32 %xor2017, %695
  %W2021 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2022 = getelementptr inbounds [16 x i32], ptr %W2021, i64 0, i64 11
  %696 = load i32, ptr %arrayidx2022, align 4, !tbaa !11
  %xor2023 = xor i32 %xor2020, %696
  %temp2024 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2023, ptr %temp2024, align 4, !tbaa !19
  %temp2025 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %697 = load i32, ptr %temp2025, align 4, !tbaa !19
  %shl2026 = shl i32 %697, 1
  %temp2027 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %698 = load i32, ptr %temp2027, align 4, !tbaa !19
  %and2028 = and i32 %698, -1
  %shr2029 = lshr i32 %and2028, 31
  %or2030 = or i32 %shl2026, %shr2029
  %W2031 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2032 = getelementptr inbounds [16 x i32], ptr %W2031, i64 0, i64 11
  store i32 %or2030, ptr %arrayidx2032, align 4, !tbaa !11
  %add2033 = add i32 %add2012, %or2030
  %B2034 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %699 = load i32, ptr %B2034, align 4, !tbaa !15
  %add2035 = add i32 %699, %add2033
  store i32 %add2035, ptr %B2034, align 4, !tbaa !15
  %D2036 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %700 = load i32, ptr %D2036, align 4, !tbaa !17
  %shl2037 = shl i32 %700, 30
  %D2038 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %701 = load i32, ptr %D2038, align 4, !tbaa !17
  %and2039 = and i32 %701, -1
  %shr2040 = lshr i32 %and2039, 2
  %or2041 = or i32 %shl2037, %shr2040
  %D2042 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or2041, ptr %D2042, align 4, !tbaa !17
  br label %do.cond2043

do.cond2043:                                      ; preds = %do.body1995
  br label %do.end2044

do.end2044:                                       ; preds = %do.cond2043
  br label %do.body2045

do.body2045:                                      ; preds = %do.end2044
  %B2046 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %702 = load i32, ptr %B2046, align 4, !tbaa !15
  %shl2047 = shl i32 %702, 5
  %B2048 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %703 = load i32, ptr %B2048, align 4, !tbaa !15
  %and2049 = and i32 %703, -1
  %shr2050 = lshr i32 %and2049, 27
  %or2051 = or i32 %shl2047, %shr2050
  %C2052 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %704 = load i32, ptr %C2052, align 4, !tbaa !16
  %D2053 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %705 = load i32, ptr %D2053, align 4, !tbaa !17
  %and2054 = and i32 %704, %705
  %E2055 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %706 = load i32, ptr %E2055, align 4, !tbaa !18
  %C2056 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %707 = load i32, ptr %C2056, align 4, !tbaa !16
  %D2057 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %708 = load i32, ptr %D2057, align 4, !tbaa !17
  %or2058 = or i32 %707, %708
  %and2059 = and i32 %706, %or2058
  %or2060 = or i32 %and2054, %and2059
  %add2061 = add i32 %or2051, %or2060
  %add2062 = add i32 %add2061, -1894007588
  %W2063 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2064 = getelementptr inbounds [16 x i32], ptr %W2063, i64 0, i64 9
  %709 = load i32, ptr %arrayidx2064, align 4, !tbaa !11
  %W2065 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2066 = getelementptr inbounds [16 x i32], ptr %W2065, i64 0, i64 4
  %710 = load i32, ptr %arrayidx2066, align 4, !tbaa !11
  %xor2067 = xor i32 %709, %710
  %W2068 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2069 = getelementptr inbounds [16 x i32], ptr %W2068, i64 0, i64 14
  %711 = load i32, ptr %arrayidx2069, align 4, !tbaa !11
  %xor2070 = xor i32 %xor2067, %711
  %W2071 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2072 = getelementptr inbounds [16 x i32], ptr %W2071, i64 0, i64 12
  %712 = load i32, ptr %arrayidx2072, align 4, !tbaa !11
  %xor2073 = xor i32 %xor2070, %712
  %temp2074 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2073, ptr %temp2074, align 4, !tbaa !19
  %temp2075 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %713 = load i32, ptr %temp2075, align 4, !tbaa !19
  %shl2076 = shl i32 %713, 1
  %temp2077 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %714 = load i32, ptr %temp2077, align 4, !tbaa !19
  %and2078 = and i32 %714, -1
  %shr2079 = lshr i32 %and2078, 31
  %or2080 = or i32 %shl2076, %shr2079
  %W2081 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2082 = getelementptr inbounds [16 x i32], ptr %W2081, i64 0, i64 12
  store i32 %or2080, ptr %arrayidx2082, align 4, !tbaa !11
  %add2083 = add i32 %add2062, %or2080
  %A2084 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %715 = load i32, ptr %A2084, align 4, !tbaa !13
  %add2085 = add i32 %715, %add2083
  store i32 %add2085, ptr %A2084, align 4, !tbaa !13
  %C2086 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %716 = load i32, ptr %C2086, align 4, !tbaa !16
  %shl2087 = shl i32 %716, 30
  %C2088 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %717 = load i32, ptr %C2088, align 4, !tbaa !16
  %and2089 = and i32 %717, -1
  %shr2090 = lshr i32 %and2089, 2
  %or2091 = or i32 %shl2087, %shr2090
  %C2092 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or2091, ptr %C2092, align 4, !tbaa !16
  br label %do.cond2093

do.cond2093:                                      ; preds = %do.body2045
  br label %do.end2094

do.end2094:                                       ; preds = %do.cond2093
  br label %do.body2095

do.body2095:                                      ; preds = %do.end2094
  %A2096 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %718 = load i32, ptr %A2096, align 4, !tbaa !13
  %shl2097 = shl i32 %718, 5
  %A2098 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %719 = load i32, ptr %A2098, align 4, !tbaa !13
  %and2099 = and i32 %719, -1
  %shr2100 = lshr i32 %and2099, 27
  %or2101 = or i32 %shl2097, %shr2100
  %B2102 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %720 = load i32, ptr %B2102, align 4, !tbaa !15
  %C2103 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %721 = load i32, ptr %C2103, align 4, !tbaa !16
  %and2104 = and i32 %720, %721
  %D2105 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %722 = load i32, ptr %D2105, align 4, !tbaa !17
  %B2106 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %723 = load i32, ptr %B2106, align 4, !tbaa !15
  %C2107 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %724 = load i32, ptr %C2107, align 4, !tbaa !16
  %or2108 = or i32 %723, %724
  %and2109 = and i32 %722, %or2108
  %or2110 = or i32 %and2104, %and2109
  %add2111 = add i32 %or2101, %or2110
  %add2112 = add i32 %add2111, -1894007588
  %W2113 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2114 = getelementptr inbounds [16 x i32], ptr %W2113, i64 0, i64 10
  %725 = load i32, ptr %arrayidx2114, align 4, !tbaa !11
  %W2115 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2116 = getelementptr inbounds [16 x i32], ptr %W2115, i64 0, i64 5
  %726 = load i32, ptr %arrayidx2116, align 4, !tbaa !11
  %xor2117 = xor i32 %725, %726
  %W2118 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2119 = getelementptr inbounds [16 x i32], ptr %W2118, i64 0, i64 15
  %727 = load i32, ptr %arrayidx2119, align 4, !tbaa !11
  %xor2120 = xor i32 %xor2117, %727
  %W2121 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2122 = getelementptr inbounds [16 x i32], ptr %W2121, i64 0, i64 13
  %728 = load i32, ptr %arrayidx2122, align 4, !tbaa !11
  %xor2123 = xor i32 %xor2120, %728
  %temp2124 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2123, ptr %temp2124, align 4, !tbaa !19
  %temp2125 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %729 = load i32, ptr %temp2125, align 4, !tbaa !19
  %shl2126 = shl i32 %729, 1
  %temp2127 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %730 = load i32, ptr %temp2127, align 4, !tbaa !19
  %and2128 = and i32 %730, -1
  %shr2129 = lshr i32 %and2128, 31
  %or2130 = or i32 %shl2126, %shr2129
  %W2131 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2132 = getelementptr inbounds [16 x i32], ptr %W2131, i64 0, i64 13
  store i32 %or2130, ptr %arrayidx2132, align 4, !tbaa !11
  %add2133 = add i32 %add2112, %or2130
  %E2134 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %731 = load i32, ptr %E2134, align 4, !tbaa !18
  %add2135 = add i32 %731, %add2133
  store i32 %add2135, ptr %E2134, align 4, !tbaa !18
  %B2136 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %732 = load i32, ptr %B2136, align 4, !tbaa !15
  %shl2137 = shl i32 %732, 30
  %B2138 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %733 = load i32, ptr %B2138, align 4, !tbaa !15
  %and2139 = and i32 %733, -1
  %shr2140 = lshr i32 %and2139, 2
  %or2141 = or i32 %shl2137, %shr2140
  %B2142 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or2141, ptr %B2142, align 4, !tbaa !15
  br label %do.cond2143

do.cond2143:                                      ; preds = %do.body2095
  br label %do.end2144

do.end2144:                                       ; preds = %do.cond2143
  br label %do.body2145

do.body2145:                                      ; preds = %do.end2144
  %E2146 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %734 = load i32, ptr %E2146, align 4, !tbaa !18
  %shl2147 = shl i32 %734, 5
  %E2148 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %735 = load i32, ptr %E2148, align 4, !tbaa !18
  %and2149 = and i32 %735, -1
  %shr2150 = lshr i32 %and2149, 27
  %or2151 = or i32 %shl2147, %shr2150
  %A2152 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %736 = load i32, ptr %A2152, align 4, !tbaa !13
  %B2153 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %737 = load i32, ptr %B2153, align 4, !tbaa !15
  %and2154 = and i32 %736, %737
  %C2155 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %738 = load i32, ptr %C2155, align 4, !tbaa !16
  %A2156 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %739 = load i32, ptr %A2156, align 4, !tbaa !13
  %B2157 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %740 = load i32, ptr %B2157, align 4, !tbaa !15
  %or2158 = or i32 %739, %740
  %and2159 = and i32 %738, %or2158
  %or2160 = or i32 %and2154, %and2159
  %add2161 = add i32 %or2151, %or2160
  %add2162 = add i32 %add2161, -1894007588
  %W2163 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2164 = getelementptr inbounds [16 x i32], ptr %W2163, i64 0, i64 11
  %741 = load i32, ptr %arrayidx2164, align 4, !tbaa !11
  %W2165 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2166 = getelementptr inbounds [16 x i32], ptr %W2165, i64 0, i64 6
  %742 = load i32, ptr %arrayidx2166, align 4, !tbaa !11
  %xor2167 = xor i32 %741, %742
  %W2168 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2169 = getelementptr inbounds [16 x i32], ptr %W2168, i64 0, i64 0
  %743 = load i32, ptr %arrayidx2169, align 4, !tbaa !11
  %xor2170 = xor i32 %xor2167, %743
  %W2171 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2172 = getelementptr inbounds [16 x i32], ptr %W2171, i64 0, i64 14
  %744 = load i32, ptr %arrayidx2172, align 4, !tbaa !11
  %xor2173 = xor i32 %xor2170, %744
  %temp2174 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2173, ptr %temp2174, align 4, !tbaa !19
  %temp2175 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %745 = load i32, ptr %temp2175, align 4, !tbaa !19
  %shl2176 = shl i32 %745, 1
  %temp2177 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %746 = load i32, ptr %temp2177, align 4, !tbaa !19
  %and2178 = and i32 %746, -1
  %shr2179 = lshr i32 %and2178, 31
  %or2180 = or i32 %shl2176, %shr2179
  %W2181 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2182 = getelementptr inbounds [16 x i32], ptr %W2181, i64 0, i64 14
  store i32 %or2180, ptr %arrayidx2182, align 4, !tbaa !11
  %add2183 = add i32 %add2162, %or2180
  %D2184 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %747 = load i32, ptr %D2184, align 4, !tbaa !17
  %add2185 = add i32 %747, %add2183
  store i32 %add2185, ptr %D2184, align 4, !tbaa !17
  %A2186 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %748 = load i32, ptr %A2186, align 4, !tbaa !13
  %shl2187 = shl i32 %748, 30
  %A2188 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %749 = load i32, ptr %A2188, align 4, !tbaa !13
  %and2189 = and i32 %749, -1
  %shr2190 = lshr i32 %and2189, 2
  %or2191 = or i32 %shl2187, %shr2190
  %A2192 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or2191, ptr %A2192, align 4, !tbaa !13
  br label %do.cond2193

do.cond2193:                                      ; preds = %do.body2145
  br label %do.end2194

do.end2194:                                       ; preds = %do.cond2193
  br label %do.body2195

do.body2195:                                      ; preds = %do.end2194
  %D2196 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %750 = load i32, ptr %D2196, align 4, !tbaa !17
  %shl2197 = shl i32 %750, 5
  %D2198 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %751 = load i32, ptr %D2198, align 4, !tbaa !17
  %and2199 = and i32 %751, -1
  %shr2200 = lshr i32 %and2199, 27
  %or2201 = or i32 %shl2197, %shr2200
  %E2202 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %752 = load i32, ptr %E2202, align 4, !tbaa !18
  %A2203 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %753 = load i32, ptr %A2203, align 4, !tbaa !13
  %and2204 = and i32 %752, %753
  %B2205 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %754 = load i32, ptr %B2205, align 4, !tbaa !15
  %E2206 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %755 = load i32, ptr %E2206, align 4, !tbaa !18
  %A2207 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %756 = load i32, ptr %A2207, align 4, !tbaa !13
  %or2208 = or i32 %755, %756
  %and2209 = and i32 %754, %or2208
  %or2210 = or i32 %and2204, %and2209
  %add2211 = add i32 %or2201, %or2210
  %add2212 = add i32 %add2211, -1894007588
  %W2213 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2214 = getelementptr inbounds [16 x i32], ptr %W2213, i64 0, i64 12
  %757 = load i32, ptr %arrayidx2214, align 4, !tbaa !11
  %W2215 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2216 = getelementptr inbounds [16 x i32], ptr %W2215, i64 0, i64 7
  %758 = load i32, ptr %arrayidx2216, align 4, !tbaa !11
  %xor2217 = xor i32 %757, %758
  %W2218 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2219 = getelementptr inbounds [16 x i32], ptr %W2218, i64 0, i64 1
  %759 = load i32, ptr %arrayidx2219, align 4, !tbaa !11
  %xor2220 = xor i32 %xor2217, %759
  %W2221 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2222 = getelementptr inbounds [16 x i32], ptr %W2221, i64 0, i64 15
  %760 = load i32, ptr %arrayidx2222, align 4, !tbaa !11
  %xor2223 = xor i32 %xor2220, %760
  %temp2224 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2223, ptr %temp2224, align 4, !tbaa !19
  %temp2225 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %761 = load i32, ptr %temp2225, align 4, !tbaa !19
  %shl2226 = shl i32 %761, 1
  %temp2227 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %762 = load i32, ptr %temp2227, align 4, !tbaa !19
  %and2228 = and i32 %762, -1
  %shr2229 = lshr i32 %and2228, 31
  %or2230 = or i32 %shl2226, %shr2229
  %W2231 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2232 = getelementptr inbounds [16 x i32], ptr %W2231, i64 0, i64 15
  store i32 %or2230, ptr %arrayidx2232, align 4, !tbaa !11
  %add2233 = add i32 %add2212, %or2230
  %C2234 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %763 = load i32, ptr %C2234, align 4, !tbaa !16
  %add2235 = add i32 %763, %add2233
  store i32 %add2235, ptr %C2234, align 4, !tbaa !16
  %E2236 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %764 = load i32, ptr %E2236, align 4, !tbaa !18
  %shl2237 = shl i32 %764, 30
  %E2238 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %765 = load i32, ptr %E2238, align 4, !tbaa !18
  %and2239 = and i32 %765, -1
  %shr2240 = lshr i32 %and2239, 2
  %or2241 = or i32 %shl2237, %shr2240
  %E2242 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or2241, ptr %E2242, align 4, !tbaa !18
  br label %do.cond2243

do.cond2243:                                      ; preds = %do.body2195
  br label %do.end2244

do.end2244:                                       ; preds = %do.cond2243
  br label %do.body2245

do.body2245:                                      ; preds = %do.end2244
  %C2246 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %766 = load i32, ptr %C2246, align 4, !tbaa !16
  %shl2247 = shl i32 %766, 5
  %C2248 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %767 = load i32, ptr %C2248, align 4, !tbaa !16
  %and2249 = and i32 %767, -1
  %shr2250 = lshr i32 %and2249, 27
  %or2251 = or i32 %shl2247, %shr2250
  %D2252 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %768 = load i32, ptr %D2252, align 4, !tbaa !17
  %E2253 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %769 = load i32, ptr %E2253, align 4, !tbaa !18
  %and2254 = and i32 %768, %769
  %A2255 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %770 = load i32, ptr %A2255, align 4, !tbaa !13
  %D2256 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %771 = load i32, ptr %D2256, align 4, !tbaa !17
  %E2257 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %772 = load i32, ptr %E2257, align 4, !tbaa !18
  %or2258 = or i32 %771, %772
  %and2259 = and i32 %770, %or2258
  %or2260 = or i32 %and2254, %and2259
  %add2261 = add i32 %or2251, %or2260
  %add2262 = add i32 %add2261, -1894007588
  %W2263 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2264 = getelementptr inbounds [16 x i32], ptr %W2263, i64 0, i64 13
  %773 = load i32, ptr %arrayidx2264, align 4, !tbaa !11
  %W2265 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2266 = getelementptr inbounds [16 x i32], ptr %W2265, i64 0, i64 8
  %774 = load i32, ptr %arrayidx2266, align 4, !tbaa !11
  %xor2267 = xor i32 %773, %774
  %W2268 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2269 = getelementptr inbounds [16 x i32], ptr %W2268, i64 0, i64 2
  %775 = load i32, ptr %arrayidx2269, align 4, !tbaa !11
  %xor2270 = xor i32 %xor2267, %775
  %W2271 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2272 = getelementptr inbounds [16 x i32], ptr %W2271, i64 0, i64 0
  %776 = load i32, ptr %arrayidx2272, align 4, !tbaa !11
  %xor2273 = xor i32 %xor2270, %776
  %temp2274 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2273, ptr %temp2274, align 4, !tbaa !19
  %temp2275 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %777 = load i32, ptr %temp2275, align 4, !tbaa !19
  %shl2276 = shl i32 %777, 1
  %temp2277 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %778 = load i32, ptr %temp2277, align 4, !tbaa !19
  %and2278 = and i32 %778, -1
  %shr2279 = lshr i32 %and2278, 31
  %or2280 = or i32 %shl2276, %shr2279
  %W2281 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2282 = getelementptr inbounds [16 x i32], ptr %W2281, i64 0, i64 0
  store i32 %or2280, ptr %arrayidx2282, align 4, !tbaa !11
  %add2283 = add i32 %add2262, %or2280
  %B2284 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %779 = load i32, ptr %B2284, align 4, !tbaa !15
  %add2285 = add i32 %779, %add2283
  store i32 %add2285, ptr %B2284, align 4, !tbaa !15
  %D2286 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %780 = load i32, ptr %D2286, align 4, !tbaa !17
  %shl2287 = shl i32 %780, 30
  %D2288 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %781 = load i32, ptr %D2288, align 4, !tbaa !17
  %and2289 = and i32 %781, -1
  %shr2290 = lshr i32 %and2289, 2
  %or2291 = or i32 %shl2287, %shr2290
  %D2292 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or2291, ptr %D2292, align 4, !tbaa !17
  br label %do.cond2293

do.cond2293:                                      ; preds = %do.body2245
  br label %do.end2294

do.end2294:                                       ; preds = %do.cond2293
  br label %do.body2295

do.body2295:                                      ; preds = %do.end2294
  %B2296 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %782 = load i32, ptr %B2296, align 4, !tbaa !15
  %shl2297 = shl i32 %782, 5
  %B2298 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %783 = load i32, ptr %B2298, align 4, !tbaa !15
  %and2299 = and i32 %783, -1
  %shr2300 = lshr i32 %and2299, 27
  %or2301 = or i32 %shl2297, %shr2300
  %C2302 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %784 = load i32, ptr %C2302, align 4, !tbaa !16
  %D2303 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %785 = load i32, ptr %D2303, align 4, !tbaa !17
  %and2304 = and i32 %784, %785
  %E2305 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %786 = load i32, ptr %E2305, align 4, !tbaa !18
  %C2306 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %787 = load i32, ptr %C2306, align 4, !tbaa !16
  %D2307 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %788 = load i32, ptr %D2307, align 4, !tbaa !17
  %or2308 = or i32 %787, %788
  %and2309 = and i32 %786, %or2308
  %or2310 = or i32 %and2304, %and2309
  %add2311 = add i32 %or2301, %or2310
  %add2312 = add i32 %add2311, -1894007588
  %W2313 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2314 = getelementptr inbounds [16 x i32], ptr %W2313, i64 0, i64 14
  %789 = load i32, ptr %arrayidx2314, align 4, !tbaa !11
  %W2315 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2316 = getelementptr inbounds [16 x i32], ptr %W2315, i64 0, i64 9
  %790 = load i32, ptr %arrayidx2316, align 4, !tbaa !11
  %xor2317 = xor i32 %789, %790
  %W2318 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2319 = getelementptr inbounds [16 x i32], ptr %W2318, i64 0, i64 3
  %791 = load i32, ptr %arrayidx2319, align 4, !tbaa !11
  %xor2320 = xor i32 %xor2317, %791
  %W2321 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2322 = getelementptr inbounds [16 x i32], ptr %W2321, i64 0, i64 1
  %792 = load i32, ptr %arrayidx2322, align 4, !tbaa !11
  %xor2323 = xor i32 %xor2320, %792
  %temp2324 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2323, ptr %temp2324, align 4, !tbaa !19
  %temp2325 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %793 = load i32, ptr %temp2325, align 4, !tbaa !19
  %shl2326 = shl i32 %793, 1
  %temp2327 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %794 = load i32, ptr %temp2327, align 4, !tbaa !19
  %and2328 = and i32 %794, -1
  %shr2329 = lshr i32 %and2328, 31
  %or2330 = or i32 %shl2326, %shr2329
  %W2331 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2332 = getelementptr inbounds [16 x i32], ptr %W2331, i64 0, i64 1
  store i32 %or2330, ptr %arrayidx2332, align 4, !tbaa !11
  %add2333 = add i32 %add2312, %or2330
  %A2334 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %795 = load i32, ptr %A2334, align 4, !tbaa !13
  %add2335 = add i32 %795, %add2333
  store i32 %add2335, ptr %A2334, align 4, !tbaa !13
  %C2336 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %796 = load i32, ptr %C2336, align 4, !tbaa !16
  %shl2337 = shl i32 %796, 30
  %C2338 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %797 = load i32, ptr %C2338, align 4, !tbaa !16
  %and2339 = and i32 %797, -1
  %shr2340 = lshr i32 %and2339, 2
  %or2341 = or i32 %shl2337, %shr2340
  %C2342 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or2341, ptr %C2342, align 4, !tbaa !16
  br label %do.cond2343

do.cond2343:                                      ; preds = %do.body2295
  br label %do.end2344

do.end2344:                                       ; preds = %do.cond2343
  br label %do.body2345

do.body2345:                                      ; preds = %do.end2344
  %A2346 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %798 = load i32, ptr %A2346, align 4, !tbaa !13
  %shl2347 = shl i32 %798, 5
  %A2348 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %799 = load i32, ptr %A2348, align 4, !tbaa !13
  %and2349 = and i32 %799, -1
  %shr2350 = lshr i32 %and2349, 27
  %or2351 = or i32 %shl2347, %shr2350
  %B2352 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %800 = load i32, ptr %B2352, align 4, !tbaa !15
  %C2353 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %801 = load i32, ptr %C2353, align 4, !tbaa !16
  %and2354 = and i32 %800, %801
  %D2355 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %802 = load i32, ptr %D2355, align 4, !tbaa !17
  %B2356 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %803 = load i32, ptr %B2356, align 4, !tbaa !15
  %C2357 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %804 = load i32, ptr %C2357, align 4, !tbaa !16
  %or2358 = or i32 %803, %804
  %and2359 = and i32 %802, %or2358
  %or2360 = or i32 %and2354, %and2359
  %add2361 = add i32 %or2351, %or2360
  %add2362 = add i32 %add2361, -1894007588
  %W2363 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2364 = getelementptr inbounds [16 x i32], ptr %W2363, i64 0, i64 15
  %805 = load i32, ptr %arrayidx2364, align 4, !tbaa !11
  %W2365 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2366 = getelementptr inbounds [16 x i32], ptr %W2365, i64 0, i64 10
  %806 = load i32, ptr %arrayidx2366, align 4, !tbaa !11
  %xor2367 = xor i32 %805, %806
  %W2368 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2369 = getelementptr inbounds [16 x i32], ptr %W2368, i64 0, i64 4
  %807 = load i32, ptr %arrayidx2369, align 4, !tbaa !11
  %xor2370 = xor i32 %xor2367, %807
  %W2371 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2372 = getelementptr inbounds [16 x i32], ptr %W2371, i64 0, i64 2
  %808 = load i32, ptr %arrayidx2372, align 4, !tbaa !11
  %xor2373 = xor i32 %xor2370, %808
  %temp2374 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2373, ptr %temp2374, align 4, !tbaa !19
  %temp2375 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %809 = load i32, ptr %temp2375, align 4, !tbaa !19
  %shl2376 = shl i32 %809, 1
  %temp2377 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %810 = load i32, ptr %temp2377, align 4, !tbaa !19
  %and2378 = and i32 %810, -1
  %shr2379 = lshr i32 %and2378, 31
  %or2380 = or i32 %shl2376, %shr2379
  %W2381 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2382 = getelementptr inbounds [16 x i32], ptr %W2381, i64 0, i64 2
  store i32 %or2380, ptr %arrayidx2382, align 4, !tbaa !11
  %add2383 = add i32 %add2362, %or2380
  %E2384 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %811 = load i32, ptr %E2384, align 4, !tbaa !18
  %add2385 = add i32 %811, %add2383
  store i32 %add2385, ptr %E2384, align 4, !tbaa !18
  %B2386 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %812 = load i32, ptr %B2386, align 4, !tbaa !15
  %shl2387 = shl i32 %812, 30
  %B2388 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %813 = load i32, ptr %B2388, align 4, !tbaa !15
  %and2389 = and i32 %813, -1
  %shr2390 = lshr i32 %and2389, 2
  %or2391 = or i32 %shl2387, %shr2390
  %B2392 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or2391, ptr %B2392, align 4, !tbaa !15
  br label %do.cond2393

do.cond2393:                                      ; preds = %do.body2345
  br label %do.end2394

do.end2394:                                       ; preds = %do.cond2393
  br label %do.body2395

do.body2395:                                      ; preds = %do.end2394
  %E2396 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %814 = load i32, ptr %E2396, align 4, !tbaa !18
  %shl2397 = shl i32 %814, 5
  %E2398 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %815 = load i32, ptr %E2398, align 4, !tbaa !18
  %and2399 = and i32 %815, -1
  %shr2400 = lshr i32 %and2399, 27
  %or2401 = or i32 %shl2397, %shr2400
  %A2402 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %816 = load i32, ptr %A2402, align 4, !tbaa !13
  %B2403 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %817 = load i32, ptr %B2403, align 4, !tbaa !15
  %and2404 = and i32 %816, %817
  %C2405 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %818 = load i32, ptr %C2405, align 4, !tbaa !16
  %A2406 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %819 = load i32, ptr %A2406, align 4, !tbaa !13
  %B2407 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %820 = load i32, ptr %B2407, align 4, !tbaa !15
  %or2408 = or i32 %819, %820
  %and2409 = and i32 %818, %or2408
  %or2410 = or i32 %and2404, %and2409
  %add2411 = add i32 %or2401, %or2410
  %add2412 = add i32 %add2411, -1894007588
  %W2413 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2414 = getelementptr inbounds [16 x i32], ptr %W2413, i64 0, i64 0
  %821 = load i32, ptr %arrayidx2414, align 4, !tbaa !11
  %W2415 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2416 = getelementptr inbounds [16 x i32], ptr %W2415, i64 0, i64 11
  %822 = load i32, ptr %arrayidx2416, align 4, !tbaa !11
  %xor2417 = xor i32 %821, %822
  %W2418 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2419 = getelementptr inbounds [16 x i32], ptr %W2418, i64 0, i64 5
  %823 = load i32, ptr %arrayidx2419, align 4, !tbaa !11
  %xor2420 = xor i32 %xor2417, %823
  %W2421 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2422 = getelementptr inbounds [16 x i32], ptr %W2421, i64 0, i64 3
  %824 = load i32, ptr %arrayidx2422, align 4, !tbaa !11
  %xor2423 = xor i32 %xor2420, %824
  %temp2424 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2423, ptr %temp2424, align 4, !tbaa !19
  %temp2425 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %825 = load i32, ptr %temp2425, align 4, !tbaa !19
  %shl2426 = shl i32 %825, 1
  %temp2427 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %826 = load i32, ptr %temp2427, align 4, !tbaa !19
  %and2428 = and i32 %826, -1
  %shr2429 = lshr i32 %and2428, 31
  %or2430 = or i32 %shl2426, %shr2429
  %W2431 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2432 = getelementptr inbounds [16 x i32], ptr %W2431, i64 0, i64 3
  store i32 %or2430, ptr %arrayidx2432, align 4, !tbaa !11
  %add2433 = add i32 %add2412, %or2430
  %D2434 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %827 = load i32, ptr %D2434, align 4, !tbaa !17
  %add2435 = add i32 %827, %add2433
  store i32 %add2435, ptr %D2434, align 4, !tbaa !17
  %A2436 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %828 = load i32, ptr %A2436, align 4, !tbaa !13
  %shl2437 = shl i32 %828, 30
  %A2438 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %829 = load i32, ptr %A2438, align 4, !tbaa !13
  %and2439 = and i32 %829, -1
  %shr2440 = lshr i32 %and2439, 2
  %or2441 = or i32 %shl2437, %shr2440
  %A2442 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or2441, ptr %A2442, align 4, !tbaa !13
  br label %do.cond2443

do.cond2443:                                      ; preds = %do.body2395
  br label %do.end2444

do.end2444:                                       ; preds = %do.cond2443
  br label %do.body2445

do.body2445:                                      ; preds = %do.end2444
  %D2446 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %830 = load i32, ptr %D2446, align 4, !tbaa !17
  %shl2447 = shl i32 %830, 5
  %D2448 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %831 = load i32, ptr %D2448, align 4, !tbaa !17
  %and2449 = and i32 %831, -1
  %shr2450 = lshr i32 %and2449, 27
  %or2451 = or i32 %shl2447, %shr2450
  %E2452 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %832 = load i32, ptr %E2452, align 4, !tbaa !18
  %A2453 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %833 = load i32, ptr %A2453, align 4, !tbaa !13
  %and2454 = and i32 %832, %833
  %B2455 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %834 = load i32, ptr %B2455, align 4, !tbaa !15
  %E2456 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %835 = load i32, ptr %E2456, align 4, !tbaa !18
  %A2457 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %836 = load i32, ptr %A2457, align 4, !tbaa !13
  %or2458 = or i32 %835, %836
  %and2459 = and i32 %834, %or2458
  %or2460 = or i32 %and2454, %and2459
  %add2461 = add i32 %or2451, %or2460
  %add2462 = add i32 %add2461, -1894007588
  %W2463 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2464 = getelementptr inbounds [16 x i32], ptr %W2463, i64 0, i64 1
  %837 = load i32, ptr %arrayidx2464, align 4, !tbaa !11
  %W2465 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2466 = getelementptr inbounds [16 x i32], ptr %W2465, i64 0, i64 12
  %838 = load i32, ptr %arrayidx2466, align 4, !tbaa !11
  %xor2467 = xor i32 %837, %838
  %W2468 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2469 = getelementptr inbounds [16 x i32], ptr %W2468, i64 0, i64 6
  %839 = load i32, ptr %arrayidx2469, align 4, !tbaa !11
  %xor2470 = xor i32 %xor2467, %839
  %W2471 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2472 = getelementptr inbounds [16 x i32], ptr %W2471, i64 0, i64 4
  %840 = load i32, ptr %arrayidx2472, align 4, !tbaa !11
  %xor2473 = xor i32 %xor2470, %840
  %temp2474 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2473, ptr %temp2474, align 4, !tbaa !19
  %temp2475 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %841 = load i32, ptr %temp2475, align 4, !tbaa !19
  %shl2476 = shl i32 %841, 1
  %temp2477 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %842 = load i32, ptr %temp2477, align 4, !tbaa !19
  %and2478 = and i32 %842, -1
  %shr2479 = lshr i32 %and2478, 31
  %or2480 = or i32 %shl2476, %shr2479
  %W2481 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2482 = getelementptr inbounds [16 x i32], ptr %W2481, i64 0, i64 4
  store i32 %or2480, ptr %arrayidx2482, align 4, !tbaa !11
  %add2483 = add i32 %add2462, %or2480
  %C2484 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %843 = load i32, ptr %C2484, align 4, !tbaa !16
  %add2485 = add i32 %843, %add2483
  store i32 %add2485, ptr %C2484, align 4, !tbaa !16
  %E2486 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %844 = load i32, ptr %E2486, align 4, !tbaa !18
  %shl2487 = shl i32 %844, 30
  %E2488 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %845 = load i32, ptr %E2488, align 4, !tbaa !18
  %and2489 = and i32 %845, -1
  %shr2490 = lshr i32 %and2489, 2
  %or2491 = or i32 %shl2487, %shr2490
  %E2492 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or2491, ptr %E2492, align 4, !tbaa !18
  br label %do.cond2493

do.cond2493:                                      ; preds = %do.body2445
  br label %do.end2494

do.end2494:                                       ; preds = %do.cond2493
  br label %do.body2495

do.body2495:                                      ; preds = %do.end2494
  %C2496 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %846 = load i32, ptr %C2496, align 4, !tbaa !16
  %shl2497 = shl i32 %846, 5
  %C2498 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %847 = load i32, ptr %C2498, align 4, !tbaa !16
  %and2499 = and i32 %847, -1
  %shr2500 = lshr i32 %and2499, 27
  %or2501 = or i32 %shl2497, %shr2500
  %D2502 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %848 = load i32, ptr %D2502, align 4, !tbaa !17
  %E2503 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %849 = load i32, ptr %E2503, align 4, !tbaa !18
  %and2504 = and i32 %848, %849
  %A2505 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %850 = load i32, ptr %A2505, align 4, !tbaa !13
  %D2506 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %851 = load i32, ptr %D2506, align 4, !tbaa !17
  %E2507 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %852 = load i32, ptr %E2507, align 4, !tbaa !18
  %or2508 = or i32 %851, %852
  %and2509 = and i32 %850, %or2508
  %or2510 = or i32 %and2504, %and2509
  %add2511 = add i32 %or2501, %or2510
  %add2512 = add i32 %add2511, -1894007588
  %W2513 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2514 = getelementptr inbounds [16 x i32], ptr %W2513, i64 0, i64 2
  %853 = load i32, ptr %arrayidx2514, align 4, !tbaa !11
  %W2515 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2516 = getelementptr inbounds [16 x i32], ptr %W2515, i64 0, i64 13
  %854 = load i32, ptr %arrayidx2516, align 4, !tbaa !11
  %xor2517 = xor i32 %853, %854
  %W2518 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2519 = getelementptr inbounds [16 x i32], ptr %W2518, i64 0, i64 7
  %855 = load i32, ptr %arrayidx2519, align 4, !tbaa !11
  %xor2520 = xor i32 %xor2517, %855
  %W2521 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2522 = getelementptr inbounds [16 x i32], ptr %W2521, i64 0, i64 5
  %856 = load i32, ptr %arrayidx2522, align 4, !tbaa !11
  %xor2523 = xor i32 %xor2520, %856
  %temp2524 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2523, ptr %temp2524, align 4, !tbaa !19
  %temp2525 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %857 = load i32, ptr %temp2525, align 4, !tbaa !19
  %shl2526 = shl i32 %857, 1
  %temp2527 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %858 = load i32, ptr %temp2527, align 4, !tbaa !19
  %and2528 = and i32 %858, -1
  %shr2529 = lshr i32 %and2528, 31
  %or2530 = or i32 %shl2526, %shr2529
  %W2531 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2532 = getelementptr inbounds [16 x i32], ptr %W2531, i64 0, i64 5
  store i32 %or2530, ptr %arrayidx2532, align 4, !tbaa !11
  %add2533 = add i32 %add2512, %or2530
  %B2534 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %859 = load i32, ptr %B2534, align 4, !tbaa !15
  %add2535 = add i32 %859, %add2533
  store i32 %add2535, ptr %B2534, align 4, !tbaa !15
  %D2536 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %860 = load i32, ptr %D2536, align 4, !tbaa !17
  %shl2537 = shl i32 %860, 30
  %D2538 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %861 = load i32, ptr %D2538, align 4, !tbaa !17
  %and2539 = and i32 %861, -1
  %shr2540 = lshr i32 %and2539, 2
  %or2541 = or i32 %shl2537, %shr2540
  %D2542 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or2541, ptr %D2542, align 4, !tbaa !17
  br label %do.cond2543

do.cond2543:                                      ; preds = %do.body2495
  br label %do.end2544

do.end2544:                                       ; preds = %do.cond2543
  br label %do.body2545

do.body2545:                                      ; preds = %do.end2544
  %B2546 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %862 = load i32, ptr %B2546, align 4, !tbaa !15
  %shl2547 = shl i32 %862, 5
  %B2548 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %863 = load i32, ptr %B2548, align 4, !tbaa !15
  %and2549 = and i32 %863, -1
  %shr2550 = lshr i32 %and2549, 27
  %or2551 = or i32 %shl2547, %shr2550
  %C2552 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %864 = load i32, ptr %C2552, align 4, !tbaa !16
  %D2553 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %865 = load i32, ptr %D2553, align 4, !tbaa !17
  %and2554 = and i32 %864, %865
  %E2555 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %866 = load i32, ptr %E2555, align 4, !tbaa !18
  %C2556 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %867 = load i32, ptr %C2556, align 4, !tbaa !16
  %D2557 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %868 = load i32, ptr %D2557, align 4, !tbaa !17
  %or2558 = or i32 %867, %868
  %and2559 = and i32 %866, %or2558
  %or2560 = or i32 %and2554, %and2559
  %add2561 = add i32 %or2551, %or2560
  %add2562 = add i32 %add2561, -1894007588
  %W2563 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2564 = getelementptr inbounds [16 x i32], ptr %W2563, i64 0, i64 3
  %869 = load i32, ptr %arrayidx2564, align 4, !tbaa !11
  %W2565 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2566 = getelementptr inbounds [16 x i32], ptr %W2565, i64 0, i64 14
  %870 = load i32, ptr %arrayidx2566, align 4, !tbaa !11
  %xor2567 = xor i32 %869, %870
  %W2568 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2569 = getelementptr inbounds [16 x i32], ptr %W2568, i64 0, i64 8
  %871 = load i32, ptr %arrayidx2569, align 4, !tbaa !11
  %xor2570 = xor i32 %xor2567, %871
  %W2571 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2572 = getelementptr inbounds [16 x i32], ptr %W2571, i64 0, i64 6
  %872 = load i32, ptr %arrayidx2572, align 4, !tbaa !11
  %xor2573 = xor i32 %xor2570, %872
  %temp2574 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2573, ptr %temp2574, align 4, !tbaa !19
  %temp2575 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %873 = load i32, ptr %temp2575, align 4, !tbaa !19
  %shl2576 = shl i32 %873, 1
  %temp2577 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %874 = load i32, ptr %temp2577, align 4, !tbaa !19
  %and2578 = and i32 %874, -1
  %shr2579 = lshr i32 %and2578, 31
  %or2580 = or i32 %shl2576, %shr2579
  %W2581 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2582 = getelementptr inbounds [16 x i32], ptr %W2581, i64 0, i64 6
  store i32 %or2580, ptr %arrayidx2582, align 4, !tbaa !11
  %add2583 = add i32 %add2562, %or2580
  %A2584 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %875 = load i32, ptr %A2584, align 4, !tbaa !13
  %add2585 = add i32 %875, %add2583
  store i32 %add2585, ptr %A2584, align 4, !tbaa !13
  %C2586 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %876 = load i32, ptr %C2586, align 4, !tbaa !16
  %shl2587 = shl i32 %876, 30
  %C2588 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %877 = load i32, ptr %C2588, align 4, !tbaa !16
  %and2589 = and i32 %877, -1
  %shr2590 = lshr i32 %and2589, 2
  %or2591 = or i32 %shl2587, %shr2590
  %C2592 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or2591, ptr %C2592, align 4, !tbaa !16
  br label %do.cond2593

do.cond2593:                                      ; preds = %do.body2545
  br label %do.end2594

do.end2594:                                       ; preds = %do.cond2593
  br label %do.body2595

do.body2595:                                      ; preds = %do.end2594
  %A2596 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %878 = load i32, ptr %A2596, align 4, !tbaa !13
  %shl2597 = shl i32 %878, 5
  %A2598 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %879 = load i32, ptr %A2598, align 4, !tbaa !13
  %and2599 = and i32 %879, -1
  %shr2600 = lshr i32 %and2599, 27
  %or2601 = or i32 %shl2597, %shr2600
  %B2602 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %880 = load i32, ptr %B2602, align 4, !tbaa !15
  %C2603 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %881 = load i32, ptr %C2603, align 4, !tbaa !16
  %and2604 = and i32 %880, %881
  %D2605 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %882 = load i32, ptr %D2605, align 4, !tbaa !17
  %B2606 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %883 = load i32, ptr %B2606, align 4, !tbaa !15
  %C2607 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %884 = load i32, ptr %C2607, align 4, !tbaa !16
  %or2608 = or i32 %883, %884
  %and2609 = and i32 %882, %or2608
  %or2610 = or i32 %and2604, %and2609
  %add2611 = add i32 %or2601, %or2610
  %add2612 = add i32 %add2611, -1894007588
  %W2613 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2614 = getelementptr inbounds [16 x i32], ptr %W2613, i64 0, i64 4
  %885 = load i32, ptr %arrayidx2614, align 4, !tbaa !11
  %W2615 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2616 = getelementptr inbounds [16 x i32], ptr %W2615, i64 0, i64 15
  %886 = load i32, ptr %arrayidx2616, align 4, !tbaa !11
  %xor2617 = xor i32 %885, %886
  %W2618 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2619 = getelementptr inbounds [16 x i32], ptr %W2618, i64 0, i64 9
  %887 = load i32, ptr %arrayidx2619, align 4, !tbaa !11
  %xor2620 = xor i32 %xor2617, %887
  %W2621 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2622 = getelementptr inbounds [16 x i32], ptr %W2621, i64 0, i64 7
  %888 = load i32, ptr %arrayidx2622, align 4, !tbaa !11
  %xor2623 = xor i32 %xor2620, %888
  %temp2624 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2623, ptr %temp2624, align 4, !tbaa !19
  %temp2625 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %889 = load i32, ptr %temp2625, align 4, !tbaa !19
  %shl2626 = shl i32 %889, 1
  %temp2627 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %890 = load i32, ptr %temp2627, align 4, !tbaa !19
  %and2628 = and i32 %890, -1
  %shr2629 = lshr i32 %and2628, 31
  %or2630 = or i32 %shl2626, %shr2629
  %W2631 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2632 = getelementptr inbounds [16 x i32], ptr %W2631, i64 0, i64 7
  store i32 %or2630, ptr %arrayidx2632, align 4, !tbaa !11
  %add2633 = add i32 %add2612, %or2630
  %E2634 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %891 = load i32, ptr %E2634, align 4, !tbaa !18
  %add2635 = add i32 %891, %add2633
  store i32 %add2635, ptr %E2634, align 4, !tbaa !18
  %B2636 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %892 = load i32, ptr %B2636, align 4, !tbaa !15
  %shl2637 = shl i32 %892, 30
  %B2638 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %893 = load i32, ptr %B2638, align 4, !tbaa !15
  %and2639 = and i32 %893, -1
  %shr2640 = lshr i32 %and2639, 2
  %or2641 = or i32 %shl2637, %shr2640
  %B2642 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or2641, ptr %B2642, align 4, !tbaa !15
  br label %do.cond2643

do.cond2643:                                      ; preds = %do.body2595
  br label %do.end2644

do.end2644:                                       ; preds = %do.cond2643
  br label %do.body2645

do.body2645:                                      ; preds = %do.end2644
  %E2646 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %894 = load i32, ptr %E2646, align 4, !tbaa !18
  %shl2647 = shl i32 %894, 5
  %E2648 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %895 = load i32, ptr %E2648, align 4, !tbaa !18
  %and2649 = and i32 %895, -1
  %shr2650 = lshr i32 %and2649, 27
  %or2651 = or i32 %shl2647, %shr2650
  %A2652 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %896 = load i32, ptr %A2652, align 4, !tbaa !13
  %B2653 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %897 = load i32, ptr %B2653, align 4, !tbaa !15
  %and2654 = and i32 %896, %897
  %C2655 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %898 = load i32, ptr %C2655, align 4, !tbaa !16
  %A2656 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %899 = load i32, ptr %A2656, align 4, !tbaa !13
  %B2657 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %900 = load i32, ptr %B2657, align 4, !tbaa !15
  %or2658 = or i32 %899, %900
  %and2659 = and i32 %898, %or2658
  %or2660 = or i32 %and2654, %and2659
  %add2661 = add i32 %or2651, %or2660
  %add2662 = add i32 %add2661, -1894007588
  %W2663 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2664 = getelementptr inbounds [16 x i32], ptr %W2663, i64 0, i64 5
  %901 = load i32, ptr %arrayidx2664, align 4, !tbaa !11
  %W2665 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2666 = getelementptr inbounds [16 x i32], ptr %W2665, i64 0, i64 0
  %902 = load i32, ptr %arrayidx2666, align 4, !tbaa !11
  %xor2667 = xor i32 %901, %902
  %W2668 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2669 = getelementptr inbounds [16 x i32], ptr %W2668, i64 0, i64 10
  %903 = load i32, ptr %arrayidx2669, align 4, !tbaa !11
  %xor2670 = xor i32 %xor2667, %903
  %W2671 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2672 = getelementptr inbounds [16 x i32], ptr %W2671, i64 0, i64 8
  %904 = load i32, ptr %arrayidx2672, align 4, !tbaa !11
  %xor2673 = xor i32 %xor2670, %904
  %temp2674 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2673, ptr %temp2674, align 4, !tbaa !19
  %temp2675 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %905 = load i32, ptr %temp2675, align 4, !tbaa !19
  %shl2676 = shl i32 %905, 1
  %temp2677 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %906 = load i32, ptr %temp2677, align 4, !tbaa !19
  %and2678 = and i32 %906, -1
  %shr2679 = lshr i32 %and2678, 31
  %or2680 = or i32 %shl2676, %shr2679
  %W2681 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2682 = getelementptr inbounds [16 x i32], ptr %W2681, i64 0, i64 8
  store i32 %or2680, ptr %arrayidx2682, align 4, !tbaa !11
  %add2683 = add i32 %add2662, %or2680
  %D2684 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %907 = load i32, ptr %D2684, align 4, !tbaa !17
  %add2685 = add i32 %907, %add2683
  store i32 %add2685, ptr %D2684, align 4, !tbaa !17
  %A2686 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %908 = load i32, ptr %A2686, align 4, !tbaa !13
  %shl2687 = shl i32 %908, 30
  %A2688 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %909 = load i32, ptr %A2688, align 4, !tbaa !13
  %and2689 = and i32 %909, -1
  %shr2690 = lshr i32 %and2689, 2
  %or2691 = or i32 %shl2687, %shr2690
  %A2692 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or2691, ptr %A2692, align 4, !tbaa !13
  br label %do.cond2693

do.cond2693:                                      ; preds = %do.body2645
  br label %do.end2694

do.end2694:                                       ; preds = %do.cond2693
  br label %do.body2695

do.body2695:                                      ; preds = %do.end2694
  %D2696 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %910 = load i32, ptr %D2696, align 4, !tbaa !17
  %shl2697 = shl i32 %910, 5
  %D2698 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %911 = load i32, ptr %D2698, align 4, !tbaa !17
  %and2699 = and i32 %911, -1
  %shr2700 = lshr i32 %and2699, 27
  %or2701 = or i32 %shl2697, %shr2700
  %E2702 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %912 = load i32, ptr %E2702, align 4, !tbaa !18
  %A2703 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %913 = load i32, ptr %A2703, align 4, !tbaa !13
  %and2704 = and i32 %912, %913
  %B2705 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %914 = load i32, ptr %B2705, align 4, !tbaa !15
  %E2706 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %915 = load i32, ptr %E2706, align 4, !tbaa !18
  %A2707 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %916 = load i32, ptr %A2707, align 4, !tbaa !13
  %or2708 = or i32 %915, %916
  %and2709 = and i32 %914, %or2708
  %or2710 = or i32 %and2704, %and2709
  %add2711 = add i32 %or2701, %or2710
  %add2712 = add i32 %add2711, -1894007588
  %W2713 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2714 = getelementptr inbounds [16 x i32], ptr %W2713, i64 0, i64 6
  %917 = load i32, ptr %arrayidx2714, align 4, !tbaa !11
  %W2715 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2716 = getelementptr inbounds [16 x i32], ptr %W2715, i64 0, i64 1
  %918 = load i32, ptr %arrayidx2716, align 4, !tbaa !11
  %xor2717 = xor i32 %917, %918
  %W2718 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2719 = getelementptr inbounds [16 x i32], ptr %W2718, i64 0, i64 11
  %919 = load i32, ptr %arrayidx2719, align 4, !tbaa !11
  %xor2720 = xor i32 %xor2717, %919
  %W2721 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2722 = getelementptr inbounds [16 x i32], ptr %W2721, i64 0, i64 9
  %920 = load i32, ptr %arrayidx2722, align 4, !tbaa !11
  %xor2723 = xor i32 %xor2720, %920
  %temp2724 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2723, ptr %temp2724, align 4, !tbaa !19
  %temp2725 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %921 = load i32, ptr %temp2725, align 4, !tbaa !19
  %shl2726 = shl i32 %921, 1
  %temp2727 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %922 = load i32, ptr %temp2727, align 4, !tbaa !19
  %and2728 = and i32 %922, -1
  %shr2729 = lshr i32 %and2728, 31
  %or2730 = or i32 %shl2726, %shr2729
  %W2731 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2732 = getelementptr inbounds [16 x i32], ptr %W2731, i64 0, i64 9
  store i32 %or2730, ptr %arrayidx2732, align 4, !tbaa !11
  %add2733 = add i32 %add2712, %or2730
  %C2734 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %923 = load i32, ptr %C2734, align 4, !tbaa !16
  %add2735 = add i32 %923, %add2733
  store i32 %add2735, ptr %C2734, align 4, !tbaa !16
  %E2736 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %924 = load i32, ptr %E2736, align 4, !tbaa !18
  %shl2737 = shl i32 %924, 30
  %E2738 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %925 = load i32, ptr %E2738, align 4, !tbaa !18
  %and2739 = and i32 %925, -1
  %shr2740 = lshr i32 %and2739, 2
  %or2741 = or i32 %shl2737, %shr2740
  %E2742 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or2741, ptr %E2742, align 4, !tbaa !18
  br label %do.cond2743

do.cond2743:                                      ; preds = %do.body2695
  br label %do.end2744

do.end2744:                                       ; preds = %do.cond2743
  br label %do.body2745

do.body2745:                                      ; preds = %do.end2744
  %C2746 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %926 = load i32, ptr %C2746, align 4, !tbaa !16
  %shl2747 = shl i32 %926, 5
  %C2748 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %927 = load i32, ptr %C2748, align 4, !tbaa !16
  %and2749 = and i32 %927, -1
  %shr2750 = lshr i32 %and2749, 27
  %or2751 = or i32 %shl2747, %shr2750
  %D2752 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %928 = load i32, ptr %D2752, align 4, !tbaa !17
  %E2753 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %929 = load i32, ptr %E2753, align 4, !tbaa !18
  %and2754 = and i32 %928, %929
  %A2755 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %930 = load i32, ptr %A2755, align 4, !tbaa !13
  %D2756 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %931 = load i32, ptr %D2756, align 4, !tbaa !17
  %E2757 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %932 = load i32, ptr %E2757, align 4, !tbaa !18
  %or2758 = or i32 %931, %932
  %and2759 = and i32 %930, %or2758
  %or2760 = or i32 %and2754, %and2759
  %add2761 = add i32 %or2751, %or2760
  %add2762 = add i32 %add2761, -1894007588
  %W2763 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2764 = getelementptr inbounds [16 x i32], ptr %W2763, i64 0, i64 7
  %933 = load i32, ptr %arrayidx2764, align 4, !tbaa !11
  %W2765 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2766 = getelementptr inbounds [16 x i32], ptr %W2765, i64 0, i64 2
  %934 = load i32, ptr %arrayidx2766, align 4, !tbaa !11
  %xor2767 = xor i32 %933, %934
  %W2768 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2769 = getelementptr inbounds [16 x i32], ptr %W2768, i64 0, i64 12
  %935 = load i32, ptr %arrayidx2769, align 4, !tbaa !11
  %xor2770 = xor i32 %xor2767, %935
  %W2771 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2772 = getelementptr inbounds [16 x i32], ptr %W2771, i64 0, i64 10
  %936 = load i32, ptr %arrayidx2772, align 4, !tbaa !11
  %xor2773 = xor i32 %xor2770, %936
  %temp2774 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2773, ptr %temp2774, align 4, !tbaa !19
  %temp2775 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %937 = load i32, ptr %temp2775, align 4, !tbaa !19
  %shl2776 = shl i32 %937, 1
  %temp2777 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %938 = load i32, ptr %temp2777, align 4, !tbaa !19
  %and2778 = and i32 %938, -1
  %shr2779 = lshr i32 %and2778, 31
  %or2780 = or i32 %shl2776, %shr2779
  %W2781 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2782 = getelementptr inbounds [16 x i32], ptr %W2781, i64 0, i64 10
  store i32 %or2780, ptr %arrayidx2782, align 4, !tbaa !11
  %add2783 = add i32 %add2762, %or2780
  %B2784 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %939 = load i32, ptr %B2784, align 4, !tbaa !15
  %add2785 = add i32 %939, %add2783
  store i32 %add2785, ptr %B2784, align 4, !tbaa !15
  %D2786 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %940 = load i32, ptr %D2786, align 4, !tbaa !17
  %shl2787 = shl i32 %940, 30
  %D2788 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %941 = load i32, ptr %D2788, align 4, !tbaa !17
  %and2789 = and i32 %941, -1
  %shr2790 = lshr i32 %and2789, 2
  %or2791 = or i32 %shl2787, %shr2790
  %D2792 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or2791, ptr %D2792, align 4, !tbaa !17
  br label %do.cond2793

do.cond2793:                                      ; preds = %do.body2745
  br label %do.end2794

do.end2794:                                       ; preds = %do.cond2793
  br label %do.body2795

do.body2795:                                      ; preds = %do.end2794
  %B2796 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %942 = load i32, ptr %B2796, align 4, !tbaa !15
  %shl2797 = shl i32 %942, 5
  %B2798 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %943 = load i32, ptr %B2798, align 4, !tbaa !15
  %and2799 = and i32 %943, -1
  %shr2800 = lshr i32 %and2799, 27
  %or2801 = or i32 %shl2797, %shr2800
  %C2802 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %944 = load i32, ptr %C2802, align 4, !tbaa !16
  %D2803 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %945 = load i32, ptr %D2803, align 4, !tbaa !17
  %and2804 = and i32 %944, %945
  %E2805 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %946 = load i32, ptr %E2805, align 4, !tbaa !18
  %C2806 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %947 = load i32, ptr %C2806, align 4, !tbaa !16
  %D2807 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %948 = load i32, ptr %D2807, align 4, !tbaa !17
  %or2808 = or i32 %947, %948
  %and2809 = and i32 %946, %or2808
  %or2810 = or i32 %and2804, %and2809
  %add2811 = add i32 %or2801, %or2810
  %add2812 = add i32 %add2811, -1894007588
  %W2813 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2814 = getelementptr inbounds [16 x i32], ptr %W2813, i64 0, i64 8
  %949 = load i32, ptr %arrayidx2814, align 4, !tbaa !11
  %W2815 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2816 = getelementptr inbounds [16 x i32], ptr %W2815, i64 0, i64 3
  %950 = load i32, ptr %arrayidx2816, align 4, !tbaa !11
  %xor2817 = xor i32 %949, %950
  %W2818 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2819 = getelementptr inbounds [16 x i32], ptr %W2818, i64 0, i64 13
  %951 = load i32, ptr %arrayidx2819, align 4, !tbaa !11
  %xor2820 = xor i32 %xor2817, %951
  %W2821 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2822 = getelementptr inbounds [16 x i32], ptr %W2821, i64 0, i64 11
  %952 = load i32, ptr %arrayidx2822, align 4, !tbaa !11
  %xor2823 = xor i32 %xor2820, %952
  %temp2824 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2823, ptr %temp2824, align 4, !tbaa !19
  %temp2825 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %953 = load i32, ptr %temp2825, align 4, !tbaa !19
  %shl2826 = shl i32 %953, 1
  %temp2827 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %954 = load i32, ptr %temp2827, align 4, !tbaa !19
  %and2828 = and i32 %954, -1
  %shr2829 = lshr i32 %and2828, 31
  %or2830 = or i32 %shl2826, %shr2829
  %W2831 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2832 = getelementptr inbounds [16 x i32], ptr %W2831, i64 0, i64 11
  store i32 %or2830, ptr %arrayidx2832, align 4, !tbaa !11
  %add2833 = add i32 %add2812, %or2830
  %A2834 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %955 = load i32, ptr %A2834, align 4, !tbaa !13
  %add2835 = add i32 %955, %add2833
  store i32 %add2835, ptr %A2834, align 4, !tbaa !13
  %C2836 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %956 = load i32, ptr %C2836, align 4, !tbaa !16
  %shl2837 = shl i32 %956, 30
  %C2838 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %957 = load i32, ptr %C2838, align 4, !tbaa !16
  %and2839 = and i32 %957, -1
  %shr2840 = lshr i32 %and2839, 2
  %or2841 = or i32 %shl2837, %shr2840
  %C2842 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or2841, ptr %C2842, align 4, !tbaa !16
  br label %do.cond2843

do.cond2843:                                      ; preds = %do.body2795
  br label %do.end2844

do.end2844:                                       ; preds = %do.cond2843
  br label %do.body2845

do.body2845:                                      ; preds = %do.end2844
  %A2846 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %958 = load i32, ptr %A2846, align 4, !tbaa !13
  %shl2847 = shl i32 %958, 5
  %A2848 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %959 = load i32, ptr %A2848, align 4, !tbaa !13
  %and2849 = and i32 %959, -1
  %shr2850 = lshr i32 %and2849, 27
  %or2851 = or i32 %shl2847, %shr2850
  %B2852 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %960 = load i32, ptr %B2852, align 4, !tbaa !15
  %C2853 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %961 = load i32, ptr %C2853, align 4, !tbaa !16
  %xor2854 = xor i32 %960, %961
  %D2855 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %962 = load i32, ptr %D2855, align 4, !tbaa !17
  %xor2856 = xor i32 %xor2854, %962
  %add2857 = add i32 %or2851, %xor2856
  %add2858 = add i32 %add2857, -899497514
  %W2859 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2860 = getelementptr inbounds [16 x i32], ptr %W2859, i64 0, i64 9
  %963 = load i32, ptr %arrayidx2860, align 4, !tbaa !11
  %W2861 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2862 = getelementptr inbounds [16 x i32], ptr %W2861, i64 0, i64 4
  %964 = load i32, ptr %arrayidx2862, align 4, !tbaa !11
  %xor2863 = xor i32 %963, %964
  %W2864 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2865 = getelementptr inbounds [16 x i32], ptr %W2864, i64 0, i64 14
  %965 = load i32, ptr %arrayidx2865, align 4, !tbaa !11
  %xor2866 = xor i32 %xor2863, %965
  %W2867 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2868 = getelementptr inbounds [16 x i32], ptr %W2867, i64 0, i64 12
  %966 = load i32, ptr %arrayidx2868, align 4, !tbaa !11
  %xor2869 = xor i32 %xor2866, %966
  %temp2870 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2869, ptr %temp2870, align 4, !tbaa !19
  %temp2871 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %967 = load i32, ptr %temp2871, align 4, !tbaa !19
  %shl2872 = shl i32 %967, 1
  %temp2873 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %968 = load i32, ptr %temp2873, align 4, !tbaa !19
  %and2874 = and i32 %968, -1
  %shr2875 = lshr i32 %and2874, 31
  %or2876 = or i32 %shl2872, %shr2875
  %W2877 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2878 = getelementptr inbounds [16 x i32], ptr %W2877, i64 0, i64 12
  store i32 %or2876, ptr %arrayidx2878, align 4, !tbaa !11
  %add2879 = add i32 %add2858, %or2876
  %E2880 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %969 = load i32, ptr %E2880, align 4, !tbaa !18
  %add2881 = add i32 %969, %add2879
  store i32 %add2881, ptr %E2880, align 4, !tbaa !18
  %B2882 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %970 = load i32, ptr %B2882, align 4, !tbaa !15
  %shl2883 = shl i32 %970, 30
  %B2884 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %971 = load i32, ptr %B2884, align 4, !tbaa !15
  %and2885 = and i32 %971, -1
  %shr2886 = lshr i32 %and2885, 2
  %or2887 = or i32 %shl2883, %shr2886
  %B2888 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or2887, ptr %B2888, align 4, !tbaa !15
  br label %do.cond2889

do.cond2889:                                      ; preds = %do.body2845
  br label %do.end2890

do.end2890:                                       ; preds = %do.cond2889
  br label %do.body2891

do.body2891:                                      ; preds = %do.end2890
  %E2892 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %972 = load i32, ptr %E2892, align 4, !tbaa !18
  %shl2893 = shl i32 %972, 5
  %E2894 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %973 = load i32, ptr %E2894, align 4, !tbaa !18
  %and2895 = and i32 %973, -1
  %shr2896 = lshr i32 %and2895, 27
  %or2897 = or i32 %shl2893, %shr2896
  %A2898 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %974 = load i32, ptr %A2898, align 4, !tbaa !13
  %B2899 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %975 = load i32, ptr %B2899, align 4, !tbaa !15
  %xor2900 = xor i32 %974, %975
  %C2901 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %976 = load i32, ptr %C2901, align 4, !tbaa !16
  %xor2902 = xor i32 %xor2900, %976
  %add2903 = add i32 %or2897, %xor2902
  %add2904 = add i32 %add2903, -899497514
  %W2905 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2906 = getelementptr inbounds [16 x i32], ptr %W2905, i64 0, i64 10
  %977 = load i32, ptr %arrayidx2906, align 4, !tbaa !11
  %W2907 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2908 = getelementptr inbounds [16 x i32], ptr %W2907, i64 0, i64 5
  %978 = load i32, ptr %arrayidx2908, align 4, !tbaa !11
  %xor2909 = xor i32 %977, %978
  %W2910 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2911 = getelementptr inbounds [16 x i32], ptr %W2910, i64 0, i64 15
  %979 = load i32, ptr %arrayidx2911, align 4, !tbaa !11
  %xor2912 = xor i32 %xor2909, %979
  %W2913 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2914 = getelementptr inbounds [16 x i32], ptr %W2913, i64 0, i64 13
  %980 = load i32, ptr %arrayidx2914, align 4, !tbaa !11
  %xor2915 = xor i32 %xor2912, %980
  %temp2916 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2915, ptr %temp2916, align 4, !tbaa !19
  %temp2917 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %981 = load i32, ptr %temp2917, align 4, !tbaa !19
  %shl2918 = shl i32 %981, 1
  %temp2919 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %982 = load i32, ptr %temp2919, align 4, !tbaa !19
  %and2920 = and i32 %982, -1
  %shr2921 = lshr i32 %and2920, 31
  %or2922 = or i32 %shl2918, %shr2921
  %W2923 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2924 = getelementptr inbounds [16 x i32], ptr %W2923, i64 0, i64 13
  store i32 %or2922, ptr %arrayidx2924, align 4, !tbaa !11
  %add2925 = add i32 %add2904, %or2922
  %D2926 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %983 = load i32, ptr %D2926, align 4, !tbaa !17
  %add2927 = add i32 %983, %add2925
  store i32 %add2927, ptr %D2926, align 4, !tbaa !17
  %A2928 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %984 = load i32, ptr %A2928, align 4, !tbaa !13
  %shl2929 = shl i32 %984, 30
  %A2930 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %985 = load i32, ptr %A2930, align 4, !tbaa !13
  %and2931 = and i32 %985, -1
  %shr2932 = lshr i32 %and2931, 2
  %or2933 = or i32 %shl2929, %shr2932
  %A2934 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or2933, ptr %A2934, align 4, !tbaa !13
  br label %do.cond2935

do.cond2935:                                      ; preds = %do.body2891
  br label %do.end2936

do.end2936:                                       ; preds = %do.cond2935
  br label %do.body2937

do.body2937:                                      ; preds = %do.end2936
  %D2938 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %986 = load i32, ptr %D2938, align 4, !tbaa !17
  %shl2939 = shl i32 %986, 5
  %D2940 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %987 = load i32, ptr %D2940, align 4, !tbaa !17
  %and2941 = and i32 %987, -1
  %shr2942 = lshr i32 %and2941, 27
  %or2943 = or i32 %shl2939, %shr2942
  %E2944 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %988 = load i32, ptr %E2944, align 4, !tbaa !18
  %A2945 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %989 = load i32, ptr %A2945, align 4, !tbaa !13
  %xor2946 = xor i32 %988, %989
  %B2947 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %990 = load i32, ptr %B2947, align 4, !tbaa !15
  %xor2948 = xor i32 %xor2946, %990
  %add2949 = add i32 %or2943, %xor2948
  %add2950 = add i32 %add2949, -899497514
  %W2951 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2952 = getelementptr inbounds [16 x i32], ptr %W2951, i64 0, i64 11
  %991 = load i32, ptr %arrayidx2952, align 4, !tbaa !11
  %W2953 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2954 = getelementptr inbounds [16 x i32], ptr %W2953, i64 0, i64 6
  %992 = load i32, ptr %arrayidx2954, align 4, !tbaa !11
  %xor2955 = xor i32 %991, %992
  %W2956 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2957 = getelementptr inbounds [16 x i32], ptr %W2956, i64 0, i64 0
  %993 = load i32, ptr %arrayidx2957, align 4, !tbaa !11
  %xor2958 = xor i32 %xor2955, %993
  %W2959 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2960 = getelementptr inbounds [16 x i32], ptr %W2959, i64 0, i64 14
  %994 = load i32, ptr %arrayidx2960, align 4, !tbaa !11
  %xor2961 = xor i32 %xor2958, %994
  %temp2962 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor2961, ptr %temp2962, align 4, !tbaa !19
  %temp2963 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %995 = load i32, ptr %temp2963, align 4, !tbaa !19
  %shl2964 = shl i32 %995, 1
  %temp2965 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %996 = load i32, ptr %temp2965, align 4, !tbaa !19
  %and2966 = and i32 %996, -1
  %shr2967 = lshr i32 %and2966, 31
  %or2968 = or i32 %shl2964, %shr2967
  %W2969 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2970 = getelementptr inbounds [16 x i32], ptr %W2969, i64 0, i64 14
  store i32 %or2968, ptr %arrayidx2970, align 4, !tbaa !11
  %add2971 = add i32 %add2950, %or2968
  %C2972 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %997 = load i32, ptr %C2972, align 4, !tbaa !16
  %add2973 = add i32 %997, %add2971
  store i32 %add2973, ptr %C2972, align 4, !tbaa !16
  %E2974 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %998 = load i32, ptr %E2974, align 4, !tbaa !18
  %shl2975 = shl i32 %998, 30
  %E2976 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %999 = load i32, ptr %E2976, align 4, !tbaa !18
  %and2977 = and i32 %999, -1
  %shr2978 = lshr i32 %and2977, 2
  %or2979 = or i32 %shl2975, %shr2978
  %E2980 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or2979, ptr %E2980, align 4, !tbaa !18
  br label %do.cond2981

do.cond2981:                                      ; preds = %do.body2937
  br label %do.end2982

do.end2982:                                       ; preds = %do.cond2981
  br label %do.body2983

do.body2983:                                      ; preds = %do.end2982
  %C2984 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1000 = load i32, ptr %C2984, align 4, !tbaa !16
  %shl2985 = shl i32 %1000, 5
  %C2986 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1001 = load i32, ptr %C2986, align 4, !tbaa !16
  %and2987 = and i32 %1001, -1
  %shr2988 = lshr i32 %and2987, 27
  %or2989 = or i32 %shl2985, %shr2988
  %D2990 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1002 = load i32, ptr %D2990, align 4, !tbaa !17
  %E2991 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1003 = load i32, ptr %E2991, align 4, !tbaa !18
  %xor2992 = xor i32 %1002, %1003
  %A2993 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1004 = load i32, ptr %A2993, align 4, !tbaa !13
  %xor2994 = xor i32 %xor2992, %1004
  %add2995 = add i32 %or2989, %xor2994
  %add2996 = add i32 %add2995, -899497514
  %W2997 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx2998 = getelementptr inbounds [16 x i32], ptr %W2997, i64 0, i64 12
  %1005 = load i32, ptr %arrayidx2998, align 4, !tbaa !11
  %W2999 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3000 = getelementptr inbounds [16 x i32], ptr %W2999, i64 0, i64 7
  %1006 = load i32, ptr %arrayidx3000, align 4, !tbaa !11
  %xor3001 = xor i32 %1005, %1006
  %W3002 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3003 = getelementptr inbounds [16 x i32], ptr %W3002, i64 0, i64 1
  %1007 = load i32, ptr %arrayidx3003, align 4, !tbaa !11
  %xor3004 = xor i32 %xor3001, %1007
  %W3005 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3006 = getelementptr inbounds [16 x i32], ptr %W3005, i64 0, i64 15
  %1008 = load i32, ptr %arrayidx3006, align 4, !tbaa !11
  %xor3007 = xor i32 %xor3004, %1008
  %temp3008 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3007, ptr %temp3008, align 4, !tbaa !19
  %temp3009 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1009 = load i32, ptr %temp3009, align 4, !tbaa !19
  %shl3010 = shl i32 %1009, 1
  %temp3011 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1010 = load i32, ptr %temp3011, align 4, !tbaa !19
  %and3012 = and i32 %1010, -1
  %shr3013 = lshr i32 %and3012, 31
  %or3014 = or i32 %shl3010, %shr3013
  %W3015 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3016 = getelementptr inbounds [16 x i32], ptr %W3015, i64 0, i64 15
  store i32 %or3014, ptr %arrayidx3016, align 4, !tbaa !11
  %add3017 = add i32 %add2996, %or3014
  %B3018 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1011 = load i32, ptr %B3018, align 4, !tbaa !15
  %add3019 = add i32 %1011, %add3017
  store i32 %add3019, ptr %B3018, align 4, !tbaa !15
  %D3020 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1012 = load i32, ptr %D3020, align 4, !tbaa !17
  %shl3021 = shl i32 %1012, 30
  %D3022 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1013 = load i32, ptr %D3022, align 4, !tbaa !17
  %and3023 = and i32 %1013, -1
  %shr3024 = lshr i32 %and3023, 2
  %or3025 = or i32 %shl3021, %shr3024
  %D3026 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or3025, ptr %D3026, align 4, !tbaa !17
  br label %do.cond3027

do.cond3027:                                      ; preds = %do.body2983
  br label %do.end3028

do.end3028:                                       ; preds = %do.cond3027
  br label %do.body3029

do.body3029:                                      ; preds = %do.end3028
  %B3030 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1014 = load i32, ptr %B3030, align 4, !tbaa !15
  %shl3031 = shl i32 %1014, 5
  %B3032 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1015 = load i32, ptr %B3032, align 4, !tbaa !15
  %and3033 = and i32 %1015, -1
  %shr3034 = lshr i32 %and3033, 27
  %or3035 = or i32 %shl3031, %shr3034
  %C3036 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1016 = load i32, ptr %C3036, align 4, !tbaa !16
  %D3037 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1017 = load i32, ptr %D3037, align 4, !tbaa !17
  %xor3038 = xor i32 %1016, %1017
  %E3039 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1018 = load i32, ptr %E3039, align 4, !tbaa !18
  %xor3040 = xor i32 %xor3038, %1018
  %add3041 = add i32 %or3035, %xor3040
  %add3042 = add i32 %add3041, -899497514
  %W3043 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3044 = getelementptr inbounds [16 x i32], ptr %W3043, i64 0, i64 13
  %1019 = load i32, ptr %arrayidx3044, align 4, !tbaa !11
  %W3045 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3046 = getelementptr inbounds [16 x i32], ptr %W3045, i64 0, i64 8
  %1020 = load i32, ptr %arrayidx3046, align 4, !tbaa !11
  %xor3047 = xor i32 %1019, %1020
  %W3048 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3049 = getelementptr inbounds [16 x i32], ptr %W3048, i64 0, i64 2
  %1021 = load i32, ptr %arrayidx3049, align 4, !tbaa !11
  %xor3050 = xor i32 %xor3047, %1021
  %W3051 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3052 = getelementptr inbounds [16 x i32], ptr %W3051, i64 0, i64 0
  %1022 = load i32, ptr %arrayidx3052, align 4, !tbaa !11
  %xor3053 = xor i32 %xor3050, %1022
  %temp3054 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3053, ptr %temp3054, align 4, !tbaa !19
  %temp3055 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1023 = load i32, ptr %temp3055, align 4, !tbaa !19
  %shl3056 = shl i32 %1023, 1
  %temp3057 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1024 = load i32, ptr %temp3057, align 4, !tbaa !19
  %and3058 = and i32 %1024, -1
  %shr3059 = lshr i32 %and3058, 31
  %or3060 = or i32 %shl3056, %shr3059
  %W3061 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3062 = getelementptr inbounds [16 x i32], ptr %W3061, i64 0, i64 0
  store i32 %or3060, ptr %arrayidx3062, align 4, !tbaa !11
  %add3063 = add i32 %add3042, %or3060
  %A3064 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1025 = load i32, ptr %A3064, align 4, !tbaa !13
  %add3065 = add i32 %1025, %add3063
  store i32 %add3065, ptr %A3064, align 4, !tbaa !13
  %C3066 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1026 = load i32, ptr %C3066, align 4, !tbaa !16
  %shl3067 = shl i32 %1026, 30
  %C3068 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1027 = load i32, ptr %C3068, align 4, !tbaa !16
  %and3069 = and i32 %1027, -1
  %shr3070 = lshr i32 %and3069, 2
  %or3071 = or i32 %shl3067, %shr3070
  %C3072 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or3071, ptr %C3072, align 4, !tbaa !16
  br label %do.cond3073

do.cond3073:                                      ; preds = %do.body3029
  br label %do.end3074

do.end3074:                                       ; preds = %do.cond3073
  br label %do.body3075

do.body3075:                                      ; preds = %do.end3074
  %A3076 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1028 = load i32, ptr %A3076, align 4, !tbaa !13
  %shl3077 = shl i32 %1028, 5
  %A3078 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1029 = load i32, ptr %A3078, align 4, !tbaa !13
  %and3079 = and i32 %1029, -1
  %shr3080 = lshr i32 %and3079, 27
  %or3081 = or i32 %shl3077, %shr3080
  %B3082 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1030 = load i32, ptr %B3082, align 4, !tbaa !15
  %C3083 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1031 = load i32, ptr %C3083, align 4, !tbaa !16
  %xor3084 = xor i32 %1030, %1031
  %D3085 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1032 = load i32, ptr %D3085, align 4, !tbaa !17
  %xor3086 = xor i32 %xor3084, %1032
  %add3087 = add i32 %or3081, %xor3086
  %add3088 = add i32 %add3087, -899497514
  %W3089 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3090 = getelementptr inbounds [16 x i32], ptr %W3089, i64 0, i64 14
  %1033 = load i32, ptr %arrayidx3090, align 4, !tbaa !11
  %W3091 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3092 = getelementptr inbounds [16 x i32], ptr %W3091, i64 0, i64 9
  %1034 = load i32, ptr %arrayidx3092, align 4, !tbaa !11
  %xor3093 = xor i32 %1033, %1034
  %W3094 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3095 = getelementptr inbounds [16 x i32], ptr %W3094, i64 0, i64 3
  %1035 = load i32, ptr %arrayidx3095, align 4, !tbaa !11
  %xor3096 = xor i32 %xor3093, %1035
  %W3097 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3098 = getelementptr inbounds [16 x i32], ptr %W3097, i64 0, i64 1
  %1036 = load i32, ptr %arrayidx3098, align 4, !tbaa !11
  %xor3099 = xor i32 %xor3096, %1036
  %temp3100 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3099, ptr %temp3100, align 4, !tbaa !19
  %temp3101 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1037 = load i32, ptr %temp3101, align 4, !tbaa !19
  %shl3102 = shl i32 %1037, 1
  %temp3103 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1038 = load i32, ptr %temp3103, align 4, !tbaa !19
  %and3104 = and i32 %1038, -1
  %shr3105 = lshr i32 %and3104, 31
  %or3106 = or i32 %shl3102, %shr3105
  %W3107 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3108 = getelementptr inbounds [16 x i32], ptr %W3107, i64 0, i64 1
  store i32 %or3106, ptr %arrayidx3108, align 4, !tbaa !11
  %add3109 = add i32 %add3088, %or3106
  %E3110 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1039 = load i32, ptr %E3110, align 4, !tbaa !18
  %add3111 = add i32 %1039, %add3109
  store i32 %add3111, ptr %E3110, align 4, !tbaa !18
  %B3112 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1040 = load i32, ptr %B3112, align 4, !tbaa !15
  %shl3113 = shl i32 %1040, 30
  %B3114 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1041 = load i32, ptr %B3114, align 4, !tbaa !15
  %and3115 = and i32 %1041, -1
  %shr3116 = lshr i32 %and3115, 2
  %or3117 = or i32 %shl3113, %shr3116
  %B3118 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or3117, ptr %B3118, align 4, !tbaa !15
  br label %do.cond3119

do.cond3119:                                      ; preds = %do.body3075
  br label %do.end3120

do.end3120:                                       ; preds = %do.cond3119
  br label %do.body3121

do.body3121:                                      ; preds = %do.end3120
  %E3122 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1042 = load i32, ptr %E3122, align 4, !tbaa !18
  %shl3123 = shl i32 %1042, 5
  %E3124 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1043 = load i32, ptr %E3124, align 4, !tbaa !18
  %and3125 = and i32 %1043, -1
  %shr3126 = lshr i32 %and3125, 27
  %or3127 = or i32 %shl3123, %shr3126
  %A3128 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1044 = load i32, ptr %A3128, align 4, !tbaa !13
  %B3129 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1045 = load i32, ptr %B3129, align 4, !tbaa !15
  %xor3130 = xor i32 %1044, %1045
  %C3131 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1046 = load i32, ptr %C3131, align 4, !tbaa !16
  %xor3132 = xor i32 %xor3130, %1046
  %add3133 = add i32 %or3127, %xor3132
  %add3134 = add i32 %add3133, -899497514
  %W3135 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3136 = getelementptr inbounds [16 x i32], ptr %W3135, i64 0, i64 15
  %1047 = load i32, ptr %arrayidx3136, align 4, !tbaa !11
  %W3137 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3138 = getelementptr inbounds [16 x i32], ptr %W3137, i64 0, i64 10
  %1048 = load i32, ptr %arrayidx3138, align 4, !tbaa !11
  %xor3139 = xor i32 %1047, %1048
  %W3140 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3141 = getelementptr inbounds [16 x i32], ptr %W3140, i64 0, i64 4
  %1049 = load i32, ptr %arrayidx3141, align 4, !tbaa !11
  %xor3142 = xor i32 %xor3139, %1049
  %W3143 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3144 = getelementptr inbounds [16 x i32], ptr %W3143, i64 0, i64 2
  %1050 = load i32, ptr %arrayidx3144, align 4, !tbaa !11
  %xor3145 = xor i32 %xor3142, %1050
  %temp3146 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3145, ptr %temp3146, align 4, !tbaa !19
  %temp3147 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1051 = load i32, ptr %temp3147, align 4, !tbaa !19
  %shl3148 = shl i32 %1051, 1
  %temp3149 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1052 = load i32, ptr %temp3149, align 4, !tbaa !19
  %and3150 = and i32 %1052, -1
  %shr3151 = lshr i32 %and3150, 31
  %or3152 = or i32 %shl3148, %shr3151
  %W3153 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3154 = getelementptr inbounds [16 x i32], ptr %W3153, i64 0, i64 2
  store i32 %or3152, ptr %arrayidx3154, align 4, !tbaa !11
  %add3155 = add i32 %add3134, %or3152
  %D3156 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1053 = load i32, ptr %D3156, align 4, !tbaa !17
  %add3157 = add i32 %1053, %add3155
  store i32 %add3157, ptr %D3156, align 4, !tbaa !17
  %A3158 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1054 = load i32, ptr %A3158, align 4, !tbaa !13
  %shl3159 = shl i32 %1054, 30
  %A3160 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1055 = load i32, ptr %A3160, align 4, !tbaa !13
  %and3161 = and i32 %1055, -1
  %shr3162 = lshr i32 %and3161, 2
  %or3163 = or i32 %shl3159, %shr3162
  %A3164 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or3163, ptr %A3164, align 4, !tbaa !13
  br label %do.cond3165

do.cond3165:                                      ; preds = %do.body3121
  br label %do.end3166

do.end3166:                                       ; preds = %do.cond3165
  br label %do.body3167

do.body3167:                                      ; preds = %do.end3166
  %D3168 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1056 = load i32, ptr %D3168, align 4, !tbaa !17
  %shl3169 = shl i32 %1056, 5
  %D3170 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1057 = load i32, ptr %D3170, align 4, !tbaa !17
  %and3171 = and i32 %1057, -1
  %shr3172 = lshr i32 %and3171, 27
  %or3173 = or i32 %shl3169, %shr3172
  %E3174 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1058 = load i32, ptr %E3174, align 4, !tbaa !18
  %A3175 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1059 = load i32, ptr %A3175, align 4, !tbaa !13
  %xor3176 = xor i32 %1058, %1059
  %B3177 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1060 = load i32, ptr %B3177, align 4, !tbaa !15
  %xor3178 = xor i32 %xor3176, %1060
  %add3179 = add i32 %or3173, %xor3178
  %add3180 = add i32 %add3179, -899497514
  %W3181 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3182 = getelementptr inbounds [16 x i32], ptr %W3181, i64 0, i64 0
  %1061 = load i32, ptr %arrayidx3182, align 4, !tbaa !11
  %W3183 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3184 = getelementptr inbounds [16 x i32], ptr %W3183, i64 0, i64 11
  %1062 = load i32, ptr %arrayidx3184, align 4, !tbaa !11
  %xor3185 = xor i32 %1061, %1062
  %W3186 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3187 = getelementptr inbounds [16 x i32], ptr %W3186, i64 0, i64 5
  %1063 = load i32, ptr %arrayidx3187, align 4, !tbaa !11
  %xor3188 = xor i32 %xor3185, %1063
  %W3189 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3190 = getelementptr inbounds [16 x i32], ptr %W3189, i64 0, i64 3
  %1064 = load i32, ptr %arrayidx3190, align 4, !tbaa !11
  %xor3191 = xor i32 %xor3188, %1064
  %temp3192 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3191, ptr %temp3192, align 4, !tbaa !19
  %temp3193 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1065 = load i32, ptr %temp3193, align 4, !tbaa !19
  %shl3194 = shl i32 %1065, 1
  %temp3195 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1066 = load i32, ptr %temp3195, align 4, !tbaa !19
  %and3196 = and i32 %1066, -1
  %shr3197 = lshr i32 %and3196, 31
  %or3198 = or i32 %shl3194, %shr3197
  %W3199 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3200 = getelementptr inbounds [16 x i32], ptr %W3199, i64 0, i64 3
  store i32 %or3198, ptr %arrayidx3200, align 4, !tbaa !11
  %add3201 = add i32 %add3180, %or3198
  %C3202 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1067 = load i32, ptr %C3202, align 4, !tbaa !16
  %add3203 = add i32 %1067, %add3201
  store i32 %add3203, ptr %C3202, align 4, !tbaa !16
  %E3204 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1068 = load i32, ptr %E3204, align 4, !tbaa !18
  %shl3205 = shl i32 %1068, 30
  %E3206 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1069 = load i32, ptr %E3206, align 4, !tbaa !18
  %and3207 = and i32 %1069, -1
  %shr3208 = lshr i32 %and3207, 2
  %or3209 = or i32 %shl3205, %shr3208
  %E3210 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or3209, ptr %E3210, align 4, !tbaa !18
  br label %do.cond3211

do.cond3211:                                      ; preds = %do.body3167
  br label %do.end3212

do.end3212:                                       ; preds = %do.cond3211
  br label %do.body3213

do.body3213:                                      ; preds = %do.end3212
  %C3214 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1070 = load i32, ptr %C3214, align 4, !tbaa !16
  %shl3215 = shl i32 %1070, 5
  %C3216 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1071 = load i32, ptr %C3216, align 4, !tbaa !16
  %and3217 = and i32 %1071, -1
  %shr3218 = lshr i32 %and3217, 27
  %or3219 = or i32 %shl3215, %shr3218
  %D3220 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1072 = load i32, ptr %D3220, align 4, !tbaa !17
  %E3221 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1073 = load i32, ptr %E3221, align 4, !tbaa !18
  %xor3222 = xor i32 %1072, %1073
  %A3223 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1074 = load i32, ptr %A3223, align 4, !tbaa !13
  %xor3224 = xor i32 %xor3222, %1074
  %add3225 = add i32 %or3219, %xor3224
  %add3226 = add i32 %add3225, -899497514
  %W3227 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3228 = getelementptr inbounds [16 x i32], ptr %W3227, i64 0, i64 1
  %1075 = load i32, ptr %arrayidx3228, align 4, !tbaa !11
  %W3229 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3230 = getelementptr inbounds [16 x i32], ptr %W3229, i64 0, i64 12
  %1076 = load i32, ptr %arrayidx3230, align 4, !tbaa !11
  %xor3231 = xor i32 %1075, %1076
  %W3232 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3233 = getelementptr inbounds [16 x i32], ptr %W3232, i64 0, i64 6
  %1077 = load i32, ptr %arrayidx3233, align 4, !tbaa !11
  %xor3234 = xor i32 %xor3231, %1077
  %W3235 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3236 = getelementptr inbounds [16 x i32], ptr %W3235, i64 0, i64 4
  %1078 = load i32, ptr %arrayidx3236, align 4, !tbaa !11
  %xor3237 = xor i32 %xor3234, %1078
  %temp3238 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3237, ptr %temp3238, align 4, !tbaa !19
  %temp3239 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1079 = load i32, ptr %temp3239, align 4, !tbaa !19
  %shl3240 = shl i32 %1079, 1
  %temp3241 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1080 = load i32, ptr %temp3241, align 4, !tbaa !19
  %and3242 = and i32 %1080, -1
  %shr3243 = lshr i32 %and3242, 31
  %or3244 = or i32 %shl3240, %shr3243
  %W3245 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3246 = getelementptr inbounds [16 x i32], ptr %W3245, i64 0, i64 4
  store i32 %or3244, ptr %arrayidx3246, align 4, !tbaa !11
  %add3247 = add i32 %add3226, %or3244
  %B3248 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1081 = load i32, ptr %B3248, align 4, !tbaa !15
  %add3249 = add i32 %1081, %add3247
  store i32 %add3249, ptr %B3248, align 4, !tbaa !15
  %D3250 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1082 = load i32, ptr %D3250, align 4, !tbaa !17
  %shl3251 = shl i32 %1082, 30
  %D3252 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1083 = load i32, ptr %D3252, align 4, !tbaa !17
  %and3253 = and i32 %1083, -1
  %shr3254 = lshr i32 %and3253, 2
  %or3255 = or i32 %shl3251, %shr3254
  %D3256 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or3255, ptr %D3256, align 4, !tbaa !17
  br label %do.cond3257

do.cond3257:                                      ; preds = %do.body3213
  br label %do.end3258

do.end3258:                                       ; preds = %do.cond3257
  br label %do.body3259

do.body3259:                                      ; preds = %do.end3258
  %B3260 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1084 = load i32, ptr %B3260, align 4, !tbaa !15
  %shl3261 = shl i32 %1084, 5
  %B3262 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1085 = load i32, ptr %B3262, align 4, !tbaa !15
  %and3263 = and i32 %1085, -1
  %shr3264 = lshr i32 %and3263, 27
  %or3265 = or i32 %shl3261, %shr3264
  %C3266 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1086 = load i32, ptr %C3266, align 4, !tbaa !16
  %D3267 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1087 = load i32, ptr %D3267, align 4, !tbaa !17
  %xor3268 = xor i32 %1086, %1087
  %E3269 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1088 = load i32, ptr %E3269, align 4, !tbaa !18
  %xor3270 = xor i32 %xor3268, %1088
  %add3271 = add i32 %or3265, %xor3270
  %add3272 = add i32 %add3271, -899497514
  %W3273 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3274 = getelementptr inbounds [16 x i32], ptr %W3273, i64 0, i64 2
  %1089 = load i32, ptr %arrayidx3274, align 4, !tbaa !11
  %W3275 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3276 = getelementptr inbounds [16 x i32], ptr %W3275, i64 0, i64 13
  %1090 = load i32, ptr %arrayidx3276, align 4, !tbaa !11
  %xor3277 = xor i32 %1089, %1090
  %W3278 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3279 = getelementptr inbounds [16 x i32], ptr %W3278, i64 0, i64 7
  %1091 = load i32, ptr %arrayidx3279, align 4, !tbaa !11
  %xor3280 = xor i32 %xor3277, %1091
  %W3281 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3282 = getelementptr inbounds [16 x i32], ptr %W3281, i64 0, i64 5
  %1092 = load i32, ptr %arrayidx3282, align 4, !tbaa !11
  %xor3283 = xor i32 %xor3280, %1092
  %temp3284 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3283, ptr %temp3284, align 4, !tbaa !19
  %temp3285 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1093 = load i32, ptr %temp3285, align 4, !tbaa !19
  %shl3286 = shl i32 %1093, 1
  %temp3287 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1094 = load i32, ptr %temp3287, align 4, !tbaa !19
  %and3288 = and i32 %1094, -1
  %shr3289 = lshr i32 %and3288, 31
  %or3290 = or i32 %shl3286, %shr3289
  %W3291 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3292 = getelementptr inbounds [16 x i32], ptr %W3291, i64 0, i64 5
  store i32 %or3290, ptr %arrayidx3292, align 4, !tbaa !11
  %add3293 = add i32 %add3272, %or3290
  %A3294 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1095 = load i32, ptr %A3294, align 4, !tbaa !13
  %add3295 = add i32 %1095, %add3293
  store i32 %add3295, ptr %A3294, align 4, !tbaa !13
  %C3296 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1096 = load i32, ptr %C3296, align 4, !tbaa !16
  %shl3297 = shl i32 %1096, 30
  %C3298 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1097 = load i32, ptr %C3298, align 4, !tbaa !16
  %and3299 = and i32 %1097, -1
  %shr3300 = lshr i32 %and3299, 2
  %or3301 = or i32 %shl3297, %shr3300
  %C3302 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or3301, ptr %C3302, align 4, !tbaa !16
  br label %do.cond3303

do.cond3303:                                      ; preds = %do.body3259
  br label %do.end3304

do.end3304:                                       ; preds = %do.cond3303
  br label %do.body3305

do.body3305:                                      ; preds = %do.end3304
  %A3306 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1098 = load i32, ptr %A3306, align 4, !tbaa !13
  %shl3307 = shl i32 %1098, 5
  %A3308 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1099 = load i32, ptr %A3308, align 4, !tbaa !13
  %and3309 = and i32 %1099, -1
  %shr3310 = lshr i32 %and3309, 27
  %or3311 = or i32 %shl3307, %shr3310
  %B3312 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1100 = load i32, ptr %B3312, align 4, !tbaa !15
  %C3313 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1101 = load i32, ptr %C3313, align 4, !tbaa !16
  %xor3314 = xor i32 %1100, %1101
  %D3315 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1102 = load i32, ptr %D3315, align 4, !tbaa !17
  %xor3316 = xor i32 %xor3314, %1102
  %add3317 = add i32 %or3311, %xor3316
  %add3318 = add i32 %add3317, -899497514
  %W3319 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3320 = getelementptr inbounds [16 x i32], ptr %W3319, i64 0, i64 3
  %1103 = load i32, ptr %arrayidx3320, align 4, !tbaa !11
  %W3321 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3322 = getelementptr inbounds [16 x i32], ptr %W3321, i64 0, i64 14
  %1104 = load i32, ptr %arrayidx3322, align 4, !tbaa !11
  %xor3323 = xor i32 %1103, %1104
  %W3324 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3325 = getelementptr inbounds [16 x i32], ptr %W3324, i64 0, i64 8
  %1105 = load i32, ptr %arrayidx3325, align 4, !tbaa !11
  %xor3326 = xor i32 %xor3323, %1105
  %W3327 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3328 = getelementptr inbounds [16 x i32], ptr %W3327, i64 0, i64 6
  %1106 = load i32, ptr %arrayidx3328, align 4, !tbaa !11
  %xor3329 = xor i32 %xor3326, %1106
  %temp3330 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3329, ptr %temp3330, align 4, !tbaa !19
  %temp3331 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1107 = load i32, ptr %temp3331, align 4, !tbaa !19
  %shl3332 = shl i32 %1107, 1
  %temp3333 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1108 = load i32, ptr %temp3333, align 4, !tbaa !19
  %and3334 = and i32 %1108, -1
  %shr3335 = lshr i32 %and3334, 31
  %or3336 = or i32 %shl3332, %shr3335
  %W3337 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3338 = getelementptr inbounds [16 x i32], ptr %W3337, i64 0, i64 6
  store i32 %or3336, ptr %arrayidx3338, align 4, !tbaa !11
  %add3339 = add i32 %add3318, %or3336
  %E3340 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1109 = load i32, ptr %E3340, align 4, !tbaa !18
  %add3341 = add i32 %1109, %add3339
  store i32 %add3341, ptr %E3340, align 4, !tbaa !18
  %B3342 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1110 = load i32, ptr %B3342, align 4, !tbaa !15
  %shl3343 = shl i32 %1110, 30
  %B3344 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1111 = load i32, ptr %B3344, align 4, !tbaa !15
  %and3345 = and i32 %1111, -1
  %shr3346 = lshr i32 %and3345, 2
  %or3347 = or i32 %shl3343, %shr3346
  %B3348 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or3347, ptr %B3348, align 4, !tbaa !15
  br label %do.cond3349

do.cond3349:                                      ; preds = %do.body3305
  br label %do.end3350

do.end3350:                                       ; preds = %do.cond3349
  br label %do.body3351

do.body3351:                                      ; preds = %do.end3350
  %E3352 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1112 = load i32, ptr %E3352, align 4, !tbaa !18
  %shl3353 = shl i32 %1112, 5
  %E3354 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1113 = load i32, ptr %E3354, align 4, !tbaa !18
  %and3355 = and i32 %1113, -1
  %shr3356 = lshr i32 %and3355, 27
  %or3357 = or i32 %shl3353, %shr3356
  %A3358 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1114 = load i32, ptr %A3358, align 4, !tbaa !13
  %B3359 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1115 = load i32, ptr %B3359, align 4, !tbaa !15
  %xor3360 = xor i32 %1114, %1115
  %C3361 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1116 = load i32, ptr %C3361, align 4, !tbaa !16
  %xor3362 = xor i32 %xor3360, %1116
  %add3363 = add i32 %or3357, %xor3362
  %add3364 = add i32 %add3363, -899497514
  %W3365 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3366 = getelementptr inbounds [16 x i32], ptr %W3365, i64 0, i64 4
  %1117 = load i32, ptr %arrayidx3366, align 4, !tbaa !11
  %W3367 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3368 = getelementptr inbounds [16 x i32], ptr %W3367, i64 0, i64 15
  %1118 = load i32, ptr %arrayidx3368, align 4, !tbaa !11
  %xor3369 = xor i32 %1117, %1118
  %W3370 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3371 = getelementptr inbounds [16 x i32], ptr %W3370, i64 0, i64 9
  %1119 = load i32, ptr %arrayidx3371, align 4, !tbaa !11
  %xor3372 = xor i32 %xor3369, %1119
  %W3373 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3374 = getelementptr inbounds [16 x i32], ptr %W3373, i64 0, i64 7
  %1120 = load i32, ptr %arrayidx3374, align 4, !tbaa !11
  %xor3375 = xor i32 %xor3372, %1120
  %temp3376 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3375, ptr %temp3376, align 4, !tbaa !19
  %temp3377 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1121 = load i32, ptr %temp3377, align 4, !tbaa !19
  %shl3378 = shl i32 %1121, 1
  %temp3379 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1122 = load i32, ptr %temp3379, align 4, !tbaa !19
  %and3380 = and i32 %1122, -1
  %shr3381 = lshr i32 %and3380, 31
  %or3382 = or i32 %shl3378, %shr3381
  %W3383 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3384 = getelementptr inbounds [16 x i32], ptr %W3383, i64 0, i64 7
  store i32 %or3382, ptr %arrayidx3384, align 4, !tbaa !11
  %add3385 = add i32 %add3364, %or3382
  %D3386 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1123 = load i32, ptr %D3386, align 4, !tbaa !17
  %add3387 = add i32 %1123, %add3385
  store i32 %add3387, ptr %D3386, align 4, !tbaa !17
  %A3388 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1124 = load i32, ptr %A3388, align 4, !tbaa !13
  %shl3389 = shl i32 %1124, 30
  %A3390 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1125 = load i32, ptr %A3390, align 4, !tbaa !13
  %and3391 = and i32 %1125, -1
  %shr3392 = lshr i32 %and3391, 2
  %or3393 = or i32 %shl3389, %shr3392
  %A3394 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or3393, ptr %A3394, align 4, !tbaa !13
  br label %do.cond3395

do.cond3395:                                      ; preds = %do.body3351
  br label %do.end3396

do.end3396:                                       ; preds = %do.cond3395
  br label %do.body3397

do.body3397:                                      ; preds = %do.end3396
  %D3398 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1126 = load i32, ptr %D3398, align 4, !tbaa !17
  %shl3399 = shl i32 %1126, 5
  %D3400 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1127 = load i32, ptr %D3400, align 4, !tbaa !17
  %and3401 = and i32 %1127, -1
  %shr3402 = lshr i32 %and3401, 27
  %or3403 = or i32 %shl3399, %shr3402
  %E3404 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1128 = load i32, ptr %E3404, align 4, !tbaa !18
  %A3405 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1129 = load i32, ptr %A3405, align 4, !tbaa !13
  %xor3406 = xor i32 %1128, %1129
  %B3407 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1130 = load i32, ptr %B3407, align 4, !tbaa !15
  %xor3408 = xor i32 %xor3406, %1130
  %add3409 = add i32 %or3403, %xor3408
  %add3410 = add i32 %add3409, -899497514
  %W3411 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3412 = getelementptr inbounds [16 x i32], ptr %W3411, i64 0, i64 5
  %1131 = load i32, ptr %arrayidx3412, align 4, !tbaa !11
  %W3413 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3414 = getelementptr inbounds [16 x i32], ptr %W3413, i64 0, i64 0
  %1132 = load i32, ptr %arrayidx3414, align 4, !tbaa !11
  %xor3415 = xor i32 %1131, %1132
  %W3416 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3417 = getelementptr inbounds [16 x i32], ptr %W3416, i64 0, i64 10
  %1133 = load i32, ptr %arrayidx3417, align 4, !tbaa !11
  %xor3418 = xor i32 %xor3415, %1133
  %W3419 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3420 = getelementptr inbounds [16 x i32], ptr %W3419, i64 0, i64 8
  %1134 = load i32, ptr %arrayidx3420, align 4, !tbaa !11
  %xor3421 = xor i32 %xor3418, %1134
  %temp3422 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3421, ptr %temp3422, align 4, !tbaa !19
  %temp3423 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1135 = load i32, ptr %temp3423, align 4, !tbaa !19
  %shl3424 = shl i32 %1135, 1
  %temp3425 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1136 = load i32, ptr %temp3425, align 4, !tbaa !19
  %and3426 = and i32 %1136, -1
  %shr3427 = lshr i32 %and3426, 31
  %or3428 = or i32 %shl3424, %shr3427
  %W3429 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3430 = getelementptr inbounds [16 x i32], ptr %W3429, i64 0, i64 8
  store i32 %or3428, ptr %arrayidx3430, align 4, !tbaa !11
  %add3431 = add i32 %add3410, %or3428
  %C3432 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1137 = load i32, ptr %C3432, align 4, !tbaa !16
  %add3433 = add i32 %1137, %add3431
  store i32 %add3433, ptr %C3432, align 4, !tbaa !16
  %E3434 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1138 = load i32, ptr %E3434, align 4, !tbaa !18
  %shl3435 = shl i32 %1138, 30
  %E3436 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1139 = load i32, ptr %E3436, align 4, !tbaa !18
  %and3437 = and i32 %1139, -1
  %shr3438 = lshr i32 %and3437, 2
  %or3439 = or i32 %shl3435, %shr3438
  %E3440 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or3439, ptr %E3440, align 4, !tbaa !18
  br label %do.cond3441

do.cond3441:                                      ; preds = %do.body3397
  br label %do.end3442

do.end3442:                                       ; preds = %do.cond3441
  br label %do.body3443

do.body3443:                                      ; preds = %do.end3442
  %C3444 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1140 = load i32, ptr %C3444, align 4, !tbaa !16
  %shl3445 = shl i32 %1140, 5
  %C3446 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1141 = load i32, ptr %C3446, align 4, !tbaa !16
  %and3447 = and i32 %1141, -1
  %shr3448 = lshr i32 %and3447, 27
  %or3449 = or i32 %shl3445, %shr3448
  %D3450 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1142 = load i32, ptr %D3450, align 4, !tbaa !17
  %E3451 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1143 = load i32, ptr %E3451, align 4, !tbaa !18
  %xor3452 = xor i32 %1142, %1143
  %A3453 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1144 = load i32, ptr %A3453, align 4, !tbaa !13
  %xor3454 = xor i32 %xor3452, %1144
  %add3455 = add i32 %or3449, %xor3454
  %add3456 = add i32 %add3455, -899497514
  %W3457 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3458 = getelementptr inbounds [16 x i32], ptr %W3457, i64 0, i64 6
  %1145 = load i32, ptr %arrayidx3458, align 4, !tbaa !11
  %W3459 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3460 = getelementptr inbounds [16 x i32], ptr %W3459, i64 0, i64 1
  %1146 = load i32, ptr %arrayidx3460, align 4, !tbaa !11
  %xor3461 = xor i32 %1145, %1146
  %W3462 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3463 = getelementptr inbounds [16 x i32], ptr %W3462, i64 0, i64 11
  %1147 = load i32, ptr %arrayidx3463, align 4, !tbaa !11
  %xor3464 = xor i32 %xor3461, %1147
  %W3465 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3466 = getelementptr inbounds [16 x i32], ptr %W3465, i64 0, i64 9
  %1148 = load i32, ptr %arrayidx3466, align 4, !tbaa !11
  %xor3467 = xor i32 %xor3464, %1148
  %temp3468 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3467, ptr %temp3468, align 4, !tbaa !19
  %temp3469 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1149 = load i32, ptr %temp3469, align 4, !tbaa !19
  %shl3470 = shl i32 %1149, 1
  %temp3471 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1150 = load i32, ptr %temp3471, align 4, !tbaa !19
  %and3472 = and i32 %1150, -1
  %shr3473 = lshr i32 %and3472, 31
  %or3474 = or i32 %shl3470, %shr3473
  %W3475 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3476 = getelementptr inbounds [16 x i32], ptr %W3475, i64 0, i64 9
  store i32 %or3474, ptr %arrayidx3476, align 4, !tbaa !11
  %add3477 = add i32 %add3456, %or3474
  %B3478 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1151 = load i32, ptr %B3478, align 4, !tbaa !15
  %add3479 = add i32 %1151, %add3477
  store i32 %add3479, ptr %B3478, align 4, !tbaa !15
  %D3480 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1152 = load i32, ptr %D3480, align 4, !tbaa !17
  %shl3481 = shl i32 %1152, 30
  %D3482 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1153 = load i32, ptr %D3482, align 4, !tbaa !17
  %and3483 = and i32 %1153, -1
  %shr3484 = lshr i32 %and3483, 2
  %or3485 = or i32 %shl3481, %shr3484
  %D3486 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or3485, ptr %D3486, align 4, !tbaa !17
  br label %do.cond3487

do.cond3487:                                      ; preds = %do.body3443
  br label %do.end3488

do.end3488:                                       ; preds = %do.cond3487
  br label %do.body3489

do.body3489:                                      ; preds = %do.end3488
  %B3490 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1154 = load i32, ptr %B3490, align 4, !tbaa !15
  %shl3491 = shl i32 %1154, 5
  %B3492 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1155 = load i32, ptr %B3492, align 4, !tbaa !15
  %and3493 = and i32 %1155, -1
  %shr3494 = lshr i32 %and3493, 27
  %or3495 = or i32 %shl3491, %shr3494
  %C3496 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1156 = load i32, ptr %C3496, align 4, !tbaa !16
  %D3497 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1157 = load i32, ptr %D3497, align 4, !tbaa !17
  %xor3498 = xor i32 %1156, %1157
  %E3499 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1158 = load i32, ptr %E3499, align 4, !tbaa !18
  %xor3500 = xor i32 %xor3498, %1158
  %add3501 = add i32 %or3495, %xor3500
  %add3502 = add i32 %add3501, -899497514
  %W3503 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3504 = getelementptr inbounds [16 x i32], ptr %W3503, i64 0, i64 7
  %1159 = load i32, ptr %arrayidx3504, align 4, !tbaa !11
  %W3505 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3506 = getelementptr inbounds [16 x i32], ptr %W3505, i64 0, i64 2
  %1160 = load i32, ptr %arrayidx3506, align 4, !tbaa !11
  %xor3507 = xor i32 %1159, %1160
  %W3508 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3509 = getelementptr inbounds [16 x i32], ptr %W3508, i64 0, i64 12
  %1161 = load i32, ptr %arrayidx3509, align 4, !tbaa !11
  %xor3510 = xor i32 %xor3507, %1161
  %W3511 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3512 = getelementptr inbounds [16 x i32], ptr %W3511, i64 0, i64 10
  %1162 = load i32, ptr %arrayidx3512, align 4, !tbaa !11
  %xor3513 = xor i32 %xor3510, %1162
  %temp3514 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3513, ptr %temp3514, align 4, !tbaa !19
  %temp3515 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1163 = load i32, ptr %temp3515, align 4, !tbaa !19
  %shl3516 = shl i32 %1163, 1
  %temp3517 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1164 = load i32, ptr %temp3517, align 4, !tbaa !19
  %and3518 = and i32 %1164, -1
  %shr3519 = lshr i32 %and3518, 31
  %or3520 = or i32 %shl3516, %shr3519
  %W3521 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3522 = getelementptr inbounds [16 x i32], ptr %W3521, i64 0, i64 10
  store i32 %or3520, ptr %arrayidx3522, align 4, !tbaa !11
  %add3523 = add i32 %add3502, %or3520
  %A3524 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1165 = load i32, ptr %A3524, align 4, !tbaa !13
  %add3525 = add i32 %1165, %add3523
  store i32 %add3525, ptr %A3524, align 4, !tbaa !13
  %C3526 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1166 = load i32, ptr %C3526, align 4, !tbaa !16
  %shl3527 = shl i32 %1166, 30
  %C3528 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1167 = load i32, ptr %C3528, align 4, !tbaa !16
  %and3529 = and i32 %1167, -1
  %shr3530 = lshr i32 %and3529, 2
  %or3531 = or i32 %shl3527, %shr3530
  %C3532 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or3531, ptr %C3532, align 4, !tbaa !16
  br label %do.cond3533

do.cond3533:                                      ; preds = %do.body3489
  br label %do.end3534

do.end3534:                                       ; preds = %do.cond3533
  br label %do.body3535

do.body3535:                                      ; preds = %do.end3534
  %A3536 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1168 = load i32, ptr %A3536, align 4, !tbaa !13
  %shl3537 = shl i32 %1168, 5
  %A3538 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1169 = load i32, ptr %A3538, align 4, !tbaa !13
  %and3539 = and i32 %1169, -1
  %shr3540 = lshr i32 %and3539, 27
  %or3541 = or i32 %shl3537, %shr3540
  %B3542 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1170 = load i32, ptr %B3542, align 4, !tbaa !15
  %C3543 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1171 = load i32, ptr %C3543, align 4, !tbaa !16
  %xor3544 = xor i32 %1170, %1171
  %D3545 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1172 = load i32, ptr %D3545, align 4, !tbaa !17
  %xor3546 = xor i32 %xor3544, %1172
  %add3547 = add i32 %or3541, %xor3546
  %add3548 = add i32 %add3547, -899497514
  %W3549 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3550 = getelementptr inbounds [16 x i32], ptr %W3549, i64 0, i64 8
  %1173 = load i32, ptr %arrayidx3550, align 4, !tbaa !11
  %W3551 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3552 = getelementptr inbounds [16 x i32], ptr %W3551, i64 0, i64 3
  %1174 = load i32, ptr %arrayidx3552, align 4, !tbaa !11
  %xor3553 = xor i32 %1173, %1174
  %W3554 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3555 = getelementptr inbounds [16 x i32], ptr %W3554, i64 0, i64 13
  %1175 = load i32, ptr %arrayidx3555, align 4, !tbaa !11
  %xor3556 = xor i32 %xor3553, %1175
  %W3557 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3558 = getelementptr inbounds [16 x i32], ptr %W3557, i64 0, i64 11
  %1176 = load i32, ptr %arrayidx3558, align 4, !tbaa !11
  %xor3559 = xor i32 %xor3556, %1176
  %temp3560 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3559, ptr %temp3560, align 4, !tbaa !19
  %temp3561 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1177 = load i32, ptr %temp3561, align 4, !tbaa !19
  %shl3562 = shl i32 %1177, 1
  %temp3563 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1178 = load i32, ptr %temp3563, align 4, !tbaa !19
  %and3564 = and i32 %1178, -1
  %shr3565 = lshr i32 %and3564, 31
  %or3566 = or i32 %shl3562, %shr3565
  %W3567 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3568 = getelementptr inbounds [16 x i32], ptr %W3567, i64 0, i64 11
  store i32 %or3566, ptr %arrayidx3568, align 4, !tbaa !11
  %add3569 = add i32 %add3548, %or3566
  %E3570 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1179 = load i32, ptr %E3570, align 4, !tbaa !18
  %add3571 = add i32 %1179, %add3569
  store i32 %add3571, ptr %E3570, align 4, !tbaa !18
  %B3572 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1180 = load i32, ptr %B3572, align 4, !tbaa !15
  %shl3573 = shl i32 %1180, 30
  %B3574 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1181 = load i32, ptr %B3574, align 4, !tbaa !15
  %and3575 = and i32 %1181, -1
  %shr3576 = lshr i32 %and3575, 2
  %or3577 = or i32 %shl3573, %shr3576
  %B3578 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  store i32 %or3577, ptr %B3578, align 4, !tbaa !15
  br label %do.cond3579

do.cond3579:                                      ; preds = %do.body3535
  br label %do.end3580

do.end3580:                                       ; preds = %do.cond3579
  br label %do.body3581

do.body3581:                                      ; preds = %do.end3580
  %E3582 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1182 = load i32, ptr %E3582, align 4, !tbaa !18
  %shl3583 = shl i32 %1182, 5
  %E3584 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1183 = load i32, ptr %E3584, align 4, !tbaa !18
  %and3585 = and i32 %1183, -1
  %shr3586 = lshr i32 %and3585, 27
  %or3587 = or i32 %shl3583, %shr3586
  %A3588 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1184 = load i32, ptr %A3588, align 4, !tbaa !13
  %B3589 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1185 = load i32, ptr %B3589, align 4, !tbaa !15
  %xor3590 = xor i32 %1184, %1185
  %C3591 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1186 = load i32, ptr %C3591, align 4, !tbaa !16
  %xor3592 = xor i32 %xor3590, %1186
  %add3593 = add i32 %or3587, %xor3592
  %add3594 = add i32 %add3593, -899497514
  %W3595 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3596 = getelementptr inbounds [16 x i32], ptr %W3595, i64 0, i64 9
  %1187 = load i32, ptr %arrayidx3596, align 4, !tbaa !11
  %W3597 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3598 = getelementptr inbounds [16 x i32], ptr %W3597, i64 0, i64 4
  %1188 = load i32, ptr %arrayidx3598, align 4, !tbaa !11
  %xor3599 = xor i32 %1187, %1188
  %W3600 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3601 = getelementptr inbounds [16 x i32], ptr %W3600, i64 0, i64 14
  %1189 = load i32, ptr %arrayidx3601, align 4, !tbaa !11
  %xor3602 = xor i32 %xor3599, %1189
  %W3603 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3604 = getelementptr inbounds [16 x i32], ptr %W3603, i64 0, i64 12
  %1190 = load i32, ptr %arrayidx3604, align 4, !tbaa !11
  %xor3605 = xor i32 %xor3602, %1190
  %temp3606 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3605, ptr %temp3606, align 4, !tbaa !19
  %temp3607 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1191 = load i32, ptr %temp3607, align 4, !tbaa !19
  %shl3608 = shl i32 %1191, 1
  %temp3609 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1192 = load i32, ptr %temp3609, align 4, !tbaa !19
  %and3610 = and i32 %1192, -1
  %shr3611 = lshr i32 %and3610, 31
  %or3612 = or i32 %shl3608, %shr3611
  %W3613 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3614 = getelementptr inbounds [16 x i32], ptr %W3613, i64 0, i64 12
  store i32 %or3612, ptr %arrayidx3614, align 4, !tbaa !11
  %add3615 = add i32 %add3594, %or3612
  %D3616 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1193 = load i32, ptr %D3616, align 4, !tbaa !17
  %add3617 = add i32 %1193, %add3615
  store i32 %add3617, ptr %D3616, align 4, !tbaa !17
  %A3618 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1194 = load i32, ptr %A3618, align 4, !tbaa !13
  %shl3619 = shl i32 %1194, 30
  %A3620 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1195 = load i32, ptr %A3620, align 4, !tbaa !13
  %and3621 = and i32 %1195, -1
  %shr3622 = lshr i32 %and3621, 2
  %or3623 = or i32 %shl3619, %shr3622
  %A3624 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  store i32 %or3623, ptr %A3624, align 4, !tbaa !13
  br label %do.cond3625

do.cond3625:                                      ; preds = %do.body3581
  br label %do.end3626

do.end3626:                                       ; preds = %do.cond3625
  br label %do.body3627

do.body3627:                                      ; preds = %do.end3626
  %D3628 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1196 = load i32, ptr %D3628, align 4, !tbaa !17
  %shl3629 = shl i32 %1196, 5
  %D3630 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1197 = load i32, ptr %D3630, align 4, !tbaa !17
  %and3631 = and i32 %1197, -1
  %shr3632 = lshr i32 %and3631, 27
  %or3633 = or i32 %shl3629, %shr3632
  %E3634 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1198 = load i32, ptr %E3634, align 4, !tbaa !18
  %A3635 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1199 = load i32, ptr %A3635, align 4, !tbaa !13
  %xor3636 = xor i32 %1198, %1199
  %B3637 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1200 = load i32, ptr %B3637, align 4, !tbaa !15
  %xor3638 = xor i32 %xor3636, %1200
  %add3639 = add i32 %or3633, %xor3638
  %add3640 = add i32 %add3639, -899497514
  %W3641 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3642 = getelementptr inbounds [16 x i32], ptr %W3641, i64 0, i64 10
  %1201 = load i32, ptr %arrayidx3642, align 4, !tbaa !11
  %W3643 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3644 = getelementptr inbounds [16 x i32], ptr %W3643, i64 0, i64 5
  %1202 = load i32, ptr %arrayidx3644, align 4, !tbaa !11
  %xor3645 = xor i32 %1201, %1202
  %W3646 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3647 = getelementptr inbounds [16 x i32], ptr %W3646, i64 0, i64 15
  %1203 = load i32, ptr %arrayidx3647, align 4, !tbaa !11
  %xor3648 = xor i32 %xor3645, %1203
  %W3649 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3650 = getelementptr inbounds [16 x i32], ptr %W3649, i64 0, i64 13
  %1204 = load i32, ptr %arrayidx3650, align 4, !tbaa !11
  %xor3651 = xor i32 %xor3648, %1204
  %temp3652 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3651, ptr %temp3652, align 4, !tbaa !19
  %temp3653 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1205 = load i32, ptr %temp3653, align 4, !tbaa !19
  %shl3654 = shl i32 %1205, 1
  %temp3655 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1206 = load i32, ptr %temp3655, align 4, !tbaa !19
  %and3656 = and i32 %1206, -1
  %shr3657 = lshr i32 %and3656, 31
  %or3658 = or i32 %shl3654, %shr3657
  %W3659 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3660 = getelementptr inbounds [16 x i32], ptr %W3659, i64 0, i64 13
  store i32 %or3658, ptr %arrayidx3660, align 4, !tbaa !11
  %add3661 = add i32 %add3640, %or3658
  %C3662 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1207 = load i32, ptr %C3662, align 4, !tbaa !16
  %add3663 = add i32 %1207, %add3661
  store i32 %add3663, ptr %C3662, align 4, !tbaa !16
  %E3664 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1208 = load i32, ptr %E3664, align 4, !tbaa !18
  %shl3665 = shl i32 %1208, 30
  %E3666 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1209 = load i32, ptr %E3666, align 4, !tbaa !18
  %and3667 = and i32 %1209, -1
  %shr3668 = lshr i32 %and3667, 2
  %or3669 = or i32 %shl3665, %shr3668
  %E3670 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  store i32 %or3669, ptr %E3670, align 4, !tbaa !18
  br label %do.cond3671

do.cond3671:                                      ; preds = %do.body3627
  br label %do.end3672

do.end3672:                                       ; preds = %do.cond3671
  br label %do.body3673

do.body3673:                                      ; preds = %do.end3672
  %C3674 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1210 = load i32, ptr %C3674, align 4, !tbaa !16
  %shl3675 = shl i32 %1210, 5
  %C3676 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1211 = load i32, ptr %C3676, align 4, !tbaa !16
  %and3677 = and i32 %1211, -1
  %shr3678 = lshr i32 %and3677, 27
  %or3679 = or i32 %shl3675, %shr3678
  %D3680 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1212 = load i32, ptr %D3680, align 4, !tbaa !17
  %E3681 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1213 = load i32, ptr %E3681, align 4, !tbaa !18
  %xor3682 = xor i32 %1212, %1213
  %A3683 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1214 = load i32, ptr %A3683, align 4, !tbaa !13
  %xor3684 = xor i32 %xor3682, %1214
  %add3685 = add i32 %or3679, %xor3684
  %add3686 = add i32 %add3685, -899497514
  %W3687 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3688 = getelementptr inbounds [16 x i32], ptr %W3687, i64 0, i64 11
  %1215 = load i32, ptr %arrayidx3688, align 4, !tbaa !11
  %W3689 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3690 = getelementptr inbounds [16 x i32], ptr %W3689, i64 0, i64 6
  %1216 = load i32, ptr %arrayidx3690, align 4, !tbaa !11
  %xor3691 = xor i32 %1215, %1216
  %W3692 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3693 = getelementptr inbounds [16 x i32], ptr %W3692, i64 0, i64 0
  %1217 = load i32, ptr %arrayidx3693, align 4, !tbaa !11
  %xor3694 = xor i32 %xor3691, %1217
  %W3695 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3696 = getelementptr inbounds [16 x i32], ptr %W3695, i64 0, i64 14
  %1218 = load i32, ptr %arrayidx3696, align 4, !tbaa !11
  %xor3697 = xor i32 %xor3694, %1218
  %temp3698 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3697, ptr %temp3698, align 4, !tbaa !19
  %temp3699 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1219 = load i32, ptr %temp3699, align 4, !tbaa !19
  %shl3700 = shl i32 %1219, 1
  %temp3701 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1220 = load i32, ptr %temp3701, align 4, !tbaa !19
  %and3702 = and i32 %1220, -1
  %shr3703 = lshr i32 %and3702, 31
  %or3704 = or i32 %shl3700, %shr3703
  %W3705 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3706 = getelementptr inbounds [16 x i32], ptr %W3705, i64 0, i64 14
  store i32 %or3704, ptr %arrayidx3706, align 4, !tbaa !11
  %add3707 = add i32 %add3686, %or3704
  %B3708 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1221 = load i32, ptr %B3708, align 4, !tbaa !15
  %add3709 = add i32 %1221, %add3707
  store i32 %add3709, ptr %B3708, align 4, !tbaa !15
  %D3710 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1222 = load i32, ptr %D3710, align 4, !tbaa !17
  %shl3711 = shl i32 %1222, 30
  %D3712 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1223 = load i32, ptr %D3712, align 4, !tbaa !17
  %and3713 = and i32 %1223, -1
  %shr3714 = lshr i32 %and3713, 2
  %or3715 = or i32 %shl3711, %shr3714
  %D3716 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  store i32 %or3715, ptr %D3716, align 4, !tbaa !17
  br label %do.cond3717

do.cond3717:                                      ; preds = %do.body3673
  br label %do.end3718

do.end3718:                                       ; preds = %do.cond3717
  br label %do.body3719

do.body3719:                                      ; preds = %do.end3718
  %B3720 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1224 = load i32, ptr %B3720, align 4, !tbaa !15
  %shl3721 = shl i32 %1224, 5
  %B3722 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1225 = load i32, ptr %B3722, align 4, !tbaa !15
  %and3723 = and i32 %1225, -1
  %shr3724 = lshr i32 %and3723, 27
  %or3725 = or i32 %shl3721, %shr3724
  %C3726 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1226 = load i32, ptr %C3726, align 4, !tbaa !16
  %D3727 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1227 = load i32, ptr %D3727, align 4, !tbaa !17
  %xor3728 = xor i32 %1226, %1227
  %E3729 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1228 = load i32, ptr %E3729, align 4, !tbaa !18
  %xor3730 = xor i32 %xor3728, %1228
  %add3731 = add i32 %or3725, %xor3730
  %add3732 = add i32 %add3731, -899497514
  %W3733 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3734 = getelementptr inbounds [16 x i32], ptr %W3733, i64 0, i64 12
  %1229 = load i32, ptr %arrayidx3734, align 4, !tbaa !11
  %W3735 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3736 = getelementptr inbounds [16 x i32], ptr %W3735, i64 0, i64 7
  %1230 = load i32, ptr %arrayidx3736, align 4, !tbaa !11
  %xor3737 = xor i32 %1229, %1230
  %W3738 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3739 = getelementptr inbounds [16 x i32], ptr %W3738, i64 0, i64 1
  %1231 = load i32, ptr %arrayidx3739, align 4, !tbaa !11
  %xor3740 = xor i32 %xor3737, %1231
  %W3741 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3742 = getelementptr inbounds [16 x i32], ptr %W3741, i64 0, i64 15
  %1232 = load i32, ptr %arrayidx3742, align 4, !tbaa !11
  %xor3743 = xor i32 %xor3740, %1232
  %temp3744 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  store i32 %xor3743, ptr %temp3744, align 4, !tbaa !19
  %temp3745 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1233 = load i32, ptr %temp3745, align 4, !tbaa !19
  %shl3746 = shl i32 %1233, 1
  %temp3747 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 0
  %1234 = load i32, ptr %temp3747, align 4, !tbaa !19
  %and3748 = and i32 %1234, -1
  %shr3749 = lshr i32 %and3748, 31
  %or3750 = or i32 %shl3746, %shr3749
  %W3751 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 1
  %arrayidx3752 = getelementptr inbounds [16 x i32], ptr %W3751, i64 0, i64 15
  store i32 %or3750, ptr %arrayidx3752, align 4, !tbaa !11
  %add3753 = add i32 %add3732, %or3750
  %A3754 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1235 = load i32, ptr %A3754, align 4, !tbaa !13
  %add3755 = add i32 %1235, %add3753
  store i32 %add3755, ptr %A3754, align 4, !tbaa !13
  %C3756 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1236 = load i32, ptr %C3756, align 4, !tbaa !16
  %shl3757 = shl i32 %1236, 30
  %C3758 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1237 = load i32, ptr %C3758, align 4, !tbaa !16
  %and3759 = and i32 %1237, -1
  %shr3760 = lshr i32 %and3759, 2
  %or3761 = or i32 %shl3757, %shr3760
  %C3762 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  store i32 %or3761, ptr %C3762, align 4, !tbaa !16
  br label %do.cond3763

do.cond3763:                                      ; preds = %do.body3719
  br label %do.end3764

do.end3764:                                       ; preds = %do.cond3763
  %A3765 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 2
  %1238 = load i32, ptr %A3765, align 4, !tbaa !13
  %1239 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state3766 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %1239, i32 0, i32 1
  %arrayidx3767 = getelementptr inbounds [5 x i32], ptr %state3766, i64 0, i64 0
  %1240 = load i32, ptr %arrayidx3767, align 4, !tbaa !11
  %add3768 = add i32 %1240, %1238
  store i32 %add3768, ptr %arrayidx3767, align 4, !tbaa !11
  %B3769 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 3
  %1241 = load i32, ptr %B3769, align 4, !tbaa !15
  %1242 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state3770 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %1242, i32 0, i32 1
  %arrayidx3771 = getelementptr inbounds [5 x i32], ptr %state3770, i64 0, i64 1
  %1243 = load i32, ptr %arrayidx3771, align 4, !tbaa !11
  %add3772 = add i32 %1243, %1241
  store i32 %add3772, ptr %arrayidx3771, align 4, !tbaa !11
  %C3773 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 4
  %1244 = load i32, ptr %C3773, align 4, !tbaa !16
  %1245 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state3774 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %1245, i32 0, i32 1
  %arrayidx3775 = getelementptr inbounds [5 x i32], ptr %state3774, i64 0, i64 2
  %1246 = load i32, ptr %arrayidx3775, align 4, !tbaa !11
  %add3776 = add i32 %1246, %1244
  store i32 %add3776, ptr %arrayidx3775, align 4, !tbaa !11
  %D3777 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 5
  %1247 = load i32, ptr %D3777, align 4, !tbaa !17
  %1248 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state3778 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %1248, i32 0, i32 1
  %arrayidx3779 = getelementptr inbounds [5 x i32], ptr %state3778, i64 0, i64 3
  %1249 = load i32, ptr %arrayidx3779, align 4, !tbaa !11
  %add3780 = add i32 %1249, %1247
  store i32 %add3780, ptr %arrayidx3779, align 4, !tbaa !11
  %E3781 = getelementptr inbounds %struct.anon, ptr %local, i32 0, i32 6
  %1250 = load i32, ptr %E3781, align 4, !tbaa !18
  %1251 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state3782 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %1251, i32 0, i32 1
  %arrayidx3783 = getelementptr inbounds [5 x i32], ptr %state3782, i64 0, i64 4
  %1252 = load i32, ptr %arrayidx3783, align 4, !tbaa !11
  %add3784 = add i32 %1252, %1250
  store i32 %add3784, ptr %arrayidx3783, align 4, !tbaa !11
  call void @mbedtls_platform_zeroize(ptr noundef %local, i64 noundef 88)
  call void @llvm.lifetime.end.p0(i64 88, ptr %local) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_sha1_update(ptr noundef %ctx, ptr noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %fill = alloca i64, align 8
  %left = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  store i32 -110, ptr %ret, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %fill) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #6
  %0 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], ptr %total, i64 0, i64 0
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %and = and i32 %2, 63
  store i32 %and, ptr %left, align 4, !tbaa !11
  %3 = load i32, ptr %left, align 4, !tbaa !11
  %sub = sub i32 64, %3
  %conv = zext i32 %sub to i64
  store i64 %conv, ptr %fill, align 8, !tbaa !20
  %4 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %conv1 = trunc i64 %4 to i32
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total2 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %total2, i64 0, i64 0
  %6 = load i32, ptr %arrayidx3, align 4, !tbaa !11
  %add = add i32 %6, %conv1
  store i32 %add, ptr %arrayidx3, align 4, !tbaa !11
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total4 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %7, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [2 x i32], ptr %total4, i64 0, i64 0
  %8 = load i32, ptr %arrayidx5, align 4, !tbaa !11
  %and6 = and i32 %8, -1
  store i32 %and6, ptr %arrayidx5, align 4, !tbaa !11
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total7 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %9, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x i32], ptr %total7, i64 0, i64 0
  %10 = load i32, ptr %arrayidx8, align 4, !tbaa !11
  %11 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %conv9 = trunc i64 %11 to i32
  %cmp10 = icmp ult i32 %10, %conv9
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total13 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %total13, i64 0, i64 1
  %13 = load i32, ptr %arrayidx14, align 4, !tbaa !11
  %inc = add i32 %13, 1
  store i32 %inc, ptr %arrayidx14, align 4, !tbaa !11
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %14 = load i32, ptr %left, align 4, !tbaa !11
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end15
  %15 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %16 = load i64, ptr %fill, align 8, !tbaa !20
  %cmp16 = icmp uge i64 %15, %16
  br i1 %cmp16, label %if.then18, label %if.end27

if.then18:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %17, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buffer, i64 0, i64 0
  %18 = load i32, ptr %left, align 4, !tbaa !11
  %idx.ext = zext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext
  %19 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %20 = load i64, ptr %fill, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %19, i64 %20, i1 false)
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer19 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %22, i32 0, i32 2
  %arraydecay20 = getelementptr inbounds [64 x i8], ptr %buffer19, i64 0, i64 0
  %call = call i32 @mbedtls_internal_sha1_process(ptr noundef %21, ptr noundef %arraydecay20)
  store i32 %call, ptr %ret, align 4, !tbaa !11
  %cmp21 = icmp ne i32 %call, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then18
  %23 = load i32, ptr %ret, align 4, !tbaa !11
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.then18
  %24 = load i64, ptr %fill, align 8, !tbaa !20
  %25 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %add.ptr25 = getelementptr inbounds i8, ptr %25, i64 %24
  store ptr %add.ptr25, ptr %input.addr, align 8, !tbaa !5
  %26 = load i64, ptr %fill, align 8, !tbaa !20
  %27 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %sub26 = sub i64 %27, %26
  store i64 %sub26, ptr %ilen.addr, align 8, !tbaa !20
  store i32 0, ptr %left, align 4, !tbaa !11
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %land.lhs.true, %if.end15
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %if.end27
  %28 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %cmp28 = icmp uge i64 %28, 64
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %call30 = call i32 @mbedtls_internal_sha1_process(ptr noundef %29, ptr noundef %30)
  store i32 %call30, ptr %ret, align 4, !tbaa !11
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %while.body
  %31 = load i32, ptr %ret, align 4, !tbaa !11
  store i32 %31, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %while.body
  %32 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %add.ptr35 = getelementptr inbounds i8, ptr %32, i64 64
  store ptr %add.ptr35, ptr %input.addr, align 8, !tbaa !5
  %33 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %sub36 = sub i64 %33, 64
  store i64 %sub36, ptr %ilen.addr, align 8, !tbaa !20
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %34 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %cmp37 = icmp ugt i64 %34, 0
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %while.end
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer40 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %35, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [64 x i8], ptr %buffer40, i64 0, i64 0
  %36 = load i32, ptr %left, align 4, !tbaa !11
  %idx.ext42 = zext i32 %36 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %arraydecay41, i64 %idx.ext42
  %37 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %38 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr43, ptr align 1 %37, i64 %38, i1 false)
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %while.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then33, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fill) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_sha1_finish(ptr noundef %ctx, ptr noundef %output) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %used = alloca i32, align 4
  %high = alloca i32, align 4
  %low = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !5
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  store i32 -110, ptr %ret, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #6
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i32], ptr %total, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %and = and i32 %1, 63
  store i32 %and, ptr %used, align 4, !tbaa !11
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %used, align 4, !tbaa !11
  %inc = add i32 %3, 1
  store i32 %inc, ptr %used, align 4, !tbaa !11
  %idxprom = zext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds [64 x i8], ptr %buffer, i64 0, i64 %idxprom
  store i8 -128, ptr %arrayidx1, align 1, !tbaa !10
  %4 = load i32, ptr %used, align 4, !tbaa !11
  %cmp = icmp ule i32 %4, 56
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer2 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buffer2, i64 0, i64 0
  %6 = load i32, ptr %used, align 4, !tbaa !11
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext
  %7 = load i32, ptr %used, align 4, !tbaa !11
  %sub = sub i32 56, %7
  %conv = zext i32 %sub to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv, i1 false)
  br label %if.end16

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer3 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %8, i32 0, i32 2
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %buffer3, i64 0, i64 0
  %9 = load i32, ptr %used, align 4, !tbaa !11
  %idx.ext5 = zext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %arraydecay4, i64 %idx.ext5
  %10 = load i32, ptr %used, align 4, !tbaa !11
  %sub7 = sub i32 64, %10
  %conv8 = zext i32 %sub7 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr6, i8 0, i64 %conv8, i1 false)
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer9 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %12, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %buffer9, i64 0, i64 0
  %call = call i32 @mbedtls_internal_sha1_process(ptr noundef %11, ptr noundef %arraydecay10)
  store i32 %call, ptr %ret, align 4, !tbaa !11
  %cmp11 = icmp ne i32 %call, 0
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  %13 = load i32, ptr %ret, align 4, !tbaa !11
  store i32 %13, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer14 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %14, i32 0, i32 2
  %arraydecay15 = getelementptr inbounds [64 x i8], ptr %buffer14, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay15, i8 0, i64 56, i1 false)
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total17 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %15, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x i32], ptr %total17, i64 0, i64 0
  %16 = load i32, ptr %arrayidx18, align 4, !tbaa !11
  %shr = lshr i32 %16, 29
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total19 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %17, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x i32], ptr %total19, i64 0, i64 1
  %18 = load i32, ptr %arrayidx20, align 4, !tbaa !11
  %shl = shl i32 %18, 3
  %or = or i32 %shr, %shl
  store i32 %or, ptr %high, align 4, !tbaa !11
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %total21 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %19, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x i32], ptr %total21, i64 0, i64 0
  %20 = load i32, ptr %arrayidx22, align 4, !tbaa !11
  %shl23 = shl i32 %20, 3
  store i32 %shl23, ptr %low, align 4, !tbaa !11
  %21 = load i32, ptr %high, align 4, !tbaa !11
  %shr24 = lshr i32 %21, 24
  %and25 = and i32 %shr24, 255
  %conv26 = trunc i32 %and25 to i8
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer27 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %22, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [64 x i8], ptr %buffer27, i64 0, i64 56
  store i8 %conv26, ptr %arrayidx28, align 4, !tbaa !10
  %23 = load i32, ptr %high, align 4, !tbaa !11
  %shr29 = lshr i32 %23, 16
  %and30 = and i32 %shr29, 255
  %conv31 = trunc i32 %and30 to i8
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer32 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %24, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [64 x i8], ptr %buffer32, i64 0, i64 57
  store i8 %conv31, ptr %arrayidx33, align 1, !tbaa !10
  %25 = load i32, ptr %high, align 4, !tbaa !11
  %shr34 = lshr i32 %25, 8
  %and35 = and i32 %shr34, 255
  %conv36 = trunc i32 %and35 to i8
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer37 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %26, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [64 x i8], ptr %buffer37, i64 0, i64 58
  store i8 %conv36, ptr %arrayidx38, align 2, !tbaa !10
  %27 = load i32, ptr %high, align 4, !tbaa !11
  %and39 = and i32 %27, 255
  %conv40 = trunc i32 %and39 to i8
  %28 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer41 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %28, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [64 x i8], ptr %buffer41, i64 0, i64 59
  store i8 %conv40, ptr %arrayidx42, align 1, !tbaa !10
  %29 = load i32, ptr %low, align 4, !tbaa !11
  %shr43 = lshr i32 %29, 24
  %and44 = and i32 %shr43, 255
  %conv45 = trunc i32 %and44 to i8
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer46 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %30, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [64 x i8], ptr %buffer46, i64 0, i64 60
  store i8 %conv45, ptr %arrayidx47, align 4, !tbaa !10
  %31 = load i32, ptr %low, align 4, !tbaa !11
  %shr48 = lshr i32 %31, 16
  %and49 = and i32 %shr48, 255
  %conv50 = trunc i32 %and49 to i8
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer51 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %32, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [64 x i8], ptr %buffer51, i64 0, i64 61
  store i8 %conv50, ptr %arrayidx52, align 1, !tbaa !10
  %33 = load i32, ptr %low, align 4, !tbaa !11
  %shr53 = lshr i32 %33, 8
  %and54 = and i32 %shr53, 255
  %conv55 = trunc i32 %and54 to i8
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer56 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %34, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [64 x i8], ptr %buffer56, i64 0, i64 62
  store i8 %conv55, ptr %arrayidx57, align 2, !tbaa !10
  %35 = load i32, ptr %low, align 4, !tbaa !11
  %and58 = and i32 %35, 255
  %conv59 = trunc i32 %and58 to i8
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer60 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %36, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [64 x i8], ptr %buffer60, i64 0, i64 63
  store i8 %conv59, ptr %arrayidx61, align 1, !tbaa !10
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %buffer62 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %38, i32 0, i32 2
  %arraydecay63 = getelementptr inbounds [64 x i8], ptr %buffer62, i64 0, i64 0
  %call64 = call i32 @mbedtls_internal_sha1_process(ptr noundef %37, ptr noundef %arraydecay63)
  store i32 %call64, ptr %ret, align 4, !tbaa !11
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end16
  %39 = load i32, ptr %ret, align 4, !tbaa !11
  store i32 %39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end68:                                         ; preds = %if.end16
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %40, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [5 x i32], ptr %state, i64 0, i64 0
  %41 = load i32, ptr %arrayidx69, align 4, !tbaa !11
  %shr70 = lshr i32 %41, 24
  %and71 = and i32 %shr70, 255
  %conv72 = trunc i32 %and71 to i8
  %42 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx73 = getelementptr inbounds i8, ptr %42, i64 0
  store i8 %conv72, ptr %arrayidx73, align 1, !tbaa !10
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state74 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %43, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [5 x i32], ptr %state74, i64 0, i64 0
  %44 = load i32, ptr %arrayidx75, align 4, !tbaa !11
  %shr76 = lshr i32 %44, 16
  %and77 = and i32 %shr76, 255
  %conv78 = trunc i32 %and77 to i8
  %45 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx79 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %conv78, ptr %arrayidx79, align 1, !tbaa !10
  %46 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state80 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %46, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [5 x i32], ptr %state80, i64 0, i64 0
  %47 = load i32, ptr %arrayidx81, align 4, !tbaa !11
  %shr82 = lshr i32 %47, 8
  %and83 = and i32 %shr82, 255
  %conv84 = trunc i32 %and83 to i8
  %48 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx85 = getelementptr inbounds i8, ptr %48, i64 2
  store i8 %conv84, ptr %arrayidx85, align 1, !tbaa !10
  %49 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state86 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %49, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [5 x i32], ptr %state86, i64 0, i64 0
  %50 = load i32, ptr %arrayidx87, align 4, !tbaa !11
  %and88 = and i32 %50, 255
  %conv89 = trunc i32 %and88 to i8
  %51 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx90 = getelementptr inbounds i8, ptr %51, i64 3
  store i8 %conv89, ptr %arrayidx90, align 1, !tbaa !10
  %52 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state91 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %52, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [5 x i32], ptr %state91, i64 0, i64 1
  %53 = load i32, ptr %arrayidx92, align 4, !tbaa !11
  %shr93 = lshr i32 %53, 24
  %and94 = and i32 %shr93, 255
  %conv95 = trunc i32 %and94 to i8
  %54 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx96 = getelementptr inbounds i8, ptr %54, i64 4
  store i8 %conv95, ptr %arrayidx96, align 1, !tbaa !10
  %55 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state97 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %55, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [5 x i32], ptr %state97, i64 0, i64 1
  %56 = load i32, ptr %arrayidx98, align 4, !tbaa !11
  %shr99 = lshr i32 %56, 16
  %and100 = and i32 %shr99, 255
  %conv101 = trunc i32 %and100 to i8
  %57 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx102 = getelementptr inbounds i8, ptr %57, i64 5
  store i8 %conv101, ptr %arrayidx102, align 1, !tbaa !10
  %58 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state103 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %58, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [5 x i32], ptr %state103, i64 0, i64 1
  %59 = load i32, ptr %arrayidx104, align 4, !tbaa !11
  %shr105 = lshr i32 %59, 8
  %and106 = and i32 %shr105, 255
  %conv107 = trunc i32 %and106 to i8
  %60 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx108 = getelementptr inbounds i8, ptr %60, i64 6
  store i8 %conv107, ptr %arrayidx108, align 1, !tbaa !10
  %61 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state109 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %61, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [5 x i32], ptr %state109, i64 0, i64 1
  %62 = load i32, ptr %arrayidx110, align 4, !tbaa !11
  %and111 = and i32 %62, 255
  %conv112 = trunc i32 %and111 to i8
  %63 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx113 = getelementptr inbounds i8, ptr %63, i64 7
  store i8 %conv112, ptr %arrayidx113, align 1, !tbaa !10
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state114 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %64, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [5 x i32], ptr %state114, i64 0, i64 2
  %65 = load i32, ptr %arrayidx115, align 4, !tbaa !11
  %shr116 = lshr i32 %65, 24
  %and117 = and i32 %shr116, 255
  %conv118 = trunc i32 %and117 to i8
  %66 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx119 = getelementptr inbounds i8, ptr %66, i64 8
  store i8 %conv118, ptr %arrayidx119, align 1, !tbaa !10
  %67 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state120 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %67, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [5 x i32], ptr %state120, i64 0, i64 2
  %68 = load i32, ptr %arrayidx121, align 4, !tbaa !11
  %shr122 = lshr i32 %68, 16
  %and123 = and i32 %shr122, 255
  %conv124 = trunc i32 %and123 to i8
  %69 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx125 = getelementptr inbounds i8, ptr %69, i64 9
  store i8 %conv124, ptr %arrayidx125, align 1, !tbaa !10
  %70 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state126 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %70, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [5 x i32], ptr %state126, i64 0, i64 2
  %71 = load i32, ptr %arrayidx127, align 4, !tbaa !11
  %shr128 = lshr i32 %71, 8
  %and129 = and i32 %shr128, 255
  %conv130 = trunc i32 %and129 to i8
  %72 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx131 = getelementptr inbounds i8, ptr %72, i64 10
  store i8 %conv130, ptr %arrayidx131, align 1, !tbaa !10
  %73 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state132 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %73, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [5 x i32], ptr %state132, i64 0, i64 2
  %74 = load i32, ptr %arrayidx133, align 4, !tbaa !11
  %and134 = and i32 %74, 255
  %conv135 = trunc i32 %and134 to i8
  %75 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx136 = getelementptr inbounds i8, ptr %75, i64 11
  store i8 %conv135, ptr %arrayidx136, align 1, !tbaa !10
  %76 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state137 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %76, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [5 x i32], ptr %state137, i64 0, i64 3
  %77 = load i32, ptr %arrayidx138, align 4, !tbaa !11
  %shr139 = lshr i32 %77, 24
  %and140 = and i32 %shr139, 255
  %conv141 = trunc i32 %and140 to i8
  %78 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx142 = getelementptr inbounds i8, ptr %78, i64 12
  store i8 %conv141, ptr %arrayidx142, align 1, !tbaa !10
  %79 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state143 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %79, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [5 x i32], ptr %state143, i64 0, i64 3
  %80 = load i32, ptr %arrayidx144, align 4, !tbaa !11
  %shr145 = lshr i32 %80, 16
  %and146 = and i32 %shr145, 255
  %conv147 = trunc i32 %and146 to i8
  %81 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx148 = getelementptr inbounds i8, ptr %81, i64 13
  store i8 %conv147, ptr %arrayidx148, align 1, !tbaa !10
  %82 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state149 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %82, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [5 x i32], ptr %state149, i64 0, i64 3
  %83 = load i32, ptr %arrayidx150, align 4, !tbaa !11
  %shr151 = lshr i32 %83, 8
  %and152 = and i32 %shr151, 255
  %conv153 = trunc i32 %and152 to i8
  %84 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx154 = getelementptr inbounds i8, ptr %84, i64 14
  store i8 %conv153, ptr %arrayidx154, align 1, !tbaa !10
  %85 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state155 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %85, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [5 x i32], ptr %state155, i64 0, i64 3
  %86 = load i32, ptr %arrayidx156, align 4, !tbaa !11
  %and157 = and i32 %86, 255
  %conv158 = trunc i32 %and157 to i8
  %87 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx159 = getelementptr inbounds i8, ptr %87, i64 15
  store i8 %conv158, ptr %arrayidx159, align 1, !tbaa !10
  %88 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state160 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %88, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [5 x i32], ptr %state160, i64 0, i64 4
  %89 = load i32, ptr %arrayidx161, align 4, !tbaa !11
  %shr162 = lshr i32 %89, 24
  %and163 = and i32 %shr162, 255
  %conv164 = trunc i32 %and163 to i8
  %90 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx165 = getelementptr inbounds i8, ptr %90, i64 16
  store i8 %conv164, ptr %arrayidx165, align 1, !tbaa !10
  %91 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state166 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %91, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [5 x i32], ptr %state166, i64 0, i64 4
  %92 = load i32, ptr %arrayidx167, align 4, !tbaa !11
  %shr168 = lshr i32 %92, 16
  %and169 = and i32 %shr168, 255
  %conv170 = trunc i32 %and169 to i8
  %93 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx171 = getelementptr inbounds i8, ptr %93, i64 17
  store i8 %conv170, ptr %arrayidx171, align 1, !tbaa !10
  %94 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state172 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %94, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [5 x i32], ptr %state172, i64 0, i64 4
  %95 = load i32, ptr %arrayidx173, align 4, !tbaa !11
  %shr174 = lshr i32 %95, 8
  %and175 = and i32 %shr174, 255
  %conv176 = trunc i32 %and175 to i8
  %96 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx177 = getelementptr inbounds i8, ptr %96, i64 18
  store i8 %conv176, ptr %arrayidx177, align 1, !tbaa !10
  %97 = load ptr, ptr %ctx.addr, align 8, !tbaa !5
  %state178 = getelementptr inbounds %struct.mbedtls_sha1_context, ptr %97, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [5 x i32], ptr %state178, i64 0, i64 4
  %98 = load i32, ptr %arrayidx179, align 4, !tbaa !11
  %and180 = and i32 %98, 255
  %conv181 = trunc i32 %and180 to i8
  %99 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %arrayidx182 = getelementptr inbounds i8, ptr %99, i64 19
  store i8 %conv181, ptr %arrayidx182, align 1, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then67, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  %100 = load i32, ptr %retval, align 4
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_sha1(ptr noundef %input, i64 noundef %ilen, ptr noundef %output) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %output.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ctx = alloca %struct.mbedtls_sha1_context, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !5
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !20
  store ptr %output, ptr %output.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  store i32 -110, ptr %ret, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 92, ptr %ctx) #6
  call void @mbedtls_sha1_init(ptr noundef %ctx)
  %call = call i32 @mbedtls_sha1_starts(ptr noundef %ctx)
  store i32 %call, ptr %ret, align 4, !tbaa !11
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !5
  %1 = load i64, ptr %ilen.addr, align 8, !tbaa !20
  %call1 = call i32 @mbedtls_sha1_update(ptr noundef %ctx, ptr noundef %0, i64 noundef %1)
  store i32 %call1, ptr %ret, align 4, !tbaa !11
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %output.addr, align 8, !tbaa !5
  %call5 = call i32 @mbedtls_sha1_finish(ptr noundef %ctx, ptr noundef %2)
  store i32 %call5, ptr %ret, align 4, !tbaa !11
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit

if.end8:                                          ; preds = %if.end4
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @mbedtls_sha1_free(ptr noundef %ctx)
  %3 = load i32, ptr %ret, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 92, ptr %ctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mbedtls_sha1_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %buflen = alloca i32, align 4
  %ret = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %sha1sum = alloca [20 x i8], align 16
  %ctx = alloca %struct.mbedtls_sha1_context, align 4
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %buflen) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6
  store i32 0, ptr %ret, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buf) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr %sha1sum) #6
  call void @llvm.lifetime.start.p0(i64 92, ptr %ctx) #6
  call void @mbedtls_sha1_init(ptr noundef %ctx)
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !11
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %verbose.addr, align 4, !tbaa !11
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !11
  %add = add nsw i32 %2, 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call2 = call i32 @mbedtls_sha1_starts(ptr noundef %ctx)
  store i32 %call2, ptr %ret, align 4, !tbaa !11
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %fail

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !11
  %cmp6 = icmp eq i32 %3, 2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  store i32 1000, ptr %buflen, align 4, !tbaa !11
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 97, i64 1000, i1 false)
  store i32 0, ptr %j, align 4, !tbaa !11
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.then7
  %4 = load i32, ptr %j, align 4, !tbaa !11
  %cmp9 = icmp slt i32 %4, 1000
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %arraydecay11 = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %5 = load i32, ptr %buflen, align 4, !tbaa !11
  %conv = sext i32 %5 to i64
  %call12 = call i32 @mbedtls_sha1_update(ptr noundef %ctx, ptr noundef %arraydecay11, i64 noundef %conv)
  store i32 %call12, ptr %ret, align 4, !tbaa !11
  %6 = load i32, ptr %ret, align 4, !tbaa !11
  %cmp13 = icmp ne i32 %6, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body10
  br label %fail

if.end16:                                         ; preds = %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %7 = load i32, ptr %j, align 4, !tbaa !11
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %j, align 4, !tbaa !11
  br label %for.cond8, !llvm.loop !24

for.end:                                          ; preds = %for.cond8
  br label %if.end25

if.else:                                          ; preds = %if.end5
  %8 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x [57 x i8]], ptr @sha1_test_buf, i64 0, i64 %idxprom
  %arraydecay17 = getelementptr inbounds [57 x i8], ptr %arrayidx, i64 0, i64 0
  %9 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom18 = sext i32 %9 to i64
  %arrayidx19 = getelementptr inbounds [3 x i64], ptr @sha1_test_buflen, i64 0, i64 %idxprom18
  %10 = load i64, ptr %arrayidx19, align 8, !tbaa !20
  %call20 = call i32 @mbedtls_sha1_update(ptr noundef %ctx, ptr noundef %arraydecay17, i64 noundef %10)
  store i32 %call20, ptr %ret, align 4, !tbaa !11
  %11 = load i32, ptr %ret, align 4, !tbaa !11
  %cmp21 = icmp ne i32 %11, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else
  br label %fail

if.end24:                                         ; preds = %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %for.end
  %arraydecay26 = getelementptr inbounds [20 x i8], ptr %sha1sum, i64 0, i64 0
  %call27 = call i32 @mbedtls_sha1_finish(ptr noundef %ctx, ptr noundef %arraydecay26)
  store i32 %call27, ptr %ret, align 4, !tbaa !11
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  br label %fail

if.end31:                                         ; preds = %if.end25
  %arraydecay32 = getelementptr inbounds [20 x i8], ptr %sha1sum, i64 0, i64 0
  %12 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom33 = sext i32 %12 to i64
  %arrayidx34 = getelementptr inbounds [3 x [20 x i8]], ptr @sha1_test_sum, i64 0, i64 %idxprom33
  %arraydecay35 = getelementptr inbounds [20 x i8], ptr %arrayidx34, i64 0, i64 0
  %call36 = call i32 @memcmp(ptr noundef %arraydecay32, ptr noundef %arraydecay35, i64 noundef 20) #7
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end31
  store i32 1, ptr %ret, align 4, !tbaa !11
  br label %fail

if.end40:                                         ; preds = %if.end31
  %13 = load i32, ptr %verbose.addr, align 4, !tbaa !11
  %cmp41 = icmp ne i32 %13, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %14 = load i32, ptr %i, align 4, !tbaa !11
  %inc47 = add nsw i32 %14, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !11
  br label %for.cond, !llvm.loop !25

for.end48:                                        ; preds = %for.cond
  %15 = load i32, ptr %verbose.addr, align 4, !tbaa !11
  %cmp49 = icmp ne i32 %15, 0
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %for.end48
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %for.end48
  br label %exit

fail:                                             ; preds = %if.then39, %if.then30, %if.then23, %if.then15, %if.then4
  %16 = load i32, ptr %verbose.addr, align 4, !tbaa !11
  %cmp54 = icmp ne i32 %16, 0
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %fail
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %fail
  br label %exit

exit:                                             ; preds = %if.end58, %if.end53
  call void @mbedtls_sha1_free(ptr noundef %ctx)
  %17 = load i32, ptr %ret, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 92, ptr %ctx) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr %sha1sum) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %buflen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 %17
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i64 0, i64 8, !10, i64 8, i64 20, !10, i64 28, i64 64, !10}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !12, i64 68}
!14 = !{!"", !12, i64 0, !7, i64 4, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84}
!15 = !{!14, !12, i64 72}
!16 = !{!14, !12, i64 76}
!17 = !{!14, !12, i64 80}
!18 = !{!14, !12, i64 84}
!19 = !{!14, !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
