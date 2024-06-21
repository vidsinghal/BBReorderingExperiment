; ModuleID = 'samples/389.bc'
source_filename = "src/extended/shredder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtShredder = type { ptr, i64, i64, i64, i64, i64, double }

@.str = private unnamed_addr constant [24 x i8] c"src/extended/shredder.c\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [46 x i8] c"bioseq && minlength && minlength <= maxlength\00", align 1, !dbg !12
@__func__.gt_shredder_new = private unnamed_addr constant [16 x i8] c"gt_shredder_new\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [9 x i8] c"shredder\00", align 1, !dbg !23
@__func__.gt_shredder_set_overlap = private unnamed_addr constant [24 x i8] c"gt_shredder_set_overlap\00", align 1, !dbg !28
@__func__.gt_shredder_set_sample_probability = private unnamed_addr constant [35 x i8] c"gt_shredder_set_sample_probability\00", align 1, !dbg !31
@.str.4 = private unnamed_addr constant [41 x i8] c"probability >= 0.0 && probability <= 1.0\00", align 1, !dbg !36
@.str.5 = private unnamed_addr constant [28 x i8] c"shredder && fragment_length\00", align 1, !dbg !41
@__func__.gt_shredder_shred = private unnamed_addr constant [18 x i8] c"gt_shredder_shred\00", align 1, !dbg !46
@__func__.generate_fragment = private unnamed_addr constant [18 x i8] c"generate_fragment\00", align 1, !dbg !51
@.str.6 = private unnamed_addr constant [31 x i8] c"fraglen >= shredder->minlength\00", align 1, !dbg !53
@.str.7 = private unnamed_addr constant [34 x i8] c"shredder->pos + fraglen <= seqlen\00", align 1, !dbg !58

; Function Attrs: nounwind uwtable
define ptr @gt_shredder_new(ptr noundef %bioseq, i64 noundef %minlength, i64 noundef %maxlength) #0 !dbg !71 {
entry:
  %bioseq.addr = alloca ptr, align 8
  %minlength.addr = alloca i64, align 8
  %maxlength.addr = alloca i64, align 8
  %shredder = alloca ptr, align 8
  store ptr %bioseq, ptr %bioseq.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %bioseq.addr, metadata !95, metadata !DIExpression()), !dbg !103
  store i64 %minlength, ptr %minlength.addr, align 8, !tbaa !104
  tail call void @llvm.dbg.declare(metadata ptr %minlength.addr, metadata !96, metadata !DIExpression()), !dbg !106
  store i64 %maxlength, ptr %maxlength.addr, align 8, !tbaa !104
  tail call void @llvm.dbg.declare(metadata ptr %maxlength.addr, metadata !97, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 8, ptr %shredder) #5, !dbg !108
  tail call void @llvm.dbg.declare(metadata ptr %shredder, metadata !98, metadata !DIExpression()), !dbg !109
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 56, ptr noundef @.str, i32 noundef 35), !dbg !110
  store ptr %call, ptr %shredder, align 8, !dbg !109, !tbaa !99
  br label %do.body, !dbg !111

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %bioseq.addr, align 8, !dbg !112, !tbaa !99
  %tobool = icmp ne ptr %0, null, !dbg !112
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !112

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, ptr %minlength.addr, align 8, !dbg !112, !tbaa !104
  %tobool1 = icmp ne i64 %1, 0, !dbg !112
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !112

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, ptr %minlength.addr, align 8, !dbg !112, !tbaa !104
  %3 = load i64, ptr %maxlength.addr, align 8, !dbg !112, !tbaa !104
  %cmp = icmp ule i64 %2, %3, !dbg !112
  br i1 %cmp, label %if.end, label %if.then, !dbg !115

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true, %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !116, !tbaa !99
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_shredder_new, ptr noundef @.str, i32 noundef 36), !dbg !116
  call void @abort() #6, !dbg !116
  unreachable, !dbg !116

if.end:                                           ; preds = %land.lhs.true2
  br label %do.cond, !dbg !115

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !115

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %bioseq.addr, align 8, !dbg !118, !tbaa !99
  %6 = load ptr, ptr %shredder, align 8, !dbg !119, !tbaa !99
  %bioseq4 = getelementptr inbounds %struct.GtShredder, ptr %6, i32 0, i32 0, !dbg !120
  store ptr %5, ptr %bioseq4, align 8, !dbg !121, !tbaa !122
  %7 = load i64, ptr %minlength.addr, align 8, !dbg !125, !tbaa !104
  %8 = load ptr, ptr %shredder, align 8, !dbg !126, !tbaa !99
  %minlength5 = getelementptr inbounds %struct.GtShredder, ptr %8, i32 0, i32 1, !dbg !127
  store i64 %7, ptr %minlength5, align 8, !dbg !128, !tbaa !129
  %9 = load i64, ptr %maxlength.addr, align 8, !dbg !130, !tbaa !104
  %10 = load ptr, ptr %shredder, align 8, !dbg !131, !tbaa !99
  %maxlength6 = getelementptr inbounds %struct.GtShredder, ptr %10, i32 0, i32 2, !dbg !132
  store i64 %9, ptr %maxlength6, align 8, !dbg !133, !tbaa !134
  %11 = load ptr, ptr %shredder, align 8, !dbg !135, !tbaa !99
  %sample_probability = getelementptr inbounds %struct.GtShredder, ptr %11, i32 0, i32 6, !dbg !136
  store double 1.000000e+00, ptr %sample_probability, align 8, !dbg !137, !tbaa !138
  %12 = load ptr, ptr %shredder, align 8, !dbg !139, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 8, ptr %shredder) #5, !dbg !140
  ret ptr %12, !dbg !141
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !142 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !151 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !214 void @abort() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @gt_shredder_delete(ptr noundef %shredder) #0 !dbg !218 {
entry:
  %shredder.addr = alloca ptr, align 8
  store ptr %shredder, ptr %shredder.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %shredder.addr, metadata !222, metadata !DIExpression()), !dbg !223
  %0 = load ptr, ptr %shredder.addr, align 8, !dbg !224, !tbaa !99
  %tobool = icmp ne ptr %0, null, !dbg !224
  br i1 %tobool, label %if.end, label %if.then, !dbg !226

if.then:                                          ; preds = %entry
  br label %return, !dbg !227

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %shredder.addr, align 8, !dbg !228, !tbaa !99
  call void @gt_free_mem(ptr noundef %1, ptr noundef @.str, i32 noundef 47), !dbg !228
  br label %return, !dbg !229

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !229
}

declare !dbg !230 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @gt_shredder_set_overlap(ptr noundef %shredder, i64 noundef %overlap) #0 !dbg !233 {
entry:
  %shredder.addr = alloca ptr, align 8
  %overlap.addr = alloca i64, align 8
  store ptr %shredder, ptr %shredder.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %shredder.addr, metadata !237, metadata !DIExpression()), !dbg !239
  store i64 %overlap, ptr %overlap.addr, align 8, !tbaa !104
  tail call void @llvm.dbg.declare(metadata ptr %overlap.addr, metadata !238, metadata !DIExpression()), !dbg !240
  br label %do.body, !dbg !241

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %shredder.addr, align 8, !dbg !242, !tbaa !99
  %tobool = icmp ne ptr %0, null, !dbg !242
  br i1 %tobool, label %if.end, label %if.then, !dbg !245

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !246, !tbaa !99
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.3, ptr noundef @__func__.gt_shredder_set_overlap, ptr noundef @.str, i32 noundef 52), !dbg !246
  call void @abort() #6, !dbg !246
  unreachable, !dbg !246

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !245

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %overlap.addr, align 8, !dbg !248, !tbaa !104
  %3 = load ptr, ptr %shredder.addr, align 8, !dbg !249, !tbaa !99
  %overlap1 = getelementptr inbounds %struct.GtShredder, ptr %3, i32 0, i32 3, !dbg !250
  store i64 %2, ptr %overlap1, align 8, !dbg !251, !tbaa !252
  ret void, !dbg !253
}

