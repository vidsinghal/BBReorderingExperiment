; ModuleID = 'samples/870.bc'
source_filename = "beam/erl_sched_spec_pre_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ErtsThrPrgr = type { %struct.ethr_native_atomic64_t }
%struct.ethr_native_atomic64_t = type { i64 }
%struct.erts_sspa_data_t = type { ptr, ptr, i32, i32, i32, %struct.ethr_native_atomic64_t }
%struct.erts_sspa_chunk_t = type { %union.anon, [1 x i8] }
%union.anon = type { %struct.erts_sspa_chunk_header_t, [56 x i8] }
%struct.erts_sspa_chunk_header_t = type { %union.anon.0, %struct.anon, %struct.erts_sspa_local_freelist_t }
%union.anon.0 = type { %struct.erts_sspa_tail_t, [24 x i8] }
%struct.erts_sspa_tail_t = type { %union.erts_sspa_blk_t_, %struct.ethr_native_atomic64_t, [2 x %struct.ethr_native_atomic64_t], %struct.ethr_native_atomic32_t }
%union.erts_sspa_blk_t_ = type { %struct.ethr_native_atomic64_t }
%struct.ethr_native_atomic32_t = type { i32 }
%struct.anon = type { i32, i32, ptr, ptr, %struct.anon.1 }
%struct.anon.1 = type { i64, i32, i32, ptr }
%struct.erts_sspa_local_freelist_t = type { ptr, ptr, i32, i32 }
%struct.ErtsThrPrgrData = type { i32, i32, i32, i32, [4 x i64], i32, i32, i32, i64, %struct.ErtsThrPrgrLeaderState }
%struct.ErtsThrPrgrLeaderState = type { i64, i64, i32, %struct.anon.2 }
%struct.anon.2 = type { i32, i32 }
%struct.ErtsSchedulerData_ = type { ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ErtsThrPrgrData, ptr, ptr, i32, i64, i64, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.ErtsAuxWorkData_, %struct.ErtsAtomCacheMap, i64, i32, i32, i64, i64, %struct.anon.13, %struct.anon.14, i64, i64, %struct.ErtsSchedWallTime, %struct.ErtsGCInfo, %struct.ethr_native_atomic64_t, %union.anon.17 }
%struct.ErtsAuxWorkData_ = type { i32, %struct.ErtsThrAllocData, ptr, ptr, i64, i64, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, %struct.anon.10 }
%struct.ErtsThrAllocData = type { [13 x ptr], i32, i32 }
%struct.anon.3 = type { i32, i64 }
%struct.anon.4 = type { i64 }
%struct.anon.5 = type { i64 }
%struct.anon.6 = type { i64, i64, ptr, ptr, i64 }
%struct.anon.7 = type { i32, i64, ptr }
%struct.anon.8 = type { i64, ptr, i32, ptr }
%struct.anon.9 = type { %struct.ErtsAlcuBlockscanYieldData, %struct.ErtsEtsAllYieldData }
%struct.ErtsAlcuBlockscanYieldData = type { ptr, ptr }
%struct.ErtsEtsAllYieldData = type { ptr, ptr, ptr, ptr }
%struct.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i32, ptr, ptr }
%struct.ErtsAtomCacheMap = type { i32, i32, i32, [2048 x i32], [2048 x %struct.anon.12] }
%struct.anon.12 = type { i64, i32 }
%struct.anon.13 = type { i64, i64 }
%struct.anon.14 = type { ptr, i64 }
%struct.ErtsSchedWallTime = type { %union.anon.15, i32, i64, %struct.anon.16 }
%union.anon.15 = type { %struct.ethr_native_atomic32_t }
%struct.anon.16 = type { i64, i64 }
%struct.ErtsGCInfo = type { i64, i64 }
%union.anon.17 = type { %struct.ErtsEtsTables }
%struct.ErtsEtsTables = type { %struct.ethr_native_atomic64_t, ptr }

@erts_no_schedulers = external global i64, section "ERTS_LOW_WRITE", align 8
@.str = private unnamed_addr constant [32 x i8] c"create thread specific data key\00", align 1, !dbg !0
@erts_thr_prgr__ = external global %struct.ErtsThrPrgr, align 8
@erts_thr_prgr_data_key__ = external global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @erts_sspa_create(i64 noundef %blk_sz, i32 noundef %pa_size, i32 noundef %nthreads, ptr noundef %name) #0 !dbg !166 {
entry:
  %blk_sz.addr = alloca i64, align 8
  %pa_size.addr = alloca i32, align 4
  %nthreads.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %tot_size = alloca i64, align 8
  %chunk_mem_size = alloca i64, align 8
  %p = alloca ptr, align 8
  %chunk_start = alloca ptr, align 8
  %cix = alloca i32, align 4
  %no_blocks = alloca i32, align 4
  %no_blocks_per_chunk = alloca i32, align 4
  %aligned_blk_sz = alloca i64, align 8
  %extra = alloca i32, align 4
  %chnk = alloca ptr, align 8
  %chdr = alloca ptr, align 8
  %blk = alloca ptr, align 8
  %i = alloca i32, align 4
  store i64 %blk_sz, ptr %blk_sz.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %blk_sz.addr, metadata !174, metadata !DIExpression()), !dbg !198
  store i32 %pa_size, ptr %pa_size.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %pa_size.addr, metadata !175, metadata !DIExpression()), !dbg !199
  store i32 %nthreads, ptr %nthreads.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %nthreads.addr, metadata !176, metadata !DIExpression()), !dbg !200
  store ptr %name, ptr %name.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !177, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #7, !dbg !202
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !178, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 8, ptr %tot_size) #7, !dbg !204
  tail call void @llvm.dbg.declare(metadata ptr %tot_size, metadata !179, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_mem_size) #7, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %chunk_mem_size, metadata !180, metadata !DIExpression()), !dbg !207
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !208
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !181, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_start) #7, !dbg !210
  tail call void @llvm.dbg.declare(metadata ptr %chunk_start, metadata !182, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 4, ptr %cix) #7, !dbg !212
  tail call void @llvm.dbg.declare(metadata ptr %cix, metadata !183, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_blocks) #7, !dbg !214
  tail call void @llvm.dbg.declare(metadata ptr %no_blocks, metadata !184, metadata !DIExpression()), !dbg !215
  %0 = load i32, ptr %pa_size.addr, align 4, !dbg !216
  store i32 %0, ptr %no_blocks, align 4, !dbg !215
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_blocks_per_chunk) #7, !dbg !217
  tail call void @llvm.dbg.declare(metadata ptr %no_blocks_per_chunk, metadata !185, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.start.p0(i64 8, ptr %aligned_blk_sz) #7, !dbg !219
  tail call void @llvm.dbg.declare(metadata ptr %aligned_blk_sz, metadata !186, metadata !DIExpression()), !dbg !220
  %1 = load i64, ptr %blk_sz.addr, align 8, !dbg !221
  store i64 %1, ptr %aligned_blk_sz, align 8, !dbg !222
  %2 = load ptr, ptr %name.addr, align 8, !dbg !223
  %tobool = icmp ne ptr %2, null, !dbg !223
  br i1 %tobool, label %if.else, label %if.then, !dbg !225

if.then:                                          ; preds = %entry
  %3 = load i64, ptr @erts_no_schedulers, align 8, !dbg !226
  %conv = trunc i64 %3 to i32, !dbg !226
  store i32 %conv, ptr %nthreads.addr, align 4, !dbg !228
  br label %if.end, !dbg !229

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %nthreads.addr, align 4, !dbg !230
  %cmp = icmp eq i32 %4, 1, !dbg !231
  br i1 %cmp, label %if.then2, label %if.else3, !dbg !232

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %no_blocks, align 4, !dbg !233
  store i32 %5, ptr %no_blocks_per_chunk, align 4, !dbg !234
  br label %if.end10, !dbg !235

if.else3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra) #7, !dbg !236
  tail call void @llvm.dbg.declare(metadata ptr %extra, metadata !187, metadata !DIExpression()), !dbg !237
  %6 = load i32, ptr %no_blocks, align 4, !dbg !238
  %sub = sub nsw i32 %6, 1, !dbg !239
  %div = sdiv i32 %sub, 4, !dbg !240
  %add = add nsw i32 %div, 1, !dbg !241
  store i32 %add, ptr %extra, align 4, !dbg !237
  %7 = load i32, ptr %extra, align 4, !dbg !242
  %cmp4 = icmp eq i32 %7, 0, !dbg !244
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !245

if.then6:                                         ; preds = %if.else3
  store i32 1, ptr %extra, align 4, !dbg !246
  br label %if.end7, !dbg !247

if.end7:                                          ; preds = %if.then6, %if.else3
  %8 = load i32, ptr %no_blocks, align 4, !dbg !248
  store i32 %8, ptr %no_blocks_per_chunk, align 4, !dbg !249
  %9 = load i32, ptr %extra, align 4, !dbg !250
  %10 = load i32, ptr %nthreads.addr, align 4, !dbg !251
  %mul = mul nsw i32 %9, %10, !dbg !252
  %11 = load i32, ptr %no_blocks_per_chunk, align 4, !dbg !253
  %add8 = add nsw i32 %11, %mul, !dbg !253
  store i32 %add8, ptr %no_blocks_per_chunk, align 4, !dbg !253
  %12 = load i32, ptr %nthreads.addr, align 4, !dbg !254
  %13 = load i32, ptr %no_blocks_per_chunk, align 4, !dbg !255
  %div9 = sdiv i32 %13, %12, !dbg !255
  store i32 %div9, ptr %no_blocks_per_chunk, align 4, !dbg !255
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra) #7, !dbg !256
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %if.then2
  %14 = load i32, ptr %no_blocks_per_chunk, align 4, !dbg !257
  %15 = load i32, ptr %nthreads.addr, align 4, !dbg !258
  %mul11 = mul nsw i32 %14, %15, !dbg !259
  store i32 %mul11, ptr %no_blocks, align 4, !dbg !260
  store i64 192, ptr %chunk_mem_size, align 8, !dbg !261
  %16 = load i64, ptr %aligned_blk_sz, align 8, !dbg !262
  %17 = load i32, ptr %no_blocks_per_chunk, align 4, !dbg !263
  %conv12 = sext i32 %17 to i64, !dbg !263
  %mul13 = mul i64 %16, %conv12, !dbg !264
  %18 = load i64, ptr %chunk_mem_size, align 8, !dbg !265
  %add14 = add i64 %18, %mul13, !dbg !265
  store i64 %add14, ptr %chunk_mem_size, align 8, !dbg !265
  %19 = load i64, ptr %chunk_mem_size, align 8, !dbg !266
  %sub15 = sub i64 %19, 1, !dbg !266
  %div16 = udiv i64 %sub15, 64, !dbg !266
  %add17 = add i64 %div16, 1, !dbg !266
  %mul18 = mul i64 %add17, 64, !dbg !266
  store i64 %mul18, ptr %chunk_mem_size, align 8, !dbg !267
  store i64 64, ptr %tot_size, align 8, !dbg !268
  %20 = load i64, ptr %chunk_mem_size, align 8, !dbg !269
  %21 = load i32, ptr %nthreads.addr, align 4, !dbg !270
  %conv19 = sext i32 %21 to i64, !dbg !270
  %mul20 = mul i64 %20, %conv19, !dbg !271
  %22 = load i64, ptr %tot_size, align 8, !dbg !272
  %add21 = add i64 %22, %mul20, !dbg !272
  store i64 %add21, ptr %tot_size, align 8, !dbg !272
  %23 = load i64, ptr %tot_size, align 8, !dbg !273
  %call = call noalias ptr @erts_alloc_permanent_cache_aligned(i32 noundef 19813, i64 noundef %23) #8, !dbg !274
  store ptr %call, ptr %p, align 8, !dbg !275
  %24 = load ptr, ptr %p, align 8, !dbg !276
  store ptr %24, ptr %data, align 8, !dbg !277
  %25 = load ptr, ptr %p, align 8, !dbg !278
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 64, !dbg !278
  store ptr %add.ptr, ptr %p, align 8, !dbg !278
  %26 = load ptr, ptr %p, align 8, !dbg !279
  store ptr %26, ptr %chunk_start, align 8, !dbg !280
  %27 = load i64, ptr %chunk_mem_size, align 8, !dbg !281
  %conv22 = trunc i64 %27 to i32, !dbg !281
  %28 = load ptr, ptr %data, align 8, !dbg !282
  %chunks_mem_size = getelementptr inbounds %struct.erts_sspa_data_t, ptr %28, i32 0, i32 2, !dbg !283
  store i32 %conv22, ptr %chunks_mem_size, align 8, !dbg !284
  %29 = load ptr, ptr %chunk_start, align 8, !dbg !285
  %30 = load ptr, ptr %data, align 8, !dbg !286
  %start = getelementptr inbounds %struct.erts_sspa_data_t, ptr %30, i32 0, i32 0, !dbg !287
  store ptr %29, ptr %start, align 8, !dbg !288
  %31 = load ptr, ptr %chunk_start, align 8, !dbg !289
  %32 = load i64, ptr %chunk_mem_size, align 8, !dbg !290
  %33 = load i32, ptr %nthreads.addr, align 4, !dbg !291
  %conv23 = sext i32 %33 to i64, !dbg !291
  %mul24 = mul i64 %32, %conv23, !dbg !292
  %add.ptr25 = getelementptr inbounds i8, ptr %31, i64 %mul24, !dbg !293
  %34 = load ptr, ptr %data, align 8, !dbg !294
  %end = getelementptr inbounds %struct.erts_sspa_data_t, ptr %34, i32 0, i32 1, !dbg !295
  store ptr %add.ptr25, ptr %end, align 8, !dbg !296
  %35 = load i32, ptr %nthreads.addr, align 4, !dbg !297
  %36 = load ptr, ptr %data, align 8, !dbg !298
  %nthreads26 = getelementptr inbounds %struct.erts_sspa_data_t, ptr %36, i32 0, i32 3, !dbg !299
  store i32 %35, ptr %nthreads26, align 4, !dbg !300
  %37 = load ptr, ptr %name.addr, align 8, !dbg !301
  %tobool27 = icmp ne ptr %37, null, !dbg !301
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !303

if.then28:                                        ; preds = %if.end10
  %38 = load ptr, ptr %data, align 8, !dbg !304
  %tsd_key = getelementptr inbounds %struct.erts_sspa_data_t, ptr %38, i32 0, i32 4, !dbg !306
  %39 = load ptr, ptr %name.addr, align 8, !dbg !307
  call void @erts_tsd_key_create(ptr noundef %tsd_key, ptr noundef %39), !dbg !308
  %40 = load ptr, ptr %data, align 8, !dbg !309
  %id_generator = getelementptr inbounds %struct.erts_sspa_data_t, ptr %40, i32 0, i32 5, !dbg !310
  call void @ethr_atomic_init(ptr noundef %id_generator, i64 noundef 0), !dbg !311
  br label %if.end29, !dbg !312

if.end29:                                         ; preds = %if.then28, %if.end10
  store i32 0, ptr %cix, align 4, !dbg !313
  br label %for.cond, !dbg !314

for.cond:                                         ; preds = %for.inc73, %if.end29
  %41 = load i32, ptr %cix, align 4, !dbg !315
  %42 = load i32, ptr %nthreads.addr, align 4, !dbg !316
  %cmp30 = icmp slt i32 %41, %42, !dbg !317
  br i1 %cmp30, label %for.body, label %for.end75, !dbg !318

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %chnk) #7, !dbg !319
  tail call void @llvm.dbg.declare(metadata ptr %chnk, metadata !190, metadata !DIExpression()), !dbg !320
  %43 = load ptr, ptr %data, align 8, !dbg !321
  %44 = load i32, ptr %cix, align 4, !dbg !322
  %call32 = call ptr @erts_sspa_cix2chunk(ptr noundef %43, i32 noundef %44), !dbg !323
  store ptr %call32, ptr %chnk, align 8, !dbg !320
  call void @llvm.lifetime.start.p0(i64 8, ptr %chdr) #7, !dbg !324
  tail call void @llvm.dbg.declare(metadata ptr %chdr, metadata !194, metadata !DIExpression()), !dbg !325
  %45 = load ptr, ptr %chnk, align 8, !dbg !326
  %aligned = getelementptr inbounds %struct.erts_sspa_chunk_t, ptr %45, i32 0, i32 0, !dbg !327
  store ptr %aligned, ptr %chdr, align 8, !dbg !325
  call void @llvm.lifetime.start.p0(i64 8, ptr %blk) #7, !dbg !328
  tail call void @llvm.dbg.declare(metadata ptr %blk, metadata !196, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !330
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !197, metadata !DIExpression()), !dbg !331
  %46 = load ptr, ptr %chdr, align 8, !dbg !332
  %tail = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %46, i32 0, i32 0, !dbg !333
  %last = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail, i32 0, i32 1, !dbg !334
  %47 = load ptr, ptr %chdr, align 8, !dbg !335
  %tail33 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %47, i32 0, i32 0, !dbg !336
  %marker = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail33, i32 0, i32 0, !dbg !337
  %48 = ptrtoint ptr %marker to i64, !dbg !338
  call void @ethr_atomic_init(ptr noundef %last, i64 noundef %48), !dbg !339
  %49 = load ptr, ptr %chdr, align 8, !dbg !340
  %tail34 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %49, i32 0, i32 0, !dbg !341
  %marker35 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail34, i32 0, i32 0, !dbg !342
  call void @ethr_atomic_init(ptr noundef %marker35, i64 noundef 0), !dbg !343
  %50 = load ptr, ptr %chdr, align 8, !dbg !344
  %tail36 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %50, i32 0, i32 0, !dbg !345
  %um_refc = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail36, i32 0, i32 2, !dbg !346
  %arrayidx = getelementptr inbounds [2 x %struct.ethr_native_atomic64_t], ptr %um_refc, i64 0, i64 0, !dbg !344
  call void @ethr_atomic_init(ptr noundef %arrayidx, i64 noundef 0), !dbg !347
  %51 = load ptr, ptr %chdr, align 8, !dbg !348
  %tail37 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %51, i32 0, i32 0, !dbg !349
  %um_refc38 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail37, i32 0, i32 2, !dbg !350
  %arrayidx39 = getelementptr inbounds [2 x %struct.ethr_native_atomic64_t], ptr %um_refc38, i64 0, i64 1, !dbg !348
  call void @ethr_atomic_init(ptr noundef %arrayidx39, i64 noundef 0), !dbg !351
  %52 = load ptr, ptr %chdr, align 8, !dbg !352
  %tail40 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %52, i32 0, i32 0, !dbg !353
  %um_refc_ix = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail40, i32 0, i32 3, !dbg !354
  call void @ethr_atomic32_init(ptr noundef %um_refc_ix, i32 noundef 0), !dbg !355
  %53 = load ptr, ptr %chdr, align 8, !dbg !356
  %head = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %53, i32 0, i32 1, !dbg !357
  %no_thr_progress_check = getelementptr inbounds %struct.anon, ptr %head, i32 0, i32 0, !dbg !358
  store i32 0, ptr %no_thr_progress_check, align 8, !dbg !359
  %54 = load ptr, ptr %chdr, align 8, !dbg !360
  %head41 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %54, i32 0, i32 1, !dbg !361
  %used_marker = getelementptr inbounds %struct.anon, ptr %head41, i32 0, i32 1, !dbg !362
  store i32 1, ptr %used_marker, align 4, !dbg !363
  %55 = load ptr, ptr %chdr, align 8, !dbg !364
  %tail42 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %55, i32 0, i32 0, !dbg !365
  %marker43 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail42, i32 0, i32 0, !dbg !366
  %56 = load ptr, ptr %chdr, align 8, !dbg !367
  %head44 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %56, i32 0, i32 1, !dbg !368
  %first = getelementptr inbounds %struct.anon, ptr %head44, i32 0, i32 2, !dbg !369
  store ptr %marker43, ptr %first, align 8, !dbg !370
  %57 = load ptr, ptr %chdr, align 8, !dbg !371
  %tail45 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %57, i32 0, i32 0, !dbg !372
  %marker46 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail45, i32 0, i32 0, !dbg !373
  %58 = load ptr, ptr %chdr, align 8, !dbg !374
  %head47 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %58, i32 0, i32 1, !dbg !375
  %unref_end = getelementptr inbounds %struct.anon, ptr %head47, i32 0, i32 3, !dbg !376
  store ptr %marker46, ptr %unref_end, align 8, !dbg !377
  %call48 = call i64 @erts_thr_progress_current(), !dbg !378
  %59 = load ptr, ptr %chdr, align 8, !dbg !379
  %head49 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %59, i32 0, i32 1, !dbg !380
  %next = getelementptr inbounds %struct.anon, ptr %head49, i32 0, i32 4, !dbg !381
  %thr_progress = getelementptr inbounds %struct.anon.1, ptr %next, i32 0, i32 0, !dbg !382
  store i64 %call48, ptr %thr_progress, align 8, !dbg !383
  %60 = load ptr, ptr %chdr, align 8, !dbg !384
  %head50 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %60, i32 0, i32 1, !dbg !385
  %next51 = getelementptr inbounds %struct.anon, ptr %head50, i32 0, i32 4, !dbg !386
  %thr_progress_reached = getelementptr inbounds %struct.anon.1, ptr %next51, i32 0, i32 1, !dbg !387
  store i32 1, ptr %thr_progress_reached, align 8, !dbg !388
  %61 = load ptr, ptr %chdr, align 8, !dbg !389
  %head52 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %61, i32 0, i32 1, !dbg !390
  %next53 = getelementptr inbounds %struct.anon, ptr %head52, i32 0, i32 4, !dbg !391
  %um_refc_ix54 = getelementptr inbounds %struct.anon.1, ptr %next53, i32 0, i32 2, !dbg !392
  store i32 1, ptr %um_refc_ix54, align 4, !dbg !393
  %62 = load ptr, ptr %chdr, align 8, !dbg !394
  %tail55 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %62, i32 0, i32 0, !dbg !395
  %marker56 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail55, i32 0, i32 0, !dbg !396
  %63 = load ptr, ptr %chdr, align 8, !dbg !397
  %head57 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %63, i32 0, i32 1, !dbg !398
  %next58 = getelementptr inbounds %struct.anon, ptr %head57, i32 0, i32 4, !dbg !399
  %unref_end59 = getelementptr inbounds %struct.anon.1, ptr %next58, i32 0, i32 3, !dbg !400
  store ptr %marker56, ptr %unref_end59, align 8, !dbg !401
  %64 = load ptr, ptr %chnk, align 8, !dbg !402
  %data60 = getelementptr inbounds %struct.erts_sspa_chunk_t, ptr %64, i32 0, i32 1, !dbg !403
  %arrayidx61 = getelementptr inbounds [1 x i8], ptr %data60, i64 0, i64 0, !dbg !402
  store ptr %arrayidx61, ptr %p, align 8, !dbg !404
  %65 = load ptr, ptr %p, align 8, !dbg !405
  %66 = load ptr, ptr %chdr, align 8, !dbg !406
  %local = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %66, i32 0, i32 2, !dbg !407
  %first62 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local, i32 0, i32 0, !dbg !408
  store ptr %65, ptr %first62, align 8, !dbg !409
  %67 = load ptr, ptr %p, align 8, !dbg !410
  store ptr %67, ptr %blk, align 8, !dbg !411
  store i32 0, ptr %i, align 4, !dbg !412
  br label %for.cond63, !dbg !414

for.cond63:                                       ; preds = %for.inc, %for.body
  %68 = load i32, ptr %i, align 4, !dbg !415
  %69 = load i32, ptr %no_blocks_per_chunk, align 4, !dbg !417
  %cmp64 = icmp slt i32 %68, %69, !dbg !418
  br i1 %cmp64, label %for.body66, label %for.end, !dbg !419

for.body66:                                       ; preds = %for.cond63
  %70 = load ptr, ptr %p, align 8, !dbg !420
  store ptr %70, ptr %blk, align 8, !dbg !422
  %71 = load i64, ptr %aligned_blk_sz, align 8, !dbg !423
  %72 = load ptr, ptr %p, align 8, !dbg !424
  %add.ptr67 = getelementptr inbounds i8, ptr %72, i64 %71, !dbg !424
  store ptr %add.ptr67, ptr %p, align 8, !dbg !424
  %73 = load ptr, ptr %p, align 8, !dbg !425
  %74 = load ptr, ptr %blk, align 8, !dbg !426
  store ptr %73, ptr %74, align 8, !dbg !427
  br label %for.inc, !dbg !428

for.inc:                                          ; preds = %for.body66
  %75 = load i32, ptr %i, align 4, !dbg !429
  %inc = add nsw i32 %75, 1, !dbg !429
  store i32 %inc, ptr %i, align 4, !dbg !429
  br label %for.cond63, !dbg !430, !llvm.loop !431

for.end:                                          ; preds = %for.cond63
  %76 = load ptr, ptr %blk, align 8, !dbg !434
  store ptr null, ptr %76, align 8, !dbg !435
  %77 = load ptr, ptr %blk, align 8, !dbg !436
  %78 = load ptr, ptr %chdr, align 8, !dbg !437
  %local68 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %78, i32 0, i32 2, !dbg !438
  %last69 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local68, i32 0, i32 1, !dbg !439
  store ptr %77, ptr %last69, align 8, !dbg !440
  %79 = load i32, ptr %no_blocks_per_chunk, align 4, !dbg !441
  %80 = load ptr, ptr %chdr, align 8, !dbg !442
  %local70 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %80, i32 0, i32 2, !dbg !443
  %cnt = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local70, i32 0, i32 2, !dbg !444
  store i32 %79, ptr %cnt, align 8, !dbg !445
  %81 = load i32, ptr %no_blocks_per_chunk, align 4, !dbg !446
  %div71 = sdiv i32 %81, 3, !dbg !447
  %82 = load ptr, ptr %chdr, align 8, !dbg !448
  %local72 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %82, i32 0, i32 2, !dbg !449
  %lim = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local72, i32 0, i32 3, !dbg !450
  store i32 %div71, ptr %lim, align 4, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !452
  call void @llvm.lifetime.end.p0(i64 8, ptr %blk) #7, !dbg !452
  call void @llvm.lifetime.end.p0(i64 8, ptr %chdr) #7, !dbg !452
  call void @llvm.lifetime.end.p0(i64 8, ptr %chnk) #7, !dbg !452
  br label %for.inc73, !dbg !453

for.inc73:                                        ; preds = %for.end
  %83 = load i32, ptr %cix, align 4, !dbg !454
  %inc74 = add nsw i32 %83, 1, !dbg !454
  store i32 %inc74, ptr %cix, align 4, !dbg !454
  br label %for.cond, !dbg !455, !llvm.loop !456

for.end75:                                        ; preds = %for.cond
  %84 = load ptr, ptr %data, align 8, !dbg !458
  call void @llvm.lifetime.end.p0(i64 8, ptr %aligned_blk_sz) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_blocks_per_chunk) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_blocks) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 4, ptr %cix) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_start) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_mem_size) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %tot_size) #7, !dbg !459
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #7, !dbg !459
  ret ptr %84, !dbg !460
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: allocsize(1)
declare !dbg !461 noalias ptr @erts_alloc_permanent_cache_aligned(i32 noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @erts_tsd_key_create(ptr noundef %keyp, ptr noundef %keyname) #3 !dbg !468 {
entry:
  %keyp.addr = alloca ptr, align 8
  %keyname.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %keyp, ptr %keyp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keyp.addr, metadata !473, metadata !DIExpression()), !dbg !476
  store ptr %keyname, ptr %keyname.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %keyname.addr, metadata !474, metadata !DIExpression()), !dbg !477
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #7, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !475, metadata !DIExpression()), !dbg !479
  %0 = load ptr, ptr %keyp.addr, align 8, !dbg !480
  %1 = load ptr, ptr %keyname.addr, align 8, !dbg !481
  %call = call i32 @ethr_tsd_key_create(ptr noundef %0, ptr noundef %1), !dbg !482
  store i32 %call, ptr %res, align 4, !dbg !479
  %2 = load i32, ptr %res, align 4, !dbg !483
  %tobool = icmp ne i32 %2, 0, !dbg !483
  br i1 %tobool, label %if.then, label %if.end, !dbg !485

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %res, align 4, !dbg !486
  call void @erts_thr_fatal_error(i32 noundef %3, ptr noundef @.str) #9, !dbg !487
  unreachable, !dbg !487

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #7, !dbg !488
  ret void, !dbg !488
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic_init(ptr noundef %var, i64 noundef %val) #3 !dbg !489 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !494, metadata !DIExpression()), !dbg !496
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !495, metadata !DIExpression()), !dbg !497
  %0 = load ptr, ptr %var.addr, align 8, !dbg !498
  %1 = load i64, ptr %val.addr, align 8, !dbg !499
  call void @ethr_atomic_set(ptr noundef %0, i64 noundef %1), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @erts_sspa_cix2chunk(ptr noundef %data, i32 noundef %cix) #3 !dbg !502 {
entry:
  %data.addr = alloca ptr, align 8
  %cix.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !506, metadata !DIExpression()), !dbg !508
  store i32 %cix, ptr %cix.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %cix.addr, metadata !507, metadata !DIExpression()), !dbg !509
  %0 = load ptr, ptr %data.addr, align 8, !dbg !510
  %start = getelementptr inbounds %struct.erts_sspa_data_t, ptr %0, i32 0, i32 0, !dbg !511
  %1 = load ptr, ptr %start, align 8, !dbg !511
  %2 = load i32, ptr %cix.addr, align 4, !dbg !512
  %3 = load ptr, ptr %data.addr, align 8, !dbg !513
  %chunks_mem_size = getelementptr inbounds %struct.erts_sspa_data_t, ptr %3, i32 0, i32 2, !dbg !514
  %4 = load i32, ptr %chunks_mem_size, align 8, !dbg !514
  %mul = mul nsw i32 %2, %4, !dbg !515
  %idx.ext = sext i32 %mul to i64, !dbg !516
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !516
  ret ptr %add.ptr, !dbg !517
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic32_init(ptr noundef %var, i32 noundef %val) #3 !dbg !518 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !523, metadata !DIExpression()), !dbg !525
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !524, metadata !DIExpression()), !dbg !526
  %0 = load ptr, ptr %var.addr, align 8, !dbg !527
  %1 = load i32, ptr %val.addr, align 4, !dbg !528
  call void @ethr_atomic32_set(ptr noundef %0, i32 noundef %1), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @erts_thr_progress_current() #3 !dbg !531 {
entry:
  %retval = alloca i64, align 8
  %call = call i32 @erts_thr_progress_is_managed_thread(), !dbg !534
  %tobool = icmp ne i32 %call, 0, !dbg !534
  br i1 %tobool, label %if.then, label %if.else, !dbg !536

if.then:                                          ; preds = %entry
  %call1 = call i64 @erts_thr_prgr_read_nob__(ptr noundef @erts_thr_prgr__), !dbg !537
  store i64 %call1, ptr %retval, align 8, !dbg !538
  br label %return, !dbg !538

if.else:                                          ; preds = %entry
  %call2 = call i64 @erts_thr_prgr_read_acqb__(ptr noundef @erts_thr_prgr__), !dbg !539
  store i64 %call2, ptr %retval, align 8, !dbg !540
  br label %return, !dbg !540

return:                                           ; preds = %if.else, %if.then
  %0 = load i64, ptr %retval, align 8, !dbg !541
  ret i64 %0, !dbg !541
}

