; ModuleID = 'samples/691.bc'
source_filename = "../spack-src/externals/cgns/hdf5/H5VLnative_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H5VL__native_token_cmp.func_check = internal global i8 0, align 1
@__func__.H5VL__native_token_cmp = private unnamed_addr constant [23 x i8] c"H5VL__native_token_cmp\00", align 1
@.str = private unnamed_addr constant [155 x i8] c"Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in H5private.h (this is usually due to an incorrect number of underscores)\00", align 1
@.str.1 = private unnamed_addr constant [1089 x i8] c"(((((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISupper)) && '_' == __func__[2] && '_' == __func__[3] && ((*__ctype_b_loc ())[(int) (((int)(__func__[4])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISupper)) && '_' == __func__[3] && '_' == __func__[4] && ((*__ctype_b_loc ())[(int) (((int)(__func__[5])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISupper)) && '_' == __func__[4] && '_' == __func__[5] && ((*__ctype_b_loc ())[(int) (((int)(__func__[6])))] & (unsigned short int) _ISlower))) && \22Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in \22 \22H5private.h (this is usually due to an incorrect number of underscores)\22\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"../spack-src/externals/cgns/hdf5/H5VLnative_token.c\00", align 1
@__PRETTY_FUNCTION__.H5VL__native_token_cmp = private unnamed_addr constant [87 x i8] c"herr_t H5VL__native_token_cmp(void *, const H5O_token_t *, const H5O_token_t *, int *)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"token1\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@H5VL__native_token_to_str.func_check = internal global i8 0, align 1
@__func__.H5VL__native_token_to_str = private unnamed_addr constant [26 x i8] c"H5VL__native_token_to_str\00", align 1
@__PRETTY_FUNCTION__.H5VL__native_token_to_str = private unnamed_addr constant [83 x i8] c"herr_t H5VL__native_token_to_str(void *, H5I_type_t, const H5O_token_t *, char **)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@H5E_ERR_CLS_g = external global i64, align 8
@H5E_FILE_g = external global i64, align 8
@H5E_CANTDECODE_g = external global i64, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"can't convert object token to address\00", align 1
@H5E_RESOURCE_g = external global i64, align 8
@H5E_CANTALLOC_g = external global i64, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"can't allocate buffer for token string\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@H5VL__native_str_to_token.func_check = internal global i8 0, align 1
@__func__.H5VL__native_str_to_token = private unnamed_addr constant [26 x i8] c"H5VL__native_str_to_token\00", align 1
@__PRETTY_FUNCTION__.H5VL__native_str_to_token = private unnamed_addr constant [82 x i8] c"herr_t H5VL__native_str_to_token(void *, H5I_type_t, const char *, H5O_token_t *)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"token_str\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"can't convert address to object token\00", align 1

; Function Attrs: nounwind uwtable
define i32 @H5VL__native_token_cmp(ptr noundef %obj, ptr noundef %token1, ptr noundef %token2, ptr noundef %cmp_value) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  %token1.addr = alloca ptr, align 8
  %token2.addr = alloca ptr, align 8
  %cmp_value.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %token1, ptr %token1.addr, align 8, !tbaa !4
  store ptr %token2, ptr %token2.addr, align 8, !tbaa !4
  store ptr %cmp_value, ptr %cmp_value.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #8
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  %0 = load i8, ptr @H5VL__native_token_cmp.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #9
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #9
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 3), align 1, !tbaa !14
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #9
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 4), align 1, !tbaa !14
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !15
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #9
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 2), align 1, !tbaa !14
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !15
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #9
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 2), align 1, !tbaa !14
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !15
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 3), align 1, !tbaa !14
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #9
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 5), align 1, !tbaa !14
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #9
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #9
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 3), align 1, !tbaa !14
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !15
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #9
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5VL__native_token_cmp, i64 0, i64 6), align 1, !tbaa !14
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !15
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 66, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_token_cmp) #10
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5VL__native_token_cmp.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load ptr, ptr %token1.addr, align 8, !tbaa !4
  %tobool77 = icmp ne ptr %32, null
  br i1 %tobool77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %if.end
  br label %cond.end80

cond.false79:                                     ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 69, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_token_cmp) #10
  unreachable

33:                                               ; No predecessors!
  br label %cond.end80

