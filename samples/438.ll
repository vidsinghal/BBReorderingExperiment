; ModuleID = 'samples/438.bc'
source_filename = "src/match/apmeoveridx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AbstractDfstransformer = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ApmeoveridxLimdfsconstinfo = type { i8, i64, i64, i64, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ApmeoveridxLimdfsstate = type { i64, i64, i64, i64 }
%struct.Limdfsresult = type { i32, i64, i64 }

@gt_apme_AbstractDfstransformer.apme_adfst = internal constant %struct.AbstractDfstransformer { i64 32, ptr @apme_allocatedfsconstinfo, ptr @apme_initdfsconstinfo, ptr null, ptr @apme_freedfsconstinfo, ptr @apme_initLimdfsstate, ptr null, ptr null, ptr null, ptr @apme_fullmatchLimdfsstate, ptr @apme_nextLimdfsstate, ptr @apme_inplacenextLimdfsstate }, align 8, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"src/match/apmeoveridx.c\00", align 1, !dbg !122
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !128
@.str.2 = private unnamed_addr constant [38 x i8] c"mti->maxdistance < mti->patternlength\00", align 1, !dbg !133
@__func__.apme_initdfsconstinfo = private unnamed_addr constant [22 x i8] c"apme_initdfsconstinfo\00", align 1, !dbg !138
@.str.3 = private unnamed_addr constant [17 x i8] c"col->maxleqk > 0\00", align 1, !dbg !144
@__func__.apme_fullmatchLimdfsstate = private unnamed_addr constant [26 x i8] c"apme_fullmatchLimdfsstate\00", align 1, !dbg !149
@.str.4 = private unnamed_addr constant [31 x i8] c"incol->maxleqk != UNDEFMAXLEQK\00", align 1, !dbg !154
@__func__.apme_nextLimdfsstate = private unnamed_addr constant [21 x i8] c"apme_nextLimdfsstate\00", align 1, !dbg !159
@.str.5 = private unnamed_addr constant [62 x i8] c"mti->maxintervalwidth > 0 || incol->maxleqk != SUCCESSMAXLEQK\00", align 1, !dbg !164
@.str.6 = private unnamed_addr constant [38 x i8] c"currentchar != (GtUchar) GT_SEPARATOR\00", align 1, !dbg !169
@.str.7 = private unnamed_addr constant [29 x i8] c"col->maxleqk != UNDEFMAXLEQK\00", align 1, !dbg !171
@__func__.apme_inplacenextLimdfsstate = private unnamed_addr constant [28 x i8] c"apme_inplacenextLimdfsstate\00", align 1, !dbg !176
@.str.8 = private unnamed_addr constant [60 x i8] c"mti->maxintervalwidth > 0 || col->maxleqk != SUCCESSMAXLEQK\00", align 1, !dbg !181

; Function Attrs: nounwind uwtable
define ptr @gt_apme_AbstractDfstransformer() #0 !dbg !2 {
entry:
  ret ptr @gt_apme_AbstractDfstransformer.apme_adfst, !dbg !192
}

; Function Attrs: nounwind uwtable
define internal ptr @apme_allocatedfsconstinfo(i32 noundef %alphasize) #0 !dbg !193 {
entry:
  %alphasize.addr = alloca i32, align 4
  %mti = alloca ptr, align 8
  store i32 %alphasize, ptr %alphasize.addr, align 4, !tbaa !197
  tail call void @llvm.dbg.declare(metadata ptr %alphasize.addr, metadata !195, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %mti) #6, !dbg !202
  tail call void @llvm.dbg.declare(metadata ptr %mti, metadata !196, metadata !DIExpression()), !dbg !203
  %call = call ptr @gt_malloc_mem(i64 noundef 40, ptr noundef @.str, i32 noundef 189), !dbg !204
  store ptr %call, ptr %mti, align 8, !dbg !203, !tbaa !205
  %0 = load i32, ptr %alphasize.addr, align 4, !dbg !207, !tbaa !197
  %conv = zext i32 %0 to i64, !dbg !207
  %mul = mul i64 8, %conv, !dbg !207
  %call1 = call ptr @gt_malloc_mem(i64 noundef %mul, ptr noundef @.str, i32 noundef 190), !dbg !207
  %1 = load ptr, ptr %mti, align 8, !dbg !208, !tbaa !205
  %eqsvector = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %1, i32 0, i32 4, !dbg !209
  store ptr %call1, ptr %eqsvector, align 8, !dbg !210, !tbaa !211
  %2 = load ptr, ptr %mti, align 8, !dbg !215, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr %mti) #6, !dbg !216
  ret ptr %2, !dbg !217
}

; Function Attrs: nounwind uwtable
define internal void @apme_initdfsconstinfo(ptr noundef %mt, i32 noundef %alphasize, ...) #0 !dbg !218 {
entry:
  %mt.addr = alloca ptr, align 8
  %alphasize.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %pattern = alloca ptr, align 8
  %mti = alloca ptr, align 8
  store ptr %mt, ptr %mt.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !220, metadata !DIExpression()), !dbg !241
  store i32 %alphasize, ptr %alphasize.addr, align 4, !tbaa !197
  tail call void @llvm.dbg.declare(metadata ptr %alphasize.addr, metadata !221, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #6, !dbg !243
  tail call void @llvm.dbg.declare(metadata ptr %ap, metadata !222, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 8, ptr %pattern) #6, !dbg !245
  tail call void @llvm.dbg.declare(metadata ptr %pattern, metadata !237, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 8, ptr %mti) #6, !dbg !247
  tail call void @llvm.dbg.declare(metadata ptr %mti, metadata !240, metadata !DIExpression()), !dbg !248
  %0 = load ptr, ptr %mt.addr, align 8, !dbg !249, !tbaa !205
  store ptr %0, ptr %mti, align 8, !dbg !248, !tbaa !205
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !250
  call void @llvm.va_start.p0(ptr %arraydecay), !dbg !250
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !251
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 0, !dbg !251
  %gp_offset = load i32, ptr %gp_offset_p, align 16, !dbg !251
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !251
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !251

vaarg.in_reg:                                     ; preds = %entry
  %1 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 3, !dbg !251
  %reg_save_area = load ptr, ptr %1, align 16, !dbg !251
  %2 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !251
  %3 = add i32 %gp_offset, 8, !dbg !251
  store i32 %3, ptr %gp_offset_p, align 16, !dbg !251
  br label %vaarg.end, !dbg !251

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 2, !dbg !251
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !251
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !251
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !251
  br label %vaarg.end, !dbg !251

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !251
  %4 = load ptr, ptr %vaarg.addr, align 8, !dbg !251
  store ptr %4, ptr %pattern, align 8, !dbg !252, !tbaa !205
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !253
  %gp_offset_p3 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 0, !dbg !253
  %gp_offset4 = load i32, ptr %gp_offset_p3, align 16, !dbg !253
  %fits_in_gp5 = icmp ule i32 %gp_offset4, 40, !dbg !253
  br i1 %fits_in_gp5, label %vaarg.in_reg6, label %vaarg.in_mem8, !dbg !253

vaarg.in_reg6:                                    ; preds = %vaarg.end
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 3, !dbg !253
  %reg_save_area7 = load ptr, ptr %5, align 16, !dbg !253
  %6 = getelementptr i8, ptr %reg_save_area7, i32 %gp_offset4, !dbg !253
  %7 = add i32 %gp_offset4, 8, !dbg !253
  store i32 %7, ptr %gp_offset_p3, align 16, !dbg !253
  br label %vaarg.end12, !dbg !253

vaarg.in_mem8:                                    ; preds = %vaarg.end
  %overflow_arg_area_p9 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 2, !dbg !253
  %overflow_arg_area10 = load ptr, ptr %overflow_arg_area_p9, align 8, !dbg !253
  %overflow_arg_area.next11 = getelementptr i8, ptr %overflow_arg_area10, i32 8, !dbg !253
  store ptr %overflow_arg_area.next11, ptr %overflow_arg_area_p9, align 8, !dbg !253
  br label %vaarg.end12, !dbg !253

vaarg.end12:                                      ; preds = %vaarg.in_mem8, %vaarg.in_reg6
  %vaarg.addr13 = phi ptr [ %6, %vaarg.in_reg6 ], [ %overflow_arg_area10, %vaarg.in_mem8 ], !dbg !253
  %8 = load i64, ptr %vaarg.addr13, align 8, !dbg !253
  %9 = load ptr, ptr %mti, align 8, !dbg !254, !tbaa !205
  %patternlength = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %9, i32 0, i32 2, !dbg !255
  store i64 %8, ptr %patternlength, align 8, !dbg !256, !tbaa !257
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !258
  %gp_offset_p15 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 0, !dbg !258
  %gp_offset16 = load i32, ptr %gp_offset_p15, align 16, !dbg !258
  %fits_in_gp17 = icmp ule i32 %gp_offset16, 40, !dbg !258
  br i1 %fits_in_gp17, label %vaarg.in_reg18, label %vaarg.in_mem20, !dbg !258

vaarg.in_reg18:                                   ; preds = %vaarg.end12
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 3, !dbg !258
  %reg_save_area19 = load ptr, ptr %10, align 16, !dbg !258
  %11 = getelementptr i8, ptr %reg_save_area19, i32 %gp_offset16, !dbg !258
  %12 = add i32 %gp_offset16, 8, !dbg !258
  store i32 %12, ptr %gp_offset_p15, align 16, !dbg !258
  br label %vaarg.end24, !dbg !258

vaarg.in_mem20:                                   ; preds = %vaarg.end12
  %overflow_arg_area_p21 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 2, !dbg !258
  %overflow_arg_area22 = load ptr, ptr %overflow_arg_area_p21, align 8, !dbg !258
  %overflow_arg_area.next23 = getelementptr i8, ptr %overflow_arg_area22, i32 8, !dbg !258
  store ptr %overflow_arg_area.next23, ptr %overflow_arg_area_p21, align 8, !dbg !258
  br label %vaarg.end24, !dbg !258

vaarg.end24:                                      ; preds = %vaarg.in_mem20, %vaarg.in_reg18
  %vaarg.addr25 = phi ptr [ %11, %vaarg.in_reg18 ], [ %overflow_arg_area22, %vaarg.in_mem20 ], !dbg !258
  %13 = load i64, ptr %vaarg.addr25, align 8, !dbg !258
  %14 = load ptr, ptr %mti, align 8, !dbg !259, !tbaa !205
  %maxdistance = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %14, i32 0, i32 3, !dbg !260
  store i64 %13, ptr %maxdistance, align 8, !dbg !261, !tbaa !262
  %arraydecay26 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !263
  %gp_offset_p27 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 0, !dbg !263
  %gp_offset28 = load i32, ptr %gp_offset_p27, align 16, !dbg !263
  %fits_in_gp29 = icmp ule i32 %gp_offset28, 40, !dbg !263
  br i1 %fits_in_gp29, label %vaarg.in_reg30, label %vaarg.in_mem32, !dbg !263

vaarg.in_reg30:                                   ; preds = %vaarg.end24
  %15 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 3, !dbg !263
  %reg_save_area31 = load ptr, ptr %15, align 16, !dbg !263
  %16 = getelementptr i8, ptr %reg_save_area31, i32 %gp_offset28, !dbg !263
  %17 = add i32 %gp_offset28, 8, !dbg !263
  store i32 %17, ptr %gp_offset_p27, align 16, !dbg !263
  br label %vaarg.end36, !dbg !263

vaarg.in_mem32:                                   ; preds = %vaarg.end24
  %overflow_arg_area_p33 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 2, !dbg !263
  %overflow_arg_area34 = load ptr, ptr %overflow_arg_area_p33, align 8, !dbg !263
  %overflow_arg_area.next35 = getelementptr i8, ptr %overflow_arg_area34, i32 8, !dbg !263
  store ptr %overflow_arg_area.next35, ptr %overflow_arg_area_p33, align 8, !dbg !263
  br label %vaarg.end36, !dbg !263

vaarg.end36:                                      ; preds = %vaarg.in_mem32, %vaarg.in_reg30
  %vaarg.addr37 = phi ptr [ %16, %vaarg.in_reg30 ], [ %overflow_arg_area34, %vaarg.in_mem32 ], !dbg !263
  %18 = load i64, ptr %vaarg.addr37, align 8, !dbg !263
  %19 = load ptr, ptr %mti, align 8, !dbg !264, !tbaa !205
  %maxintervalwidth = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %19, i32 0, i32 1, !dbg !265
  store i64 %18, ptr %maxintervalwidth, align 8, !dbg !266, !tbaa !267
  %arraydecay38 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !268
  %gp_offset_p39 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay38, i32 0, i32 0, !dbg !268
  %gp_offset40 = load i32, ptr %gp_offset_p39, align 16, !dbg !268
  %fits_in_gp41 = icmp ule i32 %gp_offset40, 40, !dbg !268
  br i1 %fits_in_gp41, label %vaarg.in_reg42, label %vaarg.in_mem44, !dbg !268

vaarg.in_reg42:                                   ; preds = %vaarg.end36
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay38, i32 0, i32 3, !dbg !268
  %reg_save_area43 = load ptr, ptr %20, align 16, !dbg !268
  %21 = getelementptr i8, ptr %reg_save_area43, i32 %gp_offset40, !dbg !268
  %22 = add i32 %gp_offset40, 8, !dbg !268
  store i32 %22, ptr %gp_offset_p39, align 16, !dbg !268
  br label %vaarg.end48, !dbg !268

vaarg.in_mem44:                                   ; preds = %vaarg.end36
  %overflow_arg_area_p45 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay38, i32 0, i32 2, !dbg !268
  %overflow_arg_area46 = load ptr, ptr %overflow_arg_area_p45, align 8, !dbg !268
  %overflow_arg_area.next47 = getelementptr i8, ptr %overflow_arg_area46, i32 8, !dbg !268
  store ptr %overflow_arg_area.next47, ptr %overflow_arg_area_p45, align 8, !dbg !268
  br label %vaarg.end48, !dbg !268

vaarg.end48:                                      ; preds = %vaarg.in_mem44, %vaarg.in_reg42
  %vaarg.addr49 = phi ptr [ %21, %vaarg.in_reg42 ], [ %overflow_arg_area46, %vaarg.in_mem44 ], !dbg !268
  %23 = load i32, ptr %vaarg.addr49, align 4, !dbg !268
  %tobool = icmp ne i32 %23, 0, !dbg !269
  %24 = load ptr, ptr %mti, align 8, !dbg !270, !tbaa !205
  %skpp = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %24, i32 0, i32 0, !dbg !271
  %frombool = zext i1 %tobool to i8, !dbg !272
  store i8 %frombool, ptr %skpp, align 8, !dbg !272, !tbaa !273
  %arraydecay50 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !274
  call void @llvm.va_end.p0(ptr %arraydecay50), !dbg !274
  br label %do.body, !dbg !275

do.body:                                          ; preds = %vaarg.end48
  %25 = load ptr, ptr %mti, align 8, !dbg !276, !tbaa !205
  %maxdistance51 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %25, i32 0, i32 3, !dbg !276
  %26 = load i64, ptr %maxdistance51, align 8, !dbg !276, !tbaa !262
  %27 = load ptr, ptr %mti, align 8, !dbg !276, !tbaa !205
  %patternlength52 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %27, i32 0, i32 2, !dbg !276
  %28 = load i64, ptr %patternlength52, align 8, !dbg !276, !tbaa !257
  %cmp = icmp ult i64 %26, %28, !dbg !276
  br i1 %cmp, label %if.end, label %if.then, !dbg !279

if.then:                                          ; preds = %do.body
  %29 = load ptr, ptr @stderr, align 8, !dbg !280, !tbaa !205
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.apme_initdfsconstinfo, ptr noundef @.str, i32 noundef 181), !dbg !280
  call void @abort() #7, !dbg !280
  unreachable, !dbg !280

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !279

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !279

do.end:                                           ; preds = %do.cond
  %30 = load ptr, ptr %mti, align 8, !dbg !282, !tbaa !205
  %eqsvector = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %30, i32 0, i32 4, !dbg !283
  %31 = load ptr, ptr %eqsvector, align 8, !dbg !283, !tbaa !211
  %32 = load i32, ptr %alphasize.addr, align 4, !dbg !284, !tbaa !197
  %conv = zext i32 %32 to i64, !dbg !285
  %33 = load ptr, ptr %pattern, align 8, !dbg !286, !tbaa !205
  %34 = load ptr, ptr %mti, align 8, !dbg !287, !tbaa !205
  %patternlength53 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %34, i32 0, i32 2, !dbg !288
  %35 = load i64, ptr %patternlength53, align 8, !dbg !288, !tbaa !257
  call void @gt_initeqsvector(ptr noundef %31, i64 noundef %conv, ptr noundef %33, i64 noundef %35), !dbg !289
  call void @llvm.lifetime.end.p0(i64 8, ptr %mti) #6, !dbg !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %pattern) #6, !dbg !290
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #6, !dbg !290
  ret void, !dbg !290
}

