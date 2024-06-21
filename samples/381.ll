; ModuleID = 'samples/381.bc'
source_filename = "src/tools/gt_matstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Optionargmodedesc = type { ptr, ptr, i32 }
%struct.Gfmsubcallinfo = type { %struct.Definedunsignedlong, %struct.Definedunsignedlong, i32, i8, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Definedunsignedlong = type { i8, i64 }
%struct.Fmindex = type { ptr, ptr, i64, ptr, ptr, ptr, i64, i64, i64, i64, %struct.GtArrayGtPairBwtidx, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.GtArrayGtPairBwtidx = type { ptr, i64, i64 }
%struct.Suffixarray = type { ptr, %struct.Definedunsignedlong, %struct.Definedunsignedlong, %struct.Defineddouble, %struct.Definedunsignedlong, i32, i8, i64, ptr, ptr, ptr, ptr, i32, ptr, %struct.GtBufferedfile_uint32_t, %struct.GtBufferedfile_GtUword, %struct.GtBufferedfile_GtUchar, %struct.GtBufferedfile_GtUchar, %struct.GtBufferedfile_Largelcpvalue }
%struct.Defineddouble = type { i8, double }
%struct.GtBufferedfile_uint32_t = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_GtUword = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_GtUchar = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_Largelcpvalue = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"src/tools/gt_matstat.c\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1, !dbg !12
@__func__.gt_matstat_option_parser_new = private unnamed_addr constant [29 x i8] c"gt_matstat_option_parser_new\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [37 x i8] c"[options ...] -query queryfile [...]\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [29 x i8] c"Compute matching statistics.\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [43 x i8] c"Compute length of minimum unique prefixes.\00", align 1, !dbg !31
@.str.6 = private unnamed_addr constant [27 x i8] c"<kurtz@zbh.uni-hamburg.de>\00", align 1, !dbg !36
@.str.7 = private unnamed_addr constant [4 x i8] c"fmi\00", align 1, !dbg !41
@.str.8 = private unnamed_addr constant [16 x i8] c"specify fmindex\00", align 1, !dbg !46
@.str.9 = private unnamed_addr constant [4 x i8] c"esa\00", align 1, !dbg !51
@.str.10 = private unnamed_addr constant [21 x i8] c"specify suffix array\00", align 1, !dbg !53
@.str.11 = private unnamed_addr constant [4 x i8] c"pck\00", align 1, !dbg !58
@.str.12 = private unnamed_addr constant [21 x i8] c"specify packed index\00", align 1, !dbg !60
@.str.13 = private unnamed_addr constant [6 x i8] c"query\00", align 1, !dbg !62
@.str.14 = private unnamed_addr constant [19 x i8] c"specify queryfiles\00", align 1, !dbg !67
@.str.15 = private unnamed_addr constant [4 x i8] c"min\00", align 1, !dbg !72
@.str.16 = private unnamed_addr constant [46 x i8] c"only output length if >= given minimum length\00", align 1, !dbg !74
@.str.17 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !79
@.str.18 = private unnamed_addr constant [46 x i8] c"only output length if <= given maximum length\00", align 1, !dbg !81
@.str.19 = private unnamed_addr constant [7 x i8] c"output\00", align 1, !dbg !83
@.str.20 = private unnamed_addr constant [50 x i8] c"set output flags (sequence, querypos, subjectpos)\00", align 1, !dbg !88
@.str.21 = private unnamed_addr constant [38 x i8] c"set output flags (sequence, querypos)\00", align 1, !dbg !93
@.str.22 = private unnamed_addr constant [7 x i8] c"verify\00", align 1, !dbg !98
@.str.23 = private unnamed_addr constant [25 x i8] c"verify witness positions\00", align 1, !dbg !100
@.str.24 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1, !dbg !105
@.str.25 = private unnamed_addr constant [18 x i8] c"matching sequence\00", align 1, !dbg !110
@.str.26 = private unnamed_addr constant [9 x i8] c"querypos\00", align 1, !dbg !115
@.str.27 = private unnamed_addr constant [27 x i8] c"position in query sequence\00", align 1, !dbg !117
@.str.28 = private unnamed_addr constant [11 x i8] c"subjectpos\00", align 1, !dbg !119
@.str.29 = private unnamed_addr constant [29 x i8] c"position in subject sequence\00", align 1, !dbg !124
@__const.gt_matstat_arguments_check.msgfmsubmodedesctable = private unnamed_addr constant [3 x %struct.Optionargmodedesc] [%struct.Optionargmodedesc { ptr @.str.24, ptr @.str.25, i32 1 }, %struct.Optionargmodedesc { ptr @.str.26, ptr @.str.27, i32 2 }, %struct.Optionargmodedesc { ptr @.str.28, ptr @.str.29, i32 4 }], align 16
@__const.gt_matstat_arguments_check.gfmsubmodedesctable = private unnamed_addr constant [2 x %struct.Optionargmodedesc] [%struct.Optionargmodedesc { ptr @.str.24, ptr @.str.25, i32 1 }, %struct.Optionargmodedesc { ptr @.str.26, ptr @.str.27, i32 2 }], align 16
@.str.30 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !126
@__func__.gt_matstat_arguments_check = private unnamed_addr constant [27 x i8] c"gt_matstat_arguments_check\00", align 1, !dbg !131
@.str.31 = private unnamed_addr constant [43 x i8] c"one of the options -esa, -pck must be used\00", align 1, !dbg !134
@.str.32 = private unnamed_addr constant [44 x i8] c"one of the options -min or -max must be set\00", align 1, !dbg !136
@.str.33 = private unnamed_addr constant [48 x i8] c"minvalue must be smaller or equal than maxvalue\00", align 1, !dbg !141
@.str.34 = private unnamed_addr constant [36 x i8] c"missing arguments to option -output\00", align 1, !dbg !146
@.str.35 = private unnamed_addr constant [8 x i8] c"-output\00", align 1, !dbg !151
@__func__.gt_matstat_runner = private unnamed_addr constant [18 x i8] c"gt_matstat_runner\00", align 1, !dbg !156
@.str.36 = private unnamed_addr constant [3 x i8] c"# \00", align 1, !dbg !159
@stdout = external global ptr, align 8
@.str.37 = private unnamed_addr constant [40 x i8] c"arguments->indextype == Packedindextype\00", align 1, !dbg !164

; Function Attrs: nounwind uwtable
define ptr @gt_matstat() #0 !dbg !200 {
entry:
  %call = call ptr @gt_tool_new(ptr noundef @gt_matstat_arguments_new_matstat, ptr noundef @gt_matstat_arguments_delete, ptr noundef @gt_matstat_option_parser_new, ptr noundef @gt_matstat_arguments_check, ptr noundef @gt_matstat_runner), !dbg !207
  ret ptr %call, !dbg !208
}

declare !dbg !209 ptr @gt_tool_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @gt_matstat_arguments_new_matstat() #0 !dbg !243 {
entry:
  %call = call ptr @gt_matstat_arguments_new_generic(i1 noundef zeroext true), !dbg !244
  ret ptr %call, !dbg !245
}

; Function Attrs: nounwind uwtable
define internal void @gt_matstat_arguments_delete(ptr noundef %tool_arguments) #0 !dbg !246 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !248, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #6, !dbg !295
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !249, metadata !DIExpression()), !dbg !296
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !297, !tbaa !290
  store ptr %0, ptr %arguments, align 8, !dbg !296, !tbaa !290
  %1 = load ptr, ptr %arguments, align 8, !dbg !298, !tbaa !290
  %tobool = icmp ne ptr %1, null, !dbg !298
  br i1 %tobool, label %if.end, label %if.then, !dbg !300

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !301

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arguments, align 8, !dbg !302, !tbaa !290
  %queryfilenames = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %2, i32 0, i32 5, !dbg !303
  %3 = load ptr, ptr %queryfilenames, align 8, !dbg !303, !tbaa !304
  call void @gt_str_array_delete(ptr noundef %3), !dbg !310
  %4 = load ptr, ptr %arguments, align 8, !dbg !311, !tbaa !290
  %flagsoutputoption = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %4, i32 0, i32 6, !dbg !312
  %5 = load ptr, ptr %flagsoutputoption, align 8, !dbg !312, !tbaa !313
  call void @gt_str_array_delete(ptr noundef %5), !dbg !314
  %6 = load ptr, ptr %arguments, align 8, !dbg !315, !tbaa !290
  %indexname = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %6, i32 0, i32 4, !dbg !316
  %7 = load ptr, ptr %indexname, align 8, !dbg !316, !tbaa !317
  call void @gt_str_delete(ptr noundef %7), !dbg !318
  %8 = load ptr, ptr %arguments, align 8, !dbg !319, !tbaa !290
  call void @gt_free_mem(ptr noundef %8, ptr noundef @.str, i32 noundef 93), !dbg !319
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !320
  br label %cleanup, !dbg !320

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #6, !dbg !320
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !320

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_matstat_option_parser_new(ptr noundef %tool_arguments) #0 !dbg !321 {
entry:
  %tool_arguments.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %op = alloca ptr, align 8
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !323, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #6, !dbg !327
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !324, metadata !DIExpression()), !dbg !328
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !329, !tbaa !290
  store ptr %0, ptr %arguments, align 8, !dbg !328, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6, !dbg !330
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !325, metadata !DIExpression()), !dbg !331
  br label %do.body, !dbg !332

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %arguments, align 8, !dbg !333, !tbaa !290
  %tobool = icmp ne ptr %1, null, !dbg !333
  br i1 %tobool, label %if.end, label %if.then, !dbg !336

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !337, !tbaa !290
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_matstat_option_parser_new, ptr noundef @.str, i32 noundef 100), !dbg !337
  call void @abort() #7, !dbg !337
  unreachable, !dbg !337

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !336

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !336

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %arguments, align 8, !dbg !339, !tbaa !290
  %doms = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %3, i32 0, i32 8, !dbg !340
  %4 = load i8, ptr %doms, align 4, !dbg !340, !tbaa !341, !range !342, !noundef !343
  %tobool1 = trunc i8 %4 to i1, !dbg !340
  %5 = zext i1 %tobool1 to i64, !dbg !339
  %cond = select i1 %tobool1, ptr @.str.4, ptr @.str.5, !dbg !339
  %call2 = call ptr @gt_option_parser_new(ptr noundef @.str.3, ptr noundef %cond), !dbg !344
  store ptr %call2, ptr %op, align 8, !dbg !345, !tbaa !290
  %6 = load ptr, ptr %op, align 8, !dbg !346, !tbaa !290
  call void @gt_option_parser_set_mail_address(ptr noundef %6, ptr noundef @.str.6), !dbg !347
  %7 = load ptr, ptr %arguments, align 8, !dbg !348, !tbaa !290
  %indexname = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %7, i32 0, i32 4, !dbg !349
  %8 = load ptr, ptr %indexname, align 8, !dbg !349, !tbaa !317
  %call3 = call ptr @gt_option_new_string(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %8, ptr noundef null), !dbg !350
  %9 = load ptr, ptr %arguments, align 8, !dbg !351, !tbaa !290
  %optionfmindex = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %9, i32 0, i32 12, !dbg !352
  store ptr %call3, ptr %optionfmindex, align 8, !dbg !353, !tbaa !354
  %10 = load ptr, ptr %op, align 8, !dbg !355, !tbaa !290
  %11 = load ptr, ptr %arguments, align 8, !dbg !356, !tbaa !290
  %optionfmindex4 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %11, i32 0, i32 12, !dbg !357
  %12 = load ptr, ptr %optionfmindex4, align 8, !dbg !357, !tbaa !354
  call void @gt_option_parser_add_option(ptr noundef %10, ptr noundef %12), !dbg !358
  %13 = load ptr, ptr %arguments, align 8, !dbg !359, !tbaa !290
  %indexname5 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %13, i32 0, i32 4, !dbg !360
  %14 = load ptr, ptr %indexname5, align 8, !dbg !360, !tbaa !317
  %call6 = call ptr @gt_option_new_string(ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef %14, ptr noundef null), !dbg !361
  %15 = load ptr, ptr %arguments, align 8, !dbg !362, !tbaa !290
  %optionesaindex = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %15, i32 0, i32 13, !dbg !363
  store ptr %call6, ptr %optionesaindex, align 8, !dbg !364, !tbaa !365
  %16 = load ptr, ptr %op, align 8, !dbg !366, !tbaa !290
  %17 = load ptr, ptr %arguments, align 8, !dbg !367, !tbaa !290
  %optionesaindex7 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %17, i32 0, i32 13, !dbg !368
  %18 = load ptr, ptr %optionesaindex7, align 8, !dbg !368, !tbaa !365
  call void @gt_option_parser_add_option(ptr noundef %16, ptr noundef %18), !dbg !369
  %19 = load ptr, ptr %arguments, align 8, !dbg !370, !tbaa !290
  %indexname8 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %19, i32 0, i32 4, !dbg !371
  %20 = load ptr, ptr %indexname8, align 8, !dbg !371, !tbaa !317
  %call9 = call ptr @gt_option_new_string(ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef %20, ptr noundef null), !dbg !372
  %21 = load ptr, ptr %arguments, align 8, !dbg !373, !tbaa !290
  %optionpckindex = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %21, i32 0, i32 14, !dbg !374
  store ptr %call9, ptr %optionpckindex, align 8, !dbg !375, !tbaa !376
  %22 = load ptr, ptr %op, align 8, !dbg !377, !tbaa !290
  %23 = load ptr, ptr %arguments, align 8, !dbg !378, !tbaa !290
  %optionpckindex10 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %23, i32 0, i32 14, !dbg !379
  %24 = load ptr, ptr %optionpckindex10, align 8, !dbg !379, !tbaa !376
  call void @gt_option_parser_add_option(ptr noundef %22, ptr noundef %24), !dbg !380
  %25 = load ptr, ptr %arguments, align 8, !dbg !381, !tbaa !290
  %optionfmindex11 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %25, i32 0, i32 12, !dbg !382
  %26 = load ptr, ptr %optionfmindex11, align 8, !dbg !382, !tbaa !354
  %27 = load ptr, ptr %arguments, align 8, !dbg !383, !tbaa !290
  %optionesaindex12 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %27, i32 0, i32 13, !dbg !384
  %28 = load ptr, ptr %optionesaindex12, align 8, !dbg !384, !tbaa !365
  call void @gt_option_exclude(ptr noundef %26, ptr noundef %28), !dbg !385
  %29 = load ptr, ptr %arguments, align 8, !dbg !386, !tbaa !290
  %optionpckindex13 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %29, i32 0, i32 14, !dbg !387
  %30 = load ptr, ptr %optionpckindex13, align 8, !dbg !387, !tbaa !376
  %31 = load ptr, ptr %arguments, align 8, !dbg !388, !tbaa !290
  %optionesaindex14 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %31, i32 0, i32 13, !dbg !389
  %32 = load ptr, ptr %optionesaindex14, align 8, !dbg !389, !tbaa !365
  call void @gt_option_exclude(ptr noundef %30, ptr noundef %32), !dbg !390
  %33 = load ptr, ptr %arguments, align 8, !dbg !391, !tbaa !290
  %optionpckindex15 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %33, i32 0, i32 14, !dbg !392
  %34 = load ptr, ptr %optionpckindex15, align 8, !dbg !392, !tbaa !376
  %35 = load ptr, ptr %arguments, align 8, !dbg !393, !tbaa !290
  %optionfmindex16 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %35, i32 0, i32 12, !dbg !394
  %36 = load ptr, ptr %optionfmindex16, align 8, !dbg !394, !tbaa !354
  call void @gt_option_exclude(ptr noundef %34, ptr noundef %36), !dbg !395
  %37 = load ptr, ptr %arguments, align 8, !dbg !396, !tbaa !290
  %queryfilenames = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %37, i32 0, i32 5, !dbg !397
  %38 = load ptr, ptr %queryfilenames, align 8, !dbg !397, !tbaa !304
  %call17 = call ptr @gt_option_new_filename_array(ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef %38), !dbg !398
  %39 = load ptr, ptr %arguments, align 8, !dbg !399, !tbaa !290
  %optionquery = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %39, i32 0, i32 15, !dbg !400
  store ptr %call17, ptr %optionquery, align 8, !dbg !401, !tbaa !402
  %40 = load ptr, ptr %arguments, align 8, !dbg !403, !tbaa !290
  %optionquery18 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %40, i32 0, i32 15, !dbg !404
  %41 = load ptr, ptr %optionquery18, align 8, !dbg !404, !tbaa !402
  call void @gt_option_is_mandatory(ptr noundef %41), !dbg !405
  %42 = load ptr, ptr %op, align 8, !dbg !406, !tbaa !290
  %43 = load ptr, ptr %arguments, align 8, !dbg !407, !tbaa !290
  %optionquery19 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %43, i32 0, i32 15, !dbg !408
  %44 = load ptr, ptr %optionquery19, align 8, !dbg !408, !tbaa !402
  call void @gt_option_parser_add_option(ptr noundef %42, ptr noundef %44), !dbg !409
  %45 = load ptr, ptr %arguments, align 8, !dbg !410, !tbaa !290
  %minlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %45, i32 0, i32 0, !dbg !411
  %valueunsignedlong = getelementptr inbounds %struct.Definedunsignedlong, ptr %minlength, i32 0, i32 1, !dbg !412
  %call20 = call ptr @gt_option_new_uword_min(ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef %valueunsignedlong, i64 noundef 0, i64 noundef 1), !dbg !413
  %46 = load ptr, ptr %arguments, align 8, !dbg !414, !tbaa !290
  %optionmin = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %46, i32 0, i32 9, !dbg !415
  store ptr %call20, ptr %optionmin, align 8, !dbg !416, !tbaa !417
  %47 = load ptr, ptr %op, align 8, !dbg !418, !tbaa !290
  %48 = load ptr, ptr %arguments, align 8, !dbg !419, !tbaa !290
  %optionmin21 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %48, i32 0, i32 9, !dbg !420
  %49 = load ptr, ptr %optionmin21, align 8, !dbg !420, !tbaa !417
  call void @gt_option_parser_add_option(ptr noundef %47, ptr noundef %49), !dbg !421
  %50 = load ptr, ptr %arguments, align 8, !dbg !422, !tbaa !290
  %maxlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %50, i32 0, i32 1, !dbg !423
  %valueunsignedlong22 = getelementptr inbounds %struct.Definedunsignedlong, ptr %maxlength, i32 0, i32 1, !dbg !424
  %call23 = call ptr @gt_option_new_uword_min(ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef %valueunsignedlong22, i64 noundef 0, i64 noundef 1), !dbg !425
  %51 = load ptr, ptr %arguments, align 8, !dbg !426, !tbaa !290
  %optionmax = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %51, i32 0, i32 10, !dbg !427
  store ptr %call23, ptr %optionmax, align 8, !dbg !428, !tbaa !429
  %52 = load ptr, ptr %op, align 8, !dbg !430, !tbaa !290
  %53 = load ptr, ptr %arguments, align 8, !dbg !431, !tbaa !290
  %optionmax24 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %53, i32 0, i32 10, !dbg !432
  %54 = load ptr, ptr %optionmax24, align 8, !dbg !432, !tbaa !429
  call void @gt_option_parser_add_option(ptr noundef %52, ptr noundef %54), !dbg !433
  %55 = load ptr, ptr %arguments, align 8, !dbg !434, !tbaa !290
  %doms25 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %55, i32 0, i32 8, !dbg !435
  %56 = load i8, ptr %doms25, align 4, !dbg !435, !tbaa !341, !range !342, !noundef !343
  %tobool26 = trunc i8 %56 to i1, !dbg !435
  %57 = zext i1 %tobool26 to i64, !dbg !434
  %cond27 = select i1 %tobool26, ptr @.str.20, ptr @.str.21, !dbg !434
  %58 = load ptr, ptr %arguments, align 8, !dbg !436, !tbaa !290
  %flagsoutputoption = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %58, i32 0, i32 6, !dbg !437
  %59 = load ptr, ptr %flagsoutputoption, align 8, !dbg !437, !tbaa !313
  %call28 = call ptr @gt_option_new_string_array(ptr noundef @.str.19, ptr noundef %cond27, ptr noundef %59), !dbg !438
  %60 = load ptr, ptr %arguments, align 8, !dbg !439, !tbaa !290
  %optionoutput = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %60, i32 0, i32 11, !dbg !440
  store ptr %call28, ptr %optionoutput, align 8, !dbg !441, !tbaa !442
  %61 = load ptr, ptr %op, align 8, !dbg !443, !tbaa !290
  %62 = load ptr, ptr %arguments, align 8, !dbg !444, !tbaa !290
  %optionoutput29 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %62, i32 0, i32 11, !dbg !445
  %63 = load ptr, ptr %optionoutput29, align 8, !dbg !445, !tbaa !442
  call void @gt_option_parser_add_option(ptr noundef %61, ptr noundef %63), !dbg !446
  %64 = load ptr, ptr %arguments, align 8, !dbg !447, !tbaa !290
  %doms30 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %64, i32 0, i32 8, !dbg !449
  %65 = load i8, ptr %doms30, align 4, !dbg !449, !tbaa !341, !range !342, !noundef !343
  %tobool31 = trunc i8 %65 to i1, !dbg !449
  br i1 %tobool31, label %if.then32, label %if.else, !dbg !450

