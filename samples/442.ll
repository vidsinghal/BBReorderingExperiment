; ModuleID = 'samples/442.bc'
source_filename = "nco_omp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [63 x i8] c"%s: ERROR User-requested thread number = %d is less than zero\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [380 x i8] c"%s: INFO User did not specify thread request > 0 on command line. NCO will automatically assign threads based on OMP_NUM_THREADS environment and machine capabilities.\0AHINT: Not specifying any --thr_nbr (or specifying --thr_nbr=0) causes NCO to try to pick the optimal thread number. Specifying --thr_nbr=1 tells NCO to execute in Uni-Processor (UP) (i.e., single-threaded) mode.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [78 x i8] c"%s: ERROR Attempted to get maximum thread number from within parallel region\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [7 x i8] c"strtol\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [47 x i8] c"%s: INFO Environment variable OMP_NUM_THREADS \00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [6 x i8] c"= %d\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [16 x i8] c"does not exist\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [75 x i8] c"%s: INFO omp_get_num_procs() reports number of processors available is %d\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [86 x i8] c"%s: INFO omp_get_max_threads() reports maximum number of threads system allows is %d\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [44 x i8] c"%s: INFO Command-line requests %d thread%s\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [2 x i8] c"s\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !59
@.str.13 = private unnamed_addr constant [112 x i8] c"%s: INFO Reducing user-requested thread number = %d to maximum thread number omp_get_max_threads() allows = %d\0A\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [69 x i8] c"%s: INFO omp_set_dynamic() used to %s OS to dynamically set threads\0A\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [6 x i8] c"ALLOW\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [9 x i8] c"DISALLOW\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [76 x i8] c"%s: INFO omp_get_dynamic() reports system will%s utilize dynamic threading\0A\00", align 1, !dbg !81
@.str.18 = private unnamed_addr constant [5 x i8] c" NOT\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [121 x i8] c"%s: INFO Reducing default thread number from %d to %d, an operator-dependent \22play-nice\22 number set in nco_openmp_ini()\0A\00", align 1, !dbg !91
@stdout = external global ptr, align 8
@.str.20 = private unnamed_addr constant [1176 x i8] c"%s: WARNING This is TODO nco939. Requested threading with netCDF4 (HDF5) support. The NCO thread request algorithm considers user-input, environment variables, and software and hardware limitations in determining the number of threads to request, thr_nbr_rqs. At this point NCO would request result %d threads from a netCDF3-based library. However, this NCO was built with netCDF4, which relies on HDF5. netCDF4 is not thread-safe unless HDF5 is configured with the (non-default) --enable-threadsafe option. NCO currently has no way to know whether HDF5 was built thread-safe. Hence, all netCDF4-based operators are currently restricted to a single thread. The program will now automatically set thr_nbr_rqs = 1.\0AThis unfortunate limitation is necessary to keep the NCO developers sane. If you want/need threading in netCDF4-based NCO, please politely yet firmly request of the Unidata netCDF developers that better thread support be built into netCDF4, and request of the HDF5 developers that they make the --enable-threadsafe option compatible with all HDF5 libraries and APIs, including Fortran (which, as of HDF5 1.8.0 in 2008, is incompatible with --enable-threadsafe).\0A\00", align 1, !dbg !96
@.str.21 = private unnamed_addr constant [70 x i8] c"%s: ERROR Attempted to set thread number from within parallel region\0A\00", align 1, !dbg !101
@.str.22 = private unnamed_addr constant [97 x i8] c"%s: INFO omp_set_num_threads() used to set execution environment to spawn teams of %d thread(s)\0A\00", align 1, !dbg !106
@.str.23 = private unnamed_addr constant [185 x i8] c"%s: INFO After using omp_set_num_threads() to adjust for any user requests/NCO optimizations, omp_get_max_threads() reports that a parallel construct here/now would spawn %d thread(s)\0A\00", align 1, !dbg !111
@0 = private unnamed_addr constant [34 x i8] c";nco_omp.c;nco_openmp_ini;211;1;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 33, ptr @0 }, align 8
@.str.24 = private unnamed_addr constant [66 x i8] c"%s: INFO Small parallel test region spawned team of %d thread(s)\0A\00", align 1, !dbg !116
@2 = private unnamed_addr constant [34 x i8] c";nco_omp.c;nco_openmp_ini;209;1;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 33, ptr @2 }, align 8
@.str.25 = private unnamed_addr constant [209 x i8] c"%s: WARNING OpenMP threading active with %d threads but not guaranteed to work on this operator. If strange behavior (e.g., NaN results) ensues, manually turn-off multi-threading by specifying \22-t 1\22 option.\0A\00", align 1, !dbg !121
@.str.26 = private unnamed_addr constant [61 x i8] c"%s: INFO main loop thread #%d processing var_prc[%d] = \22%s\22\0A\00", align 1, !dbg !126
@__const.nco_omp_chk.fnc_nm = private unnamed_addr constant [14 x i8] c"nco_omp_chk()\00", align 1
@.str.27 = private unnamed_addr constant [187 x i8] c"%s%s: INFO After using omp_set_num_threads() to adjust for any user requests/NCO optimizations, omp_get_max_threads() reports that a parallel construct here/now would spawn %d thread(s)\0A\00", align 1, !dbg !131
@4 = private unnamed_addr constant [31 x i8] c";nco_omp.c;nco_omp_chk;260;1;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 30, ptr @4 }, align 8
@.str.28 = private unnamed_addr constant [69 x i8] c"%s: %s INFO Small parallel test region spawned team of %d thread(s)\0A\00", align 1, !dbg !136
@6 = private unnamed_addr constant [31 x i8] c";nco_omp.c;nco_omp_chk;258;1;;\00", align 1
@7 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 30, ptr @6 }, align 8
@__const.nco_omp_for_chk.fnc_nm = private unnamed_addr constant [18 x i8] c"nco_omp_for_chk()\00", align 16
@.str.29 = private unnamed_addr constant [188 x i8] c"%s:%s: INFO After using omp_set_num_threads() to adjust for any user requests/NCO optimizations, omp_get_max_threads() reports that a parallel construct here/now would spawn %d thread(s)\0A\00", align 1, !dbg !138
@8 = private unnamed_addr constant [35 x i8] c";nco_omp.c;nco_omp_for_chk;283;1;;\00", align 1
@9 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 34, ptr @8 }, align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"%s: %d %d\0A\00", align 1, !dbg !143
@10 = private unnamed_addr constant [36 x i8] c";nco_omp.c;nco_omp_for_chk;283;38;;\00", align 1
@11 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 35, ptr @10 }, align 8
@12 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 34, ptr @8 }, align 8

; Function Attrs: nounwind uwtable
define i32 @nco_openmp_ini(i32 noundef %thr_nbr) #0 !dbg !195 {
entry:
  %thr_nbr.addr = alloca i32, align 4
  %nvr_OMP_NUM_THREADS = alloca ptr, align 8
  %sng_cnv_rcd = alloca ptr, align 8
  %fp_stderr = alloca ptr, align 8
  %USR_SPC_THR_RQS = alloca i32, align 4
  %dyn_thr = alloca i32, align 4
  %ntg_OMP_NUM_THREADS = alloca i32, align 4
  %prc_nbr_max = alloca i32, align 4
  %thr_nbr_act = alloca i32, align 4
  %thr_nbr_max_fsh = alloca i32, align 4
  %thr_nbr_max = alloca i32, align 4
  %thr_nbr_rqs = alloca i32, align 4
  store i32 %thr_nbr, ptr %thr_nbr.addr, align 4, !tbaa !271
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr.addr, metadata !200, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 8, ptr %nvr_OMP_NUM_THREADS) #6, !dbg !276
  tail call void @llvm.dbg.declare(metadata ptr %nvr_OMP_NUM_THREADS, metadata !201, metadata !DIExpression()), !dbg !277
  call void @llvm.lifetime.start.p0(i64 8, ptr %sng_cnv_rcd) #6, !dbg !278
  tail call void @llvm.dbg.declare(metadata ptr %sng_cnv_rcd, metadata !203, metadata !DIExpression()), !dbg !279
  store ptr null, ptr %sng_cnv_rcd, align 8, !dbg !279, !tbaa !280
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_stderr) #6, !dbg !282
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr, metadata !204, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr @stderr, align 8, !dbg !284, !tbaa !280
  store ptr %0, ptr %fp_stderr, align 8, !dbg !283, !tbaa !280
  call void @llvm.lifetime.start.p0(i64 4, ptr %USR_SPC_THR_RQS) #6, !dbg !285
  tail call void @llvm.dbg.declare(metadata ptr %USR_SPC_THR_RQS, metadata !263, metadata !DIExpression()), !dbg !286
  store i32 0, ptr %USR_SPC_THR_RQS, align 4, !dbg !286, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %dyn_thr) #6, !dbg !287
  tail call void @llvm.dbg.declare(metadata ptr %dyn_thr, metadata !264, metadata !DIExpression()), !dbg !288
  store i32 1, ptr %dyn_thr, align 4, !dbg !288, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %ntg_OMP_NUM_THREADS) #6, !dbg !289
  tail call void @llvm.dbg.declare(metadata ptr %ntg_OMP_NUM_THREADS, metadata !265, metadata !DIExpression()), !dbg !290
  store i32 0, ptr %ntg_OMP_NUM_THREADS, align 4, !dbg !290, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %prc_nbr_max) #6, !dbg !291
  tail call void @llvm.dbg.declare(metadata ptr %prc_nbr_max, metadata !266, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 4, ptr %thr_nbr_act) #6, !dbg !293
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_act, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 4, ptr %thr_nbr_max_fsh) #6, !dbg !295
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_max_fsh, metadata !268, metadata !DIExpression()), !dbg !296
  store i32 4, ptr %thr_nbr_max_fsh, align 4, !dbg !296, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %thr_nbr_max) #6, !dbg !297
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_max, metadata !269, metadata !DIExpression()), !dbg !298
  store i32 0, ptr %thr_nbr_max, align 4, !dbg !298, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %thr_nbr_rqs) #6, !dbg !299
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_rqs, metadata !270, metadata !DIExpression()), !dbg !300
  store i32 0, ptr %thr_nbr_rqs, align 4, !dbg !300, !tbaa !271
  %1 = load i32, ptr %thr_nbr.addr, align 4, !dbg !301, !tbaa !271
  %cmp = icmp slt i32 %1, 0, !dbg !303
  br i1 %cmp, label %if.then, label %if.end, !dbg !304

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fp_stderr, align 8, !dbg !305, !tbaa !280
  %call = call ptr @nco_prg_nm_get(), !dbg !307
  %3 = load i32, ptr %thr_nbr.addr, align 4, !dbg !308, !tbaa !271
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef %call, i32 noundef %3), !dbg !309
  call void @nco_exit(i32 noundef 1), !dbg !310
  br label %if.end, !dbg !311

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %thr_nbr.addr, align 4, !dbg !312, !tbaa !271
  %cmp2 = icmp eq i32 %4, 0, !dbg !314
  br i1 %cmp2, label %if.then3, label %if.end15, !dbg !315

if.then3:                                         ; preds = %if.end
  %call4 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !316
  %conv = zext i16 %call4 to i32, !dbg !316
  %cmp5 = icmp sge i32 %conv, 3, !dbg !318
  br i1 %cmp5, label %land.lhs.true, label %if.end14, !dbg !319

land.lhs.true:                                    ; preds = %if.then3
  %call7 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !320
  %conv8 = zext i16 %call7 to i32, !dbg !320
  %cmp9 = icmp ne i32 %conv8, 12, !dbg !321
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !322

if.then11:                                        ; preds = %land.lhs.true
  %5 = load ptr, ptr %fp_stderr, align 8, !dbg !323, !tbaa !280
  %call12 = call ptr @nco_prg_nm_get(), !dbg !324
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef %call12), !dbg !325
  br label %if.end14, !dbg !326

if.end14:                                         ; preds = %if.then11, %land.lhs.true, %if.then3
  br label %if.end15, !dbg !327

if.end15:                                         ; preds = %if.end14, %if.end
  %6 = load i32, ptr %thr_nbr.addr, align 4, !dbg !328, !tbaa !271
  %cmp16 = icmp sgt i32 %6, 0, !dbg !330
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !331

if.then18:                                        ; preds = %if.end15
  store i32 1, ptr %USR_SPC_THR_RQS, align 4, !dbg !332, !tbaa !271
  br label %if.end19, !dbg !333

if.end19:                                         ; preds = %if.then18, %if.end15
  %call20 = call i32 @omp_get_num_procs(), !dbg !334
  store i32 %call20, ptr %prc_nbr_max, align 4, !dbg !335, !tbaa !271
  %call21 = call i32 @omp_in_parallel(), !dbg !336
  %tobool = icmp ne i32 %call21, 0, !dbg !336
  br i1 %tobool, label %if.then22, label %if.else, !dbg !338

if.then22:                                        ; preds = %if.end19
  %7 = load ptr, ptr %fp_stderr, align 8, !dbg !339, !tbaa !280
  %call23 = call ptr @nco_prg_nm_get(), !dbg !341
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.2, ptr noundef %call23), !dbg !342
  call void @nco_exit(i32 noundef 1), !dbg !343
  br label %if.end26, !dbg !344

if.else:                                          ; preds = %if.end19
  %call25 = call i32 @omp_get_max_threads(), !dbg !345
  store i32 %call25, ptr %thr_nbr_max, align 4, !dbg !347, !tbaa !271
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  %call27 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !348
  %conv28 = zext i16 %call27 to i32, !dbg !348
  %cmp29 = icmp sge i32 %conv28, 3, !dbg !350
  br i1 %cmp29, label %land.lhs.true31, label %if.end62, !dbg !351