; Function Attrs: nounwind uwtable
define dso_local void @erts_sspa_remote_free(ptr noundef %chdr, ptr noundef %blk, i32 noundef %cinit) #0 !dbg !542 {
entry:
  %chdr.addr = alloca ptr, align 8
  %blk.addr = alloca ptr, align 8
  %cinit.addr = alloca i32, align 4
  %um_refc_ix = alloca i32, align 4
  %managed_thread = alloca i32, align 4
  %tmp_um_refc_ix = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chdr, ptr %chdr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %chdr.addr, metadata !546, metadata !DIExpression()), !dbg !555
  store ptr %blk, ptr %blk.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !547, metadata !DIExpression()), !dbg !556
  store i32 %cinit, ptr %cinit.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %cinit.addr, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.lifetime.start.p0(i64 4, ptr %um_refc_ix) #7, !dbg !558
  tail call void @llvm.dbg.declare(metadata ptr %um_refc_ix, metadata !549, metadata !DIExpression()), !dbg !559
  store i32 0, ptr %um_refc_ix, align 4, !dbg !559
  call void @llvm.lifetime.start.p0(i64 4, ptr %managed_thread) #7, !dbg !560
  tail call void @llvm.dbg.declare(metadata ptr %managed_thread, metadata !550, metadata !DIExpression()), !dbg !561
  %call = call i32 @erts_thr_progress_is_managed_thread(), !dbg !562
  store i32 %call, ptr %managed_thread, align 4, !dbg !561
  %0 = load i32, ptr %managed_thread, align 4, !dbg !563
  %tobool = icmp ne i32 %0, 0, !dbg !563
  br i1 %tobool, label %if.end12, label %if.then, !dbg !564

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %chdr.addr, align 8, !dbg !565
  %tail = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %1, i32 0, i32 0, !dbg !566
  %um_refc_ix1 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail, i32 0, i32 3, !dbg !567
  %call2 = call i32 @ethr_atomic32_read_acqb(ptr noundef %um_refc_ix1), !dbg !568
  store i32 %call2, ptr %um_refc_ix, align 4, !dbg !569
  br label %while.cond, !dbg !570

while.cond:                                       ; preds = %cleanup.cont, %if.then
  br label %while.body, !dbg !570

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp_um_refc_ix) #7, !dbg !571
  tail call void @llvm.dbg.declare(metadata ptr %tmp_um_refc_ix, metadata !551, metadata !DIExpression()), !dbg !572
  %2 = load ptr, ptr %chdr.addr, align 8, !dbg !573
  %tail3 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %2, i32 0, i32 0, !dbg !574
  %um_refc = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail3, i32 0, i32 2, !dbg !575
  %3 = load i32, ptr %um_refc_ix, align 4, !dbg !576
  %idxprom = sext i32 %3 to i64, !dbg !573
  %arrayidx = getelementptr inbounds [2 x %struct.ethr_native_atomic64_t], ptr %um_refc, i64 0, i64 %idxprom, !dbg !573
  call void @ethr_atomic_inc_acqb(ptr noundef %arrayidx), !dbg !577
  %4 = load ptr, ptr %chdr.addr, align 8, !dbg !578
  %tail4 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %4, i32 0, i32 0, !dbg !579
  %um_refc_ix5 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail4, i32 0, i32 3, !dbg !580
  %call6 = call i32 @ethr_atomic32_read_acqb(ptr noundef %um_refc_ix5), !dbg !581
  store i32 %call6, ptr %tmp_um_refc_ix, align 4, !dbg !582
  %5 = load i32, ptr %tmp_um_refc_ix, align 4, !dbg !583
  %6 = load i32, ptr %um_refc_ix, align 4, !dbg !585
  %cmp = icmp eq i32 %5, %6, !dbg !586
  br i1 %cmp, label %if.then7, label %if.end, !dbg !587

if.then7:                                         ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !588

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %chdr.addr, align 8, !dbg !589
  %tail8 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %7, i32 0, i32 0, !dbg !590
  %um_refc9 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail8, i32 0, i32 2, !dbg !591
  %8 = load i32, ptr %um_refc_ix, align 4, !dbg !592
  %idxprom10 = sext i32 %8 to i64, !dbg !589
  %arrayidx11 = getelementptr inbounds [2 x %struct.ethr_native_atomic64_t], ptr %um_refc9, i64 0, i64 %idxprom10, !dbg !589
  call void @ethr_atomic_dec_relb(ptr noundef %arrayidx11), !dbg !593
  %9 = load i32, ptr %tmp_um_refc_ix, align 4, !dbg !594
  store i32 %9, ptr %um_refc_ix, align 4, !dbg !595
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !596
  br label %cleanup, !dbg !596

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp_um_refc_ix) #7, !dbg !596
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !570, !llvm.loop !597

while.end:                                        ; preds = %cleanup
  br label %if.end12, !dbg !598

if.end12:                                         ; preds = %while.end, %entry
  %10 = load ptr, ptr %chdr.addr, align 8, !dbg !599
  %11 = load ptr, ptr %blk.addr, align 8, !dbg !600
  %12 = load i32, ptr %cinit.addr, align 4, !dbg !601
  call void @enqueue_remote_managed_thread(ptr noundef %10, ptr noundef %11, i32 noundef %12), !dbg !602
  %13 = load i32, ptr %managed_thread, align 4, !dbg !603
  %tobool13 = icmp ne i32 %13, 0, !dbg !603
  br i1 %tobool13, label %if.end19, label %if.then14, !dbg !605

if.then14:                                        ; preds = %if.end12
  %14 = load ptr, ptr %chdr.addr, align 8, !dbg !606
  %tail15 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %14, i32 0, i32 0, !dbg !607
  %um_refc16 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail15, i32 0, i32 2, !dbg !608
  %15 = load i32, ptr %um_refc_ix, align 4, !dbg !609
  %idxprom17 = sext i32 %15 to i64, !dbg !606
  %arrayidx18 = getelementptr inbounds [2 x %struct.ethr_native_atomic64_t], ptr %um_refc16, i64 0, i64 %idxprom17, !dbg !606
  call void @ethr_atomic_dec_relb(ptr noundef %arrayidx18), !dbg !610
  br label %if.end19, !dbg !610

if.end19:                                         ; preds = %if.then14, %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr %managed_thread) #7, !dbg !611
  call void @llvm.lifetime.end.p0(i64 4, ptr %um_refc_ix) #7, !dbg !611
  ret void, !dbg !611

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @erts_thr_progress_is_managed_thread() #3 !dbg !612 {
entry:
  %tpd = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpd) #7, !dbg !617
  tail call void @llvm.dbg.declare(metadata ptr %tpd, metadata !616, metadata !DIExpression()), !dbg !618
  %0 = load i32, ptr @erts_thr_prgr_data_key__, align 4, !dbg !619
  %call = call ptr @erts_tsd_get(i32 noundef %0), !dbg !620
  store ptr %call, ptr %tpd, align 8, !dbg !618
  %1 = load ptr, ptr %tpd, align 8, !dbg !621
  %tobool = icmp ne ptr %1, null, !dbg !621
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !622

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %tpd, align 8, !dbg !623
  %is_managed = getelementptr inbounds %struct.ErtsThrPrgrData, ptr %2, i32 0, i32 1, !dbg !624
  %3 = load i32, ptr %is_managed, align 4, !dbg !624
  %tobool1 = icmp ne i32 %3, 0, !dbg !622
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !625
  %land.ext = zext i1 %4 to i32, !dbg !622
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpd) #7, !dbg !626
  ret i32 %land.ext, !dbg !627
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ethr_atomic32_read_acqb(ptr noundef %var) #3 !dbg !628 {
entry:
  %var.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !632, metadata !DIExpression()), !dbg !634
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #7, !dbg !635
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !633, metadata !DIExpression()), !dbg !636
  %0 = load ptr, ptr %var.addr, align 8, !dbg !637
  %call = call i32 @ethr_native_atomic32_read(ptr noundef %0), !dbg !638
  store i32 %call, ptr %res, align 4, !dbg !639
  call void @ethr_cfence__(), !dbg !640
  %1 = load i32, ptr %res, align 4, !dbg !641
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #7, !dbg !642
  ret i32 %1, !dbg !643
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic_inc_acqb(ptr noundef %var) #3 !dbg !644 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !648, metadata !DIExpression()), !dbg !649
  %0 = load ptr, ptr %var.addr, align 8, !dbg !650
  call void @ethr_native_atomic64_inc_mb(ptr noundef %0), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic_dec_relb(ptr noundef %var) #3 !dbg !653 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !655, metadata !DIExpression()), !dbg !656
  %0 = load ptr, ptr %var.addr, align 8, !dbg !657
  call void @ethr_native_atomic64_dec_mb(ptr noundef %0), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @enqueue_remote_managed_thread(ptr noundef %chdr, ptr noundef %this, i32 noundef %cinit) #3 !dbg !660 {
entry:
  %chdr.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %cinit.addr = alloca i32, align 4
  %itmp = alloca i64, align 8
  %enq = alloca ptr, align 8
  %i = alloca i32, align 4
  %itmp2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chdr, ptr %chdr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %chdr.addr, metadata !662, metadata !DIExpression()), !dbg !672
  store ptr %this, ptr %this.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %this.addr, metadata !663, metadata !DIExpression()), !dbg !673
  store i32 %cinit, ptr %cinit.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %cinit.addr, metadata !664, metadata !DIExpression()), !dbg !674
  call void @llvm.lifetime.start.p0(i64 8, ptr %itmp) #7, !dbg !675
  tail call void @llvm.dbg.declare(metadata ptr %itmp, metadata !665, metadata !DIExpression()), !dbg !676
  call void @llvm.lifetime.start.p0(i64 8, ptr %enq) #7, !dbg !677
  tail call void @llvm.dbg.declare(metadata ptr %enq, metadata !666, metadata !DIExpression()), !dbg !678
  %0 = load ptr, ptr %this.addr, align 8, !dbg !679
  call void @ethr_atomic_init(ptr noundef %0, i64 noundef 0), !dbg !680
  %1 = load ptr, ptr %chdr.addr, align 8, !dbg !681
  %tail = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %1, i32 0, i32 0, !dbg !682
  %last = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail, i32 0, i32 1, !dbg !683
  %call = call i64 @ethr_atomic_read(ptr noundef %last), !dbg !684
  %2 = inttoptr i64 %call to ptr, !dbg !685
  store ptr %2, ptr %enq, align 8, !dbg !686
  %3 = load ptr, ptr %enq, align 8, !dbg !687
  %4 = load ptr, ptr %this.addr, align 8, !dbg !688
  %5 = ptrtoint ptr %4 to i64, !dbg !689
  %call1 = call i64 @ethr_atomic_cmpxchg_relb(ptr noundef %3, i64 noundef %5, i64 noundef 0), !dbg !690
  store i64 %call1, ptr %itmp, align 8, !dbg !691
  %6 = load i64, ptr %itmp, align 8, !dbg !692
  %cmp = icmp eq i64 %6, 0, !dbg !693
  br i1 %cmp, label %if.then, label %if.else, !dbg !694

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %chdr.addr, align 8, !dbg !695
  %tail2 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %7, i32 0, i32 0, !dbg !697
  %last3 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail2, i32 0, i32 1, !dbg !698
  %8 = load ptr, ptr %this.addr, align 8, !dbg !699
  %9 = ptrtoint ptr %8 to i64, !dbg !700
  call void @ethr_atomic_set_relb(ptr noundef %last3, i64 noundef %9), !dbg !701
  br label %if.end12, !dbg !702

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !703
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !667, metadata !DIExpression()), !dbg !704
  %10 = load i32, ptr %cinit.addr, align 4, !dbg !705
  store i32 %10, ptr %i, align 4, !dbg !704
  br label %while.cond, !dbg !706

while.cond:                                       ; preds = %cleanup.cont, %if.else
  br label %while.body, !dbg !706

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %itmp2) #7, !dbg !707
  tail call void @llvm.dbg.declare(metadata ptr %itmp2, metadata !670, metadata !DIExpression()), !dbg !708
  %11 = load ptr, ptr %this.addr, align 8, !dbg !709
  %12 = load i64, ptr %itmp, align 8, !dbg !710
  call void @ethr_atomic_set(ptr noundef %11, i64 noundef %12), !dbg !711
  %13 = load ptr, ptr %enq, align 8, !dbg !712
  %14 = load ptr, ptr %this.addr, align 8, !dbg !713
  %15 = ptrtoint ptr %14 to i64, !dbg !714
  %16 = load i64, ptr %itmp, align 8, !dbg !715
  %call4 = call i64 @ethr_atomic_cmpxchg_relb(ptr noundef %13, i64 noundef %15, i64 noundef %16), !dbg !716
  store i64 %call4, ptr %itmp2, align 8, !dbg !717
  %17 = load i64, ptr %itmp, align 8, !dbg !718
  %18 = load i64, ptr %itmp2, align 8, !dbg !720
  %cmp5 = icmp eq i64 %17, %18, !dbg !721
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !722

if.then6:                                         ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !723

if.end:                                           ; preds = %while.body
  %19 = load i32, ptr %i, align 4, !dbg !724
  %and = and i32 %19, 1, !dbg !726
  %cmp7 = icmp eq i32 %and, 0, !dbg !727
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !728

if.then8:                                         ; preds = %if.end
  %20 = load i64, ptr %itmp2, align 8, !dbg !729
  store i64 %20, ptr %itmp, align 8, !dbg !730
  br label %if.end11, !dbg !731

if.else9:                                         ; preds = %if.end
  %21 = load i64, ptr %itmp2, align 8, !dbg !732
  %22 = inttoptr i64 %21 to ptr, !dbg !734
  store ptr %22, ptr %enq, align 8, !dbg !735
  %23 = load ptr, ptr %enq, align 8, !dbg !736
  %call10 = call i64 @ethr_atomic_read_acqb(ptr noundef %23), !dbg !737
  store i64 %call10, ptr %itmp, align 8, !dbg !738
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  %24 = load i32, ptr %i, align 4, !dbg !739
  %inc = add nsw i32 %24, 1, !dbg !739
  store i32 %inc, ptr %i, align 4, !dbg !739
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !740
  br label %cleanup, !dbg !740

cleanup:                                          ; preds = %if.end11, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %itmp2) #7, !dbg !740
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !706, !llvm.loop !741

while.end:                                        ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !742
  br label %if.end12

if.end12:                                         ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %enq) #7, !dbg !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %itmp) #7, !dbg !743
  ret void, !dbg !743

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local ptr @erts_sspa_process_remote_frees(ptr noundef %chdr, ptr noundef %old_res) #0 !dbg !744 {
entry:
  %chdr.addr = alloca ptr, align 8
  %old_res.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  store ptr %chdr, ptr %chdr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %chdr.addr, metadata !748, metadata !DIExpression()), !dbg !751
  store ptr %old_res, ptr %old_res.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %old_res.addr, metadata !749, metadata !DIExpression()), !dbg !752
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !753
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !750, metadata !DIExpression()), !dbg !754
  %0 = load ptr, ptr %old_res.addr, align 8, !dbg !755
  store ptr %0, ptr %res, align 8, !dbg !754
  %1 = load ptr, ptr %chdr.addr, align 8, !dbg !756
  call void @fetch_remote(ptr noundef %1, i32 noundef 5), !dbg !757
  %2 = load ptr, ptr %res, align 8, !dbg !758
  %tobool = icmp ne ptr %2, null, !dbg !758
  br i1 %tobool, label %if.end12, label %land.lhs.true, !dbg !760

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %chdr.addr, align 8, !dbg !761
  %local = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %3, i32 0, i32 2, !dbg !762
  %first = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local, i32 0, i32 0, !dbg !763
  %4 = load ptr, ptr %first, align 8, !dbg !763
  %tobool1 = icmp ne ptr %4, null, !dbg !761
  br i1 %tobool1, label %if.then, label %if.end12, !dbg !764

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %chdr.addr, align 8, !dbg !765
  %local2 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %5, i32 0, i32 2, !dbg !767
  %first3 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local2, i32 0, i32 0, !dbg !768
  %6 = load ptr, ptr %first3, align 8, !dbg !768
  store ptr %6, ptr %res, align 8, !dbg !769
  %7 = load ptr, ptr %res, align 8, !dbg !770
  %8 = load ptr, ptr %7, align 8, !dbg !771
  %9 = load ptr, ptr %chdr.addr, align 8, !dbg !772
  %local4 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %9, i32 0, i32 2, !dbg !773
  %first5 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local4, i32 0, i32 0, !dbg !774
  store ptr %8, ptr %first5, align 8, !dbg !775
  %10 = load ptr, ptr %chdr.addr, align 8, !dbg !776
  %local6 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %10, i32 0, i32 2, !dbg !777
  %cnt = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local6, i32 0, i32 2, !dbg !778
  %11 = load i32, ptr %cnt, align 8, !dbg !779
  %dec = add nsw i32 %11, -1, !dbg !779
  store i32 %dec, ptr %cnt, align 8, !dbg !779
  %12 = load ptr, ptr %chdr.addr, align 8, !dbg !780
  %local7 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %12, i32 0, i32 2, !dbg !782
  %first8 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local7, i32 0, i32 0, !dbg !783
  %13 = load ptr, ptr %first8, align 8, !dbg !783
  %tobool9 = icmp ne ptr %13, null, !dbg !780
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !784

if.then10:                                        ; preds = %if.then
  %14 = load ptr, ptr %chdr.addr, align 8, !dbg !785
  %local11 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %14, i32 0, i32 2, !dbg !786
  %last = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local11, i32 0, i32 1, !dbg !787
  store ptr null, ptr %last, align 8, !dbg !788
  br label %if.end, !dbg !785

if.end:                                           ; preds = %if.then10, %if.then
  br label %if.end12, !dbg !789

if.end12:                                         ; preds = %if.end, %land.lhs.true, %entry
  %15 = load ptr, ptr %res, align 8, !dbg !790
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !791
  ret ptr %15, !dbg !792
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @fetch_remote(ptr noundef %chdr, i32 noundef %max) #3 !dbg !793 {
entry:
  %chdr.addr = alloca ptr, align 8
  %max.addr = alloca i32, align 4
  %new_local = alloca i32, align 4
  %ilast = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %um_refc_ix = alloca i32, align 4
  %first65 = alloca ptr, align 8
  %this = alloca ptr, align 8
  %next66 = alloca ptr, align 8
  %last67 = alloca ptr, align 8
  store ptr %chdr, ptr %chdr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %chdr.addr, metadata !797, metadata !DIExpression()), !dbg !812
  store i32 %max, ptr %max.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !798, metadata !DIExpression()), !dbg !813
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_local) #7, !dbg !814
  tail call void @llvm.dbg.declare(metadata ptr %new_local, metadata !799, metadata !DIExpression()), !dbg !815
  store i32 0, ptr %new_local, align 4, !dbg !815
  %0 = load ptr, ptr %chdr.addr, align 8, !dbg !816
  %head = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %0, i32 0, i32 1, !dbg !817
  %no_thr_progress_check = getelementptr inbounds %struct.anon, ptr %head, i32 0, i32 0, !dbg !818
  %1 = load i32, ptr %no_thr_progress_check, align 8, !dbg !818
  %cmp = icmp slt i32 %1, 10, !dbg !819
  br i1 %cmp, label %if.then, label %if.else, !dbg !820

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %chdr.addr, align 8, !dbg !821
  %head1 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %2, i32 0, i32 1, !dbg !822
  %no_thr_progress_check2 = getelementptr inbounds %struct.anon, ptr %head1, i32 0, i32 0, !dbg !823
  %3 = load i32, ptr %no_thr_progress_check2, align 8, !dbg !824
  %inc = add nsw i32 %3, 1, !dbg !824
  store i32 %inc, ptr %no_thr_progress_check2, align 8, !dbg !824
  br label %if.end56, !dbg !821

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ilast) #7, !dbg !825
  tail call void @llvm.dbg.declare(metadata ptr %ilast, metadata !800, metadata !DIExpression()), !dbg !826
  %4 = load ptr, ptr %chdr.addr, align 8, !dbg !827
  %head3 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %4, i32 0, i32 1, !dbg !828
  %no_thr_progress_check4 = getelementptr inbounds %struct.anon, ptr %head3, i32 0, i32 0, !dbg !829
  store i32 0, ptr %no_thr_progress_check4, align 8, !dbg !830
  %5 = load ptr, ptr %chdr.addr, align 8, !dbg !831
  %tail = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %5, i32 0, i32 0, !dbg !832
  %last = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail, i32 0, i32 1, !dbg !833
  %call = call i64 @ethr_atomic_read(ptr noundef %last), !dbg !834
  store i64 %call, ptr %ilast, align 8, !dbg !835
  %6 = load i64, ptr %ilast, align 8, !dbg !836
  %7 = inttoptr i64 %6 to ptr, !dbg !838
  %8 = load ptr, ptr %chdr.addr, align 8, !dbg !839
  %tail5 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %8, i32 0, i32 0, !dbg !840
  %marker = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail5, i32 0, i32 0, !dbg !841
  %cmp6 = icmp eq ptr %7, %marker, !dbg !842
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !843

land.lhs.true:                                    ; preds = %if.else
  %9 = load ptr, ptr %chdr.addr, align 8, !dbg !844
  %head7 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %9, i32 0, i32 1, !dbg !845
  %first = getelementptr inbounds %struct.anon, ptr %head7, i32 0, i32 2, !dbg !846
  %10 = load ptr, ptr %first, align 8, !dbg !846
  %11 = load ptr, ptr %chdr.addr, align 8, !dbg !847
  %tail8 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %11, i32 0, i32 0, !dbg !848
  %marker9 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail8, i32 0, i32 0, !dbg !849
  %cmp10 = icmp eq ptr %10, %marker9, !dbg !850
  br i1 %cmp10, label %if.then11, label %if.end, !dbg !851

if.then11:                                        ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !852

if.end:                                           ; preds = %land.lhs.true, %if.else
  %12 = load ptr, ptr %chdr.addr, align 8, !dbg !853
  %head12 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %12, i32 0, i32 1, !dbg !854
  %next = getelementptr inbounds %struct.anon, ptr %head12, i32 0, i32 4, !dbg !855
  %thr_progress_reached = getelementptr inbounds %struct.anon.1, ptr %next, i32 0, i32 1, !dbg !856
  %13 = load i32, ptr %thr_progress_reached, align 8, !dbg !856
  %tobool = icmp ne i32 %13, 0, !dbg !853
  br i1 %tobool, label %if.then17, label %lor.lhs.false, !dbg !857

lor.lhs.false:                                    ; preds = %if.end
  %14 = load ptr, ptr %chdr.addr, align 8, !dbg !858
  %head13 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %14, i32 0, i32 1, !dbg !859
  %next14 = getelementptr inbounds %struct.anon, ptr %head13, i32 0, i32 4, !dbg !860
  %thr_progress = getelementptr inbounds %struct.anon.1, ptr %next14, i32 0, i32 0, !dbg !861
  %15 = load i64, ptr %thr_progress, align 8, !dbg !861
  %call15 = call i32 @erts_thr_progress_has_reached(i64 noundef %15), !dbg !862
  %tobool16 = icmp ne i32 %call15, 0, !dbg !862
  br i1 %tobool16, label %if.then17, label %if.end55, !dbg !863

if.then17:                                        ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %um_refc_ix) #7, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %um_refc_ix, metadata !803, metadata !DIExpression()), !dbg !865
  %16 = load ptr, ptr %chdr.addr, align 8, !dbg !866
  %head18 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %16, i32 0, i32 1, !dbg !867
  %next19 = getelementptr inbounds %struct.anon, ptr %head18, i32 0, i32 4, !dbg !868
  %thr_progress_reached20 = getelementptr inbounds %struct.anon.1, ptr %next19, i32 0, i32 1, !dbg !869
  store i32 1, ptr %thr_progress_reached20, align 8, !dbg !870
  %17 = load ptr, ptr %chdr.addr, align 8, !dbg !871
  %head21 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %17, i32 0, i32 1, !dbg !872
  %next22 = getelementptr inbounds %struct.anon, ptr %head21, i32 0, i32 4, !dbg !873
  %um_refc_ix23 = getelementptr inbounds %struct.anon.1, ptr %next22, i32 0, i32 2, !dbg !874
  %18 = load i32, ptr %um_refc_ix23, align 4, !dbg !874
  store i32 %18, ptr %um_refc_ix, align 4, !dbg !875
  %19 = load ptr, ptr %chdr.addr, align 8, !dbg !876
  %tail24 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %19, i32 0, i32 0, !dbg !878
  %um_refc = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail24, i32 0, i32 2, !dbg !879
  %20 = load i32, ptr %um_refc_ix, align 4, !dbg !880
  %idxprom = sext i32 %20 to i64, !dbg !876
  %arrayidx = getelementptr inbounds [2 x %struct.ethr_native_atomic64_t], ptr %um_refc, i64 0, i64 %idxprom, !dbg !876
  %call25 = call i64 @ethr_atomic_read(ptr noundef %arrayidx), !dbg !881
  %cmp26 = icmp eq i64 %call25, 0, !dbg !882
  br i1 %cmp26, label %if.then27, label %if.end54, !dbg !883

if.then27:                                        ; preds = %if.then17
  call void @ethr_cfence__(), !dbg !884
  %21 = load ptr, ptr %chdr.addr, align 8, !dbg !886
  %head28 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %21, i32 0, i32 1, !dbg !887
  %next29 = getelementptr inbounds %struct.anon, ptr %head28, i32 0, i32 4, !dbg !888
  %unref_end = getelementptr inbounds %struct.anon.1, ptr %next29, i32 0, i32 3, !dbg !889
  %22 = load ptr, ptr %unref_end, align 8, !dbg !889
  %23 = load ptr, ptr %chdr.addr, align 8, !dbg !890
  %head30 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %23, i32 0, i32 1, !dbg !891
  %unref_end31 = getelementptr inbounds %struct.anon, ptr %head30, i32 0, i32 3, !dbg !892
  store ptr %22, ptr %unref_end31, align 8, !dbg !893
  %24 = load ptr, ptr %chdr.addr, align 8, !dbg !894
  %25 = load i64, ptr %ilast, align 8, !dbg !895
  %call32 = call i64 @check_insert_marker(ptr noundef %24, i64 noundef %25), !dbg !896
  store i64 %call32, ptr %ilast, align 8, !dbg !897
  %26 = load ptr, ptr %chdr.addr, align 8, !dbg !898
  %head33 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %26, i32 0, i32 1, !dbg !900
  %unref_end34 = getelementptr inbounds %struct.anon, ptr %head33, i32 0, i32 3, !dbg !901
  %27 = load ptr, ptr %unref_end34, align 8, !dbg !901
  %28 = load i64, ptr %ilast, align 8, !dbg !902
  %29 = inttoptr i64 %28 to ptr, !dbg !903
  %cmp35 = icmp ne ptr %27, %29, !dbg !904
  br i1 %cmp35, label %if.then36, label %if.end53, !dbg !905

if.then36:                                        ; preds = %if.then27
  %30 = load i64, ptr %ilast, align 8, !dbg !906
  %31 = inttoptr i64 %30 to ptr, !dbg !908
  %32 = load ptr, ptr %chdr.addr, align 8, !dbg !909
  %head37 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %32, i32 0, i32 1, !dbg !910
  %next38 = getelementptr inbounds %struct.anon, ptr %head37, i32 0, i32 4, !dbg !911
  %unref_end39 = getelementptr inbounds %struct.anon.1, ptr %next38, i32 0, i32 3, !dbg !912
  store ptr %31, ptr %unref_end39, align 8, !dbg !913
  %call40 = call i64 @erts_thr_progress_later(ptr noundef null), !dbg !914
  %33 = load ptr, ptr %chdr.addr, align 8, !dbg !915
  %head41 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %33, i32 0, i32 1, !dbg !916
  %next42 = getelementptr inbounds %struct.anon, ptr %head41, i32 0, i32 4, !dbg !917
  %thr_progress43 = getelementptr inbounds %struct.anon.1, ptr %next42, i32 0, i32 0, !dbg !918
  store i64 %call40, ptr %thr_progress43, align 8, !dbg !919
  %34 = load ptr, ptr %chdr.addr, align 8, !dbg !920
  %tail44 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %34, i32 0, i32 0, !dbg !921
  %um_refc_ix45 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail44, i32 0, i32 3, !dbg !922
  %35 = load i32, ptr %um_refc_ix, align 4, !dbg !923
  call void @ethr_atomic32_set_relb(ptr noundef %um_refc_ix45, i32 noundef %35), !dbg !924
  %36 = load i32, ptr %um_refc_ix, align 4, !dbg !925
  %cmp46 = icmp eq i32 %36, 0, !dbg !926
  %37 = zext i1 %cmp46 to i64, !dbg !925
  %cond = select i1 %cmp46, i32 1, i32 0, !dbg !925
  %38 = load ptr, ptr %chdr.addr, align 8, !dbg !927
  %head47 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %38, i32 0, i32 1, !dbg !928
  %next48 = getelementptr inbounds %struct.anon, ptr %head47, i32 0, i32 4, !dbg !929
  %um_refc_ix49 = getelementptr inbounds %struct.anon.1, ptr %next48, i32 0, i32 2, !dbg !930
  store i32 %cond, ptr %um_refc_ix49, align 4, !dbg !931
  %39 = load ptr, ptr %chdr.addr, align 8, !dbg !932
  %head50 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %39, i32 0, i32 1, !dbg !933
  %next51 = getelementptr inbounds %struct.anon, ptr %head50, i32 0, i32 4, !dbg !934
  %thr_progress_reached52 = getelementptr inbounds %struct.anon.1, ptr %next51, i32 0, i32 1, !dbg !935
  store i32 0, ptr %thr_progress_reached52, align 8, !dbg !936
  br label %if.end53, !dbg !937

if.end53:                                         ; preds = %if.then36, %if.then27
  br label %if.end54, !dbg !938

if.end54:                                         ; preds = %if.end53, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %um_refc_ix) #7, !dbg !939
  br label %if.end55, !dbg !940

if.end55:                                         ; preds = %if.end54, %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !941
  br label %cleanup, !dbg !941

cleanup:                                          ; preds = %if.end55, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ilast) #7, !dbg !941
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup113 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end56

if.end56:                                         ; preds = %cleanup.cont, %if.then
  %40 = load i32, ptr %new_local, align 4, !dbg !942
  %41 = load i32, ptr %max.addr, align 4, !dbg !943
  %cmp57 = icmp slt i32 %40, %41, !dbg !944
  br i1 %cmp57, label %land.lhs.true58, label %if.end112, !dbg !945

land.lhs.true58:                                  ; preds = %if.end56
  %42 = load ptr, ptr %chdr.addr, align 8, !dbg !946
  %head59 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %42, i32 0, i32 1, !dbg !947
  %first60 = getelementptr inbounds %struct.anon, ptr %head59, i32 0, i32 2, !dbg !948
  %43 = load ptr, ptr %first60, align 8, !dbg !948
  %44 = load ptr, ptr %chdr.addr, align 8, !dbg !949
  %head61 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %44, i32 0, i32 1, !dbg !950
  %unref_end62 = getelementptr inbounds %struct.anon, ptr %head61, i32 0, i32 3, !dbg !951
  %45 = load ptr, ptr %unref_end62, align 8, !dbg !951
  %cmp63 = icmp ne ptr %43, %45, !dbg !952
  br i1 %cmp63, label %if.then64, label %if.end112, !dbg !953

