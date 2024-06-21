; ModuleID = 'samples/260.bc'
source_filename = "cmd_windowunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.context = type { ptr, ptr, i32, ptr, i32, ptr, i32, [1 x i64], i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%1\00", align 1, !dbg !0
@cmd_windowunmap.longopts = internal global [3 x %struct.option] [%struct.option { ptr @.str.1, i32 0, ptr null, i32 1 }, %struct.option { ptr @.str.2, i32 0, ptr null, i32 2 }, %struct.option zeroinitializer], align 16, !dbg !8
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !89
@.str.2 = private unnamed_addr constant [5 x i8] c"sync\00", align 1, !dbg !94
@cmd_windowunmap.usage = internal global ptr @.str.3, align 8, !dbg !101
@.str.3 = private unnamed_addr constant [166 x i8] c"Usage: %s [--sync] [window=%1]\0A--sync    - only exit once the window has been unmapped (is hidden)\0AIf no window is given, %1 is used. See WINDOW STACK in xdotool(1)\0A\00", align 1, !dbg !96
@.str.4 = private unnamed_addr constant [3 x i8] c"+h\00", align 1, !dbg !103
@stderr = external global ptr, align 8
@optind = external global i32, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"xdo_unmap_window reported an error\0A\00", align 1, !dbg !105

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_windowunmap(ptr noundef %context) #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cmd = alloca ptr, align 8
  %window_arg = alloca ptr, align 8
  %opsync = alloca i32, align 4
  %c = alloca i32, align 4
  %option_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %windows = alloca ptr, align 8
  %nwindows = alloca i32, align 4
  %w_index = alloca i32, align 4
  %window = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !142
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !111, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !147
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !112, metadata !DIExpression()), !dbg !148
  store i32 0, ptr %ret, align 4, !dbg !148, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #5, !dbg !151
  tail call void @llvm.dbg.declare(metadata ptr %cmd, metadata !113, metadata !DIExpression()), !dbg !152
  %0 = load ptr, ptr %context.addr, align 8, !dbg !153, !tbaa !142
  %argv = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 3, !dbg !154
  %1 = load ptr, ptr %argv, align 8, !dbg !154, !tbaa !155
  %2 = load ptr, ptr %1, align 8, !dbg !157, !tbaa !142
  store ptr %2, ptr %cmd, align 8, !dbg !152, !tbaa !142
  call void @llvm.lifetime.start.p0(i64 8, ptr %window_arg) #5, !dbg !158
  tail call void @llvm.dbg.declare(metadata ptr %window_arg, metadata !114, metadata !DIExpression()), !dbg !159
  store ptr @.str, ptr %window_arg, align 8, !dbg !159, !tbaa !142
  call void @llvm.lifetime.start.p0(i64 4, ptr %opsync) #5, !dbg !160
  tail call void @llvm.dbg.declare(metadata ptr %opsync, metadata !115, metadata !DIExpression()), !dbg !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5, !dbg !162
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !116, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 4, ptr %option_index) #5, !dbg !164
  tail call void @llvm.dbg.declare(metadata ptr %option_index, metadata !117, metadata !DIExpression()), !dbg !165
  br label %while.cond, !dbg !166

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load ptr, ptr %context.addr, align 8, !dbg !167, !tbaa !142
  %argc = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 2, !dbg !168
  %4 = load i32, ptr %argc, align 8, !dbg !168, !tbaa !169
  %5 = load ptr, ptr %context.addr, align 8, !dbg !170, !tbaa !142
  %argv1 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 3, !dbg !171
  %6 = load ptr, ptr %argv1, align 8, !dbg !171, !tbaa !155
  %call = call i32 @getopt_long_only(i32 noundef %4, ptr noundef %6, ptr noundef @.str.4, ptr noundef @cmd_windowunmap.longopts, ptr noundef %option_index) #5, !dbg !172
  store i32 %call, ptr %c, align 4, !dbg !173, !tbaa !149
  %cmp = icmp ne i32 %call, -1, !dbg !174
  br i1 %cmp, label %while.body, label %while.end, !dbg !166

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %c, align 4, !dbg !175, !tbaa !149
  switch i32 %7, label %sw.default [
    i32 104, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ], !dbg !177

