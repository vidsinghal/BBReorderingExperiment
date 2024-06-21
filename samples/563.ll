; ModuleID = 'samples/563.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2n_result = type { i32 }
%struct.s2n_blob = type { ptr, i32, i32, i8 }
%struct.s2n_stuffer = type { %struct.s2n_blob, i32, i32, i32, i8 }

@b64_inverse = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF@\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c:69\00", align 1
@s2n_debug_str = external thread_local global ptr, align 8
@s2n_errno = external thread_local global i32, align 4
@.str.1 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c:87\00", align 1
@.str.2 = private unnamed_addr constant [224 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c:94\00", align 1
@.str.3 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c:100\00", align 1
@.str.4 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c:106\00", align 1
@.str.5 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c:142\00", align 1
@.str.6 = private unnamed_addr constant [225 x i8] c"Error encountered in /local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/s2n/stuffer/s2n_stuffer_base64.c:143\00", align 1
@b64 = internal constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @s2n_is_base64_char(i8 noundef zeroext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1, !tbaa !4
  %0 = load i8, ptr %c.addr, align 1, !tbaa !4
  %idxprom = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @b64_inverse, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 255
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_stuffer_read_base64(ptr noundef %stuffer, ptr noundef %out) #0 {
entry:
  %retval = alloca i32, align 4
  %stuffer.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp1 = alloca %struct.s2n_result, align 4
  %agg.tmp11 = alloca %struct.s2n_result, align 4
  %agg.tmp12 = alloca %struct.s2n_result, align 4
  %bytes_this_round = alloca i32, align 4
  %o_requested_size = alloca i64, align 8
  %o_buf = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %o = alloca %struct.s2n_blob, align 8
  %value1 = alloca i8, align 1
  %value2 = alloca i8, align 1
  %value3 = alloca i8, align 1
  %value4 = alloca i8, align 1
  %ptr = alloca ptr, align 8
  store ptr %stuffer, ptr %stuffer.addr, align 8, !tbaa !7
  store ptr %out, ptr %out.addr, align 8, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp1) #6
  %0 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %call = call i32 @s2n_stuffer_validate(ptr noundef %0)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp1, i32 0, i32 0
  store i32 %call, ptr %coerce.dive, align 4
  %coerce.dive2 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp1, i32 0, i32 0
  %1 = load i32, ptr %coerce.dive2, align 4
  %call3 = call zeroext i1 @s2n_result_is_ok(i32 %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp1) #6
  %lnot = xor i1 %call3, true
  %lnot4 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 0, ptr %__error_signal, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %__error_signal5 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 -1, ptr %__error_signal5, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %2 = load i32, ptr %coerce.dive6, align 4
  %call7 = call zeroext i1 @s2n_result_is_ok(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %do.body8

do.body8:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end
  br label %do.end9

do.end9:                                          ; preds = %if.end
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp12) #6
  %3 = load ptr, ptr %out.addr, align 8, !tbaa !7
  %call13 = call i32 @s2n_stuffer_validate(ptr noundef %3)
  %coerce.dive14 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp12, i32 0, i32 0
  store i32 %call13, ptr %coerce.dive14, align 4
  %coerce.dive15 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp12, i32 0, i32 0
  %4 = load i32, ptr %coerce.dive15, align 4
  %call16 = call zeroext i1 @s2n_result_is_ok(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp12) #6
  %lnot17 = xor i1 %call16, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 1)
  %tobool23 = icmp ne i64 %expval22, 0
  br i1 %tobool23, label %cond.true24, label %cond.false26

cond.true24:                                      ; preds = %do.body10
  %__error_signal25 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp11, i32 0, i32 0
  store i32 0, ptr %__error_signal25, align 4, !tbaa !9
  br label %cond.end28

cond.false26:                                     ; preds = %do.body10
  %__error_signal27 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp11, i32 0, i32 0
  store i32 -1, ptr %__error_signal27, align 4, !tbaa !9
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true24
  %coerce.dive29 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp11, i32 0, i32 0
  %5 = load i32, ptr %coerce.dive29, align 4
  %call30 = call zeroext i1 @s2n_result_is_ok(i32 %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp11) #6
  br i1 %call30, label %if.end34, label %if.then31

if.then31:                                        ; preds = %cond.end28
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  store i32 -1, ptr %retval, align 4
  br label %return

do.end33:                                         ; No predecessors!
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %cond.end28
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_this_round) #6
  store i32 3, ptr %bytes_this_round, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %o_requested_size) #6
  store i64 4, ptr %o_requested_size, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %o_buf) #6
  call void @llvm.memset.p0.i64(ptr align 1 %o_buf, i8 0, i64 4, i1 false)
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  %6 = load i64, ptr %o_requested_size, align 8, !tbaa !13
  %cmp = icmp ule i64 %6, 4
  br i1 %cmp, label %if.end48, label %if.then38

if.then38:                                        ; preds = %do.body36
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  br label %do.body40

do.body40:                                        ; preds = %do.body39
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str, ptr %7, align 8, !tbaa !7
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %8, align 4, !tbaa !12
  %call41 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body40
  br label %do.end42

do.end42:                                         ; preds = %do.cond
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup250

do.cond44:                                        ; No predecessors!
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %do.cond46

do.cond46:                                        ; preds = %do.end45
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %do.body36
  br label %do.cond49

do.cond49:                                        ; preds = %if.end48
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.start.p0(i64 24, ptr %o) #6
  call void @llvm.memset.p0.i64(ptr align 8 %o, i8 0, i64 24, i1 false)
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %arraydecay = getelementptr inbounds [4 x i8], ptr %o_buf, i64 0, i64 0
  %9 = load i64, ptr %o_requested_size, align 8, !tbaa !13
  %conv52 = trunc i64 %9 to i32
  %call53 = call i32 @s2n_blob_init(ptr noundef %o, ptr noundef %arraydecay, i32 noundef %conv52)
  %cmp54 = icmp sgt i32 %call53, -1
  br i1 %cmp54, label %if.end60, label %if.then56

