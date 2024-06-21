; ModuleID = 'samples/984.bc'
source_filename = "calc_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local double @calculate_snr(ptr noundef %data, i32 noundef %len, i32 noundef %expected_peaks) #0 !dbg !9 {
entry:
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %expected_peaks.addr = alloca i32, align 4
  %snr = alloca double, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !21
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !17, metadata !DIExpression()), !dbg !25
  store i32 %len, ptr %len.addr, align 4, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !18, metadata !DIExpression()), !dbg !28
  store i32 %expected_peaks, ptr %expected_peaks.addr, align 4, !tbaa !26
  tail call void @llvm.dbg.declare(metadata ptr %expected_peaks.addr, metadata !19, metadata !DIExpression()), !dbg !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %snr) #3, !dbg !30
  tail call void @llvm.dbg.declare(metadata ptr %snr, metadata !20, metadata !DIExpression()), !dbg !31
  store double 2.000000e+02, ptr %snr, align 8, !dbg !31, !tbaa !32
  %0 = load ptr, ptr %data.addr, align 8, !dbg !34, !tbaa !21
  store ptr %0, ptr %data.addr, align 8, !dbg !35, !tbaa !21
  %1 = load i32, ptr %len.addr, align 4, !dbg !36, !tbaa !26
  store i32 %1, ptr %len.addr, align 4, !dbg !37, !tbaa !26
  %2 = load i32, ptr %expected_peaks.addr, align 4, !dbg !38, !tbaa !26
  store i32 %2, ptr %expected_peaks.addr, align 4, !dbg !39, !tbaa !26
  %3 = load double, ptr %snr, align 8, !dbg !40, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %snr) #3, !dbg !41
  ret double %3, !dbg !42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "calc_snr.c", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/tests", checksumkind: CSK_MD5, checksum: "403f1823579d53e16f59a4198d81b44c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!9 = distinct !DISubprogram(name: "calculate_snr", scope: !1, file: !1, line: 230, type: !10, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !15, !15}
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "data", arg: 1, scope: !9, file: !1, line: 230, type: !13)
!18 = !DILocalVariable(name: "len", arg: 2, scope: !9, file: !1, line: 230, type: !15)
!19 = !DILocalVariable(name: "expected_peaks", arg: 3, scope: !9, file: !1, line: 230, type: !15)
!20 = !DILocalVariable(name: "snr", scope: !9, file: !1, line: 231, type: !12)
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 230, column: 23, scope: !9)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !23, i64 0}
!28 = !DILocation(line: 230, column: 33, scope: !9)
!29 = !DILocation(line: 230, column: 42, scope: !9)
!30 = !DILocation(line: 231, column: 3, scope: !9)
!31 = !DILocation(line: 231, column: 10, scope: !9)
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !23, i64 0}
!34 = !DILocation(line: 233, column: 9, scope: !9)
!35 = !DILocation(line: 233, column: 7, scope: !9)
!36 = !DILocation(line: 234, column: 8, scope: !9)
!37 = !DILocation(line: 234, column: 6, scope: !9)
!38 = !DILocation(line: 235, column: 19, scope: !9)
!39 = !DILocation(line: 235, column: 17, scope: !9)
!40 = !DILocation(line: 237, column: 9, scope: !9)
!41 = !DILocation(line: 238, column: 1, scope: !9)
!42 = !DILocation(line: 237, column: 2, scope: !9)