if.then64:                                        ; preds = %land.lhs.true58
  call void @llvm.lifetime.start.p0(i64 8, ptr %first65) #7, !dbg !954
  tail call void @llvm.dbg.declare(metadata ptr %first65, metadata !806, metadata !DIExpression()), !dbg !955
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #7, !dbg !954
  tail call void @llvm.dbg.declare(metadata ptr %this, metadata !809, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 8, ptr %next66) #7, !dbg !954
  tail call void @llvm.dbg.declare(metadata ptr %next66, metadata !810, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 8, ptr %last67) #7, !dbg !954
  tail call void @llvm.dbg.declare(metadata ptr %last67, metadata !811, metadata !DIExpression()), !dbg !958
  %46 = load ptr, ptr %chdr.addr, align 8, !dbg !959
  %head68 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %46, i32 0, i32 1, !dbg !960
  %first69 = getelementptr inbounds %struct.anon, ptr %head68, i32 0, i32 2, !dbg !961
  %47 = load ptr, ptr %first69, align 8, !dbg !961
  store ptr %47, ptr %first65, align 8, !dbg !962
  %48 = load ptr, ptr %first65, align 8, !dbg !963
  %49 = load ptr, ptr %chdr.addr, align 8, !dbg !965
  %tail70 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %49, i32 0, i32 0, !dbg !966
  %marker71 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail70, i32 0, i32 0, !dbg !967
  %cmp72 = icmp eq ptr %48, %marker71, !dbg !968
  br i1 %cmp72, label %if.then73, label %if.end78, !dbg !969

if.then73:                                        ; preds = %if.then64
  %50 = load ptr, ptr %chdr.addr, align 8, !dbg !970
  %head74 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %50, i32 0, i32 1, !dbg !972
  %used_marker = getelementptr inbounds %struct.anon, ptr %head74, i32 0, i32 1, !dbg !973
  store i32 0, ptr %used_marker, align 4, !dbg !974
  %51 = load ptr, ptr %first65, align 8, !dbg !975
  %call75 = call i64 @ethr_atomic_read(ptr noundef %51), !dbg !976
  %52 = inttoptr i64 %call75 to ptr, !dbg !977
  store ptr %52, ptr %first65, align 8, !dbg !978
  %53 = load ptr, ptr %first65, align 8, !dbg !979
  %54 = load ptr, ptr %chdr.addr, align 8, !dbg !980
  %head76 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %54, i32 0, i32 1, !dbg !981
  %first77 = getelementptr inbounds %struct.anon, ptr %head76, i32 0, i32 2, !dbg !982
  store ptr %53, ptr %first77, align 8, !dbg !983
  br label %if.end78, !dbg !984

if.end78:                                         ; preds = %if.then73, %if.then64
  %55 = load ptr, ptr %first65, align 8, !dbg !985
  %56 = load ptr, ptr %chdr.addr, align 8, !dbg !987
  %head79 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %56, i32 0, i32 1, !dbg !988
  %unref_end80 = getelementptr inbounds %struct.anon, ptr %head79, i32 0, i32 3, !dbg !989
  %57 = load ptr, ptr %unref_end80, align 8, !dbg !989
  %cmp81 = icmp ne ptr %55, %57, !dbg !990
  br i1 %cmp81, label %if.then82, label %if.end111, !dbg !991

if.then82:                                        ; preds = %if.end78
  %58 = load ptr, ptr %first65, align 8, !dbg !992
  store ptr %58, ptr %last67, align 8, !dbg !994
  store ptr %58, ptr %this, align 8, !dbg !995
  br label %do.body, !dbg !996

do.body:                                          ; preds = %land.end, %if.then82
  %59 = load ptr, ptr %this, align 8, !dbg !997
  %call83 = call i64 @ethr_atomic_read(ptr noundef %59), !dbg !999
  %60 = inttoptr i64 %call83 to ptr, !dbg !1000
  store ptr %60, ptr %next66, align 8, !dbg !1001
  %61 = load ptr, ptr %this, align 8, !dbg !1002
  %62 = load ptr, ptr %chdr.addr, align 8, !dbg !1004
  %tail84 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %62, i32 0, i32 0, !dbg !1005
  %marker85 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail84, i32 0, i32 0, !dbg !1006
  %cmp86 = icmp eq ptr %61, %marker85, !dbg !1007
  br i1 %cmp86, label %if.then87, label %if.else90, !dbg !1008

if.then87:                                        ; preds = %do.body
  %63 = load ptr, ptr %chdr.addr, align 8, !dbg !1009
  %head88 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %63, i32 0, i32 1, !dbg !1010
  %used_marker89 = getelementptr inbounds %struct.anon, ptr %head88, i32 0, i32 1, !dbg !1011
  store i32 0, ptr %used_marker89, align 4, !dbg !1012
  br label %if.end92, !dbg !1009

if.else90:                                        ; preds = %do.body
  %64 = load ptr, ptr %this, align 8, !dbg !1013
  %65 = load ptr, ptr %last67, align 8, !dbg !1015
  store ptr %64, ptr %65, align 8, !dbg !1016
  %66 = load ptr, ptr %this, align 8, !dbg !1017
  store ptr %66, ptr %last67, align 8, !dbg !1018
  %67 = load i32, ptr %new_local, align 4, !dbg !1019
  %inc91 = add nsw i32 %67, 1, !dbg !1019
  store i32 %inc91, ptr %new_local, align 4, !dbg !1019
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then87
  %68 = load ptr, ptr %next66, align 8, !dbg !1020
  store ptr %68, ptr %this, align 8, !dbg !1021
  br label %do.cond, !dbg !1022

do.cond:                                          ; preds = %if.end92
  %69 = load i32, ptr %new_local, align 4, !dbg !1023
  %70 = load i32, ptr %max.addr, align 4, !dbg !1024
  %cmp93 = icmp slt i32 %69, %70, !dbg !1025
  br i1 %cmp93, label %land.rhs, label %land.end, !dbg !1026

land.rhs:                                         ; preds = %do.cond
  %71 = load ptr, ptr %this, align 8, !dbg !1027
  %72 = load ptr, ptr %chdr.addr, align 8, !dbg !1028
  %head94 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %72, i32 0, i32 1, !dbg !1029
  %unref_end95 = getelementptr inbounds %struct.anon, ptr %head94, i32 0, i32 3, !dbg !1030
  %73 = load ptr, ptr %unref_end95, align 8, !dbg !1030
  %cmp96 = icmp ne ptr %71, %73, !dbg !1031
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %74 = phi i1 [ false, %do.cond ], [ %cmp96, %land.rhs ], !dbg !1032
  br i1 %74, label %do.body, label %do.end, !dbg !1022, !llvm.loop !1033

do.end:                                           ; preds = %land.end
  %75 = load ptr, ptr %this, align 8, !dbg !1035
  %76 = load ptr, ptr %chdr.addr, align 8, !dbg !1036
  %head97 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %76, i32 0, i32 1, !dbg !1037
  %first98 = getelementptr inbounds %struct.anon, ptr %head97, i32 0, i32 2, !dbg !1038
  store ptr %75, ptr %first98, align 8, !dbg !1039
  %77 = load ptr, ptr %chdr.addr, align 8, !dbg !1040
  %local = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %77, i32 0, i32 2, !dbg !1042
  %last99 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local, i32 0, i32 1, !dbg !1043
  %78 = load ptr, ptr %last99, align 8, !dbg !1043
  %tobool100 = icmp ne ptr %78, null, !dbg !1040
  br i1 %tobool100, label %if.else104, label %if.then101, !dbg !1044

if.then101:                                       ; preds = %do.end
  %79 = load ptr, ptr %first65, align 8, !dbg !1045
  %80 = load ptr, ptr %chdr.addr, align 8, !dbg !1046
  %local102 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %80, i32 0, i32 2, !dbg !1047
  %first103 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local102, i32 0, i32 0, !dbg !1048
  store ptr %79, ptr %first103, align 8, !dbg !1049
  br label %if.end107, !dbg !1046

if.else104:                                       ; preds = %do.end
  %81 = load ptr, ptr %first65, align 8, !dbg !1050
  %82 = load ptr, ptr %chdr.addr, align 8, !dbg !1051
  %local105 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %82, i32 0, i32 2, !dbg !1052
  %last106 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local105, i32 0, i32 1, !dbg !1053
  %83 = load ptr, ptr %last106, align 8, !dbg !1053
  store ptr %81, ptr %83, align 8, !dbg !1054
  br label %if.end107

if.end107:                                        ; preds = %if.else104, %if.then101
  %84 = load ptr, ptr %last67, align 8, !dbg !1055
  %85 = load ptr, ptr %chdr.addr, align 8, !dbg !1056
  %local108 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %85, i32 0, i32 2, !dbg !1057
  %last109 = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local108, i32 0, i32 1, !dbg !1058
  store ptr %84, ptr %last109, align 8, !dbg !1059
  %86 = load ptr, ptr %last67, align 8, !dbg !1060
  store ptr null, ptr %86, align 8, !dbg !1061
  %87 = load i32, ptr %new_local, align 4, !dbg !1062
  %88 = load ptr, ptr %chdr.addr, align 8, !dbg !1063
  %local110 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %88, i32 0, i32 2, !dbg !1064
  %cnt = getelementptr inbounds %struct.erts_sspa_local_freelist_t, ptr %local110, i32 0, i32 2, !dbg !1065
  %89 = load i32, ptr %cnt, align 8, !dbg !1066
  %add = add nsw i32 %89, %87, !dbg !1066
  store i32 %add, ptr %cnt, align 8, !dbg !1066
  br label %if.end111, !dbg !1067

if.end111:                                        ; preds = %if.end107, %if.end78
  call void @llvm.lifetime.end.p0(i64 8, ptr %last67) #7, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %next66) #7, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #7, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %first65) #7, !dbg !1068
  br label %if.end112, !dbg !1069

if.end112:                                        ; preds = %if.end111, %land.lhs.true58, %if.end56
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1070
  br label %cleanup113, !dbg !1070

cleanup113:                                       ; preds = %if.end112, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_local) #7, !dbg !1070
  %cleanup.dest114 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest114, label %unreachable [
    i32 0, label %cleanup.cont115
    i32 1, label %cleanup.cont115
  ]

cleanup.cont115:                                  ; preds = %cleanup113, %cleanup113
  ret void, !dbg !1070

unreachable:                                      ; preds = %cleanup113
  unreachable
}

declare !dbg !1071 i32 @ethr_tsd_key_create(ptr noundef, ptr noundef) #4

; Function Attrs: noreturn
declare !dbg !1075 void @erts_thr_fatal_error(i32 noundef, ptr noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic_set(ptr noundef %var, i64 noundef %val) #3 !dbg !1078 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1080, metadata !DIExpression()), !dbg !1082
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1081, metadata !DIExpression()), !dbg !1083
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1084
  %1 = load i64, ptr %val.addr, align 8, !dbg !1085
  call void @ethr_native_atomic64_set(ptr noundef %0, i64 noundef %1), !dbg !1086
  ret void, !dbg !1087
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_native_atomic64_set(ptr noundef %var, i64 noundef %i) #3 !dbg !1088 {
entry:
  %var.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1093, metadata !DIExpression()), !dbg !1095
  store i64 %i, ptr %i.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1094, metadata !DIExpression()), !dbg !1096
  %0 = load i64, ptr %i.addr, align 8, !dbg !1097
  %1 = load ptr, ptr %var.addr, align 8, !dbg !1098
  %counter = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %1, i32 0, i32 0, !dbg !1099
  store volatile i64 %0, ptr %counter, align 8, !dbg !1100
  ret void, !dbg !1101
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic32_set(ptr noundef %var, i32 noundef %val) #3 !dbg !1102 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1104, metadata !DIExpression()), !dbg !1106
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1105, metadata !DIExpression()), !dbg !1107
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1108
  %1 = load i32, ptr %val.addr, align 4, !dbg !1109
  call void @ethr_native_atomic32_set(ptr noundef %0, i32 noundef %1), !dbg !1110
  ret void, !dbg !1111
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_native_atomic32_set(ptr noundef %var, i32 noundef %i) #3 !dbg !1112 {
entry:
  %var.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1117, metadata !DIExpression()), !dbg !1119
  store i32 %i, ptr %i.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1118, metadata !DIExpression()), !dbg !1120
  %0 = load i32, ptr %i.addr, align 4, !dbg !1121
  %1 = load ptr, ptr %var.addr, align 8, !dbg !1122
  %counter = getelementptr inbounds %struct.ethr_native_atomic32_t, ptr %1, i32 0, i32 0, !dbg !1123
  store volatile i32 %0, ptr %counter, align 4, !dbg !1124
  ret void, !dbg !1125
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @erts_thr_prgr_read_nob__(ptr noundef %atmc) #3 !dbg !1126 {
entry:
  %atmc.addr = alloca ptr, align 8
  store ptr %atmc, ptr %atmc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %atmc.addr, metadata !1130, metadata !DIExpression()), !dbg !1131
  %0 = load ptr, ptr %atmc.addr, align 8, !dbg !1132
  %call = call i64 @ethr_atomic_read(ptr noundef %0), !dbg !1133
  ret i64 %call, !dbg !1134
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @erts_thr_prgr_read_acqb__(ptr noundef %atmc) #3 !dbg !1135 {
entry:
  %atmc.addr = alloca ptr, align 8
  store ptr %atmc, ptr %atmc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %atmc.addr, metadata !1137, metadata !DIExpression()), !dbg !1138
  %0 = load ptr, ptr %atmc.addr, align 8, !dbg !1139
  %call = call i64 @ethr_atomic_read_acqb(ptr noundef %0), !dbg !1140
  ret i64 %call, !dbg !1141
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ethr_atomic_read(ptr noundef %var) #3 !dbg !1142 {
entry:
  %var.addr = alloca ptr, align 8
  %res = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1146, metadata !DIExpression()), !dbg !1148
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !1149
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1147, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1151
  %call = call i64 @ethr_native_atomic64_read(ptr noundef %0), !dbg !1152
  store i64 %call, ptr %res, align 8, !dbg !1153
  %1 = load i64, ptr %res, align 8, !dbg !1154
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !1155
  ret i64 %1, !dbg !1156
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ethr_native_atomic64_read(ptr noundef %var) #3 !dbg !1157 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1161, metadata !DIExpression()), !dbg !1162
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1163
  %counter = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %0, i32 0, i32 0, !dbg !1164
  %1 = load volatile i64, ptr %counter, align 8, !dbg !1164
  ret i64 %1, !dbg !1165
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ethr_atomic_read_acqb(ptr noundef %var) #3 !dbg !1166 {
entry:
  %var.addr = alloca ptr, align 8
  %res = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !1171
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1169, metadata !DIExpression()), !dbg !1172
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1173
  %call = call i64 @ethr_native_atomic64_read(ptr noundef %0), !dbg !1174
  store i64 %call, ptr %res, align 8, !dbg !1175
  call void @ethr_cfence__(), !dbg !1176
  %1 = load i64, ptr %res, align 8, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !1178
  ret i64 %1, !dbg !1179
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_cfence__() #3 !dbg !1180 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1184, !srcloc !1185
  ret void, !dbg !1186
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @erts_tsd_get(i32 noundef %key) #3 !dbg !1187 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, ptr %key.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  %0 = load i32, ptr %key.addr, align 4, !dbg !1193
  %call = call ptr @ethr_tsd_get(i32 noundef %0), !dbg !1194
  ret ptr %call, !dbg !1195
}

declare !dbg !1196 ptr @ethr_tsd_get(i32 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ethr_native_atomic32_read(ptr noundef %var) #3 !dbg !1199 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1203, metadata !DIExpression()), !dbg !1204
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1205
  %counter = getelementptr inbounds %struct.ethr_native_atomic32_t, ptr %0, i32 0, i32 0, !dbg !1206
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1206
  ret i32 %1, !dbg !1207
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_native_atomic64_inc_mb(ptr noundef %var) #3 !dbg !1208 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1212, metadata !DIExpression()), !dbg !1213
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1214
  %counter = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %0, i32 0, i32 0, !dbg !1215
  %1 = load ptr, ptr %var.addr, align 8, !dbg !1216
  %counter1 = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %1, i32 0, i32 0, !dbg !1217
  call void asm sideeffect "lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #7, !dbg !1218, !srcloc !1219
  ret void, !dbg !1220
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_native_atomic64_dec_mb(ptr noundef %var) #3 !dbg !1221 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1223, metadata !DIExpression()), !dbg !1224
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1225
  %counter = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %0, i32 0, i32 0, !dbg !1226
  %1 = load ptr, ptr %var.addr, align 8, !dbg !1227
  %counter1 = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %1, i32 0, i32 0, !dbg !1228
  call void asm sideeffect "lock; decq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #7, !dbg !1229, !srcloc !1230
  ret void, !dbg !1231
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ethr_atomic_cmpxchg_relb(ptr noundef %var, i64 noundef %val, i64 noundef %old_val) #3 !dbg !1232 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %old_val.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1236, metadata !DIExpression()), !dbg !1240
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1237, metadata !DIExpression()), !dbg !1241
  store i64 %old_val, ptr %old_val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %old_val.addr, metadata !1238, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !1243
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !1239, metadata !DIExpression()), !dbg !1244
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1245
  %1 = load i64, ptr %val.addr, align 8, !dbg !1246
  %2 = load i64, ptr %old_val.addr, align 8, !dbg !1247
  %call = call i64 @ethr_native_atomic64_cmpxchg_mb(ptr noundef %0, i64 noundef %1, i64 noundef %2), !dbg !1248
  store i64 %call, ptr %res, align 8, !dbg !1249
  %3 = load i64, ptr %res, align 8, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !1251
  ret i64 %3, !dbg !1252
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic_set_relb(ptr noundef %var, i64 noundef %val) #3 !dbg !1253 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1255, metadata !DIExpression()), !dbg !1257
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1256, metadata !DIExpression()), !dbg !1258
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1259
  %1 = load i64, ptr %val.addr, align 8, !dbg !1260
  call void @ethr_native_atomic64_set_relb(ptr noundef %0, i64 noundef %1), !dbg !1261
  ret void, !dbg !1262
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ethr_native_atomic64_cmpxchg_mb(ptr noundef %var, i64 noundef %new_value, i64 noundef %old_value) #3 !dbg !1263 {
entry:
  %var.addr = alloca ptr, align 8
  %new_value.addr = alloca i64, align 8
  %old_value.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1267, metadata !DIExpression()), !dbg !1270
  store i64 %new_value, ptr %new_value.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %new_value.addr, metadata !1268, metadata !DIExpression()), !dbg !1271
  store i64 %old_value, ptr %old_value.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %old_value.addr, metadata !1269, metadata !DIExpression()), !dbg !1272
  %0 = load ptr, ptr %var.addr, align 8, !dbg !1273
  %counter = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %0, i32 0, i32 0, !dbg !1274
  %1 = load i64, ptr %new_value.addr, align 8, !dbg !1275
  %2 = load ptr, ptr %var.addr, align 8, !dbg !1276
  %counter1 = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %2, i32 0, i32 0, !dbg !1277
  %3 = load i64, ptr %old_value.addr, align 8, !dbg !1278
  %4 = call i64 asm sideeffect "lock; cmpxchgq $2, $3", "={ax},=*m,r,*m,0,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1, i64 %3) #7, !dbg !1279, !srcloc !1280
  store i64 %4, ptr %old_value.addr, align 8, !dbg !1279
  %5 = load i64, ptr %old_value.addr, align 8, !dbg !1281
  ret i64 %5, !dbg !1282
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_native_atomic64_set_relb(ptr noundef %var, i64 noundef %i) #3 !dbg !1283 {
entry:
  %var.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !1285, metadata !DIExpression()), !dbg !1287
  store i64 %i, ptr %i.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1286, metadata !DIExpression()), !dbg !1288
  call void @ethr_cfence__(), !dbg !1289
  %0 = load i64, ptr %i.addr, align 8, !dbg !1291
  %1 = load ptr, ptr %var.addr, align 8, !dbg !1292
  %counter = getelementptr inbounds %struct.ethr_native_atomic64_t, ptr %1, i32 0, i32 0, !dbg !1293
  store volatile i64 %0, ptr %counter, align 8, !dbg !1294
  ret void, !dbg !1295
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @erts_thr_progress_has_reached(i64 noundef %val) #3 !dbg !1296 {
entry:
  %val.addr = alloca i64, align 8
  %current = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1300, metadata !DIExpression()), !dbg !1302
  call void @llvm.lifetime.start.p0(i64 8, ptr %current) #7, !dbg !1303
  tail call void @llvm.dbg.declare(metadata ptr %current, metadata !1301, metadata !DIExpression()), !dbg !1304
  %call = call i64 @erts_thr_progress_current(), !dbg !1305
  store i64 %call, ptr %current, align 8, !dbg !1304
  %0 = load i64, ptr %current, align 8, !dbg !1306
  %1 = load i64, ptr %val.addr, align 8, !dbg !1307
  %call1 = call i32 @erts_thr_progress_has_reached_this(i64 noundef %0, i64 noundef %1), !dbg !1308
  call void @llvm.lifetime.end.p0(i64 8, ptr %current) #7, !dbg !1309
  ret i32 %call1, !dbg !1310
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @check_insert_marker(ptr noundef %chdr, i64 noundef %ilast) #3 !dbg !1311 {
entry:
  %chdr.addr = alloca ptr, align 8
  %ilast.addr = alloca i64, align 8
  %itmp = alloca i64, align 8
  %last = alloca ptr, align 8
  store ptr %chdr, ptr %chdr.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %chdr.addr, metadata !1315, metadata !DIExpression()), !dbg !1321
  store i64 %ilast, ptr %ilast.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ilast.addr, metadata !1316, metadata !DIExpression()), !dbg !1322
  %0 = load ptr, ptr %chdr.addr, align 8, !dbg !1323
  %head = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %0, i32 0, i32 1, !dbg !1324
  %used_marker = getelementptr inbounds %struct.anon, ptr %head, i32 0, i32 1, !dbg !1325
  %1 = load i32, ptr %used_marker, align 4, !dbg !1325
  %tobool = icmp ne i32 %1, 0, !dbg !1323
  br i1 %tobool, label %if.end12, label %land.lhs.true, !dbg !1326

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %chdr.addr, align 8, !dbg !1327
  %head1 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %2, i32 0, i32 1, !dbg !1328
  %unref_end = getelementptr inbounds %struct.anon, ptr %head1, i32 0, i32 3, !dbg !1329
  %3 = load ptr, ptr %unref_end, align 8, !dbg !1329
  %4 = load i64, ptr %ilast.addr, align 8, !dbg !1330
  %5 = inttoptr i64 %4 to ptr, !dbg !1331
  %cmp = icmp eq ptr %3, %5, !dbg !1332
  br i1 %cmp, label %if.then, label %if.end12, !dbg !1333

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %itmp) #7, !dbg !1334
  tail call void @llvm.dbg.declare(metadata ptr %itmp, metadata !1317, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !1336
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !1320, metadata !DIExpression()), !dbg !1337
  %6 = load i64, ptr %ilast.addr, align 8, !dbg !1338
  %7 = inttoptr i64 %6 to ptr, !dbg !1339
  store ptr %7, ptr %last, align 8, !dbg !1337
  %8 = load ptr, ptr %chdr.addr, align 8, !dbg !1340
  %tail = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %8, i32 0, i32 0, !dbg !1341
  %marker = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail, i32 0, i32 0, !dbg !1342
  call void @ethr_atomic_init(ptr noundef %marker, i64 noundef 0), !dbg !1343
  %9 = load ptr, ptr %last, align 8, !dbg !1344
  %10 = load ptr, ptr %chdr.addr, align 8, !dbg !1345
  %tail2 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %10, i32 0, i32 0, !dbg !1346
  %marker3 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail2, i32 0, i32 0, !dbg !1347
  %11 = ptrtoint ptr %marker3 to i64, !dbg !1348
  %call = call i64 @ethr_atomic_cmpxchg_relb(ptr noundef %9, i64 noundef %11, i64 noundef 0), !dbg !1349
  store i64 %call, ptr %itmp, align 8, !dbg !1350
  %12 = load i64, ptr %itmp, align 8, !dbg !1351
  %cmp4 = icmp eq i64 %12, 0, !dbg !1353
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1354

if.then5:                                         ; preds = %if.then
  %13 = load ptr, ptr %chdr.addr, align 8, !dbg !1355
  %tail6 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %13, i32 0, i32 0, !dbg !1357
  %marker7 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail6, i32 0, i32 0, !dbg !1358
  %14 = ptrtoint ptr %marker7 to i64, !dbg !1359
  store i64 %14, ptr %ilast.addr, align 8, !dbg !1360
  %15 = load ptr, ptr %chdr.addr, align 8, !dbg !1361
  %head8 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %15, i32 0, i32 1, !dbg !1362
  %used_marker9 = getelementptr inbounds %struct.anon, ptr %head8, i32 0, i32 1, !dbg !1363
  store i32 1, ptr %used_marker9, align 4, !dbg !1364
  %16 = load ptr, ptr %chdr.addr, align 8, !dbg !1365
  %tail10 = getelementptr inbounds %struct.erts_sspa_chunk_header_t, ptr %16, i32 0, i32 0, !dbg !1366
  %last11 = getelementptr inbounds %struct.erts_sspa_tail_t, ptr %tail10, i32 0, i32 1, !dbg !1367
  %17 = load i64, ptr %ilast.addr, align 8, !dbg !1368
  call void @ethr_atomic_set_relb(ptr noundef %last11, i64 noundef %17), !dbg !1369
  br label %if.end, !dbg !1370

if.end:                                           ; preds = %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !1371
  call void @llvm.lifetime.end.p0(i64 8, ptr %itmp) #7, !dbg !1371
  br label %if.end12, !dbg !1372

if.end12:                                         ; preds = %if.end, %land.lhs.true, %entry
  %18 = load i64, ptr %ilast.addr, align 8, !dbg !1373
  ret i64 %18, !dbg !1374
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @erts_thr_progress_later(ptr noundef %esdp) #3 !dbg !1375 {
entry:
  %esdp.addr = alloca ptr, align 8
  %tpd = alloca ptr, align 8
  %val = alloca i64, align 8
  store ptr %esdp, ptr %esdp.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %esdp.addr, metadata !2175, metadata !DIExpression()), !dbg !2181
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpd) #7, !dbg !2182
  tail call void @llvm.dbg.declare(metadata ptr %tpd, metadata !2176, metadata !DIExpression()), !dbg !2183
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !2184
  tail call void @llvm.dbg.declare(metadata ptr %val, metadata !2177, metadata !DIExpression()), !dbg !2185
  %0 = load ptr, ptr %esdp.addr, align 8, !dbg !2186
  %tobool = icmp ne ptr %0, null, !dbg !2186
  br i1 %tobool, label %if.then, label %if.else, !dbg !2187

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %esdp.addr, align 8, !dbg !2188
  %thr_progress_data = getelementptr inbounds %struct.ErtsSchedulerData_, ptr %1, i32 0, i32 7, !dbg !2189
  store ptr %thr_progress_data, ptr %tpd, align 8, !dbg !2190
  br label %managed_thread, !dbg !2191

managed_thread:                                   ; preds = %if.then3, %if.then
  tail call void @llvm.dbg.label(metadata !2178), !dbg !2192
  %2 = load ptr, ptr %tpd, align 8, !dbg !2193
  %confirmed = getelementptr inbounds %struct.ErtsThrPrgrData, ptr %2, i32 0, i32 8, !dbg !2194
  %3 = load i64, ptr %confirmed, align 8, !dbg !2194
  store i64 %3, ptr %val, align 8, !dbg !2195
  call void @ethr_mfence__(), !dbg !2196
  br label %if.end5, !dbg !2197

if.else:                                          ; preds = %entry
  %4 = load i32, ptr @erts_thr_prgr_data_key__, align 4, !dbg !2198
  %call = call ptr @erts_tsd_get(i32 noundef %4), !dbg !2200
  store ptr %call, ptr %tpd, align 8, !dbg !2201
  %5 = load ptr, ptr %tpd, align 8, !dbg !2202
  %tobool1 = icmp ne ptr %5, null, !dbg !2202
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !2204

land.lhs.true:                                    ; preds = %if.else
  %6 = load ptr, ptr %tpd, align 8, !dbg !2205
  %is_managed = getelementptr inbounds %struct.ErtsThrPrgrData, ptr %6, i32 0, i32 1, !dbg !2206
  %7 = load i32, ptr %is_managed, align 4, !dbg !2206
  %tobool2 = icmp ne i32 %7, 0, !dbg !2205
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2207

if.then3:                                         ; preds = %land.lhs.true
  br label %managed_thread, !dbg !2208

if.end:                                           ; preds = %land.lhs.true, %if.else
  %call4 = call i64 @erts_thr_prgr_read_mb__(ptr noundef @erts_thr_prgr__), !dbg !2209
  store i64 %call4, ptr %val, align 8, !dbg !2210
  br label %if.end5

if.end5:                                          ; preds = %if.end, %managed_thread
  %8 = load i64, ptr %val, align 8, !dbg !2211
  %call6 = call i64 @erts_thr_progress_current_to_later__(i64 noundef %8), !dbg !2212
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !2213
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpd) #7, !dbg !2213
  ret i64 %call6, !dbg !2214
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_atomic32_set_relb(ptr noundef %var, i32 noundef %val) #3 !dbg !2215 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !2217, metadata !DIExpression()), !dbg !2219
  store i32 %val, ptr %val.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2218, metadata !DIExpression()), !dbg !2220
  %0 = load ptr, ptr %var.addr, align 8, !dbg !2221
  %1 = load i32, ptr %val.addr, align 4, !dbg !2222
  call void @ethr_native_atomic32_set_relb(ptr noundef %0, i32 noundef %1), !dbg !2223
  ret void, !dbg !2224
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @erts_thr_progress_has_reached_this(i64 noundef %this_, i64 noundef %val) #3 !dbg !2225 {
entry:
  %retval = alloca i32, align 4
  %this_.addr = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %this_, ptr %this_.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %this_.addr, metadata !2229, metadata !DIExpression()), !dbg !2231
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2230, metadata !DIExpression()), !dbg !2232
  %0 = load i64, ptr %this_.addr, align 8, !dbg !2233
  %1 = load i64, ptr %val.addr, align 8, !dbg !2235
  %cmp = icmp eq i64 %0, %1, !dbg !2236
  br i1 %cmp, label %if.then, label %if.end, !dbg !2237

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2238
  br label %return, !dbg !2238

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %this_.addr, align 8, !dbg !2239
  %3 = load i64, ptr %val.addr, align 8, !dbg !2240
  %call = call i32 @erts_thr_progress_has_passed__(i64 noundef %2, i64 noundef %3), !dbg !2241
  store i32 %call, ptr %retval, align 4, !dbg !2242
  br label %return, !dbg !2242

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !2243
  ret i32 %4, !dbg !2243
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @erts_thr_progress_has_passed__(i64 noundef %val1, i64 noundef %val0) #3 !dbg !2244 {
entry:
  %retval = alloca i32, align 4
  %val1.addr = alloca i64, align 8
  %val0.addr = alloca i64, align 8
  store i64 %val1, ptr %val1.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val1.addr, metadata !2246, metadata !DIExpression()), !dbg !2248
  store i64 %val0, ptr %val0.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val0.addr, metadata !2247, metadata !DIExpression()), !dbg !2249
  %0 = load i64, ptr %val1.addr, align 8, !dbg !2250
  %and = and i64 -9223372036854775808, %0, !dbg !2252
  %1 = load i64, ptr %val0.addr, align 8, !dbg !2253
  %and1 = and i64 -9223372036854775808, %1, !dbg !2254
  %xor = xor i64 %and, %and1, !dbg !2255
  %cmp = icmp ne i64 %xor, 0, !dbg !2256
  br i1 %cmp, label %if.then, label %if.end5, !dbg !2257

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %val1.addr, align 8, !dbg !2258
  %cmp2 = icmp ult i64 %2, 4611686018427387904, !dbg !2261
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !2262