if.then56:                                        ; preds = %do.body51
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

do.cond58:                                        ; No predecessors!
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %do.body51
  br label %do.cond61

do.cond61:                                        ; preds = %if.end60
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  br label %do.body63

do.body63:                                        ; preds = %do.cond245, %do.end62
  %10 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %write_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %write_cursor, align 4, !tbaa !15
  %12 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %read_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %read_cursor, align 8, !tbaa !18
  %sub = sub i32 %11, %13
  %size = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 1
  %14 = load i32, ptr %size, align 8, !tbaa !19
  %cmp64 = icmp ult i32 %sub, %14
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.body63
  br label %do.end248

if.end67:                                         ; preds = %do.body63
  br label %do.body68

do.body68:                                        ; preds = %if.end67
  %15 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %call69 = call i32 @s2n_stuffer_read(ptr noundef %15, ptr noundef %o)
  %cmp70 = icmp sgt i32 %call69, -1
  br i1 %cmp70, label %if.end76, label %if.then72

if.then72:                                        ; preds = %do.body68
  br label %do.body73

do.body73:                                        ; preds = %if.then72
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

do.cond74:                                        ; No predecessors!
  br label %do.end75

do.end75:                                         ; preds = %do.cond74
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %do.body68
  br label %do.cond77

do.cond77:                                        ; preds = %if.end76
  br label %do.end78

do.end78:                                         ; preds = %do.cond77
  call void @llvm.lifetime.start.p0(i64 1, ptr %value1) #6
  %data = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %16 = load ptr, ptr %data, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx, align 1, !tbaa !4
  %idxprom = zext i8 %17 to i64
  %arrayidx79 = getelementptr inbounds [256 x i8], ptr @b64_inverse, i64 0, i64 %idxprom
  %18 = load i8, ptr %arrayidx79, align 1, !tbaa !4
  store i8 %18, ptr %value1, align 1, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %value2) #6
  %data80 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %19 = load ptr, ptr %data80, align 8, !tbaa !20
  %arrayidx81 = getelementptr inbounds i8, ptr %19, i64 1
  %20 = load i8, ptr %arrayidx81, align 1, !tbaa !4
  %idxprom82 = zext i8 %20 to i64
  %arrayidx83 = getelementptr inbounds [256 x i8], ptr @b64_inverse, i64 0, i64 %idxprom82
  %21 = load i8, ptr %arrayidx83, align 1, !tbaa !4
  store i8 %21, ptr %value2, align 1, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %value3) #6
  %data84 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %22 = load ptr, ptr %data84, align 8, !tbaa !20
  %arrayidx85 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx85, align 1, !tbaa !4
  %idxprom86 = zext i8 %23 to i64
  %arrayidx87 = getelementptr inbounds [256 x i8], ptr @b64_inverse, i64 0, i64 %idxprom86
  %24 = load i8, ptr %arrayidx87, align 1, !tbaa !4
  store i8 %24, ptr %value3, align 1, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %value4) #6
  %data88 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %25 = load ptr, ptr %data88, align 8, !tbaa !20
  %arrayidx89 = getelementptr inbounds i8, ptr %25, i64 3
  %26 = load i8, ptr %arrayidx89, align 1, !tbaa !4
  %idxprom90 = zext i8 %26 to i64
  %arrayidx91 = getelementptr inbounds [256 x i8], ptr @b64_inverse, i64 0, i64 %idxprom90
  %27 = load i8, ptr %arrayidx91, align 1, !tbaa !4
  store i8 %27, ptr %value4, align 1, !tbaa !4
  %28 = load i8, ptr %value1, align 1, !tbaa !4
  %conv92 = zext i8 %28 to i32
  %cmp93 = icmp eq i32 %conv92, 255
  br i1 %cmp93, label %if.then95, label %if.end109

if.then95:                                        ; preds = %do.end78
  %size96 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 1
  %29 = load i32, ptr %size96, align 8, !tbaa !19
  %30 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %read_cursor97 = getelementptr inbounds %struct.s2n_stuffer, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %read_cursor97, align 8, !tbaa !18
  %sub98 = sub i32 %31, %29
  store i32 %sub98, ptr %read_cursor97, align 8, !tbaa !18
  br label %do.body99

do.body99:                                        ; preds = %if.then95
  br label %do.body100

do.body100:                                       ; preds = %do.body99
  %32 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.1, ptr %32, align 8, !tbaa !7
  %33 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762055, ptr %33, align 4, !tbaa !12
  %call101 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond102

do.cond102:                                       ; preds = %do.body100
  br label %do.end103

do.end103:                                        ; preds = %do.cond102
  br label %do.body104

do.body104:                                       ; preds = %do.end103
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond105:                                       ; No predecessors!
  br label %do.end106

do.end106:                                        ; preds = %do.cond105
  br label %do.cond107

do.cond107:                                       ; preds = %do.end106
  br label %do.end108

do.end108:                                        ; preds = %do.cond107
  br label %if.end109

if.end109:                                        ; preds = %do.end108, %do.end78
  br label %do.body110

do.body110:                                       ; preds = %if.end109
  %34 = load i8, ptr %value1, align 1, !tbaa !4
  %conv111 = zext i8 %34 to i32
  %cmp112 = icmp eq i32 %conv111, 64
  br i1 %cmp112, label %if.then129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body110
  %35 = load i8, ptr %value2, align 1, !tbaa !4
  %conv114 = zext i8 %35 to i32
  %cmp115 = icmp eq i32 %conv114, 64
  br i1 %cmp115, label %if.then129, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false
  %36 = load i8, ptr %value2, align 1, !tbaa !4
  %conv118 = zext i8 %36 to i32
  %cmp119 = icmp eq i32 %conv118, 255
  br i1 %cmp119, label %if.then129, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false117
  %37 = load i8, ptr %value3, align 1, !tbaa !4
  %conv122 = zext i8 %37 to i32
  %cmp123 = icmp eq i32 %conv122, 255
  br i1 %cmp123, label %if.then129, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false121
  %38 = load i8, ptr %value4, align 1, !tbaa !4
  %conv126 = zext i8 %38 to i32
  %cmp127 = icmp eq i32 %conv126, 255
  br i1 %cmp127, label %if.then129, label %if.end140