if.then32:                                        ; preds = %do.end
  %66 = load ptr, ptr %arguments, align 8, !dbg !451, !tbaa !290
  %verifywitnesspos = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %66, i32 0, i32 3, !dbg !453
  %call33 = call ptr @gt_option_new_bool(ptr noundef @.str.22, ptr noundef @.str.23, ptr noundef %verifywitnesspos, i1 noundef zeroext false), !dbg !454
  %67 = load ptr, ptr %arguments, align 8, !dbg !455, !tbaa !290
  %optionverify = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %67, i32 0, i32 16, !dbg !456
  store ptr %call33, ptr %optionverify, align 8, !dbg !457, !tbaa !458
  %68 = load ptr, ptr %arguments, align 8, !dbg !459, !tbaa !290
  %optionverify34 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %68, i32 0, i32 16, !dbg !460
  %69 = load ptr, ptr %optionverify34, align 8, !dbg !460, !tbaa !458
  call void @gt_option_is_development_option(ptr noundef %69), !dbg !461
  %70 = load ptr, ptr %op, align 8, !dbg !462, !tbaa !290
  %71 = load ptr, ptr %arguments, align 8, !dbg !463, !tbaa !290
  %optionverify35 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %71, i32 0, i32 16, !dbg !464
  %72 = load ptr, ptr %optionverify35, align 8, !dbg !464, !tbaa !458
  call void @gt_option_parser_add_option(ptr noundef %70, ptr noundef %72), !dbg !465
  br label %if.end37, !dbg !466

if.else:                                          ; preds = %do.end
  %73 = load ptr, ptr %arguments, align 8, !dbg !467, !tbaa !290
  %verifywitnesspos36 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %73, i32 0, i32 3, !dbg !469
  store i8 0, ptr %verifywitnesspos36, align 4, !dbg !470, !tbaa !471
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then32
  %74 = load ptr, ptr %op, align 8, !dbg !472, !tbaa !290
  call void @gt_option_parser_refer_to_manual(ptr noundef %74), !dbg !473
  %75 = load ptr, ptr %op, align 8, !dbg !474, !tbaa !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6, !dbg !475
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #6, !dbg !475
  ret ptr %75, !dbg !476
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_matstat_arguments_check(i32 noundef %rest_argc, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !477 {
entry:
  %retval = alloca i32, align 4
  %rest_argc.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %msgfmsubmodedesctable = alloca [3 x %struct.Optionargmodedesc], align 16
  %gfmsubmodedesctable = alloca [2 x %struct.Optionargmodedesc], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  store i32 %rest_argc, ptr %rest_argc.addr, align 4, !tbaa !503
  tail call void @llvm.dbg.declare(metadata ptr %rest_argc.addr, metadata !479, metadata !DIExpression()), !dbg !504
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !480, metadata !DIExpression()), !dbg !505
  store ptr %err, ptr %err.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !481, metadata !DIExpression()), !dbg !506
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #6, !dbg !507
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !482, metadata !DIExpression()), !dbg !508
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !509, !tbaa !290
  store ptr %0, ptr %arguments, align 8, !dbg !508, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #6, !dbg !510
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !483, metadata !DIExpression()), !dbg !511
  store i32 0, ptr %had_err, align 4, !dbg !511, !tbaa !503
  call void @llvm.lifetime.start.p0(i64 72, ptr %msgfmsubmodedesctable) #6, !dbg !512
  tail call void @llvm.dbg.declare(metadata ptr %msgfmsubmodedesctable, metadata !484, metadata !DIExpression()), !dbg !513
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %msgfmsubmodedesctable, ptr align 16 @__const.gt_matstat_arguments_check.msgfmsubmodedesctable, i64 72, i1 false), !dbg !513
  call void @llvm.lifetime.start.p0(i64 48, ptr %gfmsubmodedesctable) #6, !dbg !514
  tail call void @llvm.dbg.declare(metadata ptr %gfmsubmodedesctable, metadata !494, metadata !DIExpression()), !dbg !515
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %gfmsubmodedesctable, ptr align 16 @__const.gt_matstat_arguments_check.gfmsubmodedesctable, i64 48, i1 false), !dbg !515
  br label %do.body, !dbg !516

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !517, !tbaa !290
  %tobool = icmp ne ptr %1, null, !dbg !517
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !517

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !517, !tbaa !290
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !517
  br i1 %call, label %if.then, label %if.end, !dbg !520

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !521, !tbaa !290
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.30, ptr noundef @__func__.gt_matstat_arguments_check, ptr noundef @.str, i32 noundef 188), !dbg !521
  call void @abort() #7, !dbg !521
  unreachable, !dbg !521

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !520

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !520

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !523

do.body2:                                         ; preds = %do.end
  %4 = load ptr, ptr %arguments, align 8, !dbg !524, !tbaa !290
  %tobool3 = icmp ne ptr %4, null, !dbg !524
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !527

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !528, !tbaa !290
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_matstat_arguments_check, ptr noundef @.str, i32 noundef 189), !dbg !528
  call void @abort() #7, !dbg !528
  unreachable, !dbg !528

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !527

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !527

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr %arguments, align 8, !dbg !530, !tbaa !290
  %optionfmindex = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %6, i32 0, i32 12, !dbg !532
  %7 = load ptr, ptr %optionfmindex, align 8, !dbg !532, !tbaa !354
  %call9 = call zeroext i1 @gt_option_is_set(ptr noundef %7), !dbg !533
  br i1 %call9, label %if.then10, label %if.else, !dbg !534

if.then10:                                        ; preds = %do.end8
  %8 = load ptr, ptr %arguments, align 8, !dbg !535, !tbaa !290
  %indextype = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %8, i32 0, i32 7, !dbg !537
  store i32 0, ptr %indextype, align 8, !dbg !538, !tbaa !539
  br label %if.end21, !dbg !540

if.else:                                          ; preds = %do.end8
  %9 = load ptr, ptr %arguments, align 8, !dbg !541, !tbaa !290
  %optionesaindex = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %9, i32 0, i32 13, !dbg !544
  %10 = load ptr, ptr %optionesaindex, align 8, !dbg !544, !tbaa !365
  %call11 = call zeroext i1 @gt_option_is_set(ptr noundef %10), !dbg !545
  br i1 %call11, label %if.then12, label %if.else14, !dbg !546

if.then12:                                        ; preds = %if.else
  %11 = load ptr, ptr %arguments, align 8, !dbg !547, !tbaa !290
  %indextype13 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %11, i32 0, i32 7, !dbg !549
  store i32 1, ptr %indextype13, align 8, !dbg !550, !tbaa !539
  br label %if.end20, !dbg !551

if.else14:                                        ; preds = %if.else
  %12 = load ptr, ptr %arguments, align 8, !dbg !552, !tbaa !290
  %optionpckindex = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %12, i32 0, i32 14, !dbg !555
  %13 = load ptr, ptr %optionpckindex, align 8, !dbg !555, !tbaa !376
  %call15 = call zeroext i1 @gt_option_is_set(ptr noundef %13), !dbg !556
  br i1 %call15, label %if.then16, label %if.else18, !dbg !557

if.then16:                                        ; preds = %if.else14
  %14 = load ptr, ptr %arguments, align 8, !dbg !558, !tbaa !290
  %indextype17 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %14, i32 0, i32 7, !dbg !560
  store i32 2, ptr %indextype17, align 8, !dbg !561, !tbaa !539
  br label %if.end19, !dbg !562

if.else18:                                        ; preds = %if.else14
  %15 = load ptr, ptr %err.addr, align 8, !dbg !563, !tbaa !290
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %15, ptr noundef @.str.31), !dbg !565
  store i32 -1, ptr %retval, align 4, !dbg !566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !566

if.end19:                                         ; preds = %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then10
  %16 = load ptr, ptr %arguments, align 8, !dbg !567, !tbaa !290
  %optionmin = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %16, i32 0, i32 9, !dbg !569
  %17 = load ptr, ptr %optionmin, align 8, !dbg !569, !tbaa !417
  %call22 = call zeroext i1 @gt_option_is_set(ptr noundef %17), !dbg !570
  br i1 %call22, label %if.then23, label %if.end24, !dbg !571

if.then23:                                        ; preds = %if.end21
  %18 = load ptr, ptr %arguments, align 8, !dbg !572, !tbaa !290
  %minlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %18, i32 0, i32 0, !dbg !574
  %defined = getelementptr inbounds %struct.Definedunsignedlong, ptr %minlength, i32 0, i32 0, !dbg !575
  store i8 1, ptr %defined, align 8, !dbg !576, !tbaa !577
  br label %if.end24, !dbg !578

if.end24:                                         ; preds = %if.then23, %if.end21
  %19 = load ptr, ptr %arguments, align 8, !dbg !579, !tbaa !290
  %optionmax = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %19, i32 0, i32 10, !dbg !581
  %20 = load ptr, ptr %optionmax, align 8, !dbg !581, !tbaa !429
  %call25 = call zeroext i1 @gt_option_is_set(ptr noundef %20), !dbg !582
  br i1 %call25, label %if.then26, label %if.end28, !dbg !583

if.then26:                                        ; preds = %if.end24
  %21 = load ptr, ptr %arguments, align 8, !dbg !584, !tbaa !290
  %maxlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %21, i32 0, i32 1, !dbg !586
  %defined27 = getelementptr inbounds %struct.Definedunsignedlong, ptr %maxlength, i32 0, i32 0, !dbg !587
  store i8 1, ptr %defined27, align 8, !dbg !588, !tbaa !589
  br label %if.end28, !dbg !590

if.end28:                                         ; preds = %if.then26, %if.end24
  %22 = load ptr, ptr %arguments, align 8, !dbg !591, !tbaa !290
  %optionmin29 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %22, i32 0, i32 9, !dbg !593
  %23 = load ptr, ptr %optionmin29, align 8, !dbg !593, !tbaa !417
  %call30 = call zeroext i1 @gt_option_is_set(ptr noundef %23), !dbg !594
  br i1 %call30, label %if.end34, label %land.lhs.true, !dbg !595

land.lhs.true:                                    ; preds = %if.end28
  %24 = load ptr, ptr %arguments, align 8, !dbg !596, !tbaa !290
  %optionmax31 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %24, i32 0, i32 10, !dbg !597
  %25 = load ptr, ptr %optionmax31, align 8, !dbg !597, !tbaa !429
  %call32 = call zeroext i1 @gt_option_is_set(ptr noundef %25), !dbg !598
  br i1 %call32, label %if.end34, label %if.then33, !dbg !599

if.then33:                                        ; preds = %land.lhs.true
  %26 = load ptr, ptr %err.addr, align 8, !dbg !600, !tbaa !290
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %26, ptr noundef @.str.32), !dbg !602
  store i32 -1, ptr %retval, align 4, !dbg !603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !603

if.end34:                                         ; preds = %land.lhs.true, %if.end28
  %27 = load ptr, ptr %arguments, align 8, !dbg !604, !tbaa !290
  %minlength35 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %27, i32 0, i32 0, !dbg !606
  %defined36 = getelementptr inbounds %struct.Definedunsignedlong, ptr %minlength35, i32 0, i32 0, !dbg !607
  %28 = load i8, ptr %defined36, align 8, !dbg !607, !tbaa !577, !range !342, !noundef !343
  %tobool37 = trunc i8 %28 to i1, !dbg !607
  br i1 %tobool37, label %land.lhs.true38, label %if.end48, !dbg !608

land.lhs.true38:                                  ; preds = %if.end34
  %29 = load ptr, ptr %arguments, align 8, !dbg !609, !tbaa !290
  %maxlength39 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %29, i32 0, i32 1, !dbg !610
  %defined40 = getelementptr inbounds %struct.Definedunsignedlong, ptr %maxlength39, i32 0, i32 0, !dbg !611
  %30 = load i8, ptr %defined40, align 8, !dbg !611, !tbaa !589, !range !342, !noundef !343
  %tobool41 = trunc i8 %30 to i1, !dbg !611
  br i1 %tobool41, label %if.then42, label %if.end48, !dbg !612

if.then42:                                        ; preds = %land.lhs.true38
  %31 = load ptr, ptr %arguments, align 8, !dbg !613, !tbaa !290
  %maxlength43 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %31, i32 0, i32 1, !dbg !616
  %valueunsignedlong = getelementptr inbounds %struct.Definedunsignedlong, ptr %maxlength43, i32 0, i32 1, !dbg !617
  %32 = load i64, ptr %valueunsignedlong, align 8, !dbg !617, !tbaa !618
  %33 = load ptr, ptr %arguments, align 8, !dbg !619, !tbaa !290
  %minlength44 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %33, i32 0, i32 0, !dbg !620
  %valueunsignedlong45 = getelementptr inbounds %struct.Definedunsignedlong, ptr %minlength44, i32 0, i32 1, !dbg !621
  %34 = load i64, ptr %valueunsignedlong45, align 8, !dbg !621, !tbaa !622
  %cmp = icmp ult i64 %32, %34, !dbg !623
  br i1 %cmp, label %if.then46, label %if.end47, !dbg !624

if.then46:                                        ; preds = %if.then42
  %35 = load ptr, ptr %err.addr, align 8, !dbg !625, !tbaa !290
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %35, ptr noundef @.str.33), !dbg !627
  store i32 -1, ptr %retval, align 4, !dbg !628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !628

if.end47:                                         ; preds = %if.then42
  br label %if.end48, !dbg !629

if.end48:                                         ; preds = %if.end47, %land.lhs.true38, %if.end34
  %36 = load ptr, ptr %arguments, align 8, !dbg !630, !tbaa !290
  %optionoutput = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %36, i32 0, i32 11, !dbg !631
  %37 = load ptr, ptr %optionoutput, align 8, !dbg !631, !tbaa !442
  %call49 = call zeroext i1 @gt_option_is_set(ptr noundef %37), !dbg !632
  br i1 %call49, label %if.then50, label %if.end77, !dbg !633

if.then50:                                        ; preds = %if.end48
  %38 = load ptr, ptr %arguments, align 8, !dbg !634, !tbaa !290
  %flagsoutputoption = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %38, i32 0, i32 6, !dbg !635
  %39 = load ptr, ptr %flagsoutputoption, align 8, !dbg !635, !tbaa !313
  %call51 = call i64 @gt_str_array_size(ptr noundef %39), !dbg !636
  %cmp52 = icmp eq i64 %call51, 0, !dbg !637
  br i1 %cmp52, label %if.then53, label %if.else54, !dbg !638

if.then53:                                        ; preds = %if.then50
  %40 = load ptr, ptr %err.addr, align 8, !dbg !639, !tbaa !290
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %40, ptr noundef @.str.34), !dbg !641
  store i32 -1, ptr %retval, align 4, !dbg !642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !642

if.else54:                                        ; preds = %if.then50
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !643
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !498, metadata !DIExpression()), !dbg !644
  store i64 0, ptr %i, align 8, !dbg !645, !tbaa !647
  br label %for.cond, !dbg !648

for.cond:                                         ; preds = %for.inc, %if.else54
  %41 = load i64, ptr %i, align 8, !dbg !649, !tbaa !647
  %42 = load ptr, ptr %arguments, align 8, !dbg !651, !tbaa !290
  %flagsoutputoption55 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %42, i32 0, i32 6, !dbg !652
  %43 = load ptr, ptr %flagsoutputoption55, align 8, !dbg !652, !tbaa !313
  %call56 = call i64 @gt_str_array_size(ptr noundef %43), !dbg !653
  %cmp57 = icmp ult i64 %41, %call56, !dbg !654
  br i1 %cmp57, label %for.body, label %for.end, !dbg !655

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %arguments, align 8, !dbg !656, !tbaa !290
  %doms = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %44, i32 0, i32 8, !dbg !659
  %45 = load i8, ptr %doms, align 4, !dbg !659, !tbaa !341, !range !342, !noundef !343
  %tobool58 = trunc i8 %45 to i1, !dbg !659
  br i1 %tobool58, label %if.then59, label %if.else66, !dbg !660

if.then59:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x %struct.Optionargmodedesc], ptr %msgfmsubmodedesctable, i64 0, i64 0, !dbg !661
  %46 = load ptr, ptr %arguments, align 8, !dbg !664, !tbaa !290
  %showmode = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %46, i32 0, i32 2, !dbg !665
  %47 = load ptr, ptr %arguments, align 8, !dbg !666, !tbaa !290
  %flagsoutputoption60 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %47, i32 0, i32 6, !dbg !667
  %48 = load ptr, ptr %flagsoutputoption60, align 8, !dbg !667, !tbaa !313
  %49 = load i64, ptr %i, align 8, !dbg !668, !tbaa !647
  %call61 = call ptr @gt_str_array_get(ptr noundef %48, i64 noundef %49), !dbg !669
  %50 = load ptr, ptr %err.addr, align 8, !dbg !670, !tbaa !290
  %call62 = call i32 @gt_optionargaddbitmask(ptr noundef %arraydecay, i64 noundef 3, ptr noundef %showmode, ptr noundef @.str.35, ptr noundef %call61, ptr noundef %50), !dbg !671
  %cmp63 = icmp ne i32 %call62, 0, !dbg !672
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !673