; Function Attrs: nounwind uwtable
define void @gt_shredder_set_sample_probability(ptr noundef %shredder, double noundef %probability) #0 !dbg !254 {
entry:
  %shredder.addr = alloca ptr, align 8
  %probability.addr = alloca double, align 8
  store ptr %shredder, ptr %shredder.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %shredder.addr, metadata !258, metadata !DIExpression()), !dbg !260
  store double %probability, ptr %probability.addr, align 8, !tbaa !261
  tail call void @llvm.dbg.declare(metadata ptr %probability.addr, metadata !259, metadata !DIExpression()), !dbg !262
  br label %do.body, !dbg !263

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %shredder.addr, align 8, !dbg !264, !tbaa !99
  %tobool = icmp ne ptr %0, null, !dbg !264
  br i1 %tobool, label %if.end, label %if.then, !dbg !267

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !268, !tbaa !99
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.3, ptr noundef @__func__.gt_shredder_set_sample_probability, ptr noundef @.str, i32 noundef 59), !dbg !268
  call void @abort() #6, !dbg !268
  unreachable, !dbg !268

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !267

do.end:                                           ; preds = %if.end
  br label %do.body1, !dbg !270

do.body1:                                         ; preds = %do.end
  %2 = load double, ptr %probability.addr, align 8, !dbg !271, !tbaa !261
  %cmp = fcmp oge double %2, 0.000000e+00, !dbg !271
  br i1 %cmp, label %land.lhs.true, label %if.then3, !dbg !271

land.lhs.true:                                    ; preds = %do.body1
  %3 = load double, ptr %probability.addr, align 8, !dbg !271, !tbaa !261
  %cmp2 = fcmp ole double %3, 1.000000e+00, !dbg !271
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !274

if.then3:                                         ; preds = %land.lhs.true, %do.body1
  %4 = load ptr, ptr @stderr, align 8, !dbg !275, !tbaa !99
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @__func__.gt_shredder_set_sample_probability, ptr noundef @.str, i32 noundef 60), !dbg !275
  call void @abort() #6, !dbg !275
  unreachable, !dbg !275

if.end5:                                          ; preds = %land.lhs.true
  br label %do.end6, !dbg !274

do.end6:                                          ; preds = %if.end5
  %5 = load double, ptr %probability.addr, align 8, !dbg !277, !tbaa !261
  %6 = load ptr, ptr %shredder.addr, align 8, !dbg !278, !tbaa !99
  %sample_probability = getelementptr inbounds %struct.GtShredder, ptr %6, i32 0, i32 6, !dbg !279
  store double %5, ptr %sample_probability, align 8, !dbg !280, !tbaa !138
  ret void, !dbg !281
}

; Function Attrs: nounwind uwtable
define ptr @gt_shredder_shred(ptr noundef %shredder, ptr noundef %fragment_offset, ptr noundef %fragment_length, ptr noundef %desc) #0 !dbg !282 {
entry:
  %retval = alloca ptr, align 8
  %shredder.addr = alloca ptr, align 8
  %fragment_offset.addr = alloca ptr, align 8
  %fragment_length.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %frag = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %shredder, ptr %shredder.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %shredder.addr, metadata !291, metadata !DIExpression()), !dbg !296
  store ptr %fragment_offset, ptr %fragment_offset.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %fragment_offset.addr, metadata !292, metadata !DIExpression()), !dbg !297
  store ptr %fragment_length, ptr %fragment_length.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %fragment_length.addr, metadata !293, metadata !DIExpression()), !dbg !298
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !294, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 8, ptr %frag) #5, !dbg !300
  tail call void @llvm.dbg.declare(metadata ptr %frag, metadata !295, metadata !DIExpression()), !dbg !301
  br label %do.body, !dbg !302

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %shredder.addr, align 8, !dbg !303, !tbaa !99
  %tobool = icmp ne ptr %0, null, !dbg !303
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !303

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %fragment_length.addr, align 8, !dbg !303, !tbaa !99
  %tobool1 = icmp ne ptr %1, null, !dbg !303
  br i1 %tobool1, label %if.end, label %if.then, !dbg !306

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !307, !tbaa !99
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.5, ptr noundef @__func__.gt_shredder_shred, ptr noundef @.str, i32 noundef 108), !dbg !307
  call void @abort() #6, !dbg !307
  unreachable, !dbg !307

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !306

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !306

do.end:                                           ; preds = %do.cond
  br label %while.cond, !dbg !309

while.cond:                                       ; preds = %if.end8, %do.end
  %3 = load ptr, ptr %shredder.addr, align 8, !dbg !310, !tbaa !99
  %4 = load ptr, ptr %fragment_offset.addr, align 8, !dbg !311, !tbaa !99
  %5 = load ptr, ptr %fragment_length.addr, align 8, !dbg !312, !tbaa !99
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !313, !tbaa !99
  %call2 = call ptr @generate_fragment(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6), !dbg !314
  store ptr %call2, ptr %frag, align 8, !dbg !315, !tbaa !99
  %tobool3 = icmp ne ptr %call2, null, !dbg !309
  br i1 %tobool3, label %while.body, label %while.end, !dbg !309

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %shredder.addr, align 8, !dbg !316, !tbaa !99
  %sample_probability = getelementptr inbounds %struct.GtShredder, ptr %7, i32 0, i32 6, !dbg !319
  %8 = load double, ptr %sample_probability, align 8, !dbg !319, !tbaa !138
  %cmp = fcmp oeq double %8, 1.000000e+00, !dbg !320
  br i1 %cmp, label %if.then7, label %lor.lhs.false, !dbg !321

lor.lhs.false:                                    ; preds = %while.body
  %call4 = call double @gt_rand_0_to_1(), !dbg !322
  %9 = load ptr, ptr %shredder.addr, align 8, !dbg !323, !tbaa !99
  %sample_probability5 = getelementptr inbounds %struct.GtShredder, ptr %9, i32 0, i32 6, !dbg !324
  %10 = load double, ptr %sample_probability5, align 8, !dbg !324, !tbaa !138
  %cmp6 = fcmp ole double %call4, %10, !dbg !325
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !326

if.then7:                                         ; preds = %lor.lhs.false, %while.body
  %11 = load ptr, ptr %frag, align 8, !dbg !327, !tbaa !99
  store ptr %11, ptr %retval, align 8, !dbg !329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !329

if.else:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %frag, align 8, !dbg !330, !tbaa !99
  call void @gt_free_mem(ptr noundef %12, ptr noundef @.str, i32 noundef 114), !dbg !330
  br label %if.end8

if.end8:                                          ; preds = %if.else
  br label %while.cond, !dbg !309, !llvm.loop !331

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

cleanup:                                          ; preds = %while.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %frag) #5, !dbg !335
  %13 = load ptr, ptr %retval, align 8, !dbg !335
  ret ptr %13, !dbg !335
}

