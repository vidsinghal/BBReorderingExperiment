; ModuleID = 'samples/639.bc'
source_filename = "cmd_getwindowpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.context = type { ptr, ptr, i32, ptr, i32, ptr, i32, [1 x i64], i32, i32, i32, i32 }

@cmd_getwindowpid.longopts = internal global [2 x %struct.option] [%struct.option { ptr @.str, i32 0, ptr null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !76
@cmd_getwindowpid.usage = internal global ptr @.str.1, align 8, !dbg !86
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [window=%1]\0AIf no window is given, %1 is used. See WINDOW STACK in xdotool(1)\0A\00", align 1, !dbg !81
@.str.2 = private unnamed_addr constant [3 x i8] c"+h\00", align 1, !dbg !88
@stderr = external global ptr, align 8
@optind = external global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%1\00", align 1, !dbg !93
@.str.4 = private unnamed_addr constant [43 x i8] c"window %ld has no pid associated with it.\0A\00", align 1, !dbg !95
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !100

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_getwindowpid(ptr noundef %context) #0 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %pid = alloca i32, align 4
  %cmd = alloca ptr, align 8
  %c = alloca i32, align 4
  %option_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %window_arg = alloca ptr, align 8
  %windows = alloca ptr, align 8
  %nwindows = alloca i32, align 4
  %w_index = alloca i32, align 4
  %window = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !135
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !103, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 4, ptr %pid) #5, !dbg !140
  tail call void @llvm.dbg.declare(metadata ptr %pid, metadata !104, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmd) #5, !dbg !142
  tail call void @llvm.dbg.declare(metadata ptr %cmd, metadata !105, metadata !DIExpression()), !dbg !143
  %0 = load ptr, ptr %context.addr, align 8, !dbg !144, !tbaa !135
  %argv = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 3, !dbg !145
  %1 = load ptr, ptr %argv, align 8, !dbg !145, !tbaa !146
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0, !dbg !144
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !144, !tbaa !135
  store ptr %2, ptr %cmd, align 8, !dbg !143, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5, !dbg !149
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !106, metadata !DIExpression()), !dbg !150
  call void @llvm.lifetime.start.p0(i64 4, ptr %option_index) #5, !dbg !151
  tail call void @llvm.dbg.declare(metadata ptr %option_index, metadata !107, metadata !DIExpression()), !dbg !152
  br label %while.cond, !dbg !153

while.cond:                                       ; preds = %entry
  %3 = load ptr, ptr %context.addr, align 8, !dbg !154, !tbaa !135
  %argc = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 2, !dbg !155
  %4 = load i32, ptr %argc, align 8, !dbg !155, !tbaa !156
  %5 = load ptr, ptr %context.addr, align 8, !dbg !157, !tbaa !135
  %argv1 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 3, !dbg !158
  %6 = load ptr, ptr %argv1, align 8, !dbg !158, !tbaa !146
  %call = call i32 @getopt_long_only(i32 noundef %4, ptr noundef %6, ptr noundef @.str.2, ptr noundef @cmd_getwindowpid.longopts, ptr noundef %option_index) #5, !dbg !159
  store i32 %call, ptr %c, align 4, !dbg !160, !tbaa !161
  %cmp = icmp ne i32 %call, -1, !dbg !162
  br i1 %cmp, label %while.body, label %while.end, !dbg !153

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %c, align 4, !dbg !163, !tbaa !161
  switch i32 %7, label %sw.default [
    i32 104, label %sw.bb
  ], !dbg !165

