; ModuleID = 'samples/784.bc'
source_filename = "src/tools/gt_patternmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pmatchoptions = type { i64, i64, i64, i8, i8, i8, ptr }
%struct.Suffixarray = type { ptr, %struct.Definedunsignedlong, %struct.Definedunsignedlong, %struct.Defineddouble, %struct.Definedunsignedlong, i32, i8, i64, ptr, ptr, ptr, ptr, i32, ptr, %struct.GtBufferedfile_uint32_t, %struct.GtBufferedfile_GtUword, %struct.GtBufferedfile_GtUchar, %struct.GtBufferedfile_GtUchar, %struct.GtBufferedfile_Largelcpvalue }
%struct.Defineddouble = type { i8, double }
%struct.Definedunsignedlong = type { i8, i64 }
%struct.GtBufferedfile_uint32_t = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_GtUword = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_GtUchar = type { i32, i32, ptr, ptr }
%struct.GtBufferedfile_Largelcpvalue = type { i32, i32, ptr, ptr }
%struct.GtBucketspecification = type { i64, i64, i64 }
%struct.Lcpinterval = type { i64, i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !7
@__func__.gt_patternmatch = private unnamed_addr constant [16 x i8] c"gt_patternmatch\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [28 x i8] c"src/tools/gt_patternmatch.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [20 x i8] c"parsed_args == argc\00", align 1, !dbg !23
@__func__.parse_options = private unnamed_addr constant [14 x i8] c"parse_options\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [24 x i8] c"[options] -ii indexname\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [25 x i8] c"Perform pattern matches.\00", align 1, !dbg !38
@.str.6 = private unnamed_addr constant [27 x i8] c"<kurtz@zbh.uni-hamburg.de>\00", align 1, !dbg !43
@.str.7 = private unnamed_addr constant [6 x i8] c"minpl\00", align 1, !dbg !48
@.str.8 = private unnamed_addr constant [34 x i8] c"Specify minimum length of pattern\00", align 1, !dbg !53
@.str.9 = private unnamed_addr constant [6 x i8] c"maxpl\00", align 1, !dbg !58
@.str.10 = private unnamed_addr constant [34 x i8] c"Specify maximum length of pattern\00", align 1, !dbg !60
@.str.11 = private unnamed_addr constant [8 x i8] c"samples\00", align 1, !dbg !62
@.str.12 = private unnamed_addr constant [26 x i8] c"Specify number of samples\00", align 1, !dbg !67
@.str.13 = private unnamed_addr constant [2 x i8] c"s\00", align 1, !dbg !72
@.str.14 = private unnamed_addr constant [23 x i8] c"Show generated pattern\00", align 1, !dbg !77
@.str.15 = private unnamed_addr constant [4 x i8] c"bck\00", align 1, !dbg !82
@.str.16 = private unnamed_addr constant [26 x i8] c"Use the bucket boundaries\00", align 1, !dbg !87
@.str.17 = private unnamed_addr constant [4 x i8] c"imm\00", align 1, !dbg !89
@.str.18 = private unnamed_addr constant [20 x i8] c"Start with offset 0\00", align 1, !dbg !91
@.str.19 = private unnamed_addr constant [3 x i8] c"ii\00", align 1, !dbg !93
@.str.20 = private unnamed_addr constant [20 x i8] c"Specify input index\00", align 1, !dbg !98
@stdout = external global ptr, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !100
@.str.22 = private unnamed_addr constant [36 x i8] c"retval == 0 && maxlcp == patternlen\00", align 1, !dbg !102
@__func__.callpatternmatcher = private unnamed_addr constant [19 x i8] c"callpatternmatcher\00", align 1, !dbg !107
@.str.23 = private unnamed_addr constant [41 x i8] c"firstspecial == suffixarray.prefixlength\00", align 1, !dbg !112
@.str.24 = private unnamed_addr constant [30 x i8] c"mmsi1 is empty but mmsi2 not\0A\00", align 1, !dbg !117
@.str.25 = private unnamed_addr constant [30 x i8] c"mmsi2 is empty but mmsi1 not\0A\00", align 1, !dbg !119
@.str.26 = private unnamed_addr constant [31 x i8] c"mmsi1 and mmsi2 are different\0A\00", align 1, !dbg !121

; Function Attrs: nounwind uwtable
define i32 @gt_patternmatch(i32 noundef %argc, ptr noundef %argv, ptr noundef %err) #0 !dbg !157 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %parsed_args = alloca i32, align 4
  %pmopt = alloca %struct.Pmatchoptions, align 8
  %oprval = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !167, metadata !DIExpression()), !dbg !194
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !168, metadata !DIExpression()), !dbg !197
  store ptr %err, ptr %err.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !169, metadata !DIExpression()), !dbg !198
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #6, !dbg !199
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !170, metadata !DIExpression()), !dbg !200
  store i8 0, ptr %haserr, align 1, !dbg !200, !tbaa !201
  call void @llvm.lifetime.start.p0(i64 4, ptr %parsed_args) #6, !dbg !203
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args, metadata !172, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 40, ptr %pmopt) #6, !dbg !205
  tail call void @llvm.dbg.declare(metadata ptr %pmopt, metadata !173, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 4, ptr %oprval) #6, !dbg !207
  tail call void @llvm.dbg.declare(metadata ptr %oprval, metadata !188, metadata !DIExpression()), !dbg !208
  br label %do.body, !dbg !209

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !210, !tbaa !195
  %tobool = icmp ne ptr %0, null, !dbg !210
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !210

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !210, !tbaa !195
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !210
  br i1 %call, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !214, !tbaa !195
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_patternmatch, ptr noundef @.str.2, i32 noundef 307), !dbg !214
  call void @abort() #7, !dbg !214
  unreachable, !dbg !214

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !213

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !213

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_str_new(), !dbg !216
  %indexname = getelementptr inbounds %struct.Pmatchoptions, ptr %pmopt, i32 0, i32 6, !dbg !217
  store ptr %call2, ptr %indexname, align 8, !dbg !218, !tbaa !219
  %3 = load i32, ptr %argc.addr, align 4, !dbg !222, !tbaa !190
  %4 = load ptr, ptr %argv.addr, align 8, !dbg !223, !tbaa !195
  %5 = load ptr, ptr %err.addr, align 8, !dbg !224, !tbaa !195
  %call3 = call i32 @parse_options(ptr noundef %pmopt, ptr noundef %parsed_args, i32 noundef %3, ptr noundef %4, ptr noundef %5), !dbg !225
  store i32 %call3, ptr %oprval, align 4, !dbg !226, !tbaa !227
  %6 = load i32, ptr %oprval, align 4, !dbg !228, !tbaa !227
  %cmp = icmp eq i32 %6, 0, !dbg !230
  br i1 %cmp, label %if.then4, label %if.end16, !dbg !231

if.then4:                                         ; preds = %do.end
  br label %do.body5, !dbg !232

do.body5:                                         ; preds = %if.then4
  %7 = load i32, ptr %parsed_args, align 4, !dbg !234, !tbaa !190
  %8 = load i32, ptr %argc.addr, align 4, !dbg !234, !tbaa !190
  %cmp6 = icmp eq i32 %7, %8, !dbg !234
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !237

if.then7:                                         ; preds = %do.body5
  %9 = load ptr, ptr @stderr, align 8, !dbg !238, !tbaa !195
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_patternmatch, ptr noundef @.str.2, i32 noundef 313), !dbg !238
  call void @abort() #7, !dbg !238
  unreachable, !dbg !238

if.end9:                                          ; preds = %do.body5
  br label %do.cond10, !dbg !237

do.cond10:                                        ; preds = %if.end9
  br label %do.end11, !dbg !237

do.end11:                                         ; preds = %do.cond10
  %10 = load ptr, ptr %err.addr, align 8, !dbg !240, !tbaa !195
  %call12 = call i32 @callpatternmatcher(ptr noundef %pmopt, ptr noundef %10), !dbg !242
  %cmp13 = icmp ne i32 %call12, 0, !dbg !243
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !244

if.then14:                                        ; preds = %do.end11
  store i8 1, ptr %haserr, align 1, !dbg !245, !tbaa !201
  br label %if.end15, !dbg !247

if.end15:                                         ; preds = %if.then14, %do.end11
  br label %if.end16, !dbg !248

if.end16:                                         ; preds = %if.end15, %do.end
  %indexname17 = getelementptr inbounds %struct.Pmatchoptions, ptr %pmopt, i32 0, i32 6, !dbg !249
  %11 = load ptr, ptr %indexname17, align 8, !dbg !249, !tbaa !219
  call void @gt_str_delete(ptr noundef %11), !dbg !250
  %12 = load i32, ptr %oprval, align 4, !dbg !251, !tbaa !227
  %cmp18 = icmp eq i32 %12, 2, !dbg !253
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !254

if.then19:                                        ; preds = %if.end16
  store i32 0, ptr %retval, align 4, !dbg !255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !255

if.end20:                                         ; preds = %if.end16
  %13 = load i32, ptr %oprval, align 4, !dbg !257, !tbaa !227
  %cmp21 = icmp eq i32 %13, 1, !dbg !259
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !260

if.then22:                                        ; preds = %if.end20
  store i32 -1, ptr %retval, align 4, !dbg !261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !261

if.end23:                                         ; preds = %if.end20
  %14 = load i8, ptr %haserr, align 1, !dbg !263, !tbaa !201, !range !264, !noundef !265
  %tobool24 = trunc i8 %14 to i1, !dbg !263
  %15 = zext i1 %tobool24 to i64, !dbg !263
  %cond = select i1 %tobool24, i32 -1, i32 0, !dbg !263
  store i32 %cond, ptr %retval, align 4, !dbg !266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !266

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %oprval) #6, !dbg !267
  call void @llvm.lifetime.end.p0(i64 40, ptr %pmopt) #6, !dbg !267
  call void @llvm.lifetime.end.p0(i64 4, ptr %parsed_args) #6, !dbg !267
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #6, !dbg !267
  %16 = load i32, ptr %retval, align 4, !dbg !267
  ret i32 %16, !dbg !267
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !268 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !273 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !335 void @abort() #3

declare !dbg !339 ptr @gt_str_new() #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_options(ptr noundef %pmopt, ptr noundef %parsed_args, i32 noundef %argc, ptr noundef %argv, ptr noundef %err) #0 !dbg !342 {
entry:
  %pmopt.addr = alloca ptr, align 8
  %parsed_args.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %option = alloca ptr, align 8
  %optionimm = alloca ptr, align 8
  %optionbck = alloca ptr, align 8
  %oprval = alloca i32, align 4
  store ptr %pmopt, ptr %pmopt.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %pmopt.addr, metadata !348, metadata !DIExpression()), !dbg !364
  store ptr %parsed_args, ptr %parsed_args.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %parsed_args.addr, metadata !349, metadata !DIExpression()), !dbg !365
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !350, metadata !DIExpression()), !dbg !366
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !351, metadata !DIExpression()), !dbg !367
  store ptr %err, ptr %err.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !352, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6, !dbg !369
  tail call void @llvm.dbg.declare(metadata ptr %op, metadata !353, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 8, ptr %option) #6, !dbg !371
  tail call void @llvm.dbg.declare(metadata ptr %option, metadata !357, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionimm) #6, !dbg !371
  tail call void @llvm.dbg.declare(metadata ptr %optionimm, metadata !361, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 8, ptr %optionbck) #6, !dbg !371
  tail call void @llvm.dbg.declare(metadata ptr %optionbck, metadata !362, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 4, ptr %oprval) #6, !dbg !375
  tail call void @llvm.dbg.declare(metadata ptr %oprval, metadata !363, metadata !DIExpression()), !dbg !376
  br label %do.body, !dbg !377

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !378, !tbaa !195
  %tobool = icmp ne ptr %0, null, !dbg !378
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !378

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !378, !tbaa !195
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !378
  br i1 %call, label %if.then, label %if.end, !dbg !381

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !382, !tbaa !195
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.parse_options, ptr noundef @.str.2, i32 noundef 253), !dbg !382
  call void @abort() #7, !dbg !382
  unreachable, !dbg !382

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !381

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !381

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_option_parser_new(ptr noundef @.str.4, ptr noundef @.str.5), !dbg !384
  store ptr %call2, ptr %op, align 8, !dbg !385, !tbaa !195
  %3 = load ptr, ptr %op, align 8, !dbg !386, !tbaa !195
  call void @gt_option_parser_set_mail_address(ptr noundef %3, ptr noundef @.str.6), !dbg !387
  %4 = load ptr, ptr %pmopt.addr, align 8, !dbg !388, !tbaa !195
  %minpatternlen = getelementptr inbounds %struct.Pmatchoptions, ptr %4, i32 0, i32 0, !dbg !389
  %call3 = call ptr @gt_option_new_uword(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %minpatternlen, i64 noundef 20), !dbg !390
  store ptr %call3, ptr %option, align 8, !dbg !391, !tbaa !195
  %5 = load ptr, ptr %op, align 8, !dbg !392, !tbaa !195
  %6 = load ptr, ptr %option, align 8, !dbg !393, !tbaa !195
  call void @gt_option_parser_add_option(ptr noundef %5, ptr noundef %6), !dbg !394
  %7 = load ptr, ptr %pmopt.addr, align 8, !dbg !395, !tbaa !195
  %maxpatternlen = getelementptr inbounds %struct.Pmatchoptions, ptr %7, i32 0, i32 1, !dbg !396
  %call4 = call ptr @gt_option_new_uword(ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef %maxpatternlen, i64 noundef 30), !dbg !397
  store ptr %call4, ptr %option, align 8, !dbg !398, !tbaa !195
  %8 = load ptr, ptr %op, align 8, !dbg !399, !tbaa !195
  %9 = load ptr, ptr %option, align 8, !dbg !400, !tbaa !195
  call void @gt_option_parser_add_option(ptr noundef %8, ptr noundef %9), !dbg !401
  %10 = load ptr, ptr %pmopt.addr, align 8, !dbg !402, !tbaa !195
  %numofsamples = getelementptr inbounds %struct.Pmatchoptions, ptr %10, i32 0, i32 2, !dbg !403
  %call5 = call ptr @gt_option_new_uword(ptr noundef @.str.11, ptr noundef @.str.12, ptr noundef %numofsamples, i64 noundef 100000), !dbg !404
  store ptr %call5, ptr %option, align 8, !dbg !405, !tbaa !195
  %11 = load ptr, ptr %op, align 8, !dbg !406, !tbaa !195
  %12 = load ptr, ptr %option, align 8, !dbg !407, !tbaa !195
  call void @gt_option_parser_add_option(ptr noundef %11, ptr noundef %12), !dbg !408
  %13 = load ptr, ptr %pmopt.addr, align 8, !dbg !409, !tbaa !195
  %showpatt = getelementptr inbounds %struct.Pmatchoptions, ptr %13, i32 0, i32 3, !dbg !410
  %call6 = call ptr @gt_option_new_bool(ptr noundef @.str.13, ptr noundef @.str.14, ptr noundef %showpatt, i1 noundef zeroext false), !dbg !411
  store ptr %call6, ptr %option, align 8, !dbg !412, !tbaa !195
  %14 = load ptr, ptr %op, align 8, !dbg !413, !tbaa !195
  %15 = load ptr, ptr %option, align 8, !dbg !414, !tbaa !195
  call void @gt_option_parser_add_option(ptr noundef %14, ptr noundef %15), !dbg !415
  %16 = load ptr, ptr %pmopt.addr, align 8, !dbg !416, !tbaa !195
  %usebcktab = getelementptr inbounds %struct.Pmatchoptions, ptr %16, i32 0, i32 4, !dbg !417
  %call7 = call ptr @gt_option_new_bool(ptr noundef @.str.15, ptr noundef @.str.16, ptr noundef %usebcktab, i1 noundef zeroext false), !dbg !418
  store ptr %call7, ptr %optionbck, align 8, !dbg !419, !tbaa !195
  %17 = load ptr, ptr %op, align 8, !dbg !420, !tbaa !195
  %18 = load ptr, ptr %optionbck, align 8, !dbg !421, !tbaa !195
  call void @gt_option_parser_add_option(ptr noundef %17, ptr noundef %18), !dbg !422
  %19 = load ptr, ptr %pmopt.addr, align 8, !dbg !423, !tbaa !195
  %immediate = getelementptr inbounds %struct.Pmatchoptions, ptr %19, i32 0, i32 5, !dbg !424
  %call8 = call ptr @gt_option_new_bool(ptr noundef @.str.17, ptr noundef @.str.18, ptr noundef %immediate, i1 noundef zeroext false), !dbg !425
  store ptr %call8, ptr %optionimm, align 8, !dbg !426, !tbaa !195
  %20 = load ptr, ptr %op, align 8, !dbg !427, !tbaa !195
  %21 = load ptr, ptr %optionimm, align 8, !dbg !428, !tbaa !195
  call void @gt_option_parser_add_option(ptr noundef %20, ptr noundef %21), !dbg !429
  %22 = load ptr, ptr %pmopt.addr, align 8, !dbg !430, !tbaa !195
  %indexname = getelementptr inbounds %struct.Pmatchoptions, ptr %22, i32 0, i32 6, !dbg !431
  %23 = load ptr, ptr %indexname, align 8, !dbg !431, !tbaa !219
  %call9 = call ptr @gt_option_new_string(ptr noundef @.str.19, ptr noundef @.str.20, ptr noundef %23, ptr noundef null), !dbg !432
  store ptr %call9, ptr %option, align 8, !dbg !433, !tbaa !195
  %24 = load ptr, ptr %op, align 8, !dbg !434, !tbaa !195
  %25 = load ptr, ptr %option, align 8, !dbg !435, !tbaa !195
  call void @gt_option_parser_add_option(ptr noundef %24, ptr noundef %25), !dbg !436
  %26 = load ptr, ptr %option, align 8, !dbg !437, !tbaa !195
  call void @gt_option_is_mandatory(ptr noundef %26), !dbg !438
  %27 = load ptr, ptr %op, align 8, !dbg !439, !tbaa !195
  %28 = load ptr, ptr %parsed_args.addr, align 8, !dbg !440, !tbaa !195
  %29 = load i32, ptr %argc.addr, align 4, !dbg !441, !tbaa !190
  %30 = load ptr, ptr %argv.addr, align 8, !dbg !442, !tbaa !195
  %31 = load ptr, ptr %err.addr, align 8, !dbg !443, !tbaa !195
  %call10 = call i32 @gt_option_parser_parse(ptr noundef %27, ptr noundef %28, i32 noundef %29, ptr noundef %30, ptr noundef @gt_versionfunc, ptr noundef %31), !dbg !444
  store i32 %call10, ptr %oprval, align 4, !dbg !445, !tbaa !227
  %32 = load ptr, ptr %op, align 8, !dbg !446, !tbaa !195
  call void @gt_option_parser_delete(ptr noundef %32), !dbg !447
  %33 = load i32, ptr %oprval, align 4, !dbg !448, !tbaa !227
  call void @llvm.lifetime.end.p0(i64 4, ptr %oprval) #6, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionbck) #6, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %optionimm) #6, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %option) #6, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6, !dbg !449
  ret i32 %33, !dbg !450
}