land.lhs.true31:                                  ; preds = %if.end26
  %call32 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !352
  %conv33 = zext i16 %call32 to i32, !dbg !352
  %cmp34 = icmp ne i32 %conv33, 12, !dbg !353
  br i1 %cmp34, label %if.then36, label %if.end62, !dbg !354

if.then36:                                        ; preds = %land.lhs.true31
  %call37 = call ptr @getenv(ptr noundef @.str.3) #6, !dbg !355
  store ptr %call37, ptr %nvr_OMP_NUM_THREADS, align 8, !dbg !358, !tbaa !280
  %tobool38 = icmp ne ptr %call37, null, !dbg !358
  br i1 %tobool38, label %if.then39, label %if.end42, !dbg !359

if.then39:                                        ; preds = %if.then36
  %8 = load ptr, ptr %nvr_OMP_NUM_THREADS, align 8, !dbg !360, !tbaa !280
  %call40 = call i64 @strtol(ptr noundef %8, ptr noundef %sng_cnv_rcd, i32 noundef 10) #6, !dbg !361
  %conv41 = trunc i64 %call40 to i32, !dbg !362
  store i32 %conv41, ptr %ntg_OMP_NUM_THREADS, align 4, !dbg !363, !tbaa !271
  br label %if.end42, !dbg !364

if.end42:                                         ; preds = %if.then39, %if.then36
  %9 = load ptr, ptr %nvr_OMP_NUM_THREADS, align 8, !dbg !365, !tbaa !280
  %tobool43 = icmp ne ptr %9, null, !dbg !365
  br i1 %tobool43, label %land.lhs.true44, label %if.end48, !dbg !367

land.lhs.true44:                                  ; preds = %if.end42
  %10 = load ptr, ptr %sng_cnv_rcd, align 8, !dbg !368, !tbaa !280
  %11 = load i8, ptr %10, align 1, !dbg !369, !tbaa !370
  %conv45 = sext i8 %11 to i32, !dbg !369
  %tobool46 = icmp ne i32 %conv45, 0, !dbg !369
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !371

if.then47:                                        ; preds = %land.lhs.true44
  %12 = load ptr, ptr %nvr_OMP_NUM_THREADS, align 8, !dbg !372, !tbaa !280
  %13 = load ptr, ptr %sng_cnv_rcd, align 8, !dbg !373, !tbaa !280
  call void @nco_sng_cnv_err(ptr noundef %12, ptr noundef @.str.4, ptr noundef %13), !dbg !374
  br label %if.end48, !dbg !374

if.end48:                                         ; preds = %if.then47, %land.lhs.true44, %if.end42
  %14 = load ptr, ptr %fp_stderr, align 8, !dbg !375, !tbaa !280
  %call49 = call ptr @nco_prg_nm_get(), !dbg !376
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.5, ptr noundef %call49), !dbg !377
  %15 = load i32, ptr %ntg_OMP_NUM_THREADS, align 4, !dbg !378, !tbaa !271
  %cmp51 = icmp sgt i32 %15, 0, !dbg !380
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !381

if.then53:                                        ; preds = %if.end48
  %16 = load ptr, ptr %fp_stderr, align 8, !dbg !382, !tbaa !280
  %17 = load i32, ptr %ntg_OMP_NUM_THREADS, align 4, !dbg !383, !tbaa !271
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.6, i32 noundef %17), !dbg !384
  br label %if.end57, !dbg !385

if.else55:                                        ; preds = %if.end48
  %18 = load ptr, ptr %fp_stderr, align 8, !dbg !386, !tbaa !280
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.7), !dbg !387
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then53
  %19 = load ptr, ptr %fp_stderr, align 8, !dbg !388, !tbaa !280
  %call58 = call ptr @nco_prg_nm_get(), !dbg !389
  %20 = load i32, ptr %prc_nbr_max, align 4, !dbg !390, !tbaa !271
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.8, ptr noundef %call58, i32 noundef %20), !dbg !391
  %21 = load ptr, ptr %fp_stderr, align 8, !dbg !392, !tbaa !280
  %call60 = call ptr @nco_prg_nm_get(), !dbg !393
  %22 = load i32, ptr %thr_nbr_max, align 4, !dbg !394, !tbaa !271
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.9, ptr noundef %call60, i32 noundef %22), !dbg !395
  br label %if.end62, !dbg !396

if.end62:                                         ; preds = %if.end57, %land.lhs.true31, %if.end26
  %23 = load i32, ptr %USR_SPC_THR_RQS, align 4, !dbg !397, !tbaa !271
  %tobool63 = icmp ne i32 %23, 0, !dbg !397
  br i1 %tobool63, label %if.then64, label %if.else81, !dbg !399

if.then64:                                        ; preds = %if.end62
  %24 = load i32, ptr %thr_nbr.addr, align 4, !dbg !400, !tbaa !271
  store i32 %24, ptr %thr_nbr_rqs, align 4, !dbg !402, !tbaa !271
  %call65 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !403
  %conv66 = zext i16 %call65 to i32, !dbg !403
  %cmp67 = icmp sge i32 %conv66, 3, !dbg !405
  br i1 %cmp67, label %if.then69, label %if.end74, !dbg !406

if.then69:                                        ; preds = %if.then64
  %25 = load ptr, ptr %fp_stderr, align 8, !dbg !407, !tbaa !280
  %call70 = call ptr @nco_prg_nm_get(), !dbg !408
  %26 = load i32, ptr %thr_nbr.addr, align 4, !dbg !409, !tbaa !271
  %27 = load i32, ptr %thr_nbr.addr, align 4, !dbg !410, !tbaa !271
  %cmp71 = icmp sgt i32 %27, 1, !dbg !411
  %28 = zext i1 %cmp71 to i64, !dbg !412
  %cond = select i1 %cmp71, ptr @.str.11, ptr @.str.12, !dbg !412
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.10, ptr noundef %call70, i32 noundef %26, ptr noundef %cond), !dbg !413
  br label %if.end74, !dbg !414

if.end74:                                         ; preds = %if.then69, %if.then64
  %29 = load i32, ptr %thr_nbr.addr, align 4, !dbg !415, !tbaa !271
  %30 = load i32, ptr %thr_nbr_max, align 4, !dbg !417, !tbaa !271
  %cmp75 = icmp sgt i32 %29, %30, !dbg !418
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !419

if.then77:                                        ; preds = %if.end74
  %31 = load ptr, ptr %fp_stderr, align 8, !dbg !420, !tbaa !280
  %call78 = call ptr @nco_prg_nm_get(), !dbg !422
  %32 = load i32, ptr %thr_nbr.addr, align 4, !dbg !423, !tbaa !271
  %33 = load i32, ptr %thr_nbr_max, align 4, !dbg !424, !tbaa !271
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.13, ptr noundef %call78, i32 noundef %32, i32 noundef %33), !dbg !425
  %34 = load i32, ptr %thr_nbr_max, align 4, !dbg !426, !tbaa !271
  store i32 %34, ptr %thr_nbr_rqs, align 4, !dbg !427, !tbaa !271
  br label %if.end80, !dbg !428

if.end80:                                         ; preds = %if.then77, %if.end74
  br label %if.end133, !dbg !429

if.else81:                                        ; preds = %if.end62
  %35 = load i32, ptr %thr_nbr_max, align 4, !dbg !430, !tbaa !271
  store i32 %35, ptr %thr_nbr_rqs, align 4, !dbg !432, !tbaa !271
  %call82 = call i32 @nco_prg_id_get(), !dbg !433
  switch i32 %call82, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb83
    i32 9, label %sw.bb83
    i32 6, label %sw.bb84
    i32 11, label %sw.bb85
    i32 8, label %sw.bb92
    i32 2, label %sw.bb99
    i32 1, label %sw.bb99
    i32 3, label %sw.bb99
    i32 5, label %sw.bb99
    i32 7, label %sw.bb99
    i32 10, label %sw.bb99
    i32 12, label %sw.bb99
  ], !dbg !434

sw.bb:                                            ; preds = %if.else81
  store i32 1, ptr %thr_nbr_max_fsh, align 4, !dbg !435, !tbaa !271
  br label %sw.epilog, !dbg !437

sw.bb83:                                          ; preds = %if.else81, %if.else81
  store i32 1, ptr %thr_nbr_max_fsh, align 4, !dbg !438, !tbaa !271
  br label %sw.epilog, !dbg !439

sw.bb84:                                          ; preds = %if.else81
  store i32 16, ptr %thr_nbr_max_fsh, align 4, !dbg !440, !tbaa !271
  br label %sw.epilog, !dbg !441

sw.bb85:                                          ; preds = %if.else81
  store i32 1, ptr %thr_nbr_max_fsh, align 4, !dbg !442, !tbaa !271
  %call86 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !443
  %conv87 = zext i16 %call86 to i32, !dbg !443
  %cmp88 = icmp sge i32 %conv87, 3, !dbg !445
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !446

if.then90:                                        ; preds = %sw.bb85
  store i32 1, ptr %thr_nbr_max_fsh, align 4, !dbg !447, !tbaa !271
  br label %if.end91, !dbg !448

if.end91:                                         ; preds = %if.then90, %sw.bb85
  br label %sw.epilog, !dbg !449

sw.bb92:                                          ; preds = %if.else81
  store i32 1, ptr %thr_nbr_max_fsh, align 4, !dbg !450, !tbaa !271
  %call93 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !451
  %conv94 = zext i16 %call93 to i32, !dbg !451
  %cmp95 = icmp sge i32 %conv94, 3, !dbg !453
  br i1 %cmp95, label %if.then97, label %if.end98, !dbg !454

if.then97:                                        ; preds = %sw.bb92
  store i32 1, ptr %thr_nbr_max_fsh, align 4, !dbg !455, !tbaa !271
  br label %if.end98, !dbg !456

if.end98:                                         ; preds = %if.then97, %sw.bb92
  br label %sw.epilog, !dbg !457

sw.bb99:                                          ; preds = %if.else81, %if.else81, %if.else81, %if.else81, %if.else81, %if.else81, %if.else81
  store i32 1, ptr %thr_nbr_max_fsh, align 4, !dbg !458, !tbaa !271
  br label %sw.epilog, !dbg !459

sw.default:                                       ; preds = %if.else81
  call void @nco_dfl_case_prg_id_err(), !dbg !460
  br label %sw.epilog, !dbg !461

sw.epilog:                                        ; preds = %sw.default, %sw.bb99, %if.end98, %if.end91, %sw.bb84, %sw.bb83, %sw.bb
  %36 = load i32, ptr %dyn_thr, align 4, !dbg !462, !tbaa !271
  call void @omp_set_dynamic(i32 noundef %36), !dbg !463
  %call100 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !464
  %conv101 = zext i16 %call100 to i32, !dbg !464
  %cmp102 = icmp sge i32 %conv101, 2, !dbg !466
  br i1 %cmp102, label %if.then104, label %if.end109, !dbg !467

if.then104:                                       ; preds = %sw.epilog
  %37 = load ptr, ptr %fp_stderr, align 8, !dbg !468, !tbaa !280
  %call105 = call ptr @nco_prg_nm_get(), !dbg !469
  %38 = load i32, ptr %dyn_thr, align 4, !dbg !470, !tbaa !271
  %tobool106 = icmp ne i32 %38, 0, !dbg !470
  %39 = zext i1 %tobool106 to i64, !dbg !470
  %cond107 = select i1 %tobool106, ptr @.str.15, ptr @.str.16, !dbg !470
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.14, ptr noundef %call105, ptr noundef %cond107), !dbg !471
  br label %if.end109, !dbg !472

if.end109:                                        ; preds = %if.then104, %sw.epilog
  %call110 = call i32 @omp_get_dynamic(), !dbg !473
  store i32 %call110, ptr %dyn_thr, align 4, !dbg !474, !tbaa !271
  %call111 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !475
  %conv112 = zext i16 %call111 to i32, !dbg !475
  %cmp113 = icmp sge i32 %conv112, 2, !dbg !477
  br i1 %cmp113, label %if.then115, label %if.end120, !dbg !478

if.then115:                                       ; preds = %if.end109
  %40 = load ptr, ptr %fp_stderr, align 8, !dbg !479, !tbaa !280
  %call116 = call ptr @nco_prg_nm_get(), !dbg !480
  %41 = load i32, ptr %dyn_thr, align 4, !dbg !481, !tbaa !271
  %tobool117 = icmp ne i32 %41, 0, !dbg !481
  %42 = zext i1 %tobool117 to i64, !dbg !481
  %cond118 = select i1 %tobool117, ptr @.str.12, ptr @.str.18, !dbg !481
  %call119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.17, ptr noundef %call116, ptr noundef %cond118), !dbg !482
  br label %if.end120, !dbg !483

if.end120:                                        ; preds = %if.then115, %if.end109
  %43 = load i32, ptr %thr_nbr_max, align 4, !dbg !484, !tbaa !271
  %44 = load i32, ptr %thr_nbr_max_fsh, align 4, !dbg !486, !tbaa !271
  %cmp121 = icmp sgt i32 %43, %44, !dbg !487
  br i1 %cmp121, label %if.then123, label %if.end132, !dbg !488

if.then123:                                       ; preds = %if.end120
  %call124 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !489
  %conv125 = zext i16 %call124 to i32, !dbg !489
  %cmp126 = icmp sge i32 %conv125, 2, !dbg !492
  br i1 %cmp126, label %if.then128, label %if.end131, !dbg !493

if.then128:                                       ; preds = %if.then123
  %45 = load ptr, ptr %fp_stderr, align 8, !dbg !494, !tbaa !280
  %call129 = call ptr @nco_prg_nm_get(), !dbg !495
  %46 = load i32, ptr %thr_nbr_max, align 4, !dbg !496, !tbaa !271
  %47 = load i32, ptr %thr_nbr_max_fsh, align 4, !dbg !497, !tbaa !271
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.19, ptr noundef %call129, i32 noundef %46, i32 noundef %47), !dbg !498
  br label %if.end131, !dbg !499