sw.bb:                                            ; preds = %while.body
  %8 = load ptr, ptr @cmd_getwindowpid.usage, align 8, !dbg !166, !tbaa !135
  %9 = load ptr, ptr %cmd, align 8, !dbg !168, !tbaa !135
  %call2 = call i32 (ptr, ...) @printf(ptr noundef %8, ptr noundef %9), !dbg !169
  %10 = load ptr, ptr %context.addr, align 8, !dbg !170, !tbaa !135
  %11 = load ptr, ptr %context.addr, align 8, !dbg !171, !tbaa !135
  %argc3 = getelementptr inbounds %struct.context, ptr %11, i32 0, i32 2, !dbg !172
  %12 = load i32, ptr %argc3, align 8, !dbg !172, !tbaa !156
  call void @consume_args(ptr noundef %10, i32 noundef %12), !dbg !173
  store i32 0, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !174

sw.default:                                       ; preds = %while.body
  %13 = load ptr, ptr @stderr, align 8, !dbg !175, !tbaa !135
  %14 = load ptr, ptr @cmd_getwindowpid.usage, align 8, !dbg !176, !tbaa !135
  %15 = load ptr, ptr %cmd, align 8, !dbg !177, !tbaa !135
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !178
  store i32 1, ptr %retval, align 4, !dbg !179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20, !dbg !179

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %context.addr, align 8, !dbg !180, !tbaa !135
  %17 = load i32, ptr @optind, align 4, !dbg !181, !tbaa !161
  call void @consume_args(ptr noundef %16, i32 noundef %17), !dbg !182
  call void @llvm.lifetime.start.p0(i64 8, ptr %window_arg) #5, !dbg !183
  tail call void @llvm.dbg.declare(metadata ptr %window_arg, metadata !108, metadata !DIExpression()), !dbg !184
  store ptr @.str.3, ptr %window_arg, align 8, !dbg !184, !tbaa !135
  %18 = load ptr, ptr %context.addr, align 8, !dbg !185, !tbaa !135
  %call5 = call i32 @window_get_arg(ptr noundef %18, i32 noundef 0, i32 noundef 0, ptr noundef %window_arg), !dbg !187
  %tobool = icmp ne i32 %call5, 0, !dbg !187
  br i1 %tobool, label %if.end, label %if.then, !dbg !188

if.then:                                          ; preds = %while.end
  %19 = load ptr, ptr @stderr, align 8, !dbg !189, !tbaa !135
  %20 = load ptr, ptr @cmd_getwindowpid.usage, align 8, !dbg !191, !tbaa !135
  %21 = load ptr, ptr %cmd, align 8, !dbg !192, !tbaa !135
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef %20, ptr noundef %21), !dbg !193
  store i32 1, ptr %retval, align 4, !dbg !194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !194

if.end:                                           ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %windows) #5, !dbg !195
  tail call void @llvm.dbg.declare(metadata ptr %windows, metadata !109, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwindows) #5, !dbg !195
  tail call void @llvm.dbg.declare(metadata ptr %nwindows, metadata !111, metadata !DIExpression()), !dbg !195
  %22 = load ptr, ptr %context.addr, align 8, !dbg !195, !tbaa !135
  %23 = load ptr, ptr %window_arg, align 8, !dbg !195, !tbaa !135
  call void @window_list(ptr noundef %22, ptr noundef %23, ptr noundef %windows, ptr noundef %nwindows, i32 noundef 0), !dbg !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %w_index) #5, !dbg !195
  tail call void @llvm.dbg.declare(metadata ptr %w_index, metadata !112, metadata !DIExpression()), !dbg !195
  store i32 0, ptr %w_index, align 4, !dbg !196, !tbaa !161
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load i32, ptr %w_index, align 4, !dbg !197, !tbaa !161
  %25 = load i32, ptr %nwindows, align 4, !dbg !197, !tbaa !161
  %cmp7 = icmp slt i32 %24, %25, !dbg !197
  br i1 %cmp7, label %for.body, label %for.end, !dbg !196

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %window) #5, !dbg !198
  tail call void @llvm.dbg.declare(metadata ptr %window, metadata !113, metadata !DIExpression()), !dbg !198
  %26 = load ptr, ptr %windows, align 8, !dbg !198, !tbaa !135
  %27 = load i32, ptr %w_index, align 4, !dbg !198, !tbaa !161
  %idxprom = sext i32 %27 to i64, !dbg !198
  %arrayidx8 = getelementptr inbounds i64, ptr %26, i64 %idxprom, !dbg !198
  %28 = load i64, ptr %arrayidx8, align 8, !dbg !198, !tbaa !199
  store i64 %28, ptr %window, align 8, !dbg !198, !tbaa !199
  %29 = load ptr, ptr %context.addr, align 8, !dbg !201, !tbaa !135
  %xdo = getelementptr inbounds %struct.context, ptr %29, i32 0, i32 0, !dbg !201
  %30 = load ptr, ptr %xdo, align 8, !dbg !201, !tbaa !204
  %31 = load i64, ptr %window, align 8, !dbg !201, !tbaa !199
  %call9 = call i32 @xdo_get_pid_window(ptr noundef %30, i64 noundef %31), !dbg !201
  store i32 %call9, ptr %pid, align 4, !dbg !201, !tbaa !161
  %32 = load i32, ptr %pid, align 4, !dbg !205, !tbaa !161
  %cmp10 = icmp eq i32 %32, 0, !dbg !205
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !201