; Function Attrs: nounwind uwtable
define internal i32 @callpatternmatcher(ptr noundef %pmopt, ptr noundef %err) #0 !dbg !451 {
entry:
  %pmopt.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %suffixarray = alloca %struct.Suffixarray, align 8
  %totallength = alloca i64, align 8
  %haserr = alloca i8, align 1
  %pptr = alloca ptr, align 8
  %patternlen = alloca i64, align 8
  %demand = alloca i32, align 4
  %trial = alloca i64, align 8
  %dbstart = alloca i64, align 8
  %epi = alloca ptr, align 8
  %firstspecial = alloca i32, align 4
  %mmsibck = alloca ptr, align 8
  %mmsiimm = alloca ptr, align 8
  %bucketspec = alloca %struct.GtBucketspecification, align 8
  %bucketenumerator = alloca ptr, align 8
  %itv = alloca %struct.Lcpinterval, align 8
  %refstart = alloca i64, align 8
  %esr1 = alloca ptr, align 8
  %esr2 = alloca ptr, align 8
  %retval7 = alloca i32, align 4
  %idx = alloca i64, align 8
  %maxlcp = alloca i64, align 8
  %code = alloca i64, align 8
  %multimappower = alloca ptr, align 8
  %alpha = alloca ptr, align 8
  store ptr %pmopt, ptr %pmopt.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %pmopt.addr, metadata !457, metadata !DIExpression()), !dbg !616
  store ptr %err, ptr %err.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !458, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 256, ptr %suffixarray) #6, !dbg !618
  tail call void @llvm.dbg.declare(metadata ptr %suffixarray, metadata !459, metadata !DIExpression()), !dbg !619
  call void @llvm.lifetime.start.p0(i64 8, ptr %totallength) #6, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %totallength, metadata !553, metadata !DIExpression()), !dbg !621
  store i64 0, ptr %totallength, align 8, !dbg !621, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #6, !dbg !623
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !554, metadata !DIExpression()), !dbg !624
  store i8 0, ptr %haserr, align 1, !dbg !624, !tbaa !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %pptr) #6, !dbg !625
  tail call void @llvm.dbg.declare(metadata ptr %pptr, metadata !555, metadata !DIExpression()), !dbg !626
  call void @llvm.lifetime.start.p0(i64 8, ptr %patternlen) #6, !dbg !627
  tail call void @llvm.dbg.declare(metadata ptr %patternlen, metadata !556, metadata !DIExpression()), !dbg !628
  call void @llvm.lifetime.start.p0(i64 4, ptr %demand) #6, !dbg !629
  tail call void @llvm.dbg.declare(metadata ptr %demand, metadata !557, metadata !DIExpression()), !dbg !630
  store i32 3, ptr %demand, align 4, !dbg !630, !tbaa !190
  %0 = load ptr, ptr %pmopt.addr, align 8, !dbg !631, !tbaa !195
  %usebcktab = getelementptr inbounds %struct.Pmatchoptions, ptr %0, i32 0, i32 4, !dbg !633
  %1 = load i8, ptr %usebcktab, align 1, !dbg !633, !tbaa !634, !range !264, !noundef !265
  %tobool = trunc i8 %1 to i1, !dbg !633
  br i1 %tobool, label %if.then, label %if.end, !dbg !635

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %demand, align 4, !dbg !636, !tbaa !190
  %or = or i32 %2, 64, !dbg !636
  store i32 %or, ptr %demand, align 4, !dbg !636, !tbaa !190
  br label %if.end, !dbg !638

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %demand, align 4, !dbg !639, !tbaa !190
  %4 = load ptr, ptr %pmopt.addr, align 8, !dbg !641, !tbaa !195
  %indexname = getelementptr inbounds %struct.Pmatchoptions, ptr %4, i32 0, i32 6, !dbg !642
  %5 = load ptr, ptr %indexname, align 8, !dbg !642, !tbaa !219
  %call = call ptr @gt_str_get(ptr noundef %5), !dbg !643
  %6 = load ptr, ptr %err.addr, align 8, !dbg !644, !tbaa !195
  %call1 = call i32 @gt_mapsuffixarray(ptr noundef %suffixarray, i32 noundef %3, ptr noundef %call, ptr noundef null, ptr noundef %6), !dbg !645
  %cmp = icmp ne i32 %call1, 0, !dbg !646
  br i1 %cmp, label %if.then2, label %if.else, !dbg !647

if.then2:                                         ; preds = %if.end
  store i8 1, ptr %haserr, align 1, !dbg !648, !tbaa !201
  br label %if.end4, !dbg !650

if.else:                                          ; preds = %if.end
  %encseq = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !651
  %7 = load ptr, ptr %encseq, align 8, !dbg !651, !tbaa !653
  %call3 = call i64 @gt_encseq_total_length(ptr noundef %7), !dbg !659
  store i64 %call3, ptr %totallength, align 8, !dbg !660, !tbaa !622
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %8 = load i8, ptr %haserr, align 1, !dbg !661, !tbaa !201, !range !264, !noundef !265
  %tobool5 = trunc i8 %8 to i1, !dbg !661
  br i1 %tobool5, label %if.end134, label %if.then6, !dbg !662

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %trial) #6, !dbg !663
  tail call void @llvm.dbg.declare(metadata ptr %trial, metadata !558, metadata !DIExpression()), !dbg !664
  call void @llvm.lifetime.start.p0(i64 8, ptr %dbstart) #6, !dbg !665
  tail call void @llvm.dbg.declare(metadata ptr %dbstart, metadata !561, metadata !DIExpression()), !dbg !666
  call void @llvm.lifetime.start.p0(i64 8, ptr %epi) #6, !dbg !667
  tail call void @llvm.dbg.declare(metadata ptr %epi, metadata !562, metadata !DIExpression()), !dbg !668
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstspecial) #6, !dbg !669
  tail call void @llvm.dbg.declare(metadata ptr %firstspecial, metadata !567, metadata !DIExpression()), !dbg !670
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmsibck) #6, !dbg !671
  tail call void @llvm.dbg.declare(metadata ptr %mmsibck, metadata !568, metadata !DIExpression()), !dbg !672
  store ptr null, ptr %mmsibck, align 8, !dbg !672, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %mmsiimm) #6, !dbg !671
  tail call void @llvm.dbg.declare(metadata ptr %mmsiimm, metadata !573, metadata !DIExpression()), !dbg !673
  store ptr null, ptr %mmsiimm, align 8, !dbg !673, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 24, ptr %bucketspec) #6, !dbg !674
  tail call void @llvm.dbg.declare(metadata ptr %bucketspec, metadata !574, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %bucketenumerator) #6, !dbg !676
  tail call void @llvm.dbg.declare(metadata ptr %bucketenumerator, metadata !581, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 24, ptr %itv) #6, !dbg !678
  tail call void @llvm.dbg.declare(metadata ptr %itv, metadata !586, metadata !DIExpression()), !dbg !679
  call void @llvm.lifetime.start.p0(i64 8, ptr %refstart) #6, !dbg !680
  tail call void @llvm.dbg.declare(metadata ptr %refstart, metadata !594, metadata !DIExpression()), !dbg !681
  call void @llvm.lifetime.start.p0(i64 8, ptr %esr1) #6, !dbg !682
  tail call void @llvm.dbg.declare(metadata ptr %esr1, metadata !595, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %esr2) #6, !dbg !682
  tail call void @llvm.dbg.declare(metadata ptr %esr2, metadata !599, metadata !DIExpression()), !dbg !684
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval7) #6, !dbg !685
  tail call void @llvm.dbg.declare(metadata ptr %retval7, metadata !600, metadata !DIExpression()), !dbg !686
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #6, !dbg !687
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !601, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxlcp) #6, !dbg !687
  tail call void @llvm.dbg.declare(metadata ptr %maxlcp, metadata !602, metadata !DIExpression()), !dbg !689
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #6, !dbg !690
  tail call void @llvm.dbg.declare(metadata ptr %code, metadata !603, metadata !DIExpression()), !dbg !691
  store i64 0, ptr %code, align 8, !dbg !691, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 8, ptr %multimappower) #6, !dbg !692
  tail call void @llvm.dbg.declare(metadata ptr %multimappower, metadata !606, metadata !DIExpression()), !dbg !693
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #6, !dbg !694
  tail call void @llvm.dbg.declare(metadata ptr %alpha, metadata !610, metadata !DIExpression()), !dbg !695
  %9 = load ptr, ptr %pmopt.addr, align 8, !dbg !696, !tbaa !195
  %usebcktab8 = getelementptr inbounds %struct.Pmatchoptions, ptr %9, i32 0, i32 4, !dbg !698
  %10 = load i8, ptr %usebcktab8, align 1, !dbg !698, !tbaa !634, !range !264, !noundef !265
  %tobool9 = trunc i8 %10 to i1, !dbg !698
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !699

if.then10:                                        ; preds = %if.then6
  %bcktab = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 13, !dbg !700
  %11 = load ptr, ptr %bcktab, align 8, !dbg !700, !tbaa !702
  %call11 = call ptr @gt_bcktab_multimappower(ptr noundef %11), !dbg !703
  store ptr %call11, ptr %multimappower, align 8, !dbg !704, !tbaa !195
  br label %if.end13, !dbg !705

if.else12:                                        ; preds = %if.then6
  store ptr null, ptr %multimappower, align 8, !dbg !706, !tbaa !195
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  %12 = load ptr, ptr %pmopt.addr, align 8, !dbg !708, !tbaa !195
  %minpatternlen = getelementptr inbounds %struct.Pmatchoptions, ptr %12, i32 0, i32 0, !dbg !709
  %13 = load i64, ptr %minpatternlen, align 8, !dbg !709, !tbaa !710
  %14 = load ptr, ptr %pmopt.addr, align 8, !dbg !711, !tbaa !195
  %maxpatternlen = getelementptr inbounds %struct.Pmatchoptions, ptr %14, i32 0, i32 1, !dbg !712
  %15 = load i64, ptr %maxpatternlen, align 8, !dbg !712, !tbaa !713
  %encseq14 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !714
  %16 = load ptr, ptr %encseq14, align 8, !dbg !714, !tbaa !653
  %17 = load ptr, ptr %err.addr, align 8, !dbg !715, !tbaa !195
  %call15 = call ptr @gt_newenumpatterniterator(i64 noundef %13, i64 noundef %15, ptr noundef %16, ptr noundef %17), !dbg !716
  store ptr %call15, ptr %epi, align 8, !dbg !717, !tbaa !195
  %encseq16 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !718
  %18 = load ptr, ptr %encseq16, align 8, !dbg !718, !tbaa !653
  %readmode = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 5, !dbg !719
  %19 = load i32, ptr %readmode, align 8, !dbg !719, !tbaa !720
  %call17 = call ptr @gt_encseq_create_reader_with_readmode(ptr noundef %18, i32 noundef %19, i64 noundef 0), !dbg !721
  store ptr %call17, ptr %esr1, align 8, !dbg !722, !tbaa !195
  %encseq18 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !723
  %20 = load ptr, ptr %encseq18, align 8, !dbg !723, !tbaa !653
  %readmode19 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 5, !dbg !724
  %21 = load i32, ptr %readmode19, align 8, !dbg !724, !tbaa !720
  %call20 = call ptr @gt_encseq_create_reader_with_readmode(ptr noundef %20, i32 noundef %21, i64 noundef 0), !dbg !725
  store ptr %call20, ptr %esr2, align 8, !dbg !726, !tbaa !195
  %encseq21 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !727
  %22 = load ptr, ptr %encseq21, align 8, !dbg !727, !tbaa !653
  %call22 = call ptr @gt_encseq_alphabet(ptr noundef %22), !dbg !728
  store ptr %call22, ptr %alpha, align 8, !dbg !729, !tbaa !195
  store i64 0, ptr %trial, align 8, !dbg !730, !tbaa !622
  br label %for.cond, !dbg !732

for.cond:                                         ; preds = %for.inc127, %if.end13
  %23 = load i64, ptr %trial, align 8, !dbg !733, !tbaa !622
  %24 = load ptr, ptr %pmopt.addr, align 8, !dbg !735, !tbaa !195
  %numofsamples = getelementptr inbounds %struct.Pmatchoptions, ptr %24, i32 0, i32 2, !dbg !736
  %25 = load i64, ptr %numofsamples, align 8, !dbg !736, !tbaa !737
  %cmp23 = icmp ult i64 %23, %25, !dbg !738
  br i1 %cmp23, label %for.body, label %for.end129, !dbg !739

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %epi, align 8, !dbg !740, !tbaa !195
  %call24 = call ptr @gt_nextEnumpatterniterator(ptr noundef %patternlen, ptr noundef %26), !dbg !742
  store ptr %call24, ptr %pptr, align 8, !dbg !743, !tbaa !195
  %27 = load ptr, ptr %pmopt.addr, align 8, !dbg !744, !tbaa !195
  %showpatt = getelementptr inbounds %struct.Pmatchoptions, ptr %27, i32 0, i32 3, !dbg !746
  %28 = load i8, ptr %showpatt, align 8, !dbg !746, !tbaa !747, !range !264, !noundef !265
  %tobool25 = trunc i8 %28 to i1, !dbg !746
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !748

