; ModuleID = 'samples/172.bc'
source_filename = "src/tools/gt_dupfeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InterFeatArguments = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"src/tools/gt_dupfeat.c\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1, !dbg !12
@__func__.gt_interfeat_option_parser_new = private unnamed_addr constant [31 x i8] c"gt_interfeat_option_parser_new\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [29 x i8] c"[option ...] [GFF3_file ...]\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [54 x i8] c"Duplicate internal feature nodes in given GFF3 files.\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [5 x i8] c"dest\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [21 x i8] c"set destination type\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [7 x i8] c"source\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [16 x i8] c"set source type\00", align 1, !dbg !48
@.str.9 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !53
@__func__.gt_interfeat_runner = private unnamed_addr constant [20 x i8] c"gt_interfeat_runner\00", align 1, !dbg !58

; Function Attrs: nounwind uwtable
define ptr @gt_dupfeat() #0 !dbg !71 {
entry:
  %call = call ptr @gt_tool_new(ptr noundef @gt_interfeat_arguments_new, ptr noundef @gt_interfeat_arguments_delete, ptr noundef @gt_interfeat_option_parser_new, ptr noundef null, ptr noundef @gt_interfeat_runner), !dbg !78
  ret ptr %call, !dbg !79
}

declare !dbg !80 ptr @gt_tool_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @gt_interfeat_arguments_new() #0 !dbg !115 {
entry:
  %arguments = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !138
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !117, metadata !DIExpression()), !dbg !139
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 32, ptr noundef @.str, i32 noundef 33), !dbg !140
  store ptr %call, ptr %arguments, align 8, !dbg !139, !tbaa !141
  %call1 = call ptr @gt_str_new(), !dbg !145
  %0 = load ptr, ptr %arguments, align 8, !dbg !146, !tbaa !141
  %dest_type = getelementptr inbounds %struct.InterFeatArguments, ptr %0, i32 0, i32 0, !dbg !147
  store ptr %call1, ptr %dest_type, align 8, !dbg !148, !tbaa !149
  %call2 = call ptr @gt_str_new(), !dbg !151
  %1 = load ptr, ptr %arguments, align 8, !dbg !152, !tbaa !141
  %source_type = getelementptr inbounds %struct.InterFeatArguments, ptr %1, i32 0, i32 1, !dbg !153
  store ptr %call2, ptr %source_type, align 8, !dbg !154, !tbaa !155
  %call3 = call ptr @gt_output_file_info_new(), !dbg !156
  %2 = load ptr, ptr %arguments, align 8, !dbg !157, !tbaa !141
  %ofi = getelementptr inbounds %struct.InterFeatArguments, ptr %2, i32 0, i32 2, !dbg !158
  store ptr %call3, ptr %ofi, align 8, !dbg !159, !tbaa !160
  %3 = load ptr, ptr %arguments, align 8, !dbg !161, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !162
  ret ptr %3, !dbg !163
}

