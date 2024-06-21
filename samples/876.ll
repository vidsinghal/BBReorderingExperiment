; ModuleID = 'samples/876.bc'
source_filename = "src/extended/csa_splice_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtCSASpliceForm = type { ptr, ptr, ptr }
%struct.GtRange = type { i64, i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [32 x i8] c"spliced_alignment && get_strand\00", align 1, !dbg !7
@__func__.gt_csa_splice_form_new = private unnamed_addr constant [23 x i8] c"gt_csa_splice_form_new\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [31 x i8] c"src/extended/csa_splice_form.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [12 x i8] c"splice_form\00", align 1, !dbg !23
@__func__.gt_csa_splice_form_add_sa = private unnamed_addr constant [26 x i8] c"gt_csa_splice_form_add_sa\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [94 x i8] c"csa_splice_form_start(splice_form) <= splice_form->get_genomic_range(spliced_alignment).start\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [85 x i8] c"gt_csa_splice_form_strand(splice_form) == splice_form->get_strand(spliced_alignment)\00", align 1, !dbg !38
@__func__.gt_csa_splice_form_get_sa = private unnamed_addr constant [26 x i8] c"gt_csa_splice_form_get_sa\00", align 1, !dbg !43
@__func__.gt_csa_splice_form_num_of_sas = private unnamed_addr constant [30 x i8] c"gt_csa_splice_form_num_of_sas\00", align 1, !dbg !45
@__func__.gt_csa_splice_form_genomic_range = private unnamed_addr constant [33 x i8] c"gt_csa_splice_form_genomic_range\00", align 1, !dbg !50
@__func__.gt_csa_splice_form_strand = private unnamed_addr constant [26 x i8] c"gt_csa_splice_form_strand\00", align 1, !dbg !55
@__func__.gt_csa_splice_form_get_representative = private unnamed_addr constant [38 x i8] c"gt_csa_splice_form_get_representative\00", align 1, !dbg !57

; Function Attrs: nounwind uwtable
define ptr @gt_csa_splice_form_new(ptr noundef %spliced_alignment, ptr noundef %get_genomic_range, ptr noundef %get_strand) #0 !dbg !83 {
entry:
  %spliced_alignment.addr = alloca ptr, align 8
  %get_genomic_range.addr = alloca ptr, align 8
  %get_strand.addr = alloca ptr, align 8
  %splice_form = alloca ptr, align 8
  store ptr %spliced_alignment, ptr %spliced_alignment.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %spliced_alignment.addr, metadata !120, metadata !DIExpression()), !dbg !128
  store ptr %get_genomic_range, ptr %get_genomic_range.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %get_genomic_range.addr, metadata !121, metadata !DIExpression()), !dbg !129
  store ptr %get_strand, ptr %get_strand.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %get_strand.addr, metadata !122, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %splice_form) #6, !dbg !131
  tail call void @llvm.dbg.declare(metadata ptr %splice_form, metadata !123, metadata !DIExpression()), !dbg !132
  br label %do.body, !dbg !133

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %spliced_alignment.addr, align 8, !dbg !134, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !134
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !134

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %get_strand.addr, align 8, !dbg !134, !tbaa !124
  %tobool1 = icmp ne ptr %1, null, !dbg !134
  br i1 %tobool1, label %if.end, label %if.then, !dbg !137

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !138, !tbaa !124
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_csa_splice_form_new, ptr noundef @.str.2, i32 noundef 33), !dbg !138
  call void @abort() #7, !dbg !138
  unreachable, !dbg !138

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !137

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !137

do.end:                                           ; preds = %do.cond
  %call2 = call ptr @gt_malloc_mem(i64 noundef 24, ptr noundef @.str.2, i32 noundef 34), !dbg !140
  store ptr %call2, ptr %splice_form, align 8, !dbg !141, !tbaa !124
  %call3 = call ptr @gt_array_new(i64 noundef 8), !dbg !142
  %3 = load ptr, ptr %splice_form, align 8, !dbg !143, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %3, i32 0, i32 0, !dbg !144
  store ptr %call3, ptr %spliced_alignments, align 8, !dbg !145, !tbaa !146
  %4 = load ptr, ptr %splice_form, align 8, !dbg !148, !tbaa !124
  %spliced_alignments4 = getelementptr inbounds %struct.GtCSASpliceForm, ptr %4, i32 0, i32 0, !dbg !148
  %5 = load ptr, ptr %spliced_alignments4, align 8, !dbg !148, !tbaa !146
  call void @gt_array_add_elem(ptr noundef %5, ptr noundef %spliced_alignment.addr, i64 noundef 8), !dbg !148
  %6 = load ptr, ptr %get_genomic_range.addr, align 8, !dbg !149, !tbaa !124
  %7 = load ptr, ptr %splice_form, align 8, !dbg !150, !tbaa !124
  %get_genomic_range5 = getelementptr inbounds %struct.GtCSASpliceForm, ptr %7, i32 0, i32 1, !dbg !151
  store ptr %6, ptr %get_genomic_range5, align 8, !dbg !152, !tbaa !153
  %8 = load ptr, ptr %get_strand.addr, align 8, !dbg !154, !tbaa !124
  %9 = load ptr, ptr %splice_form, align 8, !dbg !155, !tbaa !124
  %get_strand6 = getelementptr inbounds %struct.GtCSASpliceForm, ptr %9, i32 0, i32 2, !dbg !156
  store ptr %8, ptr %get_strand6, align 8, !dbg !157, !tbaa !158
  %10 = load ptr, ptr %splice_form, align 8, !dbg !159, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 8, ptr %splice_form) #6, !dbg !160
  ret ptr %10, !dbg !161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !162 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !229 void @abort() #3

declare !dbg !233 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !237 ptr @gt_array_new(i64 noundef) #2

