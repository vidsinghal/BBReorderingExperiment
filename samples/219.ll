; ModuleID = 'samples/219.bc'
source_filename = "src/match/tyr-search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tyrsearchinfo = type { ptr, ptr, ptr, ptr, i64, i32, i32, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !7
@__func__.gt_tyrsearch = private unnamed_addr constant [13 x i8] c"gt_tyrsearch\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [23 x i8] c"src/match/tyr-search.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [17 x i8] c"tyrindex != NULL\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [29 x i8] c"tyrsearchinfo->rcbuf != NULL\00", align 1, !dbg !28
@__func__.singleseqtyrsearch = private unnamed_addr constant [19 x i8] c"singleseqtyrsearch\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [13 x i8] c"offset < len\00", align 1, !dbg !38
@__func__.gt_containsspecialbytestring = private unnamed_addr constant [29 x i8] c"gt_containsspecialbytestring\00", align 1, !dbg !42
@.str.6 = private unnamed_addr constant [167 x i8] c"/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src/src/core/chardef_api.h\00", align 1, !dbg !45
@.str.7 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !50
@.str.8 = private unnamed_addr constant [6 x i8] c"%c%lu\00", align 1, !dbg !55
@stdout = external global ptr, align 8

; Function Attrs: nounwind uwtable
define ptr @gt_searchsinglemer(ptr noundef %qptr, ptr noundef %tyrindex, ptr noundef %tyrsearchinfo, ptr noundef %tyrbckinfo) #0 !dbg !75 {
entry:
  %qptr.addr = alloca ptr, align 8
  %tyrindex.addr = alloca ptr, align 8
  %tyrsearchinfo.addr = alloca ptr, align 8
  %tyrbckinfo.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %qptr, ptr %qptr.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %qptr.addr, metadata !110, metadata !DIExpression()), !dbg !119
  store ptr %tyrindex, ptr %tyrindex.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrindex.addr, metadata !111, metadata !DIExpression()), !dbg !120
  store ptr %tyrsearchinfo, ptr %tyrsearchinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrsearchinfo.addr, metadata !112, metadata !DIExpression()), !dbg !121
  store ptr %tyrbckinfo, ptr %tyrbckinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrbckinfo.addr, metadata !113, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #6, !dbg !123
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !114, metadata !DIExpression()), !dbg !124
  %0 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !125, !tbaa !115
  %bytecode = getelementptr inbounds %struct.Tyrsearchinfo, ptr %0, i32 0, i32 0, !dbg !126
  %1 = load ptr, ptr %bytecode, align 8, !dbg !126, !tbaa !127
  %2 = load ptr, ptr %qptr.addr, align 8, !dbg !131, !tbaa !115
  %3 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !132, !tbaa !115
  %mersize = getelementptr inbounds %struct.Tyrsearchinfo, ptr %3, i32 0, i32 4, !dbg !133
  %4 = load i64, ptr %mersize, align 8, !dbg !133, !tbaa !134
  call void @gt_encseq_plainseq2bytecode(ptr noundef %1, ptr noundef %2, i64 noundef %4), !dbg !135
  %5 = load ptr, ptr %tyrbckinfo.addr, align 8, !dbg !136, !tbaa !115
  %cmp = icmp eq ptr %5, null, !dbg !138
  br i1 %cmp, label %if.then, label %if.else, !dbg !139

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %tyrindex.addr, align 8, !dbg !140, !tbaa !115
  %7 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !142, !tbaa !115
  %bytecode1 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %7, i32 0, i32 0, !dbg !143
  %8 = load ptr, ptr %bytecode1, align 8, !dbg !143, !tbaa !127
  %9 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !144, !tbaa !115
  %mertable = getelementptr inbounds %struct.Tyrsearchinfo, ptr %9, i32 0, i32 2, !dbg !145
  %10 = load ptr, ptr %mertable, align 8, !dbg !145, !tbaa !146
  %11 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !147, !tbaa !115
  %lastmer = getelementptr inbounds %struct.Tyrsearchinfo, ptr %11, i32 0, i32 3, !dbg !148
  %12 = load ptr, ptr %lastmer, align 8, !dbg !148, !tbaa !149
  %call = call ptr @gt_tyrindex_binmersearch(ptr noundef %6, i64 noundef 0, ptr noundef %8, ptr noundef %10, ptr noundef %12), !dbg !150
  store ptr %call, ptr %result, align 8, !dbg !151, !tbaa !115
  br label %if.end, !dbg !152

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %tyrindex.addr, align 8, !dbg !153, !tbaa !115
  %14 = load ptr, ptr %tyrbckinfo.addr, align 8, !dbg !155, !tbaa !115
  %15 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !156, !tbaa !115
  %bytecode2 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %15, i32 0, i32 0, !dbg !157
  %16 = load ptr, ptr %bytecode2, align 8, !dbg !157, !tbaa !127
  %call3 = call ptr @gt_searchinbuckets(ptr noundef %13, ptr noundef %14, ptr noundef %16), !dbg !158
  store ptr %call3, ptr %result, align 8, !dbg !159, !tbaa !115
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %result, align 8, !dbg !160, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #6, !dbg !161
  ret ptr %17, !dbg !162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !163 void @gt_encseq_plainseq2bytecode(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !167 ptr @gt_tyrindex_binmersearch(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !170 ptr @gt_searchinbuckets(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gt_tyrsearch(ptr noundef %tyrindexname, ptr noundef %queryfilenames, i32 noundef %showmode, i32 noundef %searchstrand, i1 noundef zeroext %verbose, i1 noundef zeroext %performtest, ptr noundef %err) #0 !dbg !173 {
entry:
  %tyrindexname.addr = alloca ptr, align 8
  %queryfilenames.addr = alloca ptr, align 8
  %showmode.addr = alloca i32, align 4
  %searchstrand.addr = alloca i32, align 4
  %verbose.addr = alloca i8, align 1
  %performtest.addr = alloca i8, align 1
  %err.addr = alloca ptr, align 8
  %tyrindex = alloca ptr, align 8
  %tyrcountinfo = alloca ptr, align 8
  %tyrbckinfo = alloca ptr, align 8
  %haserr = alloca i8, align 1
  %query = alloca ptr, align 8
  %querylen = alloca i64, align 8
  %desc = alloca ptr, align 8
  %unitnum = alloca i64, align 8
  %retval50 = alloca i32, align 4
  %tyrsearchinfo = alloca %struct.Tyrsearchinfo, align 8
  %seqit = alloca ptr, align 8
  store ptr %tyrindexname, ptr %tyrindexname.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrindexname.addr, metadata !189, metadata !DIExpression()), !dbg !223
  store ptr %queryfilenames, ptr %queryfilenames.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %queryfilenames.addr, metadata !190, metadata !DIExpression()), !dbg !224
  store i32 %showmode, ptr %showmode.addr, align 4, !tbaa !225
  tail call void @llvm.dbg.declare(metadata ptr %showmode.addr, metadata !191, metadata !DIExpression()), !dbg !226
  store i32 %searchstrand, ptr %searchstrand.addr, align 4, !tbaa !225
  tail call void @llvm.dbg.declare(metadata ptr %searchstrand.addr, metadata !192, metadata !DIExpression()), !dbg !227
  %frombool = zext i1 %verbose to i8
  store i8 %frombool, ptr %verbose.addr, align 1, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %verbose.addr, metadata !193, metadata !DIExpression()), !dbg !230
  %frombool1 = zext i1 %performtest to i8
  store i8 %frombool1, ptr %performtest.addr, align 1, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %performtest.addr, metadata !194, metadata !DIExpression()), !dbg !231
  store ptr %err, ptr %err.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !195, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 8, ptr %tyrindex) #6, !dbg !233
  tail call void @llvm.dbg.declare(metadata ptr %tyrindex, metadata !196, metadata !DIExpression()), !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr %tyrcountinfo) #6, !dbg !235
  tail call void @llvm.dbg.declare(metadata ptr %tyrcountinfo, metadata !198, metadata !DIExpression()), !dbg !236
  store ptr null, ptr %tyrcountinfo, align 8, !dbg !236, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 8, ptr %tyrbckinfo) #6, !dbg !237
  tail call void @llvm.dbg.declare(metadata ptr %tyrbckinfo, metadata !202, metadata !DIExpression()), !dbg !238
  store ptr null, ptr %tyrbckinfo, align 8, !dbg !238, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 1, ptr %haserr) #6, !dbg !239
  tail call void @llvm.dbg.declare(metadata ptr %haserr, metadata !204, metadata !DIExpression()), !dbg !240
  store i8 0, ptr %haserr, align 1, !dbg !240, !tbaa !228
  br label %do.body, !dbg !241

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !242, !tbaa !115
  %tobool = icmp ne ptr %0, null, !dbg !242
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !242

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !242, !tbaa !115
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !242
  br i1 %call, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !246, !tbaa !115
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_tyrsearch, ptr noundef @.str.2, i32 noundef 228), !dbg !246
  call void @abort() #7, !dbg !246
  unreachable, !dbg !246

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !245

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !245

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %tyrindexname.addr, align 8, !dbg !248, !tbaa !115
  %4 = load ptr, ptr %err.addr, align 8, !dbg !249, !tbaa !115
  %call3 = call ptr @gt_tyrindex_new(ptr noundef %3, ptr noundef %4), !dbg !250
  store ptr %call3, ptr %tyrindex, align 8, !dbg !251, !tbaa !115
  %5 = load ptr, ptr %tyrindex, align 8, !dbg !252, !tbaa !115
  %cmp = icmp eq ptr %5, null, !dbg !254
  br i1 %cmp, label %if.then4, label %if.else, !dbg !255

if.then4:                                         ; preds = %do.end
  store i8 1, ptr %haserr, align 1, !dbg !256, !tbaa !228
  br label %if.end11, !dbg !258

if.else:                                          ; preds = %do.end
  %6 = load i8, ptr %verbose.addr, align 1, !dbg !259, !tbaa !228, !range !262, !noundef !263
  %tobool5 = trunc i8 %6 to i1, !dbg !259
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !264

if.then6:                                         ; preds = %if.else
  %7 = load ptr, ptr %tyrindex, align 8, !dbg !265, !tbaa !115
  call void @gt_tyrindex_show(ptr noundef %7), !dbg !267
  br label %if.end7, !dbg !268

if.end7:                                          ; preds = %if.then6, %if.else
  %8 = load i8, ptr %performtest.addr, align 1, !dbg !269, !tbaa !228, !range !262, !noundef !263
  %tobool8 = trunc i8 %8 to i1, !dbg !269
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !271

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %tyrindex, align 8, !dbg !272, !tbaa !115
  call void @gt_tyrindex_check(ptr noundef %9), !dbg !274
  br label %if.end10, !dbg !275

if.end10:                                         ; preds = %if.then9, %if.end7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then4
  %10 = load i8, ptr %haserr, align 1, !dbg !276, !tbaa !228, !range !262, !noundef !263
  %tobool12 = trunc i8 %10 to i1, !dbg !276
  br i1 %tobool12, label %if.end29, label %if.then13, !dbg !278

if.then13:                                        ; preds = %if.end11
  br label %do.body14, !dbg !279

do.body14:                                        ; preds = %if.then13
  %11 = load ptr, ptr %tyrindex, align 8, !dbg !281, !tbaa !115
  %cmp15 = icmp ne ptr %11, null, !dbg !281
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !284

if.then16:                                        ; preds = %do.body14
  %12 = load ptr, ptr @stderr, align 8, !dbg !285, !tbaa !115
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_tyrsearch, ptr noundef @.str.2, i32 noundef 246), !dbg !285
  call void @abort() #7, !dbg !285
  unreachable, !dbg !285

if.end18:                                         ; preds = %do.body14
  br label %do.cond19, !dbg !284

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !284

do.end20:                                         ; preds = %do.cond19
  %13 = load i32, ptr %showmode.addr, align 4, !dbg !287, !tbaa !225
  %and = and i32 %13, 4, !dbg !289
  %tobool21 = icmp ne i32 %and, 0, !dbg !289
  br i1 %tobool21, label %land.lhs.true, label %if.end28, !dbg !290

land.lhs.true:                                    ; preds = %do.end20
  %14 = load ptr, ptr %tyrindex, align 8, !dbg !291, !tbaa !115
  %call22 = call zeroext i1 @gt_tyrindex_isempty(ptr noundef %14), !dbg !292
  br i1 %call22, label %if.end28, label %if.then23, !dbg !293

if.then23:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %tyrindex, align 8, !dbg !294, !tbaa !115
  %16 = load ptr, ptr %tyrindexname.addr, align 8, !dbg !296, !tbaa !115
  %17 = load ptr, ptr %err.addr, align 8, !dbg !297, !tbaa !115
  %call24 = call ptr @gt_tyrcountinfo_new(ptr noundef %15, ptr noundef %16, ptr noundef %17), !dbg !298
  store ptr %call24, ptr %tyrcountinfo, align 8, !dbg !299, !tbaa !115
  %18 = load ptr, ptr %tyrcountinfo, align 8, !dbg !300, !tbaa !115
  %cmp25 = icmp eq ptr %18, null, !dbg !302
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !303

if.then26:                                        ; preds = %if.then23
  store i8 1, ptr %haserr, align 1, !dbg !304, !tbaa !228
  br label %if.end27, !dbg !306

if.end27:                                         ; preds = %if.then26, %if.then23
  br label %if.end28, !dbg !307

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %do.end20
  br label %if.end29, !dbg !308

if.end29:                                         ; preds = %if.end28, %if.end11
  %19 = load i8, ptr %haserr, align 1, !dbg !309, !tbaa !228, !range !262, !noundef !263
  %tobool30 = trunc i8 %19 to i1, !dbg !309
  br i1 %tobool30, label %if.end47, label %if.then31, !dbg !311

if.then31:                                        ; preds = %if.end29
  br label %do.body32, !dbg !312

do.body32:                                        ; preds = %if.then31
  %20 = load ptr, ptr %tyrindex, align 8, !dbg !314, !tbaa !115
  %cmp33 = icmp ne ptr %20, null, !dbg !314
  br i1 %cmp33, label %if.end36, label %if.then34, !dbg !317

if.then34:                                        ; preds = %do.body32
  %21 = load ptr, ptr @stderr, align 8, !dbg !318, !tbaa !115
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_tyrsearch, ptr noundef @.str.2, i32 noundef 258), !dbg !318
  call void @abort() #7, !dbg !318
  unreachable, !dbg !318

if.end36:                                         ; preds = %do.body32
  br label %do.cond37, !dbg !317

do.cond37:                                        ; preds = %if.end36
  br label %do.end38, !dbg !317

do.end38:                                         ; preds = %do.cond37
  %22 = load ptr, ptr %tyrindex, align 8, !dbg !320, !tbaa !115
  %call39 = call zeroext i1 @gt_tyrindex_isempty(ptr noundef %22), !dbg !322
  br i1 %call39, label %if.end46, label %if.then40, !dbg !323