; Function Attrs: nounwind uwtable
define internal void @gt_interfeat_arguments_delete(ptr noundef %tool_arguments) #0 !dbg !164 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !166, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !169
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !167, metadata !DIExpression()), !dbg !170
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !171, !tbaa !141
  store ptr %0, ptr %arguments, align 8, !dbg !170, !tbaa !141
  %1 = load ptr, ptr %arguments, align 8, !dbg !172, !tbaa !141
  %tobool = icmp ne ptr %1, null, !dbg !172
  br i1 %tobool, label %if.end, label %if.then, !dbg !174

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !175

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arguments, align 8, !dbg !176, !tbaa !141
  %outfp = getelementptr inbounds %struct.InterFeatArguments, ptr %2, i32 0, i32 3, !dbg !177
  %3 = load ptr, ptr %outfp, align 8, !dbg !177, !tbaa !178
  call void @gt_file_delete(ptr noundef %3), !dbg !179
  %4 = load ptr, ptr %arguments, align 8, !dbg !180, !tbaa !141
  %ofi = getelementptr inbounds %struct.InterFeatArguments, ptr %4, i32 0, i32 2, !dbg !181
  %5 = load ptr, ptr %ofi, align 8, !dbg !181, !tbaa !160
  call void @gt_output_file_info_delete(ptr noundef %5), !dbg !182
  %6 = load ptr, ptr %arguments, align 8, !dbg !183, !tbaa !141
  %source_type = getelementptr inbounds %struct.InterFeatArguments, ptr %6, i32 0, i32 1, !dbg !184
  %7 = load ptr, ptr %source_type, align 8, !dbg !184, !tbaa !155
  call void @gt_str_delete(ptr noundef %7), !dbg !185
  %8 = load ptr, ptr %arguments, align 8, !dbg !186, !tbaa !141
  %dest_type = getelementptr inbounds %struct.InterFeatArguments, ptr %8, i32 0, i32 0, !dbg !187
  %9 = load ptr, ptr %dest_type, align 8, !dbg !187, !tbaa !149
  call void @gt_str_delete(ptr noundef %9), !dbg !188
  %10 = load ptr, ptr %arguments, align 8, !dbg !189, !tbaa !141
  call void @gt_free_mem(ptr noundef %10, ptr noundef @.str, i32 noundef 48), !dbg !189
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !190
  br label %cleanup, !dbg !190

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !190
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !190

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_interfeat_option_parser_new(ptr noundef %tool_arguments) #0 !dbg !191 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %op = alloca ptr, align 8
  %option = alloca ptr, align 8
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !201
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !194, metadata !DIExpression()), !dbg !202
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !203, !tbaa !141
  store ptr %0, ptr %arguments, align 8, !dbg !202, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #5, !dbg !204
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !195, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #5, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !196, metadata !DIExpression()), !dbg !207
  br label %do.body, !dbg !208

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %arguments, align 8, !dbg !209, !tbaa !141
  %tobool = icmp ne ptr %1, null, !dbg !209
  br i1 %tobool, label %if.end, label %if.then, !dbg !212

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !213, !tbaa !141
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_interfeat_option_parser_new, ptr noundef @.str, i32 noundef 57), !dbg !213
  call void @abort() #6, !dbg !213
  unreachable, !dbg !213

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !212

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !212

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @gt_option_parser_new(ptr noundef @.str.3, ptr noundef @.str.4), !dbg !215
  store ptr %call1, ptr %op, align 8, !dbg !216, !tbaa !141
  %3 = load ptr, ptr %arguments, align 8, !dbg !217, !tbaa !141
  %dest_type = getelementptr inbounds %struct.InterFeatArguments, ptr %3, i32 0, i32 0, !dbg !218
  %4 = load ptr, ptr %dest_type, align 8, !dbg !218, !tbaa !149
  %call2 = call ptr @gt_option_new_string(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %4, ptr noundef null), !dbg !219
  store ptr %call2, ptr %option, align 8, !dbg !220, !tbaa !141
  %5 = load ptr, ptr %option, align 8, !dbg !221, !tbaa !141
  call void @gt_option_is_mandatory(ptr noundef %5), !dbg !222
  %6 = load ptr, ptr %op, align 8, !dbg !223, !tbaa !141
  %7 = load ptr, ptr %option, align 8, !dbg !224, !tbaa !141
  call void @gt_option_parser_add_option(ptr noundef %6, ptr noundef %7), !dbg !225
  %8 = load ptr, ptr %arguments, align 8, !dbg !226, !tbaa !141
  %source_type = getelementptr inbounds %struct.InterFeatArguments, ptr %8, i32 0, i32 1, !dbg !227
  %9 = load ptr, ptr %source_type, align 8, !dbg !227, !tbaa !155
  %call3 = call ptr @gt_option_new_string(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %9, ptr noundef null), !dbg !228
  store ptr %call3, ptr %option, align 8, !dbg !229, !tbaa !141
  %10 = load ptr, ptr %option, align 8, !dbg !230, !tbaa !141
  call void @gt_option_is_mandatory(ptr noundef %10), !dbg !231
  %11 = load ptr, ptr %op, align 8, !dbg !232, !tbaa !141
  %12 = load ptr, ptr %option, align 8, !dbg !233, !tbaa !141
  call void @gt_option_parser_add_option(ptr noundef %11, ptr noundef %12), !dbg !234
  %13 = load ptr, ptr %arguments, align 8, !dbg !235, !tbaa !141
  %ofi = getelementptr inbounds %struct.InterFeatArguments, ptr %13, i32 0, i32 2, !dbg !236
  %14 = load ptr, ptr %ofi, align 8, !dbg !236, !tbaa !160
  %15 = load ptr, ptr %op, align 8, !dbg !237, !tbaa !141
  %16 = load ptr, ptr %arguments, align 8, !dbg !238, !tbaa !141
  %outfp = getelementptr inbounds %struct.InterFeatArguments, ptr %16, i32 0, i32 3, !dbg !239
  call void @gt_output_file_info_register_options(ptr noundef %14, ptr noundef %15, ptr noundef %outfp), !dbg !240
  %17 = load ptr, ptr %op, align 8, !dbg !241, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #5, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #5, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !242
  ret ptr %17, !dbg !243
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_interfeat_runner(i32 noundef %argc, ptr noundef %argv, i32 noundef %parsed_args, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !244 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %parsed_args.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %gff3_in_stream = alloca ptr, align 8
  %dup_feature_stream = alloca ptr, align 8
  %gff3_out_stream = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !270
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !246, metadata !DIExpression()), !dbg !272
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !247, metadata !DIExpression()), !dbg !273
  store i32 %parsed_args, ptr %parsed_args.addr, align 4, !tbaa !270
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args.addr, metadata !248, metadata !DIExpression()), !dbg !274
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !249, metadata !DIExpression()), !dbg !275
  store ptr %err, ptr %err.addr, align 8, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !250, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #5, !dbg !277
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !251, metadata !DIExpression()), !dbg !278
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !279, !tbaa !141
  store ptr %0, ptr %arguments, align 8, !dbg !278, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %gff3_in_stream) #5, !dbg !280
  tail call void @llvm.dbg.declare(metadata ptr %gff3_in_stream, metadata !252, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 8, ptr %dup_feature_stream) #5, !dbg !280
  tail call void @llvm.dbg.declare(metadata ptr %dup_feature_stream, metadata !267, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 8, ptr %gff3_out_stream) #5, !dbg !280
  tail call void @llvm.dbg.declare(metadata ptr %gff3_out_stream, metadata !268, metadata !DIExpression()), !dbg !283
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #5, !dbg !284
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !269, metadata !DIExpression()), !dbg !285
  br label %do.body, !dbg !286

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !287, !tbaa !141
  %tobool = icmp ne ptr %1, null, !dbg !287
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !287

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !287, !tbaa !141
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !287
  br i1 %call, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !291, !tbaa !141
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.9, ptr noundef @__func__.gt_interfeat_runner, ptr noundef @.str, i32 noundef 90), !dbg !291
  call void @abort() #6, !dbg !291
  unreachable, !dbg !291

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !290

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !290

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !293