declare !dbg !240 void @gt_array_add_elem(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @gt_csa_splice_form_delete(ptr noundef %splice_form) #0 !dbg !243 {
entry:
  %splice_form.addr = alloca ptr, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !249, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !249
  br i1 %tobool, label %if.end, label %if.then, !dbg !251

if.then:                                          ; preds = %entry
  br label %return, !dbg !252

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %splice_form.addr, align 8, !dbg !253, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %1, i32 0, i32 0, !dbg !254
  %2 = load ptr, ptr %spliced_alignments, align 8, !dbg !254, !tbaa !146
  call void @gt_array_delete(ptr noundef %2), !dbg !255
  %3 = load ptr, ptr %splice_form.addr, align 8, !dbg !256, !tbaa !124
  call void @gt_free_mem(ptr noundef %3, ptr noundef @.str.2, i32 noundef 46), !dbg !256
  br label %return, !dbg !257

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !257
}

declare !dbg !258 void @gt_array_delete(ptr noundef) #2

declare !dbg !261 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @gt_csa_splice_form_add_sa(ptr noundef %splice_form, ptr noundef %spliced_alignment) #0 !dbg !264 {
entry:
  %splice_form.addr = alloca ptr, align 8
  %spliced_alignment.addr = alloca ptr, align 8
  %coerce = alloca %struct.GtRange, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !268, metadata !DIExpression()), !dbg !270
  store ptr %spliced_alignment, ptr %spliced_alignment.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %spliced_alignment.addr, metadata !269, metadata !DIExpression()), !dbg !271
  br label %do.body, !dbg !272

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !273, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !273
  br i1 %tobool, label %if.end, label %if.then, !dbg !276

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !277, !tbaa !124
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_csa_splice_form_add_sa, ptr noundef @.str.2, i32 noundef 62), !dbg !277
  call void @abort() #7, !dbg !277
  unreachable, !dbg !277

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !276

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !279

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %splice_form.addr, align 8, !dbg !280, !tbaa !124
  %call2 = call i64 @csa_splice_form_start(ptr noundef %2), !dbg !280
  %3 = load ptr, ptr %splice_form.addr, align 8, !dbg !280, !tbaa !124
  %get_genomic_range = getelementptr inbounds %struct.GtCSASpliceForm, ptr %3, i32 0, i32 1, !dbg !280
  %4 = load ptr, ptr %get_genomic_range, align 8, !dbg !280, !tbaa !153
  %5 = load ptr, ptr %spliced_alignment.addr, align 8, !dbg !280, !tbaa !124
  %call3 = call { i64, i64 } %4(ptr noundef %5), !dbg !280
  %6 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !280
  %7 = extractvalue { i64, i64 } %call3, 0, !dbg !280
  store i64 %7, ptr %6, align 8, !dbg !280
  %8 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !280
  %9 = extractvalue { i64, i64 } %call3, 1, !dbg !280
  store i64 %9, ptr %8, align 8, !dbg !280
  %start = getelementptr inbounds %struct.GtRange, ptr %coerce, i32 0, i32 0, !dbg !280
  %10 = load i64, ptr %start, align 8, !dbg !280, !tbaa !283
  %cmp = icmp ule i64 %call2, %10, !dbg !280
  br i1 %cmp, label %if.end6, label %if.then4, !dbg !286

if.then4:                                         ; preds = %do.body1
  %11 = load ptr, ptr @stderr, align 8, !dbg !287, !tbaa !124
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_csa_splice_form_add_sa, ptr noundef @.str.2, i32 noundef 64), !dbg !287
  call void @abort() #7, !dbg !287
  unreachable, !dbg !287

if.end6:                                          ; preds = %do.body1
  br label %do.end7, !dbg !286

do.end7:                                          ; preds = %if.end6
  br label %do.body8, !dbg !289

do.body8:                                         ; preds = %do.end7
  %12 = load ptr, ptr %splice_form.addr, align 8, !dbg !290, !tbaa !124
  %call9 = call i32 @gt_csa_splice_form_strand(ptr noundef %12), !dbg !290
  %13 = load ptr, ptr %splice_form.addr, align 8, !dbg !290, !tbaa !124
  %get_strand = getelementptr inbounds %struct.GtCSASpliceForm, ptr %13, i32 0, i32 2, !dbg !290
  %14 = load ptr, ptr %get_strand, align 8, !dbg !290, !tbaa !158
  %15 = load ptr, ptr %spliced_alignment.addr, align 8, !dbg !290, !tbaa !124
  %call10 = call i32 %14(ptr noundef %15), !dbg !290
  %cmp11 = icmp eq i32 %call9, %call10, !dbg !290
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !293

if.then12:                                        ; preds = %do.body8
  %16 = load ptr, ptr @stderr, align 8, !dbg !294, !tbaa !124
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_csa_splice_form_add_sa, ptr noundef @.str.2, i32 noundef 66), !dbg !294
  call void @abort() #7, !dbg !294
  unreachable, !dbg !294

if.end14:                                         ; preds = %do.body8
  br label %do.end15, !dbg !293

do.end15:                                         ; preds = %if.end14
  %17 = load ptr, ptr %splice_form.addr, align 8, !dbg !296, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %17, i32 0, i32 0, !dbg !296
  %18 = load ptr, ptr %spliced_alignments, align 8, !dbg !296, !tbaa !146
  call void @gt_array_add_elem(ptr noundef %18, ptr noundef %spliced_alignment.addr, i64 noundef 8), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: nounwind uwtable