; Function Attrs: nounwind uwtable
define internal void @apme_freedfsconstinfo(ptr noundef %mtptr) #0 !dbg !291 {
entry:
  %mtptr.addr = alloca ptr, align 8
  %mtiptr = alloca ptr, align 8
  store ptr %mtptr, ptr %mtptr.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %mtptr.addr, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.lifetime.start.p0(i64 8, ptr %mtiptr) #6, !dbg !296
  tail call void @llvm.dbg.declare(metadata ptr %mtiptr, metadata !294, metadata !DIExpression()), !dbg !297
  %0 = load ptr, ptr %mtptr.addr, align 8, !dbg !298, !tbaa !205
  store ptr %0, ptr %mtiptr, align 8, !dbg !297, !tbaa !205
  %1 = load ptr, ptr %mtiptr, align 8, !dbg !299, !tbaa !205
  %2 = load ptr, ptr %1, align 8, !dbg !299, !tbaa !205
  %eqsvector = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %2, i32 0, i32 4, !dbg !299
  %3 = load ptr, ptr %eqsvector, align 8, !dbg !299, !tbaa !211
  call void @gt_free_mem(ptr noundef %3, ptr noundef @.str, i32 noundef 197), !dbg !299
  %4 = load ptr, ptr %mtiptr, align 8, !dbg !300, !tbaa !205
  %5 = load ptr, ptr %4, align 8, !dbg !300, !tbaa !205
  call void @gt_free_mem(ptr noundef %5, ptr noundef @.str, i32 noundef 198), !dbg !300
  %6 = load ptr, ptr %mtiptr, align 8, !dbg !301, !tbaa !205
  store ptr null, ptr %6, align 8, !dbg !302, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 8, ptr %mtiptr) #6, !dbg !303
  ret void, !dbg !303
}

; Function Attrs: nounwind uwtable
define internal void @apme_initLimdfsstate(ptr noundef %aliascolumn, ptr noundef %mt) #0 !dbg !304 {
entry:
  %aliascolumn.addr = alloca ptr, align 8
  %mt.addr = alloca ptr, align 8
  %column = alloca ptr, align 8
  %mti = alloca ptr, align 8
  store ptr %aliascolumn, ptr %aliascolumn.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %aliascolumn.addr, metadata !306, metadata !DIExpression()), !dbg !310
  store ptr %mt, ptr %mt.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !307, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 8, ptr %column) #6, !dbg !312
  tail call void @llvm.dbg.declare(metadata ptr %column, metadata !308, metadata !DIExpression()), !dbg !313
  %0 = load ptr, ptr %aliascolumn.addr, align 8, !dbg !314, !tbaa !205
  store ptr %0, ptr %column, align 8, !dbg !313, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %mti) #6, !dbg !315
  tail call void @llvm.dbg.declare(metadata ptr %mti, metadata !309, metadata !DIExpression()), !dbg !316
  %1 = load ptr, ptr %mt.addr, align 8, !dbg !317, !tbaa !205
  store ptr %1, ptr %mti, align 8, !dbg !316, !tbaa !205
  %2 = load ptr, ptr %column, align 8, !dbg !318, !tbaa !205
  %Mv = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %2, i32 0, i32 1, !dbg !319
  store i64 0, ptr %Mv, align 8, !dbg !320, !tbaa !321
  %3 = load ptr, ptr %mti, align 8, !dbg !323, !tbaa !205
  %skpp = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %3, i32 0, i32 0, !dbg !325
  %4 = load i8, ptr %skpp, align 8, !dbg !325, !tbaa !273, !range !326, !noundef !327
  %tobool = trunc i8 %4 to i1, !dbg !325
  br i1 %tobool, label %if.then, label %if.else, !dbg !328

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %column, align 8, !dbg !329, !tbaa !205
  %Pv = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %5, i32 0, i32 0, !dbg !331
  store i64 0, ptr %Pv, align 8, !dbg !332, !tbaa !333
  %6 = load ptr, ptr %mti, align 8, !dbg !334, !tbaa !205
  %patternlength = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %6, i32 0, i32 2, !dbg !335
  %7 = load i64, ptr %patternlength, align 8, !dbg !335, !tbaa !257
  %8 = load ptr, ptr %column, align 8, !dbg !336, !tbaa !205
  %maxleqk = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %8, i32 0, i32 2, !dbg !337
  store i64 %7, ptr %maxleqk, align 8, !dbg !338, !tbaa !339
  %9 = load ptr, ptr %column, align 8, !dbg !340, !tbaa !205
  %lastdistvalue = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %9, i32 0, i32 3, !dbg !341
  store i64 0, ptr %lastdistvalue, align 8, !dbg !342, !tbaa !343
  br label %if.end, !dbg !344

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %column, align 8, !dbg !345, !tbaa !205
  %Pv1 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %10, i32 0, i32 0, !dbg !347
  store i64 -1, ptr %Pv1, align 8, !dbg !348, !tbaa !333
  %11 = load ptr, ptr %mti, align 8, !dbg !349, !tbaa !205
  %maxdistance = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %11, i32 0, i32 3, !dbg !350
  %12 = load i64, ptr %maxdistance, align 8, !dbg !350, !tbaa !262
  %13 = load ptr, ptr %column, align 8, !dbg !351, !tbaa !205
  %maxleqk2 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %13, i32 0, i32 2, !dbg !352
  store i64 %12, ptr %maxleqk2, align 8, !dbg !353, !tbaa !339
  %14 = load ptr, ptr %mti, align 8, !dbg !354, !tbaa !205
  %maxdistance3 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %14, i32 0, i32 3, !dbg !355
  %15 = load i64, ptr %maxdistance3, align 8, !dbg !355, !tbaa !262
  %16 = load ptr, ptr %column, align 8, !dbg !356, !tbaa !205
  %lastdistvalue4 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %16, i32 0, i32 3, !dbg !357
  store i64 %15, ptr %lastdistvalue4, align 8, !dbg !358, !tbaa !343
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mti) #6, !dbg !359
  call void @llvm.lifetime.end.p0(i64 8, ptr %column) #6, !dbg !359
  ret void, !dbg !359
}

; Function Attrs: nounwind uwtable
define internal void @apme_fullmatchLimdfsstate(ptr noundef %limdfsresult, ptr noundef %aliascolumn, i64 noundef %leftbound, i64 noundef %rightbound, i64 noundef %width, i64 noundef %currentdepth, ptr noundef %mt) #0 !dbg !360 {
entry:
  %limdfsresult.addr = alloca ptr, align 8
  %aliascolumn.addr = alloca ptr, align 8
  %leftbound.addr = alloca i64, align 8
  %rightbound.addr = alloca i64, align 8
  %width.addr = alloca i64, align 8
  %currentdepth.addr = alloca i64, align 8
  %mt.addr = alloca ptr, align 8
  %col = alloca ptr, align 8
  %mti = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %limdfsresult, ptr %limdfsresult.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %limdfsresult.addr, metadata !362, metadata !DIExpression()), !dbg !371
  store ptr %aliascolumn, ptr %aliascolumn.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %aliascolumn.addr, metadata !363, metadata !DIExpression()), !dbg !372
  store i64 %leftbound, ptr %leftbound.addr, align 8, !tbaa !373
  tail call void @llvm.dbg.declare(metadata ptr %leftbound.addr, metadata !364, metadata !DIExpression()), !dbg !374
  store i64 %rightbound, ptr %rightbound.addr, align 8, !tbaa !373
  tail call void @llvm.dbg.declare(metadata ptr %rightbound.addr, metadata !365, metadata !DIExpression()), !dbg !375
  store i64 %width, ptr %width.addr, align 8, !tbaa !373
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !366, metadata !DIExpression()), !dbg !376
  store i64 %currentdepth, ptr %currentdepth.addr, align 8, !tbaa !373
  tail call void @llvm.dbg.declare(metadata ptr %currentdepth.addr, metadata !367, metadata !DIExpression()), !dbg !377
  store ptr %mt, ptr %mt.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !368, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 8, ptr %col) #6, !dbg !379
  tail call void @llvm.dbg.declare(metadata ptr %col, metadata !369, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %aliascolumn.addr, align 8, !dbg !381, !tbaa !205
  store ptr %0, ptr %col, align 8, !dbg !380, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %mti) #6, !dbg !382
  tail call void @llvm.dbg.declare(metadata ptr %mti, metadata !370, metadata !DIExpression()), !dbg !383
  %1 = load ptr, ptr %mt.addr, align 8, !dbg !384, !tbaa !205
  store ptr %1, ptr %mti, align 8, !dbg !383, !tbaa !205
  %2 = load ptr, ptr %col, align 8, !dbg !385, !tbaa !205
  %maxleqk = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %2, i32 0, i32 2, !dbg !387
  %3 = load i64, ptr %maxleqk, align 8, !dbg !387, !tbaa !339
  %4 = load ptr, ptr %mti, align 8, !dbg !388, !tbaa !205
  %patternlength = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %4, i32 0, i32 2, !dbg !388
  %5 = load i64, ptr %patternlength, align 8, !dbg !388, !tbaa !257
  %add = add i64 %5, 1, !dbg !388
  %cmp = icmp eq i64 %3, %add, !dbg !389
  br i1 %cmp, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !391, !tbaa !205
  %status = getelementptr inbounds %struct.Limdfsresult, ptr %6, i32 0, i32 0, !dbg !393
  store i32 2, ptr %status, align 8, !dbg !394, !tbaa !395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !397

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %mti, align 8, !dbg !398, !tbaa !205
  %maxintervalwidth = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %7, i32 0, i32 1, !dbg !400
  %8 = load i64, ptr %maxintervalwidth, align 8, !dbg !400, !tbaa !267
  %cmp1 = icmp eq i64 %8, 0, !dbg !401
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !402

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i64, ptr %width.addr, align 8, !dbg !403, !tbaa !373
  %cmp2 = icmp eq i64 %9, 1, !dbg !404
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !405

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr %col, align 8, !dbg !406, !tbaa !205
  %maxleqk4 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %10, i32 0, i32 2, !dbg !409
  %11 = load i64, ptr %maxleqk4, align 8, !dbg !409, !tbaa !339
  %12 = load ptr, ptr %mti, align 8, !dbg !410, !tbaa !205
  %patternlength5 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %12, i32 0, i32 2, !dbg !410
  %13 = load i64, ptr %patternlength5, align 8, !dbg !410, !tbaa !257
  %cmp6 = icmp eq i64 %11, %13, !dbg !411
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !412

if.then7:                                         ; preds = %if.then3
  %14 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !413, !tbaa !205
  %status8 = getelementptr inbounds %struct.Limdfsresult, ptr %14, i32 0, i32 0, !dbg !415
  store i32 0, ptr %status8, align 8, !dbg !416, !tbaa !395
  %15 = load ptr, ptr %mti, align 8, !dbg !417, !tbaa !205
  %patternlength9 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %15, i32 0, i32 2, !dbg !418
  %16 = load i64, ptr %patternlength9, align 8, !dbg !418, !tbaa !257
  %17 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !419, !tbaa !205
  %pprefixlen = getelementptr inbounds %struct.Limdfsresult, ptr %17, i32 0, i32 1, !dbg !420
  store i64 %16, ptr %pprefixlen, align 8, !dbg !421, !tbaa !422
  %18 = load ptr, ptr %col, align 8, !dbg !423, !tbaa !205
  %lastdistvalue = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %18, i32 0, i32 3, !dbg !424
  %19 = load i64, ptr %lastdistvalue, align 8, !dbg !424, !tbaa !343
  %20 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !425, !tbaa !205
  %distance = getelementptr inbounds %struct.Limdfsresult, ptr %20, i32 0, i32 2, !dbg !426
  store i64 %19, ptr %distance, align 8, !dbg !427, !tbaa !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !429

if.end10:                                         ; preds = %if.then3
  br label %if.end24, !dbg !430

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i64, ptr %width.addr, align 8, !dbg !431, !tbaa !373
  %22 = load ptr, ptr %mti, align 8, !dbg !434, !tbaa !205
  %maxintervalwidth11 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %22, i32 0, i32 1, !dbg !435
  %23 = load i64, ptr %maxintervalwidth11, align 8, !dbg !435, !tbaa !267
  %cmp12 = icmp ule i64 %21, %23, !dbg !436
  br i1 %cmp12, label %if.then13, label %if.end23, !dbg !437

if.then13:                                        ; preds = %if.else
  br label %do.body, !dbg !438

do.body:                                          ; preds = %if.then13
  %24 = load ptr, ptr %col, align 8, !dbg !440, !tbaa !205
  %maxleqk14 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %24, i32 0, i32 2, !dbg !440
  %25 = load i64, ptr %maxleqk14, align 8, !dbg !440, !tbaa !339
  %cmp15 = icmp ugt i64 %25, 0, !dbg !440
  br i1 %cmp15, label %if.end17, label %if.then16, !dbg !443

if.then16:                                        ; preds = %do.body
  %26 = load ptr, ptr @stderr, align 8, !dbg !444, !tbaa !205
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.1, ptr noundef @.str.3, ptr noundef @__func__.apme_fullmatchLimdfsstate, ptr noundef @.str, i32 noundef 253), !dbg !444
  call void @abort() #7, !dbg !444
  unreachable, !dbg !444

if.end17:                                         ; preds = %do.body
  br label %do.cond, !dbg !443

do.cond:                                          ; preds = %if.end17
  br label %do.end, !dbg !443

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !446, !tbaa !205
  %status18 = getelementptr inbounds %struct.Limdfsresult, ptr %27, i32 0, i32 0, !dbg !447
  store i32 0, ptr %status18, align 8, !dbg !448, !tbaa !395
  %28 = load ptr, ptr %col, align 8, !dbg !449, !tbaa !205
  %maxleqk19 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %28, i32 0, i32 2, !dbg !450
  %29 = load i64, ptr %maxleqk19, align 8, !dbg !450, !tbaa !339
  %30 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !451, !tbaa !205
  %pprefixlen20 = getelementptr inbounds %struct.Limdfsresult, ptr %30, i32 0, i32 1, !dbg !452
  store i64 %29, ptr %pprefixlen20, align 8, !dbg !453, !tbaa !422
  %31 = load ptr, ptr %col, align 8, !dbg !454, !tbaa !205
  %lastdistvalue21 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %31, i32 0, i32 3, !dbg !455
  %32 = load i64, ptr %lastdistvalue21, align 8, !dbg !455, !tbaa !343
  %33 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !456, !tbaa !205
  %distance22 = getelementptr inbounds %struct.Limdfsresult, ptr %33, i32 0, i32 2, !dbg !457
  store i64 %32, ptr %distance22, align 8, !dbg !458, !tbaa !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !459

if.end23:                                         ; preds = %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end10
  %34 = load ptr, ptr %limdfsresult.addr, align 8, !dbg !460, !tbaa !205
  %status25 = getelementptr inbounds %struct.Limdfsresult, ptr %34, i32 0, i32 0, !dbg !461
  store i32 1, ptr %status25, align 8, !dbg !462, !tbaa !395
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !463
  br label %cleanup, !dbg !463