if.end131:                                        ; preds = %if.then128, %if.then123
  %48 = load i32, ptr %thr_nbr_max_fsh, align 4, !dbg !500, !tbaa !271
  store i32 %48, ptr %thr_nbr_rqs, align 4, !dbg !501, !tbaa !271
  br label %if.end132, !dbg !502

if.end132:                                        ; preds = %if.end131, %if.end120
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end80
  %call134 = call i32 @nco_prg_id_get(), !dbg !503
  %cmp135 = icmp ne i32 %call134, 6, !dbg !505
  br i1 %cmp135, label %land.lhs.true137, label %if.end159, !dbg !506

land.lhs.true137:                                 ; preds = %if.end133
  %call138 = call i32 @nco_prg_id_get(), !dbg !507
  %cmp139 = icmp ne i32 %call138, 11, !dbg !508
  br i1 %cmp139, label %land.lhs.true141, label %if.end159, !dbg !509

land.lhs.true141:                                 ; preds = %land.lhs.true137
  %call142 = call i32 @nco_prg_id_get(), !dbg !510
  %cmp143 = icmp ne i32 %call142, 8, !dbg !511
  br i1 %cmp143, label %land.lhs.true145, label %if.end159, !dbg !512

land.lhs.true145:                                 ; preds = %land.lhs.true141
  %49 = load i32, ptr %thr_nbr_rqs, align 4, !dbg !513, !tbaa !271
  %cmp146 = icmp sgt i32 %49, 1, !dbg !514
  br i1 %cmp146, label %if.then148, label %if.end159, !dbg !515

if.then148:                                       ; preds = %land.lhs.true145
  %50 = load i32, ptr %USR_SPC_THR_RQS, align 4, !dbg !516, !tbaa !271
  %tobool149 = icmp ne i32 %50, 0, !dbg !516
  br i1 %tobool149, label %land.lhs.true150, label %if.end158, !dbg !519

land.lhs.true150:                                 ; preds = %if.then148
  %call151 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !520
  %conv152 = zext i16 %call151 to i32, !dbg !520
  %cmp153 = icmp sge i32 %conv152, 2, !dbg !521
  br i1 %cmp153, label %if.then155, label %if.end158, !dbg !522

if.then155:                                       ; preds = %land.lhs.true150
  %51 = load ptr, ptr @stdout, align 8, !dbg !523, !tbaa !280
  %call156 = call ptr @nco_prg_nm_get(), !dbg !524
  %52 = load i32, ptr %thr_nbr_rqs, align 4, !dbg !525, !tbaa !271
  %call157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.20, ptr noundef %call156, i32 noundef %52), !dbg !526
  br label %if.end158, !dbg !527

if.end158:                                        ; preds = %if.then155, %land.lhs.true150, %if.then148
  store i32 1, ptr %thr_nbr_rqs, align 4, !dbg !528, !tbaa !271
  br label %if.end159, !dbg !529

if.end159:                                        ; preds = %if.end158, %land.lhs.true145, %land.lhs.true141, %land.lhs.true137, %if.end133
  %call160 = call i32 @omp_in_parallel(), !dbg !530
  %tobool161 = icmp ne i32 %call160, 0, !dbg !530
  br i1 %tobool161, label %if.then162, label %if.else165, !dbg !532

if.then162:                                       ; preds = %if.end159
  %53 = load ptr, ptr %fp_stderr, align 8, !dbg !533, !tbaa !280
  %call163 = call ptr @nco_prg_nm_get(), !dbg !535
  %call164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.21, ptr noundef %call163), !dbg !536
  call void @nco_exit(i32 noundef 1), !dbg !537
  br label %if.end174, !dbg !538

if.else165:                                       ; preds = %if.end159
  %54 = load i32, ptr %thr_nbr_rqs, align 4, !dbg !539, !tbaa !271
  call void @omp_set_num_threads(i32 noundef %54), !dbg !541
  %call166 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !542
  %conv167 = zext i16 %call166 to i32, !dbg !542
  %cmp168 = icmp sge i32 %conv167, 2, !dbg !544
  br i1 %cmp168, label %if.then170, label %if.end173, !dbg !545

if.then170:                                       ; preds = %if.else165
  %55 = load ptr, ptr %fp_stderr, align 8, !dbg !546, !tbaa !280
  %call171 = call ptr @nco_prg_nm_get(), !dbg !547
  %56 = load i32, ptr %thr_nbr_rqs, align 4, !dbg !548, !tbaa !271
  %call172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.22, ptr noundef %call171, i32 noundef %56), !dbg !549
  br label %if.end173, !dbg !550

if.end173:                                        ; preds = %if.then170, %if.else165
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then162
  %call175 = call i32 @omp_get_max_threads(), !dbg !551
  store i32 %call175, ptr %thr_nbr_act, align 4, !dbg !552, !tbaa !271
  %call176 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !553
  %conv177 = zext i16 %call176 to i32, !dbg !553
  %cmp178 = icmp sge i32 %conv177, 3, !dbg !555
  br i1 %cmp178, label %if.then180, label %if.end183, !dbg !556

if.then180:                                       ; preds = %if.end174
  %57 = load ptr, ptr %fp_stderr, align 8, !dbg !557, !tbaa !280
  %call181 = call ptr @nco_prg_nm_get(), !dbg !558
  %58 = load i32, ptr %thr_nbr_act, align 4, !dbg !559, !tbaa !271
  %call182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.23, ptr noundef %call181, i32 noundef %58), !dbg !560
  br label %if.end183, !dbg !561

if.end183:                                        ; preds = %if.then180, %if.end174
  %call184 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !562
  %conv185 = zext i16 %call184 to i32, !dbg !562
  %cmp186 = icmp sge i32 %conv185, 3, !dbg !564
  br i1 %cmp186, label %if.then188, label %if.end189, !dbg !565

if.then188:                                       ; preds = %if.end183
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @3, i32 2, ptr @nco_openmp_ini.omp_outlined, ptr %thr_nbr_act, ptr %fp_stderr), !dbg !566
  br label %if.end189, !dbg !568

if.end189:                                        ; preds = %if.then188, %if.end183
  %call190 = call i32 @nco_prg_id_get(), !dbg !569
  %cmp191 = icmp eq i32 %call190, 11, !dbg !572
  br i1 %cmp191, label %land.lhs.true196, label %lor.lhs.false, !dbg !573

lor.lhs.false:                                    ; preds = %if.end189
  %call193 = call i32 @nco_prg_id_get(), !dbg !574
  %cmp194 = icmp eq i32 %call193, 8, !dbg !575
  br i1 %cmp194, label %land.lhs.true196, label %if.end208, !dbg !576

land.lhs.true196:                                 ; preds = %lor.lhs.false, %if.end189
  %59 = load i32, ptr %thr_nbr_act, align 4, !dbg !577, !tbaa !271
  %cmp197 = icmp sgt i32 %59, 1, !dbg !578
  br i1 %cmp197, label %if.then199, label %if.end208, !dbg !579

if.then199:                                       ; preds = %land.lhs.true196
  %call200 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !580
  %conv201 = zext i16 %call200 to i32, !dbg !580
  %cmp202 = icmp sge i32 %conv201, 2, !dbg !582
  br i1 %cmp202, label %if.then204, label %if.end207, !dbg !583

if.then204:                                       ; preds = %if.then199
  %60 = load ptr, ptr %fp_stderr, align 8, !dbg !584, !tbaa !280
  %call205 = call ptr @nco_prg_nm_get(), !dbg !585
  %61 = load i32, ptr %thr_nbr_act, align 4, !dbg !586, !tbaa !271
  %call206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.25, ptr noundef %call205, i32 noundef %61), !dbg !587
  br label %if.end207, !dbg !588

if.end207:                                        ; preds = %if.then204, %if.then199
  br label %if.end208, !dbg !589

if.end208:                                        ; preds = %if.end207, %land.lhs.true196, %lor.lhs.false
  %62 = load i32, ptr %thr_nbr_act, align 4, !dbg !590, !tbaa !271
  call void @llvm.lifetime.end.p0(i64 4, ptr %thr_nbr_rqs) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %thr_nbr_max) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %thr_nbr_max_fsh) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %thr_nbr_act) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %prc_nbr_max) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %ntg_OMP_NUM_THREADS) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %dyn_thr) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 4, ptr %USR_SPC_THR_RQS) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_stderr) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 8, ptr %sng_cnv_rcd) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 8, ptr %nvr_OMP_NUM_THREADS) #6, !dbg !591
  ret i32 %62, !dbg !592
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !593 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !601 ptr @nco_prg_nm_get() #2

declare !dbg !604 void @nco_exit(i32 noundef) #2

declare !dbg !608 zeroext i16 @nco_dbg_lvl_get() #2

declare !dbg !611 i32 @omp_get_num_procs() #2

declare !dbg !614 i32 @omp_in_parallel() #2

declare !dbg !615 i32 @omp_get_max_threads() #2

; Function Attrs: nounwind
declare !dbg !616 ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !620 i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

declare !dbg !625 void @nco_sng_cnv_err(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !629 i32 @nco_prg_id_get() #2

declare !dbg !630 void @nco_dfl_case_prg_id_err() #2

declare !dbg !633 void @omp_set_dynamic(i32 noundef) #2

declare !dbg !634 i32 @omp_get_dynamic() #2

declare !dbg !635 void @omp_set_num_threads(i32 noundef) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @nco_openmp_ini.omp_outlined_debug__(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %thr_nbr_act, ptr noundef nonnull align 8 dereferenceable(8) %fp_stderr) #4 !dbg !636 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %thr_nbr_act.addr = alloca ptr, align 8
  %fp_stderr.addr = alloca ptr, align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.global_tid..addr, metadata !645, metadata !DIExpression()), !dbg !649
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.bound_tid..addr, metadata !646, metadata !DIExpression()), !dbg !649
  store ptr %thr_nbr_act, ptr %thr_nbr_act.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_act.addr, metadata !647, metadata !DIExpression()), !dbg !650
  store ptr %fp_stderr, ptr %fp_stderr.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr.addr, metadata !648, metadata !DIExpression()), !dbg !651
  %0 = load ptr, ptr %thr_nbr_act.addr, align 8, !dbg !652, !tbaa !280
  %1 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !652, !tbaa !280
  %2 = load ptr, ptr %.global_tid..addr, align 8, !dbg !653
  %3 = load i32, ptr %2, align 4, !dbg !653, !tbaa !271
  %4 = call i32 @__kmpc_single(ptr @1, i32 %3), !dbg !653
  %5 = icmp ne i32 %4, 0, !dbg !653
  br i1 %5, label %omp_if.then, label %omp_if.end, !dbg !653

omp_if.then:                                      ; preds = %entry
  %call = call i32 @omp_get_num_threads(), !dbg !655
  store i32 %call, ptr %0, align 4, !dbg !658, !tbaa !271
  %call1 = call zeroext i16 @nco_dbg_lvl_get(), !dbg !659
  %conv = zext i16 %call1 to i32, !dbg !659
  %cmp = icmp sge i32 %conv, 2, !dbg !661
  br i1 %cmp, label %if.then, label %if.end, !dbg !662

if.then:                                          ; preds = %omp_if.then
  %6 = load ptr, ptr %1, align 8, !dbg !663, !tbaa !280
  %call3 = call ptr @nco_prg_nm_get(), !dbg !664
  %7 = load i32, ptr %0, align 4, !dbg !665, !tbaa !271
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.24, ptr noundef %call3, i32 noundef %7), !dbg !666
  br label %if.end, !dbg !667

if.end:                                           ; preds = %if.then, %omp_if.then
  call void @__kmpc_end_single(ptr @1, i32 %3), !dbg !668
  br label %omp_if.end, !dbg !668

omp_if.end:                                       ; preds = %if.end, %entry
  ret void, !dbg !669
}

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(ptr, i32) #5

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(ptr, i32) #5

declare !dbg !670 i32 @omp_get_num_threads() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @nco_openmp_ini.omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %thr_nbr_act, ptr noundef nonnull align 8 dereferenceable(8) %fp_stderr) #4 !dbg !671 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %thr_nbr_act.addr = alloca ptr, align 8
  %fp_stderr.addr = alloca ptr, align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.global_tid..addr, metadata !673, metadata !DIExpression()), !dbg !677
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.bound_tid..addr, metadata !674, metadata !DIExpression()), !dbg !677
  store ptr %thr_nbr_act, ptr %thr_nbr_act.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_act.addr, metadata !675, metadata !DIExpression()), !dbg !677
  store ptr %fp_stderr, ptr %fp_stderr.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr.addr, metadata !676, metadata !DIExpression()), !dbg !677
  %0 = load ptr, ptr %thr_nbr_act.addr, align 8, !dbg !678, !tbaa !280
  %1 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !678, !tbaa !280
  %2 = load ptr, ptr %.global_tid..addr, align 8, !dbg !678, !tbaa !280
  %3 = load ptr, ptr %.bound_tid..addr, align 8, !dbg !678, !tbaa !280
  %4 = load ptr, ptr %thr_nbr_act.addr, align 8, !dbg !678, !tbaa !280
  %5 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !678, !tbaa !280
  call void @nco_openmp_ini.omp_outlined_debug__(ptr %2, ptr %3, ptr %4, ptr %5) #6, !dbg !678
  ret void, !dbg !678
}