if.then26:                                        ; preds = %for.body
  %29 = load ptr, ptr %alpha, align 8, !dbg !749, !tbaa !195
  %30 = load ptr, ptr @stdout, align 8, !dbg !751, !tbaa !195
  %31 = load ptr, ptr %pptr, align 8, !dbg !752, !tbaa !195
  %32 = load i64, ptr %patternlen, align 8, !dbg !753, !tbaa !622
  call void @gt_alphabet_decode_seq_to_fp(ptr noundef %29, ptr noundef %30, ptr noundef %31, i64 noundef %32), !dbg !754
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.21), !dbg !755
  br label %if.end28, !dbg !756

if.end28:                                         ; preds = %if.then26, %for.body
  %33 = load ptr, ptr %pmopt.addr, align 8, !dbg !757, !tbaa !195
  %usebcktab29 = getelementptr inbounds %struct.Pmatchoptions, ptr %33, i32 0, i32 4, !dbg !759
  %34 = load i8, ptr %usebcktab29, align 1, !dbg !759, !tbaa !634, !range !264, !noundef !265
  %tobool30 = trunc i8 %34 to i1, !dbg !759
  br i1 %tobool30, label %if.then31, label %if.end90, !dbg !760

if.then31:                                        ; preds = %if.end28
  %35 = load i64, ptr %patternlen, align 8, !dbg !761, !tbaa !622
  %prefixlength = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 12, !dbg !764
  %36 = load i32, ptr %prefixlength, align 8, !dbg !764, !tbaa !765
  %conv = zext i32 %36 to i64, !dbg !766
  %cmp32 = icmp ult i64 %35, %conv, !dbg !767
  br i1 %cmp32, label %if.then34, label %if.else62, !dbg !768

if.then34:                                        ; preds = %if.then31
  store ptr null, ptr %mmsibck, align 8, !dbg !769, !tbaa !195
  %bcktab35 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 13, !dbg !771
  %37 = load ptr, ptr %bcktab35, align 8, !dbg !771, !tbaa !702
  %prefixlength36 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 12, !dbg !772
  %38 = load i32, ptr %prefixlength36, align 8, !dbg !772, !tbaa !765
  %39 = load ptr, ptr %pptr, align 8, !dbg !773, !tbaa !195
  %40 = load i64, ptr %patternlen, align 8, !dbg !774, !tbaa !622
  %conv37 = trunc i64 %40 to i32, !dbg !775
  %call38 = call ptr @gt_newbucketenumerator(ptr noundef %37, i32 noundef %38, ptr noundef %39, i32 noundef %conv37), !dbg !776
  store ptr %call38, ptr %bucketenumerator, align 8, !dbg !777, !tbaa !195
  %41 = load i64, ptr %totallength, align 8, !dbg !778, !tbaa !622
  store i64 %41, ptr %refstart, align 8, !dbg !779, !tbaa !622
  br label %while.cond, !dbg !780

while.cond:                                       ; preds = %if.end61, %if.then34
  %42 = load ptr, ptr %bucketenumerator, align 8, !dbg !781, !tbaa !195
  %call39 = call zeroext i1 @gt_nextbucketenumerator(ptr noundef %itv, ptr noundef %42), !dbg !782
  br i1 %call39, label %while.body, label %while.end, !dbg !780

while.body:                                       ; preds = %while.cond
  %43 = load i64, ptr %refstart, align 8, !dbg !783, !tbaa !622
  %44 = load i64, ptr %totallength, align 8, !dbg !786, !tbaa !622
  %cmp40 = icmp eq i64 %43, %44, !dbg !787
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !788

if.then42:                                        ; preds = %while.body
  %suftab = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 8, !dbg !789
  %45 = load ptr, ptr %suftab, align 8, !dbg !789, !tbaa !791
  %left = getelementptr inbounds %struct.Lcpinterval, ptr %itv, i32 0, i32 1, !dbg !789
  %46 = load i64, ptr %left, align 8, !dbg !789, !tbaa !792
  %arrayidx = getelementptr inbounds i64, ptr %45, i64 %46, !dbg !789
  %47 = load i64, ptr %arrayidx, align 8, !dbg !789, !tbaa !622
  store i64 %47, ptr %refstart, align 8, !dbg !794, !tbaa !622
  br label %if.end61, !dbg !795

if.else43:                                        ; preds = %while.body
  %left44 = getelementptr inbounds %struct.Lcpinterval, ptr %itv, i32 0, i32 1, !dbg !796
  %48 = load i64, ptr %left44, align 8, !dbg !796, !tbaa !792
  store i64 %48, ptr %idx, align 8, !dbg !799, !tbaa !622
  br label %for.cond45, !dbg !800

for.cond45:                                       ; preds = %for.inc, %if.else43
  %49 = load i64, ptr %idx, align 8, !dbg !801, !tbaa !622
  %right = getelementptr inbounds %struct.Lcpinterval, ptr %itv, i32 0, i32 2, !dbg !803
  %50 = load i64, ptr %right, align 8, !dbg !803, !tbaa !804
  %cmp46 = icmp ule i64 %49, %50, !dbg !805
  br i1 %cmp46, label %for.body48, label %for.end, !dbg !806

for.body48:                                       ; preds = %for.cond45
  %encseq49 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !807
  %51 = load ptr, ptr %encseq49, align 8, !dbg !807, !tbaa !653
  %readmode50 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 5, !dbg !809
  %52 = load i32, ptr %readmode50, align 8, !dbg !809, !tbaa !720
  %53 = load i64, ptr %patternlen, align 8, !dbg !810, !tbaa !622
  %54 = load i64, ptr %refstart, align 8, !dbg !811, !tbaa !622
  %suftab51 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 8, !dbg !812
  %55 = load ptr, ptr %suftab51, align 8, !dbg !812, !tbaa !791
  %56 = load i64, ptr %idx, align 8, !dbg !812, !tbaa !622
  %arrayidx52 = getelementptr inbounds i64, ptr %55, i64 %56, !dbg !812
  %57 = load i64, ptr %arrayidx52, align 8, !dbg !812, !tbaa !622
  %58 = load ptr, ptr %esr1, align 8, !dbg !813, !tbaa !195
  %59 = load ptr, ptr %esr2, align 8, !dbg !814, !tbaa !195
  %call53 = call i32 @gt_encseq_check_comparetwosuffixes(ptr noundef %51, i32 noundef %52, ptr noundef %maxlcp, i1 noundef zeroext false, i1 noundef zeroext false, i64 noundef %53, i64 noundef %54, i64 noundef %57, ptr noundef %58, ptr noundef %59), !dbg !815
  store i32 %call53, ptr %retval7, align 4, !dbg !816, !tbaa !190
  br label %do.body, !dbg !817

do.body:                                          ; preds = %for.body48
  %60 = load i32, ptr %retval7, align 4, !dbg !818, !tbaa !190
  %cmp54 = icmp eq i32 %60, 0, !dbg !818
  br i1 %cmp54, label %land.lhs.true, label %if.then58, !dbg !818

land.lhs.true:                                    ; preds = %do.body
  %61 = load i64, ptr %maxlcp, align 8, !dbg !818, !tbaa !622
  %62 = load i64, ptr %patternlen, align 8, !dbg !818, !tbaa !622
  %cmp56 = icmp eq i64 %61, %62, !dbg !818
  br i1 %cmp56, label %if.end60, label %if.then58, !dbg !821

if.then58:                                        ; preds = %land.lhs.true, %do.body
  %63 = load ptr, ptr @stderr, align 8, !dbg !822, !tbaa !195
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str, ptr noundef @.str.22, ptr noundef @__func__.callpatternmatcher, ptr noundef @.str.2, i32 noundef 164), !dbg !822
  call void @abort() #7, !dbg !822
  unreachable, !dbg !822

if.end60:                                         ; preds = %land.lhs.true
  br label %do.cond, !dbg !821

do.cond:                                          ; preds = %if.end60
  br label %do.end, !dbg !821

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !824

for.inc:                                          ; preds = %do.end
  %64 = load i64, ptr %idx, align 8, !dbg !825, !tbaa !622
  %inc = add i64 %64, 1, !dbg !825
  store i64 %inc, ptr %idx, align 8, !dbg !825, !tbaa !622
  br label %for.cond45, !dbg !826, !llvm.loop !827

for.end:                                          ; preds = %for.cond45
  br label %if.end61

if.end61:                                         ; preds = %for.end, %if.then42
  br label %while.cond, !dbg !780, !llvm.loop !830

while.end:                                        ; preds = %while.cond
  %65 = load ptr, ptr %bucketenumerator, align 8, !dbg !832, !tbaa !195
  call void @gt_freebucketenumerator(ptr noundef %65), !dbg !833
  br label %if.end89, !dbg !834

if.else62:                                        ; preds = %if.then31
  %66 = load ptr, ptr %multimappower, align 8, !dbg !835, !tbaa !195
  %prefixlength63 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 12, !dbg !837
  %67 = load i32, ptr %prefixlength63, align 8, !dbg !837, !tbaa !765
  %68 = load ptr, ptr %pptr, align 8, !dbg !838, !tbaa !195
  %call64 = call i32 @qgram2code(ptr noundef %code, ptr noundef %66, i32 noundef %67, ptr noundef %68), !dbg !839
  store i32 %call64, ptr %firstspecial, align 4, !dbg !840, !tbaa !190
  br label %do.body65, !dbg !841

do.body65:                                        ; preds = %if.else62
  %69 = load i32, ptr %firstspecial, align 4, !dbg !842, !tbaa !190
  %prefixlength66 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 12, !dbg !842
  %70 = load i32, ptr %prefixlength66, align 8, !dbg !842, !tbaa !765
  %cmp67 = icmp eq i32 %69, %70, !dbg !842
  br i1 %cmp67, label %if.end71, label %if.then69, !dbg !845

if.then69:                                        ; preds = %do.body65
  %71 = load ptr, ptr @stderr, align 8, !dbg !846, !tbaa !195
  %call70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str, ptr noundef @.str.23, ptr noundef @__func__.callpatternmatcher, ptr noundef @.str.2, i32 noundef 175), !dbg !846
  call void @abort() #7, !dbg !846
  unreachable, !dbg !846

if.end71:                                         ; preds = %do.body65
  br label %do.cond72, !dbg !845

do.cond72:                                        ; preds = %if.end71
  br label %do.end73, !dbg !845

do.end73:                                         ; preds = %do.cond72
  %bcktab74 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 13, !dbg !848
  %72 = load ptr, ptr %bcktab74, align 8, !dbg !848, !tbaa !702
  %73 = load i64, ptr %code, align 8, !dbg !849, !tbaa !622
  call void @gt_bcktab_calcboundaries(ptr noundef %bucketspec, ptr noundef %72, i64 noundef %73), !dbg !850
  %nonspecialsinbucket = getelementptr inbounds %struct.GtBucketspecification, ptr %bucketspec, i32 0, i32 1, !dbg !851
  %74 = load i64, ptr %nonspecialsinbucket, align 8, !dbg !851, !tbaa !792
  %cmp75 = icmp eq i64 %74, 0, !dbg !853
  br i1 %cmp75, label %if.then77, label %if.else78, !dbg !854

if.then77:                                        ; preds = %do.end73
  store ptr null, ptr %mmsibck, align 8, !dbg !855, !tbaa !195
  br label %if.end88, !dbg !857

if.else78:                                        ; preds = %do.end73
  %encseq79 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !858
  %75 = load ptr, ptr %encseq79, align 8, !dbg !858, !tbaa !653
  %suftab80 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 8, !dbg !860
  %76 = load ptr, ptr %suftab80, align 8, !dbg !860, !tbaa !791
  %left81 = getelementptr inbounds %struct.GtBucketspecification, ptr %bucketspec, i32 0, i32 0, !dbg !861
  %77 = load i64, ptr %left81, align 8, !dbg !861, !tbaa !862
  %left82 = getelementptr inbounds %struct.GtBucketspecification, ptr %bucketspec, i32 0, i32 0, !dbg !863
  %78 = load i64, ptr %left82, align 8, !dbg !863, !tbaa !862
  %nonspecialsinbucket83 = getelementptr inbounds %struct.GtBucketspecification, ptr %bucketspec, i32 0, i32 1, !dbg !864
  %79 = load i64, ptr %nonspecialsinbucket83, align 8, !dbg !864, !tbaa !792
  %add = add i64 %78, %79, !dbg !865
  %sub = sub i64 %add, 1, !dbg !866
  %prefixlength84 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 12, !dbg !867
  %80 = load i32, ptr %prefixlength84, align 8, !dbg !867, !tbaa !765
  %conv85 = zext i32 %80 to i64, !dbg !868
  %readmode86 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 5, !dbg !869
  %81 = load i32, ptr %readmode86, align 8, !dbg !869, !tbaa !720
  %82 = load ptr, ptr %pptr, align 8, !dbg !870, !tbaa !195
  %83 = load i64, ptr %patternlen, align 8, !dbg !871, !tbaa !622
  %call87 = call ptr @gt_mmsearchiterator_new_complete_plain(ptr noundef %75, ptr noundef %76, i64 noundef %77, i64 noundef %sub, i64 noundef %conv85, i32 noundef %81, ptr noundef %82, i64 noundef %83), !dbg !872
  store ptr %call87, ptr %mmsibck, align 8, !dbg !873, !tbaa !195
  br label %if.end88

if.end88:                                         ; preds = %if.else78, %if.then77
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %while.end
  br label %if.end90, !dbg !874

if.end90:                                         ; preds = %if.end89, %if.end28
  %84 = load ptr, ptr %pmopt.addr, align 8, !dbg !875, !tbaa !195
  %immediate = getelementptr inbounds %struct.Pmatchoptions, ptr %84, i32 0, i32 5, !dbg !877
  %85 = load i8, ptr %immediate, align 2, !dbg !877, !tbaa !878, !range !264, !noundef !265
  %tobool91 = trunc i8 %85 to i1, !dbg !877
  br i1 %tobool91, label %if.then92, label %if.end97, !dbg !879

if.then92:                                        ; preds = %if.end90
  %encseq93 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 0, !dbg !880
  %86 = load ptr, ptr %encseq93, align 8, !dbg !880, !tbaa !653
  %suftab94 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 8, !dbg !882
  %87 = load ptr, ptr %suftab94, align 8, !dbg !882, !tbaa !791
  %88 = load i64, ptr %totallength, align 8, !dbg !883, !tbaa !622
  %readmode95 = getelementptr inbounds %struct.Suffixarray, ptr %suffixarray, i32 0, i32 5, !dbg !884
  %89 = load i32, ptr %readmode95, align 8, !dbg !884, !tbaa !720
  %90 = load ptr, ptr %pptr, align 8, !dbg !885, !tbaa !195
  %91 = load i64, ptr %patternlen, align 8, !dbg !886, !tbaa !622
  %call96 = call ptr @gt_mmsearchiterator_new_complete_plain(ptr noundef %86, ptr noundef %87, i64 noundef 0, i64 noundef %88, i64 noundef 0, i32 noundef %89, ptr noundef %90, i64 noundef %91), !dbg !887
  store ptr %call96, ptr %mmsiimm, align 8, !dbg !888, !tbaa !195
  br label %if.end97, !dbg !889

if.end97:                                         ; preds = %if.then92, %if.end90
  %92 = load ptr, ptr %pmopt.addr, align 8, !dbg !890, !tbaa !195
  %immediate98 = getelementptr inbounds %struct.Pmatchoptions, ptr %92, i32 0, i32 5, !dbg !892
  %93 = load i8, ptr %immediate98, align 2, !dbg !892, !tbaa !878, !range !264, !noundef !265
  %tobool99 = trunc i8 %93 to i1, !dbg !892
  br i1 %tobool99, label %land.lhs.true101, label %if.end106, !dbg !893

land.lhs.true101:                                 ; preds = %if.end97
  %94 = load ptr, ptr %pmopt.addr, align 8, !dbg !894, !tbaa !195
  %usebcktab102 = getelementptr inbounds %struct.Pmatchoptions, ptr %94, i32 0, i32 4, !dbg !895
  %95 = load i8, ptr %usebcktab102, align 1, !dbg !895, !tbaa !634, !range !264, !noundef !265
  %tobool103 = trunc i8 %95 to i1, !dbg !895
  br i1 %tobool103, label %if.then105, label %if.end106, !dbg !896

