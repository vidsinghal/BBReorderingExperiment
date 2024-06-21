; ModuleID = 'samples/569.bc'
source_filename = "modules/parsers/gas/gas-parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yasm_parser_module = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.yasm_parser_gas = type { ptr, ptr, i64, i32, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, i32, [2 x [80 x i8]], i32, ptr, ptr, i64, %struct.yasm_scanner, i32, i32, %union.yystype, i8, i32, %union.yystype, i8, [10 x i64], ptr, i32, i32, i32 }
%struct.yasm_scanner = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.yystype = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.yasm_object = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.yasm_sectionhead, ptr, ptr, ptr }
%struct.yasm_sectionhead = type { ptr, ptr }
%struct.yasm_preproc_base = type { ptr }
%struct.yasm_preproc_module = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [31 x i8] c"GNU AS (GAS)-compatible parser\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"gas\00", align 1, !dbg !7
@gas_parser_preproc_keywords = internal global [5 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], align 16, !dbg !12
@yasm_gas_LTX_parser = dso_local global %struct.yasm_parser_module { ptr @.str, ptr @.str.1, ptr @gas_parser_preproc_keywords, ptr @.str.1, ptr null, ptr @gas_parser_do_parse }, align 8, !dbg !166
@.str.2 = private unnamed_addr constant [4 x i8] c"gnu\00", align 1, !dbg !226
@yasm_gnu_LTX_parser = dso_local global %struct.yasm_parser_module { ptr @.str, ptr @.str.2, ptr @gas_parser_preproc_keywords, ptr @.str.1, ptr null, ptr @gas_parser_do_parse }, align 8, !dbg !228
@.str.3 = private unnamed_addr constant [4 x i8] c"raw\00", align 1, !dbg !230
@.str.4 = private unnamed_addr constant [4 x i8] c"cpp\00", align 1, !dbg !232
@.str.5 = private unnamed_addr constant [5 x i8] c"nasm\00", align 1, !dbg !234
@.str.6 = private unnamed_addr constant [23 x i8] c"end of file in comment\00", align 1, !dbg !239
@yasm_xfree = external global ptr, align 8

; Function Attrs: nounwind uwtable
define internal void @gas_parser_do_parse(ptr noundef %object, ptr noundef %pp, i32 noundef %save_input, ptr noundef %linemap, ptr noundef %errwarns) #0 !dbg !252 {
entry:
  %object.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %save_input.addr = alloca i32, align 4
  %linemap.addr = alloca ptr, align 8
  %errwarns.addr = alloca ptr, align 8
  %parser_gas = alloca %struct.yasm_parser_gas, align 8
  %i = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8, !tbaa !512
  tail call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !254, metadata !DIExpression()), !dbg !516
  store ptr %pp, ptr %pp.addr, align 8, !tbaa !512
  tail call void @llvm.dbg.declare(metadata ptr %pp.addr, metadata !255, metadata !DIExpression()), !dbg !517
  store i32 %save_input, ptr %save_input.addr, align 4, !tbaa !518
  tail call void @llvm.dbg.declare(metadata ptr %save_input.addr, metadata !256, metadata !DIExpression()), !dbg !520
  store ptr %linemap, ptr %linemap.addr, align 8, !tbaa !512
  tail call void @llvm.dbg.declare(metadata ptr %linemap.addr, metadata !257, metadata !DIExpression()), !dbg !521
  store ptr %errwarns, ptr %errwarns.addr, align 8, !tbaa !512
  tail call void @llvm.dbg.declare(metadata ptr %errwarns.addr, metadata !258, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 504, ptr %parser_gas) #5, !dbg !523
  tail call void @llvm.dbg.declare(metadata ptr %parser_gas, metadata !259, metadata !DIExpression()), !dbg !524
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !525
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !511, metadata !DIExpression()), !dbg !526
  %0 = load ptr, ptr %object.addr, align 8, !dbg !527, !tbaa !512
  %object1 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 0, !dbg !528
  store ptr %0, ptr %object1, align 8, !dbg !529, !tbaa !530
  %1 = load ptr, ptr %linemap.addr, align 8, !dbg !534, !tbaa !512
  %linemap2 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 9, !dbg !535
  store ptr %1, ptr %linemap2, align 8, !dbg !536, !tbaa !537
  %locallabel_base = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 1, !dbg !538
  store ptr null, ptr %locallabel_base, align 8, !dbg !539, !tbaa !540
  %locallabel_base_len = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 2, !dbg !541
  store i64 0, ptr %locallabel_base_len, align 8, !dbg !542, !tbaa !543
  %dir_fileline = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 3, !dbg !544
  store i32 0, ptr %dir_fileline, align 8, !dbg !545, !tbaa !546
  %dir_file = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 4, !dbg !547
  store ptr null, ptr %dir_file, align 8, !dbg !548, !tbaa !549
  %dir_line = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 5, !dbg !550
  store i64 0, ptr %dir_line, align 8, !dbg !551, !tbaa !552
  %seen_line_marker = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 6, !dbg !553
  store i32 0, ptr %seen_line_marker, align 8, !dbg !554, !tbaa !555
  %2 = load ptr, ptr %pp.addr, align 8, !dbg !556, !tbaa !512
  %preproc = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 7, !dbg !557
  store ptr %2, ptr %preproc, align 8, !dbg !558, !tbaa !559
  %3 = load ptr, ptr %errwarns.addr, align 8, !dbg !560, !tbaa !512
  %errwarns3 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 8, !dbg !561
  store ptr %3, ptr %errwarns3, align 8, !dbg !562, !tbaa !563
  %4 = load ptr, ptr %object.addr, align 8, !dbg !564, !tbaa !512
  %cur_section = getelementptr inbounds %struct.yasm_object, ptr %4, i32 0, i32 6, !dbg !565
  %5 = load ptr, ptr %cur_section, align 8, !dbg !565, !tbaa !566
  %call = call ptr @yasm_section_bcs_first(ptr noundef %5), !dbg !569
  %prev_bc = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 10, !dbg !570
  store ptr %call, ptr %prev_bc, align 8, !dbg !571, !tbaa !572
  %6 = load i32, ptr %save_input.addr, align 4, !dbg !573, !tbaa !518
  %save_input4 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 12, !dbg !574
  store i32 %6, ptr %save_input4, align 8, !dbg !575, !tbaa !576
  %save_last = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 14, !dbg !577
  store i32 0, ptr %save_last, align 4, !dbg !578, !tbaa !579
  %peek_token = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 23, !dbg !580
  store i32 271, ptr %peek_token, align 4, !dbg !581, !tbaa !582
  %line = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 15, !dbg !583
  store ptr null, ptr %line, align 8, !dbg !584, !tbaa !585
  %s = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 18, !dbg !586
  call void @yasm_scanner_initialize(ptr noundef %s), !dbg !587
  %state = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 19, !dbg !588
  store i32 0, ptr %state, align 8, !dbg !589, !tbaa !590
  store i32 0, ptr %i, align 4, !dbg !591, !tbaa !518
  br label %for.cond, !dbg !593

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4, !dbg !594, !tbaa !518
  %cmp = icmp slt i32 %7, 10, !dbg !596
  br i1 %cmp, label %for.body, label %for.end, !dbg !597