; Function Attrs: nounwind
declare !callback !679 void @__kmpc_fork_call(ptr, i32, ptr, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @nco_var_prc_crr_prn(i32 noundef %idx, ptr noundef %var_nm) #0 !dbg !681 {
entry:
  %idx.addr = alloca i32, align 4
  %var_nm.addr = alloca ptr, align 8
  %rcd = alloca i32, align 4
  store i32 %idx, ptr %idx.addr, align 4, !tbaa !271
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !686, metadata !DIExpression()), !dbg !689
  store ptr %var_nm, ptr %var_nm.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %var_nm.addr, metadata !687, metadata !DIExpression()), !dbg !690
  call void @llvm.lifetime.start.p0(i64 4, ptr %rcd) #6, !dbg !691
  tail call void @llvm.dbg.declare(metadata ptr %rcd, metadata !688, metadata !DIExpression()), !dbg !692
  store i32 0, ptr %rcd, align 4, !dbg !692, !tbaa !271
  %0 = load ptr, ptr @stderr, align 8, !dbg !693, !tbaa !280
  %call = call ptr @nco_prg_nm_get(), !dbg !694
  %call1 = call i32 @omp_get_thread_num(), !dbg !695
  %1 = load i32, ptr %idx.addr, align 4, !dbg !696, !tbaa !271
  %2 = load ptr, ptr %var_nm.addr, align 8, !dbg !697, !tbaa !280
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.26, ptr noundef %call, i32 noundef %call1, i32 noundef %1, ptr noundef %2), !dbg !698
  %3 = load i32, ptr %rcd, align 4, !dbg !699, !tbaa !271
  call void @llvm.lifetime.end.p0(i64 4, ptr %rcd) #6, !dbg !700
  ret i32 %3, !dbg !701
}

declare !dbg !702 i32 @omp_get_thread_num() #2

; Function Attrs: nounwind uwtable
define void @nco_omp_chk(ptr noundef %smsg) #0 !dbg !703 {
entry:
  %smsg.addr = alloca ptr, align 8
  %fnc_nm = alloca [14 x i8], align 1
  %thr_nbr_act = alloca i32, align 4
  %fp_stderr = alloca ptr, align 8
  store ptr %smsg, ptr %smsg.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %smsg.addr, metadata !707, metadata !DIExpression()), !dbg !714
  call void @llvm.lifetime.start.p0(i64 14, ptr %fnc_nm) #6, !dbg !715
  tail call void @llvm.dbg.declare(metadata ptr %fnc_nm, metadata !708, metadata !DIExpression()), !dbg !716
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fnc_nm, ptr align 1 @__const.nco_omp_chk.fnc_nm, i64 14, i1 false), !dbg !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %thr_nbr_act) #6, !dbg !717
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_act, metadata !712, metadata !DIExpression()), !dbg !718
  %call = call i32 @omp_get_max_threads(), !dbg !719
  store i32 %call, ptr %thr_nbr_act, align 4, !dbg !718, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_stderr) #6, !dbg !720
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr, metadata !713, metadata !DIExpression()), !dbg !721
  %0 = load ptr, ptr @stderr, align 8, !dbg !722, !tbaa !280
  store ptr %0, ptr %fp_stderr, align 8, !dbg !721, !tbaa !280
  %1 = load ptr, ptr %fp_stderr, align 8, !dbg !723, !tbaa !280
  %arraydecay = getelementptr inbounds [14 x i8], ptr %fnc_nm, i64 0, i64 0, !dbg !724
  %2 = load ptr, ptr %smsg.addr, align 8, !dbg !725, !tbaa !280
  %3 = load i32, ptr %thr_nbr_act, align 4, !dbg !726, !tbaa !271
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.27, ptr noundef %arraydecay, ptr noundef %2, i32 noundef %3), !dbg !727
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @7, i32 4, ptr @nco_omp_chk.omp_outlined, ptr %thr_nbr_act, ptr %fp_stderr, ptr %fnc_nm, ptr %smsg.addr), !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_stderr) #6, !dbg !729
  call void @llvm.lifetime.end.p0(i64 4, ptr %thr_nbr_act) #6, !dbg !729
  call void @llvm.lifetime.end.p0(i64 14, ptr %fnc_nm) #6, !dbg !729
  ret void, !dbg !729
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @nco_omp_chk.omp_outlined_debug__(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %thr_nbr_act, ptr noundef nonnull align 8 dereferenceable(8) %fp_stderr, ptr noundef nonnull align 1 dereferenceable(14) %fnc_nm, ptr noundef nonnull align 8 dereferenceable(8) %smsg) #4 !dbg !730 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %thr_nbr_act.addr = alloca ptr, align 8
  %fp_stderr.addr = alloca ptr, align 8
  %fnc_nm.addr = alloca ptr, align 8
  %smsg.addr = alloca ptr, align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.global_tid..addr, metadata !737, metadata !DIExpression()), !dbg !743
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.bound_tid..addr, metadata !738, metadata !DIExpression()), !dbg !743
  store ptr %thr_nbr_act, ptr %thr_nbr_act.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_act.addr, metadata !739, metadata !DIExpression()), !dbg !744
  store ptr %fp_stderr, ptr %fp_stderr.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr.addr, metadata !740, metadata !DIExpression()), !dbg !745
  store ptr %fnc_nm, ptr %fnc_nm.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fnc_nm.addr, metadata !741, metadata !DIExpression()), !dbg !746
  store ptr %smsg, ptr %smsg.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %smsg.addr, metadata !742, metadata !DIExpression()), !dbg !747
  %0 = load ptr, ptr %thr_nbr_act.addr, align 8, !dbg !748, !tbaa !280
  %1 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !748, !tbaa !280
  %2 = load ptr, ptr %fnc_nm.addr, align 8, !dbg !748, !tbaa !280
  %3 = load ptr, ptr %smsg.addr, align 8, !dbg !748, !tbaa !280
  %4 = load ptr, ptr %.global_tid..addr, align 8, !dbg !749
  %5 = load i32, ptr %4, align 4, !dbg !749, !tbaa !271
  %6 = call i32 @__kmpc_single(ptr @5, i32 %5), !dbg !749
  %7 = icmp ne i32 %6, 0, !dbg !749
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !749

omp_if.then:                                      ; preds = %entry
  %call = call i32 @omp_get_num_threads(), !dbg !751
  store i32 %call, ptr %0, align 4, !dbg !754, !tbaa !271
  %8 = load ptr, ptr %1, align 8, !dbg !755, !tbaa !280
  %arraydecay = getelementptr inbounds [14 x i8], ptr %2, i64 0, i64 0, !dbg !756
  %9 = load ptr, ptr %3, align 8, !dbg !757, !tbaa !280
  %10 = load i32, ptr %0, align 4, !dbg !758, !tbaa !271
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.28, ptr noundef %arraydecay, ptr noundef %9, i32 noundef %10), !dbg !759
  call void @__kmpc_end_single(ptr @5, i32 %5), !dbg !760
  br label %omp_if.end, !dbg !760

omp_if.end:                                       ; preds = %omp_if.then, %entry
  ret void, !dbg !761
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @nco_omp_chk.omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %thr_nbr_act, ptr noundef nonnull align 8 dereferenceable(8) %fp_stderr, ptr noundef nonnull align 1 dereferenceable(14) %fnc_nm, ptr noundef nonnull align 8 dereferenceable(8) %smsg) #4 !dbg !762 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %thr_nbr_act.addr = alloca ptr, align 8
  %fp_stderr.addr = alloca ptr, align 8
  %fnc_nm.addr = alloca ptr, align 8
  %smsg.addr = alloca ptr, align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.global_tid..addr, metadata !764, metadata !DIExpression()), !dbg !770
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.bound_tid..addr, metadata !765, metadata !DIExpression()), !dbg !770
  store ptr %thr_nbr_act, ptr %thr_nbr_act.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_act.addr, metadata !766, metadata !DIExpression()), !dbg !770
  store ptr %fp_stderr, ptr %fp_stderr.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr.addr, metadata !767, metadata !DIExpression()), !dbg !770
  store ptr %fnc_nm, ptr %fnc_nm.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fnc_nm.addr, metadata !768, metadata !DIExpression()), !dbg !770
  store ptr %smsg, ptr %smsg.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %smsg.addr, metadata !769, metadata !DIExpression()), !dbg !770
  %0 = load ptr, ptr %thr_nbr_act.addr, align 8, !dbg !771, !tbaa !280
  %1 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !771, !tbaa !280
  %2 = load ptr, ptr %fnc_nm.addr, align 8, !dbg !771, !tbaa !280
  %3 = load ptr, ptr %smsg.addr, align 8, !dbg !771, !tbaa !280
  %4 = load ptr, ptr %.global_tid..addr, align 8, !dbg !771, !tbaa !280
  %5 = load ptr, ptr %.bound_tid..addr, align 8, !dbg !771, !tbaa !280
  %6 = load ptr, ptr %thr_nbr_act.addr, align 8, !dbg !771, !tbaa !280
  %7 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !771, !tbaa !280
  %8 = load ptr, ptr %fnc_nm.addr, align 8, !dbg !771, !tbaa !280
  %9 = load ptr, ptr %smsg.addr, align 8, !dbg !771, !tbaa !280
  call void @nco_omp_chk.omp_outlined_debug__(ptr %4, ptr %5, ptr %6, ptr %7, ptr %8, ptr %9) #6, !dbg !771
  ret void, !dbg !771
}

; Function Attrs: nounwind uwtable
define void @nco_omp_for_chk(ptr noundef %smsg) #0 !dbg !772 {
entry:
  %smsg.addr = alloca ptr, align 8
  %fnc_nm = alloca [18 x i8], align 16
  %thr_nbr_act = alloca i32, align 4
  %idx = alloca i32, align 4
  %cnt = alloca i32, align 4
  %fp_stderr = alloca ptr, align 8
  store ptr %smsg, ptr %smsg.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %smsg.addr, metadata !774, metadata !DIExpression()), !dbg !783
  call void @llvm.lifetime.start.p0(i64 18, ptr %fnc_nm) #6, !dbg !784
  tail call void @llvm.dbg.declare(metadata ptr %fnc_nm, metadata !775, metadata !DIExpression()), !dbg !785
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %fnc_nm, ptr align 16 @__const.nco_omp_for_chk.fnc_nm, i64 18, i1 false), !dbg !785
  call void @llvm.lifetime.start.p0(i64 4, ptr %thr_nbr_act) #6, !dbg !786
  tail call void @llvm.dbg.declare(metadata ptr %thr_nbr_act, metadata !779, metadata !DIExpression()), !dbg !787
  %call = call i32 @omp_get_max_threads(), !dbg !788
  store i32 %call, ptr %thr_nbr_act, align 4, !dbg !787, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #6, !dbg !789
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !780, metadata !DIExpression()), !dbg !790
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #6, !dbg !791
  tail call void @llvm.dbg.declare(metadata ptr %cnt, metadata !781, metadata !DIExpression()), !dbg !792
  store i32 10, ptr %cnt, align 4, !dbg !792, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp_stderr) #6, !dbg !793
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr, metadata !782, metadata !DIExpression()), !dbg !794
  %0 = load ptr, ptr @stderr, align 8, !dbg !795, !tbaa !280
  store ptr %0, ptr %fp_stderr, align 8, !dbg !794, !tbaa !280
  %1 = load ptr, ptr %fp_stderr, align 8, !dbg !796, !tbaa !280
  %arraydecay = getelementptr inbounds [18 x i8], ptr %fnc_nm, i64 0, i64 0, !dbg !797
  %2 = load ptr, ptr %smsg.addr, align 8, !dbg !798, !tbaa !280
  %3 = load i32, ptr %thr_nbr_act, align 4, !dbg !799, !tbaa !271
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.29, ptr noundef %arraydecay, ptr noundef %2, i32 noundef %3), !dbg !800
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr @12, i32 3, ptr @nco_omp_for_chk.omp_outlined, ptr %cnt, ptr %fp_stderr, ptr %fnc_nm), !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp_stderr) #6, !dbg !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #6, !dbg !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #6, !dbg !802
  call void @llvm.lifetime.end.p0(i64 4, ptr %thr_nbr_act) #6, !dbg !802
  call void @llvm.lifetime.end.p0(i64 18, ptr %fnc_nm) #6, !dbg !802
  ret void, !dbg !802
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @nco_omp_for_chk.omp_outlined_debug__(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %cnt, ptr noundef nonnull align 8 dereferenceable(8) %fp_stderr, ptr noundef nonnull align 1 dereferenceable(18) %fnc_nm) #4 !dbg !803 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %cnt.addr = alloca ptr, align 8
  %fp_stderr.addr = alloca ptr, align 8
  %fnc_nm.addr = alloca ptr, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %idx = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %idx3 = alloca i32, align 4
  %idx4 = alloca i32, align 4
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.global_tid..addr, metadata !808, metadata !DIExpression()), !dbg !820
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.bound_tid..addr, metadata !809, metadata !DIExpression()), !dbg !820
  store ptr %cnt, ptr %cnt.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !810, metadata !DIExpression()), !dbg !821
  store ptr %fp_stderr, ptr %fp_stderr.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr.addr, metadata !811, metadata !DIExpression()), !dbg !822
  store ptr %fnc_nm, ptr %fnc_nm.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fnc_nm.addr, metadata !812, metadata !DIExpression()), !dbg !823
  %0 = load ptr, ptr %cnt.addr, align 8, !dbg !824, !tbaa !280
  %1 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !824, !tbaa !280
  %2 = load ptr, ptr %fnc_nm.addr, align 8, !dbg !824, !tbaa !280
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.iv) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %.omp.iv, metadata !813, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 4, ptr %.capture_expr.) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %.capture_expr., metadata !814, metadata !DIExpression()), !dbg !820
  %3 = load i32, ptr %0, align 4, !dbg !825, !tbaa !271
  store i32 %3, ptr %.capture_expr., align 4, !dbg !825, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %.capture_expr.1) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %.capture_expr.1, metadata !814, metadata !DIExpression()), !dbg !820
  %4 = load i32, ptr %.capture_expr., align 4, !dbg !825, !tbaa !271
  %sub = sub nsw i32 %4, 0, !dbg !824
  %div = sdiv i32 %sub, 1, !dbg !824
  %sub2 = sub nsw i32 %div, 1, !dbg !824
  store i32 %sub2, ptr %.capture_expr.1, align 4, !dbg !824, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !815, metadata !DIExpression()), !dbg !820
  store i32 0, ptr %idx, align 4, !dbg !826, !tbaa !271
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #6, !dbg !824
  %5 = load i32, ptr %.capture_expr., align 4, !dbg !825, !tbaa !271
  %cmp = icmp slt i32 0, %5, !dbg !824
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !824

