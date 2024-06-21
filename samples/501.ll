; ModuleID = 'samples/501.bc'
source_filename = "src/mgth/mg_xmlparser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i16, i16, i64, i64, double, double, %struct.MatrixMemory, %struct.MetagenomeThreaderArguments, %struct.HitsStatistic, %struct.XMLparser_static, %struct.GenePrediction_static }
%struct.MatrixMemory = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MetagenomeThreaderArguments = type { double, double, double, double, double, double, double, double, double, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i64 }
%struct.HitsStatistic = type { ptr, ptr, ptr, i64, i64 }
%struct.XMLparser_static = type { i16, i16, i16, i16, i16, i16, i64 }
%struct.GenePrediction_static = type { double, double, i16, i16, i16, i64, i64 }
%struct.gt_cstr_nofree_ulp_map_entry = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !7
@__func__.mg_xmlparser = private unnamed_addr constant [13 x i8] c"mg_xmlparser\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [24 x i8] c"src/mgth/mg_xmlparser.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [52 x i8] c"an error occurred parsing line %lu of file \22%s\22: %s\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [77 x i8] c"an error occurred while finishing the parsing of file               \22%s\22: %s\00", align 1, !dbg !28
@__func__.endElement = private unnamed_addr constant [11 x i8] c"endElement\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [100 x i8] c"query-dna entry in xml-file does not exist in                     query-hash. wrong query-dna file?\00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [15 x i8] c"gi_ptr != NULL\00", align 1, !dbg !43
@.str.7 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !48
@.str.8 = private unnamed_addr constant [85 x i8] c"incorrect gi-hit-number in xmlfile - required format                     is gi|[0-9]\00", align 1, !dbg !51
@.str.9 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !56
@.str.10 = private unnamed_addr constant [5 x i8] c"%s \0A\00", align 1, !dbg !61
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !66

; Function Attrs: nounwind uwtable
define i32 @mg_xmlparser(ptr noundef %parsestruct_ptr, ptr noundef %fp_xmlfile, ptr noundef %err) #0 !dbg !306 {
entry:
  %parsestruct_ptr.addr = alloca ptr, align 8
  %fp_xmlfile.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %error = alloca i32, align 4
  %buf = alloca ptr, align 8
  %parser = alloca ptr, align 8
  store ptr %parsestruct_ptr, ptr %parsestruct_ptr.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %parsestruct_ptr.addr, metadata !310, metadata !DIExpression()), !dbg !324
  store ptr %fp_xmlfile, ptr %fp_xmlfile.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %fp_xmlfile.addr, metadata !311, metadata !DIExpression()), !dbg !325
  store ptr %err, ptr %err.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !312, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #10, !dbg !327
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !313, metadata !DIExpression()), !dbg !328
  store i32 0, ptr %had_err, align 4, !dbg !328, !tbaa !329
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !331
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !314, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #10, !dbg !333
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !315, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 8, ptr %parser) #10, !dbg !335
  tail call void @llvm.dbg.declare(metadata ptr %parser, metadata !316, metadata !DIExpression()), !dbg !336
  br label %do.body, !dbg !337

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !338, !tbaa !320
  %tobool = icmp ne ptr %0, null, !dbg !338
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !338

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !338, !tbaa !320
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !338
  br i1 %call, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !342, !tbaa !320
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.mg_xmlparser, ptr noundef @.str.2, i32 noundef 289), !dbg !342
  call void @abort() #11, !dbg !342
  unreachable, !dbg !342

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !341

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !341

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_str_new(), !dbg !344
  store ptr %call2, ptr %buf, align 8, !dbg !345, !tbaa !320
  %call3 = call ptr @XML_ParserCreate(ptr noundef null), !dbg !346
  store ptr %call3, ptr %parser, align 8, !dbg !347, !tbaa !320
  %3 = load ptr, ptr %parser, align 8, !dbg !348, !tbaa !320
  %4 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !349, !tbaa !320
  call void @XML_SetUserData(ptr noundef %3, ptr noundef %4), !dbg !350
  %5 = load ptr, ptr %parser, align 8, !dbg !351, !tbaa !320
  call void @XML_SetElementHandler(ptr noundef %5, ptr noundef @startElement, ptr noundef @endElement), !dbg !352
  %6 = load ptr, ptr %parser, align 8, !dbg !353, !tbaa !320
  call void @XML_SetCharacterDataHandler(ptr noundef %6, ptr noundef @textElement), !dbg !354
  br label %while.cond, !dbg !355

while.cond:                                       ; preds = %if.end21, %do.end
  %7 = load ptr, ptr %buf, align 8, !dbg !356, !tbaa !320
  %8 = load ptr, ptr %fp_xmlfile.addr, align 8, !dbg !357, !tbaa !320
  %call4 = call i32 @gt_str_read_next_line_generic(ptr noundef %7, ptr noundef %8), !dbg !358
  %cmp = icmp ne i32 %call4, -1, !dbg !359
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !360

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, ptr %had_err, align 4, !dbg !361, !tbaa !329
  %tobool5 = icmp ne i32 %9, 0, !dbg !362
  %lnot = xor i1 %tobool5, true, !dbg !362
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !363
  br i1 %10, label %while.body, label %while.end, !dbg !355

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !364, !tbaa !320
  %xml_linenumber = getelementptr inbounds %struct.ParseStruct, ptr %11, i32 0, i32 33, !dbg !364
  %12 = load i64, ptr %xml_linenumber, align 8, !dbg !366, !tbaa !367
  %inc = add i64 %12, 1, !dbg !366
  store i64 %inc, ptr %xml_linenumber, align 8, !dbg !366, !tbaa !367
  %13 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !378, !tbaa !320
  %had_err6 = getelementptr inbounds %struct.ParseStruct, ptr %13, i32 0, i32 26, !dbg !378
  %14 = load i32, ptr %had_err6, align 8, !dbg !378, !tbaa !380
  %tobool7 = icmp ne i32 %14, 0, !dbg !378
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !381

if.then8:                                         ; preds = %while.body
  store i32 -1, ptr %had_err, align 4, !dbg !382, !tbaa !329
  br label %if.end9, !dbg !384

if.end9:                                          ; preds = %if.then8, %while.body
  %15 = load ptr, ptr %parser, align 8, !dbg !385, !tbaa !320
  %16 = load ptr, ptr %buf, align 8, !dbg !387, !tbaa !320
  %call10 = call ptr @gt_str_get(ptr noundef %16), !dbg !388
  %17 = load ptr, ptr %buf, align 8, !dbg !389, !tbaa !320
  %call11 = call i64 @gt_str_length(ptr noundef %17), !dbg !390
  %conv = trunc i64 %call11 to i32, !dbg !390
  %call12 = call i32 @XML_Parse(ptr noundef %15, ptr noundef %call10, i32 noundef %conv, i32 noundef 0), !dbg !391
  %cmp13 = icmp eq i32 %call12, 0, !dbg !392
  br i1 %cmp13, label %land.lhs.true, label %if.end21, !dbg !393

land.lhs.true:                                    ; preds = %if.end9
  %18 = load i32, ptr %had_err, align 4, !dbg !394, !tbaa !329
  %tobool15 = icmp ne i32 %18, 0, !dbg !394
  br i1 %tobool15, label %if.end21, label %if.then16, !dbg !395

if.then16:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %parser, align 8, !dbg !396, !tbaa !320
  %call17 = call i32 @XML_GetErrorCode(ptr noundef %19), !dbg !398
  store i32 %call17, ptr %error, align 4, !dbg !399, !tbaa !400
  %20 = load ptr, ptr %err.addr, align 8, !dbg !401, !tbaa !320
  %21 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !402, !tbaa !320
  %xml_linenumber18 = getelementptr inbounds %struct.ParseStruct, ptr %21, i32 0, i32 33, !dbg !402
  %22 = load i64, ptr %xml_linenumber18, align 8, !dbg !402, !tbaa !367
  %23 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !403, !tbaa !320
  %xmlfile = getelementptr inbounds %struct.ParseStruct, ptr %23, i32 0, i32 9, !dbg !403
  %24 = load ptr, ptr %xmlfile, align 8, !dbg !403, !tbaa !404
  %call19 = call ptr @gt_str_get(ptr noundef %24), !dbg !405
  %25 = load i32, ptr %error, align 4, !dbg !406, !tbaa !400
  %call20 = call ptr @XML_ErrorString(i32 noundef %25), !dbg !407
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %20, ptr noundef @.str.3, i64 noundef %22, ptr noundef %call19, ptr noundef %call20), !dbg !408
  store i32 -1, ptr %had_err, align 4, !dbg !409, !tbaa !329
  br label %if.end21, !dbg !410

if.end21:                                         ; preds = %if.then16, %land.lhs.true, %if.end9
  %26 = load ptr, ptr %buf, align 8, !dbg !411, !tbaa !320
  call void @gt_str_reset(ptr noundef %26), !dbg !412
  br label %while.cond, !dbg !355, !llvm.loop !413

while.end:                                        ; preds = %land.end
  %27 = load ptr, ptr %parser, align 8, !dbg !416, !tbaa !320
  %call22 = call i32 @XML_Parse(ptr noundef %27, ptr noundef null, i32 noundef 0, i32 noundef 1), !dbg !418
  %cmp23 = icmp eq i32 %call22, 0, !dbg !419
  br i1 %cmp23, label %land.lhs.true25, label %if.end32, !dbg !420

land.lhs.true25:                                  ; preds = %while.end
  %28 = load i32, ptr %had_err, align 4, !dbg !421, !tbaa !329
  %tobool26 = icmp ne i32 %28, 0, !dbg !421
  br i1 %tobool26, label %if.end32, label %if.then27, !dbg !422

if.then27:                                        ; preds = %land.lhs.true25
  %29 = load ptr, ptr %parser, align 8, !dbg !423, !tbaa !320
  %call28 = call i32 @XML_GetErrorCode(ptr noundef %29), !dbg !425
  store i32 %call28, ptr %error, align 4, !dbg !426, !tbaa !400
  %30 = load ptr, ptr %err.addr, align 8, !dbg !427, !tbaa !320
  %31 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !428, !tbaa !320
  %xmlfile29 = getelementptr inbounds %struct.ParseStruct, ptr %31, i32 0, i32 9, !dbg !428
  %32 = load ptr, ptr %xmlfile29, align 8, !dbg !428, !tbaa !404
  %call30 = call ptr @gt_str_get(ptr noundef %32), !dbg !429
  %33 = load i32, ptr %error, align 4, !dbg !430, !tbaa !400
  %call31 = call ptr @XML_ErrorString(i32 noundef %33), !dbg !431
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %30, ptr noundef @.str.4, ptr noundef %call30, ptr noundef %call31), !dbg !432
  store i32 -1, ptr %had_err, align 4, !dbg !433, !tbaa !329
  br label %if.end32, !dbg !434

if.end32:                                         ; preds = %if.then27, %land.lhs.true25, %while.end
  %34 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !435, !tbaa !320
  %xml_tag_flag = getelementptr inbounds %struct.ParseStruct, ptr %34, i32 0, i32 30, !dbg !435
  %35 = load i16, ptr %xml_tag_flag, align 2, !dbg !435, !tbaa !437
  %conv33 = zext i16 %35 to i32, !dbg !435
  %tobool34 = icmp ne i32 %conv33, 0, !dbg !435
  br i1 %tobool34, label %land.lhs.true35, label %if.end50, !dbg !438

land.lhs.true35:                                  ; preds = %if.end32
  %36 = load i32, ptr %had_err, align 4, !dbg !439, !tbaa !329
  %tobool36 = icmp ne i32 %36, 0, !dbg !439
  br i1 %tobool36, label %land.lhs.true37, label %if.end50, !dbg !440

land.lhs.true37:                                  ; preds = %land.lhs.true35
  %37 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !441, !tbaa !320
  %giexp_flag = getelementptr inbounds %struct.ParseStruct, ptr %37, i32 0, i32 31, !dbg !441
  %38 = load i16, ptr %giexp_flag, align 4, !dbg !441, !tbaa !442
  %conv38 = zext i16 %38 to i32, !dbg !441
  %tobool39 = icmp ne i32 %conv38, 0, !dbg !441
  br i1 %tobool39, label %if.then40, label %if.end50, !dbg !443

if.then40:                                        ; preds = %land.lhs.true37
  %39 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !444, !tbaa !320
  %matrix_info = getelementptr inbounds %struct.ParseStruct, ptr %39, i32 0, i32 37, !dbg !444
  %hit_gi_nr = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info, i32 0, i32 6, !dbg !444
  %40 = load ptr, ptr %hit_gi_nr, align 8, !dbg !444, !tbaa !446
  call void @gt_str_array_delete(ptr noundef %40), !dbg !447
  %41 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !448, !tbaa !320
  %matrix_info41 = getelementptr inbounds %struct.ParseStruct, ptr %41, i32 0, i32 37, !dbg !448
  %hit_num = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info41, i32 0, i32 7, !dbg !448
  %42 = load ptr, ptr %hit_num, align 8, !dbg !448, !tbaa !449
  call void @gt_str_array_delete(ptr noundef %42), !dbg !450
  %43 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !451, !tbaa !320
  %matrix_info42 = getelementptr inbounds %struct.ParseStruct, ptr %43, i32 0, i32 37, !dbg !451
  %hit_dna = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info42, i32 0, i32 13, !dbg !451
  %44 = load ptr, ptr %hit_dna, align 8, !dbg !451, !tbaa !452
  call void @gt_str_array_delete(ptr noundef %44), !dbg !453
  %45 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !454, !tbaa !320
  %matrix_info43 = getelementptr inbounds %struct.ParseStruct, ptr %45, i32 0, i32 37, !dbg !454
  %hit_gi_def = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info43, i32 0, i32 8, !dbg !454
  %46 = load ptr, ptr %hit_gi_def, align 8, !dbg !454, !tbaa !455
  call void @gt_str_array_delete(ptr noundef %46), !dbg !456
  %47 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !457, !tbaa !320
  %matrix_info44 = getelementptr inbounds %struct.ParseStruct, ptr %47, i32 0, i32 37, !dbg !457
  %hit_acc = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info44, i32 0, i32 9, !dbg !457
  %48 = load ptr, ptr %hit_acc, align 8, !dbg !457, !tbaa !458
  call void @gt_str_array_delete(ptr noundef %48), !dbg !459
  %49 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !460, !tbaa !320
  %matrix_info45 = getelementptr inbounds %struct.ParseStruct, ptr %49, i32 0, i32 37, !dbg !460
  %fasta_row = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info45, i32 0, i32 10, !dbg !460
  %50 = load ptr, ptr %fasta_row, align 8, !dbg !460, !tbaa !461
  call void @gt_str_array_delete(ptr noundef %50), !dbg !462
  %51 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !463, !tbaa !320
  %matrix_info46 = getelementptr inbounds %struct.ParseStruct, ptr %51, i32 0, i32 37, !dbg !463
  %hit_from = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info46, i32 0, i32 11, !dbg !463
  %52 = load ptr, ptr %hit_from, align 8, !dbg !463, !tbaa !464
  call void @gt_str_array_delete(ptr noundef %52), !dbg !465
  %53 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !466, !tbaa !320
  %matrix_info47 = getelementptr inbounds %struct.ParseStruct, ptr %53, i32 0, i32 37, !dbg !466
  %hit_to = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info47, i32 0, i32 12, !dbg !466
  %54 = load ptr, ptr %hit_to, align 8, !dbg !466, !tbaa !467
  call void @gt_str_array_delete(ptr noundef %54), !dbg !468
  %55 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !469, !tbaa !320
  %matrix_info48 = getelementptr inbounds %struct.ParseStruct, ptr %55, i32 0, i32 37, !dbg !469
  %hsp_qseq = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info48, i32 0, i32 14, !dbg !469
  %56 = load ptr, ptr %hsp_qseq, align 8, !dbg !469, !tbaa !470
  call void @gt_str_array_delete(ptr noundef %56), !dbg !471
  %57 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !472, !tbaa !320
  %matrix_info49 = getelementptr inbounds %struct.ParseStruct, ptr %57, i32 0, i32 37, !dbg !472
  %hsp_hseq = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info49, i32 0, i32 15, !dbg !472
  %58 = load ptr, ptr %hsp_hseq, align 8, !dbg !472, !tbaa !473
  call void @gt_str_array_delete(ptr noundef %58), !dbg !474
  %59 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !475, !tbaa !320
  %query_frame_tmp = getelementptr inbounds %struct.ParseStruct, ptr %59, i32 0, i32 3, !dbg !475
  %60 = load ptr, ptr %query_frame_tmp, align 8, !dbg !475, !tbaa !476
  call void @gt_str_array_delete(ptr noundef %60), !dbg !477
  %61 = load ptr, ptr %parsestruct_ptr.addr, align 8, !dbg !478, !tbaa !320
  %hit_frame_tmp = getelementptr inbounds %struct.ParseStruct, ptr %61, i32 0, i32 4, !dbg !478
  %62 = load ptr, ptr %hit_frame_tmp, align 8, !dbg !478, !tbaa !479
  call void @gt_str_array_delete(ptr noundef %62), !dbg !480
  br label %if.end50, !dbg !481

if.end50:                                         ; preds = %if.then40, %land.lhs.true37, %land.lhs.true35, %if.end32
  %63 = load ptr, ptr %parser, align 8, !dbg !482, !tbaa !320
  call void @XML_ParserFree(ptr noundef %63), !dbg !483
  %64 = load ptr, ptr %buf, align 8, !dbg !484, !tbaa !320
  call void @gt_str_delete(ptr noundef %64), !dbg !485
  %65 = load i32, ptr %had_err, align 4, !dbg !486, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 8, ptr %parser) #10, !dbg !487
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #10, !dbg !487
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !487
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #10, !dbg !487
  ret i32 %65, !dbg !488
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !489 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !494 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !558 void @abort() #3

declare !dbg !562 ptr @gt_str_new() #2

declare !dbg !565 ptr @XML_ParserCreate(ptr noundef) #2

declare !dbg !572 void @XML_SetUserData(ptr noundef, ptr noundef) #2

declare !dbg !575 void @XML_SetElementHandler(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @startElement(ptr noundef %data, ptr noundef %name, ptr noundef %atts) #0 !dbg !587 {
entry:
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %atts.addr = alloca ptr, align 8
  %parsestruct_ptr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !592, metadata !DIExpression()), !dbg !596
  store ptr %name, ptr %name.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !593, metadata !DIExpression()), !dbg !597
  store ptr %atts, ptr %atts.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %atts.addr, metadata !594, metadata !DIExpression()), !dbg !598
  call void @llvm.lifetime.start.p0(i64 8, ptr %parsestruct_ptr) #10, !dbg !599
  tail call void @llvm.dbg.declare(metadata ptr %parsestruct_ptr, metadata !595, metadata !DIExpression()), !dbg !600
  %0 = load ptr, ptr %data.addr, align 8, !dbg !601, !tbaa !320
  store ptr %0, ptr %parsestruct_ptr, align 8, !dbg !600, !tbaa !320
  %1 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !602, !tbaa !320
  %had_err = getelementptr inbounds %struct.ParseStruct, ptr %1, i32 0, i32 26, !dbg !602
  %2 = load i32, ptr %had_err, align 8, !dbg !602, !tbaa !380
  %tobool = icmp ne i32 %2, 0, !dbg !602
  br i1 %tobool, label %if.end27, label %if.then, !dbg !604

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !605, !tbaa !320
  %4 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !608, !tbaa !320
  %query_array = getelementptr inbounds %struct.ParseStruct, ptr %4, i32 0, i32 0, !dbg !608
  %5 = load ptr, ptr %query_array, align 8, !dbg !608, !tbaa !609
  %6 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !610, !tbaa !320
  %xmlparser_static = getelementptr inbounds %struct.ParseStruct, ptr %6, i32 0, i32 40, !dbg !610
  %query_array_index_start = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static, i32 0, i32 0, !dbg !610
  %7 = load i16, ptr %query_array_index_start, align 8, !dbg !610, !tbaa !611
  %conv = zext i16 %7 to i64, !dbg !610
  %call = call ptr @gt_str_array_get(ptr noundef %5, i64 noundef %conv), !dbg !612
  %call1 = call i32 @strcmp(ptr noundef %3, ptr noundef %call) #12, !dbg !613
  %cmp = icmp eq i32 %call1, 0, !dbg !614
  br i1 %cmp, label %if.then3, label %if.else, !dbg !615

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !616, !tbaa !320
  %xmlparser_static4 = getelementptr inbounds %struct.ParseStruct, ptr %8, i32 0, i32 40, !dbg !616
  %query_array_index_start5 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static4, i32 0, i32 0, !dbg !616
  %9 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !618, !tbaa !320
  %def_flag = getelementptr inbounds %struct.ParseStruct, ptr %9, i32 0, i32 27, !dbg !618
  call void @flag_setting(ptr noundef %query_array_index_start5, ptr noundef %def_flag, i8 noundef signext 113), !dbg !619
  br label %if.end26, !dbg !620

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %name.addr, align 8, !dbg !621, !tbaa !320
  %11 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !623, !tbaa !320
  %hit_array = getelementptr inbounds %struct.ParseStruct, ptr %11, i32 0, i32 1, !dbg !623
  %12 = load ptr, ptr %hit_array, align 8, !dbg !623, !tbaa !624
  %13 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !625, !tbaa !320
  %xmlparser_static6 = getelementptr inbounds %struct.ParseStruct, ptr %13, i32 0, i32 40, !dbg !625
  %hit_array_index_start = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static6, i32 0, i32 1, !dbg !625
  %14 = load i16, ptr %hit_array_index_start, align 2, !dbg !625, !tbaa !626
  %conv7 = zext i16 %14 to i64, !dbg !625
  %call8 = call ptr @gt_str_array_get(ptr noundef %12, i64 noundef %conv7), !dbg !627
  %call9 = call i32 @strcmp(ptr noundef %10, ptr noundef %call8) #12, !dbg !628
  %cmp10 = icmp eq i32 %call9, 0, !dbg !629
  br i1 %cmp10, label %if.then12, label %if.else15, !dbg !630

if.then12:                                        ; preds = %if.else
  %15 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !631, !tbaa !320
  %xmlparser_static13 = getelementptr inbounds %struct.ParseStruct, ptr %15, i32 0, i32 40, !dbg !631
  %hit_array_index_start14 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static13, i32 0, i32 1, !dbg !631
  %16 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !633, !tbaa !320
  %hit_flag = getelementptr inbounds %struct.ParseStruct, ptr %16, i32 0, i32 28, !dbg !633
  call void @flag_setting(ptr noundef %hit_array_index_start14, ptr noundef %hit_flag, i8 noundef signext 104), !dbg !634
  br label %if.end25, !dbg !635

if.else15:                                        ; preds = %if.else
  %17 = load ptr, ptr %name.addr, align 8, !dbg !636, !tbaa !320
  %18 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !638, !tbaa !320
  %hit_hsp_array = getelementptr inbounds %struct.ParseStruct, ptr %18, i32 0, i32 2, !dbg !638
  %19 = load ptr, ptr %hit_hsp_array, align 8, !dbg !638, !tbaa !639
  %20 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !640, !tbaa !320
  %xmlparser_static16 = getelementptr inbounds %struct.ParseStruct, ptr %20, i32 0, i32 40, !dbg !640
  %hit_hsp_array_index_start = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static16, i32 0, i32 2, !dbg !640
  %21 = load i16, ptr %hit_hsp_array_index_start, align 4, !dbg !640, !tbaa !641
  %conv17 = zext i16 %21 to i64, !dbg !640
  %call18 = call ptr @gt_str_array_get(ptr noundef %19, i64 noundef %conv17), !dbg !642
  %call19 = call i32 @strcmp(ptr noundef %17, ptr noundef %call18) #12, !dbg !643
  %cmp20 = icmp eq i32 %call19, 0, !dbg !644
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !645

if.then22:                                        ; preds = %if.else15
  %22 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !646, !tbaa !320
  %xmlparser_static23 = getelementptr inbounds %struct.ParseStruct, ptr %22, i32 0, i32 40, !dbg !646
  %hit_hsp_array_index_start24 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static23, i32 0, i32 2, !dbg !646
  %23 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !648, !tbaa !320
  %hit_hsp_flag = getelementptr inbounds %struct.ParseStruct, ptr %23, i32 0, i32 29, !dbg !648
  call void @flag_setting(ptr noundef %hit_hsp_array_index_start24, ptr noundef %hit_hsp_flag, i8 noundef signext 116), !dbg !649
  br label %if.end, !dbg !650

if.end:                                           ; preds = %if.then22, %if.else15
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then3
  br label %if.end27, !dbg !651

if.end27:                                         ; preds = %if.end26, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %parsestruct_ptr) #10, !dbg !652
  ret void, !dbg !652
}

; Function Attrs: nounwind uwtable
define internal void @endElement(ptr noundef %data, ptr noundef %name) #0 !dbg !653 {
entry:
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parsestruct_ptr = alloca ptr, align 8
  %err = alloca ptr, align 8
  %gi_len = alloca i16, align 2
  %ulong_numb_buf = alloca i64, align 8
  %query_nr = alloca i64, align 8
  %query_nr_p = alloca ptr, align 8
  %numb_buf = alloca i64, align 8
  %gi_ptr = alloca ptr, align 8
  %seq = alloca ptr, align 8
  %hit_nr = alloca i64, align 8
  %hit_tmp = alloca ptr, align 8
  %hit_dna_tmp = alloca ptr, align 8
  %seq341 = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !657, metadata !DIExpression()), !dbg !695
  store ptr %name, ptr %name.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !658, metadata !DIExpression()), !dbg !696
  call void @llvm.lifetime.start.p0(i64 8, ptr %parsestruct_ptr) #10, !dbg !697
  tail call void @llvm.dbg.declare(metadata ptr %parsestruct_ptr, metadata !659, metadata !DIExpression()), !dbg !698
  %0 = load ptr, ptr %data.addr, align 8, !dbg !699, !tbaa !320
  store ptr %0, ptr %parsestruct_ptr, align 8, !dbg !698, !tbaa !320
  %1 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !700, !tbaa !320
  %had_err = getelementptr inbounds %struct.ParseStruct, ptr %1, i32 0, i32 26, !dbg !700
  %2 = load i32, ptr %had_err, align 8, !dbg !700, !tbaa !380
  %tobool = icmp ne i32 %2, 0, !dbg !700
  br i1 %tobool, label %if.end529, label %if.then, !dbg !701

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #10, !dbg !702
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !660, metadata !DIExpression()), !dbg !703
  %3 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !704, !tbaa !320
  %err1 = getelementptr inbounds %struct.ParseStruct, ptr %3, i32 0, i32 25, !dbg !704
  %4 = load ptr, ptr %err1, align 8, !dbg !704, !tbaa !705
  store ptr %4, ptr %err, align 8, !dbg !703, !tbaa !320
  call void @llvm.lifetime.start.p0(i64 2, ptr %gi_len) #10, !dbg !706
  tail call void @llvm.dbg.declare(metadata ptr %gi_len, metadata !663, metadata !DIExpression()), !dbg !707
  store i16 0, ptr %gi_len, align 2, !dbg !707, !tbaa !708
  call void @llvm.lifetime.start.p0(i64 8, ptr %ulong_numb_buf) #10, !dbg !709
  tail call void @llvm.dbg.declare(metadata ptr %ulong_numb_buf, metadata !664, metadata !DIExpression()), !dbg !710
  store i64 0, ptr %ulong_numb_buf, align 8, !dbg !710, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %query_nr) #10, !dbg !709
  tail call void @llvm.dbg.declare(metadata ptr %query_nr, metadata !665, metadata !DIExpression()), !dbg !712
  store i64 0, ptr %query_nr, align 8, !dbg !712, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %query_nr_p) #10, !dbg !709
  tail call void @llvm.dbg.declare(metadata ptr %query_nr_p, metadata !666, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %numb_buf) #10, !dbg !714
  tail call void @llvm.dbg.declare(metadata ptr %numb_buf, metadata !668, metadata !DIExpression()), !dbg !715
  store i64 0, ptr %numb_buf, align 8, !dbg !715, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %gi_ptr) #10, !dbg !716
  tail call void @llvm.dbg.declare(metadata ptr %gi_ptr, metadata !670, metadata !DIExpression()), !dbg !717
  store ptr null, ptr %gi_ptr, align 8, !dbg !717, !tbaa !320
  br label %do.body, !dbg !718

do.body:                                          ; preds = %if.then
  %5 = load ptr, ptr %err, align 8, !dbg !719, !tbaa !320
  %tobool2 = icmp ne ptr %5, null, !dbg !719
  br i1 %tobool2, label %lor.lhs.false, label %if.end, !dbg !719

lor.lhs.false:                                    ; preds = %do.body
  %6 = load ptr, ptr %err, align 8, !dbg !719, !tbaa !320
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %6), !dbg !719
  br i1 %call, label %if.then3, label %if.end, !dbg !722

if.then3:                                         ; preds = %lor.lhs.false
  %7 = load ptr, ptr @stderr, align 8, !dbg !723, !tbaa !320
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.endElement, ptr noundef @.str.2, i32 noundef 420), !dbg !723
  call void @abort() #11, !dbg !723
  unreachable, !dbg !723

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !722

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !722

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %name.addr, align 8, !dbg !725, !tbaa !320
  %9 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !727, !tbaa !320
  %xml_tag = getelementptr inbounds %struct.ParseStruct, ptr %9, i32 0, i32 6, !dbg !727
  %10 = load ptr, ptr %xml_tag, align 8, !dbg !727, !tbaa !728
  %call5 = call ptr @gt_str_get(ptr noundef %10), !dbg !729
  %call6 = call i32 @strcmp(ptr noundef %8, ptr noundef %call5) #12, !dbg !730
  %cmp = icmp eq i32 %call6, 0, !dbg !731
  br i1 %cmp, label %land.lhs.true, label %if.end36, !dbg !732

land.lhs.true:                                    ; preds = %do.end
  %11 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !733, !tbaa !320
  %giexp_flag = getelementptr inbounds %struct.ParseStruct, ptr %11, i32 0, i32 31, !dbg !733
  %12 = load i16, ptr %giexp_flag, align 4, !dbg !733, !tbaa !442
  %conv = zext i16 %12 to i32, !dbg !733
  %tobool7 = icmp ne i32 %conv, 0, !dbg !733
  br i1 %tobool7, label %if.then8, label %if.end36, !dbg !734