; Function Attrs: nounwind uwtable
define internal ptr @generate_fragment(ptr noundef %shredder, ptr noundef %fragment_offset, ptr noundef %fragment_length, ptr noundef %desc) #0 !dbg !336 {
entry:
  %retval = alloca ptr, align 8
  %shredder.addr = alloca ptr, align 8
  %fragment_offset.addr = alloca ptr, align 8
  %fragment_length.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %seqlen = alloca i64, align 8
  %fraglen = alloca i64, align 8
  %frag = alloca ptr, align 8
  store ptr %shredder, ptr %shredder.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %shredder.addr, metadata !338, metadata !DIExpression()), !dbg !347
  store ptr %fragment_offset, ptr %fragment_offset.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %fragment_offset.addr, metadata !339, metadata !DIExpression()), !dbg !348
  store ptr %fragment_length, ptr %fragment_length.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %fragment_length.addr, metadata !340, metadata !DIExpression()), !dbg !349
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !99
  tail call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !341, metadata !DIExpression()), !dbg !350
  br label %do.body, !dbg !351

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %shredder.addr, align 8, !dbg !352, !tbaa !99
  %tobool = icmp ne ptr %0, null, !dbg !352
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !352

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %fragment_length.addr, align 8, !dbg !352, !tbaa !99
  %tobool1 = icmp ne ptr %1, null, !dbg !352
  br i1 %tobool1, label %if.end, label %if.then, !dbg !355

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !356, !tbaa !99
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1, ptr noundef @.str.5, ptr noundef @__func__.generate_fragment, ptr noundef @.str, i32 noundef 69), !dbg !356
  call void @abort() #6, !dbg !356
  unreachable, !dbg !356

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !355

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %shredder.addr, align 8, !dbg !358, !tbaa !99
  %seqnum = getelementptr inbounds %struct.GtShredder, ptr %3, i32 0, i32 4, !dbg !359
  %4 = load i64, ptr %seqnum, align 8, !dbg !359, !tbaa !360
  %5 = load ptr, ptr %shredder.addr, align 8, !dbg !361, !tbaa !99
  %bioseq = getelementptr inbounds %struct.GtShredder, ptr %5, i32 0, i32 0, !dbg !362
  %6 = load ptr, ptr %bioseq, align 8, !dbg !362, !tbaa !122
  %call2 = call i64 @gt_bioseq_number_of_sequences(ptr noundef %6), !dbg !363
  %cmp = icmp ult i64 %4, %call2, !dbg !364
  br i1 %cmp, label %if.then3, label %if.end62, !dbg !365

if.then3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %seqlen) #5, !dbg !366
  tail call void @llvm.dbg.declare(metadata ptr %seqlen, metadata !342, metadata !DIExpression()), !dbg !367
  call void @llvm.lifetime.start.p0(i64 8, ptr %fraglen) #5, !dbg !366
  tail call void @llvm.dbg.declare(metadata ptr %fraglen, metadata !345, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 8, ptr %frag) #5, !dbg !369
  tail call void @llvm.dbg.declare(metadata ptr %frag, metadata !346, metadata !DIExpression()), !dbg !370
  %7 = load ptr, ptr %shredder.addr, align 8, !dbg !371, !tbaa !99
  %bioseq4 = getelementptr inbounds %struct.GtShredder, ptr %7, i32 0, i32 0, !dbg !372
  %8 = load ptr, ptr %bioseq4, align 8, !dbg !372, !tbaa !122
  %9 = load ptr, ptr %shredder.addr, align 8, !dbg !373, !tbaa !99
  %seqnum5 = getelementptr inbounds %struct.GtShredder, ptr %9, i32 0, i32 4, !dbg !374
  %10 = load i64, ptr %seqnum5, align 8, !dbg !374, !tbaa !360
  %call6 = call i64 @gt_bioseq_get_sequence_length(ptr noundef %8, i64 noundef %10), !dbg !375
  store i64 %call6, ptr %seqlen, align 8, !dbg !376, !tbaa !104
  %11 = load ptr, ptr %shredder.addr, align 8, !dbg !377, !tbaa !99
  %maxlength = getelementptr inbounds %struct.GtShredder, ptr %11, i32 0, i32 2, !dbg !378
  %12 = load i64, ptr %maxlength, align 8, !dbg !378, !tbaa !134
  %13 = load ptr, ptr %shredder.addr, align 8, !dbg !379, !tbaa !99
  %minlength = getelementptr inbounds %struct.GtShredder, ptr %13, i32 0, i32 1, !dbg !380
  %14 = load i64, ptr %minlength, align 8, !dbg !380, !tbaa !129
  %cmp7 = icmp eq i64 %12, %14, !dbg !381
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !377

cond.true:                                        ; preds = %if.then3
  br label %cond.end, !dbg !377

cond.false:                                       ; preds = %if.then3
  %15 = load ptr, ptr %shredder.addr, align 8, !dbg !382, !tbaa !99
  %maxlength8 = getelementptr inbounds %struct.GtShredder, ptr %15, i32 0, i32 2, !dbg !383
  %16 = load i64, ptr %maxlength8, align 8, !dbg !383, !tbaa !134
  %17 = load ptr, ptr %shredder.addr, align 8, !dbg !384, !tbaa !99
  %minlength9 = getelementptr inbounds %struct.GtShredder, ptr %17, i32 0, i32 1, !dbg !385
  %18 = load i64, ptr %minlength9, align 8, !dbg !385, !tbaa !129
  %sub = sub i64 %16, %18, !dbg !386
  %call10 = call i64 @gt_rand_max(i64 noundef %sub), !dbg !387
  br label %cond.end, !dbg !377

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call10, %cond.false ], !dbg !377
  %19 = load ptr, ptr %shredder.addr, align 8, !dbg !388, !tbaa !99
  %minlength11 = getelementptr inbounds %struct.GtShredder, ptr %19, i32 0, i32 1, !dbg !389
  %20 = load i64, ptr %minlength11, align 8, !dbg !389, !tbaa !129
  %add = add i64 %cond, %20, !dbg !390
  store i64 %add, ptr %fraglen, align 8, !dbg !391, !tbaa !104
  br label %do.body12, !dbg !392

do.body12:                                        ; preds = %cond.end
  %21 = load i64, ptr %fraglen, align 8, !dbg !393, !tbaa !104
  %22 = load ptr, ptr %shredder.addr, align 8, !dbg !393, !tbaa !99
  %minlength13 = getelementptr inbounds %struct.GtShredder, ptr %22, i32 0, i32 1, !dbg !393
  %23 = load i64, ptr %minlength13, align 8, !dbg !393, !tbaa !129
  %cmp14 = icmp uge i64 %21, %23, !dbg !393
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !396

if.then15:                                        ; preds = %do.body12
  %24 = load ptr, ptr @stderr, align 8, !dbg !397, !tbaa !99
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.1, ptr noundef @.str.6, ptr noundef @__func__.generate_fragment, ptr noundef @.str, i32 noundef 77), !dbg !397
  call void @abort() #6, !dbg !397
  unreachable, !dbg !397

if.end17:                                         ; preds = %do.body12
  br label %do.cond, !dbg !396

do.cond:                                          ; preds = %if.end17
  br label %do.end18, !dbg !396

do.end18:                                         ; preds = %do.cond
  %25 = load ptr, ptr %shredder.addr, align 8, !dbg !399, !tbaa !99
  %pos = getelementptr inbounds %struct.GtShredder, ptr %25, i32 0, i32 5, !dbg !401
  %26 = load i64, ptr %pos, align 8, !dbg !401, !tbaa !402
  %27 = load i64, ptr %fraglen, align 8, !dbg !403, !tbaa !104
  %add19 = add i64 %26, %27, !dbg !404
  %28 = load i64, ptr %seqlen, align 8, !dbg !405, !tbaa !104
  %cmp20 = icmp ugt i64 %add19, %28, !dbg !406
  br i1 %cmp20, label %if.then21, label %if.end24, !dbg !407