if.then40:                                        ; preds = %do.end38
  %23 = load ptr, ptr %tyrindexname.addr, align 8, !dbg !324, !tbaa !115
  %24 = load ptr, ptr %tyrindex, align 8, !dbg !326, !tbaa !115
  %call41 = call i32 @gt_tyrindex_alphasize(ptr noundef %24), !dbg !327
  %25 = load ptr, ptr %err.addr, align 8, !dbg !328, !tbaa !115
  %call42 = call ptr @gt_tyrbckinfo_new(ptr noundef %23, i32 noundef %call41, ptr noundef %25), !dbg !329
  store ptr %call42, ptr %tyrbckinfo, align 8, !dbg !330, !tbaa !115
  %26 = load ptr, ptr %tyrbckinfo, align 8, !dbg !331, !tbaa !115
  %cmp43 = icmp eq ptr %26, null, !dbg !333
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !334

if.then44:                                        ; preds = %if.then40
  store i8 1, ptr %haserr, align 1, !dbg !335, !tbaa !228
  br label %if.end45, !dbg !337

if.end45:                                         ; preds = %if.then44, %if.then40
  br label %if.end46, !dbg !338

if.end46:                                         ; preds = %if.end45, %do.end38
  br label %if.end47, !dbg !339

if.end47:                                         ; preds = %if.end46, %if.end29
  %27 = load i8, ptr %haserr, align 1, !dbg !340, !tbaa !228, !range !262, !noundef !263
  %tobool48 = trunc i8 %27 to i1, !dbg !340
  br i1 %tobool48, label %if.end73, label %if.then49, !dbg !341

if.then49:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 8, ptr %query) #6, !dbg !342
  tail call void @llvm.dbg.declare(metadata ptr %query, metadata !205, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 8, ptr %querylen) #6, !dbg !344
  tail call void @llvm.dbg.declare(metadata ptr %querylen, metadata !208, metadata !DIExpression()), !dbg !345
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #6, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %desc, metadata !209, metadata !DIExpression()), !dbg !347
  store ptr null, ptr %desc, align 8, !dbg !347, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 8, ptr %unitnum) #6, !dbg !348
  tail call void @llvm.dbg.declare(metadata ptr %unitnum, metadata !211, metadata !DIExpression()), !dbg !349
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval50) #6, !dbg !350
  tail call void @llvm.dbg.declare(metadata ptr %retval50, metadata !216, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 56, ptr %tyrsearchinfo) #6, !dbg !352
  tail call void @llvm.dbg.declare(metadata ptr %tyrsearchinfo, metadata !217, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 8, ptr %seqit) #6, !dbg !354
  tail call void @llvm.dbg.declare(metadata ptr %seqit, metadata !218, metadata !DIExpression()), !dbg !355
  br label %do.body51, !dbg !356

do.body51:                                        ; preds = %if.then49
  %28 = load ptr, ptr %tyrindex, align 8, !dbg !357, !tbaa !115
  %cmp52 = icmp ne ptr %28, null, !dbg !357
  br i1 %cmp52, label %if.end55, label %if.then53, !dbg !360

if.then53:                                        ; preds = %do.body51
  %29 = load ptr, ptr @stderr, align 8, !dbg !361, !tbaa !115
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_tyrsearch, ptr noundef @.str.2, i32 noundef 280), !dbg !361
  call void @abort() #7, !dbg !361
  unreachable, !dbg !361

if.end55:                                         ; preds = %do.body51
  br label %do.cond56, !dbg !360

do.cond56:                                        ; preds = %if.end55
  br label %do.end57, !dbg !360

do.end57:                                         ; preds = %do.cond56
  %30 = load ptr, ptr %tyrindex, align 8, !dbg !363, !tbaa !115
  %31 = load i32, ptr %showmode.addr, align 4, !dbg !364, !tbaa !225
  %32 = load i32, ptr %searchstrand.addr, align 4, !dbg !365, !tbaa !225
  call void @gt_tyrsearchinfo_init(ptr noundef %tyrsearchinfo, ptr noundef %30, i32 noundef %31, i32 noundef %32), !dbg !366
  %33 = load ptr, ptr %queryfilenames.addr, align 8, !dbg !367, !tbaa !115
  %34 = load ptr, ptr %err.addr, align 8, !dbg !368, !tbaa !115
  %call58 = call ptr @gt_seq_iterator_sequence_buffer_new(ptr noundef %33, ptr noundef %34), !dbg !369
  store ptr %call58, ptr %seqit, align 8, !dbg !370, !tbaa !115
  %35 = load ptr, ptr %seqit, align 8, !dbg !371, !tbaa !115
  %tobool59 = icmp ne ptr %35, null, !dbg !371
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !373

if.then60:                                        ; preds = %do.end57
  store i8 1, ptr %haserr, align 1, !dbg !374, !tbaa !228
  br label %if.end61, !dbg !375

if.end61:                                         ; preds = %if.then60, %do.end57
  %36 = load i8, ptr %haserr, align 1, !dbg !376, !tbaa !228, !range !262, !noundef !263
  %tobool62 = trunc i8 %36 to i1, !dbg !376
  br i1 %tobool62, label %if.end72, label %if.then63, !dbg !378

if.then63:                                        ; preds = %if.end61
  %37 = load ptr, ptr %seqit, align 8, !dbg !379, !tbaa !115
  %dnaalpha = getelementptr inbounds %struct.Tyrsearchinfo, ptr %tyrsearchinfo, i32 0, i32 7, !dbg !381
  %38 = load ptr, ptr %dnaalpha, align 8, !dbg !381, !tbaa !382
  %call64 = call ptr @gt_alphabet_symbolmap(ptr noundef %38), !dbg !383
  call void @gt_seq_iterator_set_symbolmap(ptr noundef %37, ptr noundef %call64), !dbg !384
  store i64 0, ptr %unitnum, align 8, !dbg !385, !tbaa !387
  br label %for.cond, !dbg !388

for.cond:                                         ; preds = %for.inc, %if.then63
  %39 = load ptr, ptr %seqit, align 8, !dbg !389, !tbaa !115
  %40 = load ptr, ptr %err.addr, align 8, !dbg !392, !tbaa !115
  %call65 = call i32 @gt_seq_iterator_next(ptr noundef %39, ptr noundef %query, ptr noundef %querylen, ptr noundef %desc, ptr noundef %40), !dbg !393
  store i32 %call65, ptr %retval50, align 4, !dbg !394, !tbaa !225
  %41 = load i32, ptr %retval50, align 4, !dbg !395, !tbaa !225
  %cmp66 = icmp slt i32 %41, 0, !dbg !397
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !398

if.then67:                                        ; preds = %for.cond
  store i8 1, ptr %haserr, align 1, !dbg !399, !tbaa !228
  br label %for.end, !dbg !401

if.end68:                                         ; preds = %for.cond
  %42 = load i32, ptr %retval50, align 4, !dbg !402, !tbaa !225
  %cmp69 = icmp eq i32 %42, 0, !dbg !404
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !405

if.then70:                                        ; preds = %if.end68
  br label %for.end, !dbg !406

if.end71:                                         ; preds = %if.end68
  %43 = load ptr, ptr %tyrindex, align 8, !dbg !408, !tbaa !115
  %44 = load ptr, ptr %tyrcountinfo, align 8, !dbg !409, !tbaa !115
  %45 = load ptr, ptr %tyrbckinfo, align 8, !dbg !410, !tbaa !115
  %46 = load i64, ptr %unitnum, align 8, !dbg !411, !tbaa !387
  %47 = load ptr, ptr %query, align 8, !dbg !412, !tbaa !115
  %48 = load i64, ptr %querylen, align 8, !dbg !413, !tbaa !387
  %49 = load ptr, ptr %desc, align 8, !dbg !414, !tbaa !115
  call void @singleseqtyrsearch(ptr noundef %43, ptr noundef %44, ptr noundef %tyrsearchinfo, ptr noundef %45, i64 noundef %46, ptr noundef %47, i64 noundef %48, ptr noundef %49), !dbg !415
  br label %for.inc, !dbg !416

for.inc:                                          ; preds = %if.end71
  %50 = load i64, ptr %unitnum, align 8, !dbg !417, !tbaa !387
  %inc = add i64 %50, 1, !dbg !417
  store i64 %inc, ptr %unitnum, align 8, !dbg !417, !tbaa !387
  br label %for.cond, !dbg !418, !llvm.loop !419

for.end:                                          ; preds = %if.then70, %if.then67
  %51 = load ptr, ptr %seqit, align 8, !dbg !422, !tbaa !115
  call void @gt_seq_iterator_delete(ptr noundef %51), !dbg !423
  br label %if.end72, !dbg !424

if.end72:                                         ; preds = %for.end, %if.end61
  call void @gt_tyrsearchinfo_delete(ptr noundef %tyrsearchinfo), !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %seqit) #6, !dbg !426
  call void @llvm.lifetime.end.p0(i64 56, ptr %tyrsearchinfo) #6, !dbg !426
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval50) #6, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %unitnum) #6, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #6, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %querylen) #6, !dbg !426
  call void @llvm.lifetime.end.p0(i64 8, ptr %query) #6, !dbg !426
  br label %if.end73, !dbg !427

if.end73:                                         ; preds = %if.end72, %if.end47
  %52 = load ptr, ptr %tyrbckinfo, align 8, !dbg !428, !tbaa !115
  %cmp74 = icmp ne ptr %52, null, !dbg !430
  br i1 %cmp74, label %if.then75, label %if.end76, !dbg !431

if.then75:                                        ; preds = %if.end73
  call void @gt_tyrbckinfo_delete(ptr noundef %tyrbckinfo), !dbg !432
  br label %if.end76, !dbg !434

if.end76:                                         ; preds = %if.then75, %if.end73
  %53 = load ptr, ptr %tyrcountinfo, align 8, !dbg !435, !tbaa !115
  %cmp77 = icmp ne ptr %53, null, !dbg !437
  br i1 %cmp77, label %if.then78, label %if.end79, !dbg !438

if.then78:                                        ; preds = %if.end76
  call void @gt_tyrcountinfo_delete(ptr noundef %tyrcountinfo), !dbg !439
  br label %if.end79, !dbg !441

if.end79:                                         ; preds = %if.then78, %if.end76
  %54 = load ptr, ptr %tyrindex, align 8, !dbg !442, !tbaa !115
  %cmp80 = icmp ne ptr %54, null, !dbg !444
  br i1 %cmp80, label %if.then81, label %if.end82, !dbg !445

if.then81:                                        ; preds = %if.end79
  call void @gt_tyrindex_delete(ptr noundef %tyrindex), !dbg !446
  br label %if.end82, !dbg !448

if.end82:                                         ; preds = %if.then81, %if.end79
  %55 = load i8, ptr %haserr, align 1, !dbg !449, !tbaa !228, !range !262, !noundef !263
  %tobool83 = trunc i8 %55 to i1, !dbg !449
  %56 = zext i1 %tobool83 to i64, !dbg !449
  %cond = select i1 %tobool83, i32 -1, i32 0, !dbg !449
  call void @llvm.lifetime.end.p0(i64 1, ptr %haserr) #6, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %tyrbckinfo) #6, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %tyrcountinfo) #6, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %tyrindex) #6, !dbg !450
  ret i32 %cond, !dbg !451
}

declare !dbg !452 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !457 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !520 void @abort() #3

declare !dbg !524 ptr @gt_tyrindex_new(ptr noundef, ptr noundef) #2

declare !dbg !527 void @gt_tyrindex_show(ptr noundef) #2

declare !dbg !530 void @gt_tyrindex_check(ptr noundef) #2

declare !dbg !531 zeroext i1 @gt_tyrindex_isempty(ptr noundef) #2

