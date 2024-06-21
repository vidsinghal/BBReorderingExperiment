; ModuleID = 'samples/453.bc'
source_filename = "sys/unix/erl_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !17, metadata !DIExpression()), !dbg !19
  store ptr %argv, ptr %argv.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !18, metadata !DIExpression()), !dbg !20
  %0 = load i32, ptr %argc.addr, align 4, !dbg !21
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !22
  call void @erl_start(i32 noundef %0, ptr noundef %1), !dbg !23
  ret i32 0, !dbg !24
}

declare !dbg !25 void @erl_start(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sys/unix/erl_main.c", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "2e201f4d099eb5f3a2396063c40d619f")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 28, type: !10, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 28, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 28, type: !13)
!19 = !DILocation(line: 28, column: 10, scope: !9)
!20 = !DILocation(line: 28, column: 23, scope: !9)
!21 = !DILocation(line: 30, column: 15, scope: !9)
!22 = !DILocation(line: 30, column: 21, scope: !9)
!23 = !DILocation(line: 30, column: 5, scope: !9)
!24 = !DILocation(line: 31, column: 5, scope: !9)
!25 = !DISubprogram(name: "erl_start", scope: !26, file: !26, line: 1262, type: !27, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!26 = !DIFile(filename: "beam/global.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "97d63098f45f42d23e68038cf4585503")
!27 = !DISubroutineType(types: !28)
!28 = !{null, !12, !13}