if.then129:                                       ; preds = %lor.lhs.false125, %lor.lhs.false121, %lor.lhs.false117, %lor.lhs.false, %do.body110
  br label %do.body130

do.body130:                                       ; preds = %if.then129
  br label %do.body131

do.body131:                                       ; preds = %do.body130
  %39 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.2, ptr %39, align 8, !tbaa !7
  %40 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762055, ptr %40, align 4, !tbaa !12
  %call132 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond133

do.cond133:                                       ; preds = %do.body131
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  br label %do.body135

do.body135:                                       ; preds = %do.end134
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond136:                                       ; No predecessors!
  br label %do.end137

do.end137:                                        ; preds = %do.cond136
  br label %do.cond138

do.cond138:                                       ; preds = %do.end137
  br label %do.end139

do.end139:                                        ; preds = %do.cond138
  br label %if.end140

if.end140:                                        ; preds = %do.end139, %lor.lhs.false125
  br label %do.cond141

do.cond141:                                       ; preds = %if.end140
  br label %do.end142

do.end142:                                        ; preds = %do.cond141
  %data143 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %41 = load ptr, ptr %data143, align 8, !tbaa !20
  %arrayidx144 = getelementptr inbounds i8, ptr %41, i64 2
  %42 = load i8, ptr %arrayidx144, align 1, !tbaa !4
  %conv145 = zext i8 %42 to i32
  %cmp146 = icmp eq i32 %conv145, 61
  br i1 %cmp146, label %if.then148, label %if.else

if.then148:                                       ; preds = %do.end142
  br label %do.body149

do.body149:                                       ; preds = %if.then148
  %data150 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %43 = load ptr, ptr %data150, align 8, !tbaa !20
  %arrayidx151 = getelementptr inbounds i8, ptr %43, i64 3
  %44 = load i8, ptr %arrayidx151, align 1, !tbaa !4
  %conv152 = zext i8 %44 to i32
  %cmp153 = icmp ne i32 %conv152, 61
  br i1 %cmp153, label %if.then158, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %do.body149
  %45 = load i8, ptr %value2, align 1, !tbaa !4
  %conv156 = zext i8 %45 to i32
  %and = and i32 %conv156, 15
  %tobool157 = icmp ne i32 %and, 0
  br i1 %tobool157, label %if.then158, label %if.end169

if.then158:                                       ; preds = %lor.lhs.false155, %do.body149
  br label %do.body159

do.body159:                                       ; preds = %if.then158
  br label %do.body160

do.body160:                                       ; preds = %do.body159
  %46 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.3, ptr %46, align 8, !tbaa !7
  %47 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762055, ptr %47, align 4, !tbaa !12
  %call161 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond162

do.cond162:                                       ; preds = %do.body160
  br label %do.end163

do.end163:                                        ; preds = %do.cond162
  br label %do.body164

do.body164:                                       ; preds = %do.end163
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond165:                                       ; No predecessors!
  br label %do.end166

do.end166:                                        ; preds = %do.cond165
  br label %do.cond167

do.cond167:                                       ; preds = %do.end166
  br label %do.end168

do.end168:                                        ; preds = %do.cond167
  br label %if.end169

if.end169:                                        ; preds = %do.end168, %lor.lhs.false155
  br label %do.cond170

do.cond170:                                       ; preds = %if.end169
  br label %do.end171

do.end171:                                        ; preds = %do.cond170
  store i32 1, ptr %bytes_this_round, align 4, !tbaa !12
  store i8 0, ptr %value3, align 1, !tbaa !4
  store i8 0, ptr %value4, align 1, !tbaa !4
  br label %if.end197

if.else:                                          ; preds = %do.end142
  %data172 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %48 = load ptr, ptr %data172, align 8, !tbaa !20
  %arrayidx173 = getelementptr inbounds i8, ptr %48, i64 3
  %49 = load i8, ptr %arrayidx173, align 1, !tbaa !4
  %conv174 = zext i8 %49 to i32
  %cmp175 = icmp eq i32 %conv174, 61
  br i1 %cmp175, label %if.then177, label %if.end196

if.then177:                                       ; preds = %if.else
  br label %do.body178

do.body178:                                       ; preds = %if.then177
  %50 = load i8, ptr %value3, align 1, !tbaa !4
  %conv179 = zext i8 %50 to i32
  %and180 = and i32 %conv179, 3
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %if.then182, label %if.end193

if.then182:                                       ; preds = %do.body178
  br label %do.body183

do.body183:                                       ; preds = %if.then182
  br label %do.body184

do.body184:                                       ; preds = %do.body183
  %51 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.4, ptr %51, align 8, !tbaa !7
  %52 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 469762055, ptr %52, align 4, !tbaa !12
  %call185 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond186

do.cond186:                                       ; preds = %do.body184
  br label %do.end187

do.end187:                                        ; preds = %do.cond186
  br label %do.body188

do.body188:                                       ; preds = %do.end187
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond189:                                       ; No predecessors!
  br label %do.end190

do.end190:                                        ; preds = %do.cond189
  br label %do.cond191

do.cond191:                                       ; preds = %do.end190
  br label %do.end192

do.end192:                                        ; preds = %do.cond191
  br label %if.end193