cond.end80:                                       ; preds = %33, %cond.true78
  %34 = load ptr, ptr %token2.addr, align 8, !tbaa !4
  %tobool81 = icmp ne ptr %34, null
  br i1 %tobool81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %cond.end80
  br label %cond.end84

cond.false83:                                     ; preds = %cond.end80
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 70, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_token_cmp) #10
  unreachable

35:                                               ; No predecessors!
  br label %cond.end84

cond.end84:                                       ; preds = %35, %cond.true82
  %36 = load ptr, ptr %token1.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %token2.addr, align 8, !tbaa !4
  %call85 = call i32 @memcmp(ptr noundef %36, ptr noundef %37, i64 noundef 16) #11
  %38 = load ptr, ptr %cmp_value.addr, align 8, !tbaa !4
  store i32 %call85, ptr %38, align 4, !tbaa !8
  %39 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #8
  ret i32 %39
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @H5VL__native_token_to_str(ptr noundef %obj, i32 noundef %obj_type, ptr noundef %token, ptr noundef %token_str) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  %obj_type.addr = alloca i32, align 4
  %token.addr = alloca ptr, align 8
  %token_str.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %addr_ndigits = alloca i64, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !14
  store ptr %token, ptr %token.addr, align 8, !tbaa !4
  store ptr %token_str, ptr %token_str.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr_ndigits) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #8
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #8
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5VL__native_token_to_str.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #9
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #9
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 3), align 1, !tbaa !14
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #9
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 4), align 1, !tbaa !14
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !15
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #9
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 2), align 1, !tbaa !14
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !15
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #9
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 2), align 1, !tbaa !14
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !15
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 3), align 1, !tbaa !14
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #9
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 5), align 1, !tbaa !14
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #9
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #9
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 3), align 1, !tbaa !14
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !15
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #9
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_token_to_str, i64 0, i64 6), align 1, !tbaa !14
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !15
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 94, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_token_to_str) #10
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5VL__native_token_to_str.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %tobool77 = icmp ne ptr %32, null
  br i1 %tobool77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %if.end
  br label %cond.end80

cond.false79:                                     ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 97, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_token_to_str) #10
  unreachable

33:                                               ; No predecessors!
  br label %cond.end80

cond.end80:                                       ; preds = %33, %cond.true78
  %34 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %tobool81 = icmp ne ptr %34, null
  br i1 %tobool81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %cond.end80
  br label %cond.end84

cond.false83:                                     ; preds = %cond.end80
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 98, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_token_to_str) #10
  unreachable

35:                                               ; No predecessors!
  br label %cond.end84

cond.end84:                                       ; preds = %35, %cond.true82
  %36 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %37 = load i32, ptr %obj_type.addr, align 4, !tbaa !14
  %38 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %39 = getelementptr inbounds { i64, i64 }, ptr %38, i32 0, i32 0
  %40 = load i64, ptr %39, align 1
  %41 = getelementptr inbounds { i64, i64 }, ptr %38, i32 0, i32 1
  %42 = load i64, ptr %41, align 1
  %call85 = call i32 @H5VL_native_token_to_addr(ptr noundef %36, i32 noundef %37, i64 %40, i64 %42, ptr noundef %addr)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %cond.end84
  %43 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %44 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %45 = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !17
  %call89 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5VL__native_token_to_str, i32 noundef 101, i64 noundef %43, i64 noundef %44, i64 noundef %45, ptr noundef @.str.7)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %46 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool90 = trunc i8 %46 to i1
  %frombool = zext i1 %tobool90 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end91:                                         ; preds = %cond.end84
  %47 = load i64, ptr %addr, align 8, !tbaa !17
  %cmp92 = icmp eq i64 %47, 0
  br i1 %cmp92, label %if.then94, label %if.else

if.then94:                                        ; preds = %if.end91
  store i64 1, ptr %addr_ndigits, align 8, !tbaa !17
  br label %if.end98

if.else:                                          ; preds = %if.end91
  %48 = load i64, ptr %addr, align 8, !tbaa !17
  %conv95 = uitofp i64 %48 to double
  %call96 = call double @log10(double noundef %conv95) #8
  %49 = call double @llvm.floor.f64(double %call96)
  %add = fadd double %49, 1.000000e+00
  %conv97 = fptoui double %add to i64
  store i64 %conv97, ptr %addr_ndigits, align 8, !tbaa !17
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then94
  %50 = load i64, ptr %addr_ndigits, align 8, !tbaa !17
  %add99 = add i64 %50, 1
  %call100 = call ptr @H5MM_malloc(i64 noundef %add99)
  %51 = load ptr, ptr %token_str.addr, align 8, !tbaa !4
  store ptr %call100, ptr %51, align 8, !tbaa !4
  %cmp101 = icmp eq ptr null, %call100
  br i1 %cmp101, label %if.then103, label %if.end107