land.lhs.true:                                    ; preds = %if.then
  %3 = load i64, ptr %val0.addr, align 8, !dbg !2263
  %cmp3 = icmp ugt i64 %3, -4611686018427387904, !dbg !2264
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2265

if.then4:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2266
  br label %return, !dbg !2266

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end5, !dbg !2268

if.end5:                                          ; preds = %if.end, %entry
  %4 = load i64, ptr %val1.addr, align 8, !dbg !2269
  %5 = load i64, ptr %val0.addr, align 8, !dbg !2270
  %cmp6 = icmp ugt i64 %4, %5, !dbg !2271
  %conv = zext i1 %cmp6 to i32, !dbg !2271
  store i32 %conv, ptr %retval, align 4, !dbg !2272
  br label %return, !dbg !2272

return:                                           ; preds = %if.end5, %if.then4
  %6 = load i32, ptr %retval, align 4, !dbg !2273
  ret i32 %6, !dbg !2273
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_mfence__() #3 !dbg !2274 {
entry:
  call void asm sideeffect "mfence\0A\09", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !2275, !srcloc !2276
  ret void, !dbg !2277
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @erts_thr_prgr_read_mb__(ptr noundef %atmc) #3 !dbg !2278 {
entry:
  %atmc.addr = alloca ptr, align 8
  store ptr %atmc, ptr %atmc.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %atmc.addr, metadata !2280, metadata !DIExpression()), !dbg !2281
  %0 = load ptr, ptr %atmc.addr, align 8, !dbg !2282
  %call = call i64 @ethr_atomic_read_mb(ptr noundef %0), !dbg !2283
  ret i64 %call, !dbg !2284
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @erts_thr_progress_current_to_later__(i64 noundef %val) #3 !dbg !2285 {
entry:
  %retval = alloca i64, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2289, metadata !DIExpression()), !dbg !2290
  %0 = load i64, ptr %val.addr, align 8, !dbg !2291
  %cmp = icmp eq i64 %0, -3, !dbg !2293
  br i1 %cmp, label %if.then, label %if.else, !dbg !2294

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2295
  br label %return, !dbg !2295

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %val.addr, align 8, !dbg !2296
  %cmp1 = icmp eq i64 %1, -2, !dbg !2298
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !2299

if.then2:                                         ; preds = %if.else
  store i64 1, ptr %retval, align 8, !dbg !2300
  br label %return, !dbg !2300