if.then21:                                        ; preds = %do.end18
  %29 = load i64, ptr %seqlen, align 8, !dbg !408, !tbaa !104
  %30 = load ptr, ptr %shredder.addr, align 8, !dbg !409, !tbaa !99
  %pos22 = getelementptr inbounds %struct.GtShredder, ptr %30, i32 0, i32 5, !dbg !410
  %31 = load i64, ptr %pos22, align 8, !dbg !410, !tbaa !402
  %sub23 = sub i64 %29, %31, !dbg !411
  store i64 %sub23, ptr %fraglen, align 8, !dbg !412, !tbaa !104
  br label %if.end24, !dbg !413

if.end24:                                         ; preds = %if.then21, %do.end18
  %32 = load ptr, ptr %shredder.addr, align 8, !dbg !414, !tbaa !99
  %pos25 = getelementptr inbounds %struct.GtShredder, ptr %32, i32 0, i32 5, !dbg !415
  %33 = load i64, ptr %pos25, align 8, !dbg !415, !tbaa !402
  %34 = load ptr, ptr %fragment_offset.addr, align 8, !dbg !416, !tbaa !99
  store i64 %33, ptr %34, align 8, !dbg !417, !tbaa !104
  %35 = load i64, ptr %fraglen, align 8, !dbg !418, !tbaa !104
  %36 = load ptr, ptr %fragment_length.addr, align 8, !dbg !419, !tbaa !99
  store i64 %35, ptr %36, align 8, !dbg !420, !tbaa !104
  %37 = load ptr, ptr %desc.addr, align 8, !dbg !421, !tbaa !99
  call void @gt_str_reset(ptr noundef %37), !dbg !422
  %38 = load ptr, ptr %desc.addr, align 8, !dbg !423, !tbaa !99
  %39 = load ptr, ptr %shredder.addr, align 8, !dbg !424, !tbaa !99
  %bioseq26 = getelementptr inbounds %struct.GtShredder, ptr %39, i32 0, i32 0, !dbg !425
  %40 = load ptr, ptr %bioseq26, align 8, !dbg !425, !tbaa !122
  %41 = load ptr, ptr %shredder.addr, align 8, !dbg !426, !tbaa !99
  %seqnum27 = getelementptr inbounds %struct.GtShredder, ptr %41, i32 0, i32 4, !dbg !427
  %42 = load i64, ptr %seqnum27, align 8, !dbg !427, !tbaa !360
  %call28 = call ptr @gt_bioseq_get_description(ptr noundef %40, i64 noundef %42), !dbg !428
  call void @gt_str_append_cstr(ptr noundef %38, ptr noundef %call28), !dbg !429
  br label %do.body29, !dbg !430

do.body29:                                        ; preds = %if.end24
  %43 = load ptr, ptr %shredder.addr, align 8, !dbg !431, !tbaa !99
  %pos30 = getelementptr inbounds %struct.GtShredder, ptr %43, i32 0, i32 5, !dbg !431
  %44 = load i64, ptr %pos30, align 8, !dbg !431, !tbaa !402
  %45 = load i64, ptr %fraglen, align 8, !dbg !431, !tbaa !104
  %add31 = add i64 %44, %45, !dbg !431
  %46 = load i64, ptr %seqlen, align 8, !dbg !431, !tbaa !104
  %cmp32 = icmp ule i64 %add31, %46, !dbg !431
  br i1 %cmp32, label %if.end35, label %if.then33, !dbg !434

if.then33:                                        ; preds = %do.body29
  %47 = load ptr, ptr @stderr, align 8, !dbg !435, !tbaa !99
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.1, ptr noundef @.str.7, ptr noundef @__func__.generate_fragment, ptr noundef @.str, i32 noundef 85), !dbg !435
  call void @abort() #6, !dbg !435
  unreachable, !dbg !435

if.end35:                                         ; preds = %do.body29
  br label %do.cond36, !dbg !434

do.cond36:                                        ; preds = %if.end35
  br label %do.end37, !dbg !434

do.end37:                                         ; preds = %do.cond36
  %48 = load ptr, ptr %shredder.addr, align 8, !dbg !437, !tbaa !99
  %bioseq38 = getelementptr inbounds %struct.GtShredder, ptr %48, i32 0, i32 0, !dbg !438
  %49 = load ptr, ptr %bioseq38, align 8, !dbg !438, !tbaa !122
  %50 = load ptr, ptr %shredder.addr, align 8, !dbg !439, !tbaa !99
  %seqnum39 = getelementptr inbounds %struct.GtShredder, ptr %50, i32 0, i32 4, !dbg !440
  %51 = load i64, ptr %seqnum39, align 8, !dbg !440, !tbaa !360
  %52 = load ptr, ptr %shredder.addr, align 8, !dbg !441, !tbaa !99
  %pos40 = getelementptr inbounds %struct.GtShredder, ptr %52, i32 0, i32 5, !dbg !442
  %53 = load i64, ptr %pos40, align 8, !dbg !442, !tbaa !402
  %54 = load ptr, ptr %shredder.addr, align 8, !dbg !443, !tbaa !99
  %pos41 = getelementptr inbounds %struct.GtShredder, ptr %54, i32 0, i32 5, !dbg !444
  %55 = load i64, ptr %pos41, align 8, !dbg !444, !tbaa !402
  %56 = load i64, ptr %fraglen, align 8, !dbg !445, !tbaa !104
  %add42 = add i64 %55, %56, !dbg !446
  %sub43 = sub i64 %add42, 1, !dbg !447
  %call44 = call ptr @gt_bioseq_get_sequence_range(ptr noundef %49, i64 noundef %51, i64 noundef %53, i64 noundef %sub43), !dbg !448
  store ptr %call44, ptr %frag, align 8, !dbg !449, !tbaa !99
  %57 = load ptr, ptr %shredder.addr, align 8, !dbg !450, !tbaa !99
  %pos45 = getelementptr inbounds %struct.GtShredder, ptr %57, i32 0, i32 5, !dbg !452
  %58 = load i64, ptr %pos45, align 8, !dbg !452, !tbaa !402
  %59 = load i64, ptr %fraglen, align 8, !dbg !453, !tbaa !104
  %add46 = add i64 %58, %59, !dbg !454
  %60 = load i64, ptr %seqlen, align 8, !dbg !455, !tbaa !104
  %cmp47 = icmp eq i64 %add46, %60, !dbg !456
  br i1 %cmp47, label %if.then48, label %if.else, !dbg !457

if.then48:                                        ; preds = %do.end37
  %61 = load ptr, ptr %shredder.addr, align 8, !dbg !458, !tbaa !99
  %seqnum49 = getelementptr inbounds %struct.GtShredder, ptr %61, i32 0, i32 4, !dbg !460
  %62 = load i64, ptr %seqnum49, align 8, !dbg !461, !tbaa !360
  %inc = add i64 %62, 1, !dbg !461
  store i64 %inc, ptr %seqnum49, align 8, !dbg !461, !tbaa !360
  %63 = load ptr, ptr %shredder.addr, align 8, !dbg !462, !tbaa !99
  %pos50 = getelementptr inbounds %struct.GtShredder, ptr %63, i32 0, i32 5, !dbg !463
  store i64 0, ptr %pos50, align 8, !dbg !464, !tbaa !402
  br label %if.end61, !dbg !465