cleanup:                                          ; preds = %if.end24, %do.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mti) #6, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %col) #6, !dbg !463
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !463

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @apme_nextLimdfsstate(ptr noundef %mt, ptr noundef %aliasoutcol, i64 noundef %currentdepth, i8 noundef zeroext %currentchar, ptr noundef %aliasincol) #0 !dbg !464 {
entry:
  %mt.addr = alloca ptr, align 8
  %aliasoutcol.addr = alloca ptr, align 8
  %currentdepth.addr = alloca i64, align 8
  %currentchar.addr = alloca i8, align 1
  %aliasincol.addr = alloca ptr, align 8
  %Eq = alloca i64, align 8
  %Xv = alloca i64, align 8
  %Xh = alloca i64, align 8
  %Ph = alloca i64, align 8
  %Mh = alloca i64, align 8
  %backmask = alloca i64, align 8
  %idx = alloca i64, align 8
  %score = alloca i64, align 8
  %outcol = alloca ptr, align 8
  %incol = alloca ptr, align 8
  %mti = alloca ptr, align 8
  store ptr %mt, ptr %mt.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !466, metadata !DIExpression()), !dbg !482
  store ptr %aliasoutcol, ptr %aliasoutcol.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %aliasoutcol.addr, metadata !467, metadata !DIExpression()), !dbg !483
  store i64 %currentdepth, ptr %currentdepth.addr, align 8, !tbaa !373
  tail call void @llvm.dbg.declare(metadata ptr %currentdepth.addr, metadata !468, metadata !DIExpression()), !dbg !484
  store i8 %currentchar, ptr %currentchar.addr, align 1, !tbaa !485
  tail call void @llvm.dbg.declare(metadata ptr %currentchar.addr, metadata !469, metadata !DIExpression()), !dbg !486
  store ptr %aliasincol, ptr %aliasincol.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %aliasincol.addr, metadata !470, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eq) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %Eq, metadata !471, metadata !DIExpression()), !dbg !489
  store i64 0, ptr %Eq, align 8, !dbg !489, !tbaa !373
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xv) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %Xv, metadata !472, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xh) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %Xh, metadata !473, metadata !DIExpression()), !dbg !491
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ph) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %Ph, metadata !474, metadata !DIExpression()), !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mh) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %Mh, metadata !475, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 8, ptr %backmask) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %backmask, metadata !476, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !477, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %score) #6, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %score, metadata !478, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 8, ptr %outcol) #6, !dbg !497
  tail call void @llvm.dbg.declare(metadata ptr %outcol, metadata !479, metadata !DIExpression()), !dbg !498
  %0 = load ptr, ptr %aliasoutcol.addr, align 8, !dbg !499, !tbaa !205
  store ptr %0, ptr %outcol, align 8, !dbg !498, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %incol) #6, !dbg !500
  tail call void @llvm.dbg.declare(metadata ptr %incol, metadata !480, metadata !DIExpression()), !dbg !501
  %1 = load ptr, ptr %aliasincol.addr, align 8, !dbg !502, !tbaa !205
  store ptr %1, ptr %incol, align 8, !dbg !501, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %mti) #6, !dbg !503
  tail call void @llvm.dbg.declare(metadata ptr %mti, metadata !481, metadata !DIExpression()), !dbg !504
  %2 = load ptr, ptr %mt.addr, align 8, !dbg !505, !tbaa !205
  store ptr %2, ptr %mti, align 8, !dbg !504, !tbaa !205
  br label %do.body, !dbg !506

do.body:                                          ; preds = %entry
  %3 = load ptr, ptr %incol, align 8, !dbg !507, !tbaa !205
  %maxleqk = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %3, i32 0, i32 2, !dbg !507
  %4 = load i64, ptr %maxleqk, align 8, !dbg !507, !tbaa !339
  %5 = load ptr, ptr %mti, align 8, !dbg !507, !tbaa !205
  %patternlength = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %5, i32 0, i32 2, !dbg !507
  %6 = load i64, ptr %patternlength, align 8, !dbg !507, !tbaa !257
  %add = add i64 %6, 1, !dbg !507
  %cmp = icmp ne i64 %4, %add, !dbg !507
  br i1 %cmp, label %if.end, label %if.then, !dbg !510

if.then:                                          ; preds = %do.body
  %7 = load ptr, ptr @stderr, align 8, !dbg !511, !tbaa !205
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @__func__.apme_nextLimdfsstate, ptr noundef @.str, i32 noundef 280), !dbg !511
  call void @abort() #7, !dbg !511
  unreachable, !dbg !511

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !510

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !510

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !513

do.body1:                                         ; preds = %do.end
  %8 = load ptr, ptr %mti, align 8, !dbg !514, !tbaa !205
  %maxintervalwidth = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %8, i32 0, i32 1, !dbg !514
  %9 = load i64, ptr %maxintervalwidth, align 8, !dbg !514, !tbaa !267
  %cmp2 = icmp ugt i64 %9, 0, !dbg !514
  br i1 %cmp2, label %if.end8, label %lor.lhs.false, !dbg !514

lor.lhs.false:                                    ; preds = %do.body1
  %10 = load ptr, ptr %incol, align 8, !dbg !514, !tbaa !205
  %maxleqk3 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %10, i32 0, i32 2, !dbg !514
  %11 = load i64, ptr %maxleqk3, align 8, !dbg !514, !tbaa !339
  %12 = load ptr, ptr %mti, align 8, !dbg !514, !tbaa !205
  %patternlength4 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %12, i32 0, i32 2, !dbg !514
  %13 = load i64, ptr %patternlength4, align 8, !dbg !514, !tbaa !257
  %cmp5 = icmp ne i64 %11, %13, !dbg !514
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !517

if.then6:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr @stderr, align 8, !dbg !518, !tbaa !205
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.1, ptr noundef @.str.5, ptr noundef @__func__.apme_nextLimdfsstate, ptr noundef @.str, i32 noundef 281), !dbg !518
  call void @abort() #7, !dbg !518
  unreachable, !dbg !518

if.end8:                                          ; preds = %lor.lhs.false, %do.body1
  br label %do.cond9, !dbg !517

do.cond9:                                         ; preds = %if.end8
  br label %do.end10, !dbg !517

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !520

do.body11:                                        ; preds = %do.end10
  %15 = load i8, ptr %currentchar.addr, align 1, !dbg !521, !tbaa !485
  %conv = zext i8 %15 to i32, !dbg !521
  %cmp12 = icmp ne i32 %conv, 255, !dbg !521
  br i1 %cmp12, label %if.end16, label %if.then14, !dbg !524

if.then14:                                        ; preds = %do.body11
  %16 = load ptr, ptr @stderr, align 8, !dbg !525, !tbaa !205
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.1, ptr noundef @.str.6, ptr noundef @__func__.apme_nextLimdfsstate, ptr noundef @.str, i32 noundef 282), !dbg !525
  call void @abort() #7, !dbg !525
  unreachable, !dbg !525

if.end16:                                         ; preds = %do.body11
  br label %do.cond17, !dbg !524

do.cond17:                                        ; preds = %if.end16
  br label %do.end18, !dbg !524

do.end18:                                         ; preds = %do.cond17
  %17 = load i8, ptr %currentchar.addr, align 1, !dbg !527, !tbaa !485
  %conv19 = zext i8 %17 to i32, !dbg !527
  %cmp20 = icmp ne i32 %conv19, 254, !dbg !529
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !530

if.then22:                                        ; preds = %do.end18
  %18 = load ptr, ptr %mti, align 8, !dbg !531, !tbaa !205
  %eqsvector = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %18, i32 0, i32 4, !dbg !533
  %19 = load ptr, ptr %eqsvector, align 8, !dbg !533, !tbaa !211
  %20 = load i8, ptr %currentchar.addr, align 1, !dbg !534, !tbaa !485
  %conv23 = zext i8 %20 to i64, !dbg !535
  %arrayidx = getelementptr inbounds i64, ptr %19, i64 %conv23, !dbg !531
  %21 = load i64, ptr %arrayidx, align 8, !dbg !531, !tbaa !373
  store i64 %21, ptr %Eq, align 8, !dbg !536, !tbaa !373
  br label %if.end24, !dbg !537

if.end24:                                         ; preds = %if.then22, %do.end18
  %22 = load i64, ptr %Eq, align 8, !dbg !538, !tbaa !373
  %23 = load ptr, ptr %incol, align 8, !dbg !539, !tbaa !205
  %Mv = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %23, i32 0, i32 1, !dbg !540
  %24 = load i64, ptr %Mv, align 8, !dbg !540, !tbaa !321
  %or = or i64 %22, %24, !dbg !541
  store i64 %or, ptr %Xv, align 8, !dbg !542, !tbaa !373
  %25 = load i64, ptr %Eq, align 8, !dbg !543, !tbaa !373
  %26 = load ptr, ptr %incol, align 8, !dbg !544, !tbaa !205
  %Pv = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %26, i32 0, i32 0, !dbg !545
  %27 = load i64, ptr %Pv, align 8, !dbg !545, !tbaa !333
  %and = and i64 %25, %27, !dbg !546
  %28 = load ptr, ptr %incol, align 8, !dbg !547, !tbaa !205
  %Pv25 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %28, i32 0, i32 0, !dbg !548
  %29 = load i64, ptr %Pv25, align 8, !dbg !548, !tbaa !333
  %add26 = add i64 %and, %29, !dbg !549
  %30 = load ptr, ptr %incol, align 8, !dbg !550, !tbaa !205
  %Pv27 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %30, i32 0, i32 0, !dbg !551
  %31 = load i64, ptr %Pv27, align 8, !dbg !551, !tbaa !333
  %xor = xor i64 %add26, %31, !dbg !552
  %32 = load i64, ptr %Eq, align 8, !dbg !553, !tbaa !373
  %or28 = or i64 %xor, %32, !dbg !554
  store i64 %or28, ptr %Xh, align 8, !dbg !555, !tbaa !373
  %33 = load ptr, ptr %incol, align 8, !dbg !556, !tbaa !205
  %Mv29 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %33, i32 0, i32 1, !dbg !557
  %34 = load i64, ptr %Mv29, align 8, !dbg !557, !tbaa !321
  %35 = load i64, ptr %Xh, align 8, !dbg !558, !tbaa !373
  %36 = load ptr, ptr %incol, align 8, !dbg !559, !tbaa !205
  %Pv30 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %36, i32 0, i32 0, !dbg !560
  %37 = load i64, ptr %Pv30, align 8, !dbg !560, !tbaa !333
  %or31 = or i64 %35, %37, !dbg !561
  %not = xor i64 %or31, -1, !dbg !562
  %or32 = or i64 %34, %not, !dbg !563
  store i64 %or32, ptr %Ph, align 8, !dbg !564, !tbaa !373
  %38 = load ptr, ptr %incol, align 8, !dbg !565, !tbaa !205
  %Pv33 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %38, i32 0, i32 0, !dbg !566
  %39 = load i64, ptr %Pv33, align 8, !dbg !566, !tbaa !333
  %40 = load i64, ptr %Xh, align 8, !dbg !567, !tbaa !373
  %and34 = and i64 %39, %40, !dbg !568
  store i64 %and34, ptr %Mh, align 8, !dbg !569, !tbaa !373
  %41 = load i64, ptr %Ph, align 8, !dbg !570, !tbaa !373
  %shl = shl i64 %41, 1, !dbg !571
  %or35 = or i64 %shl, 1, !dbg !572
  store i64 %or35, ptr %Ph, align 8, !dbg !573, !tbaa !373
  %42 = load i64, ptr %Mh, align 8, !dbg !574, !tbaa !373
  %shl36 = shl i64 %42, 1, !dbg !575
  %43 = load i64, ptr %Xv, align 8, !dbg !576, !tbaa !373
  %44 = load i64, ptr %Ph, align 8, !dbg !577, !tbaa !373
  %or37 = or i64 %43, %44, !dbg !578
  %not38 = xor i64 %or37, -1, !dbg !579
  %or39 = or i64 %shl36, %not38, !dbg !580
  %45 = load ptr, ptr %outcol, align 8, !dbg !581, !tbaa !205
  %Pv40 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %45, i32 0, i32 0, !dbg !582
  store i64 %or39, ptr %Pv40, align 8, !dbg !583, !tbaa !333
  %46 = load i64, ptr %Ph, align 8, !dbg !584, !tbaa !373
  %47 = load i64, ptr %Xv, align 8, !dbg !585, !tbaa !373
  %and41 = and i64 %46, %47, !dbg !586
  %48 = load ptr, ptr %outcol, align 8, !dbg !587, !tbaa !205
  %Mv42 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %48, i32 0, i32 1, !dbg !588
  store i64 %and41, ptr %Mv42, align 8, !dbg !589, !tbaa !321
  %49 = load ptr, ptr %incol, align 8, !dbg !590, !tbaa !205
  %maxleqk43 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %49, i32 0, i32 2, !dbg !591
  %50 = load i64, ptr %maxleqk43, align 8, !dbg !591, !tbaa !339
  %shl44 = shl i64 1, %50, !dbg !592
  store i64 %shl44, ptr %backmask, align 8, !dbg !593, !tbaa !373
  %51 = load i64, ptr %Eq, align 8, !dbg !594, !tbaa !373
  %52 = load i64, ptr %backmask, align 8, !dbg !596, !tbaa !373
  %and45 = and i64 %51, %52, !dbg !597
  %tobool = icmp ne i64 %and45, 0, !dbg !597
  br i1 %tobool, label %if.then49, label %lor.lhs.false46, !dbg !598

lor.lhs.false46:                                  ; preds = %if.end24
  %53 = load i64, ptr %Mh, align 8, !dbg !599, !tbaa !373
  %54 = load i64, ptr %backmask, align 8, !dbg !600, !tbaa !373
  %and47 = and i64 %53, %54, !dbg !601
  %tobool48 = icmp ne i64 %and47, 0, !dbg !601
  br i1 %tobool48, label %if.then49, label %if.else, !dbg !602

if.then49:                                        ; preds = %lor.lhs.false46, %if.end24
  %55 = load ptr, ptr %incol, align 8, !dbg !603, !tbaa !205
  %maxleqk50 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %55, i32 0, i32 2, !dbg !605
  %56 = load i64, ptr %maxleqk50, align 8, !dbg !605, !tbaa !339
  %add51 = add i64 %56, 1, !dbg !606
  %57 = load ptr, ptr %outcol, align 8, !dbg !607, !tbaa !205
  %maxleqk52 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %57, i32 0, i32 2, !dbg !608
  store i64 %add51, ptr %maxleqk52, align 8, !dbg !609, !tbaa !339
  %58 = load ptr, ptr %incol, align 8, !dbg !610, !tbaa !205
  %lastdistvalue = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %58, i32 0, i32 3, !dbg !611
  %59 = load i64, ptr %lastdistvalue, align 8, !dbg !611, !tbaa !343
  %60 = load ptr, ptr %outcol, align 8, !dbg !612, !tbaa !205
  %lastdistvalue53 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %60, i32 0, i32 3, !dbg !613
  store i64 %59, ptr %lastdistvalue53, align 8, !dbg !614, !tbaa !343
  br label %if.end98, !dbg !615

if.else:                                          ; preds = %lor.lhs.false46
  %61 = load i64, ptr %Ph, align 8, !dbg !616, !tbaa !373
  %62 = load i64, ptr %backmask, align 8, !dbg !619, !tbaa !373
  %and54 = and i64 %61, %62, !dbg !620
  %tobool55 = icmp ne i64 %and54, 0, !dbg !620
  br i1 %tobool55, label %if.then56, label %if.else92, !dbg !621

if.then56:                                        ; preds = %if.else
  %63 = load ptr, ptr %mti, align 8, !dbg !622, !tbaa !205
  %maxdistance = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %63, i32 0, i32 3, !dbg !624
  %64 = load i64, ptr %maxdistance, align 8, !dbg !624, !tbaa !262
  %add57 = add i64 %64, 1, !dbg !625
  store i64 %add57, ptr %score, align 8, !dbg !626, !tbaa !373
  %65 = load ptr, ptr %mti, align 8, !dbg !627, !tbaa !205
  %patternlength58 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %65, i32 0, i32 2, !dbg !627
  %66 = load i64, ptr %patternlength58, align 8, !dbg !627, !tbaa !257
  %add59 = add i64 %66, 1, !dbg !627
  %67 = load ptr, ptr %outcol, align 8, !dbg !628, !tbaa !205
  %maxleqk60 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %67, i32 0, i32 2, !dbg !629
  store i64 %add59, ptr %maxleqk60, align 8, !dbg !630, !tbaa !339
  %68 = load ptr, ptr %incol, align 8, !dbg !631, !tbaa !205
  %maxleqk61 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %68, i32 0, i32 2, !dbg !633
  %69 = load i64, ptr %maxleqk61, align 8, !dbg !633, !tbaa !339
  %cmp62 = icmp ugt i64 %69, 0, !dbg !634
  br i1 %cmp62, label %if.then64, label %if.end91, !dbg !635

if.then64:                                        ; preds = %if.then56
  %70 = load ptr, ptr %incol, align 8, !dbg !636, !tbaa !205
  %maxleqk65 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %70, i32 0, i32 2, !dbg !639
  %71 = load i64, ptr %maxleqk65, align 8, !dbg !639, !tbaa !339
  %sub = sub i64 %71, 1, !dbg !640
  store i64 %sub, ptr %idx, align 8, !dbg !641, !tbaa !373
  %72 = load i64, ptr %backmask, align 8, !dbg !642, !tbaa !373
  %shr = lshr i64 %72, 1, !dbg !642
  store i64 %shr, ptr %backmask, align 8, !dbg !642, !tbaa !373
  br label %for.cond, !dbg !643

for.cond:                                         ; preds = %for.inc, %if.then64
  %73 = load ptr, ptr %outcol, align 8, !dbg !644, !tbaa !205
  %Pv66 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %73, i32 0, i32 0, !dbg !648
  %74 = load i64, ptr %Pv66, align 8, !dbg !648, !tbaa !333
  %75 = load i64, ptr %backmask, align 8, !dbg !649, !tbaa !373
  %and67 = and i64 %74, %75, !dbg !650
  %tobool68 = icmp ne i64 %and67, 0, !dbg !650
  br i1 %tobool68, label %if.then69, label %if.else77, !dbg !651

