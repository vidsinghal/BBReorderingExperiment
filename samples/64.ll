; ModuleID = 'samples/64.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/ThirdParty/libharu/vtklibharu/src/hpdf_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_Direct_Rec = type { %struct._HPDF_Obj_Header, ptr, ptr, ptr, i32 }
%struct._HPDF_Obj_Header = type { i32, i16, i16 }
%struct._HPDF_MMgr_Rec = type { ptr, ptr, ptr, ptr, i32 }

; Function Attrs: uwtable
define ptr @vtklibharu_HPDF_Direct_New(ptr noundef %mmgr, ptr noundef %value, i32 noundef %len) #0 {
entry:
  %retval = alloca ptr, align 8
  %mmgr.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mmgr, ptr %mmgr.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store i32 %len, ptr %len.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #3
  %0 = load ptr, ptr %mmgr.addr, align 8, !tbaa !4
  %call = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %0, i32 noundef 40)
  store ptr %call, ptr %obj, align 8, !tbaa !4
  %1 = load ptr, ptr %obj, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %obj, align 8, !tbaa !4
  %header = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %2, i32 0, i32 0
  %call1 = call ptr @vtklibharu_HPDF_MemSet(ptr noundef %header, i8 noundef zeroext 0, i32 noundef 8)
  %3 = load ptr, ptr %obj, align 8, !tbaa !4
  %header2 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %3, i32 0, i32 0
  %obj_class = getelementptr inbounds %struct._HPDF_Obj_Header, ptr %header2, i32 0, i32 2
  store i16 160, ptr %obj_class, align 2, !tbaa !10
  %4 = load ptr, ptr %mmgr.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %obj, align 8, !tbaa !4
  %mmgr3 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %5, i32 0, i32 1
  store ptr %4, ptr %mmgr3, align 8, !tbaa !14
  %6 = load ptr, ptr %mmgr.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_MMgr_Rec, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %error, align 8, !tbaa !15
  %8 = load ptr, ptr %obj, align 8, !tbaa !4
  %error4 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %8, i32 0, i32 2
  store ptr %7, ptr %error4, align 8, !tbaa !17
  %9 = load ptr, ptr %obj, align 8, !tbaa !4
  %value5 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %9, i32 0, i32 3
  store ptr null, ptr %value5, align 8, !tbaa !18
  %10 = load ptr, ptr %obj, align 8, !tbaa !4
  %len6 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %10, i32 0, i32 4
  store i32 0, ptr %len6, align 8, !tbaa !19
  %11 = load ptr, ptr %obj, align 8, !tbaa !4
  %12 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %13 = load i32, ptr %len.addr, align 4, !tbaa !8
  %call7 = call i64 @vtklibharu_HPDF_Direct_SetValue(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  %cmp = icmp ne i64 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %14 = load ptr, ptr %mmgr.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %obj, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %14, ptr noundef %15)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %16 = load ptr, ptr %obj, align 8, !tbaa !4
  store ptr %16, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #3
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @vtklibharu_HPDF_GetMem(ptr noundef, i32 noundef) #2

declare ptr @vtklibharu_HPDF_MemSet(ptr noundef, i8 noundef zeroext, i32 noundef) #2

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Direct_SetValue(ptr noundef %obj, ptr noundef %value, i32 noundef %len) #0 {
entry:
  %retval = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %value, ptr %value.addr, align 8, !tbaa !4
  store i32 %len, ptr %len.addr, align 4, !tbaa !8
  %0 = load i32, ptr %len.addr, align 4, !tbaa !8
  %cmp = icmp ugt i32 %0, 2147483646
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %error, align 8, !tbaa !17
  %call = call i64 @vtklibharu_HPDF_SetError(ptr noundef %2, i64 noundef 4100, i64 noundef 0)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value1 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %value1, align 8, !tbaa !18
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %mmgr, align 8, !tbaa !14
  %7 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value3 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %value3, align 8, !tbaa !18
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %len4 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %9, i32 0, i32 4
  store i32 0, ptr %len4, align 8, !tbaa !19
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %10 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %mmgr6 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %mmgr6, align 8, !tbaa !14
  %12 = load i32, ptr %len.addr, align 4, !tbaa !8
  %call7 = call ptr @vtklibharu_HPDF_GetMem(ptr noundef %11, i32 noundef %12)
  %13 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value8 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %13, i32 0, i32 3
  store ptr %call7, ptr %value8, align 8, !tbaa !18
  %14 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value9 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %value9, align 8, !tbaa !18
  %tobool10 = icmp ne ptr %15, null
  br i1 %tobool10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end5
  %16 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %error12 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %error12, align 8, !tbaa !17
  %call13 = call i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef %17)
  store i64 %call13, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end5
  %18 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value15 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %value15, align 8, !tbaa !18
  %20 = load ptr, ptr %value.addr, align 8, !tbaa !4
  %21 = load i32, ptr %len.addr, align 4, !tbaa !8
  %call16 = call ptr @vtklibharu_HPDF_MemCpy(ptr noundef %19, ptr noundef %20, i32 noundef %21)
  %22 = load i32, ptr %len.addr, align 4, !tbaa !8
  %23 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %len17 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %23, i32 0, i32 4
  store i32 %22, ptr %len17, align 8, !tbaa !19
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end14, %if.then11, %if.then
  %24 = load i64, ptr %retval, align 8
  ret i64 %24
}

declare void @vtklibharu_HPDF_FreeMem(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: uwtable
define i64 @vtklibharu_HPDF_Direct_Write(ptr noundef %obj, ptr noundef %stream) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  %stream.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %stream, ptr %stream.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %stream.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %value, align 8, !tbaa !18
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %len, align 8, !tbaa !19
  %call = call i64 @vtklibharu_HPDF_Stream_Write(ptr noundef %0, ptr noundef %2, i32 noundef %4)
  ret i64 %call
}

declare i64 @vtklibharu_HPDF_Stream_Write(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @vtklibharu_HPDF_SetError(ptr noundef, i64 noundef, i64 noundef) #2

declare i64 @vtklibharu_HPDF_Error_GetCode(ptr noundef) #2

declare ptr @vtklibharu_HPDF_MemCpy(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: uwtable
define void @vtklibharu_HPDF_Direct_Free(ptr noundef %obj) #0 {
entry:
  %obj.addr = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %value, align 8, !tbaa !18
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %mmgr = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %mmgr, align 8, !tbaa !14
  %5 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %value3 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %value3, align 8, !tbaa !18
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %4, ptr noundef %6)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %mmgr5 = getelementptr inbounds %struct._HPDF_Direct_Rec, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %mmgr5, align 8, !tbaa !14
  %9 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  call void @vtklibharu_HPDF_FreeMem(ptr noundef %8, ptr noundef %9)
  br label %return

return:                                           ; preds = %if.end4, %if.then
  ret void
}

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !13, i64 6}
!11 = !{!"_HPDF_Direct_Rec", !12, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32}
!12 = !{!"_HPDF_Obj_Header", !9, i64 0, !13, i64 4, !13, i64 6}
!13 = !{!"short", !6, i64 0}
!14 = !{!11, !5, i64 8}
!15 = !{!16, !5, i64 0}
!16 = !{!"_HPDF_MMgr_Rec", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32}
!17 = !{!11, !5, i64 16}
!18 = !{!11, !5, i64 24}
!19 = !{!11, !9, i64 32}
