; ModuleID = 'samples/961.bc'
source_filename = "/local-ssd/vtk-kb2jughcg3bneb23yemli5qgcptmb7ii-build/aidengro/spack-stage-vtk-9.2.6-kb2jughcg3bneb23yemli5qgcptmb7ii/spack-src/Wrapping/Tools/vtkWrapPythonNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ClassInfo_ = type { i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [83 x i8] c"static PyObject *PyVTKNamespace_%s()\0A{\0A  PyObject *m = PyVTKNamespace_New(\22%s\22);\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"  PyObject *d = PyVTKNamespace_GetDict(m);\0A  PyObject *o;\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"  return m;\0A}\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @vtkWrapPython_WrapNamespace(ptr noundef %fp, ptr noundef %module, ptr noundef %data) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %module.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %module, ptr %module.addr, align 8, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !9
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %NumberOfEnums = getelementptr inbounds %struct.ClassInfo_, ptr %1, i32 0, i32 17
  %2 = load i32, ptr %NumberOfEnums, align 8, !tbaa !11
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %Enums = getelementptr inbounds %struct.ClassInfo_, ptr %3, i32 0, i32 18
  %4 = load ptr, ptr %Enums, align 8, !tbaa !13
  %5 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %IsExcluded = getelementptr inbounds %struct.ClassInfo_, ptr %6, i32 0, i32 32
  %7 = load i32, ptr %IsExcluded, align 4, !tbaa !14
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %module.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %Name = getelementptr inbounds %struct.ClassInfo_, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %Name, align 8, !tbaa !15
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %Enums1 = getelementptr inbounds %struct.ClassInfo_, ptr %12, i32 0, i32 18
  %13 = load ptr, ptr %Enums1, align 8, !tbaa !13
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 %idxprom2
  %15 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  call void @vtkWrapPython_GenerateEnumType(ptr noundef %8, ptr noundef %9, ptr noundef %11, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %Name4 = getelementptr inbounds %struct.ClassInfo_, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %Name4, align 8, !tbaa !15
  %20 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %Name5 = getelementptr inbounds %struct.ClassInfo_, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %Name5, align 8, !tbaa !15
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str, ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %NumberOfEnums6 = getelementptr inbounds %struct.ClassInfo_, ptr %22, i32 0, i32 17
  %23 = load i32, ptr %NumberOfEnums6, align 8, !tbaa !11
  %tobool7 = icmp ne i32 %23, 0
  br i1 %tobool7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %24 = load ptr, ptr %data.addr, align 8, !tbaa !5
  %NumberOfConstants = getelementptr inbounds %struct.ClassInfo_, ptr %24, i32 0, i32 13
  %25 = load i32, ptr %NumberOfConstants, align 8, !tbaa !18
  %tobool8 = icmp ne i32 %25, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false, %for.end
  %26 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.1)
  %27 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %data.addr, align 8, !tbaa !5
  call void @vtkWrapPython_AddPublicEnumTypes(ptr noundef %27, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef %28)
  %29 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !5
  call void @vtkWrapPython_AddPublicConstants(ptr noundef %29, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef %30)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %lor.lhs.false
  %31 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @vtkWrapPython_GenerateEnumType(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare void @vtkWrapPython_AddPublicEnumTypes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @vtkWrapPython_AddPublicConstants(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !10, i64 128}
!12 = !{!"ClassInfo_", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !10, i64 32, !6, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !6, i64 72, !10, i64 80, !6, i64 88, !10, i64 96, !6, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !6, i64 136, !10, i64 144, !6, i64 152, !10, i64 160, !6, i64 168, !10, i64 176, !6, i64 184, !10, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240}
!13 = !{!12, !6, i64 136}
!14 = !{!12, !10, i64 236}
!15 = !{!12, !6, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!12, !10, i64 96}
