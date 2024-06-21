; ModuleID = 'samples/19.bc'
source_filename = "/local-ssd/cmocka-7bledlalvxwfdqsmgmypx3xlrlevy7oa-build/aidengro/spack-stage-cmocka-1.1.7-7bledlalvxwfdqsmgmypx3xlrlevy7oa/spack-src/example/simple_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMUnitTest = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"null_test_success\00", align 1
@__const.main.tests = private unnamed_addr constant [1 x %struct.CMUnitTest] [%struct.CMUnitTest { ptr @.str, ptr @null_test_success, ptr null, ptr null, ptr null }], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"tests\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tests = alloca [1 x %struct.CMUnitTest], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr %tests) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %tests, ptr align 16 @__const.main.tests, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [1 x %struct.CMUnitTest], ptr %tests, i64 0, i64 0
  %call = call i32 @_cmocka_run_group_tests(ptr noundef @.str.1, ptr noundef %arraydecay, i64 noundef 1, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 40, ptr %tests) #4
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @null_test_success(ptr noundef %state) #0 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %state.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @_cmocka_run_group_tests(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