if.then64:                                        ; preds = %if.then59
  store i32 -1, ptr %retval, align 4, !dbg !674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !674

if.end65:                                         ; preds = %if.then59
  br label %if.end75, !dbg !676

if.else66:                                        ; preds = %for.body
  %arraydecay67 = getelementptr inbounds [2 x %struct.Optionargmodedesc], ptr %gfmsubmodedesctable, i64 0, i64 0, !dbg !677
  %51 = load ptr, ptr %arguments, align 8, !dbg !680, !tbaa !290
  %showmode68 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %51, i32 0, i32 2, !dbg !681
  %52 = load ptr, ptr %arguments, align 8, !dbg !682, !tbaa !290
  %flagsoutputoption69 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %52, i32 0, i32 6, !dbg !683
  %53 = load ptr, ptr %flagsoutputoption69, align 8, !dbg !683, !tbaa !313
  %54 = load i64, ptr %i, align 8, !dbg !684, !tbaa !647
  %call70 = call ptr @gt_str_array_get(ptr noundef %53, i64 noundef %54), !dbg !685
  %55 = load ptr, ptr %err.addr, align 8, !dbg !686, !tbaa !290
  %call71 = call i32 @gt_optionargaddbitmask(ptr noundef %arraydecay67, i64 noundef 2, ptr noundef %showmode68, ptr noundef @.str.35, ptr noundef %call70, ptr noundef %55), !dbg !687
  %cmp72 = icmp ne i32 %call71, 0, !dbg !688
  br i1 %cmp72, label %if.then73, label %if.end74, !dbg !689

if.then73:                                        ; preds = %if.else66
  store i32 -1, ptr %retval, align 4, !dbg !690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !690

if.end74:                                         ; preds = %if.else66
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end65
  br label %for.inc, !dbg !692

for.inc:                                          ; preds = %if.end75
  %56 = load i64, ptr %i, align 8, !dbg !693, !tbaa !647
  %inc = add i64 %56, 1, !dbg !693
  store i64 %inc, ptr %i, align 8, !dbg !693, !tbaa !647
  br label %for.cond, !dbg !694, !llvm.loop !695

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !698
  br label %cleanup, !dbg !698

cleanup:                                          ; preds = %for.end, %if.then73, %if.then64
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !698
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end76

if.end76:                                         ; preds = %cleanup.cont
  br label %if.end77, !dbg !699

if.end77:                                         ; preds = %if.end76, %if.end48
  %57 = load i32, ptr %had_err, align 4, !dbg !700, !tbaa !503
  store i32 %57, ptr %retval, align 4, !dbg !701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !701

cleanup78:                                        ; preds = %if.end77, %cleanup, %if.then53, %if.then46, %if.then33, %if.else18
  call void @llvm.lifetime.end.p0(i64 48, ptr %gfmsubmodedesctable) #6, !dbg !702
  call void @llvm.lifetime.end.p0(i64 72, ptr %msgfmsubmodedesctable) #6, !dbg !702
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #6, !dbg !702
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #6, !dbg !702
  %58 = load i32, ptr %retval, align 4, !dbg !702
  ret i32 %58, !dbg !702
}

; Function Attrs: nounwind uwtable
define internal i32 @gt_matstat_runner(i32 noundef %argc, ptr noundef %argv, i32 noundef %parsed_args, ptr noundef %tool_arguments, ptr noundef %err) #0 !dbg !703 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %parsed_args.addr = alloca i32, align 4
  %tool_arguments.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %arguments = alloca ptr, align 8
  %fmindex = alloca %struct.Fmindex, align 8
  %suffixarray = alloca %struct.Suffixarray, align 8
  %packedindex = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %alphabet = alloca ptr, align 8
  %totallength = alloca i64, align 8
  %gt_mapfmindexfail = alloca i8, align 1
  %mappedbits = alloca i32, align 4
  %theindex = alloca ptr, align 8
  %gmatchforwardfunction = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !503
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !705, metadata !DIExpression()), !dbg !938
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !706, metadata !DIExpression()), !dbg !939
  store i32 %parsed_args, ptr %parsed_args.addr, align 4, !tbaa !503
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args.addr, metadata !707, metadata !DIExpression()), !dbg !940
  store ptr %tool_arguments, ptr %tool_arguments.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %tool_arguments.addr, metadata !708, metadata !DIExpression()), !dbg !941
  store ptr %err, ptr %err.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !709, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #6, !dbg !943
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !710, metadata !DIExpression()), !dbg !944
  %0 = load ptr, ptr %tool_arguments.addr, align 8, !dbg !945, !tbaa !290
  store ptr %0, ptr %arguments, align 8, !dbg !944, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 208, ptr %fmindex) #6, !dbg !946
  tail call void @llvm.dbg.declare(metadata ptr %fmindex, metadata !711, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 256, ptr %suffixarray) #6, !dbg !948
  tail call void @llvm.dbg.declare(metadata ptr %suffixarray, metadata !777, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 8, ptr %packedindex) #6, !dbg !950
  tail call void @llvm.dbg.declare(metadata ptr %packedindex, metadata !916, metadata !DIExpression()), !dbg !951
  store ptr null, ptr %packedindex, align 8, !dbg !951, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #6, !dbg !952
  tail call void @llvm.dbg.declare(metadata ptr %logger, metadata !917, metadata !DIExpression()), !dbg !953
  store ptr null, ptr %logger, align 8, !dbg !953, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #6, !dbg !954
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !922, metadata !DIExpression()), !dbg !955
  store i8 0, ptr %haserr, align 1, !dbg !955, !tbaa !956
  call void @llvm.lifetime.start.p0(i64 8, ptr %alphabet) #6, !dbg !957
  tail call void @llvm.dbg.declare(metadata ptr %alphabet, metadata !923, metadata !DIExpression()), !dbg !958
  store ptr null, ptr %alphabet, align 8, !dbg !958, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %totallength) #6, !dbg !959
  tail call void @llvm.dbg.declare(metadata ptr %totallength, metadata !924, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 1, ptr %gt_mapfmindexfail) #6, !dbg !961
  tail call void @llvm.dbg.declare(metadata ptr %gt_mapfmindexfail, metadata !925, metadata !DIExpression()), !dbg !962
  store i8 0, ptr %gt_mapfmindexfail, align 1, !dbg !962, !tbaa !956
  br label %do.body, !dbg !963

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %err.addr, align 8, !dbg !964, !tbaa !290
  %tobool = icmp ne ptr %1, null, !dbg !964
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !964

lor.lhs.false:                                    ; preds = %do.body
  %2 = load ptr, ptr %err.addr, align 8, !dbg !964, !tbaa !290
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %2), !dbg !964
  br i1 %call, label %if.then, label %if.end, !dbg !967

if.then:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr @stderr, align 8, !dbg !968, !tbaa !290
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.30, ptr noundef @__func__.gt_matstat_runner, ptr noundef @.str, i32 noundef 307), !dbg !968
  call void @abort() #7, !dbg !968
  unreachable, !dbg !968

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !967

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !967

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !970

do.body2:                                         ; preds = %do.end
  %4 = load ptr, ptr %arguments, align 8, !dbg !971, !tbaa !290
  %tobool3 = icmp ne ptr %4, null, !dbg !971
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !974

if.then4:                                         ; preds = %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !975, !tbaa !290
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_matstat_runner, ptr noundef @.str, i32 noundef 308), !dbg !975
  call void @abort() #7, !dbg !975
  unreachable, !dbg !975

if.end6:                                          ; preds = %do.body2
  br label %do.cond7, !dbg !974

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !974

do.end8:                                          ; preds = %do.cond7
  %6 = load ptr, ptr @stdout, align 8, !dbg !977, !tbaa !290
  %call9 = call ptr @gt_logger_new(i1 noundef zeroext false, ptr noundef @.str.36, ptr noundef %6), !dbg !978
  store ptr %call9, ptr %logger, align 8, !dbg !979, !tbaa !290
  %7 = load ptr, ptr %arguments, align 8, !dbg !980, !tbaa !290
  %indextype = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %7, i32 0, i32 7, !dbg !981
  %8 = load i32, ptr %indextype, align 8, !dbg !981, !tbaa !539
  %cmp = icmp eq i32 %8, 0, !dbg !982
  br i1 %cmp, label %if.then10, label %if.else17, !dbg !983

if.then10:                                        ; preds = %do.end8
  %9 = load ptr, ptr %arguments, align 8, !dbg !984, !tbaa !290
  %indexname = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %9, i32 0, i32 4, !dbg !987
  %10 = load ptr, ptr %indexname, align 8, !dbg !987, !tbaa !317
  %call11 = call ptr @gt_str_get(ptr noundef %10), !dbg !988
  %11 = load ptr, ptr %logger, align 8, !dbg !989, !tbaa !290
  %12 = load ptr, ptr %err.addr, align 8, !dbg !990, !tbaa !290
  %call12 = call i32 @gt_mapfmindex(ptr noundef %fmindex, ptr noundef %call11, ptr noundef %11, ptr noundef %12), !dbg !991
  %cmp13 = icmp ne i32 %call12, 0, !dbg !992
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !993

if.then14:                                        ; preds = %if.then10
  store i8 1, ptr %haserr, align 1, !dbg !994, !tbaa !956
  store i8 1, ptr %gt_mapfmindexfail, align 1, !dbg !996, !tbaa !956
  br label %if.end16, !dbg !997

if.else:                                          ; preds = %if.then10
  %alphabet15 = getelementptr inbounds %struct.Fmindex, ptr %fmindex, i32 0, i32 11, !dbg !998
  %13 = load ptr, ptr %alphabet15, align 8, !dbg !998, !tbaa !1000
  store ptr %13, ptr %alphabet, align 8, !dbg !1003, !tbaa !290
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %bwtlength = getelementptr inbounds %struct.Fmindex, ptr %fmindex, i32 0, i32 2, !dbg !1004
  %14 = load i64, ptr %bwtlength, align 8, !dbg !1004, !tbaa !1005
  %sub = sub i64 %14, 1, !dbg !1006
  store i64 %sub, ptr %totallength, align 8, !dbg !1007, !tbaa !647
  br label %if.end50, !dbg !1008

if.else17:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr %mappedbits) #6, !dbg !1009
  tail call void @llvm.dbg.declare(metadata ptr %mappedbits, metadata !926, metadata !DIExpression()), !dbg !1010
  %15 = load ptr, ptr %arguments, align 8, !dbg !1011, !tbaa !290
  %indextype18 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %15, i32 0, i32 7, !dbg !1013
  %16 = load i32, ptr %indextype18, align 8, !dbg !1013, !tbaa !539
  %cmp19 = icmp eq i32 %16, 1, !dbg !1014
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !1015

if.then20:                                        ; preds = %if.else17
  store i32 3, ptr %mappedbits, align 4, !dbg !1016, !tbaa !503
  br label %if.end26, !dbg !1018

if.else21:                                        ; preds = %if.else17
  %17 = load ptr, ptr %arguments, align 8, !dbg !1019, !tbaa !290
  %call22 = call zeroext i1 @dotestsequence(ptr noundef %17), !dbg !1022
  br i1 %call22, label %if.then23, label %if.else24, !dbg !1023

if.then23:                                        ; preds = %if.else21
  store i32 1, ptr %mappedbits, align 4, !dbg !1024, !tbaa !503
  br label %if.end25, !dbg !1026

if.else24:                                        ; preds = %if.else21
  store i32 0, ptr %mappedbits, align 4, !dbg !1027, !tbaa !503
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then20
  %18 = load i32, ptr %mappedbits, align 4, !dbg !1029, !tbaa !503
  %19 = load ptr, ptr %arguments, align 8, !dbg !1031, !tbaa !290
  %indexname27 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %19, i32 0, i32 4, !dbg !1032
  %20 = load ptr, ptr %indexname27, align 8, !dbg !1032, !tbaa !317
  %call28 = call ptr @gt_str_get(ptr noundef %20), !dbg !1033
  %21 = load ptr, ptr %logger, align 8, !dbg !1034, !tbaa !290
  %22 = load ptr, ptr %err.addr, align 8, !dbg !1035, !tbaa !290
  %call29 = call i32 @gt_mapsuffixarray(ptr noundef %suffixarray, i32 noundef %18, ptr noundef %call28, ptr noundef %21, ptr noundef %22), !dbg !1036
  %cmp30 = icmp ne i32 %call29, 0, !dbg !1037
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !1038

if.then31:                                        ; preds = %if.end26
  store i8 1, ptr %haserr, align 1, !dbg !1039, !tbaa !956
  store i64 0, ptr %totallength, align 8, !dbg !1041, !tbaa !647
  br label %if.end36, !dbg !1042

if.else32:                                        ; preds = %if.end26
  %encseq = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !1043
  %23 = load ptr, ptr %encseq, align 8, !dbg !1043, !tbaa !1045
  %call33 = call ptr @gt_encseq_alphabet(ptr noundef %23), !dbg !1050
  store ptr %call33, ptr %alphabet, align 8, !dbg !1051, !tbaa !290
  %encseq34 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !1052
  %24 = load ptr, ptr %encseq34, align 8, !dbg !1052, !tbaa !1045
  %call35 = call i64 @gt_encseq_total_length(ptr noundef %24), !dbg !1053
  store i64 %call35, ptr %totallength, align 8, !dbg !1054, !tbaa !647
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then31
  %25 = load i8, ptr %haserr, align 1, !dbg !1055, !tbaa !956, !range !342, !noundef !343
  %tobool37 = trunc i8 %25 to i1, !dbg !1055
  br i1 %tobool37, label %if.end49, label %if.then38, !dbg !1057

if.then38:                                        ; preds = %if.end36
  %26 = load ptr, ptr %arguments, align 8, !dbg !1058, !tbaa !290
  %indextype39 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %26, i32 0, i32 7, !dbg !1061
  %27 = load i32, ptr %indextype39, align 8, !dbg !1061, !tbaa !539
  %cmp40 = icmp eq i32 %27, 2, !dbg !1062
  br i1 %cmp40, label %if.then41, label %if.end48, !dbg !1063

if.then41:                                        ; preds = %if.then38
  %28 = load ptr, ptr %arguments, align 8, !dbg !1064, !tbaa !290
  %indexname42 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %28, i32 0, i32 4, !dbg !1066
  %29 = load ptr, ptr %indexname42, align 8, !dbg !1066, !tbaa !317
  %call43 = call ptr @gt_str_get(ptr noundef %29), !dbg !1067
  %30 = load ptr, ptr %err.addr, align 8, !dbg !1068, !tbaa !290
  %call44 = call ptr @gt_loadvoidBWTSeqForSA(ptr noundef %call43, i1 noundef zeroext false, ptr noundef %30), !dbg !1069
  store ptr %call44, ptr %packedindex, align 8, !dbg !1070, !tbaa !290
  %31 = load ptr, ptr %packedindex, align 8, !dbg !1071, !tbaa !290
  %cmp45 = icmp eq ptr %31, null, !dbg !1073
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1074

if.then46:                                        ; preds = %if.then41
  store i8 1, ptr %haserr, align 1, !dbg !1075, !tbaa !956
  br label %if.end47, !dbg !1077

if.end47:                                         ; preds = %if.then46, %if.then41
  br label %if.end48, !dbg !1078

if.end48:                                         ; preds = %if.end47, %if.then38
  br label %if.end49, !dbg !1079

if.end49:                                         ; preds = %if.end48, %if.end36
  call void @llvm.lifetime.end.p0(i64 4, ptr %mappedbits) #6, !dbg !1080
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end16
  %32 = load i8, ptr %haserr, align 1, !dbg !1081, !tbaa !956, !range !342, !noundef !343
  %tobool51 = trunc i8 %32 to i1, !dbg !1081
  br i1 %tobool51, label %if.end108, label %if.then52, !dbg !1082

if.then52:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %theindex) #6, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %theindex, metadata !929, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 8, ptr %gmatchforwardfunction) #6, !dbg !1085
  tail call void @llvm.dbg.declare(metadata ptr %gmatchforwardfunction, metadata !932, metadata !DIExpression()), !dbg !1086
  %33 = load ptr, ptr %arguments, align 8, !dbg !1087, !tbaa !290
  %indextype53 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %33, i32 0, i32 7, !dbg !1089
  %34 = load i32, ptr %indextype53, align 8, !dbg !1089, !tbaa !539
  %cmp54 = icmp eq i32 %34, 0, !dbg !1090
  br i1 %cmp54, label %if.then55, label %if.else60, !dbg !1091

if.then55:                                        ; preds = %if.then52
  store ptr %fmindex, ptr %theindex, align 8, !dbg !1092, !tbaa !290
  %35 = load ptr, ptr %arguments, align 8, !dbg !1094, !tbaa !290
  %doms = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %35, i32 0, i32 8, !dbg !1096
  %36 = load i8, ptr %doms, align 4, !dbg !1096, !tbaa !341, !range !342, !noundef !343
  %tobool56 = trunc i8 %36 to i1, !dbg !1096
  br i1 %tobool56, label %if.then57, label %if.else58, !dbg !1097

if.then57:                                        ; preds = %if.then55
  store ptr @gt_skfmmstats, ptr %gmatchforwardfunction, align 8, !dbg !1098, !tbaa !290
  br label %if.end59, !dbg !1100

if.else58:                                        ; preds = %if.then55
  store ptr @gt_skfmuniqueforward, ptr %gmatchforwardfunction, align 8, !dbg !1101, !tbaa !290
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then57
  br label %if.end84, !dbg !1103

if.else60:                                        ; preds = %if.then52
  %37 = load ptr, ptr %arguments, align 8, !dbg !1104, !tbaa !290
  %indextype61 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %37, i32 0, i32 7, !dbg !1107
  %38 = load i32, ptr %indextype61, align 8, !dbg !1107, !tbaa !539
  %cmp62 = icmp eq i32 %38, 1, !dbg !1108
  br i1 %cmp62, label %if.then63, label %if.else69, !dbg !1109

if.then63:                                        ; preds = %if.else60
  store ptr %suffixarray, ptr %theindex, align 8, !dbg !1110, !tbaa !290
  %39 = load ptr, ptr %arguments, align 8, !dbg !1112, !tbaa !290
  %doms64 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %39, i32 0, i32 8, !dbg !1114
  %40 = load i8, ptr %doms64, align 4, !dbg !1114, !tbaa !341, !range !342, !noundef !343
  %tobool65 = trunc i8 %40 to i1, !dbg !1114
  br i1 %tobool65, label %if.then66, label %if.else67, !dbg !1115

if.then66:                                        ; preds = %if.then63
  store ptr @gt_suffixarraymstats, ptr %gmatchforwardfunction, align 8, !dbg !1116, !tbaa !290
  br label %if.end68, !dbg !1118

if.else67:                                        ; preds = %if.then63
  store ptr @gt_suffixarrayuniqueforward, ptr %gmatchforwardfunction, align 8, !dbg !1119, !tbaa !290
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  br label %if.end83, !dbg !1121