do.body2:                                         ; preds = %do.end
  %4 = load ptr, ptr %arguments, align 8, !dbg !294, !tbaa !141
  %tobool3 = icmp ne ptr %4, null, !dbg !294
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !297

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !298, !tbaa !141
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_interfeat_runner, ptr noundef @.str, i32 noundef 91), !dbg !298
  call void @abort() #6, !dbg !298
  unreachable, !dbg !298

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !297

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !297

do.end8:                                          ; preds = %do.cond7
  %6 = load i32, ptr %argc.addr, align 4, !dbg !300, !tbaa !270
  %7 = load i32, ptr %parsed_args.addr, align 4, !dbg !301, !tbaa !270
  %sub = sub nsw i32 %6, %7, !dbg !302
  %8 = load ptr, ptr %argv.addr, align 8, !dbg !303, !tbaa !141
  %9 = load i32, ptr %parsed_args.addr, align 4, !dbg !304, !tbaa !270
  %idx.ext = sext i32 %9 to i64, !dbg !305
  %add.ptr = getelementptr inbounds ptr, ptr %8, i64 %idx.ext, !dbg !305
  %call9 = call ptr @gt_gff3_in_stream_new_unsorted(i32 noundef %sub, ptr noundef %add.ptr), !dbg !306
  store ptr %call9, ptr %gff3_in_stream, align 8, !dbg !307, !tbaa !141
  %10 = load ptr, ptr %gff3_in_stream, align 8, !dbg !308, !tbaa !141
  %11 = load ptr, ptr %arguments, align 8, !dbg !309, !tbaa !141
  %dest_type = getelementptr inbounds %struct.InterFeatArguments, ptr %11, i32 0, i32 0, !dbg !310
  %12 = load ptr, ptr %dest_type, align 8, !dbg !310, !tbaa !149
  %call10 = call ptr @gt_str_get(ptr noundef %12), !dbg !311
  %13 = load ptr, ptr %arguments, align 8, !dbg !312, !tbaa !141
  %source_type = getelementptr inbounds %struct.InterFeatArguments, ptr %13, i32 0, i32 1, !dbg !313
  %14 = load ptr, ptr %source_type, align 8, !dbg !313, !tbaa !155
  %call11 = call ptr @gt_str_get(ptr noundef %14), !dbg !314
  %call12 = call ptr @gt_dup_feature_stream_new(ptr noundef %10, ptr noundef %call10, ptr noundef %call11), !dbg !315
  store ptr %call12, ptr %dup_feature_stream, align 8, !dbg !316, !tbaa !141
  %15 = load ptr, ptr %dup_feature_stream, align 8, !dbg !317, !tbaa !141
  %16 = load ptr, ptr %arguments, align 8, !dbg !318, !tbaa !141
  %outfp = getelementptr inbounds %struct.InterFeatArguments, ptr %16, i32 0, i32 3, !dbg !319
  %17 = load ptr, ptr %outfp, align 8, !dbg !319, !tbaa !178
  %call13 = call ptr @gt_gff3_out_stream_new(ptr noundef %15, ptr noundef %17), !dbg !320
  store ptr %call13, ptr %gff3_out_stream, align 8, !dbg !321, !tbaa !141
  %18 = load ptr, ptr %gff3_out_stream, align 8, !dbg !322, !tbaa !141
  %19 = load ptr, ptr %err.addr, align 8, !dbg !323, !tbaa !141
  %call14 = call i32 @gt_node_stream_pull(ptr noundef %18, ptr noundef %19), !dbg !324
  store i32 %call14, ptr %had_err, align 4, !dbg !325, !tbaa !270
  %20 = load ptr, ptr %gff3_out_stream, align 8, !dbg !326, !tbaa !141
  call void @gt_node_stream_delete(ptr noundef %20), !dbg !327
  %21 = load ptr, ptr %dup_feature_stream, align 8, !dbg !328, !tbaa !141
  call void @gt_node_stream_delete(ptr noundef %21), !dbg !329
  %22 = load ptr, ptr %gff3_in_stream, align 8, !dbg !330, !tbaa !141
  call void @gt_node_stream_delete(ptr noundef %22), !dbg !331
  %23 = load i32, ptr %had_err, align 4, !dbg !332, !tbaa !270
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #5, !dbg !333
  call void @llvm.lifetime.end.p0(i64 8, ptr %gff3_out_stream) #5, !dbg !333
  call void @llvm.lifetime.end.p0(i64 8, ptr %dup_feature_stream) #5, !dbg !333
  call void @llvm.lifetime.end.p0(i64 8, ptr %gff3_in_stream) #5, !dbg !333
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #5, !dbg !333
  ret i32 %23, !dbg !334
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !335 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare !dbg !342 ptr @gt_str_new() #1