if.then8:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !735, !tbaa !320
  %xmlparser_static = getelementptr inbounds %struct.ParseStruct, ptr %13, i32 0, i32 40, !dbg !735
  %hit_counter = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static, i32 0, i32 6, !dbg !735
  %14 = load i64, ptr %hit_counter, align 8, !dbg !735, !tbaa !738
  %cmp9 = icmp ugt i64 %14, 0, !dbg !739
  br i1 %cmp9, label %if.then11, label %if.end21, !dbg !740

if.then11:                                        ; preds = %if.then8
  %15 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !741, !tbaa !320
  %16 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !743, !tbaa !320
  %xmlparser_static12 = getelementptr inbounds %struct.ParseStruct, ptr %16, i32 0, i32 40, !dbg !743
  %hit_counter13 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static12, i32 0, i32 6, !dbg !743
  %17 = load i64, ptr %hit_counter13, align 8, !dbg !743, !tbaa !738
  %18 = load ptr, ptr %err, align 8, !dbg !744, !tbaa !320
  %call14 = call i32 @mg_combinedscore(ptr noundef %15, i64 noundef %17, ptr noundef %18), !dbg !745
  %19 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !746, !tbaa !320
  %had_err15 = getelementptr inbounds %struct.ParseStruct, ptr %19, i32 0, i32 26, !dbg !746
  store i32 %call14, ptr %had_err15, align 8, !dbg !747, !tbaa !380
  %20 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !748, !tbaa !320
  %xmlparser_static16 = getelementptr inbounds %struct.ParseStruct, ptr %20, i32 0, i32 40, !dbg !748
  %hit_counter17 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static16, i32 0, i32 6, !dbg !748
  store i64 0, ptr %hit_counter17, align 8, !dbg !749, !tbaa !738
  %21 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !750, !tbaa !320
  %gi_flag = getelementptr inbounds %struct.ParseStruct, ptr %21, i32 0, i32 32, !dbg !750
  store i16 0, ptr %gi_flag, align 2, !dbg !751, !tbaa !752
  %22 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !753, !tbaa !320
  %matrix_info = getelementptr inbounds %struct.ParseStruct, ptr %22, i32 0, i32 37, !dbg !753
  %query_from = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info, i32 0, i32 2, !dbg !753
  %23 = load ptr, ptr %query_from, align 8, !dbg !753, !tbaa !754
  call void @gt_array_reset(ptr noundef %23), !dbg !755
  %24 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !756, !tbaa !320
  %matrix_info18 = getelementptr inbounds %struct.ParseStruct, ptr %24, i32 0, i32 37, !dbg !756
  %query_to = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info18, i32 0, i32 3, !dbg !756
  %25 = load ptr, ptr %query_to, align 8, !dbg !756, !tbaa !757
  call void @gt_array_reset(ptr noundef %25), !dbg !758
  %26 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !759, !tbaa !320
  %matrix_info19 = getelementptr inbounds %struct.ParseStruct, ptr %26, i32 0, i32 37, !dbg !759
  %hit_frame = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info19, i32 0, i32 1, !dbg !759
  %27 = load ptr, ptr %hit_frame, align 8, !dbg !759, !tbaa !760
  call void @gt_array_reset(ptr noundef %27), !dbg !761
  %28 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !762, !tbaa !320
  %matrix_info20 = getelementptr inbounds %struct.ParseStruct, ptr %28, i32 0, i32 37, !dbg !762
  %query_frame = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info20, i32 0, i32 0, !dbg !762
  %29 = load ptr, ptr %query_frame, align 8, !dbg !762, !tbaa !763
  call void @gt_array_reset(ptr noundef %29), !dbg !764
  br label %if.end21, !dbg !765

if.end21:                                         ; preds = %if.then11, %if.then8
  %30 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !766, !tbaa !320
  %metagenomethreader_arguments = getelementptr inbounds %struct.ParseStruct, ptr %30, i32 0, i32 38, !dbg !766
  %outputfile_format = getelementptr inbounds %struct.MetagenomeThreaderArguments, ptr %metagenomethreader_arguments, i32 0, i32 12, !dbg !766
  %31 = load i32, ptr %outputfile_format, align 8, !dbg !766, !tbaa !768
  %cmp22 = icmp eq i32 %31, 3, !dbg !769
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !770

if.then24:                                        ; preds = %if.end21
  %32 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !771, !tbaa !320
  %33 = load ptr, ptr %err, align 8, !dbg !773, !tbaa !320
  call void @mg_outputwriter(ptr noundef %32, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef signext 120, ptr noundef %33), !dbg !774
  br label %if.end25, !dbg !775

if.end25:                                         ; preds = %if.then24, %if.end21
  %34 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !776, !tbaa !320
  %matrix_info26 = getelementptr inbounds %struct.ParseStruct, ptr %34, i32 0, i32 37, !dbg !776
  %hit_gi_nr = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info26, i32 0, i32 6, !dbg !776
  %35 = load ptr, ptr %hit_gi_nr, align 8, !dbg !776, !tbaa !446
  call void @gt_str_array_delete(ptr noundef %35), !dbg !777
  %36 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !778, !tbaa !320
  %matrix_info27 = getelementptr inbounds %struct.ParseStruct, ptr %36, i32 0, i32 37, !dbg !778
  %hit_gi_def = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info27, i32 0, i32 8, !dbg !778
  %37 = load ptr, ptr %hit_gi_def, align 8, !dbg !778, !tbaa !455
  call void @gt_str_array_delete(ptr noundef %37), !dbg !779
  %38 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !780, !tbaa !320
  %matrix_info28 = getelementptr inbounds %struct.ParseStruct, ptr %38, i32 0, i32 37, !dbg !780
  %hit_acc = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info28, i32 0, i32 9, !dbg !780
  %39 = load ptr, ptr %hit_acc, align 8, !dbg !780, !tbaa !458
  call void @gt_str_array_delete(ptr noundef %39), !dbg !781
  %40 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !782, !tbaa !320
  %matrix_info29 = getelementptr inbounds %struct.ParseStruct, ptr %40, i32 0, i32 37, !dbg !782
  %fasta_row = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info29, i32 0, i32 10, !dbg !782
  %41 = load ptr, ptr %fasta_row, align 8, !dbg !782, !tbaa !461
  call void @gt_str_array_delete(ptr noundef %41), !dbg !783
  %42 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !784, !tbaa !320
  %matrix_info30 = getelementptr inbounds %struct.ParseStruct, ptr %42, i32 0, i32 37, !dbg !784
  %hit_num = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info30, i32 0, i32 7, !dbg !784
  %43 = load ptr, ptr %hit_num, align 8, !dbg !784, !tbaa !449
  call void @gt_str_array_delete(ptr noundef %43), !dbg !785
  %44 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !786, !tbaa !320
  %matrix_info31 = getelementptr inbounds %struct.ParseStruct, ptr %44, i32 0, i32 37, !dbg !786
  %hit_dna = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info31, i32 0, i32 13, !dbg !786
  %45 = load ptr, ptr %hit_dna, align 8, !dbg !786, !tbaa !452
  call void @gt_str_array_delete(ptr noundef %45), !dbg !787
  %46 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !788, !tbaa !320
  %matrix_info32 = getelementptr inbounds %struct.ParseStruct, ptr %46, i32 0, i32 37, !dbg !788
  %hit_from = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info32, i32 0, i32 11, !dbg !788
  %47 = load ptr, ptr %hit_from, align 8, !dbg !788, !tbaa !464
  call void @gt_str_array_delete(ptr noundef %47), !dbg !789
  %48 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !790, !tbaa !320
  %matrix_info33 = getelementptr inbounds %struct.ParseStruct, ptr %48, i32 0, i32 37, !dbg !790
  %hit_to = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info33, i32 0, i32 12, !dbg !790
  %49 = load ptr, ptr %hit_to, align 8, !dbg !790, !tbaa !467
  call void @gt_str_array_delete(ptr noundef %49), !dbg !791
  %50 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !792, !tbaa !320
  %matrix_info34 = getelementptr inbounds %struct.ParseStruct, ptr %50, i32 0, i32 37, !dbg !792
  %hsp_qseq = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info34, i32 0, i32 14, !dbg !792
  %51 = load ptr, ptr %hsp_qseq, align 8, !dbg !792, !tbaa !470
  call void @gt_str_array_delete(ptr noundef %51), !dbg !793
  %52 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !794, !tbaa !320
  %matrix_info35 = getelementptr inbounds %struct.ParseStruct, ptr %52, i32 0, i32 37, !dbg !794
  %hsp_hseq = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info35, i32 0, i32 15, !dbg !794
  %53 = load ptr, ptr %hsp_hseq, align 8, !dbg !794, !tbaa !473
  call void @gt_str_array_delete(ptr noundef %53), !dbg !795
  %54 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !796, !tbaa !320
  %query_frame_tmp = getelementptr inbounds %struct.ParseStruct, ptr %54, i32 0, i32 3, !dbg !796
  %55 = load ptr, ptr %query_frame_tmp, align 8, !dbg !796, !tbaa !476
  call void @gt_str_array_delete(ptr noundef %55), !dbg !797
  %56 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !798, !tbaa !320
  %hit_frame_tmp = getelementptr inbounds %struct.ParseStruct, ptr %56, i32 0, i32 4, !dbg !798
  %57 = load ptr, ptr %hit_frame_tmp, align 8, !dbg !798, !tbaa !479
  call void @gt_str_array_delete(ptr noundef %57), !dbg !799
  %58 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !800, !tbaa !320
  %xml_tag_flag = getelementptr inbounds %struct.ParseStruct, ptr %58, i32 0, i32 30, !dbg !800
  store i16 0, ptr %xml_tag_flag, align 2, !dbg !801, !tbaa !437
  br label %if.end36, !dbg !802

if.end36:                                         ; preds = %if.end25, %land.lhs.true, %do.end
  %59 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !803, !tbaa !320
  %def_flag = getelementptr inbounds %struct.ParseStruct, ptr %59, i32 0, i32 27, !dbg !803
  %60 = load i16, ptr %def_flag, align 4, !dbg !803, !tbaa !804
  %conv37 = zext i16 %60 to i32, !dbg !803
  %cmp38 = icmp eq i32 %conv37, 1, !dbg !805
  br i1 %cmp38, label %if.then48, label %lor.lhs.false40, !dbg !806

lor.lhs.false40:                                  ; preds = %if.end36
  %61 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !807, !tbaa !320
  %hit_flag = getelementptr inbounds %struct.ParseStruct, ptr %61, i32 0, i32 28, !dbg !807
  %62 = load i16, ptr %hit_flag, align 2, !dbg !807, !tbaa !808
  %conv41 = zext i16 %62 to i32, !dbg !807
  %cmp42 = icmp eq i32 %conv41, 1, !dbg !809
  br i1 %cmp42, label %if.then48, label %lor.lhs.false44, !dbg !810

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %63 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !811, !tbaa !320
  %hit_hsp_flag = getelementptr inbounds %struct.ParseStruct, ptr %63, i32 0, i32 29, !dbg !811
  %64 = load i16, ptr %hit_hsp_flag, align 8, !dbg !811, !tbaa !812
  %conv45 = zext i16 %64 to i32, !dbg !811
  %cmp46 = icmp eq i32 %conv45, 1, !dbg !813
  br i1 %cmp46, label %if.then48, label %if.end528, !dbg !814

if.then48:                                        ; preds = %lor.lhs.false44, %lor.lhs.false40, %if.end36
  %65 = load ptr, ptr %name.addr, align 8, !dbg !815, !tbaa !320
  %66 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !816, !tbaa !320
  %query_array = getelementptr inbounds %struct.ParseStruct, ptr %66, i32 0, i32 0, !dbg !816
  %67 = load ptr, ptr %query_array, align 8, !dbg !816, !tbaa !609
  %call49 = call ptr @gt_str_array_get(ptr noundef %67, i64 noundef 0), !dbg !817
  %call50 = call i32 @strcmp(ptr noundef %65, ptr noundef %call49) #12, !dbg !818
  %cmp51 = icmp eq i32 %call50, 0, !dbg !819
  br i1 %cmp51, label %land.lhs.true53, label %if.else110, !dbg !820

land.lhs.true53:                                  ; preds = %if.then48
  %68 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !821, !tbaa !320
  %giexp_flag54 = getelementptr inbounds %struct.ParseStruct, ptr %68, i32 0, i32 31, !dbg !821
  %69 = load i16, ptr %giexp_flag54, align 4, !dbg !821, !tbaa !442
  %conv55 = zext i16 %69 to i32, !dbg !821
  %tobool56 = icmp ne i32 %conv55, 0, !dbg !821
  br i1 %tobool56, label %if.then57, label %if.else110, !dbg !822

if.then57:                                        ; preds = %land.lhs.true53
  %70 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !823, !tbaa !320
  %matrix_info58 = getelementptr inbounds %struct.ParseStruct, ptr %70, i32 0, i32 37, !dbg !823
  %query_dna = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info58, i32 0, i32 4, !dbg !823
  %71 = load ptr, ptr %query_dna, align 8, !dbg !823, !tbaa !824
  call void @gt_str_reset(ptr noundef %71), !dbg !825
  %72 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !826, !tbaa !320
  %matrix_info59 = getelementptr inbounds %struct.ParseStruct, ptr %72, i32 0, i32 37, !dbg !826
  %query_def = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info59, i32 0, i32 5, !dbg !826
  %73 = load ptr, ptr %query_def, align 8, !dbg !826, !tbaa !827
  call void @gt_str_reset(ptr noundef %73), !dbg !828
  %74 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !829, !tbaa !320
  %matrix_info60 = getelementptr inbounds %struct.ParseStruct, ptr %74, i32 0, i32 37, !dbg !829
  %query_def61 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info60, i32 0, i32 5, !dbg !829
  %75 = load ptr, ptr %query_def61, align 8, !dbg !829, !tbaa !827
  %76 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !830, !tbaa !320
  %buf_ptr = getelementptr inbounds %struct.ParseStruct, ptr %76, i32 0, i32 7, !dbg !830
  %77 = load ptr, ptr %buf_ptr, align 8, !dbg !830, !tbaa !831
  %call62 = call ptr @gt_str_get(ptr noundef %77), !dbg !832
  call void @gt_str_set(ptr noundef %75, ptr noundef %call62), !dbg !833
  %call63 = call ptr @gt_str_array_new(), !dbg !834
  %78 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !835, !tbaa !320
  %matrix_info64 = getelementptr inbounds %struct.ParseStruct, ptr %78, i32 0, i32 37, !dbg !835
  %hit_gi_nr65 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info64, i32 0, i32 6, !dbg !835
  store ptr %call63, ptr %hit_gi_nr65, align 8, !dbg !836, !tbaa !446
  %call66 = call ptr @gt_str_array_new(), !dbg !837
  %79 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !838, !tbaa !320
  %matrix_info67 = getelementptr inbounds %struct.ParseStruct, ptr %79, i32 0, i32 37, !dbg !838
  %hit_num68 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info67, i32 0, i32 7, !dbg !838
  store ptr %call66, ptr %hit_num68, align 8, !dbg !839, !tbaa !449
  %call69 = call ptr @gt_str_array_new(), !dbg !840
  %80 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !841, !tbaa !320
  %matrix_info70 = getelementptr inbounds %struct.ParseStruct, ptr %80, i32 0, i32 37, !dbg !841
  %hit_dna71 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info70, i32 0, i32 13, !dbg !841
  store ptr %call69, ptr %hit_dna71, align 8, !dbg !842, !tbaa !452
  %call72 = call ptr @gt_str_array_new(), !dbg !843
  %81 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !844, !tbaa !320
  %matrix_info73 = getelementptr inbounds %struct.ParseStruct, ptr %81, i32 0, i32 37, !dbg !844
  %hit_gi_def74 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info73, i32 0, i32 8, !dbg !844
  store ptr %call72, ptr %hit_gi_def74, align 8, !dbg !845, !tbaa !455
  %call75 = call ptr @gt_str_array_new(), !dbg !846
  %82 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !847, !tbaa !320
  %matrix_info76 = getelementptr inbounds %struct.ParseStruct, ptr %82, i32 0, i32 37, !dbg !847
  %hit_acc77 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info76, i32 0, i32 9, !dbg !847
  store ptr %call75, ptr %hit_acc77, align 8, !dbg !848, !tbaa !458
  %call78 = call ptr @gt_str_array_new(), !dbg !849
  %83 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !850, !tbaa !320
  %matrix_info79 = getelementptr inbounds %struct.ParseStruct, ptr %83, i32 0, i32 37, !dbg !850
  %fasta_row80 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info79, i32 0, i32 10, !dbg !850
  store ptr %call78, ptr %fasta_row80, align 8, !dbg !851, !tbaa !461
  %call81 = call ptr @gt_str_array_new(), !dbg !852
  %84 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !853, !tbaa !320
  %matrix_info82 = getelementptr inbounds %struct.ParseStruct, ptr %84, i32 0, i32 37, !dbg !853
  %hit_from83 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info82, i32 0, i32 11, !dbg !853
  store ptr %call81, ptr %hit_from83, align 8, !dbg !854, !tbaa !464
  %call84 = call ptr @gt_str_array_new(), !dbg !855
  %85 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !856, !tbaa !320
  %matrix_info85 = getelementptr inbounds %struct.ParseStruct, ptr %85, i32 0, i32 37, !dbg !856
  %hit_to86 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info85, i32 0, i32 12, !dbg !856
  store ptr %call84, ptr %hit_to86, align 8, !dbg !857, !tbaa !467
  %call87 = call ptr @gt_str_array_new(), !dbg !858
  %86 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !859, !tbaa !320
  %matrix_info88 = getelementptr inbounds %struct.ParseStruct, ptr %86, i32 0, i32 37, !dbg !859
  %hsp_qseq89 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info88, i32 0, i32 14, !dbg !859
  store ptr %call87, ptr %hsp_qseq89, align 8, !dbg !860, !tbaa !470
  %call90 = call ptr @gt_str_array_new(), !dbg !861
  %87 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !862, !tbaa !320
  %matrix_info91 = getelementptr inbounds %struct.ParseStruct, ptr %87, i32 0, i32 37, !dbg !862
  %hsp_hseq92 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info91, i32 0, i32 15, !dbg !862
  store ptr %call90, ptr %hsp_hseq92, align 8, !dbg !863, !tbaa !473
  %call93 = call ptr @gt_str_array_new(), !dbg !864
  %88 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !865, !tbaa !320
  %query_frame_tmp94 = getelementptr inbounds %struct.ParseStruct, ptr %88, i32 0, i32 3, !dbg !865
  store ptr %call93, ptr %query_frame_tmp94, align 8, !dbg !866, !tbaa !476
  %call95 = call ptr @gt_str_array_new(), !dbg !867
  %89 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !868, !tbaa !320
  %hit_frame_tmp96 = getelementptr inbounds %struct.ParseStruct, ptr %89, i32 0, i32 4, !dbg !868
  store ptr %call95, ptr %hit_frame_tmp96, align 8, !dbg !869, !tbaa !479
  %90 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !870, !tbaa !320
  %xml_tag_flag97 = getelementptr inbounds %struct.ParseStruct, ptr %90, i32 0, i32 30, !dbg !870
  store i16 1, ptr %xml_tag_flag97, align 2, !dbg !871, !tbaa !437
  %91 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !872, !tbaa !320
  %queryhash = getelementptr inbounds %struct.ParseStruct, ptr %91, i32 0, i32 21, !dbg !872
  %92 = load ptr, ptr %queryhash, align 8, !dbg !872, !tbaa !873
  %93 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !874, !tbaa !320
  %buf_ptr98 = getelementptr inbounds %struct.ParseStruct, ptr %93, i32 0, i32 7, !dbg !874
  %94 = load ptr, ptr %buf_ptr98, align 8, !dbg !874, !tbaa !831
  %call99 = call ptr @gt_str_get(ptr noundef %94), !dbg !875
  %call100 = call ptr @gt_cstr_nofree_ulp_gt_hashmap_get(ptr noundef %92, ptr noundef %call99), !dbg !876
  store ptr %call100, ptr %query_nr_p, align 8, !dbg !877, !tbaa !320
  %tobool101 = icmp ne ptr %call100, null, !dbg !877
  br i1 %tobool101, label %if.then102, label %if.else, !dbg !878

if.then102:                                       ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #10, !dbg !879
  tail call void @llvm.dbg.declare(metadata ptr %seq, metadata !671, metadata !DIExpression()), !dbg !880
  %95 = load ptr, ptr %query_nr_p, align 8, !dbg !881, !tbaa !320
  %96 = load ptr, ptr %95, align 8, !dbg !882, !tbaa !320
  %97 = load i64, ptr %96, align 8, !dbg !883, !tbaa !711
  store i64 %97, ptr %query_nr, align 8, !dbg !884, !tbaa !711
  %98 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !885, !tbaa !320
  %queryseq = getelementptr inbounds %struct.ParseStruct, ptr %98, i32 0, i32 16, !dbg !885
  %99 = load ptr, ptr %queryseq, align 8, !dbg !885, !tbaa !886
  %100 = load i64, ptr %query_nr, align 8, !dbg !887, !tbaa !711
  %call103 = call ptr @gt_bioseq_get_sequence(ptr noundef %99, i64 noundef %100), !dbg !888
  store ptr %call103, ptr %seq, align 8, !dbg !889, !tbaa !320
  %101 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !890, !tbaa !320
  %matrix_info104 = getelementptr inbounds %struct.ParseStruct, ptr %101, i32 0, i32 37, !dbg !890
  %query_dna105 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info104, i32 0, i32 4, !dbg !890
  %102 = load ptr, ptr %query_dna105, align 8, !dbg !890, !tbaa !824
  %103 = load ptr, ptr %seq, align 8, !dbg !891, !tbaa !320
  %104 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !892, !tbaa !320
  %queryseq106 = getelementptr inbounds %struct.ParseStruct, ptr %104, i32 0, i32 16, !dbg !892
  %105 = load ptr, ptr %queryseq106, align 8, !dbg !892, !tbaa !886
  %106 = load i64, ptr %query_nr, align 8, !dbg !893, !tbaa !711
  %call107 = call i64 @gt_bioseq_get_sequence_length(ptr noundef %105, i64 noundef %106), !dbg !894
  call void @gt_str_append_cstr_nt(ptr noundef %102, ptr noundef %103, i64 noundef %call107), !dbg !895
  %107 = load ptr, ptr %seq, align 8, !dbg !896, !tbaa !320
  call void @gt_free_mem(ptr noundef %107, ptr noundef @.str.2, i32 noundef 516), !dbg !896
  %108 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !897, !tbaa !320
  %109 = load ptr, ptr %err, align 8, !dbg !898, !tbaa !320
  call void @mg_outputwriter(ptr noundef %108, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef signext 113, ptr noundef %109), !dbg !899
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #10, !dbg !900
  br label %if.end109, !dbg !901

if.else:                                          ; preds = %if.then57
  %110 = load ptr, ptr %err, align 8, !dbg !902, !tbaa !320
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %110, ptr noundef @.str.5), !dbg !904
  %111 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !905, !tbaa !320
  %had_err108 = getelementptr inbounds %struct.ParseStruct, ptr %111, i32 0, i32 26, !dbg !905
  store i32 -1, ptr %had_err108, align 8, !dbg !906, !tbaa !380
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.then102
  br label %if.end479, !dbg !907

if.else110:                                       ; preds = %land.lhs.true53, %if.then48
  %112 = load ptr, ptr %name.addr, align 8, !dbg !908, !tbaa !320
  %113 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !909, !tbaa !320
  %hit_array = getelementptr inbounds %struct.ParseStruct, ptr %113, i32 0, i32 1, !dbg !909
  %114 = load ptr, ptr %hit_array, align 8, !dbg !909, !tbaa !624
  %call111 = call ptr @gt_str_array_get(ptr noundef %114, i64 noundef 0), !dbg !910
  %call112 = call i32 @strcmp(ptr noundef %112, ptr noundef %call111) #12, !dbg !911
  %cmp113 = icmp eq i32 %call112, 0, !dbg !912
  br i1 %cmp113, label %if.then115, label %if.else144, !dbg !913

if.then115:                                       ; preds = %if.else110
  %115 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !914, !tbaa !320
  %hit_gi_nr_tmp = getelementptr inbounds %struct.ParseStruct, ptr %115, i32 0, i32 12, !dbg !914
  %116 = load ptr, ptr %hit_gi_nr_tmp, align 8, !dbg !914, !tbaa !916
  call void @gt_str_reset(ptr noundef %116), !dbg !917
  %117 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !918, !tbaa !320
  %fasta_row116 = getelementptr inbounds %struct.ParseStruct, ptr %117, i32 0, i32 13, !dbg !918
  %118 = load ptr, ptr %fasta_row116, align 8, !dbg !918, !tbaa !919
  call void @gt_str_reset(ptr noundef %118), !dbg !920
  %119 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !921, !tbaa !320
  %fasta_row117 = getelementptr inbounds %struct.ParseStruct, ptr %119, i32 0, i32 13, !dbg !921
  %120 = load ptr, ptr %fasta_row117, align 8, !dbg !921, !tbaa !919
  %121 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !922, !tbaa !320
  %buf_ptr118 = getelementptr inbounds %struct.ParseStruct, ptr %121, i32 0, i32 7, !dbg !922
  %122 = load ptr, ptr %buf_ptr118, align 8, !dbg !922, !tbaa !831
  %call119 = call ptr @gt_str_get(ptr noundef %122), !dbg !923
  call void @gt_str_set(ptr noundef %120, ptr noundef %call119), !dbg !924
  %123 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !925, !tbaa !320
  %buf_ptr120 = getelementptr inbounds %struct.ParseStruct, ptr %123, i32 0, i32 7, !dbg !925
  %124 = load ptr, ptr %buf_ptr120, align 8, !dbg !925, !tbaa !831
  %call121 = call ptr @gt_str_get(ptr noundef %124), !dbg !926
  %call122 = call ptr @strchr(ptr noundef %call121, i32 noundef 124) #12, !dbg !927
  store ptr %call122, ptr %gi_ptr, align 8, !dbg !928, !tbaa !320
  br label %do.body123, !dbg !929

do.body123:                                       ; preds = %if.then115
  %125 = load ptr, ptr %gi_ptr, align 8, !dbg !930, !tbaa !320
  %cmp124 = icmp ne ptr %125, null, !dbg !930
  br i1 %cmp124, label %if.end128, label %if.then126, !dbg !933

if.then126:                                       ; preds = %do.body123
  %126 = load ptr, ptr @stderr, align 8, !dbg !934, !tbaa !320
  %call127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @__func__.endElement, ptr noundef @.str.2, i32 noundef 541), !dbg !934
  call void @abort() #11, !dbg !934
  unreachable, !dbg !934

if.end128:                                        ; preds = %do.body123
  br label %do.cond129, !dbg !933

do.cond129:                                       ; preds = %if.end128
  br label %do.end130, !dbg !933

do.end130:                                        ; preds = %do.cond129
  %127 = load ptr, ptr %gi_ptr, align 8, !dbg !936, !tbaa !320
  %add.ptr = getelementptr inbounds i8, ptr %127, i64 1, !dbg !937
  store ptr %add.ptr, ptr %gi_ptr, align 8, !dbg !938, !tbaa !320
  %call131 = call ptr @__ctype_b_loc() #13, !dbg !939
  %128 = load ptr, ptr %call131, align 8, !dbg !939, !tbaa !320
  %129 = load ptr, ptr %gi_ptr, align 8, !dbg !939, !tbaa !320
  %130 = load i8, ptr %129, align 1, !dbg !939, !tbaa !400
  %conv132 = sext i8 %130 to i32, !dbg !939
  %idxprom = sext i32 %conv132 to i64, !dbg !939
  %arrayidx = getelementptr inbounds i16, ptr %128, i64 %idxprom, !dbg !939
  %131 = load i16, ptr %arrayidx, align 2, !dbg !939, !tbaa !708
  %conv133 = zext i16 %131 to i32, !dbg !939
  %and = and i32 %conv133, 1024, !dbg !939
  %tobool134 = icmp ne i32 %and, 0, !dbg !939
  br i1 %tobool134, label %if.else141, label %if.then135, !dbg !941

if.then135:                                       ; preds = %do.end130
  %132 = load ptr, ptr %gi_ptr, align 8, !dbg !942, !tbaa !320
  %add.ptr136 = getelementptr inbounds i8, ptr %132, i64 1, !dbg !944
  %call137 = call i64 @strspn(ptr noundef %add.ptr136, ptr noundef @.str.7) #12, !dbg !945
  %add = add i64 %call137, 1, !dbg !946
  %conv138 = trunc i64 %add to i16, !dbg !945
  store i16 %conv138, ptr %gi_len, align 2, !dbg !947, !tbaa !708
  %133 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !948, !tbaa !320
  %hit_gi_nr_tmp139 = getelementptr inbounds %struct.ParseStruct, ptr %133, i32 0, i32 12, !dbg !948
  %134 = load ptr, ptr %hit_gi_nr_tmp139, align 8, !dbg !948, !tbaa !916
  %135 = load ptr, ptr %gi_ptr, align 8, !dbg !949, !tbaa !320
  %136 = load i16, ptr %gi_len, align 2, !dbg !950, !tbaa !708
  %conv140 = zext i16 %136 to i64, !dbg !950
  call void @gt_str_append_cstr_nt(ptr noundef %134, ptr noundef %135, i64 noundef %conv140), !dbg !951
  br label %if.end143, !dbg !952

if.else141:                                       ; preds = %do.end130
  %137 = load ptr, ptr %err, align 8, !dbg !953, !tbaa !320
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %137, ptr noundef @.str.8), !dbg !955
  %138 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !956, !tbaa !320
  %had_err142 = getelementptr inbounds %struct.ParseStruct, ptr %138, i32 0, i32 26, !dbg !956
  store i32 -1, ptr %had_err142, align 8, !dbg !957, !tbaa !380
  br label %if.end143

if.end143:                                        ; preds = %if.else141, %if.then135
  br label %if.end478, !dbg !958

if.else144:                                       ; preds = %if.else110
  %139 = load ptr, ptr %name.addr, align 8, !dbg !959, !tbaa !320
  %140 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !960, !tbaa !320
  %hit_array145 = getelementptr inbounds %struct.ParseStruct, ptr %140, i32 0, i32 1, !dbg !960
  %141 = load ptr, ptr %hit_array145, align 8, !dbg !960, !tbaa !624
  %call146 = call ptr @gt_str_array_get(ptr noundef %141, i64 noundef 1), !dbg !961
  %call147 = call i32 @strcmp(ptr noundef %139, ptr noundef %call146) #12, !dbg !962
  %cmp148 = icmp eq i32 %call147, 0, !dbg !963
  br i1 %cmp148, label %land.lhs.true150, label %if.else157, !dbg !964