if.else69:                                        ; preds = %if.else60
  br label %do.body70, !dbg !1122

do.body70:                                        ; preds = %if.else69
  %41 = load ptr, ptr %arguments, align 8, !dbg !1124, !tbaa !290
  %indextype71 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %41, i32 0, i32 7, !dbg !1124
  %42 = load i32, ptr %indextype71, align 8, !dbg !1124, !tbaa !539
  %cmp72 = icmp eq i32 %42, 2, !dbg !1124
  br i1 %cmp72, label %if.end75, label %if.then73, !dbg !1127

if.then73:                                        ; preds = %do.body70
  %43 = load ptr, ptr @stderr, align 8, !dbg !1128, !tbaa !290
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.1, ptr noundef @.str.37, ptr noundef @__func__.gt_matstat_runner, ptr noundef @.str, i32 noundef 405), !dbg !1128
  call void @abort() #7, !dbg !1128
  unreachable, !dbg !1128

if.end75:                                         ; preds = %do.body70
  br label %do.cond76, !dbg !1127

do.cond76:                                        ; preds = %if.end75
  br label %do.end77, !dbg !1127

do.end77:                                         ; preds = %do.cond76
  %44 = load ptr, ptr %packedindex, align 8, !dbg !1130, !tbaa !290
  store ptr %44, ptr %theindex, align 8, !dbg !1131, !tbaa !290
  %45 = load ptr, ptr %arguments, align 8, !dbg !1132, !tbaa !290
  %doms78 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %45, i32 0, i32 8, !dbg !1134
  %46 = load i8, ptr %doms78, align 4, !dbg !1134, !tbaa !341, !range !342, !noundef !343
  %tobool79 = trunc i8 %46 to i1, !dbg !1134
  br i1 %tobool79, label %if.then80, label %if.else81, !dbg !1135

if.then80:                                        ; preds = %do.end77
  store ptr @gt_voidpackedindexmstatsforward, ptr %gmatchforwardfunction, align 8, !dbg !1136, !tbaa !290
  br label %if.end82, !dbg !1138

if.else81:                                        ; preds = %do.end77
  store ptr @gt_voidpackedindexuniqueforward, ptr %gmatchforwardfunction, align 8, !dbg !1139, !tbaa !290
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end68
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end59
  %47 = load i8, ptr %haserr, align 1, !dbg !1141, !tbaa !956, !range !342, !noundef !343
  %tobool85 = trunc i8 %47 to i1, !dbg !1141
  br i1 %tobool85, label %if.end107, label %if.then86, !dbg !1143

if.then86:                                        ; preds = %if.end84
  %48 = load i8, ptr %haserr, align 1, !dbg !1144, !tbaa !956, !range !342, !noundef !343
  %tobool87 = trunc i8 %48 to i1, !dbg !1144
  br i1 %tobool87, label %if.end106, label %land.lhs.true, !dbg !1147

land.lhs.true:                                    ; preds = %if.then86
  %49 = load ptr, ptr %arguments, align 8, !dbg !1148, !tbaa !290
  %call88 = call zeroext i1 @dotestsequence(ptr noundef %49), !dbg !1149
  br i1 %call88, label %cond.true, label %cond.false, !dbg !1149

cond.true:                                        ; preds = %land.lhs.true
  %encseq89 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !1150
  %50 = load ptr, ptr %encseq89, align 8, !dbg !1150, !tbaa !1045
  br label %cond.end, !dbg !1149

cond.false:                                       ; preds = %land.lhs.true
  br label %cond.end, !dbg !1149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %50, %cond.true ], [ null, %cond.false ], !dbg !1149
  %51 = load ptr, ptr %theindex, align 8, !dbg !1151, !tbaa !290
  %52 = load i64, ptr %totallength, align 8, !dbg !1152, !tbaa !647
  %53 = load ptr, ptr %gmatchforwardfunction, align 8, !dbg !1153, !tbaa !290
  %54 = load ptr, ptr %alphabet, align 8, !dbg !1154, !tbaa !290
  %55 = load ptr, ptr %arguments, align 8, !dbg !1155, !tbaa !290
  %queryfilenames = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %55, i32 0, i32 5, !dbg !1156
  %56 = load ptr, ptr %queryfilenames, align 8, !dbg !1156, !tbaa !304
  %57 = load ptr, ptr %arguments, align 8, !dbg !1157, !tbaa !290
  %minlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %57, i32 0, i32 0, !dbg !1158
  %58 = load ptr, ptr %arguments, align 8, !dbg !1159, !tbaa !290
  %maxlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %58, i32 0, i32 1, !dbg !1160
  %59 = load ptr, ptr %arguments, align 8, !dbg !1161, !tbaa !290
  %showmode = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %59, i32 0, i32 2, !dbg !1162
  %60 = load i32, ptr %showmode, align 8, !dbg !1162, !tbaa !1163
  %and = and i32 %60, 1, !dbg !1164
  %tobool90 = icmp ne i32 %and, 0, !dbg !1165
  %61 = zext i1 %tobool90 to i64, !dbg !1165
  %cond91 = select i1 %tobool90, i32 1, i32 0, !dbg !1165
  %tobool92 = icmp ne i32 %cond91, 0, !dbg !1165
  %62 = load ptr, ptr %arguments, align 8, !dbg !1166, !tbaa !290
  %showmode93 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %62, i32 0, i32 2, !dbg !1167
  %63 = load i32, ptr %showmode93, align 8, !dbg !1167, !tbaa !1163
  %and94 = and i32 %63, 2, !dbg !1168
  %tobool95 = icmp ne i32 %and94, 0, !dbg !1169
  %64 = zext i1 %tobool95 to i64, !dbg !1169
  %cond96 = select i1 %tobool95, i32 1, i32 0, !dbg !1169
  %tobool97 = icmp ne i32 %cond96, 0, !dbg !1169
  %65 = load ptr, ptr %arguments, align 8, !dbg !1170, !tbaa !290
  %showmode98 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %65, i32 0, i32 2, !dbg !1171
  %66 = load i32, ptr %showmode98, align 8, !dbg !1171, !tbaa !1163
  %and99 = and i32 %66, 4, !dbg !1172
  %tobool100 = icmp ne i32 %and99, 0, !dbg !1173
  %67 = zext i1 %tobool100 to i64, !dbg !1173
  %cond101 = select i1 %tobool100, i32 1, i32 0, !dbg !1173
  %tobool102 = icmp ne i32 %cond101, 0, !dbg !1173
  %68 = load ptr, ptr %err.addr, align 8, !dbg !1174, !tbaa !290
  %call103 = call i32 @gt_findsubquerygmatchforward(ptr noundef %cond, ptr noundef %51, i64 noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %56, ptr noundef byval(%struct.Definedunsignedlong) align 8 %minlength, ptr noundef byval(%struct.Definedunsignedlong) align 8 %maxlength, i1 noundef zeroext %tobool92, i1 noundef zeroext %tobool97, i1 noundef zeroext %tobool102, ptr noundef %68), !dbg !1175
  %cmp104 = icmp ne i32 %call103, 0, !dbg !1176
  br i1 %cmp104, label %if.then105, label %if.end106, !dbg !1177

if.then105:                                       ; preds = %cond.end
  store i8 1, ptr %haserr, align 1, !dbg !1178, !tbaa !956
  br label %if.end106, !dbg !1180

if.end106:                                        ; preds = %if.then105, %cond.end, %if.then86
  br label %if.end107, !dbg !1181

if.end107:                                        ; preds = %if.end106, %if.end84
  call void @llvm.lifetime.end.p0(i64 8, ptr %gmatchforwardfunction) #6, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 8, ptr %theindex) #6, !dbg !1182
  br label %if.end108, !dbg !1183

if.end108:                                        ; preds = %if.end107, %if.end50
  %69 = load ptr, ptr %arguments, align 8, !dbg !1184, !tbaa !290
  %indextype109 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %69, i32 0, i32 7, !dbg !1186
  %70 = load i32, ptr %indextype109, align 8, !dbg !1186, !tbaa !539
  %cmp110 = icmp eq i32 %70, 0, !dbg !1187
  br i1 %cmp110, label %if.then111, label %if.else115, !dbg !1188

if.then111:                                       ; preds = %if.end108
  %71 = load i8, ptr %gt_mapfmindexfail, align 1, !dbg !1189, !tbaa !956, !range !342, !noundef !343
  %tobool112 = trunc i8 %71 to i1, !dbg !1189
  br i1 %tobool112, label %if.end114, label %if.then113, !dbg !1192

if.then113:                                       ; preds = %if.then111
  call void @gt_freefmindex(ptr noundef %fmindex), !dbg !1193
  br label %if.end114, !dbg !1195

if.end114:                                        ; preds = %if.then113, %if.then111
  br label %if.end122, !dbg !1196

if.else115:                                       ; preds = %if.end108
  %72 = load ptr, ptr %arguments, align 8, !dbg !1197, !tbaa !290
  %indextype116 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %72, i32 0, i32 7, !dbg !1200
  %73 = load i32, ptr %indextype116, align 8, !dbg !1200, !tbaa !539
  %cmp117 = icmp eq i32 %73, 2, !dbg !1201
  br i1 %cmp117, label %land.lhs.true118, label %if.end121, !dbg !1202

land.lhs.true118:                                 ; preds = %if.else115
  %74 = load ptr, ptr %packedindex, align 8, !dbg !1203, !tbaa !290
  %cmp119 = icmp ne ptr %74, null, !dbg !1204
  br i1 %cmp119, label %if.then120, label %if.end121, !dbg !1205

if.then120:                                       ; preds = %land.lhs.true118
  %75 = load ptr, ptr %packedindex, align 8, !dbg !1206, !tbaa !290
  call void @gt_deletevoidBWTSeq(ptr noundef %75), !dbg !1208
  br label %if.end121, !dbg !1209

if.end121:                                        ; preds = %if.then120, %land.lhs.true118, %if.else115
  call void @gt_freesuffixarray(ptr noundef %suffixarray), !dbg !1210
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end114
  %76 = load ptr, ptr %logger, align 8, !dbg !1211, !tbaa !290
  call void @gt_logger_delete(ptr noundef %76), !dbg !1212
  %77 = load i8, ptr %haserr, align 1, !dbg !1213, !tbaa !956, !range !342, !noundef !343
  %tobool123 = trunc i8 %77 to i1, !dbg !1213
  %78 = zext i1 %tobool123 to i64, !dbg !1213
  %cond124 = select i1 %tobool123, i32 -1, i32 0, !dbg !1213
  call void @llvm.lifetime.end.p0(i64 1, ptr %gt_mapfmindexfail) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %totallength) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %alphabet) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %packedindex) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 256, ptr %suffixarray) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 208, ptr %fmindex) #6, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #6, !dbg !1214
  ret i32 %cond124, !dbg !1215
}

; Function Attrs: nounwind uwtable
define ptr @gt_uniquesub() #0 !dbg !1216 {
entry:
  %call = call ptr @gt_tool_new(ptr noundef @gt_matstat_arguments_new_uniquesub, ptr noundef @gt_matstat_arguments_delete, ptr noundef @gt_matstat_option_parser_new, ptr noundef @gt_matstat_arguments_check, ptr noundef @gt_matstat_runner), !dbg !1217
  ret ptr %call, !dbg !1218
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_matstat_arguments_new_uniquesub() #0 !dbg !1219 {
entry:
  %call = call ptr @gt_matstat_arguments_new_generic(i1 noundef zeroext false), !dbg !1220
  ret ptr %call, !dbg !1221
}

; Function Attrs: nounwind uwtable
define internal ptr @gt_matstat_arguments_new_generic(i1 noundef zeroext %doms) #0 !dbg !1222 {
entry:
  %doms.addr = alloca i8, align 1
  %arguments = alloca ptr, align 8
  %frombool = zext i1 %doms to i8
  store i8 %frombool, ptr %doms.addr, align 1, !tbaa !956
  tail call void @llvm.dbg.declare(metadata ptr %doms.addr, metadata !1226, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %arguments) #6, !dbg !1229
  tail call void @llvm.dbg.declare(metadata ptr %arguments, metadata !1227, metadata !DIExpression()), !dbg !1230
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 136, ptr noundef @.str, i32 noundef 65), !dbg !1231
  store ptr %call, ptr %arguments, align 8, !dbg !1230, !tbaa !290
  %0 = load ptr, ptr %arguments, align 8, !dbg !1232, !tbaa !290
  %minlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %0, i32 0, i32 0, !dbg !1233
  %defined = getelementptr inbounds %struct.Definedunsignedlong, ptr %minlength, i32 0, i32 0, !dbg !1234
  store i8 0, ptr %defined, align 8, !dbg !1235, !tbaa !577
  %1 = load ptr, ptr %arguments, align 8, !dbg !1236, !tbaa !290
  %maxlength = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %1, i32 0, i32 1, !dbg !1237
  %defined1 = getelementptr inbounds %struct.Definedunsignedlong, ptr %maxlength, i32 0, i32 0, !dbg !1238
  store i8 0, ptr %defined1, align 8, !dbg !1239, !tbaa !589
  %2 = load ptr, ptr %arguments, align 8, !dbg !1240, !tbaa !290
  %showmode = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %2, i32 0, i32 2, !dbg !1241
  store i32 0, ptr %showmode, align 8, !dbg !1242, !tbaa !1163
  %call2 = call ptr @gt_str_new(), !dbg !1243
  %3 = load ptr, ptr %arguments, align 8, !dbg !1244, !tbaa !290
  %indexname = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %3, i32 0, i32 4, !dbg !1245
  store ptr %call2, ptr %indexname, align 8, !dbg !1246, !tbaa !317
  %call3 = call ptr @gt_str_array_new(), !dbg !1247
  %4 = load ptr, ptr %arguments, align 8, !dbg !1248, !tbaa !290
  %queryfilenames = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %4, i32 0, i32 5, !dbg !1249
  store ptr %call3, ptr %queryfilenames, align 8, !dbg !1250, !tbaa !304
  %call4 = call ptr @gt_str_array_new(), !dbg !1251
  %5 = load ptr, ptr %arguments, align 8, !dbg !1252, !tbaa !290
  %flagsoutputoption = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %5, i32 0, i32 6, !dbg !1253
  store ptr %call4, ptr %flagsoutputoption, align 8, !dbg !1254, !tbaa !313
  %6 = load i8, ptr %doms.addr, align 1, !dbg !1255, !tbaa !956, !range !342, !noundef !343
  %tobool = trunc i8 %6 to i1, !dbg !1255
  %7 = load ptr, ptr %arguments, align 8, !dbg !1256, !tbaa !290
  %doms5 = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %7, i32 0, i32 8, !dbg !1257
  %frombool6 = zext i1 %tobool to i8, !dbg !1258
  store i8 %frombool6, ptr %doms5, align 4, !dbg !1258, !tbaa !341
  %8 = load ptr, ptr %arguments, align 8, !dbg !1259, !tbaa !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %arguments) #6, !dbg !1260
  ret ptr %8, !dbg !1261
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1262 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare !dbg !1266 ptr @gt_str_new() #1

declare !dbg !1269 ptr @gt_str_array_new() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1272 void @gt_str_array_delete(ptr noundef) #1

declare !dbg !1275 void @gt_str_delete(ptr noundef) #1

declare !dbg !1278 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #1

declare !dbg !1281 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !1287 void @abort() #3

declare !dbg !1291 ptr @gt_option_parser_new(ptr noundef, ptr noundef) #1

declare !dbg !1294 void @gt_option_parser_set_mail_address(ptr noundef, ptr noundef) #1

declare !dbg !1297 ptr @gt_option_new_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1300 void @gt_option_parser_add_option(ptr noundef, ptr noundef) #1

declare !dbg !1303 void @gt_option_exclude(ptr noundef, ptr noundef) #1