sw.bb:                                            ; preds = %while.body, %while.body
  %8 = load ptr, ptr @cmd_windowunmap.usage, align 8, !dbg !178, !tbaa !142
  %9 = load ptr, ptr %cmd, align 8, !dbg !180, !tbaa !142
  %call2 = call i32 (ptr, ...) @printf(ptr noundef %8, ptr noundef %9), !dbg !181
  %10 = load ptr, ptr %context.addr, align 8, !dbg !182, !tbaa !142
  %11 = load ptr, ptr %context.addr, align 8, !dbg !183, !tbaa !142
  %argc3 = getelementptr inbounds %struct.context, ptr %11, i32 0, i32 2, !dbg !184
  %12 = load i32, ptr %argc3, align 8, !dbg !184, !tbaa !169
  call void @consume_args(ptr noundef %10, i32 noundef %12), !dbg !185
  store i32 0, ptr %retval, align 4, !dbg !186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !186

sw.bb4:                                           ; preds = %while.body
  store i32 1, ptr %opsync, align 4, !dbg !187, !tbaa !149
  br label %sw.epilog, !dbg !188

sw.default:                                       ; preds = %while.body
  %13 = load ptr, ptr @stderr, align 8, !dbg !189, !tbaa !142
  %14 = load ptr, ptr @cmd_windowunmap.usage, align 8, !dbg !190, !tbaa !142
  %15 = load ptr, ptr %cmd, align 8, !dbg !191, !tbaa !142
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !192
  store i32 1, ptr %retval, align 4, !dbg !193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !193

sw.epilog:                                        ; preds = %sw.bb4
  br label %while.cond, !dbg !166, !llvm.loop !194

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %context.addr, align 8, !dbg !196, !tbaa !142
  %17 = load i32, ptr @optind, align 4, !dbg !197, !tbaa !149
  call void @consume_args(ptr noundef %16, i32 noundef %17), !dbg !198
  %18 = load ptr, ptr %context.addr, align 8, !dbg !199, !tbaa !142
  %call6 = call i32 @window_get_arg(ptr noundef %18, i32 noundef 0, i32 noundef 0, ptr noundef %window_arg), !dbg !201
  %tobool = icmp ne i32 %call6, 0, !dbg !201
  br i1 %tobool, label %if.end, label %if.then, !dbg !202

if.then:                                          ; preds = %while.end
  %19 = load ptr, ptr @stderr, align 8, !dbg !203, !tbaa !142
  %20 = load ptr, ptr @cmd_windowunmap.usage, align 8, !dbg !205, !tbaa !142
  %21 = load ptr, ptr %cmd, align 8, !dbg !206, !tbaa !142
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef %20, ptr noundef %21), !dbg !207
  store i32 1, ptr %retval, align 4, !dbg !208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !208