if.then105:                                       ; preds = %land.lhs.true101
  %96 = load ptr, ptr %mmsibck, align 8, !dbg !897, !tbaa !195
  %97 = load ptr, ptr %mmsiimm, align 8, !dbg !899, !tbaa !195
  call void @comparemmsis(ptr noundef %96, ptr noundef %97), !dbg !900
  br label %if.end106, !dbg !901

if.end106:                                        ; preds = %if.then105, %land.lhs.true101, %if.end97
  %98 = load ptr, ptr %pmopt.addr, align 8, !dbg !902, !tbaa !195
  %usebcktab107 = getelementptr inbounds %struct.Pmatchoptions, ptr %98, i32 0, i32 4, !dbg !904
  %99 = load i8, ptr %usebcktab107, align 1, !dbg !904, !tbaa !634, !range !264, !noundef !265
  %tobool108 = trunc i8 %99 to i1, !dbg !904
  br i1 %tobool108, label %land.lhs.true110, label %if.end118, !dbg !905

land.lhs.true110:                                 ; preds = %if.end106
  %100 = load ptr, ptr %mmsibck, align 8, !dbg !906, !tbaa !195
  %cmp111 = icmp ne ptr %100, null, !dbg !907
  br i1 %cmp111, label %if.then113, label %if.end118, !dbg !908

if.then113:                                       ; preds = %land.lhs.true110
  br label %while.cond114, !dbg !909

while.cond114:                                    ; preds = %while.body116, %if.then113
  %101 = load ptr, ptr %mmsibck, align 8, !dbg !911, !tbaa !195
  %call115 = call zeroext i1 @gt_mmsearchiterator_next(ptr noundef %dbstart, ptr noundef %101), !dbg !912
  br i1 %call115, label %while.body116, label %while.end117, !dbg !909

while.body116:                                    ; preds = %while.cond114
  br label %while.cond114, !dbg !909, !llvm.loop !913

while.end117:                                     ; preds = %while.cond114
  %102 = load ptr, ptr %mmsibck, align 8, !dbg !915, !tbaa !195
  call void @gt_mmsearchiterator_delete(ptr noundef %102), !dbg !916
  store ptr null, ptr %mmsibck, align 8, !dbg !917, !tbaa !195
  br label %if.end118, !dbg !918

if.end118:                                        ; preds = %while.end117, %land.lhs.true110, %if.end106
  %103 = load ptr, ptr %pmopt.addr, align 8, !dbg !919, !tbaa !195
  %immediate119 = getelementptr inbounds %struct.Pmatchoptions, ptr %103, i32 0, i32 5, !dbg !921
  %104 = load i8, ptr %immediate119, align 2, !dbg !921, !tbaa !878, !range !264, !noundef !265
  %tobool120 = trunc i8 %104 to i1, !dbg !921
  br i1 %tobool120, label %if.then121, label %if.end126, !dbg !922

if.then121:                                       ; preds = %if.end118
  br label %while.cond122, !dbg !923

while.cond122:                                    ; preds = %while.body124, %if.then121
  %105 = load ptr, ptr %mmsiimm, align 8, !dbg !925, !tbaa !195
  %call123 = call zeroext i1 @gt_mmsearchiterator_next(ptr noundef %dbstart, ptr noundef %105), !dbg !926
  br i1 %call123, label %while.body124, label %while.end125, !dbg !923

while.body124:                                    ; preds = %while.cond122
  br label %while.cond122, !dbg !923, !llvm.loop !927

while.end125:                                     ; preds = %while.cond122
  %106 = load ptr, ptr %mmsiimm, align 8, !dbg !929, !tbaa !195
  call void @gt_mmsearchiterator_delete(ptr noundef %106), !dbg !930
  store ptr null, ptr %mmsiimm, align 8, !dbg !931, !tbaa !195
  br label %if.end126, !dbg !932

if.end126:                                        ; preds = %while.end125, %if.end118
  br label %for.inc127, !dbg !933

for.inc127:                                       ; preds = %if.end126
  %107 = load i64, ptr %trial, align 8, !dbg !934, !tbaa !622
  %inc128 = add i64 %107, 1, !dbg !934
  store i64 %inc128, ptr %trial, align 8, !dbg !934, !tbaa !622
  br label %for.cond, !dbg !935, !llvm.loop !936

for.end129:                                       ; preds = %for.cond
  %108 = load ptr, ptr %esr1, align 8, !dbg !938, !tbaa !195
  call void @gt_encseq_reader_delete(ptr noundef %108), !dbg !939
  %109 = load ptr, ptr %esr2, align 8, !dbg !940, !tbaa !195
  call void @gt_encseq_reader_delete(ptr noundef %109), !dbg !941
  %110 = load ptr, ptr %pmopt.addr, align 8, !dbg !942, !tbaa !195
  %showpatt130 = getelementptr inbounds %struct.Pmatchoptions, ptr %110, i32 0, i32 3, !dbg !944
  %111 = load i8, ptr %showpatt130, align 8, !dbg !944, !tbaa !747, !range !264, !noundef !265
  %tobool131 = trunc i8 %111 to i1, !dbg !944
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !945

if.then132:                                       ; preds = %for.end129
  %112 = load ptr, ptr %epi, align 8, !dbg !946, !tbaa !195
  call void @gt_showPatterndistribution(ptr noundef %112), !dbg !948
  br label %if.end133, !dbg !949

if.end133:                                        ; preds = %if.then132, %for.end129
  %113 = load ptr, ptr %epi, align 8, !dbg !950, !tbaa !195
  call void @gt_freeEnumpatterniterator(ptr noundef %113), !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %multimappower) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxlcp) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval7) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %esr2) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %esr1) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %refstart) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 24, ptr %itv) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %bucketenumerator) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 24, ptr %bucketspec) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmsiimm) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %mmsibck) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstspecial) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %epi) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %dbstart) #6, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %trial) #6, !dbg !952
  br label %if.end134, !dbg !953

if.end134:                                        ; preds = %if.end133, %if.end4
  call void @gt_freesuffixarray(ptr noundef %suffixarray), !dbg !954
  %114 = load i8, ptr %haserr, align 1, !dbg !955, !tbaa !201, !range !264, !noundef !265
  %tobool135 = trunc i8 %114 to i1, !dbg !955
  %115 = zext i1 %tobool135 to i64, !dbg !955
  %cond = select i1 %tobool135, i32 -1, i32 0, !dbg !955
  call void @llvm.lifetime.end.p0(i64 4, ptr %demand) #6, !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %patternlen) #6, !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %pptr) #6, !dbg !956
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #6, !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %totallength) #6, !dbg !956
  call void @llvm.lifetime.end.p0(i64 256, ptr %suffixarray) #6, !dbg !956
  ret i32 %cond, !dbg !957
}

declare !dbg !958 void @gt_str_delete(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !961 ptr @gt_option_parser_new(ptr noundef, ptr noundef) #2

declare !dbg !964 void @gt_option_parser_set_mail_address(ptr noundef, ptr noundef) #2

declare !dbg !967 ptr @gt_option_new_uword(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !970 void @gt_option_parser_add_option(ptr noundef, ptr noundef) #2

declare !dbg !973 ptr @gt_option_new_bool(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

declare !dbg !977 ptr @gt_option_new_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !980 void @gt_option_is_mandatory(ptr noundef) #2

declare !dbg !983 i32 @gt_option_parser_parse(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @gt_versionfunc(ptr noundef) #2

declare !dbg !990 void @gt_option_parser_delete(ptr noundef) #2

declare !dbg !993 i32 @gt_mapsuffixarray(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1002 ptr @gt_str_get(ptr noundef) #2

declare !dbg !1007 i64 @gt_encseq_total_length(ptr noundef) #2

declare !dbg !1012 ptr @gt_bcktab_multimappower(ptr noundef) #2

declare !dbg !1017 ptr @gt_newenumpatterniterator(i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare !dbg !1020 ptr @gt_encseq_create_reader_with_readmode(ptr noundef, i32 noundef, i64 noundef) #2

declare !dbg !1023 ptr @gt_encseq_alphabet(ptr noundef) #2

declare !dbg !1027 ptr @gt_nextEnumpatterniterator(ptr noundef, ptr noundef) #2

declare !dbg !1030 void @gt_alphabet_decode_seq_to_fp(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1033 i32 @printf(ptr noundef, ...) #2

declare !dbg !1036 ptr @gt_newbucketenumerator(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare !dbg !1039 zeroext i1 @gt_nextbucketenumerator(ptr noundef, ptr noundef) #2

declare !dbg !1043 i32 @gt_encseq_check_comparetwosuffixes(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare !dbg !1047 void @gt_freebucketenumerator(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @qgram2code(ptr noundef %code, ptr noundef %multimappower, i32 noundef %qvalue, ptr noundef %qgram) #4 !dbg !1050 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca ptr, align 8
  %multimappower.addr = alloca ptr, align 8
  %qvalue.addr = alloca i32, align 4
  %qgram.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmpcode = alloca i64, align 8
  %a = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %code, ptr %code.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !1056, metadata !DIExpression()), !dbg !1063
  store ptr %multimappower, ptr %multimappower.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %multimappower.addr, metadata !1057, metadata !DIExpression()), !dbg !1064
  store i32 %qvalue, ptr %qvalue.addr, align 4, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %qvalue.addr, metadata !1058, metadata !DIExpression()), !dbg !1065
  store ptr %qgram, ptr %qgram.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %qgram.addr, metadata !1059, metadata !DIExpression()), !dbg !1066
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1067
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1060, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpcode) #6, !dbg !1069
  tail call void @llvm.dbg.declare(metadata ptr %tmpcode, metadata !1061, metadata !DIExpression()), !dbg !1070
  store i64 0, ptr %tmpcode, align 8, !dbg !1070, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 1, ptr %a) #6, !dbg !1071
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !1062, metadata !DIExpression()), !dbg !1072
  %0 = load i32, ptr %qvalue.addr, align 4, !dbg !1073, !tbaa !190
  %sub = sub i32 %0, 1, !dbg !1075
  store i32 %sub, ptr %i, align 4, !dbg !1076, !tbaa !190
  br label %for.cond, !dbg !1077

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !1078, !tbaa !190
  %cmp = icmp sge i32 %1, 0, !dbg !1080
  br i1 %cmp, label %for.body, label %for.end, !dbg !1081

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %qgram.addr, align 8, !dbg !1082, !tbaa !195
  %3 = load i32, ptr %i, align 4, !dbg !1084, !tbaa !190
  %idxprom = sext i32 %3 to i64, !dbg !1082
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom, !dbg !1082
  %4 = load i8, ptr %arrayidx, align 1, !dbg !1082, !tbaa !227
  store i8 %4, ptr %a, align 1, !dbg !1085, !tbaa !227
  %5 = load i8, ptr %a, align 1, !dbg !1086, !tbaa !227
  %conv = zext i8 %5 to i32, !dbg !1086
  %cmp1 = icmp sge i32 %conv, 254, !dbg !1086
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1088

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !1089, !tbaa !190
  store i32 %6, ptr %retval, align 4, !dbg !1091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %multimappower.addr, align 8, !dbg !1092, !tbaa !195
  %8 = load i32, ptr %i, align 4, !dbg !1093, !tbaa !190
  %idxprom3 = sext i32 %8 to i64, !dbg !1092
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom3, !dbg !1092
  %9 = load ptr, ptr %arrayidx4, align 8, !dbg !1092, !tbaa !195
  %10 = load i8, ptr %a, align 1, !dbg !1094, !tbaa !227
  %idxprom5 = zext i8 %10 to i64, !dbg !1092
  %arrayidx6 = getelementptr inbounds i64, ptr %9, i64 %idxprom5, !dbg !1092
  %11 = load i64, ptr %arrayidx6, align 8, !dbg !1092, !tbaa !622
  %12 = load i64, ptr %tmpcode, align 8, !dbg !1095, !tbaa !622
  %add = add i64 %12, %11, !dbg !1095
  store i64 %add, ptr %tmpcode, align 8, !dbg !1095, !tbaa !622
  br label %for.inc, !dbg !1096

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !dbg !1097, !tbaa !190
  %dec = add nsw i32 %13, -1, !dbg !1097
  store i32 %dec, ptr %i, align 4, !dbg !1097, !tbaa !190
  br label %for.cond, !dbg !1098, !llvm.loop !1099

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %tmpcode, align 8, !dbg !1101, !tbaa !622
  %15 = load ptr, ptr %code.addr, align 8, !dbg !1102, !tbaa !195
  store i64 %14, ptr %15, align 8, !dbg !1103, !tbaa !622
  %16 = load i32, ptr %qvalue.addr, align 4, !dbg !1104, !tbaa !190
  store i32 %16, ptr %retval, align 4, !dbg !1105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %a) #6, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpcode) #6, !dbg !1106
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1106
  %17 = load i32, ptr %retval, align 4, !dbg !1106
  ret i32 %17, !dbg !1106
}

declare !dbg !1107 void @gt_bcktab_calcboundaries(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1111 ptr @gt_mmsearchiterator_new_complete_plain(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @comparemmsis(ptr noundef %mmsi1, ptr noundef %mmsi2) #0 !dbg !1116 {
entry:
  %mmsi1.addr = alloca ptr, align 8
  %mmsi2.addr = alloca ptr, align 8
  store ptr %mmsi1, ptr %mmsi1.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %mmsi1.addr, metadata !1122, metadata !DIExpression()), !dbg !1124
  store ptr %mmsi2, ptr %mmsi2.addr, align 8, !tbaa !195
  tail call void @llvm.dbg.declare(metadata ptr %mmsi2.addr, metadata !1123, metadata !DIExpression()), !dbg !1125
  %0 = load ptr, ptr %mmsi1.addr, align 8, !dbg !1126, !tbaa !195
  %call = call zeroext i1 @gt_mmsearchiterator_isempty(ptr noundef %0), !dbg !1128
  br i1 %call, label %if.then, label %if.else, !dbg !1129

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %mmsi2.addr, align 8, !dbg !1130, !tbaa !195
  %call1 = call zeroext i1 @gt_mmsearchiterator_isempty(ptr noundef %1), !dbg !1133
  br i1 %call1, label %if.end, label %if.then2, !dbg !1134

if.then2:                                         ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !dbg !1135, !tbaa !195
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.24), !dbg !1137
  call void @exit(i32 noundef 2) #7, !dbg !1138
  unreachable, !dbg !1138

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !1139

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %mmsi2.addr, align 8, !dbg !1140, !tbaa !195
  %call4 = call zeroext i1 @gt_mmsearchiterator_isempty(ptr noundef %3), !dbg !1143
  br i1 %call4, label %if.then5, label %if.end7, !dbg !1144

if.then5:                                         ; preds = %if.else
  %4 = load ptr, ptr @stderr, align 8, !dbg !1145, !tbaa !195
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.25), !dbg !1147
  call void @exit(i32 noundef 2) #7, !dbg !1148
  unreachable, !dbg !1148

if.end7:                                          ; preds = %if.else
  %5 = load ptr, ptr %mmsi1.addr, align 8, !dbg !1149, !tbaa !195
  %6 = load ptr, ptr %mmsi2.addr, align 8, !dbg !1151, !tbaa !195
  %call8 = call zeroext i1 @gt_mmsearchiterator_identical(ptr noundef %5, ptr noundef %6), !dbg !1152
  br i1 %call8, label %if.end11, label %if.then9, !dbg !1153

if.then9:                                         ; preds = %if.end7
  %7 = load ptr, ptr @stderr, align 8, !dbg !1154, !tbaa !195
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.26), !dbg !1156
  call void @exit(i32 noundef 2) #7, !dbg !1157
  unreachable, !dbg !1157

if.end11:                                         ; preds = %if.end7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !1158
}

declare !dbg !1159 zeroext i1 @gt_mmsearchiterator_next(ptr noundef, ptr noundef) #2