if.else:                                          ; preds = %do.end37
  %64 = load i64, ptr %fraglen, align 8, !dbg !466, !tbaa !104
  %65 = load ptr, ptr %shredder.addr, align 8, !dbg !469, !tbaa !99
  %overlap = getelementptr inbounds %struct.GtShredder, ptr %65, i32 0, i32 3, !dbg !470
  %66 = load i64, ptr %overlap, align 8, !dbg !470, !tbaa !252
  %cmp51 = icmp ugt i64 %64, %66, !dbg !471
  br i1 %cmp51, label %if.then52, label %if.else57, !dbg !472

if.then52:                                        ; preds = %if.else
  %67 = load i64, ptr %fraglen, align 8, !dbg !473, !tbaa !104
  %68 = load ptr, ptr %shredder.addr, align 8, !dbg !474, !tbaa !99
  %overlap53 = getelementptr inbounds %struct.GtShredder, ptr %68, i32 0, i32 3, !dbg !475
  %69 = load i64, ptr %overlap53, align 8, !dbg !475, !tbaa !252
  %sub54 = sub i64 %67, %69, !dbg !476
  %70 = load ptr, ptr %shredder.addr, align 8, !dbg !477, !tbaa !99
  %pos55 = getelementptr inbounds %struct.GtShredder, ptr %70, i32 0, i32 5, !dbg !478
  %71 = load i64, ptr %pos55, align 8, !dbg !479, !tbaa !402
  %add56 = add i64 %71, %sub54, !dbg !479
  store i64 %add56, ptr %pos55, align 8, !dbg !479, !tbaa !402
  br label %if.end60, !dbg !477

if.else57:                                        ; preds = %if.else
  %72 = load ptr, ptr %shredder.addr, align 8, !dbg !480, !tbaa !99
  %pos58 = getelementptr inbounds %struct.GtShredder, ptr %72, i32 0, i32 5, !dbg !481
  %73 = load i64, ptr %pos58, align 8, !dbg !482, !tbaa !402
  %inc59 = add i64 %73, 1, !dbg !482
  store i64 %inc59, ptr %pos58, align 8, !dbg !482, !tbaa !402
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then52
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then48
  %74 = load ptr, ptr %frag, align 8, !dbg !483, !tbaa !99
  store ptr %74, ptr %retval, align 8, !dbg !484
  call void @llvm.lifetime.end.p0(i64 8, ptr %frag) #5, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %fraglen) #5, !dbg !485
  call void @llvm.lifetime.end.p0(i64 8, ptr %seqlen) #5, !dbg !485
  br label %return

if.end62:                                         ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !486
  br label %return, !dbg !486

return:                                           ; preds = %if.end62, %if.end61
  %75 = load ptr, ptr %retval, align 8, !dbg !487
  ret ptr %75, !dbg !487
}

declare !dbg !488 double @gt_rand_0_to_1() #2

declare !dbg !492 i64 @gt_bioseq_number_of_sequences(ptr noundef) #2

declare !dbg !495 i64 @gt_bioseq_get_sequence_length(ptr noundef, i64 noundef) #2

declare !dbg !500 i64 @gt_rand_max(i64 noundef) #2

declare !dbg !503 void @gt_str_reset(ptr noundef) #2

declare !dbg !506 void @gt_str_append_cstr(ptr noundef, ptr noundef) #2

declare !dbg !509 ptr @gt_bioseq_get_description(ptr noundef, i64 noundef) #2

