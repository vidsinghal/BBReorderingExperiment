; ModuleID = 'samples/498.bc'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/libproj/vtklibproj/src/pj_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_malloc(i64 noundef %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %old_errno = alloca i32, align 4
  %res = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_errno) #6
  %call = call ptr @__errno_location() #7
  %0 = load i32, ptr %call, align 4, !tbaa !8
  store i32 %0, ptr %old_errno, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #6
  %1 = load i64, ptr %size.addr, align 8, !tbaa !4
  %call1 = call noalias ptr @malloc(i64 noundef %1) #8
  store ptr %call1, ptr %res, align 8, !tbaa !10
  %2 = load ptr, ptr %res, align 8, !tbaa !10
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %old_errno, align 4, !tbaa !8
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = call ptr @__errno_location() #7
  store i32 0, ptr %call3, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load ptr, ptr %res, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_errno) #6
  ret ptr %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @vtklibproj_pj_dalloc(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !10
  call void @free(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_calloc(i64 noundef %n, i64 noundef %size) #0 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store i64 %size, ptr %size.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #6
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %1 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul = mul i64 %0, %1
  %call = call ptr @vtklibproj_pj_malloc(i64 noundef %mul)
  store ptr %call, ptr %res, align 8, !tbaa !10
  %2 = load ptr, ptr %res, align 8, !tbaa !10
  %cmp = icmp eq ptr null, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !tbaa !10
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %5 = load i64, ptr %size.addr, align 8, !tbaa !4
  %mul1 = mul i64 %4, %5
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %mul1, i1 false)
  %6 = load ptr, ptr %res, align 8, !tbaa !10
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #6
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define ptr @vtklibproj_pj_dealloc(ptr noundef %ptr) #0 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !10
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !10
  call void @vtklibproj_pj_dalloc(ptr noundef %1)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load ptr, ptr %retval, align 8
  ret ptr %2
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