declare !dbg !1162 void @gt_mmsearchiterator_delete(ptr noundef) #2

declare !dbg !1165 void @gt_encseq_reader_delete(ptr noundef) #2

declare !dbg !1168 void @gt_showPatterndistribution(ptr noundef) #2

declare !dbg !1173 void @gt_freeEnumpatterniterator(ptr noundef) #2

declare !dbg !1176 void @gt_freesuffixarray(ptr noundef) #2

declare !dbg !1179 zeroext i1 @gt_mmsearchiterator_isempty(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare !dbg !1182 void @exit(i32 noundef) #3

declare !dbg !1185 zeroext i1 @gt_mmsearchiterator_identical(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!126}
!llvm.module.flags = !{!151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/tools/gt_patternmatch.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0c6bad200bdabb9c3ed105b543011e32")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 16)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 307, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 28)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 20)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 14)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 24)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 25)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 27)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 6)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 34)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !50, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !55, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 8)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 26)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 2)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 23)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 4)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !69, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !84, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !25, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 287, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 3)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !25, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !74, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 36)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 19)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 41)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !9, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !9, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 31)
!126 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !127, retainedTypes: !142, globals: !150, splitDebugInlining: false, nameTableKind: None)
!127 = !{!128, !135}
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtOPrval", file: !129, line: 35, baseType: !130, size: 32, elements: !131)
!129 = !DIFile(filename: "src/core/option_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4af8e95b11f2236d309c3019659f4935")
!130 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "GT_OPTION_PARSER_OK", value: 0)
!133 = !DIEnumerator(name: "GT_OPTION_PARSER_ERROR", value: 1)
!134 = !DIEnumerator(name: "GT_OPTION_PARSER_REQUESTS_EXIT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtReadmode", file: !136, line: 23, baseType: !130, size: 32, elements: !137)
!136 = !DIFile(filename: "src/core/readmode_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1b062e226e296972a431b9bfcad13aa9")
!137 = !{!138, !139, !140, !141}
!138 = !DIEnumerator(name: "GT_READMODE_FORWARD", value: 0)
!139 = !DIEnumerator(name: "GT_READMODE_REVERSE", value: 1)
!140 = !DIEnumerator(name: "GT_READMODE_COMPL", value: 2)
!141 = !DIEnumerator(name: "GT_READMODE_REVCOMPL", value: 3)
!142 = !{!143, !130, !146, !147, !148}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !144, line: 83, baseType: !145)
!144 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!147 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUchar", file: !144, line: 102, baseType: !149)
!149 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !53, !58, !60, !62, !67, !72, !77, !82, !87, !89, !91, !93, !98, !100, !102, !107, !112, !117, !119, !121}
!151 = !{i32 7, !"Dwarf Version", i32 5}
!152 = !{i32 2, !"Debug Info Version", i32 3}
!153 = !{i32 1, !"wchar_size", i32 4}
!154 = !{i32 8, !"PIC Level", i32 2}
!155 = !{i32 7, !"uwtable", i32 2}
!156 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!157 = distinct !DISubprogram(name: "gt_patternmatch", scope: !2, file: !2, line: 300, type: !158, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !166)
!158 = !DISubroutineType(types: !159)
!159 = !{!147, !147, !160, !162}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !164, line: 44, baseType: !165)
!164 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!165 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !164, line: 44, flags: DIFlagFwdDecl)
!166 = !{!167, !168, !169, !170, !172, !173, !188}
!167 = !DILocalVariable(name: "argc", arg: 1, scope: !157, file: !2, line: 300, type: !147)
!168 = !DILocalVariable(name: "argv", arg: 2, scope: !157, file: !2, line: 300, type: !160)
!169 = !DILocalVariable(name: "err", arg: 3, scope: !157, file: !2, line: 300, type: !162)
!170 = !DILocalVariable(name: "haserr", scope: !157, file: !2, line: 302, type: !171)
!171 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!172 = !DILocalVariable(name: "parsed_args", scope: !157, file: !2, line: 303, type: !147)
!173 = !DILocalVariable(name: "pmopt", scope: !157, file: !2, line: 304, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "Pmatchoptions", file: !2, line: 38, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 33, size: 320, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "minpatternlen", scope: !175, file: !2, line: 35, baseType: !143, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "maxpatternlen", scope: !175, file: !2, line: 35, baseType: !143, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "numofsamples", scope: !175, file: !2, line: 35, baseType: !143, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "showpatt", scope: !175, file: !2, line: 36, baseType: !171, size: 8, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "usebcktab", scope: !175, file: !2, line: 36, baseType: !171, size: 8, offset: 200)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !175, file: !2, line: 36, baseType: !171, size: 8, offset: 208)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "indexname", scope: !175, file: !2, line: 37, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !186, line: 27, baseType: !187)
!186 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !186, line: 27, flags: DIFlagFwdDecl)
!188 = !DILocalVariable(name: "oprval", scope: !157, file: !2, line: 305, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOPrval", file: !129, line: 48, baseType: !128)
!190 = !{!191, !191, i64 0}
!191 = !{!"int", !192, i64 0}
!192 = !{!"omnipotent char", !193, i64 0}
!193 = !{!"Simple C/C++ TBAA"}
!194 = !DILocation(line: 300, column: 25, scope: !157)
!195 = !{!196, !196, i64 0}
!196 = !{!"any pointer", !192, i64 0}
!197 = !DILocation(line: 300, column: 44, scope: !157)
!198 = !DILocation(line: 300, column: 59, scope: !157)
!199 = !DILocation(line: 302, column: 3, scope: !157)
!200 = !DILocation(line: 302, column: 8, scope: !157)
!201 = !{!202, !202, i64 0}
!202 = !{!"_Bool", !192, i64 0}
!203 = !DILocation(line: 303, column: 3, scope: !157)
!204 = !DILocation(line: 303, column: 7, scope: !157)
!205 = !DILocation(line: 304, column: 3, scope: !157)
!206 = !DILocation(line: 304, column: 17, scope: !157)
!207 = !DILocation(line: 305, column: 3, scope: !157)
!208 = !DILocation(line: 305, column: 12, scope: !157)
!209 = !DILocation(line: 307, column: 3, scope: !157)
!210 = !DILocation(line: 307, column: 3, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 307, column: 3)
!212 = distinct !DILexicalBlock(scope: !157, file: !2, line: 307, column: 3)
!213 = !DILocation(line: 307, column: 3, scope: !212)
!214 = !DILocation(line: 307, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !2, line: 307, column: 3)
!216 = !DILocation(line: 309, column: 21, scope: !157)
!217 = !DILocation(line: 309, column: 9, scope: !157)
!218 = !DILocation(line: 309, column: 19, scope: !157)
!219 = !{!220, !196, i64 32}
!220 = !{!"", !221, i64 0, !221, i64 8, !221, i64 16, !202, i64 24, !202, i64 25, !202, i64 26, !196, i64 32}
!221 = !{!"long", !192, i64 0}
!222 = !DILocation(line: 310, column: 47, scope: !157)
!223 = !DILocation(line: 310, column: 53, scope: !157)
!224 = !DILocation(line: 310, column: 59, scope: !157)
!225 = !DILocation(line: 310, column: 12, scope: !157)
!226 = !DILocation(line: 310, column: 10, scope: !157)
!227 = !{!192, !192, i64 0}
!228 = !DILocation(line: 311, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !157, file: !2, line: 311, column: 7)
!230 = !DILocation(line: 311, column: 14, scope: !229)
!231 = !DILocation(line: 311, column: 7, scope: !157)
!232 = !DILocation(line: 313, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !2, line: 312, column: 3)
!234 = !DILocation(line: 313, column: 5, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !2, line: 313, column: 5)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 313, column: 5)
!237 = !DILocation(line: 313, column: 5, scope: !236)
!238 = !DILocation(line: 313, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 313, column: 5)
!240 = !DILocation(line: 314, column: 35, scope: !241)
!241 = distinct !DILexicalBlock(scope: !233, file: !2, line: 314, column: 9)
!242 = !DILocation(line: 314, column: 9, scope: !241)
!243 = !DILocation(line: 314, column: 40, scope: !241)
!244 = !DILocation(line: 314, column: 9, scope: !233)
!245 = !DILocation(line: 316, column: 14, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !2, line: 315, column: 5)
!247 = !DILocation(line: 317, column: 5, scope: !246)
!248 = !DILocation(line: 318, column: 3, scope: !233)
!249 = !DILocation(line: 319, column: 23, scope: !157)
!250 = !DILocation(line: 319, column: 3, scope: !157)
!251 = !DILocation(line: 320, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !157, file: !2, line: 320, column: 7)
!253 = !DILocation(line: 320, column: 14, scope: !252)
!254 = !DILocation(line: 320, column: 7, scope: !157)
!255 = !DILocation(line: 322, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !2, line: 321, column: 3)
!257 = !DILocation(line: 324, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !157, file: !2, line: 324, column: 7)
!259 = !DILocation(line: 324, column: 14, scope: !258)
!260 = !DILocation(line: 324, column: 7, scope: !157)
!261 = !DILocation(line: 326, column: 5, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !2, line: 325, column: 3)
!263 = !DILocation(line: 328, column: 10, scope: !157)
!264 = !{i8 0, i8 2}
!265 = !{}
!266 = !DILocation(line: 328, column: 3, scope: !157)
!267 = !DILocation(line: 329, column: 1, scope: !157)
!268 = !DISubprogram(name: "gt_error_is_set", scope: !164, file: !164, line: 64, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DISubroutineType(types: !270)
!270 = !{!171, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!273 = !DISubprogram(name: "fprintf", scope: !274, file: !274, line: 350, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!275 = !DISubroutineType(types: !276)
!276 = !{!147, !277, !334, null}
!277 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !280, line: 7, baseType: !281)
!280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !282, line: 49, size: 1728, elements: !283)
!282 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!283 = !{!284, !285, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !300, !302, !303, !304, !308, !310, !312, !316, !319, !321, !324, !327, !328, !329, !332, !333}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !281, file: !282, line: 51, baseType: !147, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !281, file: !282, line: 54, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !281, file: !282, line: 55, baseType: !286, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !281, file: !282, line: 56, baseType: !286, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !281, file: !282, line: 57, baseType: !286, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !281, file: !282, line: 58, baseType: !286, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !281, file: !282, line: 59, baseType: !286, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !281, file: !282, line: 60, baseType: !286, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !281, file: !282, line: 61, baseType: !286, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !281, file: !282, line: 64, baseType: !286, size: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !281, file: !282, line: 65, baseType: !286, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !281, file: !282, line: 66, baseType: !286, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !281, file: !282, line: 68, baseType: !298, size: 64, offset: 768)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !282, line: 36, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !281, file: !282, line: 70, baseType: !301, size: 64, offset: 832)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !281, file: !282, line: 72, baseType: !147, size: 32, offset: 896)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !281, file: !282, line: 73, baseType: !147, size: 32, offset: 928)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !281, file: !282, line: 74, baseType: !305, size: 64, offset: 960)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !306, line: 152, baseType: !307)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!307 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !281, file: !282, line: 77, baseType: !309, size: 16, offset: 1024)
!309 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !281, file: !282, line: 78, baseType: !311, size: 8, offset: 1040)
!311 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !281, file: !282, line: 79, baseType: !313, size: 8, offset: 1048)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 1)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !281, file: !282, line: 81, baseType: !317, size: 64, offset: 1088)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !282, line: 43, baseType: null)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !281, file: !282, line: 89, baseType: !320, size: 64, offset: 1152)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !306, line: 153, baseType: !307)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !281, file: !282, line: 91, baseType: !322, size: 64, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !282, line: 37, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !281, file: !282, line: 92, baseType: !325, size: 64, offset: 1280)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !282, line: 38, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !281, file: !282, line: 93, baseType: !301, size: 64, offset: 1344)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !281, file: !282, line: 94, baseType: !146, size: 64, offset: 1408)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !281, file: !282, line: 95, baseType: !330, size: 64, offset: 1472)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !331, line: 70, baseType: !145)
!331 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !281, file: !282, line: 96, baseType: !147, size: 32, offset: 1536)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !281, file: !282, line: 98, baseType: !25, size: 160, offset: 1568)
!334 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!335 = !DISubprogram(name: "abort", scope: !336, file: !336, line: 598, type: !337, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!336 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!337 = !DISubroutineType(types: !338)
!338 = !{null}
!339 = !DISubprogram(name: "gt_str_new", scope: !186, file: !186, line: 30, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubroutineType(types: !341)
!341 = !{!184}
!342 = distinct !DISubprogram(name: "parse_options", scope: !2, file: !2, line: 245, type: !343, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !347)
!343 = !DISubroutineType(types: !344)
!344 = !{!189, !345, !346, !147, !160, !162}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!347 = !{!348, !349, !350, !351, !352, !353, !357, !361, !362, !363}
!348 = !DILocalVariable(name: "pmopt", arg: 1, scope: !342, file: !2, line: 245, type: !345)
!349 = !DILocalVariable(name: "parsed_args", arg: 2, scope: !342, file: !2, line: 246, type: !346)
!350 = !DILocalVariable(name: "argc", arg: 3, scope: !342, file: !2, line: 247, type: !147)
!351 = !DILocalVariable(name: "argv", arg: 4, scope: !342, file: !2, line: 247, type: !160)
!352 = !DILocalVariable(name: "err", arg: 5, scope: !342, file: !2, line: 247, type: !162)
!353 = !DILocalVariable(name: "op", scope: !342, file: !2, line: 249, type: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOptionParser", file: !129, line: 27, baseType: !356)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOptionParser", file: !129, line: 27, flags: DIFlagFwdDecl)
!357 = !DILocalVariable(name: "option", scope: !342, file: !2, line: 250, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtOption", file: !129, line: 33, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtOption", file: !129, line: 33, flags: DIFlagFwdDecl)
!361 = !DILocalVariable(name: "optionimm", scope: !342, file: !2, line: 250, type: !358)
!362 = !DILocalVariable(name: "optionbck", scope: !342, file: !2, line: 250, type: !358)
!363 = !DILocalVariable(name: "oprval", scope: !342, file: !2, line: 251, type: !189)
!364 = !DILocation(line: 245, column: 46, scope: !342)
!365 = !DILocation(line: 246, column: 36, scope: !342)
!366 = !DILocation(line: 247, column: 35, scope: !342)
!367 = !DILocation(line: 247, column: 54, scope: !342)
!368 = !DILocation(line: 247, column: 69, scope: !342)
!369 = !DILocation(line: 249, column: 3, scope: !342)
!370 = !DILocation(line: 249, column: 19, scope: !342)
!371 = !DILocation(line: 250, column: 3, scope: !342)
!372 = !DILocation(line: 250, column: 13, scope: !342)
!373 = !DILocation(line: 250, column: 22, scope: !342)
!374 = !DILocation(line: 250, column: 34, scope: !342)
!375 = !DILocation(line: 251, column: 3, scope: !342)
!376 = !DILocation(line: 251, column: 12, scope: !342)
!377 = !DILocation(line: 253, column: 3, scope: !342)
!378 = !DILocation(line: 253, column: 3, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !2, line: 253, column: 3)
!380 = distinct !DILexicalBlock(scope: !342, file: !2, line: 253, column: 3)
!381 = !DILocation(line: 253, column: 3, scope: !380)
!382 = !DILocation(line: 253, column: 3, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !2, line: 253, column: 3)
!384 = !DILocation(line: 254, column: 8, scope: !342)
!385 = !DILocation(line: 254, column: 6, scope: !342)
!386 = !DILocation(line: 256, column: 37, scope: !342)
!387 = !DILocation(line: 256, column: 3, scope: !342)
!388 = !DILocation(line: 259, column: 29, scope: !342)
!389 = !DILocation(line: 259, column: 36, scope: !342)
!390 = !DILocation(line: 258, column: 12, scope: !342)
!391 = !DILocation(line: 258, column: 10, scope: !342)
!392 = !DILocation(line: 261, column: 31, scope: !342)
!393 = !DILocation(line: 261, column: 35, scope: !342)
!394 = !DILocation(line: 261, column: 3, scope: !342)
!395 = !DILocation(line: 263, column: 30, scope: !342)
!396 = !DILocation(line: 263, column: 37, scope: !342)
!397 = !DILocation(line: 262, column: 12, scope: !342)
!398 = !DILocation(line: 262, column: 10, scope: !342)
!399 = !DILocation(line: 265, column: 31, scope: !342)
!400 = !DILocation(line: 265, column: 35, scope: !342)
!401 = !DILocation(line: 265, column: 3, scope: !342)
!402 = !DILocation(line: 268, column: 30, scope: !342)
!403 = !DILocation(line: 268, column: 37, scope: !342)
!404 = !DILocation(line: 267, column: 12, scope: !342)
!405 = !DILocation(line: 267, column: 10, scope: !342)
!406 = !DILocation(line: 270, column: 31, scope: !342)
!407 = !DILocation(line: 270, column: 35, scope: !342)
!408 = !DILocation(line: 270, column: 3, scope: !342)
!409 = !DILocation(line: 273, column: 30, scope: !342)
!410 = !DILocation(line: 273, column: 37, scope: !342)
!411 = !DILocation(line: 272, column: 12, scope: !342)
!412 = !DILocation(line: 272, column: 10, scope: !342)
!413 = !DILocation(line: 275, column: 31, scope: !342)
!414 = !DILocation(line: 275, column: 35, scope: !342)
!415 = !DILocation(line: 275, column: 3, scope: !342)
!416 = !DILocation(line: 278, column: 32, scope: !342)
!417 = !DILocation(line: 278, column: 39, scope: !342)
!418 = !DILocation(line: 277, column: 15, scope: !342)
!419 = !DILocation(line: 277, column: 13, scope: !342)
!420 = !DILocation(line: 280, column: 31, scope: !342)
!421 = !DILocation(line: 280, column: 35, scope: !342)
!422 = !DILocation(line: 280, column: 3, scope: !342)
!423 = !DILocation(line: 283, column: 32, scope: !342)
!424 = !DILocation(line: 283, column: 39, scope: !342)
!425 = !DILocation(line: 282, column: 15, scope: !342)
!426 = !DILocation(line: 282, column: 13, scope: !342)
!427 = !DILocation(line: 285, column: 31, scope: !342)
!428 = !DILocation(line: 285, column: 35, scope: !342)
!429 = !DILocation(line: 285, column: 3, scope: !342)
!430 = !DILocation(line: 289, column: 30, scope: !342)
!431 = !DILocation(line: 289, column: 37, scope: !342)
!432 = !DILocation(line: 287, column: 12, scope: !342)
!433 = !DILocation(line: 287, column: 10, scope: !342)
!434 = !DILocation(line: 290, column: 31, scope: !342)
!435 = !DILocation(line: 290, column: 35, scope: !342)
!436 = !DILocation(line: 290, column: 3, scope: !342)
!437 = !DILocation(line: 291, column: 26, scope: !342)
!438 = !DILocation(line: 291, column: 3, scope: !342)
!439 = !DILocation(line: 293, column: 35, scope: !342)
!440 = !DILocation(line: 293, column: 39, scope: !342)
!441 = !DILocation(line: 293, column: 52, scope: !342)
!442 = !DILocation(line: 293, column: 58, scope: !342)
!443 = !DILocation(line: 294, column: 48, scope: !342)
!444 = !DILocation(line: 293, column: 12, scope: !342)
!445 = !DILocation(line: 293, column: 10, scope: !342)
!446 = !DILocation(line: 295, column: 27, scope: !342)
!447 = !DILocation(line: 295, column: 3, scope: !342)
!448 = !DILocation(line: 297, column: 10, scope: !342)
!449 = !DILocation(line: 298, column: 1, scope: !342)
!450 = !DILocation(line: 297, column: 3, scope: !342)
!451 = distinct !DISubprogram(name: "callpatternmatcher", scope: !2, file: !2, line: 67, type: !452, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !456)
!452 = !DISubroutineType(types: !453)
!453 = !{!147, !454, !162}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!456 = !{!457, !458, !459, !553, !554, !555, !556, !557, !558, !561, !562, !567, !568, !573, !574, !581, !586, !594, !595, !599, !600, !601, !602, !603, !606, !610}
!457 = !DILocalVariable(name: "pmopt", arg: 1, scope: !451, file: !2, line: 67, type: !454)
!458 = !DILocalVariable(name: "err", arg: 2, scope: !451, file: !2, line: 67, type: !162)
!459 = !DILocalVariable(name: "suffixarray", scope: !451, file: !2, line: 69, type: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "Suffixarray", file: !461, line: 88, baseType: !462)
!461 = !DIFile(filename: "src/match/sarr-def.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "680305296307322e88a803109233df34")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 63, size: 2048, elements: !463)
!463 = !{!464, !469, !476, !477, !484, !485, !487, !488, !489, !493, !496, !505, !506, !507, !512, !524, !534, !543, !544}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "encseq", scope: !462, file: !461, line: 65, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseq", file: !467, line: 48, baseType: !468)
!467 = !DIFile(filename: "src/core/encseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "bab4512cadee996edd2995020539d931")
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseq", file: !467, line: 48, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "numoflargelcpvalues", scope: !462, file: !461, line: 66, baseType: !470, size: 128, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "Definedunsignedlong", file: !471, line: 28, baseType: !472)
!471 = !DIFile(filename: "src/core/defined-types.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e7a1f5519c7b299f300cac0dd118ae65")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 24, size: 128, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !472, file: !471, line: 26, baseType: !171, size: 8)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "valueunsignedlong", scope: !472, file: !471, line: 27, baseType: !143, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "maxbranchdepth", scope: !462, file: !461, line: 67, baseType: !470, size: 128, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "averagelcp", scope: !462, file: !461, line: 68, baseType: !478, size: 128, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "Defineddouble", file: !471, line: 40, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 36, size: 128, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "defined", scope: !479, file: !471, line: 38, baseType: !171, size: 8)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "valuedouble", scope: !479, file: !471, line: 39, baseType: !483, size: 64, offset: 64)
!483 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "longest", scope: !462, file: !461, line: 69, baseType: !470, size: 128, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "readmode", scope: !462, file: !461, line: 70, baseType: !486, size: 32, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtReadmode", file: !136, line: 32, baseType: !135)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mirroredencseq", scope: !462, file: !461, line: 71, baseType: !171, size: 8, offset: 608)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "numberofallsortedsuffixes", scope: !462, file: !461, line: 72, baseType: !143, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "suftab", scope: !462, file: !461, line: 74, baseType: !490, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ESASuffixptr", file: !461, line: 59, baseType: !143)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lcptab", scope: !462, file: !461, line: 75, baseType: !494, size: 64, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "llvtab", scope: !462, file: !461, line: 76, baseType: !497, size: 64, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "Largelcpvalue", file: !500, line: 30, baseType: !501)
!500 = !DIFile(filename: "src/match/lcpoverflow.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fbf9328cf0deca32f53d590fbcd3426d")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 26, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !501, file: !500, line: 28, baseType: !143, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !501, file: !500, line: 29, baseType: !143, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "bwttab", scope: !462, file: !461, line: 77, baseType: !494, size: 64, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "prefixlength", scope: !462, file: !461, line: 78, baseType: !130, size: 32, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "bcktab", scope: !462, file: !461, line: 79, baseType: !508, size: 64, offset: 1024)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBcktab", file: !510, line: 49, baseType: !511)
!510 = !DIFile(filename: "src/match/bcktab.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1e275b447e1ba6b734897fa227cc90a3")
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBcktab", file: !510, line: 49, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "suftabstream_uint32_t", scope: !462, file: !461, line: 82, baseType: !513, size: 192, offset: 1088)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_uint32_t", file: !461, line: 49, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 49, size: 192, elements: !515)
!515 = !{!516, !517, !518, !523}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !514, file: !461, line: 49, baseType: !130, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !514, file: !461, line: 49, baseType: !130, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !514, file: !461, line: 49, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !521, line: 26, baseType: !522)
!521 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !306, line: 42, baseType: !130)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !514, file: !461, line: 49, baseType: !278, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "suftabstream_GtUword", scope: !462, file: !461, line: 84, baseType: !525, size: 192, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_GtUword", file: !526, line: 61, baseType: !527)
!526 = !DIFile(filename: "src/match/declare-readfunc.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "efed3a700136885dfbda6df2e18c991e")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 61, size: 192, elements: !528)
!528 = !{!529, !530, !531, !533}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !527, file: !526, line: 61, baseType: !130, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !527, file: !526, line: 61, baseType: !130, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !527, file: !526, line: 61, baseType: !532, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !527, file: !526, line: 61, baseType: !278, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "bwttabstream", scope: !462, file: !461, line: 85, baseType: !535, size: 192, offset: 1472)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_GtUchar", file: !461, line: 53, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 53, size: 192, elements: !537)
!537 = !{!538, !539, !540, !542}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !536, file: !461, line: 53, baseType: !130, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !536, file: !461, line: 53, baseType: !130, size: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !536, file: !461, line: 53, baseType: !541, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !536, file: !461, line: 53, baseType: !278, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "lcptabstream", scope: !462, file: !461, line: 86, baseType: !535, size: 192, offset: 1664)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "llvtabstream", scope: !462, file: !461, line: 87, baseType: !545, size: 192, offset: 1856)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBufferedfile_Largelcpvalue", file: !461, line: 56, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 56, size: 192, elements: !547)
!547 = !{!548, !549, !550, !552}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nextfree", scope: !546, file: !461, line: 56, baseType: !130, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nextread", scope: !546, file: !461, line: 56, baseType: !130, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bufferedfilespace", scope: !546, file: !461, line: 56, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !546, file: !461, line: 56, baseType: !278, size: 64, offset: 128)
!553 = !DILocalVariable(name: "totallength", scope: !451, file: !2, line: 70, type: !143)
!554 = !DILocalVariable(name: "haserr", scope: !451, file: !2, line: 71, type: !171)
!555 = !DILocalVariable(name: "pptr", scope: !451, file: !2, line: 72, type: !494)
!556 = !DILocalVariable(name: "patternlen", scope: !451, file: !2, line: 73, type: !143)
!557 = !DILocalVariable(name: "demand", scope: !451, file: !2, line: 74, type: !130)
!558 = !DILocalVariable(name: "trial", scope: !559, file: !2, line: 93, type: !143)
!559 = distinct !DILexicalBlock(scope: !560, file: !2, line: 92, column: 3)
!560 = distinct !DILexicalBlock(scope: !451, file: !2, line: 91, column: 7)
!561 = !DILocalVariable(name: "dbstart", scope: !559, file: !2, line: 94, type: !143)
!562 = !DILocalVariable(name: "epi", scope: !559, file: !2, line: 95, type: !563)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "Enumpatterniterator", file: !565, line: 21, baseType: !566)
!565 = !DIFile(filename: "src/match/enum-patt.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "beb9c8cb58b09ab94d8a76d2b5c2c157")
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "Enumpatterniterator", file: !565, line: 21, flags: DIFlagFwdDecl)
!567 = !DILocalVariable(name: "firstspecial", scope: !559, file: !2, line: 96, type: !130)
!568 = !DILocalVariable(name: "mmsibck", scope: !559, file: !2, line: 97, type: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtMMsearchiterator", file: !571, line: 27, baseType: !572)
!571 = !DIFile(filename: "src/match/esa-mmsearch.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7cb9f50b1f4497c3f26d86f68f33e1b7")
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtMMsearchiterator", file: !571, line: 27, flags: DIFlagFwdDecl)
!573 = !DILocalVariable(name: "mmsiimm", scope: !559, file: !2, line: 97, type: !569)
!574 = !DILocalVariable(name: "bucketspec", scope: !559, file: !2, line: 98, type: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBucketspecification", file: !510, line: 41, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 36, size: 192, elements: !577)
!577 = !{!578, !579, !580}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !576, file: !510, line: 38, baseType: !143, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nonspecialsinbucket", scope: !576, file: !510, line: 39, baseType: !143, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "specialsinbucket", scope: !576, file: !510, line: 40, baseType: !143, size: 64, offset: 128)
!581 = !DILocalVariable(name: "bucketenumerator", scope: !559, file: !2, line: 99, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bucketenumerator", file: !584, line: 28, baseType: !585)
!584 = !DIFile(filename: "src/match/cutendpfx.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1d40ba9cfb9c3cde90e8a4968c6fa262")
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "Bucketenumerator", file: !584, line: 28, flags: DIFlagFwdDecl)
!586 = !DILocalVariable(name: "itv", scope: !559, file: !2, line: 100, type: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "Lcpinterval", file: !588, line: 28, baseType: !589)
!588 = !DIFile(filename: "src/match/lcpinterval.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f84ce0d1ab0e926c629db5b5fc519a43")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 23, size: 192, elements: !590)
!590 = !{!591, !592, !593}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !589, file: !588, line: 25, baseType: !143, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !589, file: !588, line: 26, baseType: !143, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !589, file: !588, line: 27, baseType: !143, size: 64, offset: 128)
!594 = !DILocalVariable(name: "refstart", scope: !559, file: !2, line: 101, type: !143)
!595 = !DILocalVariable(name: "esr1", scope: !559, file: !2, line: 102, type: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtEncseqReader", file: !467, line: 65, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtEncseqReader", file: !467, line: 65, flags: DIFlagFwdDecl)
!599 = !DILocalVariable(name: "esr2", scope: !559, file: !2, line: 102, type: !596)
!600 = !DILocalVariable(name: "retval", scope: !559, file: !2, line: 103, type: !147)
!601 = !DILocalVariable(name: "idx", scope: !559, file: !2, line: 104, type: !143)
!602 = !DILocalVariable(name: "maxlcp", scope: !559, file: !2, line: 104, type: !143)
!603 = !DILocalVariable(name: "code", scope: !559, file: !2, line: 105, type: !604)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCodetype", file: !605, line: 26, baseType: !143)
!605 = !DIFile(filename: "src/core/codetype.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d0a02833f58b7a4740e0136da08ce0e1")
!606 = !DILocalVariable(name: "multimappower", scope: !559, file: !2, line: 106, type: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!610 = !DILocalVariable(name: "alpha", scope: !559, file: !2, line: 107, type: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtAlphabet", file: !614, line: 32, baseType: !615)
!614 = !DIFile(filename: "src/core/alphabet_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0b48240ce57ca6598f5548b5c9cf52e4")
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtAlphabet", file: !614, line: 32, flags: DIFlagFwdDecl)
!616 = !DILocation(line: 67, column: 52, scope: !451)
!617 = !DILocation(line: 67, column: 68, scope: !451)
!618 = !DILocation(line: 69, column: 3, scope: !451)
!619 = !DILocation(line: 69, column: 15, scope: !451)
!620 = !DILocation(line: 70, column: 3, scope: !451)
!621 = !DILocation(line: 70, column: 11, scope: !451)
!622 = !{!221, !221, i64 0}
!623 = !DILocation(line: 71, column: 3, scope: !451)
!624 = !DILocation(line: 71, column: 8, scope: !451)
!625 = !DILocation(line: 72, column: 3, scope: !451)
!626 = !DILocation(line: 72, column: 18, scope: !451)
!627 = !DILocation(line: 73, column: 3, scope: !451)
!628 = !DILocation(line: 73, column: 11, scope: !451)
!629 = !DILocation(line: 74, column: 3, scope: !451)
!630 = !DILocation(line: 74, column: 16, scope: !451)
!631 = !DILocation(line: 76, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !451, file: !2, line: 76, column: 7)
!633 = !DILocation(line: 76, column: 14, scope: !632)
!634 = !{!220, !202, i64 25}
!635 = !DILocation(line: 76, column: 7, scope: !451)
!636 = !DILocation(line: 78, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !2, line: 77, column: 3)
!638 = !DILocation(line: 79, column: 3, scope: !637)
!639 = !DILocation(line: 81, column: 22, scope: !640)
!640 = distinct !DILexicalBlock(scope: !451, file: !2, line: 80, column: 7)
!641 = !DILocation(line: 82, column: 33, scope: !640)
!642 = !DILocation(line: 82, column: 40, scope: !640)
!643 = !DILocation(line: 82, column: 22, scope: !640)
!644 = !DILocation(line: 84, column: 22, scope: !640)
!645 = !DILocation(line: 80, column: 7, scope: !640)
!646 = !DILocation(line: 84, column: 27, scope: !640)
!647 = !DILocation(line: 80, column: 7, scope: !451)
!648 = !DILocation(line: 86, column: 12, scope: !649)
!649 = distinct !DILexicalBlock(scope: !640, file: !2, line: 85, column: 3)
!650 = !DILocation(line: 87, column: 3, scope: !649)
!651 = !DILocation(line: 89, column: 54, scope: !652)
!652 = distinct !DILexicalBlock(scope: !640, file: !2, line: 88, column: 3)
!653 = !{!654, !196, i64 0}
!654 = !{!"", !196, i64 0, !655, i64 8, !655, i64 24, !656, i64 40, !655, i64 56, !192, i64 72, !202, i64 76, !221, i64 80, !196, i64 88, !196, i64 96, !196, i64 104, !196, i64 112, !191, i64 120, !196, i64 128, !658, i64 136, !658, i64 160, !658, i64 184, !658, i64 208, !658, i64 232}
!655 = !{!"", !202, i64 0, !221, i64 8}
!656 = !{!"", !202, i64 0, !657, i64 8}
!657 = !{!"double", !192, i64 0}
!658 = !{!"", !191, i64 0, !191, i64 4, !196, i64 8, !196, i64 16}
!659 = !DILocation(line: 89, column: 19, scope: !652)
!660 = !DILocation(line: 89, column: 17, scope: !652)
!661 = !DILocation(line: 91, column: 8, scope: !560)
!662 = !DILocation(line: 91, column: 7, scope: !451)
!663 = !DILocation(line: 93, column: 5, scope: !559)
!664 = !DILocation(line: 93, column: 13, scope: !559)
!665 = !DILocation(line: 94, column: 5, scope: !559)
!666 = !DILocation(line: 94, column: 13, scope: !559)
!667 = !DILocation(line: 95, column: 5, scope: !559)
!668 = !DILocation(line: 95, column: 26, scope: !559)
!669 = !DILocation(line: 96, column: 5, scope: !559)
!670 = !DILocation(line: 96, column: 28, scope: !559)
!671 = !DILocation(line: 97, column: 5, scope: !559)
!672 = !DILocation(line: 97, column: 25, scope: !559)
!673 = !DILocation(line: 97, column: 42, scope: !559)
!674 = !DILocation(line: 98, column: 5, scope: !559)
!675 = !DILocation(line: 98, column: 27, scope: !559)
!676 = !DILocation(line: 99, column: 5, scope: !559)
!677 = !DILocation(line: 99, column: 23, scope: !559)
!678 = !DILocation(line: 100, column: 5, scope: !559)
!679 = !DILocation(line: 100, column: 17, scope: !559)
!680 = !DILocation(line: 101, column: 5, scope: !559)
!681 = !DILocation(line: 101, column: 13, scope: !559)
!682 = !DILocation(line: 102, column: 5, scope: !559)
!683 = !DILocation(line: 102, column: 21, scope: !559)
!684 = !DILocation(line: 102, column: 28, scope: !559)
!685 = !DILocation(line: 103, column: 5, scope: !559)
!686 = !DILocation(line: 103, column: 19, scope: !559)
!687 = !DILocation(line: 104, column: 5, scope: !559)
!688 = !DILocation(line: 104, column: 13, scope: !559)
!689 = !DILocation(line: 104, column: 18, scope: !559)
!690 = !DILocation(line: 105, column: 5, scope: !559)
!691 = !DILocation(line: 105, column: 16, scope: !559)
!692 = !DILocation(line: 106, column: 5, scope: !559)
!693 = !DILocation(line: 106, column: 24, scope: !559)
!694 = !DILocation(line: 107, column: 5, scope: !559)
!695 = !DILocation(line: 107, column: 23, scope: !559)
!696 = !DILocation(line: 109, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !559, file: !2, line: 109, column: 9)
!698 = !DILocation(line: 109, column: 16, scope: !697)
!699 = !DILocation(line: 109, column: 9, scope: !559)
!700 = !DILocation(line: 111, column: 59, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !2, line: 110, column: 5)
!702 = !{!654, !196, i64 128}
!703 = !DILocation(line: 111, column: 23, scope: !701)
!704 = !DILocation(line: 111, column: 21, scope: !701)
!705 = !DILocation(line: 112, column: 5, scope: !701)
!706 = !DILocation(line: 114, column: 21, scope: !707)
!707 = distinct !DILexicalBlock(scope: !697, file: !2, line: 113, column: 5)
!708 = !DILocation(line: 116, column: 37, scope: !559)
!709 = !DILocation(line: 116, column: 44, scope: !559)
!710 = !{!220, !221, i64 0}
!711 = !DILocation(line: 117, column: 37, scope: !559)
!712 = !DILocation(line: 117, column: 44, scope: !559)
!713 = !{!220, !221, i64 8}
!714 = !DILocation(line: 118, column: 49, scope: !559)
!715 = !DILocation(line: 119, column: 37, scope: !559)
!716 = !DILocation(line: 116, column: 11, scope: !559)
!717 = !DILocation(line: 116, column: 9, scope: !559)
!718 = !DILocation(line: 120, column: 62, scope: !559)
!719 = !DILocation(line: 121, column: 62, scope: !559)
!720 = !{!654, !192, i64 72}
!721 = !DILocation(line: 120, column: 12, scope: !559)
!722 = !DILocation(line: 120, column: 10, scope: !559)
!723 = !DILocation(line: 122, column: 62, scope: !559)
!724 = !DILocation(line: 123, column: 62, scope: !559)
!725 = !DILocation(line: 122, column: 12, scope: !559)
!726 = !DILocation(line: 122, column: 10, scope: !559)
!727 = !DILocation(line: 124, column: 44, scope: !559)
!728 = !DILocation(line: 124, column: 13, scope: !559)
!729 = !DILocation(line: 124, column: 11, scope: !559)
!730 = !DILocation(line: 125, column: 16, scope: !731)
!731 = distinct !DILexicalBlock(scope: !559, file: !2, line: 125, column: 5)
!732 = !DILocation(line: 125, column: 10, scope: !731)
!733 = !DILocation(line: 125, column: 21, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !2, line: 125, column: 5)
!735 = !DILocation(line: 125, column: 29, scope: !734)
!736 = !DILocation(line: 125, column: 36, scope: !734)
!737 = !{!220, !221, i64 16}
!738 = !DILocation(line: 125, column: 27, scope: !734)
!739 = !DILocation(line: 125, column: 5, scope: !731)
!740 = !DILocation(line: 127, column: 53, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !2, line: 126, column: 5)
!742 = !DILocation(line: 127, column: 14, scope: !741)
!743 = !DILocation(line: 127, column: 12, scope: !741)
!744 = !DILocation(line: 128, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !2, line: 128, column: 11)
!746 = !DILocation(line: 128, column: 18, scope: !745)
!747 = !{!220, !202, i64 24}
!748 = !DILocation(line: 128, column: 11, scope: !741)
!749 = !DILocation(line: 130, column: 38, scope: !750)
!750 = distinct !DILexicalBlock(scope: !745, file: !2, line: 129, column: 7)
!751 = !DILocation(line: 130, column: 44, scope: !750)
!752 = !DILocation(line: 130, column: 51, scope: !750)
!753 = !DILocation(line: 130, column: 56, scope: !750)
!754 = !DILocation(line: 130, column: 9, scope: !750)
!755 = !DILocation(line: 131, column: 9, scope: !750)
!756 = !DILocation(line: 132, column: 7, scope: !750)
!757 = !DILocation(line: 133, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !741, file: !2, line: 133, column: 11)
!759 = !DILocation(line: 133, column: 18, scope: !758)
!760 = !DILocation(line: 133, column: 11, scope: !741)
!761 = !DILocation(line: 135, column: 13, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 135, column: 13)
!763 = distinct !DILexicalBlock(scope: !758, file: !2, line: 134, column: 7)
!764 = !DILocation(line: 135, column: 48, scope: !762)
!765 = !{!654, !191, i64 120}
!766 = !DILocation(line: 135, column: 26, scope: !762)
!767 = !DILocation(line: 135, column: 24, scope: !762)
!768 = !DILocation(line: 135, column: 13, scope: !763)
!769 = !DILocation(line: 137, column: 19, scope: !770)
!770 = distinct !DILexicalBlock(scope: !762, file: !2, line: 136, column: 9)
!771 = !DILocation(line: 139, column: 50, scope: !770)
!772 = !DILocation(line: 140, column: 47, scope: !770)
!773 = !DILocation(line: 141, column: 35, scope: !770)
!774 = !DILocation(line: 142, column: 50, scope: !770)
!775 = !DILocation(line: 142, column: 35, scope: !770)
!776 = !DILocation(line: 139, column: 15, scope: !770)
!777 = !DILocation(line: 139, column: 13, scope: !770)
!778 = !DILocation(line: 143, column: 22, scope: !770)
!779 = !DILocation(line: 143, column: 20, scope: !770)
!780 = !DILocation(line: 144, column: 11, scope: !770)
!781 = !DILocation(line: 144, column: 47, scope: !770)
!782 = !DILocation(line: 144, column: 18, scope: !770)
!783 = !DILocation(line: 146, column: 17, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 146, column: 17)
!785 = distinct !DILexicalBlock(scope: !770, file: !2, line: 145, column: 11)
!786 = !DILocation(line: 146, column: 29, scope: !784)
!787 = !DILocation(line: 146, column: 26, scope: !784)
!788 = !DILocation(line: 146, column: 17, scope: !785)
!789 = !DILocation(line: 148, column: 26, scope: !790)
!790 = distinct !DILexicalBlock(scope: !784, file: !2, line: 147, column: 13)
!791 = !{!654, !196, i64 88}
!792 = !{!793, !221, i64 8}
!793 = !{!"", !221, i64 0, !221, i64 8, !221, i64 16}
!794 = !DILocation(line: 148, column: 24, scope: !790)
!795 = !DILocation(line: 149, column: 13, scope: !790)
!796 = !DILocation(line: 151, column: 28, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !2, line: 151, column: 15)
!798 = distinct !DILexicalBlock(scope: !784, file: !2, line: 150, column: 13)
!799 = !DILocation(line: 151, column: 23, scope: !797)
!800 = !DILocation(line: 151, column: 20, scope: !797)
!801 = !DILocation(line: 151, column: 34, scope: !802)
!802 = distinct !DILexicalBlock(scope: !797, file: !2, line: 151, column: 15)
!803 = !DILocation(line: 151, column: 43, scope: !802)
!804 = !{!793, !221, i64 16}
!805 = !DILocation(line: 151, column: 37, scope: !802)
!806 = !DILocation(line: 151, column: 15, scope: !797)
!807 = !DILocation(line: 154, column: 53, scope: !808)
!808 = distinct !DILexicalBlock(scope: !802, file: !2, line: 152, column: 15)
!809 = !DILocation(line: 155, column: 53, scope: !808)
!810 = !DILocation(line: 159, column: 41, scope: !808)
!811 = !DILocation(line: 160, column: 41, scope: !808)
!812 = !DILocation(line: 161, column: 41, scope: !808)
!813 = !DILocation(line: 162, column: 41, scope: !808)
!814 = !DILocation(line: 163, column: 41, scope: !808)
!815 = !DILocation(line: 153, column: 26, scope: !808)
!816 = !DILocation(line: 153, column: 24, scope: !808)
!817 = !DILocation(line: 164, column: 17, scope: !808)
!818 = !DILocation(line: 164, column: 17, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 164, column: 17)
!820 = distinct !DILexicalBlock(scope: !808, file: !2, line: 164, column: 17)
!821 = !DILocation(line: 164, column: 17, scope: !820)
!822 = !DILocation(line: 164, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !2, line: 164, column: 17)
!824 = !DILocation(line: 165, column: 15, scope: !808)
!825 = !DILocation(line: 151, column: 53, scope: !802)
!826 = !DILocation(line: 151, column: 15, scope: !802)
!827 = distinct !{!827, !806, !828, !829}
!828 = !DILocation(line: 165, column: 15, scope: !797)
!829 = !{!"llvm.loop.mustprogress"}
!830 = distinct !{!830, !780, !831, !829}
!831 = !DILocation(line: 167, column: 11, scope: !770)
!832 = !DILocation(line: 168, column: 35, scope: !770)
!833 = !DILocation(line: 168, column: 11, scope: !770)
!834 = !DILocation(line: 169, column: 9, scope: !770)
!835 = !DILocation(line: 172, column: 37, scope: !836)
!836 = distinct !DILexicalBlock(scope: !762, file: !2, line: 170, column: 9)
!837 = !DILocation(line: 173, column: 49, scope: !836)
!838 = !DILocation(line: 174, column: 37, scope: !836)
!839 = !DILocation(line: 171, column: 26, scope: !836)
!840 = !DILocation(line: 171, column: 24, scope: !836)
!841 = !DILocation(line: 175, column: 11, scope: !836)
!842 = !DILocation(line: 175, column: 11, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !2, line: 175, column: 11)
!844 = distinct !DILexicalBlock(scope: !836, file: !2, line: 175, column: 11)
!845 = !DILocation(line: 175, column: 11, scope: !844)
!846 = !DILocation(line: 175, column: 11, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !2, line: 175, column: 11)
!848 = !DILocation(line: 177, column: 48, scope: !836)
!849 = !DILocation(line: 178, column: 36, scope: !836)
!850 = !DILocation(line: 176, column: 11, scope: !836)
!851 = !DILocation(line: 179, column: 26, scope: !852)
!852 = distinct !DILexicalBlock(scope: !836, file: !2, line: 179, column: 15)
!853 = !DILocation(line: 179, column: 46, scope: !852)
!854 = !DILocation(line: 179, column: 15, scope: !836)
!855 = !DILocation(line: 181, column: 21, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !2, line: 180, column: 11)
!857 = !DILocation(line: 182, column: 11, scope: !856)
!858 = !DILocation(line: 186, column: 52, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !2, line: 183, column: 11)
!860 = !DILocation(line: 187, column: 52, scope: !859)
!861 = !DILocation(line: 188, column: 51, scope: !859)
!862 = !{!793, !221, i64 0}
!863 = !DILocation(line: 189, column: 51, scope: !859)
!864 = !DILocation(line: 190, column: 53, scope: !859)
!865 = !DILocation(line: 189, column: 56, scope: !859)
!866 = !DILocation(line: 190, column: 72, scope: !859)
!867 = !DILocation(line: 191, column: 62, scope: !859)
!868 = !DILocation(line: 191, column: 40, scope: !859)
!869 = !DILocation(line: 192, column: 52, scope: !859)
!870 = !DILocation(line: 193, column: 40, scope: !859)
!871 = !DILocation(line: 194, column: 40, scope: !859)
!872 = !DILocation(line: 185, column: 17, scope: !859)
!873 = !DILocation(line: 185, column: 15, scope: !859)
!874 = !DILocation(line: 197, column: 7, scope: !763)
!875 = !DILocation(line: 198, column: 11, scope: !876)
!876 = distinct !DILexicalBlock(scope: !741, file: !2, line: 198, column: 11)
!877 = !DILocation(line: 198, column: 18, scope: !876)
!878 = !{!220, !202, i64 26}
!879 = !DILocation(line: 198, column: 11, scope: !741)
!880 = !DILocation(line: 201, column: 57, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !2, line: 199, column: 7)
!882 = !DILocation(line: 202, column: 57, scope: !881)
!883 = !DILocation(line: 204, column: 45, scope: !881)
!884 = !DILocation(line: 206, column: 57, scope: !881)
!885 = !DILocation(line: 207, column: 45, scope: !881)
!886 = !DILocation(line: 208, column: 45, scope: !881)
!887 = !DILocation(line: 200, column: 19, scope: !881)
!888 = !DILocation(line: 200, column: 17, scope: !881)
!889 = !DILocation(line: 209, column: 7, scope: !881)
!890 = !DILocation(line: 210, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !741, file: !2, line: 210, column: 11)
!892 = !DILocation(line: 210, column: 18, scope: !891)
!893 = !DILocation(line: 210, column: 28, scope: !891)
!894 = !DILocation(line: 210, column: 31, scope: !891)
!895 = !DILocation(line: 210, column: 38, scope: !891)
!896 = !DILocation(line: 210, column: 11, scope: !741)
!897 = !DILocation(line: 212, column: 22, scope: !898)
!898 = distinct !DILexicalBlock(scope: !891, file: !2, line: 211, column: 7)
!899 = !DILocation(line: 212, column: 30, scope: !898)
!900 = !DILocation(line: 212, column: 9, scope: !898)
!901 = !DILocation(line: 213, column: 7, scope: !898)
!902 = !DILocation(line: 214, column: 11, scope: !903)
!903 = distinct !DILexicalBlock(scope: !741, file: !2, line: 214, column: 11)
!904 = !DILocation(line: 214, column: 18, scope: !903)
!905 = !DILocation(line: 214, column: 28, scope: !903)
!906 = !DILocation(line: 214, column: 31, scope: !903)
!907 = !DILocation(line: 214, column: 39, scope: !903)
!908 = !DILocation(line: 214, column: 11, scope: !741)
!909 = !DILocation(line: 216, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !903, file: !2, line: 215, column: 7)
!911 = !DILocation(line: 216, column: 50, scope: !910)
!912 = !DILocation(line: 216, column: 16, scope: !910)
!913 = distinct !{!913, !909, !914, !829}
!914 = !DILocation(line: 219, column: 9, scope: !910)
!915 = !DILocation(line: 220, column: 36, scope: !910)
!916 = !DILocation(line: 220, column: 9, scope: !910)
!917 = !DILocation(line: 221, column: 17, scope: !910)
!918 = !DILocation(line: 222, column: 7, scope: !910)
!919 = !DILocation(line: 223, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !741, file: !2, line: 223, column: 11)
!921 = !DILocation(line: 223, column: 18, scope: !920)
!922 = !DILocation(line: 223, column: 11, scope: !741)
!923 = !DILocation(line: 225, column: 9, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !2, line: 224, column: 7)
!925 = !DILocation(line: 225, column: 50, scope: !924)
!926 = !DILocation(line: 225, column: 16, scope: !924)
!927 = distinct !{!927, !923, !928, !829}
!928 = !DILocation(line: 228, column: 9, scope: !924)
!929 = !DILocation(line: 229, column: 36, scope: !924)
!930 = !DILocation(line: 229, column: 9, scope: !924)
!931 = !DILocation(line: 230, column: 17, scope: !924)
!932 = !DILocation(line: 231, column: 7, scope: !924)
!933 = !DILocation(line: 232, column: 5, scope: !741)
!934 = !DILocation(line: 125, column: 55, scope: !734)
!935 = !DILocation(line: 125, column: 5, scope: !734)
!936 = distinct !{!936, !739, !937, !829}
!937 = !DILocation(line: 232, column: 5, scope: !731)
!938 = !DILocation(line: 233, column: 29, scope: !559)
!939 = !DILocation(line: 233, column: 5, scope: !559)
!940 = !DILocation(line: 234, column: 29, scope: !559)
!941 = !DILocation(line: 234, column: 5, scope: !559)
!942 = !DILocation(line: 235, column: 9, scope: !943)
!943 = distinct !DILexicalBlock(scope: !559, file: !2, line: 235, column: 9)
!944 = !DILocation(line: 235, column: 16, scope: !943)
!945 = !DILocation(line: 235, column: 9, scope: !559)
!946 = !DILocation(line: 237, column: 34, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !2, line: 236, column: 5)
!948 = !DILocation(line: 237, column: 7, scope: !947)
!949 = !DILocation(line: 238, column: 5, scope: !947)
!950 = !DILocation(line: 239, column: 32, scope: !559)
!951 = !DILocation(line: 239, column: 5, scope: !559)
!952 = !DILocation(line: 240, column: 3, scope: !560)
!953 = !DILocation(line: 240, column: 3, scope: !559)
!954 = !DILocation(line: 241, column: 3, scope: !451)
!955 = !DILocation(line: 242, column: 10, scope: !451)
!956 = !DILocation(line: 243, column: 1, scope: !451)
!957 = !DILocation(line: 242, column: 3, scope: !451)
!958 = !DISubprogram(name: "gt_str_delete", scope: !186, file: !186, line: 90, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !184}
!961 = !DISubprogram(name: "gt_option_parser_new", scope: !129, file: !129, line: 63, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!354, !161, !161}
!964 = !DISubprogram(name: "gt_option_parser_set_mail_address", scope: !129, file: !129, line: 88, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !354, !161}
!967 = !DISubprogram(name: "gt_option_new_uword", scope: !129, file: !129, line: 227, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubroutineType(types: !969)
!969 = !{!358, !161, !161, !532, !143}
!970 = !DISubprogram(name: "gt_option_parser_add_option", scope: !129, file: !129, line: 66, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !354, !358}
!973 = !DISubprogram(name: "gt_option_new_bool", scope: !129, file: !129, line: 130, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubroutineType(types: !975)
!975 = !{!358, !161, !161, !976, !171}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!977 = !DISubprogram(name: "gt_option_new_string", scope: !129, file: !129, line: 291, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!978 = !DISubroutineType(types: !979)
!979 = !{!358, !161, !161, !184, !161}
!980 = !DISubprogram(name: "gt_option_is_mandatory", scope: !129, file: !129, line: 332, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !358}
!983 = !DISubprogram(name: "gt_option_parser_parse", scope: !129, file: !129, line: 117, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubroutineType(types: !985)
!985 = !{!189, !354, !346, !147, !160, !986, !162}
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtShowVersionFunc", file: !129, line: 50, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !161}
!990 = !DISubprogram(name: "gt_option_parser_delete", scope: !129, file: !129, line: 126, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !354}
!993 = !DISubprogram(name: "gt_mapsuffixarray", scope: !994, file: !994, line: 32, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DIFile(filename: "src/match/esa-map.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e2705cb0042862d9cfd6840d3b3154f4")
!995 = !DISubroutineType(types: !996)
!996 = !{!147, !997, !130, !161, !998, !162}
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtLogger", file: !1000, line: 26, baseType: !1001)
!1000 = !DIFile(filename: "src/core/logger_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "076ebb09feb7de7a97ee09fc11eb7134")
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtLogger", file: !1000, line: 26, flags: DIFlagFwdDecl)
!1002 = !DISubprogram(name: "gt_str_get", scope: !186, file: !186, line: 40, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!286, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!1007 = !DISubprogram(name: "gt_encseq_total_length", scope: !467, file: !467, line: 85, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!143, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!1012 = !DISubprogram(name: "gt_bcktab_multimappower", scope: !510, file: !510, line: 162, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!607, !1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!1017 = !DISubprogram(name: "gt_newenumpatterniterator", scope: !565, file: !565, line: 23, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!563, !143, !143, !1010, !162}
!1020 = !DISubprogram(name: "gt_encseq_create_reader_with_readmode", scope: !467, file: !467, line: 115, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!596, !1010, !486, !143}
!1023 = !DISubprogram(name: "gt_encseq_alphabet", scope: !467, file: !467, line: 188, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!1026, !1010}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!1027 = !DISubprogram(name: "gt_nextEnumpatterniterator", scope: !565, file: !565, line: 28, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!494, !532, !563}
!1030 = !DISubprogram(name: "gt_alphabet_decode_seq_to_fp", scope: !614, file: !614, line: 129, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !611, !278, !494, !143}
!1033 = !DISubprogram(name: "printf", scope: !274, file: !274, line: 356, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!147, !334, null}
!1036 = !DISubprogram(name: "gt_newbucketenumerator", scope: !584, file: !584, line: 30, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!582, !1015, !130, !494, !130}
!1039 = !DISubprogram(name: "gt_nextbucketenumerator", scope: !584, file: !584, line: 35, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!171, !1042, !582}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1043 = !DISubprogram(name: "gt_encseq_check_comparetwosuffixes", scope: !1044, file: !1044, line: 568, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1044 = !DIFile(filename: "src/core/encseq.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9251cd05615585d739ba548318e41174")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!147, !1010, !486, !532, !171, !171, !143, !143, !143, !596, !596}
!1047 = !DISubprogram(name: "gt_freebucketenumerator", scope: !584, file: !584, line: 38, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !582}
!1050 = distinct !DISubprogram(name: "qgram2code", scope: !1051, file: !1051, line: 25, type: !1052, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1055)
!1051 = !DIFile(filename: "src/match/qgram2code.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "48494b4fccd4f4134f6459662a4ab7b1")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!130, !1054, !607, !130, !494}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DILocalVariable(name: "code", arg: 1, scope: !1050, file: !1051, line: 25, type: !1054)
!1057 = !DILocalVariable(name: "multimappower", arg: 2, scope: !1050, file: !1051, line: 26, type: !607)
!1058 = !DILocalVariable(name: "qvalue", arg: 3, scope: !1050, file: !1051, line: 27, type: !130)
!1059 = !DILocalVariable(name: "qgram", arg: 4, scope: !1050, file: !1051, line: 28, type: !494)
!1060 = !DILocalVariable(name: "i", scope: !1050, file: !1051, line: 30, type: !147)
!1061 = !DILocalVariable(name: "tmpcode", scope: !1050, file: !1051, line: 31, type: !604)
!1062 = !DILocalVariable(name: "a", scope: !1050, file: !1051, line: 32, type: !148)
!1063 = !DILocation(line: 25, column: 51, scope: !1050)
!1064 = !DILocation(line: 26, column: 58, scope: !1050)
!1065 = !DILocation(line: 27, column: 52, scope: !1050)
!1066 = !DILocation(line: 28, column: 54, scope: !1050)
!1067 = !DILocation(line: 30, column: 3, scope: !1050)
!1068 = !DILocation(line: 30, column: 7, scope: !1050)
!1069 = !DILocation(line: 31, column: 3, scope: !1050)
!1070 = !DILocation(line: 31, column: 14, scope: !1050)
!1071 = !DILocation(line: 32, column: 3, scope: !1050)
!1072 = !DILocation(line: 32, column: 11, scope: !1050)
!1073 = !DILocation(line: 34, column: 17, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1050, file: !1051, line: 34, column: 3)
!1075 = !DILocation(line: 34, column: 23, scope: !1074)
!1076 = !DILocation(line: 34, column: 9, scope: !1074)
!1077 = !DILocation(line: 34, column: 8, scope: !1074)
!1078 = !DILocation(line: 34, column: 28, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !1051, line: 34, column: 3)
!1080 = !DILocation(line: 34, column: 29, scope: !1079)
!1081 = !DILocation(line: 34, column: 3, scope: !1074)
!1082 = !DILocation(line: 36, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !1051, line: 35, column: 3)
!1084 = !DILocation(line: 36, column: 15, scope: !1083)
!1085 = !DILocation(line: 36, column: 7, scope: !1083)
!1086 = !DILocation(line: 37, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !1051, line: 37, column: 9)
!1088 = !DILocation(line: 37, column: 9, scope: !1083)
!1089 = !DILocation(line: 39, column: 29, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !1051, line: 38, column: 5)
!1091 = !DILocation(line: 39, column: 7, scope: !1090)
!1092 = !DILocation(line: 41, column: 16, scope: !1083)
!1093 = !DILocation(line: 41, column: 30, scope: !1083)
!1094 = !DILocation(line: 41, column: 33, scope: !1083)
!1095 = !DILocation(line: 41, column: 13, scope: !1083)
!1096 = !DILocation(line: 42, column: 3, scope: !1083)
!1097 = !DILocation(line: 34, column: 35, scope: !1079)
!1098 = !DILocation(line: 34, column: 3, scope: !1079)
!1099 = distinct !{!1099, !1081, !1100, !829}
!1100 = !DILocation(line: 42, column: 3, scope: !1074)
!1101 = !DILocation(line: 43, column: 11, scope: !1050)
!1102 = !DILocation(line: 43, column: 4, scope: !1050)
!1103 = !DILocation(line: 43, column: 9, scope: !1050)
!1104 = !DILocation(line: 44, column: 10, scope: !1050)
!1105 = !DILocation(line: 44, column: 3, scope: !1050)
!1106 = !DILocation(line: 45, column: 1, scope: !1050)
!1107 = !DISubprogram(name: "gt_bcktab_calcboundaries", scope: !510, file: !510, line: 137, type: !1108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !1110, !1015, !604}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1111 = !DISubprogram(name: "gt_mmsearchiterator_new_complete_plain", scope: !571, file: !571, line: 29, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!569, !1010, !1114, !143, !143, !143, !486, !494, !143}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1116 = distinct !DISubprogram(name: "comparemmsis", scope: !2, file: !2, line: 40, type: !1117, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !126, retainedNodes: !1121)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !1119, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!1121 = !{!1122, !1123}
!1122 = !DILocalVariable(name: "mmsi1", arg: 1, scope: !1116, file: !2, line: 40, type: !1119)
!1123 = !DILocalVariable(name: "mmsi2", arg: 2, scope: !1116, file: !2, line: 41, type: !1119)
!1124 = !DILocation(line: 40, column: 52, scope: !1116)
!1125 = !DILocation(line: 41, column: 52, scope: !1116)
!1126 = !DILocation(line: 43, column: 35, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 43, column: 7)
!1128 = !DILocation(line: 43, column: 7, scope: !1127)
!1129 = !DILocation(line: 43, column: 7, scope: !1116)
!1130 = !DILocation(line: 45, column: 38, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 45, column: 9)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 44, column: 3)
!1133 = !DILocation(line: 45, column: 10, scope: !1131)
!1134 = !DILocation(line: 45, column: 9, scope: !1132)
!1135 = !DILocation(line: 47, column: 15, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 46, column: 5)
!1137 = !DILocation(line: 47, column: 7, scope: !1136)
!1138 = !DILocation(line: 48, column: 7, scope: !1136)
!1139 = !DILocation(line: 50, column: 3, scope: !1132)
!1140 = !DILocation(line: 52, column: 37, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 52, column: 9)
!1142 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 51, column: 3)
!1143 = !DILocation(line: 52, column: 9, scope: !1141)
!1144 = !DILocation(line: 52, column: 9, scope: !1142)
!1145 = !DILocation(line: 54, column: 15, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 53, column: 5)
!1147 = !DILocation(line: 54, column: 7, scope: !1146)
!1148 = !DILocation(line: 55, column: 7, scope: !1146)
!1149 = !DILocation(line: 57, column: 40, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 57, column: 9)
!1151 = !DILocation(line: 57, column: 46, scope: !1150)
!1152 = !DILocation(line: 57, column: 10, scope: !1150)
!1153 = !DILocation(line: 57, column: 9, scope: !1142)
!1154 = !DILocation(line: 59, column: 15, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 58, column: 5)
!1156 = !DILocation(line: 59, column: 7, scope: !1155)
!1157 = !DILocation(line: 60, column: 7, scope: !1155)
!1158 = !DILocation(line: 63, column: 1, scope: !1116)
!1159 = !DISubprogram(name: "gt_mmsearchiterator_next", scope: !571, file: !571, line: 39, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!171, !532, !569}
!1162 = !DISubprogram(name: "gt_mmsearchiterator_delete", scope: !571, file: !571, line: 46, type: !1163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !569}
!1165 = !DISubprogram(name: "gt_encseq_reader_delete", scope: !467, file: !467, line: 220, type: !1166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !596}
!1168 = !DISubprogram(name: "gt_showPatterndistribution", scope: !565, file: !565, line: 31, type: !1169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!1173 = !DISubprogram(name: "gt_freeEnumpatterniterator", scope: !565, file: !565, line: 33, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !563}
!1176 = !DISubprogram(name: "gt_freesuffixarray", scope: !994, file: !994, line: 24, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !997}
!1179 = !DISubprogram(name: "gt_mmsearchiterator_isempty", scope: !571, file: !571, line: 41, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!171, !1119}
!1182 = !DISubprogram(name: "exit", scope: !336, file: !336, line: 624, type: !1183, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !147}
!1185 = !DISubprogram(name: "gt_mmsearchiterator_identical", scope: !571, file: !571, line: 43, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!171, !1119, !1119}