omp.precond.then:                                 ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.lb) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %.omp.lb, metadata !816, metadata !DIExpression()), !dbg !820
  store i32 0, ptr %.omp.lb, align 4, !dbg !827, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.ub) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %.omp.ub, metadata !817, metadata !DIExpression()), !dbg !820
  %6 = load i32, ptr %.capture_expr.1, align 4, !dbg !824, !tbaa !271
  store i32 %6, ptr %.omp.ub, align 4, !dbg !827, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.stride) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %.omp.stride, metadata !818, metadata !DIExpression()), !dbg !820
  store i32 1, ptr %.omp.stride, align 4, !dbg !827, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %.omp.is_last) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %.omp.is_last, metadata !819, metadata !DIExpression()), !dbg !820
  store i32 0, ptr %.omp.is_last, align 4, !dbg !827, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx3) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %idx3, metadata !815, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx4) #6, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %idx4, metadata !815, metadata !DIExpression()), !dbg !820
  %7 = load ptr, ptr %.global_tid..addr, align 8, !dbg !824
  %8 = load i32, ptr %7, align 4, !dbg !824, !tbaa !271
  call void @__kmpc_for_static_init_4(ptr @9, i32 %8, i32 34, ptr %.omp.is_last, ptr %.omp.lb, ptr %.omp.ub, ptr %.omp.stride, i32 1, i32 1), !dbg !828
  %9 = load i32, ptr %.omp.ub, align 4, !dbg !827, !tbaa !271
  %10 = load i32, ptr %.capture_expr.1, align 4, !dbg !824, !tbaa !271
  %cmp5 = icmp sgt i32 %9, %10, !dbg !827
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !827

cond.true:                                        ; preds = %omp.precond.then
  %11 = load i32, ptr %.capture_expr.1, align 4, !dbg !824, !tbaa !271
  br label %cond.end, !dbg !827