for.body:                                         ; preds = %for.cond
  %local = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 26, !dbg !598
  %8 = load i32, ptr %i, align 4, !dbg !599, !tbaa !518
  %idxprom = sext i32 %8 to i64, !dbg !600
  %arrayidx = getelementptr inbounds [10 x i64], ptr %local, i64 0, i64 %idxprom, !dbg !600
  store i64 0, ptr %arrayidx, align 8, !dbg !601, !tbaa !602
  br label %for.inc, !dbg !600

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !603, !tbaa !518
  %inc = add nsw i32 %9, 1, !dbg !603
  store i32 %inc, ptr %i, align 4, !dbg !603, !tbaa !518
  br label %for.cond, !dbg !604, !llvm.loop !605

for.end:                                          ; preds = %for.cond
  %intel_syntax = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 28, !dbg !608
  store i32 0, ptr %intel_syntax, align 8, !dbg !609, !tbaa !610
  %10 = load ptr, ptr %pp.addr, align 8, !dbg !611, !tbaa !512
  %module = getelementptr inbounds %struct.yasm_preproc_base, ptr %10, i32 0, i32 0, !dbg !611
  %11 = load ptr, ptr %module, align 8, !dbg !611, !tbaa !612
  %keyword = getelementptr inbounds %struct.yasm_preproc_module, ptr %11, i32 0, i32 1, !dbg !611
  %12 = load ptr, ptr %keyword, align 8, !dbg !611, !tbaa !614
  %call5 = call i32 @strcasecmp(ptr noundef %12, ptr noundef @.str.4) #6, !dbg !611
  %cmp6 = icmp eq i32 %call5, 0, !dbg !616
  %conv = zext i1 %cmp6 to i32, !dbg !616
  %is_cpp_preproc = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 30, !dbg !617
  store i32 %conv, ptr %is_cpp_preproc, align 8, !dbg !618, !tbaa !619
  %13 = load ptr, ptr %pp.addr, align 8, !dbg !620, !tbaa !512
  %module7 = getelementptr inbounds %struct.yasm_preproc_base, ptr %13, i32 0, i32 0, !dbg !620
  %14 = load ptr, ptr %module7, align 8, !dbg !620, !tbaa !612
  %keyword8 = getelementptr inbounds %struct.yasm_preproc_module, ptr %14, i32 0, i32 1, !dbg !620
  %15 = load ptr, ptr %keyword8, align 8, !dbg !620, !tbaa !614
  %call9 = call i32 @strcasecmp(ptr noundef %15, ptr noundef @.str.5) #6, !dbg !620
  %cmp10 = icmp eq i32 %call9, 0, !dbg !621
  %conv11 = zext i1 %cmp10 to i32, !dbg !621
  %is_nasm_preproc = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 29, !dbg !622
  store i32 %conv11, ptr %is_nasm_preproc, align 4, !dbg !623, !tbaa !624
  call void @gas_parser_parse(ptr noundef %parser_gas), !dbg !625
  %state12 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 19, !dbg !626
  %16 = load i32, ptr %state12, align 8, !dbg !626, !tbaa !590
  %cmp13 = icmp eq i32 %16, 1, !dbg !628
  br i1 %cmp13, label %if.then, label %if.end, !dbg !629

if.then:                                          ; preds = %for.end
  call void (i32, ptr, ...) @yasm_warn_set(i32 noundef 1, ptr noundef @.str.6), !dbg !630
  %17 = load ptr, ptr %errwarns.addr, align 8, !dbg !632, !tbaa !512
  %linemap15 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 9, !dbg !633
  %18 = load ptr, ptr %linemap15, align 8, !dbg !633, !tbaa !537
  %call16 = call i64 @yasm_linemap_get_current(ptr noundef %18), !dbg !634
  %sub = sub i64 %call16, 2, !dbg !635
  call void @yasm_errwarn_propagate(ptr noundef %17, i64 noundef %sub), !dbg !636
  br label %if.end, !dbg !637

if.end:                                           ; preds = %if.then, %for.end
  %s17 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 18, !dbg !638
  call void @yasm_scanner_delete(ptr noundef %s17), !dbg !639
  %locallabel_base18 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 1, !dbg !640
  %19 = load ptr, ptr %locallabel_base18, align 8, !dbg !640, !tbaa !540
  %tobool = icmp ne ptr %19, null, !dbg !642
  br i1 %tobool, label %if.then19, label %if.end21, !dbg !643

if.then19:                                        ; preds = %if.end
  %20 = load ptr, ptr @yasm_xfree, align 8, !dbg !644, !tbaa !512
  %locallabel_base20 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 1, !dbg !645
  %21 = load ptr, ptr %locallabel_base20, align 8, !dbg !645, !tbaa !540
  call void %20(ptr noundef %21), !dbg !644
  br label %if.end21, !dbg !644

if.end21:                                         ; preds = %if.then19, %if.end
  %dir_file22 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 4, !dbg !646
  %22 = load ptr, ptr %dir_file22, align 8, !dbg !646, !tbaa !549
  %tobool23 = icmp ne ptr %22, null, !dbg !648
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !649

if.then24:                                        ; preds = %if.end21
  %23 = load ptr, ptr @yasm_xfree, align 8, !dbg !650, !tbaa !512
  %dir_file25 = getelementptr inbounds %struct.yasm_parser_gas, ptr %parser_gas, i32 0, i32 4, !dbg !651
  %24 = load ptr, ptr %dir_file25, align 8, !dbg !651, !tbaa !549
  call void %23(ptr noundef %24), !dbg !650
  br label %if.end26, !dbg !650