declare !dbg !534 ptr @gt_tyrcountinfo_new(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !537 ptr @gt_tyrbckinfo_new(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !540 i32 @gt_tyrindex_alphasize(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @gt_tyrsearchinfo_init(ptr noundef %tyrsearchinfo, ptr noundef %tyrindex, i32 noundef %showmode, i32 noundef %searchstrand) #0 !dbg !543 {
entry:
  %tyrsearchinfo.addr = alloca ptr, align 8
  %tyrindex.addr = alloca ptr, align 8
  %showmode.addr = alloca i32, align 4
  %searchstrand.addr = alloca i32, align 4
  %merbytes = alloca i64, align 8
  store ptr %tyrsearchinfo, ptr %tyrsearchinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrsearchinfo.addr, metadata !548, metadata !DIExpression()), !dbg !553
  store ptr %tyrindex, ptr %tyrindex.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrindex.addr, metadata !549, metadata !DIExpression()), !dbg !554
  store i32 %showmode, ptr %showmode.addr, align 4, !tbaa !225
  tail call void @llvm.dbg.declare(metadata ptr %showmode.addr, metadata !550, metadata !DIExpression()), !dbg !555
  store i32 %searchstrand, ptr %searchstrand.addr, align 4, !tbaa !225
  tail call void @llvm.dbg.declare(metadata ptr %searchstrand.addr, metadata !551, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 8, ptr %merbytes) #6, !dbg !557
  tail call void @llvm.dbg.declare(metadata ptr %merbytes, metadata !552, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr %tyrindex.addr, align 8, !dbg !559, !tbaa !115
  %call = call i64 @gt_tyrindex_merbytes(ptr noundef %0), !dbg !560
  store i64 %call, ptr %merbytes, align 8, !dbg !561, !tbaa !387
  %1 = load ptr, ptr %tyrindex.addr, align 8, !dbg !562, !tbaa !115
  %call1 = call i64 @gt_tyrindex_mersize(ptr noundef %1), !dbg !563
  %2 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !564, !tbaa !115
  %mersize = getelementptr inbounds %struct.Tyrsearchinfo, ptr %2, i32 0, i32 4, !dbg !565
  store i64 %call1, ptr %mersize, align 8, !dbg !566, !tbaa !134
  %3 = load ptr, ptr %tyrindex.addr, align 8, !dbg !567, !tbaa !115
  %call2 = call ptr @gt_tyrindex_mertable(ptr noundef %3), !dbg !568
  %4 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !569, !tbaa !115
  %mertable = getelementptr inbounds %struct.Tyrsearchinfo, ptr %4, i32 0, i32 2, !dbg !570
  store ptr %call2, ptr %mertable, align 8, !dbg !571, !tbaa !146
  %5 = load ptr, ptr %tyrindex.addr, align 8, !dbg !572, !tbaa !115
  %call3 = call ptr @gt_tyrindex_lastmer(ptr noundef %5), !dbg !573
  %6 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !574, !tbaa !115
  %lastmer = getelementptr inbounds %struct.Tyrsearchinfo, ptr %6, i32 0, i32 3, !dbg !575
  store ptr %call3, ptr %lastmer, align 8, !dbg !576, !tbaa !149
  %7 = load i32, ptr %showmode.addr, align 4, !dbg !577, !tbaa !225
  %8 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !578, !tbaa !115
  %showmode4 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %8, i32 0, i32 5, !dbg !579
  store i32 %7, ptr %showmode4, align 8, !dbg !580, !tbaa !581
  %9 = load i32, ptr %searchstrand.addr, align 4, !dbg !582, !tbaa !225
  %10 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !583, !tbaa !115
  %searchstrand5 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %10, i32 0, i32 6, !dbg !584
  store i32 %9, ptr %searchstrand5, align 4, !dbg !585, !tbaa !586
  %call6 = call ptr @gt_alphabet_new_dna(), !dbg !587
  %11 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !588, !tbaa !115
  %dnaalpha = getelementptr inbounds %struct.Tyrsearchinfo, ptr %11, i32 0, i32 7, !dbg !589
  store ptr %call6, ptr %dnaalpha, align 8, !dbg !590, !tbaa !382
  %12 = load i64, ptr %merbytes, align 8, !dbg !591, !tbaa !387
  %mul = mul i64 1, %12, !dbg !591
  %call7 = call ptr @gt_malloc_mem(i64 noundef %mul, ptr noundef @.str.2, i32 noundef 58), !dbg !591
  %13 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !592, !tbaa !115
  %bytecode = getelementptr inbounds %struct.Tyrsearchinfo, ptr %13, i32 0, i32 0, !dbg !593
  store ptr %call7, ptr %bytecode, align 8, !dbg !594, !tbaa !127
  %14 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !595, !tbaa !115
  %mersize8 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %14, i32 0, i32 4, !dbg !595
  %15 = load i64, ptr %mersize8, align 8, !dbg !595, !tbaa !134
  %mul9 = mul i64 1, %15, !dbg !595
  %call10 = call ptr @gt_malloc_mem(i64 noundef %mul9, ptr noundef @.str.2, i32 noundef 60), !dbg !595
  %16 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !596, !tbaa !115
  %rcbuf = getelementptr inbounds %struct.Tyrsearchinfo, ptr %16, i32 0, i32 1, !dbg !597
  store ptr %call10, ptr %rcbuf, align 8, !dbg !598, !tbaa !599
  call void @llvm.lifetime.end.p0(i64 8, ptr %merbytes) #6, !dbg !600
  ret void, !dbg !600
}

declare !dbg !601 ptr @gt_seq_iterator_sequence_buffer_new(ptr noundef, ptr noundef) #2

declare !dbg !605 void @gt_seq_iterator_set_symbolmap(ptr noundef, ptr noundef) #2

declare !dbg !608 ptr @gt_alphabet_symbolmap(ptr noundef) #2

declare !dbg !613 i32 @gt_seq_iterator_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @singleseqtyrsearch(ptr noundef %tyrindex, ptr noundef %tyrcountinfo, ptr noundef %tyrsearchinfo, ptr noundef %tyrbckinfo, i64 noundef %unitnum, ptr noundef %query, i64 noundef %querylen, ptr noundef %desc) #0 !dbg !619 {
entry:
  %tyrindex.addr = alloca ptr, align 8
  %tyrcountinfo.addr = alloca ptr, align 8
  %tyrsearchinfo.addr = alloca ptr, align 8
  %tyrbckinfo.addr = alloca ptr, align 8
  %unitnum.addr = alloca i64, align 8
  %query.addr = alloca ptr, align 8
  %querylen.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  %qptr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %offset = alloca i64, align 8
  %skipvalue = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tyrindex, ptr %tyrindex.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrindex.addr, metadata !625, metadata !DIExpression()), !dbg !637
  store ptr %tyrcountinfo, ptr %tyrcountinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrcountinfo.addr, metadata !626, metadata !DIExpression()), !dbg !638
  store ptr %tyrsearchinfo, ptr %tyrsearchinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrsearchinfo.addr, metadata !627, metadata !DIExpression()), !dbg !639
  store ptr %tyrbckinfo, ptr %tyrbckinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrbckinfo.addr, metadata !628, metadata !DIExpression()), !dbg !640
  store i64 %unitnum, ptr %unitnum.addr, align 8, !tbaa !387
  tail call void @llvm.dbg.declare(metadata ptr %unitnum.addr, metadata !629, metadata !DIExpression()), !dbg !641
  store ptr %query, ptr %query.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %query.addr, metadata !630, metadata !DIExpression()), !dbg !642
  store i64 %querylen, ptr %querylen.addr, align 8, !tbaa !387
  tail call void @llvm.dbg.declare(metadata ptr %querylen.addr, metadata !631, metadata !DIExpression()), !dbg !643
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !632, metadata !DIExpression()), !dbg !644
  call void @llvm.lifetime.start.p0(i64 8, ptr %qptr) #6, !dbg !645
  tail call void @llvm.dbg.declare(metadata ptr %qptr, metadata !633, metadata !DIExpression()), !dbg !646
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #6, !dbg !645
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !634, metadata !DIExpression()), !dbg !647
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #6, !dbg !648
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !635, metadata !DIExpression()), !dbg !649
  call void @llvm.lifetime.start.p0(i64 8, ptr %skipvalue) #6, !dbg !648
  tail call void @llvm.dbg.declare(metadata ptr %skipvalue, metadata !636, metadata !DIExpression()), !dbg !650
  %0 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !651, !tbaa !115
  %mersize = getelementptr inbounds %struct.Tyrsearchinfo, ptr %0, i32 0, i32 4, !dbg !653
  %1 = load i64, ptr %mersize, align 8, !dbg !653, !tbaa !134
  %2 = load i64, ptr %querylen.addr, align 8, !dbg !654, !tbaa !387
  %cmp = icmp ugt i64 %1, %2, !dbg !655
  br i1 %cmp, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !657

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %query.addr, align 8, !dbg !659, !tbaa !115
  store ptr %3, ptr %qptr, align 8, !dbg !660, !tbaa !115
  store i64 0, ptr %offset, align 8, !dbg !661, !tbaa !387
  br label %while.cond, !dbg !662

while.cond:                                       ; preds = %if.end32, %if.end
  %4 = load ptr, ptr %qptr, align 8, !dbg !663, !tbaa !115
  %5 = load ptr, ptr %query.addr, align 8, !dbg !664, !tbaa !115
  %6 = load i64, ptr %querylen.addr, align 8, !dbg !665, !tbaa !387
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !666
  %7 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !667, !tbaa !115
  %mersize1 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %7, i32 0, i32 4, !dbg !668
  %8 = load i64, ptr %mersize1, align 8, !dbg !668, !tbaa !134
  %idx.neg = sub i64 0, %8, !dbg !669
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg, !dbg !669
  %cmp3 = icmp ule ptr %4, %add.ptr2, !dbg !670
  br i1 %cmp3, label %while.body, label %while.end, !dbg !662

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %qptr, align 8, !dbg !671, !tbaa !115
  %10 = load i64, ptr %offset, align 8, !dbg !673, !tbaa !387
  %11 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !674, !tbaa !115
  %mersize4 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %11, i32 0, i32 4, !dbg !675
  %12 = load i64, ptr %mersize4, align 8, !dbg !675, !tbaa !134
  %call = call i64 @gt_containsspecialbytestring(ptr noundef %9, i64 noundef %10, i64 noundef %12), !dbg !676
  store i64 %call, ptr %skipvalue, align 8, !dbg !677, !tbaa !387
  %13 = load i64, ptr %skipvalue, align 8, !dbg !678, !tbaa !387
  %14 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !680, !tbaa !115
  %mersize5 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %14, i32 0, i32 4, !dbg !681
  %15 = load i64, ptr %mersize5, align 8, !dbg !681, !tbaa !134
  %cmp6 = icmp eq i64 %13, %15, !dbg !682
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !683

if.then7:                                         ; preds = %while.body
  %16 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !684, !tbaa !115
  %mersize8 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %16, i32 0, i32 4, !dbg !686
  %17 = load i64, ptr %mersize8, align 8, !dbg !686, !tbaa !134
  %sub = sub i64 %17, 1, !dbg !687
  store i64 %sub, ptr %offset, align 8, !dbg !688, !tbaa !387
  %18 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !689, !tbaa !115
  %searchstrand = getelementptr inbounds %struct.Tyrsearchinfo, ptr %18, i32 0, i32 6, !dbg !691
  %19 = load i32, ptr %searchstrand, align 4, !dbg !691, !tbaa !586
  %and = and i32 %19, 1, !dbg !692
  %tobool = icmp ne i32 %and, 0, !dbg !692
  br i1 %tobool, label %if.then9, label %if.end14, !dbg !693

if.then9:                                         ; preds = %if.then7
  %20 = load ptr, ptr %qptr, align 8, !dbg !694, !tbaa !115
  %21 = load ptr, ptr %tyrindex.addr, align 8, !dbg !696, !tbaa !115
  %22 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !697, !tbaa !115
  %23 = load ptr, ptr %tyrbckinfo.addr, align 8, !dbg !698, !tbaa !115
  %call10 = call ptr @gt_searchsinglemer(ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23), !dbg !699
  store ptr %call10, ptr %result, align 8, !dbg !700, !tbaa !115
  %24 = load ptr, ptr %result, align 8, !dbg !701, !tbaa !115
  %cmp11 = icmp ne ptr %24, null, !dbg !703
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !704

if.then12:                                        ; preds = %if.then9
  %25 = load ptr, ptr %tyrindex.addr, align 8, !dbg !705, !tbaa !115
  %26 = load ptr, ptr %tyrcountinfo.addr, align 8, !dbg !707, !tbaa !115
  %27 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !708, !tbaa !115
  %28 = load ptr, ptr %result, align 8, !dbg !709, !tbaa !115
  %29 = load ptr, ptr %query.addr, align 8, !dbg !710, !tbaa !115
  %30 = load ptr, ptr %qptr, align 8, !dbg !711, !tbaa !115
  %31 = load i64, ptr %unitnum.addr, align 8, !dbg !712, !tbaa !387
  call void @mermatchoutput(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i64 noundef %31, i1 noundef zeroext true), !dbg !713
  br label %if.end13, !dbg !714

if.end13:                                         ; preds = %if.then12, %if.then9
  br label %if.end14, !dbg !715

if.end14:                                         ; preds = %if.end13, %if.then7
  %32 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !716, !tbaa !115
  %searchstrand15 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %32, i32 0, i32 6, !dbg !718
  %33 = load i32, ptr %searchstrand15, align 4, !dbg !718, !tbaa !586
  %and16 = and i32 %33, 2, !dbg !719
  %tobool17 = icmp ne i32 %and16, 0, !dbg !719
  br i1 %tobool17, label %if.then18, label %if.end30, !dbg !720

if.then18:                                        ; preds = %if.end14
  br label %do.body, !dbg !721

do.body:                                          ; preds = %if.then18
  %34 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !723, !tbaa !115
  %rcbuf = getelementptr inbounds %struct.Tyrsearchinfo, ptr %34, i32 0, i32 1, !dbg !723
  %35 = load ptr, ptr %rcbuf, align 8, !dbg !723, !tbaa !599
  %cmp19 = icmp ne ptr %35, null, !dbg !723
  br i1 %cmp19, label %if.end22, label %if.then20, !dbg !726

if.then20:                                        ; preds = %do.body
  %36 = load ptr, ptr @stderr, align 8, !dbg !727, !tbaa !115
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.singleseqtyrsearch, ptr noundef @.str.2, i32 noundef 189), !dbg !727
  call void @abort() #7, !dbg !727
  unreachable, !dbg !727

if.end22:                                         ; preds = %do.body
  br label %do.cond, !dbg !726

do.cond:                                          ; preds = %if.end22
  br label %do.end, !dbg !726

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !729, !tbaa !115
  %rcbuf23 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %37, i32 0, i32 1, !dbg !730
  %38 = load ptr, ptr %rcbuf23, align 8, !dbg !730, !tbaa !599
  %39 = load ptr, ptr %qptr, align 8, !dbg !731, !tbaa !115
  %40 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !732, !tbaa !115
  %mersize24 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %40, i32 0, i32 4, !dbg !733
  %41 = load i64, ptr %mersize24, align 8, !dbg !733, !tbaa !134
  call void @gt_copy_reverse_complement(ptr noundef %38, ptr noundef %39, i64 noundef %41), !dbg !734
  %42 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !735, !tbaa !115
  %rcbuf25 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %42, i32 0, i32 1, !dbg !736
  %43 = load ptr, ptr %rcbuf25, align 8, !dbg !736, !tbaa !599
  %44 = load ptr, ptr %tyrindex.addr, align 8, !dbg !737, !tbaa !115
  %45 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !738, !tbaa !115
  %46 = load ptr, ptr %tyrbckinfo.addr, align 8, !dbg !739, !tbaa !115
  %call26 = call ptr @gt_searchsinglemer(ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46), !dbg !740
  store ptr %call26, ptr %result, align 8, !dbg !741, !tbaa !115
  %47 = load ptr, ptr %result, align 8, !dbg !742, !tbaa !115
  %cmp27 = icmp ne ptr %47, null, !dbg !744
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !745

if.then28:                                        ; preds = %do.end
  %48 = load ptr, ptr %tyrindex.addr, align 8, !dbg !746, !tbaa !115
  %49 = load ptr, ptr %tyrcountinfo.addr, align 8, !dbg !748, !tbaa !115
  %50 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !749, !tbaa !115
  %51 = load ptr, ptr %result, align 8, !dbg !750, !tbaa !115
  %52 = load ptr, ptr %query.addr, align 8, !dbg !751, !tbaa !115
  %53 = load ptr, ptr %qptr, align 8, !dbg !752, !tbaa !115
  %54 = load i64, ptr %unitnum.addr, align 8, !dbg !753, !tbaa !387
  call void @mermatchoutput(ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, i64 noundef %54, i1 noundef zeroext false), !dbg !754
  br label %if.end29, !dbg !755

if.end29:                                         ; preds = %if.then28, %do.end
  br label %if.end30, !dbg !756

if.end30:                                         ; preds = %if.end29, %if.end14
  %55 = load ptr, ptr %qptr, align 8, !dbg !757, !tbaa !115
  %incdec.ptr = getelementptr inbounds i8, ptr %55, i32 1, !dbg !757
  store ptr %incdec.ptr, ptr %qptr, align 8, !dbg !757, !tbaa !115
  br label %if.end32, !dbg !758