cond.false:                                       ; preds = %omp.precond.then
  %12 = load i32, ptr %.omp.ub, align 4, !dbg !827, !tbaa !271
  br label %cond.end, !dbg !827

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !827
  store i32 %cond, ptr %.omp.ub, align 4, !dbg !827, !tbaa !271
  %13 = load i32, ptr %.omp.lb, align 4, !dbg !827, !tbaa !271
  store i32 %13, ptr %.omp.iv, align 4, !dbg !827, !tbaa !271
  br label %omp.inner.for.cond, !dbg !824

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, ptr %.omp.iv, align 4, !dbg !827, !tbaa !271
  %15 = load i32, ptr %.omp.ub, align 4, !dbg !827, !tbaa !271
  %cmp6 = icmp sle i32 %14, %15, !dbg !824
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !824

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !824

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, ptr %.omp.iv, align 4, !dbg !827, !tbaa !271
  %mul = mul nsw i32 %16, 1, !dbg !826
  %add = add nsw i32 0, %mul, !dbg !826
  store i32 %add, ptr %idx3, align 4, !dbg !826, !tbaa !271
  %17 = load ptr, ptr %1, align 8, !dbg !829, !tbaa !280
  %arraydecay = getelementptr inbounds [18 x i8], ptr %2, i64 0, i64 0, !dbg !830
  %18 = load i32, ptr %idx3, align 4, !dbg !831, !tbaa !271
  %call = call i32 @omp_get_thread_num(), !dbg !832
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.30, ptr noundef %arraydecay, i32 noundef %18, i32 noundef %call), !dbg !833
  br label %omp.body.continue, !dbg !834

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !828

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, ptr %.omp.iv, align 4, !dbg !827, !tbaa !271
  %add8 = add nsw i32 %19, 1, !dbg !824
  store i32 %add8, ptr %.omp.iv, align 4, !dbg !824, !tbaa !271
  br label %omp.inner.for.cond, !dbg !828, !llvm.loop !835

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !828

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = load ptr, ptr %.global_tid..addr, align 8, !dbg !828
  %21 = load i32, ptr %20, align 4, !dbg !828, !tbaa !271
  call void @__kmpc_for_static_fini(ptr @11, i32 %21), !dbg !836
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx4) #6, !dbg !828
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx3) #6, !dbg !828
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.is_last) #6, !dbg !828
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.stride) #6, !dbg !828
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.ub) #6, !dbg !828
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.lb) #6, !dbg !828
  br label %omp.precond.end, !dbg !828

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %.capture_expr.1) #6, !dbg !828
  call void @llvm.lifetime.end.p0(i64 4, ptr %.capture_expr.) #6, !dbg !828
  call void @llvm.lifetime.end.p0(i64 4, ptr %.omp.iv) #6, !dbg !828
  ret void, !dbg !837
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @nco_omp_for_chk.omp_outlined(ptr noalias noundef %.global_tid., ptr noalias noundef %.bound_tid., ptr noundef nonnull align 4 dereferenceable(4) %cnt, ptr noundef nonnull align 8 dereferenceable(8) %fp_stderr, ptr noundef nonnull align 1 dereferenceable(18) %fnc_nm) #4 !dbg !838 {
entry:
  %.global_tid..addr = alloca ptr, align 8
  %.bound_tid..addr = alloca ptr, align 8
  %cnt.addr = alloca ptr, align 8
  %fp_stderr.addr = alloca ptr, align 8
  %fnc_nm.addr = alloca ptr, align 8
  store ptr %.global_tid., ptr %.global_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.global_tid..addr, metadata !840, metadata !DIExpression()), !dbg !845
  store ptr %.bound_tid., ptr %.bound_tid..addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %.bound_tid..addr, metadata !841, metadata !DIExpression()), !dbg !845
  store ptr %cnt, ptr %cnt.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !842, metadata !DIExpression()), !dbg !845
  store ptr %fp_stderr, ptr %fp_stderr.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fp_stderr.addr, metadata !843, metadata !DIExpression()), !dbg !845
  store ptr %fnc_nm, ptr %fnc_nm.addr, align 8, !tbaa !280
  tail call void @llvm.dbg.declare(metadata ptr %fnc_nm.addr, metadata !844, metadata !DIExpression()), !dbg !845
  %0 = load ptr, ptr %cnt.addr, align 8, !dbg !846, !tbaa !280
  %1 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !846, !tbaa !280
  %2 = load ptr, ptr %fnc_nm.addr, align 8, !dbg !846, !tbaa !280
  %3 = load ptr, ptr %.global_tid..addr, align 8, !dbg !846, !tbaa !280
  %4 = load ptr, ptr %.bound_tid..addr, align 8, !dbg !846, !tbaa !280
  %5 = load ptr, ptr %cnt.addr, align 8, !dbg !846, !tbaa !280
  %6 = load ptr, ptr %fp_stderr.addr, align 8, !dbg !846, !tbaa !280
  %7 = load ptr, ptr %fnc_nm.addr, align 8, !dbg !846, !tbaa !280
  call void @nco_omp_for_chk.omp_outlined_debug__(ptr %3, ptr %4, ptr %5, ptr %6, ptr %7) #6, !dbg !846
  ret void, !dbg !846
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!148}
!llvm.module.flags = !{!188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "nco_omp.c", directory: "/local-ssd/nco-sz3tspkp5snjjx4xkjuuma7nkymdp3lp-build/aidengro/spack-stage-nco-5.1.6-sz3tspkp5snjjx4xkjuuma7nkymdp3lp/spack-src/src/nco", checksumkind: CSK_MD5, checksum: "4d91f0fe40c7a1fdc4ebb7e356126a37")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 63)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3040, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 380)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 624, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 78)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 16)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 7)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 47)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !19, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 75)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 688, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 86)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 44)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 2)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 1)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 896, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 112)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 69)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !34, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 9)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 76)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 5)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 182, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 968, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 121)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 189, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 9408, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1176)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 560, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 70)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 776, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 97)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 185)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 214, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 66)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1672, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 209)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 61)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1496, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 187)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !71, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1504, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 188)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 11)
!148 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !185, globals: !187, splitDebugInlining: false, nameTableKind: None)
!149 = !{!150, !169}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nco_dbg_typ_enm", file: !151, line: 687, baseType: !152, size: 32, elements: !153)
!151 = !DIFile(filename: "./nco.h", directory: "/local-ssd/nco-sz3tspkp5snjjx4xkjuuma7nkymdp3lp-build/aidengro/spack-stage-nco-5.1.6-sz3tspkp5snjjx4xkjuuma7nkymdp3lp/spack-src/src/nco", checksumkind: CSK_MD5, checksum: "0340887c94ed7a88d98f42bc8aee20f6")
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!154 = !DIEnumerator(name: "nco_dbg_quiet", value: 0)
!155 = !DIEnumerator(name: "nco_dbg_std", value: 1)
!156 = !DIEnumerator(name: "nco_dbg_fl", value: 2)
!157 = !DIEnumerator(name: "nco_dbg_scl", value: 3)
!158 = !DIEnumerator(name: "nco_dbg_grp", value: 4)
!159 = !DIEnumerator(name: "nco_dbg_var", value: 5)
!160 = !DIEnumerator(name: "nco_dbg_crr", value: 6)
!161 = !DIEnumerator(name: "nco_dbg_sbr", value: 7)
!162 = !DIEnumerator(name: "nco_dbg_io", value: 8)
!163 = !DIEnumerator(name: "nco_dbg_vec", value: 9)
!164 = !DIEnumerator(name: "nco_dbg_vrb", value: 10)
!165 = !DIEnumerator(name: "nco_dbg_old", value: 11)
!166 = !DIEnumerator(name: "nco_dbg_dev", value: 12)
!167 = !DIEnumerator(name: "nco_dbg_sup", value: 13)
!168 = !DIEnumerator(name: "nco_dbg_nbr", value: 14)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nco_prg_id", file: !151, line: 670, baseType: !152, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!171 = !DIEnumerator(name: "ncap", value: 0)
!172 = !DIEnumerator(name: "ncatted", value: 1)
!173 = !DIEnumerator(name: "ncbo", value: 2)
!174 = !DIEnumerator(name: "ncfe", value: 3)
!175 = !DIEnumerator(name: "ncecat", value: 4)
!176 = !DIEnumerator(name: "ncflint", value: 5)
!177 = !DIEnumerator(name: "ncks", value: 6)
!178 = !DIEnumerator(name: "ncpdq", value: 7)
!179 = !DIEnumerator(name: "ncra", value: 8)
!180 = !DIEnumerator(name: "ncrcat", value: 9)
!181 = !DIEnumerator(name: "ncrename", value: 10)
!182 = !DIEnumerator(name: "ncwa", value: 11)
!183 = !DIEnumerator(name: "ncge", value: 12)
!184 = !DIEnumerator(name: "ncmv", value: 13)
!185 = !{!186}
!186 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!187 = !{!0, !7, !12, !17, !22, !27, !32, !37, !39, !44, !49, !54, !59, !64, !69, !74, !76, !81, !86, !91, !96, !101, !106, !111, !116, !121, !126, !131, !136, !138, !143}
!188 = !{i32 7, !"Dwarf Version", i32 5}
!189 = !{i32 2, !"Debug Info Version", i32 3}
!190 = !{i32 1, !"wchar_size", i32 4}
!191 = !{i32 7, !"openmp", i32 51}
!192 = !{i32 8, !"PIC Level", i32 2}
!193 = !{i32 7, !"uwtable", i32 2}
!194 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!195 = distinct !DISubprogram(name: "nco_openmp_ini", scope: !2, file: !2, line: 30, type: !196, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !199)
!196 = !DISubroutineType(types: !197)
!197 = !{!186, !198}
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!199 = !{!200, !201, !203, !204, !263, !264, !265, !266, !267, !268, !269, !270}
!200 = !DILocalVariable(name: "thr_nbr", arg: 1, scope: !195, file: !2, line: 31, type: !198)
!201 = !DILocalVariable(name: "nvr_OMP_NUM_THREADS", scope: !195, file: !2, line: 47, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!203 = !DILocalVariable(name: "sng_cnv_rcd", scope: !195, file: !2, line: 48, type: !202)
!204 = !DILocalVariable(name: "fp_stderr", scope: !195, file: !2, line: 49, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !208, line: 7, baseType: !209)
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !210, line: 49, size: 1728, elements: !211)
!210 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !227, !229, !230, !231, !235, !237, !239, !240, !243, !245, !248, !251, !252, !254, !258, !259}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !209, file: !210, line: 51, baseType: !186, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !209, file: !210, line: 54, baseType: !202, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !209, file: !210, line: 55, baseType: !202, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !209, file: !210, line: 56, baseType: !202, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !209, file: !210, line: 57, baseType: !202, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !209, file: !210, line: 58, baseType: !202, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !209, file: !210, line: 59, baseType: !202, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !209, file: !210, line: 60, baseType: !202, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !209, file: !210, line: 61, baseType: !202, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !209, file: !210, line: 64, baseType: !202, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !209, file: !210, line: 65, baseType: !202, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !209, file: !210, line: 66, baseType: !202, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !209, file: !210, line: 68, baseType: !225, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !210, line: 36, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !209, file: !210, line: 70, baseType: !228, size: 64, offset: 832)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !209, file: !210, line: 72, baseType: !186, size: 32, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !209, file: !210, line: 73, baseType: !186, size: 32, offset: 928)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !209, file: !210, line: 74, baseType: !232, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !233, line: 152, baseType: !234)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!234 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !209, file: !210, line: 77, baseType: !236, size: 16, offset: 1024)
!236 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !209, file: !210, line: 78, baseType: !238, size: 8, offset: 1040)
!238 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !209, file: !210, line: 79, baseType: !61, size: 8, offset: 1048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !209, file: !210, line: 81, baseType: !241, size: 64, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !210, line: 43, baseType: null)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !209, file: !210, line: 89, baseType: !244, size: 64, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !233, line: 153, baseType: !234)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !209, file: !210, line: 91, baseType: !246, size: 64, offset: 1216)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !210, line: 37, flags: DIFlagFwdDecl)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !209, file: !210, line: 92, baseType: !249, size: 64, offset: 1280)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !210, line: 38, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !209, file: !210, line: 93, baseType: !228, size: 64, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !209, file: !210, line: 94, baseType: !253, size: 64, offset: 1408)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !209, file: !210, line: 95, baseType: !255, size: 64, offset: 1472)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !256, line: 70, baseType: !257)
!256 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!257 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !209, file: !210, line: 96, baseType: !186, size: 32, offset: 1536)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !209, file: !210, line: 98, baseType: !260, size: 160, offset: 1568)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 20)
!263 = !DILocalVariable(name: "USR_SPC_THR_RQS", scope: !195, file: !2, line: 51, type: !186)
!264 = !DILocalVariable(name: "dyn_thr", scope: !195, file: !2, line: 53, type: !186)
!265 = !DILocalVariable(name: "ntg_OMP_NUM_THREADS", scope: !195, file: !2, line: 55, type: !186)
!266 = !DILocalVariable(name: "prc_nbr_max", scope: !195, file: !2, line: 56, type: !186)
!267 = !DILocalVariable(name: "thr_nbr_act", scope: !195, file: !2, line: 57, type: !186)
!268 = !DILocalVariable(name: "thr_nbr_max_fsh", scope: !195, file: !2, line: 58, type: !186)
!269 = !DILocalVariable(name: "thr_nbr_max", scope: !195, file: !2, line: 59, type: !186)
!270 = !DILocalVariable(name: "thr_nbr_rqs", scope: !195, file: !2, line: 60, type: !186)
!271 = !{!272, !272, i64 0}
!272 = !{!"int", !273, i64 0}
!273 = !{!"omnipotent char", !274, i64 0}
!274 = !{!"Simple C/C++ TBAA"}
!275 = !DILocation(line: 31, column: 12, scope: !195)
!276 = !DILocation(line: 47, column: 3, scope: !195)
!277 = !DILocation(line: 47, column: 9, scope: !195)
!278 = !DILocation(line: 48, column: 3, scope: !195)
!279 = !DILocation(line: 48, column: 9, scope: !195)
!280 = !{!281, !281, i64 0}
!281 = !{!"any pointer", !273, i64 0}
!282 = !DILocation(line: 49, column: 3, scope: !195)
!283 = !DILocation(line: 49, column: 16, scope: !195)
!284 = !DILocation(line: 49, column: 26, scope: !195)
!285 = !DILocation(line: 51, column: 3, scope: !195)
!286 = !DILocation(line: 51, column: 12, scope: !195)
!287 = !DILocation(line: 53, column: 3, scope: !195)
!288 = !DILocation(line: 53, column: 7, scope: !195)
!289 = !DILocation(line: 55, column: 3, scope: !195)
!290 = !DILocation(line: 55, column: 7, scope: !195)
!291 = !DILocation(line: 56, column: 3, scope: !195)
!292 = !DILocation(line: 56, column: 7, scope: !195)
!293 = !DILocation(line: 57, column: 3, scope: !195)
!294 = !DILocation(line: 57, column: 7, scope: !195)
!295 = !DILocation(line: 58, column: 3, scope: !195)
!296 = !DILocation(line: 58, column: 7, scope: !195)
!297 = !DILocation(line: 59, column: 3, scope: !195)
!298 = !DILocation(line: 59, column: 7, scope: !195)
!299 = !DILocation(line: 60, column: 3, scope: !195)
!300 = !DILocation(line: 60, column: 7, scope: !195)
!301 = !DILocation(line: 75, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !195, file: !2, line: 75, column: 6)
!303 = !DILocation(line: 75, column: 14, scope: !302)
!304 = !DILocation(line: 75, column: 6, scope: !195)
!305 = !DILocation(line: 76, column: 19, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !2, line: 75, column: 18)
!307 = !DILocation(line: 76, column: 95, scope: !306)
!308 = !DILocation(line: 76, column: 112, scope: !306)
!309 = !DILocation(line: 76, column: 11, scope: !306)
!310 = !DILocation(line: 77, column: 5, scope: !306)
!311 = !DILocation(line: 78, column: 3, scope: !306)
!312 = !DILocation(line: 80, column: 6, scope: !313)
!313 = distinct !DILexicalBlock(scope: !195, file: !2, line: 80, column: 6)
!314 = !DILocation(line: 80, column: 14, scope: !313)
!315 = !DILocation(line: 80, column: 6, scope: !195)
!316 = !DILocation(line: 81, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !2, line: 81, column: 8)
!318 = !DILocation(line: 81, column: 26, scope: !317)
!319 = !DILocation(line: 81, column: 41, scope: !317)
!320 = !DILocation(line: 81, column: 44, scope: !317)
!321 = !DILocation(line: 81, column: 62, scope: !317)
!322 = !DILocation(line: 81, column: 8, scope: !313)
!323 = !DILocation(line: 82, column: 21, scope: !317)
!324 = !DILocation(line: 82, column: 415, scope: !317)
!325 = !DILocation(line: 82, column: 13, scope: !317)
!326 = !DILocation(line: 82, column: 7, scope: !317)
!327 = !DILocation(line: 81, column: 65, scope: !317)
!328 = !DILocation(line: 84, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !195, file: !2, line: 84, column: 6)
!330 = !DILocation(line: 84, column: 14, scope: !329)
!331 = !DILocation(line: 84, column: 6, scope: !195)
!332 = !DILocation(line: 84, column: 34, scope: !329)
!333 = !DILocation(line: 84, column: 19, scope: !329)
!334 = !DILocation(line: 86, column: 15, scope: !195)
!335 = !DILocation(line: 86, column: 14, scope: !195)
!336 = !DILocation(line: 87, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !195, file: !2, line: 87, column: 6)
!338 = !DILocation(line: 87, column: 6, scope: !195)
!339 = !DILocation(line: 88, column: 19, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !2, line: 87, column: 24)
!341 = !DILocation(line: 88, column: 110, scope: !340)
!342 = !DILocation(line: 88, column: 11, scope: !340)
!343 = !DILocation(line: 89, column: 5, scope: !340)
!344 = !DILocation(line: 90, column: 3, scope: !340)
!345 = !DILocation(line: 91, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !337, file: !2, line: 90, column: 8)
!347 = !DILocation(line: 91, column: 16, scope: !346)
!348 = !DILocation(line: 94, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !195, file: !2, line: 94, column: 6)
!350 = !DILocation(line: 94, column: 24, scope: !349)
!351 = !DILocation(line: 94, column: 39, scope: !349)
!352 = !DILocation(line: 94, column: 42, scope: !349)
!353 = !DILocation(line: 94, column: 60, scope: !349)
!354 = !DILocation(line: 94, column: 6, scope: !195)
!355 = !DILocation(line: 95, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 95, column: 8)
!357 = distinct !DILexicalBlock(scope: !349, file: !2, line: 94, column: 75)
!358 = !DILocation(line: 95, column: 28, scope: !356)
!359 = !DILocation(line: 95, column: 8, scope: !357)
!360 = !DILocation(line: 95, column: 89, scope: !356)
!361 = !DILocation(line: 95, column: 82, scope: !356)
!362 = !DILocation(line: 95, column: 77, scope: !356)
!363 = !DILocation(line: 95, column: 76, scope: !356)
!364 = !DILocation(line: 95, column: 57, scope: !356)
!365 = !DILocation(line: 96, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !357, file: !2, line: 96, column: 8)
!367 = !DILocation(line: 96, column: 28, scope: !366)
!368 = !DILocation(line: 96, column: 32, scope: !366)
!369 = !DILocation(line: 96, column: 31, scope: !366)
!370 = !{!273, !273, i64 0}
!371 = !DILocation(line: 96, column: 8, scope: !357)
!372 = !DILocation(line: 96, column: 61, scope: !366)
!373 = !DILocation(line: 96, column: 90, scope: !366)
!374 = !DILocation(line: 96, column: 45, scope: !366)
!375 = !DILocation(line: 97, column: 19, scope: !357)
!376 = !DILocation(line: 97, column: 78, scope: !357)
!377 = !DILocation(line: 97, column: 11, scope: !357)
!378 = !DILocation(line: 98, column: 8, scope: !379)
!379 = distinct !DILexicalBlock(scope: !357, file: !2, line: 98, column: 8)
!380 = !DILocation(line: 98, column: 28, scope: !379)
!381 = !DILocation(line: 98, column: 8, scope: !357)
!382 = !DILocation(line: 98, column: 47, scope: !379)
!383 = !DILocation(line: 98, column: 66, scope: !379)
!384 = !DILocation(line: 98, column: 39, scope: !379)
!385 = !DILocation(line: 98, column: 33, scope: !379)
!386 = !DILocation(line: 98, column: 107, scope: !379)
!387 = !DILocation(line: 98, column: 99, scope: !379)
!388 = !DILocation(line: 99, column: 19, scope: !357)
!389 = !DILocation(line: 99, column: 107, scope: !357)
!390 = !DILocation(line: 99, column: 124, scope: !357)
!391 = !DILocation(line: 99, column: 11, scope: !357)
!392 = !DILocation(line: 100, column: 19, scope: !357)
!393 = !DILocation(line: 100, column: 118, scope: !357)
!394 = !DILocation(line: 100, column: 135, scope: !357)
!395 = !DILocation(line: 100, column: 11, scope: !357)
!396 = !DILocation(line: 101, column: 3, scope: !357)
!397 = !DILocation(line: 103, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !195, file: !2, line: 103, column: 6)
!399 = !DILocation(line: 103, column: 6, scope: !195)
!400 = !DILocation(line: 105, column: 17, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !2, line: 103, column: 22)
!402 = !DILocation(line: 105, column: 16, scope: !401)
!403 = !DILocation(line: 107, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !2, line: 107, column: 8)
!405 = !DILocation(line: 107, column: 26, scope: !404)
!406 = !DILocation(line: 107, column: 8, scope: !401)
!407 = !DILocation(line: 107, column: 56, scope: !404)
!408 = !DILocation(line: 107, column: 113, scope: !404)
!409 = !DILocation(line: 107, column: 130, scope: !404)
!410 = !DILocation(line: 107, column: 139, scope: !404)
!411 = !DILocation(line: 107, column: 147, scope: !404)
!412 = !DILocation(line: 107, column: 138, scope: !404)
!413 = !DILocation(line: 107, column: 48, scope: !404)
!414 = !DILocation(line: 107, column: 42, scope: !404)
!415 = !DILocation(line: 108, column: 8, scope: !416)
!416 = distinct !DILexicalBlock(scope: !401, file: !2, line: 108, column: 8)
!417 = !DILocation(line: 108, column: 18, scope: !416)
!418 = !DILocation(line: 108, column: 16, scope: !416)
!419 = !DILocation(line: 108, column: 8, scope: !401)
!420 = !DILocation(line: 109, column: 21, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !2, line: 108, column: 30)
!422 = !DILocation(line: 109, column: 146, scope: !421)
!423 = !DILocation(line: 109, column: 163, scope: !421)
!424 = !DILocation(line: 109, column: 171, scope: !421)
!425 = !DILocation(line: 109, column: 13, scope: !421)
!426 = !DILocation(line: 110, column: 19, scope: !421)
!427 = !DILocation(line: 110, column: 18, scope: !421)
!428 = !DILocation(line: 111, column: 5, scope: !421)
!429 = !DILocation(line: 112, column: 3, scope: !401)
!430 = !DILocation(line: 116, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !398, file: !2, line: 112, column: 8)
!432 = !DILocation(line: 116, column: 16, scope: !431)
!433 = !DILocation(line: 119, column: 12, scope: !431)
!434 = !DILocation(line: 119, column: 5, scope: !431)
!435 = !DILocation(line: 130, column: 22, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !2, line: 119, column: 29)
!437 = !DILocation(line: 131, column: 7, scope: !436)
!438 = !DILocation(line: 138, column: 22, scope: !436)
!439 = !DILocation(line: 139, column: 7, scope: !436)
!440 = !DILocation(line: 142, column: 22, scope: !436)
!441 = !DILocation(line: 143, column: 7, scope: !436)
!442 = !DILocation(line: 152, column: 22, scope: !436)
!443 = !DILocation(line: 153, column: 10, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !2, line: 153, column: 10)
!445 = !DILocation(line: 153, column: 28, scope: !444)
!446 = !DILocation(line: 153, column: 10, scope: !436)
!447 = !DILocation(line: 153, column: 59, scope: !444)
!448 = !DILocation(line: 153, column: 44, scope: !444)
!449 = !DILocation(line: 154, column: 7, scope: !436)
!450 = !DILocation(line: 157, column: 22, scope: !436)
!451 = !DILocation(line: 158, column: 10, scope: !452)
!452 = distinct !DILexicalBlock(scope: !436, file: !2, line: 158, column: 10)
!453 = !DILocation(line: 158, column: 28, scope: !452)
!454 = !DILocation(line: 158, column: 10, scope: !436)
!455 = !DILocation(line: 158, column: 59, scope: !452)
!456 = !DILocation(line: 158, column: 44, scope: !452)
!457 = !DILocation(line: 159, column: 7, scope: !436)
!458 = !DILocation(line: 169, column: 22, scope: !436)
!459 = !DILocation(line: 170, column: 7, scope: !436)
!460 = !DILocation(line: 171, column: 14, scope: !436)
!461 = !DILocation(line: 171, column: 41, scope: !436)
!462 = !DILocation(line: 175, column: 27, scope: !431)
!463 = !DILocation(line: 175, column: 11, scope: !431)
!464 = !DILocation(line: 176, column: 8, scope: !465)
!465 = distinct !DILexicalBlock(scope: !431, file: !2, line: 176, column: 8)
!466 = !DILocation(line: 176, column: 26, scope: !465)
!467 = !DILocation(line: 176, column: 8, scope: !431)
!468 = !DILocation(line: 176, column: 55, scope: !465)
!469 = !DILocation(line: 176, column: 137, scope: !465)
!470 = !DILocation(line: 176, column: 155, scope: !465)
!471 = !DILocation(line: 176, column: 47, scope: !465)
!472 = !DILocation(line: 176, column: 41, scope: !465)
!473 = !DILocation(line: 177, column: 13, scope: !431)
!474 = !DILocation(line: 177, column: 12, scope: !431)
!475 = !DILocation(line: 178, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !431, file: !2, line: 178, column: 8)
!477 = !DILocation(line: 178, column: 26, scope: !476)
!478 = !DILocation(line: 178, column: 8, scope: !431)
!479 = !DILocation(line: 178, column: 55, scope: !476)
!480 = !DILocation(line: 178, column: 144, scope: !476)
!481 = !DILocation(line: 178, column: 162, scope: !476)
!482 = !DILocation(line: 178, column: 47, scope: !476)
!483 = !DILocation(line: 178, column: 41, scope: !476)
!484 = !DILocation(line: 181, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !431, file: !2, line: 181, column: 8)
!486 = !DILocation(line: 181, column: 22, scope: !485)
!487 = !DILocation(line: 181, column: 20, scope: !485)
!488 = !DILocation(line: 181, column: 8, scope: !431)
!489 = !DILocation(line: 182, column: 10, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 182, column: 10)
!491 = distinct !DILexicalBlock(scope: !485, file: !2, line: 181, column: 38)
!492 = !DILocation(line: 182, column: 28, scope: !490)
!493 = !DILocation(line: 182, column: 10, scope: !491)
!494 = !DILocation(line: 182, column: 57, scope: !490)
!495 = !DILocation(line: 182, column: 193, scope: !490)
!496 = !DILocation(line: 182, column: 210, scope: !490)
!497 = !DILocation(line: 182, column: 222, scope: !490)
!498 = !DILocation(line: 182, column: 49, scope: !490)
!499 = !DILocation(line: 182, column: 43, scope: !490)
!500 = !DILocation(line: 183, column: 19, scope: !491)
!501 = !DILocation(line: 183, column: 18, scope: !491)
!502 = !DILocation(line: 184, column: 5, scope: !491)
!503 = !DILocation(line: 188, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !195, file: !2, line: 188, column: 6)
!505 = !DILocation(line: 188, column: 23, scope: !504)
!506 = !DILocation(line: 188, column: 31, scope: !504)
!507 = !DILocation(line: 188, column: 34, scope: !504)
!508 = !DILocation(line: 188, column: 51, scope: !504)
!509 = !DILocation(line: 188, column: 59, scope: !504)
!510 = !DILocation(line: 188, column: 62, scope: !504)
!511 = !DILocation(line: 188, column: 79, scope: !504)
!512 = !DILocation(line: 188, column: 87, scope: !504)
!513 = !DILocation(line: 188, column: 90, scope: !504)
!514 = !DILocation(line: 188, column: 102, scope: !504)
!515 = !DILocation(line: 188, column: 6, scope: !195)
!516 = !DILocation(line: 189, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !2, line: 189, column: 8)
!518 = distinct !DILexicalBlock(scope: !504, file: !2, line: 188, column: 106)
!519 = !DILocation(line: 189, column: 24, scope: !517)
!520 = !DILocation(line: 189, column: 27, scope: !517)
!521 = !DILocation(line: 189, column: 45, scope: !517)
!522 = !DILocation(line: 189, column: 8, scope: !518)
!523 = !DILocation(line: 189, column: 74, scope: !517)
!524 = !DILocation(line: 189, column: 1261, scope: !517)
!525 = !DILocation(line: 189, column: 1278, scope: !517)
!526 = !DILocation(line: 189, column: 66, scope: !517)
!527 = !DILocation(line: 189, column: 60, scope: !517)
!528 = !DILocation(line: 190, column: 16, scope: !518)
!529 = !DILocation(line: 191, column: 3, scope: !518)
!530 = !DILocation(line: 195, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !195, file: !2, line: 195, column: 6)
!532 = !DILocation(line: 195, column: 6, scope: !195)
!533 = !DILocation(line: 196, column: 19, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !2, line: 195, column: 24)
!535 = !DILocation(line: 196, column: 102, scope: !534)
!536 = !DILocation(line: 196, column: 11, scope: !534)
!537 = !DILocation(line: 197, column: 5, scope: !534)
!538 = !DILocation(line: 198, column: 3, scope: !534)
!539 = !DILocation(line: 199, column: 31, scope: !540)
!540 = distinct !DILexicalBlock(scope: !531, file: !2, line: 198, column: 8)
!541 = !DILocation(line: 199, column: 11, scope: !540)
!542 = !DILocation(line: 200, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !2, line: 200, column: 8)
!544 = !DILocation(line: 200, column: 26, scope: !543)
!545 = !DILocation(line: 200, column: 8, scope: !540)
!546 = !DILocation(line: 200, column: 55, scope: !543)
!547 = !DILocation(line: 200, column: 165, scope: !543)
!548 = !DILocation(line: 200, column: 182, scope: !543)
!549 = !DILocation(line: 200, column: 47, scope: !543)
!550 = !DILocation(line: 200, column: 41, scope: !543)
!551 = !DILocation(line: 203, column: 15, scope: !195)
!552 = !DILocation(line: 203, column: 14, scope: !195)
!553 = !DILocation(line: 204, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !195, file: !2, line: 204, column: 6)
!555 = !DILocation(line: 204, column: 24, scope: !554)
!556 = !DILocation(line: 204, column: 6, scope: !195)
!557 = !DILocation(line: 204, column: 54, scope: !554)
!558 = !DILocation(line: 204, column: 252, scope: !554)
!559 = !DILocation(line: 204, column: 269, scope: !554)
!560 = !DILocation(line: 204, column: 46, scope: !554)
!561 = !DILocation(line: 204, column: 40, scope: !554)
!562 = !DILocation(line: 206, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !195, file: !2, line: 206, column: 6)
!564 = !DILocation(line: 206, column: 24, scope: !563)
!565 = !DILocation(line: 206, column: 6, scope: !195)
!566 = !DILocation(line: 209, column: 1, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !2, line: 206, column: 39)
!568 = !DILocation(line: 217, column: 3, scope: !567)
!569 = !DILocation(line: 222, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !2, line: 222, column: 8)
!571 = distinct !DILexicalBlock(scope: !195, file: !2, line: 221, column: 6)
!572 = !DILocation(line: 222, column: 26, scope: !570)
!573 = !DILocation(line: 222, column: 34, scope: !570)
!574 = !DILocation(line: 222, column: 37, scope: !570)
!575 = !DILocation(line: 222, column: 54, scope: !570)
!576 = !DILocation(line: 222, column: 63, scope: !570)
!577 = !DILocation(line: 222, column: 66, scope: !570)
!578 = !DILocation(line: 222, column: 78, scope: !570)
!579 = !DILocation(line: 222, column: 8, scope: !571)
!580 = !DILocation(line: 223, column: 10, scope: !581)
!581 = distinct !DILexicalBlock(scope: !570, file: !2, line: 223, column: 10)
!582 = !DILocation(line: 223, column: 28, scope: !581)
!583 = !DILocation(line: 223, column: 10, scope: !570)
!584 = !DILocation(line: 223, column: 57, scope: !581)
!585 = !DILocation(line: 223, column: 281, scope: !581)
!586 = !DILocation(line: 223, column: 298, scope: !581)
!587 = !DILocation(line: 223, column: 49, scope: !581)
!588 = !DILocation(line: 223, column: 43, scope: !581)
!589 = !DILocation(line: 223, column: 31, scope: !581)
!590 = !DILocation(line: 225, column: 10, scope: !195)
!591 = !DILocation(line: 226, column: 1, scope: !195)
!592 = !DILocation(line: 225, column: 3, scope: !195)
!593 = !DISubprogram(name: "fprintf", scope: !594, file: !594, line: 350, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!595 = !DISubroutineType(types: !596)
!596 = !{!186, !597, !598, null}
!597 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !206)
!598 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!601 = !DISubprogram(name: "nco_prg_nm_get", scope: !151, file: !151, line: 258, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DISubroutineType(types: !603)
!603 = !{!202}
!604 = !DISubprogram(name: "nco_exit", scope: !605, file: !605, line: 50, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DIFile(filename: "./nco_ctl.h", directory: "/local-ssd/nco-sz3tspkp5snjjx4xkjuuma7nkymdp3lp-build/aidengro/spack-stage-nco-5.1.6-sz3tspkp5snjjx4xkjuuma7nkymdp3lp/spack-src/src/nco", checksumkind: CSK_MD5, checksum: "a46613cedf26dbdc444c2bf644c2fbab")
!606 = !DISubroutineType(types: !607)
!607 = !{null, !186}
!608 = !DISubprogram(name: "nco_dbg_lvl_get", scope: !151, file: !151, line: 262, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubroutineType(types: !610)
!610 = !{!236}
!611 = !DISubprogram(name: "omp_get_num_procs", scope: !612, file: !612, line: 69, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DIFile(filename: "/usr/lib/clang/18/include/omp.h", directory: "", checksumkind: CSK_MD5, checksum: "7f7de6561f4ac3a0481be022bc074bdf")
!613 = !DISubroutineType(types: !185)
!614 = !DISubprogram(name: "omp_in_parallel", scope: !612, file: !612, line: 70, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubprogram(name: "omp_get_max_threads", scope: !612, file: !612, line: 67, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubprogram(name: "getenv", scope: !617, file: !617, line: 641, type: !618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!618 = !DISubroutineType(types: !619)
!619 = !{!202, !599}
!620 = !DISubprogram(name: "strtol", scope: !617, file: !617, line: 177, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DISubroutineType(types: !622)
!622 = !{!234, !598, !623, !186}
!623 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !624)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!625 = !DISubprogram(name: "nco_sng_cnv_err", scope: !626, file: !626, line: 370, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DIFile(filename: "./nco_netcdf.h", directory: "/local-ssd/nco-sz3tspkp5snjjx4xkjuuma7nkymdp3lp-build/aidengro/spack-stage-nco-5.1.6-sz3tspkp5snjjx4xkjuuma7nkymdp3lp/spack-src/src/nco", checksumkind: CSK_MD5, checksum: "c394244836cc4bf6b941a1a65ebf7296")
!627 = !DISubroutineType(types: !628)
!628 = !{null, !599, !599, !599}
!629 = !DISubprogram(name: "nco_prg_id_get", scope: !151, file: !151, line: 259, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!630 = !DISubprogram(name: "nco_dfl_case_prg_id_err", scope: !626, file: !626, line: 366, type: !631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!631 = !DISubroutineType(types: !632)
!632 = !{null}
!633 = !DISubprogram(name: "omp_set_dynamic", scope: !612, file: !612, line: 58, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!634 = !DISubprogram(name: "omp_get_dynamic", scope: !612, file: !612, line: 65, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubprogram(name: "omp_set_num_threads", scope: !612, file: !612, line: 57, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = distinct !DISubprogram(name: "nco_openmp_ini.omp_outlined_debug__", scope: !2, file: !2, line: 210, type: !637, scopeLine: 210, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !644)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !639, !639, !642, !643}
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !186, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !205, size: 64)
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !636, type: !639, flags: DIFlagArtificial)
!646 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !636, type: !639, flags: DIFlagArtificial)
!647 = !DILocalVariable(name: "thr_nbr_act", arg: 3, scope: !636, file: !2, line: 57, type: !642)
!648 = !DILocalVariable(name: "fp_stderr", arg: 4, scope: !636, file: !2, line: 49, type: !643)
!649 = !DILocation(line: 0, scope: !636)
!650 = !DILocation(line: 57, column: 7, scope: !636)
!651 = !DILocation(line: 49, column: 16, scope: !636)
!652 = !DILocation(line: 210, column: 5, scope: !636)
!653 = !DILocation(line: 211, column: 1, scope: !654)
!654 = distinct !DILexicalBlock(scope: !636, file: !2, line: 210, column: 5)
!655 = !DILocation(line: 213, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !2, line: 212, column: 7)
!657 = distinct !DILexicalBlock(scope: !654, file: !2, line: 211, column: 1)
!658 = !DILocation(line: 213, column: 13, scope: !656)
!659 = !DILocation(line: 214, column: 5, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !2, line: 214, column: 5)
!661 = !DILocation(line: 214, column: 23, scope: !660)
!662 = !DILocation(line: 214, column: 5, scope: !656)
!663 = !DILocation(line: 214, column: 52, scope: !660)
!664 = !DILocation(line: 214, column: 131, scope: !660)
!665 = !DILocation(line: 214, column: 148, scope: !660)
!666 = !DILocation(line: 214, column: 44, scope: !660)
!667 = !DILocation(line: 214, column: 38, scope: !660)
!668 = !DILocation(line: 215, column: 7, scope: !656)
!669 = !DILocation(line: 216, column: 5, scope: !636)
!670 = !DISubprogram(name: "omp_get_num_threads", scope: !612, file: !612, line: 64, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = distinct !DISubprogram(name: "nco_openmp_ini.omp_outlined", scope: !2, file: !2, line: 209, type: !637, scopeLine: 209, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !672)
!672 = !{!673, !674, !675, !676}
!673 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !671, type: !639, flags: DIFlagArtificial)
!674 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !671, type: !639, flags: DIFlagArtificial)
!675 = !DILocalVariable(name: "thr_nbr_act", arg: 3, scope: !671, type: !642, flags: DIFlagArtificial)
!676 = !DILocalVariable(name: "fp_stderr", arg: 4, scope: !671, type: !643, flags: DIFlagArtificial)
!677 = !DILocation(line: 0, scope: !671)
!678 = !DILocation(line: 209, column: 1, scope: !671)
!679 = !{!680}
!680 = !{i64 2, i64 -1, i64 -1, i1 true}
!681 = distinct !DISubprogram(name: "nco_var_prc_crr_prn", scope: !2, file: !2, line: 229, type: !682, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !685)
!682 = !DISubroutineType(types: !683)
!683 = !{!186, !198, !684}
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!685 = !{!686, !687, !688}
!686 = !DILocalVariable(name: "idx", arg: 1, scope: !681, file: !2, line: 230, type: !198)
!687 = !DILocalVariable(name: "var_nm", arg: 2, scope: !681, file: !2, line: 231, type: !684)
!688 = !DILocalVariable(name: "rcd", scope: !681, file: !2, line: 234, type: !186)
!689 = !DILocation(line: 230, column: 12, scope: !681)
!690 = !DILocation(line: 231, column: 21, scope: !681)
!691 = !DILocation(line: 234, column: 3, scope: !681)
!692 = !DILocation(line: 234, column: 7, scope: !681)
!693 = !DILocation(line: 237, column: 17, scope: !681)
!694 = !DILocation(line: 237, column: 90, scope: !681)
!695 = !DILocation(line: 237, column: 107, scope: !681)
!696 = !DILocation(line: 237, column: 128, scope: !681)
!697 = !DILocation(line: 237, column: 132, scope: !681)
!698 = !DILocation(line: 237, column: 9, scope: !681)
!699 = !DILocation(line: 243, column: 10, scope: !681)
!700 = !DILocation(line: 244, column: 1, scope: !681)
!701 = !DILocation(line: 243, column: 3, scope: !681)
!702 = !DISubprogram(name: "omp_get_thread_num", scope: !612, file: !612, line: 68, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = distinct !DISubprogram(name: "nco_omp_chk", scope: !2, file: !2, line: 247, type: !704, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !599}
!706 = !{!707, !708, !712, !713}
!707 = !DILocalVariable(name: "smsg", arg: 1, scope: !703, file: !2, line: 248, type: !599)
!708 = !DILocalVariable(name: "fnc_nm", scope: !703, file: !2, line: 250, type: !709)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 14)
!712 = !DILocalVariable(name: "thr_nbr_act", scope: !703, file: !2, line: 251, type: !186)
!713 = !DILocalVariable(name: "fp_stderr", scope: !703, file: !2, line: 253, type: !206)
!714 = !DILocation(line: 248, column: 14, scope: !703)
!715 = !DILocation(line: 250, column: 3, scope: !703)
!716 = !DILocation(line: 250, column: 8, scope: !703)
!717 = !DILocation(line: 251, column: 3, scope: !703)
!718 = !DILocation(line: 251, column: 7, scope: !703)
!719 = !DILocation(line: 251, column: 19, scope: !703)
!720 = !DILocation(line: 253, column: 3, scope: !703)
!721 = !DILocation(line: 253, column: 9, scope: !703)
!722 = !DILocation(line: 253, column: 19, scope: !703)
!723 = !DILocation(line: 255, column: 18, scope: !703)
!724 = !DILocation(line: 255, column: 218, scope: !703)
!725 = !DILocation(line: 255, column: 225, scope: !703)
!726 = !DILocation(line: 255, column: 230, scope: !703)
!727 = !DILocation(line: 255, column: 10, scope: !703)
!728 = !DILocation(line: 258, column: 1, scope: !703)
!729 = !DILocation(line: 268, column: 1, scope: !703)
!730 = distinct !DISubprogram(name: "nco_omp_chk.omp_outlined_debug__", scope: !2, file: !2, line: 259, type: !731, scopeLine: 259, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !736)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !639, !639, !642, !733, !734, !735}
!733 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !206, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !709, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !599, size: 64)
!736 = !{!737, !738, !739, !740, !741, !742}
!737 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !730, type: !639, flags: DIFlagArtificial)
!738 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !730, type: !639, flags: DIFlagArtificial)
!739 = !DILocalVariable(name: "thr_nbr_act", arg: 3, scope: !730, file: !2, line: 251, type: !642)
!740 = !DILocalVariable(name: "fp_stderr", arg: 4, scope: !730, file: !2, line: 253, type: !733)
!741 = !DILocalVariable(name: "fnc_nm", arg: 5, scope: !730, file: !2, line: 250, type: !734)
!742 = !DILocalVariable(name: "smsg", arg: 6, scope: !730, file: !2, line: 248, type: !735)
!743 = !DILocation(line: 0, scope: !730)
!744 = !DILocation(line: 251, column: 7, scope: !730)
!745 = !DILocation(line: 253, column: 9, scope: !730)
!746 = !DILocation(line: 250, column: 8, scope: !730)
!747 = !DILocation(line: 248, column: 14, scope: !730)
!748 = !DILocation(line: 259, column: 3, scope: !730)
!749 = !DILocation(line: 260, column: 1, scope: !750)
!750 = distinct !DILexicalBlock(scope: !730, file: !2, line: 259, column: 3)
!751 = !DILocation(line: 262, column: 21, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !2, line: 261, column: 5)
!753 = distinct !DILexicalBlock(scope: !750, file: !2, line: 260, column: 1)
!754 = !DILocation(line: 262, column: 19, scope: !752)
!755 = !DILocation(line: 263, column: 22, scope: !752)
!756 = !DILocation(line: 263, column: 105, scope: !752)
!757 = !DILocation(line: 263, column: 112, scope: !752)
!758 = !DILocation(line: 263, column: 117, scope: !752)
!759 = !DILocation(line: 263, column: 14, scope: !752)
!760 = !DILocation(line: 264, column: 5, scope: !752)
!761 = !DILocation(line: 265, column: 3, scope: !730)
!762 = distinct !DISubprogram(name: "nco_omp_chk.omp_outlined", scope: !2, file: !2, line: 258, type: !731, scopeLine: 258, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !763)
!763 = !{!764, !765, !766, !767, !768, !769}
!764 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !762, type: !639, flags: DIFlagArtificial)
!765 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !762, type: !639, flags: DIFlagArtificial)
!766 = !DILocalVariable(name: "thr_nbr_act", arg: 3, scope: !762, type: !642, flags: DIFlagArtificial)
!767 = !DILocalVariable(name: "fp_stderr", arg: 4, scope: !762, type: !733, flags: DIFlagArtificial)
!768 = !DILocalVariable(name: "fnc_nm", arg: 5, scope: !762, type: !734, flags: DIFlagArtificial)
!769 = !DILocalVariable(name: "smsg", arg: 6, scope: !762, type: !735, flags: DIFlagArtificial)
!770 = !DILocation(line: 0, scope: !762)
!771 = !DILocation(line: 258, column: 1, scope: !762)
!772 = distinct !DISubprogram(name: "nco_omp_for_chk", scope: !2, file: !2, line: 270, type: !704, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !773)
!773 = !{!774, !775, !779, !780, !781, !782}
!774 = !DILocalVariable(name: "smsg", arg: 1, scope: !772, file: !2, line: 271, type: !599)
!775 = !DILocalVariable(name: "fnc_nm", scope: !772, file: !2, line: 273, type: !776)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 18)
!779 = !DILocalVariable(name: "thr_nbr_act", scope: !772, file: !2, line: 274, type: !186)
!780 = !DILocalVariable(name: "idx", scope: !772, file: !2, line: 275, type: !186)
!781 = !DILocalVariable(name: "cnt", scope: !772, file: !2, line: 276, type: !186)
!782 = !DILocalVariable(name: "fp_stderr", scope: !772, file: !2, line: 278, type: !206)
!783 = !DILocation(line: 271, column: 13, scope: !772)
!784 = !DILocation(line: 273, column: 3, scope: !772)
!785 = !DILocation(line: 273, column: 8, scope: !772)
!786 = !DILocation(line: 274, column: 3, scope: !772)
!787 = !DILocation(line: 274, column: 7, scope: !772)
!788 = !DILocation(line: 274, column: 19, scope: !772)
!789 = !DILocation(line: 275, column: 3, scope: !772)
!790 = !DILocation(line: 275, column: 7, scope: !772)
!791 = !DILocation(line: 276, column: 3, scope: !772)
!792 = !DILocation(line: 276, column: 7, scope: !772)
!793 = !DILocation(line: 278, column: 3, scope: !772)
!794 = !DILocation(line: 278, column: 9, scope: !772)
!795 = !DILocation(line: 278, column: 19, scope: !772)
!796 = !DILocation(line: 280, column: 17, scope: !772)
!797 = !DILocation(line: 280, column: 218, scope: !772)
!798 = !DILocation(line: 280, column: 225, scope: !772)
!799 = !DILocation(line: 280, column: 230, scope: !772)
!800 = !DILocation(line: 280, column: 9, scope: !772)
!801 = !DILocation(line: 283, column: 1, scope: !772)
!802 = !DILocation(line: 287, column: 1, scope: !772)
!803 = distinct !DISubprogram(name: "nco_omp_for_chk.omp_outlined_debug__", scope: !2, file: !2, line: 285, type: !804, scopeLine: 285, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !807)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !639, !639, !642, !733, !806}
!806 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !776, size: 64)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !814, !815, !816, !817, !818, !819, !815, !815}
!808 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !803, type: !639, flags: DIFlagArtificial)
!809 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !803, type: !639, flags: DIFlagArtificial)
!810 = !DILocalVariable(name: "cnt", arg: 3, scope: !803, file: !2, line: 276, type: !642)
!811 = !DILocalVariable(name: "fp_stderr", arg: 4, scope: !803, file: !2, line: 278, type: !733)
!812 = !DILocalVariable(name: "fnc_nm", arg: 5, scope: !803, file: !2, line: 273, type: !806)
!813 = !DILocalVariable(name: ".omp.iv", scope: !803, type: !186, flags: DIFlagArtificial)
!814 = !DILocalVariable(name: ".capture_expr.", scope: !803, type: !186, flags: DIFlagArtificial)
!815 = !DILocalVariable(name: "idx", scope: !803, type: !186, flags: DIFlagArtificial)
!816 = !DILocalVariable(name: ".omp.lb", scope: !803, type: !186, flags: DIFlagArtificial)
!817 = !DILocalVariable(name: ".omp.ub", scope: !803, type: !186, flags: DIFlagArtificial)
!818 = !DILocalVariable(name: ".omp.stride", scope: !803, type: !186, flags: DIFlagArtificial)
!819 = !DILocalVariable(name: ".omp.is_last", scope: !803, type: !186, flags: DIFlagArtificial)
!820 = !DILocation(line: 0, scope: !803)
!821 = !DILocation(line: 276, column: 7, scope: !803)
!822 = !DILocation(line: 278, column: 9, scope: !803)
!823 = !DILocation(line: 273, column: 8, scope: !803)
!824 = !DILocation(line: 285, column: 5, scope: !803)
!825 = !DILocation(line: 285, column: 19, scope: !803)
!826 = !DILocation(line: 285, column: 23, scope: !803)
!827 = !DILocation(line: 285, column: 9, scope: !803)
!828 = !DILocation(line: 283, column: 1, scope: !803)
!829 = !DILocation(line: 286, column: 21, scope: !803)
!830 = !DILocation(line: 286, column: 45, scope: !803)
!831 = !DILocation(line: 286, column: 52, scope: !803)
!832 = !DILocation(line: 286, column: 56, scope: !803)
!833 = !DILocation(line: 286, column: 13, scope: !803)
!834 = !DILocation(line: 286, column: 7, scope: !803)
!835 = distinct !{!835, !828, !836}
!836 = !DILocation(line: 283, column: 38, scope: !803)
!837 = !DILocation(line: 286, column: 76, scope: !803)
!838 = distinct !DISubprogram(name: "nco_omp_for_chk.omp_outlined", scope: !2, file: !2, line: 283, type: !804, scopeLine: 283, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !839)
!839 = !{!840, !841, !842, !843, !844}
!840 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !838, type: !639, flags: DIFlagArtificial)
!841 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !838, type: !639, flags: DIFlagArtificial)
!842 = !DILocalVariable(name: "cnt", arg: 3, scope: !838, type: !642, flags: DIFlagArtificial)
!843 = !DILocalVariable(name: "fp_stderr", arg: 4, scope: !838, type: !733, flags: DIFlagArtificial)
!844 = !DILocalVariable(name: "fnc_nm", arg: 5, scope: !838, type: !806, flags: DIFlagArtificial)
!845 = !DILocation(line: 0, scope: !838)
!846 = !DILocation(line: 283, column: 1, scope: !838)