if.then69:                                        ; preds = %for.cond
  %76 = load i64, ptr %score, align 8, !dbg !652, !tbaa !373
  %dec = add i64 %76, -1, !dbg !652
  store i64 %dec, ptr %score, align 8, !dbg !652, !tbaa !373
  %77 = load i64, ptr %score, align 8, !dbg !654, !tbaa !373
  %78 = load ptr, ptr %mti, align 8, !dbg !656, !tbaa !205
  %maxdistance70 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %78, i32 0, i32 3, !dbg !657
  %79 = load i64, ptr %maxdistance70, align 8, !dbg !657, !tbaa !262
  %cmp71 = icmp ule i64 %77, %79, !dbg !658
  br i1 %cmp71, label %if.then73, label %if.end76, !dbg !659

if.then73:                                        ; preds = %if.then69
  %80 = load i64, ptr %idx, align 8, !dbg !660, !tbaa !373
  %81 = load ptr, ptr %outcol, align 8, !dbg !662, !tbaa !205
  %maxleqk74 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %81, i32 0, i32 2, !dbg !663
  store i64 %80, ptr %maxleqk74, align 8, !dbg !664, !tbaa !339
  %82 = load i64, ptr %score, align 8, !dbg !665, !tbaa !373
  %83 = load ptr, ptr %outcol, align 8, !dbg !666, !tbaa !205
  %lastdistvalue75 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %83, i32 0, i32 3, !dbg !667
  store i64 %82, ptr %lastdistvalue75, align 8, !dbg !668, !tbaa !343
  br label %for.end, !dbg !669

if.end76:                                         ; preds = %if.then69
  br label %if.end83, !dbg !670

if.else77:                                        ; preds = %for.cond
  %84 = load ptr, ptr %outcol, align 8, !dbg !671, !tbaa !205
  %Mv78 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %84, i32 0, i32 1, !dbg !674
  %85 = load i64, ptr %Mv78, align 8, !dbg !674, !tbaa !321
  %86 = load i64, ptr %backmask, align 8, !dbg !675, !tbaa !373
  %and79 = and i64 %85, %86, !dbg !676
  %tobool80 = icmp ne i64 %and79, 0, !dbg !676
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !677

if.then81:                                        ; preds = %if.else77
  %87 = load i64, ptr %score, align 8, !dbg !678, !tbaa !373
  %inc = add i64 %87, 1, !dbg !678
  store i64 %inc, ptr %score, align 8, !dbg !678, !tbaa !373
  br label %if.end82, !dbg !680

if.end82:                                         ; preds = %if.then81, %if.else77
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end76
  %88 = load i64, ptr %idx, align 8, !dbg !681, !tbaa !373
  %cmp84 = icmp ugt i64 %88, 0, !dbg !683
  br i1 %cmp84, label %if.then86, label %if.else88, !dbg !684

if.then86:                                        ; preds = %if.end83
  %89 = load i64, ptr %idx, align 8, !dbg !685, !tbaa !373
  %dec87 = add i64 %89, -1, !dbg !685
  store i64 %dec87, ptr %idx, align 8, !dbg !685, !tbaa !373
  br label %if.end89, !dbg !687

if.else88:                                        ; preds = %if.end83
  br label %for.end, !dbg !688

if.end89:                                         ; preds = %if.then86
  br label %for.inc, !dbg !690

for.inc:                                          ; preds = %if.end89
  %90 = load i64, ptr %backmask, align 8, !dbg !691, !tbaa !373
  %shr90 = lshr i64 %90, 1, !dbg !691
  store i64 %shr90, ptr %backmask, align 8, !dbg !691, !tbaa !373
  br label %for.cond, !dbg !692, !llvm.loop !693

for.end:                                          ; preds = %if.else88, %if.then73
  br label %if.end91, !dbg !696

if.end91:                                         ; preds = %for.end, %if.then56
  br label %if.end97, !dbg !697

if.else92:                                        ; preds = %if.else
  %91 = load ptr, ptr %incol, align 8, !dbg !698, !tbaa !205
  %maxleqk93 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %91, i32 0, i32 2, !dbg !700
  %92 = load i64, ptr %maxleqk93, align 8, !dbg !700, !tbaa !339
  %93 = load ptr, ptr %outcol, align 8, !dbg !701, !tbaa !205
  %maxleqk94 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %93, i32 0, i32 2, !dbg !702
  store i64 %92, ptr %maxleqk94, align 8, !dbg !703, !tbaa !339
  %94 = load ptr, ptr %incol, align 8, !dbg !704, !tbaa !205
  %lastdistvalue95 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %94, i32 0, i32 3, !dbg !705
  %95 = load i64, ptr %lastdistvalue95, align 8, !dbg !705, !tbaa !343
  %96 = load ptr, ptr %outcol, align 8, !dbg !706, !tbaa !205
  %lastdistvalue96 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %96, i32 0, i32 3, !dbg !707
  store i64 %95, ptr %lastdistvalue96, align 8, !dbg !708, !tbaa !343
  br label %if.end97

if.end97:                                         ; preds = %if.else92, %if.end91
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then49
  call void @llvm.lifetime.end.p0(i64 8, ptr %mti) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %incol) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %outcol) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %score) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %backmask) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mh) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ph) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xh) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xv) #6, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eq) #6, !dbg !709
  ret void, !dbg !709
}

; Function Attrs: nounwind uwtable
define internal void @apme_inplacenextLimdfsstate(ptr noundef %mt, ptr noundef %aliascol, i64 noundef %currentdepth, i8 noundef zeroext %currentchar) #0 !dbg !710 {
entry:
  %mt.addr = alloca ptr, align 8
  %aliascol.addr = alloca ptr, align 8
  %currentdepth.addr = alloca i64, align 8
  %currentchar.addr = alloca i8, align 1
  %Eq = alloca i64, align 8
  %Xv = alloca i64, align 8
  %Xh = alloca i64, align 8
  %Ph = alloca i64, align 8
  %Mh = alloca i64, align 8
  %backmask = alloca i64, align 8
  %idx = alloca i64, align 8
  %score = alloca i64, align 8
  %col = alloca ptr, align 8
  %mti = alloca ptr, align 8
  %tmpmaxleqk = alloca i64, align 8
  store ptr %mt, ptr %mt.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %mt.addr, metadata !712, metadata !DIExpression()), !dbg !731
  store ptr %aliascol, ptr %aliascol.addr, align 8, !tbaa !205
  tail call void @llvm.dbg.declare(metadata ptr %aliascol.addr, metadata !713, metadata !DIExpression()), !dbg !732
  store i64 %currentdepth, ptr %currentdepth.addr, align 8, !tbaa !373
  tail call void @llvm.dbg.declare(metadata ptr %currentdepth.addr, metadata !714, metadata !DIExpression()), !dbg !733
  store i8 %currentchar, ptr %currentchar.addr, align 1, !tbaa !485
  tail call void @llvm.dbg.declare(metadata ptr %currentchar.addr, metadata !715, metadata !DIExpression()), !dbg !734
  call void @llvm.lifetime.start.p0(i64 8, ptr %Eq) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %Eq, metadata !716, metadata !DIExpression()), !dbg !736
  store i64 0, ptr %Eq, align 8, !dbg !736, !tbaa !373
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xv) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %Xv, metadata !717, metadata !DIExpression()), !dbg !737
  call void @llvm.lifetime.start.p0(i64 8, ptr %Xh) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %Xh, metadata !718, metadata !DIExpression()), !dbg !738
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ph) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %Ph, metadata !719, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 8, ptr %Mh) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %Mh, metadata !720, metadata !DIExpression()), !dbg !740
  call void @llvm.lifetime.start.p0(i64 8, ptr %backmask) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %backmask, metadata !721, metadata !DIExpression()), !dbg !741
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !722, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 8, ptr %score) #6, !dbg !735
  tail call void @llvm.dbg.declare(metadata ptr %score, metadata !723, metadata !DIExpression()), !dbg !743
  call void @llvm.lifetime.start.p0(i64 8, ptr %col) #6, !dbg !744
  tail call void @llvm.dbg.declare(metadata ptr %col, metadata !724, metadata !DIExpression()), !dbg !745
  %0 = load ptr, ptr %aliascol.addr, align 8, !dbg !746, !tbaa !205
  store ptr %0, ptr %col, align 8, !dbg !745, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %mti) #6, !dbg !747
  tail call void @llvm.dbg.declare(metadata ptr %mti, metadata !725, metadata !DIExpression()), !dbg !748
  %1 = load ptr, ptr %mt.addr, align 8, !dbg !749, !tbaa !205
  store ptr %1, ptr %mti, align 8, !dbg !748, !tbaa !205
  br label %do.body, !dbg !750

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %col, align 8, !dbg !751, !tbaa !205
  %maxleqk = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %2, i32 0, i32 2, !dbg !751
  %3 = load i64, ptr %maxleqk, align 8, !dbg !751, !tbaa !339
  %4 = load ptr, ptr %mti, align 8, !dbg !751, !tbaa !205
  %patternlength = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %4, i32 0, i32 2, !dbg !751
  %5 = load i64, ptr %patternlength, align 8, !dbg !751, !tbaa !257
  %add = add i64 %5, 1, !dbg !751
  %cmp = icmp ne i64 %3, %add, !dbg !751
  br i1 %cmp, label %if.end, label %if.then, !dbg !754

if.then:                                          ; preds = %do.body
  %6 = load ptr, ptr @stderr, align 8, !dbg !755, !tbaa !205
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1, ptr noundef @.str.7, ptr noundef @__func__.apme_inplacenextLimdfsstate, ptr noundef @.str, i32 noundef 362), !dbg !755
  call void @abort() #7, !dbg !755
  unreachable, !dbg !755

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !754

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !754

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !757

do.body1:                                         ; preds = %do.end
  %7 = load ptr, ptr %mti, align 8, !dbg !758, !tbaa !205
  %maxintervalwidth = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %7, i32 0, i32 1, !dbg !758
  %8 = load i64, ptr %maxintervalwidth, align 8, !dbg !758, !tbaa !267
  %cmp2 = icmp ugt i64 %8, 0, !dbg !758
  br i1 %cmp2, label %if.end8, label %lor.lhs.false, !dbg !758

lor.lhs.false:                                    ; preds = %do.body1
  %9 = load ptr, ptr %col, align 8, !dbg !758, !tbaa !205
  %maxleqk3 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %9, i32 0, i32 2, !dbg !758
  %10 = load i64, ptr %maxleqk3, align 8, !dbg !758, !tbaa !339
  %11 = load ptr, ptr %mti, align 8, !dbg !758, !tbaa !205
  %patternlength4 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %11, i32 0, i32 2, !dbg !758
  %12 = load i64, ptr %patternlength4, align 8, !dbg !758, !tbaa !257
  %cmp5 = icmp ne i64 %10, %12, !dbg !758
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !761

if.then6:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr @stderr, align 8, !dbg !762, !tbaa !205
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1, ptr noundef @.str.8, ptr noundef @__func__.apme_inplacenextLimdfsstate, ptr noundef @.str, i32 noundef 363), !dbg !762
  call void @abort() #7, !dbg !762
  unreachable, !dbg !762

if.end8:                                          ; preds = %lor.lhs.false, %do.body1
  br label %do.cond9, !dbg !761

do.cond9:                                         ; preds = %if.end8
  br label %do.end10, !dbg !761

do.end10:                                         ; preds = %do.cond9
  %14 = load i8, ptr %currentchar.addr, align 1, !dbg !764, !tbaa !485
  %conv = zext i8 %14 to i32, !dbg !764
  %cmp11 = icmp ne i32 %conv, 254, !dbg !766
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !767

if.then13:                                        ; preds = %do.end10
  %15 = load ptr, ptr %mti, align 8, !dbg !768, !tbaa !205
  %eqsvector = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %15, i32 0, i32 4, !dbg !770
  %16 = load ptr, ptr %eqsvector, align 8, !dbg !770, !tbaa !211
  %17 = load i8, ptr %currentchar.addr, align 1, !dbg !771, !tbaa !485
  %conv14 = zext i8 %17 to i64, !dbg !772
  %arrayidx = getelementptr inbounds i64, ptr %16, i64 %conv14, !dbg !768
  %18 = load i64, ptr %arrayidx, align 8, !dbg !768, !tbaa !373
  store i64 %18, ptr %Eq, align 8, !dbg !773, !tbaa !373
  br label %if.end15, !dbg !774

if.end15:                                         ; preds = %if.then13, %do.end10
  %19 = load i64, ptr %Eq, align 8, !dbg !775, !tbaa !373
  %20 = load ptr, ptr %col, align 8, !dbg !776, !tbaa !205
  %Mv = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %20, i32 0, i32 1, !dbg !777
  %21 = load i64, ptr %Mv, align 8, !dbg !777, !tbaa !321
  %or = or i64 %19, %21, !dbg !778
  store i64 %or, ptr %Xv, align 8, !dbg !779, !tbaa !373
  %22 = load i64, ptr %Eq, align 8, !dbg !780, !tbaa !373
  %23 = load ptr, ptr %col, align 8, !dbg !781, !tbaa !205
  %Pv = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %23, i32 0, i32 0, !dbg !782
  %24 = load i64, ptr %Pv, align 8, !dbg !782, !tbaa !333
  %and = and i64 %22, %24, !dbg !783
  %25 = load ptr, ptr %col, align 8, !dbg !784, !tbaa !205
  %Pv16 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %25, i32 0, i32 0, !dbg !785
  %26 = load i64, ptr %Pv16, align 8, !dbg !785, !tbaa !333
  %add17 = add i64 %and, %26, !dbg !786
  %27 = load ptr, ptr %col, align 8, !dbg !787, !tbaa !205
  %Pv18 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %27, i32 0, i32 0, !dbg !788
  %28 = load i64, ptr %Pv18, align 8, !dbg !788, !tbaa !333
  %xor = xor i64 %add17, %28, !dbg !789
  %29 = load i64, ptr %Eq, align 8, !dbg !790, !tbaa !373
  %or19 = or i64 %xor, %29, !dbg !791
  store i64 %or19, ptr %Xh, align 8, !dbg !792, !tbaa !373
  %30 = load ptr, ptr %col, align 8, !dbg !793, !tbaa !205
  %Mv20 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %30, i32 0, i32 1, !dbg !794
  %31 = load i64, ptr %Mv20, align 8, !dbg !794, !tbaa !321
  %32 = load i64, ptr %Xh, align 8, !dbg !795, !tbaa !373
  %33 = load ptr, ptr %col, align 8, !dbg !796, !tbaa !205
  %Pv21 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %33, i32 0, i32 0, !dbg !797
  %34 = load i64, ptr %Pv21, align 8, !dbg !797, !tbaa !333
  %or22 = or i64 %32, %34, !dbg !798
  %not = xor i64 %or22, -1, !dbg !799
  %or23 = or i64 %31, %not, !dbg !800
  store i64 %or23, ptr %Ph, align 8, !dbg !801, !tbaa !373
  %35 = load ptr, ptr %col, align 8, !dbg !802, !tbaa !205
  %Pv24 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %35, i32 0, i32 0, !dbg !803
  %36 = load i64, ptr %Pv24, align 8, !dbg !803, !tbaa !333
  %37 = load i64, ptr %Xh, align 8, !dbg !804, !tbaa !373
  %and25 = and i64 %36, %37, !dbg !805
  store i64 %and25, ptr %Mh, align 8, !dbg !806, !tbaa !373
  %38 = load i64, ptr %Ph, align 8, !dbg !807, !tbaa !373
  %shl = shl i64 %38, 1, !dbg !808
  %or26 = or i64 %shl, 1, !dbg !809
  store i64 %or26, ptr %Ph, align 8, !dbg !810, !tbaa !373
  %39 = load i64, ptr %Mh, align 8, !dbg !811, !tbaa !373
  %shl27 = shl i64 %39, 1, !dbg !812
  %40 = load i64, ptr %Xv, align 8, !dbg !813, !tbaa !373
  %41 = load i64, ptr %Ph, align 8, !dbg !814, !tbaa !373
  %or28 = or i64 %40, %41, !dbg !815
  %not29 = xor i64 %or28, -1, !dbg !816
  %or30 = or i64 %shl27, %not29, !dbg !817
  %42 = load ptr, ptr %col, align 8, !dbg !818, !tbaa !205
  %Pv31 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %42, i32 0, i32 0, !dbg !819
  store i64 %or30, ptr %Pv31, align 8, !dbg !820, !tbaa !333
  %43 = load i64, ptr %Ph, align 8, !dbg !821, !tbaa !373
  %44 = load i64, ptr %Xv, align 8, !dbg !822, !tbaa !373
  %and32 = and i64 %43, %44, !dbg !823
  %45 = load ptr, ptr %col, align 8, !dbg !824, !tbaa !205
  %Mv33 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %45, i32 0, i32 1, !dbg !825
  store i64 %and32, ptr %Mv33, align 8, !dbg !826, !tbaa !321
  %46 = load ptr, ptr %col, align 8, !dbg !827, !tbaa !205
  %maxleqk34 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %46, i32 0, i32 2, !dbg !828
  %47 = load i64, ptr %maxleqk34, align 8, !dbg !828, !tbaa !339
  %shl35 = shl i64 1, %47, !dbg !829
  store i64 %shl35, ptr %backmask, align 8, !dbg !830, !tbaa !373
  %48 = load i64, ptr %Eq, align 8, !dbg !831, !tbaa !373
  %49 = load i64, ptr %backmask, align 8, !dbg !832, !tbaa !373
  %and36 = and i64 %48, %49, !dbg !833
  %tobool = icmp ne i64 %and36, 0, !dbg !833
  br i1 %tobool, label %if.then40, label %lor.lhs.false37, !dbg !834