if.end26:                                         ; preds = %if.then24, %if.end21
  %25 = load ptr, ptr %object.addr, align 8, !dbg !652, !tbaa !512
  %symtab = getelementptr inbounds %struct.yasm_object, ptr %25, i32 0, i32 2, !dbg !653
  %26 = load ptr, ptr %symtab, align 8, !dbg !653, !tbaa !654
  %27 = load ptr, ptr %errwarns.addr, align 8, !dbg !655, !tbaa !512
  call void @yasm_symtab_parser_finalize(ptr noundef %26, i32 noundef 1, ptr noundef %27), !dbg !656
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !657
  call void @llvm.lifetime.end.p0(i64 504, ptr %parser_gas) #5, !dbg !657
  ret void, !dbg !657
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !658 ptr @yasm_section_bcs_first(ptr noundef) #2

declare !dbg !661 void @yasm_scanner_initialize(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !665 i32 @strcasecmp(ptr noundef, ptr noundef) #3

declare !dbg !669 void @gas_parser_parse(ptr noundef) #2

declare !dbg !673 void @yasm_warn_set(i32 noundef, ptr noundef, ...) #2

declare !dbg !677 void @yasm_errwarn_propagate(ptr noundef, i64 noundef) #2

declare !dbg !680 i64 @yasm_linemap_get_current(ptr noundef) #2

declare !dbg !684 void @yasm_scanner_delete(ptr noundef) #2

declare !dbg !685 void @yasm_symtab_parser_finalize(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250}
!llvm.ident = !{!251}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "modules/parsers/gas/gas-parser.c", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "720146f9816bac7e390b9632bcad4bc6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "gas_parser_preproc_keywords", scope: !14, file: !2, line: 109, type: !244, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !105, globals: !165, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !53, !64, !71, !78, !94}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_expr_op", file: !17, line: 218, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./libyasm/coretype.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "9dfc5415d2e988670aaac0a7c37cb8d6")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!20 = !DIEnumerator(name: "YASM_EXPR_IDENT", value: 0)
!21 = !DIEnumerator(name: "YASM_EXPR_ADD", value: 1)
!22 = !DIEnumerator(name: "YASM_EXPR_SUB", value: 2)
!23 = !DIEnumerator(name: "YASM_EXPR_MUL", value: 3)
!24 = !DIEnumerator(name: "YASM_EXPR_DIV", value: 4)
!25 = !DIEnumerator(name: "YASM_EXPR_SIGNDIV", value: 5)
!26 = !DIEnumerator(name: "YASM_EXPR_MOD", value: 6)
!27 = !DIEnumerator(name: "YASM_EXPR_SIGNMOD", value: 7)
!28 = !DIEnumerator(name: "YASM_EXPR_NEG", value: 8)
!29 = !DIEnumerator(name: "YASM_EXPR_NOT", value: 9)
!30 = !DIEnumerator(name: "YASM_EXPR_OR", value: 10)
!31 = !DIEnumerator(name: "YASM_EXPR_AND", value: 11)
!32 = !DIEnumerator(name: "YASM_EXPR_XOR", value: 12)
!33 = !DIEnumerator(name: "YASM_EXPR_XNOR", value: 13)
!34 = !DIEnumerator(name: "YASM_EXPR_NOR", value: 14)
!35 = !DIEnumerator(name: "YASM_EXPR_SHL", value: 15)
!36 = !DIEnumerator(name: "YASM_EXPR_SHR", value: 16)
!37 = !DIEnumerator(name: "YASM_EXPR_LOR", value: 17)
!38 = !DIEnumerator(name: "YASM_EXPR_LAND", value: 18)
!39 = !DIEnumerator(name: "YASM_EXPR_LNOT", value: 19)
!40 = !DIEnumerator(name: "YASM_EXPR_LXOR", value: 20)
!41 = !DIEnumerator(name: "YASM_EXPR_LXNOR", value: 21)
!42 = !DIEnumerator(name: "YASM_EXPR_LNOR", value: 22)
!43 = !DIEnumerator(name: "YASM_EXPR_LT", value: 23)
!44 = !DIEnumerator(name: "YASM_EXPR_GT", value: 24)
!45 = !DIEnumerator(name: "YASM_EXPR_EQ", value: 25)
!46 = !DIEnumerator(name: "YASM_EXPR_LE", value: 26)
!47 = !DIEnumerator(name: "YASM_EXPR_GE", value: 27)
!48 = !DIEnumerator(name: "YASM_EXPR_NE", value: 28)
!49 = !DIEnumerator(name: "YASM_EXPR_NONNUM", value: 29)
!50 = !DIEnumerator(name: "YASM_EXPR_SEG", value: 30)
!51 = !DIEnumerator(name: "YASM_EXPR_WRT", value: 31)
!52 = !DIEnumerator(name: "YASM_EXPR_SEGOFF", value: 32)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_expr__type", file: !54, line: 42, baseType: !18, size: 32, elements: !55)
!54 = !DIFile(filename: "./libyasm/expr.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "56c4cabf03e15977fb62c919c460e24b")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63}
!56 = !DIEnumerator(name: "YASM_EXPR_NONE", value: 0)
!57 = !DIEnumerator(name: "YASM_EXPR_REG", value: 1)
!58 = !DIEnumerator(name: "YASM_EXPR_INT", value: 2)
!59 = !DIEnumerator(name: "YASM_EXPR_SUBST", value: 4)
!60 = !DIEnumerator(name: "YASM_EXPR_FLOAT", value: 8)
!61 = !DIEnumerator(name: "YASM_EXPR_SYM", value: 16)
!62 = !DIEnumerator(name: "YASM_EXPR_PRECBC", value: 32)
!63 = !DIEnumerator(name: "YASM_EXPR_EXPR", value: 64)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_bytecode_special_type", file: !65, line: 168, baseType: !18, size: 32, elements: !66)
!65 = !DIFile(filename: "./libyasm/bytecode.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "0499d1c9795aedbcd3282f1a8076b927")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "YASM_BC_SPECIAL_NONE", value: 0)
!68 = !DIEnumerator(name: "YASM_BC_SPECIAL_RESERVE", value: 1)
!69 = !DIEnumerator(name: "YASM_BC_SPECIAL_OFFSET", value: 2)
!70 = !DIEnumerator(name: "YASM_BC_SPECIAL_INSN", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gas_parser_state", file: !72, line: 67, baseType: !18, size: 32, elements: !73)
!72 = !DIFile(filename: "modules/parsers/gas/gas-parser.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "49aea14ccee44d36b2187aa1e1c6260e")
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "INITIAL", value: 0)
!75 = !DIEnumerator(name: "COMMENT", value: 1)
!76 = !DIEnumerator(name: "SECTION_DIRECTIVE", value: 2)
!77 = !DIEnumerator(name: "NASM_FILENAME", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tokentype", file: !72, line: 37, baseType: !18, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!80 = !DIEnumerator(name: "INTNUM", value: 258)
!81 = !DIEnumerator(name: "FLTNUM", value: 259)
!82 = !DIEnumerator(name: "STRING", value: 260)
!83 = !DIEnumerator(name: "REG", value: 261)
!84 = !DIEnumerator(name: "REGGROUP", value: 262)
!85 = !DIEnumerator(name: "SEGREG", value: 263)
!86 = !DIEnumerator(name: "TARGETMOD", value: 264)
!87 = !DIEnumerator(name: "LEFT_OP", value: 265)
!88 = !DIEnumerator(name: "RIGHT_OP", value: 266)
!89 = !DIEnumerator(name: "ID", value: 267)
!90 = !DIEnumerator(name: "LABEL", value: 268)
!91 = !DIEnumerator(name: "CPP_LINE_MARKER", value: 269)
!92 = !DIEnumerator(name: "NASM_LINE_MARKER", value: 270)
!93 = !DIEnumerator(name: "NONE", value: 271)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "yasm_warn_class", file: !95, line: 38, baseType: !18, size: 32, elements: !96)
!95 = !DIFile(filename: "./libyasm/errwarn.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "e8ddf1933c5e2c4fd74d90f9312311d9")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104}
!97 = !DIEnumerator(name: "YASM_WARN_NONE", value: 0)
!98 = !DIEnumerator(name: "YASM_WARN_GENERAL", value: 1)
!99 = !DIEnumerator(name: "YASM_WARN_UNREC_CHAR", value: 2)
!100 = !DIEnumerator(name: "YASM_WARN_PREPROC", value: 3)
!101 = !DIEnumerator(name: "YASM_WARN_ORPHAN_LABEL", value: 4)
!102 = !DIEnumerator(name: "YASM_WARN_UNINIT_CONTENTS", value: 5)
!103 = !DIEnumerator(name: "YASM_WARN_SIZE_OVERRIDE", value: 6)
!104 = !DIEnumerator(name: "YASM_WARN_IMPLICIT_SIZE_OVERRIDE", value: 7)
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_preproc_base", file: !110, line: 40, baseType: !111)
!110 = !DIFile(filename: "./libyasm/preproc.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "997b4f07c87bff70644330e13b328dac")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_preproc_base", file: !110, line: 37, size: 64, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !111, file: !110, line: 39, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_preproc_module", file: !110, line: 44, size: 704, elements: !117)
!117 = !{!118, !121, !122, !138, !142, !146, !153, !157, !158, !159, !160}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !110, line: 46, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !116, file: !110, line: 49, baseType: !119, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !116, file: !110, line: 64, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !119, !129, !132, !135}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_preproc", file: !17, line: 40, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_preproc", file: !17, line: 40, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symtab", file: !17, line: 102, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_symtab", file: !17, line: 102, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_linemap", file: !17, line: 192, baseType: !134)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_linemap", file: !17, line: 192, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_errwarns", file: !17, line: 90, baseType: !137)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_errwarns", file: !17, line: 90, flags: DIFlagFwdDecl)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !116, file: !110, line: 72, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !126}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "get_line", scope: !116, file: !110, line: 77, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!107, !126}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "get_included_file", scope: !116, file: !110, line: 82, baseType: !147, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !126, !107, !150}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 70, baseType: !152)
!151 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "add_include_file", scope: !116, file: !110, line: 88, baseType: !154, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !126, !119}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "predefine_macro", scope: !116, file: !110, line: 93, baseType: !154, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "undefine_macro", scope: !116, file: !110, line: 98, baseType: !154, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "define_builtin", scope: !116, file: !110, line: 103, baseType: !154, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "add_standard", scope: !116, file: !110, line: 108, baseType: !161, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !126, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!165 = !{!0, !7, !166, !226, !228, !230, !232, !234, !12, !239}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "yasm_gas_LTX_parser", scope: !14, file: !2, line: 118, type: !168, isLocal: false, isDefinition: true)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_parser_module", file: !169, line: 65, baseType: !170)
!169 = !DIFile(filename: "./libyasm/parser.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "ddeb27ad482e94ac73dff4a912d4de58")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_parser_module", file: !169, line: 34, size: 384, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !185}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !169, line: 36, baseType: !119, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !170, file: !169, line: 39, baseType: !119, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "preproc_keywords", scope: !170, file: !169, line: 45, baseType: !164, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "default_preproc_keyword", scope: !170, file: !169, line: 48, baseType: !119, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "stdmacs", scope: !170, file: !169, line: 51, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_stdmac", file: !17, line: 68, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_stdmac", file: !17, line: 60, size: 192, elements: !181)
!181 = !{!182, !183, !184}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !180, file: !17, line: 61, baseType: !119, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "preproc", scope: !180, file: !17, line: 62, baseType: !119, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "macros", scope: !180, file: !17, line: 67, baseType: !164, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "do_parse", scope: !170, file: !169, line: 62, baseType: !186, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189, !126, !225, !132, !135}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_object", file: !17, line: 96, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_object", file: !192, line: 49, size: 768, elements: !193)
!192 = !DIFile(filename: "./libyasm/section.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "ba239fc7317ff7164be158d14b67c691")
!193 = !{!194, !195, !196, !197, !201, !205, !209, !213, !220, !223, !224}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "src_filename", scope: !191, file: !192, line: 50, baseType: !107, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "obj_filename", scope: !191, file: !192, line: 51, baseType: !107, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !191, file: !192, line: 53, baseType: !129, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !191, file: !192, line: 54, baseType: !198, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_arch", file: !17, line: 38, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_arch", file: !17, line: 38, flags: DIFlagFwdDecl)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "objfmt", scope: !191, file: !192, line: 55, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_objfmt", file: !17, line: 44, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_objfmt", file: !17, line: 44, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dbgfmt", scope: !191, file: !192, line: 56, baseType: !206, size: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_dbgfmt", file: !17, line: 46, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_dbgfmt", file: !17, line: 46, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "cur_section", scope: !191, file: !192, line: 61, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_section", file: !17, line: 99, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_section", file: !17, line: 99, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sections", scope: !191, file: !192, line: 64, baseType: !214, size: 128, offset: 448)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_sectionhead", file: !192, line: 64, size: 128, elements: !215)
!215 = !{!216, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !214, file: !192, line: 64, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !214, file: !192, line: 64, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "directives", scope: !191, file: !192, line: 69, baseType: !221, size: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "HAMT", file: !192, line: 69, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "global_prefix", scope: !191, file: !192, line: 72, baseType: !107, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "global_suffix", scope: !191, file: !192, line: 75, baseType: !107, size: 64, offset: 704)
!225 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !9, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "yasm_gnu_LTX_parser", scope: !14, file: !2, line: 126, type: !168, isLocal: false, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !9, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !9, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 5)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 23)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 320, elements: !237)
!245 = !{i32 7, !"Dwarf Version", i32 5}
!246 = !{i32 2, !"Debug Info Version", i32 3}
!247 = !{i32 1, !"wchar_size", i32 4}
!248 = !{i32 8, !"PIC Level", i32 2}
!249 = !{i32 7, !"PIE Level", i32 2}
!250 = !{i32 7, !"uwtable", i32 2}
!251 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!252 = distinct !DISubprogram(name: "gas_parser_do_parse", scope: !2, file: !2, line: 38, type: !187, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !511}
!254 = !DILocalVariable(name: "object", arg: 1, scope: !252, file: !2, line: 38, type: !189)
!255 = !DILocalVariable(name: "pp", arg: 2, scope: !252, file: !2, line: 38, type: !126)
!256 = !DILocalVariable(name: "save_input", arg: 3, scope: !252, file: !2, line: 39, type: !225)
!257 = !DILocalVariable(name: "linemap", arg: 4, scope: !252, file: !2, line: 39, type: !132)
!258 = !DILocalVariable(name: "errwarns", arg: 5, scope: !252, file: !2, line: 40, type: !135)
!259 = !DILocalVariable(name: "parser_gas", scope: !252, file: !2, line: 42, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_parser_gas", file: !72, line: 129, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_parser_gas", file: !72, line: 74, size: 4032, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !458, !459, !460, !464, !465, !466, !467, !468, !480, !481, !482, !496, !497, !498, !499, !500, !504, !508, !509, !510}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !261, file: !72, line: 75, baseType: !189, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "locallabel_base", scope: !261, file: !72, line: 78, baseType: !107, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "locallabel_base_len", scope: !261, file: !72, line: 79, baseType: !150, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "dir_fileline", scope: !261, file: !72, line: 82, baseType: !225, size: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "dir_file", scope: !261, file: !72, line: 83, baseType: !107, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dir_line", scope: !261, file: !72, line: 84, baseType: !152, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "seen_line_marker", scope: !261, file: !72, line: 87, baseType: !225, size: 32, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "preproc", scope: !261, file: !72, line: 89, baseType: !126, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "errwarns", scope: !261, file: !72, line: 90, baseType: !135, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "linemap", scope: !261, file: !72, line: 92, baseType: !132, size: 64, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bc", scope: !261, file: !72, line: 94, baseType: !274, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bytecode", file: !17, line: 93, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_bytecode", file: !65, line: 183, size: 704, elements: !277)
!277 = !{!278, !283, !448, !449, !450, !451, !452, !453, !454, !455, !457}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !276, file: !65, line: 187, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !65, line: 187, size: 64, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !279, file: !65, line: 187, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !276, file: !65, line: 192, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bytecode_callback", file: !65, line: 180, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_bytecode_callback", file: !65, line: 63, size: 512, elements: !288)
!288 = !{!289, !293, !355, !359, !363, !426, !431, !447}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !287, file: !65, line: 68, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !106}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !287, file: !65, line: 76, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297, !299, !225}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !301, line: 7, baseType: !302)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !303, line: 49, size: 1728, elements: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !320, !322, !323, !324, !328, !330, !332, !336, !339, !341, !344, !347, !348, !349, !350, !351}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !302, file: !303, line: 51, baseType: !225, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !302, file: !303, line: 54, baseType: !107, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !302, file: !303, line: 55, baseType: !107, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !302, file: !303, line: 56, baseType: !107, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !302, file: !303, line: 57, baseType: !107, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !302, file: !303, line: 58, baseType: !107, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !302, file: !303, line: 59, baseType: !107, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !302, file: !303, line: 60, baseType: !107, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !302, file: !303, line: 61, baseType: !107, size: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !302, file: !303, line: 64, baseType: !107, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !302, file: !303, line: 65, baseType: !107, size: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !302, file: !303, line: 66, baseType: !107, size: 64, offset: 704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !302, file: !303, line: 68, baseType: !318, size: 64, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !303, line: 36, flags: DIFlagFwdDecl)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !302, file: !303, line: 70, baseType: !321, size: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !302, file: !303, line: 72, baseType: !225, size: 32, offset: 896)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !302, file: !303, line: 73, baseType: !225, size: 32, offset: 928)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !302, file: !303, line: 74, baseType: !325, size: 64, offset: 960)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !326, line: 152, baseType: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!327 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !302, file: !303, line: 77, baseType: !329, size: 16, offset: 1024)
!329 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !302, file: !303, line: 78, baseType: !331, size: 8, offset: 1040)
!331 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !302, file: !303, line: 79, baseType: !333, size: 8, offset: 1048)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 1)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !302, file: !303, line: 81, baseType: !337, size: 64, offset: 1088)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !303, line: 43, baseType: null)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !302, file: !303, line: 89, baseType: !340, size: 64, offset: 1152)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !326, line: 153, baseType: !327)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !302, file: !303, line: 91, baseType: !342, size: 64, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !303, line: 37, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !302, file: !303, line: 92, baseType: !345, size: 64, offset: 1280)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !303, line: 38, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !302, file: !303, line: 93, baseType: !321, size: 64, offset: 1344)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !302, file: !303, line: 94, baseType: !106, size: 64, offset: 1408)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !302, file: !303, line: 95, baseType: !150, size: 64, offset: 1472)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !302, file: !303, line: 96, baseType: !225, size: 32, offset: 1536)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !302, file: !303, line: 98, baseType: !352, size: 160, offset: 1568)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 20)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !287, file: !65, line: 83, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !274, !274}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !287, file: !65, line: 91, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!225, !274}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "calc_len", scope: !287, file: !65, line: 108, baseType: !364, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!225, !274, !367, !106}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_bc_add_span_func", file: !65, line: 55, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !106, !274, !225, !371, !327, !327}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_value", file: !17, line: 184, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_value", file: !17, line: 121, size: 256, elements: !375)
!375 = !{!376, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !374, file: !17, line: 126, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr", file: !17, line: 108, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_expr", file: !54, line: 70, size: 448, elements: !380)
!380 = !{!381, !383, !384, !385}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !379, file: !54, line: 71, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr_op", file: !17, line: 253, baseType: !16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !379, file: !54, line: 72, baseType: !152, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "numterms", scope: !379, file: !54, line: 73, baseType: !225, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "terms", scope: !379, file: !54, line: 79, baseType: !386, size: 256, offset: 192)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !413)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr__item", file: !54, line: 67, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_expr__item", file: !54, line: 54, size: 128, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !388, file: !54, line: 55, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_expr__type", file: !54, line: 51, baseType: !53)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !388, file: !54, line: 66, baseType: !393, size: 64, offset: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !54, line: 58, size: 64, elements: !394)
!394 = !{!395, !396, !400, !401, !405, !409, !412}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "precbc", scope: !393, file: !54, line: 59, baseType: !274, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym", scope: !393, file: !54, line: 60, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_symrec", file: !17, line: 105, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_symrec", file: !17, line: 105, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "expn", scope: !393, file: !54, line: 61, baseType: !377, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "intn", scope: !393, file: !54, line: 62, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_intnum", file: !17, line: 110, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_intnum", file: !17, line: 110, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flt", scope: !393, file: !54, line: 63, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_floatnum", file: !17, line: 114, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_floatnum", file: !17, line: 114, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !393, file: !54, line: 64, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !411, line: 90, baseType: !152)
!411 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "subst", scope: !393, file: !54, line: 65, baseType: !18, size: 32)
!413 = !{!414}
!414 = !DISubrange(count: 2)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rel", scope: !374, file: !17, line: 131, baseType: !397, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wrt", scope: !374, file: !17, line: 134, baseType: !397, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "seg_of", scope: !374, file: !17, line: 139, baseType: !18, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rshift", scope: !374, file: !17, line: 145, baseType: !18, size: 7, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "curpos_rel", scope: !374, file: !17, line: 152, baseType: !18, size: 1, offset: 200, flags: DIFlagBitField, extraData: i64 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rel", scope: !374, file: !17, line: 158, baseType: !18, size: 1, offset: 201, flags: DIFlagBitField, extraData: i64 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "jump_target", scope: !374, file: !17, line: 164, baseType: !18, size: 1, offset: 202, flags: DIFlagBitField, extraData: i64 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "section_rel", scope: !374, file: !17, line: 172, baseType: !18, size: 1, offset: 203, flags: DIFlagBitField, extraData: i64 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "no_warn", scope: !374, file: !17, line: 175, baseType: !18, size: 1, offset: 204, flags: DIFlagBitField, extraData: i64 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !374, file: !17, line: 180, baseType: !18, size: 1, offset: 205, flags: DIFlagBitField, extraData: i64 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !374, file: !17, line: 183, baseType: !18, size: 8, offset: 206, flags: DIFlagBitField, extraData: i64 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !287, file: !65, line: 132, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!225, !274, !225, !327, !327, !430, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tobytes", scope: !287, file: !65, line: 159, baseType: !432, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!225, !274, !435, !436, !106, !438, !443}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_output_value_func", file: !17, line: 273, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!225, !442, !436, !18, !152, !274, !225, !106}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_output_reloc_func", file: !17, line: 294, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!225, !397, !274, !436, !18, !18, !225, !106}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "special", scope: !287, file: !65, line: 179, baseType: !64, size: 32, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !276, file: !65, line: 197, baseType: !210, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !276, file: !65, line: 202, baseType: !377, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !276, file: !65, line: 205, baseType: !152, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mult_int", scope: !276, file: !65, line: 208, baseType: !327, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !276, file: !65, line: 211, baseType: !152, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !276, file: !65, line: 216, baseType: !152, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bc_index", scope: !276, file: !65, line: 219, baseType: !152, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "symrecs", scope: !276, file: !65, line: 224, baseType: !456, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !276, file: !65, line: 227, baseType: !106, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "temp_bc", scope: !261, file: !72, line: 95, baseType: !274, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "save_input", scope: !261, file: !72, line: 97, baseType: !225, size: 32, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "save_line", scope: !261, file: !72, line: 98, baseType: !461, size: 1280, offset: 800)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 1280, elements: !462)
!462 = !{!414, !463}
!463 = !DISubrange(count: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "save_last", scope: !261, file: !72, line: 99, baseType: !225, size: 32, offset: 2080)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !261, file: !72, line: 102, baseType: !107, size: 64, offset: 2112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "linepos", scope: !261, file: !72, line: 102, baseType: !107, size: 64, offset: 2176)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lineleft", scope: !261, file: !72, line: 103, baseType: !150, size: 64, offset: 2240)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !261, file: !72, line: 105, baseType: !469, size: 448, offset: 2304)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_scanner", file: !470, line: 46, baseType: !471)
!470 = !DIFile(filename: "./libyasm/file.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "53153c86a957e5d13378a565ca3fb6c4")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yasm_scanner", file: !470, line: 38, size: 448, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "bot", scope: !471, file: !470, line: 39, baseType: !436, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "tok", scope: !471, file: !470, line: 40, baseType: !436, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !471, file: !470, line: 41, baseType: !436, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !471, file: !470, line: 42, baseType: !436, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lim", scope: !471, file: !470, line: 43, baseType: !436, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !471, file: !470, line: 44, baseType: !436, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !471, file: !470, line: 45, baseType: !436, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !261, file: !72, line: 106, baseType: !71, size: 32, offset: 2752)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !261, file: !72, line: 108, baseType: !225, size: 32, offset: 2784)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tokval", scope: !261, file: !72, line: 109, baseType: !483, size: 128, offset: 2816)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "yystype", file: !72, line: 64, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !72, line: 54, size: 128, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "int_info", scope: !484, file: !72, line: 55, baseType: !18, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "intn", scope: !484, file: !72, line: 56, baseType: !402, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flt", scope: !484, file: !72, line: 57, baseType: !406, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "bc", scope: !484, file: !72, line: 58, baseType: !274, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !484, file: !72, line: 59, baseType: !410, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !484, file: !72, line: 63, baseType: !492, size: 128)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !72, line: 60, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !492, file: !72, line: 61, baseType: !107, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !492, file: !72, line: 62, baseType: !150, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tokch", scope: !261, file: !72, line: 110, baseType: !4, size: 8, offset: 2944)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "peek_token", scope: !261, file: !72, line: 113, baseType: !225, size: 32, offset: 2976)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "peek_tokval", scope: !261, file: !72, line: 114, baseType: !483, size: 128, offset: 3008)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "peek_tokch", scope: !261, file: !72, line: 115, baseType: !4, size: 8, offset: 3136)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !261, file: !72, line: 120, baseType: !501, size: 640, offset: 3200)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 640, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 10)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dirs", scope: !261, file: !72, line: 123, baseType: !505, size: 64, offset: 3840)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAMT", file: !507, line: 38, baseType: !222)
!507 = !DIFile(filename: "./libyasm/hamt.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "ee0aefbcc035f779a3961203e3690615")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "intel_syntax", scope: !261, file: !72, line: 125, baseType: !225, size: 32, offset: 3904)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "is_nasm_preproc", scope: !261, file: !72, line: 127, baseType: !225, size: 32, offset: 3936)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "is_cpp_preproc", scope: !261, file: !72, line: 128, baseType: !225, size: 32, offset: 3968)
!511 = !DILocalVariable(name: "i", scope: !252, file: !2, line: 43, type: !225)
!512 = !{!513, !513, i64 0}
!513 = !{!"any pointer", !514, i64 0}
!514 = !{!"omnipotent char", !515, i64 0}
!515 = !{!"Simple C/C++ TBAA"}
!516 = !DILocation(line: 38, column: 34, scope: !252)
!517 = !DILocation(line: 38, column: 56, scope: !252)
!518 = !{!519, !519, i64 0}
!519 = !{!"int", !514, i64 0}
!520 = !DILocation(line: 39, column: 25, scope: !252)
!521 = !DILocation(line: 39, column: 51, scope: !252)
!522 = !DILocation(line: 40, column: 36, scope: !252)
!523 = !DILocation(line: 42, column: 5, scope: !252)
!524 = !DILocation(line: 42, column: 21, scope: !252)
!525 = !DILocation(line: 43, column: 5, scope: !252)
!526 = !DILocation(line: 43, column: 9, scope: !252)
!527 = !DILocation(line: 45, column: 25, scope: !252)
!528 = !DILocation(line: 45, column: 16, scope: !252)
!529 = !DILocation(line: 45, column: 23, scope: !252)
!530 = !{!531, !513, i64 0}
!531 = !{!"yasm_parser_gas", !513, i64 0, !513, i64 8, !532, i64 16, !519, i64 24, !513, i64 32, !532, i64 40, !519, i64 48, !513, i64 56, !513, i64 64, !513, i64 72, !513, i64 80, !513, i64 88, !519, i64 96, !514, i64 100, !519, i64 260, !513, i64 264, !513, i64 272, !532, i64 280, !533, i64 288, !514, i64 344, !519, i64 348, !514, i64 352, !514, i64 368, !519, i64 372, !514, i64 376, !514, i64 392, !514, i64 400, !513, i64 480, !519, i64 488, !519, i64 492, !519, i64 496}
!532 = !{!"long", !514, i64 0}
!533 = !{!"yasm_scanner", !513, i64 0, !513, i64 8, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48}
!534 = !DILocation(line: 46, column: 26, scope: !252)
!535 = !DILocation(line: 46, column: 16, scope: !252)
!536 = !DILocation(line: 46, column: 24, scope: !252)
!537 = !{!531, !513, i64 72}
!538 = !DILocation(line: 48, column: 16, scope: !252)
!539 = !DILocation(line: 48, column: 32, scope: !252)
!540 = !{!531, !513, i64 8}
!541 = !DILocation(line: 49, column: 16, scope: !252)
!542 = !DILocation(line: 49, column: 36, scope: !252)
!543 = !{!531, !532, i64 16}
!544 = !DILocation(line: 51, column: 16, scope: !252)
!545 = !DILocation(line: 51, column: 29, scope: !252)
!546 = !{!531, !519, i64 24}
!547 = !DILocation(line: 52, column: 16, scope: !252)
!548 = !DILocation(line: 52, column: 25, scope: !252)
!549 = !{!531, !513, i64 32}
!550 = !DILocation(line: 53, column: 16, scope: !252)
!551 = !DILocation(line: 53, column: 25, scope: !252)
!552 = !{!531, !532, i64 40}
!553 = !DILocation(line: 54, column: 16, scope: !252)
!554 = !DILocation(line: 54, column: 33, scope: !252)
!555 = !{!531, !519, i64 48}
!556 = !DILocation(line: 56, column: 26, scope: !252)
!557 = !DILocation(line: 56, column: 16, scope: !252)
!558 = !DILocation(line: 56, column: 24, scope: !252)
!559 = !{!531, !513, i64 56}
!560 = !DILocation(line: 57, column: 27, scope: !252)
!561 = !DILocation(line: 57, column: 16, scope: !252)
!562 = !DILocation(line: 57, column: 25, scope: !252)
!563 = !{!531, !513, i64 64}
!564 = !DILocation(line: 59, column: 49, scope: !252)
!565 = !DILocation(line: 59, column: 57, scope: !252)
!566 = !{!567, !513, i64 48}
!567 = !{!"yasm_object", !513, i64 0, !513, i64 8, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !568, i64 56, !513, i64 72, !513, i64 80, !513, i64 88}
!568 = !{!"yasm_sectionhead", !513, i64 0, !513, i64 8}
!569 = !DILocation(line: 59, column: 26, scope: !252)
!570 = !DILocation(line: 59, column: 16, scope: !252)
!571 = !DILocation(line: 59, column: 24, scope: !252)
!572 = !{!531, !513, i64 80}
!573 = !DILocation(line: 61, column: 29, scope: !252)
!574 = !DILocation(line: 61, column: 16, scope: !252)
!575 = !DILocation(line: 61, column: 27, scope: !252)
!576 = !{!531, !519, i64 96}
!577 = !DILocation(line: 62, column: 16, scope: !252)
!578 = !DILocation(line: 62, column: 26, scope: !252)
!579 = !{!531, !519, i64 260}
!580 = !DILocation(line: 64, column: 16, scope: !252)
!581 = !DILocation(line: 64, column: 27, scope: !252)
!582 = !{!531, !519, i64 372}
!583 = !DILocation(line: 66, column: 16, scope: !252)
!584 = !DILocation(line: 66, column: 21, scope: !252)
!585 = !{!531, !513, i64 264}
!586 = !DILocation(line: 69, column: 41, scope: !252)
!587 = !DILocation(line: 69, column: 5, scope: !252)
!588 = !DILocation(line: 71, column: 16, scope: !252)
!589 = !DILocation(line: 71, column: 22, scope: !252)
!590 = !{!531, !514, i64 344}
!591 = !DILocation(line: 73, column: 11, scope: !592)
!592 = distinct !DILexicalBlock(scope: !252, file: !2, line: 73, column: 5)
!593 = !DILocation(line: 73, column: 10, scope: !592)
!594 = !DILocation(line: 73, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !592, file: !2, line: 73, column: 5)
!596 = !DILocation(line: 73, column: 16, scope: !595)
!597 = !DILocation(line: 73, column: 5, scope: !592)
!598 = !DILocation(line: 74, column: 20, scope: !595)
!599 = !DILocation(line: 74, column: 26, scope: !595)
!600 = !DILocation(line: 74, column: 9, scope: !595)
!601 = !DILocation(line: 74, column: 29, scope: !595)
!602 = !{!532, !532, i64 0}
!603 = !DILocation(line: 73, column: 22, scope: !595)
!604 = !DILocation(line: 73, column: 5, scope: !595)
!605 = distinct !{!605, !597, !606, !607}
!606 = !DILocation(line: 74, column: 31, scope: !592)
!607 = !{!"llvm.loop.mustprogress"}
!608 = !DILocation(line: 76, column: 16, scope: !252)
!609 = !DILocation(line: 76, column: 29, scope: !252)
!610 = !{!531, !519, i64 488}
!611 = !DILocation(line: 79, column: 9, scope: !252)
!612 = !{!613, !513, i64 0}
!613 = !{!"yasm_preproc_base", !513, i64 0}
!614 = !{!615, !513, i64 8}
!615 = !{!"yasm_preproc_module", !513, i64 0, !513, i64 8, !513, i64 16, !513, i64 24, !513, i64 32, !513, i64 40, !513, i64 48, !513, i64 56, !513, i64 64, !513, i64 72, !513, i64 80}
!616 = !DILocation(line: 79, column: 76, scope: !252)
!617 = !DILocation(line: 78, column: 16, scope: !252)
!618 = !DILocation(line: 78, column: 31, scope: !252)
!619 = !{!531, !519, i64 496}
!620 = !DILocation(line: 81, column: 9, scope: !252)
!621 = !DILocation(line: 81, column: 77, scope: !252)
!622 = !DILocation(line: 80, column: 16, scope: !252)
!623 = !DILocation(line: 80, column: 32, scope: !252)
!624 = !{!531, !519, i64 492}
!625 = !DILocation(line: 83, column: 5, scope: !252)
!626 = !DILocation(line: 86, column: 20, scope: !627)
!627 = distinct !DILexicalBlock(scope: !252, file: !2, line: 86, column: 9)
!628 = !DILocation(line: 86, column: 26, scope: !627)
!629 = !DILocation(line: 86, column: 9, scope: !252)
!630 = !DILocation(line: 87, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !2, line: 86, column: 38)
!632 = !DILocation(line: 91, column: 32, scope: !631)
!633 = !DILocation(line: 92, column: 68, scope: !631)
!634 = !DILocation(line: 92, column: 32, scope: !631)
!635 = !DILocation(line: 92, column: 76, scope: !631)
!636 = !DILocation(line: 91, column: 9, scope: !631)
!637 = !DILocation(line: 93, column: 5, scope: !631)
!638 = !DILocation(line: 95, column: 37, scope: !252)
!639 = !DILocation(line: 95, column: 5, scope: !252)
!640 = !DILocation(line: 98, column: 20, scope: !641)
!641 = distinct !DILexicalBlock(scope: !252, file: !2, line: 98, column: 9)
!642 = !DILocation(line: 98, column: 9, scope: !641)
!643 = !DILocation(line: 98, column: 9, scope: !252)
!644 = !DILocation(line: 99, column: 9, scope: !641)
!645 = !DILocation(line: 99, column: 31, scope: !641)
!646 = !DILocation(line: 101, column: 20, scope: !647)
!647 = distinct !DILexicalBlock(scope: !252, file: !2, line: 101, column: 9)
!648 = !DILocation(line: 101, column: 9, scope: !647)
!649 = !DILocation(line: 101, column: 9, scope: !252)
!650 = !DILocation(line: 102, column: 9, scope: !647)
!651 = !DILocation(line: 102, column: 31, scope: !647)
!652 = !DILocation(line: 105, column: 33, scope: !252)
!653 = !DILocation(line: 105, column: 41, scope: !252)
!654 = !{!567, !513, i64 16}
!655 = !DILocation(line: 105, column: 52, scope: !252)
!656 = !DILocation(line: 105, column: 5, scope: !252)
!657 = !DILocation(line: 106, column: 1, scope: !252)
!658 = !DISubprogram(name: "yasm_section_bcs_first", scope: !192, file: !192, line: 311, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{!274, !210}
!661 = !DISubprogram(name: "yasm_scanner_initialize", scope: !470, file: !470, line: 52, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!665 = !DISubprogram(name: "strcasecmp", scope: !666, file: !666, line: 116, type: !667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!667 = !DISubroutineType(types: !668)
!668 = !{!225, !119, !119}
!669 = !DISubprogram(name: "gas_parser_parse", scope: !72, file: !72, line: 159, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!673 = !DISubprogram(name: "yasm_warn_set", scope: !95, file: !95, line: 233, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !676, !119, null}
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "yasm_warn_class", file: !95, line: 47, baseType: !94)
!677 = !DISubprogram(name: "yasm_errwarn_propagate", scope: !95, file: !95, line: 289, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !135, !152}
!680 = !DISubprogram(name: "yasm_linemap_get_current", scope: !681, file: !681, line: 54, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!681 = !DIFile(filename: "./libyasm/linemap.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "581487d92d5c987fb0442b799c055e60")
!682 = !DISubroutineType(types: !683)
!683 = !{!152, !132}
!684 = !DISubprogram(name: "yasm_scanner_delete", scope: !470, file: !470, line: 58, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubprogram(name: "yasm_symtab_parser_finalize", scope: !686, file: !686, line: 242, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DIFile(filename: "./libyasm/symrec.h", directory: "/local-ssd/yasm-var6ybwismbdorzdng2zz5wpojwdcx5r-build/aidengro/spack-stage-yasm-1.3.0-var6ybwismbdorzdng2zz5wpojwdcx5r/spack-src", checksumkind: CSK_MD5, checksum: "dfb116438a620dd87f0db3310d44d920")
!687 = !DISubroutineType(types: !688)
!688 = !{null, !129, !225, !135}