if.end193:                                        ; preds = %do.end192, %do.body178
  br label %do.cond194

do.cond194:                                       ; preds = %if.end193
  br label %do.end195

do.end195:                                        ; preds = %do.cond194
  store i32 2, ptr %bytes_this_round, align 4, !tbaa !12
  store i8 0, ptr %value4, align 1, !tbaa !4
  br label %if.end196

if.end196:                                        ; preds = %do.end195, %if.else
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %do.end171
  br label %do.body198

do.body198:                                       ; preds = %if.end197
  %53 = load ptr, ptr %out.addr, align 8, !tbaa !7
  %54 = load i32, ptr %bytes_this_round, align 4, !tbaa !12
  %call199 = call i32 @s2n_stuffer_skip_write(ptr noundef %53, i32 noundef %54)
  %cmp200 = icmp sgt i32 %call199, -1
  br i1 %cmp200, label %if.end206, label %if.then202

if.then202:                                       ; preds = %do.body198
  br label %do.body203

do.body203:                                       ; preds = %if.then202
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond204:                                       ; No predecessors!
  br label %do.end205

do.end205:                                        ; preds = %do.cond204
  br label %if.end206

if.end206:                                        ; preds = %do.end205, %do.body198
  br label %do.cond207

do.cond207:                                       ; preds = %if.end206
  br label %do.end208

do.end208:                                        ; preds = %do.cond207
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #6
  %55 = load ptr, ptr %out.addr, align 8, !tbaa !7
  %blob = getelementptr inbounds %struct.s2n_stuffer, ptr %55, i32 0, i32 0
  %data209 = getelementptr inbounds %struct.s2n_blob, ptr %blob, i32 0, i32 0
  %56 = load ptr, ptr %data209, align 8, !tbaa !21
  %57 = load ptr, ptr %out.addr, align 8, !tbaa !7
  %write_cursor210 = getelementptr inbounds %struct.s2n_stuffer, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %write_cursor210, align 4, !tbaa !15
  %idx.ext = zext i32 %58 to i64
  %add.ptr = getelementptr inbounds i8, ptr %56, i64 %idx.ext
  %59 = load i32, ptr %bytes_this_round, align 4, !tbaa !12
  %idx.ext211 = sext i32 %59 to i64
  %idx.neg = sub i64 0, %idx.ext211
  %add.ptr212 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  store ptr %add.ptr212, ptr %ptr, align 8, !tbaa !7
  %60 = load i8, ptr %value1, align 1, !tbaa !4
  %conv213 = zext i8 %60 to i32
  %shl = shl i32 %conv213, 2
  %and214 = and i32 %shl, 252
  %61 = load i8, ptr %value2, align 1, !tbaa !4
  %conv215 = zext i8 %61 to i32
  %shr = ashr i32 %conv215, 4
  %and216 = and i32 %shr, 3
  %or = or i32 %and214, %and216
  %conv217 = trunc i32 %or to i8
  %62 = load ptr, ptr %ptr, align 8, !tbaa !7
  store i8 %conv217, ptr %62, align 1, !tbaa !4
  %63 = load i32, ptr %bytes_this_round, align 4, !tbaa !12
  %cmp218 = icmp sgt i32 %63, 1
  br i1 %cmp218, label %if.then220, label %if.end229

if.then220:                                       ; preds = %do.end208
  %64 = load ptr, ptr %ptr, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i8, ptr %64, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8, !tbaa !7
  %65 = load i8, ptr %value2, align 1, !tbaa !4
  %conv221 = zext i8 %65 to i32
  %shl222 = shl i32 %conv221, 4
  %and223 = and i32 %shl222, 240
  %66 = load i8, ptr %value3, align 1, !tbaa !4
  %conv224 = zext i8 %66 to i32
  %shr225 = ashr i32 %conv224, 2
  %and226 = and i32 %shr225, 15
  %or227 = or i32 %and223, %and226
  %conv228 = trunc i32 %or227 to i8
  %67 = load ptr, ptr %ptr, align 8, !tbaa !7
  store i8 %conv228, ptr %67, align 1, !tbaa !4
  br label %if.end229

if.end229:                                        ; preds = %if.then220, %do.end208
  %68 = load i32, ptr %bytes_this_round, align 4, !tbaa !12
  %cmp230 = icmp sgt i32 %68, 2
  br i1 %cmp230, label %if.then232, label %if.end241

if.then232:                                       ; preds = %if.end229
  %69 = load ptr, ptr %ptr, align 8, !tbaa !7
  %incdec.ptr233 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr233, ptr %ptr, align 8, !tbaa !7
  %70 = load i8, ptr %value3, align 1, !tbaa !4
  %conv234 = zext i8 %70 to i32
  %shl235 = shl i32 %conv234, 6
  %and236 = and i32 %shl235, 192
  %71 = load i8, ptr %value4, align 1, !tbaa !4
  %conv237 = zext i8 %71 to i32
  %and238 = and i32 %conv237, 63
  %or239 = or i32 %and236, %and238
  %conv240 = trunc i32 %or239 to i8
  %72 = load ptr, ptr %ptr, align 8, !tbaa !7
  store i8 %conv240, ptr %72, align 1, !tbaa !4
  br label %if.end241

if.end241:                                        ; preds = %if.then232, %if.end229
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #6
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %do.body203, %do.body188, %do.body164, %do.body135, %do.body104
  call void @llvm.lifetime.end.p0(i64 1, ptr %value4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %value3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %value2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %value1) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup249 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond245

do.cond245:                                       ; preds = %cleanup.cont
  %73 = load i32, ptr %bytes_this_round, align 4, !tbaa !12
  %cmp246 = icmp eq i32 %73, 3
  br i1 %cmp246, label %do.body63, label %do.end248

do.end248:                                        ; preds = %do.cond245, %if.then66
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