declare !dbg !512 ptr @gt_bioseq_get_sequence_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!63}
!llvm.module.flags = !{!65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/extended/shredder.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "b17fb172057ddceb3ffc78ba214c57c6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 297)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 46)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 16)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 9)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !5)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 280, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 35)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 41)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 28)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 144, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 18)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !48, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 31)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 34)
!63 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !64, splitDebugInlining: false, nameTableKind: None)
!64 = !{!0, !7, !12, !17, !23, !28, !31, !36, !41, !46, !51, !53, !58}
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{i32 8, !"PIC Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!71 = distinct !DISubprogram(name: "gt_shredder_new", scope: !2, file: !2, line: 32, type: !72, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !94)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !80, !85, !85}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtShredder", file: !76, line: 23, baseType: !77)
!76 = !DIFile(filename: "src/extended/shredder.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f33feb9741a0141cbe83ebc0130d50e9")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtShredder", file: !2, line: 22, size: 448, elements: !78)
!78 = !{!79, !84, !88, !89, !90, !91, !92}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "bioseq", scope: !77, file: !2, line: 23, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBioseq", file: !82, line: 29, baseType: !83)
!82 = !DIFile(filename: "src/core/bioseq_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9b30cca4d5e7006f9055b785cc9b7afe")
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBioseq", file: !82, line: 29, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "minlength", scope: !77, file: !2, line: 24, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !86, line: 83, baseType: !87)
!86 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "maxlength", scope: !77, file: !2, line: 25, baseType: !85, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !77, file: !2, line: 26, baseType: !85, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !77, file: !2, line: 27, baseType: !85, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !77, file: !2, line: 28, baseType: !85, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sample_probability", scope: !77, file: !2, line: 29, baseType: !93, size: 64, offset: 384)
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !{!95, !96, !97, !98}
!95 = !DILocalVariable(name: "bioseq", arg: 1, scope: !71, file: !2, line: 32, type: !80)
!96 = !DILocalVariable(name: "minlength", arg: 2, scope: !71, file: !2, line: 32, type: !85)
!97 = !DILocalVariable(name: "maxlength", arg: 3, scope: !71, file: !2, line: 33, type: !85)
!98 = !DILocalVariable(name: "shredder", scope: !71, file: !2, line: 35, type: !74)
!99 = !{!100, !100, i64 0}
!100 = !{!"any pointer", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !DILocation(line: 32, column: 39, scope: !71)
!104 = !{!105, !105, i64 0}
!105 = !{!"long", !101, i64 0}
!106 = !DILocation(line: 32, column: 55, scope: !71)
!107 = !DILocation(line: 33, column: 48, scope: !71)
!108 = !DILocation(line: 35, column: 3, scope: !71)
!109 = !DILocation(line: 35, column: 15, scope: !71)
!110 = !DILocation(line: 35, column: 26, scope: !71)
!111 = !DILocation(line: 36, column: 3, scope: !71)
!112 = !DILocation(line: 36, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 36, column: 3)
!114 = distinct !DILexicalBlock(scope: !71, file: !2, line: 36, column: 3)
!115 = !DILocation(line: 36, column: 3, scope: !114)
!116 = !DILocation(line: 36, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !2, line: 36, column: 3)
!118 = !DILocation(line: 37, column: 22, scope: !71)
!119 = !DILocation(line: 37, column: 3, scope: !71)
!120 = !DILocation(line: 37, column: 13, scope: !71)
!121 = !DILocation(line: 37, column: 20, scope: !71)
!122 = !{!123, !100, i64 0}
!123 = !{!"GtShredder", !100, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !124, i64 48}
!124 = !{!"double", !101, i64 0}
!125 = !DILocation(line: 38, column: 25, scope: !71)
!126 = !DILocation(line: 38, column: 3, scope: !71)
!127 = !DILocation(line: 38, column: 13, scope: !71)
!128 = !DILocation(line: 38, column: 23, scope: !71)
!129 = !{!123, !105, i64 8}
!130 = !DILocation(line: 39, column: 25, scope: !71)
!131 = !DILocation(line: 39, column: 3, scope: !71)
!132 = !DILocation(line: 39, column: 13, scope: !71)
!133 = !DILocation(line: 39, column: 23, scope: !71)
!134 = !{!123, !105, i64 16}
!135 = !DILocation(line: 40, column: 3, scope: !71)
!136 = !DILocation(line: 40, column: 13, scope: !71)
!137 = !DILocation(line: 40, column: 32, scope: !71)
!138 = !{!123, !124, i64 48}
!139 = !DILocation(line: 41, column: 10, scope: !71)
!140 = !DILocation(line: 42, column: 1, scope: !71)
!141 = !DILocation(line: 41, column: 3, scope: !71)
!142 = !DISubprogram(name: "gt_calloc_mem", scope: !143, file: !143, line: 62, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !147, !147, !149, !150}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 70, baseType: !87)
!148 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DISubprogram(name: "fprintf", scope: !152, file: !152, line: 350, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!153 = !DISubroutineType(types: !154)
!154 = !{!150, !155, !213, null}
!155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !158, line: 7, baseType: !159)
!158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !160, line: 49, size: 1728, elements: !161)
!160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!161 = !{!162, !163, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !178, !180, !181, !182, !186, !188, !190, !194, !197, !199, !202, !205, !206, !207, !208, !209}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !159, file: !160, line: 51, baseType: !150, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !159, file: !160, line: 54, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !159, file: !160, line: 55, baseType: !164, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !159, file: !160, line: 56, baseType: !164, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !159, file: !160, line: 57, baseType: !164, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !159, file: !160, line: 58, baseType: !164, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !159, file: !160, line: 59, baseType: !164, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !159, file: !160, line: 60, baseType: !164, size: 64, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !159, file: !160, line: 61, baseType: !164, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !159, file: !160, line: 64, baseType: !164, size: 64, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !159, file: !160, line: 65, baseType: !164, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !159, file: !160, line: 66, baseType: !164, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !159, file: !160, line: 68, baseType: !176, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !160, line: 36, flags: DIFlagFwdDecl)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !159, file: !160, line: 70, baseType: !179, size: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !159, file: !160, line: 72, baseType: !150, size: 32, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !159, file: !160, line: 73, baseType: !150, size: 32, offset: 928)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !159, file: !160, line: 74, baseType: !183, size: 64, offset: 960)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !184, line: 152, baseType: !185)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!185 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !159, file: !160, line: 77, baseType: !187, size: 16, offset: 1024)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !159, file: !160, line: 78, baseType: !189, size: 8, offset: 1040)
!189 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !159, file: !160, line: 79, baseType: !191, size: 8, offset: 1048)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 1)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !159, file: !160, line: 81, baseType: !195, size: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !160, line: 43, baseType: null)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !159, file: !160, line: 89, baseType: !198, size: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !184, line: 153, baseType: !185)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !159, file: !160, line: 91, baseType: !200, size: 64, offset: 1216)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !160, line: 37, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !159, file: !160, line: 92, baseType: !203, size: 64, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !160, line: 38, flags: DIFlagFwdDecl)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !159, file: !160, line: 93, baseType: !179, size: 64, offset: 1344)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !159, file: !160, line: 94, baseType: !146, size: 64, offset: 1408)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !159, file: !160, line: 95, baseType: !147, size: 64, offset: 1472)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !159, file: !160, line: 96, baseType: !150, size: 32, offset: 1536)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !159, file: !160, line: 98, baseType: !210, size: 160, offset: 1568)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 20)
!213 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!214 = !DISubprogram(name: "abort", scope: !215, file: !215, line: 598, type: !216, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!215 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!216 = !DISubroutineType(types: !217)
!217 = !{null}
!218 = distinct !DISubprogram(name: "gt_shredder_delete", scope: !2, file: !2, line: 44, type: !219, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !74}
!221 = !{!222}
!222 = !DILocalVariable(name: "shredder", arg: 1, scope: !218, file: !2, line: 44, type: !74)
!223 = !DILocation(line: 44, column: 37, scope: !218)
!224 = !DILocation(line: 46, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !2, line: 46, column: 7)
!226 = !DILocation(line: 46, column: 7, scope: !218)
!227 = !DILocation(line: 46, column: 18, scope: !225)
!228 = !DILocation(line: 47, column: 3, scope: !218)
!229 = !DILocation(line: 48, column: 1, scope: !218)
!230 = !DISubprogram(name: "gt_free_mem", scope: !143, file: !143, line: 75, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !146, !149, !150}
!233 = distinct !DISubprogram(name: "gt_shredder_set_overlap", scope: !2, file: !2, line: 50, type: !234, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !74, !85}
!236 = !{!237, !238}
!237 = !DILocalVariable(name: "shredder", arg: 1, scope: !233, file: !2, line: 50, type: !74)
!238 = !DILocalVariable(name: "overlap", arg: 2, scope: !233, file: !2, line: 50, type: !85)
!239 = !DILocation(line: 50, column: 42, scope: !233)
!240 = !DILocation(line: 50, column: 60, scope: !233)
!241 = !DILocation(line: 52, column: 3, scope: !233)
!242 = !DILocation(line: 52, column: 3, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !2, line: 52, column: 3)
!244 = distinct !DILexicalBlock(scope: !233, file: !2, line: 52, column: 3)
!245 = !DILocation(line: 52, column: 3, scope: !244)
!246 = !DILocation(line: 52, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !2, line: 52, column: 3)
!248 = !DILocation(line: 53, column: 23, scope: !233)
!249 = !DILocation(line: 53, column: 3, scope: !233)
!250 = !DILocation(line: 53, column: 13, scope: !233)
!251 = !DILocation(line: 53, column: 21, scope: !233)
!252 = !{!123, !105, i64 24}
!253 = !DILocation(line: 54, column: 1, scope: !233)
!254 = distinct !DISubprogram(name: "gt_shredder_set_sample_probability", scope: !2, file: !2, line: 56, type: !255, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !74, !93}
!257 = !{!258, !259}
!258 = !DILocalVariable(name: "shredder", arg: 1, scope: !254, file: !2, line: 56, type: !74)
!259 = !DILocalVariable(name: "probability", arg: 2, scope: !254, file: !2, line: 57, type: !93)
!260 = !DILocation(line: 56, column: 53, scope: !254)
!261 = !{!124, !124, i64 0}
!262 = !DILocation(line: 57, column: 48, scope: !254)
!263 = !DILocation(line: 59, column: 3, scope: !254)
!264 = !DILocation(line: 59, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !2, line: 59, column: 3)
!266 = distinct !DILexicalBlock(scope: !254, file: !2, line: 59, column: 3)
!267 = !DILocation(line: 59, column: 3, scope: !266)
!268 = !DILocation(line: 59, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !2, line: 59, column: 3)
!270 = !DILocation(line: 60, column: 3, scope: !254)
!271 = !DILocation(line: 60, column: 3, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 60, column: 3)
!273 = distinct !DILexicalBlock(scope: !254, file: !2, line: 60, column: 3)
!274 = !DILocation(line: 60, column: 3, scope: !273)
!275 = !DILocation(line: 60, column: 3, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !2, line: 60, column: 3)
!277 = !DILocation(line: 61, column: 34, scope: !254)
!278 = !DILocation(line: 61, column: 3, scope: !254)
!279 = !DILocation(line: 61, column: 13, scope: !254)
!280 = !DILocation(line: 61, column: 32, scope: !254)
!281 = !DILocation(line: 62, column: 1, scope: !254)
!282 = distinct !DISubprogram(name: "gt_shredder_shred", scope: !2, file: !2, line: 104, type: !283, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !290)
!283 = !DISubroutineType(types: !284)
!284 = !{!164, !74, !285, !285, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !288, line: 27, baseType: !289)
!288 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !288, line: 27, flags: DIFlagFwdDecl)
!290 = !{!291, !292, !293, !294, !295}
!291 = !DILocalVariable(name: "shredder", arg: 1, scope: !282, file: !2, line: 104, type: !74)
!292 = !DILocalVariable(name: "fragment_offset", arg: 2, scope: !282, file: !2, line: 104, type: !285)
!293 = !DILocalVariable(name: "fragment_length", arg: 3, scope: !282, file: !2, line: 105, type: !285)
!294 = !DILocalVariable(name: "desc", arg: 4, scope: !282, file: !2, line: 105, type: !286)
!295 = !DILocalVariable(name: "frag", scope: !282, file: !2, line: 107, type: !164)
!296 = !DILocation(line: 104, column: 37, scope: !282)
!297 = !DILocation(line: 104, column: 56, scope: !282)
!298 = !DILocation(line: 105, column: 34, scope: !282)
!299 = !DILocation(line: 105, column: 58, scope: !282)
!300 = !DILocation(line: 107, column: 3, scope: !282)
!301 = !DILocation(line: 107, column: 9, scope: !282)
!302 = !DILocation(line: 108, column: 3, scope: !282)
!303 = !DILocation(line: 108, column: 3, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 108, column: 3)
!305 = distinct !DILexicalBlock(scope: !282, file: !2, line: 108, column: 3)
!306 = !DILocation(line: 108, column: 3, scope: !305)
!307 = !DILocation(line: 108, column: 3, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !2, line: 108, column: 3)
!309 = !DILocation(line: 109, column: 3, scope: !282)
!310 = !DILocation(line: 109, column: 36, scope: !282)
!311 = !DILocation(line: 109, column: 46, scope: !282)
!312 = !DILocation(line: 109, column: 63, scope: !282)
!313 = !DILocation(line: 110, column: 36, scope: !282)
!314 = !DILocation(line: 109, column: 18, scope: !282)
!315 = !DILocation(line: 109, column: 16, scope: !282)
!316 = !DILocation(line: 111, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 111, column: 9)
!318 = distinct !DILexicalBlock(scope: !282, file: !2, line: 110, column: 44)
!319 = !DILocation(line: 111, column: 19, scope: !317)
!320 = !DILocation(line: 111, column: 38, scope: !317)
!321 = !DILocation(line: 111, column: 45, scope: !317)
!322 = !DILocation(line: 112, column: 9, scope: !317)
!323 = !DILocation(line: 112, column: 29, scope: !317)
!324 = !DILocation(line: 112, column: 39, scope: !317)
!325 = !DILocation(line: 112, column: 26, scope: !317)
!326 = !DILocation(line: 111, column: 9, scope: !318)
!327 = !DILocation(line: 113, column: 14, scope: !328)
!328 = distinct !DILexicalBlock(scope: !317, file: !2, line: 112, column: 59)
!329 = !DILocation(line: 113, column: 7, scope: !328)
!330 = !DILocation(line: 114, column: 12, scope: !317)
!331 = distinct !{!331, !309, !332, !333}
!332 = !DILocation(line: 115, column: 3, scope: !282)
!333 = !{!"llvm.loop.mustprogress"}
!334 = !DILocation(line: 116, column: 3, scope: !282)
!335 = !DILocation(line: 117, column: 1, scope: !282)
!336 = distinct !DISubprogram(name: "generate_fragment", scope: !2, file: !2, line: 64, type: !283, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !63, retainedNodes: !337)
!337 = !{!338, !339, !340, !341, !342, !345, !346}
!338 = !DILocalVariable(name: "shredder", arg: 1, scope: !336, file: !2, line: 64, type: !74)
!339 = !DILocalVariable(name: "fragment_offset", arg: 2, scope: !336, file: !2, line: 65, type: !285)
!340 = !DILocalVariable(name: "fragment_length", arg: 3, scope: !336, file: !2, line: 66, type: !285)
!341 = !DILocalVariable(name: "desc", arg: 4, scope: !336, file: !2, line: 67, type: !286)
!342 = !DILocalVariable(name: "seqlen", scope: !343, file: !2, line: 71, type: !85)
!343 = distinct !DILexicalBlock(scope: !344, file: !2, line: 70, column: 75)
!344 = distinct !DILexicalBlock(scope: !336, file: !2, line: 70, column: 7)
!345 = !DILocalVariable(name: "fraglen", scope: !343, file: !2, line: 71, type: !85)
!346 = !DILocalVariable(name: "frag", scope: !343, file: !2, line: 72, type: !164)
!347 = !DILocation(line: 64, column: 44, scope: !336)
!348 = !DILocation(line: 65, column: 41, scope: !336)
!349 = !DILocation(line: 66, column: 41, scope: !336)
!350 = !DILocation(line: 67, column: 39, scope: !336)
!351 = !DILocation(line: 69, column: 3, scope: !336)
!352 = !DILocation(line: 69, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 69, column: 3)
!354 = distinct !DILexicalBlock(scope: !336, file: !2, line: 69, column: 3)
!355 = !DILocation(line: 69, column: 3, scope: !354)
!356 = !DILocation(line: 69, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !2, line: 69, column: 3)
!358 = !DILocation(line: 70, column: 7, scope: !344)
!359 = !DILocation(line: 70, column: 17, scope: !344)
!360 = !{!123, !105, i64 32}
!361 = !DILocation(line: 70, column: 56, scope: !344)
!362 = !DILocation(line: 70, column: 66, scope: !344)
!363 = !DILocation(line: 70, column: 26, scope: !344)
!364 = !DILocation(line: 70, column: 24, scope: !344)
!365 = !DILocation(line: 70, column: 7, scope: !336)
!366 = !DILocation(line: 71, column: 5, scope: !343)
!367 = !DILocation(line: 71, column: 13, scope: !343)
!368 = !DILocation(line: 71, column: 21, scope: !343)
!369 = !DILocation(line: 72, column: 5, scope: !343)
!370 = !DILocation(line: 72, column: 11, scope: !343)
!371 = !DILocation(line: 73, column: 44, scope: !343)
!372 = !DILocation(line: 73, column: 54, scope: !343)
!373 = !DILocation(line: 73, column: 62, scope: !343)
!374 = !DILocation(line: 73, column: 72, scope: !343)
!375 = !DILocation(line: 73, column: 14, scope: !343)
!376 = !DILocation(line: 73, column: 12, scope: !343)
!377 = !DILocation(line: 74, column: 16, scope: !343)
!378 = !DILocation(line: 74, column: 26, scope: !343)
!379 = !DILocation(line: 74, column: 39, scope: !343)
!380 = !DILocation(line: 74, column: 49, scope: !343)
!381 = !DILocation(line: 74, column: 36, scope: !343)
!382 = !DILocation(line: 75, column: 34, scope: !343)
!383 = !DILocation(line: 75, column: 44, scope: !343)
!384 = !DILocation(line: 75, column: 56, scope: !343)
!385 = !DILocation(line: 75, column: 66, scope: !343)
!386 = !DILocation(line: 75, column: 54, scope: !343)
!387 = !DILocation(line: 75, column: 22, scope: !343)
!388 = !DILocation(line: 76, column: 17, scope: !343)
!389 = !DILocation(line: 76, column: 27, scope: !343)
!390 = !DILocation(line: 76, column: 15, scope: !343)
!391 = !DILocation(line: 74, column: 13, scope: !343)
!392 = !DILocation(line: 77, column: 5, scope: !343)
!393 = !DILocation(line: 77, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 77, column: 5)
!395 = distinct !DILexicalBlock(scope: !343, file: !2, line: 77, column: 5)
!396 = !DILocation(line: 77, column: 5, scope: !395)
!397 = !DILocation(line: 77, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !2, line: 77, column: 5)
!399 = !DILocation(line: 78, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !343, file: !2, line: 78, column: 9)
!401 = !DILocation(line: 78, column: 19, scope: !400)
!402 = !{!123, !105, i64 40}
!403 = !DILocation(line: 78, column: 25, scope: !400)
!404 = !DILocation(line: 78, column: 23, scope: !400)
!405 = !DILocation(line: 78, column: 35, scope: !400)
!406 = !DILocation(line: 78, column: 33, scope: !400)
!407 = !DILocation(line: 78, column: 9, scope: !343)
!408 = !DILocation(line: 79, column: 17, scope: !400)
!409 = !DILocation(line: 79, column: 26, scope: !400)
!410 = !DILocation(line: 79, column: 36, scope: !400)
!411 = !DILocation(line: 79, column: 24, scope: !400)
!412 = !DILocation(line: 79, column: 15, scope: !400)
!413 = !DILocation(line: 79, column: 7, scope: !400)
!414 = !DILocation(line: 80, column: 24, scope: !343)
!415 = !DILocation(line: 80, column: 34, scope: !343)
!416 = !DILocation(line: 80, column: 6, scope: !343)
!417 = !DILocation(line: 80, column: 22, scope: !343)
!418 = !DILocation(line: 81, column: 24, scope: !343)
!419 = !DILocation(line: 81, column: 6, scope: !343)
!420 = !DILocation(line: 81, column: 22, scope: !343)
!421 = !DILocation(line: 82, column: 18, scope: !343)
!422 = !DILocation(line: 82, column: 5, scope: !343)
!423 = !DILocation(line: 83, column: 24, scope: !343)
!424 = !DILocation(line: 83, column: 56, scope: !343)
!425 = !DILocation(line: 83, column: 66, scope: !343)
!426 = !DILocation(line: 84, column: 56, scope: !343)
!427 = !DILocation(line: 84, column: 66, scope: !343)
!428 = !DILocation(line: 83, column: 30, scope: !343)
!429 = !DILocation(line: 83, column: 5, scope: !343)
!430 = !DILocation(line: 85, column: 5, scope: !343)
!431 = !DILocation(line: 85, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 85, column: 5)
!433 = distinct !DILexicalBlock(scope: !343, file: !2, line: 85, column: 5)
!434 = !DILocation(line: 85, column: 5, scope: !433)
!435 = !DILocation(line: 85, column: 5, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !2, line: 85, column: 5)
!437 = !DILocation(line: 86, column: 41, scope: !343)
!438 = !DILocation(line: 86, column: 51, scope: !343)
!439 = !DILocation(line: 86, column: 59, scope: !343)
!440 = !DILocation(line: 86, column: 69, scope: !343)
!441 = !DILocation(line: 87, column: 41, scope: !343)
!442 = !DILocation(line: 87, column: 51, scope: !343)
!443 = !DILocation(line: 88, column: 41, scope: !343)
!444 = !DILocation(line: 88, column: 51, scope: !343)
!445 = !DILocation(line: 88, column: 57, scope: !343)
!446 = !DILocation(line: 88, column: 55, scope: !343)
!447 = !DILocation(line: 88, column: 65, scope: !343)
!448 = !DILocation(line: 86, column: 12, scope: !343)
!449 = !DILocation(line: 86, column: 10, scope: !343)
!450 = !DILocation(line: 89, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !343, file: !2, line: 89, column: 9)
!452 = !DILocation(line: 89, column: 19, scope: !451)
!453 = !DILocation(line: 89, column: 25, scope: !451)
!454 = !DILocation(line: 89, column: 23, scope: !451)
!455 = !DILocation(line: 89, column: 36, scope: !451)
!456 = !DILocation(line: 89, column: 33, scope: !451)
!457 = !DILocation(line: 89, column: 9, scope: !343)
!458 = !DILocation(line: 90, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !451, file: !2, line: 89, column: 44)
!460 = !DILocation(line: 90, column: 17, scope: !459)
!461 = !DILocation(line: 90, column: 23, scope: !459)
!462 = !DILocation(line: 91, column: 7, scope: !459)
!463 = !DILocation(line: 91, column: 17, scope: !459)
!464 = !DILocation(line: 91, column: 21, scope: !459)
!465 = !DILocation(line: 92, column: 5, scope: !459)
!466 = !DILocation(line: 94, column: 11, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !2, line: 94, column: 11)
!468 = distinct !DILexicalBlock(scope: !451, file: !2, line: 93, column: 10)
!469 = !DILocation(line: 94, column: 21, scope: !467)
!470 = !DILocation(line: 94, column: 31, scope: !467)
!471 = !DILocation(line: 94, column: 19, scope: !467)
!472 = !DILocation(line: 94, column: 11, scope: !468)
!473 = !DILocation(line: 95, column: 26, scope: !467)
!474 = !DILocation(line: 95, column: 36, scope: !467)
!475 = !DILocation(line: 95, column: 46, scope: !467)
!476 = !DILocation(line: 95, column: 34, scope: !467)
!477 = !DILocation(line: 95, column: 9, scope: !467)
!478 = !DILocation(line: 95, column: 19, scope: !467)
!479 = !DILocation(line: 95, column: 23, scope: !467)
!480 = !DILocation(line: 97, column: 9, scope: !467)
!481 = !DILocation(line: 97, column: 19, scope: !467)
!482 = !DILocation(line: 97, column: 22, scope: !467)
!483 = !DILocation(line: 99, column: 12, scope: !343)
!484 = !DILocation(line: 99, column: 5, scope: !343)
!485 = !DILocation(line: 100, column: 3, scope: !344)
!486 = !DILocation(line: 101, column: 3, scope: !336)
!487 = !DILocation(line: 102, column: 1, scope: !336)
!488 = !DISubprogram(name: "gt_rand_0_to_1", scope: !489, file: !489, line: 47, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DIFile(filename: "src/core/mathsupport_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1043290a1aed19b0259df4461fbbffad")
!490 = !DISubroutineType(types: !491)
!491 = !{!93}
!492 = !DISubprogram(name: "gt_bioseq_number_of_sequences", scope: !82, file: !82, line: 95, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{!85, !80}
!495 = !DISubprogram(name: "gt_bioseq_get_sequence_length", scope: !82, file: !82, line: 90, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{!85, !498, !85}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!500 = !DISubprogram(name: "gt_rand_max", scope: !489, file: !489, line: 43, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubroutineType(types: !502)
!502 = !{!85, !85}
!503 = !DISubprogram(name: "gt_str_reset", scope: !288, file: !288, line: 70, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !286}
!506 = !DISubprogram(name: "gt_str_append_cstr", scope: !288, file: !288, line: 46, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !286, !149}
!509 = !DISubprogram(name: "gt_bioseq_get_description", scope: !82, file: !82, line: 53, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!149, !80, !85}
!512 = !DISubprogram(name: "gt_bioseq_get_sequence_range", scope: !82, file: !82, line: 65, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DISubroutineType(types: !514)
!514 = !{!164, !498, !85, !85, !85}