define internal i64 @csa_splice_form_start(ptr noundef %splice_form) #0 !dbg !298 {
entry:
  %splice_form.addr = alloca ptr, align 8
  %coerce = alloca %struct.GtRange, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !306, !tbaa !124
  %get_genomic_range = getelementptr inbounds %struct.GtCSASpliceForm, ptr %0, i32 0, i32 1, !dbg !307
  %1 = load ptr, ptr %get_genomic_range, align 8, !dbg !307, !tbaa !153
  %2 = load ptr, ptr %splice_form.addr, align 8, !dbg !308, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %2, i32 0, i32 0, !dbg !309
  %3 = load ptr, ptr %spliced_alignments, align 8, !dbg !309, !tbaa !146
  %call = call ptr @gt_array_get(ptr noundef %3, i64 noundef 0), !dbg !310
  %4 = load ptr, ptr %call, align 8, !dbg !311, !tbaa !124
  %call1 = call { i64, i64 } %1(ptr noundef %4), !dbg !306
  %5 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !306
  %6 = extractvalue { i64, i64 } %call1, 0, !dbg !306
  store i64 %6, ptr %5, align 8, !dbg !306
  %7 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !306
  %8 = extractvalue { i64, i64 } %call1, 1, !dbg !306
  store i64 %8, ptr %7, align 8, !dbg !306
  %start = getelementptr inbounds %struct.GtRange, ptr %coerce, i32 0, i32 0, !dbg !312
  %9 = load i64, ptr %start, align 8, !dbg !312, !tbaa !283
  ret i64 %9, !dbg !313
}

; Function Attrs: nounwind uwtable
define i32 @gt_csa_splice_form_strand(ptr noundef %splice_form) #0 !dbg !314 {
entry:
  %splice_form.addr = alloca ptr, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !318, metadata !DIExpression()), !dbg !319
  br label %do.body, !dbg !320

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !321, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !321
  br i1 %tobool, label %if.end, label %if.then, !dbg !324

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !325, !tbaa !124
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_csa_splice_form_strand, ptr noundef @.str.2, i32 noundef 105), !dbg !325
  call void @abort() #7, !dbg !325
  unreachable, !dbg !325

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !324

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %splice_form.addr, align 8, !dbg !327, !tbaa !124
  %get_strand = getelementptr inbounds %struct.GtCSASpliceForm, ptr %2, i32 0, i32 2, !dbg !328
  %3 = load ptr, ptr %get_strand, align 8, !dbg !328, !tbaa !158
  %4 = load ptr, ptr %splice_form.addr, align 8, !dbg !329, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %4, i32 0, i32 0, !dbg !330
  %5 = load ptr, ptr %spliced_alignments, align 8, !dbg !330, !tbaa !146
  %call1 = call ptr @gt_array_get(ptr noundef %5, i64 noundef 0), !dbg !331
  %6 = load ptr, ptr %call1, align 8, !dbg !332, !tbaa !124
  %call2 = call i32 %3(ptr noundef %6), !dbg !327
  ret i32 %call2, !dbg !333
}

; Function Attrs: nounwind uwtable
define ptr @gt_csa_splice_form_get_sa(ptr noundef %splice_form, i64 noundef %sa) #0 !dbg !334 {
entry:
  %splice_form.addr = alloca ptr, align 8
  %sa.addr = alloca i64, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !338, metadata !DIExpression()), !dbg !340
  store i64 %sa, ptr %sa.addr, align 8, !tbaa !341
  tail call void @llvm.dbg.declare(metadata ptr %sa.addr, metadata !339, metadata !DIExpression()), !dbg !342
  br label %do.body, !dbg !343

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !344, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !344
  br i1 %tobool, label %if.end, label %if.then, !dbg !347

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !348, !tbaa !124
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_csa_splice_form_get_sa, ptr noundef @.str.2, i32 noundef 73), !dbg !348
  call void @abort() #7, !dbg !348
  unreachable, !dbg !348

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !347

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %splice_form.addr, align 8, !dbg !350, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %2, i32 0, i32 0, !dbg !351
  %3 = load ptr, ptr %spliced_alignments, align 8, !dbg !351, !tbaa !146
  %4 = load i64, ptr %sa.addr, align 8, !dbg !352, !tbaa !341
  %call1 = call ptr @gt_array_get(ptr noundef %3, i64 noundef %4), !dbg !353
  %5 = load ptr, ptr %call1, align 8, !dbg !354, !tbaa !124
  ret ptr %5, !dbg !355
}

declare !dbg !356 ptr @gt_array_get(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define i64 @gt_csa_splice_form_num_of_sas(ptr noundef %splice_form) #0 !dbg !361 {
entry:
  %splice_form.addr = alloca ptr, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !363, metadata !DIExpression()), !dbg !364
  br label %do.body, !dbg !365

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !366, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !366
  br i1 %tobool, label %if.end, label %if.then, !dbg !369

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !370, !tbaa !124
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_csa_splice_form_num_of_sas, ptr noundef @.str.2, i32 noundef 79), !dbg !370
  call void @abort() #7, !dbg !370
  unreachable, !dbg !370

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !369

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %splice_form.addr, align 8, !dbg !372, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %2, i32 0, i32 0, !dbg !373
  %3 = load ptr, ptr %spliced_alignments, align 8, !dbg !373, !tbaa !146
  %call1 = call i64 @gt_array_size(ptr noundef %3), !dbg !374
  ret i64 %call1, !dbg !375
}

declare !dbg !376 i64 @gt_array_size(ptr noundef) #2

; Function Attrs: nounwind uwtable
define { i64, i64 } @gt_csa_splice_form_genomic_range(ptr noundef %splice_form) #0 !dbg !379 {
entry:
  %retval = alloca %struct.GtRange, align 8
  %splice_form.addr = alloca ptr, align 8
  %tmp_range = alloca %struct.GtRange, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct.GtRange, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !383, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %retval, metadata !384, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp_range) #6, !dbg !389
  tail call void @llvm.dbg.declare(metadata ptr %tmp_range, metadata !385, metadata !DIExpression()), !dbg !390
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !391
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !386, metadata !DIExpression()), !dbg !392
  br label %do.body, !dbg !393

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !394, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !394
  br i1 %tobool, label %if.end, label %if.then, !dbg !397

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !398, !tbaa !124
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_csa_splice_form_genomic_range, ptr noundef @.str.2, i32 noundef 87), !dbg !398
  call void @abort() #7, !dbg !398
  unreachable, !dbg !398

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !397

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !397