cleanup249:                                       ; preds = %do.end248, %cleanup, %do.body73, %do.body57
  call void @llvm.lifetime.end.p0(i64 24, ptr %o) #6
  br label %cleanup250

cleanup250:                                       ; preds = %cleanup249, %do.body43
  call void @llvm.lifetime.end.p0(i64 4, ptr %o_buf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %o_requested_size) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_this_round) #6
  br label %return

return:                                           ; preds = %cleanup250, %do.body32, %do.body8
  %74 = load i32, ptr %retval, align 4
  ret i32 %74
}

declare zeroext i1 @s2n_result_is_ok(i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @s2n_stuffer_validate(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #5

declare i32 @s2n_calculate_stacktrace() #1

declare i32 @s2n_blob_init(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @s2n_stuffer_read(ptr noundef, ptr noundef) #1

declare i32 @s2n_stuffer_skip_write(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @s2n_stuffer_write_base64(ptr noundef %stuffer, ptr noundef %in) #0 {
entry:
  %retval = alloca i32, align 4
  %stuffer.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.s2n_result, align 4
  %agg.tmp1 = alloca %struct.s2n_result, align 4
  %agg.tmp11 = alloca %struct.s2n_result, align 4
  %agg.tmp12 = alloca %struct.s2n_result, align 4
  %o_requested_size = alloca i64, align 8
  %o_buf = alloca [4 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %o = alloca %struct.s2n_blob, align 8
  %i_requested_size = alloca i64, align 8
  %i_buf = alloca [3 x i8], align 1
  %i = alloca %struct.s2n_blob, align 8
  %c = alloca i8, align 1
  store ptr %stuffer, ptr %stuffer.addr, align 8, !tbaa !7
  store ptr %in, ptr %in.addr, align 8, !tbaa !7
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp1) #6
  %0 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %call = call i32 @s2n_stuffer_validate(ptr noundef %0)
  %coerce.dive = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp1, i32 0, i32 0
  store i32 %call, ptr %coerce.dive, align 4
  %coerce.dive2 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp1, i32 0, i32 0
  %1 = load i32, ptr %coerce.dive2, align 4
  %call3 = call zeroext i1 @s2n_result_is_ok(i32 %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp1) #6
  %lnot = xor i1 %call3, true
  %lnot4 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %__error_signal = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 0, ptr %__error_signal, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %__error_signal5 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  store i32 -1, ptr %__error_signal5, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %coerce.dive6 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp, i32 0, i32 0
  %2 = load i32, ptr %coerce.dive6, align 4
  %call7 = call zeroext i1 @s2n_result_is_ok(i32 %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp) #6
  br i1 %call7, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  br label %do.body8

do.body8:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end
  br label %do.end9

do.end9:                                          ; preds = %if.end
  br label %do.body10

do.body10:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp11) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg.tmp12) #6
  %3 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %call13 = call i32 @s2n_stuffer_validate(ptr noundef %3)
  %coerce.dive14 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp12, i32 0, i32 0
  store i32 %call13, ptr %coerce.dive14, align 4
  %coerce.dive15 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp12, i32 0, i32 0
  %4 = load i32, ptr %coerce.dive15, align 4
  %call16 = call zeroext i1 @s2n_result_is_ok(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp12) #6
  %lnot17 = xor i1 %call16, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 1)
  %tobool23 = icmp ne i64 %expval22, 0
  br i1 %tobool23, label %cond.true24, label %cond.false26

cond.true24:                                      ; preds = %do.body10
  %__error_signal25 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp11, i32 0, i32 0
  store i32 0, ptr %__error_signal25, align 4, !tbaa !9
  br label %cond.end28

cond.false26:                                     ; preds = %do.body10
  %__error_signal27 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp11, i32 0, i32 0
  store i32 -1, ptr %__error_signal27, align 4, !tbaa !9
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true24
  %coerce.dive29 = getelementptr inbounds %struct.s2n_result, ptr %agg.tmp11, i32 0, i32 0
  %5 = load i32, ptr %coerce.dive29, align 4
  %call30 = call zeroext i1 @s2n_result_is_ok(i32 %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg.tmp11) #6
  br i1 %call30, label %if.end34, label %if.then31

if.then31:                                        ; preds = %cond.end28
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  store i32 -1, ptr %retval, align 4
  br label %return

do.end33:                                         ; No predecessors!
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %cond.end28
  br label %do.end35

do.end35:                                         ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 8, ptr %o_requested_size) #6
  store i64 4, ptr %o_requested_size, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %o_buf) #6
  call void @llvm.memset.p0.i64(ptr align 1 %o_buf, i8 0, i64 4, i1 false)
  br label %do.body36

do.body36:                                        ; preds = %do.end35
  %6 = load i64, ptr %o_requested_size, align 8, !tbaa !13
  %cmp = icmp ule i64 %6, 4
  br i1 %cmp, label %if.end48, label %if.then38

if.then38:                                        ; preds = %do.body36
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  br label %do.body40

do.body40:                                        ; preds = %do.body39
  %7 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.5, ptr %7, align 8, !tbaa !7
  %8 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %8, align 4, !tbaa !12
  %call41 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond

do.cond:                                          ; preds = %do.body40
  br label %do.end42

do.end42:                                         ; preds = %do.cond
  br label %do.body43

do.body43:                                        ; preds = %do.end42
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

do.cond44:                                        ; No predecessors!
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %do.cond46

do.cond46:                                        ; preds = %do.end45
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %do.body36
  br label %do.cond49

do.cond49:                                        ; preds = %if.end48
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.start.p0(i64 24, ptr %o) #6
  call void @llvm.memset.p0.i64(ptr align 8 %o, i8 0, i64 24, i1 false)
  br label %do.body51