if.else:                                          ; preds = %while.body
  store i64 0, ptr %offset, align 8, !dbg !759, !tbaa !387
  %56 = load i64, ptr %skipvalue, align 8, !dbg !761, !tbaa !387
  %add = add i64 %56, 1, !dbg !762
  %57 = load ptr, ptr %qptr, align 8, !dbg !763, !tbaa !115
  %add.ptr31 = getelementptr inbounds i8, ptr %57, i64 %add, !dbg !763
  store ptr %add.ptr31, ptr %qptr, align 8, !dbg !763, !tbaa !115
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end30
  br label %while.cond, !dbg !662, !llvm.loop !764

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !767
  br label %cleanup, !dbg !767

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %skipvalue) #6, !dbg !767
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #6, !dbg !767
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #6, !dbg !767
  call void @llvm.lifetime.end.p0(i64 8, ptr %qptr) #6, !dbg !767
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !767

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !768 void @gt_seq_iterator_delete(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @gt_tyrsearchinfo_delete(ptr noundef %tyrsearchinfo) #0 !dbg !771 {
entry:
  %tyrsearchinfo.addr = alloca ptr, align 8
  store ptr %tyrsearchinfo, ptr %tyrsearchinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrsearchinfo.addr, metadata !775, metadata !DIExpression()), !dbg !776
  %0 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !777, !tbaa !115
  %cmp = icmp ne ptr %0, null, !dbg !779
  br i1 %cmp, label %if.then, label %if.end, !dbg !780

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !781, !tbaa !115
  %dnaalpha = getelementptr inbounds %struct.Tyrsearchinfo, ptr %1, i32 0, i32 7, !dbg !783
  %2 = load ptr, ptr %dnaalpha, align 8, !dbg !783, !tbaa !382
  call void @gt_alphabet_delete(ptr noundef %2), !dbg !784
  %3 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !785, !tbaa !115
  %bytecode = getelementptr inbounds %struct.Tyrsearchinfo, ptr %3, i32 0, i32 0, !dbg !785
  %4 = load ptr, ptr %bytecode, align 8, !dbg !785, !tbaa !127
  call void @gt_free_mem(ptr noundef %4, ptr noundef @.str.2, i32 noundef 68), !dbg !785
  %5 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !786, !tbaa !115
  %rcbuf = getelementptr inbounds %struct.Tyrsearchinfo, ptr %5, i32 0, i32 1, !dbg !786
  %6 = load ptr, ptr %rcbuf, align 8, !dbg !786, !tbaa !599
  call void @gt_free_mem(ptr noundef %6, ptr noundef @.str.2, i32 noundef 69), !dbg !786
  br label %if.end, !dbg !787

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !788
}

declare !dbg !789 void @gt_tyrbckinfo_delete(ptr noundef) #2

declare !dbg !793 void @gt_tyrcountinfo_delete(ptr noundef) #2

declare !dbg !797 void @gt_tyrindex_delete(ptr noundef) #2

declare !dbg !801 i64 @gt_tyrindex_merbytes(ptr noundef) #2

declare !dbg !804 i64 @gt_tyrindex_mersize(ptr noundef) #2

declare !dbg !805 ptr @gt_tyrindex_mertable(ptr noundef) #2

declare !dbg !808 ptr @gt_tyrindex_lastmer(ptr noundef) #2

declare !dbg !809 ptr @gt_alphabet_new_dna() #2

declare !dbg !812 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @gt_containsspecialbytestring(ptr noundef %seq, i64 noundef %offset, i64 noundef %len) #4 !dbg !816 {
entry:
  %retval = alloca i64, align 8
  %seq.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %sptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %seq, ptr %seq.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !820, metadata !DIExpression()), !dbg !824
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !387
  tail call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !821, metadata !DIExpression()), !dbg !825
  store i64 %len, ptr %len.addr, align 8, !tbaa !387
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !822, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 8, ptr %sptr) #6, !dbg !827
  tail call void @llvm.dbg.declare(metadata ptr %sptr, metadata !823, metadata !DIExpression()), !dbg !828
  br label %do.body, !dbg !829

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %offset.addr, align 8, !dbg !830, !tbaa !387
  %1 = load i64, ptr %len.addr, align 8, !dbg !830, !tbaa !387
  %cmp = icmp ult i64 %0, %1, !dbg !830
  br i1 %cmp, label %if.end, label %if.then, !dbg !833

if.then:                                          ; preds = %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !834, !tbaa !115
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_containsspecialbytestring, ptr noundef @.str.6, i32 noundef 80), !dbg !834
  call void @abort() #7, !dbg !834
  unreachable, !dbg !834

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !833

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !833

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %seq.addr, align 8, !dbg !836, !tbaa !115
  %4 = load i64, ptr %offset.addr, align 8, !dbg !838, !tbaa !387
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %4, !dbg !839
  store ptr %add.ptr, ptr %sptr, align 8, !dbg !840, !tbaa !115
  br label %for.cond, !dbg !841

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load ptr, ptr %sptr, align 8, !dbg !842, !tbaa !115
  %6 = load ptr, ptr %seq.addr, align 8, !dbg !844, !tbaa !115
  %7 = load i64, ptr %len.addr, align 8, !dbg !845, !tbaa !387
  %add.ptr1 = getelementptr inbounds i8, ptr %6, i64 %7, !dbg !846
  %cmp2 = icmp ult ptr %5, %add.ptr1, !dbg !847
  br i1 %cmp2, label %for.body, label %for.end, !dbg !848

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %sptr, align 8, !dbg !849, !tbaa !115
  %9 = load i8, ptr %8, align 1, !dbg !849, !tbaa !852
  %conv = zext i8 %9 to i32, !dbg !849
  %cmp3 = icmp sge i32 %conv, 254, !dbg !849
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !853

if.then5:                                         ; preds = %for.body
  %10 = load ptr, ptr %sptr, align 8, !dbg !854, !tbaa !115
  %11 = load ptr, ptr %seq.addr, align 8, !dbg !856, !tbaa !115
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64, !dbg !857
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !857
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !857
  store i64 %sub.ptr.sub, ptr %retval, align 8, !dbg !858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !858

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !859

for.inc:                                          ; preds = %if.end6
  %12 = load ptr, ptr %sptr, align 8, !dbg !860, !tbaa !115
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1, !dbg !860
  store ptr %incdec.ptr, ptr %sptr, align 8, !dbg !860, !tbaa !115
  br label %for.cond, !dbg !861, !llvm.loop !862

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %len.addr, align 8, !dbg !864, !tbaa !387
  store i64 %13, ptr %retval, align 8, !dbg !865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !865

cleanup:                                          ; preds = %for.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sptr) #6, !dbg !866
  %14 = load i64, ptr %retval, align 8, !dbg !866
  ret i64 %14, !dbg !866
}

; Function Attrs: nounwind uwtable
define internal void @mermatchoutput(ptr noundef %tyrindex, ptr noundef %tyrcountinfo, ptr noundef %tyrsearchinfo, ptr noundef %result, ptr noundef %query, ptr noundef %qptr, i64 noundef %unitnum, i1 noundef zeroext %forward) #0 !dbg !867 {
entry:
  %tyrindex.addr = alloca ptr, align 8
  %tyrcountinfo.addr = alloca ptr, align 8
  %tyrsearchinfo.addr = alloca ptr, align 8
  %result.addr = alloca ptr, align 8
  %query.addr = alloca ptr, align 8
  %qptr.addr = alloca ptr, align 8
  %unitnum.addr = alloca i64, align 8
  %forward.addr = alloca i8, align 1
  %firstitem = alloca i8, align 1
  %queryposition = alloca i64, align 8
  %mernumber = alloca i64, align 8
  store ptr %tyrindex, ptr %tyrindex.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrindex.addr, metadata !871, metadata !DIExpression()), !dbg !884
  store ptr %tyrcountinfo, ptr %tyrcountinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrcountinfo.addr, metadata !872, metadata !DIExpression()), !dbg !885
  store ptr %tyrsearchinfo, ptr %tyrsearchinfo.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %tyrsearchinfo.addr, metadata !873, metadata !DIExpression()), !dbg !886
  store ptr %result, ptr %result.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !874, metadata !DIExpression()), !dbg !887
  store ptr %query, ptr %query.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %query.addr, metadata !875, metadata !DIExpression()), !dbg !888
  store ptr %qptr, ptr %qptr.addr, align 8, !tbaa !115
  tail call void @llvm.dbg.declare(metadata ptr %qptr.addr, metadata !876, metadata !DIExpression()), !dbg !889
  store i64 %unitnum, ptr %unitnum.addr, align 8, !tbaa !387
  tail call void @llvm.dbg.declare(metadata ptr %unitnum.addr, metadata !877, metadata !DIExpression()), !dbg !890
  %frombool = zext i1 %forward to i8
  store i8 %frombool, ptr %forward.addr, align 1, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %forward.addr, metadata !878, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 1, ptr %firstitem) #6, !dbg !892
  tail call void @llvm.dbg.declare(metadata ptr %firstitem, metadata !879, metadata !DIExpression()), !dbg !893
  store i8 1, ptr %firstitem, align 1, !dbg !893, !tbaa !228
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryposition) #6, !dbg !894
  tail call void @llvm.dbg.declare(metadata ptr %queryposition, metadata !880, metadata !DIExpression()), !dbg !895
  %0 = load ptr, ptr %qptr.addr, align 8, !dbg !896, !tbaa !115
  %1 = load ptr, ptr %query.addr, align 8, !dbg !897, !tbaa !115
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !898
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !898
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !898
  store i64 %sub.ptr.sub, ptr %queryposition, align 8, !dbg !899, !tbaa !387
  %2 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !900, !tbaa !115
  %showmode = getelementptr inbounds %struct.Tyrsearchinfo, ptr %2, i32 0, i32 5, !dbg !902
  %3 = load i32, ptr %showmode, align 8, !dbg !902, !tbaa !581
  %and = and i32 %3, 1, !dbg !903
  %tobool = icmp ne i32 %and, 0, !dbg !903
  br i1 %tobool, label %if.then, label %if.end, !dbg !904

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %unitnum.addr, align 8, !dbg !905, !tbaa !387
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %4), !dbg !907
  store i8 0, ptr %firstitem, align 1, !dbg !908, !tbaa !228
  br label %if.end, !dbg !909

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !910, !tbaa !115
  %showmode1 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %5, i32 0, i32 5, !dbg !912
  %6 = load i32, ptr %showmode1, align 8, !dbg !912, !tbaa !581
  %and2 = and i32 %6, 2, !dbg !913
  %tobool3 = icmp ne i32 %and2, 0, !dbg !913
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !914

if.then4:                                         ; preds = %if.end
  %7 = load i8, ptr %firstitem, align 1, !dbg !915, !tbaa !228, !range !262, !noundef !263
  %tobool5 = trunc i8 %7 to i1, !dbg !915
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !918

if.then6:                                         ; preds = %if.then4
  store i8 0, ptr %firstitem, align 1, !dbg !919, !tbaa !228
  br label %if.end8, !dbg !919

if.else:                                          ; preds = %if.then4
  %call7 = call i32 @putchar(i32 noundef 9), !dbg !921
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %8 = load i8, ptr %forward.addr, align 1, !dbg !923, !tbaa !228, !range !262, !noundef !263
  %tobool9 = trunc i8 %8 to i1, !dbg !923
  %9 = zext i1 %tobool9 to i64, !dbg !923
  %cond = select i1 %tobool9, i32 43, i32 45, !dbg !923
  %10 = load i64, ptr %queryposition, align 8, !dbg !924, !tbaa !387
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %cond, i64 noundef %10), !dbg !925
  br label %if.end11, !dbg !926

if.end11:                                         ; preds = %if.end8, %if.end
  %11 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !927, !tbaa !115
  %showmode12 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %11, i32 0, i32 5, !dbg !928
  %12 = load i32, ptr %showmode12, align 8, !dbg !928, !tbaa !581
  %and13 = and i32 %12, 4, !dbg !929
  %tobool14 = icmp ne i32 %and13, 0, !dbg !929
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !930

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %mernumber) #6, !dbg !931
  tail call void @llvm.dbg.declare(metadata ptr %mernumber, metadata !881, metadata !DIExpression()), !dbg !932
  %13 = load ptr, ptr %tyrindex.addr, align 8, !dbg !933, !tbaa !115
  %14 = load ptr, ptr %result.addr, align 8, !dbg !934, !tbaa !115
  %call16 = call i64 @gt_tyrindex_ptr2number(ptr noundef %13, ptr noundef %14), !dbg !935
  store i64 %call16, ptr %mernumber, align 8, !dbg !932, !tbaa !387
  %15 = load i8, ptr %firstitem, align 1, !dbg !936, !tbaa !228, !range !262, !noundef !263
  %tobool17 = trunc i8 %15 to i1, !dbg !936
  br i1 %tobool17, label %if.then18, label %if.else19, !dbg !938

if.then18:                                        ; preds = %if.then15
  store i8 0, ptr %firstitem, align 1, !dbg !939, !tbaa !228
  br label %if.end21, !dbg !939

if.else19:                                        ; preds = %if.then15
  %call20 = call i32 @putchar(i32 noundef 9), !dbg !941
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18
  %16 = load ptr, ptr %tyrcountinfo.addr, align 8, !dbg !943, !tbaa !115
  %17 = load i64, ptr %mernumber, align 8, !dbg !944, !tbaa !387
  %call22 = call i64 @gt_tyrcountinfo_get(ptr noundef %16, i64 noundef %17), !dbg !945
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %call22), !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %mernumber) #6, !dbg !947
  br label %if.end24, !dbg !948

if.end24:                                         ; preds = %if.end21, %if.end11
  %18 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !949, !tbaa !115
  %showmode25 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %18, i32 0, i32 5, !dbg !951
  %19 = load i32, ptr %showmode25, align 8, !dbg !951, !tbaa !581
  %and26 = and i32 %19, 8, !dbg !952
  %tobool27 = icmp ne i32 %and26, 0, !dbg !952
  br i1 %tobool27, label %if.then28, label %if.end34, !dbg !953

if.then28:                                        ; preds = %if.end24
  %20 = load i8, ptr %firstitem, align 1, !dbg !954, !tbaa !228, !range !262, !noundef !263
  %tobool29 = trunc i8 %20 to i1, !dbg !954
  br i1 %tobool29, label %if.then30, label %if.else31, !dbg !957

if.then30:                                        ; preds = %if.then28
  store i8 0, ptr %firstitem, align 1, !dbg !958, !tbaa !228
  br label %if.end33, !dbg !958

if.else31:                                        ; preds = %if.then28
  %call32 = call i32 @putchar(i32 noundef 9), !dbg !960
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30
  %21 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !962, !tbaa !115
  %dnaalpha = getelementptr inbounds %struct.Tyrsearchinfo, ptr %21, i32 0, i32 7, !dbg !963
  %22 = load ptr, ptr %dnaalpha, align 8, !dbg !963, !tbaa !382
  %23 = load ptr, ptr @stdout, align 8, !dbg !964, !tbaa !115
  %24 = load ptr, ptr %qptr.addr, align 8, !dbg !965, !tbaa !115
  %25 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !966, !tbaa !115
  %mersize = getelementptr inbounds %struct.Tyrsearchinfo, ptr %25, i32 0, i32 4, !dbg !967
  %26 = load i64, ptr %mersize, align 8, !dbg !967, !tbaa !134
  call void @gt_alphabet_decode_seq_to_fp(ptr noundef %22, ptr noundef %23, ptr noundef %24, i64 noundef %26), !dbg !968
  br label %if.end34, !dbg !969

