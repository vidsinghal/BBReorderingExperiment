; ModuleID = 'samples/575.bc'
source_filename = "../spack-src/test/arm/neon/rbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [8 x i8], [8 x i8] }
%struct.anon.1 = type { [8 x i8], [8 x i8] }
%struct.anon.2 = type { [16 x i8], [16 x i8] }
%struct.anon.3 = type { [16 x i8], [16 x i8] }
%union.simde_int8x8_private = type { <8 x i8> }
%union.simde_uint8x8_private = type { <8 x i8> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.simde_int8x16_private = type { <16 x i8> }
%union.simde_uint8x16_private = type { <16 x i8> }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [4 x %struct.anon] [%struct.anon { ptr @test_simde_vrbit_s8, ptr @.str.3 }, %struct.anon { ptr @test_simde_vrbit_u8, ptr @.str.4 }, %struct.anon { ptr @test_simde_vrbitq_s8, ptr @.str.5 }, %struct.anon { ptr @test_simde_vrbitq_u8, ptr @.str.6 }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"not ok %zu rbit/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ok %zu rbit/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vrbit_s8\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vrbit_u8\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"vrbitq_s8\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"vrbitq_u8\00", align 1
@test_simde_vrbit_s8.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [8 x i8] c"\BECl2\F2U\F3@", [8 x i8] c"}\C26LO\AA\CF\02" }, %struct.anon.0 { [8 x i8] c"\07[\F3Z\BEW8!", [8 x i8] c"\E0\DA\CFZ}\EA\1C\84" }, %struct.anon.0 { [8 x i8] c"\876\85\05A:\AF\D3", [8 x i8] c"\E1l\A1\A0\82\\\F5\CB" }, %struct.anon.0 { [8 x i8] c"\E1\BD\83\F7]\BD\F5\1B", [8 x i8] c"\87\BD\C1\EF\BA\BD\AF\D8" }, %struct.anon.0 { [8 x i8] c"\00aN\F2\B6A2\BD", [8 x i8] c"\00\86rOm\82L\BD" }, %struct.anon.0 { [8 x i8] c"\9D%\17[}O|\04", [8 x i8] c"\B9\A4\E8\DA\BE\F2> " }, %struct.anon.0 { [8 x i8] c"\85\02\0A\C7<\B9\9A\1D", [8 x i8] c"\A1@P\E3<\9DY\B8" }, %struct.anon.0 { [8 x i8] c"v\1E\15\D3\DB\0A\EF\DB", [8 x i8] c"nx\A8\CB\DBP\F7\DB" }], align 16
@.str.7 = private unnamed_addr constant [34 x i8] c"../spack-src/test/arm/neon/rbit.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"simde_vld1_s8(test_vec[i].r)\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_vrbit_u8.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { [8 x i8] c"z\C4L\\\89\12\CE\95", [8 x i8] c"^#2:\91Hs\A9" }, %struct.anon.1 { [8 x i8] c"&\B6\04\18\01'C\07", [8 x i8] c"dm \18\80\E4\C2\E0" }, %struct.anon.1 { [8 x i8] c"\BB/\12J\EC\16\B94", [8 x i8] c"\DD\F4HR7h\9D," }, %struct.anon.1 { [8 x i8] c"i\E2=\13\03V+}", [8 x i8] c"\96G\BC\C8\C0j\D4\BE" }, %struct.anon.1 { [8 x i8] c"\1Aw\DA\A3\89\A89\AF", [8 x i8] c"X\EE[\C5\91\15\9C\F5" }, %struct.anon.1 { [8 x i8] c"_=\C7`e\0Ag ", [8 x i8] c"\FA\BC\E3\06\A6P\E6\04" }, %struct.anon.1 { [8 x i8] c":zj&\90#Z\F9", [8 x i8] c"\\^Vd\09\C4Z\9F" }, %struct.anon.1 { [8 x i8] c"\05\97\0D\09\ED8\86\08", [8 x i8] c"\A0\E9\B0\90\B7\1Ca\10" }], align 16
@.str.11 = private unnamed_addr constant [29 x i8] c"simde_vld1_u8(test_vec[i].r)\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\0A\00", align 1
@test_simde_vrbitq_s8.test_vec = internal constant [8 x %struct.anon.2] [%struct.anon.2 { [16 x i8] c"(|V\F8\C7\94!1\8ER\A2)9\22+b", [16 x i8] c"\14>j\1F\E3)\84\8CqJE\94\9CD\D4F" }, %struct.anon.2 { [16 x i8] c"\07\8F\97\9E\EA\86\C0\A5\02\DDM\9A~\09 \A7", [16 x i8] c"\E0\F1\E9yWa\03\A5@\BB\B2Y~\90\04\E5" }, %struct.anon.2 { [16 x i8] c"\85v\9FL\0A\C0}\98\13 \C1LB\ED\AEI", [16 x i8] c"\A1n\F92P\03\BE\19\C8\04\832B\B7u\92" }, %struct.anon.2 { [16 x i8] c"|F\E7f\CC\A7\0B\CE\84Xi\03a\89\AA\E7", [16 x i8] c">b\E7f3\E5\D0s!\1A\96\C0\86\91U\E7" }, %struct.anon.2 { [16 x i8] c"\FFI3\0A\0A\B1\A2\1D\D1di\13Q\18\\\CD", [16 x i8] c"\FF\92\CCPP\8DE\B8\8B&\96\C8\8A\18:\B3" }, %struct.anon.2 { [16 x i8] c"^D3*\EB>\F8p\97as\F8\EA\1D\DF\EA", [16 x i8] c"z\22\CCT\D7|\1F\0E\E9\86\CE\1FW\B8\FBW" }, %struct.anon.2 { [16 x i8] c"f\13\F4p\C4\96\8D\95\FA\F7\A8K\0F\04\18m", [16 x i8] c"f\C8/\0E#i\B1\A9_\EF\15\D2\F0 \18\B6" }, %struct.anon.2 { [16 x i8] c"HK\974\8A\8F\A4!\F1\17\19\DB4\F9\C5\9A", [16 x i8] c"\12\D2\E9,Q\F1%\84\8F\E8\98\DB,\9F\A3Y" }], align 16
@.str.13 = private unnamed_addr constant [30 x i8] c"simde_vld1q_s8(test_vec[i].r)\00", align 1
@test_simde_vrbitq_u8.test_vec = internal constant [8 x %struct.anon.3] [%struct.anon.3 { [16 x i8] c"\85\C1\D2\FEI\1A\BB\1AN\87e\C0\15\8E\18\AD", [16 x i8] c"\A1\83K\7F\92X\DDXr\E1\A6\03\A8q\18\B5" }, %struct.anon.3 { [16 x i8] c"C,Fr\E7L\C7\D3\C6\A7\1FR\D7\0F4\\", [16 x i8] c"\C24bN\E72\E3\CBc\E5\F8J\EB\F0,:" }, %struct.anon.3 { [16 x i8] c"\D0\07Z\1A!\164p\9D\990\B2(I_k", [16 x i8] c"\0B\E0ZX\84h,\0E\B9\99\0CM\14\92\FA\D6" }, %struct.anon.3 { [16 x i8] c"u\A5\DD\\\F2\A4/\B8KO\0A\22^>\7F/", [16 x i8] c"\AE\A5\BB:O%\F4\1D\D2\F2PDz|\FE\F4" }, %struct.anon.3 { [16 x i8] c"E\D9Ig\EF}\D7\8C\17\07>?P\9D\AA\C5", [16 x i8] c"\A2\9B\92\E6\F7\BE\EB1\E8\E0|\FC\0A\B9U\A3" }, %struct.anon.3 { [16 x i8] c"C\87!5+Q\EDv\A0\F7\99\FE5\18-{", [16 x i8] c"\C2\E1\84\AC\D4\8A\B7n\05\EF\99\7F\AC\18\B4\DE" }, %struct.anon.3 { [16 x i8] c"\F1v\E2\E1\F4\B9m\0B\C0\ACJ\11I\F4\D6\8C", [16 x i8] c"\8FnG\87/\9D\B6\D0\035R\88\92/k1" }, %struct.anon.3 { [16 x i8] c"{\F8\C1\A6I\AE\1C\E9\A5\B5\E7\DB\CD\15V\BF", [16 x i8] c"\DE\1F\83e\92u8\97\A5\AD\E7\DB\B3\A8j\FD" }], align 16
@.str.14 = private unnamed_addr constant [30 x i8] c"simde_vld1q_u8(test_vec[i].r)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #12
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #12
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [4 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
  %func = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %func, align 16, !tbaa !13
  %call2 = call i32 %3()
  store i32 %call2, ptr %res, align 4, !tbaa !5
  %4 = load i32, ptr %res, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval1, align 4, !tbaa !5
  %5 = load ptr, ptr @stdout, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %6, 1
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [4 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [4 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #12
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vrbit_s8() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %r = alloca <8 x i8>, align 8
  %coerce2 = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  %coerce9 = alloca <8 x i8>, align 8
  %coerce10 = alloca <8 x i8>, align 8
  %coerce11 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #12
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_vrbit_s8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_s8(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12
  %3 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_vrbit_s8(double noundef %4)
  store double %call3, ptr %coerce4, align 8
  %5 = load <8 x i8>, ptr %coerce4, align 8, !tbaa !16
  store <8 x i8> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_vrbit_s8.test_vec, i64 0, i64 %7
  %r6 = getelementptr inbounds %struct.anon.0, ptr %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [8 x i8], ptr %r6, i64 0, i64 0
  %call8 = call double @simde_vld1_s8(ptr noundef %arraydecay7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <8 x i8>, ptr %coerce9, align 8, !tbaa !16
  store <8 x i8> %6, ptr %coerce10, align 8, !tbaa !16
  %9 = load double, ptr %coerce10, align 8
  store <8 x i8> %8, ptr %coerce11, align 8, !tbaa !16
  %10 = load double, ptr %coerce11, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_i8x8_(double noundef %9, double noundef %10, ptr noundef @.str.7, i32 noundef 41, ptr noundef @.str.8, ptr noundef @.str.9)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vrbit_u8() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %r = alloca <8 x i8>, align 8
  %coerce2 = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  %coerce9 = alloca <8 x i8>, align 8
  %coerce10 = alloca <8 x i8>, align 8
  %coerce11 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #12
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_vrbit_u8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_u8(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12
  %3 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_vrbit_u8(double noundef %4)
  store double %call3, ptr %coerce4, align 8
  %5 = load <8 x i8>, ptr %coerce4, align 8, !tbaa !16
  store <8 x i8> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_vrbit_u8.test_vec, i64 0, i64 %7
  %r6 = getelementptr inbounds %struct.anon.1, ptr %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [8 x i8], ptr %r6, i64 0, i64 0
  %call8 = call double @simde_vld1_u8(ptr noundef %arraydecay7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <8 x i8>, ptr %coerce9, align 8, !tbaa !16
  store <8 x i8> %6, ptr %coerce10, align 8, !tbaa !16
  %9 = load double, ptr %coerce10, align 8
  store <8 x i8> %8, ptr %coerce11, align 8, !tbaa !16
  %10 = load double, ptr %coerce11, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u8x8_(double noundef %9, double noundef %10, ptr noundef @.str.7, i32 noundef 87, ptr noundef @.str.8, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vrbitq_s8() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <16 x i8>, align 16
  %r = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #12
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_vrbitq_s8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call <16 x i8> @simde_vld1q_s8(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #12
  %2 = load <16 x i8>, ptr %a, align 16, !tbaa !16
  %call2 = call <16 x i8> @simde_vrbitq_s8(<16 x i8> noundef %2)
  store <16 x i8> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_vrbitq_s8.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.2, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %r4, i64 0, i64 0
  %call6 = call <16 x i8> @simde_vld1q_s8(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_i8x16_(<16 x i8> noundef %3, <16 x i8> noundef %call6, ptr noundef @.str.7, i32 noundef 149, ptr noundef @.str.8, ptr noundef @.str.13)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vrbitq_u8() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <16 x i8>, align 16
  %r = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #12
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_vrbitq_u8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call <16 x i8> @simde_vld1q_u8(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #12
  %2 = load <16 x i8>, ptr %a, align 16, !tbaa !16
  %call2 = call <16 x i8> @simde_vrbitq_u8(<16 x i8> noundef %2)
  store <16 x i8> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_vrbitq_u8.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.3, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %r4, i64 0, i64 0
  %call6 = call <16 x i8> @simde_vld1q_u8(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_u8x16_(<16 x i8> noundef %3, <16 x i8> noundef %call6, ptr noundef @.str.7, i32 noundef 211, ptr noundef @.str.8, ptr noundef @.str.14)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s8(ptr noundef %ptr) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #12
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int8x8_from_private(double %1) #13
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #12
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vrbit_s8(double noundef %a.coerce) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %coerce2 = alloca <8 x i8>, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %coerce5 = alloca <8 x i8>, align 8
  %coerce6 = alloca <8 x i8>, align 8
  %coerce8 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_vreinterpret_u8_s8(double noundef %1)
  store double %call, ptr %coerce2, align 8
  %2 = load <8 x i8>, ptr %coerce2, align 8, !tbaa !16
  store <8 x i8> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_vrbit_u8(double noundef %3)
  store double %call4, ptr %coerce5, align 8
  %4 = load <8 x i8>, ptr %coerce5, align 8, !tbaa !16
  store <8 x i8> %4, ptr %coerce6, align 8, !tbaa !16
  %5 = load double, ptr %coerce6, align 8
  %call7 = call double @simde_vreinterpret_s8_u8(double noundef %5)
  store double %call7, ptr %coerce8, align 8
  %6 = load <8 x i8>, ptr %coerce8, align 8, !tbaa !16
  store <8 x i8> %6, ptr %retval, align 8
  %7 = load double, ptr %retval, align 8
  ret double %7
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i8x8_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %b.addr = alloca <8 x i8>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i8], align 1
  %b_ = alloca [8 x i8], align 1
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <8 x i8>, ptr %b, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #12
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_s8(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !16
  store <8 x i8> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_s8(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #12
  ret i32 %call
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int8x8_from_private(double %value.coerce) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_int8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vreinterpret_s8_u8(double noundef %a.coerce) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_int8x8_private, align 8
  %a_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #12
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint8x8_to_private(double noundef %1) #13
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %a_, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %union.simde_int8x8_private, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_int8x8_from_private(double %2) #13
  store double %call3, ptr %coerce4, align 8
  %3 = load <8 x i8>, ptr %coerce4, align 8, !tbaa !16
  store <8 x i8> %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #12
  %4 = load double, ptr %retval, align 8
  ret double %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vrbit_u8(double noundef %a.coerce) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %a_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce5 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #12
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint8x8_to_private(double noundef %1) #13
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #12
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %cmp = icmp ult i64 %2, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %4 = load <8 x i8>, ptr %a_, align 8, !tbaa !16, !llvm.access.group !17
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext = extractelement <8 x i8> %4, i64 %5
  %6 = call i8 @llvm.bitreverse.i8(i8 %vecext)
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %8 = load <8 x i8>, ptr %r_, align 8, !llvm.access.group !17
  %vecins = insertelement <8 x i8> %8, i8 %6, i64 %7
  store <8 x i8> %vecins, ptr %r_, align 8, !llvm.access.group !17
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %9 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %add2 = add i64 %9, 1
  store i64 %add2, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  br label %omp.inner.for.cond, !llvm.loop !18

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #12
  %coerce.dive3 = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %10 = load double, ptr %coerce.dive3, align 8
  %call4 = call double @simde_uint8x8_from_private(double %10) #13
  store double %call4, ptr %coerce5, align 8
  %11 = load <8 x i8>, ptr %coerce5, align 8, !tbaa !16
  store <8 x i8> %11, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #12
  %12 = load double, ptr %retval, align 8
  ret double %12
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vreinterpret_u8_s8(double noundef %a.coerce) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %a_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #12
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int8x8_to_private(double noundef %1) #13
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %a_, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_uint8x8_from_private(double %2) #13
  store double %call3, ptr %coerce4, align 8
  %3 = load <8 x i8>, ptr %coerce4, align 8, !tbaa !16
  store <8 x i8> %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #12
  %4 = load double, ptr %retval, align 8
  ret double %4
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint8x8_to_private(double noundef %value.coerce) #6 {
entry:
  %retval = alloca %union.simde_uint8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !16
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #7

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint8x8_from_private(double %value.coerce) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_uint8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #12
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int8x8_to_private(double noundef %value.coerce) #6 {
entry:
  %retval = alloca %union.simde_int8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !16
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_s8(ptr noundef %ptr, double noundef %val.coerce) #4 {
entry:
  %val = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i8>, align 8
  %val_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <8 x i8>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i8> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #12
  %0 = load <8 x i8>, ptr %val.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int8x8_to_private(double noundef %1) #13
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi8_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = sext i8 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx1, align 1, !tbaa !16
  %conv2 = sext i8 %9 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx7, align 1, !tbaa !16
  %conv8 = sext i8 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i8, ptr %arrayidx9, align 1, !tbaa !16
  %conv10 = sext i8 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.10, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #12
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1 = load ptr, ptr %format.addr, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call3 = call i32 @fflush(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #12
  ret void
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u8(ptr noundef %ptr) #4 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #12
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint8x8_from_private(double %1) #13
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #12
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u8x8_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %b.addr = alloca <8 x i8>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i8], align 1
  %b_ = alloca [8 x i8], align 1
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <8 x i8>, ptr %b, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #12
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_u8(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !16
  store <8 x i8> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_u8(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #12
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u8(ptr noundef %ptr, double noundef %val.coerce) #4 {
entry:
  %val = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i8>, align 8
  %val_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <8 x i8>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i8> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #12
  %0 = load <8 x i8>, ptr %val.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint8x8_to_private(double noundef %1) #13
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu8_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx1, align 1, !tbaa !16
  %conv2 = zext i8 %9 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx7, align 1, !tbaa !16
  %conv8 = zext i8 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i8, ptr %arrayidx9, align 1, !tbaa !16
  %conv10 = zext i8 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.12, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vld1q_s8(ptr noundef %ptr) #9 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #12
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #12
  ret <16 x i8> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vrbitq_s8(<16 x i8> noundef %a) #9 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_vreinterpretq_u8_s8(<16 x i8> noundef %0)
  %call1 = call <16 x i8> @simde_vrbitq_u8(<16 x i8> noundef %call)
  %call2 = call <16 x i8> @simde_vreinterpretq_s8_u8(<16 x i8> noundef %call1)
  ret <16 x i8> %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i8x16_(<16 x i8> noundef %a, <16 x i8> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %b.addr = alloca <16 x i8>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  store <16 x i8> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #12
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s8(ptr noundef %arraydecay, <16 x i8> noundef %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s8(ptr noundef %arraydecay1, <16 x i8> noundef %1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 16, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #12
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_int8x16_from_private(<16 x i8> %value.coerce) #10 {
entry:
  %value = alloca %union.simde_int8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %value, i32 0, i32 0
  store <16 x i8> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #12
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #12
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vreinterpretq_s8_u8(<16 x i8> noundef %a) #9 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %r_ = alloca %union.simde_int8x16_private, align 16
  %a_ = alloca %union.simde_uint8x16_private, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #12
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %0) #13
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %a_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_int8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive1, align 16
  %call2 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #12
  ret <16 x i8> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vrbitq_u8(<16 x i8> noundef %a) #9 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %r_ = alloca %union.simde_uint8x16_private, align 16
  %a_ = alloca %union.simde_uint8x16_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #12
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %0) #13
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %a_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #12
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #12
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  %cmp = icmp ult i64 %1, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  %mul = mul i64 %2, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %3 = load <16 x i8>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !21
  %4 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %vecext = extractelement <16 x i8> %3, i64 %4
  %5 = call i8 @llvm.bitreverse.i8(i8 %vecext)
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !21
  %7 = load <16 x i8>, ptr %r_, align 16, !llvm.access.group !21
  %vecins = insertelement <16 x i8> %7, i8 %5, i64 %6
  store <16 x i8> %vecins, ptr %r_, align 16, !llvm.access.group !21
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  %add1 = add i64 %8, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !21
  br label %omp.inner.for.cond, !llvm.loop !22

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #12
  %coerce.dive2 = getelementptr inbounds %union.simde_uint8x16_private, ptr %r_, i32 0, i32 0
  %9 = load <16 x i8>, ptr %coerce.dive2, align 16
  %call3 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #12
  ret <16 x i8> %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vreinterpretq_u8_s8(<16 x i8> noundef %a) #9 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %r_ = alloca %union.simde_uint8x16_private, align 16
  %a_ = alloca %union.simde_int8x16_private, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #12
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %0) #13
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %a_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_uint8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive1, align 16
  %call2 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #12
  ret <16 x i8> %call2
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %value) #10 {
entry:
  %retval = alloca %union.simde_uint8x16_private, align 16
  %value.addr = alloca <16 x i8>, align 16
  store <16 x i8> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %retval, i32 0, i32 0
  %0 = load <16 x i8>, ptr %coerce.dive, align 16
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_uint8x16_from_private(<16 x i8> %value.coerce) #10 {
entry:
  %value = alloca %union.simde_uint8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %value, i32 0, i32 0
  store <16 x i8> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #12
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #12
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %value) #10 {
entry:
  %retval = alloca %union.simde_int8x16_private, align 16
  %value.addr = alloca <16 x i8>, align 16
  store <16 x i8> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %retval, i32 0, i32 0
  %0 = load <16 x i8>, ptr %coerce.dive, align 16
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_s8(ptr noundef %ptr, <16 x i8> noundef %val) #9 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <16 x i8>, align 16
  %val_ = alloca %union.simde_int8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <16 x i8> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #12
  %0 = load <16 x i8>, ptr %val.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %0) #13
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %val_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vld1q_u8(ptr noundef %ptr) #9 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #12
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %1) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #12
  ret <16 x i8> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u8x16_(<16 x i8> noundef %a, <16 x i8> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %b.addr = alloca <16 x i8>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  store <16 x i8> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #12
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_u8(ptr noundef %arraydecay, <16 x i8> noundef %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u8(ptr noundef %arraydecay1, <16 x i8> noundef %1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 16, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #12
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u8(ptr noundef %ptr, <16 x i8> noundef %val) #9 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <16 x i8>, align 16
  %val_ = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <16 x i8> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #12
  %0 = load <16 x i8>, ptr %val.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %0) #13
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %val_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }

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
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"", !10, i64 0, !10, i64 8}
!15 = !{!14, !10, i64 8}
!16 = !{!7, !7, i64 0}
!17 = distinct !{}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.parallel_accesses", !17}
!20 = !{!"llvm.loop.vectorize.enable", i1 true}
!21 = distinct !{}
!22 = distinct !{!22, !23, !20}
!23 = !{!"llvm.loop.parallel_accesses", !21}
