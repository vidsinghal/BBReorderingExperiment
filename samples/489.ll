; ModuleID = 'samples/489.bc'
source_filename = "test/mdc2test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"test_mdc2\00", align 1
@test_mdc2.text = internal global [25 x i8] c"Now is the time for all \00", align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"pad-type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test/mdc2test.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"EVP_DigestInit_ex(c, EVP_mdc2(), NULL)\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"EVP_DigestUpdate(c, (unsigned char *)text, tlen)\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"EVP_DigestFinal_ex(c, &(md[0]), NULL)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pad1\00", align 1
@pad1 = internal global [16 x i8] c"B\E5\0C\D2$\BA\CE\BAv\0B\DD+\D4\09(\1A", align 16
@.str.10 = private unnamed_addr constant [33 x i8] c"EVP_MD_CTX_set_params(c, params)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pad2\00", align 1
@pad2 = internal global [16 x i8] c".Fy\B5\AD\D9\CAu5\D8z\FE\AB3\BE\E2", align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @setup_tests() #0 {
entry:
  call void @add_test(ptr noundef @.str, ptr noundef @test_mdc2)
  ret i32 1
}

declare void @add_test(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_mdc2() #0 {
entry:
  %testresult = alloca i32, align 4
  %pad_type = alloca i32, align 4
  %md = alloca [16 x i8], align 16
  %c = alloca ptr, align 8
  %tlen = alloca i64, align 8
  %i = alloca i64, align 8
  %prov = alloca ptr, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp3 = alloca %struct.ossl_param_st, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %testresult) #5
  store i32 0, ptr %testresult, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad_type) #5
  store i32 2, ptr %pad_type, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %md) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tlen) #5
  %call = call i64 @strlen(ptr noundef @test_mdc2.text) #6
  store i64 %call, ptr %tlen, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5
  store i64 0, ptr %i, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %prov) #5
  store ptr null, ptr %prov, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 80, ptr %params) #5
  %0 = load i64, ptr %i, align 8, !tbaa !9
  %inc = add i64 %0, 1
  store i64 %inc, ptr %i, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], ptr %params, i64 0, i64 %0
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp) #5
  call void @OSSL_PARAM_construct_uint(ptr sret(%struct.ossl_param_st) align 8 %tmp, ptr noundef @.str.1, ptr noundef %pad_type)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %tmp, i64 40, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp) #5
  %1 = load i64, ptr %i, align 8, !tbaa !9
  %inc1 = add i64 %1, 1
  store i64 %inc1, ptr %i, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds [2 x %struct.ossl_param_st], ptr %params, i64 0, i64 %1
  call void @llvm.lifetime.start.p0(i64 40, ptr %tmp3) #5
  call void @OSSL_PARAM_construct_end(ptr sret(%struct.ossl_param_st) align 8 %tmp3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx2, ptr align 8 %tmp3, i64 40, i1 false), !tbaa.struct !13
  call void @llvm.lifetime.end.p0(i64 40, ptr %tmp3) #5
  %call4 = call ptr @OSSL_PROVIDER_load(ptr noundef null, ptr noundef @.str.2)
  store ptr %call4, ptr %prov, align 8, !tbaa !11
  %call5 = call ptr @EVP_MD_CTX_new()
  store ptr %call5, ptr %c, align 8, !tbaa !11
  %2 = load ptr, ptr %c, align 8, !tbaa !11
  %call6 = call i32 @test_ptr(ptr noundef @.str.3, i32 noundef 66, ptr noundef @.str.4, ptr noundef %2)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %c, align 8, !tbaa !11
  %call7 = call ptr @EVP_mdc2()
  %call8 = call i32 @EVP_DigestInit_ex(ptr noundef %3, ptr noundef %call7, ptr noundef null)
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = call i32 @test_true(ptr noundef @.str.3, i32 noundef 67, ptr noundef @.str.5, i32 noundef %conv)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false11, label %if.then

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %4 = load ptr, ptr %c, align 8, !tbaa !11
  %5 = load i64, ptr %tlen, align 8, !tbaa !9
  %call12 = call i32 @EVP_DigestUpdate(ptr noundef %4, ptr noundef @test_mdc2.text, i64 noundef %5)
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(ptr noundef @.str.3, i32 noundef 68, ptr noundef @.str.6, i32 noundef %conv14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false17, label %if.then

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %6 = load ptr, ptr %c, align 8, !tbaa !11
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr %md, i64 0, i64 0
  %call19 = call i32 @EVP_DigestFinal_ex(ptr noundef %6, ptr noundef %arrayidx18, ptr noundef null)
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(ptr noundef @.str.3, i32 noundef 69, ptr noundef @.str.7, i32 noundef %conv21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false24, label %if.then

lor.lhs.false24:                                  ; preds = %lor.lhs.false17
  %arraydecay = getelementptr inbounds [16 x i8], ptr %md, i64 0, i64 0
  %call25 = call i32 @test_mem_eq(ptr noundef @.str.3, i32 noundef 70, ptr noundef @.str.8, ptr noundef @.str.9, ptr noundef %arraydecay, i64 noundef 16, ptr noundef @pad1, i64 noundef 16)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %7 = load ptr, ptr %c, align 8, !tbaa !11
  %call28 = call ptr @EVP_mdc2()
  %call29 = call i32 @EVP_DigestInit_ex(ptr noundef %7, ptr noundef %call28, ptr noundef null)
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(ptr noundef @.str.3, i32 noundef 71, ptr noundef @.str.5, i32 noundef %conv31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false17, %lor.lhs.false11, %lor.lhs.false, %entry
  br label %end

if.end:                                           ; preds = %lor.lhs.false27
  %8 = load ptr, ptr %c, align 8, !tbaa !11
  %arraydecay34 = getelementptr inbounds [2 x %struct.ossl_param_st], ptr %params, i64 0, i64 0
  %call35 = call i32 @EVP_MD_CTX_set_params(ptr noundef %8, ptr noundef %arraydecay34)
  %call36 = call i32 @test_int_gt(ptr noundef @.str.3, i32 noundef 74, ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef %call35, i32 noundef 0)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %lor.lhs.false38, label %if.then55

lor.lhs.false38:                                  ; preds = %if.end
  %9 = load ptr, ptr %c, align 8, !tbaa !11
  %10 = load i64, ptr %tlen, align 8, !tbaa !9
  %call39 = call i32 @EVP_DigestUpdate(ptr noundef %9, ptr noundef @test_mdc2.text, i64 noundef %10)
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = call i32 @test_true(ptr noundef @.str.3, i32 noundef 75, ptr noundef @.str.6, i32 noundef %conv41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %lor.lhs.false44, label %if.then55

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %11 = load ptr, ptr %c, align 8, !tbaa !11
  %arrayidx45 = getelementptr inbounds [16 x i8], ptr %md, i64 0, i64 0
  %call46 = call i32 @EVP_DigestFinal_ex(ptr noundef %11, ptr noundef %arrayidx45, ptr noundef null)
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(ptr noundef @.str.3, i32 noundef 76, ptr noundef @.str.7, i32 noundef %conv48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %lor.lhs.false51, label %if.then55

lor.lhs.false51:                                  ; preds = %lor.lhs.false44
  %arraydecay52 = getelementptr inbounds [16 x i8], ptr %md, i64 0, i64 0
  %call53 = call i32 @test_mem_eq(ptr noundef @.str.3, i32 noundef 77, ptr noundef @.str.8, ptr noundef @.str.12, ptr noundef %arraydecay52, i64 noundef 16, ptr noundef @pad2, i64 noundef 16)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %lor.lhs.false51, %lor.lhs.false44, %lor.lhs.false38, %if.end
  br label %end

if.end56:                                         ; preds = %lor.lhs.false51
  store i32 1, ptr %testresult, align 4, !tbaa !5
  br label %end

end:                                              ; preds = %if.end56, %if.then55, %if.then
  %12 = load ptr, ptr %c, align 8, !tbaa !11
  call void @EVP_MD_CTX_free(ptr noundef %12)
  %13 = load ptr, ptr %prov, align 8, !tbaa !11
  %call57 = call i32 @OSSL_PROVIDER_unload(ptr noundef %13)
  %14 = load i32, ptr %testresult, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 80, ptr %params) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %prov) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tlen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %md) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad_type) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %testresult) #5
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare void @OSSL_PARAM_construct_uint(ptr sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @OSSL_PARAM_construct_end(ptr sret(%struct.ossl_param_st) align 8) #1

declare ptr @OSSL_PROVIDER_load(ptr noundef, ptr noundef) #1

declare ptr @EVP_MD_CTX_new() #1

declare i32 @test_ptr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @test_true(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @EVP_mdc2() #1

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @test_mem_eq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare i32 @test_int_gt(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @EVP_MD_CTX_set_params(ptr noundef, ptr noundef) #1

declare void @EVP_MD_CTX_free(ptr noundef) #1

declare i32 @OSSL_PROVIDER_unload(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{i64 0, i64 8, !11, i64 8, i64 4, !5, i64 16, i64 8, !11, i64 24, i64 8, !9, i64 32, i64 8, !9}