if.end34:                                         ; preds = %if.end33, %if.end24
  %27 = load ptr, ptr %tyrsearchinfo.addr, align 8, !dbg !970, !tbaa !115
  %showmode35 = getelementptr inbounds %struct.Tyrsearchinfo, ptr %27, i32 0, i32 5, !dbg !972
  %28 = load i32, ptr %showmode35, align 8, !dbg !972, !tbaa !581
  %and36 = and i32 %28, 14, !dbg !973
  %tobool37 = icmp ne i32 %and36, 0, !dbg !973
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !974

if.then38:                                        ; preds = %if.end34
  %call39 = call i32 @putchar(i32 noundef 10), !dbg !975
  br label %if.end40, !dbg !977

if.end40:                                         ; preds = %if.then38, %if.end34
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryposition) #6, !dbg !978
  call void @llvm.lifetime.end.p0(i64 1, ptr %firstitem) #6, !dbg !978
  ret void, !dbg !978
}

declare !dbg !979 void @gt_copy_reverse_complement(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !981 i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @putchar(i32 noundef %__c) #4 !dbg !984 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4, !tbaa !225
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !989, metadata !DIExpression()), !dbg !990
  %0 = load i32, ptr %__c.addr, align 4, !dbg !991, !tbaa !225
  %1 = load ptr, ptr @stdout, align 8, !dbg !992, !tbaa !115
  %call = call i32 @putc(i32 noundef %0, ptr noundef %1), !dbg !993
  ret i32 %call, !dbg !994
}

declare !dbg !995 i64 @gt_tyrindex_ptr2number(ptr noundef, ptr noundef) #2

declare !dbg !998 i64 @gt_tyrcountinfo_get(ptr noundef, i64 noundef) #2