declare !dbg !1306 ptr @gt_option_new_filename_array(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1309 void @gt_option_is_mandatory(ptr noundef) #1

declare !dbg !1312 ptr @gt_option_new_uword_min(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

declare !dbg !1315 ptr @gt_option_new_string_array(ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1316 ptr @gt_option_new_bool(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare !dbg !1320 void @gt_option_is_development_option(ptr noundef) #1

declare !dbg !1321 void @gt_option_parser_refer_to_manual(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare !dbg !1324 zeroext i1 @gt_error_is_set(ptr noundef) #1

declare !dbg !1329 zeroext i1 @gt_option_is_set(ptr noundef) #1

declare !dbg !1334 void @gt_error_set(ptr noundef, ptr noundef, ...) #1

declare !dbg !1337 i64 @gt_str_array_size(ptr noundef) #1

declare !dbg !1342 i32 @gt_optionargaddbitmask(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1347 ptr @gt_str_array_get(ptr noundef, i64 noundef) #1

declare !dbg !1350 ptr @gt_logger_new(i1 noundef zeroext, ptr noundef, ptr noundef) #1

declare !dbg !1353 i32 @gt_mapfmindex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1358 ptr @gt_str_get(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @dotestsequence(ptr noundef %gfmsubcallinfo) #0 !dbg !1363 {
entry:
  %retval = alloca i1, align 1
  %gfmsubcallinfo.addr = alloca ptr, align 8
  store ptr %gfmsubcallinfo, ptr %gfmsubcallinfo.addr, align 8, !tbaa !290
  tail call void @llvm.dbg.declare(metadata ptr %gfmsubcallinfo.addr, metadata !1369, metadata !DIExpression()), !dbg !1370
  %0 = load ptr, ptr %gfmsubcallinfo.addr, align 8, !dbg !1371, !tbaa !290
  %indextype = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %0, i32 0, i32 7, !dbg !1373
  %1 = load i32, ptr %indextype, align 8, !dbg !1373, !tbaa !539
  %cmp = icmp eq i32 %1, 2, !dbg !1374
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1375

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %gfmsubcallinfo.addr, align 8, !dbg !1376, !tbaa !290
  %verifywitnesspos = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %2, i32 0, i32 3, !dbg !1377
  %3 = load i8, ptr %verifywitnesspos, align 4, !dbg !1377, !tbaa !471, !range !342, !noundef !343
  %tobool = trunc i8 %3 to i1, !dbg !1377
  br i1 %tobool, label %land.lhs.true1, label %if.end, !dbg !1378

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %gfmsubcallinfo.addr, align 8, !dbg !1379, !tbaa !290
  %doms = getelementptr inbounds %struct.Gfmsubcallinfo, ptr %4, i32 0, i32 8, !dbg !1380
  %5 = load i8, ptr %doms, align 4, !dbg !1380, !tbaa !341, !range !342, !noundef !343
  %tobool2 = trunc i8 %5 to i1, !dbg !1380
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1381

if.then:                                          ; preds = %land.lhs.true1
  store i1 true, ptr %retval, align 1, !dbg !1382
  br label %return, !dbg !1382

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  store i1 false, ptr %retval, align 1, !dbg !1384
  br label %return, !dbg !1384

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, ptr %retval, align 1, !dbg !1385
  ret i1 %6, !dbg !1385
}

declare !dbg !1386 i32 @gt_mapsuffixarray(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1391 ptr @gt_encseq_alphabet(ptr noundef) #1

declare !dbg !1397 i64 @gt_encseq_total_length(ptr noundef) #1

declare !dbg !1400 ptr @gt_loadvoidBWTSeqForSA(ptr noundef, i1 noundef zeroext, ptr noundef) #1

declare i64 @gt_skfmmstats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @gt_skfmuniqueforward(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @gt_suffixarraymstats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @gt_suffixarrayuniqueforward(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @gt_voidpackedindexmstatsforward(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @gt_voidpackedindexuniqueforward(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !1407 i32 @gt_findsubquerygmatchforward(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.Definedunsignedlong) align 8, ptr noundef byval(%struct.Definedunsignedlong) align 8, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) #1

declare !dbg !1410 void @gt_freefmindex(ptr noundef) #1

declare !dbg !1413 void @gt_deletevoidBWTSeq(ptr noundef) #1

declare !dbg !1416 void @gt_freesuffixarray(ptr noundef) #1

declare !dbg !1419 void @gt_logger_delete(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!169}
!llvm.module.flags = !{!194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tools/gt_matstat.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4c5368afbfe507c16400528acbe36219")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 297)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 232, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 29)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 37)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !21)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 43)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 27)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 4)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 16)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !43, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 21)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !43, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !55, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 6)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 19)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !43, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 46)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !43, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !76, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 7)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 50)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 38)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !85, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 25)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 9)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 18)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !107, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !38, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 11)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !30, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 30)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 216, elements: !39)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !33, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 44)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 48)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 36)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 8)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 144, elements: !113)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 310, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 3)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 40)
!169 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !170, retainedTypes: !184, globals: !193, splitDebugInlining: false, nameTableKind: None)
!170 = !{!171, !177}
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 42, baseType: !172, size: 32, elements: !173)
!172 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "Fmindextype", value: 0)
!175 = !DIEnumerator(name: "Esaindextype", value: 1)
!176 = !DIEnumerator(name: "Packedindextype", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtReadmode", file: !178, line: 23, baseType: !172, size: 32, elements: !179)
!178 = !DIFile(filename: "src/core/readmode_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1b062e226e296972a431b9bfcad13aa9")
!179 = !{!180, !181, !182, !183}
!180 = !DIEnumerator(name: "GT_READMODE_FORWARD", value: 0)
!181 = !DIEnumerator(name: "GT_READMODE_REVERSE", value: 1)
!182 = !DIEnumerator(name: "GT_READMODE_COMPL", value: 2)
!183 = !DIEnumerator(name: "GT_READMODE_REVCOMPL", value: 3)
!184 = !{!185, !188, !190, !191}
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !186, line: 70, baseType: !187)
!186 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!187 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !189, line: 83, baseType: !187)
!189 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !{!0, !7, !12, !17, !23, !28, !31, !36, !41, !46, !51, !53, !58, !60, !62, !67, !72, !74, !79, !81, !83, !88, !93, !98, !100, !105, !110, !115, !117, !119, !124, !126, !131, !134, !136, !141, !146, !151, !156, !159, !164}
!194 = !{i32 7, !"Dwarf Version", i32 5}
!195 = !{i32 2, !"Debug Info Version", i32 3}
!196 = !{i32 1, !"wchar_size", i32 4}
!197 = !{i32 8, !"PIC Level", i32 2}
!198 = !{i32 7, !"uwtable", i32 2}
!199 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!200 = distinct !DISubprogram(name: "gt_matstat", scope: !2, file: !2, line: 477, type: !201, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169)
!201 = !DISubroutineType(types: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTool", file: !205, line: 26, baseType: !206)
!205 = !DIFile(filename: "src/core/tool_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e867124201284063b8eb5758ec6a469a")
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTool", file: !205, line: 26, flags: DIFlagFwdDecl)
!207 = !DILocation(line: 479, column: 10, scope: !200)
!208 = !DILocation(line: 479, column: 3, scope: !200)
!209 = !DISubprogram(name: "gt_tool_new", scope: !205, file: !205, line: 66, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{!203, !212, !216, !220, !228, !237}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsNew", file: !205, line: 30, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!190}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsDelete", file: !205, line: 33, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !190}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolOptionParserNew", file: !205, line: 36, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !190}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParser", file: !226, line: 27, baseType: !227)
!226 = !DIFile(filename: "src/core/option_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4af8e95b11f2236d309c3019659f4935")
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOptionParser", file: !226, line: 27, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolArgumentsCheck", file: !205, line: 41, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !232, !190, !233}
!232 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !235, line: 44, baseType: !236)
!235 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !235, line: 44, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtToolRunner", file: !205, line: 52, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!232, !232, !241, !232, !190, !233}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!243 = distinct !DISubprogram(name: "gt_matstat_arguments_new_matstat", scope: !2, file: !2, line: 76, type: !214, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169)
!244 = !DILocation(line: 78, column: 10, scope: !243)
!245 = !DILocation(line: 78, column: 3, scope: !243)
!246 = distinct !DISubprogram(name: "gt_matstat_arguments_delete", scope: !2, file: !2, line: 86, type: !218, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !247)
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !246, file: !2, line: 86, type: !190)
!249 = !DILocalVariable(name: "arguments", scope: !246, file: !2, line: 88, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "Gfmsubcallinfo", file: !2, line: 61, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 49, size: 1088, elements: !253)
!253 = !{!254, !262, !263, !264, !265, !270, !275, !276, !278, !279, !283, !284, !285, !286, !287, !288, !289}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "minlength", scope: !252, file: !2, line: 51, baseType: !255, size: 128)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "Definedunsignedlong", file: !256, line: 28, baseType: !257)
!256 = !DIFile(filename: "src/core/defined-types.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e7a1f5519c7b299f300cac0dd118ae65")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 24, size: 128, elements: !258)
!258 = !{!259, !261}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !257, file: !256, line: 26, baseType: !260, size: 8)
!260 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "valueunsignedlong", scope: !257, file: !256, line: 27, baseType: !188, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "maxlength", scope: !252, file: !2, line: 52, baseType: !255, size: 128, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "showmode", scope: !252, file: !2, line: 53, baseType: !172, size: 32, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "verifywitnesspos", scope: !252, file: !2, line: 54, baseType: !260, size: 8, offset: 288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "indexname", scope: !252, file: !2, line: 55, baseType: !266, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !268, line: 27, baseType: !269)
!268 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !268, line: 27, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "queryfilenames", scope: !252, file: !2, line: 56, baseType: !271, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrArray", file: !273, line: 24, baseType: !274)
!273 = !DIFile(filename: "src/core/str_array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d2f5724ae7121552c301a489d5e7f125")
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStrArray", file: !273, line: 24, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flagsoutputoption", scope: !252, file: !2, line: 56, baseType: !271, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "indextype", scope: !252, file: !2, line: 57, baseType: !277, size: 32, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "Indextype", file: !2, line: 47, baseType: !171)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "doms", scope: !252, file: !2, line: 58, baseType: !260, size: 8, offset: 544)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "optionmin", scope: !252, file: !2, line: 59, baseType: !280, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOption", file: !226, line: 33, baseType: !282)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOption", file: !226, line: 33, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "optionmax", scope: !252, file: !2, line: 59, baseType: !280, size: 64, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "optionoutput", scope: !252, file: !2, line: 59, baseType: !280, size: 64, offset: 704)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "optionfmindex", scope: !252, file: !2, line: 59, baseType: !280, size: 64, offset: 768)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "optionesaindex", scope: !252, file: !2, line: 60, baseType: !280, size: 64, offset: 832)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "optionpckindex", scope: !252, file: !2, line: 60, baseType: !280, size: 64, offset: 896)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "optionquery", scope: !252, file: !2, line: 60, baseType: !280, size: 64, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "optionverify", scope: !252, file: !2, line: 60, baseType: !280, size: 64, offset: 1024)
!290 = !{!291, !291, i64 0}
!291 = !{!"any pointer", !292, i64 0}
!292 = !{!"omnipotent char", !293, i64 0}
!293 = !{!"Simple C/C++ TBAA"}
!294 = !DILocation(line: 86, column: 47, scope: !246)
!295 = !DILocation(line: 88, column: 3, scope: !246)
!296 = !DILocation(line: 88, column: 19, scope: !246)
!297 = !DILocation(line: 88, column: 31, scope: !246)
!298 = !DILocation(line: 89, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !246, file: !2, line: 89, column: 7)
!300 = !DILocation(line: 89, column: 7, scope: !246)
!301 = !DILocation(line: 89, column: 19, scope: !299)
!302 = !DILocation(line: 90, column: 23, scope: !246)
!303 = !DILocation(line: 90, column: 34, scope: !246)
!304 = !{!305, !291, i64 48}
!305 = !{!"", !306, i64 0, !306, i64 16, !309, i64 32, !307, i64 36, !291, i64 40, !291, i64 48, !291, i64 56, !292, i64 64, !307, i64 68, !291, i64 72, !291, i64 80, !291, i64 88, !291, i64 96, !291, i64 104, !291, i64 112, !291, i64 120, !291, i64 128}
!306 = !{!"", !307, i64 0, !308, i64 8}
!307 = !{!"_Bool", !292, i64 0}
!308 = !{!"long", !292, i64 0}
!309 = !{!"int", !292, i64 0}
!310 = !DILocation(line: 90, column: 3, scope: !246)
!311 = !DILocation(line: 91, column: 23, scope: !246)
!312 = !DILocation(line: 91, column: 34, scope: !246)
!313 = !{!305, !291, i64 56}
!314 = !DILocation(line: 91, column: 3, scope: !246)
!315 = !DILocation(line: 92, column: 17, scope: !246)
!316 = !DILocation(line: 92, column: 28, scope: !246)
!317 = !{!305, !291, i64 40}
!318 = !DILocation(line: 92, column: 3, scope: !246)
!319 = !DILocation(line: 93, column: 3, scope: !246)
!320 = !DILocation(line: 94, column: 1, scope: !246)
!321 = distinct !DISubprogram(name: "gt_matstat_option_parser_new", scope: !2, file: !2, line: 96, type: !222, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !322)
!322 = !{!323, !324, !325}
!323 = !DILocalVariable(name: "tool_arguments", arg: 1, scope: !321, file: !2, line: 96, type: !190)
!324 = !DILocalVariable(name: "arguments", scope: !321, file: !2, line: 98, type: !250)
!325 = !DILocalVariable(name: "op", scope: !321, file: !2, line: 99, type: !224)
!326 = !DILocation(line: 96, column: 59, scope: !321)
!327 = !DILocation(line: 98, column: 3, scope: !321)
!328 = !DILocation(line: 98, column: 19, scope: !321)
!329 = !DILocation(line: 98, column: 31, scope: !321)
!330 = !DILocation(line: 99, column: 3, scope: !321)
!331 = !DILocation(line: 99, column: 19, scope: !321)
!332 = !DILocation(line: 100, column: 3, scope: !321)
!333 = !DILocation(line: 100, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 100, column: 3)
!335 = distinct !DILexicalBlock(scope: !321, file: !2, line: 100, column: 3)
!336 = !DILocation(line: 100, column: 3, scope: !335)
!337 = !DILocation(line: 100, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !2, line: 100, column: 3)
!339 = !DILocation(line: 103, column: 26, scope: !321)
!340 = !DILocation(line: 103, column: 37, scope: !321)
!341 = !{!305, !307, i64 68}
!342 = !{i8 0, i8 2}
!343 = !{}
!344 = !DILocation(line: 102, column: 8, scope: !321)
!345 = !DILocation(line: 102, column: 6, scope: !321)
!346 = !DILocation(line: 106, column: 37, scope: !321)
!347 = !DILocation(line: 106, column: 3, scope: !321)
!348 = !DILocation(line: 109, column: 51, scope: !321)
!349 = !DILocation(line: 109, column: 62, scope: !321)
!350 = !DILocation(line: 108, column: 30, scope: !321)
!351 = !DILocation(line: 108, column: 3, scope: !321)
!352 = !DILocation(line: 108, column: 14, scope: !321)
!353 = !DILocation(line: 108, column: 28, scope: !321)
!354 = !{!305, !291, i64 96}
!355 = !DILocation(line: 110, column: 31, scope: !321)
!356 = !DILocation(line: 110, column: 35, scope: !321)
!357 = !DILocation(line: 110, column: 46, scope: !321)
!358 = !DILocation(line: 110, column: 3, scope: !321)
!359 = !DILocation(line: 114, column: 52, scope: !321)
!360 = !DILocation(line: 114, column: 63, scope: !321)
!361 = !DILocation(line: 112, column: 31, scope: !321)
!362 = !DILocation(line: 112, column: 3, scope: !321)
!363 = !DILocation(line: 112, column: 14, scope: !321)
!364 = !DILocation(line: 112, column: 29, scope: !321)
!365 = !{!305, !291, i64 104}
!366 = !DILocation(line: 115, column: 31, scope: !321)
!367 = !DILocation(line: 115, column: 35, scope: !321)
!368 = !DILocation(line: 115, column: 46, scope: !321)
!369 = !DILocation(line: 115, column: 3, scope: !321)
!370 = !DILocation(line: 119, column: 52, scope: !321)
!371 = !DILocation(line: 119, column: 63, scope: !321)
!372 = !DILocation(line: 117, column: 31, scope: !321)
!373 = !DILocation(line: 117, column: 3, scope: !321)
!374 = !DILocation(line: 117, column: 14, scope: !321)
!375 = !DILocation(line: 117, column: 29, scope: !321)
!376 = !{!305, !291, i64 112}
!377 = !DILocation(line: 120, column: 31, scope: !321)
!378 = !DILocation(line: 120, column: 35, scope: !321)
!379 = !DILocation(line: 120, column: 46, scope: !321)
!380 = !DILocation(line: 120, column: 3, scope: !321)
!381 = !DILocation(line: 122, column: 21, scope: !321)
!382 = !DILocation(line: 122, column: 32, scope: !321)
!383 = !DILocation(line: 122, column: 46, scope: !321)
!384 = !DILocation(line: 122, column: 57, scope: !321)
!385 = !DILocation(line: 122, column: 3, scope: !321)
!386 = !DILocation(line: 123, column: 21, scope: !321)
!387 = !DILocation(line: 123, column: 32, scope: !321)
!388 = !DILocation(line: 123, column: 47, scope: !321)
!389 = !DILocation(line: 123, column: 58, scope: !321)
!390 = !DILocation(line: 123, column: 3, scope: !321)
!391 = !DILocation(line: 124, column: 21, scope: !321)
!392 = !DILocation(line: 124, column: 32, scope: !321)
!393 = !DILocation(line: 124, column: 47, scope: !321)
!394 = !DILocation(line: 124, column: 58, scope: !321)
!395 = !DILocation(line: 124, column: 3, scope: !321)
!396 = !DILocation(line: 128, column: 54, scope: !321)
!397 = !DILocation(line: 128, column: 65, scope: !321)
!398 = !DILocation(line: 126, column: 28, scope: !321)
!399 = !DILocation(line: 126, column: 3, scope: !321)
!400 = !DILocation(line: 126, column: 14, scope: !321)
!401 = !DILocation(line: 126, column: 26, scope: !321)
!402 = !{!305, !291, i64 120}
!403 = !DILocation(line: 129, column: 26, scope: !321)
!404 = !DILocation(line: 129, column: 37, scope: !321)
!405 = !DILocation(line: 129, column: 3, scope: !321)
!406 = !DILocation(line: 130, column: 31, scope: !321)
!407 = !DILocation(line: 130, column: 35, scope: !321)
!408 = !DILocation(line: 130, column: 46, scope: !321)
!409 = !DILocation(line: 130, column: 3, scope: !321)
!410 = !DILocation(line: 135, column: 37, scope: !321)
!411 = !DILocation(line: 135, column: 48, scope: !321)
!412 = !DILocation(line: 136, column: 43, scope: !321)
!413 = !DILocation(line: 132, column: 26, scope: !321)
!414 = !DILocation(line: 132, column: 3, scope: !321)
!415 = !DILocation(line: 132, column: 14, scope: !321)
!416 = !DILocation(line: 132, column: 24, scope: !321)
!417 = !{!305, !291, i64 72}
!418 = !DILocation(line: 138, column: 31, scope: !321)
!419 = !DILocation(line: 138, column: 35, scope: !321)
!420 = !DILocation(line: 138, column: 46, scope: !321)
!421 = !DILocation(line: 138, column: 3, scope: !321)
!422 = !DILocation(line: 143, column: 37, scope: !321)
!423 = !DILocation(line: 143, column: 48, scope: !321)
!424 = !DILocation(line: 144, column: 43, scope: !321)
!425 = !DILocation(line: 140, column: 26, scope: !321)
!426 = !DILocation(line: 140, column: 3, scope: !321)
!427 = !DILocation(line: 140, column: 14, scope: !321)
!428 = !DILocation(line: 140, column: 24, scope: !321)
!429 = !{!305, !291, i64 80}
!430 = !DILocation(line: 146, column: 31, scope: !321)
!431 = !DILocation(line: 146, column: 35, scope: !321)
!432 = !DILocation(line: 146, column: 46, scope: !321)
!433 = !DILocation(line: 146, column: 3, scope: !321)
!434 = !DILocation(line: 149, column: 20, scope: !321)
!435 = !DILocation(line: 149, column: 31, scope: !321)
!436 = !DILocation(line: 152, column: 20, scope: !321)
!437 = !DILocation(line: 152, column: 31, scope: !321)
!438 = !DILocation(line: 148, column: 29, scope: !321)
!439 = !DILocation(line: 148, column: 3, scope: !321)
!440 = !DILocation(line: 148, column: 14, scope: !321)
!441 = !DILocation(line: 148, column: 27, scope: !321)
!442 = !{!305, !291, i64 88}
!443 = !DILocation(line: 153, column: 31, scope: !321)
!444 = !DILocation(line: 153, column: 35, scope: !321)
!445 = !DILocation(line: 153, column: 46, scope: !321)
!446 = !DILocation(line: 153, column: 3, scope: !321)
!447 = !DILocation(line: 155, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !321, file: !2, line: 155, column: 7)
!449 = !DILocation(line: 155, column: 18, scope: !448)
!450 = !DILocation(line: 155, column: 7, scope: !321)
!451 = !DILocation(line: 158, column: 51, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !2, line: 155, column: 24)
!453 = !DILocation(line: 158, column: 62, scope: !452)
!454 = !DILocation(line: 156, column: 31, scope: !452)
!455 = !DILocation(line: 156, column: 5, scope: !452)
!456 = !DILocation(line: 156, column: 16, scope: !452)
!457 = !DILocation(line: 156, column: 29, scope: !452)
!458 = !{!305, !291, i64 128}
!459 = !DILocation(line: 160, column: 37, scope: !452)
!460 = !DILocation(line: 160, column: 48, scope: !452)
!461 = !DILocation(line: 160, column: 5, scope: !452)
!462 = !DILocation(line: 161, column: 33, scope: !452)
!463 = !DILocation(line: 161, column: 37, scope: !452)
!464 = !DILocation(line: 161, column: 48, scope: !452)
!465 = !DILocation(line: 161, column: 5, scope: !452)
!466 = !DILocation(line: 162, column: 3, scope: !452)
!467 = !DILocation(line: 164, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !448, file: !2, line: 163, column: 3)
!469 = !DILocation(line: 164, column: 16, scope: !468)
!470 = !DILocation(line: 164, column: 33, scope: !468)
!471 = !{!305, !307, i64 36}
!472 = !DILocation(line: 167, column: 36, scope: !321)
!473 = !DILocation(line: 167, column: 3, scope: !321)
!474 = !DILocation(line: 169, column: 10, scope: !321)
!475 = !DILocation(line: 170, column: 1, scope: !321)
!476 = !DILocation(line: 169, column: 3, scope: !321)
!477 = distinct !DISubprogram(name: "gt_matstat_arguments_check", scope: !2, file: !2, line: 172, type: !230, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !494, !498}
!479 = !DILocalVariable(name: "rest_argc", arg: 1, scope: !477, file: !2, line: 172, type: !232)
!480 = !DILocalVariable(name: "tool_arguments", arg: 2, scope: !477, file: !2, line: 173, type: !190)
!481 = !DILocalVariable(name: "err", arg: 3, scope: !477, file: !2, line: 173, type: !233)
!482 = !DILocalVariable(name: "arguments", scope: !477, file: !2, line: 175, type: !250)
!483 = !DILocalVariable(name: "had_err", scope: !477, file: !2, line: 176, type: !232)
!484 = !DILocalVariable(name: "msgfmsubmodedesctable", scope: !477, file: !2, line: 177, type: !485)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 576, elements: !162)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "Optionargmodedesc", file: !488, line: 28, baseType: !489)
!488 = !DIFile(filename: "src/match/optionargmode.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "475c86d167e6b166f3d597fd3233e773")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 23, size: 192, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !489, file: !488, line: 25, baseType: !242, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !489, file: !488, line: 26, baseType: !242, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "bitmask", scope: !489, file: !488, line: 27, baseType: !172, size: 32, offset: 128)
!494 = !DILocalVariable(name: "gfmsubmodedesctable", scope: !477, file: !2, line: 183, type: !495)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 384, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 2)
!498 = !DILocalVariable(name: "i", scope: !499, file: !2, line: 243, type: !188)
!499 = distinct !DILexicalBlock(scope: !500, file: !2, line: 242, column: 7)
!500 = distinct !DILexicalBlock(scope: !501, file: !2, line: 237, column: 11)
!501 = distinct !DILexicalBlock(scope: !502, file: !2, line: 236, column: 5)
!502 = distinct !DILexicalBlock(scope: !477, file: !2, line: 235, column: 9)
!503 = !{!309, !309, i64 0}
!504 = !DILocation(line: 172, column: 53, scope: !477)
!505 = !DILocation(line: 173, column: 45, scope: !477)
!506 = !DILocation(line: 173, column: 70, scope: !477)
!507 = !DILocation(line: 175, column: 3, scope: !477)
!508 = !DILocation(line: 175, column: 19, scope: !477)
!509 = !DILocation(line: 175, column: 31, scope: !477)
!510 = !DILocation(line: 176, column: 3, scope: !477)
!511 = !DILocation(line: 176, column: 7, scope: !477)
!512 = !DILocation(line: 177, column: 3, scope: !477)
!513 = !DILocation(line: 177, column: 27, scope: !477)
!514 = !DILocation(line: 183, column: 3, scope: !477)
!515 = !DILocation(line: 183, column: 27, scope: !477)
!516 = !DILocation(line: 188, column: 3, scope: !477)
!517 = !DILocation(line: 188, column: 3, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 188, column: 3)
!519 = distinct !DILexicalBlock(scope: !477, file: !2, line: 188, column: 3)
!520 = !DILocation(line: 188, column: 3, scope: !519)
!521 = !DILocation(line: 188, column: 3, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !2, line: 188, column: 3)
!523 = !DILocation(line: 189, column: 3, scope: !477)
!524 = !DILocation(line: 189, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !2, line: 189, column: 3)
!526 = distinct !DILexicalBlock(scope: !477, file: !2, line: 189, column: 3)
!527 = !DILocation(line: 189, column: 3, scope: !526)
!528 = !DILocation(line: 189, column: 3, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !2, line: 189, column: 3)
!530 = !DILocation(line: 191, column: 24, scope: !531)
!531 = distinct !DILexicalBlock(scope: !477, file: !2, line: 191, column: 7)
!532 = !DILocation(line: 191, column: 35, scope: !531)
!533 = !DILocation(line: 191, column: 7, scope: !531)
!534 = !DILocation(line: 191, column: 7, scope: !477)
!535 = !DILocation(line: 193, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !2, line: 192, column: 5)
!537 = !DILocation(line: 193, column: 18, scope: !536)
!538 = !DILocation(line: 193, column: 28, scope: !536)
!539 = !{!305, !292, i64 64}
!540 = !DILocation(line: 194, column: 5, scope: !536)
!541 = !DILocation(line: 196, column: 28, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !2, line: 196, column: 11)
!543 = distinct !DILexicalBlock(scope: !531, file: !2, line: 195, column: 5)
!544 = !DILocation(line: 196, column: 39, scope: !542)
!545 = !DILocation(line: 196, column: 11, scope: !542)
!546 = !DILocation(line: 196, column: 11, scope: !543)
!547 = !DILocation(line: 198, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !542, file: !2, line: 197, column: 7)
!549 = !DILocation(line: 198, column: 20, scope: !548)
!550 = !DILocation(line: 198, column: 30, scope: !548)
!551 = !DILocation(line: 199, column: 7, scope: !548)
!552 = !DILocation(line: 201, column: 30, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !2, line: 201, column: 13)
!554 = distinct !DILexicalBlock(scope: !542, file: !2, line: 200, column: 7)
!555 = !DILocation(line: 201, column: 41, scope: !553)
!556 = !DILocation(line: 201, column: 13, scope: !553)
!557 = !DILocation(line: 201, column: 13, scope: !554)
!558 = !DILocation(line: 203, column: 11, scope: !559)
!559 = distinct !DILexicalBlock(scope: !553, file: !2, line: 202, column: 9)
!560 = !DILocation(line: 203, column: 22, scope: !559)
!561 = !DILocation(line: 203, column: 32, scope: !559)
!562 = !DILocation(line: 204, column: 9, scope: !559)
!563 = !DILocation(line: 206, column: 24, scope: !564)
!564 = distinct !DILexicalBlock(scope: !553, file: !2, line: 205, column: 9)
!565 = !DILocation(line: 206, column: 11, scope: !564)
!566 = !DILocation(line: 207, column: 11, scope: !564)
!567 = !DILocation(line: 211, column: 26, scope: !568)
!568 = distinct !DILexicalBlock(scope: !477, file: !2, line: 211, column: 9)
!569 = !DILocation(line: 211, column: 37, scope: !568)
!570 = !DILocation(line: 211, column: 9, scope: !568)
!571 = !DILocation(line: 211, column: 9, scope: !477)
!572 = !DILocation(line: 213, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !2, line: 212, column: 5)
!574 = !DILocation(line: 213, column: 19, scope: !573)
!575 = !DILocation(line: 213, column: 29, scope: !573)
!576 = !DILocation(line: 213, column: 37, scope: !573)
!577 = !{!305, !307, i64 0}
!578 = !DILocation(line: 214, column: 5, scope: !573)
!579 = !DILocation(line: 215, column: 26, scope: !580)
!580 = distinct !DILexicalBlock(scope: !477, file: !2, line: 215, column: 9)
!581 = !DILocation(line: 215, column: 37, scope: !580)
!582 = !DILocation(line: 215, column: 9, scope: !580)
!583 = !DILocation(line: 215, column: 9, scope: !477)
!584 = !DILocation(line: 217, column: 8, scope: !585)
!585 = distinct !DILexicalBlock(scope: !580, file: !2, line: 216, column: 5)
!586 = !DILocation(line: 217, column: 19, scope: !585)
!587 = !DILocation(line: 217, column: 29, scope: !585)
!588 = !DILocation(line: 217, column: 37, scope: !585)
!589 = !{!305, !307, i64 16}
!590 = !DILocation(line: 218, column: 5, scope: !585)
!591 = !DILocation(line: 219, column: 27, scope: !592)
!592 = distinct !DILexicalBlock(scope: !477, file: !2, line: 219, column: 9)
!593 = !DILocation(line: 219, column: 38, scope: !592)
!594 = !DILocation(line: 219, column: 10, scope: !592)
!595 = !DILocation(line: 219, column: 49, scope: !592)
!596 = !DILocation(line: 220, column: 29, scope: !592)
!597 = !DILocation(line: 220, column: 40, scope: !592)
!598 = !DILocation(line: 220, column: 12, scope: !592)
!599 = !DILocation(line: 219, column: 9, scope: !477)
!600 = !DILocation(line: 222, column: 20, scope: !601)
!601 = distinct !DILexicalBlock(scope: !592, file: !2, line: 221, column: 5)
!602 = !DILocation(line: 222, column: 7, scope: !601)
!603 = !DILocation(line: 223, column: 7, scope: !601)
!604 = !DILocation(line: 225, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !477, file: !2, line: 225, column: 9)
!606 = !DILocation(line: 225, column: 20, scope: !605)
!607 = !DILocation(line: 225, column: 30, scope: !605)
!608 = !DILocation(line: 225, column: 38, scope: !605)
!609 = !DILocation(line: 226, column: 9, scope: !605)
!610 = !DILocation(line: 226, column: 20, scope: !605)
!611 = !DILocation(line: 226, column: 30, scope: !605)
!612 = !DILocation(line: 225, column: 9, scope: !477)
!613 = !DILocation(line: 228, column: 11, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !2, line: 228, column: 11)
!615 = distinct !DILexicalBlock(scope: !605, file: !2, line: 227, column: 5)
!616 = !DILocation(line: 228, column: 22, scope: !614)
!617 = !DILocation(line: 228, column: 32, scope: !614)
!618 = !{!305, !308, i64 24}
!619 = !DILocation(line: 229, column: 11, scope: !614)
!620 = !DILocation(line: 229, column: 22, scope: !614)
!621 = !DILocation(line: 229, column: 32, scope: !614)
!622 = !{!305, !308, i64 8}
!623 = !DILocation(line: 228, column: 50, scope: !614)
!624 = !DILocation(line: 228, column: 11, scope: !615)
!625 = !DILocation(line: 231, column: 22, scope: !626)
!626 = distinct !DILexicalBlock(scope: !614, file: !2, line: 230, column: 7)
!627 = !DILocation(line: 231, column: 9, scope: !626)
!628 = !DILocation(line: 232, column: 9, scope: !626)
!629 = !DILocation(line: 234, column: 5, scope: !615)
!630 = !DILocation(line: 235, column: 26, scope: !502)
!631 = !DILocation(line: 235, column: 37, scope: !502)
!632 = !DILocation(line: 235, column: 9, scope: !502)
!633 = !DILocation(line: 235, column: 9, scope: !477)
!634 = !DILocation(line: 237, column: 29, scope: !500)
!635 = !DILocation(line: 237, column: 40, scope: !500)
!636 = !DILocation(line: 237, column: 11, scope: !500)
!637 = !DILocation(line: 237, column: 59, scope: !500)
!638 = !DILocation(line: 237, column: 11, scope: !501)
!639 = !DILocation(line: 239, column: 22, scope: !640)
!640 = distinct !DILexicalBlock(scope: !500, file: !2, line: 238, column: 7)
!641 = !DILocation(line: 239, column: 9, scope: !640)
!642 = !DILocation(line: 240, column: 9, scope: !640)
!643 = !DILocation(line: 243, column: 9, scope: !499)
!644 = !DILocation(line: 243, column: 17, scope: !499)
!645 = !DILocation(line: 244, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !499, file: !2, line: 244, column: 9)
!647 = !{!308, !308, i64 0}
!648 = !DILocation(line: 244, column: 14, scope: !646)
!649 = !DILocation(line: 244, column: 19, scope: !650)
!650 = distinct !DILexicalBlock(scope: !646, file: !2, line: 244, column: 9)
!651 = !DILocation(line: 244, column: 39, scope: !650)
!652 = !DILocation(line: 244, column: 50, scope: !650)
!653 = !DILocation(line: 244, column: 21, scope: !650)
!654 = !DILocation(line: 244, column: 20, scope: !650)
!655 = !DILocation(line: 244, column: 9, scope: !646)
!656 = !DILocation(line: 246, column: 15, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !2, line: 246, column: 15)
!658 = distinct !DILexicalBlock(scope: !650, file: !2, line: 245, column: 9)
!659 = !DILocation(line: 246, column: 26, scope: !657)
!660 = !DILocation(line: 246, column: 15, scope: !658)
!661 = !DILocation(line: 248, column: 40, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !2, line: 248, column: 17)
!663 = distinct !DILexicalBlock(scope: !657, file: !2, line: 247, column: 11)
!664 = !DILocation(line: 251, column: 35, scope: !662)
!665 = !DILocation(line: 251, column: 46, scope: !662)
!666 = !DILocation(line: 253, column: 51, scope: !662)
!667 = !DILocation(line: 253, column: 62, scope: !662)
!668 = !DILocation(line: 254, column: 51, scope: !662)
!669 = !DILocation(line: 253, column: 34, scope: !662)
!670 = !DILocation(line: 255, column: 34, scope: !662)
!671 = !DILocation(line: 248, column: 17, scope: !662)
!672 = !DILocation(line: 255, column: 39, scope: !662)
!673 = !DILocation(line: 248, column: 17, scope: !663)
!674 = !DILocation(line: 257, column: 15, scope: !675)
!675 = distinct !DILexicalBlock(scope: !662, file: !2, line: 256, column: 13)
!676 = !DILocation(line: 259, column: 11, scope: !663)
!677 = !DILocation(line: 261, column: 40, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 261, column: 17)
!679 = distinct !DILexicalBlock(scope: !657, file: !2, line: 260, column: 11)
!680 = !DILocation(line: 264, column: 36, scope: !678)
!681 = !DILocation(line: 264, column: 47, scope: !678)
!682 = !DILocation(line: 266, column: 52, scope: !678)
!683 = !DILocation(line: 266, column: 63, scope: !678)
!684 = !DILocation(line: 267, column: 52, scope: !678)
!685 = !DILocation(line: 266, column: 35, scope: !678)
!686 = !DILocation(line: 268, column: 35, scope: !678)
!687 = !DILocation(line: 261, column: 17, scope: !678)
!688 = !DILocation(line: 268, column: 40, scope: !678)
!689 = !DILocation(line: 261, column: 17, scope: !679)
!690 = !DILocation(line: 270, column: 15, scope: !691)
!691 = distinct !DILexicalBlock(scope: !678, file: !2, line: 269, column: 13)
!692 = !DILocation(line: 273, column: 9, scope: !658)
!693 = !DILocation(line: 244, column: 71, scope: !650)
!694 = !DILocation(line: 244, column: 9, scope: !650)
!695 = distinct !{!695, !655, !696, !697}
!696 = !DILocation(line: 273, column: 9, scope: !646)
!697 = !{!"llvm.loop.mustprogress"}
!698 = !DILocation(line: 274, column: 7, scope: !500)
!699 = !DILocation(line: 275, column: 5, scope: !501)
!700 = !DILocation(line: 277, column: 10, scope: !477)
!701 = !DILocation(line: 277, column: 3, scope: !477)
!702 = !DILocation(line: 278, column: 1, scope: !477)
!703 = distinct !DISubprogram(name: "gt_matstat_runner", scope: !2, file: !2, line: 291, type: !239, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !777, !916, !917, !922, !923, !924, !925, !926, !929, !932}
!705 = !DILocalVariable(name: "argc", arg: 1, scope: !703, file: !2, line: 291, type: !232)
!706 = !DILocalVariable(name: "argv", arg: 2, scope: !703, file: !2, line: 291, type: !241)
!707 = !DILocalVariable(name: "parsed_args", arg: 3, scope: !703, file: !2, line: 292, type: !232)
!708 = !DILocalVariable(name: "tool_arguments", arg: 4, scope: !703, file: !2, line: 293, type: !190)
!709 = !DILocalVariable(name: "err", arg: 5, scope: !703, file: !2, line: 293, type: !233)
!710 = !DILocalVariable(name: "arguments", scope: !703, file: !2, line: 295, type: !250)
!711 = !DILocalVariable(name: "fmindex", scope: !703, file: !2, line: 296, type: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fmindex", file: !713, line: 114, baseType: !714)
!713 = !DIFile(filename: "src/match/fmindex.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7e6c46aa1d3ea5efe542c2555a14e059")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 82, size: 1664, elements: !715)
!715 = !{!716, !721, !725, !726, !728, !729, !730, !731, !732, !733, !734, !748, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bwtformatching", scope: !714, file: !713, line: 85, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseq", file: !719, line: 48, baseType: !720)
!719 = !DIFile(filename: "src/core/encseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "bab4512cadee996edd2995020539d931")
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseq", file: !719, line: 48, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bfreq", scope: !714, file: !713, line: 86, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUchar", file: !189, line: 102, baseType: !724)
!724 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "bwtlength", scope: !714, file: !713, line: 87, baseType: !188, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tfreq", scope: !714, file: !713, line: 88, baseType: !727, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "superbfreq", scope: !714, file: !713, line: 89, baseType: !727, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "markpostable", scope: !714, file: !713, line: 91, baseType: !727, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "longestsuffixpos", scope: !714, file: !713, line: 92, baseType: !188, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "negatebsizeones", scope: !714, file: !713, line: 93, baseType: !188, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "negatesuperbsizeones", scope: !714, file: !713, line: 94, baseType: !188, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "markdistminus1", scope: !714, file: !713, line: 95, baseType: !188, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "specpos", scope: !714, file: !713, line: 96, baseType: !735, size: 192, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtArrayGtPairBwtidx", file: !713, line: 78, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 78, size: 192, elements: !737)
!737 = !{!738, !746, !747}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "spaceGtPairBwtidx", scope: !736, file: !713, line: 78, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtPairBwtidx", file: !741, line: 21, baseType: !742)
!741 = !DIFile(filename: "src/core/pairbwtidx.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "a077674a651f35c88d69efde7317d61b")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtPairBwtidx", file: !741, line: 23, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bwtpos", scope: !742, file: !741, line: 25, baseType: !188, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "suftabvalue", scope: !742, file: !741, line: 26, baseType: !188, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "allocatedGtPairBwtidx", scope: !736, file: !713, line: 78, baseType: !188, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nextfreeGtPairBwtidx", scope: !736, file: !713, line: 78, baseType: !188, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "alphabet", scope: !714, file: !713, line: 97, baseType: !749, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtAlphabet", file: !752, line: 32, baseType: !753)
!752 = !DIFile(filename: "src/core/alphabet_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0b48240ce57ca6598f5548b5c9cf52e4")
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtAlphabet", file: !752, line: 32, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mappedptr", scope: !714, file: !713, line: 98, baseType: !190, size: 64, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mapsize", scope: !714, file: !713, line: 99, baseType: !172, size: 32, offset: 960)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bsize", scope: !714, file: !713, line: 100, baseType: !172, size: 32, offset: 992)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bsizehalve", scope: !714, file: !713, line: 101, baseType: !172, size: 32, offset: 1024)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "superbsize", scope: !714, file: !713, line: 102, baseType: !172, size: 32, offset: 1056)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "log2bsize", scope: !714, file: !713, line: 103, baseType: !172, size: 32, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "log2superbsize", scope: !714, file: !713, line: 104, baseType: !172, size: 32, offset: 1120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "log2superbsizeminuslog2bsize", scope: !714, file: !713, line: 105, baseType: !172, size: 32, offset: 1152)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "log2markdist", scope: !714, file: !713, line: 106, baseType: !172, size: 32, offset: 1184)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "suffixlength", scope: !714, file: !713, line: 107, baseType: !172, size: 32, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sizeofindex", scope: !714, file: !713, line: 108, baseType: !188, size: 64, offset: 1280)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nofblocks", scope: !714, file: !713, line: 109, baseType: !188, size: 64, offset: 1344)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nofsuperblocks", scope: !714, file: !713, line: 110, baseType: !188, size: 64, offset: 1408)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "markdist", scope: !714, file: !713, line: 111, baseType: !188, size: 64, offset: 1472)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "numofcodes", scope: !714, file: !713, line: 112, baseType: !188, size: 64, offset: 1536)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "boundarray", scope: !714, file: !713, line: 113, baseType: !770, size: 64, offset: 1600)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUwordBound", file: !772, line: 21, baseType: !773)
!772 = !DIFile(filename: "src/core/ulongbound.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "5815ec5aad6c13ed0fc0be044c91840c")
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtUwordBound", file: !772, line: 23, size: 128, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lbound", scope: !773, file: !772, line: 25, baseType: !188, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ubound", scope: !773, file: !772, line: 26, baseType: !188, size: 64, offset: 64)
!777 = !DILocalVariable(name: "suffixarray", scope: !703, file: !2, line: 297, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "Suffixarray", file: !779, line: 88, baseType: !780)
!779 = !DIFile(filename: "src/match/sarr-def.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "680305296307322e88a803109233df34")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 63, size: 2048, elements: !781)
!781 = !{!782, !783, !784, !785, !792, !793, !795, !796, !797, !801, !804, !813, !814, !815, !820, !889, !898, !906, !907}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "encseq", scope: !780, file: !779, line: 65, baseType: !717, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "numoflargelcpvalues", scope: !780, file: !779, line: 66, baseType: !255, size: 128, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "maxbranchdepth", scope: !780, file: !779, line: 67, baseType: !255, size: 128, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "averagelcp", scope: !780, file: !779, line: 68, baseType: !786, size: 128, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "Defineddouble", file: !256, line: 40, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 36, size: 128, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !787, file: !256, line: 38, baseType: !260, size: 8)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "valuedouble", scope: !787, file: !256, line: 39, baseType: !791, size: 64, offset: 64)
!791 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "longest", scope: !780, file: !779, line: 69, baseType: !255, size: 128, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "readmode", scope: !780, file: !779, line: 70, baseType: !794, size: 32, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtReadmode", file: !178, line: 32, baseType: !177)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mirroredencseq", scope: !780, file: !779, line: 71, baseType: !260, size: 8, offset: 608)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "numberofallsortedsuffixes", scope: !780, file: !779, line: 72, baseType: !188, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "suftab", scope: !780, file: !779, line: 74, baseType: !798, size: 64, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "ESASuffixptr", file: !779, line: 59, baseType: !188)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lcptab", scope: !780, file: !779, line: 75, baseType: !802, size: 64, offset: 768)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "llvtab", scope: !780, file: !779, line: 76, baseType: !805, size: 64, offset: 832)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "Largelcpvalue", file: !808, line: 30, baseType: !809)
!808 = !DIFile(filename: "src/match/lcpoverflow.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fbf9328cf0deca32f53d590fbcd3426d")
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !808, line: 26, size: 128, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !809, file: !808, line: 28, baseType: !188, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !809, file: !808, line: 29, baseType: !188, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bwttab", scope: !780, file: !779, line: 77, baseType: !802, size: 64, offset: 896)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "prefixlength", scope: !780, file: !779, line: 78, baseType: !172, size: 32, offset: 960)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "bcktab", scope: !780, file: !779, line: 79, baseType: !816, size: 64, offset: 1024)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBcktab", file: !818, line: 49, baseType: !819)
!818 = !DIFile(filename: "src/match/bcktab.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1e275b447e1ba6b734897fa227cc90a3")
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBcktab", file: !818, line: 49, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "suftabstream_uint32_t", scope: !780, file: !779, line: 82, baseType: !821, size: 192, offset: 1088)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_uint32_t", file: !779, line: 49, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 49, size: 192, elements: !823)
!823 = !{!824, !825, !826, !832}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !822, file: !779, line: 49, baseType: !172, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !822, file: !779, line: 49, baseType: !172, size: 32, offset: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !822, file: !779, line: 49, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !829, line: 26, baseType: !830)
!829 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !831, line: 42, baseType: !172)
!831 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !822, file: !779, line: 49, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !835, line: 7, baseType: !836)
!835 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !837, line: 49, size: 1728, elements: !838)
!837 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!838 = !{!839, !840, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !855, !857, !858, !859, !862, !864, !866, !870, !873, !875, !878, !881, !882, !883, !884, !885}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !836, file: !837, line: 51, baseType: !232, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !836, file: !837, line: 54, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !836, file: !837, line: 55, baseType: !841, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !836, file: !837, line: 56, baseType: !841, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !836, file: !837, line: 57, baseType: !841, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !836, file: !837, line: 58, baseType: !841, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !836, file: !837, line: 59, baseType: !841, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !836, file: !837, line: 60, baseType: !841, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !836, file: !837, line: 61, baseType: !841, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !836, file: !837, line: 64, baseType: !841, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !836, file: !837, line: 65, baseType: !841, size: 64, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !836, file: !837, line: 66, baseType: !841, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !836, file: !837, line: 68, baseType: !853, size: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !837, line: 36, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !836, file: !837, line: 70, baseType: !856, size: 64, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !836, file: !837, line: 72, baseType: !232, size: 32, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !836, file: !837, line: 73, baseType: !232, size: 32, offset: 928)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !836, file: !837, line: 74, baseType: !860, size: 64, offset: 960)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !831, line: 152, baseType: !861)
!861 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !836, file: !837, line: 77, baseType: !863, size: 16, offset: 1024)
!863 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !836, file: !837, line: 78, baseType: !865, size: 8, offset: 1040)
!865 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !836, file: !837, line: 79, baseType: !867, size: 8, offset: 1048)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 1)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !836, file: !837, line: 81, baseType: !871, size: 64, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !837, line: 43, baseType: null)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !836, file: !837, line: 89, baseType: !874, size: 64, offset: 1152)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !831, line: 153, baseType: !861)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !836, file: !837, line: 91, baseType: !876, size: 64, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !837, line: 37, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !836, file: !837, line: 92, baseType: !879, size: 64, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !837, line: 38, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !836, file: !837, line: 93, baseType: !856, size: 64, offset: 1344)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !836, file: !837, line: 94, baseType: !190, size: 64, offset: 1408)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !836, file: !837, line: 95, baseType: !185, size: 64, offset: 1472)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !836, file: !837, line: 96, baseType: !232, size: 32, offset: 1536)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !836, file: !837, line: 98, baseType: !886, size: 160, offset: 1568)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 20)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "suftabstream_GtUword", scope: !780, file: !779, line: 84, baseType: !890, size: 192, offset: 1280)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_GtUword", file: !891, line: 61, baseType: !892)
!891 = !DIFile(filename: "src/match/declare-readfunc.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "efed3a700136885dfbda6df2e18c991e")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 61, size: 192, elements: !893)
!893 = !{!894, !895, !896, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !892, file: !891, line: 61, baseType: !172, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !892, file: !891, line: 61, baseType: !172, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !892, file: !891, line: 61, baseType: !727, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !892, file: !891, line: 61, baseType: !833, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bwttabstream", scope: !780, file: !779, line: 85, baseType: !899, size: 192, offset: 1472)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_GtUchar", file: !779, line: 53, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 53, size: 192, elements: !901)
!901 = !{!902, !903, !904, !905}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !900, file: !779, line: 53, baseType: !172, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !900, file: !779, line: 53, baseType: !172, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !900, file: !779, line: 53, baseType: !722, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !900, file: !779, line: 53, baseType: !833, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lcptabstream", scope: !780, file: !779, line: 86, baseType: !899, size: 192, offset: 1664)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "llvtabstream", scope: !780, file: !779, line: 87, baseType: !908, size: 192, offset: 1856)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_Largelcpvalue", file: !779, line: 56, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 56, size: 192, elements: !910)
!910 = !{!911, !912, !913, !915}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !909, file: !779, line: 56, baseType: !172, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !909, file: !779, line: 56, baseType: !172, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !909, file: !779, line: 56, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !909, file: !779, line: 56, baseType: !833, size: 64, offset: 128)
!916 = !DILocalVariable(name: "packedindex", scope: !703, file: !2, line: 298, type: !190)
!917 = !DILocalVariable(name: "logger", scope: !703, file: !2, line: 299, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtLogger", file: !920, line: 26, baseType: !921)
!920 = !DIFile(filename: "src/core/logger_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "076ebb09feb7de7a97ee09fc11eb7134")
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtLogger", file: !920, line: 26, flags: DIFlagFwdDecl)
!922 = !DILocalVariable(name: "haserr", scope: !703, file: !2, line: 300, type: !260)
!923 = !DILocalVariable(name: "alphabet", scope: !703, file: !2, line: 301, type: !749)
!924 = !DILocalVariable(name: "totallength", scope: !703, file: !2, line: 305, type: !188)
!925 = !DILocalVariable(name: "gt_mapfmindexfail", scope: !703, file: !2, line: 306, type: !260)
!926 = !DILocalVariable(name: "mappedbits", scope: !927, file: !2, line: 325, type: !172)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 324, column: 3)
!928 = distinct !DILexicalBlock(scope: !703, file: !2, line: 311, column: 7)
!929 = !DILocalVariable(name: "theindex", scope: !930, file: !2, line: 378, type: !191)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 377, column: 3)
!931 = distinct !DILexicalBlock(scope: !703, file: !2, line: 376, column: 7)
!932 = !DILocalVariable(name: "gmatchforwardfunction", scope: !930, file: !2, line: 379, type: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "Greedygmatchforwardfunction", file: !934, line: 30, baseType: !935)
!934 = !DIFile(filename: "src/match/greedyfwdmat.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "88c6842e19a7bbc59f6872569e40be08")
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!188, !191, !188, !188, !188, !727, !802, !802}
!938 = !DILocation(line: 291, column: 44, scope: !703)
!939 = !DILocation(line: 291, column: 73, scope: !703)
!940 = !DILocation(line: 292, column: 44, scope: !703)
!941 = !DILocation(line: 293, column: 36, scope: !703)
!942 = !DILocation(line: 293, column: 61, scope: !703)
!943 = !DILocation(line: 295, column: 3, scope: !703)
!944 = !DILocation(line: 295, column: 19, scope: !703)
!945 = !DILocation(line: 295, column: 31, scope: !703)
!946 = !DILocation(line: 296, column: 3, scope: !703)
!947 = !DILocation(line: 296, column: 11, scope: !703)
!948 = !DILocation(line: 297, column: 3, scope: !703)
!949 = !DILocation(line: 297, column: 15, scope: !703)
!950 = !DILocation(line: 298, column: 3, scope: !703)
!951 = !DILocation(line: 298, column: 9, scope: !703)
!952 = !DILocation(line: 299, column: 3, scope: !703)
!953 = !DILocation(line: 299, column: 13, scope: !703)
!954 = !DILocation(line: 300, column: 3, scope: !703)
!955 = !DILocation(line: 300, column: 8, scope: !703)
!956 = !{!307, !307, i64 0}
!957 = !DILocation(line: 301, column: 3, scope: !703)
!958 = !DILocation(line: 301, column: 21, scope: !703)
!959 = !DILocation(line: 305, column: 3, scope: !703)
!960 = !DILocation(line: 305, column: 11, scope: !703)
!961 = !DILocation(line: 306, column: 3, scope: !703)
!962 = !DILocation(line: 306, column: 8, scope: !703)
!963 = !DILocation(line: 307, column: 3, scope: !703)
!964 = !DILocation(line: 307, column: 3, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 307, column: 3)
!966 = distinct !DILexicalBlock(scope: !703, file: !2, line: 307, column: 3)
!967 = !DILocation(line: 307, column: 3, scope: !966)
!968 = !DILocation(line: 307, column: 3, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !2, line: 307, column: 3)
!970 = !DILocation(line: 308, column: 3, scope: !703)
!971 = !DILocation(line: 308, column: 3, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !2, line: 308, column: 3)
!973 = distinct !DILexicalBlock(scope: !703, file: !2, line: 308, column: 3)
!974 = !DILocation(line: 308, column: 3, scope: !973)
!975 = !DILocation(line: 308, column: 3, scope: !976)
!976 = distinct !DILexicalBlock(scope: !972, file: !2, line: 308, column: 3)
!977 = !DILocation(line: 310, column: 57, scope: !703)
!978 = !DILocation(line: 310, column: 12, scope: !703)
!979 = !DILocation(line: 310, column: 10, scope: !703)
!980 = !DILocation(line: 311, column: 7, scope: !928)
!981 = !DILocation(line: 311, column: 18, scope: !928)
!982 = !DILocation(line: 311, column: 28, scope: !928)
!983 = !DILocation(line: 311, column: 7, scope: !703)
!984 = !DILocation(line: 313, column: 43, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 313, column: 9)
!986 = distinct !DILexicalBlock(scope: !928, file: !2, line: 312, column: 3)
!987 = !DILocation(line: 313, column: 54, scope: !985)
!988 = !DILocation(line: 313, column: 32, scope: !985)
!989 = !DILocation(line: 314, column: 23, scope: !985)
!990 = !DILocation(line: 314, column: 31, scope: !985)
!991 = !DILocation(line: 313, column: 9, scope: !985)
!992 = !DILocation(line: 314, column: 36, scope: !985)
!993 = !DILocation(line: 313, column: 9, scope: !986)
!994 = !DILocation(line: 316, column: 14, scope: !995)
!995 = distinct !DILexicalBlock(scope: !985, file: !2, line: 315, column: 5)
!996 = !DILocation(line: 317, column: 25, scope: !995)
!997 = !DILocation(line: 318, column: 5, scope: !995)
!998 = !DILocation(line: 320, column: 26, scope: !999)
!999 = distinct !DILexicalBlock(scope: !985, file: !2, line: 319, column: 5)
!1000 = !{!1001, !291, i64 104}
!1001 = !{!"", !291, i64 0, !291, i64 8, !308, i64 16, !291, i64 24, !291, i64 32, !291, i64 40, !308, i64 48, !308, i64 56, !308, i64 64, !308, i64 72, !1002, i64 80, !291, i64 104, !291, i64 112, !309, i64 120, !309, i64 124, !309, i64 128, !309, i64 132, !309, i64 136, !309, i64 140, !309, i64 144, !309, i64 148, !309, i64 152, !308, i64 160, !308, i64 168, !308, i64 176, !308, i64 184, !308, i64 192, !291, i64 200}
!1002 = !{!"", !291, i64 0, !308, i64 8, !308, i64 16}
!1003 = !DILocation(line: 320, column: 16, scope: !999)
!1004 = !DILocation(line: 322, column: 27, scope: !986)
!1005 = !{!1001, !308, i64 16}
!1006 = !DILocation(line: 322, column: 36, scope: !986)
!1007 = !DILocation(line: 322, column: 17, scope: !986)
!1008 = !DILocation(line: 323, column: 3, scope: !986)
!1009 = !DILocation(line: 325, column: 5, scope: !927)
!1010 = !DILocation(line: 325, column: 18, scope: !927)
!1011 = !DILocation(line: 327, column: 9, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !927, file: !2, line: 327, column: 9)
!1013 = !DILocation(line: 327, column: 20, scope: !1012)
!1014 = !DILocation(line: 327, column: 30, scope: !1012)
!1015 = !DILocation(line: 327, column: 9, scope: !927)
!1016 = !DILocation(line: 329, column: 18, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 328, column: 5)
!1018 = !DILocation(line: 335, column: 5, scope: !1017)
!1019 = !DILocation(line: 337, column: 26, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 337, column: 11)
!1021 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 336, column: 5)
!1022 = !DILocation(line: 337, column: 11, scope: !1020)
!1023 = !DILocation(line: 337, column: 11, scope: !1021)
!1024 = !DILocation(line: 339, column: 20, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 338, column: 7)
!1026 = !DILocation(line: 340, column: 7, scope: !1025)
!1027 = !DILocation(line: 342, column: 20, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !2, line: 341, column: 7)
!1029 = !DILocation(line: 346, column: 24, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !927, file: !2, line: 345, column: 9)
!1031 = !DILocation(line: 347, column: 35, scope: !1030)
!1032 = !DILocation(line: 347, column: 46, scope: !1030)
!1033 = !DILocation(line: 347, column: 24, scope: !1030)
!1034 = !DILocation(line: 348, column: 24, scope: !1030)
!1035 = !DILocation(line: 349, column: 24, scope: !1030)
!1036 = !DILocation(line: 345, column: 9, scope: !1030)
!1037 = !DILocation(line: 349, column: 29, scope: !1030)
!1038 = !DILocation(line: 345, column: 9, scope: !927)
!1039 = !DILocation(line: 351, column: 14, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 350, column: 5)
!1041 = !DILocation(line: 352, column: 19, scope: !1040)
!1042 = !DILocation(line: 353, column: 5, scope: !1040)
!1043 = !DILocation(line: 355, column: 49, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 354, column: 5)
!1045 = !{!1046, !291, i64 0}
!1046 = !{!"", !291, i64 0, !306, i64 8, !306, i64 24, !1047, i64 40, !306, i64 56, !292, i64 72, !307, i64 76, !308, i64 80, !291, i64 88, !291, i64 96, !291, i64 104, !291, i64 112, !309, i64 120, !291, i64 128, !1049, i64 136, !1049, i64 160, !1049, i64 184, !1049, i64 208, !1049, i64 232}
!1047 = !{!"", !307, i64 0, !1048, i64 8}
!1048 = !{!"double", !292, i64 0}
!1049 = !{!"", !309, i64 0, !309, i64 4, !291, i64 8, !291, i64 16}
!1050 = !DILocation(line: 355, column: 18, scope: !1044)
!1051 = !DILocation(line: 355, column: 16, scope: !1044)
!1052 = !DILocation(line: 359, column: 56, scope: !1044)
!1053 = !DILocation(line: 359, column: 21, scope: !1044)
!1054 = !DILocation(line: 359, column: 19, scope: !1044)
!1055 = !DILocation(line: 361, column: 10, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !927, file: !2, line: 361, column: 9)
!1057 = !DILocation(line: 361, column: 9, scope: !927)
!1058 = !DILocation(line: 363, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 363, column: 11)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 362, column: 5)
!1061 = !DILocation(line: 363, column: 22, scope: !1059)
!1062 = !DILocation(line: 363, column: 32, scope: !1059)
!1063 = !DILocation(line: 363, column: 11, scope: !1060)
!1064 = !DILocation(line: 366, column: 45, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 364, column: 7)
!1066 = !DILocation(line: 366, column: 56, scope: !1065)
!1067 = !DILocation(line: 366, column: 34, scope: !1065)
!1068 = !DILocation(line: 368, column: 34, scope: !1065)
!1069 = !DILocation(line: 366, column: 11, scope: !1065)
!1070 = !DILocation(line: 365, column: 21, scope: !1065)
!1071 = !DILocation(line: 369, column: 13, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 369, column: 13)
!1073 = !DILocation(line: 369, column: 25, scope: !1072)
!1074 = !DILocation(line: 369, column: 13, scope: !1065)
!1075 = !DILocation(line: 371, column: 18, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 370, column: 9)
!1077 = !DILocation(line: 372, column: 9, scope: !1076)
!1078 = !DILocation(line: 373, column: 7, scope: !1065)
!1079 = !DILocation(line: 374, column: 5, scope: !1060)
!1080 = !DILocation(line: 375, column: 3, scope: !928)
!1081 = !DILocation(line: 376, column: 8, scope: !931)
!1082 = !DILocation(line: 376, column: 7, scope: !703)
!1083 = !DILocation(line: 378, column: 5, scope: !930)
!1084 = !DILocation(line: 378, column: 17, scope: !930)
!1085 = !DILocation(line: 379, column: 5, scope: !930)
!1086 = !DILocation(line: 379, column: 33, scope: !930)
!1087 = !DILocation(line: 381, column: 9, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !930, file: !2, line: 381, column: 9)
!1089 = !DILocation(line: 381, column: 20, scope: !1088)
!1090 = !DILocation(line: 381, column: 30, scope: !1088)
!1091 = !DILocation(line: 381, column: 9, scope: !930)
!1092 = !DILocation(line: 383, column: 16, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 382, column: 5)
!1094 = !DILocation(line: 384, column: 11, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 384, column: 11)
!1096 = !DILocation(line: 384, column: 22, scope: !1095)
!1097 = !DILocation(line: 384, column: 11, scope: !1093)
!1098 = !DILocation(line: 386, column: 31, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 385, column: 7)
!1100 = !DILocation(line: 387, column: 7, scope: !1099)
!1101 = !DILocation(line: 389, column: 31, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 388, column: 7)
!1103 = !DILocation(line: 391, column: 5, scope: !1093)
!1104 = !DILocation(line: 393, column: 11, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 393, column: 11)
!1106 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 392, column: 5)
!1107 = !DILocation(line: 393, column: 22, scope: !1105)
!1108 = !DILocation(line: 393, column: 32, scope: !1105)
!1109 = !DILocation(line: 393, column: 11, scope: !1106)
!1110 = !DILocation(line: 395, column: 18, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 394, column: 7)
!1112 = !DILocation(line: 396, column: 13, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 396, column: 13)
!1114 = !DILocation(line: 396, column: 24, scope: !1113)
!1115 = !DILocation(line: 396, column: 13, scope: !1111)
!1116 = !DILocation(line: 398, column: 33, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 397, column: 9)
!1118 = !DILocation(line: 399, column: 9, scope: !1117)
!1119 = !DILocation(line: 401, column: 33, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 400, column: 9)
!1121 = !DILocation(line: 403, column: 7, scope: !1111)
!1122 = !DILocation(line: 405, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 404, column: 7)
!1124 = !DILocation(line: 405, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 405, column: 9)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 405, column: 9)
!1127 = !DILocation(line: 405, column: 9, scope: !1126)
!1128 = !DILocation(line: 405, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 405, column: 9)
!1130 = !DILocation(line: 406, column: 35, scope: !1123)
!1131 = !DILocation(line: 406, column: 18, scope: !1123)
!1132 = !DILocation(line: 407, column: 13, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 407, column: 13)
!1134 = !DILocation(line: 407, column: 24, scope: !1133)
!1135 = !DILocation(line: 407, column: 13, scope: !1123)
!1136 = !DILocation(line: 409, column: 33, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 408, column: 9)
!1138 = !DILocation(line: 410, column: 9, scope: !1137)
!1139 = !DILocation(line: 412, column: 33, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 411, column: 9)
!1141 = !DILocation(line: 416, column: 10, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !930, file: !2, line: 416, column: 9)
!1143 = !DILocation(line: 416, column: 9, scope: !930)
!1144 = !DILocation(line: 435, column: 12, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 435, column: 11)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 417, column: 5)
!1147 = !DILocation(line: 435, column: 19, scope: !1145)
!1148 = !DILocation(line: 436, column: 55, scope: !1145)
!1149 = !DILocation(line: 436, column: 40, scope: !1145)
!1150 = !DILocation(line: 437, column: 53, scope: !1145)
!1151 = !DILocation(line: 439, column: 39, scope: !1145)
!1152 = !DILocation(line: 440, column: 39, scope: !1145)
!1153 = !DILocation(line: 441, column: 39, scope: !1145)
!1154 = !DILocation(line: 442, column: 39, scope: !1145)
!1155 = !DILocation(line: 443, column: 39, scope: !1145)
!1156 = !DILocation(line: 443, column: 50, scope: !1145)
!1157 = !DILocation(line: 444, column: 39, scope: !1145)
!1158 = !DILocation(line: 444, column: 50, scope: !1145)
!1159 = !DILocation(line: 445, column: 39, scope: !1145)
!1160 = !DILocation(line: 445, column: 50, scope: !1145)
!1161 = !DILocation(line: 446, column: 40, scope: !1145)
!1162 = !DILocation(line: 446, column: 51, scope: !1145)
!1163 = !{!305, !309, i64 32}
!1164 = !DILocation(line: 446, column: 60, scope: !1145)
!1165 = !DILocation(line: 446, column: 39, scope: !1145)
!1166 = !DILocation(line: 448, column: 40, scope: !1145)
!1167 = !DILocation(line: 448, column: 51, scope: !1145)
!1168 = !DILocation(line: 448, column: 60, scope: !1145)
!1169 = !DILocation(line: 448, column: 39, scope: !1145)
!1170 = !DILocation(line: 450, column: 40, scope: !1145)
!1171 = !DILocation(line: 450, column: 51, scope: !1145)
!1172 = !DILocation(line: 450, column: 60, scope: !1145)
!1173 = !DILocation(line: 450, column: 39, scope: !1145)
!1174 = !DILocation(line: 452, column: 39, scope: !1145)
!1175 = !DILocation(line: 436, column: 11, scope: !1145)
!1176 = !DILocation(line: 452, column: 44, scope: !1145)
!1177 = !DILocation(line: 435, column: 11, scope: !1146)
!1178 = !DILocation(line: 454, column: 16, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 453, column: 7)
!1180 = !DILocation(line: 455, column: 7, scope: !1179)
!1181 = !DILocation(line: 456, column: 5, scope: !1146)
!1182 = !DILocation(line: 457, column: 3, scope: !931)
!1183 = !DILocation(line: 457, column: 3, scope: !930)
!1184 = !DILocation(line: 458, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !703, file: !2, line: 458, column: 7)
!1186 = !DILocation(line: 458, column: 18, scope: !1185)
!1187 = !DILocation(line: 458, column: 28, scope: !1185)
!1188 = !DILocation(line: 458, column: 7, scope: !703)
!1189 = !DILocation(line: 460, column: 10, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 460, column: 9)
!1191 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 459, column: 3)
!1192 = !DILocation(line: 460, column: 9, scope: !1191)
!1193 = !DILocation(line: 462, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 461, column: 5)
!1195 = !DILocation(line: 463, column: 5, scope: !1194)
!1196 = !DILocation(line: 464, column: 3, scope: !1191)
!1197 = !DILocation(line: 466, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 466, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 465, column: 3)
!1200 = !DILocation(line: 466, column: 20, scope: !1198)
!1201 = !DILocation(line: 466, column: 30, scope: !1198)
!1202 = !DILocation(line: 466, column: 49, scope: !1198)
!1203 = !DILocation(line: 466, column: 52, scope: !1198)
!1204 = !DILocation(line: 466, column: 64, scope: !1198)
!1205 = !DILocation(line: 466, column: 9, scope: !1199)
!1206 = !DILocation(line: 468, column: 27, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 467, column: 5)
!1208 = !DILocation(line: 468, column: 7, scope: !1207)
!1209 = !DILocation(line: 469, column: 5, scope: !1207)
!1210 = !DILocation(line: 470, column: 5, scope: !1199)
!1211 = !DILocation(line: 472, column: 20, scope: !703)
!1212 = !DILocation(line: 472, column: 3, scope: !703)
!1213 = !DILocation(line: 474, column: 10, scope: !703)
!1214 = !DILocation(line: 475, column: 1, scope: !703)
!1215 = !DILocation(line: 474, column: 3, scope: !703)
!1216 = distinct !DISubprogram(name: "gt_uniquesub", scope: !2, file: !2, line: 486, type: !201, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169)
!1217 = !DILocation(line: 488, column: 10, scope: !1216)
!1218 = !DILocation(line: 488, column: 3, scope: !1216)
!1219 = distinct !DISubprogram(name: "gt_matstat_arguments_new_uniquesub", scope: !2, file: !2, line: 81, type: !214, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169)
!1220 = !DILocation(line: 83, column: 10, scope: !1219)
!1221 = !DILocation(line: 83, column: 3, scope: !1219)
!1222 = distinct !DISubprogram(name: "gt_matstat_arguments_new_generic", scope: !2, file: !2, line: 63, type: !1223, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!190, !260}
!1225 = !{!1226, !1227}
!1226 = !DILocalVariable(name: "doms", arg: 1, scope: !1222, file: !2, line: 63, type: !260)
!1227 = !DILocalVariable(name: "arguments", scope: !1222, file: !2, line: 65, type: !250)
!1228 = !DILocation(line: 63, column: 52, scope: !1222)
!1229 = !DILocation(line: 65, column: 3, scope: !1222)
!1230 = !DILocation(line: 65, column: 19, scope: !1222)
!1231 = !DILocation(line: 65, column: 31, scope: !1222)
!1232 = !DILocation(line: 66, column: 3, scope: !1222)
!1233 = !DILocation(line: 66, column: 14, scope: !1222)
!1234 = !DILocation(line: 66, column: 24, scope: !1222)
!1235 = !DILocation(line: 66, column: 32, scope: !1222)
!1236 = !DILocation(line: 67, column: 3, scope: !1222)
!1237 = !DILocation(line: 67, column: 14, scope: !1222)
!1238 = !DILocation(line: 67, column: 24, scope: !1222)
!1239 = !DILocation(line: 67, column: 32, scope: !1222)
!1240 = !DILocation(line: 68, column: 3, scope: !1222)
!1241 = !DILocation(line: 68, column: 14, scope: !1222)
!1242 = !DILocation(line: 68, column: 23, scope: !1222)
!1243 = !DILocation(line: 69, column: 26, scope: !1222)
!1244 = !DILocation(line: 69, column: 3, scope: !1222)
!1245 = !DILocation(line: 69, column: 14, scope: !1222)
!1246 = !DILocation(line: 69, column: 24, scope: !1222)
!1247 = !DILocation(line: 70, column: 31, scope: !1222)
!1248 = !DILocation(line: 70, column: 3, scope: !1222)
!1249 = !DILocation(line: 70, column: 14, scope: !1222)
!1250 = !DILocation(line: 70, column: 29, scope: !1222)
!1251 = !DILocation(line: 71, column: 34, scope: !1222)
!1252 = !DILocation(line: 71, column: 3, scope: !1222)
!1253 = !DILocation(line: 71, column: 14, scope: !1222)
!1254 = !DILocation(line: 71, column: 32, scope: !1222)
!1255 = !DILocation(line: 72, column: 21, scope: !1222)
!1256 = !DILocation(line: 72, column: 3, scope: !1222)
!1257 = !DILocation(line: 72, column: 14, scope: !1222)
!1258 = !DILocation(line: 72, column: 19, scope: !1222)
!1259 = !DILocation(line: 73, column: 10, scope: !1222)
!1260 = !DILocation(line: 74, column: 1, scope: !1222)
!1261 = !DILocation(line: 73, column: 3, scope: !1222)
!1262 = !DISubprogram(name: "gt_calloc_mem", scope: !1263, file: !1263, line: 62, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!190, !185, !185, !242, !232}
!1266 = !DISubprogram(name: "gt_str_new", scope: !268, file: !268, line: 30, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!266}
!1269 = !DISubprogram(name: "gt_str_array_new", scope: !273, file: !273, line: 27, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!271}
!1272 = !DISubprogram(name: "gt_str_array_delete", scope: !273, file: !273, line: 56, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !271}
!1275 = !DISubprogram(name: "gt_str_delete", scope: !268, file: !268, line: 90, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !266}
!1278 = !DISubprogram(name: "gt_free_mem", scope: !1263, file: !1263, line: 75, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !190, !242, !232}
!1281 = !DISubprogram(name: "fprintf", scope: !1282, file: !1282, line: 350, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1282 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!232, !1285, !1286, null}
!1285 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !833)
!1286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!1287 = !DISubprogram(name: "abort", scope: !1288, file: !1288, line: 598, type: !1289, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1288 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null}
!1291 = !DISubprogram(name: "gt_option_parser_new", scope: !226, file: !226, line: 63, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!224, !242, !242}
!1294 = !DISubprogram(name: "gt_option_parser_set_mail_address", scope: !226, file: !226, line: 88, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !224, !242}
!1297 = !DISubprogram(name: "gt_option_new_string", scope: !226, file: !226, line: 291, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!280, !242, !242, !266, !242}
!1300 = !DISubprogram(name: "gt_option_parser_add_option", scope: !226, file: !226, line: 66, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !224, !280}
!1303 = !DISubprogram(name: "gt_option_exclude", scope: !226, file: !226, line: 363, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !280, !280}
!1306 = !DISubprogram(name: "gt_option_new_filename_array", scope: !226, file: !226, line: 314, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!280, !242, !242, !271}
!1309 = !DISubprogram(name: "gt_option_is_mandatory", scope: !226, file: !226, line: 332, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !280}
!1312 = !DISubprogram(name: "gt_option_new_uword_min", scope: !226, file: !226, line: 234, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!280, !242, !242, !727, !188, !188}
!1315 = !DISubprogram(name: "gt_option_new_string_array", scope: !226, file: !226, line: 296, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1316 = !DISubprogram(name: "gt_option_new_bool", scope: !226, file: !226, line: 130, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!280, !242, !242, !1319, !260}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1320 = !DISubprogram(name: "gt_option_is_development_option", scope: !226, file: !226, line: 350, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1321 = !DISubprogram(name: "gt_option_parser_refer_to_manual", scope: !226, file: !226, line: 73, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !224}
!1324 = !DISubprogram(name: "gt_error_is_set", scope: !235, file: !235, line: 64, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!260, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!1329 = !DISubprogram(name: "gt_option_is_set", scope: !226, file: !226, line: 369, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!260, !1332}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!1334 = !DISubprogram(name: "gt_error_set", scope: !235, file: !235, line: 56, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !233, !242, null}
!1337 = !DISubprogram(name: "gt_str_array_size", scope: !273, file: !273, line: 54, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!188, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!1342 = !DISubprogram(name: "gt_optionargaddbitmask", scope: !488, file: !488, line: 30, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!232, !1345, !185, !1346, !242, !242, !233}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!1347 = !DISubprogram(name: "gt_str_array_get", scope: !273, file: !273, line: 40, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!242, !1340, !188}
!1350 = !DISubprogram(name: "gt_logger_new", scope: !920, file: !920, line: 32, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!918, !260, !242, !833}
!1353 = !DISubprogram(name: "gt_mapfmindex", scope: !1354, file: !1354, line: 28, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1354 = !DIFile(filename: "src/match/fmi-map.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "6f180399b32b2fc4ca8ff86559ba10fb")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!232, !1357, !242, !918, !233}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!1358 = !DISubprogram(name: "gt_str_get", scope: !268, file: !268, line: 40, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!841, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!1363 = distinct !DISubprogram(name: "dotestsequence", scope: !2, file: !2, line: 280, type: !1364, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1368)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!260, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!1368 = !{!1369}
!1369 = !DILocalVariable(name: "gfmsubcallinfo", arg: 1, scope: !1363, file: !2, line: 280, type: !1366)
!1370 = !DILocation(line: 280, column: 50, scope: !1363)
!1371 = !DILocation(line: 282, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 282, column: 7)
!1373 = !DILocation(line: 282, column: 23, scope: !1372)
!1374 = !DILocation(line: 282, column: 33, scope: !1372)
!1375 = !DILocation(line: 282, column: 52, scope: !1372)
!1376 = !DILocation(line: 283, column: 7, scope: !1372)
!1377 = !DILocation(line: 283, column: 23, scope: !1372)
!1378 = !DILocation(line: 283, column: 40, scope: !1372)
!1379 = !DILocation(line: 284, column: 7, scope: !1372)
!1380 = !DILocation(line: 284, column: 23, scope: !1372)
!1381 = !DILocation(line: 282, column: 7, scope: !1363)
!1382 = !DILocation(line: 286, column: 5, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 285, column: 3)
!1384 = !DILocation(line: 288, column: 3, scope: !1363)
!1385 = !DILocation(line: 289, column: 1, scope: !1363)
!1386 = !DISubprogram(name: "gt_mapsuffixarray", scope: !1387, file: !1387, line: 32, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1387 = !DIFile(filename: "src/match/esa-map.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e2705cb0042862d9cfd6840d3b3154f4")
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!232, !1390, !172, !242, !918, !233}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!1391 = !DISubprogram(name: "gt_encseq_alphabet", scope: !719, file: !719, line: 188, type: !1392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!1397 = !DISubprogram(name: "gt_encseq_total_length", scope: !719, file: !719, line: 85, type: !1398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!188, !1395}
!1400 = !DISubprogram(name: "gt_loadvoidBWTSeqForSA", scope: !1401, file: !1401, line: 80, type: !1402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1401 = !DIFile(filename: "src/match/eis-voiditf.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "28c22f98c48c01d2533a10e2c5982f6c")
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!1404, !242, !260, !233}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FMindex", file: !1401, line: 30, baseType: !1406)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "FMindex", file: !1401, line: 30, flags: DIFlagFwdDecl)
!1407 = !DISubprogram(name: "gt_findsubquerygmatchforward", scope: !934, file: !934, line: 38, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!232, !1395, !191, !188, !933, !749, !1340, !255, !255, !260, !260, !260, !233}
!1410 = !DISubprogram(name: "gt_freefmindex", scope: !1354, file: !1354, line: 26, type: !1411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !1357}
!1413 = !DISubprogram(name: "gt_deletevoidBWTSeq", scope: !1401, file: !1401, line: 84, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1404}
!1416 = !DISubprogram(name: "gt_freesuffixarray", scope: !1387, file: !1387, line: 24, type: !1417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !1390}
!1419 = !DISubprogram(name: "gt_logger_delete", scope: !920, file: !920, line: 54, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{null, !918}