if.then103:                                       ; preds = %if.end98
  %52 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %53 = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !17
  %54 = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !17
  %call104 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5VL__native_token_to_str, i32 noundef 109, i64 noundef %52, i64 noundef %53, i64 noundef %54, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %55 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool105 = trunc i8 %55 to i1
  %frombool106 = zext i1 %tobool105 to i8
  store i8 %frombool106, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end107:                                        ; preds = %if.end98
  %56 = load ptr, ptr %token_str.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %56, align 8, !tbaa !4
  %58 = load i64, ptr %addr_ndigits, align 8, !tbaa !17
  %add108 = add i64 %58, 1
  %59 = load i64, ptr %addr, align 8, !tbaa !17
  %call109 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %57, i64 noundef %add108, ptr noundef @.str.9, i64 noundef %59) #8
  br label %done

done:                                             ; preds = %if.end107, %if.then103, %if.then88
  %60 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr_ndigits) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #8
  ret i32 %60
}

declare i32 @H5VL_native_token_to_addr(ptr noundef, i32 noundef, i64, i64, ptr noundef) #5

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: nounwind
declare double @log10(double noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

declare ptr @H5MM_malloc(i64 noundef) #5

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #6

; Function Attrs: nounwind uwtable
define i32 @H5VL__native_str_to_token(ptr noundef %obj, i32 noundef %obj_type, ptr noundef %token_str, ptr noundef %token) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  %obj_type.addr = alloca i32, align 4
  %token_str.addr = alloca ptr, align 8
  %token.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store i32 %obj_type, ptr %obj_type.addr, align 4, !tbaa !14
  store ptr %token_str, ptr %token_str.addr, align 8, !tbaa !4
  store ptr %token, ptr %token.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #8
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #8
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5VL__native_str_to_token.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #9
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #9
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 3), align 1, !tbaa !14
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #9
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 4), align 1, !tbaa !14
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !15
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #9
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 2), align 1, !tbaa !14
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !15
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #9
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 2), align 1, !tbaa !14
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !15
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 3), align 1, !tbaa !14
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #9
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 5), align 1, !tbaa !14
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #9
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #9
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 3), align 1, !tbaa !14
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !15
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #9
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([26 x i8], ptr @__func__.H5VL__native_str_to_token, i64 0, i64 6), align 1, !tbaa !14
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !15
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 133, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_str_to_token) #10
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5VL__native_str_to_token.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load ptr, ptr %token_str.addr, align 8, !tbaa !4
  %tobool77 = icmp ne ptr %32, null
  br i1 %tobool77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %if.end
  br label %cond.end80

cond.false79:                                     ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 136, ptr noundef @__PRETTY_FUNCTION__.H5VL__native_str_to_token) #10
  unreachable

33:                                               ; No predecessors!
  br label %cond.end80

cond.end80:                                       ; preds = %33, %cond.true78
  %34 = load ptr, ptr %token_str.addr, align 8, !tbaa !4
  %call81 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %34, ptr noundef @.str.9, ptr noundef %addr) #8
  %35 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %36 = load i32, ptr %obj_type.addr, align 4, !tbaa !14
  %37 = load i64, ptr %addr, align 8, !tbaa !17
  %38 = load ptr, ptr %token.addr, align 8, !tbaa !4
  %call82 = call i32 @H5VL_native_addr_to_token(ptr noundef %35, i32 noundef %36, i64 noundef %37, ptr noundef %38)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end88

if.then85:                                        ; preds = %cond.end80
  %39 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %40 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %41 = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !17
  %call86 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5VL__native_str_to_token, i32 noundef 141, i64 noundef %39, i64 noundef %40, i64 noundef %41, ptr noundef @.str.11)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %42 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool87 = trunc i8 %42 to i1
  %frombool = zext i1 %tobool87 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end88:                                         ; preds = %cond.end80
  br label %done

done:                                             ; preds = %if.end88, %if.then85
  %43 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #8
  ret i32 %43
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #6

declare i32 @H5VL_native_addr_to_token(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