declare !dbg !1001 void @gt_alphabet_decode_seq_to_fp(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1004 i32 @putc(i32 noundef, ptr noundef) #2

declare !dbg !1007 void @gt_alphabet_delete(ptr noundef) #2

declare !dbg !1010 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

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

!llvm.dbg.cu = !{!60}
!llvm.module.flags = !{!69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/match/tyr-search.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "53ce50913a04f30719ffb2006f1ffc91")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 13)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 23)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 17)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 29)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 19)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !40, line: 80, type: !41, isLocal: true, isDefinition: true)
!40 = !DIFile(filename: "src/core/chardef_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c89c6639b3cd250bfec2fbc1df35914d")
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !16)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !40, line: 80, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 232, elements: !31)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !40, line: 80, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1336, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 167)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 6)
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !61, globals: !68, splitDebugInlining: false, nameTableKind: None)
!61 = !{!62, !63, !66}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUchar", file: !64, line: 102, baseType: !65)
!64 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!65 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !64, line: 83, baseType: !67)
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !{!0, !7, !12, !18, !23, !28, !33, !38, !42, !45, !50, !55}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 8, !"PIC Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!75 = distinct !DISubprogram(name: "gt_searchsinglemer", scope: !2, file: !2, line: 73, type: !76, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !109)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !78, !80, !85, !104}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tyrindex", file: !83, line: 26, baseType: !84)
!83 = !DIFile(filename: "src/match/tyr-map.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "5830505e326287a0d1a2ace45d2ee60a")
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "Tyrindex", file: !83, line: 26, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tyrsearchinfo", file: !2, line: 41, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 32, size: 448, elements: !89)
!89 = !{!90, !92, !93, !94, !95, !96, !98, !99}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "bytecode", scope: !88, file: !2, line: 34, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rcbuf", scope: !88, file: !2, line: 35, baseType: !91, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mertable", scope: !88, file: !2, line: 36, baseType: !78, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "lastmer", scope: !88, file: !2, line: 36, baseType: !78, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "mersize", scope: !88, file: !2, line: 37, baseType: !66, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "showmode", scope: !88, file: !2, line: 38, baseType: !97, size: 32, offset: 320)
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "searchstrand", scope: !88, file: !2, line: 39, baseType: !97, size: 32, offset: 352)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "dnaalpha", scope: !88, file: !2, line: 40, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtAlphabet", file: !102, line: 32, baseType: !103)
!102 = !DIFile(filename: "src/core/alphabet_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0b48240ce57ca6598f5548b5c9cf52e4")
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtAlphabet", file: !102, line: 32, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tyrbckinfo", file: !107, line: 26, baseType: !108)
!107 = !DIFile(filename: "src/match/tyr-mersplit.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "a0485cf04614cb1d8257f324d4de053e")
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "Tyrbckinfo", file: !107, line: 26, flags: DIFlagFwdDecl)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DILocalVariable(name: "qptr", arg: 1, scope: !75, file: !2, line: 73, type: !78)
!111 = !DILocalVariable(name: "tyrindex", arg: 2, scope: !75, file: !2, line: 74, type: !80)
!112 = !DILocalVariable(name: "tyrsearchinfo", arg: 3, scope: !75, file: !2, line: 75, type: !85)
!113 = !DILocalVariable(name: "tyrbckinfo", arg: 4, scope: !75, file: !2, line: 76, type: !104)
!114 = !DILocalVariable(name: "result", scope: !75, file: !2, line: 78, type: !78)
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !DILocation(line: 73, column: 61, scope: !75)
!120 = !DILocation(line: 74, column: 57, scope: !75)
!121 = !DILocation(line: 75, column: 62, scope: !75)
!122 = !DILocation(line: 76, column: 59, scope: !75)
!123 = !DILocation(line: 78, column: 3, scope: !75)
!124 = !DILocation(line: 78, column: 18, scope: !75)
!125 = !DILocation(line: 80, column: 31, scope: !75)
!126 = !DILocation(line: 80, column: 46, scope: !75)
!127 = !{!128, !116, i64 0}
!128 = !{!"", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !129, i64 32, !130, i64 40, !130, i64 44, !116, i64 48}
!129 = !{!"long", !117, i64 0}
!130 = !{!"int", !117, i64 0}
!131 = !DILocation(line: 80, column: 55, scope: !75)
!132 = !DILocation(line: 81, column: 40, scope: !75)
!133 = !DILocation(line: 81, column: 55, scope: !75)
!134 = !{!128, !129, i64 32}
!135 = !DILocation(line: 80, column: 3, scope: !75)
!136 = !DILocation(line: 82, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !75, file: !2, line: 82, column: 7)
!138 = !DILocation(line: 82, column: 18, scope: !137)
!139 = !DILocation(line: 82, column: 7, scope: !75)
!140 = !DILocation(line: 84, column: 39, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !2, line: 83, column: 3)
!142 = !DILocation(line: 84, column: 50, scope: !141)
!143 = !DILocation(line: 84, column: 65, scope: !141)
!144 = !DILocation(line: 85, column: 36, scope: !141)
!145 = !DILocation(line: 85, column: 51, scope: !141)
!146 = !{!128, !116, i64 16}
!147 = !DILocation(line: 86, column: 36, scope: !141)
!148 = !DILocation(line: 86, column: 51, scope: !141)
!149 = !{!128, !116, i64 24}
!150 = !DILocation(line: 84, column: 14, scope: !141)
!151 = !DILocation(line: 84, column: 12, scope: !141)
!152 = !DILocation(line: 87, column: 3, scope: !141)
!153 = !DILocation(line: 89, column: 33, scope: !154)
!154 = distinct !DILexicalBlock(scope: !137, file: !2, line: 88, column: 3)
!155 = !DILocation(line: 89, column: 42, scope: !154)
!156 = !DILocation(line: 89, column: 53, scope: !154)
!157 = !DILocation(line: 89, column: 68, scope: !154)
!158 = !DILocation(line: 89, column: 14, scope: !154)
!159 = !DILocation(line: 89, column: 12, scope: !154)
!160 = !DILocation(line: 91, column: 10, scope: !75)
!161 = !DILocation(line: 92, column: 1, scope: !75)
!162 = !DILocation(line: 91, column: 3, scope: !75)
!163 = !DISubprogram(name: "gt_encseq_plainseq2bytecode", scope: !164, file: !164, line: 149, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = !DIFile(filename: "src/core/encseq.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9251cd05615585d739ba548318e41174")
!165 = !DISubroutineType(types: !166)
!166 = !{null, !91, !78, !66}
!167 = !DISubprogram(name: "gt_tyrindex_binmersearch", scope: !83, file: !83, line: 37, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!168 = !DISubroutineType(types: !169)
!169 = !{!78, !80, !66, !78, !78, !78}
!170 = !DISubprogram(name: "gt_searchinbuckets", scope: !107, file: !107, line: 37, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{!78, !80, !104, !78}
!173 = distinct !DISubprogram(name: "gt_tyrsearch", scope: !2, file: !2, line: 215, type: !174, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !188)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !177, !178, !97, !97, !183, !183, !184}
!176 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrArray", file: !181, line: 24, baseType: !182)
!181 = !DIFile(filename: "src/core/str_array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d2f5724ae7121552c301a489d5e7f125")
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStrArray", file: !181, line: 24, flags: DIFlagFwdDecl)
!183 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !186, line: 44, baseType: !187)
!186 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !186, line: 44, flags: DIFlagFwdDecl)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !198, !202, !204, !205, !208, !209, !211, !216, !217, !218}
!189 = !DILocalVariable(name: "tyrindexname", arg: 1, scope: !173, file: !2, line: 215, type: !177)
!190 = !DILocalVariable(name: "queryfilenames", arg: 2, scope: !173, file: !2, line: 216, type: !178)
!191 = !DILocalVariable(name: "showmode", arg: 3, scope: !173, file: !2, line: 217, type: !97)
!192 = !DILocalVariable(name: "searchstrand", arg: 4, scope: !173, file: !2, line: 218, type: !97)
!193 = !DILocalVariable(name: "verbose", arg: 5, scope: !173, file: !2, line: 219, type: !183)
!194 = !DILocalVariable(name: "performtest", arg: 6, scope: !173, file: !2, line: 220, type: !183)
!195 = !DILocalVariable(name: "err", arg: 7, scope: !173, file: !2, line: 221, type: !184)
!196 = !DILocalVariable(name: "tyrindex", scope: !173, file: !2, line: 223, type: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!198 = !DILocalVariable(name: "tyrcountinfo", scope: !173, file: !2, line: 224, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tyrcountinfo", file: !83, line: 49, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "Tyrcountinfo", file: !83, line: 49, flags: DIFlagFwdDecl)
!202 = !DILocalVariable(name: "tyrbckinfo", scope: !173, file: !2, line: 225, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!204 = !DILocalVariable(name: "haserr", scope: !173, file: !2, line: 226, type: !183)
!205 = !DILocalVariable(name: "query", scope: !206, file: !2, line: 272, type: !78)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 271, column: 3)
!207 = distinct !DILexicalBlock(scope: !173, file: !2, line: 270, column: 7)
!208 = !DILocalVariable(name: "querylen", scope: !206, file: !2, line: 273, type: !66)
!209 = !DILocalVariable(name: "desc", scope: !206, file: !2, line: 274, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!211 = !DILocalVariable(name: "unitnum", scope: !206, file: !2, line: 275, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !213, line: 27, baseType: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !215, line: 45, baseType: !67)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!216 = !DILocalVariable(name: "retval", scope: !206, file: !2, line: 276, type: !176)
!217 = !DILocalVariable(name: "tyrsearchinfo", scope: !206, file: !2, line: 277, type: !87)
!218 = !DILocalVariable(name: "seqit", scope: !206, file: !2, line: 278, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtSeqIterator", file: !221, line: 27, baseType: !222)
!221 = !DIFile(filename: "src/core/seq_iterator_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "ff6b04aad4856267d816ffb10e467dd5")
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtSeqIterator", file: !221, line: 27, flags: DIFlagFwdDecl)
!223 = !DILocation(line: 215, column: 30, scope: !173)
!224 = !DILocation(line: 216, column: 36, scope: !173)
!225 = !{!130, !130, i64 0}
!226 = !DILocation(line: 217, column: 31, scope: !173)
!227 = !DILocation(line: 218, column: 31, scope: !173)
!228 = !{!229, !229, i64 0}
!229 = !{!"_Bool", !117, i64 0}
!230 = !DILocation(line: 219, column: 23, scope: !173)
!231 = !DILocation(line: 220, column: 23, scope: !173)
!232 = !DILocation(line: 221, column: 27, scope: !173)
!233 = !DILocation(line: 223, column: 3, scope: !173)
!234 = !DILocation(line: 223, column: 13, scope: !173)
!235 = !DILocation(line: 224, column: 3, scope: !173)
!236 = !DILocation(line: 224, column: 17, scope: !173)
!237 = !DILocation(line: 225, column: 3, scope: !173)
!238 = !DILocation(line: 225, column: 15, scope: !173)
!239 = !DILocation(line: 226, column: 3, scope: !173)
!240 = !DILocation(line: 226, column: 8, scope: !173)
!241 = !DILocation(line: 228, column: 3, scope: !173)
!242 = !DILocation(line: 228, column: 3, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !2, line: 228, column: 3)
!244 = distinct !DILexicalBlock(scope: !173, file: !2, line: 228, column: 3)
!245 = !DILocation(line: 228, column: 3, scope: !244)
!246 = !DILocation(line: 228, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !2, line: 228, column: 3)
!248 = !DILocation(line: 229, column: 30, scope: !173)
!249 = !DILocation(line: 229, column: 43, scope: !173)
!250 = !DILocation(line: 229, column: 14, scope: !173)
!251 = !DILocation(line: 229, column: 12, scope: !173)
!252 = !DILocation(line: 230, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !173, file: !2, line: 230, column: 7)
!254 = !DILocation(line: 230, column: 16, scope: !253)
!255 = !DILocation(line: 230, column: 7, scope: !173)
!256 = !DILocation(line: 232, column: 12, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !2, line: 231, column: 3)
!258 = !DILocation(line: 233, column: 3, scope: !257)
!259 = !DILocation(line: 235, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 235, column: 9)
!261 = distinct !DILexicalBlock(scope: !253, file: !2, line: 234, column: 3)
!262 = !{i8 0, i8 2}
!263 = !{}
!264 = !DILocation(line: 235, column: 9, scope: !261)
!265 = !DILocation(line: 237, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !260, file: !2, line: 236, column: 5)
!267 = !DILocation(line: 237, column: 7, scope: !266)
!268 = !DILocation(line: 238, column: 5, scope: !266)
!269 = !DILocation(line: 239, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !261, file: !2, line: 239, column: 9)
!271 = !DILocation(line: 239, column: 9, scope: !261)
!272 = !DILocation(line: 241, column: 25, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !2, line: 240, column: 5)
!274 = !DILocation(line: 241, column: 7, scope: !273)
!275 = !DILocation(line: 242, column: 5, scope: !273)
!276 = !DILocation(line: 244, column: 8, scope: !277)
!277 = distinct !DILexicalBlock(scope: !173, file: !2, line: 244, column: 7)
!278 = !DILocation(line: 244, column: 7, scope: !173)
!279 = !DILocation(line: 246, column: 5, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !2, line: 245, column: 3)
!281 = !DILocation(line: 246, column: 5, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !2, line: 246, column: 5)
!283 = distinct !DILexicalBlock(scope: !280, file: !2, line: 246, column: 5)
!284 = !DILocation(line: 246, column: 5, scope: !283)
!285 = !DILocation(line: 246, column: 5, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !2, line: 246, column: 5)
!287 = !DILocation(line: 247, column: 10, scope: !288)
!288 = distinct !DILexicalBlock(scope: !280, file: !2, line: 247, column: 9)
!289 = !DILocation(line: 247, column: 19, scope: !288)
!290 = !DILocation(line: 247, column: 33, scope: !288)
!291 = !DILocation(line: 247, column: 57, scope: !288)
!292 = !DILocation(line: 247, column: 37, scope: !288)
!293 = !DILocation(line: 247, column: 9, scope: !280)
!294 = !DILocation(line: 249, column: 42, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !2, line: 248, column: 5)
!296 = !DILocation(line: 249, column: 51, scope: !295)
!297 = !DILocation(line: 249, column: 64, scope: !295)
!298 = !DILocation(line: 249, column: 22, scope: !295)
!299 = !DILocation(line: 249, column: 20, scope: !295)
!300 = !DILocation(line: 250, column: 11, scope: !301)
!301 = distinct !DILexicalBlock(scope: !295, file: !2, line: 250, column: 11)
!302 = !DILocation(line: 250, column: 24, scope: !301)
!303 = !DILocation(line: 250, column: 11, scope: !295)
!304 = !DILocation(line: 252, column: 16, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !2, line: 251, column: 7)
!306 = !DILocation(line: 253, column: 7, scope: !305)
!307 = !DILocation(line: 254, column: 5, scope: !295)
!308 = !DILocation(line: 255, column: 3, scope: !280)
!309 = !DILocation(line: 256, column: 8, scope: !310)
!310 = distinct !DILexicalBlock(scope: !173, file: !2, line: 256, column: 7)
!311 = !DILocation(line: 256, column: 7, scope: !173)
!312 = !DILocation(line: 258, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !2, line: 257, column: 3)
!314 = !DILocation(line: 258, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 258, column: 5)
!316 = distinct !DILexicalBlock(scope: !313, file: !2, line: 258, column: 5)
!317 = !DILocation(line: 258, column: 5, scope: !316)
!318 = !DILocation(line: 258, column: 5, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !2, line: 258, column: 5)
!320 = !DILocation(line: 259, column: 30, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !2, line: 259, column: 9)
!322 = !DILocation(line: 259, column: 10, scope: !321)
!323 = !DILocation(line: 259, column: 9, scope: !313)
!324 = !DILocation(line: 261, column: 38, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !2, line: 260, column: 5)
!326 = !DILocation(line: 262, column: 60, scope: !325)
!327 = !DILocation(line: 262, column: 38, scope: !325)
!328 = !DILocation(line: 263, column: 38, scope: !325)
!329 = !DILocation(line: 261, column: 20, scope: !325)
!330 = !DILocation(line: 261, column: 18, scope: !325)
!331 = !DILocation(line: 264, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !325, file: !2, line: 264, column: 11)
!333 = !DILocation(line: 264, column: 22, scope: !332)
!334 = !DILocation(line: 264, column: 11, scope: !325)
!335 = !DILocation(line: 266, column: 16, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !2, line: 265, column: 7)
!337 = !DILocation(line: 267, column: 7, scope: !336)
!338 = !DILocation(line: 268, column: 5, scope: !325)
!339 = !DILocation(line: 269, column: 3, scope: !313)
!340 = !DILocation(line: 270, column: 8, scope: !207)
!341 = !DILocation(line: 270, column: 7, scope: !173)
!342 = !DILocation(line: 272, column: 5, scope: !206)
!343 = !DILocation(line: 272, column: 20, scope: !206)
!344 = !DILocation(line: 273, column: 5, scope: !206)
!345 = !DILocation(line: 273, column: 13, scope: !206)
!346 = !DILocation(line: 274, column: 5, scope: !206)
!347 = !DILocation(line: 274, column: 11, scope: !206)
!348 = !DILocation(line: 275, column: 5, scope: !206)
!349 = !DILocation(line: 275, column: 14, scope: !206)
!350 = !DILocation(line: 276, column: 5, scope: !206)
!351 = !DILocation(line: 276, column: 9, scope: !206)
!352 = !DILocation(line: 277, column: 5, scope: !206)
!353 = !DILocation(line: 277, column: 19, scope: !206)
!354 = !DILocation(line: 278, column: 5, scope: !206)
!355 = !DILocation(line: 278, column: 20, scope: !206)
!356 = !DILocation(line: 280, column: 5, scope: !206)
!357 = !DILocation(line: 280, column: 5, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 280, column: 5)
!359 = distinct !DILexicalBlock(scope: !206, file: !2, line: 280, column: 5)
!360 = !DILocation(line: 280, column: 5, scope: !359)
!361 = !DILocation(line: 280, column: 5, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !2, line: 280, column: 5)
!363 = !DILocation(line: 281, column: 42, scope: !206)
!364 = !DILocation(line: 281, column: 51, scope: !206)
!365 = !DILocation(line: 281, column: 60, scope: !206)
!366 = !DILocation(line: 281, column: 5, scope: !206)
!367 = !DILocation(line: 282, column: 49, scope: !206)
!368 = !DILocation(line: 282, column: 65, scope: !206)
!369 = !DILocation(line: 282, column: 13, scope: !206)
!370 = !DILocation(line: 282, column: 11, scope: !206)
!371 = !DILocation(line: 283, column: 10, scope: !372)
!372 = distinct !DILexicalBlock(scope: !206, file: !2, line: 283, column: 9)
!373 = !DILocation(line: 283, column: 9, scope: !206)
!374 = !DILocation(line: 284, column: 14, scope: !372)
!375 = !DILocation(line: 284, column: 7, scope: !372)
!376 = !DILocation(line: 285, column: 10, scope: !377)
!377 = distinct !DILexicalBlock(scope: !206, file: !2, line: 285, column: 9)
!378 = !DILocation(line: 285, column: 9, scope: !206)
!379 = !DILocation(line: 287, column: 37, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !2, line: 286, column: 5)
!381 = !DILocation(line: 288, column: 70, scope: !380)
!382 = !{!128, !116, i64 48}
!383 = !DILocation(line: 288, column: 34, scope: !380)
!384 = !DILocation(line: 287, column: 7, scope: !380)
!385 = !DILocation(line: 289, column: 20, scope: !386)
!386 = distinct !DILexicalBlock(scope: !380, file: !2, line: 289, column: 7)
!387 = !{!129, !129, i64 0}
!388 = !DILocation(line: 289, column: 12, scope: !386)
!389 = !DILocation(line: 291, column: 39, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !2, line: 290, column: 7)
!391 = distinct !DILexicalBlock(scope: !386, file: !2, line: 289, column: 7)
!392 = !DILocation(line: 295, column: 38, scope: !390)
!393 = !DILocation(line: 291, column: 18, scope: !390)
!394 = !DILocation(line: 291, column: 16, scope: !390)
!395 = !DILocation(line: 296, column: 13, scope: !396)
!396 = distinct !DILexicalBlock(scope: !390, file: !2, line: 296, column: 13)
!397 = !DILocation(line: 296, column: 20, scope: !396)
!398 = !DILocation(line: 296, column: 13, scope: !390)
!399 = !DILocation(line: 298, column: 18, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !2, line: 297, column: 9)
!401 = !DILocation(line: 299, column: 11, scope: !400)
!402 = !DILocation(line: 301, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !390, file: !2, line: 301, column: 13)
!404 = !DILocation(line: 301, column: 20, scope: !403)
!405 = !DILocation(line: 301, column: 13, scope: !390)
!406 = !DILocation(line: 303, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !403, file: !2, line: 302, column: 9)
!408 = !DILocation(line: 305, column: 28, scope: !390)
!409 = !DILocation(line: 306, column: 28, scope: !390)
!410 = !DILocation(line: 308, column: 28, scope: !390)
!411 = !DILocation(line: 309, column: 28, scope: !390)
!412 = !DILocation(line: 310, column: 28, scope: !390)
!413 = !DILocation(line: 311, column: 28, scope: !390)
!414 = !DILocation(line: 312, column: 28, scope: !390)
!415 = !DILocation(line: 305, column: 9, scope: !390)
!416 = !DILocation(line: 313, column: 7, scope: !390)
!417 = !DILocation(line: 289, column: 47, scope: !391)
!418 = !DILocation(line: 289, column: 7, scope: !391)
!419 = distinct !{!419, !420, !421}
!420 = !DILocation(line: 289, column: 7, scope: !386)
!421 = !DILocation(line: 313, column: 7, scope: !386)
!422 = !DILocation(line: 314, column: 30, scope: !380)
!423 = !DILocation(line: 314, column: 7, scope: !380)
!424 = !DILocation(line: 315, column: 5, scope: !380)
!425 = !DILocation(line: 316, column: 5, scope: !206)
!426 = !DILocation(line: 317, column: 3, scope: !207)
!427 = !DILocation(line: 317, column: 3, scope: !206)
!428 = !DILocation(line: 318, column: 7, scope: !429)
!429 = distinct !DILexicalBlock(scope: !173, file: !2, line: 318, column: 7)
!430 = !DILocation(line: 318, column: 18, scope: !429)
!431 = !DILocation(line: 318, column: 7, scope: !173)
!432 = !DILocation(line: 320, column: 5, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !2, line: 319, column: 3)
!434 = !DILocation(line: 321, column: 3, scope: !433)
!435 = !DILocation(line: 322, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !173, file: !2, line: 322, column: 7)
!437 = !DILocation(line: 322, column: 20, scope: !436)
!438 = !DILocation(line: 322, column: 7, scope: !173)
!439 = !DILocation(line: 324, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !2, line: 323, column: 3)
!441 = !DILocation(line: 325, column: 3, scope: !440)
!442 = !DILocation(line: 326, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !173, file: !2, line: 326, column: 7)
!444 = !DILocation(line: 326, column: 16, scope: !443)
!445 = !DILocation(line: 326, column: 7, scope: !173)
!446 = !DILocation(line: 328, column: 5, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !2, line: 327, column: 3)
!448 = !DILocation(line: 329, column: 3, scope: !447)
!449 = !DILocation(line: 330, column: 10, scope: !173)
!450 = !DILocation(line: 331, column: 1, scope: !173)
!451 = !DILocation(line: 330, column: 3, scope: !173)
!452 = !DISubprogram(name: "gt_error_is_set", scope: !186, file: !186, line: 64, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DISubroutineType(types: !454)
!454 = !{!183, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!457 = !DISubprogram(name: "fprintf", scope: !458, file: !458, line: 350, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!459 = !DISubroutineType(types: !460)
!460 = !{!176, !461, !519, null}
!461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !464, line: 7, baseType: !465)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !466, line: 49, size: 1728, elements: !467)
!466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !483, !485, !486, !487, !490, !492, !494, !498, !501, !503, !506, !509, !510, !511, !514, !515}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !465, file: !466, line: 51, baseType: !176, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !465, file: !466, line: 54, baseType: !210, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !465, file: !466, line: 55, baseType: !210, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !465, file: !466, line: 56, baseType: !210, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !465, file: !466, line: 57, baseType: !210, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !465, file: !466, line: 58, baseType: !210, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !465, file: !466, line: 59, baseType: !210, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !465, file: !466, line: 60, baseType: !210, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !465, file: !466, line: 61, baseType: !210, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !465, file: !466, line: 64, baseType: !210, size: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !465, file: !466, line: 65, baseType: !210, size: 64, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !465, file: !466, line: 66, baseType: !210, size: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !465, file: !466, line: 68, baseType: !481, size: 64, offset: 768)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !466, line: 36, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !465, file: !466, line: 70, baseType: !484, size: 64, offset: 832)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !465, file: !466, line: 72, baseType: !176, size: 32, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !465, file: !466, line: 73, baseType: !176, size: 32, offset: 928)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !465, file: !466, line: 74, baseType: !488, size: 64, offset: 960)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !215, line: 152, baseType: !489)
!489 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !465, file: !466, line: 77, baseType: !491, size: 16, offset: 1024)
!491 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !465, file: !466, line: 78, baseType: !493, size: 8, offset: 1040)
!493 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !465, file: !466, line: 79, baseType: !495, size: 8, offset: 1048)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 1)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !465, file: !466, line: 81, baseType: !499, size: 64, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !466, line: 43, baseType: null)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !465, file: !466, line: 89, baseType: !502, size: 64, offset: 1152)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !215, line: 153, baseType: !489)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !465, file: !466, line: 91, baseType: !504, size: 64, offset: 1216)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !466, line: 37, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !465, file: !466, line: 92, baseType: !507, size: 64, offset: 1280)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !466, line: 38, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !465, file: !466, line: 93, baseType: !484, size: 64, offset: 1344)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !465, file: !466, line: 94, baseType: !62, size: 64, offset: 1408)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !465, file: !466, line: 95, baseType: !512, size: 64, offset: 1472)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !513, line: 70, baseType: !67)
!513 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !465, file: !466, line: 96, baseType: !176, size: 32, offset: 1536)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !465, file: !466, line: 98, baseType: !516, size: 160, offset: 1568)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 20)
!519 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !177)
!520 = !DISubprogram(name: "abort", scope: !521, file: !521, line: 598, type: !522, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!521 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!522 = !DISubroutineType(types: !523)
!523 = !{null}
!524 = !DISubprogram(name: "gt_tyrindex_new", scope: !83, file: !83, line: 28, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!525 = !DISubroutineType(types: !526)
!526 = !{!197, !177, !184}
!527 = !DISubprogram(name: "gt_tyrindex_show", scope: !83, file: !83, line: 35, type: !528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !80}
!530 = !DISubprogram(name: "gt_tyrindex_check", scope: !83, file: !83, line: 42, type: !528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubprogram(name: "gt_tyrindex_isempty", scope: !83, file: !83, line: 34, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!183, !80}
!534 = !DISubprogram(name: "gt_tyrcountinfo_new", scope: !83, file: !83, line: 51, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{!199, !80, !177, !184}
!537 = !DISubprogram(name: "gt_tyrbckinfo_new", scope: !107, file: !107, line: 32, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubroutineType(types: !539)
!539 = !{!203, !177, !97, !184}
!540 = !DISubprogram(name: "gt_tyrindex_alphasize", scope: !83, file: !83, line: 32, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{!97, !80}
!543 = distinct !DISubprogram(name: "gt_tyrsearchinfo_init", scope: !2, file: !2, line: 43, type: !544, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !547)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546, !80, !97, !97}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!547 = !{!548, !549, !550, !551, !552}
!548 = !DILocalVariable(name: "tyrsearchinfo", arg: 1, scope: !543, file: !2, line: 43, type: !546)
!549 = !DILocalVariable(name: "tyrindex", arg: 2, scope: !543, file: !2, line: 44, type: !80)
!550 = !DILocalVariable(name: "showmode", arg: 3, scope: !543, file: !2, line: 45, type: !97)
!551 = !DILocalVariable(name: "searchstrand", arg: 4, scope: !543, file: !2, line: 46, type: !97)
!552 = !DILocalVariable(name: "merbytes", scope: !543, file: !2, line: 48, type: !66)
!553 = !DILocation(line: 43, column: 50, scope: !543)
!554 = !DILocation(line: 44, column: 48, scope: !543)
!555 = !DILocation(line: 45, column: 45, scope: !543)
!556 = !DILocation(line: 46, column: 45, scope: !543)
!557 = !DILocation(line: 48, column: 3, scope: !543)
!558 = !DILocation(line: 48, column: 11, scope: !543)
!559 = !DILocation(line: 50, column: 35, scope: !543)
!560 = !DILocation(line: 50, column: 14, scope: !543)
!561 = !DILocation(line: 50, column: 12, scope: !543)
!562 = !DILocation(line: 51, column: 48, scope: !543)
!563 = !DILocation(line: 51, column: 28, scope: !543)
!564 = !DILocation(line: 51, column: 3, scope: !543)
!565 = !DILocation(line: 51, column: 18, scope: !543)
!566 = !DILocation(line: 51, column: 26, scope: !543)
!567 = !DILocation(line: 52, column: 50, scope: !543)
!568 = !DILocation(line: 52, column: 29, scope: !543)
!569 = !DILocation(line: 52, column: 3, scope: !543)
!570 = !DILocation(line: 52, column: 18, scope: !543)
!571 = !DILocation(line: 52, column: 27, scope: !543)
!572 = !DILocation(line: 53, column: 48, scope: !543)
!573 = !DILocation(line: 53, column: 28, scope: !543)
!574 = !DILocation(line: 53, column: 3, scope: !543)
!575 = !DILocation(line: 53, column: 18, scope: !543)
!576 = !DILocation(line: 53, column: 26, scope: !543)
!577 = !DILocation(line: 54, column: 29, scope: !543)
!578 = !DILocation(line: 54, column: 3, scope: !543)
!579 = !DILocation(line: 54, column: 18, scope: !543)
!580 = !DILocation(line: 54, column: 27, scope: !543)
!581 = !{!128, !130, i64 40}
!582 = !DILocation(line: 55, column: 33, scope: !543)
!583 = !DILocation(line: 55, column: 3, scope: !543)
!584 = !DILocation(line: 55, column: 18, scope: !543)
!585 = !DILocation(line: 55, column: 31, scope: !543)
!586 = !{!128, !130, i64 44}
!587 = !DILocation(line: 56, column: 29, scope: !543)
!588 = !DILocation(line: 56, column: 3, scope: !543)
!589 = !DILocation(line: 56, column: 18, scope: !543)
!590 = !DILocation(line: 56, column: 27, scope: !543)
!591 = !DILocation(line: 57, column: 29, scope: !543)
!592 = !DILocation(line: 57, column: 3, scope: !543)
!593 = !DILocation(line: 57, column: 18, scope: !543)
!594 = !DILocation(line: 57, column: 27, scope: !543)
!595 = !DILocation(line: 59, column: 26, scope: !543)
!596 = !DILocation(line: 59, column: 3, scope: !543)
!597 = !DILocation(line: 59, column: 18, scope: !543)
!598 = !DILocation(line: 59, column: 24, scope: !543)
!599 = !{!128, !116, i64 8}
!600 = !DILocation(line: 61, column: 1, scope: !543)
!601 = !DISubprogram(name: "gt_seq_iterator_sequence_buffer_new", scope: !602, file: !602, line: 32, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DIFile(filename: "src/core/seq_iterator_sequence_buffer_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d90f3f9876f36890a4f15bdb8b110341")
!603 = !DISubroutineType(types: !604)
!604 = !{!219, !178, !184}
!605 = !DISubprogram(name: "gt_seq_iterator_set_symbolmap", scope: !221, file: !221, line: 33, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !219, !78}
!608 = !DISubprogram(name: "gt_alphabet_symbolmap", scope: !102, file: !102, line: 75, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubroutineType(types: !610)
!610 = !{!78, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!613 = !DISubprogram(name: "gt_seq_iterator_next", scope: !221, file: !221, line: 45, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{!176, !219, !616, !617, !618, !184}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!619 = distinct !DISubprogram(name: "singleseqtyrsearch", scope: !2, file: !2, line: 146, type: !620, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !624)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !80, !622, !85, !104, !212, !78, !66, !177}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!625 = !DILocalVariable(name: "tyrindex", arg: 1, scope: !619, file: !2, line: 146, type: !80)
!626 = !DILocalVariable(name: "tyrcountinfo", arg: 2, scope: !619, file: !2, line: 147, type: !622)
!627 = !DILocalVariable(name: "tyrsearchinfo", arg: 3, scope: !619, file: !2, line: 148, type: !85)
!628 = !DILocalVariable(name: "tyrbckinfo", arg: 4, scope: !619, file: !2, line: 149, type: !104)
!629 = !DILocalVariable(name: "unitnum", arg: 5, scope: !619, file: !2, line: 150, type: !212)
!630 = !DILocalVariable(name: "query", arg: 6, scope: !619, file: !2, line: 151, type: !78)
!631 = !DILocalVariable(name: "querylen", arg: 7, scope: !619, file: !2, line: 152, type: !66)
!632 = !DILocalVariable(name: "desc", arg: 8, scope: !619, file: !2, line: 153, type: !177)
!633 = !DILocalVariable(name: "qptr", scope: !619, file: !2, line: 155, type: !78)
!634 = !DILocalVariable(name: "result", scope: !619, file: !2, line: 155, type: !78)
!635 = !DILocalVariable(name: "offset", scope: !619, file: !2, line: 156, type: !66)
!636 = !DILocalVariable(name: "skipvalue", scope: !619, file: !2, line: 156, type: !66)
!637 = !DILocation(line: 146, column: 48, scope: !619)
!638 = !DILocation(line: 147, column: 52, scope: !619)
!639 = !DILocation(line: 148, column: 53, scope: !619)
!640 = !DILocation(line: 149, column: 50, scope: !619)
!641 = !DILocation(line: 150, column: 41, scope: !619)
!642 = !DILocation(line: 151, column: 47, scope: !619)
!643 = !DILocation(line: 152, column: 40, scope: !619)
!644 = !DILocation(line: 153, column: 54, scope: !619)
!645 = !DILocation(line: 155, column: 3, scope: !619)
!646 = !DILocation(line: 155, column: 18, scope: !619)
!647 = !DILocation(line: 155, column: 25, scope: !619)
!648 = !DILocation(line: 156, column: 3, scope: !619)
!649 = !DILocation(line: 156, column: 11, scope: !619)
!650 = !DILocation(line: 156, column: 19, scope: !619)
!651 = !DILocation(line: 158, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !619, file: !2, line: 158, column: 7)
!653 = !DILocation(line: 158, column: 22, scope: !652)
!654 = !DILocation(line: 158, column: 32, scope: !652)
!655 = !DILocation(line: 158, column: 30, scope: !652)
!656 = !DILocation(line: 158, column: 7, scope: !619)
!657 = !DILocation(line: 160, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !652, file: !2, line: 159, column: 3)
!659 = !DILocation(line: 162, column: 10, scope: !619)
!660 = !DILocation(line: 162, column: 8, scope: !619)
!661 = !DILocation(line: 163, column: 10, scope: !619)
!662 = !DILocation(line: 164, column: 3, scope: !619)
!663 = !DILocation(line: 164, column: 10, scope: !619)
!664 = !DILocation(line: 164, column: 18, scope: !619)
!665 = !DILocation(line: 164, column: 26, scope: !619)
!666 = !DILocation(line: 164, column: 24, scope: !619)
!667 = !DILocation(line: 164, column: 37, scope: !619)
!668 = !DILocation(line: 164, column: 52, scope: !619)
!669 = !DILocation(line: 164, column: 35, scope: !619)
!670 = !DILocation(line: 164, column: 15, scope: !619)
!671 = !DILocation(line: 166, column: 46, scope: !672)
!672 = distinct !DILexicalBlock(scope: !619, file: !2, line: 165, column: 3)
!673 = !DILocation(line: 166, column: 51, scope: !672)
!674 = !DILocation(line: 167, column: 46, scope: !672)
!675 = !DILocation(line: 167, column: 61, scope: !672)
!676 = !DILocation(line: 166, column: 17, scope: !672)
!677 = !DILocation(line: 166, column: 15, scope: !672)
!678 = !DILocation(line: 168, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !672, file: !2, line: 168, column: 9)
!680 = !DILocation(line: 168, column: 22, scope: !679)
!681 = !DILocation(line: 168, column: 37, scope: !679)
!682 = !DILocation(line: 168, column: 19, scope: !679)
!683 = !DILocation(line: 168, column: 9, scope: !672)
!684 = !DILocation(line: 170, column: 16, scope: !685)
!685 = distinct !DILexicalBlock(scope: !679, file: !2, line: 169, column: 5)
!686 = !DILocation(line: 170, column: 31, scope: !685)
!687 = !DILocation(line: 170, column: 38, scope: !685)
!688 = !DILocation(line: 170, column: 14, scope: !685)
!689 = !DILocation(line: 171, column: 11, scope: !690)
!690 = distinct !DILexicalBlock(scope: !685, file: !2, line: 171, column: 11)
!691 = !DILocation(line: 171, column: 26, scope: !690)
!692 = !DILocation(line: 171, column: 39, scope: !690)
!693 = !DILocation(line: 171, column: 11, scope: !685)
!694 = !DILocation(line: 173, column: 37, scope: !695)
!695 = distinct !DILexicalBlock(scope: !690, file: !2, line: 172, column: 7)
!696 = !DILocation(line: 173, column: 42, scope: !695)
!697 = !DILocation(line: 174, column: 37, scope: !695)
!698 = !DILocation(line: 174, column: 51, scope: !695)
!699 = !DILocation(line: 173, column: 18, scope: !695)
!700 = !DILocation(line: 173, column: 16, scope: !695)
!701 = !DILocation(line: 175, column: 13, scope: !702)
!702 = distinct !DILexicalBlock(scope: !695, file: !2, line: 175, column: 13)
!703 = !DILocation(line: 175, column: 20, scope: !702)
!704 = !DILocation(line: 175, column: 13, scope: !695)
!705 = !DILocation(line: 177, column: 26, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !2, line: 176, column: 9)
!707 = !DILocation(line: 178, column: 26, scope: !706)
!708 = !DILocation(line: 179, column: 26, scope: !706)
!709 = !DILocation(line: 180, column: 26, scope: !706)
!710 = !DILocation(line: 181, column: 26, scope: !706)
!711 = !DILocation(line: 182, column: 26, scope: !706)
!712 = !DILocation(line: 183, column: 26, scope: !706)
!713 = !DILocation(line: 177, column: 11, scope: !706)
!714 = !DILocation(line: 185, column: 9, scope: !706)
!715 = !DILocation(line: 186, column: 7, scope: !695)
!716 = !DILocation(line: 187, column: 11, scope: !717)
!717 = distinct !DILexicalBlock(scope: !685, file: !2, line: 187, column: 11)
!718 = !DILocation(line: 187, column: 26, scope: !717)
!719 = !DILocation(line: 187, column: 39, scope: !717)
!720 = !DILocation(line: 187, column: 11, scope: !685)
!721 = !DILocation(line: 189, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !717, file: !2, line: 188, column: 7)
!723 = !DILocation(line: 189, column: 9, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !2, line: 189, column: 9)
!725 = distinct !DILexicalBlock(scope: !722, file: !2, line: 189, column: 9)
!726 = !DILocation(line: 189, column: 9, scope: !725)
!727 = !DILocation(line: 189, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !2, line: 189, column: 9)
!729 = !DILocation(line: 190, column: 36, scope: !722)
!730 = !DILocation(line: 190, column: 51, scope: !722)
!731 = !DILocation(line: 190, column: 57, scope: !722)
!732 = !DILocation(line: 191, column: 36, scope: !722)
!733 = !DILocation(line: 191, column: 51, scope: !722)
!734 = !DILocation(line: 190, column: 9, scope: !722)
!735 = !DILocation(line: 192, column: 37, scope: !722)
!736 = !DILocation(line: 192, column: 52, scope: !722)
!737 = !DILocation(line: 192, column: 58, scope: !722)
!738 = !DILocation(line: 193, column: 37, scope: !722)
!739 = !DILocation(line: 193, column: 51, scope: !722)
!740 = !DILocation(line: 192, column: 18, scope: !722)
!741 = !DILocation(line: 192, column: 16, scope: !722)
!742 = !DILocation(line: 194, column: 13, scope: !743)
!743 = distinct !DILexicalBlock(scope: !722, file: !2, line: 194, column: 13)
!744 = !DILocation(line: 194, column: 20, scope: !743)
!745 = !DILocation(line: 194, column: 13, scope: !722)
!746 = !DILocation(line: 196, column: 26, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !2, line: 195, column: 9)
!748 = !DILocation(line: 197, column: 26, scope: !747)
!749 = !DILocation(line: 198, column: 26, scope: !747)
!750 = !DILocation(line: 199, column: 26, scope: !747)
!751 = !DILocation(line: 200, column: 26, scope: !747)
!752 = !DILocation(line: 201, column: 26, scope: !747)
!753 = !DILocation(line: 202, column: 26, scope: !747)
!754 = !DILocation(line: 196, column: 11, scope: !747)
!755 = !DILocation(line: 204, column: 9, scope: !747)
!756 = !DILocation(line: 205, column: 7, scope: !722)
!757 = !DILocation(line: 206, column: 11, scope: !685)
!758 = !DILocation(line: 207, column: 5, scope: !685)
!759 = !DILocation(line: 209, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !679, file: !2, line: 208, column: 5)
!761 = !DILocation(line: 210, column: 16, scope: !760)
!762 = !DILocation(line: 210, column: 25, scope: !760)
!763 = !DILocation(line: 210, column: 12, scope: !760)
!764 = distinct !{!764, !662, !765, !766}
!765 = !DILocation(line: 212, column: 3, scope: !619)
!766 = !{!"llvm.loop.mustprogress"}
!767 = !DILocation(line: 213, column: 1, scope: !619)
!768 = !DISubprogram(name: "gt_seq_iterator_delete", scope: !221, file: !221, line: 65, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !219}
!771 = distinct !DISubprogram(name: "gt_tyrsearchinfo_delete", scope: !2, file: !2, line: 63, type: !772, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !546}
!774 = !{!775}
!775 = !DILocalVariable(name: "tyrsearchinfo", arg: 1, scope: !771, file: !2, line: 63, type: !546)
!776 = !DILocation(line: 63, column: 52, scope: !771)
!777 = !DILocation(line: 65, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !771, file: !2, line: 65, column: 7)
!779 = !DILocation(line: 65, column: 21, scope: !778)
!780 = !DILocation(line: 65, column: 7, scope: !771)
!781 = !DILocation(line: 67, column: 24, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !2, line: 66, column: 3)
!783 = !DILocation(line: 67, column: 39, scope: !782)
!784 = !DILocation(line: 67, column: 5, scope: !782)
!785 = !DILocation(line: 68, column: 5, scope: !782)
!786 = !DILocation(line: 69, column: 5, scope: !782)
!787 = !DILocation(line: 70, column: 3, scope: !782)
!788 = !DILocation(line: 71, column: 1, scope: !771)
!789 = !DISubprogram(name: "gt_tyrbckinfo_delete", scope: !107, file: !107, line: 35, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!793 = !DISubprogram(name: "gt_tyrcountinfo_delete", scope: !83, file: !83, line: 56, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !796}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!797 = !DISubprogram(name: "gt_tyrindex_delete", scope: !83, file: !83, line: 36, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!801 = !DISubprogram(name: "gt_tyrindex_merbytes", scope: !83, file: !83, line: 31, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DISubroutineType(types: !803)
!803 = !{!66, !80}
!804 = !DISubprogram(name: "gt_tyrindex_mersize", scope: !83, file: !83, line: 33, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DISubprogram(name: "gt_tyrindex_mertable", scope: !83, file: !83, line: 29, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!78, !80}
!808 = !DISubprogram(name: "gt_tyrindex_lastmer", scope: !83, file: !83, line: 30, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubprogram(name: "gt_alphabet_new_dna", scope: !102, file: !102, line: 35, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DISubroutineType(types: !811)
!811 = !{!100}
!812 = !DISubprogram(name: "gt_malloc_mem", scope: !813, file: !813, line: 56, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!813 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!814 = !DISubroutineType(types: !815)
!815 = !{!62, !512, !177, !176}
!816 = distinct !DISubprogram(name: "gt_containsspecialbytestring", scope: !40, file: !40, line: 74, type: !817, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!66, !78, !66, !66}
!819 = !{!820, !821, !822, !823}
!820 = !DILocalVariable(name: "seq", arg: 1, scope: !816, file: !40, line: 74, type: !78)
!821 = !DILocalVariable(name: "offset", arg: 2, scope: !816, file: !40, line: 75, type: !66)
!822 = !DILocalVariable(name: "len", arg: 3, scope: !816, file: !40, line: 76, type: !66)
!823 = !DILocalVariable(name: "sptr", scope: !816, file: !40, line: 78, type: !78)
!824 = !DILocation(line: 74, column: 73, scope: !816)
!825 = !DILocation(line: 75, column: 63, scope: !816)
!826 = !DILocation(line: 76, column: 63, scope: !816)
!827 = !DILocation(line: 78, column: 3, scope: !816)
!828 = !DILocation(line: 78, column: 18, scope: !816)
!829 = !DILocation(line: 80, column: 3, scope: !816)
!830 = !DILocation(line: 80, column: 3, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !40, line: 80, column: 3)
!832 = distinct !DILexicalBlock(scope: !816, file: !40, line: 80, column: 3)
!833 = !DILocation(line: 80, column: 3, scope: !832)
!834 = !DILocation(line: 80, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !40, line: 80, column: 3)
!836 = !DILocation(line: 81, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !816, file: !40, line: 81, column: 3)
!838 = !DILocation(line: 81, column: 17, scope: !837)
!839 = !DILocation(line: 81, column: 16, scope: !837)
!840 = !DILocation(line: 81, column: 12, scope: !837)
!841 = !DILocation(line: 81, column: 8, scope: !837)
!842 = !DILocation(line: 81, column: 25, scope: !843)
!843 = distinct !DILexicalBlock(scope: !837, file: !40, line: 81, column: 3)
!844 = !DILocation(line: 81, column: 32, scope: !843)
!845 = !DILocation(line: 81, column: 38, scope: !843)
!846 = !DILocation(line: 81, column: 36, scope: !843)
!847 = !DILocation(line: 81, column: 30, scope: !843)
!848 = !DILocation(line: 81, column: 3, scope: !837)
!849 = !DILocation(line: 83, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !40, line: 83, column: 9)
!851 = distinct !DILexicalBlock(scope: !843, file: !40, line: 82, column: 3)
!852 = !{!117, !117, i64 0}
!853 = !DILocation(line: 83, column: 9, scope: !851)
!854 = !DILocation(line: 85, column: 25, scope: !855)
!855 = distinct !DILexicalBlock(scope: !850, file: !40, line: 84, column: 5)
!856 = !DILocation(line: 85, column: 32, scope: !855)
!857 = !DILocation(line: 85, column: 30, scope: !855)
!858 = !DILocation(line: 85, column: 7, scope: !855)
!859 = !DILocation(line: 87, column: 3, scope: !851)
!860 = !DILocation(line: 81, column: 47, scope: !843)
!861 = !DILocation(line: 81, column: 3, scope: !843)
!862 = distinct !{!862, !848, !863, !766}
!863 = !DILocation(line: 87, column: 3, scope: !837)
!864 = !DILocation(line: 88, column: 10, scope: !816)
!865 = !DILocation(line: 88, column: 3, scope: !816)
!866 = !DILocation(line: 89, column: 1, scope: !816)
!867 = distinct !DISubprogram(name: "mermatchoutput", scope: !2, file: !2, line: 103, type: !868, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !80, !622, !85, !78, !78, !78, !212, !183}
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881}
!871 = !DILocalVariable(name: "tyrindex", arg: 1, scope: !867, file: !2, line: 103, type: !80)
!872 = !DILocalVariable(name: "tyrcountinfo", arg: 2, scope: !867, file: !2, line: 104, type: !622)
!873 = !DILocalVariable(name: "tyrsearchinfo", arg: 3, scope: !867, file: !2, line: 105, type: !85)
!874 = !DILocalVariable(name: "result", arg: 4, scope: !867, file: !2, line: 106, type: !78)
!875 = !DILocalVariable(name: "query", arg: 5, scope: !867, file: !2, line: 107, type: !78)
!876 = !DILocalVariable(name: "qptr", arg: 6, scope: !867, file: !2, line: 108, type: !78)
!877 = !DILocalVariable(name: "unitnum", arg: 7, scope: !867, file: !2, line: 109, type: !212)
!878 = !DILocalVariable(name: "forward", arg: 8, scope: !867, file: !2, line: 110, type: !183)
!879 = !DILocalVariable(name: "firstitem", scope: !867, file: !2, line: 112, type: !183)
!880 = !DILocalVariable(name: "queryposition", scope: !867, file: !2, line: 113, type: !66)
!881 = !DILocalVariable(name: "mernumber", scope: !882, file: !2, line: 128, type: !66)
!882 = distinct !DILexicalBlock(scope: !883, file: !2, line: 127, column: 3)
!883 = distinct !DILexicalBlock(scope: !867, file: !2, line: 126, column: 7)
!884 = !DILocation(line: 103, column: 44, scope: !867)
!885 = !DILocation(line: 104, column: 48, scope: !867)
!886 = !DILocation(line: 105, column: 49, scope: !867)
!887 = !DILocation(line: 106, column: 43, scope: !867)
!888 = !DILocation(line: 107, column: 43, scope: !867)
!889 = !DILocation(line: 108, column: 43, scope: !867)
!890 = !DILocation(line: 109, column: 37, scope: !867)
!891 = !DILocation(line: 110, column: 33, scope: !867)
!892 = !DILocation(line: 112, column: 3, scope: !867)
!893 = !DILocation(line: 112, column: 8, scope: !867)
!894 = !DILocation(line: 113, column: 3, scope: !867)
!895 = !DILocation(line: 113, column: 11, scope: !867)
!896 = !DILocation(line: 115, column: 30, scope: !867)
!897 = !DILocation(line: 115, column: 35, scope: !867)
!898 = !DILocation(line: 115, column: 34, scope: !867)
!899 = !DILocation(line: 115, column: 17, scope: !867)
!900 = !DILocation(line: 116, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !867, file: !2, line: 116, column: 7)
!902 = !DILocation(line: 116, column: 22, scope: !901)
!903 = !DILocation(line: 116, column: 31, scope: !901)
!904 = !DILocation(line: 116, column: 7, scope: !867)
!905 = !DILocation(line: 118, column: 27, scope: !906)
!906 = distinct !DILexicalBlock(scope: !901, file: !2, line: 117, column: 3)
!907 = !DILocation(line: 118, column: 5, scope: !906)
!908 = !DILocation(line: 119, column: 15, scope: !906)
!909 = !DILocation(line: 120, column: 3, scope: !906)
!910 = !DILocation(line: 121, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !867, file: !2, line: 121, column: 7)
!912 = !DILocation(line: 121, column: 22, scope: !911)
!913 = !DILocation(line: 121, column: 31, scope: !911)
!914 = !DILocation(line: 121, column: 7, scope: !867)
!915 = !DILocation(line: 123, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 123, column: 5)
!917 = distinct !DILexicalBlock(scope: !911, file: !2, line: 122, column: 3)
!918 = !DILocation(line: 123, column: 5, scope: !917)
!919 = !DILocation(line: 123, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !2, line: 123, column: 5)
!921 = !DILocation(line: 123, column: 5, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !2, line: 123, column: 5)
!923 = !DILocation(line: 124, column: 24, scope: !917)
!924 = !DILocation(line: 124, column: 44, scope: !917)
!925 = !DILocation(line: 124, column: 5, scope: !917)
!926 = !DILocation(line: 125, column: 3, scope: !917)
!927 = !DILocation(line: 126, column: 7, scope: !883)
!928 = !DILocation(line: 126, column: 22, scope: !883)
!929 = !DILocation(line: 126, column: 31, scope: !883)
!930 = !DILocation(line: 126, column: 7, scope: !867)
!931 = !DILocation(line: 128, column: 5, scope: !882)
!932 = !DILocation(line: 128, column: 13, scope: !882)
!933 = !DILocation(line: 128, column: 48, scope: !882)
!934 = !DILocation(line: 128, column: 57, scope: !882)
!935 = !DILocation(line: 128, column: 25, scope: !882)
!936 = !DILocation(line: 129, column: 5, scope: !937)
!937 = distinct !DILexicalBlock(scope: !882, file: !2, line: 129, column: 5)
!938 = !DILocation(line: 129, column: 5, scope: !882)
!939 = !DILocation(line: 129, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !2, line: 129, column: 5)
!941 = !DILocation(line: 129, column: 5, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !2, line: 129, column: 5)
!943 = !DILocation(line: 130, column: 42, scope: !882)
!944 = !DILocation(line: 130, column: 55, scope: !882)
!945 = !DILocation(line: 130, column: 22, scope: !882)
!946 = !DILocation(line: 130, column: 5, scope: !882)
!947 = !DILocation(line: 131, column: 3, scope: !883)
!948 = !DILocation(line: 131, column: 3, scope: !882)
!949 = !DILocation(line: 132, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !867, file: !2, line: 132, column: 7)
!951 = !DILocation(line: 132, column: 22, scope: !950)
!952 = !DILocation(line: 132, column: 31, scope: !950)
!953 = !DILocation(line: 132, column: 7, scope: !867)
!954 = !DILocation(line: 134, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 134, column: 5)
!956 = distinct !DILexicalBlock(scope: !950, file: !2, line: 133, column: 3)
!957 = !DILocation(line: 134, column: 5, scope: !956)
!958 = !DILocation(line: 134, column: 5, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !2, line: 134, column: 5)
!960 = !DILocation(line: 134, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !955, file: !2, line: 134, column: 5)
!962 = !DILocation(line: 135, column: 34, scope: !956)
!963 = !DILocation(line: 135, column: 49, scope: !956)
!964 = !DILocation(line: 136, column: 34, scope: !956)
!965 = !DILocation(line: 137, column: 34, scope: !956)
!966 = !DILocation(line: 138, column: 34, scope: !956)
!967 = !DILocation(line: 138, column: 49, scope: !956)
!968 = !DILocation(line: 135, column: 5, scope: !956)
!969 = !DILocation(line: 139, column: 3, scope: !956)
!970 = !DILocation(line: 140, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !867, file: !2, line: 140, column: 7)
!972 = !DILocation(line: 140, column: 22, scope: !971)
!973 = !DILocation(line: 140, column: 31, scope: !971)
!974 = !DILocation(line: 140, column: 7, scope: !867)
!975 = !DILocation(line: 142, column: 12, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !2, line: 141, column: 3)
!977 = !DILocation(line: 143, column: 3, scope: !976)
!978 = !DILocation(line: 144, column: 1, scope: !867)
!979 = !DISubprogram(name: "gt_copy_reverse_complement", scope: !980, file: !980, line: 26, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DIFile(filename: "src/match/revcompl.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0a3c868a2576c33a47b6b58a7448171e")
!981 = !DISubprogram(name: "printf", scope: !458, file: !458, line: 356, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{!176, !519, null}
!984 = distinct !DISubprogram(name: "putchar", scope: !985, file: !985, line: 82, type: !986, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !60, retainedNodes: !988)
!985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!986 = !DISubroutineType(types: !987)
!987 = !{!176, !176}
!988 = !{!989}
!989 = !DILocalVariable(name: "__c", arg: 1, scope: !984, file: !985, line: 82, type: !176)
!990 = !DILocation(line: 82, column: 14, scope: !984)
!991 = !DILocation(line: 84, column: 16, scope: !984)
!992 = !DILocation(line: 84, column: 21, scope: !984)
!993 = !DILocation(line: 84, column: 10, scope: !984)
!994 = !DILocation(line: 84, column: 3, scope: !984)
!995 = !DISubprogram(name: "gt_tyrindex_ptr2number", scope: !83, file: !83, line: 47, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{!66, !80, !78}
!998 = !DISubprogram(name: "gt_tyrcountinfo_get", scope: !83, file: !83, line: 54, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!66, !622, !66}
!1001 = !DISubprogram(name: "gt_alphabet_decode_seq_to_fp", scope: !102, file: !102, line: 129, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !611, !462, !78, !66}
!1004 = !DISubprogram(name: "putc", scope: !458, file: !458, line: 550, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!176, !176, !462}
!1007 = !DISubprogram(name: "gt_alphabet_delete", scope: !102, file: !102, line: 149, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !100}
!1010 = !DISubprogram(name: "gt_free_mem", scope: !813, file: !813, line: 75, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !62, !177, !176}