if.end:                                           ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %windows) #5, !dbg !209
  tail call void @llvm.dbg.declare(metadata ptr %windows, metadata !118, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwindows) #5, !dbg !209
  tail call void @llvm.dbg.declare(metadata ptr %nwindows, metadata !120, metadata !DIExpression()), !dbg !209
  %22 = load ptr, ptr %context.addr, align 8, !dbg !209, !tbaa !142
  %23 = load ptr, ptr %window_arg, align 8, !dbg !209, !tbaa !142
  call void @window_list(ptr noundef %22, ptr noundef %23, ptr noundef %windows, ptr noundef %nwindows, i32 noundef 0), !dbg !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_index) #5, !dbg !209
  tail call void @llvm.dbg.declare(metadata ptr %w_index, metadata !121, metadata !DIExpression()), !dbg !209
  store i32 0, ptr %w_index, align 4, !dbg !210, !tbaa !149
  br label %for.cond, !dbg !210

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %w_index, align 4, !dbg !211, !tbaa !149
  %25 = load i32, ptr %nwindows, align 4, !dbg !211, !tbaa !149
  %cmp8 = icmp slt i32 %24, %25, !dbg !211
  br i1 %cmp8, label %for.body, label %for.end, !dbg !210

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %window) #5, !dbg !212
  tail call void @llvm.dbg.declare(metadata ptr %window, metadata !122, metadata !DIExpression()), !dbg !212
  %26 = load ptr, ptr %windows, align 8, !dbg !212, !tbaa !142
  %27 = load i32, ptr %w_index, align 4, !dbg !212, !tbaa !149
  %idxprom = sext i32 %27 to i64, !dbg !212
  %arrayidx = getelementptr inbounds i64, ptr %26, i64 %idxprom, !dbg !212
  %28 = load i64, ptr %arrayidx, align 8, !dbg !212, !tbaa !213
  store i64 %28, ptr %window, align 8, !dbg !212, !tbaa !213
  %29 = load ptr, ptr %context.addr, align 8, !dbg !215, !tbaa !142
  %xdo = getelementptr inbounds %struct.context, ptr %29, i32 0, i32 0, !dbg !215
  %30 = load ptr, ptr %xdo, align 8, !dbg !215, !tbaa !218
  %31 = load i64, ptr %window, align 8, !dbg !215, !tbaa !213
  %call9 = call i32 @xdo_unmap_window(ptr noundef %30, i64 noundef %31), !dbg !215
  store i32 %call9, ptr %ret, align 4, !dbg !215, !tbaa !149
  %32 = load i32, ptr %ret, align 4, !dbg !219, !tbaa !149
  %tobool10 = icmp ne i32 %32, 0, !dbg !219
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !215

if.then11:                                        ; preds = %for.body
  %33 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !142
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.5), !dbg !221
  br label %if.end13, !dbg !221

if.end13:                                         ; preds = %if.then11, %for.body
  %34 = load i32, ptr %opsync, align 4, !dbg !223, !tbaa !149
  %tobool14 = icmp ne i32 %34, 0, !dbg !223
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !215

if.then15:                                        ; preds = %if.end13
  %35 = load ptr, ptr %context.addr, align 8, !dbg !225, !tbaa !142
  %xdo16 = getelementptr inbounds %struct.context, ptr %35, i32 0, i32 0, !dbg !225
  %36 = load ptr, ptr %xdo16, align 8, !dbg !225, !tbaa !218
  %37 = load i64, ptr %window, align 8, !dbg !225, !tbaa !213
  %call17 = call i32 @xdo_wait_for_window_map_state(ptr noundef %36, i64 noundef %37, i32 noundef 0), !dbg !225
  br label %if.end18, !dbg !225

if.end18:                                         ; preds = %if.then15, %if.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %window) #5, !dbg !211
  br label %for.inc, !dbg !212

for.inc:                                          ; preds = %if.end18
  %38 = load i32, ptr %w_index, align 4, !dbg !211, !tbaa !149
  %inc = add nsw i32 %38, 1, !dbg !211
  store i32 %inc, ptr %w_index, align 4, !dbg !211, !tbaa !149
  br label %for.cond, !dbg !211, !llvm.loop !227

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_index) #5, !dbg !228
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwindows) #5, !dbg !228
  call void @llvm.lifetime.end.p0(i64 8, ptr %windows) #5, !dbg !228
  %39 = load i32, ptr %ret, align 4, !dbg !229, !tbaa !149
  store i32 %39, ptr %retval, align 4, !dbg !230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !230