if.then11:                                        ; preds = %for.body
  %33 = load ptr, ptr @stderr, align 8, !dbg !207, !tbaa !135
  %34 = load i64, ptr %window, align 8, !dbg !207, !tbaa !199
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.4, i64 noundef %34), !dbg !207
  store i32 1, ptr %retval, align 4, !dbg !207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !207

if.else:                                          ; preds = %for.body
  %35 = load ptr, ptr %context.addr, align 8, !dbg !209, !tbaa !135
  %36 = load i32, ptr %pid, align 4, !dbg !209, !tbaa !161
  call void (ptr, ptr, ...) @xdotool_output(ptr noundef %35, ptr noundef @.str.5, i32 noundef %36), !dbg !209
  br label %if.end13

if.end13:                                         ; preds = %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !197
  br label %cleanup, !dbg !197

cleanup:                                          ; preds = %if.end13, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %window) #5, !dbg !197
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %cleanup.cont
  %37 = load i32, ptr %w_index, align 4, !dbg !197, !tbaa !161
  %inc = add nsw i32 %37, 1, !dbg !197
  store i32 %inc, ptr %w_index, align 4, !dbg !197, !tbaa !161
  br label %for.cond, !dbg !197, !llvm.loop !211

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !212
  br label %cleanup14, !dbg !212

cleanup14:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %w_index) #5, !dbg !212
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwindows) #5, !dbg !212
  call void @llvm.lifetime.end.p0(i64 8, ptr %windows) #5, !dbg !212
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %cleanup19 [
    i32 0, label %cleanup.cont18
  ]

cleanup.cont18:                                   ; preds = %cleanup14
  store i32 0, ptr %retval, align 4, !dbg !213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !213