land.lhs.true150:                                 ; preds = %if.else144
  %142 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !965, !tbaa !320
  %giexp_flag151 = getelementptr inbounds %struct.ParseStruct, ptr %142, i32 0, i32 31, !dbg !965
  %143 = load i16, ptr %giexp_flag151, align 4, !dbg !965, !tbaa !442
  %conv152 = zext i16 %143 to i32, !dbg !965
  %tobool153 = icmp ne i32 %conv152, 0, !dbg !965
  br i1 %tobool153, label %if.then154, label %if.else157, !dbg !966

if.then154:                                       ; preds = %land.lhs.true150
  %144 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !967, !tbaa !320
  %gi_def_tmp = getelementptr inbounds %struct.ParseStruct, ptr %144, i32 0, i32 10, !dbg !967
  %145 = load ptr, ptr %gi_def_tmp, align 8, !dbg !967, !tbaa !969
  %146 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !970, !tbaa !320
  %buf_ptr155 = getelementptr inbounds %struct.ParseStruct, ptr %146, i32 0, i32 7, !dbg !970
  %147 = load ptr, ptr %buf_ptr155, align 8, !dbg !970, !tbaa !831
  %call156 = call ptr @gt_str_get(ptr noundef %147), !dbg !971
  call void @gt_str_set(ptr noundef %145, ptr noundef %call156), !dbg !972
  br label %if.end477, !dbg !973

if.else157:                                       ; preds = %land.lhs.true150, %if.else144
  %148 = load ptr, ptr %name.addr, align 8, !dbg !974, !tbaa !320
  %149 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !975, !tbaa !320
  %hit_array158 = getelementptr inbounds %struct.ParseStruct, ptr %149, i32 0, i32 1, !dbg !975
  %150 = load ptr, ptr %hit_array158, align 8, !dbg !975, !tbaa !624
  %call159 = call ptr @gt_str_array_get(ptr noundef %150, i64 noundef 2), !dbg !976
  %call160 = call i32 @strcmp(ptr noundef %148, ptr noundef %call159) #12, !dbg !977
  %cmp161 = icmp eq i32 %call160, 0, !dbg !978
  br i1 %cmp161, label %land.lhs.true163, label %if.else170, !dbg !979

land.lhs.true163:                                 ; preds = %if.else157
  %151 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !980, !tbaa !320
  %giexp_flag164 = getelementptr inbounds %struct.ParseStruct, ptr %151, i32 0, i32 31, !dbg !980
  %152 = load i16, ptr %giexp_flag164, align 4, !dbg !980, !tbaa !442
  %conv165 = zext i16 %152 to i32, !dbg !980
  %tobool166 = icmp ne i32 %conv165, 0, !dbg !980
  br i1 %tobool166, label %if.then167, label %if.else170, !dbg !981

if.then167:                                       ; preds = %land.lhs.true163
  %153 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !982, !tbaa !320
  %gi_acc_tmp = getelementptr inbounds %struct.ParseStruct, ptr %153, i32 0, i32 11, !dbg !982
  %154 = load ptr, ptr %gi_acc_tmp, align 8, !dbg !982, !tbaa !984
  %155 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !985, !tbaa !320
  %buf_ptr168 = getelementptr inbounds %struct.ParseStruct, ptr %155, i32 0, i32 7, !dbg !985
  %156 = load ptr, ptr %buf_ptr168, align 8, !dbg !985, !tbaa !831
  %call169 = call ptr @gt_str_get(ptr noundef %156), !dbg !986
  call void @gt_str_set(ptr noundef %154, ptr noundef %call169), !dbg !987
  br label %if.end476, !dbg !988

if.else170:                                       ; preds = %land.lhs.true163, %if.else157
  %157 = load ptr, ptr %name.addr, align 8, !dbg !989, !tbaa !320
  %158 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !990, !tbaa !320
  %hit_hsp_array = getelementptr inbounds %struct.ParseStruct, ptr %158, i32 0, i32 2, !dbg !990
  %159 = load ptr, ptr %hit_hsp_array, align 8, !dbg !990, !tbaa !639
  %call171 = call ptr @gt_str_array_get(ptr noundef %159, i64 noundef 0), !dbg !991
  %call172 = call i32 @strcmp(ptr noundef %157, ptr noundef %call171) #12, !dbg !992
  %cmp173 = icmp eq i32 %call172, 0, !dbg !993
  br i1 %cmp173, label %land.lhs.true175, label %if.else200, !dbg !994

land.lhs.true175:                                 ; preds = %if.else170
  %160 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !995, !tbaa !320
  %giexp_flag176 = getelementptr inbounds %struct.ParseStruct, ptr %160, i32 0, i32 31, !dbg !995
  %161 = load i16, ptr %giexp_flag176, align 4, !dbg !995, !tbaa !442
  %conv177 = zext i16 %161 to i32, !dbg !995
  %tobool178 = icmp ne i32 %conv177, 0, !dbg !995
  br i1 %tobool178, label %if.then179, label %if.else200, !dbg !996

if.then179:                                       ; preds = %land.lhs.true175
  %162 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !997, !tbaa !320
  %matrix_info180 = getelementptr inbounds %struct.ParseStruct, ptr %162, i32 0, i32 37, !dbg !997
  %hit_gi_nr181 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info180, i32 0, i32 6, !dbg !997
  %163 = load ptr, ptr %hit_gi_nr181, align 8, !dbg !997, !tbaa !446
  %164 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !999, !tbaa !320
  %hit_gi_nr_tmp182 = getelementptr inbounds %struct.ParseStruct, ptr %164, i32 0, i32 12, !dbg !999
  %165 = load ptr, ptr %hit_gi_nr_tmp182, align 8, !dbg !999, !tbaa !916
  %call183 = call ptr @gt_str_get(ptr noundef %165), !dbg !1000
  call void @gt_str_array_add_cstr(ptr noundef %163, ptr noundef %call183), !dbg !1001
  %166 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1002, !tbaa !320
  %matrix_info184 = getelementptr inbounds %struct.ParseStruct, ptr %166, i32 0, i32 37, !dbg !1002
  %hit_gi_def185 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info184, i32 0, i32 8, !dbg !1002
  %167 = load ptr, ptr %hit_gi_def185, align 8, !dbg !1002, !tbaa !455
  %168 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1003, !tbaa !320
  %gi_def_tmp186 = getelementptr inbounds %struct.ParseStruct, ptr %168, i32 0, i32 10, !dbg !1003
  %169 = load ptr, ptr %gi_def_tmp186, align 8, !dbg !1003, !tbaa !969
  %call187 = call ptr @gt_str_get(ptr noundef %169), !dbg !1004
  call void @gt_str_array_add_cstr(ptr noundef %167, ptr noundef %call187), !dbg !1005
  %170 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1006, !tbaa !320
  %matrix_info188 = getelementptr inbounds %struct.ParseStruct, ptr %170, i32 0, i32 37, !dbg !1006
  %hit_acc189 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info188, i32 0, i32 9, !dbg !1006
  %171 = load ptr, ptr %hit_acc189, align 8, !dbg !1006, !tbaa !458
  %172 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1007, !tbaa !320
  %gi_acc_tmp190 = getelementptr inbounds %struct.ParseStruct, ptr %172, i32 0, i32 11, !dbg !1007
  %173 = load ptr, ptr %gi_acc_tmp190, align 8, !dbg !1007, !tbaa !984
  %call191 = call ptr @gt_str_get(ptr noundef %173), !dbg !1008
  call void @gt_str_array_add_cstr(ptr noundef %171, ptr noundef %call191), !dbg !1009
  %174 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1010, !tbaa !320
  %matrix_info192 = getelementptr inbounds %struct.ParseStruct, ptr %174, i32 0, i32 37, !dbg !1010
  %fasta_row193 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info192, i32 0, i32 10, !dbg !1010
  %175 = load ptr, ptr %fasta_row193, align 8, !dbg !1010, !tbaa !461
  %176 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1011, !tbaa !320
  %fasta_row194 = getelementptr inbounds %struct.ParseStruct, ptr %176, i32 0, i32 13, !dbg !1011
  %177 = load ptr, ptr %fasta_row194, align 8, !dbg !1011, !tbaa !919
  %call195 = call ptr @gt_str_get(ptr noundef %177), !dbg !1012
  call void @gt_str_array_add_cstr(ptr noundef %175, ptr noundef %call195), !dbg !1013
  %178 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1014, !tbaa !320
  %matrix_info196 = getelementptr inbounds %struct.ParseStruct, ptr %178, i32 0, i32 37, !dbg !1014
  %hit_num197 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info196, i32 0, i32 7, !dbg !1014
  %179 = load ptr, ptr %hit_num197, align 8, !dbg !1014, !tbaa !449
  %180 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1015, !tbaa !320
  %buf_ptr198 = getelementptr inbounds %struct.ParseStruct, ptr %180, i32 0, i32 7, !dbg !1015
  %181 = load ptr, ptr %buf_ptr198, align 8, !dbg !1015, !tbaa !831
  %call199 = call ptr @gt_str_get(ptr noundef %181), !dbg !1016
  call void @gt_str_array_add_cstr(ptr noundef %179, ptr noundef %call199), !dbg !1017
  br label %if.end475, !dbg !1018

if.else200:                                       ; preds = %land.lhs.true175, %if.else170
  %182 = load ptr, ptr %name.addr, align 8, !dbg !1019, !tbaa !320
  %183 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1020, !tbaa !320
  %hit_hsp_array201 = getelementptr inbounds %struct.ParseStruct, ptr %183, i32 0, i32 2, !dbg !1020
  %184 = load ptr, ptr %hit_hsp_array201, align 8, !dbg !1020, !tbaa !639
  %call202 = call ptr @gt_str_array_get(ptr noundef %184, i64 noundef 1), !dbg !1021
  %call203 = call i32 @strcmp(ptr noundef %182, ptr noundef %call202) #12, !dbg !1022
  %cmp204 = icmp eq i32 %call203, 0, !dbg !1023
  br i1 %cmp204, label %land.lhs.true206, label %if.else216, !dbg !1024

land.lhs.true206:                                 ; preds = %if.else200
  %185 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1025, !tbaa !320
  %giexp_flag207 = getelementptr inbounds %struct.ParseStruct, ptr %185, i32 0, i32 31, !dbg !1025
  %186 = load i16, ptr %giexp_flag207, align 4, !dbg !1025, !tbaa !442
  %conv208 = zext i16 %186 to i32, !dbg !1025
  %tobool209 = icmp ne i32 %conv208, 0, !dbg !1025
  br i1 %tobool209, label %if.then210, label %if.else216, !dbg !1026

if.then210:                                       ; preds = %land.lhs.true206
  %187 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1027, !tbaa !320
  %buf_ptr211 = getelementptr inbounds %struct.ParseStruct, ptr %187, i32 0, i32 7, !dbg !1027
  %188 = load ptr, ptr %buf_ptr211, align 8, !dbg !1027, !tbaa !831
  %call212 = call ptr @gt_str_get(ptr noundef %188), !dbg !1029
  %call213 = call i64 @atol(ptr noundef %call212) #12, !dbg !1030
  store i64 %call213, ptr %ulong_numb_buf, align 8, !dbg !1031, !tbaa !711
  %189 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1032, !tbaa !320
  %matrix_info214 = getelementptr inbounds %struct.ParseStruct, ptr %189, i32 0, i32 37, !dbg !1032
  %query_from215 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info214, i32 0, i32 2, !dbg !1032
  %190 = load ptr, ptr %query_from215, align 8, !dbg !1032, !tbaa !754
  call void @gt_array_add_elem(ptr noundef %190, ptr noundef %ulong_numb_buf, i64 noundef 8), !dbg !1033
  br label %if.end474, !dbg !1034

if.else216:                                       ; preds = %land.lhs.true206, %if.else200
  %191 = load ptr, ptr %name.addr, align 8, !dbg !1035, !tbaa !320
  %192 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1036, !tbaa !320
  %hit_hsp_array217 = getelementptr inbounds %struct.ParseStruct, ptr %192, i32 0, i32 2, !dbg !1036
  %193 = load ptr, ptr %hit_hsp_array217, align 8, !dbg !1036, !tbaa !639
  %call218 = call ptr @gt_str_array_get(ptr noundef %193, i64 noundef 2), !dbg !1037
  %call219 = call i32 @strcmp(ptr noundef %191, ptr noundef %call218) #12, !dbg !1038
  %cmp220 = icmp eq i32 %call219, 0, !dbg !1039
  br i1 %cmp220, label %land.lhs.true222, label %if.else232, !dbg !1040

land.lhs.true222:                                 ; preds = %if.else216
  %194 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1041, !tbaa !320
  %giexp_flag223 = getelementptr inbounds %struct.ParseStruct, ptr %194, i32 0, i32 31, !dbg !1041
  %195 = load i16, ptr %giexp_flag223, align 4, !dbg !1041, !tbaa !442
  %conv224 = zext i16 %195 to i32, !dbg !1041
  %tobool225 = icmp ne i32 %conv224, 0, !dbg !1041
  br i1 %tobool225, label %if.then226, label %if.else232, !dbg !1042

if.then226:                                       ; preds = %land.lhs.true222
  %196 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1043, !tbaa !320
  %buf_ptr227 = getelementptr inbounds %struct.ParseStruct, ptr %196, i32 0, i32 7, !dbg !1043
  %197 = load ptr, ptr %buf_ptr227, align 8, !dbg !1043, !tbaa !831
  %call228 = call ptr @gt_str_get(ptr noundef %197), !dbg !1045
  %call229 = call i64 @atol(ptr noundef %call228) #12, !dbg !1046
  store i64 %call229, ptr %ulong_numb_buf, align 8, !dbg !1047, !tbaa !711
  %198 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1048, !tbaa !320
  %matrix_info230 = getelementptr inbounds %struct.ParseStruct, ptr %198, i32 0, i32 37, !dbg !1048
  %query_to231 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info230, i32 0, i32 3, !dbg !1048
  %199 = load ptr, ptr %query_to231, align 8, !dbg !1048, !tbaa !757
  call void @gt_array_add_elem(ptr noundef %199, ptr noundef %ulong_numb_buf, i64 noundef 8), !dbg !1049
  br label %if.end473, !dbg !1050

if.else232:                                       ; preds = %land.lhs.true222, %if.else216
  %200 = load ptr, ptr %name.addr, align 8, !dbg !1051, !tbaa !320
  %201 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1052, !tbaa !320
  %hit_hsp_array233 = getelementptr inbounds %struct.ParseStruct, ptr %201, i32 0, i32 2, !dbg !1052
  %202 = load ptr, ptr %hit_hsp_array233, align 8, !dbg !1052, !tbaa !639
  %call234 = call ptr @gt_str_array_get(ptr noundef %202, i64 noundef 3), !dbg !1053
  %call235 = call i32 @strcmp(ptr noundef %200, ptr noundef %call234) #12, !dbg !1054
  %cmp236 = icmp eq i32 %call235, 0, !dbg !1055
  br i1 %cmp236, label %if.then238, label %if.else253, !dbg !1056

if.then238:                                       ; preds = %if.else232
  %203 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1057, !tbaa !320
  %giexp_flag239 = getelementptr inbounds %struct.ParseStruct, ptr %203, i32 0, i32 31, !dbg !1057
  %204 = load i16, ptr %giexp_flag239, align 4, !dbg !1057, !tbaa !442
  %tobool240 = icmp ne i16 %204, 0, !dbg !1057
  br i1 %tobool240, label %if.then241, label %if.else246, !dbg !1060

if.then241:                                       ; preds = %if.then238
  %205 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1061, !tbaa !320
  %matrix_info242 = getelementptr inbounds %struct.ParseStruct, ptr %205, i32 0, i32 37, !dbg !1061
  %hit_from243 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info242, i32 0, i32 11, !dbg !1061
  %206 = load ptr, ptr %hit_from243, align 8, !dbg !1061, !tbaa !464
  %207 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1063, !tbaa !320
  %buf_ptr244 = getelementptr inbounds %struct.ParseStruct, ptr %207, i32 0, i32 7, !dbg !1063
  %208 = load ptr, ptr %buf_ptr244, align 8, !dbg !1063, !tbaa !831
  %call245 = call ptr @gt_str_get(ptr noundef %208), !dbg !1064
  call void @gt_str_array_add_cstr(ptr noundef %206, ptr noundef %call245), !dbg !1065
  br label %if.end252, !dbg !1066

if.else246:                                       ; preds = %if.then238
  %209 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1067, !tbaa !320
  %fp_giexp_file = getelementptr inbounds %struct.ParseStruct, ptr %209, i32 0, i32 20, !dbg !1067
  %210 = load ptr, ptr %fp_giexp_file, align 8, !dbg !1067, !tbaa !1069
  %211 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1070, !tbaa !320
  %hit_gi_nr_tmp247 = getelementptr inbounds %struct.ParseStruct, ptr %211, i32 0, i32 12, !dbg !1070
  %212 = load ptr, ptr %hit_gi_nr_tmp247, align 8, !dbg !1070, !tbaa !916
  %call248 = call ptr @gt_str_get(ptr noundef %212), !dbg !1071
  call void (ptr, ptr, ...) @gt_file_xprintf(ptr noundef %210, ptr noundef @.str.9, ptr noundef %call248), !dbg !1072
  %213 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1073, !tbaa !320
  %fp_giexp_file249 = getelementptr inbounds %struct.ParseStruct, ptr %213, i32 0, i32 20, !dbg !1073
  %214 = load ptr, ptr %fp_giexp_file249, align 8, !dbg !1073, !tbaa !1069
  %215 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1074, !tbaa !320
  %buf_ptr250 = getelementptr inbounds %struct.ParseStruct, ptr %215, i32 0, i32 7, !dbg !1074
  %216 = load ptr, ptr %buf_ptr250, align 8, !dbg !1074, !tbaa !831
  %call251 = call ptr @gt_str_get(ptr noundef %216), !dbg !1075
  call void (ptr, ptr, ...) @gt_file_xprintf(ptr noundef %214, ptr noundef @.str.9, ptr noundef %call251), !dbg !1076
  br label %if.end252

if.end252:                                        ; preds = %if.else246, %if.then241
  br label %if.end472, !dbg !1077

if.else253:                                       ; preds = %if.else232
  %217 = load ptr, ptr %name.addr, align 8, !dbg !1078, !tbaa !320
  %218 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1079, !tbaa !320
  %hit_hsp_array254 = getelementptr inbounds %struct.ParseStruct, ptr %218, i32 0, i32 2, !dbg !1079
  %219 = load ptr, ptr %hit_hsp_array254, align 8, !dbg !1079, !tbaa !639
  %call255 = call ptr @gt_str_array_get(ptr noundef %219, i64 noundef 4), !dbg !1080
  %call256 = call i32 @strcmp(ptr noundef %217, ptr noundef %call255) #12, !dbg !1081
  %cmp257 = icmp eq i32 %call256, 0, !dbg !1082
  br i1 %cmp257, label %if.then259, label %if.else272, !dbg !1083

if.then259:                                       ; preds = %if.else253
  %220 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1084, !tbaa !320
  %giexp_flag260 = getelementptr inbounds %struct.ParseStruct, ptr %220, i32 0, i32 31, !dbg !1084
  %221 = load i16, ptr %giexp_flag260, align 4, !dbg !1084, !tbaa !442
  %tobool261 = icmp ne i16 %221, 0, !dbg !1084
  br i1 %tobool261, label %if.then262, label %if.else267, !dbg !1087

if.then262:                                       ; preds = %if.then259
  %222 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1088, !tbaa !320
  %matrix_info263 = getelementptr inbounds %struct.ParseStruct, ptr %222, i32 0, i32 37, !dbg !1088
  %hit_to264 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info263, i32 0, i32 12, !dbg !1088
  %223 = load ptr, ptr %hit_to264, align 8, !dbg !1088, !tbaa !467
  %224 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1090, !tbaa !320
  %buf_ptr265 = getelementptr inbounds %struct.ParseStruct, ptr %224, i32 0, i32 7, !dbg !1090
  %225 = load ptr, ptr %buf_ptr265, align 8, !dbg !1090, !tbaa !831
  %call266 = call ptr @gt_str_get(ptr noundef %225), !dbg !1091
  call void @gt_str_array_add_cstr(ptr noundef %223, ptr noundef %call266), !dbg !1092
  br label %if.end271, !dbg !1093

if.else267:                                       ; preds = %if.then259
  %226 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1094, !tbaa !320
  %fp_giexp_file268 = getelementptr inbounds %struct.ParseStruct, ptr %226, i32 0, i32 20, !dbg !1094
  %227 = load ptr, ptr %fp_giexp_file268, align 8, !dbg !1094, !tbaa !1069
  %228 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1096, !tbaa !320
  %buf_ptr269 = getelementptr inbounds %struct.ParseStruct, ptr %228, i32 0, i32 7, !dbg !1096
  %229 = load ptr, ptr %buf_ptr269, align 8, !dbg !1096, !tbaa !831
  %call270 = call ptr @gt_str_get(ptr noundef %229), !dbg !1097
  call void (ptr, ptr, ...) @gt_file_xprintf(ptr noundef %227, ptr noundef @.str.10, ptr noundef %call270), !dbg !1098
  br label %if.end271

if.end271:                                        ; preds = %if.else267, %if.then262
  br label %if.end471, !dbg !1099

if.else272:                                       ; preds = %if.else253
  %230 = load ptr, ptr %name.addr, align 8, !dbg !1100, !tbaa !320
  %231 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1101, !tbaa !320
  %hit_hsp_array273 = getelementptr inbounds %struct.ParseStruct, ptr %231, i32 0, i32 2, !dbg !1101
  %232 = load ptr, ptr %hit_hsp_array273, align 8, !dbg !1101, !tbaa !639
  %call274 = call ptr @gt_str_array_get(ptr noundef %232, i64 noundef 5), !dbg !1102
  %call275 = call i32 @strcmp(ptr noundef %230, ptr noundef %call274) #12, !dbg !1103
  %cmp276 = icmp eq i32 %call275, 0, !dbg !1104
  br i1 %cmp276, label %land.lhs.true278, label %if.else291, !dbg !1105

land.lhs.true278:                                 ; preds = %if.else272
  %233 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1106, !tbaa !320
  %giexp_flag279 = getelementptr inbounds %struct.ParseStruct, ptr %233, i32 0, i32 31, !dbg !1106
  %234 = load i16, ptr %giexp_flag279, align 4, !dbg !1106, !tbaa !442
  %conv280 = zext i16 %234 to i32, !dbg !1106
  %tobool281 = icmp ne i32 %conv280, 0, !dbg !1106
  br i1 %tobool281, label %if.then282, label %if.else291, !dbg !1107

if.then282:                                       ; preds = %land.lhs.true278
  %235 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1108, !tbaa !320
  %query_frame_tmp283 = getelementptr inbounds %struct.ParseStruct, ptr %235, i32 0, i32 3, !dbg !1108
  %236 = load ptr, ptr %query_frame_tmp283, align 8, !dbg !1108, !tbaa !476
  %237 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1110, !tbaa !320
  %buf_ptr284 = getelementptr inbounds %struct.ParseStruct, ptr %237, i32 0, i32 7, !dbg !1110
  %238 = load ptr, ptr %buf_ptr284, align 8, !dbg !1110, !tbaa !831
  %call285 = call ptr @gt_str_get(ptr noundef %238), !dbg !1111
  call void @gt_str_array_add_cstr(ptr noundef %236, ptr noundef %call285), !dbg !1112
  %239 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1113, !tbaa !320
  %buf_ptr286 = getelementptr inbounds %struct.ParseStruct, ptr %239, i32 0, i32 7, !dbg !1113
  %240 = load ptr, ptr %buf_ptr286, align 8, !dbg !1113, !tbaa !831
  %call287 = call ptr @gt_str_get(ptr noundef %240), !dbg !1114
  %call288 = call i64 @atol(ptr noundef %call287) #12, !dbg !1115
  store i64 %call288, ptr %numb_buf, align 8, !dbg !1116, !tbaa !711
  %241 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1117, !tbaa !320
  %matrix_info289 = getelementptr inbounds %struct.ParseStruct, ptr %241, i32 0, i32 37, !dbg !1117
  %query_frame290 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info289, i32 0, i32 0, !dbg !1117
  %242 = load ptr, ptr %query_frame290, align 8, !dbg !1117, !tbaa !763
  call void @gt_array_add_elem(ptr noundef %242, ptr noundef %numb_buf, i64 noundef 8), !dbg !1118
  br label %if.end470, !dbg !1119

if.else291:                                       ; preds = %land.lhs.true278, %if.else272
  %243 = load ptr, ptr %name.addr, align 8, !dbg !1120, !tbaa !320
  %244 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1121, !tbaa !320
  %hit_hsp_array292 = getelementptr inbounds %struct.ParseStruct, ptr %244, i32 0, i32 2, !dbg !1121
  %245 = load ptr, ptr %hit_hsp_array292, align 8, !dbg !1121, !tbaa !639
  %call293 = call ptr @gt_str_array_get(ptr noundef %245, i64 noundef 6), !dbg !1122
  %call294 = call i32 @strcmp(ptr noundef %243, ptr noundef %call293) #12, !dbg !1123
  %cmp295 = icmp eq i32 %call294, 0, !dbg !1124
  br i1 %cmp295, label %land.lhs.true297, label %if.else351, !dbg !1125

land.lhs.true297:                                 ; preds = %if.else291
  %246 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1126, !tbaa !320
  %giexp_flag298 = getelementptr inbounds %struct.ParseStruct, ptr %246, i32 0, i32 31, !dbg !1126
  %247 = load i16, ptr %giexp_flag298, align 4, !dbg !1126, !tbaa !442
  %conv299 = zext i16 %247 to i32, !dbg !1126
  %tobool300 = icmp ne i32 %conv299, 0, !dbg !1126
  br i1 %tobool300, label %if.then301, label %if.else351, !dbg !1127

if.then301:                                       ; preds = %land.lhs.true297
  %248 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1128, !tbaa !320
  %hit_frame_tmp302 = getelementptr inbounds %struct.ParseStruct, ptr %248, i32 0, i32 4, !dbg !1128
  %249 = load ptr, ptr %hit_frame_tmp302, align 8, !dbg !1128, !tbaa !479
  %250 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1129, !tbaa !320
  %buf_ptr303 = getelementptr inbounds %struct.ParseStruct, ptr %250, i32 0, i32 7, !dbg !1129
  %251 = load ptr, ptr %buf_ptr303, align 8, !dbg !1129, !tbaa !831
  %call304 = call ptr @gt_str_get(ptr noundef %251), !dbg !1130
  call void @gt_str_array_add_cstr(ptr noundef %249, ptr noundef %call304), !dbg !1131
  %252 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1132, !tbaa !320
  %buf_ptr305 = getelementptr inbounds %struct.ParseStruct, ptr %252, i32 0, i32 7, !dbg !1132
  %253 = load ptr, ptr %buf_ptr305, align 8, !dbg !1132, !tbaa !831
  %call306 = call ptr @gt_str_get(ptr noundef %253), !dbg !1133
  %call307 = call i64 @atol(ptr noundef %call306) #12, !dbg !1134
  store i64 %call307, ptr %numb_buf, align 8, !dbg !1135, !tbaa !711
  %254 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1136, !tbaa !320
  %matrix_info308 = getelementptr inbounds %struct.ParseStruct, ptr %254, i32 0, i32 37, !dbg !1136
  %hit_frame309 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info308, i32 0, i32 1, !dbg !1136
  %255 = load ptr, ptr %hit_frame309, align 8, !dbg !1136, !tbaa !760
  call void @gt_array_add_elem(ptr noundef %255, ptr noundef %numb_buf, i64 noundef 8), !dbg !1137
  call void @llvm.lifetime.start.p0(i64 8, ptr %hit_nr) #10, !dbg !1138
  tail call void @llvm.dbg.declare(metadata ptr %hit_nr, metadata !678, metadata !DIExpression()), !dbg !1139
  store i64 0, ptr %hit_nr, align 8, !dbg !1139, !tbaa !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %hit_tmp) #10, !dbg !1140
  tail call void @llvm.dbg.declare(metadata ptr %hit_tmp, metadata !690, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 8, ptr %hit_dna_tmp) #10, !dbg !1142
  tail call void @llvm.dbg.declare(metadata ptr %hit_dna_tmp, metadata !691, metadata !DIExpression()), !dbg !1143
  %call310 = call ptr @gt_str_new(), !dbg !1144
  store ptr %call310, ptr %hit_tmp, align 8, !dbg !1145, !tbaa !320
  %call311 = call ptr @gt_str_new(), !dbg !1146
  store ptr %call311, ptr %hit_dna_tmp, align 8, !dbg !1147, !tbaa !320
  %256 = load ptr, ptr %hit_tmp, align 8, !dbg !1148, !tbaa !320
  %257 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1149, !tbaa !320
  %matrix_info312 = getelementptr inbounds %struct.ParseStruct, ptr %257, i32 0, i32 37, !dbg !1149
  %hit_gi_nr313 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info312, i32 0, i32 6, !dbg !1149
  %258 = load ptr, ptr %hit_gi_nr313, align 8, !dbg !1149, !tbaa !446
  %259 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1150, !tbaa !320
  %xmlparser_static314 = getelementptr inbounds %struct.ParseStruct, ptr %259, i32 0, i32 40, !dbg !1150
  %hit_counter315 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static314, i32 0, i32 6, !dbg !1150
  %260 = load i64, ptr %hit_counter315, align 8, !dbg !1150, !tbaa !738
  %call316 = call ptr @gt_str_array_get(ptr noundef %258, i64 noundef %260), !dbg !1151
  call void @gt_str_set(ptr noundef %256, ptr noundef %call316), !dbg !1152
  %261 = load ptr, ptr %hit_tmp, align 8, !dbg !1153, !tbaa !320
  call void @gt_str_append_cstr(ptr noundef %261, ptr noundef @.str.11), !dbg !1154
  %262 = load ptr, ptr %hit_tmp, align 8, !dbg !1155, !tbaa !320
  %263 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1156, !tbaa !320
  %matrix_info317 = getelementptr inbounds %struct.ParseStruct, ptr %263, i32 0, i32 37, !dbg !1156
  %hit_from318 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info317, i32 0, i32 11, !dbg !1156
  %264 = load ptr, ptr %hit_from318, align 8, !dbg !1156, !tbaa !464
  %265 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1157, !tbaa !320
  %xmlparser_static319 = getelementptr inbounds %struct.ParseStruct, ptr %265, i32 0, i32 40, !dbg !1157
  %hit_counter320 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static319, i32 0, i32 6, !dbg !1157
  %266 = load i64, ptr %hit_counter320, align 8, !dbg !1157, !tbaa !738
  %call321 = call ptr @gt_str_array_get(ptr noundef %264, i64 noundef %266), !dbg !1158
  call void @gt_str_append_cstr(ptr noundef %262, ptr noundef %call321), !dbg !1159
  %267 = load ptr, ptr %hit_tmp, align 8, !dbg !1160, !tbaa !320
  call void @gt_str_append_cstr(ptr noundef %267, ptr noundef @.str.11), !dbg !1161
  %268 = load ptr, ptr %hit_tmp, align 8, !dbg !1162, !tbaa !320
  %269 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1163, !tbaa !320
  %matrix_info322 = getelementptr inbounds %struct.ParseStruct, ptr %269, i32 0, i32 37, !dbg !1163
  %hit_to323 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info322, i32 0, i32 12, !dbg !1163
  %270 = load ptr, ptr %hit_to323, align 8, !dbg !1163, !tbaa !467
  %271 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1164, !tbaa !320
  %xmlparser_static324 = getelementptr inbounds %struct.ParseStruct, ptr %271, i32 0, i32 40, !dbg !1164
  %hit_counter325 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static324, i32 0, i32 6, !dbg !1164
  %272 = load i64, ptr %hit_counter325, align 8, !dbg !1164, !tbaa !738
  %call326 = call ptr @gt_str_array_get(ptr noundef %270, i64 noundef %272), !dbg !1165
  call void @gt_str_append_cstr(ptr noundef %268, ptr noundef %call326), !dbg !1166
  %273 = load ptr, ptr %hit_tmp, align 8, !dbg !1167, !tbaa !320
  call void @gt_str_append_cstr(ptr noundef %273, ptr noundef @.str.11), !dbg !1168
  %274 = load ptr, ptr %hit_tmp, align 8, !dbg !1169, !tbaa !320
  %275 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1170, !tbaa !320
  %matrix_info327 = getelementptr inbounds %struct.ParseStruct, ptr %275, i32 0, i32 37, !dbg !1170
  %fasta_row328 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info327, i32 0, i32 10, !dbg !1170
  %276 = load ptr, ptr %fasta_row328, align 8, !dbg !1170, !tbaa !461
  %277 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1171, !tbaa !320
  %xmlparser_static329 = getelementptr inbounds %struct.ParseStruct, ptr %277, i32 0, i32 40, !dbg !1171
  %hit_counter330 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static329, i32 0, i32 6, !dbg !1171
  %278 = load i64, ptr %hit_counter330, align 8, !dbg !1171, !tbaa !738
  %call331 = call ptr @gt_str_array_get(ptr noundef %276, i64 noundef %278), !dbg !1172
  call void @gt_str_append_cstr(ptr noundef %274, ptr noundef %call331), !dbg !1173
  %279 = load ptr, ptr %hit_tmp, align 8, !dbg !1174, !tbaa !320
  call void @gt_str_append_cstr(ptr noundef %279, ptr noundef @.str.11), !dbg !1175
  %280 = load ptr, ptr %hit_tmp, align 8, !dbg !1176, !tbaa !320
  %281 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1177, !tbaa !320
  %matrix_info332 = getelementptr inbounds %struct.ParseStruct, ptr %281, i32 0, i32 37, !dbg !1177
  %hit_gi_def333 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info332, i32 0, i32 8, !dbg !1177
  %282 = load ptr, ptr %hit_gi_def333, align 8, !dbg !1177, !tbaa !455
  %283 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1178, !tbaa !320
  %xmlparser_static334 = getelementptr inbounds %struct.ParseStruct, ptr %283, i32 0, i32 40, !dbg !1178
  %hit_counter335 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static334, i32 0, i32 6, !dbg !1178
  %284 = load i64, ptr %hit_counter335, align 8, !dbg !1178, !tbaa !738
  %call336 = call ptr @gt_str_array_get(ptr noundef %282, i64 noundef %284), !dbg !1179
  call void @gt_str_append_cstr(ptr noundef %280, ptr noundef %call336), !dbg !1180
  %285 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1181, !tbaa !320
  %hithash = getelementptr inbounds %struct.ParseStruct, ptr %285, i32 0, i32 22, !dbg !1181
  %286 = load ptr, ptr %hithash, align 8, !dbg !1181, !tbaa !1182
  %287 = load ptr, ptr %hit_tmp, align 8, !dbg !1183, !tbaa !320
  %call337 = call ptr @gt_str_get(ptr noundef %287), !dbg !1184
  %call338 = call ptr @gt_cstr_nofree_ulp_gt_hashmap_get(ptr noundef %286, ptr noundef %call337), !dbg !1185
  store ptr %call338, ptr %query_nr_p, align 8, !dbg !1186, !tbaa !320
  %tobool339 = icmp ne ptr %call338, null, !dbg !1186
  br i1 %tobool339, label %if.then340, label %if.else348, !dbg !1187