do.body51:                                        ; preds = %do.end50
  %arraydecay = getelementptr inbounds [4 x i8], ptr %o_buf, i64 0, i64 0
  %9 = load i64, ptr %o_requested_size, align 8, !tbaa !13
  %conv52 = trunc i64 %9 to i32
  %call53 = call i32 @s2n_blob_init(ptr noundef %o, ptr noundef %arraydecay, i32 noundef %conv52)
  %cmp54 = icmp sgt i32 %call53, -1
  br i1 %cmp54, label %if.end60, label %if.then56

if.then56:                                        ; preds = %do.body51
  br label %do.body57

do.body57:                                        ; preds = %if.then56
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup248

do.cond58:                                        ; No predecessors!
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %do.body51
  br label %do.cond61

do.cond61:                                        ; preds = %if.end60
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_requested_size) #6
  store i64 3, ptr %i_requested_size, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 3, ptr %i_buf) #6
  call void @llvm.memset.p0.i64(ptr align 1 %i_buf, i8 0, i64 3, i1 false)
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %10 = load i64, ptr %i_requested_size, align 8, !tbaa !13
  %cmp64 = icmp ule i64 %10, 3
  br i1 %cmp64, label %if.end77, label %if.then66

if.then66:                                        ; preds = %do.body63
  br label %do.body67

do.body67:                                        ; preds = %if.then66
  br label %do.body68

do.body68:                                        ; preds = %do.body67
  %11 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @s2n_debug_str)
  store ptr @.str.6, ptr %11, align 8, !tbaa !7
  %12 = call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @s2n_errno)
  store i32 402653194, ptr %12, align 4, !tbaa !12
  %call69 = call i32 @s2n_calculate_stacktrace()
  br label %do.cond70

do.cond70:                                        ; preds = %do.body68
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  br label %do.body72

do.body72:                                        ; preds = %do.end71
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup246

do.cond73:                                        ; No predecessors!
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  br label %do.cond75

do.cond75:                                        ; preds = %do.end74
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.body63
  br label %do.cond78

do.cond78:                                        ; preds = %if.end77
  br label %do.end79

do.end79:                                         ; preds = %do.cond78
  call void @llvm.lifetime.start.p0(i64 24, ptr %i) #6
  call void @llvm.memset.p0.i64(ptr align 8 %i, i8 0, i64 24, i1 false)
  br label %do.body80

do.body80:                                        ; preds = %do.end79
  %arraydecay81 = getelementptr inbounds [3 x i8], ptr %i_buf, i64 0, i64 0
  %13 = load i64, ptr %i_requested_size, align 8, !tbaa !13
  %conv82 = trunc i64 %13 to i32
  %call83 = call i32 @s2n_blob_init(ptr noundef %i, ptr noundef %arraydecay81, i32 noundef %conv82)
  %cmp84 = icmp sgt i32 %call83, -1
  br i1 %cmp84, label %if.end90, label %if.then86

if.then86:                                        ; preds = %do.body80
  br label %do.body87

do.body87:                                        ; preds = %if.then86
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond88:                                        ; No predecessors!
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  br label %if.end90

if.end90:                                         ; preds = %do.end89, %do.body80
  br label %do.cond91

do.cond91:                                        ; preds = %if.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  br label %while.cond

while.cond:                                       ; preds = %do.end156, %do.end92
  %14 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %write_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %write_cursor, align 4, !tbaa !15
  %16 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %read_cursor = getelementptr inbounds %struct.s2n_stuffer, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %read_cursor, align 8, !tbaa !18
  %sub = sub i32 %15, %17
  %cmp93 = icmp ugt i32 %sub, 2
  br i1 %cmp93, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body95

do.body95:                                        ; preds = %while.body
  %18 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %call96 = call i32 @s2n_stuffer_read(ptr noundef %18, ptr noundef %i)
  %cmp97 = icmp sgt i32 %call96, -1
  br i1 %cmp97, label %if.end103, label %if.then99

if.then99:                                        ; preds = %do.body95
  br label %do.body100

do.body100:                                       ; preds = %if.then99
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond101:                                       ; No predecessors!
  br label %do.end102

do.end102:                                        ; preds = %do.cond101
  br label %if.end103

