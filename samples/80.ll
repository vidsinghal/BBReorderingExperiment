; ModuleID = 'samples/80.bc'
source_filename = "nasmlib/ilog2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none) uwtable
define hidden i32 @ilog2_32(i32 noundef %v) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4, !tbaa !20
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !19, metadata !DIExpression()), !dbg !24
  %0 = load i32, ptr %v.addr, align 4, !dbg !25, !tbaa !20
  %tobool = icmp ne i32 %0, 0, !dbg !25
  br i1 %tobool, label %if.end, label %if.then, !dbg !27

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !28
  br label %return, !dbg !28

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %v.addr, align 4, !dbg !29, !tbaa !20
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true), !dbg !30
  %xor = xor i32 %2, 31, !dbg !31
  store i32 %xor, ptr %retval, align 4, !dbg !32
  br label %return, !dbg !32

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !33
  ret i32 %3, !dbg !33
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(none) uwtable
define hidden i32 @ilog2_64(i64 noundef %v) #0 !dbg !34 {
entry:
  %v.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !41, metadata !DIExpression()), !dbg !45
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4, !dbg !46
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !42, metadata !DIExpression()), !dbg !47
  store i64 0, ptr %n, align 8, !dbg !47, !annotation !48
  %0 = load i64, ptr %v.addr, align 8, !dbg !49, !tbaa !43
  %1 = call i64 asm "bsrq $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 0) #5, !dbg !50, !srcloc !51
  store i64 %1, ptr %n, align 8, !dbg !50, !tbaa !43
  %2 = load i64, ptr %n, align 8, !dbg !52, !tbaa !43
  %conv = trunc i64 %2 to i32, !dbg !52
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4, !dbg !53
  ret i32 %conv, !dbg !54
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind willreturn memory(none) uwtable
define hidden i32 @alignlog2_32(i32 noundef %v) #0 !dbg !55 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4, !tbaa !20
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i32, ptr %v.addr, align 4, !dbg !62, !tbaa !20
  %1 = load i32, ptr %v.addr, align 4, !dbg !62, !tbaa !20
  %sub = sub i32 %1, 1, !dbg !62
  %and = and i32 %0, %sub, !dbg !62
  %tobool = icmp ne i32 %and, 0, !dbg !62
  %lnot = xor i1 %tobool, true, !dbg !62
  %lnot1 = xor i1 %lnot, true, !dbg !62
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !62
  %conv = sext i32 %lnot.ext to i64, !dbg !62
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !62
  %tobool2 = icmp ne i64 %expval, 0, !dbg !62
  br i1 %tobool2, label %if.then, label %if.end, !dbg !64

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !65
  br label %return, !dbg !65

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %v.addr, align 4, !dbg !66, !tbaa !20
  %call = call i32 @ilog2_32(i32 noundef %2) #6, !dbg !67
  store i32 %call, ptr %retval, align 4, !dbg !68
  br label %return, !dbg !68

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !69
  ret i32 %3, !dbg !69
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nounwind willreturn memory(none) uwtable
define hidden i32 @alignlog2_64(i64 noundef %v) #0 !dbg !70 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8, !tbaa !43
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %0 = load i64, ptr %v.addr, align 8, !dbg !76, !tbaa !43
  %1 = load i64, ptr %v.addr, align 8, !dbg !76, !tbaa !43
  %sub = sub i64 %1, 1, !dbg !76
  %and = and i64 %0, %sub, !dbg !76
  %tobool = icmp ne i64 %and, 0, !dbg !76
  %lnot = xor i1 %tobool, true, !dbg !76
  %lnot1 = xor i1 %lnot, true, !dbg !76
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !76
  %conv = sext i32 %lnot.ext to i64, !dbg !76
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !76
  %tobool2 = icmp ne i64 %expval, 0, !dbg !76
  br i1 %tobool2, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !79
  br label %return, !dbg !79

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %v.addr, align 8, !dbg !80, !tbaa !43
  %call = call i32 @ilog2_64(i64 noundef %2) #6, !dbg !81
  store i32 %call, ptr %retval, align 4, !dbg !82
  br label %return, !dbg !82

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !83
  ret i32 %3, !dbg !83
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind memory(read) }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "nasmlib/ilog2.c", directory: "/local-ssd/nasm-tvcmfznoo5zl7zcwl374oxoadwazfjb7-build/aidengro/spack-stage-nasm-2.15.05-tvcmfznoo5zl7zcwl374oxoadwazfjb7/spack-src", checksumkind: CSK_MD5, checksum: "037db000288b131b4816c9e012c3b172")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!9 = distinct !DISubprogram(name: "ilog2_32", scope: !10, file: !10, line: 66, type: !11, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!10 = !DIFile(filename: "./include/ilog2.h", directory: "/local-ssd/nasm-tvcmfznoo5zl7zcwl374oxoadwazfjb7-build/aidengro/spack-stage-nasm-2.15.05-tvcmfznoo5zl7zcwl374oxoadwazfjb7/spack-src", checksumkind: CSK_MD5, checksum: "114dcd03c8bd6e2c6d463da1c995c631")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 26, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 42, baseType: !13)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!18 = !{!19}
!19 = !DILocalVariable(name: "v", arg: 1, scope: !9, file: !10, line: 66, type: !14)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 66, column: 57, scope: !9)
!25 = !DILocation(line: 68, column: 10, scope: !26)
!26 = distinct !DILexicalBlock(scope: !9, file: !10, line: 68, column: 9)
!27 = !DILocation(line: 68, column: 9, scope: !9)
!28 = !DILocation(line: 69, column: 9, scope: !26)
!29 = !DILocation(line: 71, column: 26, scope: !9)
!30 = !DILocation(line: 71, column: 12, scope: !9)
!31 = !DILocation(line: 71, column: 29, scope: !9)
!32 = !DILocation(line: 71, column: 5, scope: !9)
!33 = !DILocation(line: 72, column: 1, scope: !9)
!34 = distinct !DISubprogram(name: "ilog2_64", scope: !10, file: !10, line: 142, type: !35, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!35 = !DISubroutineType(types: !36)
!36 = !{!13, !37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 27, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 45, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41, !42}
!41 = !DILocalVariable(name: "v", arg: 1, scope: !34, file: !10, line: 142, type: !37)
!42 = !DILocalVariable(name: "n", scope: !34, file: !10, line: 144, type: !37)
!43 = !{!44, !44, i64 0}
!44 = !{!"long", !22, i64 0}
!45 = !DILocation(line: 142, column: 57, scope: !34)
!46 = !DILocation(line: 144, column: 5, scope: !34)
!47 = !DILocation(line: 144, column: 14, scope: !34)
!48 = !{!"auto-init"}
!49 = !DILocation(line: 148, column: 21, scope: !34)
!50 = !DILocation(line: 146, column: 5, scope: !34)
!51 = !{i64 16985}
!52 = !DILocation(line: 149, column: 12, scope: !34)
!53 = !DILocation(line: 150, column: 1, scope: !34)
!54 = !DILocation(line: 149, column: 5, scope: !34)
!55 = distinct !DISubprogram(name: "alignlog2_32", scope: !10, file: !10, line: 181, type: !56, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !14}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !{!60}
!60 = !DILocalVariable(name: "v", arg: 1, scope: !55, file: !10, line: 181, type: !14)
!61 = !DILocation(line: 181, column: 52, scope: !55)
!62 = !DILocation(line: 183, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !55, file: !10, line: 183, column: 9)
!64 = !DILocation(line: 183, column: 9, scope: !55)
!65 = !DILocation(line: 184, column: 9, scope: !63)
!66 = !DILocation(line: 186, column: 21, scope: !55)
!67 = !DILocation(line: 186, column: 12, scope: !55)
!68 = !DILocation(line: 186, column: 5, scope: !55)
!69 = !DILocation(line: 187, column: 1, scope: !55)
!70 = distinct !DISubprogram(name: "alignlog2_64", scope: !10, file: !10, line: 189, type: !71, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!58, !37}
!73 = !{!74}
!74 = !DILocalVariable(name: "v", arg: 1, scope: !70, file: !10, line: 189, type: !37)
!75 = !DILocation(line: 189, column: 52, scope: !70)
!76 = !DILocation(line: 191, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !70, file: !10, line: 191, column: 9)
!78 = !DILocation(line: 191, column: 9, scope: !70)
!79 = !DILocation(line: 192, column: 9, scope: !77)
!80 = !DILocation(line: 194, column: 21, scope: !70)
!81 = !DILocation(line: 194, column: 12, scope: !70)
!82 = !DILocation(line: 194, column: 5, scope: !70)
!83 = !DILocation(line: 195, column: 1, scope: !70)