if.then340:                                       ; preds = %if.then301
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq341) #10, !dbg !1188
  tail call void @llvm.dbg.declare(metadata ptr %seq341, metadata !692, metadata !DIExpression()), !dbg !1189
  %288 = load ptr, ptr %query_nr_p, align 8, !dbg !1190, !tbaa !320
  %289 = load ptr, ptr %288, align 8, !dbg !1191, !tbaa !320
  %290 = load i64, ptr %289, align 8, !dbg !1192, !tbaa !711
  store i64 %290, ptr %hit_nr, align 8, !dbg !1193, !tbaa !711
  %291 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1194, !tbaa !320
  %hitseq = getelementptr inbounds %struct.ParseStruct, ptr %291, i32 0, i32 17, !dbg !1194
  %292 = load ptr, ptr %hitseq, align 8, !dbg !1194, !tbaa !1195
  %293 = load i64, ptr %hit_nr, align 8, !dbg !1196, !tbaa !711
  %call342 = call ptr @gt_bioseq_get_sequence(ptr noundef %292, i64 noundef %293), !dbg !1197
  store ptr %call342, ptr %seq341, align 8, !dbg !1198, !tbaa !320
  %294 = load ptr, ptr %hit_dna_tmp, align 8, !dbg !1199, !tbaa !320
  %295 = load ptr, ptr %seq341, align 8, !dbg !1200, !tbaa !320
  %296 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1201, !tbaa !320
  %hitseq343 = getelementptr inbounds %struct.ParseStruct, ptr %296, i32 0, i32 17, !dbg !1201
  %297 = load ptr, ptr %hitseq343, align 8, !dbg !1201, !tbaa !1195
  %298 = load i64, ptr %hit_nr, align 8, !dbg !1202, !tbaa !711
  %call344 = call i64 @gt_bioseq_get_sequence_length(ptr noundef %297, i64 noundef %298), !dbg !1203
  call void @gt_str_append_cstr_nt(ptr noundef %294, ptr noundef %295, i64 noundef %call344), !dbg !1204
  %299 = load ptr, ptr %seq341, align 8, !dbg !1205, !tbaa !320
  call void @gt_free_mem(ptr noundef %299, ptr noundef @.str.2, i32 noundef 736), !dbg !1205
  %300 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1206, !tbaa !320
  %matrix_info345 = getelementptr inbounds %struct.ParseStruct, ptr %300, i32 0, i32 37, !dbg !1206
  %hit_dna346 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info345, i32 0, i32 13, !dbg !1206
  %301 = load ptr, ptr %hit_dna346, align 8, !dbg !1206, !tbaa !452
  %302 = load ptr, ptr %hit_dna_tmp, align 8, !dbg !1207, !tbaa !320
  %call347 = call ptr @gt_str_get(ptr noundef %302), !dbg !1208
  call void @gt_str_array_add_cstr(ptr noundef %301, ptr noundef %call347), !dbg !1209
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq341) #10, !dbg !1210
  br label %if.end350, !dbg !1211

if.else348:                                       ; preds = %if.then301
  %303 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1212, !tbaa !320
  %gi_flag349 = getelementptr inbounds %struct.ParseStruct, ptr %303, i32 0, i32 32, !dbg !1212
  store i16 1, ptr %gi_flag349, align 2, !dbg !1214, !tbaa !752
  br label %if.end350

if.end350:                                        ; preds = %if.else348, %if.then340
  %304 = load ptr, ptr %hit_tmp, align 8, !dbg !1215, !tbaa !320
  call void @gt_str_delete(ptr noundef %304), !dbg !1216
  %305 = load ptr, ptr %hit_dna_tmp, align 8, !dbg !1217, !tbaa !320
  call void @gt_str_delete(ptr noundef %305), !dbg !1218
  call void @llvm.lifetime.end.p0(i64 8, ptr %hit_dna_tmp) #10, !dbg !1219
  call void @llvm.lifetime.end.p0(i64 8, ptr %hit_tmp) #10, !dbg !1219
  call void @llvm.lifetime.end.p0(i64 8, ptr %hit_nr) #10, !dbg !1219
  br label %if.end469, !dbg !1220

if.else351:                                       ; preds = %land.lhs.true297, %if.else291
  %306 = load ptr, ptr %name.addr, align 8, !dbg !1221, !tbaa !320
  %307 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1223, !tbaa !320
  %hit_hsp_array352 = getelementptr inbounds %struct.ParseStruct, ptr %307, i32 0, i32 2, !dbg !1223
  %308 = load ptr, ptr %hit_hsp_array352, align 8, !dbg !1223, !tbaa !639
  %call353 = call ptr @gt_str_array_get(ptr noundef %308, i64 noundef 7), !dbg !1224
  %call354 = call i32 @strcmp(ptr noundef %306, ptr noundef %call353) #12, !dbg !1225
  %cmp355 = icmp eq i32 %call354, 0, !dbg !1226
  br i1 %cmp355, label %land.lhs.true357, label %if.else366, !dbg !1227

land.lhs.true357:                                 ; preds = %if.else351
  %309 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1228, !tbaa !320
  %giexp_flag358 = getelementptr inbounds %struct.ParseStruct, ptr %309, i32 0, i32 31, !dbg !1228
  %310 = load i16, ptr %giexp_flag358, align 4, !dbg !1228, !tbaa !442
  %conv359 = zext i16 %310 to i32, !dbg !1228
  %tobool360 = icmp ne i32 %conv359, 0, !dbg !1228
  br i1 %tobool360, label %if.then361, label %if.else366, !dbg !1229

if.then361:                                       ; preds = %land.lhs.true357
  %311 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1230, !tbaa !320
  %matrix_info362 = getelementptr inbounds %struct.ParseStruct, ptr %311, i32 0, i32 37, !dbg !1230
  %hsp_qseq363 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info362, i32 0, i32 14, !dbg !1230
  %312 = load ptr, ptr %hsp_qseq363, align 8, !dbg !1230, !tbaa !470
  %313 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1232, !tbaa !320
  %buf_ptr364 = getelementptr inbounds %struct.ParseStruct, ptr %313, i32 0, i32 7, !dbg !1232
  %314 = load ptr, ptr %buf_ptr364, align 8, !dbg !1232, !tbaa !831
  %call365 = call ptr @gt_str_get(ptr noundef %314), !dbg !1233
  call void @gt_str_array_add_cstr(ptr noundef %312, ptr noundef %call365), !dbg !1234
  br label %if.end468, !dbg !1235

if.else366:                                       ; preds = %land.lhs.true357, %if.else351
  %315 = load ptr, ptr %name.addr, align 8, !dbg !1236, !tbaa !320
  %316 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1238, !tbaa !320
  %hit_hsp_array367 = getelementptr inbounds %struct.ParseStruct, ptr %316, i32 0, i32 2, !dbg !1238
  %317 = load ptr, ptr %hit_hsp_array367, align 8, !dbg !1238, !tbaa !639
  %call368 = call ptr @gt_str_array_get(ptr noundef %317, i64 noundef 8), !dbg !1239
  %call369 = call i32 @strcmp(ptr noundef %315, ptr noundef %call368) #12, !dbg !1240
  %cmp370 = icmp eq i32 %call369, 0, !dbg !1241
  br i1 %cmp370, label %land.lhs.true372, label %if.end467, !dbg !1242

land.lhs.true372:                                 ; preds = %if.else366
  %318 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1243, !tbaa !320
  %giexp_flag373 = getelementptr inbounds %struct.ParseStruct, ptr %318, i32 0, i32 31, !dbg !1243
  %319 = load i16, ptr %giexp_flag373, align 4, !dbg !1243, !tbaa !442
  %conv374 = zext i16 %319 to i32, !dbg !1243
  %tobool375 = icmp ne i32 %conv374, 0, !dbg !1243
  br i1 %tobool375, label %if.then376, label %if.end467, !dbg !1244

if.then376:                                       ; preds = %land.lhs.true372
  %320 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1245, !tbaa !320
  %matrix_info377 = getelementptr inbounds %struct.ParseStruct, ptr %320, i32 0, i32 37, !dbg !1245
  %hsp_hseq378 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info377, i32 0, i32 15, !dbg !1245
  %321 = load ptr, ptr %hsp_hseq378, align 8, !dbg !1245, !tbaa !473
  %322 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1247, !tbaa !320
  %buf_ptr379 = getelementptr inbounds %struct.ParseStruct, ptr %322, i32 0, i32 7, !dbg !1247
  %323 = load ptr, ptr %buf_ptr379, align 8, !dbg !1247, !tbaa !831
  %call380 = call ptr @gt_str_get(ptr noundef %323), !dbg !1248
  call void @gt_str_array_add_cstr(ptr noundef %321, ptr noundef %call380), !dbg !1249
  %324 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1250, !tbaa !320
  %xmlparser_static381 = getelementptr inbounds %struct.ParseStruct, ptr %324, i32 0, i32 40, !dbg !1250
  %hit_counter382 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static381, i32 0, i32 6, !dbg !1250
  %325 = load i64, ptr %hit_counter382, align 8, !dbg !1251, !tbaa !738
  %inc = add i64 %325, 1, !dbg !1251
  store i64 %inc, ptr %hit_counter382, align 8, !dbg !1251, !tbaa !738
  %326 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1252, !tbaa !320
  %gi_flag383 = getelementptr inbounds %struct.ParseStruct, ptr %326, i32 0, i32 32, !dbg !1252
  %327 = load i16, ptr %gi_flag383, align 2, !dbg !1252, !tbaa !752
  %tobool384 = icmp ne i16 %327, 0, !dbg !1252
  br i1 %tobool384, label %if.then385, label %if.end466, !dbg !1254

if.then385:                                       ; preds = %if.then376
  %328 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1255, !tbaa !320
  %gi_flag386 = getelementptr inbounds %struct.ParseStruct, ptr %328, i32 0, i32 32, !dbg !1255
  store i16 0, ptr %gi_flag386, align 2, !dbg !1257, !tbaa !752
  %329 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1258, !tbaa !320
  %matrix_info387 = getelementptr inbounds %struct.ParseStruct, ptr %329, i32 0, i32 37, !dbg !1258
  %hit_gi_nr388 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info387, i32 0, i32 6, !dbg !1258
  %330 = load ptr, ptr %hit_gi_nr388, align 8, !dbg !1258, !tbaa !446
  %331 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1259, !tbaa !320
  %matrix_info389 = getelementptr inbounds %struct.ParseStruct, ptr %331, i32 0, i32 37, !dbg !1259
  %hit_gi_nr390 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info389, i32 0, i32 6, !dbg !1259
  %332 = load ptr, ptr %hit_gi_nr390, align 8, !dbg !1259, !tbaa !446
  %call391 = call i64 @gt_str_array_size(ptr noundef %332), !dbg !1260
  %sub = sub i64 %call391, 1, !dbg !1261
  call void @gt_str_array_set_size(ptr noundef %330, i64 noundef %sub), !dbg !1262
  %333 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1263, !tbaa !320
  %matrix_info392 = getelementptr inbounds %struct.ParseStruct, ptr %333, i32 0, i32 37, !dbg !1263
  %hit_gi_def393 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info392, i32 0, i32 8, !dbg !1263
  %334 = load ptr, ptr %hit_gi_def393, align 8, !dbg !1263, !tbaa !455
  %335 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1264, !tbaa !320
  %matrix_info394 = getelementptr inbounds %struct.ParseStruct, ptr %335, i32 0, i32 37, !dbg !1264
  %hit_gi_def395 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info394, i32 0, i32 8, !dbg !1264
  %336 = load ptr, ptr %hit_gi_def395, align 8, !dbg !1264, !tbaa !455
  %call396 = call i64 @gt_str_array_size(ptr noundef %336), !dbg !1265
  %sub397 = sub i64 %call396, 1, !dbg !1266
  call void @gt_str_array_set_size(ptr noundef %334, i64 noundef %sub397), !dbg !1267
  %337 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1268, !tbaa !320
  %matrix_info398 = getelementptr inbounds %struct.ParseStruct, ptr %337, i32 0, i32 37, !dbg !1268
  %hit_acc399 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info398, i32 0, i32 9, !dbg !1268
  %338 = load ptr, ptr %hit_acc399, align 8, !dbg !1268, !tbaa !458
  %339 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1269, !tbaa !320
  %matrix_info400 = getelementptr inbounds %struct.ParseStruct, ptr %339, i32 0, i32 37, !dbg !1269
  %hit_acc401 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info400, i32 0, i32 9, !dbg !1269
  %340 = load ptr, ptr %hit_acc401, align 8, !dbg !1269, !tbaa !458
  %call402 = call i64 @gt_str_array_size(ptr noundef %340), !dbg !1270
  %sub403 = sub i64 %call402, 1, !dbg !1271
  call void @gt_str_array_set_size(ptr noundef %338, i64 noundef %sub403), !dbg !1272
  %341 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1273, !tbaa !320
  %matrix_info404 = getelementptr inbounds %struct.ParseStruct, ptr %341, i32 0, i32 37, !dbg !1273
  %fasta_row405 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info404, i32 0, i32 10, !dbg !1273
  %342 = load ptr, ptr %fasta_row405, align 8, !dbg !1273, !tbaa !461
  %343 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1274, !tbaa !320
  %matrix_info406 = getelementptr inbounds %struct.ParseStruct, ptr %343, i32 0, i32 37, !dbg !1274
  %fasta_row407 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info406, i32 0, i32 10, !dbg !1274
  %344 = load ptr, ptr %fasta_row407, align 8, !dbg !1274, !tbaa !461
  %call408 = call i64 @gt_str_array_size(ptr noundef %344), !dbg !1275
  %sub409 = sub i64 %call408, 1, !dbg !1276
  call void @gt_str_array_set_size(ptr noundef %342, i64 noundef %sub409), !dbg !1277
  %345 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1278, !tbaa !320
  %matrix_info410 = getelementptr inbounds %struct.ParseStruct, ptr %345, i32 0, i32 37, !dbg !1278
  %hit_num411 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info410, i32 0, i32 7, !dbg !1278
  %346 = load ptr, ptr %hit_num411, align 8, !dbg !1278, !tbaa !449
  %347 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1279, !tbaa !320
  %matrix_info412 = getelementptr inbounds %struct.ParseStruct, ptr %347, i32 0, i32 37, !dbg !1279
  %hit_num413 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info412, i32 0, i32 7, !dbg !1279
  %348 = load ptr, ptr %hit_num413, align 8, !dbg !1279, !tbaa !449
  %call414 = call i64 @gt_str_array_size(ptr noundef %348), !dbg !1280
  %sub415 = sub i64 %call414, 1, !dbg !1281
  call void @gt_str_array_set_size(ptr noundef %346, i64 noundef %sub415), !dbg !1282
  %349 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1283, !tbaa !320
  %matrix_info416 = getelementptr inbounds %struct.ParseStruct, ptr %349, i32 0, i32 37, !dbg !1283
  %query_from417 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info416, i32 0, i32 2, !dbg !1283
  %350 = load ptr, ptr %query_from417, align 8, !dbg !1283, !tbaa !754
  %351 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1284, !tbaa !320
  %matrix_info418 = getelementptr inbounds %struct.ParseStruct, ptr %351, i32 0, i32 37, !dbg !1284
  %query_from419 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info418, i32 0, i32 2, !dbg !1284
  %352 = load ptr, ptr %query_from419, align 8, !dbg !1284, !tbaa !754
  %call420 = call i64 @gt_array_size(ptr noundef %352), !dbg !1285
  %sub421 = sub i64 %call420, 1, !dbg !1286
  call void @gt_array_set_size(ptr noundef %350, i64 noundef %sub421), !dbg !1287
  %353 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1288, !tbaa !320
  %matrix_info422 = getelementptr inbounds %struct.ParseStruct, ptr %353, i32 0, i32 37, !dbg !1288
  %query_to423 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info422, i32 0, i32 3, !dbg !1288
  %354 = load ptr, ptr %query_to423, align 8, !dbg !1288, !tbaa !757
  %355 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1289, !tbaa !320
  %matrix_info424 = getelementptr inbounds %struct.ParseStruct, ptr %355, i32 0, i32 37, !dbg !1289
  %query_to425 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info424, i32 0, i32 3, !dbg !1289
  %356 = load ptr, ptr %query_to425, align 8, !dbg !1289, !tbaa !757
  %call426 = call i64 @gt_array_size(ptr noundef %356), !dbg !1290
  %sub427 = sub i64 %call426, 1, !dbg !1291
  call void @gt_array_set_size(ptr noundef %354, i64 noundef %sub427), !dbg !1292
  %357 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1293, !tbaa !320
  %matrix_info428 = getelementptr inbounds %struct.ParseStruct, ptr %357, i32 0, i32 37, !dbg !1293
  %hit_from429 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info428, i32 0, i32 11, !dbg !1293
  %358 = load ptr, ptr %hit_from429, align 8, !dbg !1293, !tbaa !464
  %359 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1294, !tbaa !320
  %matrix_info430 = getelementptr inbounds %struct.ParseStruct, ptr %359, i32 0, i32 37, !dbg !1294
  %hit_from431 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info430, i32 0, i32 11, !dbg !1294
  %360 = load ptr, ptr %hit_from431, align 8, !dbg !1294, !tbaa !464
  %call432 = call i64 @gt_str_array_size(ptr noundef %360), !dbg !1295
  %sub433 = sub i64 %call432, 1, !dbg !1296
  call void @gt_str_array_set_size(ptr noundef %358, i64 noundef %sub433), !dbg !1297
  %361 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1298, !tbaa !320
  %matrix_info434 = getelementptr inbounds %struct.ParseStruct, ptr %361, i32 0, i32 37, !dbg !1298
  %hit_to435 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info434, i32 0, i32 12, !dbg !1298
  %362 = load ptr, ptr %hit_to435, align 8, !dbg !1298, !tbaa !467
  %363 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1299, !tbaa !320
  %matrix_info436 = getelementptr inbounds %struct.ParseStruct, ptr %363, i32 0, i32 37, !dbg !1299
  %hit_to437 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info436, i32 0, i32 12, !dbg !1299
  %364 = load ptr, ptr %hit_to437, align 8, !dbg !1299, !tbaa !467
  %call438 = call i64 @gt_str_array_size(ptr noundef %364), !dbg !1300
  %sub439 = sub i64 %call438, 1, !dbg !1301
  call void @gt_str_array_set_size(ptr noundef %362, i64 noundef %sub439), !dbg !1302
  %365 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1303, !tbaa !320
  %matrix_info440 = getelementptr inbounds %struct.ParseStruct, ptr %365, i32 0, i32 37, !dbg !1303
  %query_frame441 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info440, i32 0, i32 0, !dbg !1303
  %366 = load ptr, ptr %query_frame441, align 8, !dbg !1303, !tbaa !763
  %367 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1304, !tbaa !320
  %matrix_info442 = getelementptr inbounds %struct.ParseStruct, ptr %367, i32 0, i32 37, !dbg !1304
  %query_frame443 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info442, i32 0, i32 0, !dbg !1304
  %368 = load ptr, ptr %query_frame443, align 8, !dbg !1304, !tbaa !763
  %call444 = call i64 @gt_array_size(ptr noundef %368), !dbg !1305
  %sub445 = sub i64 %call444, 1, !dbg !1306
  call void @gt_array_set_size(ptr noundef %366, i64 noundef %sub445), !dbg !1307
  %369 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1308, !tbaa !320
  %matrix_info446 = getelementptr inbounds %struct.ParseStruct, ptr %369, i32 0, i32 37, !dbg !1308
  %hit_frame447 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info446, i32 0, i32 1, !dbg !1308
  %370 = load ptr, ptr %hit_frame447, align 8, !dbg !1308, !tbaa !760
  %371 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1309, !tbaa !320
  %matrix_info448 = getelementptr inbounds %struct.ParseStruct, ptr %371, i32 0, i32 37, !dbg !1309
  %hit_frame449 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info448, i32 0, i32 1, !dbg !1309
  %372 = load ptr, ptr %hit_frame449, align 8, !dbg !1309, !tbaa !760
  %call450 = call i64 @gt_array_size(ptr noundef %372), !dbg !1310
  %sub451 = sub i64 %call450, 1, !dbg !1311
  call void @gt_array_set_size(ptr noundef %370, i64 noundef %sub451), !dbg !1312
  %373 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1313, !tbaa !320
  %matrix_info452 = getelementptr inbounds %struct.ParseStruct, ptr %373, i32 0, i32 37, !dbg !1313
  %hsp_qseq453 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info452, i32 0, i32 14, !dbg !1313
  %374 = load ptr, ptr %hsp_qseq453, align 8, !dbg !1313, !tbaa !470
  %375 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1314, !tbaa !320
  %matrix_info454 = getelementptr inbounds %struct.ParseStruct, ptr %375, i32 0, i32 37, !dbg !1314
  %hsp_qseq455 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info454, i32 0, i32 14, !dbg !1314
  %376 = load ptr, ptr %hsp_qseq455, align 8, !dbg !1314, !tbaa !470
  %call456 = call i64 @gt_str_array_size(ptr noundef %376), !dbg !1315
  %sub457 = sub i64 %call456, 1, !dbg !1316
  call void @gt_str_array_set_size(ptr noundef %374, i64 noundef %sub457), !dbg !1317
  %377 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1318, !tbaa !320
  %matrix_info458 = getelementptr inbounds %struct.ParseStruct, ptr %377, i32 0, i32 37, !dbg !1318
  %hsp_hseq459 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info458, i32 0, i32 15, !dbg !1318
  %378 = load ptr, ptr %hsp_hseq459, align 8, !dbg !1318, !tbaa !473
  %379 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1319, !tbaa !320
  %matrix_info460 = getelementptr inbounds %struct.ParseStruct, ptr %379, i32 0, i32 37, !dbg !1319
  %hsp_hseq461 = getelementptr inbounds %struct.MatrixMemory, ptr %matrix_info460, i32 0, i32 15, !dbg !1319
  %380 = load ptr, ptr %hsp_hseq461, align 8, !dbg !1319, !tbaa !473
  %call462 = call i64 @gt_str_array_size(ptr noundef %380), !dbg !1320
  %sub463 = sub i64 %call462, 1, !dbg !1321
  call void @gt_str_array_set_size(ptr noundef %378, i64 noundef %sub463), !dbg !1322
  %381 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1323, !tbaa !320
  %xmlparser_static464 = getelementptr inbounds %struct.ParseStruct, ptr %381, i32 0, i32 40, !dbg !1323
  %hit_counter465 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static464, i32 0, i32 6, !dbg !1323
  %382 = load i64, ptr %hit_counter465, align 8, !dbg !1324, !tbaa !738
  %dec = add i64 %382, -1, !dbg !1324
  store i64 %dec, ptr %hit_counter465, align 8, !dbg !1324, !tbaa !738
  br label %if.end466, !dbg !1325

if.end466:                                        ; preds = %if.then385, %if.then376
  br label %if.end467, !dbg !1326

if.end467:                                        ; preds = %if.end466, %land.lhs.true372, %if.else366
  br label %if.end468

if.end468:                                        ; preds = %if.end467, %if.then361
  br label %if.end469

if.end469:                                        ; preds = %if.end468, %if.end350
  br label %if.end470

if.end470:                                        ; preds = %if.end469, %if.then282
  br label %if.end471

if.end471:                                        ; preds = %if.end470, %if.end271
  br label %if.end472

if.end472:                                        ; preds = %if.end471, %if.end252
  br label %if.end473

if.end473:                                        ; preds = %if.end472, %if.then226
  br label %if.end474

if.end474:                                        ; preds = %if.end473, %if.then210
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.then179
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.then167
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %if.then154
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %if.end143
  br label %if.end479

if.end479:                                        ; preds = %if.end478, %if.end109
  %383 = load ptr, ptr %name.addr, align 8, !dbg !1327, !tbaa !320
  %384 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1329, !tbaa !320
  %query_array480 = getelementptr inbounds %struct.ParseStruct, ptr %384, i32 0, i32 0, !dbg !1329
  %385 = load ptr, ptr %query_array480, align 8, !dbg !1329, !tbaa !609
  %386 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1330, !tbaa !320
  %xmlparser_static481 = getelementptr inbounds %struct.ParseStruct, ptr %386, i32 0, i32 40, !dbg !1330
  %query_array_index_end = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static481, i32 0, i32 3, !dbg !1330
  %387 = load i16, ptr %query_array_index_end, align 2, !dbg !1330, !tbaa !1331
  %conv482 = zext i16 %387 to i64, !dbg !1330
  %call483 = call ptr @gt_str_array_get(ptr noundef %385, i64 noundef %conv482), !dbg !1332
  %call484 = call i32 @strcmp(ptr noundef %383, ptr noundef %call483) #12, !dbg !1333
  %cmp485 = icmp eq i32 %call484, 0, !dbg !1334
  br i1 %cmp485, label %land.lhs.true487, label %if.else494, !dbg !1335

land.lhs.true487:                                 ; preds = %if.end479
  %388 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1336, !tbaa !320
  %had_err488 = getelementptr inbounds %struct.ParseStruct, ptr %388, i32 0, i32 26, !dbg !1336
  %389 = load i32, ptr %had_err488, align 8, !dbg !1336, !tbaa !380
  %tobool489 = icmp ne i32 %389, 0, !dbg !1336
  br i1 %tobool489, label %if.else494, label %if.then490, !dbg !1337

if.then490:                                       ; preds = %land.lhs.true487
  %390 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1338, !tbaa !320
  %xmlparser_static491 = getelementptr inbounds %struct.ParseStruct, ptr %390, i32 0, i32 40, !dbg !1338
  %query_array_index_end492 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static491, i32 0, i32 3, !dbg !1338
  %391 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1340, !tbaa !320
  %def_flag493 = getelementptr inbounds %struct.ParseStruct, ptr %391, i32 0, i32 27, !dbg !1340
  call void @flag_delete(ptr noundef %query_array_index_end492, ptr noundef %def_flag493, i8 noundef signext 113), !dbg !1341
  br label %if.end526, !dbg !1342