if.end103:                                        ; preds = %do.end102, %do.body95
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  %data = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %19 = load ptr, ptr %data, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx, align 1, !tbaa !4
  %conv106 = zext i8 %20 to i32
  %shr = ashr i32 %conv106, 2
  %and = and i32 %shr, 63
  %idxprom = sext i32 %and to i64
  %arrayidx107 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom
  %21 = load i8, ptr %arrayidx107, align 1, !tbaa !4
  %data108 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %22 = load ptr, ptr %data108, align 8, !tbaa !20
  %arrayidx109 = getelementptr inbounds i8, ptr %22, i64 0
  store i8 %21, ptr %arrayidx109, align 1, !tbaa !4
  %data110 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %23 = load ptr, ptr %data110, align 8, !tbaa !20
  %arrayidx111 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx111, align 1, !tbaa !4
  %conv112 = zext i8 %24 to i32
  %shl = shl i32 %conv112, 4
  %and113 = and i32 %shl, 48
  %data114 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %25 = load ptr, ptr %data114, align 8, !tbaa !20
  %arrayidx115 = getelementptr inbounds i8, ptr %25, i64 1
  %26 = load i8, ptr %arrayidx115, align 1, !tbaa !4
  %conv116 = zext i8 %26 to i32
  %shr117 = ashr i32 %conv116, 4
  %and118 = and i32 %shr117, 15
  %or = or i32 %and113, %and118
  %idxprom119 = sext i32 %or to i64
  %arrayidx120 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom119
  %27 = load i8, ptr %arrayidx120, align 1, !tbaa !4
  %data121 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %28 = load ptr, ptr %data121, align 8, !tbaa !20
  %arrayidx122 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %27, ptr %arrayidx122, align 1, !tbaa !4
  %data123 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %29 = load ptr, ptr %data123, align 8, !tbaa !20
  %arrayidx124 = getelementptr inbounds i8, ptr %29, i64 1
  %30 = load i8, ptr %arrayidx124, align 1, !tbaa !4
  %conv125 = zext i8 %30 to i32
  %shl126 = shl i32 %conv125, 2
  %and127 = and i32 %shl126, 60
  %data128 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %31 = load ptr, ptr %data128, align 8, !tbaa !20
  %arrayidx129 = getelementptr inbounds i8, ptr %31, i64 2
  %32 = load i8, ptr %arrayidx129, align 1, !tbaa !4
  %conv130 = zext i8 %32 to i32
  %shr131 = ashr i32 %conv130, 6
  %and132 = and i32 %shr131, 3
  %or133 = or i32 %and127, %and132
  %idxprom134 = sext i32 %or133 to i64
  %arrayidx135 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom134
  %33 = load i8, ptr %arrayidx135, align 1, !tbaa !4
  %data136 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %34 = load ptr, ptr %data136, align 8, !tbaa !20
  %arrayidx137 = getelementptr inbounds i8, ptr %34, i64 2
  store i8 %33, ptr %arrayidx137, align 1, !tbaa !4
  %data138 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %35 = load ptr, ptr %data138, align 8, !tbaa !20
  %arrayidx139 = getelementptr inbounds i8, ptr %35, i64 2
  %36 = load i8, ptr %arrayidx139, align 1, !tbaa !4
  %conv140 = zext i8 %36 to i32
  %and141 = and i32 %conv140, 63
  %idxprom142 = sext i32 %and141 to i64
  %arrayidx143 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom142
  %37 = load i8, ptr %arrayidx143, align 1, !tbaa !4
  %data144 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %38 = load ptr, ptr %data144, align 8, !tbaa !20
  %arrayidx145 = getelementptr inbounds i8, ptr %38, i64 3
  store i8 %37, ptr %arrayidx145, align 1, !tbaa !4
  br label %do.body146

do.body146:                                       ; preds = %do.end105
  %39 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %call147 = call i32 @s2n_stuffer_write(ptr noundef %39, ptr noundef %o)
  %cmp148 = icmp sgt i32 %call147, -1
  br i1 %cmp148, label %if.end154, label %if.then150

if.then150:                                       ; preds = %do.body146
  br label %do.body151

do.body151:                                       ; preds = %if.then150
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond152:                                       ; No predecessors!
  br label %do.end153

do.end153:                                        ; preds = %do.cond152
  br label %if.end154

if.end154:                                        ; preds = %do.end153, %do.body146
  br label %do.cond155

do.cond155:                                       ; preds = %if.end154
  br label %do.end156

do.end156:                                        ; preds = %do.cond155
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %write_cursor157 = getelementptr inbounds %struct.s2n_stuffer, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %write_cursor157, align 4, !tbaa !15
  %42 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %read_cursor158 = getelementptr inbounds %struct.s2n_stuffer, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %read_cursor158, align 8, !tbaa !18
  %sub159 = sub i32 %41, %43
  %tobool160 = icmp ne i32 %sub159, 0
  br i1 %tobool160, label %if.then161, label %if.end244

if.then161:                                       ; preds = %while.end
  %size = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 1
  store i32 1, ptr %size, align 8, !tbaa !19
  br label %do.body162

do.body162:                                       ; preds = %if.then161
  %44 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %call163 = call i32 @s2n_stuffer_read(ptr noundef %44, ptr noundef %i)
  %cmp164 = icmp sgt i32 %call163, -1
  br i1 %cmp164, label %if.end170, label %if.then166

if.then166:                                       ; preds = %do.body162
  br label %do.body167

do.body167:                                       ; preds = %if.then166
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond168:                                       ; No predecessors!
  br label %do.end169

do.end169:                                        ; preds = %do.cond168
  br label %if.end170

if.end170:                                        ; preds = %do.end169, %do.body162
  br label %do.cond171

do.cond171:                                       ; preds = %if.end170
  br label %do.end172

do.end172:                                        ; preds = %do.cond171
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #6
  %data173 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %45 = load ptr, ptr %data173, align 8, !tbaa !20
  %arrayidx174 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx174, align 1, !tbaa !4
  store i8 %46, ptr %c, align 1, !tbaa !4
  %47 = load i8, ptr %c, align 1, !tbaa !4
  %conv175 = zext i8 %47 to i32
  %shr176 = ashr i32 %conv175, 2
  %and177 = and i32 %shr176, 63
  %idxprom178 = sext i32 %and177 to i64
  %arrayidx179 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom178
  %48 = load i8, ptr %arrayidx179, align 1, !tbaa !4
  %data180 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %49 = load ptr, ptr %data180, align 8, !tbaa !20
  %arrayidx181 = getelementptr inbounds i8, ptr %49, i64 0
  store i8 %48, ptr %arrayidx181, align 1, !tbaa !4
  %data182 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %50 = load ptr, ptr %data182, align 8, !tbaa !20
  %arrayidx183 = getelementptr inbounds i8, ptr %50, i64 3
  store i8 61, ptr %arrayidx183, align 1, !tbaa !4
  %51 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %write_cursor184 = getelementptr inbounds %struct.s2n_stuffer, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %write_cursor184, align 4, !tbaa !15
  %53 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %read_cursor185 = getelementptr inbounds %struct.s2n_stuffer, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %read_cursor185, align 8, !tbaa !18
  %sub186 = sub i32 %52, %54
  %cmp187 = icmp eq i32 %sub186, 0
  br i1 %cmp187, label %if.then189, label %if.else