cleanup:                                          ; preds = %for.end, %if.then, %sw.default, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %option_index) #5, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %opsync) #5, !dbg !231
  call void @llvm.lifetime.end.p0(i64 8, ptr %window_arg) #5, !dbg !231
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #5, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !231
  %40 = load i32, ptr %retval, align 4, !dbg !231
  ret i32 %40, !dbg !231
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !232 i32 @getopt_long_only(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !239 i32 @printf(ptr noundef, ...) #3

declare !dbg !244 void @consume_args(ptr noundef, i32 noundef) #3

declare !dbg !248 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare !dbg !307 i32 @window_get_arg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare !dbg !311 void @window_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare !dbg !316 i32 @xdo_unmap_window(ptr noundef, i64 noundef) #3

declare !dbg !321 i32 @xdo_wait_for_window_map_state(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!77}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 6, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cmd_windowunmap.c", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "38b21adada3f079b256f3ca3b4a6fd5a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 3)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "longopts", scope: !10, file: !2, line: 11, type: !126, isLocal: true, isDefinition: true)
!10 = distinct !DISubprogram(name: "cmd_windowunmap", scope: !2, file: !2, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !110)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !16, line: 44, baseType: !17)
!16 = !DIFile(filename: "./xdotool.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "d5ada3c0f15b8c7c9952ef0ea5717c48")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !16, line: 27, size: 640, elements: !18)
!18 = !{!19, !59, !61, !62, !64, !65, !68, !69, !73, !74, !75, !76}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "xdo", scope: !17, file: !16, line: 28, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdo_t", file: !22, line: 113, baseType: !23)
!22 = !DIFile(filename: "./xdo.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "bdc2ad114a4f2eb517642c8d810c56aa")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdo", file: !22, line: 78, size: 448, elements: !24)
!24 = !{!25, !30, !32, !51, !52, !53, !54, !55, !56, !57, !58}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "xdpy", scope: !23, file: !22, line: 81, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Display", file: !28, line: 487, baseType: !29)
!28 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack/linux-ubuntu22.04-zen2/clang-18.0.0/libx11-1.8.4-y6otmlva6lvuajx2jno27kims7r452f4/include/X11/Xlib.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build", checksumkind: CSK_MD5, checksum: "a81ab9a961de1de221eff0bc23ca3090")
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XDisplay", file: !28, line: 255, flags: DIFlagFwdDecl)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "display_name", scope: !23, file: !22, line: 84, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "charcodes", scope: !23, file: !22, line: 87, baseType: !33, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "charcodemap_t", file: !22, line: 69, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "charcodemap", file: !22, line: 60, size: 256, elements: !36)
!36 = !{!37, !40, !44, !48, !49, !50}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !35, file: !22, line: 61, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !39, line: 96, baseType: !13)
!39 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!40 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !35, file: !22, line: 62, baseType: !41, size: 8, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "KeyCode", file: !42, line: 108, baseType: !43)
!42 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/X.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build", checksumkind: CSK_MD5, checksum: "2487f55a62008b5a3fa226f1acb1d84a")
!43 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !35, file: !22, line: 63, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "KeySym", file: !42, line: 106, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "XID", file: !42, line: 66, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !35, file: !22, line: 64, baseType: !13, size: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "modmask", scope: !35, file: !22, line: 65, baseType: !13, size: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !35, file: !22, line: 68, baseType: !13, size: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "charcodes_len", scope: !23, file: !22, line: 90, baseType: !13, size: 32, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "keycode_high", scope: !23, file: !22, line: 93, baseType: !13, size: 32, offset: 224)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "keycode_low", scope: !23, file: !22, line: 96, baseType: !13, size: 32, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "keysyms_per_keycode", scope: !23, file: !22, line: 99, baseType: !13, size: 32, offset: 288)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "close_display_when_freed", scope: !23, file: !22, line: 102, baseType: !13, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !23, file: !22, line: 105, baseType: !13, size: 32, offset: 352)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !23, file: !22, line: 108, baseType: !13, size: 32, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "features_mask", scope: !23, file: !22, line: 111, baseType: !13, size: 32, offset: 416)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !17, file: !16, line: 29, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !17, file: !16, line: 30, baseType: !13, size: 32, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !17, file: !16, line: 31, baseType: !63, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !17, file: !16, line: 32, baseType: !13, size: 32, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !17, file: !16, line: 35, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "Window", file: !42, line: 96, baseType: !46)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nwindows", scope: !17, file: !16, line: 36, baseType: !13, size: 32, offset: 384)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "window_placeholder", scope: !17, file: !16, line: 37, baseType: !70, size: 64, offset: 448)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "last_mouse_x", scope: !17, file: !16, line: 40, baseType: !13, size: 32, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "last_mouse_y", scope: !17, file: !16, line: 41, baseType: !13, size: 32, offset: 544)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "last_mouse_screen", scope: !17, file: !16, line: 42, baseType: !13, size: 32, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "have_last_mouse", scope: !17, file: !16, line: 43, baseType: !13, size: 32, offset: 608)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !86, globals: !88, splitDebugInlining: false, nameTableKind: None)
!78 = !{!79}
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !10, file: !2, line: 10, baseType: !80, size: 32, elements: !81)
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "opt_unused", value: 0)
!83 = !DIEnumerator(name: "opt_help", value: 1)
!84 = !DIEnumerator(name: "opt_sync", value: 2)
!85 = !DIEnumerator(name: "opt_verbose", value: 3)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !{!0, !89, !94, !8, !96, !101, !103, !105}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 5)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !91, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1328, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 166)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "usage", scope: !10, file: !2, line: 16, type: !60, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !3, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 36)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !120, !121, !122}
!111 = !DILocalVariable(name: "context", arg: 1, scope: !10, file: !2, line: 3, type: !14)
!112 = !DILocalVariable(name: "ret", scope: !10, file: !2, line: 4, type: !13)
!113 = !DILocalVariable(name: "cmd", scope: !10, file: !2, line: 5, type: !31)
!114 = !DILocalVariable(name: "window_arg", scope: !10, file: !2, line: 6, type: !60)
!115 = !DILocalVariable(name: "opsync", scope: !10, file: !2, line: 7, type: !13)
!116 = !DILocalVariable(name: "c", scope: !10, file: !2, line: 9, type: !13)
!117 = !DILocalVariable(name: "option_index", scope: !10, file: !2, line: 21, type: !13)
!118 = !DILocalVariable(name: "windows", scope: !119, file: !2, line: 47, type: !66)
!119 = distinct !DILexicalBlock(scope: !10, file: !2, line: 47, column: 3)
!120 = !DILocalVariable(name: "nwindows", scope: !119, file: !2, line: 47, type: !13)
!121 = !DILocalVariable(name: "w_index", scope: !119, file: !2, line: 47, type: !13)
!122 = !DILocalVariable(name: "window", scope: !123, file: !2, line: 47, type: !67)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 47, column: 3)
!124 = distinct !DILexicalBlock(scope: !125, file: !2, line: 47, column: 3)
!125 = distinct !DILexicalBlock(scope: !119, file: !2, line: 47, column: 3)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 768, elements: !6)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !128, line: 50, size: 256, elements: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!129 = !{!130, !131, !132, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !127, file: !128, line: 52, baseType: !60, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !127, file: !128, line: 55, baseType: !13, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !127, file: !128, line: 56, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !127, file: !128, line: 57, baseType: !13, size: 32, offset: 192)
!135 = !{i32 7, !"Dwarf Version", i32 5}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 4}
!138 = !{i32 8, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!142 = !{!143, !143, i64 0}
!143 = !{!"any pointer", !144, i64 0}
!144 = !{!"omnipotent char", !145, i64 0}
!145 = !{!"Simple C/C++ TBAA"}
!146 = !DILocation(line: 3, column: 32, scope: !10)
!147 = !DILocation(line: 4, column: 3, scope: !10)
!148 = !DILocation(line: 4, column: 7, scope: !10)
!149 = !{!150, !150, i64 0}
!150 = !{!"int", !144, i64 0}
!151 = !DILocation(line: 5, column: 3, scope: !10)
!152 = !DILocation(line: 5, column: 9, scope: !10)
!153 = !DILocation(line: 5, column: 16, scope: !10)
!154 = !DILocation(line: 5, column: 25, scope: !10)
!155 = !{!156, !143, i64 24}
!156 = !{!"context", !143, i64 0, !143, i64 8, !150, i64 16, !143, i64 24, !150, i64 32, !143, i64 40, !150, i64 48, !144, i64 56, !150, i64 64, !150, i64 68, !150, i64 72, !150, i64 76}
!157 = !DILocation(line: 5, column: 15, scope: !10)
!158 = !DILocation(line: 6, column: 3, scope: !10)
!159 = !DILocation(line: 6, column: 15, scope: !10)
!160 = !DILocation(line: 7, column: 3, scope: !10)
!161 = !DILocation(line: 7, column: 7, scope: !10)
!162 = !DILocation(line: 9, column: 3, scope: !10)
!163 = !DILocation(line: 9, column: 7, scope: !10)
!164 = !DILocation(line: 21, column: 3, scope: !10)
!165 = !DILocation(line: 21, column: 7, scope: !10)
!166 = !DILocation(line: 22, column: 3, scope: !10)
!167 = !DILocation(line: 22, column: 32, scope: !10)
!168 = !DILocation(line: 22, column: 41, scope: !10)
!169 = !{!156, !150, i64 16}
!170 = !DILocation(line: 22, column: 47, scope: !10)
!171 = !DILocation(line: 22, column: 56, scope: !10)
!172 = !DILocation(line: 22, column: 15, scope: !10)
!173 = !DILocation(line: 22, column: 13, scope: !10)
!174 = !DILocation(line: 23, column: 58, scope: !10)
!175 = !DILocation(line: 24, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !10, file: !2, line: 23, column: 65)
!177 = !DILocation(line: 24, column: 5, scope: !176)
!178 = !DILocation(line: 27, column: 16, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !2, line: 24, column: 16)
!180 = !DILocation(line: 27, column: 23, scope: !179)
!181 = !DILocation(line: 27, column: 9, scope: !179)
!182 = !DILocation(line: 28, column: 22, scope: !179)
!183 = !DILocation(line: 28, column: 31, scope: !179)
!184 = !DILocation(line: 28, column: 40, scope: !179)
!185 = !DILocation(line: 28, column: 9, scope: !179)
!186 = !DILocation(line: 29, column: 9, scope: !179)
!187 = !DILocation(line: 32, column: 16, scope: !179)
!188 = !DILocation(line: 33, column: 9, scope: !179)
!189 = !DILocation(line: 35, column: 17, scope: !179)
!190 = !DILocation(line: 35, column: 25, scope: !179)
!191 = !DILocation(line: 35, column: 32, scope: !179)
!192 = !DILocation(line: 35, column: 9, scope: !179)
!193 = !DILocation(line: 36, column: 9, scope: !179)
!194 = distinct !{!194, !166, !195}
!195 = !DILocation(line: 38, column: 3, scope: !10)
!196 = !DILocation(line: 40, column: 16, scope: !10)
!197 = !DILocation(line: 40, column: 25, scope: !10)
!198 = !DILocation(line: 40, column: 3, scope: !10)
!199 = !DILocation(line: 42, column: 23, scope: !200)
!200 = distinct !DILexicalBlock(scope: !10, file: !2, line: 42, column: 7)
!201 = !DILocation(line: 42, column: 8, scope: !200)
!202 = !DILocation(line: 42, column: 7, scope: !10)
!203 = !DILocation(line: 43, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !2, line: 42, column: 52)
!205 = !DILocation(line: 43, column: 21, scope: !204)
!206 = !DILocation(line: 43, column: 28, scope: !204)
!207 = !DILocation(line: 43, column: 5, scope: !204)
!208 = !DILocation(line: 44, column: 5, scope: !204)
!209 = !DILocation(line: 47, column: 3, scope: !119)
!210 = !DILocation(line: 47, column: 3, scope: !125)
!211 = !DILocation(line: 47, column: 3, scope: !124)
!212 = !DILocation(line: 47, column: 3, scope: !123)
!213 = !{!214, !214, i64 0}
!214 = !{!"long", !144, i64 0}
!215 = !DILocation(line: 47, column: 3, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 47, column: 3)
!217 = distinct !DILexicalBlock(scope: !123, file: !2, line: 47, column: 3)
!218 = !{!156, !143, i64 0}
!219 = !DILocation(line: 47, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !2, line: 47, column: 3)
!221 = !DILocation(line: 47, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !2, line: 47, column: 3)
!223 = !DILocation(line: 47, column: 3, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !2, line: 47, column: 3)
!225 = !DILocation(line: 47, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !2, line: 47, column: 3)
!227 = distinct !{!227, !210, !210}
!228 = !DILocation(line: 47, column: 3, scope: !10)
!229 = !DILocation(line: 58, column: 10, scope: !10)
!230 = !DILocation(line: 58, column: 3, scope: !10)
!231 = !DILocation(line: 59, column: 1, scope: !10)
!232 = !DISubprogram(name: "getopt_long_only", scope: !128, file: !128, line: 70, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{!13, !13, !235, !60, !237, !133}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!239 = !DISubprogram(name: "printf", scope: !240, file: !240, line: 356, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!241 = !DISubroutineType(types: !242)
!242 = !{!13, !243, null}
!243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!244 = !DISubprogram(name: "consume_args", scope: !245, file: !245, line: 27, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DIFile(filename: "./xdo_cmd.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "2fd4130da01687a159d62bb4f2c8f828")
!246 = !DISubroutineType(types: !247)
!247 = !{null, !14, !13}
!248 = !DISubprogram(name: "fprintf", scope: !240, file: !240, line: 350, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!13, !251, !243, null}
!251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !257)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !273, !275, !276, !277, !281, !283, !285, !287, !290, !292, !295, !298, !299, !300, !302, !303}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !255, file: !256, line: 51, baseType: !13, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !255, file: !256, line: 54, baseType: !31, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !255, file: !256, line: 55, baseType: !31, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !255, file: !256, line: 56, baseType: !31, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !255, file: !256, line: 57, baseType: !31, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !255, file: !256, line: 58, baseType: !31, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !255, file: !256, line: 59, baseType: !31, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !255, file: !256, line: 60, baseType: !31, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !255, file: !256, line: 61, baseType: !31, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !255, file: !256, line: 64, baseType: !31, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !255, file: !256, line: 65, baseType: !31, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !255, file: !256, line: 66, baseType: !31, size: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !255, file: !256, line: 68, baseType: !271, size: 64, offset: 768)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !256, line: 36, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !255, file: !256, line: 70, baseType: !274, size: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !255, file: !256, line: 72, baseType: !13, size: 32, offset: 896)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !255, file: !256, line: 73, baseType: !13, size: 32, offset: 928)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !255, file: !256, line: 74, baseType: !278, size: 64, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !279, line: 152, baseType: !280)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!280 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !255, file: !256, line: 77, baseType: !282, size: 16, offset: 1024)
!282 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !255, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!284 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !255, file: !256, line: 79, baseType: !286, size: 8, offset: 1048)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !71)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !255, file: !256, line: 81, baseType: !288, size: 64, offset: 1088)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !256, line: 43, baseType: null)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !255, file: !256, line: 89, baseType: !291, size: 64, offset: 1152)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !279, line: 153, baseType: !280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !255, file: !256, line: 91, baseType: !293, size: 64, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !256, line: 37, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !255, file: !256, line: 92, baseType: !296, size: 64, offset: 1280)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !256, line: 38, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !255, file: !256, line: 93, baseType: !274, size: 64, offset: 1344)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !255, file: !256, line: 94, baseType: !87, size: 64, offset: 1408)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !255, file: !256, line: 95, baseType: !301, size: 64, offset: 1472)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 70, baseType: !47)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !255, file: !256, line: 96, baseType: !13, size: 32, offset: 1536)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !255, file: !256, line: 98, baseType: !304, size: 160, offset: 1568)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 20)
!307 = !DISubprogram(name: "window_get_arg", scope: !245, file: !245, line: 36, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{!13, !14, !13, !13, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!311 = !DISubprogram(name: "window_list", scope: !245, file: !245, line: 28, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !14, !60, !314, !133, !315}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!316 = !DISubprogram(name: "xdo_unmap_window", scope: !22, file: !22, line: 610, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{!13, !319, !67}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!321 = !DISubprogram(name: "xdo_wait_for_window_map_state", scope: !22, file: !22, line: 437, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!13, !319, !67, !13}