declare !dbg !345 ptr @gt_output_file_info_new() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !348 void @gt_file_delete(ptr noundef) #1

declare !dbg !351 void @gt_output_file_info_delete(ptr noundef) #1

declare !dbg !354 void @gt_str_delete(ptr noundef) #1

declare !dbg !357 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !360 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !421 void @abort() #3

declare !dbg !425 ptr @gt_option_parser_new(ptr noundef, ptr noundef) #1

declare !dbg !428 ptr @gt_option_new_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !431 void @gt_option_is_mandatory(ptr noundef) #1

declare !dbg !434 void @gt_option_parser_add_option(ptr noundef, ptr noundef) #1

declare !dbg !437 void @gt_output_file_info_register_options(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !441 zeroext i1 @gt_error_is_set(ptr noundef) #1

declare !dbg !447 ptr @gt_gff3_in_stream_new_unsorted(i32 noundef, ptr noundef) #1

declare !dbg !451 ptr @gt_dup_feature_stream_new(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !455 ptr @gt_str_get(ptr noundef) #1

declare !dbg !460 ptr @gt_gff3_out_stream_new(ptr noundef, ptr noundef) #1

declare !dbg !464 i32 @gt_node_stream_pull(ptr noundef, ptr noundef) #1

declare !dbg !467 void @gt_node_stream_delete(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!63}
!llvm.module.flags = !{!65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tools/gt_dupfeat.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d7cde57ec1fb87fb5f89aba5e3304ad5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 297)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 248, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 31)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 29)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 54)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 5)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 21)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 7)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 16)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 30)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 20)
!63 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !64, splitDebugInlining: false, nameTableKind: None)
!64 = !{!0, !7, !12, !17, !23, !28, !33, !38, !43, !48, !53, !58}
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!71 = distinct !DISubprogram(name: "gt_dupfeat", scope: !2, file: !2, line: 117, type: !72, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63)
!72 = !DISubroutineType(types: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTool", file: !76, line: 26, baseType: !77)
!76 = !DIFile(filename: "src/core/tool_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e867124201284063b8eb5758ec6a469a")
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTool", file: !76, line: 26, flags: DIFlagFwdDecl)
!78 = !DILocation(line: 119, column: 10, scope: !71)
!79 = !DILocation(line: 119, column: 3, scope: !71)
!80 = !DISubprogram(name: "gt_tool_new", scope: !76, file: !76, line: 66, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{!74, !83, !88, !92, !100, !109}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsNew", file: !76, line: 30, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsDelete", file: !76, line: 33, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !87}
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolOptionParserNew", file: !76, line: 36, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !87}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParser", file: !98, line: 27, baseType: !99)
!98 = !DIFile(filename: "src/core/option_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4af8e95b11f2236d309c3019659f4935")
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOptionParser", file: !98, line: 27, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsCheck", file: !76, line: 41, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !104, !87, !105}
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !107, line: 44, baseType: !108)
!107 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !107, line: 44, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolRunner", file: !76, line: 52, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!104, !104, !113, !104, !87, !105}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!115 = distinct !DISubprogram(name: "gt_interfeat_arguments_new", scope: !2, file: !2, line: 31, type: !85, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !116)
!116 = !{!117}
!117 = !DILocalVariable(name: "arguments", scope: !115, file: !2, line: 33, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterFeatArguments", file: !2, line: 29, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 24, size: 256, elements: !121)
!121 = !{!122, !127, !128, !133}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dest_type", scope: !120, file: !2, line: 25, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !125, line: 27, baseType: !126)
!125 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !125, line: 27, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "source_type", scope: !120, file: !2, line: 26, baseType: !123, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ofi", scope: !120, file: !2, line: 27, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOutputFileInfo", file: !131, line: 28, baseType: !132)
!131 = !DIFile(filename: "src/core/output_file_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1ea439b53b5cc906f17a5531c7ed0d9f")
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOutputFileInfo", file: !131, line: 28, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "outfp", scope: !120, file: !2, line: 28, baseType: !134, size: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtFile", file: !136, line: 33, baseType: !137)
!136 = !DIFile(filename: "src/core/file_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "11f2500b1166d3a68ac41902514c5538")
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtFile", file: !136, line: 33, flags: DIFlagFwdDecl)
!138 = !DILocation(line: 33, column: 3, scope: !115)
!139 = !DILocation(line: 33, column: 23, scope: !115)
!140 = !DILocation(line: 33, column: 35, scope: !115)
!141 = !{!142, !142, i64 0}
!142 = !{!"any pointer", !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !DILocation(line: 34, column: 26, scope: !115)
!146 = !DILocation(line: 34, column: 3, scope: !115)
!147 = !DILocation(line: 34, column: 14, scope: !115)
!148 = !DILocation(line: 34, column: 24, scope: !115)
!149 = !{!150, !142, i64 0}
!150 = !{!"", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24}
!151 = !DILocation(line: 35, column: 28, scope: !115)
!152 = !DILocation(line: 35, column: 3, scope: !115)
!153 = !DILocation(line: 35, column: 14, scope: !115)
!154 = !DILocation(line: 35, column: 26, scope: !115)
!155 = !{!150, !142, i64 8}
!156 = !DILocation(line: 36, column: 20, scope: !115)
!157 = !DILocation(line: 36, column: 3, scope: !115)
!158 = !DILocation(line: 36, column: 14, scope: !115)
!159 = !DILocation(line: 36, column: 18, scope: !115)
!160 = !{!150, !142, i64 16}
!161 = !DILocation(line: 37, column: 10, scope: !115)
!162 = !DILocation(line: 38, column: 1, scope: !115)
!163 = !DILocation(line: 37, column: 3, scope: !115)
!164 = distinct !DISubprogram(name: "gt_interfeat_arguments_delete", scope: !2, file: !2, line: 40, type: !90, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !165)
!165 = !{!166, !167}
!166 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !164, file: !2, line: 40, type: !87)
!167 = !DILocalVariable(name: "arguments", scope: !164, file: !2, line: 42, type: !118)
!168 = !DILocation(line: 40, column: 49, scope: !164)
!169 = !DILocation(line: 42, column: 3, scope: !164)
!170 = !DILocation(line: 42, column: 23, scope: !164)
!171 = !DILocation(line: 42, column: 35, scope: !164)
!172 = !DILocation(line: 43, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !2, line: 43, column: 7)
!174 = !DILocation(line: 43, column: 7, scope: !164)
!175 = !DILocation(line: 43, column: 19, scope: !173)
!176 = !DILocation(line: 44, column: 18, scope: !164)
!177 = !DILocation(line: 44, column: 29, scope: !164)
!178 = !{!150, !142, i64 24}
!179 = !DILocation(line: 44, column: 3, scope: !164)
!180 = !DILocation(line: 45, column: 30, scope: !164)
!181 = !DILocation(line: 45, column: 41, scope: !164)
!182 = !DILocation(line: 45, column: 3, scope: !164)
!183 = !DILocation(line: 46, column: 17, scope: !164)
!184 = !DILocation(line: 46, column: 28, scope: !164)
!185 = !DILocation(line: 46, column: 3, scope: !164)
!186 = !DILocation(line: 47, column: 17, scope: !164)
!187 = !DILocation(line: 47, column: 28, scope: !164)
!188 = !DILocation(line: 47, column: 3, scope: !164)
!189 = !DILocation(line: 48, column: 3, scope: !164)
!190 = !DILocation(line: 49, column: 1, scope: !164)
!191 = distinct !DISubprogram(name: "gt_interfeat_option_parser_new", scope: !2, file: !2, line: 51, type: !94, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !192)
!192 = !{!193, !194, !195, !196}
!193 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !191, file: !2, line: 51, type: !87)
!194 = !DILocalVariable(name: "arguments", scope: !191, file: !2, line: 53, type: !118)
!195 = !DILocalVariable(name: "op", scope: !191, file: !2, line: 54, type: !96)
!196 = !DILocalVariable(name: "option", scope: !191, file: !2, line: 55, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOption", file: !98, line: 33, baseType: !199)
!199 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOption", file: !98, line: 33, flags: DIFlagFwdDecl)
!200 = !DILocation(line: 51, column: 61, scope: !191)
!201 = !DILocation(line: 53, column: 3, scope: !191)
!202 = !DILocation(line: 53, column: 23, scope: !191)
!203 = !DILocation(line: 53, column: 35, scope: !191)
!204 = !DILocation(line: 54, column: 3, scope: !191)
!205 = !DILocation(line: 54, column: 19, scope: !191)
!206 = !DILocation(line: 55, column: 3, scope: !191)
!207 = !DILocation(line: 55, column: 13, scope: !191)
!208 = !DILocation(line: 57, column: 3, scope: !191)
!209 = !DILocation(line: 57, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !2, line: 57, column: 3)
!211 = distinct !DILexicalBlock(scope: !191, file: !2, line: 57, column: 3)
!212 = !DILocation(line: 57, column: 3, scope: !211)
!213 = !DILocation(line: 57, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !2, line: 57, column: 3)
!215 = !DILocation(line: 60, column: 8, scope: !191)
!216 = !DILocation(line: 60, column: 6, scope: !191)
!217 = !DILocation(line: 65, column: 33, scope: !191)
!218 = !DILocation(line: 65, column: 44, scope: !191)
!219 = !DILocation(line: 64, column: 12, scope: !191)
!220 = !DILocation(line: 64, column: 10, scope: !191)
!221 = !DILocation(line: 66, column: 26, scope: !191)
!222 = !DILocation(line: 66, column: 3, scope: !191)
!223 = !DILocation(line: 67, column: 31, scope: !191)
!224 = !DILocation(line: 67, column: 35, scope: !191)
!225 = !DILocation(line: 67, column: 3, scope: !191)
!226 = !DILocation(line: 71, column: 33, scope: !191)
!227 = !DILocation(line: 71, column: 44, scope: !191)
!228 = !DILocation(line: 70, column: 12, scope: !191)
!229 = !DILocation(line: 70, column: 10, scope: !191)
!230 = !DILocation(line: 72, column: 26, scope: !191)
!231 = !DILocation(line: 72, column: 3, scope: !191)
!232 = !DILocation(line: 73, column: 31, scope: !191)
!233 = !DILocation(line: 73, column: 35, scope: !191)
!234 = !DILocation(line: 73, column: 3, scope: !191)
!235 = !DILocation(line: 76, column: 40, scope: !191)
!236 = !DILocation(line: 76, column: 51, scope: !191)
!237 = !DILocation(line: 76, column: 56, scope: !191)
!238 = !DILocation(line: 76, column: 61, scope: !191)
!239 = !DILocation(line: 76, column: 72, scope: !191)
!240 = !DILocation(line: 76, column: 3, scope: !191)
!241 = !DILocation(line: 78, column: 10, scope: !191)
!242 = !DILocation(line: 79, column: 1, scope: !191)
!243 = !DILocation(line: 78, column: 3, scope: !191)
!244 = distinct !DISubprogram(name: "gt_interfeat_runner", scope: !2, file: !2, line: 81, type: !111, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !267, !268, !269}
!246 = !DILocalVariable(name: "argc", arg: 1, scope: !244, file: !2, line: 81, type: !104)
!247 = !DILocalVariable(name: "argv", arg: 2, scope: !244, file: !2, line: 81, type: !113)
!248 = !DILocalVariable(name: "parsed_args", arg: 3, scope: !244, file: !2, line: 81, type: !104)
!249 = !DILocalVariable(name: "tool_arguments", arg: 4, scope: !244, file: !2, line: 82, type: !87)
!250 = !DILocalVariable(name: "err", arg: 5, scope: !244, file: !2, line: 82, type: !105)
!251 = !DILocalVariable(name: "arguments", scope: !244, file: !2, line: 84, type: !118)
!252 = !DILocalVariable(name: "gff3_in_stream", scope: !244, file: !2, line: 85, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStream", file: !255, line: 29, baseType: !256)
!255 = !DIFile(filename: "src/extended/node_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "394932ed37b4b1336cc2d8af8d72d6ac")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStream", file: !255, line: 65, size: 128, elements: !257)
!257 = !{!258, !263}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "c_class", scope: !256, file: !255, line: 66, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStreamClass", file: !255, line: 25, baseType: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStreamClass", file: !255, line: 25, flags: DIFlagFwdDecl)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !256, file: !255, line: 67, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStreamMembers", file: !255, line: 63, baseType: !266)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStreamMembers", file: !255, line: 63, flags: DIFlagFwdDecl)
!267 = !DILocalVariable(name: "dup_feature_stream", scope: !244, file: !2, line: 86, type: !253)
!268 = !DILocalVariable(name: "gff3_out_stream", scope: !244, file: !2, line: 87, type: !253)
!269 = !DILocalVariable(name: "had_err", scope: !244, file: !2, line: 88, type: !104)
!270 = !{!271, !271, i64 0}
!271 = !{!"int", !143, i64 0}
!272 = !DILocation(line: 81, column: 36, scope: !244)
!273 = !DILocation(line: 81, column: 55, scope: !244)
!274 = !DILocation(line: 81, column: 65, scope: !244)
!275 = !DILocation(line: 82, column: 33, scope: !244)
!276 = !DILocation(line: 82, column: 58, scope: !244)
!277 = !DILocation(line: 84, column: 3, scope: !244)
!278 = !DILocation(line: 84, column: 23, scope: !244)
!279 = !DILocation(line: 84, column: 35, scope: !244)
!280 = !DILocation(line: 85, column: 3, scope: !244)
!281 = !DILocation(line: 85, column: 17, scope: !244)
!282 = !DILocation(line: 86, column: 17, scope: !244)
!283 = !DILocation(line: 87, column: 17, scope: !244)
!284 = !DILocation(line: 88, column: 3, scope: !244)
!285 = !DILocation(line: 88, column: 7, scope: !244)
!286 = !DILocation(line: 90, column: 3, scope: !244)
!287 = !DILocation(line: 90, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 90, column: 3)
!289 = distinct !DILexicalBlock(scope: !244, file: !2, line: 90, column: 3)
!290 = !DILocation(line: 90, column: 3, scope: !289)
!291 = !DILocation(line: 90, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !2, line: 90, column: 3)
!293 = !DILocation(line: 91, column: 3, scope: !244)
!294 = !DILocation(line: 91, column: 3, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 91, column: 3)
!296 = distinct !DILexicalBlock(scope: !244, file: !2, line: 91, column: 3)
!297 = !DILocation(line: 91, column: 3, scope: !296)
!298 = !DILocation(line: 91, column: 3, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !2, line: 91, column: 3)
!300 = !DILocation(line: 94, column: 51, scope: !244)
!301 = !DILocation(line: 94, column: 58, scope: !244)
!302 = !DILocation(line: 94, column: 56, scope: !244)
!303 = !DILocation(line: 95, column: 51, scope: !244)
!304 = !DILocation(line: 95, column: 58, scope: !244)
!305 = !DILocation(line: 95, column: 56, scope: !244)
!306 = !DILocation(line: 94, column: 20, scope: !244)
!307 = !DILocation(line: 94, column: 18, scope: !244)
!308 = !DILocation(line: 99, column: 31, scope: !244)
!309 = !DILocation(line: 99, column: 58, scope: !244)
!310 = !DILocation(line: 99, column: 69, scope: !244)
!311 = !DILocation(line: 99, column: 47, scope: !244)
!312 = !DILocation(line: 100, column: 42, scope: !244)
!313 = !DILocation(line: 100, column: 53, scope: !244)
!314 = !DILocation(line: 100, column: 31, scope: !244)
!315 = !DILocation(line: 99, column: 5, scope: !244)
!316 = !DILocation(line: 98, column: 22, scope: !244)
!317 = !DILocation(line: 103, column: 44, scope: !244)
!318 = !DILocation(line: 104, column: 44, scope: !244)
!319 = !DILocation(line: 104, column: 55, scope: !244)
!320 = !DILocation(line: 103, column: 21, scope: !244)
!321 = !DILocation(line: 103, column: 19, scope: !244)
!322 = !DILocation(line: 107, column: 33, scope: !244)
!323 = !DILocation(line: 107, column: 50, scope: !244)
!324 = !DILocation(line: 107, column: 13, scope: !244)
!325 = !DILocation(line: 107, column: 11, scope: !244)
!326 = !DILocation(line: 110, column: 25, scope: !244)
!327 = !DILocation(line: 110, column: 3, scope: !244)
!328 = !DILocation(line: 111, column: 25, scope: !244)
!329 = !DILocation(line: 111, column: 3, scope: !244)
!330 = !DILocation(line: 112, column: 25, scope: !244)
!331 = !DILocation(line: 112, column: 3, scope: !244)
!332 = !DILocation(line: 114, column: 10, scope: !244)
!333 = !DILocation(line: 115, column: 1, scope: !244)
!334 = !DILocation(line: 114, column: 3, scope: !244)
!335 = !DISubprogram(name: "gt_calloc_mem", scope: !336, file: !336, line: 62, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!337 = !DISubroutineType(types: !338)
!338 = !{!87, !339, !339, !114, !104}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !340, line: 70, baseType: !341)
!340 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!341 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!342 = !DISubprogram(name: "gt_str_new", scope: !125, file: !125, line: 30, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubroutineType(types: !344)
!344 = !{!123}
!345 = !DISubprogram(name: "gt_output_file_info_new", scope: !131, file: !131, line: 31, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!346 = !DISubroutineType(types: !347)
!347 = !{!129}
!348 = !DISubprogram(name: "gt_file_delete", scope: !136, file: !136, line: 110, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !134}
!351 = !DISubprogram(name: "gt_output_file_info_delete", scope: !131, file: !131, line: 42, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !129}
!354 = !DISubprogram(name: "gt_str_delete", scope: !125, file: !125, line: 90, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !123}
!357 = !DISubprogram(name: "gt_free_mem", scope: !336, file: !336, line: 75, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !87, !114, !104}
!360 = !DISubprogram(name: "fprintf", scope: !361, file: !361, line: 350, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!362 = !DISubroutineType(types: !363)
!363 = !{!104, !364, !420, null}
!364 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !367, line: 7, baseType: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !369, line: 49, size: 1728, elements: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!370 = !{!371, !372, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !387, !389, !390, !391, !395, !397, !399, !403, !406, !408, !411, !414, !415, !416, !417, !418}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !368, file: !369, line: 51, baseType: !104, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !368, file: !369, line: 54, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !368, file: !369, line: 55, baseType: !373, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !368, file: !369, line: 56, baseType: !373, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !368, file: !369, line: 57, baseType: !373, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !368, file: !369, line: 58, baseType: !373, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !368, file: !369, line: 59, baseType: !373, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !368, file: !369, line: 60, baseType: !373, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !368, file: !369, line: 61, baseType: !373, size: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !368, file: !369, line: 64, baseType: !373, size: 64, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !368, file: !369, line: 65, baseType: !373, size: 64, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !368, file: !369, line: 66, baseType: !373, size: 64, offset: 704)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !368, file: !369, line: 68, baseType: !385, size: 64, offset: 768)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !369, line: 36, flags: DIFlagFwdDecl)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !368, file: !369, line: 70, baseType: !388, size: 64, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !368, file: !369, line: 72, baseType: !104, size: 32, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !368, file: !369, line: 73, baseType: !104, size: 32, offset: 928)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !368, file: !369, line: 74, baseType: !392, size: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !393, line: 152, baseType: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!394 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !368, file: !369, line: 77, baseType: !396, size: 16, offset: 1024)
!396 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !368, file: !369, line: 78, baseType: !398, size: 8, offset: 1040)
!398 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !368, file: !369, line: 79, baseType: !400, size: 8, offset: 1048)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 1)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !368, file: !369, line: 81, baseType: !404, size: 64, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !369, line: 43, baseType: null)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !368, file: !369, line: 89, baseType: !407, size: 64, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !393, line: 153, baseType: !394)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !368, file: !369, line: 91, baseType: !409, size: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !369, line: 37, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !368, file: !369, line: 92, baseType: !412, size: 64, offset: 1280)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !369, line: 38, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !368, file: !369, line: 93, baseType: !388, size: 64, offset: 1344)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !368, file: !369, line: 94, baseType: !87, size: 64, offset: 1408)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !368, file: !369, line: 95, baseType: !339, size: 64, offset: 1472)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !368, file: !369, line: 96, baseType: !104, size: 32, offset: 1536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !368, file: !369, line: 98, baseType: !419, size: 160, offset: 1568)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !61)
!420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!421 = !DISubprogram(name: "abort", scope: !422, file: !422, line: 598, type: !423, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!422 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!423 = !DISubroutineType(types: !424)
!424 = !{null}
!425 = !DISubprogram(name: "gt_option_parser_new", scope: !98, file: !98, line: 63, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!96, !114, !114}
!428 = !DISubprogram(name: "gt_option_new_string", scope: !98, file: !98, line: 291, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{!197, !114, !114, !123, !114}
!431 = !DISubprogram(name: "gt_option_is_mandatory", scope: !98, file: !98, line: 332, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !197}
!434 = !DISubprogram(name: "gt_option_parser_add_option", scope: !98, file: !98, line: 66, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !96, !197}
!437 = !DISubprogram(name: "gt_output_file_info_register_options", scope: !131, file: !131, line: 37, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !129, !96, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!441 = !DISubprogram(name: "gt_error_is_set", scope: !107, file: !107, line: 64, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !445}
!444 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!447 = !DISubprogram(name: "gt_gff3_in_stream_new_unsorted", scope: !448, file: !448, line: 34, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DIFile(filename: "src/extended/gff3_in_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "af35ff1d0440b18a488327315ab83460")
!449 = !DISubroutineType(types: !450)
!450 = !{!253, !104, !113}
!451 = !DISubprogram(name: "gt_dup_feature_stream_new", scope: !452, file: !452, line: 25, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DIFile(filename: "src/extended/dup_feature_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1093e2c2448fd1300d416c9309db836d")
!453 = !DISubroutineType(types: !454)
!454 = !{!253, !253, !114, !114}
!455 = !DISubprogram(name: "gt_str_get", scope: !125, file: !125, line: 40, type: !456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!456 = !DISubroutineType(types: !457)
!457 = !{!373, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!460 = !DISubprogram(name: "gt_gff3_out_stream_new", scope: !461, file: !461, line: 32, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DIFile(filename: "src/extended/gff3_out_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "ae3115019c3af64b2321269918f01c2e")
!462 = !DISubroutineType(types: !463)
!463 = !{!253, !253, !134}
!464 = !DISubprogram(name: "gt_node_stream_pull", scope: !255, file: !255, line: 49, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DISubroutineType(types: !466)
!466 = !{!104, !253, !105}
!467 = !DISubprogram(name: "gt_node_stream_delete", scope: !255, file: !255, line: 54, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !253}