lor.lhs.false37:                                  ; preds = %if.end15
  %50 = load i64, ptr %Mh, align 8, !dbg !835, !tbaa !373
  %51 = load i64, ptr %backmask, align 8, !dbg !836, !tbaa !373
  %and38 = and i64 %50, %51, !dbg !837
  %tobool39 = icmp ne i64 %and38, 0, !dbg !837
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !838

if.then40:                                        ; preds = %lor.lhs.false37, %if.end15
  %52 = load ptr, ptr %col, align 8, !dbg !839, !tbaa !205
  %maxleqk41 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %52, i32 0, i32 2, !dbg !841
  %53 = load i64, ptr %maxleqk41, align 8, !dbg !842, !tbaa !339
  %inc = add i64 %53, 1, !dbg !842
  store i64 %inc, ptr %maxleqk41, align 8, !dbg !842, !tbaa !339
  br label %if.end80, !dbg !843

if.else:                                          ; preds = %lor.lhs.false37
  %54 = load i64, ptr %Ph, align 8, !dbg !844, !tbaa !373
  %55 = load i64, ptr %backmask, align 8, !dbg !845, !tbaa !373
  %and42 = and i64 %54, %55, !dbg !846
  %tobool43 = icmp ne i64 %and42, 0, !dbg !846
  br i1 %tobool43, label %if.then44, label %if.end79, !dbg !847

if.then44:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpmaxleqk) #6, !dbg !848
  tail call void @llvm.dbg.declare(metadata ptr %tmpmaxleqk, metadata !726, metadata !DIExpression()), !dbg !849
  %56 = load ptr, ptr %mti, align 8, !dbg !850, !tbaa !205
  %patternlength45 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %56, i32 0, i32 2, !dbg !850
  %57 = load i64, ptr %patternlength45, align 8, !dbg !850, !tbaa !257
  %add46 = add i64 %57, 1, !dbg !850
  store i64 %add46, ptr %tmpmaxleqk, align 8, !dbg !849, !tbaa !373
  %58 = load ptr, ptr %mti, align 8, !dbg !851, !tbaa !205
  %maxdistance = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %58, i32 0, i32 3, !dbg !852
  %59 = load i64, ptr %maxdistance, align 8, !dbg !852, !tbaa !262
  %add47 = add i64 %59, 1, !dbg !853
  store i64 %add47, ptr %score, align 8, !dbg !854, !tbaa !373
  %60 = load ptr, ptr %col, align 8, !dbg !855, !tbaa !205
  %maxleqk48 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %60, i32 0, i32 2, !dbg !857
  %61 = load i64, ptr %maxleqk48, align 8, !dbg !857, !tbaa !339
  %cmp49 = icmp ugt i64 %61, 0, !dbg !858
  br i1 %cmp49, label %if.then51, label %if.end77, !dbg !859

if.then51:                                        ; preds = %if.then44
  %62 = load ptr, ptr %col, align 8, !dbg !860, !tbaa !205
  %maxleqk52 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %62, i32 0, i32 2, !dbg !863
  %63 = load i64, ptr %maxleqk52, align 8, !dbg !863, !tbaa !339
  %sub = sub i64 %63, 1, !dbg !864
  store i64 %sub, ptr %idx, align 8, !dbg !865, !tbaa !373
  %64 = load i64, ptr %backmask, align 8, !dbg !866, !tbaa !373
  %shr = lshr i64 %64, 1, !dbg !866
  store i64 %shr, ptr %backmask, align 8, !dbg !866, !tbaa !373
  br label %for.cond, !dbg !867

for.cond:                                         ; preds = %for.inc, %if.then51
  %65 = load ptr, ptr %col, align 8, !dbg !868, !tbaa !205
  %Pv53 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %65, i32 0, i32 0, !dbg !872
  %66 = load i64, ptr %Pv53, align 8, !dbg !872, !tbaa !333
  %67 = load i64, ptr %backmask, align 8, !dbg !873, !tbaa !373
  %and54 = and i64 %66, %67, !dbg !874
  %tobool55 = icmp ne i64 %and54, 0, !dbg !874
  br i1 %tobool55, label %if.then56, label %if.else62, !dbg !875

if.then56:                                        ; preds = %for.cond
  %68 = load i64, ptr %score, align 8, !dbg !876, !tbaa !373
  %dec = add i64 %68, -1, !dbg !876
  store i64 %dec, ptr %score, align 8, !dbg !876, !tbaa !373
  %69 = load i64, ptr %score, align 8, !dbg !878, !tbaa !373
  %70 = load ptr, ptr %mti, align 8, !dbg !880, !tbaa !205
  %maxdistance57 = getelementptr inbounds %struct.ApmeoveridxLimdfsconstinfo, ptr %70, i32 0, i32 3, !dbg !881
  %71 = load i64, ptr %maxdistance57, align 8, !dbg !881, !tbaa !262
  %cmp58 = icmp ule i64 %69, %71, !dbg !882
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !883

if.then60:                                        ; preds = %if.then56
  %72 = load i64, ptr %idx, align 8, !dbg !884, !tbaa !373
  store i64 %72, ptr %tmpmaxleqk, align 8, !dbg !886, !tbaa !373
  %73 = load i64, ptr %score, align 8, !dbg !887, !tbaa !373
  %74 = load ptr, ptr %col, align 8, !dbg !888, !tbaa !205
  %lastdistvalue = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %74, i32 0, i32 3, !dbg !889
  store i64 %73, ptr %lastdistvalue, align 8, !dbg !890, !tbaa !343
  br label %for.end, !dbg !891

if.end61:                                         ; preds = %if.then56
  br label %if.end69, !dbg !892

if.else62:                                        ; preds = %for.cond
  %75 = load ptr, ptr %col, align 8, !dbg !893, !tbaa !205
  %Mv63 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %75, i32 0, i32 1, !dbg !896
  %76 = load i64, ptr %Mv63, align 8, !dbg !896, !tbaa !321
  %77 = load i64, ptr %backmask, align 8, !dbg !897, !tbaa !373
  %and64 = and i64 %76, %77, !dbg !898
  %tobool65 = icmp ne i64 %and64, 0, !dbg !898
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !899

if.then66:                                        ; preds = %if.else62
  %78 = load i64, ptr %score, align 8, !dbg !900, !tbaa !373
  %inc67 = add i64 %78, 1, !dbg !900
  store i64 %inc67, ptr %score, align 8, !dbg !900, !tbaa !373
  br label %if.end68, !dbg !902

if.end68:                                         ; preds = %if.then66, %if.else62
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end61
  %79 = load i64, ptr %idx, align 8, !dbg !903, !tbaa !373
  %cmp70 = icmp ugt i64 %79, 0, !dbg !905
  br i1 %cmp70, label %if.then72, label %if.else74, !dbg !906

if.then72:                                        ; preds = %if.end69
  %80 = load i64, ptr %idx, align 8, !dbg !907, !tbaa !373
  %dec73 = add i64 %80, -1, !dbg !907
  store i64 %dec73, ptr %idx, align 8, !dbg !907, !tbaa !373
  br label %if.end75, !dbg !909

if.else74:                                        ; preds = %if.end69
  br label %for.end, !dbg !910

if.end75:                                         ; preds = %if.then72
  br label %for.inc, !dbg !912

for.inc:                                          ; preds = %if.end75
  %81 = load i64, ptr %backmask, align 8, !dbg !913, !tbaa !373
  %shr76 = lshr i64 %81, 1, !dbg !913
  store i64 %shr76, ptr %backmask, align 8, !dbg !913, !tbaa !373
  br label %for.cond, !dbg !914, !llvm.loop !915

for.end:                                          ; preds = %if.else74, %if.then60
  br label %if.end77, !dbg !918

if.end77:                                         ; preds = %for.end, %if.then44
  %82 = load i64, ptr %tmpmaxleqk, align 8, !dbg !919, !tbaa !373
  %83 = load ptr, ptr %col, align 8, !dbg !920, !tbaa !205
  %maxleqk78 = getelementptr inbounds %struct.ApmeoveridxLimdfsstate, ptr %83, i32 0, i32 2, !dbg !921
  store i64 %82, ptr %maxleqk78, align 8, !dbg !922, !tbaa !339
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpmaxleqk) #6, !dbg !923
  br label %if.end79, !dbg !924

if.end79:                                         ; preds = %if.end77, %if.else
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %mti) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %col) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %score) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %backmask) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %Mh) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ph) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xh) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %Xv) #6, !dbg !925
  call void @llvm.lifetime.end.p0(i64 8, ptr %Eq) #6, !dbg !925
  ret void, !dbg !925
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !926 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !932 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !992 void @abort() #3