cleanup19:                                        ; preds = %cleanup.cont18, %cleanup14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %window_arg) #5, !dbg !214
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup19, %sw.default, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %option_index) #5, !dbg !214
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5, !dbg !214
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmd) #5, !dbg !214
  call void @llvm.lifetime.end.p0(i64 4, ptr %pid) #5, !dbg !214
  %38 = load i32, ptr %retval, align 4, !dbg !214
  ret i32 %38, !dbg !214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !215 i32 @getopt_long_only(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !222 i32 @printf(ptr noundef, ...) #3

declare !dbg !227 void @consume_args(ptr noundef, i32 noundef) #3

declare !dbg !231 i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare !dbg !290 i32 @window_get_arg(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare !dbg !294 void @window_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare !dbg !299 i32 @xdo_get_pid_window(ptr noundef, i64 noundef) #3

declare !dbg !304 void @xdotool_output(ptr noundef, ptr noundef, ...) #3

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

!llvm.dbg.cu = !{!72}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 8, type: !117, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "cmd_getwindowpid", scope: !3, file: !3, line: 3, type: !4, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !102)
!3 = !DIFile(filename: "cmd_getwindowpid.c", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "e5736a9dfabc89ec91fada6e6238e9e5")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !9, line: 44, baseType: !10)
!9 = !DIFile(filename: "./xdotool.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "d5ada3c0f15b8c7c9952ef0ea5717c48")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !9, line: 27, size: 640, elements: !11)
!11 = !{!12, !53, !56, !57, !59, !60, !63, !64, !68, !69, !70, !71}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "xdo", scope: !10, file: !9, line: 28, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdo_t", file: !15, line: 113, baseType: !16)
!15 = !DIFile(filename: "./xdo.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "bdc2ad114a4f2eb517642c8d810c56aa")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdo", file: !15, line: 78, size: 448, elements: !17)
!17 = !{!18, !23, !26, !45, !46, !47, !48, !49, !50, !51, !52}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "xdpy", scope: !16, file: !15, line: 81, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "Display", file: !21, line: 487, baseType: !22)
!21 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack/linux-ubuntu22.04-zen2/clang-18.0.0/libx11-1.8.4-y6otmlva6lvuajx2jno27kims7r452f4/include/X11/Xlib.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build", checksumkind: CSK_MD5, checksum: "a81ab9a961de1de221eff0bc23ca3090")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_XDisplay", file: !21, line: 255, flags: DIFlagFwdDecl)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "display_name", scope: !16, file: !15, line: 84, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "charcodes", scope: !16, file: !15, line: 87, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "charcodemap_t", file: !15, line: 69, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "charcodemap", file: !15, line: 60, size: 256, elements: !30)
!30 = !{!31, !34, !38, !42, !43, !44}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !29, file: !15, line: 61, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !33, line: 96, baseType: !6)
!33 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!34 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !29, file: !15, line: 62, baseType: !35, size: 8, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "KeyCode", file: !36, line: 108, baseType: !37)
!36 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack/linux-ubuntu22.04-zen2/clang-18.0.0/xproto-7.0.31-jty6j5k6aazxxzyyjqrr6lta4awdkwpn/include/X11/X.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build", checksumkind: CSK_MD5, checksum: "2487f55a62008b5a3fa226f1acb1d84a")
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !29, file: !15, line: 63, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "KeySym", file: !36, line: 106, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "XID", file: !36, line: 66, baseType: !41)
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !29, file: !15, line: 64, baseType: !6, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "modmask", scope: !29, file: !15, line: 65, baseType: !6, size: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !29, file: !15, line: 68, baseType: !6, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "charcodes_len", scope: !16, file: !15, line: 90, baseType: !6, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "keycode_high", scope: !16, file: !15, line: 93, baseType: !6, size: 32, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "keycode_low", scope: !16, file: !15, line: 96, baseType: !6, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "keysyms_per_keycode", scope: !16, file: !15, line: 99, baseType: !6, size: 32, offset: 288)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "close_display_when_freed", scope: !16, file: !15, line: 102, baseType: !6, size: 32, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !16, file: !15, line: 105, baseType: !6, size: 32, offset: 352)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !16, file: !15, line: 108, baseType: !6, size: 32, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "features_mask", scope: !16, file: !15, line: 111, baseType: !6, size: 32, offset: 416)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !10, file: !9, line: 29, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !10, file: !9, line: 30, baseType: !6, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !10, file: !9, line: 31, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !10, file: !9, line: 32, baseType: !6, size: 32, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !10, file: !9, line: 35, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "Window", file: !36, line: 96, baseType: !40)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nwindows", scope: !10, file: !9, line: 36, baseType: !6, size: 32, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "window_placeholder", scope: !10, file: !9, line: 37, baseType: !65, size: 64, offset: 448)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "last_mouse_x", scope: !10, file: !9, line: 40, baseType: !6, size: 32, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "last_mouse_y", scope: !10, file: !9, line: 41, baseType: !6, size: 32, offset: 544)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "last_mouse_screen", scope: !10, file: !9, line: 42, baseType: !6, size: 32, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "have_last_mouse", scope: !10, file: !9, line: 43, baseType: !6, size: 32, offset: 608)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !73, globals: !75, splitDebugInlining: false, nameTableKind: None)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !{!76, !0, !81, !86, !88, !93, !95, !100}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 9, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 40, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 5)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !3, line: 13, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 712, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 89)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "usage", scope: !2, file: !3, line: 12, type: !54, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 17, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 24, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !90, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 344, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 43)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !90, isLocal: true, isDefinition: true)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !111, !112, !113}
!103 = !DILocalVariable(name: "context", arg: 1, scope: !2, file: !3, line: 3, type: !7)
!104 = !DILocalVariable(name: "pid", scope: !2, file: !3, line: 4, type: !6)
!105 = !DILocalVariable(name: "cmd", scope: !2, file: !3, line: 5, type: !24)
!106 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 7, type: !6)
!107 = !DILocalVariable(name: "option_index", scope: !2, file: !3, line: 15, type: !6)
!108 = !DILocalVariable(name: "window_arg", scope: !2, file: !3, line: 33, type: !54)
!109 = !DILocalVariable(name: "windows", scope: !110, file: !3, line: 39, type: !61)
!110 = distinct !DILexicalBlock(scope: !2, file: !3, line: 39, column: 3)
!111 = !DILocalVariable(name: "nwindows", scope: !110, file: !3, line: 39, type: !6)
!112 = !DILocalVariable(name: "w_index", scope: !110, file: !3, line: 39, type: !6)
!113 = !DILocalVariable(name: "window", scope: !114, file: !3, line: 39, type: !62)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 39, column: 3)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 39, column: 3)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 39, column: 3)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 512, elements: !126)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !119, line: 50, size: 256, elements: !120)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!120 = !{!121, !122, !123, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !118, file: !119, line: 52, baseType: !54, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !118, file: !119, line: 55, baseType: !6, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !118, file: !119, line: 56, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !118, file: !119, line: 57, baseType: !6, size: 32, offset: 192)
!126 = !{!127}
!127 = !DISubrange(count: 2)
!128 = !{i32 7, !"Dwarf Version", i32 5}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 8, !"PIC Level", i32 2}
!132 = !{i32 7, !"PIE Level", i32 2}
!133 = !{i32 7, !"uwtable", i32 2}
!134 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!135 = !{!136, !136, i64 0}
!136 = !{!"any pointer", !137, i64 0}
!137 = !{!"omnipotent char", !138, i64 0}
!138 = !{!"Simple C/C++ TBAA"}
!139 = !DILocation(line: 3, column: 33, scope: !2)
!140 = !DILocation(line: 4, column: 3, scope: !2)
!141 = !DILocation(line: 4, column: 7, scope: !2)
!142 = !DILocation(line: 5, column: 3, scope: !2)
!143 = !DILocation(line: 5, column: 9, scope: !2)
!144 = !DILocation(line: 5, column: 15, scope: !2)
!145 = !DILocation(line: 5, column: 24, scope: !2)
!146 = !{!147, !136, i64 24}
!147 = !{!"context", !136, i64 0, !136, i64 8, !148, i64 16, !136, i64 24, !148, i64 32, !136, i64 40, !148, i64 48, !137, i64 56, !148, i64 64, !148, i64 68, !148, i64 72, !148, i64 76}
!148 = !{!"int", !137, i64 0}
!149 = !DILocation(line: 7, column: 3, scope: !2)
!150 = !DILocation(line: 7, column: 7, scope: !2)
!151 = !DILocation(line: 15, column: 3, scope: !2)
!152 = !DILocation(line: 15, column: 7, scope: !2)
!153 = !DILocation(line: 17, column: 3, scope: !2)
!154 = !DILocation(line: 17, column: 32, scope: !2)
!155 = !DILocation(line: 17, column: 41, scope: !2)
!156 = !{!147, !148, i64 16}
!157 = !DILocation(line: 17, column: 47, scope: !2)
!158 = !DILocation(line: 17, column: 56, scope: !2)
!159 = !DILocation(line: 17, column: 15, scope: !2)
!160 = !DILocation(line: 17, column: 13, scope: !2)
!161 = !{!148, !148, i64 0}
!162 = !DILocation(line: 18, column: 58, scope: !2)
!163 = !DILocation(line: 19, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !2, file: !3, line: 18, column: 65)
!165 = !DILocation(line: 19, column: 5, scope: !164)
!166 = !DILocation(line: 21, column: 16, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 19, column: 16)
!168 = !DILocation(line: 21, column: 23, scope: !167)
!169 = !DILocation(line: 21, column: 9, scope: !167)
!170 = !DILocation(line: 22, column: 22, scope: !167)
!171 = !DILocation(line: 22, column: 31, scope: !167)
!172 = !DILocation(line: 22, column: 40, scope: !167)
!173 = !DILocation(line: 22, column: 9, scope: !167)
!174 = !DILocation(line: 23, column: 9, scope: !167)
!175 = !DILocation(line: 26, column: 17, scope: !167)
!176 = !DILocation(line: 26, column: 25, scope: !167)
!177 = !DILocation(line: 26, column: 32, scope: !167)
!178 = !DILocation(line: 26, column: 9, scope: !167)
!179 = !DILocation(line: 27, column: 9, scope: !167)
!180 = !DILocation(line: 31, column: 16, scope: !2)
!181 = !DILocation(line: 31, column: 25, scope: !2)
!182 = !DILocation(line: 31, column: 3, scope: !2)
!183 = !DILocation(line: 33, column: 3, scope: !2)
!184 = !DILocation(line: 33, column: 15, scope: !2)
!185 = !DILocation(line: 34, column: 23, scope: !186)
!186 = distinct !DILexicalBlock(scope: !2, file: !3, line: 34, column: 7)
!187 = !DILocation(line: 34, column: 8, scope: !186)
!188 = !DILocation(line: 34, column: 7, scope: !2)
!189 = !DILocation(line: 35, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 34, column: 52)
!191 = !DILocation(line: 35, column: 21, scope: !190)
!192 = !DILocation(line: 35, column: 28, scope: !190)
!193 = !DILocation(line: 35, column: 5, scope: !190)
!194 = !DILocation(line: 36, column: 5, scope: !190)
!195 = !DILocation(line: 39, column: 3, scope: !110)
!196 = !DILocation(line: 39, column: 3, scope: !116)
!197 = !DILocation(line: 39, column: 3, scope: !115)
!198 = !DILocation(line: 39, column: 3, scope: !114)
!199 = !{!200, !200, i64 0}
!200 = !{!"long", !137, i64 0}
!201 = !DILocation(line: 39, column: 3, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 39, column: 3)
!203 = distinct !DILexicalBlock(scope: !114, file: !3, line: 39, column: 3)
!204 = !{!147, !136, i64 0}
!205 = !DILocation(line: 39, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !202, file: !3, line: 39, column: 3)
!207 = !DILocation(line: 39, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !206, file: !3, line: 39, column: 3)
!209 = !DILocation(line: 39, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 39, column: 3)
!211 = distinct !{!211, !196, !196}
!212 = !DILocation(line: 39, column: 3, scope: !2)
!213 = !DILocation(line: 50, column: 3, scope: !2)
!214 = !DILocation(line: 51, column: 1, scope: !2)
!215 = !DISubprogram(name: "getopt_long_only", scope: !119, file: !119, line: 70, type: !216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubroutineType(types: !217)
!217 = !{!6, !6, !218, !54, !220, !124}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!222 = !DISubprogram(name: "printf", scope: !223, file: !223, line: 356, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!224 = !DISubroutineType(types: !225)
!225 = !{!6, !226, null}
!226 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!227 = !DISubprogram(name: "consume_args", scope: !228, file: !228, line: 27, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIFile(filename: "./xdo_cmd.h", directory: "/local-ssd/xdotool-ejk7fihqmwmajz5iv72comzrrdt46x64-build/aidengro/spack-stage-xdotool-3.20211022.1-ejk7fihqmwmajz5iv72comzrrdt46x64/spack-src", checksumkind: CSK_MD5, checksum: "2fd4130da01687a159d62bb4f2c8f828")
!229 = !DISubroutineType(types: !230)
!230 = !{null, !7, !6}
!231 = !DISubprogram(name: "fprintf", scope: !223, file: !223, line: 350, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{!6, !234, !226, null}
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !237, line: 7, baseType: !238)
!237 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !239, line: 49, size: 1728, elements: !240)
!239 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !256, !258, !259, !260, !264, !266, !268, !270, !273, !275, !278, !281, !282, !283, !285, !286}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !238, file: !239, line: 51, baseType: !6, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !238, file: !239, line: 54, baseType: !24, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !238, file: !239, line: 55, baseType: !24, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !238, file: !239, line: 56, baseType: !24, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !238, file: !239, line: 57, baseType: !24, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !238, file: !239, line: 58, baseType: !24, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !238, file: !239, line: 59, baseType: !24, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !238, file: !239, line: 60, baseType: !24, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !238, file: !239, line: 61, baseType: !24, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !238, file: !239, line: 64, baseType: !24, size: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !238, file: !239, line: 65, baseType: !24, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !238, file: !239, line: 66, baseType: !24, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !238, file: !239, line: 68, baseType: !254, size: 64, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !239, line: 36, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !238, file: !239, line: 70, baseType: !257, size: 64, offset: 832)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !238, file: !239, line: 72, baseType: !6, size: 32, offset: 896)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !238, file: !239, line: 73, baseType: !6, size: 32, offset: 928)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !238, file: !239, line: 74, baseType: !261, size: 64, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !262, line: 152, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!263 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !238, file: !239, line: 77, baseType: !265, size: 16, offset: 1024)
!265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !238, file: !239, line: 78, baseType: !267, size: 8, offset: 1040)
!267 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !238, file: !239, line: 79, baseType: !269, size: 8, offset: 1048)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !66)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !238, file: !239, line: 81, baseType: !271, size: 64, offset: 1088)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !239, line: 43, baseType: null)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !238, file: !239, line: 89, baseType: !274, size: 64, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !262, line: 153, baseType: !263)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !238, file: !239, line: 91, baseType: !276, size: 64, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !239, line: 37, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !238, file: !239, line: 92, baseType: !279, size: 64, offset: 1280)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !239, line: 38, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !238, file: !239, line: 93, baseType: !257, size: 64, offset: 1344)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !238, file: !239, line: 94, baseType: !74, size: 64, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !238, file: !239, line: 95, baseType: !284, size: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 70, baseType: !41)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !238, file: !239, line: 96, baseType: !6, size: 32, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !238, file: !239, line: 98, baseType: !287, size: 160, offset: 1568)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 20)
!290 = !DISubprogram(name: "window_get_arg", scope: !228, file: !228, line: 36, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubroutineType(types: !292)
!292 = !{!6, !7, !6, !6, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!294 = !DISubprogram(name: "window_list", scope: !228, file: !228, line: 28, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !7, !54, !297, !124, !298}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!299 = !DISubprogram(name: "xdo_get_pid_window", scope: !15, file: !15, line: 560, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DISubroutineType(types: !301)
!301 = !{!6, !302, !62}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!304 = !DISubprogram(name: "xdotool_output", scope: !228, file: !228, line: 40, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !7, !54, null}