if.else494:                                       ; preds = %land.lhs.true487, %if.end479
  %392 = load ptr, ptr %name.addr, align 8, !dbg !1343, !tbaa !320
  %393 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1345, !tbaa !320
  %hit_array495 = getelementptr inbounds %struct.ParseStruct, ptr %393, i32 0, i32 1, !dbg !1345
  %394 = load ptr, ptr %hit_array495, align 8, !dbg !1345, !tbaa !624
  %395 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1346, !tbaa !320
  %xmlparser_static496 = getelementptr inbounds %struct.ParseStruct, ptr %395, i32 0, i32 40, !dbg !1346
  %hit_array_index_end = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static496, i32 0, i32 4, !dbg !1346
  %396 = load i16, ptr %hit_array_index_end, align 8, !dbg !1346, !tbaa !1347
  %conv497 = zext i16 %396 to i64, !dbg !1346
  %call498 = call ptr @gt_str_array_get(ptr noundef %394, i64 noundef %conv497), !dbg !1348
  %call499 = call i32 @strcmp(ptr noundef %392, ptr noundef %call498) #12, !dbg !1349
  %cmp500 = icmp eq i32 %call499, 0, !dbg !1350
  br i1 %cmp500, label %land.lhs.true502, label %if.else509, !dbg !1351

land.lhs.true502:                                 ; preds = %if.else494
  %397 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1352, !tbaa !320
  %had_err503 = getelementptr inbounds %struct.ParseStruct, ptr %397, i32 0, i32 26, !dbg !1352
  %398 = load i32, ptr %had_err503, align 8, !dbg !1352, !tbaa !380
  %tobool504 = icmp ne i32 %398, 0, !dbg !1352
  br i1 %tobool504, label %if.else509, label %if.then505, !dbg !1353

if.then505:                                       ; preds = %land.lhs.true502
  %399 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1354, !tbaa !320
  %xmlparser_static506 = getelementptr inbounds %struct.ParseStruct, ptr %399, i32 0, i32 40, !dbg !1354
  %hit_array_index_end507 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static506, i32 0, i32 4, !dbg !1354
  %400 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1356, !tbaa !320
  %hit_flag508 = getelementptr inbounds %struct.ParseStruct, ptr %400, i32 0, i32 28, !dbg !1356
  call void @flag_delete(ptr noundef %hit_array_index_end507, ptr noundef %hit_flag508, i8 noundef signext 104), !dbg !1357
  br label %if.end525, !dbg !1358

if.else509:                                       ; preds = %land.lhs.true502, %if.else494
  %401 = load ptr, ptr %name.addr, align 8, !dbg !1359, !tbaa !320
  %402 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1361, !tbaa !320
  %hit_hsp_array510 = getelementptr inbounds %struct.ParseStruct, ptr %402, i32 0, i32 2, !dbg !1361
  %403 = load ptr, ptr %hit_hsp_array510, align 8, !dbg !1361, !tbaa !639
  %404 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1362, !tbaa !320
  %xmlparser_static511 = getelementptr inbounds %struct.ParseStruct, ptr %404, i32 0, i32 40, !dbg !1362
  %hit_hsp_array_index_end = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static511, i32 0, i32 5, !dbg !1362
  %405 = load i16, ptr %hit_hsp_array_index_end, align 2, !dbg !1362, !tbaa !1363
  %conv512 = zext i16 %405 to i64, !dbg !1362
  %call513 = call ptr @gt_str_array_get(ptr noundef %403, i64 noundef %conv512), !dbg !1364
  %call514 = call i32 @strcmp(ptr noundef %401, ptr noundef %call513) #12, !dbg !1365
  %cmp515 = icmp eq i32 %call514, 0, !dbg !1366
  br i1 %cmp515, label %land.lhs.true517, label %if.end524, !dbg !1367

land.lhs.true517:                                 ; preds = %if.else509
  %406 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1368, !tbaa !320
  %had_err518 = getelementptr inbounds %struct.ParseStruct, ptr %406, i32 0, i32 26, !dbg !1368
  %407 = load i32, ptr %had_err518, align 8, !dbg !1368, !tbaa !380
  %tobool519 = icmp ne i32 %407, 0, !dbg !1368
  br i1 %tobool519, label %if.end524, label %if.then520, !dbg !1369

if.then520:                                       ; preds = %land.lhs.true517
  %408 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1370, !tbaa !320
  %xmlparser_static521 = getelementptr inbounds %struct.ParseStruct, ptr %408, i32 0, i32 40, !dbg !1370
  %hit_hsp_array_index_end522 = getelementptr inbounds %struct.XMLparser_static, ptr %xmlparser_static521, i32 0, i32 5, !dbg !1370
  %409 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1372, !tbaa !320
  %hit_hsp_flag523 = getelementptr inbounds %struct.ParseStruct, ptr %409, i32 0, i32 29, !dbg !1372
  call void @flag_delete(ptr noundef %hit_hsp_array_index_end522, ptr noundef %hit_hsp_flag523, i8 noundef signext 116), !dbg !1373
  br label %if.end524, !dbg !1374

if.end524:                                        ; preds = %if.then520, %land.lhs.true517, %if.else509
  br label %if.end525

if.end525:                                        ; preds = %if.end524, %if.then505
  br label %if.end526

if.end526:                                        ; preds = %if.end525, %if.then490
  %410 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1375, !tbaa !320
  %buf_ptr527 = getelementptr inbounds %struct.ParseStruct, ptr %410, i32 0, i32 7, !dbg !1375
  %411 = load ptr, ptr %buf_ptr527, align 8, !dbg !1375, !tbaa !831
  call void @gt_str_reset(ptr noundef %411), !dbg !1376
  br label %if.end528, !dbg !1377

if.end528:                                        ; preds = %if.end526, %lor.lhs.false44
  call void @llvm.lifetime.end.p0(i64 8, ptr %gi_ptr) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %numb_buf) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %query_nr_p) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %query_nr) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %ulong_numb_buf) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 2, ptr %gi_len) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #10, !dbg !1378
  br label %if.end529, !dbg !1379

if.end529:                                        ; preds = %if.end528, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %parsestruct_ptr) #10, !dbg !1380
  ret void, !dbg !1380
}

declare !dbg !1381 void @XML_SetCharacterDataHandler(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @textElement(ptr noundef %data, ptr noundef %txt_element, i32 noundef %len) #0 !dbg !1388 {
entry:
  %data.addr = alloca ptr, align 8
  %txt_element.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %parsestruct_ptr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1390, metadata !DIExpression()), !dbg !1394
  store ptr %txt_element, ptr %txt_element.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %txt_element.addr, metadata !1391, metadata !DIExpression()), !dbg !1395
  store i32 %len, ptr %len.addr, align 4, !tbaa !329
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1392, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %parsestruct_ptr) #10, !dbg !1397
  tail call void @llvm.dbg.declare(metadata ptr %parsestruct_ptr, metadata !1393, metadata !DIExpression()), !dbg !1398
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1399, !tbaa !320
  store ptr %0, ptr %parsestruct_ptr, align 8, !dbg !1398, !tbaa !320
  %1 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1400, !tbaa !320
  %had_err = getelementptr inbounds %struct.ParseStruct, ptr %1, i32 0, i32 26, !dbg !1400
  %2 = load i32, ptr %had_err, align 8, !dbg !1400, !tbaa !380
  %tobool = icmp ne i32 %2, 0, !dbg !1400
  br i1 %tobool, label %if.end11, label %if.then, !dbg !1402

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1403, !tbaa !320
  %hit_flag = getelementptr inbounds %struct.ParseStruct, ptr %3, i32 0, i32 28, !dbg !1403
  %4 = load i16, ptr %hit_flag, align 2, !dbg !1403, !tbaa !808
  %conv = zext i16 %4 to i32, !dbg !1403
  %cmp = icmp eq i32 %conv, 1, !dbg !1406
  br i1 %cmp, label %if.then9, label %lor.lhs.false, !dbg !1407

lor.lhs.false:                                    ; preds = %if.then
  %5 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1408, !tbaa !320
  %def_flag = getelementptr inbounds %struct.ParseStruct, ptr %5, i32 0, i32 27, !dbg !1408
  %6 = load i16, ptr %def_flag, align 4, !dbg !1408, !tbaa !804
  %conv2 = zext i16 %6 to i32, !dbg !1408
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !1409
  br i1 %cmp3, label %if.then9, label %lor.lhs.false5, !dbg !1410

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1411, !tbaa !320
  %hit_hsp_flag = getelementptr inbounds %struct.ParseStruct, ptr %7, i32 0, i32 29, !dbg !1411
  %8 = load i16, ptr %hit_hsp_flag, align 8, !dbg !1411, !tbaa !812
  %conv6 = zext i16 %8 to i32, !dbg !1411
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !1412
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !1413

if.then9:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  %9 = load ptr, ptr %parsestruct_ptr, align 8, !dbg !1414, !tbaa !320
  %buf_ptr = getelementptr inbounds %struct.ParseStruct, ptr %9, i32 0, i32 7, !dbg !1414
  %10 = load ptr, ptr %buf_ptr, align 8, !dbg !1414, !tbaa !831
  %11 = load ptr, ptr %txt_element.addr, align 8, !dbg !1416, !tbaa !320
  %12 = load i32, ptr %len.addr, align 4, !dbg !1417, !tbaa !329
  %conv10 = sext i32 %12 to i64, !dbg !1417
  call void @gt_str_append_cstr_nt(ptr noundef %10, ptr noundef %11, i64 noundef %conv10), !dbg !1418
  br label %if.end, !dbg !1419

if.end:                                           ; preds = %if.then9, %lor.lhs.false5
  br label %if.end11, !dbg !1420

if.end11:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %parsestruct_ptr) #10, !dbg !1421
  ret void, !dbg !1421
}

declare !dbg !1422 i32 @gt_str_read_next_line_generic(ptr noundef, ptr noundef) #2

declare !dbg !1425 i32 @XML_Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare !dbg !1428 ptr @gt_str_get(ptr noundef) #2

declare !dbg !1433 i64 @gt_str_length(ptr noundef) #2

declare !dbg !1436 i32 @XML_GetErrorCode(ptr noundef) #2

declare !dbg !1439 void @gt_error_set(ptr noundef, ptr noundef, ...) #2

declare !dbg !1442 ptr @XML_ErrorString(i32 noundef) #2

declare !dbg !1448 void @gt_str_reset(ptr noundef) #2

declare !dbg !1451 void @gt_str_array_delete(ptr noundef) #2

declare !dbg !1454 void @XML_ParserFree(ptr noundef) #2

declare !dbg !1457 void @gt_str_delete(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1458 i32 @strcmp(ptr noundef, ptr noundef) #4

declare !dbg !1462 ptr @gt_str_array_get(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @flag_setting(ptr noundef %counter_fct, ptr noundef %flag, i8 noundef signext %flag_sign) #0 !dbg !1467 {
entry:
  %counter_fct.addr = alloca ptr, align 8
  %flag.addr = alloca ptr, align 8
  %flag_sign.addr = alloca i8, align 1
  store ptr %counter_fct, ptr %counter_fct.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %counter_fct.addr, metadata !1472, metadata !DIExpression()), !dbg !1475
  store ptr %flag, ptr %flag.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !1473, metadata !DIExpression()), !dbg !1476
  store i8 %flag_sign, ptr %flag_sign.addr, align 1, !tbaa !400
  tail call void @llvm.dbg.declare(metadata ptr %flag_sign.addr, metadata !1474, metadata !DIExpression()), !dbg !1477
  %0 = load ptr, ptr %flag.addr, align 8, !dbg !1478, !tbaa !320
  store i16 1, ptr %0, align 2, !dbg !1479, !tbaa !708
  %1 = load ptr, ptr %counter_fct.addr, align 8, !dbg !1480, !tbaa !320
  %2 = load i16, ptr %1, align 2, !dbg !1481, !tbaa !708
  %inc = add i16 %2, 1, !dbg !1481
  store i16 %inc, ptr %1, align 2, !dbg !1481, !tbaa !708
  %3 = load ptr, ptr %counter_fct.addr, align 8, !dbg !1482, !tbaa !320
  %4 = load i8, ptr %flag_sign.addr, align 1, !dbg !1483, !tbaa !400
  call void @check_counter(ptr noundef %3, i8 noundef signext %4), !dbg !1484
  ret void, !dbg !1485
}

; Function Attrs: nounwind uwtable
define internal void @check_counter(ptr noundef %counter_check, i8 noundef signext %flag_sign_fct) #0 !dbg !1486 {
entry:
  %counter_check.addr = alloca ptr, align 8
  %flag_sign_fct.addr = alloca i8, align 1
  store ptr %counter_check, ptr %counter_check.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %counter_check.addr, metadata !1490, metadata !DIExpression()), !dbg !1492
  store i8 %flag_sign_fct, ptr %flag_sign_fct.addr, align 1, !tbaa !400
  tail call void @llvm.dbg.declare(metadata ptr %flag_sign_fct.addr, metadata !1491, metadata !DIExpression()), !dbg !1493
  %0 = load ptr, ptr %counter_check.addr, align 8, !dbg !1494, !tbaa !320
  %1 = load i16, ptr %0, align 2, !dbg !1496, !tbaa !708
  %conv = zext i16 %1 to i32, !dbg !1496
  %cmp = icmp eq i32 %conv, 1, !dbg !1497
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1498

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr %flag_sign_fct.addr, align 1, !dbg !1499, !tbaa !400
  %conv2 = sext i8 %2 to i32, !dbg !1499
  %cmp3 = icmp eq i32 %conv2, 113, !dbg !1500
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1501

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %counter_check.addr, align 8, !dbg !1502, !tbaa !320
  store i16 0, ptr %3, align 2, !dbg !1504, !tbaa !708
  br label %if.end, !dbg !1505

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load ptr, ptr %counter_check.addr, align 8, !dbg !1506, !tbaa !320
  %5 = load i16, ptr %4, align 2, !dbg !1508, !tbaa !708
  %conv5 = zext i16 %5 to i32, !dbg !1508
  %cmp6 = icmp eq i32 %conv5, 3, !dbg !1509
  br i1 %cmp6, label %land.lhs.true8, label %if.end13, !dbg !1510

land.lhs.true8:                                   ; preds = %if.end
  %6 = load i8, ptr %flag_sign_fct.addr, align 1, !dbg !1511, !tbaa !400
  %conv9 = sext i8 %6 to i32, !dbg !1511
  %cmp10 = icmp eq i32 %conv9, 104, !dbg !1512
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1513

if.then12:                                        ; preds = %land.lhs.true8
  %7 = load ptr, ptr %counter_check.addr, align 8, !dbg !1514, !tbaa !320
  store i16 0, ptr %7, align 2, !dbg !1516, !tbaa !708
  br label %if.end13, !dbg !1517

if.end13:                                         ; preds = %if.then12, %land.lhs.true8, %if.end
  %8 = load ptr, ptr %counter_check.addr, align 8, !dbg !1518, !tbaa !320
  %9 = load i16, ptr %8, align 2, !dbg !1520, !tbaa !708
  %conv14 = zext i16 %9 to i32, !dbg !1520
  %cmp15 = icmp eq i32 %conv14, 9, !dbg !1521
  br i1 %cmp15, label %land.lhs.true17, label %if.end22, !dbg !1522

land.lhs.true17:                                  ; preds = %if.end13
  %10 = load i8, ptr %flag_sign_fct.addr, align 1, !dbg !1523, !tbaa !400
  %conv18 = sext i8 %10 to i32, !dbg !1523
  %cmp19 = icmp eq i32 %conv18, 116, !dbg !1524
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1525

if.then21:                                        ; preds = %land.lhs.true17
  %11 = load ptr, ptr %counter_check.addr, align 8, !dbg !1526, !tbaa !320
  store i16 0, ptr %11, align 2, !dbg !1528, !tbaa !708
  br label %if.end22, !dbg !1529

if.end22:                                         ; preds = %if.then21, %land.lhs.true17, %if.end13
  ret void, !dbg !1530
}

declare !dbg !1531 i32 @mg_combinedscore(ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !1534 void @gt_array_reset(ptr noundef) #2

declare !dbg !1537 void @mg_outputwriter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) #2

declare !dbg !1564 void @gt_str_set(ptr noundef, ptr noundef) #2

declare !dbg !1567 ptr @gt_str_array_new() #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @gt_cstr_nofree_ulp_gt_hashmap_get(ptr noundef %ht, ptr noundef %key) #5 !dbg !1570 {
entry:
  %retval = alloca ptr, align 8
  %ht.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %map_entry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !1574, metadata !DIExpression()), !dbg !1583
  store ptr %key, ptr %key.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1575, metadata !DIExpression()), !dbg !1583
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_entry) #10, !dbg !1583
  tail call void @llvm.dbg.declare(metadata ptr %map_entry, metadata !1576, metadata !DIExpression()), !dbg !1583
  %0 = load ptr, ptr %ht.addr, align 8, !dbg !1583, !tbaa !320
  %call = call ptr @gt_hashtable_get(ptr noundef %0, ptr noundef %key.addr), !dbg !1583
  store ptr %call, ptr %map_entry, align 8, !dbg !1583, !tbaa !320
  %1 = load ptr, ptr %map_entry, align 8, !dbg !1584, !tbaa !320
  %cmp = icmp ne ptr %1, null, !dbg !1584
  br i1 %cmp, label %if.then, label %if.else, !dbg !1583

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %map_entry, align 8, !dbg !1584, !tbaa !320
  %value = getelementptr inbounds %struct.gt_cstr_nofree_ulp_map_entry, ptr %2, i32 0, i32 1, !dbg !1584
  store ptr %value, ptr %retval, align 8, !dbg !1584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1584

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1584

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_entry) #10, !dbg !1583
  %3 = load ptr, ptr %retval, align 8, !dbg !1583
  ret ptr %3, !dbg !1583
}

declare !dbg !1586 ptr @gt_bioseq_get_sequence(ptr noundef, i64 noundef) #2

declare !dbg !1591 void @gt_str_append_cstr_nt(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1594 i64 @gt_bioseq_get_sequence_length(ptr noundef, i64 noundef) #2

declare !dbg !1597 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1601 ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1604 ptr @__ctype_b_loc() #6

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1610 i64 @strspn(ptr noundef, ptr noundef) #4

declare !dbg !1613 void @gt_str_array_add_cstr(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i64 @atol(ptr noundef nonnull %__nptr) #7 !dbg !1616 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %__nptr.addr, metadata !1620, metadata !DIExpression()), !dbg !1621
  %0 = load ptr, ptr %__nptr.addr, align 8, !dbg !1622, !tbaa !320
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #10, !dbg !1623
  ret i64 %call, !dbg !1624
}

declare !dbg !1625 void @gt_array_add_elem(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1628 void @gt_file_xprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !1631 void @gt_str_append_cstr(ptr noundef, ptr noundef) #2

declare !dbg !1632 void @gt_str_array_set_size(ptr noundef, i64 noundef) #2

declare !dbg !1635 i64 @gt_str_array_size(ptr noundef) #2

declare !dbg !1638 void @gt_array_set_size(ptr noundef, i64 noundef) #2

declare !dbg !1641 i64 @gt_array_size(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @flag_delete(ptr noundef %counter_fct, ptr noundef %flag, i8 noundef signext %flag_sign) #0 !dbg !1646 {
entry:
  %counter_fct.addr = alloca ptr, align 8
  %flag.addr = alloca ptr, align 8
  %flag_sign.addr = alloca i8, align 1
  store ptr %counter_fct, ptr %counter_fct.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %counter_fct.addr, metadata !1648, metadata !DIExpression()), !dbg !1651
  store ptr %flag, ptr %flag.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !1649, metadata !DIExpression()), !dbg !1652
  store i8 %flag_sign, ptr %flag_sign.addr, align 1, !tbaa !400
  tail call void @llvm.dbg.declare(metadata ptr %flag_sign.addr, metadata !1650, metadata !DIExpression()), !dbg !1653
  %0 = load ptr, ptr %flag.addr, align 8, !dbg !1654, !tbaa !320
  store i16 0, ptr %0, align 2, !dbg !1655, !tbaa !708
  %1 = load ptr, ptr %counter_fct.addr, align 8, !dbg !1656, !tbaa !320
  %2 = load i16, ptr %1, align 2, !dbg !1657, !tbaa !708
  %inc = add i16 %2, 1, !dbg !1657
  store i16 %inc, ptr %1, align 2, !dbg !1657, !tbaa !708
  %3 = load ptr, ptr %counter_fct.addr, align 8, !dbg !1658, !tbaa !320
  %4 = load i8, ptr %flag_sign.addr, align 1, !dbg !1659, !tbaa !400
  call void @check_counter(ptr noundef %3, i8 noundef signext %4), !dbg !1660
  ret void, !dbg !1661
}