do.end:                                           ; preds = %do.cond
  %start = getelementptr inbounds %struct.GtRange, ptr %retval, i32 0, i32 0, !dbg !400
  store i64 -1, ptr %start, align 8, !dbg !401, !tbaa !283
  %end = getelementptr inbounds %struct.GtRange, ptr %retval, i32 0, i32 1, !dbg !402
  store i64 0, ptr %end, align 8, !dbg !403, !tbaa !404
  store i64 0, ptr %i, align 8, !dbg !405, !tbaa !341
  br label %for.cond, !dbg !407

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i64, ptr %i, align 8, !dbg !408, !tbaa !341
  %3 = load ptr, ptr %splice_form.addr, align 8, !dbg !410, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %3, i32 0, i32 0, !dbg !411
  %4 = load ptr, ptr %spliced_alignments, align 8, !dbg !411, !tbaa !146
  %call1 = call i64 @gt_array_size(ptr noundef %4), !dbg !412
  %cmp = icmp ult i64 %2, %call1, !dbg !413
  br i1 %cmp, label %for.body, label %for.end, !dbg !414

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #6, !dbg !415
  %5 = load ptr, ptr %splice_form.addr, align 8, !dbg !415, !tbaa !124
  %get_genomic_range = getelementptr inbounds %struct.GtCSASpliceForm, ptr %5, i32 0, i32 1, !dbg !417
  %6 = load ptr, ptr %get_genomic_range, align 8, !dbg !417, !tbaa !153
  %7 = load ptr, ptr %splice_form.addr, align 8, !dbg !418, !tbaa !124
  %spliced_alignments2 = getelementptr inbounds %struct.GtCSASpliceForm, ptr %7, i32 0, i32 0, !dbg !419
  %8 = load ptr, ptr %spliced_alignments2, align 8, !dbg !419, !tbaa !146
  %9 = load i64, ptr %i, align 8, !dbg !420, !tbaa !341
  %call3 = call ptr @gt_array_get(ptr noundef %8, i64 noundef %9), !dbg !421
  %10 = load ptr, ptr %call3, align 8, !dbg !422, !tbaa !124
  %call4 = call { i64, i64 } %6(ptr noundef %10), !dbg !415
  %11 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !415
  %12 = extractvalue { i64, i64 } %call4, 0, !dbg !415
  store i64 %12, ptr %11, align 8, !dbg !415
  %13 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !415
  %14 = extractvalue { i64, i64 } %call4, 1, !dbg !415
  store i64 %14, ptr %13, align 8, !dbg !415
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp_range, ptr align 8 %tmp, i64 16, i1 false), !dbg !415, !tbaa.struct !423
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #6, !dbg !415
  %start5 = getelementptr inbounds %struct.GtRange, ptr %tmp_range, i32 0, i32 0, !dbg !424
  %15 = load i64, ptr %start5, align 8, !dbg !424, !tbaa !283
  %start6 = getelementptr inbounds %struct.GtRange, ptr %retval, i32 0, i32 0, !dbg !426
  %16 = load i64, ptr %start6, align 8, !dbg !426, !tbaa !283
  %cmp7 = icmp ult i64 %15, %16, !dbg !427
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !428

if.then8:                                         ; preds = %for.body
  %start9 = getelementptr inbounds %struct.GtRange, ptr %tmp_range, i32 0, i32 0, !dbg !429
  %17 = load i64, ptr %start9, align 8, !dbg !429, !tbaa !283
  %start10 = getelementptr inbounds %struct.GtRange, ptr %retval, i32 0, i32 0, !dbg !430
  store i64 %17, ptr %start10, align 8, !dbg !431, !tbaa !283
  br label %if.end11, !dbg !432

if.end11:                                         ; preds = %if.then8, %for.body
  %end12 = getelementptr inbounds %struct.GtRange, ptr %tmp_range, i32 0, i32 1, !dbg !433
  %18 = load i64, ptr %end12, align 8, !dbg !433, !tbaa !404
  %end13 = getelementptr inbounds %struct.GtRange, ptr %retval, i32 0, i32 1, !dbg !435
  %19 = load i64, ptr %end13, align 8, !dbg !435, !tbaa !404
  %cmp14 = icmp ugt i64 %18, %19, !dbg !436
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !437

if.then15:                                        ; preds = %if.end11
  %end16 = getelementptr inbounds %struct.GtRange, ptr %tmp_range, i32 0, i32 1, !dbg !438
  %20 = load i64, ptr %end16, align 8, !dbg !438, !tbaa !404
  %end17 = getelementptr inbounds %struct.GtRange, ptr %retval, i32 0, i32 1, !dbg !439
  store i64 %20, ptr %end17, align 8, !dbg !440, !tbaa !404
  br label %if.end18, !dbg !441

if.end18:                                         ; preds = %if.then15, %if.end11
  br label %for.inc, !dbg !442