if.then189:                                       ; preds = %do.end172
  %55 = load i8, ptr %c, align 1, !tbaa !4
  %conv190 = zext i8 %55 to i32
  %shl191 = shl i32 %conv190, 4
  %and192 = and i32 %shl191, 48
  %idxprom193 = sext i32 %and192 to i64
  %arrayidx194 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom193
  %56 = load i8, ptr %arrayidx194, align 1, !tbaa !4
  %data195 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %57 = load ptr, ptr %data195, align 8, !tbaa !20
  %arrayidx196 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %56, ptr %arrayidx196, align 1, !tbaa !4
  %data197 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %58 = load ptr, ptr %data197, align 8, !tbaa !20
  %arrayidx198 = getelementptr inbounds i8, ptr %58, i64 2
  store i8 61, ptr %arrayidx198, align 1, !tbaa !4
  br label %if.end232

if.else:                                          ; preds = %do.end172
  br label %do.body199

do.body199:                                       ; preds = %if.else
  %59 = load ptr, ptr %in.addr, align 8, !tbaa !7
  %call200 = call i32 @s2n_stuffer_read(ptr noundef %59, ptr noundef %i)
  %cmp201 = icmp sgt i32 %call200, -1
  br i1 %cmp201, label %if.end207, label %if.then203

if.then203:                                       ; preds = %do.body199
  br label %do.body204

do.body204:                                       ; preds = %if.then203
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond205:                                       ; No predecessors!
  br label %do.end206

do.end206:                                        ; preds = %do.cond205
  br label %if.end207

if.end207:                                        ; preds = %do.end206, %do.body199
  br label %do.cond208

do.cond208:                                       ; preds = %if.end207
  br label %do.end209

do.end209:                                        ; preds = %do.cond208
  %60 = load i8, ptr %c, align 1, !tbaa !4
  %conv210 = zext i8 %60 to i32
  %shl211 = shl i32 %conv210, 4
  %and212 = and i32 %shl211, 48
  %data213 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %61 = load ptr, ptr %data213, align 8, !tbaa !20
  %arrayidx214 = getelementptr inbounds i8, ptr %61, i64 0
  %62 = load i8, ptr %arrayidx214, align 1, !tbaa !4
  %conv215 = zext i8 %62 to i32
  %shr216 = ashr i32 %conv215, 4
  %and217 = and i32 %shr216, 15
  %or218 = or i32 %and212, %and217
  %idxprom219 = sext i32 %or218 to i64
  %arrayidx220 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom219
  %63 = load i8, ptr %arrayidx220, align 1, !tbaa !4
  %data221 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %64 = load ptr, ptr %data221, align 8, !tbaa !20
  %arrayidx222 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 %63, ptr %arrayidx222, align 1, !tbaa !4
  %data223 = getelementptr inbounds %struct.s2n_blob, ptr %i, i32 0, i32 0
  %65 = load ptr, ptr %data223, align 8, !tbaa !20
  %arrayidx224 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx224, align 1, !tbaa !4
  %conv225 = zext i8 %66 to i32
  %shl226 = shl i32 %conv225, 2
  %and227 = and i32 %shl226, 60
  %idxprom228 = sext i32 %and227 to i64
  %arrayidx229 = getelementptr inbounds [64 x i8], ptr @b64, i64 0, i64 %idxprom228
  %67 = load i8, ptr %arrayidx229, align 1, !tbaa !4
  %data230 = getelementptr inbounds %struct.s2n_blob, ptr %o, i32 0, i32 0
  %68 = load ptr, ptr %data230, align 8, !tbaa !20
  %arrayidx231 = getelementptr inbounds i8, ptr %68, i64 2
  store i8 %67, ptr %arrayidx231, align 1, !tbaa !4
  br label %if.end232

if.end232:                                        ; preds = %do.end209, %if.then189
  br label %do.body233

do.body233:                                       ; preds = %if.end232
  %69 = load ptr, ptr %stuffer.addr, align 8, !tbaa !7
  %call234 = call i32 @s2n_stuffer_write(ptr noundef %69, ptr noundef %o)
  %cmp235 = icmp sgt i32 %call234, -1
  br i1 %cmp235, label %if.end241, label %if.then237

if.then237:                                       ; preds = %do.body233
  br label %do.body238

do.body238:                                       ; preds = %if.then237
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond239:                                       ; No predecessors!
  br label %do.end240

do.end240:                                        ; preds = %do.cond239
  br label %if.end241

if.end241:                                        ; preds = %do.end240, %do.body233
  br label %do.cond242

do.cond242:                                       ; preds = %if.end241
  br label %do.end243

do.end243:                                        ; preds = %do.cond242
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end243, %do.body238, %do.body204
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup245 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end244

if.end244:                                        ; preds = %cleanup.cont, %while.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

cleanup245:                                       ; preds = %if.end244, %cleanup, %do.body167, %do.body151, %do.body100, %do.body87
  call void @llvm.lifetime.end.p0(i64 24, ptr %i) #6
  br label %cleanup246

cleanup246:                                       ; preds = %cleanup245, %do.body72
  call void @llvm.lifetime.end.p0(i64 3, ptr %i_buf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_requested_size) #6
  br label %cleanup248

cleanup248:                                       ; preds = %cleanup246, %do.body57
  call void @llvm.lifetime.end.p0(i64 24, ptr %o) #6
  br label %cleanup249

cleanup249:                                       ; preds = %cleanup248, %do.body43
  call void @llvm.lifetime.end.p0(i64 4, ptr %o_buf) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %o_requested_size) #6
  br label %return

return:                                           ; preds = %cleanup249, %do.body32, %do.body8
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
}

declare i32 @s2n_stuffer_write(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0}
!11 = !{!"int", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!16, !11, i64 28}
!16 = !{!"s2n_stuffer", !17, i64 0, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 36, !11, i64 36}
!17 = !{!"s2n_blob", !8, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!18 = !{!16, !11, i64 24}
!19 = !{!17, !11, i64 8}
!20 = !{!17, !8, i64 0}
!21 = !{!16, !8, i64 0}