declare !dbg !1662 ptr @gt_hashtable_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !1667 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!71}
!llvm.module.flags = !{!300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/mgth/mg_xmlparser.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "dead727b2857e8e8fd43a83e83bdfe9f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 13)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 24)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 52)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 331, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 77)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 420, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 88, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 11)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 522, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 800, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 100)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 541, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 15)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !36)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 557, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 85)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 630, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 4)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 649, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 5)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 706, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 2)
!71 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !138, globals: !299, splitDebugInlining: false, nameTableKind: None)
!72 = !{!73, !118, !123}
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "XML_Error", file: !74, line: 54, baseType: !75, size: 32, elements: !76)
!74 = !DIFile(filename: "src/external/expat-2.0.1/lib/expat.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f235455608da0e14424b2cba731be0c6")
!75 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!77 = !DIEnumerator(name: "XML_ERROR_NONE", value: 0)
!78 = !DIEnumerator(name: "XML_ERROR_NO_MEMORY", value: 1)
!79 = !DIEnumerator(name: "XML_ERROR_SYNTAX", value: 2)
!80 = !DIEnumerator(name: "XML_ERROR_NO_ELEMENTS", value: 3)
!81 = !DIEnumerator(name: "XML_ERROR_INVALID_TOKEN", value: 4)
!82 = !DIEnumerator(name: "XML_ERROR_UNCLOSED_TOKEN", value: 5)
!83 = !DIEnumerator(name: "XML_ERROR_PARTIAL_CHAR", value: 6)
!84 = !DIEnumerator(name: "XML_ERROR_TAG_MISMATCH", value: 7)
!85 = !DIEnumerator(name: "XML_ERROR_DUPLICATE_ATTRIBUTE", value: 8)
!86 = !DIEnumerator(name: "XML_ERROR_JUNK_AFTER_DOC_ELEMENT", value: 9)
!87 = !DIEnumerator(name: "XML_ERROR_PARAM_ENTITY_REF", value: 10)
!88 = !DIEnumerator(name: "XML_ERROR_UNDEFINED_ENTITY", value: 11)
!89 = !DIEnumerator(name: "XML_ERROR_RECURSIVE_ENTITY_REF", value: 12)
!90 = !DIEnumerator(name: "XML_ERROR_ASYNC_ENTITY", value: 13)
!91 = !DIEnumerator(name: "XML_ERROR_BAD_CHAR_REF", value: 14)
!92 = !DIEnumerator(name: "XML_ERROR_BINARY_ENTITY_REF", value: 15)
!93 = !DIEnumerator(name: "XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF", value: 16)
!94 = !DIEnumerator(name: "XML_ERROR_MISPLACED_XML_PI", value: 17)
!95 = !DIEnumerator(name: "XML_ERROR_UNKNOWN_ENCODING", value: 18)
!96 = !DIEnumerator(name: "XML_ERROR_INCORRECT_ENCODING", value: 19)
!97 = !DIEnumerator(name: "XML_ERROR_UNCLOSED_CDATA_SECTION", value: 20)
!98 = !DIEnumerator(name: "XML_ERROR_EXTERNAL_ENTITY_HANDLING", value: 21)
!99 = !DIEnumerator(name: "XML_ERROR_NOT_STANDALONE", value: 22)
!100 = !DIEnumerator(name: "XML_ERROR_UNEXPECTED_STATE", value: 23)
!101 = !DIEnumerator(name: "XML_ERROR_ENTITY_DECLARED_IN_PE", value: 24)
!102 = !DIEnumerator(name: "XML_ERROR_FEATURE_REQUIRES_XML_DTD", value: 25)
!103 = !DIEnumerator(name: "XML_ERROR_CANT_CHANGE_FEATURE_ONCE_PARSING", value: 26)
!104 = !DIEnumerator(name: "XML_ERROR_UNBOUND_PREFIX", value: 27)
!105 = !DIEnumerator(name: "XML_ERROR_UNDECLARING_PREFIX", value: 28)
!106 = !DIEnumerator(name: "XML_ERROR_INCOMPLETE_PE", value: 29)
!107 = !DIEnumerator(name: "XML_ERROR_XML_DECL", value: 30)
!108 = !DIEnumerator(name: "XML_ERROR_TEXT_DECL", value: 31)
!109 = !DIEnumerator(name: "XML_ERROR_PUBLICID", value: 32)
!110 = !DIEnumerator(name: "XML_ERROR_SUSPENDED", value: 33)
!111 = !DIEnumerator(name: "XML_ERROR_NOT_SUSPENDED", value: 34)
!112 = !DIEnumerator(name: "XML_ERROR_ABORTED", value: 35)
!113 = !DIEnumerator(name: "XML_ERROR_FINISHED", value: 36)
!114 = !DIEnumerator(name: "XML_ERROR_SUSPEND_PE", value: 37)
!115 = !DIEnumerator(name: "XML_ERROR_RESERVED_PREFIX_XML", value: 38)
!116 = !DIEnumerator(name: "XML_ERROR_RESERVED_PREFIX_XMLNS", value: 39)
!117 = !DIEnumerator(name: "XML_ERROR_RESERVED_NAMESPACE_URI", value: 40)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "XML_Status", file: !74, line: 45, baseType: !75, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "XML_STATUS_ERROR", value: 0)
!121 = !DIEnumerator(name: "XML_STATUS_OK", value: 1)
!122 = !DIEnumerator(name: "XML_STATUS_SUSPENDED", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 46, baseType: !75, size: 32, elements: !125)
!124 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!126 = !DIEnumerator(name: "_ISupper", value: 256)
!127 = !DIEnumerator(name: "_ISlower", value: 512)
!128 = !DIEnumerator(name: "_ISalpha", value: 1024)
!129 = !DIEnumerator(name: "_ISdigit", value: 2048)
!130 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!131 = !DIEnumerator(name: "_ISspace", value: 8192)
!132 = !DIEnumerator(name: "_ISprint", value: 16384)
!133 = !DIEnumerator(name: "_ISgraph", value: 32768)
!134 = !DIEnumerator(name: "_ISblank", value: 1)
!135 = !DIEnumerator(name: "_IScntrl", value: 2)
!136 = !DIEnumerator(name: "_ISpunct", value: 4)
!137 = !DIEnumerator(name: "_ISalnum", value: 8)
!138 = !{!139, !296, !203, !205, !297}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ParseStruct", file: !141, line: 221, baseType: !142)
!141 = !DIFile(filename: "src/mgth/metagenomethreader.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "65897e0fcbb93eaf451472a63b8895b7")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 177, size: 4864, elements: !143)
!143 = !{!144, !149, !150, !151, !152, !153, !154, !159, !160, !161, !162, !163, !164, !165, !166, !167, !172, !177, !178, !183, !184, !185, !190, !191, !192, !197, !202, !204, !206, !207, !208, !209, !210, !211, !215, !216, !218, !219, !239, !263, !273, !284}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "query_array", scope: !142, file: !141, line: 179, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrArray", file: !147, line: 24, baseType: !148)
!147 = !DIFile(filename: "src/core/str_array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d2f5724ae7121552c301a489d5e7f125")
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStrArray", file: !147, line: 24, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hit_array", scope: !142, file: !141, line: 180, baseType: !145, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hit_hsp_array", scope: !142, file: !141, line: 181, baseType: !145, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "query_frame_tmp", scope: !142, file: !141, line: 182, baseType: !145, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "hit_frame_tmp", scope: !142, file: !141, line: 183, baseType: !145, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "key_tmp", scope: !142, file: !141, line: 184, baseType: !145, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "xml_tag", scope: !142, file: !141, line: 185, baseType: !155, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !157, line: 27, baseType: !158)
!157 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !157, line: 27, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "buf_ptr", scope: !142, file: !141, line: 186, baseType: !155, size: 64, offset: 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hit_fastafile", scope: !142, file: !141, line: 187, baseType: !155, size: 64, offset: 512)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "xmlfile", scope: !142, file: !141, line: 188, baseType: !155, size: 64, offset: 576)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "gi_def_tmp", scope: !142, file: !141, line: 189, baseType: !155, size: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "gi_acc_tmp", scope: !142, file: !141, line: 190, baseType: !155, size: 64, offset: 704)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "hit_gi_nr_tmp", scope: !142, file: !141, line: 191, baseType: !155, size: 64, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fasta_row", scope: !142, file: !141, line: 192, baseType: !155, size: 64, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_hits", scope: !142, file: !141, line: 193, baseType: !155, size: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "value_tmp", scope: !142, file: !141, line: 194, baseType: !168, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtArray", file: !170, line: 27, baseType: !171)
!170 = !DIFile(filename: "src/core/array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4614c0e64ebb94278b4837ce435832ba")
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtArray", file: !170, line: 27, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "queryseq", scope: !142, file: !141, line: 195, baseType: !173, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBioseq", file: !175, line: 29, baseType: !176)
!175 = !DIFile(filename: "src/core/bioseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9b30cca4d5e7006f9055b785cc9b7afe")
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBioseq", file: !175, line: 29, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "hitseq", scope: !142, file: !141, line: 196, baseType: !173, size: 64, offset: 1088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "fp_outputfile", scope: !142, file: !141, line: 197, baseType: !179, size: 64, offset: 1152)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtFile", file: !181, line: 33, baseType: !182)
!181 = !DIFile(filename: "src/core/file_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "11f2500b1166d3a68ac41902514c5538")
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtFile", file: !181, line: 33, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fp_blasthit_file", scope: !142, file: !141, line: 198, baseType: !179, size: 64, offset: 1216)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "fp_giexp_file", scope: !142, file: !141, line: 199, baseType: !179, size: 64, offset: 1280)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "queryhash", scope: !142, file: !141, line: 200, baseType: !186, size: 64, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHashtable", file: !188, line: 28, baseType: !189)
!188 = !DIFile(filename: "src/core/hashtable.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1ca7377432dd3e618e3e9515fdcaa88e")
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtHashtable", file: !188, line: 28, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "hithash", scope: !142, file: !141, line: 201, baseType: !186, size: 64, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "resulthits", scope: !142, file: !141, line: 202, baseType: !186, size: 64, offset: 1472)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "outlist", scope: !142, file: !141, line: 203, baseType: !193, size: 64, offset: 1536)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtDlist", file: !195, line: 27, baseType: !196)
!195 = !DIFile(filename: "src/core/dlist_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e8d65ed6bb429e185e6687cbcbfe7cae")
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtDlist", file: !195, line: 27, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !142, file: !141, line: 204, baseType: !198, size: 64, offset: 1600)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !200, line: 44, baseType: !201)
!200 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !200, line: 44, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "had_err", scope: !142, file: !141, line: 205, baseType: !203, size: 32, offset: 1664)
!203 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "def_flag", scope: !142, file: !141, line: 206, baseType: !205, size: 16, offset: 1696)
!205 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "hit_flag", scope: !142, file: !141, line: 207, baseType: !205, size: 16, offset: 1712)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "hit_hsp_flag", scope: !142, file: !141, line: 208, baseType: !205, size: 16, offset: 1728)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "xml_tag_flag", scope: !142, file: !141, line: 209, baseType: !205, size: 16, offset: 1744)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "giexp_flag", scope: !142, file: !141, line: 210, baseType: !205, size: 16, offset: 1760)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "gi_flag", scope: !142, file: !141, line: 211, baseType: !205, size: 16, offset: 1776)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "xml_linenumber", scope: !142, file: !141, line: 212, baseType: !212, size: 64, offset: 1792)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !213, line: 83, baseType: !214)
!213 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!214 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "hits_memory", scope: !142, file: !141, line: 213, baseType: !212, size: 64, offset: 1856)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "syn", scope: !142, file: !141, line: 214, baseType: !217, size: 64, offset: 1920)
!217 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "non_syn", scope: !142, file: !141, line: 215, baseType: !217, size: 64, offset: 1984)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_info", scope: !142, file: !141, line: 216, baseType: !220, size: 1024, offset: 2048)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "MatrixMemory", file: !141, line: 137, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 119, size: 1024, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "query_frame", scope: !221, file: !141, line: 121, baseType: !168, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "hit_frame", scope: !221, file: !141, line: 122, baseType: !168, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "query_from", scope: !221, file: !141, line: 123, baseType: !168, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "query_to", scope: !221, file: !141, line: 124, baseType: !168, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "query_dna", scope: !221, file: !141, line: 125, baseType: !155, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "query_def", scope: !221, file: !141, line: 126, baseType: !155, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "hit_gi_nr", scope: !221, file: !141, line: 127, baseType: !145, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "hit_num", scope: !221, file: !141, line: 128, baseType: !145, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "hit_gi_def", scope: !221, file: !141, line: 129, baseType: !145, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "hit_acc", scope: !221, file: !141, line: 130, baseType: !145, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "fasta_row", scope: !221, file: !141, line: 131, baseType: !145, size: 64, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "hit_from", scope: !221, file: !141, line: 132, baseType: !145, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "hit_to", scope: !221, file: !141, line: 133, baseType: !145, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "hit_dna", scope: !221, file: !141, line: 134, baseType: !145, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "hsp_qseq", scope: !221, file: !141, line: 135, baseType: !145, size: 64, offset: 896)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "hsp_hseq", scope: !221, file: !141, line: 136, baseType: !145, size: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "metagenomethreader_arguments", scope: !142, file: !141, line: 217, baseType: !240, size: 960, offset: 3072)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "MetagenomeThreaderArguments", file: !141, line: 115, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 94, size: 960, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !259, !260, !261, !262}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "synonomic_value", scope: !241, file: !141, line: 96, baseType: !217, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nonsynonomic_value", scope: !241, file: !141, line: 97, baseType: !217, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "blasthit_end_value", scope: !241, file: !141, line: 98, baseType: !217, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "stopcodon_queryseq", scope: !241, file: !141, line: 99, baseType: !217, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "stopcodon_hitseq", scope: !241, file: !141, line: 100, baseType: !217, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "frameshift_span", scope: !241, file: !141, line: 101, baseType: !217, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "prediction_span", scope: !241, file: !141, line: 102, baseType: !217, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "leavegene_value", scope: !241, file: !141, line: 103, baseType: !217, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "percent_value", scope: !241, file: !141, line: 104, baseType: !217, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "curl_fcgi_db", scope: !241, file: !141, line: 105, baseType: !155, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "outputtextfile_name", scope: !241, file: !141, line: 106, baseType: !155, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "giexpfile_name", scope: !241, file: !141, line: 107, baseType: !155, size: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "outputfile_format", scope: !241, file: !141, line: 108, baseType: !203, size: 32, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "codon_mode", scope: !241, file: !141, line: 109, baseType: !203, size: 32, offset: 800)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "hitfile_bool", scope: !241, file: !141, line: 110, baseType: !258, size: 8, offset: 832)
!258 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "homology_mode", scope: !241, file: !141, line: 111, baseType: !258, size: 8, offset: 840)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "extended_mode", scope: !241, file: !141, line: 112, baseType: !258, size: 8, offset: 848)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "testmodus_mode", scope: !241, file: !141, line: 113, baseType: !258, size: 8, offset: 856)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "min_as", scope: !241, file: !141, line: 114, baseType: !212, size: 64, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "hits_statistics", scope: !142, file: !141, line: 218, baseType: !264, size: 320, offset: 4032)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "HitsStatistic", file: !141, line: 147, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 140, size: 320, elements: !266)
!266 = !{!267, !268, !270, !271, !272}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "hits_statistic", scope: !265, file: !141, line: 142, baseType: !145, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "hitsnum", scope: !265, file: !141, line: 143, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !265, file: !141, line: 144, baseType: !269, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "hitsnumber", scope: !265, file: !141, line: 145, baseType: !212, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "stat_pos", scope: !265, file: !141, line: 146, baseType: !212, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "xmlparser_static", scope: !142, file: !141, line: 219, baseType: !274, size: 192, offset: 4352)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "XMLparser_static", file: !141, line: 159, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 150, size: 192, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "query_array_index_start", scope: !275, file: !141, line: 152, baseType: !205, size: 16)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hit_array_index_start", scope: !275, file: !141, line: 153, baseType: !205, size: 16, offset: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hit_hsp_array_index_start", scope: !275, file: !141, line: 154, baseType: !205, size: 16, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "query_array_index_end", scope: !275, file: !141, line: 155, baseType: !205, size: 16, offset: 48)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "hit_array_index_end", scope: !275, file: !141, line: 156, baseType: !205, size: 16, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "hit_hsp_array_index_end", scope: !275, file: !141, line: 157, baseType: !205, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hit_counter", scope: !275, file: !141, line: 158, baseType: !212, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "geneprediction_static", scope: !142, file: !141, line: 220, baseType: !285, size: 320, offset: 4544)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GenePrediction_static", file: !141, line: 171, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 162, size: 320, elements: !287)
!287 = !{!288, !289, !290, !292, !293, !294, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "matrixscore", scope: !286, file: !141, line: 164, baseType: !217, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "matrixscore_before", scope: !286, file: !141, line: 165, baseType: !217, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "current_frame", scope: !286, file: !141, line: 166, baseType: !291, size: 16, offset: 128)
!291 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "frame_before", scope: !286, file: !141, line: 167, baseType: !291, size: 16, offset: 144)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "function_stop", scope: !286, file: !141, line: 168, baseType: !291, size: 16, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "noncodingcounter", scope: !286, file: !141, line: 169, baseType: !212, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "codingcounter", scope: !286, file: !141, line: 170, baseType: !212, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!299 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !51, !56, !61, !66}
!300 = !{i32 7, !"Dwarf Version", i32 5}
!301 = !{i32 2, !"Debug Info Version", i32 3}
!302 = !{i32 1, !"wchar_size", i32 4}
!303 = !{i32 8, !"PIC Level", i32 2}
!304 = !{i32 7, !"uwtable", i32 2}
!305 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!306 = distinct !DISubprogram(name: "mg_xmlparser", scope: !2, file: !2, line: 275, type: !307, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!203, !139, !179, !198}
!309 = !{!310, !311, !312, !313, !314, !315, !316}
!310 = !DILocalVariable(name: "parsestruct_ptr", arg: 1, scope: !306, file: !2, line: 275, type: !139)
!311 = !DILocalVariable(name: "fp_xmlfile", arg: 2, scope: !306, file: !2, line: 275, type: !179)
!312 = !DILocalVariable(name: "err", arg: 3, scope: !306, file: !2, line: 276, type: !198)
!313 = !DILocalVariable(name: "had_err", scope: !306, file: !2, line: 278, type: !203)
!314 = !DILocalVariable(name: "error", scope: !306, file: !2, line: 281, type: !73)
!315 = !DILocalVariable(name: "buf", scope: !306, file: !2, line: 285, type: !155)
!316 = !DILocalVariable(name: "parser", scope: !306, file: !2, line: 286, type: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "XML_Parser", file: !74, line: 25, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "XML_ParserStruct", file: !74, line: 24, flags: DIFlagFwdDecl)
!320 = !{!321, !321, i64 0}
!321 = !{!"any pointer", !322, i64 0}
!322 = !{!"omnipotent char", !323, i64 0}
!323 = !{!"Simple C/C++ TBAA"}
!324 = !DILocation(line: 275, column: 31, scope: !306)
!325 = !DILocation(line: 275, column: 57, scope: !306)
!326 = !DILocation(line: 276, column: 28, scope: !306)
!327 = !DILocation(line: 278, column: 3, scope: !306)
!328 = !DILocation(line: 278, column: 7, scope: !306)
!329 = !{!330, !330, i64 0}
!330 = !{!"int", !322, i64 0}
!331 = !DILocation(line: 281, column: 3, scope: !306)
!332 = !DILocation(line: 281, column: 18, scope: !306)
!333 = !DILocation(line: 285, column: 3, scope: !306)
!334 = !DILocation(line: 285, column: 10, scope: !306)
!335 = !DILocation(line: 286, column: 3, scope: !306)
!336 = !DILocation(line: 286, column: 14, scope: !306)
!337 = !DILocation(line: 289, column: 3, scope: !306)
!338 = !DILocation(line: 289, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 289, column: 3)
!340 = distinct !DILexicalBlock(scope: !306, file: !2, line: 289, column: 3)
!341 = !DILocation(line: 289, column: 3, scope: !340)
!342 = !DILocation(line: 289, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !2, line: 289, column: 3)
!344 = !DILocation(line: 292, column: 9, scope: !306)
!345 = !DILocation(line: 292, column: 7, scope: !306)
!346 = !DILocation(line: 295, column: 12, scope: !306)
!347 = !DILocation(line: 295, column: 10, scope: !306)
!348 = !DILocation(line: 297, column: 19, scope: !306)
!349 = !DILocation(line: 297, column: 27, scope: !306)
!350 = !DILocation(line: 297, column: 3, scope: !306)
!351 = !DILocation(line: 299, column: 25, scope: !306)
!352 = !DILocation(line: 299, column: 3, scope: !306)
!353 = !DILocation(line: 301, column: 31, scope: !306)
!354 = !DILocation(line: 301, column: 3, scope: !306)
!355 = !DILocation(line: 303, column: 3, scope: !306)
!356 = !DILocation(line: 303, column: 41, scope: !306)
!357 = !DILocation(line: 303, column: 46, scope: !306)
!358 = !DILocation(line: 303, column: 11, scope: !306)
!359 = !DILocation(line: 303, column: 58, scope: !306)
!360 = !DILocation(line: 303, column: 66, scope: !306)
!361 = !DILocation(line: 303, column: 70, scope: !306)
!362 = !DILocation(line: 303, column: 69, scope: !306)
!363 = !DILocation(line: 0, scope: !306)
!364 = !DILocation(line: 305, column: 5, scope: !365)
!365 = distinct !DILexicalBlock(scope: !306, file: !2, line: 304, column: 3)
!366 = !DILocation(line: 305, column: 32, scope: !365)
!367 = !{!368, !370, i64 224}
!368 = !{!"", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !321, i64 120, !321, i64 128, !321, i64 136, !321, i64 144, !321, i64 152, !321, i64 160, !321, i64 168, !321, i64 176, !321, i64 184, !321, i64 192, !321, i64 200, !330, i64 208, !369, i64 212, !369, i64 214, !369, i64 216, !369, i64 218, !369, i64 220, !369, i64 222, !370, i64 224, !370, i64 232, !371, i64 240, !371, i64 248, !372, i64 256, !373, i64 384, !375, i64 504, !376, i64 544, !377, i64 568}
!369 = !{!"short", !322, i64 0}
!370 = !{!"long", !322, i64 0}
!371 = !{!"double", !322, i64 0}
!372 = !{!"", !321, i64 0, !321, i64 8, !321, i64 16, !321, i64 24, !321, i64 32, !321, i64 40, !321, i64 48, !321, i64 56, !321, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !321, i64 96, !321, i64 104, !321, i64 112, !321, i64 120}
!373 = !{!"", !371, i64 0, !371, i64 8, !371, i64 16, !371, i64 24, !371, i64 32, !371, i64 40, !371, i64 48, !371, i64 56, !371, i64 64, !321, i64 72, !321, i64 80, !321, i64 88, !330, i64 96, !330, i64 100, !374, i64 104, !374, i64 105, !374, i64 106, !374, i64 107, !370, i64 112}
!374 = !{!"_Bool", !322, i64 0}
!375 = !{!"", !321, i64 0, !321, i64 8, !321, i64 16, !370, i64 24, !370, i64 32}
!376 = !{!"", !369, i64 0, !369, i64 2, !369, i64 4, !369, i64 6, !369, i64 8, !369, i64 10, !370, i64 16}
!377 = !{!"", !371, i64 0, !371, i64 8, !369, i64 16, !369, i64 18, !369, i64 20, !370, i64 24, !370, i64 32}
!378 = !DILocation(line: 306, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !365, file: !2, line: 306, column: 9)
!380 = !{!368, !330, i64 208}
!381 = !DILocation(line: 306, column: 9, scope: !365)
!382 = !DILocation(line: 308, column: 15, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !2, line: 307, column: 5)
!384 = !DILocation(line: 309, column: 5, scope: !383)
!385 = !DILocation(line: 311, column: 20, scope: !386)
!386 = distinct !DILexicalBlock(scope: !365, file: !2, line: 311, column: 9)
!387 = !DILocation(line: 311, column: 39, scope: !386)
!388 = !DILocation(line: 311, column: 28, scope: !386)
!389 = !DILocation(line: 311, column: 59, scope: !386)
!390 = !DILocation(line: 311, column: 45, scope: !386)
!391 = !DILocation(line: 311, column: 10, scope: !386)
!392 = !DILocation(line: 311, column: 72, scope: !386)
!393 = !DILocation(line: 312, column: 28, scope: !386)
!394 = !DILocation(line: 312, column: 32, scope: !386)
!395 = !DILocation(line: 311, column: 9, scope: !365)
!396 = !DILocation(line: 314, column: 32, scope: !397)
!397 = distinct !DILexicalBlock(scope: !386, file: !2, line: 313, column: 5)
!398 = !DILocation(line: 314, column: 15, scope: !397)
!399 = !DILocation(line: 314, column: 13, scope: !397)
!400 = !{!322, !322, i64 0}
!401 = !DILocation(line: 315, column: 20, scope: !397)
!402 = !DILocation(line: 317, column: 17, scope: !397)
!403 = !DILocation(line: 317, column: 57, scope: !397)
!404 = !{!368, !321, i64 72}
!405 = !DILocation(line: 317, column: 46, scope: !397)
!406 = !DILocation(line: 318, column: 33, scope: !397)
!407 = !DILocation(line: 318, column: 17, scope: !397)
!408 = !DILocation(line: 315, column: 7, scope: !397)
!409 = !DILocation(line: 320, column: 15, scope: !397)
!410 = !DILocation(line: 321, column: 5, scope: !397)
!411 = !DILocation(line: 323, column: 18, scope: !365)
!412 = !DILocation(line: 323, column: 5, scope: !365)
!413 = distinct !{!413, !355, !414, !415}
!414 = !DILocation(line: 324, column: 3, scope: !306)
!415 = !{!"llvm.loop.mustprogress"}
!416 = !DILocation(line: 327, column: 18, scope: !417)
!417 = distinct !DILexicalBlock(scope: !306, file: !2, line: 327, column: 7)
!418 = !DILocation(line: 327, column: 8, scope: !417)
!419 = !DILocation(line: 327, column: 41, scope: !417)
!420 = !DILocation(line: 327, column: 62, scope: !417)
!421 = !DILocation(line: 327, column: 66, scope: !417)
!422 = !DILocation(line: 327, column: 7, scope: !306)
!423 = !DILocation(line: 329, column: 30, scope: !424)
!424 = distinct !DILexicalBlock(scope: !417, file: !2, line: 328, column: 3)
!425 = !DILocation(line: 329, column: 13, scope: !424)
!426 = !DILocation(line: 329, column: 11, scope: !424)
!427 = !DILocation(line: 330, column: 18, scope: !424)
!428 = !DILocation(line: 333, column: 26, scope: !424)
!429 = !DILocation(line: 333, column: 15, scope: !424)
!430 = !DILocation(line: 333, column: 65, scope: !424)
!431 = !DILocation(line: 333, column: 49, scope: !424)
!432 = !DILocation(line: 330, column: 5, scope: !424)
!433 = !DILocation(line: 335, column: 13, scope: !424)
!434 = !DILocation(line: 336, column: 3, scope: !424)
!435 = !DILocation(line: 338, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !306, file: !2, line: 338, column: 7)
!437 = !{!368, !369, i64 218}
!438 = !DILocation(line: 338, column: 33, scope: !436)
!439 = !DILocation(line: 338, column: 39, scope: !436)
!440 = !DILocation(line: 338, column: 48, scope: !436)
!441 = !DILocation(line: 338, column: 51, scope: !436)
!442 = !{!368, !369, i64 220}
!443 = !DILocation(line: 338, column: 7, scope: !306)
!444 = !DILocation(line: 340, column: 25, scope: !445)
!445 = distinct !DILexicalBlock(scope: !436, file: !2, line: 339, column: 3)
!446 = !{!368, !321, i64 304}
!447 = !DILocation(line: 340, column: 5, scope: !445)
!448 = !DILocation(line: 341, column: 25, scope: !445)
!449 = !{!368, !321, i64 312}
!450 = !DILocation(line: 341, column: 5, scope: !445)
!451 = !DILocation(line: 342, column: 25, scope: !445)
!452 = !{!368, !321, i64 360}
!453 = !DILocation(line: 342, column: 5, scope: !445)
!454 = !DILocation(line: 343, column: 25, scope: !445)
!455 = !{!368, !321, i64 320}
!456 = !DILocation(line: 343, column: 5, scope: !445)
!457 = !DILocation(line: 344, column: 25, scope: !445)
!458 = !{!368, !321, i64 328}
!459 = !DILocation(line: 344, column: 5, scope: !445)
!460 = !DILocation(line: 345, column: 25, scope: !445)
!461 = !{!368, !321, i64 336}
!462 = !DILocation(line: 345, column: 5, scope: !445)
!463 = !DILocation(line: 346, column: 25, scope: !445)
!464 = !{!368, !321, i64 344}
!465 = !DILocation(line: 346, column: 5, scope: !445)
!466 = !DILocation(line: 347, column: 25, scope: !445)
!467 = !{!368, !321, i64 352}
!468 = !DILocation(line: 347, column: 5, scope: !445)
!469 = !DILocation(line: 348, column: 25, scope: !445)
!470 = !{!368, !321, i64 368}
!471 = !DILocation(line: 348, column: 5, scope: !445)
!472 = !DILocation(line: 349, column: 25, scope: !445)
!473 = !{!368, !321, i64 376}
!474 = !DILocation(line: 349, column: 5, scope: !445)
!475 = !DILocation(line: 350, column: 25, scope: !445)
!476 = !{!368, !321, i64 24}
!477 = !DILocation(line: 350, column: 5, scope: !445)
!478 = !DILocation(line: 351, column: 25, scope: !445)
!479 = !{!368, !321, i64 32}
!480 = !DILocation(line: 351, column: 5, scope: !445)
!481 = !DILocation(line: 352, column: 3, scope: !445)
!482 = !DILocation(line: 355, column: 18, scope: !306)
!483 = !DILocation(line: 355, column: 3, scope: !306)
!484 = !DILocation(line: 356, column: 17, scope: !306)
!485 = !DILocation(line: 356, column: 3, scope: !306)
!486 = !DILocation(line: 358, column: 10, scope: !306)
!487 = !DILocation(line: 359, column: 1, scope: !306)
!488 = !DILocation(line: 358, column: 3, scope: !306)
!489 = !DISubprogram(name: "gt_error_is_set", scope: !200, file: !200, line: 64, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DISubroutineType(types: !491)
!491 = !{!258, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!494 = !DISubprogram(name: "fprintf", scope: !495, file: !495, line: 350, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!495 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!496 = !DISubroutineType(types: !497)
!497 = !{!203, !498, !556, null}
!498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !501, line: 7, baseType: !502)
!501 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !503, line: 49, size: 1728, elements: !504)
!503 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !520, !522, !523, !524, !528, !529, !531, !535, !538, !540, !543, !546, !547, !548, !551, !552}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !502, file: !503, line: 51, baseType: !203, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !502, file: !503, line: 54, baseType: !298, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !502, file: !503, line: 55, baseType: !298, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !502, file: !503, line: 56, baseType: !298, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !502, file: !503, line: 57, baseType: !298, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !502, file: !503, line: 58, baseType: !298, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !502, file: !503, line: 59, baseType: !298, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !502, file: !503, line: 60, baseType: !298, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !502, file: !503, line: 61, baseType: !298, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !502, file: !503, line: 64, baseType: !298, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !502, file: !503, line: 65, baseType: !298, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !502, file: !503, line: 66, baseType: !298, size: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !502, file: !503, line: 68, baseType: !518, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !503, line: 36, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !502, file: !503, line: 70, baseType: !521, size: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !502, file: !503, line: 72, baseType: !203, size: 32, offset: 896)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !502, file: !503, line: 73, baseType: !203, size: 32, offset: 928)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !502, file: !503, line: 74, baseType: !525, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !526, line: 152, baseType: !527)
!526 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!527 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !502, file: !503, line: 77, baseType: !205, size: 16, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !502, file: !503, line: 78, baseType: !530, size: 8, offset: 1040)
!530 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !502, file: !503, line: 79, baseType: !532, size: 8, offset: 1048)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 1)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !502, file: !503, line: 81, baseType: !536, size: 64, offset: 1088)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !503, line: 43, baseType: null)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !502, file: !503, line: 89, baseType: !539, size: 64, offset: 1152)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !526, line: 153, baseType: !527)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !502, file: !503, line: 91, baseType: !541, size: 64, offset: 1216)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !503, line: 37, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !502, file: !503, line: 92, baseType: !544, size: 64, offset: 1280)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !503, line: 38, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !502, file: !503, line: 93, baseType: !521, size: 64, offset: 1344)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !502, file: !503, line: 94, baseType: !296, size: 64, offset: 1408)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !502, file: !503, line: 95, baseType: !549, size: 64, offset: 1472)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !550, line: 70, baseType: !214)
!550 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !502, file: !503, line: 96, baseType: !203, size: 32, offset: 1536)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !502, file: !503, line: 98, baseType: !553, size: 160, offset: 1568)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 20)
!556 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!558 = !DISubprogram(name: "abort", scope: !559, file: !559, line: 598, type: !560, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!559 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!560 = !DISubroutineType(types: !561)
!561 = !{null}
!562 = !DISubprogram(name: "gt_str_new", scope: !157, file: !157, line: 30, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DISubroutineType(types: !564)
!564 = !{!155}
!565 = !DISubprogram(name: "XML_ParserCreate", scope: !74, file: !74, line: 206, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubroutineType(types: !567)
!567 = !{!317, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "XML_Char", file: !571, line: 94, baseType: !4)
!571 = !DIFile(filename: "src/external/expat-2.0.1/lib/expat_external.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8e2b8dce543d6ff4cdb37f4a8daabd9e")
!572 = !DISubprogram(name: "XML_SetUserData", scope: !74, file: !74, line: 671, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !317, !296}
!575 = !DISubprogram(name: "XML_SetElementHandler", scope: !74, file: !74, line: 534, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !317, !578, !583}
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "XML_StartElementHandler", file: !74, line: 252, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !296, !568, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "XML_EndElementHandler", file: !74, line: 256, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !296, !568}
!587 = distinct !DISubprogram(name: "startElement", scope: !2, file: !2, line: 361, type: !588, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !591)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !296, !557, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!591 = !{!592, !593, !594, !595}
!592 = !DILocalVariable(name: "data", arg: 1, scope: !587, file: !2, line: 361, type: !296)
!593 = !DILocalVariable(name: "name", arg: 2, scope: !587, file: !2, line: 361, type: !557)
!594 = !DILocalVariable(name: "atts", arg: 3, scope: !587, file: !2, line: 362, type: !590)
!595 = !DILocalVariable(name: "parsestruct_ptr", scope: !587, file: !2, line: 364, type: !139)
!596 = !DILocation(line: 361, column: 40, scope: !587)
!597 = !DILocation(line: 361, column: 58, scope: !587)
!598 = !DILocation(line: 362, column: 57, scope: !587)
!599 = !DILocation(line: 364, column: 3, scope: !587)
!600 = !DILocation(line: 364, column: 16, scope: !587)
!601 = !DILocation(line: 364, column: 50, scope: !587)
!602 = !DILocation(line: 366, column: 8, scope: !603)
!603 = distinct !DILexicalBlock(scope: !587, file: !2, line: 366, column: 7)
!604 = !DILocation(line: 366, column: 7, scope: !587)
!605 = !DILocation(line: 371, column: 10, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 370, column: 9)
!607 = distinct !DILexicalBlock(scope: !603, file: !2, line: 367, column: 3)
!608 = !DILocation(line: 372, column: 27, scope: !606)
!609 = !{!368, !321, i64 0}
!610 = !DILocation(line: 373, column: 23, scope: !606)
!611 = !{!368, !369, i64 544}
!612 = !DILocation(line: 372, column: 10, scope: !606)
!613 = !DILocation(line: 370, column: 9, scope: !606)
!614 = !DILocation(line: 373, column: 66, scope: !606)
!615 = !DILocation(line: 370, column: 9, scope: !607)
!616 = !DILocation(line: 375, column: 21, scope: !617)
!617 = distinct !DILexicalBlock(scope: !606, file: !2, line: 374, column: 5)
!618 = !DILocation(line: 376, column: 21, scope: !617)
!619 = !DILocation(line: 375, column: 7, scope: !617)
!620 = !DILocation(line: 377, column: 5, scope: !617)
!621 = !DILocation(line: 380, column: 12, scope: !622)
!622 = distinct !DILexicalBlock(scope: !606, file: !2, line: 379, column: 11)
!623 = !DILocation(line: 381, column: 29, scope: !622)
!624 = !{!368, !321, i64 8}
!625 = !DILocation(line: 382, column: 25, scope: !622)
!626 = !{!368, !369, i64 546}
!627 = !DILocation(line: 381, column: 12, scope: !622)
!628 = !DILocation(line: 379, column: 11, scope: !622)
!629 = !DILocation(line: 382, column: 66, scope: !622)
!630 = !DILocation(line: 379, column: 11, scope: !606)
!631 = !DILocation(line: 384, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !622, file: !2, line: 383, column: 5)
!633 = !DILocation(line: 385, column: 21, scope: !632)
!634 = !DILocation(line: 384, column: 7, scope: !632)
!635 = !DILocation(line: 386, column: 5, scope: !632)
!636 = !DILocation(line: 389, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !622, file: !2, line: 388, column: 11)
!638 = !DILocation(line: 390, column: 29, scope: !637)
!639 = !{!368, !321, i64 16}
!640 = !DILocation(line: 391, column: 25, scope: !637)
!641 = !{!368, !369, i64 548}
!642 = !DILocation(line: 390, column: 12, scope: !637)
!643 = !DILocation(line: 388, column: 11, scope: !637)
!644 = !DILocation(line: 391, column: 70, scope: !637)
!645 = !DILocation(line: 388, column: 11, scope: !622)
!646 = !DILocation(line: 393, column: 21, scope: !647)
!647 = distinct !DILexicalBlock(scope: !637, file: !2, line: 392, column: 5)
!648 = !DILocation(line: 394, column: 21, scope: !647)
!649 = !DILocation(line: 393, column: 7, scope: !647)
!650 = !DILocation(line: 395, column: 5, scope: !647)
!651 = !DILocation(line: 396, column: 3, scope: !607)
!652 = !DILocation(line: 397, column: 1, scope: !587)
!653 = distinct !DISubprogram(name: "endElement", scope: !2, file: !2, line: 399, type: !654, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !296, !557}
!656 = !{!657, !658, !659, !660, !663, !664, !665, !666, !668, !670, !671, !678, !690, !691, !692}
!657 = !DILocalVariable(name: "data", arg: 1, scope: !653, file: !2, line: 399, type: !296)
!658 = !DILocalVariable(name: "name", arg: 2, scope: !653, file: !2, line: 399, type: !557)
!659 = !DILocalVariable(name: "parsestruct_ptr", scope: !653, file: !2, line: 401, type: !139)
!660 = !DILocalVariable(name: "err", scope: !661, file: !2, line: 405, type: !198)
!661 = distinct !DILexicalBlock(scope: !662, file: !2, line: 404, column: 3)
!662 = distinct !DILexicalBlock(scope: !653, file: !2, line: 403, column: 7)
!663 = !DILocalVariable(name: "gi_len", scope: !661, file: !2, line: 408, type: !205)
!664 = !DILocalVariable(name: "ulong_numb_buf", scope: !661, file: !2, line: 412, type: !212)
!665 = !DILocalVariable(name: "query_nr", scope: !661, file: !2, line: 413, type: !212)
!666 = !DILocalVariable(name: "query_nr_p", scope: !661, file: !2, line: 413, type: !667)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!668 = !DILocalVariable(name: "numb_buf", scope: !661, file: !2, line: 414, type: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtWord", file: !213, line: 94, baseType: !527)
!670 = !DILocalVariable(name: "gi_ptr", scope: !661, file: !2, line: 417, type: !557)
!671 = !DILocalVariable(name: "seq", scope: !672, file: !2, line: 508, type: !298)
!672 = distinct !DILexicalBlock(scope: !673, file: !2, line: 507, column: 9)
!673 = distinct !DILexicalBlock(scope: !674, file: !2, line: 505, column: 13)
!674 = distinct !DILexicalBlock(scope: !675, file: !2, line: 476, column: 7)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 474, column: 11)
!676 = distinct !DILexicalBlock(scope: !677, file: !2, line: 471, column: 5)
!677 = distinct !DILexicalBlock(scope: !661, file: !2, line: 469, column: 9)
!678 = !DILocalVariable(name: "hit_nr", scope: !679, file: !2, line: 689, type: !212)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 674, column: 7)
!680 = distinct !DILexicalBlock(scope: !681, file: !2, line: 672, column: 16)
!681 = distinct !DILexicalBlock(scope: !682, file: !2, line: 656, column: 16)
!682 = distinct !DILexicalBlock(scope: !683, file: !2, line: 637, column: 16)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 618, column: 16)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 610, column: 16)
!685 = distinct !DILexicalBlock(scope: !686, file: !2, line: 598, column: 16)
!686 = distinct !DILexicalBlock(scope: !687, file: !2, line: 578, column: 16)
!687 = distinct !DILexicalBlock(scope: !688, file: !2, line: 569, column: 16)
!688 = distinct !DILexicalBlock(scope: !689, file: !2, line: 563, column: 16)
!689 = distinct !DILexicalBlock(scope: !675, file: !2, line: 530, column: 13)
!690 = !DILocalVariable(name: "hit_tmp", scope: !679, file: !2, line: 691, type: !155)
!691 = !DILocalVariable(name: "hit_dna_tmp", scope: !679, file: !2, line: 692, type: !155)
!692 = !DILocalVariable(name: "seq", scope: !693, file: !2, line: 727, type: !298)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 726, column: 9)
!694 = distinct !DILexicalBlock(scope: !679, file: !2, line: 724, column: 13)
!695 = !DILocation(line: 399, column: 38, scope: !653)
!696 = !DILocation(line: 399, column: 56, scope: !653)
!697 = !DILocation(line: 401, column: 3, scope: !653)
!698 = !DILocation(line: 401, column: 16, scope: !653)
!699 = !DILocation(line: 401, column: 50, scope: !653)
!700 = !DILocation(line: 403, column: 8, scope: !662)
!701 = !DILocation(line: 403, column: 7, scope: !653)
!702 = !DILocation(line: 405, column: 5, scope: !661)
!703 = !DILocation(line: 405, column: 14, scope: !661)
!704 = !DILocation(line: 405, column: 20, scope: !661)
!705 = !{!368, !321, i64 200}
!706 = !DILocation(line: 408, column: 5, scope: !661)
!707 = !DILocation(line: 408, column: 20, scope: !661)
!708 = !{!369, !369, i64 0}
!709 = !DILocation(line: 412, column: 5, scope: !661)
!710 = !DILocation(line: 412, column: 13, scope: !661)
!711 = !{!370, !370, i64 0}
!712 = !DILocation(line: 413, column: 7, scope: !661)
!713 = !DILocation(line: 413, column: 23, scope: !661)
!714 = !DILocation(line: 414, column: 5, scope: !661)
!715 = !DILocation(line: 414, column: 12, scope: !661)
!716 = !DILocation(line: 417, column: 5, scope: !661)
!717 = !DILocation(line: 417, column: 17, scope: !661)
!718 = !DILocation(line: 420, column: 5, scope: !661)
!719 = !DILocation(line: 420, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 420, column: 5)
!721 = distinct !DILexicalBlock(scope: !661, file: !2, line: 420, column: 5)
!722 = !DILocation(line: 420, column: 5, scope: !721)
!723 = !DILocation(line: 420, column: 5, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !2, line: 420, column: 5)
!725 = !DILocation(line: 425, column: 16, scope: !726)
!726 = distinct !DILexicalBlock(scope: !661, file: !2, line: 425, column: 9)
!727 = !DILocation(line: 425, column: 33, scope: !726)
!728 = !{!368, !321, i64 48}
!729 = !DILocation(line: 425, column: 22, scope: !726)
!730 = !DILocation(line: 425, column: 9, scope: !726)
!731 = !DILocation(line: 425, column: 56, scope: !726)
!732 = !DILocation(line: 426, column: 30, scope: !726)
!733 = !DILocation(line: 426, column: 33, scope: !726)
!734 = !DILocation(line: 425, column: 9, scope: !661)
!735 = !DILocation(line: 428, column: 11, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 428, column: 11)
!737 = distinct !DILexicalBlock(scope: !726, file: !2, line: 427, column: 5)
!738 = !{!368, !370, i64 560}
!739 = !DILocation(line: 428, column: 40, scope: !736)
!740 = !DILocation(line: 428, column: 11, scope: !737)
!741 = !DILocation(line: 431, column: 28, scope: !742)
!742 = distinct !DILexicalBlock(scope: !736, file: !2, line: 429, column: 7)
!743 = !DILocation(line: 431, column: 45, scope: !742)
!744 = !DILocation(line: 432, column: 28, scope: !742)
!745 = !DILocation(line: 431, column: 11, scope: !742)
!746 = !DILocation(line: 430, column: 9, scope: !742)
!747 = !DILocation(line: 430, column: 30, scope: !742)
!748 = !DILocation(line: 435, column: 9, scope: !742)
!749 = !DILocation(line: 435, column: 38, scope: !742)
!750 = !DILocation(line: 436, column: 9, scope: !742)
!751 = !DILocation(line: 436, column: 30, scope: !742)
!752 = !{!368, !369, i64 222}
!753 = !DILocation(line: 438, column: 24, scope: !742)
!754 = !{!368, !321, i64 272}
!755 = !DILocation(line: 438, column: 9, scope: !742)
!756 = !DILocation(line: 439, column: 24, scope: !742)
!757 = !{!368, !321, i64 280}
!758 = !DILocation(line: 439, column: 9, scope: !742)
!759 = !DILocation(line: 440, column: 24, scope: !742)
!760 = !{!368, !321, i64 264}
!761 = !DILocation(line: 440, column: 9, scope: !742)
!762 = !DILocation(line: 441, column: 24, scope: !742)
!763 = !{!368, !321, i64 256}
!764 = !DILocation(line: 441, column: 9, scope: !742)
!765 = !DILocation(line: 442, column: 7, scope: !742)
!766 = !DILocation(line: 445, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !737, file: !2, line: 445, column: 11)
!768 = !{!368, !330, i64 480}
!769 = !DILocation(line: 445, column: 46, scope: !767)
!770 = !DILocation(line: 445, column: 11, scope: !737)
!771 = !DILocation(line: 448, column: 25, scope: !772)
!772 = distinct !DILexicalBlock(scope: !767, file: !2, line: 446, column: 7)
!773 = !DILocation(line: 448, column: 65, scope: !772)
!774 = !DILocation(line: 448, column: 9, scope: !772)
!775 = !DILocation(line: 449, column: 7, scope: !772)
!776 = !DILocation(line: 451, column: 27, scope: !737)
!777 = !DILocation(line: 451, column: 7, scope: !737)
!778 = !DILocation(line: 452, column: 27, scope: !737)
!779 = !DILocation(line: 452, column: 7, scope: !737)
!780 = !DILocation(line: 453, column: 27, scope: !737)
!781 = !DILocation(line: 453, column: 7, scope: !737)
!782 = !DILocation(line: 454, column: 27, scope: !737)
!783 = !DILocation(line: 454, column: 7, scope: !737)
!784 = !DILocation(line: 455, column: 27, scope: !737)
!785 = !DILocation(line: 455, column: 7, scope: !737)
!786 = !DILocation(line: 457, column: 27, scope: !737)
!787 = !DILocation(line: 457, column: 7, scope: !737)
!788 = !DILocation(line: 458, column: 27, scope: !737)
!789 = !DILocation(line: 458, column: 7, scope: !737)
!790 = !DILocation(line: 459, column: 27, scope: !737)
!791 = !DILocation(line: 459, column: 7, scope: !737)
!792 = !DILocation(line: 460, column: 27, scope: !737)
!793 = !DILocation(line: 460, column: 7, scope: !737)
!794 = !DILocation(line: 461, column: 27, scope: !737)
!795 = !DILocation(line: 461, column: 7, scope: !737)
!796 = !DILocation(line: 462, column: 27, scope: !737)
!797 = !DILocation(line: 462, column: 7, scope: !737)
!798 = !DILocation(line: 463, column: 27, scope: !737)
!799 = !DILocation(line: 463, column: 7, scope: !737)
!800 = !DILocation(line: 465, column: 7, scope: !737)
!801 = !DILocation(line: 465, column: 33, scope: !737)
!802 = !DILocation(line: 466, column: 5, scope: !737)
!803 = !DILocation(line: 469, column: 10, scope: !677)
!804 = !{!368, !369, i64 212}
!805 = !DILocation(line: 469, column: 32, scope: !677)
!806 = !DILocation(line: 469, column: 37, scope: !677)
!807 = !DILocation(line: 469, column: 40, scope: !677)
!808 = !{!368, !369, i64 214}
!809 = !DILocation(line: 469, column: 62, scope: !677)
!810 = !DILocation(line: 470, column: 10, scope: !677)
!811 = !DILocation(line: 470, column: 13, scope: !677)
!812 = !{!368, !369, i64 216}
!813 = !DILocation(line: 470, column: 39, scope: !677)
!814 = !DILocation(line: 469, column: 9, scope: !661)
!815 = !DILocation(line: 474, column: 18, scope: !675)
!816 = !DILocation(line: 474, column: 41, scope: !675)
!817 = !DILocation(line: 474, column: 24, scope: !675)
!818 = !DILocation(line: 474, column: 11, scope: !675)
!819 = !DILocation(line: 474, column: 71, scope: !675)
!820 = !DILocation(line: 475, column: 37, scope: !675)
!821 = !DILocation(line: 475, column: 40, scope: !675)
!822 = !DILocation(line: 474, column: 11, scope: !676)
!823 = !DILocation(line: 479, column: 22, scope: !674)
!824 = !{!368, !321, i64 288}
!825 = !DILocation(line: 479, column: 9, scope: !674)
!826 = !DILocation(line: 480, column: 22, scope: !674)
!827 = !{!368, !321, i64 296}
!828 = !DILocation(line: 480, column: 9, scope: !674)
!829 = !DILocation(line: 483, column: 20, scope: !674)
!830 = !DILocation(line: 483, column: 56, scope: !674)
!831 = !{!368, !321, i64 56}
!832 = !DILocation(line: 483, column: 45, scope: !674)
!833 = !DILocation(line: 483, column: 9, scope: !674)
!834 = !DILocation(line: 487, column: 35, scope: !674)
!835 = !DILocation(line: 487, column: 9, scope: !674)
!836 = !DILocation(line: 487, column: 33, scope: !674)
!837 = !DILocation(line: 488, column: 33, scope: !674)
!838 = !DILocation(line: 488, column: 9, scope: !674)
!839 = !DILocation(line: 488, column: 31, scope: !674)
!840 = !DILocation(line: 489, column: 33, scope: !674)
!841 = !DILocation(line: 489, column: 9, scope: !674)
!842 = !DILocation(line: 489, column: 31, scope: !674)
!843 = !DILocation(line: 490, column: 36, scope: !674)
!844 = !DILocation(line: 490, column: 9, scope: !674)
!845 = !DILocation(line: 490, column: 34, scope: !674)
!846 = !DILocation(line: 491, column: 33, scope: !674)
!847 = !DILocation(line: 491, column: 9, scope: !674)
!848 = !DILocation(line: 491, column: 31, scope: !674)
!849 = !DILocation(line: 492, column: 35, scope: !674)
!850 = !DILocation(line: 492, column: 9, scope: !674)
!851 = !DILocation(line: 492, column: 33, scope: !674)
!852 = !DILocation(line: 493, column: 34, scope: !674)
!853 = !DILocation(line: 493, column: 9, scope: !674)
!854 = !DILocation(line: 493, column: 32, scope: !674)
!855 = !DILocation(line: 494, column: 32, scope: !674)
!856 = !DILocation(line: 494, column: 9, scope: !674)
!857 = !DILocation(line: 494, column: 30, scope: !674)
!858 = !DILocation(line: 495, column: 34, scope: !674)
!859 = !DILocation(line: 495, column: 9, scope: !674)
!860 = !DILocation(line: 495, column: 32, scope: !674)
!861 = !DILocation(line: 496, column: 34, scope: !674)
!862 = !DILocation(line: 496, column: 9, scope: !674)
!863 = !DILocation(line: 496, column: 32, scope: !674)
!864 = !DILocation(line: 497, column: 40, scope: !674)
!865 = !DILocation(line: 497, column: 9, scope: !674)
!866 = !DILocation(line: 497, column: 38, scope: !674)
!867 = !DILocation(line: 498, column: 38, scope: !674)
!868 = !DILocation(line: 498, column: 9, scope: !674)
!869 = !DILocation(line: 498, column: 36, scope: !674)
!870 = !DILocation(line: 502, column: 9, scope: !674)
!871 = !DILocation(line: 502, column: 35, scope: !674)
!872 = !DILocation(line: 506, column: 16, scope: !673)
!873 = !{!368, !321, i64 168}
!874 = !DILocation(line: 506, column: 51, scope: !673)
!875 = !DILocation(line: 506, column: 40, scope: !673)
!876 = !DILocation(line: 505, column: 27, scope: !673)
!877 = !DILocation(line: 505, column: 25, scope: !673)
!878 = !DILocation(line: 505, column: 13, scope: !674)
!879 = !DILocation(line: 508, column: 11, scope: !672)
!880 = !DILocation(line: 508, column: 17, scope: !672)
!881 = !DILocation(line: 509, column: 24, scope: !672)
!882 = !DILocation(line: 509, column: 23, scope: !672)
!883 = !DILocation(line: 509, column: 22, scope: !672)
!884 = !DILocation(line: 509, column: 20, scope: !672)
!885 = !DILocation(line: 510, column: 40, scope: !672)
!886 = !{!368, !321, i64 128}
!887 = !DILocation(line: 510, column: 63, scope: !672)
!888 = !DILocation(line: 510, column: 17, scope: !672)
!889 = !DILocation(line: 510, column: 15, scope: !672)
!890 = !DILocation(line: 512, column: 33, scope: !672)
!891 = !DILocation(line: 512, column: 58, scope: !672)
!892 = !DILocation(line: 513, column: 63, scope: !672)
!893 = !DILocation(line: 515, column: 63, scope: !672)
!894 = !DILocation(line: 513, column: 33, scope: !672)
!895 = !DILocation(line: 512, column: 11, scope: !672)
!896 = !DILocation(line: 516, column: 11, scope: !672)
!897 = !DILocation(line: 517, column: 27, scope: !672)
!898 = !DILocation(line: 517, column: 67, scope: !672)
!899 = !DILocation(line: 517, column: 11, scope: !672)
!900 = !DILocation(line: 518, column: 9, scope: !673)
!901 = !DILocation(line: 518, column: 9, scope: !672)
!902 = !DILocation(line: 521, column: 24, scope: !903)
!903 = distinct !DILexicalBlock(scope: !673, file: !2, line: 520, column: 9)
!904 = !DILocation(line: 521, column: 11, scope: !903)
!905 = !DILocation(line: 524, column: 11, scope: !903)
!906 = !DILocation(line: 524, column: 32, scope: !903)
!907 = !DILocation(line: 526, column: 7, scope: !674)
!908 = !DILocation(line: 530, column: 21, scope: !689)
!909 = !DILocation(line: 530, column: 44, scope: !689)
!910 = !DILocation(line: 530, column: 27, scope: !689)
!911 = !DILocation(line: 530, column: 14, scope: !689)
!912 = !DILocation(line: 530, column: 72, scope: !689)
!913 = !DILocation(line: 530, column: 13, scope: !675)
!914 = !DILocation(line: 533, column: 22, scope: !915)
!915 = distinct !DILexicalBlock(scope: !689, file: !2, line: 531, column: 7)
!916 = !{!368, !321, i64 96}
!917 = !DILocation(line: 533, column: 9, scope: !915)
!918 = !DILocation(line: 534, column: 22, scope: !915)
!919 = !{!368, !321, i64 104}
!920 = !DILocation(line: 534, column: 9, scope: !915)
!921 = !DILocation(line: 536, column: 20, scope: !915)
!922 = !DILocation(line: 536, column: 55, scope: !915)
!923 = !DILocation(line: 536, column: 44, scope: !915)
!924 = !DILocation(line: 536, column: 9, scope: !915)
!925 = !DILocation(line: 539, column: 36, scope: !915)
!926 = !DILocation(line: 539, column: 25, scope: !915)
!927 = !DILocation(line: 539, column: 18, scope: !915)
!928 = !DILocation(line: 539, column: 16, scope: !915)
!929 = !DILocation(line: 541, column: 9, scope: !915)
!930 = !DILocation(line: 541, column: 9, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !2, line: 541, column: 9)
!932 = distinct !DILexicalBlock(scope: !915, file: !2, line: 541, column: 9)
!933 = !DILocation(line: 541, column: 9, scope: !932)
!934 = !DILocation(line: 541, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !2, line: 541, column: 9)
!936 = !DILocation(line: 542, column: 18, scope: !915)
!937 = !DILocation(line: 542, column: 25, scope: !915)
!938 = !DILocation(line: 542, column: 16, scope: !915)
!939 = !DILocation(line: 544, column: 14, scope: !940)
!940 = distinct !DILexicalBlock(scope: !915, file: !2, line: 544, column: 13)
!941 = !DILocation(line: 544, column: 13, scope: !915)
!942 = !DILocation(line: 549, column: 27, scope: !943)
!943 = distinct !DILexicalBlock(scope: !940, file: !2, line: 545, column: 9)
!944 = !DILocation(line: 549, column: 34, scope: !943)
!945 = !DILocation(line: 549, column: 20, scope: !943)
!946 = !DILocation(line: 549, column: 53, scope: !943)
!947 = !DILocation(line: 549, column: 18, scope: !943)
!948 = !DILocation(line: 552, column: 33, scope: !943)
!949 = !DILocation(line: 552, column: 61, scope: !943)
!950 = !DILocation(line: 552, column: 69, scope: !943)
!951 = !DILocation(line: 552, column: 11, scope: !943)
!952 = !DILocation(line: 553, column: 9, scope: !943)
!953 = !DILocation(line: 556, column: 24, scope: !954)
!954 = distinct !DILexicalBlock(scope: !940, file: !2, line: 555, column: 9)
!955 = !DILocation(line: 556, column: 11, scope: !954)
!956 = !DILocation(line: 559, column: 11, scope: !954)
!957 = !DILocation(line: 559, column: 32, scope: !954)
!958 = !DILocation(line: 561, column: 7, scope: !915)
!959 = !DILocation(line: 563, column: 23, scope: !688)
!960 = !DILocation(line: 563, column: 46, scope: !688)
!961 = !DILocation(line: 563, column: 29, scope: !688)
!962 = !DILocation(line: 563, column: 16, scope: !688)
!963 = !DILocation(line: 563, column: 74, scope: !688)
!964 = !DILocation(line: 564, column: 42, scope: !688)
!965 = !DILocation(line: 564, column: 45, scope: !688)
!966 = !DILocation(line: 563, column: 16, scope: !689)
!967 = !DILocation(line: 566, column: 20, scope: !968)
!968 = distinct !DILexicalBlock(scope: !688, file: !2, line: 565, column: 7)
!969 = !{!368, !321, i64 80}
!970 = !DILocation(line: 566, column: 56, scope: !968)
!971 = !DILocation(line: 566, column: 45, scope: !968)
!972 = !DILocation(line: 566, column: 9, scope: !968)
!973 = !DILocation(line: 567, column: 7, scope: !968)
!974 = !DILocation(line: 569, column: 23, scope: !687)
!975 = !DILocation(line: 569, column: 46, scope: !687)
!976 = !DILocation(line: 569, column: 29, scope: !687)
!977 = !DILocation(line: 569, column: 16, scope: !687)
!978 = !DILocation(line: 569, column: 74, scope: !687)
!979 = !DILocation(line: 570, column: 42, scope: !687)
!980 = !DILocation(line: 570, column: 45, scope: !687)
!981 = !DILocation(line: 569, column: 16, scope: !688)
!982 = !DILocation(line: 572, column: 20, scope: !983)
!983 = distinct !DILexicalBlock(scope: !687, file: !2, line: 571, column: 7)
!984 = !{!368, !321, i64 88}
!985 = !DILocation(line: 572, column: 56, scope: !983)
!986 = !DILocation(line: 572, column: 45, scope: !983)
!987 = !DILocation(line: 572, column: 9, scope: !983)
!988 = !DILocation(line: 573, column: 7, scope: !983)
!989 = !DILocation(line: 578, column: 23, scope: !686)
!990 = !DILocation(line: 578, column: 46, scope: !686)
!991 = !DILocation(line: 578, column: 29, scope: !686)
!992 = !DILocation(line: 578, column: 16, scope: !686)
!993 = !DILocation(line: 578, column: 78, scope: !686)
!994 = !DILocation(line: 579, column: 18, scope: !686)
!995 = !DILocation(line: 579, column: 21, scope: !686)
!996 = !DILocation(line: 578, column: 16, scope: !687)
!997 = !DILocation(line: 583, column: 31, scope: !998)
!998 = distinct !DILexicalBlock(scope: !686, file: !2, line: 580, column: 7)
!999 = !DILocation(line: 584, column: 38, scope: !998)
!1000 = !DILocation(line: 584, column: 27, scope: !998)
!1001 = !DILocation(line: 583, column: 9, scope: !998)
!1002 = !DILocation(line: 586, column: 31, scope: !998)
!1003 = !DILocation(line: 587, column: 38, scope: !998)
!1004 = !DILocation(line: 587, column: 27, scope: !998)
!1005 = !DILocation(line: 586, column: 9, scope: !998)
!1006 = !DILocation(line: 589, column: 31, scope: !998)
!1007 = !DILocation(line: 590, column: 38, scope: !998)
!1008 = !DILocation(line: 590, column: 27, scope: !998)
!1009 = !DILocation(line: 589, column: 9, scope: !998)
!1010 = !DILocation(line: 591, column: 31, scope: !998)
!1011 = !DILocation(line: 592, column: 38, scope: !998)
!1012 = !DILocation(line: 592, column: 27, scope: !998)
!1013 = !DILocation(line: 591, column: 9, scope: !998)
!1014 = !DILocation(line: 594, column: 31, scope: !998)
!1015 = !DILocation(line: 595, column: 38, scope: !998)
!1016 = !DILocation(line: 595, column: 27, scope: !998)
!1017 = !DILocation(line: 594, column: 9, scope: !998)
!1018 = !DILocation(line: 596, column: 7, scope: !998)
!1019 = !DILocation(line: 598, column: 23, scope: !685)
!1020 = !DILocation(line: 598, column: 46, scope: !685)
!1021 = !DILocation(line: 598, column: 29, scope: !685)
!1022 = !DILocation(line: 598, column: 16, scope: !685)
!1023 = !DILocation(line: 598, column: 78, scope: !685)
!1024 = !DILocation(line: 599, column: 18, scope: !685)
!1025 = !DILocation(line: 599, column: 21, scope: !685)
!1026 = !DILocation(line: 598, column: 16, scope: !686)
!1027 = !DILocation(line: 603, column: 42, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !685, file: !2, line: 600, column: 7)
!1029 = !DILocation(line: 603, column: 31, scope: !1028)
!1030 = !DILocation(line: 603, column: 26, scope: !1028)
!1031 = !DILocation(line: 603, column: 24, scope: !1028)
!1032 = !DILocation(line: 605, column: 27, scope: !1028)
!1033 = !DILocation(line: 605, column: 9, scope: !1028)
!1034 = !DILocation(line: 607, column: 7, scope: !1028)
!1035 = !DILocation(line: 610, column: 23, scope: !684)
!1036 = !DILocation(line: 610, column: 46, scope: !684)
!1037 = !DILocation(line: 610, column: 29, scope: !684)
!1038 = !DILocation(line: 610, column: 16, scope: !684)
!1039 = !DILocation(line: 610, column: 78, scope: !684)
!1040 = !DILocation(line: 611, column: 18, scope: !684)
!1041 = !DILocation(line: 611, column: 21, scope: !684)
!1042 = !DILocation(line: 610, column: 16, scope: !685)
!1043 = !DILocation(line: 613, column: 42, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !684, file: !2, line: 612, column: 7)
!1045 = !DILocation(line: 613, column: 31, scope: !1044)
!1046 = !DILocation(line: 613, column: 26, scope: !1044)
!1047 = !DILocation(line: 613, column: 24, scope: !1044)
!1048 = !DILocation(line: 614, column: 27, scope: !1044)
!1049 = !DILocation(line: 614, column: 9, scope: !1044)
!1050 = !DILocation(line: 616, column: 7, scope: !1044)
!1051 = !DILocation(line: 618, column: 23, scope: !683)
!1052 = !DILocation(line: 618, column: 46, scope: !683)
!1053 = !DILocation(line: 618, column: 29, scope: !683)
!1054 = !DILocation(line: 618, column: 16, scope: !683)
!1055 = !DILocation(line: 618, column: 78, scope: !683)
!1056 = !DILocation(line: 618, column: 16, scope: !684)
!1057 = !DILocation(line: 621, column: 13, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 621, column: 13)
!1059 = distinct !DILexicalBlock(scope: !683, file: !2, line: 620, column: 7)
!1060 = !DILocation(line: 621, column: 13, scope: !1059)
!1061 = !DILocation(line: 625, column: 33, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 622, column: 9)
!1063 = !DILocation(line: 626, column: 43, scope: !1062)
!1064 = !DILocation(line: 626, column: 32, scope: !1062)
!1065 = !DILocation(line: 625, column: 11, scope: !1062)
!1066 = !DILocation(line: 627, column: 9, scope: !1062)
!1067 = !DILocation(line: 630, column: 27, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 629, column: 9)
!1069 = !{!368, !321, i64 160}
!1070 = !DILocation(line: 631, column: 41, scope: !1068)
!1071 = !DILocation(line: 631, column: 30, scope: !1068)
!1072 = !DILocation(line: 630, column: 11, scope: !1068)
!1073 = !DILocation(line: 632, column: 27, scope: !1068)
!1074 = !DILocation(line: 633, column: 41, scope: !1068)
!1075 = !DILocation(line: 633, column: 30, scope: !1068)
!1076 = !DILocation(line: 632, column: 11, scope: !1068)
!1077 = !DILocation(line: 635, column: 7, scope: !1059)
!1078 = !DILocation(line: 637, column: 23, scope: !682)
!1079 = !DILocation(line: 637, column: 46, scope: !682)
!1080 = !DILocation(line: 637, column: 29, scope: !682)
!1081 = !DILocation(line: 637, column: 16, scope: !682)
!1082 = !DILocation(line: 637, column: 78, scope: !682)
!1083 = !DILocation(line: 637, column: 16, scope: !683)
!1084 = !DILocation(line: 640, column: 13, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 640, column: 13)
!1086 = distinct !DILexicalBlock(scope: !682, file: !2, line: 639, column: 7)
!1087 = !DILocation(line: 640, column: 13, scope: !1086)
!1088 = !DILocation(line: 644, column: 33, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 641, column: 9)
!1090 = !DILocation(line: 645, column: 40, scope: !1089)
!1091 = !DILocation(line: 645, column: 29, scope: !1089)
!1092 = !DILocation(line: 644, column: 11, scope: !1089)
!1093 = !DILocation(line: 646, column: 9, scope: !1089)
!1094 = !DILocation(line: 649, column: 27, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 648, column: 9)
!1096 = !DILocation(line: 650, column: 41, scope: !1095)
!1097 = !DILocation(line: 650, column: 30, scope: !1095)
!1098 = !DILocation(line: 649, column: 11, scope: !1095)
!1099 = !DILocation(line: 652, column: 7, scope: !1086)
!1100 = !DILocation(line: 656, column: 23, scope: !681)
!1101 = !DILocation(line: 656, column: 46, scope: !681)
!1102 = !DILocation(line: 656, column: 29, scope: !681)
!1103 = !DILocation(line: 656, column: 16, scope: !681)
!1104 = !DILocation(line: 656, column: 78, scope: !681)
!1105 = !DILocation(line: 657, column: 18, scope: !681)
!1106 = !DILocation(line: 657, column: 21, scope: !681)
!1107 = !DILocation(line: 656, column: 16, scope: !682)
!1108 = !DILocation(line: 661, column: 31, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !681, file: !2, line: 658, column: 7)
!1110 = !DILocation(line: 662, column: 38, scope: !1109)
!1111 = !DILocation(line: 662, column: 27, scope: !1109)
!1112 = !DILocation(line: 661, column: 9, scope: !1109)
!1113 = !DILocation(line: 666, column: 36, scope: !1109)
!1114 = !DILocation(line: 666, column: 25, scope: !1109)
!1115 = !DILocation(line: 666, column: 20, scope: !1109)
!1116 = !DILocation(line: 666, column: 18, scope: !1109)
!1117 = !DILocation(line: 667, column: 27, scope: !1109)
!1118 = !DILocation(line: 667, column: 9, scope: !1109)
!1119 = !DILocation(line: 669, column: 7, scope: !1109)
!1120 = !DILocation(line: 672, column: 23, scope: !680)
!1121 = !DILocation(line: 672, column: 46, scope: !680)
!1122 = !DILocation(line: 672, column: 29, scope: !680)
!1123 = !DILocation(line: 672, column: 16, scope: !680)
!1124 = !DILocation(line: 672, column: 78, scope: !680)
!1125 = !DILocation(line: 673, column: 18, scope: !680)
!1126 = !DILocation(line: 673, column: 21, scope: !680)
!1127 = !DILocation(line: 672, column: 16, scope: !681)
!1128 = !DILocation(line: 677, column: 31, scope: !679)
!1129 = !DILocation(line: 678, column: 38, scope: !679)
!1130 = !DILocation(line: 678, column: 27, scope: !679)
!1131 = !DILocation(line: 677, column: 9, scope: !679)
!1132 = !DILocation(line: 682, column: 36, scope: !679)
!1133 = !DILocation(line: 682, column: 25, scope: !679)
!1134 = !DILocation(line: 682, column: 20, scope: !679)
!1135 = !DILocation(line: 682, column: 18, scope: !679)
!1136 = !DILocation(line: 683, column: 27, scope: !679)
!1137 = !DILocation(line: 683, column: 9, scope: !679)
!1138 = !DILocation(line: 689, column: 9, scope: !679)
!1139 = !DILocation(line: 689, column: 17, scope: !679)
!1140 = !DILocation(line: 691, column: 9, scope: !679)
!1141 = !DILocation(line: 691, column: 16, scope: !679)
!1142 = !DILocation(line: 692, column: 9, scope: !679)
!1143 = !DILocation(line: 692, column: 16, scope: !679)
!1144 = !DILocation(line: 694, column: 19, scope: !679)
!1145 = !DILocation(line: 694, column: 17, scope: !679)
!1146 = !DILocation(line: 695, column: 23, scope: !679)
!1147 = !DILocation(line: 695, column: 21, scope: !679)
!1148 = !DILocation(line: 703, column: 20, scope: !679)
!1149 = !DILocation(line: 704, column: 34, scope: !679)
!1150 = !DILocation(line: 705, column: 30, scope: !679)
!1151 = !DILocation(line: 704, column: 17, scope: !679)
!1152 = !DILocation(line: 703, column: 9, scope: !679)
!1153 = !DILocation(line: 706, column: 28, scope: !679)
!1154 = !DILocation(line: 706, column: 9, scope: !679)
!1155 = !DILocation(line: 707, column: 28, scope: !679)
!1156 = !DILocation(line: 708, column: 42, scope: !679)
!1157 = !DILocation(line: 709, column: 38, scope: !679)
!1158 = !DILocation(line: 708, column: 25, scope: !679)
!1159 = !DILocation(line: 707, column: 9, scope: !679)
!1160 = !DILocation(line: 710, column: 28, scope: !679)
!1161 = !DILocation(line: 710, column: 9, scope: !679)
!1162 = !DILocation(line: 711, column: 28, scope: !679)
!1163 = !DILocation(line: 712, column: 42, scope: !679)
!1164 = !DILocation(line: 713, column: 38, scope: !679)
!1165 = !DILocation(line: 712, column: 25, scope: !679)
!1166 = !DILocation(line: 711, column: 9, scope: !679)
!1167 = !DILocation(line: 714, column: 28, scope: !679)
!1168 = !DILocation(line: 714, column: 9, scope: !679)
!1169 = !DILocation(line: 715, column: 28, scope: !679)
!1170 = !DILocation(line: 716, column: 42, scope: !679)
!1171 = !DILocation(line: 717, column: 38, scope: !679)
!1172 = !DILocation(line: 716, column: 25, scope: !679)
!1173 = !DILocation(line: 715, column: 9, scope: !679)
!1174 = !DILocation(line: 718, column: 28, scope: !679)
!1175 = !DILocation(line: 718, column: 9, scope: !679)
!1176 = !DILocation(line: 719, column: 28, scope: !679)
!1177 = !DILocation(line: 720, column: 42, scope: !679)
!1178 = !DILocation(line: 721, column: 38, scope: !679)
!1179 = !DILocation(line: 720, column: 25, scope: !679)
!1180 = !DILocation(line: 719, column: 9, scope: !679)
!1181 = !DILocation(line: 725, column: 16, scope: !694)
!1182 = !{!368, !321, i64 176}
!1183 = !DILocation(line: 725, column: 49, scope: !694)
!1184 = !DILocation(line: 725, column: 38, scope: !694)
!1185 = !DILocation(line: 724, column: 27, scope: !694)
!1186 = !DILocation(line: 724, column: 25, scope: !694)
!1187 = !DILocation(line: 724, column: 13, scope: !679)
!1188 = !DILocation(line: 727, column: 11, scope: !693)
!1189 = !DILocation(line: 727, column: 17, scope: !693)
!1190 = !DILocation(line: 729, column: 22, scope: !693)
!1191 = !DILocation(line: 729, column: 21, scope: !693)
!1192 = !DILocation(line: 729, column: 20, scope: !693)
!1193 = !DILocation(line: 729, column: 18, scope: !693)
!1194 = !DILocation(line: 730, column: 40, scope: !693)
!1195 = !{!368, !321, i64 136}
!1196 = !DILocation(line: 730, column: 61, scope: !693)
!1197 = !DILocation(line: 730, column: 17, scope: !693)
!1198 = !DILocation(line: 730, column: 15, scope: !693)
!1199 = !DILocation(line: 732, column: 33, scope: !693)
!1200 = !DILocation(line: 732, column: 46, scope: !693)
!1201 = !DILocation(line: 733, column: 63, scope: !693)
!1202 = !DILocation(line: 735, column: 63, scope: !693)
!1203 = !DILocation(line: 733, column: 33, scope: !693)
!1204 = !DILocation(line: 732, column: 11, scope: !693)
!1205 = !DILocation(line: 736, column: 11, scope: !693)
!1206 = !DILocation(line: 738, column: 33, scope: !693)
!1207 = !DILocation(line: 738, column: 67, scope: !693)
!1208 = !DILocation(line: 738, column: 56, scope: !693)
!1209 = !DILocation(line: 738, column: 11, scope: !693)
!1210 = !DILocation(line: 739, column: 9, scope: !694)
!1211 = !DILocation(line: 739, column: 9, scope: !693)
!1212 = !DILocation(line: 751, column: 11, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !694, file: !2, line: 744, column: 9)
!1214 = !DILocation(line: 751, column: 32, scope: !1213)
!1215 = !DILocation(line: 754, column: 23, scope: !679)
!1216 = !DILocation(line: 754, column: 9, scope: !679)
!1217 = !DILocation(line: 755, column: 23, scope: !679)
!1218 = !DILocation(line: 755, column: 9, scope: !679)
!1219 = !DILocation(line: 756, column: 7, scope: !680)
!1220 = !DILocation(line: 756, column: 7, scope: !679)
!1221 = !DILocation(line: 758, column: 23, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !680, file: !2, line: 758, column: 16)
!1223 = !DILocation(line: 758, column: 46, scope: !1222)
!1224 = !DILocation(line: 758, column: 29, scope: !1222)
!1225 = !DILocation(line: 758, column: 16, scope: !1222)
!1226 = !DILocation(line: 758, column: 78, scope: !1222)
!1227 = !DILocation(line: 759, column: 18, scope: !1222)
!1228 = !DILocation(line: 759, column: 21, scope: !1222)
!1229 = !DILocation(line: 758, column: 16, scope: !680)
!1230 = !DILocation(line: 761, column: 31, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 760, column: 7)
!1232 = !DILocation(line: 762, column: 38, scope: !1231)
!1233 = !DILocation(line: 762, column: 27, scope: !1231)
!1234 = !DILocation(line: 761, column: 9, scope: !1231)
!1235 = !DILocation(line: 763, column: 7, scope: !1231)
!1236 = !DILocation(line: 765, column: 23, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1222, file: !2, line: 765, column: 16)
!1238 = !DILocation(line: 765, column: 46, scope: !1237)
!1239 = !DILocation(line: 765, column: 29, scope: !1237)
!1240 = !DILocation(line: 765, column: 16, scope: !1237)
!1241 = !DILocation(line: 765, column: 78, scope: !1237)
!1242 = !DILocation(line: 766, column: 18, scope: !1237)
!1243 = !DILocation(line: 766, column: 21, scope: !1237)
!1244 = !DILocation(line: 765, column: 16, scope: !1222)
!1245 = !DILocation(line: 768, column: 31, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 767, column: 7)
!1247 = !DILocation(line: 769, column: 38, scope: !1246)
!1248 = !DILocation(line: 769, column: 27, scope: !1246)
!1249 = !DILocation(line: 768, column: 9, scope: !1246)
!1250 = !DILocation(line: 771, column: 9, scope: !1246)
!1251 = !DILocation(line: 771, column: 37, scope: !1246)
!1252 = !DILocation(line: 773, column: 13, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1246, file: !2, line: 773, column: 13)
!1254 = !DILocation(line: 773, column: 13, scope: !1246)
!1255 = !DILocation(line: 775, column: 12, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 774, column: 9)
!1257 = !DILocation(line: 775, column: 33, scope: !1256)
!1258 = !DILocation(line: 777, column: 34, scope: !1256)
!1259 = !DILocation(line: 778, column: 48, scope: !1256)
!1260 = !DILocation(line: 778, column: 30, scope: !1256)
!1261 = !DILocation(line: 778, column: 72, scope: !1256)
!1262 = !DILocation(line: 777, column: 12, scope: !1256)
!1263 = !DILocation(line: 779, column: 34, scope: !1256)
!1264 = !DILocation(line: 780, column: 48, scope: !1256)
!1265 = !DILocation(line: 780, column: 30, scope: !1256)
!1266 = !DILocation(line: 780, column: 73, scope: !1256)
!1267 = !DILocation(line: 779, column: 12, scope: !1256)
!1268 = !DILocation(line: 781, column: 34, scope: !1256)
!1269 = !DILocation(line: 782, column: 48, scope: !1256)
!1270 = !DILocation(line: 782, column: 30, scope: !1256)
!1271 = !DILocation(line: 782, column: 70, scope: !1256)
!1272 = !DILocation(line: 781, column: 12, scope: !1256)
!1273 = !DILocation(line: 783, column: 34, scope: !1256)
!1274 = !DILocation(line: 784, column: 48, scope: !1256)
!1275 = !DILocation(line: 784, column: 30, scope: !1256)
!1276 = !DILocation(line: 784, column: 72, scope: !1256)
!1277 = !DILocation(line: 783, column: 12, scope: !1256)
!1278 = !DILocation(line: 785, column: 34, scope: !1256)
!1279 = !DILocation(line: 786, column: 48, scope: !1256)
!1280 = !DILocation(line: 786, column: 30, scope: !1256)
!1281 = !DILocation(line: 786, column: 70, scope: !1256)
!1282 = !DILocation(line: 785, column: 12, scope: !1256)
!1283 = !DILocation(line: 787, column: 30, scope: !1256)
!1284 = !DILocation(line: 788, column: 41, scope: !1256)
!1285 = !DILocation(line: 788, column: 27, scope: !1256)
!1286 = !DILocation(line: 788, column: 66, scope: !1256)
!1287 = !DILocation(line: 787, column: 12, scope: !1256)
!1288 = !DILocation(line: 789, column: 30, scope: !1256)
!1289 = !DILocation(line: 790, column: 41, scope: !1256)
!1290 = !DILocation(line: 790, column: 27, scope: !1256)
!1291 = !DILocation(line: 790, column: 64, scope: !1256)
!1292 = !DILocation(line: 789, column: 12, scope: !1256)
!1293 = !DILocation(line: 791, column: 34, scope: !1256)
!1294 = !DILocation(line: 792, column: 48, scope: !1256)
!1295 = !DILocation(line: 792, column: 30, scope: !1256)
!1296 = !DILocation(line: 792, column: 71, scope: !1256)
!1297 = !DILocation(line: 791, column: 12, scope: !1256)
!1298 = !DILocation(line: 793, column: 34, scope: !1256)
!1299 = !DILocation(line: 794, column: 48, scope: !1256)
!1300 = !DILocation(line: 794, column: 30, scope: !1256)
!1301 = !DILocation(line: 794, column: 69, scope: !1256)
!1302 = !DILocation(line: 793, column: 12, scope: !1256)
!1303 = !DILocation(line: 795, column: 30, scope: !1256)
!1304 = !DILocation(line: 796, column: 41, scope: !1256)
!1305 = !DILocation(line: 796, column: 27, scope: !1256)
!1306 = !DILocation(line: 796, column: 67, scope: !1256)
!1307 = !DILocation(line: 795, column: 12, scope: !1256)
!1308 = !DILocation(line: 797, column: 30, scope: !1256)
!1309 = !DILocation(line: 798, column: 41, scope: !1256)
!1310 = !DILocation(line: 798, column: 27, scope: !1256)
!1311 = !DILocation(line: 798, column: 65, scope: !1256)
!1312 = !DILocation(line: 797, column: 12, scope: !1256)
!1313 = !DILocation(line: 799, column: 34, scope: !1256)
!1314 = !DILocation(line: 800, column: 48, scope: !1256)
!1315 = !DILocation(line: 800, column: 30, scope: !1256)
!1316 = !DILocation(line: 800, column: 71, scope: !1256)
!1317 = !DILocation(line: 799, column: 12, scope: !1256)
!1318 = !DILocation(line: 801, column: 34, scope: !1256)
!1319 = !DILocation(line: 802, column: 48, scope: !1256)
!1320 = !DILocation(line: 802, column: 30, scope: !1256)
!1321 = !DILocation(line: 802, column: 71, scope: !1256)
!1322 = !DILocation(line: 801, column: 12, scope: !1256)
!1323 = !DILocation(line: 804, column: 12, scope: !1256)
!1324 = !DILocation(line: 804, column: 40, scope: !1256)
!1325 = !DILocation(line: 805, column: 9, scope: !1256)
!1326 = !DILocation(line: 806, column: 7, scope: !1246)
!1327 = !DILocation(line: 810, column: 12, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !676, file: !2, line: 809, column: 11)
!1329 = !DILocation(line: 811, column: 29, scope: !1328)
!1330 = !DILocation(line: 812, column: 25, scope: !1328)
!1331 = !{!368, !369, i64 550}
!1332 = !DILocation(line: 811, column: 12, scope: !1328)
!1333 = !DILocation(line: 809, column: 11, scope: !1328)
!1334 = !DILocation(line: 812, column: 66, scope: !1328)
!1335 = !DILocation(line: 813, column: 11, scope: !1328)
!1336 = !DILocation(line: 813, column: 15, scope: !1328)
!1337 = !DILocation(line: 809, column: 11, scope: !676)
!1338 = !DILocation(line: 815, column: 22, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 814, column: 7)
!1340 = !DILocation(line: 816, column: 22, scope: !1339)
!1341 = !DILocation(line: 815, column: 9, scope: !1339)
!1342 = !DILocation(line: 817, column: 7, scope: !1339)
!1343 = !DILocation(line: 820, column: 14, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 819, column: 13)
!1345 = !DILocation(line: 821, column: 31, scope: !1344)
!1346 = !DILocation(line: 822, column: 27, scope: !1344)
!1347 = !{!368, !369, i64 552}
!1348 = !DILocation(line: 821, column: 14, scope: !1344)
!1349 = !DILocation(line: 819, column: 13, scope: !1344)
!1350 = !DILocation(line: 822, column: 66, scope: !1344)
!1351 = !DILocation(line: 823, column: 13, scope: !1344)
!1352 = !DILocation(line: 823, column: 17, scope: !1344)
!1353 = !DILocation(line: 819, column: 13, scope: !1328)
!1354 = !DILocation(line: 825, column: 22, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 824, column: 7)
!1356 = !DILocation(line: 826, column: 22, scope: !1355)
!1357 = !DILocation(line: 825, column: 9, scope: !1355)
!1358 = !DILocation(line: 827, column: 7, scope: !1355)
!1359 = !DILocation(line: 830, column: 14, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 829, column: 13)
!1361 = !DILocation(line: 831, column: 31, scope: !1360)
!1362 = !DILocation(line: 832, column: 27, scope: !1360)
!1363 = !{!368, !369, i64 554}
!1364 = !DILocation(line: 831, column: 14, scope: !1360)
!1365 = !DILocation(line: 829, column: 13, scope: !1360)
!1366 = !DILocation(line: 832, column: 70, scope: !1360)
!1367 = !DILocation(line: 833, column: 13, scope: !1360)
!1368 = !DILocation(line: 833, column: 17, scope: !1360)
!1369 = !DILocation(line: 829, column: 13, scope: !1344)
!1370 = !DILocation(line: 835, column: 22, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 834, column: 7)
!1372 = !DILocation(line: 836, column: 22, scope: !1371)
!1373 = !DILocation(line: 835, column: 9, scope: !1371)
!1374 = !DILocation(line: 837, column: 7, scope: !1371)
!1375 = !DILocation(line: 840, column: 20, scope: !676)
!1376 = !DILocation(line: 840, column: 7, scope: !676)
!1377 = !DILocation(line: 841, column: 5, scope: !676)
!1378 = !DILocation(line: 842, column: 3, scope: !662)
!1379 = !DILocation(line: 842, column: 3, scope: !661)
!1380 = !DILocation(line: 843, column: 1, scope: !653)
!1381 = !DISubprogram(name: "XML_SetCharacterDataHandler", scope: !74, file: !74, line: 547, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !317, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "XML_CharacterDataHandler", file: !74, line: 261, baseType: !1385)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !296, !568, !203}
!1388 = distinct !DISubprogram(name: "textElement", scope: !2, file: !2, line: 845, type: !1386, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1389)
!1389 = !{!1390, !1391, !1392, !1393}
!1390 = !DILocalVariable(name: "data", arg: 1, scope: !1388, file: !2, line: 845, type: !296)
!1391 = !DILocalVariable(name: "txt_element", arg: 2, scope: !1388, file: !2, line: 845, type: !568)
!1392 = !DILocalVariable(name: "len", arg: 3, scope: !1388, file: !2, line: 845, type: !203)
!1393 = !DILocalVariable(name: "parsestruct_ptr", scope: !1388, file: !2, line: 847, type: !139)
!1394 = !DILocation(line: 845, column: 31, scope: !1388)
!1395 = !DILocation(line: 845, column: 53, scope: !1388)
!1396 = !DILocation(line: 845, column: 70, scope: !1388)
!1397 = !DILocation(line: 847, column: 3, scope: !1388)
!1398 = !DILocation(line: 847, column: 16, scope: !1388)
!1399 = !DILocation(line: 847, column: 50, scope: !1388)
!1400 = !DILocation(line: 849, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 849, column: 7)
!1402 = !DILocation(line: 849, column: 7, scope: !1388)
!1403 = !DILocation(line: 855, column: 9, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 855, column: 9)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 850, column: 3)
!1406 = !DILocation(line: 855, column: 31, scope: !1404)
!1407 = !DILocation(line: 855, column: 43, scope: !1404)
!1408 = !DILocation(line: 855, column: 46, scope: !1404)
!1409 = !DILocation(line: 855, column: 68, scope: !1404)
!1410 = !DILocation(line: 856, column: 9, scope: !1404)
!1411 = !DILocation(line: 856, column: 12, scope: !1404)
!1412 = !DILocation(line: 856, column: 38, scope: !1404)
!1413 = !DILocation(line: 855, column: 9, scope: !1405)
!1414 = !DILocation(line: 858, column: 29, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 857, column: 5)
!1416 = !DILocation(line: 858, column: 51, scope: !1415)
!1417 = !DILocation(line: 858, column: 64, scope: !1415)
!1418 = !DILocation(line: 858, column: 7, scope: !1415)
!1419 = !DILocation(line: 859, column: 5, scope: !1415)
!1420 = !DILocation(line: 860, column: 3, scope: !1405)
!1421 = !DILocation(line: 861, column: 1, scope: !1388)
!1422 = !DISubprogram(name: "gt_str_read_next_line_generic", scope: !157, file: !157, line: 87, type: !1423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!203, !155, !179}
!1425 = !DISubprogram(name: "XML_Parse", scope: !74, file: !74, line: 755, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!118, !317, !557, !203, !203}
!1428 = !DISubprogram(name: "gt_str_get", scope: !157, file: !157, line: 40, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!298, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1433 = !DISubprogram(name: "gt_str_length", scope: !157, file: !157, line: 74, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!212, !1431}
!1436 = !DISubprogram(name: "XML_GetErrorCode", scope: !74, file: !74, line: 890, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!73, !317}
!1439 = !DISubprogram(name: "gt_error_set", scope: !200, file: !200, line: 56, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !198, !557, null}
!1442 = !DISubprogram(name: "XML_ErrorString", scope: !74, file: !74, line: 958, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1445, !73}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "XML_LChar", file: !571, line: 95, baseType: !4)
!1448 = !DISubprogram(name: "gt_str_reset", scope: !157, file: !157, line: 70, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !155}
!1451 = !DISubprogram(name: "gt_str_array_delete", scope: !147, file: !147, line: 56, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !145}
!1454 = !DISubprogram(name: "XML_ParserFree", scope: !74, file: !74, line: 954, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !317}
!1457 = !DISubprogram(name: "gt_str_delete", scope: !157, file: !157, line: 90, type: !1449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1458 = !DISubprogram(name: "strcmp", scope: !1459, file: !1459, line: 156, type: !1460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!203, !557, !557}
!1462 = !DISubprogram(name: "gt_str_array_get", scope: !147, file: !147, line: 40, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!557, !1465, !212}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!1467 = distinct !DISubprogram(name: "flag_setting", scope: !2, file: !2, line: 863, type: !1468, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1471)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !1470, !1470, !4}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1471 = !{!1472, !1473, !1474}
!1472 = !DILocalVariable(name: "counter_fct", arg: 1, scope: !1467, file: !2, line: 863, type: !1470)
!1473 = !DILocalVariable(name: "flag", arg: 2, scope: !1467, file: !2, line: 863, type: !1470)
!1474 = !DILocalVariable(name: "flag_sign", arg: 3, scope: !1467, file: !2, line: 864, type: !4)
!1475 = !DILocation(line: 863, column: 42, scope: !1467)
!1476 = !DILocation(line: 863, column: 71, scope: !1467)
!1477 = !DILocation(line: 864, column: 31, scope: !1467)
!1478 = !DILocation(line: 868, column: 4, scope: !1467)
!1479 = !DILocation(line: 868, column: 9, scope: !1467)
!1480 = !DILocation(line: 869, column: 5, scope: !1467)
!1481 = !DILocation(line: 869, column: 17, scope: !1467)
!1482 = !DILocation(line: 873, column: 17, scope: !1467)
!1483 = !DILocation(line: 873, column: 30, scope: !1467)
!1484 = !DILocation(line: 873, column: 3, scope: !1467)
!1485 = !DILocation(line: 874, column: 1, scope: !1467)
!1486 = distinct !DISubprogram(name: "check_counter", scope: !2, file: !2, line: 889, type: !1487, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !1470, !4}
!1489 = !{!1490, !1491}
!1490 = !DILocalVariable(name: "counter_check", arg: 1, scope: !1486, file: !2, line: 889, type: !1470)
!1491 = !DILocalVariable(name: "flag_sign_fct", arg: 2, scope: !1486, file: !2, line: 890, type: !4)
!1492 = !DILocation(line: 889, column: 43, scope: !1486)
!1493 = !DILocation(line: 890, column: 32, scope: !1486)
!1494 = !DILocation(line: 895, column: 8, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 895, column: 7)
!1496 = !DILocation(line: 895, column: 7, scope: !1495)
!1497 = !DILocation(line: 895, column: 22, scope: !1495)
!1498 = !DILocation(line: 895, column: 41, scope: !1495)
!1499 = !DILocation(line: 895, column: 44, scope: !1495)
!1500 = !DILocation(line: 895, column: 58, scope: !1495)
!1501 = !DILocation(line: 895, column: 7, scope: !1486)
!1502 = !DILocation(line: 897, column: 6, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 896, column: 3)
!1504 = !DILocation(line: 897, column: 20, scope: !1503)
!1505 = !DILocation(line: 898, column: 3, scope: !1503)
!1506 = !DILocation(line: 899, column: 8, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 899, column: 7)
!1508 = !DILocation(line: 899, column: 7, scope: !1507)
!1509 = !DILocation(line: 899, column: 22, scope: !1507)
!1510 = !DILocation(line: 899, column: 39, scope: !1507)
!1511 = !DILocation(line: 899, column: 42, scope: !1507)
!1512 = !DILocation(line: 899, column: 56, scope: !1507)
!1513 = !DILocation(line: 899, column: 7, scope: !1486)
!1514 = !DILocation(line: 901, column: 6, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 900, column: 3)
!1516 = !DILocation(line: 901, column: 20, scope: !1515)
!1517 = !DILocation(line: 902, column: 3, scope: !1515)
!1518 = !DILocation(line: 903, column: 8, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 903, column: 7)
!1520 = !DILocation(line: 903, column: 7, scope: !1519)
!1521 = !DILocation(line: 903, column: 22, scope: !1519)
!1522 = !DILocation(line: 903, column: 48, scope: !1519)
!1523 = !DILocation(line: 903, column: 51, scope: !1519)
!1524 = !DILocation(line: 903, column: 65, scope: !1519)
!1525 = !DILocation(line: 903, column: 7, scope: !1486)
!1526 = !DILocation(line: 905, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 904, column: 3)
!1528 = !DILocation(line: 905, column: 20, scope: !1527)
!1529 = !DILocation(line: 906, column: 3, scope: !1527)
!1530 = !DILocation(line: 907, column: 1, scope: !1486)
!1531 = !DISubprogram(name: "mg_combinedscore", scope: !141, file: !141, line: 251, type: !1532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!203, !139, !212, !198}
!1534 = !DISubprogram(name: "gt_array_reset", scope: !170, file: !170, line: 76, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !168}
!1537 = !DISubprogram(name: "mg_outputwriter", scope: !141, file: !141, line: 258, type: !1538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !139, !1540, !1548, !1557, !4, !198}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "CombinedScoreMatrixEntry", file: !141, line: 65, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 60, size: 192, elements: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_score", scope: !1543, file: !141, line: 62, baseType: !217, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1543, file: !141, line: 63, baseType: !212, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "hit_number", scope: !1543, file: !141, line: 64, baseType: !168, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "HitInformation", file: !141, line: 83, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 76, size: 320, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "hit_gi", scope: !1550, file: !141, line: 78, baseType: !145, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "hit_def", scope: !1550, file: !141, line: 79, baseType: !145, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "hit_hsp_nr", scope: !1550, file: !141, line: 80, baseType: !145, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hit_from", scope: !1550, file: !141, line: 81, baseType: !145, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "hit_to", scope: !1550, file: !141, line: 82, baseType: !145, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegionStruct", file: !141, line: 72, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 68, size: 128, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1560, file: !141, line: 70, baseType: !168, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !1560, file: !141, line: 71, baseType: !168, size: 64, offset: 64)
!1564 = !DISubprogram(name: "gt_str_set", scope: !157, file: !157, line: 42, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !155, !557}
!1567 = !DISubprogram(name: "gt_str_array_new", scope: !147, file: !147, line: 27, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!145}
!1570 = distinct !DISubprogram(name: "gt_cstr_nofree_ulp_gt_hashmap_get", scope: !141, file: !141, line: 224, type: !1571, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!667, !186, !557}
!1573 = !{!1574, !1575, !1576}
!1574 = !DILocalVariable(name: "ht", arg: 1, scope: !1570, file: !141, line: 224, type: !186)
!1575 = !DILocalVariable(name: "key", arg: 2, scope: !1570, file: !141, line: 224, type: !557)
!1576 = !DILocalVariable(name: "map_entry", scope: !1570, file: !141, line: 224, type: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_cstr_nofree_ulp_map_entry", file: !141, line: 224, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 224, size: 128, elements: !1580)
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1579, file: !141, line: 224, baseType: !298, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1579, file: !141, line: 224, baseType: !269, size: 64, offset: 64)
!1583 = !DILocation(line: 224, column: 1, scope: !1570)
!1584 = !DILocation(line: 224, column: 1, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1570, file: !141, line: 224, column: 1)
!1586 = !DISubprogram(name: "gt_bioseq_get_sequence", scope: !175, file: !175, line: 62, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!298, !1589, !212}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!1591 = !DISubprogram(name: "gt_str_append_cstr_nt", scope: !157, file: !157, line: 49, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !155, !557, !212}
!1594 = !DISubprogram(name: "gt_bioseq_get_sequence_length", scope: !175, file: !175, line: 90, type: !1595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!212, !1589, !212}
!1597 = !DISubprogram(name: "gt_free_mem", scope: !1598, file: !1598, line: 75, type: !1599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1598 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !296, !557, !203}
!1601 = !DISubprogram(name: "strchr", scope: !1459, file: !1459, line: 246, type: !1602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!298, !557, !203}
!1604 = !DISubprogram(name: "__ctype_b_loc", scope: !124, file: !124, line: 79, type: !1605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!1610 = !DISubprogram(name: "strspn", scope: !1459, file: !1459, line: 297, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!214, !557, !557}
!1613 = !DISubprogram(name: "gt_str_array_add_cstr", scope: !147, file: !147, line: 31, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !145, !557}
!1616 = distinct !DISubprogram(name: "atol", scope: !559, file: !559, line: 367, type: !1617, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!527, !557}
!1619 = !{!1620}
!1620 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1616, file: !559, line: 367, type: !557)
!1621 = !DILocation(line: 367, column: 1, scope: !1616)
!1622 = !DILocation(line: 369, column: 18, scope: !1616)
!1623 = !DILocation(line: 369, column: 10, scope: !1616)
!1624 = !DILocation(line: 369, column: 3, scope: !1616)
!1625 = !DISubprogram(name: "gt_array_add_elem", scope: !170, file: !170, line: 57, type: !1626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !168, !296, !549}
!1628 = !DISubprogram(name: "gt_file_xprintf", scope: !181, file: !181, line: 49, type: !1629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !179, !557, null}
!1631 = !DISubprogram(name: "gt_str_append_cstr", scope: !157, file: !157, line: 46, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1632 = !DISubprogram(name: "gt_str_array_set_size", scope: !147, file: !147, line: 50, type: !1633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !145, !212}
!1635 = !DISubprogram(name: "gt_str_array_size", scope: !147, file: !147, line: 54, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!212, !1465}
!1638 = !DISubprogram(name: "gt_array_set_size", scope: !170, file: !170, line: 74, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !168, !212}
!1641 = !DISubprogram(name: "gt_array_size", scope: !170, file: !170, line: 81, type: !1642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!212, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!1646 = distinct !DISubprogram(name: "flag_delete", scope: !2, file: !2, line: 876, type: !1468, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DILocalVariable(name: "counter_fct", arg: 1, scope: !1646, file: !2, line: 876, type: !1470)
!1649 = !DILocalVariable(name: "flag", arg: 2, scope: !1646, file: !2, line: 876, type: !1470)
!1650 = !DILocalVariable(name: "flag_sign", arg: 3, scope: !1646, file: !2, line: 877, type: !4)
!1651 = !DILocation(line: 876, column: 41, scope: !1646)
!1652 = !DILocation(line: 876, column: 70, scope: !1646)
!1653 = !DILocation(line: 877, column: 30, scope: !1646)
!1654 = !DILocation(line: 881, column: 4, scope: !1646)
!1655 = !DILocation(line: 881, column: 9, scope: !1646)
!1656 = !DILocation(line: 882, column: 5, scope: !1646)
!1657 = !DILocation(line: 882, column: 17, scope: !1646)
!1658 = !DILocation(line: 886, column: 17, scope: !1646)
!1659 = !DILocation(line: 886, column: 30, scope: !1646)
!1660 = !DILocation(line: 886, column: 3, scope: !1646)
!1661 = !DILocation(line: 887, column: 1, scope: !1646)
!1662 = !DISubprogram(name: "gt_hashtable_get", scope: !188, file: !188, line: 72, type: !1663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!296, !186, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1667 = !DISubprogram(name: "strtol", scope: !559, file: !559, line: 177, type: !1668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!527, !556, !1670, !203}
!1670 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !297)