for.inc:                                          ; preds = %if.end18
  %21 = load i64, ptr %i, align 8, !dbg !443, !tbaa !341
  %inc = add i64 %21, 1, !dbg !443
  store i64 %inc, ptr %i, align 8, !dbg !443, !tbaa !341
  br label %for.cond, !dbg !444, !llvm.loop !445

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !448
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp_range) #6, !dbg !448
  %22 = load { i64, i64 }, ptr %retval, align 8, !dbg !448
  ret { i64, i64 } %22, !dbg !448
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define ptr @gt_csa_splice_form_get_representative(ptr noundef %splice_form) #0 !dbg !449 {
entry:
  %splice_form.addr = alloca ptr, align 8
  store ptr %splice_form, ptr %splice_form.addr, align 8, !tbaa !124
  tail call void @llvm.dbg.declare(metadata ptr %splice_form.addr, metadata !453, metadata !DIExpression()), !dbg !454
  br label %do.body, !dbg !455

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %splice_form.addr, align 8, !dbg !456, !tbaa !124
  %tobool = icmp ne ptr %0, null, !dbg !456
  br i1 %tobool, label %if.end, label %if.then, !dbg !459

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !460, !tbaa !124
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_csa_splice_form_get_representative, ptr noundef @.str.2, i32 noundef 113), !dbg !460
  call void @abort() #7, !dbg !460
  unreachable, !dbg !460

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !459

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %splice_form.addr, align 8, !dbg !462, !tbaa !124
  %spliced_alignments = getelementptr inbounds %struct.GtCSASpliceForm, ptr %2, i32 0, i32 0, !dbg !463
  %3 = load ptr, ptr %spliced_alignments, align 8, !dbg !463, !tbaa !146
  %call1 = call ptr @gt_array_get(ptr noundef %3, i64 noundef 0), !dbg !464
  %4 = load ptr, ptr %call1, align 8, !dbg !465, !tbaa !124
  ret ptr %4, !dbg !466
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!62}
!llvm.module.flags = !{!77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/extended/csa_splice_form.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "52c5f02e5458ce75f1342252d1408a41")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 32)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 184, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 23)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 31)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 12)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 26)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 752, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 94)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 85)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !30, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 30)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 264, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 33)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !30, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 304, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 38)
!62 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !73, globals: !76, splitDebugInlining: false, nameTableKind: None)
!63 = !{!64}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtStrand", file: !65, line: 21, baseType: !66, size: 32, elements: !67)
!65 = !DIFile(filename: "src/core/strand_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "5c7a103ad5a6a6a01ca9604fb681ddb9")
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !{!68, !69, !70, !71, !72}
!68 = !DIEnumerator(name: "GT_STRAND_FORWARD", value: 0)
!69 = !DIEnumerator(name: "GT_STRAND_REVERSE", value: 1)
!70 = !DIEnumerator(name: "GT_STRAND_BOTH", value: 2)
!71 = !DIEnumerator(name: "GT_STRAND_UNKNOWN", value: 3)
!72 = !DIEnumerator(name: "GT_NUM_OF_STRAND_TYPES", value: 4)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !45, !50, !55, !57}
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 8, !"PIC Level", i32 2}
!81 = !{i32 7, !"uwtable", i32 2}
!82 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!83 = distinct !DISubprogram(name: "gt_csa_splice_form_new", scope: !2, file: !2, line: 28, type: !84, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !119)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !75, !97, !114}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCSASpliceForm", file: !88, line: 24, baseType: !89)
!88 = !DIFile(filename: "src/extended/csa_splice_form.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "40ad5dfb352135d9fc9de90cd27f099a")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtCSASpliceForm", file: !2, line: 22, size: 192, elements: !90)
!90 = !{!91, !96, !113}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "spliced_alignments", scope: !89, file: !2, line: 23, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtArray", file: !94, line: 27, baseType: !95)
!94 = !DIFile(filename: "src/core/array_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "4614c0e64ebb94278b4837ce435832ba")
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtArray", file: !94, line: 27, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "get_genomic_range", scope: !89, file: !2, line: 24, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtGetGenomicRangeFunc", file: !98, line: 27, baseType: !99)
!98 = !DIFile(filename: "src/extended/consensus_sa_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "b2ea6e37724c3890159ea19a41c0abb3")
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !111}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRange", file: !103, line: 29, baseType: !104)
!103 = !DIFile(filename: "src/core/range_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "05971597f0a8f239b91be35d4168fb4b")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtRange", file: !103, line: 31, size: 128, elements: !105)
!105 = !{!106, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !104, file: !103, line: 32, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !108, line: 83, baseType: !109)
!108 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!109 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !104, file: !103, line: 33, baseType: !107, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "get_strand", scope: !89, file: !2, line: 25, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtGetStrandFunc", file: !98, line: 29, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !111}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrand", file: !65, line: 32, baseType: !64)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(name: "spliced_alignment", arg: 1, scope: !83, file: !2, line: 28, type: !75)
!121 = !DILocalVariable(name: "get_genomic_range", arg: 2, scope: !83, file: !2, line: 29, type: !97)
!122 = !DILocalVariable(name: "get_strand", arg: 3, scope: !83, file: !2, line: 30, type: !114)
!123 = !DILocalVariable(name: "splice_form", scope: !83, file: !2, line: 32, type: !86)
!124 = !{!125, !125, i64 0}
!125 = !{!"any pointer", !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C/C++ TBAA"}
!128 = !DILocation(line: 28, column: 47, scope: !83)
!129 = !DILocation(line: 29, column: 58, scope: !83)
!130 = !DILocation(line: 30, column: 52, scope: !83)
!131 = !DILocation(line: 32, column: 3, scope: !83)
!132 = !DILocation(line: 32, column: 20, scope: !83)
!133 = !DILocation(line: 33, column: 3, scope: !83)
!134 = !DILocation(line: 33, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 33, column: 3)
!136 = distinct !DILexicalBlock(scope: !83, file: !2, line: 33, column: 3)
!137 = !DILocation(line: 33, column: 3, scope: !136)
!138 = !DILocation(line: 33, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !2, line: 33, column: 3)
!140 = !DILocation(line: 34, column: 17, scope: !83)
!141 = !DILocation(line: 34, column: 15, scope: !83)
!142 = !DILocation(line: 35, column: 37, scope: !83)
!143 = !DILocation(line: 35, column: 3, scope: !83)
!144 = !DILocation(line: 35, column: 16, scope: !83)
!145 = !DILocation(line: 35, column: 35, scope: !83)
!146 = !{!147, !125, i64 0}
!147 = !{!"GtCSASpliceForm", !125, i64 0, !125, i64 8, !125, i64 16}
!148 = !DILocation(line: 36, column: 3, scope: !83)
!149 = !DILocation(line: 37, column: 36, scope: !83)
!150 = !DILocation(line: 37, column: 3, scope: !83)
!151 = !DILocation(line: 37, column: 16, scope: !83)
!152 = !DILocation(line: 37, column: 34, scope: !83)
!153 = !{!147, !125, i64 8}
!154 = !DILocation(line: 38, column: 29, scope: !83)
!155 = !DILocation(line: 38, column: 3, scope: !83)
!156 = !DILocation(line: 38, column: 16, scope: !83)
!157 = !DILocation(line: 38, column: 27, scope: !83)
!158 = !{!147, !125, i64 16}
!159 = !DILocation(line: 39, column: 10, scope: !83)
!160 = !DILocation(line: 40, column: 1, scope: !83)
!161 = !DILocation(line: 39, column: 3, scope: !83)
!162 = !DISubprogram(name: "fprintf", scope: !163, file: !163, line: 350, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !167, !227, null}
!166 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !171)
!170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !173)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!173 = !{!174, !175, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190, !192, !193, !194, !198, !200, !202, !206, !209, !211, !214, !217, !218, !219, !222, !223}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !171, file: !172, line: 51, baseType: !166, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !171, file: !172, line: 54, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !171, file: !172, line: 55, baseType: !176, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !171, file: !172, line: 56, baseType: !176, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !171, file: !172, line: 57, baseType: !176, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !171, file: !172, line: 58, baseType: !176, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !171, file: !172, line: 59, baseType: !176, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !171, file: !172, line: 60, baseType: !176, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !171, file: !172, line: 61, baseType: !176, size: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !171, file: !172, line: 64, baseType: !176, size: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !171, file: !172, line: 65, baseType: !176, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !171, file: !172, line: 66, baseType: !176, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !171, file: !172, line: 68, baseType: !188, size: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !172, line: 36, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !171, file: !172, line: 70, baseType: !191, size: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !171, file: !172, line: 72, baseType: !166, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !171, file: !172, line: 73, baseType: !166, size: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !171, file: !172, line: 74, baseType: !195, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !196, line: 152, baseType: !197)
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!197 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !171, file: !172, line: 77, baseType: !199, size: 16, offset: 1024)
!199 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !171, file: !172, line: 78, baseType: !201, size: 8, offset: 1040)
!201 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !171, file: !172, line: 79, baseType: !203, size: 8, offset: 1048)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 1)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !171, file: !172, line: 81, baseType: !207, size: 64, offset: 1088)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !172, line: 43, baseType: null)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !171, file: !172, line: 89, baseType: !210, size: 64, offset: 1152)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !196, line: 153, baseType: !197)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !171, file: !172, line: 91, baseType: !212, size: 64, offset: 1216)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !172, line: 37, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !171, file: !172, line: 92, baseType: !215, size: 64, offset: 1280)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !172, line: 38, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !171, file: !172, line: 93, baseType: !191, size: 64, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !171, file: !172, line: 94, baseType: !75, size: 64, offset: 1408)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !171, file: !172, line: 95, baseType: !220, size: 64, offset: 1472)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 70, baseType: !109)
!221 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !171, file: !172, line: 96, baseType: !166, size: 32, offset: 1536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !171, file: !172, line: 98, baseType: !224, size: 160, offset: 1568)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 20)
!227 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!229 = !DISubprogram(name: "abort", scope: !230, file: !230, line: 598, type: !231, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!230 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!231 = !DISubroutineType(types: !232)
!232 = !{null}
!233 = !DISubprogram(name: "gt_malloc_mem", scope: !234, file: !234, line: 56, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!235 = !DISubroutineType(types: !236)
!236 = !{!75, !220, !228, !166}
!237 = !DISubprogram(name: "gt_array_new", scope: !94, file: !94, line: 30, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{!92, !220}
!240 = !DISubprogram(name: "gt_array_add_elem", scope: !94, file: !94, line: 57, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !92, !75, !220}
!243 = distinct !DISubprogram(name: "gt_csa_splice_form_delete", scope: !2, file: !2, line: 42, type: !244, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !86}
!246 = !{!247}
!247 = !DILocalVariable(name: "splice_form", arg: 1, scope: !243, file: !2, line: 42, type: !86)
!248 = !DILocation(line: 42, column: 49, scope: !243)
!249 = !DILocation(line: 44, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !2, line: 44, column: 7)
!251 = !DILocation(line: 44, column: 7, scope: !243)
!252 = !DILocation(line: 44, column: 21, scope: !250)
!253 = !DILocation(line: 45, column: 19, scope: !243)
!254 = !DILocation(line: 45, column: 32, scope: !243)
!255 = !DILocation(line: 45, column: 3, scope: !243)
!256 = !DILocation(line: 46, column: 3, scope: !243)
!257 = !DILocation(line: 47, column: 1, scope: !243)
!258 = !DISubprogram(name: "gt_array_delete", scope: !94, file: !94, line: 102, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !92}
!261 = !DISubprogram(name: "gt_free_mem", scope: !234, file: !234, line: 75, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !75, !228, !166}
!264 = distinct !DISubprogram(name: "gt_csa_splice_form_add_sa", scope: !2, file: !2, line: 59, type: !265, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !86, !75}
!267 = !{!268, !269}
!268 = !DILocalVariable(name: "splice_form", arg: 1, scope: !264, file: !2, line: 59, type: !86)
!269 = !DILocalVariable(name: "spliced_alignment", arg: 2, scope: !264, file: !2, line: 60, type: !75)
!270 = !DILocation(line: 59, column: 49, scope: !264)
!271 = !DILocation(line: 60, column: 38, scope: !264)
!272 = !DILocation(line: 62, column: 3, scope: !264)
!273 = !DILocation(line: 62, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 62, column: 3)
!275 = distinct !DILexicalBlock(scope: !264, file: !2, line: 62, column: 3)
!276 = !DILocation(line: 62, column: 3, scope: !275)
!277 = !DILocation(line: 62, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !2, line: 62, column: 3)
!279 = !DILocation(line: 63, column: 3, scope: !264)
!280 = !DILocation(line: 63, column: 3, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 63, column: 3)
!282 = distinct !DILexicalBlock(scope: !264, file: !2, line: 63, column: 3)
!283 = !{!284, !285, i64 0}
!284 = !{!"GtRange", !285, i64 0, !285, i64 8}
!285 = !{!"long", !126, i64 0}
!286 = !DILocation(line: 63, column: 3, scope: !282)
!287 = !DILocation(line: 63, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !281, file: !2, line: 63, column: 3)
!289 = !DILocation(line: 65, column: 3, scope: !264)
!290 = !DILocation(line: 65, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !2, line: 65, column: 3)
!292 = distinct !DILexicalBlock(scope: !264, file: !2, line: 65, column: 3)
!293 = !DILocation(line: 65, column: 3, scope: !292)
!294 = !DILocation(line: 65, column: 3, scope: !295)
!295 = distinct !DILexicalBlock(scope: !291, file: !2, line: 65, column: 3)
!296 = !DILocation(line: 67, column: 3, scope: !264)
!297 = !DILocation(line: 68, column: 1, scope: !264)
!298 = distinct !DISubprogram(name: "csa_splice_form_start", scope: !2, file: !2, line: 50, type: !299, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !303)
!299 = !DISubroutineType(types: !300)
!300 = !{!107, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!303 = !{!304}
!304 = !DILocalVariable(name: "splice_form", arg: 1, scope: !298, file: !2, line: 50, type: !301)
!305 = !DILocation(line: 50, column: 61, scope: !298)
!306 = !DILocation(line: 52, column: 10, scope: !298)
!307 = !DILocation(line: 53, column: 12, scope: !298)
!308 = !DILocation(line: 54, column: 43, scope: !298)
!309 = !DILocation(line: 54, column: 56, scope: !298)
!310 = !DILocation(line: 54, column: 30, scope: !298)
!311 = !DILocation(line: 53, column: 30, scope: !298)
!312 = !DILocation(line: 55, column: 11, scope: !298)
!313 = !DILocation(line: 52, column: 3, scope: !298)
!314 = distinct !DISubprogram(name: "gt_csa_splice_form_strand", scope: !2, file: !2, line: 103, type: !315, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!118, !301}
!317 = !{!318}
!318 = !DILocalVariable(name: "splice_form", arg: 1, scope: !314, file: !2, line: 103, type: !301)
!319 = !DILocation(line: 103, column: 59, scope: !314)
!320 = !DILocation(line: 105, column: 3, scope: !314)
!321 = !DILocation(line: 105, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !2, line: 105, column: 3)
!323 = distinct !DILexicalBlock(scope: !314, file: !2, line: 105, column: 3)
!324 = !DILocation(line: 105, column: 3, scope: !323)
!325 = !DILocation(line: 105, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !2, line: 105, column: 3)
!327 = !DILocation(line: 106, column: 10, scope: !314)
!328 = !DILocation(line: 106, column: 23, scope: !314)
!329 = !DILocation(line: 107, column: 47, scope: !314)
!330 = !DILocation(line: 107, column: 60, scope: !314)
!331 = !DILocation(line: 107, column: 34, scope: !314)
!332 = !DILocation(line: 106, column: 34, scope: !314)
!333 = !DILocation(line: 106, column: 3, scope: !314)
!334 = distinct !DISubprogram(name: "gt_csa_splice_form_get_sa", scope: !2, file: !2, line: 70, type: !335, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!75, !301, !107}
!337 = !{!338, !339}
!338 = !DILocalVariable(name: "splice_form", arg: 1, scope: !334, file: !2, line: 70, type: !301)
!339 = !DILocalVariable(name: "sa", arg: 2, scope: !334, file: !2, line: 71, type: !107)
!340 = !DILocation(line: 70, column: 56, scope: !334)
!341 = !{!285, !285, i64 0}
!342 = !DILocation(line: 71, column: 41, scope: !334)
!343 = !DILocation(line: 73, column: 3, scope: !334)
!344 = !DILocation(line: 73, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !2, line: 73, column: 3)
!346 = distinct !DILexicalBlock(scope: !334, file: !2, line: 73, column: 3)
!347 = !DILocation(line: 73, column: 3, scope: !346)
!348 = !DILocation(line: 73, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !345, file: !2, line: 73, column: 3)
!350 = !DILocation(line: 74, column: 33, scope: !334)
!351 = !DILocation(line: 74, column: 46, scope: !334)
!352 = !DILocation(line: 74, column: 66, scope: !334)
!353 = !DILocation(line: 74, column: 20, scope: !334)
!354 = !DILocation(line: 74, column: 10, scope: !334)
!355 = !DILocation(line: 74, column: 3, scope: !334)
!356 = !DISubprogram(name: "gt_array_get", scope: !94, file: !94, line: 38, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{!75, !359, !107}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!361 = distinct !DISubprogram(name: "gt_csa_splice_form_num_of_sas", scope: !2, file: !2, line: 77, type: !299, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !362)
!362 = !{!363}
!363 = !DILocalVariable(name: "splice_form", arg: 1, scope: !361, file: !2, line: 77, type: !301)
!364 = !DILocation(line: 77, column: 62, scope: !361)
!365 = !DILocation(line: 79, column: 3, scope: !361)
!366 = !DILocation(line: 79, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 79, column: 3)
!368 = distinct !DILexicalBlock(scope: !361, file: !2, line: 79, column: 3)
!369 = !DILocation(line: 79, column: 3, scope: !368)
!370 = !DILocation(line: 79, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !2, line: 79, column: 3)
!372 = !DILocation(line: 80, column: 24, scope: !361)
!373 = !DILocation(line: 80, column: 37, scope: !361)
!374 = !DILocation(line: 80, column: 10, scope: !361)
!375 = !DILocation(line: 80, column: 3, scope: !361)
!376 = !DISubprogram(name: "gt_array_size", scope: !94, file: !94, line: 81, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!107, !359}
!379 = distinct !DISubprogram(name: "gt_csa_splice_form_genomic_range", scope: !2, file: !2, line: 83, type: !380, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{!102, !301}
!382 = !{!383, !384, !385, !386}
!383 = !DILocalVariable(name: "splice_form", arg: 1, scope: !379, file: !2, line: 83, type: !301)
!384 = !DILocalVariable(name: "splice_form_range", scope: !379, file: !2, line: 85, type: !102)
!385 = !DILocalVariable(name: "tmp_range", scope: !379, file: !2, line: 85, type: !102)
!386 = !DILocalVariable(name: "i", scope: !379, file: !2, line: 86, type: !107)
!387 = !DILocation(line: 83, column: 65, scope: !379)
!388 = !DILocation(line: 85, column: 11, scope: !379)
!389 = !DILocation(line: 85, column: 3, scope: !379)
!390 = !DILocation(line: 85, column: 30, scope: !379)
!391 = !DILocation(line: 86, column: 3, scope: !379)
!392 = !DILocation(line: 86, column: 11, scope: !379)
!393 = !DILocation(line: 87, column: 3, scope: !379)
!394 = !DILocation(line: 87, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !2, line: 87, column: 3)
!396 = distinct !DILexicalBlock(scope: !379, file: !2, line: 87, column: 3)
!397 = !DILocation(line: 87, column: 3, scope: !396)
!398 = !DILocation(line: 87, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !2, line: 87, column: 3)
!400 = !DILocation(line: 88, column: 21, scope: !379)
!401 = !DILocation(line: 88, column: 27, scope: !379)
!402 = !DILocation(line: 89, column: 21, scope: !379)
!403 = !DILocation(line: 89, column: 25, scope: !379)
!404 = !{!284, !285, i64 8}
!405 = !DILocation(line: 90, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !379, file: !2, line: 90, column: 3)
!407 = !DILocation(line: 90, column: 8, scope: !406)
!408 = !DILocation(line: 90, column: 15, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !2, line: 90, column: 3)
!410 = !DILocation(line: 90, column: 33, scope: !409)
!411 = !DILocation(line: 90, column: 46, scope: !409)
!412 = !DILocation(line: 90, column: 19, scope: !409)
!413 = !DILocation(line: 90, column: 17, scope: !409)
!414 = !DILocation(line: 90, column: 3, scope: !406)
!415 = !DILocation(line: 91, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !409, file: !2, line: 90, column: 72)
!417 = !DILocation(line: 91, column: 30, scope: !416)
!418 = !DILocation(line: 92, column: 61, scope: !416)
!419 = !DILocation(line: 93, column: 60, scope: !416)
!420 = !DILocation(line: 94, column: 58, scope: !416)
!421 = !DILocation(line: 92, column: 48, scope: !416)
!422 = !DILocation(line: 91, column: 48, scope: !416)
!423 = !{i64 0, i64 8, !341, i64 8, i64 8, !341}
!424 = !DILocation(line: 95, column: 19, scope: !425)
!425 = distinct !DILexicalBlock(scope: !416, file: !2, line: 95, column: 9)
!426 = !DILocation(line: 95, column: 45, scope: !425)
!427 = !DILocation(line: 95, column: 25, scope: !425)
!428 = !DILocation(line: 95, column: 9, scope: !416)
!429 = !DILocation(line: 96, column: 43, scope: !425)
!430 = !DILocation(line: 96, column: 25, scope: !425)
!431 = !DILocation(line: 96, column: 31, scope: !425)
!432 = !DILocation(line: 96, column: 7, scope: !425)
!433 = !DILocation(line: 97, column: 19, scope: !434)
!434 = distinct !DILexicalBlock(scope: !416, file: !2, line: 97, column: 9)
!435 = !DILocation(line: 97, column: 43, scope: !434)
!436 = !DILocation(line: 97, column: 23, scope: !434)
!437 = !DILocation(line: 97, column: 9, scope: !416)
!438 = !DILocation(line: 98, column: 41, scope: !434)
!439 = !DILocation(line: 98, column: 25, scope: !434)
!440 = !DILocation(line: 98, column: 29, scope: !434)
!441 = !DILocation(line: 98, column: 7, scope: !434)
!442 = !DILocation(line: 99, column: 3, scope: !416)
!443 = !DILocation(line: 90, column: 68, scope: !409)
!444 = !DILocation(line: 90, column: 3, scope: !409)
!445 = distinct !{!445, !414, !446, !447}
!446 = !DILocation(line: 99, column: 3, scope: !406)
!447 = !{!"llvm.loop.mustprogress"}
!448 = !DILocation(line: 101, column: 1, scope: !379)
!449 = distinct !DISubprogram(name: "gt_csa_splice_form_get_representative", scope: !2, file: !2, line: 111, type: !450, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !62, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!75, !301}
!452 = !{!453}
!453 = !DILocalVariable(name: "splice_form", arg: 1, scope: !449, file: !2, line: 111, type: !301)
!454 = !DILocation(line: 111, column: 68, scope: !449)
!455 = !DILocation(line: 113, column: 3, scope: !449)
!456 = !DILocation(line: 113, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !2, line: 113, column: 3)
!458 = distinct !DILexicalBlock(scope: !449, file: !2, line: 113, column: 3)
!459 = !DILocation(line: 113, column: 3, scope: !458)
!460 = !DILocation(line: 113, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !2, line: 113, column: 3)
!462 = !DILocation(line: 114, column: 33, scope: !449)
!463 = !DILocation(line: 114, column: 46, scope: !449)
!464 = !DILocation(line: 114, column: 20, scope: !449)
!465 = !DILocation(line: 114, column: 10, scope: !449)
!466 = !DILocation(line: 114, column: 3, scope: !449)