if.else3:                                         ; preds = %if.else
  %2 = load i64, ptr %val.addr, align 8, !dbg !2301
  %add = add i64 %2, 2, !dbg !2302
  store i64 %add, ptr %retval, align 8, !dbg !2303
  br label %return, !dbg !2303

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !2304
  ret i64 %3, !dbg !2304
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ethr_atomic_read_mb(ptr noundef %var) #3 !dbg !2305 {
entry:
  %var.addr = alloca ptr, align 8
  %res = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !2310
  tail call void @llvm.dbg.declare(metadata ptr %res, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @ethr_mfence__(), !dbg !2312
  %0 = load ptr, ptr %var.addr, align 8, !dbg !2313
  %call = call i64 @ethr_native_atomic64_read(ptr noundef %0), !dbg !2314
  store i64 %call, ptr %res, align 8, !dbg !2315
  call void @ethr_cfence__(), !dbg !2316
  %1 = load i64, ptr %res, align 8, !dbg !2317
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !2318
  ret i64 %1, !dbg !2319
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ethr_native_atomic32_set_relb(ptr noundef %var, i32 noundef %i) #3 !dbg !2320 {
entry:
  %var.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !2322, metadata !DIExpression()), !dbg !2324
  store i32 %i, ptr %i.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @ethr_cfence__(), !dbg !2326
  %0 = load i32, ptr %i.addr, align 4, !dbg !2328
  %1 = load ptr, ptr %var.addr, align 8, !dbg !2329
  %counter = getelementptr inbounds %struct.ethr_native_atomic32_t, ptr %1, i32 0, i32 0, !dbg !2330
  store volatile i32 %0, ptr %counter, align 4, !dbg !2331
  ret void, !dbg !2332
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { allocsize(1) }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2410, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "beam/erl_threads.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "82bfa44c29e44f8f381502768fffa95f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 32)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !19, globals: !157, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "beam/erl_sched_spec_pre_alloc.c", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "6a628d93904872f08f58904e94838066")
!9 = !{!10}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 402, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "beam/erl_process.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "195a4f5708a2e5b1a4e6427c140de0d6")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "ERTS_SCHED_NORMAL", value: 0)
!15 = !DIEnumerator(name: "ERTS_SCHED_DIRTY_CPU", value: 1)
!16 = !DIEnumerator(name: "ERTS_SCHED_DIRTY_IO", value: 2)
!17 = !DIEnumerator(name: "ERTS_SCHED_TYPE_FIRST", value: 0)
!18 = !DIEnumerator(name: "ERTS_SCHED_TYPE_LAST", value: 2)
!19 = !{!20, !24, !30, !52, !53, !54, !50, !60, !91, !107, !129}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "UWord", file: !21, line: 427, baseType: !22)
!21 = !DIFile(filename: "beam/sys.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "af6a912e6d7fefa1a07e40fb2ca7b705")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uint", file: !21, line: 388, baseType: !23, align: 64)
!23 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_sspa_data_t", file: !26, line: 67, baseType: !27)
!26 = !DIFile(filename: "beam/erl_sched_spec_pre_alloc.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "e815e9d4bc9033c6d8ebe267703db756")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 58, size: 320, elements: !28)
!28 = !{!29, !31, !32, !34, !35, !41}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !27, file: !26, line: 59, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !27, file: !26, line: 60, baseType: !30, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "chunks_mem_size", scope: !27, file: !26, line: 61, baseType: !33, size: 32, offset: 128)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !27, file: !26, line: 62, baseType: !33, size: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_key", scope: !27, file: !26, line: 65, baseType: !36, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_tsd_key_t", file: !2, line: 355, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_tsd_key", file: !38, line: 134, baseType: !39)
!38 = !DIFile(filename: "../include/internal/ethread.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "3a8627a9dde9984376f63b0c0d9f0300")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !40, line: 49, baseType: !12)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!41 = !DIDerivedType(tag: DW_TAG_member, name: "id_generator", scope: !27, file: !26, line: 66, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_atomic_t", file: !43, line: 251, baseType: !44)
!43 = !DIFile(filename: "../include/internal/ethr_atomics.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "0868276c2cf7e434a2bb3ae2ba0c3c1f")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_native_atomic64_t", file: !45, line: 70, baseType: !46)
!45 = !DIFile(filename: "../include/internal/x86_64/../i386/atomic.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "780edaa731e559eba3484eec8fe37eac")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 68, size: 64, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !46, file: !45, line: 69, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_sint64_t", file: !38, line: 233, baseType: !51)
!51 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_sint_t", file: !38, line: 252, baseType: !50)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_sspa_blk_t", file: !26, line: 69, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "erts_sspa_blk_t_", file: !26, line: 70, size: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_atmc", scope: !56, file: !26, line: 71, baseType: !42, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "next_ptr", scope: !56, file: !26, line: 72, baseType: !54, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_sspa_chunk_t", file: !26, line: 125, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 118, size: 1600, elements: !63)
!63 = !{!64, !125}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "aligned", scope: !62, file: !26, line: 123, baseType: !65, size: 1536)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !26, line: 119, size: 1536, elements: !66)
!66 = !{!67, !121}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !65, file: !26, line: 120, baseType: !68, size: 1088)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_sspa_chunk_header_t", file: !26, line: 116, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 89, size: 1088, elements: !70)
!70 = !{!71, !96, !113}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !69, file: !26, line: 98, baseType: !72, size: 512)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !26, line: 94, size: 512, elements: !73)
!73 = !{!74, !92}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !72, file: !26, line: 96, baseType: !75, size: 320)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_sspa_tail_t", file: !26, line: 87, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 82, size: 320, elements: !77)
!77 = !{!78, !79, !80, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !76, file: !26, line: 83, baseType: !55, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !76, file: !26, line: 84, baseType: !42, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "um_refc", scope: !76, file: !26, line: 85, baseType: !81, size: 128, offset: 128)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 2)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "um_refc_ix", scope: !76, file: !26, line: 86, baseType: !85, size: 32, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_atomic32_t", file: !43, line: 192, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_native_atomic32_t", file: !45, line: 70, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 68, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !87, file: !45, line: 69, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_sint32_t", file: !38, line: 217, baseType: !33)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "align__", scope: !72, file: !26, line: 97, baseType: !93, size: 512)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !69, file: !26, line: 114, baseType: !97, size: 384, offset: 512)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !69, file: !26, line: 103, size: 384, elements: !98)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "no_thr_progress_check", scope: !97, file: !26, line: 104, baseType: !33, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "used_marker", scope: !97, file: !26, line: 105, baseType: !33, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !97, file: !26, line: 106, baseType: !54, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "unref_end", scope: !97, file: !26, line: 107, baseType: !54, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !26, line: 113, baseType: !104, size: 192, offset: 192)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !26, line: 108, size: 192, elements: !105)
!105 = !{!106, !110, !111, !112}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "thr_progress", scope: !104, file: !26, line: 109, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsThrPrgrVal", file: !108, line: 40, baseType: !109)
!108 = !DIFile(filename: "beam/erl_thr_progress.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "3b4040aa37c977a929df714c9ce27034")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uint64", file: !21, line: 437, baseType: !23)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "thr_progress_reached", scope: !104, file: !26, line: 110, baseType: !33, size: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "um_refc_ix", scope: !104, file: !26, line: 111, baseType: !33, size: 32, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "unref_end", scope: !104, file: !26, line: 112, baseType: !54, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !69, file: !26, line: 115, baseType: !114, size: 192, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_sspa_local_freelist_t", file: !26, line: 80, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 75, size: 192, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !115, file: !26, line: 76, baseType: !54, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !115, file: !26, line: 77, baseType: !54, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !115, file: !26, line: 78, baseType: !33, size: 32, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "lim", scope: !115, file: !26, line: 79, baseType: !33, size: 32, offset: 160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "align__", scope: !65, file: !26, line: 121, baseType: !122, size: 1536)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1536, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !62, file: !26, line: 124, baseType: !126, size: 8, offset: 1536)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 1)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsThrPrgrData", file: !108, line: 74, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 54, size: 832, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !141, !142, !143, !144, !145}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !131, file: !108, line: 55, baseType: !33, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !131, file: !108, line: 56, baseType: !33, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "is_blocking", scope: !131, file: !108, line: 57, baseType: !33, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "is_temporary", scope: !131, file: !108, line: 61, baseType: !33, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_request", scope: !131, file: !108, line: 65, baseType: !138, size: 256, offset: 128)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 4)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !131, file: !108, line: 69, baseType: !33, size: 32, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !131, file: !108, line: 70, baseType: !33, size: 32, offset: 416)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "is_deep_sleeper", scope: !131, file: !108, line: 71, baseType: !33, size: 32, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "confirmed", scope: !131, file: !108, line: 72, baseType: !107, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "leader_state", scope: !131, file: !108, line: 73, baseType: !146, size: 256, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsThrPrgrLeaderState", file: !108, line: 52, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 44, size: 256, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !108, line: 45, baseType: !107, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !147, file: !108, line: 46, baseType: !107, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "chk_next_ix", scope: !147, file: !108, line: 47, baseType: !33, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "umrefc_ix", scope: !147, file: !108, line: 51, baseType: !153, size: 64, offset: 160)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !147, file: !108, line: 48, size: 64, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !153, file: !108, line: 49, baseType: !33, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !153, file: !108, line: 50, baseType: !33, size: 32, offset: 32)
!157 = !{!0}
!158 = !{i32 7, !"Dwarf Version", i32 5}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{i32 1, !"wchar_size", i32 4}
!161 = !{i32 8, !"PIC Level", i32 2}
!162 = !{i32 7, !"PIE Level", i32 2}
!163 = !{i32 7, !"uwtable", i32 2}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!166 = distinct !DISubprogram(name: "erts_sspa_create", scope: !8, file: !8, line: 41, type: !167, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !173)
!167 = !DISubroutineType(types: !168)
!168 = !{!24, !169, !33, !33, !171}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 70, baseType: !23)
!170 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190, !194, !196, !197}
!174 = !DILocalVariable(name: "blk_sz", arg: 1, scope: !166, file: !8, line: 41, type: !169)
!175 = !DILocalVariable(name: "pa_size", arg: 2, scope: !166, file: !8, line: 41, type: !33)
!176 = !DILocalVariable(name: "nthreads", arg: 3, scope: !166, file: !8, line: 41, type: !33)
!177 = !DILocalVariable(name: "name", arg: 4, scope: !166, file: !8, line: 41, type: !171)
!178 = !DILocalVariable(name: "data", scope: !166, file: !8, line: 43, type: !24)
!179 = !DILocalVariable(name: "tot_size", scope: !166, file: !8, line: 44, type: !169)
!180 = !DILocalVariable(name: "chunk_mem_size", scope: !166, file: !8, line: 45, type: !169)
!181 = !DILocalVariable(name: "p", scope: !166, file: !8, line: 46, type: !30)
!182 = !DILocalVariable(name: "chunk_start", scope: !166, file: !8, line: 47, type: !30)
!183 = !DILocalVariable(name: "cix", scope: !166, file: !8, line: 48, type: !33)
!184 = !DILocalVariable(name: "no_blocks", scope: !166, file: !8, line: 49, type: !33)
!185 = !DILocalVariable(name: "no_blocks_per_chunk", scope: !166, file: !8, line: 50, type: !33)
!186 = !DILocalVariable(name: "aligned_blk_sz", scope: !166, file: !8, line: 51, type: !169)
!187 = !DILocalVariable(name: "extra", scope: !188, file: !8, line: 72, type: !33)
!188 = distinct !DILexicalBlock(scope: !189, file: !8, line: 71, column: 10)
!189 = distinct !DILexicalBlock(scope: !166, file: !8, line: 69, column: 9)
!190 = !DILocalVariable(name: "chnk", scope: !191, file: !8, line: 103, type: !60)
!191 = distinct !DILexicalBlock(scope: !192, file: !8, line: 102, column: 42)
!192 = distinct !DILexicalBlock(scope: !193, file: !8, line: 102, column: 5)
!193 = distinct !DILexicalBlock(scope: !166, file: !8, line: 102, column: 5)
!194 = !DILocalVariable(name: "chdr", scope: !191, file: !8, line: 104, type: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!196 = !DILocalVariable(name: "blk", scope: !191, file: !8, line: 105, type: !54)
!197 = !DILocalVariable(name: "i", scope: !191, file: !8, line: 106, type: !33)
!198 = !DILocation(line: 41, column: 25, scope: !166)
!199 = !DILocation(line: 41, column: 37, scope: !166)
!200 = !DILocation(line: 41, column: 50, scope: !166)
!201 = !DILocation(line: 41, column: 72, scope: !166)
!202 = !DILocation(line: 43, column: 5, scope: !166)
!203 = !DILocation(line: 43, column: 23, scope: !166)
!204 = !DILocation(line: 44, column: 5, scope: !166)
!205 = !DILocation(line: 44, column: 12, scope: !166)
!206 = !DILocation(line: 45, column: 5, scope: !166)
!207 = !DILocation(line: 45, column: 12, scope: !166)
!208 = !DILocation(line: 46, column: 5, scope: !166)
!209 = !DILocation(line: 46, column: 11, scope: !166)
!210 = !DILocation(line: 47, column: 5, scope: !166)
!211 = !DILocation(line: 47, column: 11, scope: !166)
!212 = !DILocation(line: 48, column: 5, scope: !166)
!213 = !DILocation(line: 48, column: 9, scope: !166)
!214 = !DILocation(line: 49, column: 5, scope: !166)
!215 = !DILocation(line: 49, column: 9, scope: !166)
!216 = !DILocation(line: 49, column: 21, scope: !166)
!217 = !DILocation(line: 50, column: 5, scope: !166)
!218 = !DILocation(line: 50, column: 9, scope: !166)
!219 = !DILocation(line: 51, column: 5, scope: !166)
!220 = !DILocation(line: 51, column: 12, scope: !166)
!221 = !DILocation(line: 58, column: 22, scope: !166)
!222 = !DILocation(line: 58, column: 20, scope: !166)
!223 = !DILocation(line: 61, column: 10, scope: !224)
!224 = distinct !DILexicalBlock(scope: !166, file: !8, line: 61, column: 9)
!225 = !DILocation(line: 61, column: 9, scope: !166)
!226 = !DILocation(line: 63, column: 20, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !8, line: 61, column: 16)
!228 = !DILocation(line: 63, column: 18, scope: !227)
!229 = !DILocation(line: 64, column: 5, scope: !227)
!230 = !DILocation(line: 69, column: 9, scope: !189)
!231 = !DILocation(line: 69, column: 18, scope: !189)
!232 = !DILocation(line: 69, column: 9, scope: !166)
!233 = !DILocation(line: 70, column: 24, scope: !189)
!234 = !DILocation(line: 70, column: 22, scope: !189)
!235 = !DILocation(line: 70, column: 2, scope: !189)
!236 = !DILocation(line: 72, column: 2, scope: !188)
!237 = !DILocation(line: 72, column: 6, scope: !188)
!238 = !DILocation(line: 72, column: 15, scope: !188)
!239 = !DILocation(line: 72, column: 25, scope: !188)
!240 = !DILocation(line: 72, column: 29, scope: !188)
!241 = !DILocation(line: 72, column: 32, scope: !188)
!242 = !DILocation(line: 73, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !188, file: !8, line: 73, column: 6)
!244 = !DILocation(line: 73, column: 12, scope: !243)
!245 = !DILocation(line: 73, column: 6, scope: !188)
!246 = !DILocation(line: 74, column: 12, scope: !243)
!247 = !DILocation(line: 74, column: 6, scope: !243)
!248 = !DILocation(line: 75, column: 24, scope: !188)
!249 = !DILocation(line: 75, column: 22, scope: !188)
!250 = !DILocation(line: 76, column: 25, scope: !188)
!251 = !DILocation(line: 76, column: 33, scope: !188)
!252 = !DILocation(line: 76, column: 31, scope: !188)
!253 = !DILocation(line: 76, column: 22, scope: !188)
!254 = !DILocation(line: 77, column: 25, scope: !188)
!255 = !DILocation(line: 77, column: 22, scope: !188)
!256 = !DILocation(line: 78, column: 5, scope: !189)
!257 = !DILocation(line: 79, column: 17, scope: !166)
!258 = !DILocation(line: 79, column: 39, scope: !166)
!259 = !DILocation(line: 79, column: 37, scope: !166)
!260 = !DILocation(line: 79, column: 15, scope: !166)
!261 = !DILocation(line: 80, column: 20, scope: !166)
!262 = !DILocation(line: 81, column: 23, scope: !166)
!263 = !DILocation(line: 81, column: 40, scope: !166)
!264 = !DILocation(line: 81, column: 38, scope: !166)
!265 = !DILocation(line: 81, column: 20, scope: !166)
!266 = !DILocation(line: 82, column: 22, scope: !166)
!267 = !DILocation(line: 82, column: 20, scope: !166)
!268 = !DILocation(line: 83, column: 14, scope: !166)
!269 = !DILocation(line: 84, column: 17, scope: !166)
!270 = !DILocation(line: 84, column: 34, scope: !166)
!271 = !DILocation(line: 84, column: 32, scope: !166)
!272 = !DILocation(line: 84, column: 14, scope: !166)
!273 = !DILocation(line: 86, column: 71, scope: !166)
!274 = !DILocation(line: 86, column: 9, scope: !166)
!275 = !DILocation(line: 86, column: 7, scope: !166)
!276 = !DILocation(line: 87, column: 33, scope: !166)
!277 = !DILocation(line: 87, column: 10, scope: !166)
!278 = !DILocation(line: 88, column: 7, scope: !166)
!279 = !DILocation(line: 89, column: 19, scope: !166)
!280 = !DILocation(line: 89, column: 17, scope: !166)
!281 = !DILocation(line: 91, column: 29, scope: !166)
!282 = !DILocation(line: 91, column: 5, scope: !166)
!283 = !DILocation(line: 91, column: 11, scope: !166)
!284 = !DILocation(line: 91, column: 27, scope: !166)
!285 = !DILocation(line: 92, column: 19, scope: !166)
!286 = !DILocation(line: 92, column: 5, scope: !166)
!287 = !DILocation(line: 92, column: 11, scope: !166)
!288 = !DILocation(line: 92, column: 17, scope: !166)
!289 = !DILocation(line: 93, column: 17, scope: !166)
!290 = !DILocation(line: 93, column: 31, scope: !166)
!291 = !DILocation(line: 93, column: 48, scope: !166)
!292 = !DILocation(line: 93, column: 46, scope: !166)
!293 = !DILocation(line: 93, column: 29, scope: !166)
!294 = !DILocation(line: 93, column: 5, scope: !166)
!295 = !DILocation(line: 93, column: 11, scope: !166)
!296 = !DILocation(line: 93, column: 15, scope: !166)
!297 = !DILocation(line: 94, column: 22, scope: !166)
!298 = !DILocation(line: 94, column: 5, scope: !166)
!299 = !DILocation(line: 94, column: 11, scope: !166)
!300 = !DILocation(line: 94, column: 20, scope: !166)
!301 = !DILocation(line: 96, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !166, file: !8, line: 96, column: 9)
!303 = !DILocation(line: 96, column: 9, scope: !166)
!304 = !DILocation(line: 97, column: 30, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !8, line: 96, column: 15)
!306 = !DILocation(line: 97, column: 36, scope: !305)
!307 = !DILocation(line: 97, column: 52, scope: !305)
!308 = !DILocation(line: 97, column: 9, scope: !305)
!309 = !DILocation(line: 98, column: 31, scope: !305)
!310 = !DILocation(line: 98, column: 37, scope: !305)
!311 = !DILocation(line: 98, column: 9, scope: !305)
!312 = !DILocation(line: 99, column: 5, scope: !305)
!313 = !DILocation(line: 102, column: 14, scope: !193)
!314 = !DILocation(line: 102, column: 10, scope: !193)
!315 = !DILocation(line: 102, column: 19, scope: !192)
!316 = !DILocation(line: 102, column: 25, scope: !192)
!317 = !DILocation(line: 102, column: 23, scope: !192)
!318 = !DILocation(line: 102, column: 5, scope: !193)
!319 = !DILocation(line: 103, column: 2, scope: !191)
!320 = !DILocation(line: 103, column: 21, scope: !191)
!321 = !DILocation(line: 103, column: 48, scope: !191)
!322 = !DILocation(line: 103, column: 54, scope: !191)
!323 = !DILocation(line: 103, column: 28, scope: !191)
!324 = !DILocation(line: 104, column: 2, scope: !191)
!325 = !DILocation(line: 104, column: 28, scope: !191)
!326 = !DILocation(line: 104, column: 36, scope: !191)
!327 = !DILocation(line: 104, column: 42, scope: !191)
!328 = !DILocation(line: 105, column: 2, scope: !191)
!329 = !DILocation(line: 105, column: 19, scope: !191)
!330 = !DILocation(line: 106, column: 2, scope: !191)
!331 = !DILocation(line: 106, column: 6, scope: !191)
!332 = !DILocation(line: 108, column: 24, scope: !191)
!333 = !DILocation(line: 108, column: 30, scope: !191)
!334 = !DILocation(line: 108, column: 40, scope: !191)
!335 = !DILocation(line: 108, column: 61, scope: !191)
!336 = !DILocation(line: 108, column: 67, scope: !191)
!337 = !DILocation(line: 108, column: 77, scope: !191)
!338 = !DILocation(line: 108, column: 46, scope: !191)
!339 = !DILocation(line: 108, column: 2, scope: !191)
!340 = !DILocation(line: 109, column: 24, scope: !191)
!341 = !DILocation(line: 109, column: 30, scope: !191)
!342 = !DILocation(line: 109, column: 40, scope: !191)
!343 = !DILocation(line: 109, column: 2, scope: !191)
!344 = !DILocation(line: 110, column: 24, scope: !191)
!345 = !DILocation(line: 110, column: 30, scope: !191)
!346 = !DILocation(line: 110, column: 40, scope: !191)
!347 = !DILocation(line: 110, column: 2, scope: !191)
!348 = !DILocation(line: 111, column: 24, scope: !191)
!349 = !DILocation(line: 111, column: 30, scope: !191)
!350 = !DILocation(line: 111, column: 40, scope: !191)
!351 = !DILocation(line: 111, column: 2, scope: !191)
!352 = !DILocation(line: 112, column: 26, scope: !191)
!353 = !DILocation(line: 112, column: 32, scope: !191)
!354 = !DILocation(line: 112, column: 42, scope: !191)
!355 = !DILocation(line: 112, column: 2, scope: !191)
!356 = !DILocation(line: 114, column: 2, scope: !191)
!357 = !DILocation(line: 114, column: 8, scope: !191)
!358 = !DILocation(line: 114, column: 13, scope: !191)
!359 = !DILocation(line: 114, column: 35, scope: !191)
!360 = !DILocation(line: 115, column: 2, scope: !191)
!361 = !DILocation(line: 115, column: 8, scope: !191)
!362 = !DILocation(line: 115, column: 13, scope: !191)
!363 = !DILocation(line: 115, column: 25, scope: !191)
!364 = !DILocation(line: 116, column: 22, scope: !191)
!365 = !DILocation(line: 116, column: 28, scope: !191)
!366 = !DILocation(line: 116, column: 38, scope: !191)
!367 = !DILocation(line: 116, column: 2, scope: !191)
!368 = !DILocation(line: 116, column: 8, scope: !191)
!369 = !DILocation(line: 116, column: 13, scope: !191)
!370 = !DILocation(line: 116, column: 19, scope: !191)
!371 = !DILocation(line: 117, column: 26, scope: !191)
!372 = !DILocation(line: 117, column: 32, scope: !191)
!373 = !DILocation(line: 117, column: 42, scope: !191)
!374 = !DILocation(line: 117, column: 2, scope: !191)
!375 = !DILocation(line: 117, column: 8, scope: !191)
!376 = !DILocation(line: 117, column: 13, scope: !191)
!377 = !DILocation(line: 117, column: 23, scope: !191)
!378 = !DILocation(line: 118, column: 33, scope: !191)
!379 = !DILocation(line: 118, column: 2, scope: !191)
!380 = !DILocation(line: 118, column: 8, scope: !191)
!381 = !DILocation(line: 118, column: 13, scope: !191)
!382 = !DILocation(line: 118, column: 18, scope: !191)
!383 = !DILocation(line: 118, column: 31, scope: !191)
!384 = !DILocation(line: 119, column: 2, scope: !191)
!385 = !DILocation(line: 119, column: 8, scope: !191)
!386 = !DILocation(line: 119, column: 13, scope: !191)
!387 = !DILocation(line: 119, column: 18, scope: !191)
!388 = !DILocation(line: 119, column: 39, scope: !191)
!389 = !DILocation(line: 120, column: 2, scope: !191)
!390 = !DILocation(line: 120, column: 8, scope: !191)
!391 = !DILocation(line: 120, column: 13, scope: !191)
!392 = !DILocation(line: 120, column: 18, scope: !191)
!393 = !DILocation(line: 120, column: 29, scope: !191)
!394 = !DILocation(line: 121, column: 31, scope: !191)
!395 = !DILocation(line: 121, column: 37, scope: !191)
!396 = !DILocation(line: 121, column: 47, scope: !191)
!397 = !DILocation(line: 121, column: 2, scope: !191)
!398 = !DILocation(line: 121, column: 8, scope: !191)
!399 = !DILocation(line: 121, column: 13, scope: !191)
!400 = !DILocation(line: 121, column: 18, scope: !191)
!401 = !DILocation(line: 121, column: 28, scope: !191)
!402 = !DILocation(line: 123, column: 7, scope: !191)
!403 = !DILocation(line: 123, column: 13, scope: !191)
!404 = !DILocation(line: 123, column: 4, scope: !191)
!405 = !DILocation(line: 124, column: 42, scope: !191)
!406 = !DILocation(line: 124, column: 2, scope: !191)
!407 = !DILocation(line: 124, column: 8, scope: !191)
!408 = !DILocation(line: 124, column: 14, scope: !191)
!409 = !DILocation(line: 124, column: 20, scope: !191)
!410 = !DILocation(line: 125, column: 28, scope: !191)
!411 = !DILocation(line: 125, column: 6, scope: !191)
!412 = !DILocation(line: 126, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !191, file: !8, line: 126, column: 2)
!414 = !DILocation(line: 126, column: 7, scope: !413)
!415 = !DILocation(line: 126, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !8, line: 126, column: 2)
!417 = !DILocation(line: 126, column: 18, scope: !416)
!418 = !DILocation(line: 126, column: 16, scope: !416)
!419 = !DILocation(line: 126, column: 2, scope: !413)
!420 = !DILocation(line: 127, column: 32, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !8, line: 126, column: 44)
!422 = !DILocation(line: 127, column: 10, scope: !421)
!423 = !DILocation(line: 128, column: 11, scope: !421)
!424 = !DILocation(line: 128, column: 8, scope: !421)
!425 = !DILocation(line: 129, column: 42, scope: !421)
!426 = !DILocation(line: 129, column: 6, scope: !421)
!427 = !DILocation(line: 129, column: 20, scope: !421)
!428 = !DILocation(line: 130, column: 2, scope: !421)
!429 = !DILocation(line: 126, column: 40, scope: !416)
!430 = !DILocation(line: 126, column: 2, scope: !416)
!431 = distinct !{!431, !419, !432, !433}
!432 = !DILocation(line: 130, column: 2, scope: !413)
!433 = !{!"llvm.loop.mustprogress"}
!434 = !DILocation(line: 132, column: 2, scope: !191)
!435 = !DILocation(line: 132, column: 16, scope: !191)
!436 = !DILocation(line: 133, column: 21, scope: !191)
!437 = !DILocation(line: 133, column: 2, scope: !191)
!438 = !DILocation(line: 133, column: 8, scope: !191)
!439 = !DILocation(line: 133, column: 14, scope: !191)
!440 = !DILocation(line: 133, column: 19, scope: !191)
!441 = !DILocation(line: 134, column: 20, scope: !191)
!442 = !DILocation(line: 134, column: 2, scope: !191)
!443 = !DILocation(line: 134, column: 8, scope: !191)
!444 = !DILocation(line: 134, column: 14, scope: !191)
!445 = !DILocation(line: 134, column: 18, scope: !191)
!446 = !DILocation(line: 135, column: 20, scope: !191)
!447 = !DILocation(line: 135, column: 40, scope: !191)
!448 = !DILocation(line: 135, column: 2, scope: !191)
!449 = !DILocation(line: 135, column: 8, scope: !191)
!450 = !DILocation(line: 135, column: 14, scope: !191)
!451 = !DILocation(line: 135, column: 18, scope: !191)
!452 = !DILocation(line: 138, column: 5, scope: !192)
!453 = !DILocation(line: 138, column: 5, scope: !191)
!454 = !DILocation(line: 102, column: 38, scope: !192)
!455 = !DILocation(line: 102, column: 5, scope: !192)
!456 = distinct !{!456, !318, !457, !433}
!457 = !DILocation(line: 138, column: 5, scope: !193)
!458 = !DILocation(line: 140, column: 12, scope: !166)
!459 = !DILocation(line: 141, column: 1, scope: !166)
!460 = !DILocation(line: 140, column: 5, scope: !166)
!461 = !DISubprogram(name: "erts_alloc_permanent_cache_aligned", scope: !462, file: !462, line: 230, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DIFile(filename: "beam/erl_alloc.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "7e030ccbf8b1a9f813b4b295d660166e")
!463 = !DISubroutineType(types: !464)
!464 = !{!53, !465, !22}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsAlcType_t", file: !466, line: 149, baseType: !467)
!466 = !DIFile(filename: "x86_64-pc-linux-gnu/opt/jit/erl_alloc_types.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "8c11eb1ba1ec3e485654fd54c7ca0ccf")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uint32", file: !21, line: 464, baseType: !12)
!468 = distinct !DISubprogram(name: "erts_tsd_key_create", scope: !2, file: !2, line: 2406, type: !469, scopeLine: 2407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !472)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471, !30}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!472 = !{!473, !474, !475}
!473 = !DILocalVariable(name: "keyp", arg: 1, scope: !468, file: !2, line: 2406, type: !471)
!474 = !DILocalVariable(name: "keyname", arg: 2, scope: !468, file: !2, line: 2406, type: !30)
!475 = !DILocalVariable(name: "res", scope: !468, file: !2, line: 2408, type: !33)
!476 = !DILocation(line: 2406, column: 37, scope: !468)
!477 = !DILocation(line: 2406, column: 49, scope: !468)
!478 = !DILocation(line: 2408, column: 5, scope: !468)
!479 = !DILocation(line: 2408, column: 9, scope: !468)
!480 = !DILocation(line: 2408, column: 35, scope: !468)
!481 = !DILocation(line: 2408, column: 41, scope: !468)
!482 = !DILocation(line: 2408, column: 15, scope: !468)
!483 = !DILocation(line: 2409, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !468, file: !2, line: 2409, column: 9)
!485 = !DILocation(line: 2409, column: 9, scope: !468)
!486 = !DILocation(line: 2410, column: 23, scope: !484)
!487 = !DILocation(line: 2410, column: 2, scope: !484)
!488 = !DILocation(line: 2411, column: 1, scope: !468)
!489 = distinct !DISubprogram(name: "ethr_atomic_init", scope: !43, file: !43, line: 4054, type: !490, scopeLine: 4055, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !493)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492, !52}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "var", arg: 1, scope: !489, file: !43, line: 4054, type: !492)
!495 = !DILocalVariable(name: "val", arg: 2, scope: !489, file: !43, line: 4054, type: !52)
!496 = !DILocation(line: 4054, column: 63, scope: !489)
!497 = !DILocation(line: 4054, column: 80, scope: !489)
!498 = !DILocation(line: 4069, column: 27, scope: !489)
!499 = !DILocation(line: 4069, column: 32, scope: !489)
!500 = !DILocation(line: 4069, column: 5, scope: !489)
!501 = !DILocation(line: 4071, column: 1, scope: !489)
!502 = distinct !DISubprogram(name: "erts_sspa_cix2chunk", scope: !26, file: !26, line: 166, type: !503, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!60, !24, !33}
!505 = !{!506, !507}
!506 = !DILocalVariable(name: "data", arg: 1, scope: !502, file: !26, line: 166, type: !24)
!507 = !DILocalVariable(name: "cix", arg: 2, scope: !502, file: !26, line: 166, type: !33)
!508 = !DILocation(line: 166, column: 39, scope: !502)
!509 = !DILocation(line: 166, column: 49, scope: !502)
!510 = !DILocation(line: 169, column: 35, scope: !502)
!511 = !DILocation(line: 169, column: 41, scope: !502)
!512 = !DILocation(line: 169, column: 49, scope: !502)
!513 = !DILocation(line: 169, column: 53, scope: !502)
!514 = !DILocation(line: 169, column: 59, scope: !502)
!515 = !DILocation(line: 169, column: 52, scope: !502)
!516 = !DILocation(line: 169, column: 47, scope: !502)
!517 = !DILocation(line: 169, column: 5, scope: !502)
!518 = distinct !DISubprogram(name: "ethr_atomic32_init", scope: !43, file: !43, line: 7300, type: !519, scopeLine: 7301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !522)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !521, !91}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!522 = !{!523, !524}
!523 = !DILocalVariable(name: "var", arg: 1, scope: !518, file: !43, line: 7300, type: !521)
!524 = !DILocalVariable(name: "val", arg: 2, scope: !518, file: !43, line: 7300, type: !91)
!525 = !DILocation(line: 7300, column: 67, scope: !518)
!526 = !DILocation(line: 7300, column: 86, scope: !518)
!527 = !DILocation(line: 7315, column: 29, scope: !518)
!528 = !DILocation(line: 7315, column: 34, scope: !518)
!529 = !DILocation(line: 7315, column: 5, scope: !518)
!530 = !DILocation(line: 7317, column: 1, scope: !518)
!531 = distinct !DISubprogram(name: "erts_thr_progress_current", scope: !108, file: !108, line: 264, type: !532, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!532 = !DISubroutineType(types: !533)
!533 = !{!107}
!534 = !DILocation(line: 266, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !108, line: 266, column: 9)
!536 = !DILocation(line: 266, column: 9, scope: !531)
!537 = !DILocation(line: 267, column: 9, scope: !535)
!538 = !DILocation(line: 267, column: 2, scope: !535)
!539 = !DILocation(line: 269, column: 9, scope: !535)
!540 = !DILocation(line: 269, column: 2, scope: !535)
!541 = !DILocation(line: 270, column: 1, scope: !531)
!542 = distinct !DISubprogram(name: "erts_sspa_remote_free", scope: !8, file: !8, line: 218, type: !543, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !195, !54, !33}
!545 = !{!546, !547, !548, !549, !550, !551}
!546 = !DILocalVariable(name: "chdr", arg: 1, scope: !542, file: !8, line: 218, type: !195)
!547 = !DILocalVariable(name: "blk", arg: 2, scope: !542, file: !8, line: 219, type: !54)
!548 = !DILocalVariable(name: "cinit", arg: 3, scope: !542, file: !8, line: 220, type: !33)
!549 = !DILocalVariable(name: "um_refc_ix", scope: !542, file: !8, line: 222, type: !33)
!550 = !DILocalVariable(name: "managed_thread", scope: !542, file: !8, line: 223, type: !33)
!551 = !DILocalVariable(name: "tmp_um_refc_ix", scope: !552, file: !8, line: 227, type: !33)
!552 = distinct !DILexicalBlock(scope: !553, file: !8, line: 226, column: 12)
!553 = distinct !DILexicalBlock(scope: !554, file: !8, line: 224, column: 26)
!554 = distinct !DILexicalBlock(scope: !542, file: !8, line: 224, column: 9)
!555 = !DILocation(line: 218, column: 49, scope: !542)
!556 = !DILocation(line: 219, column: 26, scope: !542)
!557 = !DILocation(line: 220, column: 13, scope: !542)
!558 = !DILocation(line: 222, column: 5, scope: !542)
!559 = !DILocation(line: 222, column: 9, scope: !542)
!560 = !DILocation(line: 223, column: 5, scope: !542)
!561 = !DILocation(line: 223, column: 9, scope: !542)
!562 = !DILocation(line: 223, column: 26, scope: !542)
!563 = !DILocation(line: 224, column: 10, scope: !554)
!564 = !DILocation(line: 224, column: 9, scope: !542)
!565 = !DILocation(line: 225, column: 40, scope: !553)
!566 = !DILocation(line: 225, column: 46, scope: !553)
!567 = !DILocation(line: 225, column: 56, scope: !553)
!568 = !DILocation(line: 225, column: 15, scope: !553)
!569 = !DILocation(line: 225, column: 13, scope: !553)
!570 = !DILocation(line: 226, column: 2, scope: !553)
!571 = !DILocation(line: 227, column: 6, scope: !552)
!572 = !DILocation(line: 227, column: 10, scope: !552)
!573 = !DILocation(line: 228, column: 28, scope: !552)
!574 = !DILocation(line: 228, column: 34, scope: !552)
!575 = !DILocation(line: 228, column: 44, scope: !552)
!576 = !DILocation(line: 228, column: 52, scope: !552)
!577 = !DILocation(line: 228, column: 6, scope: !552)
!578 = !DILocation(line: 229, column: 48, scope: !552)
!579 = !DILocation(line: 229, column: 54, scope: !552)
!580 = !DILocation(line: 229, column: 64, scope: !552)
!581 = !DILocation(line: 229, column: 23, scope: !552)
!582 = !DILocation(line: 229, column: 21, scope: !552)
!583 = !DILocation(line: 230, column: 10, scope: !584)
!584 = distinct !DILexicalBlock(scope: !552, file: !8, line: 230, column: 10)
!585 = !DILocation(line: 230, column: 28, scope: !584)
!586 = !DILocation(line: 230, column: 25, scope: !584)
!587 = !DILocation(line: 230, column: 10, scope: !552)
!588 = !DILocation(line: 231, column: 3, scope: !584)
!589 = !DILocation(line: 232, column: 28, scope: !552)
!590 = !DILocation(line: 232, column: 34, scope: !552)
!591 = !DILocation(line: 232, column: 44, scope: !552)
!592 = !DILocation(line: 232, column: 52, scope: !552)
!593 = !DILocation(line: 232, column: 6, scope: !552)
!594 = !DILocation(line: 233, column: 19, scope: !552)
!595 = !DILocation(line: 233, column: 17, scope: !552)
!596 = !DILocation(line: 234, column: 2, scope: !553)
!597 = distinct !{!597, !570, !596}
!598 = !DILocation(line: 235, column: 5, scope: !553)
!599 = !DILocation(line: 237, column: 35, scope: !542)
!600 = !DILocation(line: 237, column: 41, scope: !542)
!601 = !DILocation(line: 237, column: 46, scope: !542)
!602 = !DILocation(line: 237, column: 5, scope: !542)
!603 = !DILocation(line: 239, column: 10, scope: !604)
!604 = distinct !DILexicalBlock(scope: !542, file: !8, line: 239, column: 9)
!605 = !DILocation(line: 239, column: 9, scope: !542)
!606 = !DILocation(line: 240, column: 24, scope: !604)
!607 = !DILocation(line: 240, column: 30, scope: !604)
!608 = !DILocation(line: 240, column: 40, scope: !604)
!609 = !DILocation(line: 240, column: 48, scope: !604)
!610 = !DILocation(line: 240, column: 2, scope: !604)
!611 = !DILocation(line: 241, column: 1, scope: !542)
!612 = distinct !DISubprogram(name: "erts_thr_progress_is_managed_thread", scope: !108, file: !108, line: 196, type: !613, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{!33}
!615 = !{!616}
!616 = !DILocalVariable(name: "tpd", scope: !612, file: !108, line: 198, type: !129)
!617 = !DILocation(line: 198, column: 5, scope: !612)
!618 = !DILocation(line: 198, column: 22, scope: !612)
!619 = !DILocation(line: 198, column: 59, scope: !612)
!620 = !DILocation(line: 198, column: 46, scope: !612)
!621 = !DILocation(line: 199, column: 12, scope: !612)
!622 = !DILocation(line: 199, column: 16, scope: !612)
!623 = !DILocation(line: 199, column: 19, scope: !612)
!624 = !DILocation(line: 199, column: 24, scope: !612)
!625 = !DILocation(line: 0, scope: !612)
!626 = !DILocation(line: 200, column: 1, scope: !612)
!627 = !DILocation(line: 199, column: 5, scope: !612)
!628 = distinct !DISubprogram(name: "ethr_atomic32_read_acqb", scope: !43, file: !43, line: 7781, type: !629, scopeLine: 7782, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!91, !521}
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "var", arg: 1, scope: !628, file: !43, line: 7781, type: !521)
!633 = !DILocalVariable(name: "res", scope: !628, file: !43, line: 7783, type: !91)
!634 = !DILocation(line: 7781, column: 81, scope: !628)
!635 = !DILocation(line: 7783, column: 5, scope: !628)
!636 = !DILocation(line: 7783, column: 19, scope: !628)
!637 = !DILocation(line: 7790, column: 53, scope: !628)
!638 = !DILocation(line: 7790, column: 27, scope: !628)
!639 = !DILocation(line: 7790, column: 9, scope: !628)
!640 = !DILocation(line: 7791, column: 5, scope: !628)
!641 = !DILocation(line: 7803, column: 12, scope: !628)
!642 = !DILocation(line: 7804, column: 1, scope: !628)
!643 = !DILocation(line: 7803, column: 5, scope: !628)
!644 = distinct !DISubprogram(name: "ethr_atomic_inc_acqb", scope: !43, file: !43, line: 5169, type: !645, scopeLine: 5170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !492}
!647 = !{!648}
!648 = !DILocalVariable(name: "var", arg: 1, scope: !644, file: !43, line: 5169, type: !492)
!649 = !DILocation(line: 5169, column: 67, scope: !644)
!650 = !DILocation(line: 5180, column: 31, scope: !644)
!651 = !DILocation(line: 5180, column: 5, scope: !644)
!652 = !DILocation(line: 5190, column: 1, scope: !644)
!653 = distinct !DISubprogram(name: "ethr_atomic_dec_relb", scope: !43, file: !43, line: 5343, type: !645, scopeLine: 5344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !654)
!654 = !{!655}
!655 = !DILocalVariable(name: "var", arg: 1, scope: !653, file: !43, line: 5343, type: !492)
!656 = !DILocation(line: 5343, column: 67, scope: !653)
!657 = !DILocation(line: 5354, column: 31, scope: !653)
!658 = !DILocation(line: 5354, column: 5, scope: !653)
!659 = !DILocation(line: 5364, column: 1, scope: !653)
!660 = distinct !DISubprogram(name: "enqueue_remote_managed_thread", scope: !8, file: !8, line: 144, type: !543, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !670}
!662 = !DILocalVariable(name: "chdr", arg: 1, scope: !660, file: !8, line: 144, type: !195)
!663 = !DILocalVariable(name: "this", arg: 2, scope: !660, file: !8, line: 145, type: !54)
!664 = !DILocalVariable(name: "cinit", arg: 3, scope: !660, file: !8, line: 146, type: !33)
!665 = !DILocalVariable(name: "itmp", scope: !660, file: !8, line: 148, type: !52)
!666 = !DILocalVariable(name: "enq", scope: !660, file: !8, line: 149, type: !54)
!667 = !DILocalVariable(name: "i", scope: !668, file: !8, line: 174, type: !33)
!668 = distinct !DILexicalBlock(scope: !669, file: !8, line: 169, column: 10)
!669 = distinct !DILexicalBlock(scope: !660, file: !8, line: 158, column: 9)
!670 = !DILocalVariable(name: "itmp2", scope: !671, file: !8, line: 177, type: !52)
!671 = distinct !DILexicalBlock(scope: !668, file: !8, line: 176, column: 12)
!672 = !DILocation(line: 144, column: 57, scope: !660)
!673 = !DILocation(line: 145, column: 27, scope: !660)
!674 = !DILocation(line: 146, column: 14, scope: !660)
!675 = !DILocation(line: 148, column: 5, scope: !660)
!676 = !DILocation(line: 148, column: 17, scope: !660)
!677 = !DILocation(line: 149, column: 5, scope: !660)
!678 = !DILocation(line: 149, column: 22, scope: !660)
!679 = !DILocation(line: 151, column: 27, scope: !660)
!680 = !DILocation(line: 151, column: 5, scope: !660)
!681 = !DILocation(line: 154, column: 53, scope: !660)
!682 = !DILocation(line: 154, column: 59, scope: !660)
!683 = !DILocation(line: 154, column: 69, scope: !660)
!684 = !DILocation(line: 154, column: 31, scope: !660)
!685 = !DILocation(line: 154, column: 11, scope: !660)
!686 = !DILocation(line: 154, column: 9, scope: !660)
!687 = !DILocation(line: 155, column: 38, scope: !660)
!688 = !DILocation(line: 156, column: 23, scope: !660)
!689 = !DILocation(line: 156, column: 9, scope: !660)
!690 = !DILocation(line: 155, column: 12, scope: !660)
!691 = !DILocation(line: 155, column: 10, scope: !660)
!692 = !DILocation(line: 158, column: 9, scope: !669)
!693 = !DILocation(line: 158, column: 14, scope: !669)
!694 = !DILocation(line: 158, column: 9, scope: !660)
!695 = !DILocation(line: 166, column: 24, scope: !696)
!696 = distinct !DILexicalBlock(scope: !669, file: !8, line: 158, column: 33)
!697 = !DILocation(line: 166, column: 30, scope: !696)
!698 = !DILocation(line: 166, column: 40, scope: !696)
!699 = !DILocation(line: 166, column: 60, scope: !696)
!700 = !DILocation(line: 166, column: 46, scope: !696)
!701 = !DILocation(line: 166, column: 2, scope: !696)
!702 = !DILocation(line: 168, column: 5, scope: !696)
!703 = !DILocation(line: 174, column: 2, scope: !668)
!704 = !DILocation(line: 174, column: 6, scope: !668)
!705 = !DILocation(line: 174, column: 10, scope: !668)
!706 = !DILocation(line: 176, column: 2, scope: !668)
!707 = !DILocation(line: 177, column: 6, scope: !671)
!708 = !DILocation(line: 177, column: 18, scope: !671)
!709 = !DILocation(line: 178, column: 27, scope: !671)
!710 = !DILocation(line: 178, column: 44, scope: !671)
!711 = !DILocation(line: 178, column: 6, scope: !671)
!712 = !DILocation(line: 179, column: 40, scope: !671)
!713 = !DILocation(line: 180, column: 25, scope: !671)
!714 = !DILocation(line: 180, column: 11, scope: !671)
!715 = !DILocation(line: 181, column: 11, scope: !671)
!716 = !DILocation(line: 179, column: 14, scope: !671)
!717 = !DILocation(line: 179, column: 12, scope: !671)
!718 = !DILocation(line: 182, column: 10, scope: !719)
!719 = distinct !DILexicalBlock(scope: !671, file: !8, line: 182, column: 10)
!720 = !DILocation(line: 182, column: 18, scope: !719)
!721 = !DILocation(line: 182, column: 15, scope: !719)
!722 = !DILocation(line: 182, column: 10, scope: !671)
!723 = !DILocation(line: 183, column: 3, scope: !719)
!724 = !DILocation(line: 184, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !671, file: !8, line: 184, column: 10)
!726 = !DILocation(line: 184, column: 13, scope: !725)
!727 = !DILocation(line: 184, column: 18, scope: !725)
!728 = !DILocation(line: 184, column: 10, scope: !671)
!729 = !DILocation(line: 185, column: 10, scope: !725)
!730 = !DILocation(line: 185, column: 8, scope: !725)
!731 = !DILocation(line: 185, column: 3, scope: !725)
!732 = !DILocation(line: 187, column: 29, scope: !733)
!733 = distinct !DILexicalBlock(scope: !725, file: !8, line: 186, column: 11)
!734 = !DILocation(line: 187, column: 9, scope: !733)
!735 = !DILocation(line: 187, column: 7, scope: !733)
!736 = !DILocation(line: 188, column: 33, scope: !733)
!737 = !DILocation(line: 188, column: 10, scope: !733)
!738 = !DILocation(line: 188, column: 8, scope: !733)
!739 = !DILocation(line: 191, column: 7, scope: !671)
!740 = !DILocation(line: 192, column: 2, scope: !668)
!741 = distinct !{!741, !706, !740}
!742 = !DILocation(line: 193, column: 5, scope: !669)
!743 = !DILocation(line: 194, column: 1, scope: !660)
!744 = distinct !DISubprogram(name: "erts_sspa_process_remote_frees", scope: !8, file: !8, line: 328, type: !745, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!54, !195, !54}
!747 = !{!748, !749, !750}
!748 = !DILocalVariable(name: "chdr", arg: 1, scope: !744, file: !8, line: 328, type: !195)
!749 = !DILocalVariable(name: "old_res", arg: 2, scope: !744, file: !8, line: 329, type: !54)
!750 = !DILocalVariable(name: "res", scope: !744, file: !8, line: 331, type: !54)
!751 = !DILocation(line: 328, column: 58, scope: !744)
!752 = !DILocation(line: 329, column: 28, scope: !744)
!753 = !DILocation(line: 331, column: 5, scope: !744)
!754 = !DILocation(line: 331, column: 22, scope: !744)
!755 = !DILocation(line: 331, column: 28, scope: !744)
!756 = !DILocation(line: 333, column: 18, scope: !744)
!757 = !DILocation(line: 333, column: 5, scope: !744)
!758 = !DILocation(line: 335, column: 10, scope: !759)
!759 = distinct !DILexicalBlock(scope: !744, file: !8, line: 335, column: 9)
!760 = !DILocation(line: 335, column: 14, scope: !759)
!761 = !DILocation(line: 335, column: 17, scope: !759)
!762 = !DILocation(line: 335, column: 23, scope: !759)
!763 = !DILocation(line: 335, column: 29, scope: !759)
!764 = !DILocation(line: 335, column: 9, scope: !744)
!765 = !DILocation(line: 339, column: 8, scope: !766)
!766 = distinct !DILexicalBlock(scope: !759, file: !8, line: 335, column: 36)
!767 = !DILocation(line: 339, column: 14, scope: !766)
!768 = !DILocation(line: 339, column: 20, scope: !766)
!769 = !DILocation(line: 339, column: 6, scope: !766)
!770 = !DILocation(line: 340, column: 22, scope: !766)
!771 = !DILocation(line: 340, column: 27, scope: !766)
!772 = !DILocation(line: 340, column: 2, scope: !766)
!773 = !DILocation(line: 340, column: 8, scope: !766)
!774 = !DILocation(line: 340, column: 14, scope: !766)
!775 = !DILocation(line: 340, column: 20, scope: !766)
!776 = !DILocation(line: 341, column: 2, scope: !766)
!777 = !DILocation(line: 341, column: 8, scope: !766)
!778 = !DILocation(line: 341, column: 14, scope: !766)
!779 = !DILocation(line: 341, column: 17, scope: !766)
!780 = !DILocation(line: 342, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !766, file: !8, line: 342, column: 6)
!782 = !DILocation(line: 342, column: 13, scope: !781)
!783 = !DILocation(line: 342, column: 19, scope: !781)
!784 = !DILocation(line: 342, column: 6, scope: !766)
!785 = !DILocation(line: 343, column: 6, scope: !781)
!786 = !DILocation(line: 343, column: 12, scope: !781)
!787 = !DILocation(line: 343, column: 18, scope: !781)
!788 = !DILocation(line: 343, column: 23, scope: !781)
!789 = !DILocation(line: 346, column: 5, scope: !766)
!790 = !DILocation(line: 348, column: 12, scope: !744)
!791 = !DILocation(line: 349, column: 1, scope: !744)
!792 = !DILocation(line: 348, column: 5, scope: !744)
!793 = distinct !DISubprogram(name: "fetch_remote", scope: !8, file: !8, line: 244, type: !794, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !796)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !195, !33}
!796 = !{!797, !798, !799, !800, !803, !806, !809, !810, !811}
!797 = !DILocalVariable(name: "chdr", arg: 1, scope: !793, file: !8, line: 244, type: !195)
!798 = !DILocalVariable(name: "max", arg: 2, scope: !793, file: !8, line: 244, type: !33)
!799 = !DILocalVariable(name: "new_local", scope: !793, file: !8, line: 246, type: !33)
!800 = !DILocalVariable(name: "ilast", scope: !801, file: !8, line: 251, type: !52)
!801 = distinct !DILexicalBlock(scope: !802, file: !8, line: 250, column: 10)
!802 = distinct !DILexicalBlock(scope: !793, file: !8, line: 248, column: 9)
!803 = !DILocalVariable(name: "um_refc_ix", scope: !804, file: !8, line: 262, type: !33)
!804 = distinct !DILexicalBlock(scope: !805, file: !8, line: 261, column: 70)
!805 = distinct !DILexicalBlock(scope: !801, file: !8, line: 260, column: 6)
!806 = !DILocalVariable(name: "first", scope: !807, file: !8, line: 288, type: !54)
!807 = distinct !DILexicalBlock(scope: !808, file: !8, line: 287, column: 70)
!808 = distinct !DILexicalBlock(scope: !793, file: !8, line: 287, column: 9)
!809 = !DILocalVariable(name: "this", scope: !807, file: !8, line: 288, type: !54)
!810 = !DILocalVariable(name: "next", scope: !807, file: !8, line: 288, type: !54)
!811 = !DILocalVariable(name: "last", scope: !807, file: !8, line: 288, type: !54)
!812 = !DILocation(line: 244, column: 40, scope: !793)
!813 = !DILocation(line: 244, column: 50, scope: !793)
!814 = !DILocation(line: 246, column: 5, scope: !793)
!815 = !DILocation(line: 246, column: 9, scope: !793)
!816 = !DILocation(line: 248, column: 9, scope: !802)
!817 = !DILocation(line: 248, column: 15, scope: !802)
!818 = !DILocation(line: 248, column: 20, scope: !802)
!819 = !DILocation(line: 248, column: 42, scope: !802)
!820 = !DILocation(line: 248, column: 9, scope: !793)
!821 = !DILocation(line: 249, column: 2, scope: !802)
!822 = !DILocation(line: 249, column: 8, scope: !802)
!823 = !DILocation(line: 249, column: 13, scope: !802)
!824 = !DILocation(line: 249, column: 34, scope: !802)
!825 = !DILocation(line: 251, column: 2, scope: !801)
!826 = !DILocation(line: 251, column: 14, scope: !801)
!827 = !DILocation(line: 253, column: 2, scope: !801)
!828 = !DILocation(line: 253, column: 8, scope: !801)
!829 = !DILocation(line: 253, column: 13, scope: !801)
!830 = !DILocation(line: 253, column: 35, scope: !801)
!831 = !DILocation(line: 255, column: 32, scope: !801)
!832 = !DILocation(line: 255, column: 38, scope: !801)
!833 = !DILocation(line: 255, column: 48, scope: !801)
!834 = !DILocation(line: 255, column: 10, scope: !801)
!835 = !DILocation(line: 255, column: 8, scope: !801)
!836 = !DILocation(line: 256, column: 27, scope: !837)
!837 = distinct !DILexicalBlock(scope: !801, file: !8, line: 256, column: 6)
!838 = !DILocation(line: 256, column: 7, scope: !837)
!839 = !DILocation(line: 256, column: 38, scope: !837)
!840 = !DILocation(line: 256, column: 44, scope: !837)
!841 = !DILocation(line: 256, column: 54, scope: !837)
!842 = !DILocation(line: 256, column: 34, scope: !837)
!843 = !DILocation(line: 257, column: 6, scope: !837)
!844 = !DILocation(line: 257, column: 9, scope: !837)
!845 = !DILocation(line: 257, column: 15, scope: !837)
!846 = !DILocation(line: 257, column: 20, scope: !837)
!847 = !DILocation(line: 257, column: 30, scope: !837)
!848 = !DILocation(line: 257, column: 36, scope: !837)
!849 = !DILocation(line: 257, column: 46, scope: !837)
!850 = !DILocation(line: 257, column: 26, scope: !837)
!851 = !DILocation(line: 256, column: 6, scope: !801)
!852 = !DILocation(line: 258, column: 6, scope: !837)
!853 = !DILocation(line: 260, column: 6, scope: !805)
!854 = !DILocation(line: 260, column: 12, scope: !805)
!855 = !DILocation(line: 260, column: 17, scope: !805)
!856 = !DILocation(line: 260, column: 22, scope: !805)
!857 = !DILocation(line: 261, column: 6, scope: !805)
!858 = !DILocation(line: 261, column: 39, scope: !805)
!859 = !DILocation(line: 261, column: 45, scope: !805)
!860 = !DILocation(line: 261, column: 50, scope: !805)
!861 = !DILocation(line: 261, column: 55, scope: !805)
!862 = !DILocation(line: 261, column: 9, scope: !805)
!863 = !DILocation(line: 260, column: 6, scope: !801)
!864 = !DILocation(line: 262, column: 6, scope: !804)
!865 = !DILocation(line: 262, column: 10, scope: !804)
!866 = !DILocation(line: 263, column: 6, scope: !804)
!867 = !DILocation(line: 263, column: 12, scope: !804)
!868 = !DILocation(line: 263, column: 17, scope: !804)
!869 = !DILocation(line: 263, column: 22, scope: !804)
!870 = !DILocation(line: 263, column: 43, scope: !804)
!871 = !DILocation(line: 264, column: 19, scope: !804)
!872 = !DILocation(line: 264, column: 25, scope: !804)
!873 = !DILocation(line: 264, column: 30, scope: !804)
!874 = !DILocation(line: 264, column: 35, scope: !804)
!875 = !DILocation(line: 264, column: 17, scope: !804)
!876 = !DILocation(line: 265, column: 32, scope: !877)
!877 = distinct !DILexicalBlock(scope: !804, file: !8, line: 265, column: 10)
!878 = !DILocation(line: 265, column: 38, scope: !877)
!879 = !DILocation(line: 265, column: 48, scope: !877)
!880 = !DILocation(line: 265, column: 56, scope: !877)
!881 = !DILocation(line: 265, column: 10, scope: !877)
!882 = !DILocation(line: 265, column: 69, scope: !877)
!883 = !DILocation(line: 265, column: 10, scope: !804)
!884 = !DILocation(line: 267, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !877, file: !8, line: 265, column: 75)
!886 = !DILocation(line: 271, column: 26, scope: !885)
!887 = !DILocation(line: 271, column: 32, scope: !885)
!888 = !DILocation(line: 271, column: 37, scope: !885)
!889 = !DILocation(line: 271, column: 42, scope: !885)
!890 = !DILocation(line: 271, column: 3, scope: !885)
!891 = !DILocation(line: 271, column: 9, scope: !885)
!892 = !DILocation(line: 271, column: 14, scope: !885)
!893 = !DILocation(line: 271, column: 24, scope: !885)
!894 = !DILocation(line: 273, column: 31, scope: !885)
!895 = !DILocation(line: 273, column: 37, scope: !885)
!896 = !DILocation(line: 273, column: 11, scope: !885)
!897 = !DILocation(line: 273, column: 9, scope: !885)
!898 = !DILocation(line: 275, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !885, file: !8, line: 275, column: 7)
!900 = !DILocation(line: 275, column: 13, scope: !899)
!901 = !DILocation(line: 275, column: 18, scope: !899)
!902 = !DILocation(line: 275, column: 51, scope: !899)
!903 = !DILocation(line: 275, column: 31, scope: !899)
!904 = !DILocation(line: 275, column: 28, scope: !899)
!905 = !DILocation(line: 275, column: 7, scope: !885)
!906 = !DILocation(line: 276, column: 55, scope: !907)
!907 = distinct !DILexicalBlock(scope: !899, file: !8, line: 275, column: 58)
!908 = !DILocation(line: 276, column: 35, scope: !907)
!909 = !DILocation(line: 276, column: 7, scope: !907)
!910 = !DILocation(line: 276, column: 13, scope: !907)
!911 = !DILocation(line: 276, column: 18, scope: !907)
!912 = !DILocation(line: 276, column: 23, scope: !907)
!913 = !DILocation(line: 276, column: 33, scope: !907)
!914 = !DILocation(line: 277, column: 38, scope: !907)
!915 = !DILocation(line: 277, column: 7, scope: !907)
!916 = !DILocation(line: 277, column: 13, scope: !907)
!917 = !DILocation(line: 277, column: 18, scope: !907)
!918 = !DILocation(line: 277, column: 23, scope: !907)
!919 = !DILocation(line: 277, column: 36, scope: !907)
!920 = !DILocation(line: 278, column: 31, scope: !907)
!921 = !DILocation(line: 278, column: 37, scope: !907)
!922 = !DILocation(line: 278, column: 47, scope: !907)
!923 = !DILocation(line: 279, column: 9, scope: !907)
!924 = !DILocation(line: 278, column: 7, scope: !907)
!925 = !DILocation(line: 280, column: 36, scope: !907)
!926 = !DILocation(line: 280, column: 47, scope: !907)
!927 = !DILocation(line: 280, column: 7, scope: !907)
!928 = !DILocation(line: 280, column: 13, scope: !907)
!929 = !DILocation(line: 280, column: 18, scope: !907)
!930 = !DILocation(line: 280, column: 23, scope: !907)
!931 = !DILocation(line: 280, column: 34, scope: !907)
!932 = !DILocation(line: 281, column: 7, scope: !907)
!933 = !DILocation(line: 281, column: 13, scope: !907)
!934 = !DILocation(line: 281, column: 18, scope: !907)
!935 = !DILocation(line: 281, column: 23, scope: !907)
!936 = !DILocation(line: 281, column: 44, scope: !907)
!937 = !DILocation(line: 282, column: 3, scope: !907)
!938 = !DILocation(line: 283, column: 6, scope: !885)
!939 = !DILocation(line: 284, column: 2, scope: !805)
!940 = !DILocation(line: 284, column: 2, scope: !804)
!941 = !DILocation(line: 285, column: 5, scope: !802)
!942 = !DILocation(line: 287, column: 9, scope: !808)
!943 = !DILocation(line: 287, column: 21, scope: !808)
!944 = !DILocation(line: 287, column: 19, scope: !808)
!945 = !DILocation(line: 287, column: 25, scope: !808)
!946 = !DILocation(line: 287, column: 28, scope: !808)
!947 = !DILocation(line: 287, column: 34, scope: !808)
!948 = !DILocation(line: 287, column: 39, scope: !808)
!949 = !DILocation(line: 287, column: 48, scope: !808)
!950 = !DILocation(line: 287, column: 54, scope: !808)
!951 = !DILocation(line: 287, column: 59, scope: !808)
!952 = !DILocation(line: 287, column: 45, scope: !808)
!953 = !DILocation(line: 287, column: 9, scope: !793)
!954 = !DILocation(line: 288, column: 2, scope: !807)
!955 = !DILocation(line: 288, column: 19, scope: !807)
!956 = !DILocation(line: 288, column: 27, scope: !807)
!957 = !DILocation(line: 288, column: 34, scope: !807)
!958 = !DILocation(line: 288, column: 41, scope: !807)
!959 = !DILocation(line: 289, column: 10, scope: !807)
!960 = !DILocation(line: 289, column: 16, scope: !807)
!961 = !DILocation(line: 289, column: 21, scope: !807)
!962 = !DILocation(line: 289, column: 8, scope: !807)
!963 = !DILocation(line: 290, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !807, file: !8, line: 290, column: 6)
!965 = !DILocation(line: 290, column: 16, scope: !964)
!966 = !DILocation(line: 290, column: 22, scope: !964)
!967 = !DILocation(line: 290, column: 32, scope: !964)
!968 = !DILocation(line: 290, column: 12, scope: !964)
!969 = !DILocation(line: 290, column: 6, scope: !807)
!970 = !DILocation(line: 291, column: 6, scope: !971)
!971 = distinct !DILexicalBlock(scope: !964, file: !8, line: 290, column: 40)
!972 = !DILocation(line: 291, column: 12, scope: !971)
!973 = !DILocation(line: 291, column: 17, scope: !971)
!974 = !DILocation(line: 291, column: 29, scope: !971)
!975 = !DILocation(line: 293, column: 30, scope: !971)
!976 = !DILocation(line: 293, column: 8, scope: !971)
!977 = !DILocation(line: 292, column: 15, scope: !971)
!978 = !DILocation(line: 292, column: 12, scope: !971)
!979 = !DILocation(line: 294, column: 25, scope: !971)
!980 = !DILocation(line: 294, column: 6, scope: !971)
!981 = !DILocation(line: 294, column: 12, scope: !971)
!982 = !DILocation(line: 294, column: 17, scope: !971)
!983 = !DILocation(line: 294, column: 23, scope: !971)
!984 = !DILocation(line: 295, column: 2, scope: !971)
!985 = !DILocation(line: 296, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !807, file: !8, line: 296, column: 6)
!987 = !DILocation(line: 296, column: 15, scope: !986)
!988 = !DILocation(line: 296, column: 21, scope: !986)
!989 = !DILocation(line: 296, column: 26, scope: !986)
!990 = !DILocation(line: 296, column: 12, scope: !986)
!991 = !DILocation(line: 296, column: 6, scope: !807)
!992 = !DILocation(line: 300, column: 20, scope: !993)
!993 = distinct !DILexicalBlock(scope: !986, file: !8, line: 296, column: 37)
!994 = !DILocation(line: 300, column: 18, scope: !993)
!995 = !DILocation(line: 300, column: 11, scope: !993)
!996 = !DILocation(line: 301, column: 6, scope: !993)
!997 = !DILocation(line: 302, column: 52, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !8, line: 301, column: 9)
!999 = !DILocation(line: 302, column: 30, scope: !998)
!1000 = !DILocation(line: 302, column: 10, scope: !998)
!1001 = !DILocation(line: 302, column: 8, scope: !998)
!1002 = !DILocation(line: 303, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !8, line: 303, column: 7)
!1004 = !DILocation(line: 303, column: 16, scope: !1003)
!1005 = !DILocation(line: 303, column: 22, scope: !1003)
!1006 = !DILocation(line: 303, column: 32, scope: !1003)
!1007 = !DILocation(line: 303, column: 12, scope: !1003)
!1008 = !DILocation(line: 303, column: 7, scope: !998)
!1009 = !DILocation(line: 304, column: 7, scope: !1003)
!1010 = !DILocation(line: 304, column: 13, scope: !1003)
!1011 = !DILocation(line: 304, column: 18, scope: !1003)
!1012 = !DILocation(line: 304, column: 30, scope: !1003)
!1013 = !DILocation(line: 306, column: 24, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1003, file: !8, line: 305, column: 8)
!1015 = !DILocation(line: 306, column: 7, scope: !1014)
!1016 = !DILocation(line: 306, column: 22, scope: !1014)
!1017 = !DILocation(line: 307, column: 14, scope: !1014)
!1018 = !DILocation(line: 307, column: 12, scope: !1014)
!1019 = !DILocation(line: 308, column: 16, scope: !1014)
!1020 = !DILocation(line: 310, column: 10, scope: !998)
!1021 = !DILocation(line: 310, column: 8, scope: !998)
!1022 = !DILocation(line: 311, column: 6, scope: !998)
!1023 = !DILocation(line: 311, column: 15, scope: !993)
!1024 = !DILocation(line: 311, column: 27, scope: !993)
!1025 = !DILocation(line: 311, column: 25, scope: !993)
!1026 = !DILocation(line: 311, column: 31, scope: !993)
!1027 = !DILocation(line: 311, column: 34, scope: !993)
!1028 = !DILocation(line: 311, column: 42, scope: !993)
!1029 = !DILocation(line: 311, column: 48, scope: !993)
!1030 = !DILocation(line: 311, column: 53, scope: !993)
!1031 = !DILocation(line: 311, column: 39, scope: !993)
!1032 = !DILocation(line: 0, scope: !993)
!1033 = distinct !{!1033, !996, !1034, !433}
!1034 = !DILocation(line: 311, column: 62, scope: !993)
!1035 = !DILocation(line: 312, column: 25, scope: !993)
!1036 = !DILocation(line: 312, column: 6, scope: !993)
!1037 = !DILocation(line: 312, column: 12, scope: !993)
!1038 = !DILocation(line: 312, column: 17, scope: !993)
!1039 = !DILocation(line: 312, column: 23, scope: !993)
!1040 = !DILocation(line: 313, column: 11, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !993, file: !8, line: 313, column: 10)
!1042 = !DILocation(line: 313, column: 17, scope: !1041)
!1043 = !DILocation(line: 313, column: 23, scope: !1041)
!1044 = !DILocation(line: 313, column: 10, scope: !993)
!1045 = !DILocation(line: 314, column: 23, scope: !1041)
!1046 = !DILocation(line: 314, column: 3, scope: !1041)
!1047 = !DILocation(line: 314, column: 9, scope: !1041)
!1048 = !DILocation(line: 314, column: 15, scope: !1041)
!1049 = !DILocation(line: 314, column: 21, scope: !1041)
!1050 = !DILocation(line: 316, column: 32, scope: !1041)
!1051 = !DILocation(line: 316, column: 3, scope: !1041)
!1052 = !DILocation(line: 316, column: 9, scope: !1041)
!1053 = !DILocation(line: 316, column: 15, scope: !1041)
!1054 = !DILocation(line: 316, column: 30, scope: !1041)
!1055 = !DILocation(line: 317, column: 25, scope: !993)
!1056 = !DILocation(line: 317, column: 6, scope: !993)
!1057 = !DILocation(line: 317, column: 12, scope: !993)
!1058 = !DILocation(line: 317, column: 18, scope: !993)
!1059 = !DILocation(line: 317, column: 23, scope: !993)
!1060 = !DILocation(line: 318, column: 6, scope: !993)
!1061 = !DILocation(line: 318, column: 21, scope: !993)
!1062 = !DILocation(line: 319, column: 25, scope: !993)
!1063 = !DILocation(line: 319, column: 6, scope: !993)
!1064 = !DILocation(line: 319, column: 12, scope: !993)
!1065 = !DILocation(line: 319, column: 18, scope: !993)
!1066 = !DILocation(line: 319, column: 22, scope: !993)
!1067 = !DILocation(line: 322, column: 2, scope: !993)
!1068 = !DILocation(line: 323, column: 5, scope: !808)
!1069 = !DILocation(line: 323, column: 5, scope: !807)
!1070 = !DILocation(line: 325, column: 1, scope: !793)
!1071 = !DISubprogram(name: "ethr_tsd_key_create", scope: !38, file: !38, line: 527, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!33, !1074, !30}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!1075 = !DISubprogram(name: "erts_thr_fatal_error", scope: !2, file: !2, line: 405, type: !1076, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !33, !171}
!1078 = distinct !DISubprogram(name: "ethr_atomic_set", scope: !43, file: !43, line: 3903, type: !490, scopeLine: 3904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1079)
!1079 = !{!1080, !1081}
!1080 = !DILocalVariable(name: "var", arg: 1, scope: !1078, file: !43, line: 3903, type: !492)
!1081 = !DILocalVariable(name: "val", arg: 2, scope: !1078, file: !43, line: 3903, type: !52)
!1082 = !DILocation(line: 3903, column: 62, scope: !1078)
!1083 = !DILocation(line: 3903, column: 79, scope: !1078)
!1084 = !DILocation(line: 3906, column: 28, scope: !1078)
!1085 = !DILocation(line: 3906, column: 50, scope: !1078)
!1086 = !DILocation(line: 3906, column: 5, scope: !1078)
!1087 = !DILocation(line: 3920, column: 1, scope: !1078)
!1088 = distinct !DISubprogram(name: "ethr_native_atomic64_set", scope: !45, file: !45, line: 131, type: !1089, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1092)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1091, !50}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1092 = !{!1093, !1094}
!1093 = !DILocalVariable(name: "var", arg: 1, scope: !1088, file: !45, line: 131, type: !1091)
!1094 = !DILocalVariable(name: "i", arg: 2, scope: !1088, file: !45, line: 131, type: !50)
!1095 = !DILocation(line: 131, column: 39, scope: !1088)
!1096 = !DILocation(line: 131, column: 58, scope: !1088)
!1097 = !DILocation(line: 133, column: 20, scope: !1088)
!1098 = !DILocation(line: 133, column: 5, scope: !1088)
!1099 = !DILocation(line: 133, column: 10, scope: !1088)
!1100 = !DILocation(line: 133, column: 18, scope: !1088)
!1101 = !DILocation(line: 134, column: 1, scope: !1088)
!1102 = distinct !DISubprogram(name: "ethr_atomic32_set", scope: !43, file: !43, line: 7149, type: !519, scopeLine: 7150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1103)
!1103 = !{!1104, !1105}
!1104 = !DILocalVariable(name: "var", arg: 1, scope: !1102, file: !43, line: 7149, type: !521)
!1105 = !DILocalVariable(name: "val", arg: 2, scope: !1102, file: !43, line: 7149, type: !91)
!1106 = !DILocation(line: 7149, column: 66, scope: !1102)
!1107 = !DILocation(line: 7149, column: 85, scope: !1102)
!1108 = !DILocation(line: 7152, column: 30, scope: !1102)
!1109 = !DILocation(line: 7152, column: 54, scope: !1102)
!1110 = !DILocation(line: 7152, column: 5, scope: !1102)
!1111 = !DILocation(line: 7166, column: 1, scope: !1102)
!1112 = distinct !DISubprogram(name: "ethr_native_atomic32_set", scope: !45, file: !45, line: 131, type: !1113, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1116)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1115, !91}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1116 = !{!1117, !1118}
!1117 = !DILocalVariable(name: "var", arg: 1, scope: !1112, file: !45, line: 131, type: !1115)
!1118 = !DILocalVariable(name: "i", arg: 2, scope: !1112, file: !45, line: 131, type: !91)
!1119 = !DILocation(line: 131, column: 39, scope: !1112)
!1120 = !DILocation(line: 131, column: 58, scope: !1112)
!1121 = !DILocation(line: 133, column: 20, scope: !1112)
!1122 = !DILocation(line: 133, column: 5, scope: !1112)
!1123 = !DILocation(line: 133, column: 10, scope: !1112)
!1124 = !DILocation(line: 133, column: 18, scope: !1112)
!1125 = !DILocation(line: 134, column: 1, scope: !1112)
!1126 = distinct !DISubprogram(name: "erts_thr_prgr_read_nob__", scope: !108, file: !108, line: 178, type: !1127, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1129)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!107, !492}
!1129 = !{!1130}
!1130 = !DILocalVariable(name: "atmc", arg: 1, scope: !1126, file: !108, line: 178, type: !492)
!1131 = !DILocation(line: 178, column: 48, scope: !1126)
!1132 = !DILocation(line: 180, column: 52, scope: !1126)
!1133 = !DILocation(line: 180, column: 29, scope: !1126)
!1134 = !DILocation(line: 180, column: 5, scope: !1126)
!1135 = distinct !DISubprogram(name: "erts_thr_prgr_read_acqb__", scope: !108, file: !108, line: 184, type: !1127, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1136)
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "atmc", arg: 1, scope: !1135, file: !108, line: 184, type: !492)
!1138 = !DILocation(line: 184, column: 49, scope: !1135)
!1139 = !DILocation(line: 186, column: 53, scope: !1135)
!1140 = !DILocation(line: 186, column: 29, scope: !1135)
!1141 = !DILocation(line: 186, column: 5, scope: !1135)
!1142 = distinct !DISubprogram(name: "ethr_atomic_read", scope: !43, file: !43, line: 4464, type: !1143, scopeLine: 4465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!52, !492}
!1145 = !{!1146, !1147}
!1146 = !DILocalVariable(name: "var", arg: 1, scope: !1142, file: !43, line: 4464, type: !492)
!1147 = !DILocalVariable(name: "res", scope: !1142, file: !43, line: 4466, type: !52)
!1148 = !DILocation(line: 4464, column: 70, scope: !1142)
!1149 = !DILocation(line: 4466, column: 5, scope: !1142)
!1150 = !DILocation(line: 4466, column: 17, scope: !1142)
!1151 = !DILocation(line: 4468, column: 49, scope: !1142)
!1152 = !DILocation(line: 4468, column: 25, scope: !1142)
!1153 = !DILocation(line: 4468, column: 9, scope: !1142)
!1154 = !DILocation(line: 4482, column: 12, scope: !1142)
!1155 = !DILocation(line: 4483, column: 1, scope: !1142)
!1156 = !DILocation(line: 4482, column: 5, scope: !1142)
!1157 = distinct !DISubprogram(name: "ethr_native_atomic64_read", scope: !45, file: !45, line: 175, type: !1158, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!50, !1091}
!1160 = !{!1161}
!1161 = !DILocalVariable(name: "var", arg: 1, scope: !1157, file: !45, line: 175, type: !1091)
!1162 = !DILocation(line: 175, column: 40, scope: !1157)
!1163 = !DILocation(line: 177, column: 12, scope: !1157)
!1164 = !DILocation(line: 177, column: 17, scope: !1157)
!1165 = !DILocation(line: 177, column: 5, scope: !1157)
!1166 = distinct !DISubprogram(name: "ethr_atomic_read_acqb", scope: !43, file: !43, line: 4535, type: !1143, scopeLine: 4536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1167)
!1167 = !{!1168, !1169}
!1168 = !DILocalVariable(name: "var", arg: 1, scope: !1166, file: !43, line: 4535, type: !492)
!1169 = !DILocalVariable(name: "res", scope: !1166, file: !43, line: 4537, type: !52)
!1170 = !DILocation(line: 4535, column: 75, scope: !1166)
!1171 = !DILocation(line: 4537, column: 5, scope: !1166)
!1172 = !DILocation(line: 4537, column: 17, scope: !1166)
!1173 = !DILocation(line: 4544, column: 49, scope: !1166)
!1174 = !DILocation(line: 4544, column: 25, scope: !1166)
!1175 = !DILocation(line: 4544, column: 9, scope: !1166)
!1176 = !DILocation(line: 4545, column: 5, scope: !1166)
!1177 = !DILocation(line: 4557, column: 12, scope: !1166)
!1178 = !DILocation(line: 4558, column: 1, scope: !1166)
!1179 = !DILocation(line: 4557, column: 5, scope: !1166)
!1180 = distinct !DISubprogram(name: "ethr_cfence__", scope: !1181, file: !1181, line: 65, type: !1182, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!1181 = !DIFile(filename: "../include/internal/x86_64/../i386/ethr_membar.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "9a179575f7a22852832a5141e8deed65")
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null}
!1184 = !DILocation(line: 67, column: 5, scope: !1180)
!1185 = !{i64 2338741}
!1186 = !DILocation(line: 68, column: 1, scope: !1180)
!1187 = distinct !DISubprogram(name: "erts_tsd_get", scope: !2, file: !2, line: 2430, type: !1188, scopeLine: 2431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!53, !36}
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "key", arg: 1, scope: !1187, file: !2, line: 2430, type: !36)
!1192 = !DILocation(line: 2430, column: 29, scope: !1187)
!1193 = !DILocation(line: 2432, column: 25, scope: !1187)
!1194 = !DILocation(line: 2432, column: 12, scope: !1187)
!1195 = !DILocation(line: 2432, column: 5, scope: !1187)
!1196 = !DISubprogram(name: "ethr_tsd_get", scope: !38, file: !38, line: 530, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!53, !37}
!1199 = distinct !DISubprogram(name: "ethr_native_atomic32_read", scope: !45, file: !45, line: 175, type: !1200, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!91, !1115}
!1202 = !{!1203}
!1203 = !DILocalVariable(name: "var", arg: 1, scope: !1199, file: !45, line: 175, type: !1115)
!1204 = !DILocation(line: 175, column: 40, scope: !1199)
!1205 = !DILocation(line: 177, column: 12, scope: !1199)
!1206 = !DILocation(line: 177, column: 17, scope: !1199)
!1207 = !DILocation(line: 177, column: 5, scope: !1199)
!1208 = distinct !DISubprogram(name: "ethr_native_atomic64_inc_mb", scope: !45, file: !45, line: 203, type: !1209, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1211)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1091}
!1211 = !{!1212}
!1212 = !DILocalVariable(name: "var", arg: 1, scope: !1208, file: !45, line: 203, type: !1091)
!1213 = !DILocation(line: 203, column: 42, scope: !1208)
!1214 = !DILocation(line: 207, column: 9, scope: !1208)
!1215 = !DILocation(line: 207, column: 14, scope: !1208)
!1216 = !DILocation(line: 208, column: 8, scope: !1208)
!1217 = !DILocation(line: 208, column: 13, scope: !1208)
!1218 = !DILocation(line: 205, column: 5, scope: !1208)
!1219 = !{i64 2354539}
!1220 = !DILocation(line: 210, column: 1, scope: !1208)
!1221 = distinct !DISubprogram(name: "ethr_native_atomic64_dec_mb", scope: !45, file: !45, line: 219, type: !1209, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1222)
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "var", arg: 1, scope: !1221, file: !45, line: 219, type: !1091)
!1224 = !DILocation(line: 219, column: 42, scope: !1221)
!1225 = !DILocation(line: 223, column: 9, scope: !1221)
!1226 = !DILocation(line: 223, column: 14, scope: !1221)
!1227 = !DILocation(line: 224, column: 8, scope: !1221)
!1228 = !DILocation(line: 224, column: 13, scope: !1221)
!1229 = !DILocation(line: 221, column: 5, scope: !1221)
!1230 = !{i64 2354885}
!1231 = !DILocation(line: 226, column: 1, scope: !1221)
!1232 = distinct !DISubprogram(name: "ethr_atomic_cmpxchg_relb", scope: !43, file: !43, line: 3577, type: !1233, scopeLine: 3578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!52, !492, !52, !52}
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(name: "var", arg: 1, scope: !1232, file: !43, line: 3577, type: !492)
!1237 = !DILocalVariable(name: "val", arg: 2, scope: !1232, file: !43, line: 3577, type: !52)
!1238 = !DILocalVariable(name: "old_val", arg: 3, scope: !1232, file: !43, line: 3577, type: !52)
!1239 = !DILocalVariable(name: "res", scope: !1232, file: !43, line: 3579, type: !52)
!1240 = !DILocation(line: 3577, column: 78, scope: !1232)
!1241 = !DILocation(line: 3577, column: 95, scope: !1232)
!1242 = !DILocation(line: 3577, column: 112, scope: !1232)
!1243 = !DILocation(line: 3579, column: 5, scope: !1232)
!1244 = !DILocation(line: 3579, column: 17, scope: !1232)
!1245 = !DILocation(line: 3589, column: 55, scope: !1232)
!1246 = !DILocation(line: 3589, column: 77, scope: !1232)
!1247 = !DILocation(line: 3589, column: 99, scope: !1232)
!1248 = !DILocation(line: 3589, column: 25, scope: !1232)
!1249 = !DILocation(line: 3589, column: 9, scope: !1232)
!1250 = !DILocation(line: 3599, column: 12, scope: !1232)
!1251 = !DILocation(line: 3600, column: 1, scope: !1232)
!1252 = !DILocation(line: 3599, column: 5, scope: !1232)
!1253 = distinct !DISubprogram(name: "ethr_atomic_set_relb", scope: !43, file: !43, line: 3991, type: !490, scopeLine: 3992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1254)
!1254 = !{!1255, !1256}
!1255 = !DILocalVariable(name: "var", arg: 1, scope: !1253, file: !43, line: 3991, type: !492)
!1256 = !DILocalVariable(name: "val", arg: 2, scope: !1253, file: !43, line: 3991, type: !52)
!1257 = !DILocation(line: 3991, column: 67, scope: !1253)
!1258 = !DILocation(line: 3991, column: 84, scope: !1253)
!1259 = !DILocation(line: 3994, column: 33, scope: !1253)
!1260 = !DILocation(line: 3994, column: 55, scope: !1253)
!1261 = !DILocation(line: 3994, column: 5, scope: !1253)
!1262 = !DILocation(line: 4012, column: 1, scope: !1253)
!1263 = distinct !DISubprogram(name: "ethr_native_atomic64_cmpxchg_mb", scope: !45, file: !45, line: 93, type: !1264, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!50, !1091, !50, !50}
!1266 = !{!1267, !1268, !1269}
!1267 = !DILocalVariable(name: "var", arg: 1, scope: !1263, file: !45, line: 93, type: !1091)
!1268 = !DILocalVariable(name: "new_value", arg: 2, scope: !1263, file: !45, line: 94, type: !50)
!1269 = !DILocalVariable(name: "old_value", arg: 3, scope: !1263, file: !45, line: 95, type: !50)
!1270 = !DILocation(line: 93, column: 46, scope: !1263)
!1271 = !DILocation(line: 94, column: 24, scope: !1263)
!1272 = !DILocation(line: 95, column: 24, scope: !1263)
!1273 = !DILocation(line: 99, column: 31, scope: !1263)
!1274 = !DILocation(line: 99, column: 36, scope: !1263)
!1275 = !DILocation(line: 100, column: 13, scope: !1263)
!1276 = !DILocation(line: 100, column: 29, scope: !1263)
!1277 = !DILocation(line: 100, column: 34, scope: !1263)
!1278 = !DILocation(line: 100, column: 48, scope: !1263)
!1279 = !DILocation(line: 97, column: 5, scope: !1263)
!1280 = !{i64 2351877}
!1281 = !DILocation(line: 102, column: 12, scope: !1263)
!1282 = !DILocation(line: 102, column: 5, scope: !1263)
!1283 = distinct !DISubprogram(name: "ethr_native_atomic64_set_relb", scope: !45, file: !45, line: 143, type: !1089, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1284)
!1284 = !{!1285, !1286}
!1285 = !DILocalVariable(name: "var", arg: 1, scope: !1283, file: !45, line: 143, type: !1091)
!1286 = !DILocalVariable(name: "i", arg: 2, scope: !1283, file: !45, line: 143, type: !50)
!1287 = !DILocation(line: 143, column: 44, scope: !1283)
!1288 = !DILocation(line: 143, column: 63, scope: !1283)
!1289 = !DILocation(line: 151, column: 2, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1283, file: !45, line: 150, column: 5)
!1291 = !DILocation(line: 152, column: 17, scope: !1290)
!1292 = !DILocation(line: 152, column: 2, scope: !1290)
!1293 = !DILocation(line: 152, column: 7, scope: !1290)
!1294 = !DILocation(line: 152, column: 15, scope: !1290)
!1295 = !DILocation(line: 154, column: 1, scope: !1283)
!1296 = distinct !DISubprogram(name: "erts_thr_progress_has_reached", scope: !108, file: !108, line: 316, type: !1297, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!33, !107}
!1299 = !{!1300, !1301}
!1300 = !DILocalVariable(name: "val", arg: 1, scope: !1296, file: !108, line: 316, type: !107)
!1301 = !DILocalVariable(name: "current", scope: !1296, file: !108, line: 318, type: !107)
!1302 = !DILocation(line: 316, column: 46, scope: !1296)
!1303 = !DILocation(line: 318, column: 5, scope: !1296)
!1304 = !DILocation(line: 318, column: 20, scope: !1296)
!1305 = !DILocation(line: 318, column: 30, scope: !1296)
!1306 = !DILocation(line: 319, column: 47, scope: !1296)
!1307 = !DILocation(line: 319, column: 56, scope: !1296)
!1308 = !DILocation(line: 319, column: 12, scope: !1296)
!1309 = !DILocation(line: 320, column: 1, scope: !1296)
!1310 = !DILocation(line: 319, column: 5, scope: !1296)
!1311 = distinct !DISubprogram(name: "check_insert_marker", scope: !8, file: !8, line: 197, type: !1312, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1314)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!52, !195, !52}
!1314 = !{!1315, !1316, !1317, !1320}
!1315 = !DILocalVariable(name: "chdr", arg: 1, scope: !1311, file: !8, line: 197, type: !195)
!1316 = !DILocalVariable(name: "ilast", arg: 2, scope: !1311, file: !8, line: 197, type: !52)
!1317 = !DILocalVariable(name: "itmp", scope: !1318, file: !8, line: 201, type: !52)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !8, line: 200, column: 56)
!1319 = distinct !DILexicalBlock(scope: !1311, file: !8, line: 199, column: 9)
!1320 = !DILocalVariable(name: "last", scope: !1318, file: !8, line: 202, type: !54)
!1321 = !DILocation(line: 197, column: 47, scope: !1311)
!1322 = !DILocation(line: 197, column: 65, scope: !1311)
!1323 = !DILocation(line: 199, column: 10, scope: !1319)
!1324 = !DILocation(line: 199, column: 16, scope: !1319)
!1325 = !DILocation(line: 199, column: 21, scope: !1319)
!1326 = !DILocation(line: 200, column: 2, scope: !1319)
!1327 = !DILocation(line: 200, column: 5, scope: !1319)
!1328 = !DILocation(line: 200, column: 11, scope: !1319)
!1329 = !DILocation(line: 200, column: 16, scope: !1319)
!1330 = !DILocation(line: 200, column: 49, scope: !1319)
!1331 = !DILocation(line: 200, column: 29, scope: !1319)
!1332 = !DILocation(line: 200, column: 26, scope: !1319)
!1333 = !DILocation(line: 199, column: 9, scope: !1311)
!1334 = !DILocation(line: 201, column: 2, scope: !1318)
!1335 = !DILocation(line: 201, column: 14, scope: !1318)
!1336 = !DILocation(line: 202, column: 2, scope: !1318)
!1337 = !DILocation(line: 202, column: 19, scope: !1318)
!1338 = !DILocation(line: 202, column: 46, scope: !1318)
!1339 = !DILocation(line: 202, column: 26, scope: !1318)
!1340 = !DILocation(line: 204, column: 24, scope: !1318)
!1341 = !DILocation(line: 204, column: 30, scope: !1318)
!1342 = !DILocation(line: 204, column: 40, scope: !1318)
!1343 = !DILocation(line: 204, column: 2, scope: !1318)
!1344 = !DILocation(line: 205, column: 35, scope: !1318)
!1345 = !DILocation(line: 206, column: 21, scope: !1318)
!1346 = !DILocation(line: 206, column: 27, scope: !1318)
!1347 = !DILocation(line: 206, column: 37, scope: !1318)
!1348 = !DILocation(line: 206, column: 6, scope: !1318)
!1349 = !DILocation(line: 205, column: 9, scope: !1318)
!1350 = !DILocation(line: 205, column: 7, scope: !1318)
!1351 = !DILocation(line: 208, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1318, file: !8, line: 208, column: 6)
!1353 = !DILocation(line: 208, column: 11, scope: !1352)
!1354 = !DILocation(line: 208, column: 6, scope: !1318)
!1355 = !DILocation(line: 209, column: 29, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !8, line: 208, column: 30)
!1357 = !DILocation(line: 209, column: 35, scope: !1356)
!1358 = !DILocation(line: 209, column: 45, scope: !1356)
!1359 = !DILocation(line: 209, column: 14, scope: !1356)
!1360 = !DILocation(line: 209, column: 12, scope: !1356)
!1361 = !DILocation(line: 210, column: 6, scope: !1356)
!1362 = !DILocation(line: 210, column: 12, scope: !1356)
!1363 = !DILocation(line: 210, column: 17, scope: !1356)
!1364 = !DILocation(line: 210, column: 29, scope: !1356)
!1365 = !DILocation(line: 211, column: 28, scope: !1356)
!1366 = !DILocation(line: 211, column: 34, scope: !1356)
!1367 = !DILocation(line: 211, column: 44, scope: !1356)
!1368 = !DILocation(line: 211, column: 50, scope: !1356)
!1369 = !DILocation(line: 211, column: 6, scope: !1356)
!1370 = !DILocation(line: 212, column: 2, scope: !1356)
!1371 = !DILocation(line: 213, column: 5, scope: !1319)
!1372 = !DILocation(line: 213, column: 5, scope: !1318)
!1373 = !DILocation(line: 214, column: 12, scope: !1311)
!1374 = !DILocation(line: 214, column: 5, scope: !1311)
!1375 = distinct !DISubprogram(name: "erts_thr_progress_later", scope: !108, file: !108, line: 243, type: !1376, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2174)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!107, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSchedulerData", file: !11, line: 411, baseType: !1380)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsSchedulerData_", file: !11, line: 682, size: 333824, elements: !1381)
!1381 = !{!1382, !1460, !1465, !1470, !1475, !1478, !1479, !1818, !1819, !1834, !1835, !1837, !1838, !1839, !1840, !1843, !1844, !1849, !2001, !2002, !2003, !2102, !2120, !2121, !2122, !2123, !2124, !2125, !2130, !2136, !2137, !2138, !2154, !2161, !2164}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "registers", scope: !1380, file: !11, line: 683, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSchedulerRegisters", file: !11, line: 680, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsSchedulerRegisters_", file: !11, line: 621, size: 132736, elements: !1386)
!1386 = !{!1387, !1414, !1426, !1455, !1459}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "aux_regs", scope: !1385, file: !11, line: 651, baseType: !1388, size: 1024)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !11, line: 622, size: 1024, elements: !1389)
!1389 = !{!1390, !1410}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1388, file: !11, line: 649, baseType: !1391, size: 640)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aux_regs__", file: !11, line: 623, size: 640, elements: !1392)
!1392 = !{!1393, !1395, !1399}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_stack", scope: !1391, file: !11, line: 636, baseType: !1394, size: 64, align: 64)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, align: 64, elements: !127)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "TMP_MEM", scope: !1391, file: !11, line: 644, baseType: !1396, size: 320, align: 64, offset: 64)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320, align: 64, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 5)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "erl_bits_state", scope: !1391, file: !11, line: 648, baseType: !1400, size: 256, offset: 384)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erl_bits_state", file: !1401, line: 52, size: 256, elements: !1402)
!1401 = !DIFile(filename: "beam/erl_bits.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "40036026cb49446a403cc74a305c7898")
!1402 = !{!1403, !1407, !1408, !1409}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_", scope: !1400, file: !1401, line: 56, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !21, line: 501, baseType: !1406)
!1406 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_len_", scope: !1400, file: !1401, line: 57, baseType: !33, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "erts_current_bin_", scope: !1400, file: !1401, line: 62, baseType: !1404, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "erts_bin_offset_", scope: !1400, file: !1401, line: 67, baseType: !22, size: 64, align: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "align__", scope: !1388, file: !11, line: 650, baseType: !1411, size: 1024)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "x_reg_array", scope: !1385, file: !11, line: 656, baseType: !1415, size: 66048, offset: 1024)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !11, line: 653, size: 66048, elements: !1416)
!1416 = !{!1417, !1422}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1415, file: !11, line: 654, baseType: !1418, size: 65728, align: 64)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 65728, align: 64, elements: !1420)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "Eterm", file: !21, line: 387, baseType: !23, align: 64)
!1420 = !{!1421}
!1421 = !DISubrange(count: 1027)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "align__", scope: !1415, file: !11, line: 655, baseType: !1423, size: 66048)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 66048, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 8256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "f_reg_array", scope: !1385, file: !11, line: 661, baseType: !1427, size: 65536, offset: 67072)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !11, line: 658, size: 65536, elements: !1428)
!1428 = !{!1429, !1451}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1427, file: !11, line: 659, baseType: !1430, size: 65536)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1431, size: 65536, elements: !1449)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "FloatDef", file: !1432, line: 445, baseType: !1433)
!1432 = !DIFile(filename: "beam/erl_term.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "2a5c94601a3cf0988984ef3ff4818003")
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "float_def", file: !1432, line: 436, size: 64, elements: !1434)
!1434 = !{!1435, !1438, !1442, !1446, !1448}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1433, file: !1432, line: 438, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee754_8", file: !1432, line: 434, baseType: !1437)
!1437 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !1433, file: !1432, line: 439, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 64, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 8)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1433, file: !1432, line: 440, baseType: !1443, size: 64)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1444, size: 64, elements: !139)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "Uint16", file: !21, line: 484, baseType: !1445)
!1445 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fw", scope: !1433, file: !1432, line: 441, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 64, elements: !82)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fdw", scope: !1433, file: !1432, line: 443, baseType: !22, size: 64, align: 64)
!1449 = !{!1450}
!1450 = !DISubrange(count: 1024)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "align__", scope: !1427, file: !11, line: 660, baseType: !1452, size: 65536)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 65536, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 8192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_i", scope: !1385, file: !11, line: 665, baseType: !1456, size: 64, offset: 132608)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsCodePtr", file: !21, line: 431, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1385, file: !11, line: 666, baseType: !20, size: 64, align: 64, offset: 132672)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "timer_wheel", scope: !1380, file: !11, line: 685, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsTimerWheel", file: !1463, line: 78, baseType: !1464)
!1463 = !DIFile(filename: "beam/erl_time.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "14eb2e65fd167057d2600b51d3cfe988")
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsTimerWheel_", file: !1463, line: 78, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "next_tmo_ref", scope: !1380, file: !11, line: 686, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsNextTimeoutRef", file: !1463, line: 79, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMonotonicTime", file: !1469, line: 152, baseType: !51)
!1469 = !DIFile(filename: "sys/unix/erl_unix_sys.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "7db4738613fd15cfcfbc762a2c7b0b78")
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "timer_service", scope: !1380, file: !11, line: 687, baseType: !1471, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsHLTimerService", file: !1473, line: 25, baseType: !1474)
!1473 = !DIFile(filename: "beam/erl_hl_timer.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "88560d8cb3366f8e3cd715286e809430")
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsHLTimerService_", file: !1473, line: 25, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !1380, file: !11, line: 688, baseType: !1476, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_tid", file: !38, line: 132, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !40, line: 27, baseType: !23)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "match_pseudo_process", scope: !1380, file: !11, line: 689, baseType: !53, size: 64, offset: 320)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "free_process", scope: !1380, file: !11, line: 690, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "Process", file: !11, line: 40, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "process", file: !11, line: 1007, size: 6208, elements: !1483)
!1483 = !{!1484, !1610, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1642, !1702, !1706, !1718, !1719, !1720, !1721, !1735, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1760, !1764, !1765, !1766, !1767, !1775, !1776, !1787, !1816, !1817}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1482, file: !11, line: 1008, baseType: !1485, size: 640)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsPTabElementCommon", file: !1486, line: 81, baseType: !1487)
!1486 = !DIFile(filename: "beam/erl_ptab.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "224b2c36bdd1b9f23159564b3830979f")
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1486, line: 56, size: 640, elements: !1488)
!1488 = !{!1489, !1490, !1496, !1498, !1499, !1500}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1487, file: !1486, line: 57, baseType: !1419, size: 64, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "refc", scope: !1487, file: !1486, line: 61, baseType: !1491, size: 64, offset: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1486, line: 58, size: 64, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "atmc", scope: !1491, file: !1486, line: 59, baseType: !42, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sint", scope: !1491, file: !1486, line: 60, baseType: !1495, size: 64, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sint", file: !21, line: 389, baseType: !51, align: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "tracer", scope: !1487, file: !1486, line: 62, baseType: !1497, size: 64, align: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsTracer", file: !21, line: 709, baseType: !1419)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags", scope: !1487, file: !1486, line: 63, baseType: !22, size: 64, align: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1487, file: !1486, line: 64, baseType: !42, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1487, file: !1486, line: 80, baseType: !1501, size: 320, offset: 320)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1487, file: !1486, line: 65, size: 320, elements: !1502)
!1502 = !{!1503, !1598}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !1501, file: !1486, line: 76, baseType: !1504, size: 320)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !1486, line: 67, size: 320, elements: !1505)
!1505 = !{!1506, !1507, !1510, !1594, !1597}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "started_interval", scope: !1504, file: !1486, line: 68, baseType: !109, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1504, file: !1486, line: 69, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "reg_proc", file: !1486, line: 69, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1504, file: !1486, line: 70, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsLink", file: !1513, line: 1610, baseType: !1514)
!1513 = !DIFile(filename: "beam/erl_monitor_link.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "16d98f143cd2175beeecae09149f8251")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsMonLnkNode__", file: !1513, line: 518, size: 320, elements: !1515)
!1515 = !{!1516, !1585, !1590, !1591, !1592, !1593}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1514, file: !1513, line: 523, baseType: !1517, size: 192)
!1517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1513, line: 519, size: 192, elements: !1518)
!1518 = !{!1519, !1570, !1579}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1517, file: !1513, line: 520, baseType: !1520, size: 192)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSignalCommon", file: !1521, line: 108, baseType: !1522)
!1521 = !DIFile(filename: "beam/erl_proc_sig_queue.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "53a3480d3100f5995e8e54ed281ca383")
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1521, line: 101, size: 192, elements: !1523)
!1523 = !{!1524, !1563, !1569}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1522, file: !1521, line: 102, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erl_mesg", file: !1527, line: 230, size: 704, elements: !1528)
!1527 = !DIFile(filename: "beam/erl_message.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "242435a6f93ffcb553e1bc85abeaf975")
!1528 = !{!1529, !1532, !1558, !1562}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1526, file: !1527, line: 231, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMessage", file: !1527, line: 61, baseType: !1526)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1526, file: !1527, line: 231, baseType: !1533, size: 64, offset: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1526, file: !1527, line: 231, size: 64, elements: !1534)
!1534 = !{!1535, !1557}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "heap_frag", scope: !1533, file: !1527, line: 231, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlHeapFragment", file: !1527, line: 187, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erl_heap_fragment", file: !1527, line: 188, size: 384, elements: !1539)
!1539 = !{!1540, !1541, !1553, !1554, !1555}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1538, file: !1527, line: 189, baseType: !1536, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "off_heap", scope: !1538, file: !1527, line: 190, baseType: !1542, size: 128, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlOffHeap", file: !1527, line: 81, baseType: !1543)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erl_off_heap", file: !1527, line: 78, size: 128, elements: !1544)
!1544 = !{!1545, !1552}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1543, file: !1527, line: 79, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erl_off_heap_header", file: !1527, line: 68, size: 192, elements: !1548)
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "thing_word", scope: !1547, file: !1527, line: 69, baseType: !1419, size: 64, align: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1547, file: !1527, line: 70, baseType: !22, size: 64, align: 64, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1547, file: !1527, line: 71, baseType: !1546, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "overhead", scope: !1543, file: !1527, line: 80, baseType: !109, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_size", scope: !1538, file: !1527, line: 191, baseType: !22, size: 64, align: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "used_size", scope: !1538, file: !1527, line: 192, baseType: !22, size: 64, align: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1538, file: !1527, line: 193, baseType: !1556, size: 64, align: 64, offset: 320)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 64, align: 64, elements: !127)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !1533, file: !1527, line: 231, baseType: !53, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !1526, file: !1527, line: 231, baseType: !1559, size: 192, align: 64, offset: 128)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 192, align: 64, elements: !1560)
!1560 = !{!1561}
!1561 = !DISubrange(count: 3)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "hfrag", scope: !1526, file: !1527, line: 233, baseType: !1537, size: 384, offset: 320)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "specific", scope: !1522, file: !1521, line: 106, baseType: !1564, size: 64, offset: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !1521, line: 103, size: 64, elements: !1565)
!1565 = !{!1566, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1564, file: !1521, line: 104, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "attachment", scope: !1564, file: !1521, line: 105, baseType: !53, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1522, file: !1521, line: 107, baseType: !1419, size: 64, align: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !1517, file: !1513, line: 521, baseType: !1571, size: 192)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMonLnkTreeNode", file: !1513, line: 511, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 507, size: 192, elements: !1573)
!1573 = !{!1574, !1575, !1578}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1572, file: !1513, line: 508, baseType: !20, size: 64, align: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1572, file: !1513, line: 509, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMonLnkNode", file: !1513, line: 504, baseType: !1514)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1572, file: !1513, line: 510, baseType: !1576, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1517, file: !1513, line: 522, baseType: !1580, size: 128)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMonLnkListNode", file: !1513, line: 516, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 513, size: 128, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1581, file: !1513, line: 514, baseType: !1576, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1581, file: !1513, line: 515, baseType: !1576, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1514, file: !1513, line: 527, baseType: !1586, size: 64, offset: 192)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1513, line: 524, size: 64, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !1586, file: !1513, line: 525, baseType: !1419, size: 64, align: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1586, file: !1513, line: 526, baseType: !53, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1514, file: !1513, line: 528, baseType: !1444, size: 16, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !1514, file: !1513, line: 529, baseType: !1444, size: 16, offset: 272)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !1513, line: 530, baseType: !1444, size: 16, offset: 288)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1514, file: !1513, line: 531, baseType: !1444, size: 16, offset: 304)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lt_monitors", scope: !1504, file: !1486, line: 73, baseType: !1595, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMonitor", file: !1513, line: 690, baseType: !1514)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "monitors", scope: !1504, file: !1486, line: 75, baseType: !1595, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1501, file: !1486, line: 79, baseType: !1599, size: 256)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsThrPrgrLaterOp", file: !108, line: 80, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsThrPrgrLaterOp_", file: !108, line: 81, size: 256, elements: !1601)
!1601 = !{!1602, !1603, !1607, !1608}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "later", scope: !1600, file: !108, line: 82, baseType: !107, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1600, file: !108, line: 83, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !53}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1600, file: !108, line: 84, baseType: !53, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1600, file: !108, line: 85, baseType: !1609, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "htop", scope: !1482, file: !11, line: 1015, baseType: !1611, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1482, file: !11, line: 1016, baseType: !1611, size: 64, offset: 704)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "frame_pointer", scope: !1482, file: !11, line: 1019, baseType: !1611, size: 64, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fcalls", scope: !1482, file: !11, line: 1022, baseType: !1495, size: 64, align: 64, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "freason", scope: !1482, file: !11, line: 1025, baseType: !22, size: 64, align: 64, offset: 896)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fvalue", scope: !1482, file: !11, line: 1026, baseType: !1419, size: 64, align: 64, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !1482, file: !11, line: 1030, baseType: !1611, size: 64, offset: 1024)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "hend", scope: !1482, file: !11, line: 1031, baseType: !1611, size: 64, offset: 1088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "abandoned_heap", scope: !1482, file: !11, line: 1032, baseType: !1611, size: 64, offset: 1152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "heap_sz", scope: !1482, file: !11, line: 1033, baseType: !22, size: 64, align: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "min_heap_size", scope: !1482, file: !11, line: 1034, baseType: !22, size: 64, align: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "min_vheap_size", scope: !1482, file: !11, line: 1035, baseType: !22, size: 64, align: 64, offset: 1344)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "max_heap_size", scope: !1482, file: !11, line: 1036, baseType: !22, size: 64, align: 64, offset: 1408)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1482, file: !11, line: 1041, baseType: !22, size: 64, align: 64, offset: 1472)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_reg", scope: !1482, file: !11, line: 1044, baseType: !1611, size: 64, offset: 1536)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "max_arg_reg", scope: !1482, file: !11, line: 1045, baseType: !12, size: 32, offset: 1600)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "def_arg_reg", scope: !1482, file: !11, line: 1046, baseType: !1628, size: 384, align: 64, offset: 1664)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 384, align: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 6)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1482, file: !11, line: 1048, baseType: !1456, size: 64, offset: 2048)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "catches", scope: !1482, file: !11, line: 1049, baseType: !1495, size: 64, align: 64, offset: 2112)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rcount", scope: !1482, file: !11, line: 1050, baseType: !467, size: 32, offset: 2176)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_count", scope: !1482, file: !11, line: 1051, baseType: !33, size: 32, offset: 2208)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "reds", scope: !1482, file: !11, line: 1052, baseType: !22, size: 64, align: 64, offset: 2240)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1482, file: !11, line: 1053, baseType: !467, size: 32, offset: 2304)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1482, file: !11, line: 1054, baseType: !1419, size: 64, align: 64, offset: 2368)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ftrace", scope: !1482, file: !11, line: 1055, baseType: !1419, size: 64, align: 64, offset: 2432)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1482, file: !11, line: 1057, baseType: !1480, size: 64, offset: 2496)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !1482, file: !11, line: 1059, baseType: !1641, size: 64, offset: 2560)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sint64", file: !21, line: 438, baseType: !51)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sig_qs", scope: !1482, file: !11, line: 1060, baseType: !1643, size: 640, offset: 2624)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSignalPrivQueues", file: !1527, line: 374, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 317, size: 640, elements: !1645)
!1645 = !{!1646, !1647, !1649, !1650, !1651, !1652, !1658, !1700, !1701}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1644, file: !1527, line: 361, baseType: !1530, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1644, file: !1527, line: 362, baseType: !1648, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "save", scope: !1644, file: !1527, line: 363, baseType: !1648, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cont", scope: !1644, file: !1527, line: 366, baseType: !1530, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cont_last", scope: !1644, file: !1527, line: 367, baseType: !1648, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nmsigs", scope: !1644, file: !1527, line: 368, baseType: !1653, size: 128, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMsgQNMSigs", file: !1527, line: 282, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 278, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1654, file: !1527, line: 280, baseType: !1648, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1654, file: !1527, line: 281, baseType: !1648, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "recv_mrk_blk", scope: !1644, file: !1527, line: 371, baseType: !1659, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsRecvMarkerBlock", file: !1527, line: 312, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 302, size: 4160, elements: !1662)
!1662 = !{!1663, !1665, !1695, !1696, !1697, !1698, !1699}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1661, file: !1527, line: 303, baseType: !1664, size: 512, align: 64)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 512, align: 64, elements: !1440)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !1661, file: !1527, line: 304, baseType: !1666, size: 3584, offset: 512)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1667, size: 3584, elements: !1440)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsRecvMarker", file: !1527, line: 298, baseType: !1668)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 284, size: 448, elements: !1669)
!1669 = !{!1670, !1686, !1687, !1689, !1690, !1691, !1692, !1693, !1694}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1668, file: !1527, line: 285, baseType: !1671, size: 320)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSignal", file: !1527, line: 276, baseType: !1672)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1527, line: 273, size: 320, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1672, file: !1527, line: 274, baseType: !1520, size: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !1672, file: !1527, line: 275, baseType: !1676, size: 320)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMessageRef", file: !1527, line: 228, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erl_msg_ref__", file: !1527, line: 226, size: 320, elements: !1678)
!1678 = !{!1679, !1680, !1685}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1677, file: !1527, line: 227, baseType: !1530, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1677, file: !1527, line: 227, baseType: !1681, size: 64, offset: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1677, file: !1527, line: 227, size: 64, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "heap_frag", scope: !1681, file: !1527, line: 227, baseType: !1536, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !1681, file: !1527, line: 227, baseType: !53, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !1677, file: !1527, line: 227, baseType: !1559, size: 192, align: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "prev_next", scope: !1668, file: !1527, line: 286, baseType: !1648, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "is_yield_mark", scope: !1668, file: !1527, line: 287, baseType: !1688, size: 8, offset: 384)
!1688 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1668, file: !1527, line: 288, baseType: !1688, size: 8, offset: 392)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "set_save", scope: !1668, file: !1527, line: 289, baseType: !1688, size: 8, offset: 400)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "in_sigq", scope: !1668, file: !1527, line: 290, baseType: !1688, size: 8, offset: 408)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "in_msgq", scope: !1668, file: !1527, line: 291, baseType: !1688, size: 8, offset: 416)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "prev_ix", scope: !1668, file: !1527, line: 292, baseType: !1688, size: 8, offset: 424)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "next_ix", scope: !1668, file: !1527, line: 293, baseType: !1688, size: 8, offset: 432)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "free_ix", scope: !1661, file: !1527, line: 305, baseType: !1688, size: 8, offset: 4096)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "used_ix", scope: !1661, file: !1527, line: 306, baseType: !1688, size: 8, offset: 4104)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1661, file: !1527, line: 307, baseType: !1688, size: 8, offset: 4112)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "pending_set_save_ix", scope: !1661, file: !1527, line: 308, baseType: !1688, size: 8, offset: 4120)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "old_recv_marker_ix", scope: !1661, file: !1527, line: 310, baseType: !1688, size: 8, offset: 4128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1644, file: !1527, line: 372, baseType: !1495, size: 64, align: 64, offset: 512)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !1527, line: 373, baseType: !467, size: 32, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "bif_timers", scope: !1482, file: !11, line: 1061, baseType: !1703, size: 64, offset: 3264)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsBifTimers", file: !1473, line: 24, baseType: !1705)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsBifTimer_", file: !1473, line: 24, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dictionary", scope: !1482, file: !11, line: 1063, baseType: !1707, size: 64, offset: 3328)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProcDict", file: !1709, line: 32, baseType: !1710)
!1709 = !DIFile(filename: "beam/erl_process_dict.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "4ac2fe0b8d820fc5655ca2eabcba989d")
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dict", file: !1709, line: 25, size: 256, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sizeMask", scope: !1710, file: !1709, line: 26, baseType: !12, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "usedSlots", scope: !1710, file: !1709, line: 27, baseType: !12, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "arraySize", scope: !1710, file: !1709, line: 28, baseType: !12, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "splitPosition", scope: !1710, file: !1709, line: 29, baseType: !12, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "numElements", scope: !1710, file: !1709, line: 30, baseType: !22, size: 64, align: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1710, file: !1709, line: 31, baseType: !1556, size: 64, align: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_trace_clock", scope: !1482, file: !11, line: 1065, baseType: !22, size: 64, align: 64, offset: 3392)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "seq_trace_lastcnt", scope: !1482, file: !11, line: 1066, baseType: !22, size: 64, align: 64, offset: 3456)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_trace_token", scope: !1482, file: !11, line: 1067, baseType: !1419, size: 64, align: 64, offset: 3520)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1482, file: !11, line: 1079, baseType: !1722, size: 192, offset: 3584)
!1722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1482, file: !11, line: 1073, size: 192, elements: !1723)
!1723 = !{!1724, !1726, !1727}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "real_proc", scope: !1722, file: !11, line: 1074, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !1722, file: !11, line: 1075, baseType: !53, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1722, file: !11, line: 1076, baseType: !1728, size: 192)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsCodeMFA", file: !1729, line: 91, baseType: !1730)
!1729 = !DIFile(filename: "beam/code_ix.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "db5040da5f221f8691a869dd0df32c8a")
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsCodeMFA_", file: !1729, line: 87, size: 192, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !1730, file: !1729, line: 88, baseType: !1419, size: 64, align: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1730, file: !1729, line: 89, baseType: !1419, size: 64, align: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1730, file: !1729, line: 90, baseType: !22, size: 64, align: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1482, file: !11, line: 1080, baseType: !1736, size: 64, offset: 3776)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1728)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1482, file: !11, line: 1092, baseType: !1419, size: 64, align: 64, offset: 3840)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "static_flags", scope: !1482, file: !11, line: 1094, baseType: !467, size: 32, offset: 3904)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "high_water", scope: !1482, file: !11, line: 1100, baseType: !1611, size: 64, offset: 3968)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "old_hend", scope: !1482, file: !11, line: 1101, baseType: !1611, size: 64, offset: 4032)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "old_htop", scope: !1482, file: !11, line: 1102, baseType: !1611, size: 64, offset: 4096)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "old_heap", scope: !1482, file: !11, line: 1103, baseType: !1611, size: 64, offset: 4160)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "gen_gcs", scope: !1482, file: !11, line: 1104, baseType: !1444, size: 16, offset: 4224)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "max_gen_gcs", scope: !1482, file: !11, line: 1105, baseType: !1444, size: 16, offset: 4240)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "off_heap", scope: !1482, file: !11, line: 1106, baseType: !1542, size: 128, offset: 4288)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "wrt_bins", scope: !1482, file: !11, line: 1107, baseType: !1546, size: 64, offset: 4416)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mbuf", scope: !1482, file: !11, line: 1108, baseType: !1536, size: 64, offset: 4480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "live_hf_end", scope: !1482, file: !11, line: 1109, baseType: !1536, size: 64, offset: 4544)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "msg_frag", scope: !1482, file: !11, line: 1110, baseType: !1530, size: 64, offset: 4608)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mbuf_sz", scope: !1482, file: !11, line: 1111, baseType: !22, size: 64, align: 64, offset: 4672)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "psd", scope: !1482, file: !11, line: 1112, baseType: !42, size: 64, offset: 4736)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "bin_vheap_sz", scope: !1482, file: !11, line: 1114, baseType: !109, size: 64, offset: 4800)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "bin_old_vheap_sz", scope: !1482, file: !11, line: 1115, baseType: !109, size: 64, offset: 4864)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "bin_old_vheap", scope: !1482, file: !11, line: 1116, baseType: !109, size: 64, offset: 4928)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sys_task_qs", scope: !1482, file: !11, line: 1118, baseType: !1757, size: 64, offset: 4992)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsProcSysTaskQs", file: !11, line: 949, baseType: !1759)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsProcSysTaskQs_", file: !11, line: 949, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sys_tasks", scope: !1482, file: !11, line: 1119, baseType: !1761, size: 64, offset: 5056)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsProcSysTask", file: !11, line: 948, baseType: !1763)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsProcSysTask_", file: !11, line: 948, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1482, file: !11, line: 1121, baseType: !85, size: 32, offset: 5120)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_state", scope: !1482, file: !11, line: 1122, baseType: !85, size: 32, offset: 5152)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sig_inq_contention_counter", scope: !1482, file: !11, line: 1123, baseType: !22, size: 64, align: 64, offset: 5184)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sig_inq", scope: !1482, file: !11, line: 1124, baseType: !1768, size: 320, offset: 5248)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSignalInQueue", file: !1527, line: 384, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1527, line: 376, size: 320, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1769, file: !1527, line: 377, baseType: !1530, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1769, file: !1527, line: 378, baseType: !1648, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1769, file: !1527, line: 379, baseType: !1495, size: 64, align: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nmsigs", scope: !1769, file: !1527, line: 380, baseType: !1653, size: 128, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sig_inq_buffers", scope: !1482, file: !11, line: 1125, baseType: !42, size: 64, offset: 5568)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "trace_msg_q", scope: !1482, file: !11, line: 1126, baseType: !1777, size: 64, offset: 5632)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlTraceMessageQueue", file: !1527, line: 432, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erl_trace_message_queue__", file: !1527, line: 426, size: 320, elements: !1780)
!1780 = !{!1781, !1783, !1784, !1785, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1779, file: !1527, line: 427, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "receiver", scope: !1779, file: !1527, line: 428, baseType: !1419, size: 64, align: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1779, file: !1527, line: 429, baseType: !1530, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1779, file: !1527, line: 430, baseType: !1648, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1779, file: !1527, line: 431, baseType: !1495, size: 64, align: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !11, line: 1127, baseType: !1788, size: 384, offset: 5696)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_proc_lock_t", file: !1789, line: 106, baseType: !1790)
!1789 = !DIFile(filename: "beam/erl_process_lock.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "a651c5586b502bc252d6d5eada19c6f9")
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erts_proc_lock_t_", file: !1789, line: 73, size: 384, elements: !1791)
!1791 = !{!1792, !1793}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !1789, line: 76, baseType: !85, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1790, file: !1789, line: 80, baseType: !1794, size: 320, offset: 64)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, size: 320, elements: !1397)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_tse_t", file: !2, line: 356, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_ts_event", file: !38, line: 619, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethr_ts_event_", file: !38, line: 630, size: 384, elements: !1799)
!1799 = !{!1800, !1802, !1803, !1809, !1810, !1811, !1812, !1813, !1815}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1798, file: !38, line: 631, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1798, file: !38, line: 632, baseType: !1801, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1798, file: !38, line: 633, baseType: !1804, size: 32, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_event", file: !1805, line: 48, baseType: !1806)
!1805 = !DIFile(filename: "../include/internal/pthread/ethr_event.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "dcd7a60f971e3ca69b3c77705784413b")
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1805, line: 46, size: 32, elements: !1807)
!1807 = !{!1808}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1806, file: !1805, line: 47, baseType: !85, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "udata", scope: !1798, file: !38, line: 634, baseType: !53, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "uaflgs", scope: !1798, file: !38, line: 635, baseType: !85, size: 32, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "uflgs", scope: !1798, file: !38, line: 636, baseType: !12, size: 32, offset: 288)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "iflgs", scope: !1798, file: !38, line: 637, baseType: !12, size: 32, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rgix", scope: !1798, file: !38, line: 638, baseType: !1814, size: 16, offset: 352)
!1814 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "mtix", scope: !1798, file: !38, line: 639, baseType: !1814, size: 16, offset: 368)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "scheduler_data", scope: !1482, file: !11, line: 1128, baseType: !1378, size: 64, offset: 6080)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "run_queue", scope: !1482, file: !11, line: 1129, baseType: !42, size: 64, offset: 6144)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "thr_progress_data", scope: !1380, file: !11, line: 691, baseType: !130, size: 832, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !1380, file: !11, line: 692, baseType: !1820, size: 64, offset: 1280)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSchedulerSleepInfo", file: !11, line: 353, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsSchedulerSleepInfo_", file: !11, line: 360, size: 448, elements: !1823)
!1823 = !{!1824, !1826, !1827, !1828, !1829, !1830, !1833}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "esdp", scope: !1822, file: !11, line: 361, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1822, file: !11, line: 362, baseType: !1820, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1822, file: !11, line: 363, baseType: !1820, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1822, file: !11, line: 364, baseType: !85, size: 32, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1822, file: !11, line: 365, baseType: !1795, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1822, file: !11, line: 366, baseType: !1831, size: 64, offset: 320)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "erts_poll_thread", file: !11, line: 366, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work", scope: !1822, file: !11, line: 367, baseType: !85, size: 32, offset: 384)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "current_process", scope: !1380, file: !11, line: 693, baseType: !1480, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1380, file: !11, line: 694, baseType: !1836, size: 32, offset: 1408)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSchedType", file: !11, line: 409, baseType: !10)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1380, file: !11, line: 695, baseType: !22, size: 64, align: 64, offset: 1472)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_no", scope: !1380, file: !11, line: 696, baseType: !22, size: 64, align: 64, offset: 1536)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flxctr_slot_no", scope: !1380, file: !11, line: 697, baseType: !33, size: 32, offset: 1600)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "current_nif", scope: !1380, file: !11, line: 698, baseType: !1841, size: 64, offset: 1664)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "enif_environment_t", file: !11, line: 698, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_shadow_process", scope: !1380, file: !11, line: 699, baseType: !1480, size: 64, offset: 1728)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "current_port", scope: !1380, file: !11, line: 700, baseType: !1845, size: 64, offset: 1792)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "Port", file: !1847, line: 23, baseType: !1848)
!1847 = !DIFile(filename: "beam/erl_port.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "70700c05b382a33a024c1bc36728dfa6")
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "_erl_drv_port", file: !1847, line: 23, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "run_queue", scope: !1380, file: !11, line: 701, baseType: !1850, size: 64, offset: 1856)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsRunQueue", file: !11, line: 413, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsRunQueue_", file: !11, line: 470, size: 3392, elements: !1853)
!1853 = !{!1854, !1855, !1892, !1929, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1945, !1946, !1947, !1948, !1949, !1950, !1970, !1983, !1989}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ix", scope: !1852, file: !11, line: 471, baseType: !33, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !1852, file: !11, line: 473, baseType: !1856, size: 320, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_mtx_t", file: !2, line: 323, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 309, size: 320, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !1857, file: !2, line: 310, baseType: !1860, size: 320)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_mutex", file: !1861, line: 216, baseType: !1862)
!1861 = !DIFile(filename: "../include/internal/ethr_mutex.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "61566c36e65c37acda5584360ac51ac5")
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethr_mutex_", file: !1861, line: 217, size: 320, elements: !1863)
!1863 = !{!1864}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mtx", scope: !1862, file: !1861, line: 218, baseType: !1865, size: 320)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !40, line: 72, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !40, line: 67, size: 320, elements: !1867)
!1867 = !{!1868, !1887, !1891}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1866, file: !40, line: 69, baseType: !1869, size: 320)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !1870, line: 22, size: 320, elements: !1871)
!1870 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !1869, file: !1870, line: 24, baseType: !33, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1869, file: !1870, line: 25, baseType: !12, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !1869, file: !1870, line: 26, baseType: !33, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !1869, file: !1870, line: 28, baseType: !12, size: 32, offset: 96)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !1869, file: !1870, line: 32, baseType: !33, size: 32, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !1869, file: !1870, line: 34, baseType: !1814, size: 16, offset: 160)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !1869, file: !1870, line: 35, baseType: !1814, size: 16, offset: 176)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !1869, file: !1870, line: 36, baseType: !1880, size: 128, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !1881, line: 55, baseType: !1882)
!1881 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !1881, line: 51, size: 128, elements: !1883)
!1883 = !{!1884, !1886}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !1882, file: !1881, line: 53, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1882, file: !1881, line: 54, baseType: !1885, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1866, file: !40, line: 70, baseType: !1888, size: 320)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1889)
!1889 = !{!1890}
!1890 = !DISubrange(count: 40)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1866, file: !40, line: 71, baseType: !51, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cnd", scope: !1852, file: !11, line: 474, baseType: !1893, size: 384, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "erts_cnd_t", file: !2, line: 324, baseType: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "ethr_cond", file: !1861, line: 224, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ethr_cond_", file: !1861, line: 225, size: 384, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pt_cnd", scope: !1895, file: !1861, line: 226, baseType: !1898, size: 384)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !40, line: 80, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !40, line: 75, size: 384, elements: !1900)
!1900 = !{!1901, !1923, !1927}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1899, file: !40, line: 77, baseType: !1902, size: 384)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !1881, line: 94, size: 384, elements: !1903)
!1903 = !{!1904, !1916, !1917, !1919, !1920, !1921, !1922}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !1902, file: !1881, line: 96, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !1906, line: 33, baseType: !1907)
!1906 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1906, line: 25, size: 64, elements: !1908)
!1908 = !{!1909, !1911}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !1907, file: !1906, line: 27, baseType: !1910, size: 64)
!1910 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !1907, file: !1906, line: 32, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !1906, line: 28, size: 64, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !1912, file: !1906, line: 30, baseType: !12, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !1912, file: !1906, line: 31, baseType: !12, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !1902, file: !1881, line: 97, baseType: !1905, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !1902, file: !1881, line: 98, baseType: !1918, size: 64, offset: 128)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !82)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !1902, file: !1881, line: 99, baseType: !1918, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !1902, file: !1881, line: 100, baseType: !12, size: 32, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !1902, file: !1881, line: 101, baseType: !12, size: 32, offset: 288)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !1902, file: !1881, line: 102, baseType: !1918, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1899, file: !40, line: 78, baseType: !1924, size: 384)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !1925)
!1925 = !{!1926}
!1926 = !DISubrange(count: 48)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1899, file: !40, line: 79, baseType: !1928, size: 64)
!1928 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sleepers", scope: !1852, file: !11, line: 476, baseType: !1930, size: 384, offset: 768)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSchedulerSleepList", file: !11, line: 358, baseType: !1931)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 355, size: 384, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1931, file: !11, line: 356, baseType: !1856, size: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1931, file: !11, line: 357, baseType: !1820, size: 64, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "scheduler", scope: !1852, file: !11, line: 478, baseType: !1378, size: 64, offset: 1152)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !1852, file: !11, line: 479, baseType: !33, size: 32, offset: 1216)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "woken", scope: !1852, file: !11, line: 480, baseType: !33, size: 32, offset: 1248)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1852, file: !11, line: 481, baseType: !85, size: 32, offset: 1280)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "check_balance_reds", scope: !1852, file: !11, line: 482, baseType: !33, size: 32, offset: 1312)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "full_reds_history_sum", scope: !1852, file: !11, line: 483, baseType: !33, size: 32, offset: 1344)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "full_reds_history", scope: !1852, file: !11, line: 484, baseType: !1942, size: 224, offset: 1376)
!1942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 224, elements: !1943)
!1943 = !{!1944}
!1944 = !DISubrange(count: 7)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_work_count", scope: !1852, file: !11, line: 485, baseType: !33, size: 32, offset: 1600)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "max_len", scope: !1852, file: !11, line: 486, baseType: !91, size: 32, offset: 1632)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1852, file: !11, line: 487, baseType: !85, size: 32, offset: 1664)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_other", scope: !1852, file: !11, line: 488, baseType: !33, size: 32, offset: 1696)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_other_reds", scope: !1852, file: !11, line: 489, baseType: !33, size: 32, offset: 1728)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !1852, file: !11, line: 500, baseType: !1951, size: 896, offset: 1792)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !11, line: 491, size: 896, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1963}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "context_switches", scope: !1951, file: !11, line: 492, baseType: !22, size: 64, align: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "reductions", scope: !1951, file: !11, line: 493, baseType: !22, size: 64, align: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "prio_info", scope: !1951, file: !11, line: 495, baseType: !1956, size: 384, offset: 128)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1957, size: 384, elements: !139)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsRunQueueInfo", file: !11, line: 419, baseType: !1958)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 415, size: 96, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1958, file: !11, line: 416, baseType: !85, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "max_len", scope: !1958, file: !11, line: 417, baseType: !91, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "reds", scope: !1958, file: !11, line: 418, baseType: !33, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1951, file: !11, line: 499, baseType: !1964, size: 384, offset: 512)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1965, size: 384, elements: !1560)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsRunPrioQueue", file: !11, line: 400, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 397, size: 128, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1966, file: !11, line: 398, baseType: !1480, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1966, file: !11, line: 399, baseType: !1480, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !1852, file: !11, line: 506, baseType: !1971, size: 192, offset: 2688)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !11, line: 502, size: 192, elements: !1972)
!1972 = !{!1973, !1981, !1982}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1971, file: !11, line: 503, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsMiscOpList", file: !11, line: 390, baseType: !1976)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsMiscOpList_", file: !11, line: 391, size: 192, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1976, file: !11, line: 392, baseType: !1974, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1976, file: !11, line: 393, baseType: !1604, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1976, file: !11, line: 394, baseType: !53, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1971, file: !11, line: 504, baseType: !1974, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "evac_runq", scope: !1971, file: !11, line: 505, baseType: !42, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !1852, file: !11, line: 512, baseType: !1984, size: 256, offset: 2880)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !11, line: 508, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1984, file: !11, line: 509, baseType: !1957, size: 96)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1984, file: !11, line: 510, baseType: !1845, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1984, file: !11, line: 511, baseType: !1845, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sched_util", scope: !1852, file: !11, line: 514, baseType: !1990, size: 256, offset: 3136)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsRunQueueSchedUtil", file: !11, line: 441, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 434, size: 256, elements: !1992)
!1992 = !{!1993, !1995, !2000}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1991, file: !11, line: 435, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsAtomicSchedTime", file: !11, line: 431, baseType: !42)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "worktime", scope: !1991, file: !11, line: 439, baseType: !1996, size: 128, offset: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !11, line: 436, size: 128, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "short_interval", scope: !1996, file: !11, line: 437, baseType: !109, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "long_interval", scope: !1996, file: !11, line: 438, baseType: !109, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "is_working", scope: !1991, file: !11, line: 440, baseType: !33, size: 32, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_reds", scope: !1380, file: !11, line: 702, baseType: !33, size: 32, offset: 1920)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1380, file: !11, line: 703, baseType: !33, size: 32, offset: 1952)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work_data", scope: !1380, file: !11, line: 704, baseType: !2004, size: 2816, offset: 1984)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsAuxWorkData", file: !11, line: 609, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsAuxWorkData_", file: !11, line: 562, size: 2816, elements: !2006)
!2006 = !{!2007, !2008, !2022, !2023, !2024, !2025, !2026, !2031, !2035, !2039, !2047, !2053, !2067, !2093}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work_tid", scope: !2005, file: !11, line: 563, baseType: !33, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_data", scope: !2005, file: !11, line: 564, baseType: !2009, size: 896, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsThrAllocData", file: !462, line: 112, baseType: !2010)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !462, line: 108, size: 896, elements: !2011)
!2011 = !{!2012, !2020, !2021}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "deallctr", scope: !2010, file: !462, line: 109, baseType: !2013, size: 832)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2014, size: 832, elements: !2018)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "Allctr_t", file: !2016, line: 37, baseType: !2017)
!2016 = !DIFile(filename: "beam/erl_alloc_util.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "5391c81364c1b3d736c7a45326a3f69f")
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "Allctr_t_", file: !2016, line: 37, flags: DIFlagFwdDecl)
!2018 = !{!2019}
!2019 = !DISubrange(count: 13)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_dealloc_handler", scope: !2010, file: !462, line: 110, baseType: !33, size: 32, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "alc_ix", scope: !2010, file: !462, line: 111, baseType: !33, size: 32, offset: 864)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "esdp", scope: !2005, file: !11, line: 565, baseType: !1378, size: 64, offset: 960)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !2005, file: !11, line: 566, baseType: !1820, size: 64, offset: 1024)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "current_thr_prgr", scope: !2005, file: !11, line: 567, baseType: !107, size: 64, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "latest_wakeup", scope: !2005, file: !11, line: 568, baseType: !107, size: 64, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !2005, file: !11, line: 572, baseType: !2027, size: 128, offset: 1216)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 569, size: 128, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ix", scope: !2027, file: !11, line: 570, baseType: !33, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "thr_prgr", scope: !2027, file: !11, line: 571, baseType: !107, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !2005, file: !11, line: 575, baseType: !2032, size: 64, offset: 1344)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 573, size: 64, elements: !2033)
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "thr_prgr", scope: !2032, file: !11, line: 574, baseType: !107, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cncld_tmrs", scope: !2005, file: !11, line: 578, baseType: !2036, size: 64, offset: 1408)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 576, size: 64, elements: !2037)
!2037 = !{!2038}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "thr_prgr", scope: !2036, file: !11, line: 577, baseType: !107, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "later_op", scope: !2005, file: !11, line: 585, baseType: !2040, size: 320, offset: 1472)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 579, size: 320, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2046}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "thr_prgr", scope: !2040, file: !11, line: 580, baseType: !107, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2040, file: !11, line: 581, baseType: !20, size: 64, align: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2040, file: !11, line: 582, baseType: !1609, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2040, file: !11, line: 583, baseType: !1609, size: 64, offset: 192)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "list_len", scope: !2040, file: !11, line: 584, baseType: !22, size: 64, align: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "async_ready", scope: !2005, file: !11, line: 590, baseType: !2048, size: 192, offset: 1792)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 586, size: 192, elements: !2049)
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "need_thr_prgr", scope: !2048, file: !11, line: 587, baseType: !33, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "thr_prgr", scope: !2048, file: !11, line: 588, baseType: !107, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2048, file: !11, line: 589, baseType: !53, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_wakeup", scope: !2005, file: !11, line: 596, baseType: !2054, size: 256, offset: 1984)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 591, size: 256, elements: !2055)
!2055 = !{!2056, !2057, !2059, !2060}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2054, file: !11, line: 592, baseType: !109, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "sched2jix", scope: !2054, file: !11, line: 593, baseType: !2058, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "jix", scope: !2054, file: !11, line: 594, baseType: !33, size: 32, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "job", scope: !2054, file: !11, line: 595, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsDelayedAuxWorkWakeupJob", file: !11, line: 560, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 557, size: 64, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !2063, file: !11, line: 558, baseType: !33, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work", scope: !2063, file: !11, line: 559, baseType: !91, size: 32, offset: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !2005, file: !11, line: 601, baseType: !2068, size: 384, offset: 2240)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 597, size: 384, elements: !2069)
!2069 = !{!2070, !2078}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "alcu_blockscan", scope: !2068, file: !11, line: 598, baseType: !2071, size: 128)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsAlcuBlockscanYieldData", file: !2016, line: 263, baseType: !2072)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2016, line: 260, size: 128, elements: !2073)
!2073 = !{!2074, !2077}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2072, file: !2016, line: 261, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "alcu_blockscan", file: !2016, line: 258, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2072, file: !2016, line: 262, baseType: !2075, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ets_all", scope: !2068, file: !11, line: 599, baseType: !2079, size: 256, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsEtsAllYieldData", file: !2080, line: 45, baseType: !2081)
!2080 = !DIFile(filename: "beam/erl_db.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "01b011092aa5a703b96c5ba622883ce4")
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2080, line: 40, size: 256, elements: !2082)
!2082 = !{!2083, !2087, !2088, !2092}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ongoing", scope: !2081, file: !2080, line: 41, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsEtsAllReq", file: !2080, line: 33, baseType: !2086)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "ErtsEtsAllReq_", file: !2080, line: 33, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "hfrag", scope: !2081, file: !2080, line: 42, baseType: !1536, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !2081, file: !2080, line: 43, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "DbTable", file: !2080, line: 31, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_union_type, name: "db_table", file: !2080, line: 30, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2081, file: !2080, line: 44, baseType: !2084, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !2005, file: !11, line: 608, baseType: !2094, size: 192, offset: 2624)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2005, file: !11, line: 602, size: 192, elements: !2095)
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_completed", scope: !2094, file: !11, line: 607, baseType: !2097, size: 192)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2094, file: !11, line: 603, size: 192, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2097, file: !11, line: 604, baseType: !91, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2097, file: !11, line: 605, baseType: !1604, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2097, file: !11, line: 606, baseType: !53, size: 64, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "atom_cache_map", scope: !1380, file: !11, line: 705, baseType: !2103, size: 327808, offset: 4800)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsAtomCacheMap", file: !2104, line: 114, baseType: !2105)
!2104 = !DIFile(filename: "beam/external.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "f6e6ae43ed321742c7b7ad5b5817c571")
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2104, line: 105, size: 327808, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2114}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sz", scope: !2105, file: !2104, line: 106, baseType: !33, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2105, file: !2104, line: 107, baseType: !33, size: 32, offset: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "long_atoms", scope: !2105, file: !2104, line: 108, baseType: !33, size: 32, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cix", scope: !2105, file: !2104, line: 109, baseType: !2111, size: 65536, offset: 96)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 65536, elements: !2112)
!2112 = !{!2113}
!2113 = !DISubrange(count: 2048)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2105, file: !2104, line: 113, baseType: !2115, size: 262144, offset: 65664)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2116, size: 262144, elements: !2112)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !2104, line: 110, size: 128, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !2116, file: !2104, line: 111, baseType: !1419, size: 64, align: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "iix", scope: !2116, file: !2104, line: 112, baseType: !33, size: 32, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "last_monotonic_time", scope: !1380, file: !11, line: 707, baseType: !1468, size: 64, offset: 332608)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "check_time_reds", scope: !1380, file: !11, line: 708, baseType: !33, size: 32, offset: 332672)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "thr_id", scope: !1380, file: !11, line: 710, baseType: !467, size: 32, offset: 332704)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !1380, file: !11, line: 711, baseType: !109, size: 64, offset: 332736)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1380, file: !11, line: 712, baseType: !109, size: 64, offset: 332800)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !1380, file: !11, line: 717, baseType: !2126, size: 128, offset: 332864)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !11, line: 714, size: 128, elements: !2127)
!2127 = !{!2128, !2129}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2126, file: !11, line: 715, baseType: !109, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2126, file: !11, line: 716, baseType: !109, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signal", scope: !1380, file: !11, line: 724, baseType: !2131, size: 128, offset: 332992)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !11, line: 718, size: 128, elements: !2132)
!2132 = !{!2133, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2131, file: !11, line: 719, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !2131, file: !11, line: 720, baseType: !1419, size: 64, align: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "reductions", scope: !1380, file: !11, line: 726, baseType: !109, size: 64, offset: 333120)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rand_state", scope: !1380, file: !11, line: 727, baseType: !109, size: 64, offset: 333184)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sched_wall_time", scope: !1380, file: !11, line: 728, baseType: !2139, size: 256, offset: 333248)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsSchedWallTime", file: !11, line: 555, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 544, size: 256, elements: !2141)
!2141 = !{!2142, !2147, !2148, !2149}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2140, file: !11, line: 548, baseType: !2143, size: 32)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !11, line: 545, size: 32, elements: !2144)
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2143, file: !11, line: 546, baseType: !85, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "need", scope: !2143, file: !11, line: 547, baseType: !33, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2140, file: !11, line: 549, baseType: !33, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2140, file: !11, line: 550, baseType: !109, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "working", scope: !2140, file: !11, line: 554, baseType: !2150, size: 128, offset: 128)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2140, file: !11, line: 551, size: 128, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2150, file: !11, line: 552, baseType: !109, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2150, file: !11, line: 553, baseType: !109, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "gc_info", scope: !1380, file: !11, line: 729, baseType: !2155, size: 128, offset: 333504)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsGCInfo", file: !2156, line: 161, baseType: !2157)
!2156 = !DIFile(filename: "beam/erl_gc.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "a6f9b4dc16b92f4e23af51535803545e")
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2156, line: 158, size: 128, elements: !2158)
!2158 = !{!2159, !2160}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !2157, file: !2156, line: 159, baseType: !109, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "garbage_cols", scope: !2157, file: !2156, line: 160, baseType: !109, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "nosuspend_port_task_handle", scope: !1380, file: !11, line: 730, baseType: !2162, size: 64, offset: 333632)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsPortTaskHandle", file: !2163, line: 34, baseType: !42)
!2163 = !DIFile(filename: "beam/erl_port_task.h", directory: "/local-ssd/erlang-l3nfmgerufjbmo77jxcy2mabarfbupek-build/aidengro/spack-stage-erlang-26.0-l3nfmgerufjbmo77jxcy2mabarfbupek/spack-src/erts/emulator", checksumkind: CSK_MD5, checksum: "159403a7994f3385b33829b6fe242a1e")
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1380, file: !11, line: 734, baseType: !2165, size: 128, offset: 333696)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1380, file: !11, line: 731, size: 128, elements: !2166)
!2166 = !{!2167, !2173}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ets_tables", scope: !2165, file: !11, line: 732, baseType: !2168, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErtsEtsTables", file: !2080, line: 50, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2080, line: 47, size: 128, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2169, file: !2080, line: 48, baseType: !42, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "clist", scope: !2169, file: !2080, line: 49, baseType: !2089, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_nif_halt_info", scope: !2165, file: !11, line: 733, baseType: !85, size: 32)
!2174 = !{!2175, !2176, !2177, !2178}
!2175 = !DILocalVariable(name: "esdp", arg: 1, scope: !1375, file: !108, line: 243, type: !1378)
!2176 = !DILocalVariable(name: "tpd", scope: !1375, file: !108, line: 245, type: !129)
!2177 = !DILocalVariable(name: "val", scope: !1375, file: !108, line: 246, type: !107)
!2178 = !DILabel(scope: !2179, name: "managed_thread", file: !108, line: 249)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !108, line: 247, column: 15)
!2180 = distinct !DILexicalBlock(scope: !1375, file: !108, line: 247, column: 9)
!2181 = !DILocation(line: 243, column: 44, scope: !1375)
!2182 = !DILocation(line: 245, column: 5, scope: !1375)
!2183 = !DILocation(line: 245, column: 22, scope: !1375)
!2184 = !DILocation(line: 246, column: 5, scope: !1375)
!2185 = !DILocation(line: 246, column: 20, scope: !1375)
!2186 = !DILocation(line: 247, column: 9, scope: !2180)
!2187 = !DILocation(line: 247, column: 9, scope: !1375)
!2188 = !DILocation(line: 248, column: 9, scope: !2179)
!2189 = !DILocation(line: 248, column: 15, scope: !2179)
!2190 = !DILocation(line: 248, column: 6, scope: !2179)
!2191 = !DILocation(line: 248, column: 2, scope: !2179)
!2192 = !DILocation(line: 249, column: 5, scope: !2179)
!2193 = !DILocation(line: 250, column: 8, scope: !2179)
!2194 = !DILocation(line: 250, column: 13, scope: !2179)
!2195 = !DILocation(line: 250, column: 6, scope: !2179)
!2196 = !DILocation(line: 251, column: 2, scope: !2179)
!2197 = !DILocation(line: 252, column: 5, scope: !2179)
!2198 = !DILocation(line: 254, column: 40, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2180, file: !108, line: 253, column: 10)
!2200 = !DILocation(line: 254, column: 27, scope: !2199)
!2201 = !DILocation(line: 254, column: 6, scope: !2199)
!2202 = !DILocation(line: 255, column: 6, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !108, line: 255, column: 6)
!2204 = !DILocation(line: 255, column: 10, scope: !2203)
!2205 = !DILocation(line: 255, column: 13, scope: !2203)
!2206 = !DILocation(line: 255, column: 18, scope: !2203)
!2207 = !DILocation(line: 255, column: 6, scope: !2199)
!2208 = !DILocation(line: 256, column: 6, scope: !2203)
!2209 = !DILocation(line: 257, column: 8, scope: !2199)
!2210 = !DILocation(line: 257, column: 6, scope: !2199)
!2211 = !DILocation(line: 260, column: 49, scope: !1375)
!2212 = !DILocation(line: 260, column: 12, scope: !1375)
!2213 = !DILocation(line: 261, column: 1, scope: !1375)
!2214 = !DILocation(line: 260, column: 5, scope: !1375)
!2215 = distinct !DISubprogram(name: "ethr_atomic32_set_relb", scope: !43, file: !43, line: 7237, type: !519, scopeLine: 7238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2216)
!2216 = !{!2217, !2218}
!2217 = !DILocalVariable(name: "var", arg: 1, scope: !2215, file: !43, line: 7237, type: !521)
!2218 = !DILocalVariable(name: "val", arg: 2, scope: !2215, file: !43, line: 7237, type: !91)
!2219 = !DILocation(line: 7237, column: 71, scope: !2215)
!2220 = !DILocation(line: 7237, column: 90, scope: !2215)
!2221 = !DILocation(line: 7240, column: 35, scope: !2215)
!2222 = !DILocation(line: 7240, column: 59, scope: !2215)
!2223 = !DILocation(line: 7240, column: 5, scope: !2215)
!2224 = !DILocation(line: 7258, column: 1, scope: !2215)
!2225 = distinct !DISubprogram(name: "erts_thr_progress_has_reached_this", scope: !108, file: !108, line: 291, type: !2226, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!33, !107, !107}
!2228 = !{!2229, !2230}
!2229 = !DILocalVariable(name: "this_", arg: 1, scope: !2225, file: !108, line: 291, type: !107)
!2230 = !DILocalVariable(name: "val", arg: 2, scope: !2225, file: !108, line: 291, type: !107)
!2231 = !DILocation(line: 291, column: 51, scope: !2225)
!2232 = !DILocation(line: 291, column: 73, scope: !2225)
!2233 = !DILocation(line: 293, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2225, file: !108, line: 293, column: 9)
!2235 = !DILocation(line: 293, column: 18, scope: !2234)
!2236 = !DILocation(line: 293, column: 15, scope: !2234)
!2237 = !DILocation(line: 293, column: 9, scope: !2225)
!2238 = !DILocation(line: 294, column: 2, scope: !2234)
!2239 = !DILocation(line: 295, column: 43, scope: !2225)
!2240 = !DILocation(line: 295, column: 50, scope: !2225)
!2241 = !DILocation(line: 295, column: 12, scope: !2225)
!2242 = !DILocation(line: 295, column: 5, scope: !2225)
!2243 = !DILocation(line: 296, column: 1, scope: !2225)
!2244 = distinct !DISubprogram(name: "erts_thr_progress_has_passed__", scope: !108, file: !108, line: 273, type: !2226, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2245)
!2245 = !{!2246, !2247}
!2246 = !DILocalVariable(name: "val1", arg: 1, scope: !2244, file: !108, line: 273, type: !107)
!2247 = !DILocalVariable(name: "val0", arg: 2, scope: !2244, file: !108, line: 273, type: !107)
!2248 = !DILocation(line: 273, column: 47, scope: !2244)
!2249 = !DILocation(line: 273, column: 68, scope: !2244)
!2250 = !DILocation(line: 275, column: 42, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2244, file: !108, line: 275, column: 9)
!2252 = !DILocation(line: 275, column: 40, scope: !2251)
!2253 = !DILocation(line: 276, column: 37, scope: !2251)
!2254 = !DILocation(line: 276, column: 35, scope: !2251)
!2255 = !DILocation(line: 276, column: 3, scope: !2251)
!2256 = !DILocation(line: 276, column: 44, scope: !2251)
!2257 = !DILocation(line: 275, column: 9, scope: !2244)
!2258 = !DILocation(line: 278, column: 6, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !108, line: 278, column: 6)
!2260 = distinct !DILexicalBlock(scope: !2251, file: !108, line: 276, column: 50)
!2261 = !DILocation(line: 278, column: 11, scope: !2259)
!2262 = !DILocation(line: 279, column: 6, scope: !2259)
!2263 = !DILocation(line: 279, column: 9, scope: !2259)
!2264 = !DILocation(line: 279, column: 14, scope: !2259)
!2265 = !DILocation(line: 278, column: 6, scope: !2260)
!2266 = !DILocation(line: 284, column: 6, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2259, file: !108, line: 279, column: 46)
!2268 = !DILocation(line: 286, column: 5, scope: !2260)
!2269 = !DILocation(line: 287, column: 12, scope: !2244)
!2270 = !DILocation(line: 287, column: 19, scope: !2244)
!2271 = !DILocation(line: 287, column: 17, scope: !2244)
!2272 = !DILocation(line: 287, column: 5, scope: !2244)
!2273 = !DILocation(line: 288, column: 1, scope: !2244)
!2274 = distinct !DISubprogram(name: "ethr_mfence__", scope: !1181, file: !1181, line: 71, type: !1182, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7)
!2275 = !DILocation(line: 78, column: 2, scope: !2274)
!2276 = !{i64 2338951, i64 2338960}
!2277 = !DILocation(line: 79, column: 1, scope: !2274)
!2278 = distinct !DISubprogram(name: "erts_thr_prgr_read_mb__", scope: !108, file: !108, line: 190, type: !1127, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2279)
!2279 = !{!2280}
!2280 = !DILocalVariable(name: "atmc", arg: 1, scope: !2278, file: !108, line: 190, type: !492)
!2281 = !DILocation(line: 190, column: 47, scope: !2278)
!2282 = !DILocation(line: 192, column: 51, scope: !2278)
!2283 = !DILocation(line: 192, column: 29, scope: !2278)
!2284 = !DILocation(line: 192, column: 5, scope: !2278)
!2285 = distinct !DISubprogram(name: "erts_thr_progress_current_to_later__", scope: !108, file: !108, line: 232, type: !2286, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2288)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!107, !107}
!2288 = !{!2289}
!2289 = !DILocalVariable(name: "val", arg: 1, scope: !2285, file: !108, line: 232, type: !107)
!2290 = !DILocation(line: 232, column: 53, scope: !2285)
!2291 = !DILocation(line: 234, column: 9, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2285, file: !108, line: 234, column: 9)
!2293 = !DILocation(line: 234, column: 13, scope: !2292)
!2294 = !DILocation(line: 234, column: 9, scope: !2285)
!2295 = !DILocation(line: 235, column: 2, scope: !2292)
!2296 = !DILocation(line: 236, column: 14, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !108, line: 236, column: 14)
!2298 = !DILocation(line: 236, column: 18, scope: !2297)
!2299 = !DILocation(line: 236, column: 14, scope: !2292)
!2300 = !DILocation(line: 237, column: 2, scope: !2297)
!2301 = !DILocation(line: 239, column: 9, scope: !2297)
!2302 = !DILocation(line: 239, column: 13, scope: !2297)
!2303 = !DILocation(line: 239, column: 2, scope: !2297)
!2304 = !DILocation(line: 240, column: 1, scope: !2285)
!2305 = distinct !DISubprogram(name: "ethr_atomic_read_mb", scope: !43, file: !43, line: 4585, type: !1143, scopeLine: 4586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2306)
!2306 = !{!2307, !2308}
!2307 = !DILocalVariable(name: "var", arg: 1, scope: !2305, file: !43, line: 4585, type: !492)
!2308 = !DILocalVariable(name: "res", scope: !2305, file: !43, line: 4587, type: !52)
!2309 = !DILocation(line: 4585, column: 73, scope: !2305)
!2310 = !DILocation(line: 4587, column: 5, scope: !2305)
!2311 = !DILocation(line: 4587, column: 17, scope: !2305)
!2312 = !DILocation(line: 4605, column: 5, scope: !2305)
!2313 = !DILocation(line: 4606, column: 49, scope: !2305)
!2314 = !DILocation(line: 4606, column: 25, scope: !2305)
!2315 = !DILocation(line: 4606, column: 9, scope: !2305)
!2316 = !DILocation(line: 4607, column: 5, scope: !2305)
!2317 = !DILocation(line: 4611, column: 12, scope: !2305)
!2318 = !DILocation(line: 4612, column: 1, scope: !2305)
!2319 = !DILocation(line: 4611, column: 5, scope: !2305)
!2320 = distinct !DISubprogram(name: "ethr_native_atomic32_set_relb", scope: !45, file: !45, line: 143, type: !1113, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !2321)
!2321 = !{!2322, !2323}
!2322 = !DILocalVariable(name: "var", arg: 1, scope: !2320, file: !45, line: 143, type: !1115)
!2323 = !DILocalVariable(name: "i", arg: 2, scope: !2320, file: !45, line: 143, type: !91)
!2324 = !DILocation(line: 143, column: 44, scope: !2320)
!2325 = !DILocation(line: 143, column: 63, scope: !2320)
!2326 = !DILocation(line: 151, column: 2, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2320, file: !45, line: 150, column: 5)
!2328 = !DILocation(line: 152, column: 17, scope: !2327)
!2329 = !DILocation(line: 152, column: 2, scope: !2327)
!2330 = !DILocation(line: 152, column: 7, scope: !2327)
!2331 = !DILocation(line: 152, column: 15, scope: !2327)
!2332 = !DILocation(line: 154, column: 1, scope: !2320)