declare !dbg !996 void @gt_initeqsvector(ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare !dbg !1000 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!94}
!llvm.module.flags = !{!186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "apme_adfst", scope: !2, file: !3, line: 425, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "gt_apme_AbstractDfstransformer", scope: !3, file: !3, line: 423, type: !4, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !94)
!3 = !DIFile(filename: "src/match/apmeoveridx.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "5956e5b376e0e1bd0079b95f2c7d4f10")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "AbstractDfstransformer", file: !9, line: 21, baseType: !10)
!9 = !DIFile(filename: "src/match/absdfstrans-def.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "ac385f36206f0033bd784edaff6b4cee")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AbstractDfstransformer", file: !11, line: 45, size: 768, elements: !12)
!11 = !DIFile(filename: "src/match/absdfstrans-imp.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "6f2b1d006379cd77fb71b6142f22e81b")
!12 = !{!13, !17, !25, !29, !43, !48, !54, !58, !59, !65, !82, !90}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sizeofdfsstate", scope: !10, file: !11, line: 47, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 70, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "allocatedfsconstinfo", scope: !10, file: !11, line: 48, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !24}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Limdfsconstinfo", file: !9, line: 23, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "Limdfsconstinfo", file: !9, line: 23, flags: DIFlagFwdDecl)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "initdfsconstinfo", scope: !10, file: !11, line: 49, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !21, !24, null}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "extractdfsconstinfo", scope: !10, file: !11, line: 52, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !38, !39, !21}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Processresult", file: !34, line: 39, baseType: !35)
!34 = !DIFile(filename: "src/match/procmatch.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e53d8bc6dafbd9ae1a3f315a13f3f7a5")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !39, !41, !41, !41, !41}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !42, line: 83, baseType: !16)
!42 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!43 = !DIDerivedType(tag: DW_TAG_member, name: "freedfsconstinfo", scope: !10, file: !11, line: 56, baseType: !44, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "initrootLimdfsstate", scope: !10, file: !11, line: 57, baseType: !49, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !21}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "Aliasdfsstate", file: !11, line: 24, baseType: !41)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "initLimdfsstackelem", scope: !10, file: !11, line: 59, baseType: !55, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !52}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "freeLimdfsstackelem", scope: !10, file: !11, line: 60, baseType: !55, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "copyLimdfsstate", scope: !10, file: !11, line: 61, baseType: !60, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !52, !63, !21}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fullmatchLimdfsstate", scope: !10, file: !11, line: 64, baseType: !66, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !52, !41, !41, !41, !41, !21}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "Limdfsresult", file: !11, line: 43, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 38, size: 192, elements: !72)
!72 = !{!73, !80, !81}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !71, file: !11, line: 40, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "Limdfsstatus", file: !11, line: 36, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 31, baseType: !24, size: 32, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "Limdfssuccess", value: 0)
!78 = !DIEnumerator(name: "Limdfscontinue", value: 1)
!79 = !DIEnumerator(name: "Limdfsstop", value: 2)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pprefixlen", scope: !71, file: !11, line: 41, baseType: !41, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !71, file: !11, line: 42, baseType: !41, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nextLimdfsstate", scope: !10, file: !11, line: 71, baseType: !83, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !52, !41, !88, !63}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUchar", file: !42, line: 102, baseType: !89)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "inplacenextLimdfsstate", scope: !10, file: !11, line: 76, baseType: !91, size: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !86, !52, !41, !88}
!94 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !95, retainedTypes: !96, globals: !121, splitDebugInlining: false, nameTableKind: None)
!95 = !{!75}
!96 = !{!38, !21, !97, !102, !41, !108, !109, !117, !119, !88}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "ApmeoveridxLimdfsconstinfo", file: !3, line: 51, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 44, size: 320, elements: !100)
!100 = !{!101, !103, !104, !105, !106}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "skpp", scope: !99, file: !3, line: 46, baseType: !102, size: 8)
!102 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "maxintervalwidth", scope: !99, file: !3, line: 47, baseType: !41, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "patternlength", scope: !99, file: !3, line: 48, baseType: !41, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "maxdistance", scope: !99, file: !3, line: 49, baseType: !41, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "eqsvector", scope: !99, file: !3, line: 50, baseType: !107, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ApmeoveridxLimdfsstate", file: !3, line: 42, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 33, size: 256, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "Pv", scope: !111, file: !3, line: 35, baseType: !41, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "Mv", scope: !111, file: !3, line: 36, baseType: !41, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "maxleqk", scope: !111, file: !3, line: 37, baseType: !41, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "lastdistvalue", scope: !111, file: !3, line: 41, baseType: !41, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!121 = !{!0, !122, !128, !133, !138, !144, !149, !154, !159, !164, !169, !171, !176, !181}
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 192, elements: !126)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!126 = !{!127}
!127 = !DISubrange(count: 24)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 2376, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 297)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 304, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 38)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 176, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!142 = !{!143}
!143 = !DISubrange(count: 22)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 136, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 17)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 208, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 26)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 248, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 31)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 168, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 21)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 496, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 62)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !135, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 232, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 29)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 224, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 28)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 480, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 60)
!186 = !{i32 7, !"Dwarf Version", i32 5}
!187 = !{i32 2, !"Debug Info Version", i32 3}
!188 = !{i32 1, !"wchar_size", i32 4}
!189 = !{i32 8, !"PIC Level", i32 2}
!190 = !{i32 7, !"uwtable", i32 2}
!191 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!192 = !DILocation(line: 443, column: 3, scope: !2)
!193 = distinct !DISubprogram(name: "apme_allocatedfsconstinfo", scope: !3, file: !3, line: 186, type: !19, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !194)
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "alphasize", arg: 1, scope: !193, file: !3, line: 186, type: !24)
!196 = !DILocalVariable(name: "mti", scope: !193, file: !3, line: 188, type: !97)
!197 = !{!198, !198, i64 0}
!198 = !{!"int", !199, i64 0}
!199 = !{!"omnipotent char", !200, i64 0}
!200 = !{!"Simple C/C++ TBAA"}
!201 = !DILocation(line: 186, column: 64, scope: !193)
!202 = !DILocation(line: 188, column: 3, scope: !193)
!203 = !DILocation(line: 188, column: 31, scope: !193)
!204 = !DILocation(line: 189, column: 34, scope: !193)
!205 = !{!206, !206, i64 0}
!206 = !{!"any pointer", !199, i64 0}
!207 = !DILocation(line: 190, column: 20, scope: !193)
!208 = !DILocation(line: 190, column: 3, scope: !193)
!209 = !DILocation(line: 190, column: 8, scope: !193)
!210 = !DILocation(line: 190, column: 18, scope: !193)
!211 = !{!212, !206, i64 32}
!212 = !{!"", !213, i64 0, !214, i64 8, !214, i64 16, !214, i64 24, !206, i64 32}
!213 = !{!"_Bool", !199, i64 0}
!214 = !{!"long", !199, i64 0}
!215 = !DILocation(line: 191, column: 29, scope: !193)
!216 = !DILocation(line: 192, column: 1, scope: !193)
!217 = !DILocation(line: 191, column: 3, scope: !193)
!218 = distinct !DISubprogram(name: "apme_initdfsconstinfo", scope: !3, file: !3, line: 158, type: !27, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !219)
!219 = !{!220, !221, !222, !237, !240}
!220 = !DILocalVariable(name: "mt", arg: 1, scope: !218, file: !3, line: 158, type: !21)
!221 = !DILocalVariable(name: "alphasize", arg: 2, scope: !218, file: !3, line: 159, type: !24)
!222 = !DILocalVariable(name: "ap", scope: !218, file: !3, line: 170, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !224, line: 52, baseType: !225)
!224 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !226, line: 35, baseType: !227)
!226 = !DIFile(filename: "/usr/lib/clang/18/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "95ff2da58c2c75d7c246cff7935ff18b")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 192, elements: !235)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !230)
!230 = !{!231, !232, !233, !234}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !229, file: !3, line: 170, baseType: !24, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !229, file: !3, line: 170, baseType: !24, size: 32, offset: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !229, file: !3, line: 170, baseType: !38, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !229, file: !3, line: 170, baseType: !38, size: 64, offset: 128)
!235 = !{!236}
!236 = !DISubrange(count: 1)
!237 = !DILocalVariable(name: "pattern", scope: !218, file: !3, line: 171, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!240 = !DILocalVariable(name: "mti", scope: !218, file: !3, line: 172, type: !97)
!241 = !DILocation(line: 158, column: 52, scope: !218)
!242 = !DILocation(line: 159, column: 48, scope: !218)
!243 = !DILocation(line: 170, column: 3, scope: !218)
!244 = !DILocation(line: 170, column: 11, scope: !218)
!245 = !DILocation(line: 171, column: 3, scope: !218)
!246 = !DILocation(line: 171, column: 18, scope: !218)
!247 = !DILocation(line: 172, column: 3, scope: !218)
!248 = !DILocation(line: 172, column: 31, scope: !218)
!249 = !DILocation(line: 172, column: 68, scope: !218)
!250 = !DILocation(line: 174, column: 3, scope: !218)
!251 = !DILocation(line: 175, column: 13, scope: !218)
!252 = !DILocation(line: 175, column: 11, scope: !218)
!253 = !DILocation(line: 176, column: 24, scope: !218)
!254 = !DILocation(line: 176, column: 3, scope: !218)
!255 = !DILocation(line: 176, column: 8, scope: !218)
!256 = !DILocation(line: 176, column: 22, scope: !218)
!257 = !{!212, !214, i64 16}
!258 = !DILocation(line: 177, column: 22, scope: !218)
!259 = !DILocation(line: 177, column: 3, scope: !218)
!260 = !DILocation(line: 177, column: 8, scope: !218)
!261 = !DILocation(line: 177, column: 20, scope: !218)
!262 = !{!212, !214, i64 24}
!263 = !DILocation(line: 178, column: 27, scope: !218)
!264 = !DILocation(line: 178, column: 3, scope: !218)
!265 = !DILocation(line: 178, column: 8, scope: !218)
!266 = !DILocation(line: 178, column: 25, scope: !218)
!267 = !{!212, !214, i64 8}
!268 = !DILocation(line: 179, column: 22, scope: !218)
!269 = !DILocation(line: 179, column: 15, scope: !218)
!270 = !DILocation(line: 179, column: 3, scope: !218)
!271 = !DILocation(line: 179, column: 8, scope: !218)
!272 = !DILocation(line: 179, column: 13, scope: !218)
!273 = !{!212, !213, i64 0}
!274 = !DILocation(line: 180, column: 3, scope: !218)
!275 = !DILocation(line: 181, column: 3, scope: !218)
!276 = !DILocation(line: 181, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 181, column: 3)
!278 = distinct !DILexicalBlock(scope: !218, file: !3, line: 181, column: 3)
!279 = !DILocation(line: 181, column: 3, scope: !278)
!280 = !DILocation(line: 181, column: 3, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 181, column: 3)
!282 = !DILocation(line: 182, column: 20, scope: !218)
!283 = !DILocation(line: 182, column: 25, scope: !218)
!284 = !DILocation(line: 182, column: 45, scope: !218)
!285 = !DILocation(line: 182, column: 35, scope: !218)
!286 = !DILocation(line: 183, column: 17, scope: !218)
!287 = !DILocation(line: 183, column: 25, scope: !218)
!288 = !DILocation(line: 183, column: 30, scope: !218)
!289 = !DILocation(line: 182, column: 3, scope: !218)
!290 = !DILocation(line: 184, column: 1, scope: !218)
!291 = distinct !DISubprogram(name: "apme_freedfsconstinfo", scope: !3, file: !3, line: 194, type: !45, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !292)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "mtptr", arg: 1, scope: !291, file: !3, line: 194, type: !47)
!294 = !DILocalVariable(name: "mtiptr", scope: !291, file: !3, line: 196, type: !108)
!295 = !DILocation(line: 194, column: 53, scope: !291)
!296 = !DILocation(line: 196, column: 3, scope: !291)
!297 = !DILocation(line: 196, column: 32, scope: !291)
!298 = !DILocation(line: 196, column: 73, scope: !291)
!299 = !DILocation(line: 197, column: 3, scope: !291)
!300 = !DILocation(line: 198, column: 3, scope: !291)
!301 = !DILocation(line: 199, column: 4, scope: !291)
!302 = !DILocation(line: 199, column: 11, scope: !291)
!303 = !DILocation(line: 200, column: 1, scope: !291)
!304 = distinct !DISubprogram(name: "apme_initLimdfsstate", scope: !3, file: !3, line: 202, type: !50, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !305)
!305 = !{!306, !307, !308, !309}
!306 = !DILocalVariable(name: "aliascolumn", arg: 1, scope: !304, file: !3, line: 202, type: !52)
!307 = !DILocalVariable(name: "mt", arg: 2, scope: !304, file: !3, line: 203, type: !21)
!308 = !DILocalVariable(name: "column", scope: !304, file: !3, line: 205, type: !109)
!309 = !DILocalVariable(name: "mti", scope: !304, file: !3, line: 206, type: !97)
!310 = !DILocation(line: 202, column: 34, scope: !304)
!311 = !DILocation(line: 203, column: 51, scope: !304)
!312 = !DILocation(line: 205, column: 3, scope: !304)
!313 = !DILocation(line: 205, column: 27, scope: !304)
!314 = !DILocation(line: 205, column: 63, scope: !304)
!315 = !DILocation(line: 206, column: 3, scope: !304)
!316 = !DILocation(line: 206, column: 31, scope: !304)
!317 = !DILocation(line: 206, column: 68, scope: !304)
!318 = !DILocation(line: 208, column: 3, scope: !304)
!319 = !DILocation(line: 208, column: 11, scope: !304)
!320 = !DILocation(line: 208, column: 14, scope: !304)
!321 = !{!322, !214, i64 8}
!322 = !{!"", !214, i64 0, !214, i64 8, !214, i64 16, !214, i64 24}
!323 = !DILocation(line: 209, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !304, file: !3, line: 209, column: 7)
!325 = !DILocation(line: 209, column: 12, scope: !324)
!326 = !{i8 0, i8 2}
!327 = !{}
!328 = !DILocation(line: 209, column: 7, scope: !304)
!329 = !DILocation(line: 211, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !324, file: !3, line: 210, column: 3)
!331 = !DILocation(line: 211, column: 13, scope: !330)
!332 = !DILocation(line: 211, column: 16, scope: !330)
!333 = !{!322, !214, i64 0}
!334 = !DILocation(line: 212, column: 23, scope: !330)
!335 = !DILocation(line: 212, column: 28, scope: !330)
!336 = !DILocation(line: 212, column: 5, scope: !330)
!337 = !DILocation(line: 212, column: 13, scope: !330)
!338 = !DILocation(line: 212, column: 21, scope: !330)
!339 = !{!322, !214, i64 16}
!340 = !DILocation(line: 213, column: 5, scope: !330)
!341 = !DILocation(line: 213, column: 13, scope: !330)
!342 = !DILocation(line: 213, column: 27, scope: !330)
!343 = !{!322, !214, i64 24}
!344 = !DILocation(line: 214, column: 3, scope: !330)
!345 = !DILocation(line: 216, column: 5, scope: !346)
!346 = distinct !DILexicalBlock(scope: !324, file: !3, line: 215, column: 3)
!347 = !DILocation(line: 216, column: 13, scope: !346)
!348 = !DILocation(line: 216, column: 16, scope: !346)
!349 = !DILocation(line: 217, column: 23, scope: !346)
!350 = !DILocation(line: 217, column: 28, scope: !346)
!351 = !DILocation(line: 217, column: 5, scope: !346)
!352 = !DILocation(line: 217, column: 13, scope: !346)
!353 = !DILocation(line: 217, column: 21, scope: !346)
!354 = !DILocation(line: 218, column: 29, scope: !346)
!355 = !DILocation(line: 218, column: 34, scope: !346)
!356 = !DILocation(line: 218, column: 5, scope: !346)
!357 = !DILocation(line: 218, column: 13, scope: !346)
!358 = !DILocation(line: 218, column: 27, scope: !346)
!359 = !DILocation(line: 220, column: 1, scope: !304)
!360 = distinct !DISubprogram(name: "apme_fullmatchLimdfsstate", scope: !3, file: !3, line: 222, type: !67, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370}
!362 = !DILocalVariable(name: "limdfsresult", arg: 1, scope: !360, file: !3, line: 222, type: !69)
!363 = !DILocalVariable(name: "aliascolumn", arg: 2, scope: !360, file: !3, line: 223, type: !52)
!364 = !DILocalVariable(name: "leftbound", arg: 3, scope: !360, file: !3, line: 224, type: !41)
!365 = !DILocalVariable(name: "rightbound", arg: 4, scope: !360, file: !3, line: 225, type: !41)
!366 = !DILocalVariable(name: "width", arg: 5, scope: !360, file: !3, line: 226, type: !41)
!367 = !DILocalVariable(name: "currentdepth", arg: 6, scope: !360, file: !3, line: 227, type: !41)
!368 = !DILocalVariable(name: "mt", arg: 7, scope: !360, file: !3, line: 228, type: !21)
!369 = !DILocalVariable(name: "col", scope: !360, file: !3, line: 230, type: !109)
!370 = !DILocalVariable(name: "mti", scope: !360, file: !3, line: 231, type: !97)
!371 = !DILocation(line: 222, column: 53, scope: !360)
!372 = !DILocation(line: 223, column: 39, scope: !360)
!373 = !{!214, !214, i64 0}
!374 = !DILocation(line: 224, column: 57, scope: !360)
!375 = !DILocation(line: 225, column: 57, scope: !360)
!376 = !DILocation(line: 226, column: 47, scope: !360)
!377 = !DILocation(line: 227, column: 57, scope: !360)
!378 = !DILocation(line: 228, column: 56, scope: !360)
!379 = !DILocation(line: 230, column: 3, scope: !360)
!380 = !DILocation(line: 230, column: 27, scope: !360)
!381 = !DILocation(line: 230, column: 60, scope: !360)
!382 = !DILocation(line: 231, column: 3, scope: !360)
!383 = !DILocation(line: 231, column: 31, scope: !360)
!384 = !DILocation(line: 231, column: 68, scope: !360)
!385 = !DILocation(line: 233, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !360, file: !3, line: 233, column: 7)
!387 = !DILocation(line: 233, column: 12, scope: !386)
!388 = !DILocation(line: 233, column: 23, scope: !386)
!389 = !DILocation(line: 233, column: 20, scope: !386)
!390 = !DILocation(line: 233, column: 7, scope: !360)
!391 = !DILocation(line: 235, column: 5, scope: !392)
!392 = distinct !DILexicalBlock(scope: !386, file: !3, line: 234, column: 3)
!393 = !DILocation(line: 235, column: 19, scope: !392)
!394 = !DILocation(line: 235, column: 26, scope: !392)
!395 = !{!396, !199, i64 0}
!396 = !{!"", !199, i64 0, !214, i64 8, !214, i64 16}
!397 = !DILocation(line: 236, column: 5, scope: !392)
!398 = !DILocation(line: 238, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !360, file: !3, line: 238, column: 7)
!400 = !DILocation(line: 238, column: 12, scope: !399)
!401 = !DILocation(line: 238, column: 29, scope: !399)
!402 = !DILocation(line: 238, column: 34, scope: !399)
!403 = !DILocation(line: 238, column: 37, scope: !399)
!404 = !DILocation(line: 238, column: 43, scope: !399)
!405 = !DILocation(line: 238, column: 7, scope: !360)
!406 = !DILocation(line: 240, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 240, column: 9)
!408 = distinct !DILexicalBlock(scope: !399, file: !3, line: 239, column: 3)
!409 = !DILocation(line: 240, column: 14, scope: !407)
!410 = !DILocation(line: 240, column: 25, scope: !407)
!411 = !DILocation(line: 240, column: 22, scope: !407)
!412 = !DILocation(line: 240, column: 9, scope: !408)
!413 = !DILocation(line: 243, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 241, column: 5)
!415 = !DILocation(line: 243, column: 21, scope: !414)
!416 = !DILocation(line: 243, column: 28, scope: !414)
!417 = !DILocation(line: 244, column: 34, scope: !414)
!418 = !DILocation(line: 244, column: 39, scope: !414)
!419 = !DILocation(line: 244, column: 7, scope: !414)
!420 = !DILocation(line: 244, column: 21, scope: !414)
!421 = !DILocation(line: 244, column: 32, scope: !414)
!422 = !{!396, !214, i64 8}
!423 = !DILocation(line: 245, column: 32, scope: !414)
!424 = !DILocation(line: 245, column: 37, scope: !414)
!425 = !DILocation(line: 245, column: 7, scope: !414)
!426 = !DILocation(line: 245, column: 21, scope: !414)
!427 = !DILocation(line: 245, column: 30, scope: !414)
!428 = !{!396, !214, i64 16}
!429 = !DILocation(line: 246, column: 7, scope: !414)
!430 = !DILocation(line: 248, column: 3, scope: !408)
!431 = !DILocation(line: 250, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 250, column: 9)
!433 = distinct !DILexicalBlock(scope: !399, file: !3, line: 249, column: 3)
!434 = !DILocation(line: 250, column: 28, scope: !432)
!435 = !DILocation(line: 250, column: 33, scope: !432)
!436 = !DILocation(line: 250, column: 15, scope: !432)
!437 = !DILocation(line: 250, column: 9, scope: !433)
!438 = !DILocation(line: 253, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !432, file: !3, line: 251, column: 5)
!440 = !DILocation(line: 253, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 253, column: 7)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 253, column: 7)
!443 = !DILocation(line: 253, column: 7, scope: !442)
!444 = !DILocation(line: 253, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !3, line: 253, column: 7)
!446 = !DILocation(line: 254, column: 7, scope: !439)
!447 = !DILocation(line: 254, column: 21, scope: !439)
!448 = !DILocation(line: 254, column: 28, scope: !439)
!449 = !DILocation(line: 255, column: 34, scope: !439)
!450 = !DILocation(line: 255, column: 39, scope: !439)
!451 = !DILocation(line: 255, column: 7, scope: !439)
!452 = !DILocation(line: 255, column: 21, scope: !439)
!453 = !DILocation(line: 255, column: 32, scope: !439)
!454 = !DILocation(line: 256, column: 32, scope: !439)
!455 = !DILocation(line: 256, column: 37, scope: !439)
!456 = !DILocation(line: 256, column: 7, scope: !439)
!457 = !DILocation(line: 256, column: 21, scope: !439)
!458 = !DILocation(line: 256, column: 30, scope: !439)
!459 = !DILocation(line: 257, column: 7, scope: !439)
!460 = !DILocation(line: 261, column: 3, scope: !360)
!461 = !DILocation(line: 261, column: 17, scope: !360)
!462 = !DILocation(line: 261, column: 24, scope: !360)
!463 = !DILocation(line: 262, column: 1, scope: !360)
!464 = distinct !DISubprogram(name: "apme_nextLimdfsstate", scope: !3, file: !3, line: 264, type: !84, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!466 = !DILocalVariable(name: "mt", arg: 1, scope: !464, file: !3, line: 264, type: !86)
!467 = !DILocalVariable(name: "aliasoutcol", arg: 2, scope: !464, file: !3, line: 265, type: !52)
!468 = !DILocalVariable(name: "currentdepth", arg: 3, scope: !464, file: !3, line: 266, type: !41)
!469 = !DILocalVariable(name: "currentchar", arg: 4, scope: !464, file: !3, line: 267, type: !88)
!470 = !DILocalVariable(name: "aliasincol", arg: 5, scope: !464, file: !3, line: 268, type: !63)
!471 = !DILocalVariable(name: "Eq", scope: !464, file: !3, line: 270, type: !41)
!472 = !DILocalVariable(name: "Xv", scope: !464, file: !3, line: 270, type: !41)
!473 = !DILocalVariable(name: "Xh", scope: !464, file: !3, line: 270, type: !41)
!474 = !DILocalVariable(name: "Ph", scope: !464, file: !3, line: 270, type: !41)
!475 = !DILocalVariable(name: "Mh", scope: !464, file: !3, line: 270, type: !41)
!476 = !DILocalVariable(name: "backmask", scope: !464, file: !3, line: 271, type: !41)
!477 = !DILocalVariable(name: "idx", scope: !464, file: !3, line: 272, type: !41)
!478 = !DILocalVariable(name: "score", scope: !464, file: !3, line: 273, type: !41)
!479 = !DILocalVariable(name: "outcol", scope: !464, file: !3, line: 274, type: !109)
!480 = !DILocalVariable(name: "incol", scope: !464, file: !3, line: 275, type: !117)
!481 = !DILocalVariable(name: "mti", scope: !464, file: !3, line: 277, type: !119)
!482 = !DILocation(line: 264, column: 57, scope: !464)
!483 = !DILocation(line: 265, column: 34, scope: !464)
!484 = !DILocation(line: 266, column: 52, scope: !464)
!485 = !{!199, !199, i64 0}
!486 = !DILocation(line: 267, column: 42, scope: !464)
!487 = !DILocation(line: 268, column: 40, scope: !464)
!488 = !DILocation(line: 270, column: 3, scope: !464)
!489 = !DILocation(line: 270, column: 11, scope: !464)
!490 = !DILocation(line: 270, column: 19, scope: !464)
!491 = !DILocation(line: 270, column: 23, scope: !464)
!492 = !DILocation(line: 270, column: 27, scope: !464)
!493 = !DILocation(line: 270, column: 31, scope: !464)
!494 = !DILocation(line: 271, column: 17, scope: !464)
!495 = !DILocation(line: 272, column: 17, scope: !464)
!496 = !DILocation(line: 273, column: 17, scope: !464)
!497 = !DILocation(line: 274, column: 3, scope: !464)
!498 = !DILocation(line: 274, column: 27, scope: !464)
!499 = !DILocation(line: 274, column: 63, scope: !464)
!500 = !DILocation(line: 275, column: 3, scope: !464)
!501 = !DILocation(line: 275, column: 33, scope: !464)
!502 = !DILocation(line: 276, column: 70, scope: !464)
!503 = !DILocation(line: 277, column: 3, scope: !464)
!504 = !DILocation(line: 277, column: 37, scope: !464)
!505 = !DILocation(line: 278, column: 78, scope: !464)
!506 = !DILocation(line: 280, column: 3, scope: !464)
!507 = !DILocation(line: 280, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 280, column: 3)
!509 = distinct !DILexicalBlock(scope: !464, file: !3, line: 280, column: 3)
!510 = !DILocation(line: 280, column: 3, scope: !509)
!511 = !DILocation(line: 280, column: 3, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !3, line: 280, column: 3)
!513 = !DILocation(line: 281, column: 3, scope: !464)
!514 = !DILocation(line: 281, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !3, line: 281, column: 3)
!516 = distinct !DILexicalBlock(scope: !464, file: !3, line: 281, column: 3)
!517 = !DILocation(line: 281, column: 3, scope: !516)
!518 = !DILocation(line: 281, column: 3, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !3, line: 281, column: 3)
!520 = !DILocation(line: 282, column: 3, scope: !464)
!521 = !DILocation(line: 282, column: 3, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 282, column: 3)
!523 = distinct !DILexicalBlock(scope: !464, file: !3, line: 282, column: 3)
!524 = !DILocation(line: 282, column: 3, scope: !523)
!525 = !DILocation(line: 282, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 282, column: 3)
!527 = !DILocation(line: 283, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !464, file: !3, line: 283, column: 7)
!529 = !DILocation(line: 283, column: 19, scope: !528)
!530 = !DILocation(line: 283, column: 7, scope: !464)
!531 = !DILocation(line: 285, column: 10, scope: !532)
!532 = distinct !DILexicalBlock(scope: !528, file: !3, line: 284, column: 3)
!533 = !DILocation(line: 285, column: 15, scope: !532)
!534 = !DILocation(line: 285, column: 35, scope: !532)
!535 = !DILocation(line: 285, column: 25, scope: !532)
!536 = !DILocation(line: 285, column: 8, scope: !532)
!537 = !DILocation(line: 286, column: 3, scope: !532)
!538 = !DILocation(line: 287, column: 8, scope: !464)
!539 = !DILocation(line: 287, column: 13, scope: !464)
!540 = !DILocation(line: 287, column: 20, scope: !464)
!541 = !DILocation(line: 287, column: 11, scope: !464)
!542 = !DILocation(line: 287, column: 6, scope: !464)
!543 = !DILocation(line: 288, column: 11, scope: !464)
!544 = !DILocation(line: 288, column: 16, scope: !464)
!545 = !DILocation(line: 288, column: 23, scope: !464)
!546 = !DILocation(line: 288, column: 14, scope: !464)
!547 = !DILocation(line: 288, column: 29, scope: !464)
!548 = !DILocation(line: 288, column: 36, scope: !464)
!549 = !DILocation(line: 288, column: 27, scope: !464)
!550 = !DILocation(line: 288, column: 42, scope: !464)
!551 = !DILocation(line: 288, column: 49, scope: !464)
!552 = !DILocation(line: 288, column: 40, scope: !464)
!553 = !DILocation(line: 288, column: 55, scope: !464)
!554 = !DILocation(line: 288, column: 53, scope: !464)
!555 = !DILocation(line: 288, column: 6, scope: !464)
!556 = !DILocation(line: 290, column: 8, scope: !464)
!557 = !DILocation(line: 290, column: 15, scope: !464)
!558 = !DILocation(line: 290, column: 23, scope: !464)
!559 = !DILocation(line: 290, column: 28, scope: !464)
!560 = !DILocation(line: 290, column: 35, scope: !464)
!561 = !DILocation(line: 290, column: 26, scope: !464)
!562 = !DILocation(line: 290, column: 20, scope: !464)
!563 = !DILocation(line: 290, column: 18, scope: !464)
!564 = !DILocation(line: 290, column: 6, scope: !464)
!565 = !DILocation(line: 291, column: 8, scope: !464)
!566 = !DILocation(line: 291, column: 15, scope: !464)
!567 = !DILocation(line: 291, column: 20, scope: !464)
!568 = !DILocation(line: 291, column: 18, scope: !464)
!569 = !DILocation(line: 291, column: 6, scope: !464)
!570 = !DILocation(line: 293, column: 9, scope: !464)
!571 = !DILocation(line: 293, column: 12, scope: !464)
!572 = !DILocation(line: 293, column: 18, scope: !464)
!573 = !DILocation(line: 293, column: 6, scope: !464)
!574 = !DILocation(line: 294, column: 17, scope: !464)
!575 = !DILocation(line: 294, column: 20, scope: !464)
!576 = !DILocation(line: 294, column: 31, scope: !464)
!577 = !DILocation(line: 294, column: 36, scope: !464)
!578 = !DILocation(line: 294, column: 34, scope: !464)
!579 = !DILocation(line: 294, column: 28, scope: !464)
!580 = !DILocation(line: 294, column: 26, scope: !464)
!581 = !DILocation(line: 294, column: 3, scope: !464)
!582 = !DILocation(line: 294, column: 11, scope: !464)
!583 = !DILocation(line: 294, column: 14, scope: !464)
!584 = !DILocation(line: 295, column: 16, scope: !464)
!585 = !DILocation(line: 295, column: 21, scope: !464)
!586 = !DILocation(line: 295, column: 19, scope: !464)
!587 = !DILocation(line: 295, column: 3, scope: !464)
!588 = !DILocation(line: 295, column: 11, scope: !464)
!589 = !DILocation(line: 295, column: 14, scope: !464)
!590 = !DILocation(line: 296, column: 21, scope: !464)
!591 = !DILocation(line: 296, column: 28, scope: !464)
!592 = !DILocation(line: 296, column: 18, scope: !464)
!593 = !DILocation(line: 296, column: 12, scope: !464)
!594 = !DILocation(line: 297, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !464, file: !3, line: 297, column: 7)
!596 = !DILocation(line: 297, column: 12, scope: !595)
!597 = !DILocation(line: 297, column: 10, scope: !595)
!598 = !DILocation(line: 297, column: 21, scope: !595)
!599 = !DILocation(line: 297, column: 24, scope: !595)
!600 = !DILocation(line: 297, column: 29, scope: !595)
!601 = !DILocation(line: 297, column: 27, scope: !595)
!602 = !DILocation(line: 297, column: 7, scope: !464)
!603 = !DILocation(line: 299, column: 23, scope: !604)
!604 = distinct !DILexicalBlock(scope: !595, file: !3, line: 298, column: 3)
!605 = !DILocation(line: 299, column: 30, scope: !604)
!606 = !DILocation(line: 299, column: 38, scope: !604)
!607 = !DILocation(line: 299, column: 5, scope: !604)
!608 = !DILocation(line: 299, column: 13, scope: !604)
!609 = !DILocation(line: 299, column: 21, scope: !604)
!610 = !DILocation(line: 300, column: 29, scope: !604)
!611 = !DILocation(line: 300, column: 36, scope: !604)
!612 = !DILocation(line: 300, column: 5, scope: !604)
!613 = !DILocation(line: 300, column: 13, scope: !604)
!614 = !DILocation(line: 300, column: 27, scope: !604)
!615 = !DILocation(line: 301, column: 3, scope: !604)
!616 = !DILocation(line: 303, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 303, column: 9)
!618 = distinct !DILexicalBlock(scope: !595, file: !3, line: 302, column: 3)
!619 = !DILocation(line: 303, column: 14, scope: !617)
!620 = !DILocation(line: 303, column: 12, scope: !617)
!621 = !DILocation(line: 303, column: 9, scope: !618)
!622 = !DILocation(line: 305, column: 15, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !3, line: 304, column: 5)
!624 = !DILocation(line: 305, column: 20, scope: !623)
!625 = !DILocation(line: 305, column: 31, scope: !623)
!626 = !DILocation(line: 305, column: 13, scope: !623)
!627 = !DILocation(line: 306, column: 25, scope: !623)
!628 = !DILocation(line: 306, column: 7, scope: !623)
!629 = !DILocation(line: 306, column: 15, scope: !623)
!630 = !DILocation(line: 306, column: 23, scope: !623)
!631 = !DILocation(line: 307, column: 11, scope: !632)
!632 = distinct !DILexicalBlock(scope: !623, file: !3, line: 307, column: 11)
!633 = !DILocation(line: 307, column: 18, scope: !632)
!634 = !DILocation(line: 307, column: 26, scope: !632)
!635 = !DILocation(line: 307, column: 11, scope: !623)
!636 = !DILocation(line: 309, column: 20, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 309, column: 9)
!638 = distinct !DILexicalBlock(scope: !632, file: !3, line: 308, column: 7)
!639 = !DILocation(line: 309, column: 27, scope: !637)
!640 = !DILocation(line: 309, column: 35, scope: !637)
!641 = !DILocation(line: 309, column: 18, scope: !637)
!642 = !DILocation(line: 309, column: 49, scope: !637)
!643 = !DILocation(line: 309, column: 14, scope: !637)
!644 = !DILocation(line: 313, column: 15, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 313, column: 15)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 312, column: 9)
!647 = distinct !DILexicalBlock(scope: !637, file: !3, line: 309, column: 9)
!648 = !DILocation(line: 313, column: 23, scope: !645)
!649 = !DILocation(line: 313, column: 28, scope: !645)
!650 = !DILocation(line: 313, column: 26, scope: !645)
!651 = !DILocation(line: 313, column: 15, scope: !646)
!652 = !DILocation(line: 315, column: 18, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !3, line: 314, column: 11)
!654 = !DILocation(line: 316, column: 17, scope: !655)
!655 = distinct !DILexicalBlock(scope: !653, file: !3, line: 316, column: 17)
!656 = !DILocation(line: 316, column: 26, scope: !655)
!657 = !DILocation(line: 316, column: 31, scope: !655)
!658 = !DILocation(line: 316, column: 23, scope: !655)
!659 = !DILocation(line: 316, column: 17, scope: !653)
!660 = !DILocation(line: 318, column: 33, scope: !661)
!661 = distinct !DILexicalBlock(scope: !655, file: !3, line: 317, column: 13)
!662 = !DILocation(line: 318, column: 15, scope: !661)
!663 = !DILocation(line: 318, column: 23, scope: !661)
!664 = !DILocation(line: 318, column: 31, scope: !661)
!665 = !DILocation(line: 319, column: 39, scope: !661)
!666 = !DILocation(line: 319, column: 15, scope: !661)
!667 = !DILocation(line: 319, column: 23, scope: !661)
!668 = !DILocation(line: 319, column: 37, scope: !661)
!669 = !DILocation(line: 320, column: 15, scope: !661)
!670 = !DILocation(line: 322, column: 11, scope: !653)
!671 = !DILocation(line: 324, column: 17, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 324, column: 17)
!673 = distinct !DILexicalBlock(scope: !645, file: !3, line: 323, column: 11)
!674 = !DILocation(line: 324, column: 25, scope: !672)
!675 = !DILocation(line: 324, column: 30, scope: !672)
!676 = !DILocation(line: 324, column: 28, scope: !672)
!677 = !DILocation(line: 324, column: 17, scope: !673)
!678 = !DILocation(line: 326, column: 20, scope: !679)
!679 = distinct !DILexicalBlock(scope: !672, file: !3, line: 325, column: 13)
!680 = !DILocation(line: 327, column: 13, scope: !679)
!681 = !DILocation(line: 329, column: 15, scope: !682)
!682 = distinct !DILexicalBlock(scope: !646, file: !3, line: 329, column: 15)
!683 = !DILocation(line: 329, column: 19, scope: !682)
!684 = !DILocation(line: 329, column: 15, scope: !646)
!685 = !DILocation(line: 331, column: 16, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !3, line: 330, column: 11)
!687 = !DILocation(line: 332, column: 11, scope: !686)
!688 = !DILocation(line: 334, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !682, file: !3, line: 333, column: 11)
!690 = !DILocation(line: 336, column: 9, scope: !646)
!691 = !DILocation(line: 311, column: 23, scope: !647)
!692 = !DILocation(line: 309, column: 9, scope: !647)
!693 = distinct !{!693, !694, !695}
!694 = !DILocation(line: 309, column: 9, scope: !637)
!695 = !DILocation(line: 336, column: 9, scope: !637)
!696 = !DILocation(line: 337, column: 7, scope: !638)
!697 = !DILocation(line: 338, column: 5, scope: !623)
!698 = !DILocation(line: 340, column: 25, scope: !699)
!699 = distinct !DILexicalBlock(scope: !617, file: !3, line: 339, column: 5)
!700 = !DILocation(line: 340, column: 32, scope: !699)
!701 = !DILocation(line: 340, column: 7, scope: !699)
!702 = !DILocation(line: 340, column: 15, scope: !699)
!703 = !DILocation(line: 340, column: 23, scope: !699)
!704 = !DILocation(line: 341, column: 31, scope: !699)
!705 = !DILocation(line: 341, column: 38, scope: !699)
!706 = !DILocation(line: 341, column: 7, scope: !699)
!707 = !DILocation(line: 341, column: 15, scope: !699)
!708 = !DILocation(line: 341, column: 29, scope: !699)
!709 = !DILocation(line: 347, column: 1, scope: !464)
!710 = distinct !DISubprogram(name: "apme_inplacenextLimdfsstate", scope: !3, file: !3, line: 349, type: !92, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !94, retainedNodes: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!712 = !DILocalVariable(name: "mt", arg: 1, scope: !710, file: !3, line: 349, type: !86)
!713 = !DILocalVariable(name: "aliascol", arg: 2, scope: !710, file: !3, line: 350, type: !52)
!714 = !DILocalVariable(name: "currentdepth", arg: 3, scope: !710, file: !3, line: 351, type: !41)
!715 = !DILocalVariable(name: "currentchar", arg: 4, scope: !710, file: !3, line: 352, type: !88)
!716 = !DILocalVariable(name: "Eq", scope: !710, file: !3, line: 354, type: !41)
!717 = !DILocalVariable(name: "Xv", scope: !710, file: !3, line: 354, type: !41)
!718 = !DILocalVariable(name: "Xh", scope: !710, file: !3, line: 354, type: !41)
!719 = !DILocalVariable(name: "Ph", scope: !710, file: !3, line: 354, type: !41)
!720 = !DILocalVariable(name: "Mh", scope: !710, file: !3, line: 354, type: !41)
!721 = !DILocalVariable(name: "backmask", scope: !710, file: !3, line: 355, type: !41)
!722 = !DILocalVariable(name: "idx", scope: !710, file: !3, line: 356, type: !41)
!723 = !DILocalVariable(name: "score", scope: !710, file: !3, line: 357, type: !41)
!724 = !DILocalVariable(name: "col", scope: !710, file: !3, line: 358, type: !109)
!725 = !DILocalVariable(name: "mti", scope: !710, file: !3, line: 359, type: !119)
!726 = !DILocalVariable(name: "tmpmaxleqk", scope: !727, file: !3, line: 385, type: !41)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 384, column: 5)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 383, column: 9)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 382, column: 3)
!730 = distinct !DILexicalBlock(scope: !710, file: !3, line: 378, column: 7)
!731 = !DILocation(line: 349, column: 64, scope: !710)
!732 = !DILocation(line: 350, column: 41, scope: !710)
!733 = !DILocation(line: 351, column: 59, scope: !710)
!734 = !DILocation(line: 352, column: 49, scope: !710)
!735 = !DILocation(line: 354, column: 3, scope: !710)
!736 = !DILocation(line: 354, column: 11, scope: !710)
!737 = !DILocation(line: 354, column: 19, scope: !710)
!738 = !DILocation(line: 354, column: 23, scope: !710)
!739 = !DILocation(line: 354, column: 27, scope: !710)
!740 = !DILocation(line: 354, column: 31, scope: !710)
!741 = !DILocation(line: 355, column: 17, scope: !710)
!742 = !DILocation(line: 356, column: 17, scope: !710)
!743 = !DILocation(line: 357, column: 17, scope: !710)
!744 = !DILocation(line: 358, column: 3, scope: !710)
!745 = !DILocation(line: 358, column: 27, scope: !710)
!746 = !DILocation(line: 358, column: 60, scope: !710)
!747 = !DILocation(line: 359, column: 3, scope: !710)
!748 = !DILocation(line: 359, column: 37, scope: !710)
!749 = !DILocation(line: 360, column: 78, scope: !710)
!750 = !DILocation(line: 362, column: 3, scope: !710)
!751 = !DILocation(line: 362, column: 3, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 362, column: 3)
!753 = distinct !DILexicalBlock(scope: !710, file: !3, line: 362, column: 3)
!754 = !DILocation(line: 362, column: 3, scope: !753)
!755 = !DILocation(line: 362, column: 3, scope: !756)
!756 = distinct !DILexicalBlock(scope: !752, file: !3, line: 362, column: 3)
!757 = !DILocation(line: 363, column: 3, scope: !710)
!758 = !DILocation(line: 363, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 363, column: 3)
!760 = distinct !DILexicalBlock(scope: !710, file: !3, line: 363, column: 3)
!761 = !DILocation(line: 363, column: 3, scope: !760)
!762 = !DILocation(line: 363, column: 3, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 363, column: 3)
!764 = !DILocation(line: 364, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !710, file: !3, line: 364, column: 7)
!766 = !DILocation(line: 364, column: 19, scope: !765)
!767 = !DILocation(line: 364, column: 7, scope: !710)
!768 = !DILocation(line: 366, column: 10, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !3, line: 365, column: 3)
!770 = !DILocation(line: 366, column: 15, scope: !769)
!771 = !DILocation(line: 366, column: 35, scope: !769)
!772 = !DILocation(line: 366, column: 25, scope: !769)
!773 = !DILocation(line: 366, column: 8, scope: !769)
!774 = !DILocation(line: 367, column: 3, scope: !769)
!775 = !DILocation(line: 368, column: 8, scope: !710)
!776 = !DILocation(line: 368, column: 13, scope: !710)
!777 = !DILocation(line: 368, column: 18, scope: !710)
!778 = !DILocation(line: 368, column: 11, scope: !710)
!779 = !DILocation(line: 368, column: 6, scope: !710)
!780 = !DILocation(line: 369, column: 11, scope: !710)
!781 = !DILocation(line: 369, column: 16, scope: !710)
!782 = !DILocation(line: 369, column: 21, scope: !710)
!783 = !DILocation(line: 369, column: 14, scope: !710)
!784 = !DILocation(line: 369, column: 27, scope: !710)
!785 = !DILocation(line: 369, column: 32, scope: !710)
!786 = !DILocation(line: 369, column: 25, scope: !710)
!787 = !DILocation(line: 369, column: 38, scope: !710)
!788 = !DILocation(line: 369, column: 43, scope: !710)
!789 = !DILocation(line: 369, column: 36, scope: !710)
!790 = !DILocation(line: 369, column: 49, scope: !710)
!791 = !DILocation(line: 369, column: 47, scope: !710)
!792 = !DILocation(line: 369, column: 6, scope: !710)
!793 = !DILocation(line: 371, column: 8, scope: !710)
!794 = !DILocation(line: 371, column: 13, scope: !710)
!795 = !DILocation(line: 371, column: 21, scope: !710)
!796 = !DILocation(line: 371, column: 26, scope: !710)
!797 = !DILocation(line: 371, column: 31, scope: !710)
!798 = !DILocation(line: 371, column: 24, scope: !710)
!799 = !DILocation(line: 371, column: 18, scope: !710)
!800 = !DILocation(line: 371, column: 16, scope: !710)
!801 = !DILocation(line: 371, column: 6, scope: !710)
!802 = !DILocation(line: 372, column: 8, scope: !710)
!803 = !DILocation(line: 372, column: 13, scope: !710)
!804 = !DILocation(line: 372, column: 18, scope: !710)
!805 = !DILocation(line: 372, column: 16, scope: !710)
!806 = !DILocation(line: 372, column: 6, scope: !710)
!807 = !DILocation(line: 374, column: 9, scope: !710)
!808 = !DILocation(line: 374, column: 12, scope: !710)
!809 = !DILocation(line: 374, column: 18, scope: !710)
!810 = !DILocation(line: 374, column: 6, scope: !710)
!811 = !DILocation(line: 375, column: 14, scope: !710)
!812 = !DILocation(line: 375, column: 17, scope: !710)
!813 = !DILocation(line: 375, column: 28, scope: !710)
!814 = !DILocation(line: 375, column: 33, scope: !710)
!815 = !DILocation(line: 375, column: 31, scope: !710)
!816 = !DILocation(line: 375, column: 25, scope: !710)
!817 = !DILocation(line: 375, column: 23, scope: !710)
!818 = !DILocation(line: 375, column: 3, scope: !710)
!819 = !DILocation(line: 375, column: 8, scope: !710)
!820 = !DILocation(line: 375, column: 11, scope: !710)
!821 = !DILocation(line: 376, column: 13, scope: !710)
!822 = !DILocation(line: 376, column: 18, scope: !710)
!823 = !DILocation(line: 376, column: 16, scope: !710)
!824 = !DILocation(line: 376, column: 3, scope: !710)
!825 = !DILocation(line: 376, column: 8, scope: !710)
!826 = !DILocation(line: 376, column: 11, scope: !710)
!827 = !DILocation(line: 377, column: 21, scope: !710)
!828 = !DILocation(line: 377, column: 26, scope: !710)
!829 = !DILocation(line: 377, column: 18, scope: !710)
!830 = !DILocation(line: 377, column: 12, scope: !710)
!831 = !DILocation(line: 378, column: 7, scope: !730)
!832 = !DILocation(line: 378, column: 12, scope: !730)
!833 = !DILocation(line: 378, column: 10, scope: !730)
!834 = !DILocation(line: 378, column: 21, scope: !730)
!835 = !DILocation(line: 378, column: 24, scope: !730)
!836 = !DILocation(line: 378, column: 29, scope: !730)
!837 = !DILocation(line: 378, column: 27, scope: !730)
!838 = !DILocation(line: 378, column: 7, scope: !710)
!839 = !DILocation(line: 380, column: 5, scope: !840)
!840 = distinct !DILexicalBlock(scope: !730, file: !3, line: 379, column: 3)
!841 = !DILocation(line: 380, column: 10, scope: !840)
!842 = !DILocation(line: 380, column: 17, scope: !840)
!843 = !DILocation(line: 381, column: 3, scope: !840)
!844 = !DILocation(line: 383, column: 9, scope: !728)
!845 = !DILocation(line: 383, column: 14, scope: !728)
!846 = !DILocation(line: 383, column: 12, scope: !728)
!847 = !DILocation(line: 383, column: 9, scope: !729)
!848 = !DILocation(line: 385, column: 7, scope: !727)
!849 = !DILocation(line: 385, column: 15, scope: !727)
!850 = !DILocation(line: 385, column: 28, scope: !727)
!851 = !DILocation(line: 386, column: 15, scope: !727)
!852 = !DILocation(line: 386, column: 20, scope: !727)
!853 = !DILocation(line: 386, column: 31, scope: !727)
!854 = !DILocation(line: 386, column: 13, scope: !727)
!855 = !DILocation(line: 387, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !727, file: !3, line: 387, column: 11)
!857 = !DILocation(line: 387, column: 16, scope: !856)
!858 = !DILocation(line: 387, column: 24, scope: !856)
!859 = !DILocation(line: 387, column: 11, scope: !727)
!860 = !DILocation(line: 389, column: 20, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 389, column: 9)
!862 = distinct !DILexicalBlock(scope: !856, file: !3, line: 388, column: 7)
!863 = !DILocation(line: 389, column: 25, scope: !861)
!864 = !DILocation(line: 389, column: 33, scope: !861)
!865 = !DILocation(line: 389, column: 18, scope: !861)
!866 = !DILocation(line: 389, column: 47, scope: !861)
!867 = !DILocation(line: 389, column: 14, scope: !861)
!868 = !DILocation(line: 393, column: 15, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 393, column: 15)
!870 = distinct !DILexicalBlock(scope: !871, file: !3, line: 392, column: 9)
!871 = distinct !DILexicalBlock(scope: !861, file: !3, line: 389, column: 9)
!872 = !DILocation(line: 393, column: 20, scope: !869)
!873 = !DILocation(line: 393, column: 25, scope: !869)
!874 = !DILocation(line: 393, column: 23, scope: !869)
!875 = !DILocation(line: 393, column: 15, scope: !870)
!876 = !DILocation(line: 395, column: 18, scope: !877)
!877 = distinct !DILexicalBlock(scope: !869, file: !3, line: 394, column: 11)
!878 = !DILocation(line: 396, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !877, file: !3, line: 396, column: 17)
!880 = !DILocation(line: 396, column: 26, scope: !879)
!881 = !DILocation(line: 396, column: 31, scope: !879)
!882 = !DILocation(line: 396, column: 23, scope: !879)
!883 = !DILocation(line: 396, column: 17, scope: !877)
!884 = !DILocation(line: 398, column: 28, scope: !885)
!885 = distinct !DILexicalBlock(scope: !879, file: !3, line: 397, column: 13)
!886 = !DILocation(line: 398, column: 26, scope: !885)
!887 = !DILocation(line: 399, column: 36, scope: !885)
!888 = !DILocation(line: 399, column: 15, scope: !885)
!889 = !DILocation(line: 399, column: 20, scope: !885)
!890 = !DILocation(line: 399, column: 34, scope: !885)
!891 = !DILocation(line: 400, column: 15, scope: !885)
!892 = !DILocation(line: 402, column: 11, scope: !877)
!893 = !DILocation(line: 404, column: 17, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 404, column: 17)
!895 = distinct !DILexicalBlock(scope: !869, file: !3, line: 403, column: 11)
!896 = !DILocation(line: 404, column: 22, scope: !894)
!897 = !DILocation(line: 404, column: 27, scope: !894)
!898 = !DILocation(line: 404, column: 25, scope: !894)
!899 = !DILocation(line: 404, column: 17, scope: !895)
!900 = !DILocation(line: 406, column: 20, scope: !901)
!901 = distinct !DILexicalBlock(scope: !894, file: !3, line: 405, column: 13)
!902 = !DILocation(line: 407, column: 13, scope: !901)
!903 = !DILocation(line: 409, column: 15, scope: !904)
!904 = distinct !DILexicalBlock(scope: !870, file: !3, line: 409, column: 15)
!905 = !DILocation(line: 409, column: 19, scope: !904)
!906 = !DILocation(line: 409, column: 15, scope: !870)
!907 = !DILocation(line: 411, column: 16, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 410, column: 11)
!909 = !DILocation(line: 412, column: 11, scope: !908)
!910 = !DILocation(line: 414, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !904, file: !3, line: 413, column: 11)
!912 = !DILocation(line: 416, column: 9, scope: !870)
!913 = !DILocation(line: 391, column: 23, scope: !871)
!914 = !DILocation(line: 389, column: 9, scope: !871)
!915 = distinct !{!915, !916, !917}
!916 = !DILocation(line: 389, column: 9, scope: !861)
!917 = !DILocation(line: 416, column: 9, scope: !861)
!918 = !DILocation(line: 417, column: 7, scope: !862)
!919 = !DILocation(line: 418, column: 22, scope: !727)
!920 = !DILocation(line: 418, column: 7, scope: !727)
!921 = !DILocation(line: 418, column: 12, scope: !727)
!922 = !DILocation(line: 418, column: 20, scope: !727)
!923 = !DILocation(line: 419, column: 5, scope: !728)
!924 = !DILocation(line: 419, column: 5, scope: !727)
!925 = !DILocation(line: 421, column: 1, scope: !710)
!926 = !DISubprogram(name: "gt_malloc_mem", scope: !927, file: !927, line: 56, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!928 = !DISubroutineType(types: !929)
!929 = !{!38, !14, !930, !931}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!931 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!932 = !DISubprogram(name: "fprintf", scope: !224, file: !224, line: 350, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DISubroutineType(types: !934)
!934 = !{!931, !935, !991, null}
!935 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !938, line: 7, baseType: !939)
!938 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !940, line: 49, size: 1728, elements: !941)
!940 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!941 = !{!942, !943, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !958, !960, !961, !962, !966, !968, !970, !972, !975, !977, !980, !983, !984, !985, !986, !987}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !939, file: !940, line: 51, baseType: !931, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !939, file: !940, line: 54, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !939, file: !940, line: 55, baseType: !944, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !939, file: !940, line: 56, baseType: !944, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !939, file: !940, line: 57, baseType: !944, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !939, file: !940, line: 58, baseType: !944, size: 64, offset: 320)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !939, file: !940, line: 59, baseType: !944, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !939, file: !940, line: 60, baseType: !944, size: 64, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !939, file: !940, line: 61, baseType: !944, size: 64, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !939, file: !940, line: 64, baseType: !944, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !939, file: !940, line: 65, baseType: !944, size: 64, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !939, file: !940, line: 66, baseType: !944, size: 64, offset: 704)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !939, file: !940, line: 68, baseType: !956, size: 64, offset: 768)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !940, line: 36, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !939, file: !940, line: 70, baseType: !959, size: 64, offset: 832)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !939, file: !940, line: 72, baseType: !931, size: 32, offset: 896)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !939, file: !940, line: 73, baseType: !931, size: 32, offset: 928)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !939, file: !940, line: 74, baseType: !963, size: 64, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !964, line: 152, baseType: !965)
!964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!965 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !939, file: !940, line: 77, baseType: !967, size: 16, offset: 1024)
!967 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !939, file: !940, line: 78, baseType: !969, size: 8, offset: 1040)
!969 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !939, file: !940, line: 79, baseType: !971, size: 8, offset: 1048)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 8, elements: !235)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !939, file: !940, line: 81, baseType: !973, size: 64, offset: 1088)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !940, line: 43, baseType: null)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !939, file: !940, line: 89, baseType: !976, size: 64, offset: 1152)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !964, line: 153, baseType: !965)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !939, file: !940, line: 91, baseType: !978, size: 64, offset: 1216)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !940, line: 37, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !939, file: !940, line: 92, baseType: !981, size: 64, offset: 1280)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !940, line: 38, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !939, file: !940, line: 93, baseType: !959, size: 64, offset: 1344)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !939, file: !940, line: 94, baseType: !38, size: 64, offset: 1408)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !939, file: !940, line: 95, baseType: !14, size: 64, offset: 1472)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !939, file: !940, line: 96, baseType: !931, size: 32, offset: 1536)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !939, file: !940, line: 98, baseType: !988, size: 160, offset: 1568)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 160, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 20)
!991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !930)
!992 = !DISubprogram(name: "abort", scope: !993, file: !993, line: 598, type: !994, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!993 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!994 = !DISubroutineType(types: !995)
!995 = !{null}
!996 = !DISubprogram(name: "gt_initeqsvector", scope: !997, file: !997, line: 23, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DIFile(filename: "src/match/initeqsvec.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "388b8f66e6c5345148668ff38080cccf")
!998 = !DISubroutineType(types: !999)
!999 = !{null, !107, !41, !238, !41}
!1000 = !DISubprogram(name: "gt_free_mem", scope: !927, file: !927, line: 75, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !38, !930, !931}
