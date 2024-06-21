; ModuleID = 'samples/425.bc'
source_filename = "/local-ssd/seal-juilxrbn6qmqyewogvhbtmpxswk7i356-build/aidengro/spack-stage-seal-4.1.1-juilxrbn6qmqyewogvhbtmpxswk7i356/spack-build-juilxrb/thirdparty/zstd-src/lib/compress/zstdmt_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_s = type { ptr, i64 }
%struct.range_t = type { ptr, i64 }
%struct.rawSeqStore_t = type { ptr, i64, i64, i64, i64 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTDMT_CCtx_s = type { ptr, ptr, ptr, ptr, ptr, %struct.ZSTD_CCtx_params_s, i64, i64, i32, %struct.inBuff_t, %struct.roundBuff_t, %struct.serialState_t, %struct.rsyncState_t, i32, i32, i32, i32, i32, i64, i64, i64, %struct.ZSTD_customMem, ptr, ptr, i8 }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.inBuff_t = type { %struct.range_t, %struct.buffer_s, i64 }
%struct.roundBuff_t = type { ptr, i64, i64 }
%struct.serialState_t = type { i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ldmState_t, %struct.XXH64_state_s, i32, i32, i32, %struct.ZSTD_window_t }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i64], [64 x %struct.ldmMatchCandidate_t] }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.XXH64_state_s = type { i64, [4 x i64], [4 x i64], i32, i32, i64 }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.rsyncState_t = type { i64, i64, i64 }
%struct.ZSTDMT_jobDescription = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, %struct.buffer_s, %struct.range_t, %struct.range_t, i32, i32, i32, %struct.ZSTD_CCtx_params_s, ptr, i64, i64, i32 }
%struct.ZSTDMT_bufferPool_s = type { i32, i64, i32, i32, %struct.ZSTD_customMem, [1 x %struct.buffer_s] }
%struct.ZSTDMT_CCtxPool = type { i32, i32, i32, %struct.ZSTD_customMem, [1 x ptr] }
%struct.ZSTD_frameProgression = type { i64, i64, i64, i64, i32, i32 }
%struct.syncPoint_t = type { i64, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i64, i64 }
%struct.ZSTD_outBuffer_s = type { ptr, i64, i64 }
%struct.unalign32 = type { i32 }

@g_nullBuffer = internal constant %struct.buffer_s zeroinitializer, align 8
@kNullRange = internal constant %struct.range_t zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@kNullRawSeqStore = internal constant %struct.rawSeqStore_t zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define ptr @ZSTDMT_createCCtx_advanced(i32 noundef %nbWorkers, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem, ptr noundef %pool) #0 {
entry:
  %nbWorkers.addr = alloca i32, align 4
  %pool.addr = alloca ptr, align 8
  store i32 %nbWorkers, ptr %nbWorkers.addr, align 4, !tbaa !4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !8
  %0 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  ret ptr null
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDMT_freeCCtx(ptr noundef %mtctx) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %providedFactory = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i32 0, i32 24
  %bf.load = load i8, ptr %providedFactory, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %factory = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %factory, align 8, !tbaa !10
  call void @POOL_free(ptr noundef %3)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %4 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  call void @ZSTDMT_releaseAllJobResources(ptr noundef %4)
  %5 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %jobs, align 8, !tbaa !28
  %7 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %7, i32 0, i32 13
  %8 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %add = add i32 %8, 1
  %9 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %9, i32 0, i32 21
  call void @ZSTDMT_freeJobsTable(ptr noundef %6, i32 noundef %add, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %10 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %bufPool, align 8, !tbaa !30
  call void @ZSTDMT_freeBufferPool(ptr noundef %11)
  %12 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cctxPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %cctxPool, align 8, !tbaa !31
  call void @ZSTDMT_freeCCtxPool(ptr noundef %13)
  %14 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %seqPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %seqPool, align 8, !tbaa !32
  call void @ZSTDMT_freeSeqPool(ptr noundef %15)
  %16 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %serial = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %16, i32 0, i32 11
  call void @ZSTDMT_serialState_free(ptr noundef %serial)
  %17 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %17, i32 0, i32 22
  %18 = load ptr, ptr %cdictLocal, align 8, !tbaa !33
  %call = call i64 @ZSTD_freeCDict(ptr noundef %18)
  %19 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %19, i32 0, i32 10
  %buffer = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff, i32 0, i32 0
  %20 = load ptr, ptr %buffer, align 8, !tbaa !34
  %tobool3 = icmp ne ptr %20, null
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end2
  %21 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff5 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %21, i32 0, i32 10
  %buffer6 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff5, i32 0, i32 0
  %22 = load ptr, ptr %buffer6, align 8, !tbaa !34
  %23 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem7 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %23, i32 0, i32 21
  call void @ZSTD_customFree(ptr noundef %22, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem7)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end2
  %24 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %25 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem9 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %25, i32 0, i32 21
  call void @ZSTD_customFree(ptr noundef %24, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem9)
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %26 = load i64, ptr %retval, align 8
  ret i64 %26
}

declare void @POOL_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_releaseAllJobResources(ptr noundef %mtctx) #0 {
entry:
  %mtctx.addr = alloca ptr, align 8
  %jobID = alloca i32, align 4
  %mutex = alloca i32, align 4
  %cond = alloca i32, align 4
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobID) #7
  store i32 0, ptr %jobID, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %jobID, align 4, !tbaa !4
  %1 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i32 0, i32 13
  %2 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %cmp = icmp ule i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mutex) #7
  %3 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %jobs, align 8, !tbaa !28
  %5 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %4, i64 %idxprom
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx, i32 0, i32 2
  %6 = load i32, ptr %job_mutex, align 8, !tbaa !35
  store i32 %6, ptr %mutex, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cond) #7
  %7 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %jobs1, align 8, !tbaa !28
  %9 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom2 = zext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %8, i64 %idxprom2
  %job_cond = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx3, i32 0, i32 3
  %10 = load i32, ptr %job_cond, align 4, !tbaa !37
  store i32 %10, ptr %cond, align 4, !tbaa !4
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %bufPool, align 8, !tbaa !30
  %13 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs4 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %jobs4, align 8, !tbaa !28
  %15 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom5 = zext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %14, i64 %idxprom5
  %dstBuff = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx6, i32 0, i32 8
  %16 = getelementptr inbounds { ptr, i64 }, ptr %dstBuff, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds { ptr, i64 }, ptr %dstBuff, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  call void @ZSTDMT_releaseBuffer(ptr noundef %12, ptr %17, i64 %19)
  %20 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs7 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %jobs7, align 8, !tbaa !28
  %22 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom8 = zext i32 %22 to i64
  %arrayidx9 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %21, i64 %idxprom8
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx9, i8 0, i64 328, i1 false)
  %23 = load i32, ptr %mutex, align 4, !tbaa !4
  %24 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs10 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %jobs10, align 8, !tbaa !28
  %26 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom11 = zext i32 %26 to i64
  %arrayidx12 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %25, i64 %idxprom11
  %job_mutex13 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx12, i32 0, i32 2
  store i32 %23, ptr %job_mutex13, align 8, !tbaa !35
  %27 = load i32, ptr %cond, align 4, !tbaa !4
  %28 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs14 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %jobs14, align 8, !tbaa !28
  %30 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom15 = zext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %29, i64 %idxprom15
  %job_cond17 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx16, i32 0, i32 3
  store i32 %27, ptr %job_cond17, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr %cond) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %mutex) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %jobID, align 4, !tbaa !4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %jobID, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %32, i32 0, i32 9
  %buffer = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @g_nullBuffer, i64 16, i1 false), !tbaa.struct !38
  %33 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff18 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %33, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff18, i32 0, i32 2
  store i64 0, ptr %filled, align 8, !tbaa !40
  %34 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %allJobsCompleted = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %34, i32 0, i32 17
  store i32 1, ptr %allJobsCompleted, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobID) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_freeJobsTable(ptr noundef %jobTable, i32 noundef %nbJobs, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #0 {
entry:
  %jobTable.addr = alloca ptr, align 8
  %nbJobs.addr = alloca i32, align 4
  %jobNb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %jobTable, ptr %jobTable.addr, align 8, !tbaa !8
  store i32 %nbJobs, ptr %nbJobs.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobNb) #7
  %0 = load ptr, ptr %jobTable.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %jobNb, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %jobNb, align 4, !tbaa !4
  %2 = load i32, ptr %nbJobs.addr, align 4, !tbaa !4
  %cmp1 = icmp ult i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %jobTable.addr, align 8, !tbaa !8
  %4 = load i32, ptr %jobNb, align 4, !tbaa !4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %3, i64 %idxprom
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx, i32 0, i32 2
  %5 = load ptr, ptr %jobTable.addr, align 8, !tbaa !8
  %6 = load i32, ptr %jobNb, align 4, !tbaa !4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %5, i64 %idxprom2
  %job_cond = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx3, i32 0, i32 3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %jobNb, align 4, !tbaa !4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %jobNb, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %jobTable.addr, align 8, !tbaa !8
  call void @ZSTD_customFree(ptr noundef %8, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobNb) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_freeBufferPool(ptr noundef %bufPool) #0 {
entry:
  %bufPool.addr = alloca ptr, align 8
  %u = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bufPool, ptr %bufPool.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #7
  %0 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %u, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %u, align 4, !tbaa !4
  %2 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %totalBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %totalBuffers, align 8, !tbaa !42
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %bTable = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %u, align 4, !tbaa !4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.buffer_s], ptr %bTable, i64 0, i64 %idxprom
  %start = getelementptr inbounds %struct.buffer_s, ptr %arrayidx, i32 0, i32 0
  %6 = load ptr, ptr %start, align 8, !tbaa !44
  %7 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %7, i32 0, i32 4
  call void @ZSTD_customFree(ptr noundef %6, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %u, align 4, !tbaa !4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %u, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %11 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %cMem1 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %11, i32 0, i32 4
  call void @ZSTD_customFree(ptr noundef %10, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem1)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_freeCCtxPool(ptr noundef %pool) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %cid = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cid) #7
  store i32 0, ptr %cid, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cid, align 4, !tbaa !4
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %totalCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %totalCCtx, align 4, !tbaa !45
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %cctx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %cid, align 4, !tbaa !4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %cctx, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  %call = call i64 @ZSTD_freeCCtx(ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %cid, align 4, !tbaa !4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %cid, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %9 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %9, i32 0, i32 3
  call void @ZSTD_customFree(ptr noundef %8, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  call void @llvm.lifetime.end.p0(i64 4, ptr %cid) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_freeSeqPool(ptr noundef %seqPool) #0 {
entry:
  %seqPool.addr = alloca ptr, align 8
  store ptr %seqPool, ptr %seqPool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %seqPool.addr, align 8, !tbaa !8
  call void @ZSTDMT_freeBufferPool(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_serialState_free(ptr noundef %serialState) #0 {
entry:
  %serialState.addr = alloca ptr, align 8
  %cMem = alloca %struct.ZSTD_customMem, align 8
  store ptr %serialState, ptr %serialState.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr %cMem) #7
  %0 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params = getelementptr inbounds %struct.serialState_t, ptr %0, i32 0, i32 2
  %customMem = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem, ptr align 8 %customMem, i64 24, i1 false), !tbaa.struct !47
  %1 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %mutex = getelementptr inbounds %struct.serialState_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %cond = getelementptr inbounds %struct.serialState_t, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowMutex = getelementptr inbounds %struct.serialState_t, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowCond = getelementptr inbounds %struct.serialState_t, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState = getelementptr inbounds %struct.serialState_t, ptr %5, i32 0, i32 3
  %hashTable = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 1
  %6 = load ptr, ptr %hashTable, align 8, !tbaa !48
  call void @ZSTD_customFree(ptr noundef %6, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %7 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState1 = getelementptr inbounds %struct.serialState_t, ptr %7, i32 0, i32 3
  %bucketOffsets = getelementptr inbounds %struct.ldmState_t, ptr %ldmState1, i32 0, i32 3
  %8 = load ptr, ptr %bucketOffsets, align 8, !tbaa !49
  call void @ZSTD_customFree(ptr noundef %8, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  call void @llvm.lifetime.end.p0(i64 24, ptr %cMem) #7
  ret void
}

declare i64 @ZSTD_freeCDict(ptr noundef) #1

declare void @ZSTD_customFree(ptr noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #1

; Function Attrs: nounwind uwtable
define i64 @ZSTDMT_sizeof_CCtx(ptr noundef %mtctx) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %factory = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %factory, align 8, !tbaa !10
  %call = call i64 @POOL_sizeof(ptr noundef %2)
  %add = add i64 2864, %call
  %3 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %bufPool, align 8, !tbaa !30
  %call1 = call i64 @ZSTDMT_sizeof_bufferPool(ptr noundef %4)
  %add2 = add i64 %add, %call1
  %5 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %5, i32 0, i32 13
  %6 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %add3 = add i32 %6, 1
  %conv = zext i32 %add3 to i64
  %mul = mul i64 %conv, 328
  %add4 = add i64 %add2, %mul
  %7 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cctxPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %cctxPool, align 8, !tbaa !31
  %call5 = call i64 @ZSTDMT_sizeof_CCtxPool(ptr noundef %8)
  %add6 = add i64 %add4, %call5
  %9 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %seqPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %seqPool, align 8, !tbaa !32
  %call7 = call i64 @ZSTDMT_sizeof_seqPool(ptr noundef %10)
  %add8 = add i64 %add6, %call7
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %11, i32 0, i32 22
  %12 = load ptr, ptr %cdictLocal, align 8, !tbaa !33
  %call9 = call i64 @ZSTD_sizeof_CDict(ptr noundef %12)
  %add10 = add i64 %add8, %call9
  %13 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %13, i32 0, i32 10
  %capacity = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff, i32 0, i32 1
  %14 = load i64, ptr %capacity, align 8, !tbaa !50
  %add11 = add i64 %add10, %14
  store i64 %add11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i64, ptr %retval, align 8
  ret i64 %15
}

declare i64 @POOL_sizeof(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_sizeof_bufferPool(ptr noundef %bufPool) #0 {
entry:
  %bufPool.addr = alloca ptr, align 8
  %poolSize = alloca i64, align 8
  %u = alloca i32, align 4
  %totalBufferSize = alloca i64, align 8
  store ptr %bufPool, ptr %bufPool.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %poolSize) #7
  %0 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %totalBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %totalBuffers, align 8, !tbaa !42
  %sub = sub i32 %1, 1
  %conv = zext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %add = add i64 64, %mul
  store i64 %add, ptr %poolSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %totalBufferSize) #7
  store i64 0, ptr %totalBufferSize, align 8, !tbaa !39
  %2 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %2, i32 0, i32 0
  store i32 0, ptr %u, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %u, align 4, !tbaa !4
  %4 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %totalBuffers1 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %totalBuffers1, align 8, !tbaa !42
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %bTable = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %u, align 4, !tbaa !4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.buffer_s], ptr %bTable, i64 0, i64 %idxprom
  %capacity = getelementptr inbounds %struct.buffer_s, ptr %arrayidx, i32 0, i32 1
  %8 = load i64, ptr %capacity, align 8, !tbaa !51
  %9 = load i64, ptr %totalBufferSize, align 8, !tbaa !39
  %add3 = add i64 %9, %8
  store i64 %add3, ptr %totalBufferSize, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %u, align 4, !tbaa !4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %u, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex4 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %poolSize, align 8, !tbaa !39
  %13 = load i64, ptr %totalBufferSize, align 8, !tbaa !39
  %add5 = add i64 %12, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr %totalBufferSize) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %poolSize) #7
  ret i64 %add5
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_sizeof_CCtxPool(ptr noundef %cctxPool) #0 {
entry:
  %cctxPool.addr = alloca ptr, align 8
  %nbWorkers = alloca i32, align 4
  %poolSize = alloca i64, align 8
  %u = alloca i32, align 4
  %totalCCtxSize = alloca i64, align 8
  store ptr %cctxPool, ptr %cctxPool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %0, i32 0, i32 0
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbWorkers) #7
  %1 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %totalCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %totalCCtx, align 4, !tbaa !45
  store i32 %2, ptr %nbWorkers, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %poolSize) #7
  %3 = load i32, ptr %nbWorkers, align 4, !tbaa !4
  %sub = sub i32 %3, 1
  %conv = zext i32 %sub to i64
  %mul = mul i64 %conv, 8
  %add = add i64 48, %mul
  store i64 %add, ptr %poolSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %totalCCtxSize) #7
  store i64 0, ptr %totalCCtxSize, align 8, !tbaa !39
  store i32 0, ptr %u, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %u, align 4, !tbaa !4
  %5 = load i32, ptr %nbWorkers, align 4, !tbaa !4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %cctx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %u, align 4, !tbaa !4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %cctx, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  %call = call i64 @ZSTD_sizeof_CCtx(ptr noundef %8)
  %9 = load i64, ptr %totalCCtxSize, align 8, !tbaa !39
  %add2 = add i64 %9, %call
  store i64 %add2, ptr %totalCCtxSize, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %u, align 4, !tbaa !4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %u, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %poolMutex3 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %poolSize, align 8, !tbaa !39
  %13 = load i64, ptr %totalCCtxSize, align 8, !tbaa !39
  %add4 = add i64 %12, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr %totalCCtxSize) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %poolSize) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbWorkers) #7
  ret i64 %add4
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_sizeof_seqPool(ptr noundef %seqPool) #0 {
entry:
  %seqPool.addr = alloca ptr, align 8
  store ptr %seqPool, ptr %seqPool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %seqPool.addr, align 8, !tbaa !8
  %call = call i64 @ZSTDMT_sizeof_bufferPool(ptr noundef %0)
  ret i64 %call
}

declare i64 @ZSTD_sizeof_CDict(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @ZSTDMT_updateCParams_whileCompressing(ptr noundef %mtctx, ptr noundef %cctxParams) #0 {
entry:
  %mtctx.addr = alloca ptr, align 8
  %cctxParams.addr = alloca ptr, align 8
  %saved_wlog = alloca i32, align 4
  %compressionLevel = alloca i32, align 4
  %cParams4 = alloca %struct.ZSTD_compressionParameters, align 4
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  store ptr %cctxParams, ptr %cctxParams.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %saved_wlog) #7
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 5
  %cParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 1
  %windowLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams, i32 0, i32 0
  %1 = load i32, ptr %windowLog, align 4, !tbaa !52
  store i32 %1, ptr %saved_wlog, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %compressionLevel) #7
  %2 = load ptr, ptr %cctxParams.addr, align 8, !tbaa !8
  %compressionLevel1 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %compressionLevel1, align 4, !tbaa !53
  store i32 %3, ptr %compressionLevel, align 4, !tbaa !4
  %4 = load i32, ptr %compressionLevel, align 4, !tbaa !4
  %5 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %5, i32 0, i32 5
  %compressionLevel3 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params2, i32 0, i32 3
  store i32 %4, ptr %compressionLevel3, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 28, ptr %cParams4) #7
  %6 = load ptr, ptr %cctxParams.addr, align 8, !tbaa !8
  call void @ZSTD_getCParamsFromCCtxParams(ptr sret(%struct.ZSTD_compressionParameters) align 4 %cParams4, ptr noundef %6, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %7 = load i32, ptr %saved_wlog, align 4, !tbaa !4
  %windowLog5 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams4, i32 0, i32 0
  store i32 %7, ptr %windowLog5, align 4, !tbaa !55
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params6 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 5
  %cParams7 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %cParams7, ptr align 4 %cParams4, i64 28, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 28, ptr %cParams4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %compressionLevel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %saved_wlog) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @ZSTD_getCParamsFromCCtxParams(ptr sret(%struct.ZSTD_compressionParameters) align 4, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define void @ZSTDMT_getFrameProgression(ptr noalias sret(%struct.ZSTD_frameProgression) align 8 %agg.result, ptr noundef %mtctx) #0 {
entry:
  %mtctx.addr = alloca ptr, align 8
  %jobNb = alloca i32, align 4
  %lastJobNb = alloca i32, align 4
  %wJobID = alloca i32, align 4
  %jobPtr = alloca ptr, align 8
  %cResult = alloca i64, align 8
  %produced6 = alloca i64, align 8
  %flushed7 = alloca i64, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %consumed = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 19
  %1 = load i64, ptr %consumed, align 8, !tbaa !58
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 2
  %3 = load i64, ptr %filled, align 8, !tbaa !40
  %add = add i64 %1, %3
  %ingested = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 0
  store i64 %add, ptr %ingested, align 8, !tbaa !59
  %4 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %consumed1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %4, i32 0, i32 19
  %5 = load i64, ptr %consumed1, align 8, !tbaa !58
  %consumed2 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 1
  store i64 %5, ptr %consumed2, align 8, !tbaa !61
  %6 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %produced = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %6, i32 0, i32 20
  %7 = load i64, ptr %produced, align 8, !tbaa !62
  %flushed = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 3
  store i64 %7, ptr %flushed, align 8, !tbaa !63
  %produced3 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 2
  store i64 %7, ptr %produced3, align 8, !tbaa !64
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 15
  %9 = load i32, ptr %nextJobID, align 8, !tbaa !65
  %currentJobID = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 4
  store i32 %9, ptr %currentJobID, align 8, !tbaa !66
  %nbActiveWorkers = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 5
  store i32 0, ptr %nbActiveWorkers, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobNb) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastJobNb) #7
  %10 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID4 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %10, i32 0, i32 15
  %11 = load i32, ptr %nextJobID4, align 8, !tbaa !65
  %12 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobReady = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %jobReady, align 8, !tbaa !68
  %add5 = add i32 %11, %13
  store i32 %add5, ptr %lastJobNb, align 4, !tbaa !4
  %14 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %14, i32 0, i32 14
  %15 = load i32, ptr %doneJobID, align 4, !tbaa !69
  store i32 %15, ptr %jobNb, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %jobNb, align 4, !tbaa !4
  %17 = load i32, ptr %lastJobNb, align 4, !tbaa !4
  %cmp = icmp ult i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %wJobID) #7
  %18 = load i32, ptr %jobNb, align 4, !tbaa !4
  %19 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %19, i32 0, i32 13
  %20 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %and = and i32 %18, %20
  store i32 %and, ptr %wJobID, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %jobPtr) #7
  %21 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %jobs, align 8, !tbaa !28
  %23 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %22, i64 %idxprom
  store ptr %arrayidx, ptr %jobPtr, align 8, !tbaa !8
  %24 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %24, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr %cResult) #7
  %25 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %cSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %cSize, align 8, !tbaa !70
  store i64 %26, ptr %cResult, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %produced6) #7
  %27 = load i64, ptr %cResult, align 8, !tbaa !39
  %call = call i32 @ERR_isError(i64 noundef %27)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %28 = load i64, ptr %cResult, align 8, !tbaa !39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %28, %cond.false ]
  store i64 %cond, ptr %produced6, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %flushed7) #7
  %29 = load i64, ptr %cResult, align 8, !tbaa !39
  %call8 = call i32 @ERR_isError(i64 noundef %29)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  %30 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %dstFlushed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %30, i32 0, i32 17
  %31 = load i64, ptr %dstFlushed, align 8, !tbaa !71
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i64 [ 0, %cond.true10 ], [ %31, %cond.false11 ]
  store i64 %cond13, ptr %flushed7, align 8, !tbaa !39
  %32 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %src = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %32, i32 0, i32 10
  %size = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %33 = load i64, ptr %size, align 8, !tbaa !72
  %ingested14 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 0
  %34 = load i64, ptr %ingested14, align 8, !tbaa !59
  %add15 = add i64 %34, %33
  store i64 %add15, ptr %ingested14, align 8, !tbaa !59
  %35 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %consumed16 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %35, i32 0, i32 0
  %36 = load i64, ptr %consumed16, align 8, !tbaa !73
  %consumed17 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 1
  %37 = load i64, ptr %consumed17, align 8, !tbaa !61
  %add18 = add i64 %37, %36
  store i64 %add18, ptr %consumed17, align 8, !tbaa !61
  %38 = load i64, ptr %produced6, align 8, !tbaa !39
  %produced19 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 2
  %39 = load i64, ptr %produced19, align 8, !tbaa !64
  %add20 = add i64 %39, %38
  store i64 %add20, ptr %produced19, align 8, !tbaa !64
  %40 = load i64, ptr %flushed7, align 8, !tbaa !39
  %flushed21 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 3
  %41 = load i64, ptr %flushed21, align 8, !tbaa !63
  %add22 = add i64 %41, %40
  store i64 %add22, ptr %flushed21, align 8, !tbaa !63
  %42 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %consumed23 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %42, i32 0, i32 0
  %43 = load i64, ptr %consumed23, align 8, !tbaa !73
  %44 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %src24 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %44, i32 0, i32 10
  %size25 = getelementptr inbounds %struct.range_t, ptr %src24, i32 0, i32 1
  %45 = load i64, ptr %size25, align 8, !tbaa !72
  %cmp26 = icmp ult i64 %43, %45
  %conv = zext i1 %cmp26 to i32
  %nbActiveWorkers27 = getelementptr inbounds %struct.ZSTD_frameProgression, ptr %agg.result, i32 0, i32 5
  %46 = load i32, ptr %nbActiveWorkers27, align 4, !tbaa !67
  %add28 = add i32 %46, %conv
  store i32 %add28, ptr %nbActiveWorkers27, align 4, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %flushed7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %produced6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cResult) #7
  %47 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs29 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %jobs29, align 8, !tbaa !28
  %49 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom30 = zext i32 %49 to i64
  %arrayidx31 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %48, i64 %idxprom30
  %job_mutex32 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx31, i32 0, i32 2
  call void @llvm.lifetime.end.p0(i64 8, ptr %jobPtr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %wJobID) #7
  br label %for.inc

for.inc:                                          ; preds = %cond.end12
  %50 = load i32, ptr %jobNb, align 4, !tbaa !4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %jobNb, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastJobNb) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobNb) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ERR_isError(i64 noundef %code) #0 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8, !tbaa !39
  %0 = load i64, ptr %code.addr, align 8, !tbaa !39
  %cmp = icmp ugt i64 %0, -120
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDMT_toFlushNow(ptr noundef %mtctx) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  %toFlush = alloca i64, align 8
  %jobID = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %wJobID = alloca i32, align 4
  %jobPtr = alloca ptr, align 8
  %cResult = alloca i64, align 8
  %produced = alloca i64, align 8
  %flushed = alloca i64, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %toFlush) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobID) #7
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %doneJobID, align 4, !tbaa !69
  store i32 %1, ptr %jobID, align 4, !tbaa !4
  %2 = load i32, ptr %jobID, align 4, !tbaa !4
  %3 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %3, i32 0, i32 15
  %4 = load i32, ptr %nextJobID, align 8, !tbaa !65
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %wJobID) #7
  %5 = load i32, ptr %jobID, align 4, !tbaa !4
  %6 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %and = and i32 %5, %7
  store i32 %and, ptr %wJobID, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %jobPtr) #7
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %jobs, align 8, !tbaa !28
  %10 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %jobPtr, align 8, !tbaa !8
  %11 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %11, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr %cResult) #7
  %12 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %cSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %cSize, align 8, !tbaa !70
  store i64 %13, ptr %cResult, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %produced) #7
  %14 = load i64, ptr %cResult, align 8, !tbaa !39
  %call = call i32 @ERR_isError(i64 noundef %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %15 = load i64, ptr %cResult, align 8, !tbaa !39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %15, %cond.false ]
  store i64 %cond, ptr %produced, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %flushed) #7
  %16 = load i64, ptr %cResult, align 8, !tbaa !39
  %call1 = call i32 @ERR_isError(i64 noundef %16)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  %17 = load ptr, ptr %jobPtr, align 8, !tbaa !8
  %dstFlushed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %17, i32 0, i32 17
  %18 = load i64, ptr %dstFlushed, align 8, !tbaa !71
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi i64 [ 0, %cond.true3 ], [ %18, %cond.false4 ]
  store i64 %cond6, ptr %flushed, align 8, !tbaa !39
  %19 = load i64, ptr %produced, align 8, !tbaa !39
  %20 = load i64, ptr %flushed, align 8, !tbaa !39
  %sub = sub i64 %19, %20
  store i64 %sub, ptr %toFlush, align 8, !tbaa !39
  %21 = load i64, ptr %toFlush, align 8, !tbaa !39
  %cmp7 = icmp eq i64 %21, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %cond.end5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %cond.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %flushed) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %produced) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cResult) #7
  %22 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs10 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %jobs10, align 8, !tbaa !28
  %24 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom11 = zext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %idxprom11
  %job_mutex13 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx12, i32 0, i32 2
  call void @llvm.lifetime.end.p0(i64 8, ptr %jobPtr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %wJobID) #7
  %25 = load i64, ptr %toFlush, align 8, !tbaa !39
  store i64 %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobID) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %toFlush) #7
  %26 = load i64, ptr %retval, align 8
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDMT_initCStream_internal(ptr noundef %mtctx, ptr noundef %dict, i64 noundef %dictSize, i32 noundef %dictContentType, ptr noundef %cdict, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %params, i64 noundef %pledgedSrcSize) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictContentType.addr = alloca i32, align 4
  %cdict.addr = alloca ptr, align 8
  %pledgedSrcSize.addr = alloca i64, align 8
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %byval-temp = alloca %struct.ZSTD_compressionParameters, align 8
  %jobSizeKB = alloca i32, align 4
  %rsyncBits = alloca i32, align 4
  %windowSize = alloca i64, align 8
  %nbSlackBuffers = alloca i64, align 8
  %slackSize = alloca i64, align 8
  %nbWorkers92 = alloca i64, align 8
  %sectionsSize = alloca i64, align 8
  %capacity = alloca i64, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  store ptr %dict, ptr %dict.addr, align 8, !tbaa !8
  store i64 %dictSize, ptr %dictSize.addr, align 8, !tbaa !39
  store i32 %dictContentType, ptr %dictContentType.addr, align 4, !tbaa !57
  store ptr %cdict, ptr %cdict.addr, align 8, !tbaa !8
  store i64 %pledgedSrcSize, ptr %pledgedSrcSize.addr, align 8, !tbaa !74
  %nbWorkers = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 9
  %0 = load i32, ptr %nbWorkers, align 4, !tbaa !75
  %1 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %1, i32 0, i32 5
  %nbWorkers2 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params1, i32 0, i32 9
  %2 = load i32, ptr %nbWorkers2, align 4, !tbaa !76
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #7
  %3 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nbWorkers3 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 9
  %4 = load i32, ptr %nbWorkers3, align 4, !tbaa !75
  %call = call i64 @ZSTDMT_resize(ptr noundef %3, i32 noundef %4)
  store i64 %call, ptr %err_code, align 8, !tbaa !39
  %5 = load i64, ptr %err_code, align 8, !tbaa !39
  %call4 = call i32 @ERR_isError(i64 noundef %5)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %do.body
  %6 = load i64, ptr %err_code, align 8, !tbaa !39
  store i64 %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end

do.end:                                           ; preds = %cleanup.cont
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry
  %jobSize = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 10
  %7 = load i64, ptr %jobSize, align 8, !tbaa !77
  %cmp7 = icmp ne i64 %7, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %jobSize8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 10
  %8 = load i64, ptr %jobSize8, align 8, !tbaa !77
  %cmp9 = icmp ult i64 %8, 524288
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  %jobSize11 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 10
  store i64 524288, ptr %jobSize11, align 8, !tbaa !77
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true, %if.end6
  %jobSize13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 10
  %9 = load i64, ptr %jobSize13, align 8, !tbaa !77
  %call14 = call i32 @MEM_32bits()
  %tobool15 = icmp ne i32 %call14, 0
  %10 = zext i1 %tobool15 to i64
  %cond = select i1 %tobool15, i32 536870912, i32 1073741824
  %conv = sext i32 %cond to i64
  %cmp16 = icmp ugt i64 %9, %conv
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end12
  %call19 = call i32 @MEM_32bits()
  %tobool20 = icmp ne i32 %call19, 0
  %11 = zext i1 %tobool20 to i64
  %cond21 = select i1 %tobool20, i32 536870912, i32 1073741824
  %conv22 = sext i32 %cond21 to i64
  %jobSize23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 10
  store i64 %conv22, ptr %jobSize23, align 8, !tbaa !77
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end12
  %12 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %allJobsCompleted = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %12, i32 0, i32 17
  %13 = load i32, ptr %allJobsCompleted, align 8, !tbaa !41
  %cmp25 = icmp eq i32 %13, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %14 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  call void @ZSTDMT_waitForAllJobsCompleted(ptr noundef %14)
  %15 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  call void @ZSTDMT_releaseAllJobResources(ptr noundef %15)
  %16 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %allJobsCompleted28 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %16, i32 0, i32 17
  store i32 1, ptr %allJobsCompleted28, align 8, !tbaa !41
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %17 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params30 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %17, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params30, ptr align 8 %params, i64 176, i1 false), !tbaa.struct !78
  %18 = load i64, ptr %pledgedSrcSize.addr, align 8, !tbaa !74
  %19 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameContentSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %19, i32 0, i32 18
  store i64 %18, ptr %frameContentSize, align 8, !tbaa !79
  %20 = load ptr, ptr %dict.addr, align 8, !tbaa !8
  %tobool31 = icmp ne ptr %20, null
  br i1 %tobool31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end29
  %21 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %21, i32 0, i32 22
  %22 = load ptr, ptr %cdictLocal, align 8, !tbaa !33
  %call33 = call i64 @ZSTD_freeCDict(ptr noundef %22)
  %23 = load ptr, ptr %dict.addr, align 8, !tbaa !8
  %24 = load i64, ptr %dictSize.addr, align 8, !tbaa !39
  %25 = load i32, ptr %dictContentType.addr, align 4, !tbaa !57
  %cParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 1
  %26 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %26, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 28, ptr %byval-temp) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %byval-temp, ptr align 4 %cParams, i64 28, i1 false), !tbaa.struct !56
  %call34 = call ptr @ZSTD_createCDict_advanced(ptr noundef %23, i64 noundef %24, i32 noundef 0, i32 noundef %25, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8 %byval-temp, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  call void @llvm.lifetime.end.p0(i64 28, ptr %byval-temp) #7
  %27 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal35 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %27, i32 0, i32 22
  store ptr %call34, ptr %cdictLocal35, align 8, !tbaa !33
  %28 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal36 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %28, i32 0, i32 22
  %29 = load ptr, ptr %cdictLocal36, align 8, !tbaa !33
  %30 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdict37 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %30, i32 0, i32 23
  store ptr %29, ptr %cdict37, align 8, !tbaa !80
  %31 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal38 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %31, i32 0, i32 22
  %32 = load ptr, ptr %cdictLocal38, align 8, !tbaa !33
  %cmp39 = icmp eq ptr %32, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then32
  store i64 -64, ptr %retval, align 8
  br label %return

if.end42:                                         ; preds = %if.then32
  br label %if.end47

if.else:                                          ; preds = %if.end29
  %33 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal43 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %33, i32 0, i32 22
  %34 = load ptr, ptr %cdictLocal43, align 8, !tbaa !33
  %call44 = call i64 @ZSTD_freeCDict(ptr noundef %34)
  %35 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdictLocal45 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %35, i32 0, i32 22
  store ptr null, ptr %cdictLocal45, align 8, !tbaa !33
  %36 = load ptr, ptr %cdict.addr, align 8, !tbaa !8
  %37 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdict46 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %37, i32 0, i32 23
  store ptr %36, ptr %cdict46, align 8, !tbaa !80
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end42
  %call48 = call i64 @ZSTDMT_computeOverlapSize(ptr noundef %params)
  %38 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetPrefixSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %38, i32 0, i32 7
  store i64 %call48, ptr %targetPrefixSize, align 8, !tbaa !81
  %jobSize49 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 10
  %39 = load i64, ptr %jobSize49, align 8, !tbaa !77
  %40 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %40, i32 0, i32 6
  store i64 %39, ptr %targetSectionSize, align 8, !tbaa !82
  %41 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize50 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %41, i32 0, i32 6
  %42 = load i64, ptr %targetSectionSize50, align 8, !tbaa !82
  %cmp51 = icmp eq i64 %42, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end47
  %call54 = call i32 @ZSTDMT_computeTargetJobLog(ptr noundef %params)
  %sh_prom = zext i32 %call54 to i64
  %shl = shl i64 1, %sh_prom
  %43 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize55 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %43, i32 0, i32 6
  store i64 %shl, ptr %targetSectionSize55, align 8, !tbaa !82
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end47
  %rsyncable = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 12
  %44 = load i32, ptr %rsyncable, align 4, !tbaa !83
  %tobool57 = icmp ne i32 %44, 0
  br i1 %tobool57, label %if.then58, label %if.end67

if.then58:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobSizeKB) #7
  %45 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize59 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %45, i32 0, i32 6
  %46 = load i64, ptr %targetSectionSize59, align 8, !tbaa !82
  %shr = lshr i64 %46, 10
  %conv60 = trunc i64 %shr to i32
  store i32 %conv60, ptr %jobSizeKB, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rsyncBits) #7
  %47 = load i32, ptr %jobSizeKB, align 4, !tbaa !4
  %call61 = call i32 @ZSTD_highbit32(i32 noundef %47)
  %add = add i32 %call61, 10
  store i32 %add, ptr %rsyncBits, align 4, !tbaa !4
  %48 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %rsync = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %48, i32 0, i32 12
  %hash = getelementptr inbounds %struct.rsyncState_t, ptr %rsync, i32 0, i32 0
  store i64 0, ptr %hash, align 8, !tbaa !84
  %49 = load i32, ptr %rsyncBits, align 4, !tbaa !4
  %sh_prom62 = zext i32 %49 to i64
  %shl63 = shl i64 1, %sh_prom62
  %sub = sub i64 %shl63, 1
  %50 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %rsync64 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %50, i32 0, i32 12
  %hitMask = getelementptr inbounds %struct.rsyncState_t, ptr %rsync64, i32 0, i32 1
  store i64 %sub, ptr %hitMask, align 8, !tbaa !85
  %call65 = call i64 @ZSTD_rollingHash_primePower(i32 noundef 32)
  %51 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %rsync66 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %51, i32 0, i32 12
  %primePower = getelementptr inbounds %struct.rsyncState_t, ptr %rsync66, i32 0, i32 2
  store i64 %call65, ptr %primePower, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 4, ptr %rsyncBits) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobSizeKB) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %if.end56
  %52 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize68 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %52, i32 0, i32 6
  %53 = load i64, ptr %targetSectionSize68, align 8, !tbaa !82
  %54 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetPrefixSize69 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %54, i32 0, i32 7
  %55 = load i64, ptr %targetPrefixSize69, align 8, !tbaa !81
  %cmp70 = icmp ult i64 %53, %55
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end67
  %56 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetPrefixSize73 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %56, i32 0, i32 7
  %57 = load i64, ptr %targetPrefixSize73, align 8, !tbaa !81
  %58 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize74 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %58, i32 0, i32 6
  store i64 %57, ptr %targetSectionSize74, align 8, !tbaa !82
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end67
  %59 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %bufPool, align 8, !tbaa !30
  %61 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize76 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %61, i32 0, i32 6
  %62 = load i64, ptr %targetSectionSize76, align 8, !tbaa !82
  %call77 = call i64 @ZSTD_compressBound(i64 noundef %62)
  call void @ZSTDMT_setBufferSize(ptr noundef %60, i64 noundef %call77)
  call void @llvm.lifetime.start.p0(i64 8, ptr %windowSize) #7
  %63 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params78 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %63, i32 0, i32 5
  %ldmParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params78, i32 0, i32 13
  %enableLdm = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams, i32 0, i32 0
  %64 = load i32, ptr %enableLdm, align 8, !tbaa !87
  %cmp79 = icmp eq i32 %64, 1
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end75
  %65 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params81 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %65, i32 0, i32 5
  %cParams82 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params81, i32 0, i32 1
  %windowLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams82, i32 0, i32 0
  %66 = load i32, ptr %windowLog, align 4, !tbaa !52
  %shl83 = shl i32 1, %66
  br label %cond.end

cond.false:                                       ; preds = %if.end75
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond84 = phi i32 [ %shl83, %cond.true ], [ 0, %cond.false ]
  %conv85 = zext i32 %cond84 to i64
  store i64 %conv85, ptr %windowSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbSlackBuffers) #7
  %67 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetPrefixSize86 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %67, i32 0, i32 7
  %68 = load i64, ptr %targetPrefixSize86, align 8, !tbaa !81
  %cmp87 = icmp ugt i64 %68, 0
  %conv88 = zext i1 %cmp87 to i32
  %add89 = add nsw i32 2, %conv88
  %conv90 = sext i32 %add89 to i64
  store i64 %conv90, ptr %nbSlackBuffers, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %slackSize) #7
  %69 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize91 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %69, i32 0, i32 6
  %70 = load i64, ptr %targetSectionSize91, align 8, !tbaa !82
  %71 = load i64, ptr %nbSlackBuffers, align 8, !tbaa !39
  %mul = mul i64 %70, %71
  store i64 %mul, ptr %slackSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbWorkers92) #7
  %72 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params93 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %72, i32 0, i32 5
  %nbWorkers94 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params93, i32 0, i32 9
  %73 = load i32, ptr %nbWorkers94, align 4, !tbaa !76
  %cmp95 = icmp sgt i32 %73, 1
  br i1 %cmp95, label %cond.true97, label %cond.false100

cond.true97:                                      ; preds = %cond.end
  %74 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params98 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %74, i32 0, i32 5
  %nbWorkers99 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params98, i32 0, i32 9
  %75 = load i32, ptr %nbWorkers99, align 4, !tbaa !76
  br label %cond.end101

cond.false100:                                    ; preds = %cond.end
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %cond.true97
  %cond102 = phi i32 [ %75, %cond.true97 ], [ 1, %cond.false100 ]
  %conv103 = sext i32 %cond102 to i64
  store i64 %conv103, ptr %nbWorkers92, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %sectionsSize) #7
  %76 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize104 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %76, i32 0, i32 6
  %77 = load i64, ptr %targetSectionSize104, align 8, !tbaa !82
  %78 = load i64, ptr %nbWorkers92, align 8, !tbaa !39
  %mul105 = mul i64 %77, %78
  store i64 %mul105, ptr %sectionsSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %capacity) #7
  %79 = load i64, ptr %windowSize, align 8, !tbaa !39
  %80 = load i64, ptr %sectionsSize, align 8, !tbaa !39
  %cmp106 = icmp ugt i64 %79, %80
  br i1 %cmp106, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %cond.end101
  %81 = load i64, ptr %windowSize, align 8, !tbaa !39
  br label %cond.end110

cond.false109:                                    ; preds = %cond.end101
  %82 = load i64, ptr %sectionsSize, align 8, !tbaa !39
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %cond.true108
  %cond111 = phi i64 [ %81, %cond.true108 ], [ %82, %cond.false109 ]
  %83 = load i64, ptr %slackSize, align 8, !tbaa !39
  %add112 = add i64 %cond111, %83
  store i64 %add112, ptr %capacity, align 8, !tbaa !39
  %84 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %84, i32 0, i32 10
  %capacity113 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff, i32 0, i32 1
  %85 = load i64, ptr %capacity113, align 8, !tbaa !50
  %86 = load i64, ptr %capacity, align 8, !tbaa !39
  %cmp114 = icmp ult i64 %85, %86
  br i1 %cmp114, label %if.then116, label %if.end138

if.then116:                                       ; preds = %cond.end110
  %87 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff117 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %87, i32 0, i32 10
  %buffer = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff117, i32 0, i32 0
  %88 = load ptr, ptr %buffer, align 8, !tbaa !34
  %tobool118 = icmp ne ptr %88, null
  br i1 %tobool118, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.then116
  %89 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff120 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %89, i32 0, i32 10
  %buffer121 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff120, i32 0, i32 0
  %90 = load ptr, ptr %buffer121, align 8, !tbaa !34
  %91 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem122 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %91, i32 0, i32 21
  call void @ZSTD_customFree(ptr noundef %90, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem122)
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.then116
  %92 = load i64, ptr %capacity, align 8, !tbaa !39
  %93 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem124 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %93, i32 0, i32 21
  %call125 = call ptr @ZSTD_customMalloc(i64 noundef %92, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem124)
  %94 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff126 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %94, i32 0, i32 10
  %buffer127 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff126, i32 0, i32 0
  store ptr %call125, ptr %buffer127, align 8, !tbaa !34
  %95 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff128 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %95, i32 0, i32 10
  %buffer129 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff128, i32 0, i32 0
  %96 = load ptr, ptr %buffer129, align 8, !tbaa !34
  %cmp130 = icmp eq ptr %96, null
  br i1 %cmp130, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.end123
  %97 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff133 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %97, i32 0, i32 10
  %capacity134 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff133, i32 0, i32 1
  store i64 0, ptr %capacity134, align 8, !tbaa !50
  store i64 -64, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup139

if.end135:                                        ; preds = %if.end123
  %98 = load i64, ptr %capacity, align 8, !tbaa !39
  %99 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff136 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %99, i32 0, i32 10
  %capacity137 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff136, i32 0, i32 1
  store i64 %98, ptr %capacity137, align 8, !tbaa !50
  br label %if.end138

if.end138:                                        ; preds = %if.end135, %cond.end110
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup139

cleanup139:                                       ; preds = %if.end138, %if.then132
  call void @llvm.lifetime.end.p0(i64 8, ptr %capacity) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sectionsSize) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbWorkers92) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %slackSize) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbSlackBuffers) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %windowSize) #7
  %cleanup.dest145 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest145, label %unreachable [
    i32 0, label %cleanup.cont146
    i32 1, label %return
  ]

cleanup.cont146:                                  ; preds = %cleanup139
  %100 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff147 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %100, i32 0, i32 10
  %pos = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff147, i32 0, i32 2
  store i64 0, ptr %pos, align 8, !tbaa !88
  %101 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %101, i32 0, i32 9
  %buffer148 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer148, ptr align 8 @g_nullBuffer, i64 16, i1 false), !tbaa.struct !38
  %102 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff149 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %102, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff149, i32 0, i32 2
  store i64 0, ptr %filled, align 8, !tbaa !40
  %103 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff150 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %103, i32 0, i32 9
  %prefix = getelementptr inbounds %struct.inBuff_t, ptr %inBuff150, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prefix, ptr align 8 @kNullRange, i64 16, i1 false), !tbaa.struct !38
  %104 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %104, i32 0, i32 14
  store i32 0, ptr %doneJobID, align 4, !tbaa !69
  %105 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %105, i32 0, i32 15
  store i32 0, ptr %nextJobID, align 8, !tbaa !65
  %106 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameEnded = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %106, i32 0, i32 16
  store i32 0, ptr %frameEnded, align 4, !tbaa !89
  %107 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %allJobsCompleted151 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %107, i32 0, i32 17
  store i32 0, ptr %allJobsCompleted151, align 8, !tbaa !41
  %108 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %consumed = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %108, i32 0, i32 19
  store i64 0, ptr %consumed, align 8, !tbaa !58
  %109 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %produced = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %109, i32 0, i32 20
  store i64 0, ptr %produced, align 8, !tbaa !62
  %110 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %serial = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %110, i32 0, i32 11
  %111 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %seqPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %111, i32 0, i32 4
  %112 = load ptr, ptr %seqPool, align 8, !tbaa !32
  %113 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize152 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %113, i32 0, i32 6
  %114 = load i64, ptr %targetSectionSize152, align 8, !tbaa !82
  %115 = load ptr, ptr %dict.addr, align 8, !tbaa !8
  %116 = load i64, ptr %dictSize.addr, align 8, !tbaa !39
  %117 = load i32, ptr %dictContentType.addr, align 4, !tbaa !57
  %call153 = call i32 @ZSTDMT_serialState_reset(ptr noundef %serial, ptr noundef %112, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %params, i64 noundef %114, ptr noundef %115, i64 noundef %116, i32 noundef %117)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %cleanup.cont146
  store i64 -64, ptr %retval, align 8
  br label %return

if.end156:                                        ; preds = %cleanup.cont146
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end156, %if.then155, %cleanup139, %if.then41, %cleanup
  %118 = load i64, ptr %retval, align 8
  ret i64 %118

unreachable:                                      ; preds = %cleanup139, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_resize(ptr noundef %mtctx, i32 noundef %nbWorkers) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  %nbWorkers.addr = alloca i32, align 4
  %err_code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  store i32 %nbWorkers, ptr %nbWorkers.addr, align 4, !tbaa !4
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %factory = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %factory, align 8, !tbaa !10
  %2 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %conv = zext i32 %2 to i64
  %call = call i32 @POOL_resize(ptr noundef %1, i64 noundef %conv)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -64, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #7
  %3 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %4 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %call1 = call i64 @ZSTDMT_expandJobsTable(ptr noundef %3, i32 noundef %4)
  store i64 %call1, ptr %err_code, align 8, !tbaa !39
  %5 = load i64, ptr %err_code, align 8, !tbaa !39
  %call2 = call i32 @ERR_isError(i64 noundef %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body
  %6 = load i64, ptr %err_code, align 8, !tbaa !39
  store i64 %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end

do.end:                                           ; preds = %cleanup.cont
  %7 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %bufPool, align 8, !tbaa !30
  %9 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %mul = mul i32 2, %9
  %add = add i32 %mul, 3
  %call6 = call ptr @ZSTDMT_expandBufferPool(ptr noundef %8, i32 noundef %add)
  %10 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool7 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %10, i32 0, i32 2
  store ptr %call6, ptr %bufPool7, align 8, !tbaa !30
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool8 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %bufPool8, align 8, !tbaa !30
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end
  store i64 -64, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %do.end
  %13 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cctxPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %cctxPool, align 8, !tbaa !31
  %15 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %call12 = call ptr @ZSTDMT_expandCCtxPool(ptr noundef %14, i32 noundef %15)
  %16 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cctxPool13 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %16, i32 0, i32 3
  store ptr %call12, ptr %cctxPool13, align 8, !tbaa !31
  %17 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cctxPool14 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %cctxPool14, align 8, !tbaa !31
  %cmp15 = icmp eq ptr %18, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  store i64 -64, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end11
  %19 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %seqPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %seqPool, align 8, !tbaa !32
  %21 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %call19 = call ptr @ZSTDMT_expandSeqPool(ptr noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %seqPool20 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %22, i32 0, i32 4
  store ptr %call19, ptr %seqPool20, align 8, !tbaa !32
  %23 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %seqPool21 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %seqPool21, align 8, !tbaa !32
  %cmp22 = icmp eq ptr %24, null
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  store i64 -64, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end18
  %25 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %call26 = call i64 @ZSTDMT_CCtxParam_setNbWorkers(ptr noundef %params, i32 noundef %26)
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.then24, %if.then17, %if.then10, %cleanup, %if.then
  %27 = load i64, ptr %retval, align 8
  ret i64 %27

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MEM_32bits() #4 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_waitForAllJobsCompleted(ptr noundef %mtctx) #0 {
entry:
  %mtctx.addr = alloca ptr, align 8
  %jobID = alloca i32, align 4
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %doneJobID, align 4, !tbaa !69
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %nextJobID, align 8, !tbaa !65
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %while.body, label %while.end23

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobID) #7
  %4 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %4, i32 0, i32 14
  %5 = load i32, ptr %doneJobID1, align 4, !tbaa !69
  %6 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %and = and i32 %5, %7
  store i32 %and, ptr %jobID, align 4, !tbaa !4
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %jobs, align 8, !tbaa !28
  %10 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %9, i64 %idxprom
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx, i32 0, i32 2
  br label %while.cond2

while.cond2:                                      ; preds = %while.body10, %while.body
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs3 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %jobs3, align 8, !tbaa !28
  %13 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom4 = zext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %12, i64 %idxprom4
  %consumed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx5, i32 0, i32 0
  %14 = load i64, ptr %consumed, align 8, !tbaa !73
  %15 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs6 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %jobs6, align 8, !tbaa !28
  %17 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom7 = zext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %16, i64 %idxprom7
  %src = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx8, i32 0, i32 10
  %size = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %18 = load i64, ptr %size, align 8, !tbaa !72
  %cmp9 = icmp ult i64 %14, %18
  br i1 %cmp9, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond2
  %19 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs11 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %jobs11, align 8, !tbaa !28
  %21 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom12 = zext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %20, i64 %idxprom12
  %job_cond = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx13, i32 0, i32 3
  %22 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs14 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %jobs14, align 8, !tbaa !28
  %24 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom15 = zext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %23, i64 %idxprom15
  %job_mutex17 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx16, i32 0, i32 2
  br label %while.cond2

while.end:                                        ; preds = %while.cond2
  %25 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs18 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %jobs18, align 8, !tbaa !28
  %27 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom19 = zext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %26, i64 %idxprom19
  %job_mutex21 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx20, i32 0, i32 2
  %28 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID22 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %28, i32 0, i32 14
  %29 = load i32, ptr %doneJobID22, align 4, !tbaa !69
  %inc = add i32 %29, 1
  store i32 %inc, ptr %doneJobID22, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobID) #7
  br label %while.cond

while.end23:                                      ; preds = %while.cond
  ret void
}

declare ptr @ZSTD_createCDict_advanced(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.ZSTD_compressionParameters) align 8, ptr noundef byval(%struct.ZSTD_customMem) align 8) #1

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_computeOverlapSize(ptr noundef %params) #0 {
entry:
  %params.addr = alloca ptr, align 8
  %overlapRLog = alloca i32, align 4
  %ovLog = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %overlapRLog) #7
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %overlapLog = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %overlapLog, align 8, !tbaa !90
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 1
  %strategy = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams, i32 0, i32 6
  %3 = load i32, ptr %strategy, align 4, !tbaa !91
  %call = call i32 @ZSTDMT_overlapLog(i32 noundef %1, i32 noundef %3)
  %sub = sub nsw i32 9, %call
  store i32 %sub, ptr %overlapRLog, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ovLog) #7
  %4 = load i32, ptr %overlapRLog, align 4, !tbaa !4
  %cmp = icmp sge i32 %4, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams1 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %5, i32 0, i32 1
  %windowLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams1, i32 0, i32 0
  %6 = load i32, ptr %windowLog, align 4, !tbaa !92
  %7 = load i32, ptr %overlapRLog, align 4, !tbaa !4
  %sub2 = sub i32 %6, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub2, %cond.false ]
  store i32 %cond, ptr %ovLog, align 4, !tbaa !4
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %ldmParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 13
  %enableLdm = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams, i32 0, i32 0
  %9 = load i32, ptr %enableLdm, align 8, !tbaa !93
  %cmp3 = icmp eq i32 %9, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams4 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i32 0, i32 1
  %windowLog5 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams4, i32 0, i32 0
  %11 = load i32, ptr %windowLog5, align 4, !tbaa !92
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %call6 = call i32 @ZSTDMT_computeTargetJobLog(ptr noundef %12)
  %sub7 = sub i32 %call6, 2
  %cmp8 = icmp ult i32 %11, %sub7
  br i1 %cmp8, label %cond.true9, label %cond.false12

cond.true9:                                       ; preds = %if.then
  %13 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams10 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %13, i32 0, i32 1
  %windowLog11 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams10, i32 0, i32 0
  %14 = load i32, ptr %windowLog11, align 4, !tbaa !92
  br label %cond.end15

cond.false12:                                     ; preds = %if.then
  %15 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %call13 = call i32 @ZSTDMT_computeTargetJobLog(ptr noundef %15)
  %sub14 = sub i32 %call13, 2
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false12, %cond.true9
  %cond16 = phi i32 [ %14, %cond.true9 ], [ %sub14, %cond.false12 ]
  %16 = load i32, ptr %overlapRLog, align 4, !tbaa !4
  %sub17 = sub i32 %cond16, %16
  store i32 %sub17, ptr %ovLog, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %cond.end15, %cond.end
  %17 = load i32, ptr %ovLog, align 4, !tbaa !4
  %cmp18 = icmp eq i32 %17, 0
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.end
  br label %cond.end21

cond.false20:                                     ; preds = %if.end
  %18 = load i32, ptr %ovLog, align 4, !tbaa !4
  %sh_prom = zext i32 %18 to i64
  %shl = shl i64 1, %sh_prom
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i64 [ 0, %cond.true19 ], [ %shl, %cond.false20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %ovLog) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %overlapRLog) #7
  ret i64 %cond22
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTDMT_computeTargetJobLog(ptr noundef %params) #0 {
entry:
  %params.addr = alloca ptr, align 8
  %jobLog = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobLog) #7
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %ldmParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %0, i32 0, i32 13
  %enableLdm = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams, i32 0, i32 0
  %1 = load i32, ptr %enableLdm, align 8, !tbaa !93
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %2, i32 0, i32 1
  %chainLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams, i32 0, i32 1
  %3 = load i32, ptr %chainLog, align 4, !tbaa !94
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams1 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %4, i32 0, i32 1
  %strategy = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams1, i32 0, i32 6
  %5 = load i32, ptr %strategy, align 4, !tbaa !91
  %call = call i32 @ZSTD_cycleLog(i32 noundef %3, i32 noundef %5)
  %add = add i32 %call, 3
  %cmp2 = icmp ugt i32 21, %add
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams3 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %6, i32 0, i32 1
  %chainLog4 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams3, i32 0, i32 1
  %7 = load i32, ptr %chainLog4, align 4, !tbaa !94
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %8, i32 0, i32 1
  %strategy6 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams5, i32 0, i32 6
  %9 = load i32, ptr %strategy6, align 4, !tbaa !91
  %call7 = call i32 @ZSTD_cycleLog(i32 noundef %7, i32 noundef %9)
  %add8 = add i32 %call7, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 21, %cond.true ], [ %add8, %cond.false ]
  store i32 %cond, ptr %jobLog, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %10, i32 0, i32 1
  %windowLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams9, i32 0, i32 0
  %11 = load i32, ptr %windowLog, align 4, !tbaa !92
  %add10 = add i32 %11, 2
  %cmp11 = icmp ugt i32 20, %add10
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %if.else
  br label %cond.end17

cond.false13:                                     ; preds = %if.else
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %cParams14 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %12, i32 0, i32 1
  %windowLog15 = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %cParams14, i32 0, i32 0
  %13 = load i32, ptr %windowLog15, align 4, !tbaa !92
  %add16 = add i32 %13, 2
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false13, %cond.true12
  %cond18 = phi i32 [ 20, %cond.true12 ], [ %add16, %cond.false13 ]
  store i32 %cond18, ptr %jobLog, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %cond.end17, %cond.end
  %14 = load i32, ptr %jobLog, align 4, !tbaa !4
  %call19 = call i32 @MEM_32bits()
  %tobool = icmp ne i32 %call19, 0
  %15 = zext i1 %tobool to i64
  %cond20 = select i1 %tobool, i32 29, i32 30
  %cmp21 = icmp ult i32 %14, %cond20
  br i1 %cmp21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %if.end
  %16 = load i32, ptr %jobLog, align 4, !tbaa !4
  br label %cond.end27

cond.false23:                                     ; preds = %if.end
  %call24 = call i32 @MEM_32bits()
  %tobool25 = icmp ne i32 %call24, 0
  %17 = zext i1 %tobool25 to i64
  %cond26 = select i1 %tobool25, i32 29, i32 30
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false23, %cond.true22
  %cond28 = phi i32 [ %16, %cond.true22 ], [ %cond26, %cond.false23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobLog) #7
  ret i32 %cond28
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ZSTD_highbit32(i32 noundef %val) #4 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4, !tbaa !4
  %0 = load i32, ptr %val.addr, align 4, !tbaa !4
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %xor = xor i32 %1, 31
  ret i32 %xor
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ZSTD_rollingHash_primePower(i32 noundef %length) #4 {
entry:
  %length.addr = alloca i32, align 4
  store i32 %length, ptr %length.addr, align 4, !tbaa !4
  %0 = load i32, ptr %length.addr, align 4, !tbaa !4
  %sub = sub i32 %0, 1
  %conv = zext i32 %sub to i64
  %call = call i64 @ZSTD_ipow(i64 noundef -3523014627327384477, i64 noundef %conv)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_setBufferSize(ptr noundef %bufPool, i64 noundef %bSize) #0 {
entry:
  %bufPool.addr = alloca ptr, align 8
  %bSize.addr = alloca i64, align 8
  store ptr %bufPool, ptr %bufPool.addr, align 8, !tbaa !8
  store i64 %bSize, ptr %bSize.addr, align 8, !tbaa !39
  %0 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %bSize.addr, align 8, !tbaa !39
  %2 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %bufferSize = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %2, i32 0, i32 1
  store i64 %1, ptr %bufferSize, align 8, !tbaa !95
  %3 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex1 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %3, i32 0, i32 0
  ret void
}

declare i64 @ZSTD_compressBound(i64 noundef) #1

declare ptr @ZSTD_customMalloc(i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #1

; Function Attrs: nounwind uwtable
define internal i32 @ZSTDMT_serialState_reset(ptr noundef %serialState, ptr noundef %seqPool, ptr noundef byval(%struct.ZSTD_CCtx_params_s) align 8 %params, i64 noundef %jobSize, ptr noundef %dict, i64 noundef %dictSize, i32 noundef %dictContentType) #0 {
entry:
  %retval = alloca i32, align 4
  %serialState.addr = alloca ptr, align 8
  %seqPool.addr = alloca ptr, align 8
  %jobSize.addr = alloca i64, align 8
  %dict.addr = alloca ptr, align 8
  %dictSize.addr = alloca i64, align 8
  %dictContentType.addr = alloca i32, align 4
  %cMem = alloca %struct.ZSTD_customMem, align 8
  %hashLog = alloca i32, align 4
  %hashSize = alloca i64, align 8
  %bucketLog = alloca i32, align 4
  %prevBucketLog = alloca i32, align 4
  %numBuckets = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dictEnd = alloca ptr, align 8
  store ptr %serialState, ptr %serialState.addr, align 8, !tbaa !8
  store ptr %seqPool, ptr %seqPool.addr, align 8, !tbaa !8
  store i64 %jobSize, ptr %jobSize.addr, align 8, !tbaa !39
  store ptr %dict, ptr %dict.addr, align 8, !tbaa !8
  store i64 %dictSize, ptr %dictSize.addr, align 8, !tbaa !39
  store i32 %dictContentType, ptr %dictContentType.addr, align 4, !tbaa !57
  %ldmParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %enableLdm = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams, i32 0, i32 0
  %0 = load i32, ptr %enableLdm, align 8, !tbaa !93
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ldmParams1 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %cParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 1
  call void @ZSTD_ldm_adjustParameters(ptr noundef %ldmParams1, ptr noundef %cParams)
  br label %if.end

if.else:                                          ; preds = %entry
  %ldmParams2 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  call void @llvm.memset.p0.i64(ptr align 8 %ldmParams2, i8 0, i64 24, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.serialState_t, ptr %1, i32 0, i32 5
  store i32 0, ptr %nextJobID, align 8, !tbaa !96
  %fParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 2
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameParameters, ptr %fParams, i32 0, i32 1
  %2 = load i32, ptr %checksumFlag, align 4, !tbaa !97
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %xxhState = getelementptr inbounds %struct.serialState_t, ptr %3, i32 0, i32 4
  %call = call i32 @ZSTD_XXH64_reset(ptr noundef %xxhState, i64 noundef 0)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %ldmParams5 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %enableLdm6 = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams5, i32 0, i32 0
  %4 = load i32, ptr %enableLdm6, align 8, !tbaa !93
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then8, label %if.end87

if.then8:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 24, ptr %cMem) #7
  %customMem = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem, ptr align 8 %customMem, i64 24, i1 false), !tbaa.struct !47
  call void @llvm.lifetime.start.p0(i64 4, ptr %hashLog) #7
  %ldmParams9 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %hashLog10 = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams9, i32 0, i32 1
  %5 = load i32, ptr %hashLog10, align 4, !tbaa !98
  store i32 %5, ptr %hashLog, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hashSize) #7
  %6 = load i32, ptr %hashLog, align 4, !tbaa !4
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 1, %sh_prom
  %mul = mul i64 %shl, 8
  store i64 %mul, ptr %hashSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucketLog) #7
  %ldmParams11 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %hashLog12 = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams11, i32 0, i32 1
  %7 = load i32, ptr %hashLog12, align 4, !tbaa !98
  %ldmParams13 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %bucketSizeLog = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams13, i32 0, i32 2
  %8 = load i32, ptr %bucketSizeLog, align 8, !tbaa !99
  %sub = sub i32 %7, %8
  store i32 %sub, ptr %bucketLog, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prevBucketLog) #7
  %9 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params14 = getelementptr inbounds %struct.serialState_t, ptr %9, i32 0, i32 2
  %ldmParams15 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params14, i32 0, i32 13
  %hashLog16 = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams15, i32 0, i32 1
  %10 = load i32, ptr %hashLog16, align 4, !tbaa !100
  %11 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params17 = getelementptr inbounds %struct.serialState_t, ptr %11, i32 0, i32 2
  %ldmParams18 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params17, i32 0, i32 13
  %bucketSizeLog19 = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams18, i32 0, i32 2
  %12 = load i32, ptr %bucketSizeLog19, align 8, !tbaa !101
  %sub20 = sub i32 %10, %12
  store i32 %sub20, ptr %prevBucketLog, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %numBuckets) #7
  %13 = load i32, ptr %bucketLog, align 4, !tbaa !4
  %sh_prom21 = zext i32 %13 to i64
  %shl22 = shl i64 1, %sh_prom21
  store i64 %shl22, ptr %numBuckets, align 8, !tbaa !39
  %14 = load ptr, ptr %seqPool.addr, align 8, !tbaa !8
  %ldmParams23 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %15 = load i64, ptr %jobSize.addr, align 8, !tbaa !39
  %call24 = call i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8 %ldmParams23, i64 noundef %15)
  call void @ZSTDMT_setNbSeq(ptr noundef %14, i64 noundef %call24)
  %16 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState = getelementptr inbounds %struct.serialState_t, ptr %16, i32 0, i32 3
  %window = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 0
  call void @ZSTD_window_init(ptr noundef %window)
  %17 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState25 = getelementptr inbounds %struct.serialState_t, ptr %17, i32 0, i32 3
  %hashTable = getelementptr inbounds %struct.ldmState_t, ptr %ldmState25, i32 0, i32 1
  %18 = load ptr, ptr %hashTable, align 8, !tbaa !48
  %cmp26 = icmp eq ptr %18, null
  br i1 %cmp26, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %19 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params27 = getelementptr inbounds %struct.serialState_t, ptr %19, i32 0, i32 2
  %ldmParams28 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params27, i32 0, i32 13
  %hashLog29 = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams28, i32 0, i32 1
  %20 = load i32, ptr %hashLog29, align 4, !tbaa !100
  %21 = load i32, ptr %hashLog, align 4, !tbaa !4
  %cmp30 = icmp ult i32 %20, %21
  br i1 %cmp30, label %if.then31, label %if.end37

if.then31:                                        ; preds = %lor.lhs.false, %if.then8
  %22 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState32 = getelementptr inbounds %struct.serialState_t, ptr %22, i32 0, i32 3
  %hashTable33 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState32, i32 0, i32 1
  %23 = load ptr, ptr %hashTable33, align 8, !tbaa !48
  call void @ZSTD_customFree(ptr noundef %23, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %24 = load i64, ptr %hashSize, align 8, !tbaa !39
  %call34 = call ptr @ZSTD_customMalloc(i64 noundef %24, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %25 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState35 = getelementptr inbounds %struct.serialState_t, ptr %25, i32 0, i32 3
  %hashTable36 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState35, i32 0, i32 1
  store ptr %call34, ptr %hashTable36, align 8, !tbaa !48
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %lor.lhs.false
  %26 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState38 = getelementptr inbounds %struct.serialState_t, ptr %26, i32 0, i32 3
  %bucketOffsets = getelementptr inbounds %struct.ldmState_t, ptr %ldmState38, i32 0, i32 3
  %27 = load ptr, ptr %bucketOffsets, align 8, !tbaa !49
  %cmp39 = icmp eq ptr %27, null
  br i1 %cmp39, label %if.then42, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end37
  %28 = load i32, ptr %prevBucketLog, align 4, !tbaa !4
  %29 = load i32, ptr %bucketLog, align 4, !tbaa !4
  %cmp41 = icmp ult i32 %28, %29
  br i1 %cmp41, label %if.then42, label %if.end48

if.then42:                                        ; preds = %lor.lhs.false40, %if.end37
  %30 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState43 = getelementptr inbounds %struct.serialState_t, ptr %30, i32 0, i32 3
  %bucketOffsets44 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState43, i32 0, i32 3
  %31 = load ptr, ptr %bucketOffsets44, align 8, !tbaa !49
  call void @ZSTD_customFree(ptr noundef %31, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %32 = load i64, ptr %numBuckets, align 8, !tbaa !39
  %call45 = call ptr @ZSTD_customMalloc(i64 noundef %32, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %33 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState46 = getelementptr inbounds %struct.serialState_t, ptr %33, i32 0, i32 3
  %bucketOffsets47 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState46, i32 0, i32 3
  store ptr %call45, ptr %bucketOffsets47, align 8, !tbaa !49
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %lor.lhs.false40
  %34 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState49 = getelementptr inbounds %struct.serialState_t, ptr %34, i32 0, i32 3
  %hashTable50 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState49, i32 0, i32 1
  %35 = load ptr, ptr %hashTable50, align 8, !tbaa !48
  %tobool51 = icmp ne ptr %35, null
  br i1 %tobool51, label %lor.lhs.false52, label %if.then56

lor.lhs.false52:                                  ; preds = %if.end48
  %36 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState53 = getelementptr inbounds %struct.serialState_t, ptr %36, i32 0, i32 3
  %bucketOffsets54 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState53, i32 0, i32 3
  %37 = load ptr, ptr %bucketOffsets54, align 8, !tbaa !49
  %tobool55 = icmp ne ptr %37, null
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %lor.lhs.false52, %if.end48
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false52
  %38 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState58 = getelementptr inbounds %struct.serialState_t, ptr %38, i32 0, i32 3
  %hashTable59 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState58, i32 0, i32 1
  %39 = load ptr, ptr %hashTable59, align 8, !tbaa !48
  %40 = load i64, ptr %hashSize, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr align 4 %39, i8 0, i64 %40, i1 false)
  %41 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState60 = getelementptr inbounds %struct.serialState_t, ptr %41, i32 0, i32 3
  %bucketOffsets61 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState60, i32 0, i32 3
  %42 = load ptr, ptr %bucketOffsets61, align 8, !tbaa !49
  %43 = load i64, ptr %numBuckets, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr align 1 %42, i8 0, i64 %43, i1 false)
  %44 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState62 = getelementptr inbounds %struct.serialState_t, ptr %44, i32 0, i32 3
  %loadedDictEnd = getelementptr inbounds %struct.ldmState_t, ptr %ldmState62, i32 0, i32 2
  store i32 0, ptr %loadedDictEnd, align 8, !tbaa !102
  %45 = load i64, ptr %dictSize.addr, align 8, !tbaa !39
  %cmp63 = icmp ugt i64 %45, 0
  br i1 %cmp63, label %if.then64, label %if.end79

if.then64:                                        ; preds = %if.end57
  %46 = load i32, ptr %dictContentType.addr, align 4, !tbaa !57
  %cmp65 = icmp eq i32 %46, 1
  br i1 %cmp65, label %if.then66, label %if.else77

if.then66:                                        ; preds = %if.then64
  call void @llvm.lifetime.start.p0(i64 8, ptr %dictEnd) #7
  %47 = load ptr, ptr %dict.addr, align 8, !tbaa !8
  %48 = load i64, ptr %dictSize.addr, align 8, !tbaa !39
  %add.ptr = getelementptr inbounds i8, ptr %47, i64 %48
  store ptr %add.ptr, ptr %dictEnd, align 8, !tbaa !8
  %49 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState67 = getelementptr inbounds %struct.serialState_t, ptr %49, i32 0, i32 3
  %window68 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState67, i32 0, i32 0
  %50 = load ptr, ptr %dict.addr, align 8, !tbaa !8
  %51 = load i64, ptr %dictSize.addr, align 8, !tbaa !39
  %call69 = call i32 @ZSTD_window_update(ptr noundef %window68, ptr noundef %50, i64 noundef %51, i32 noundef 0)
  %52 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState70 = getelementptr inbounds %struct.serialState_t, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %dict.addr, align 8, !tbaa !8
  %54 = load ptr, ptr %dictEnd, align 8, !tbaa !8
  %ldmParams71 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  call void @ZSTD_ldm_fillHashTable(ptr noundef %ldmState70, ptr noundef %53, ptr noundef %54, ptr noundef %ldmParams71)
  %forceWindow = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 4
  %55 = load i32, ptr %forceWindow, align 8, !tbaa !103
  %tobool72 = icmp ne i32 %55, 0
  br i1 %tobool72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then66
  br label %cond.end

cond.false:                                       ; preds = %if.then66
  %56 = load ptr, ptr %dictEnd, align 8, !tbaa !8
  %57 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState73 = getelementptr inbounds %struct.serialState_t, ptr %57, i32 0, i32 3
  %window74 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState73, i32 0, i32 0
  %base = getelementptr inbounds %struct.ZSTD_window_t, ptr %window74, i32 0, i32 1
  %58 = load ptr, ptr %base, align 8, !tbaa !104
  %sub.ptr.lhs.cast = ptrtoint ptr %56 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %58 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  %59 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState75 = getelementptr inbounds %struct.serialState_t, ptr %59, i32 0, i32 3
  %loadedDictEnd76 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState75, i32 0, i32 2
  store i32 %cond, ptr %loadedDictEnd76, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 8, ptr %dictEnd) #7
  br label %if.end78

if.else77:                                        ; preds = %if.then64
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %cond.end
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end57
  %60 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindow = getelementptr inbounds %struct.serialState_t, ptr %60, i32 0, i32 8
  %61 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState80 = getelementptr inbounds %struct.serialState_t, ptr %61, i32 0, i32 3
  %window81 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState80, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ldmWindow, ptr align 8 %window81, i64 40, i1 false), !tbaa.struct !105
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %numBuckets) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %prevBucketLog) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucketLog) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hashSize) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hashLog) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %cMem) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end87

if.end87:                                         ; preds = %cleanup.cont, %if.end4
  %62 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params88 = getelementptr inbounds %struct.serialState_t, ptr %62, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params88, ptr align 8 %params, i64 176, i1 false), !tbaa.struct !78
  %63 = load i64, ptr %jobSize.addr, align 8, !tbaa !39
  %conv89 = trunc i64 %63 to i32
  %conv90 = zext i32 %conv89 to i64
  %64 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params91 = getelementptr inbounds %struct.serialState_t, ptr %64, i32 0, i32 2
  %jobSize92 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params91, i32 0, i32 10
  store i64 %conv90, ptr %jobSize92, align 8, !tbaa !106
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %cleanup
  %65 = load i32, ptr %retval, align 4
  ret i32 %65

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDMT_nextInputSizeHint(ptr noundef %mtctx) #0 {
entry:
  %mtctx.addr = alloca ptr, align 8
  %hintInSize = alloca i64, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hintInSize) #7
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 6
  %1 = load i64, ptr %targetSectionSize, align 8, !tbaa !82
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 2
  %3 = load i64, ptr %filled, align 8, !tbaa !40
  %sub = sub i64 %1, %3
  store i64 %sub, ptr %hintInSize, align 8, !tbaa !39
  %4 = load i64, ptr %hintInSize, align 8, !tbaa !39
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %5, i32 0, i32 6
  %6 = load i64, ptr %targetSectionSize1, align 8, !tbaa !82
  store i64 %6, ptr %hintInSize, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, ptr %hintInSize, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 8, ptr %hintInSize) #7
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDMT_compressStream_generic(ptr noundef %mtctx, ptr noundef %output, ptr noundef %input, i32 noundef %endOp) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %endOp.addr = alloca i32, align 4
  %forwardInputProgress = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %syncPoint = alloca %struct.syncPoint_t, align 8
  %jobSize = alloca i64, align 8
  %err_code = alloca i64, align 8
  %remainingToFlush = alloca i64, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !8
  store ptr %input, ptr %input.addr, align 8, !tbaa !8
  store i32 %endOp, ptr %endOp.addr, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr %forwardInputProgress) #7
  store i32 0, ptr %forwardInputProgress, align 4, !tbaa !4
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameEnded = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 16
  %1 = load i32, ptr %frameEnded, align 4, !tbaa !89
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i64 -60, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup90

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobReady = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %jobReady, align 8, !tbaa !68
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.end37, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %if.end
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %size = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %size, align 8, !tbaa !107
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %pos = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %pos, align 8, !tbaa !109
  %cmp3 = icmp ugt i64 %6, %8
  br i1 %cmp3, label %if.then4, label %if.end37

if.then4:                                         ; preds = %land.lhs.true2
  %9 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %9, i32 0, i32 9
  %buffer = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 1
  %start = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 0
  %10 = load ptr, ptr %start, align 8, !tbaa !110
  %cmp5 = icmp eq ptr %10, null
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %call = call i32 @ZSTDMT_tryGetInputRange(ptr noundef %11)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  br label %if.end9

if.else:                                          ; preds = %if.then6
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then4
  %12 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff11 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %12, i32 0, i32 9
  %buffer12 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff11, i32 0, i32 1
  %start13 = getelementptr inbounds %struct.buffer_s, ptr %buffer12, i32 0, i32 0
  %13 = load ptr, ptr %start13, align 8, !tbaa !110
  %cmp14 = icmp ne ptr %13, null
  br i1 %cmp14, label %if.then15, label %if.end36

if.then15:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 16, ptr %syncPoint) #7
  %14 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %15 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %call16 = call { i64, i32 } @findSynchronizationPoint(ptr noundef %14, ptr noundef byval(%struct.ZSTD_inBuffer_s) align 8 %15)
  %16 = getelementptr inbounds { i64, i32 }, ptr %syncPoint, i32 0, i32 0
  %17 = extractvalue { i64, i32 } %call16, 0
  store i64 %17, ptr %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, ptr %syncPoint, i32 0, i32 1
  %19 = extractvalue { i64, i32 } %call16, 1
  store i32 %19, ptr %18, align 8
  %flush = getelementptr inbounds %struct.syncPoint_t, ptr %syncPoint, i32 0, i32 1
  %20 = load i32, ptr %flush, align 8, !tbaa !111
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %land.lhs.true18, label %if.end21

land.lhs.true18:                                  ; preds = %if.then15
  %21 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %cmp19 = icmp eq i32 %21, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true18
  store i32 1, ptr %endOp.addr, align 4, !tbaa !57
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true18, %if.then15
  %22 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff22 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %22, i32 0, i32 9
  %buffer23 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff22, i32 0, i32 1
  %start24 = getelementptr inbounds %struct.buffer_s, ptr %buffer23, i32 0, i32 0
  %23 = load ptr, ptr %start24, align 8, !tbaa !110
  %24 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff25 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %24, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff25, i32 0, i32 2
  %25 = load i64, ptr %filled, align 8, !tbaa !40
  %add.ptr = getelementptr inbounds i8, ptr %23, i64 %25
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %src = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %src, align 8, !tbaa !113
  %28 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %pos26 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %pos26, align 8, !tbaa !109
  %add.ptr27 = getelementptr inbounds i8, ptr %27, i64 %29
  %toLoad = getelementptr inbounds %struct.syncPoint_t, ptr %syncPoint, i32 0, i32 0
  %30 = load i64, ptr %toLoad, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr27, i64 %30, i1 false)
  %toLoad28 = getelementptr inbounds %struct.syncPoint_t, ptr %syncPoint, i32 0, i32 0
  %31 = load i64, ptr %toLoad28, align 8, !tbaa !114
  %32 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %pos29 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %pos29, align 8, !tbaa !109
  %add = add i64 %33, %31
  store i64 %add, ptr %pos29, align 8, !tbaa !109
  %toLoad30 = getelementptr inbounds %struct.syncPoint_t, ptr %syncPoint, i32 0, i32 0
  %34 = load i64, ptr %toLoad30, align 8, !tbaa !114
  %35 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff31 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %35, i32 0, i32 9
  %filled32 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff31, i32 0, i32 2
  %36 = load i64, ptr %filled32, align 8, !tbaa !40
  %add33 = add i64 %36, %34
  store i64 %add33, ptr %filled32, align 8, !tbaa !40
  %toLoad34 = getelementptr inbounds %struct.syncPoint_t, ptr %syncPoint, i32 0, i32 0
  %37 = load i64, ptr %toLoad34, align 8, !tbaa !114
  %cmp35 = icmp ugt i64 %37, 0
  %conv = zext i1 %cmp35 to i32
  store i32 %conv, ptr %forwardInputProgress, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 16, ptr %syncPoint) #7
  br label %if.end36

if.end36:                                         ; preds = %if.end21, %if.end10
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true2, %if.end
  %38 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %pos38 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %38, i32 0, i32 2
  %39 = load i64, ptr %pos38, align 8, !tbaa !109
  %40 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %size39 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %40, i32 0, i32 1
  %41 = load i64, ptr %size39, align 8, !tbaa !107
  %cmp40 = icmp ult i64 %39, %41
  br i1 %cmp40, label %land.lhs.true42, label %if.end46

land.lhs.true42:                                  ; preds = %if.end37
  %42 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %cmp43 = icmp eq i32 %42, 2
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true42
  store i32 1, ptr %endOp.addr, align 4, !tbaa !57
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %land.lhs.true42, %if.end37
  %43 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobReady47 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %43, i32 0, i32 8
  %44 = load i32, ptr %jobReady47, align 8, !tbaa !68
  %tobool48 = icmp ne i32 %44, 0
  br i1 %tobool48, label %if.then67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end46
  %45 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff49 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %45, i32 0, i32 9
  %filled50 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff49, i32 0, i32 2
  %46 = load i64, ptr %filled50, align 8, !tbaa !40
  %47 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %47, i32 0, i32 6
  %48 = load i64, ptr %targetSectionSize, align 8, !tbaa !82
  %cmp51 = icmp uge i64 %46, %48
  br i1 %cmp51, label %if.then67, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %49 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %cmp54 = icmp ne i32 %49, 0
  br i1 %cmp54, label %land.lhs.true56, label %lor.lhs.false61

land.lhs.true56:                                  ; preds = %lor.lhs.false53
  %50 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff57 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %50, i32 0, i32 9
  %filled58 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff57, i32 0, i32 2
  %51 = load i64, ptr %filled58, align 8, !tbaa !40
  %cmp59 = icmp ugt i64 %51, 0
  br i1 %cmp59, label %if.then67, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %land.lhs.true56, %lor.lhs.false53
  %52 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %cmp62 = icmp eq i32 %52, 2
  br i1 %cmp62, label %land.lhs.true64, label %if.end78

land.lhs.true64:                                  ; preds = %lor.lhs.false61
  %53 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameEnded65 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %53, i32 0, i32 16
  %54 = load i32, ptr %frameEnded65, align 4, !tbaa !89
  %tobool66 = icmp ne i32 %54, 0
  br i1 %tobool66, label %if.end78, label %if.then67

if.then67:                                        ; preds = %land.lhs.true64, %land.lhs.true56, %lor.lhs.false, %if.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %jobSize) #7
  %55 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff68 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %55, i32 0, i32 9
  %filled69 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff68, i32 0, i32 2
  %56 = load i64, ptr %filled69, align 8, !tbaa !40
  store i64 %56, ptr %jobSize, align 8, !tbaa !39
  br label %do.body

do.body:                                          ; preds = %if.then67
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_code) #7
  %57 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %58 = load i64, ptr %jobSize, align 8, !tbaa !39
  %59 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %call70 = call i64 @ZSTDMT_createCompressionJob(ptr noundef %57, i64 noundef %58, i32 noundef %59)
  store i64 %call70, ptr %err_code, align 8, !tbaa !39
  %60 = load i64, ptr %err_code, align 8, !tbaa !39
  %call71 = call i32 @ERR_isError(i64 noundef %60)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body
  %61 = load i64, ptr %err_code, align 8, !tbaa !39
  store i64 %61, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %do.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then73
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_code) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup75

cleanup75:                                        ; preds = %do.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %jobSize) #7
  %cleanup.dest76 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest76, label %cleanup90 [
    i32 0, label %cleanup.cont77
  ]

cleanup.cont77:                                   ; preds = %cleanup75
  br label %if.end78

if.end78:                                         ; preds = %cleanup.cont77, %land.lhs.true64, %lor.lhs.false61
  call void @llvm.lifetime.start.p0(i64 8, ptr %remainingToFlush) #7
  %62 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %63 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %64 = load i32, ptr %forwardInputProgress, align 4, !tbaa !4
  %tobool79 = icmp ne i32 %64, 0
  %lnot = xor i1 %tobool79, true
  %lnot.ext = zext i1 %lnot to i32
  %65 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %call80 = call i64 @ZSTDMT_flushProduced(ptr noundef %62, ptr noundef %63, i32 noundef %lnot.ext, i32 noundef %65)
  store i64 %call80, ptr %remainingToFlush, align 8, !tbaa !39
  %66 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %pos81 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %66, i32 0, i32 2
  %67 = load i64, ptr %pos81, align 8, !tbaa !109
  %68 = load ptr, ptr %input.addr, align 8, !tbaa !8
  %size82 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %68, i32 0, i32 1
  %69 = load i64, ptr %size82, align 8, !tbaa !107
  %cmp83 = icmp ult i64 %67, %69
  br i1 %cmp83, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end78
  %70 = load i64, ptr %remainingToFlush, align 8, !tbaa !39
  %cmp86 = icmp ugt i64 %70, 1
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then85
  %71 = load i64, ptr %remainingToFlush, align 8, !tbaa !39
  br label %cond.end

cond.false:                                       ; preds = %if.then85
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %71, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

if.end88:                                         ; preds = %if.end78
  %72 = load i64, ptr %remainingToFlush, align 8, !tbaa !39
  store i64 %72, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %if.end88, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %remainingToFlush) #7
  br label %cleanup90

cleanup90:                                        ; preds = %cleanup89, %cleanup75, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %forwardInputProgress) #7
  %73 = load i64, ptr %retval, align 8
  ret i64 %73
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTDMT_tryGetInputRange(ptr noundef %mtctx) #0 {
entry:
  %retval = alloca i32, align 4
  %mtctx.addr = alloca ptr, align 8
  %inUse = alloca %struct.range_t, align 8
  %spaceLeft = alloca i64, align 8
  %target = alloca i64, align 8
  %buffer = alloca %struct.buffer_s, align 8
  %start = alloca ptr, align 8
  %prefixSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %inUse) #7
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %call = call { ptr, i64 } @ZSTDMT_getInputDataInUse(ptr noundef %0)
  %1 = getelementptr inbounds { ptr, i64 }, ptr %inUse, i32 0, i32 0
  %2 = extractvalue { ptr, i64 } %call, 0
  store ptr %2, ptr %1, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %inUse, i32 0, i32 1
  %4 = extractvalue { ptr, i64 } %call, 1
  store i64 %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %spaceLeft) #7
  %5 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %5, i32 0, i32 10
  %capacity = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff, i32 0, i32 1
  %6 = load i64, ptr %capacity, align 8, !tbaa !50
  %7 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %7, i32 0, i32 10
  %pos = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff1, i32 0, i32 2
  %8 = load i64, ptr %pos, align 8, !tbaa !88
  %sub = sub i64 %6, %8
  store i64 %sub, ptr %spaceLeft, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #7
  %9 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %9, i32 0, i32 6
  %10 = load i64, ptr %targetSectionSize, align 8, !tbaa !82
  store i64 %10, ptr %target, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #7
  %11 = load i64, ptr %spaceLeft, align 8, !tbaa !39
  %12 = load i64, ptr %target, align 8, !tbaa !39
  %cmp = icmp ult i64 %11, %12
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7
  %13 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %13, i32 0, i32 10
  %buffer3 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff2, i32 0, i32 0
  %14 = load ptr, ptr %buffer3, align 8, !tbaa !34
  store ptr %14, ptr %start, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefixSize) #7
  %15 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %15, i32 0, i32 9
  %prefix = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 0
  %size = getelementptr inbounds %struct.range_t, ptr %prefix, i32 0, i32 1
  %16 = load i64, ptr %size, align 8, !tbaa !115
  store i64 %16, ptr %prefixSize, align 8, !tbaa !39
  %17 = load ptr, ptr %start, align 8, !tbaa !8
  %start4 = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 0
  store ptr %17, ptr %start4, align 8, !tbaa !44
  %18 = load i64, ptr %prefixSize, align 8, !tbaa !39
  %capacity5 = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 1
  store i64 %18, ptr %capacity5, align 8, !tbaa !51
  %19 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds { ptr, i64 }, ptr %inUse, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds { ptr, i64 }, ptr %inUse, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %call6 = call i32 @ZSTDMT_isOverlapped(ptr %20, i64 %22, ptr %24, i64 %26)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %27 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %28 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  call void @ZSTDMT_waitForLdmComplete(ptr noundef %27, ptr %29, i64 %31)
  %32 = load ptr, ptr %start, align 8, !tbaa !8
  %33 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff8 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %33, i32 0, i32 9
  %prefix9 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff8, i32 0, i32 0
  %start10 = getelementptr inbounds %struct.range_t, ptr %prefix9, i32 0, i32 0
  %34 = load ptr, ptr %start10, align 8, !tbaa !116
  %35 = load i64, ptr %prefixSize, align 8, !tbaa !39
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %32, ptr align 1 %34, i64 %35, i1 false)
  %36 = load ptr, ptr %start, align 8, !tbaa !8
  %37 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff11 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %37, i32 0, i32 9
  %prefix12 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff11, i32 0, i32 0
  %start13 = getelementptr inbounds %struct.range_t, ptr %prefix12, i32 0, i32 0
  store ptr %36, ptr %start13, align 8, !tbaa !116
  %38 = load i64, ptr %prefixSize, align 8, !tbaa !39
  %39 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff14 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %39, i32 0, i32 10
  %pos15 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff14, i32 0, i32 2
  store i64 %38, ptr %pos15, align 8, !tbaa !88
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefixSize) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17

if.end17:                                         ; preds = %cleanup.cont, %entry
  %40 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff18 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %40, i32 0, i32 10
  %buffer19 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff18, i32 0, i32 0
  %41 = load ptr, ptr %buffer19, align 8, !tbaa !34
  %42 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff20 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %42, i32 0, i32 10
  %pos21 = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff20, i32 0, i32 2
  %43 = load i64, ptr %pos21, align 8, !tbaa !88
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %43
  %start22 = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 0
  store ptr %add.ptr, ptr %start22, align 8, !tbaa !44
  %44 = load i64, ptr %target, align 8, !tbaa !39
  %capacity23 = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 1
  store i64 %44, ptr %capacity23, align 8, !tbaa !51
  %45 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds { ptr, i64 }, ptr %inUse, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds { ptr, i64 }, ptr %inUse, i32 0, i32 1
  %52 = load i64, ptr %51, align 8
  %call24 = call i32 @ZSTDMT_isOverlapped(ptr %46, i64 %48, ptr %50, i64 %52)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

if.end27:                                         ; preds = %if.end17
  %53 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %54 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  %57 = load i64, ptr %56, align 8
  call void @ZSTDMT_waitForLdmComplete(ptr noundef %53, ptr %55, i64 %57)
  %58 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff28 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %58, i32 0, i32 9
  %buffer29 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff28, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer29, ptr align 8 %buffer, i64 16, i1 false), !tbaa.struct !38
  %59 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff30 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %59, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff30, i32 0, i32 2
  store i64 0, ptr %filled, align 8, !tbaa !40
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %if.end27, %if.then26, %cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %spaceLeft) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %inUse) #7
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal { i64, i32 } @findSynchronizationPoint(ptr noundef %mtctx, ptr noundef byval(%struct.ZSTD_inBuffer_s) align 8 %input) #0 {
entry:
  %retval = alloca %struct.syncPoint_t, align 8
  %mtctx.addr = alloca ptr, align 8
  %istart = alloca ptr, align 8
  %primePower = alloca i64, align 8
  %hitMask = alloca i64, align 8
  %hash = alloca i64, align 8
  %prev = alloca ptr, align 8
  %pos4 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %toRemove = alloca i8, align 1
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #7
  %src = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 0
  %0 = load ptr, ptr %src, align 8, !tbaa !113
  %pos = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2
  %1 = load i64, ptr %pos, align 8, !tbaa !109
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %1
  store ptr %add.ptr, ptr %istart, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %primePower) #7
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %rsync = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 12
  %primePower1 = getelementptr inbounds %struct.rsyncState_t, ptr %rsync, i32 0, i32 2
  %3 = load i64, ptr %primePower1, align 8, !tbaa !86
  store i64 %3, ptr %primePower, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %hitMask) #7
  %4 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %rsync2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %4, i32 0, i32 12
  %hitMask3 = getelementptr inbounds %struct.rsyncState_t, ptr %rsync2, i32 0, i32 1
  %5 = load i64, ptr %hitMask3, align 8, !tbaa !85
  store i64 %5, ptr %hitMask, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %hash) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos4) #7
  %size = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 1
  %6 = load i64, ptr %size, align 8, !tbaa !107
  %pos5 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2
  %7 = load i64, ptr %pos5, align 8, !tbaa !109
  %sub = sub i64 %6, %7
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 6
  %9 = load i64, ptr %targetSectionSize, align 8, !tbaa !82
  %10 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %10, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 2
  %11 = load i64, ptr %filled, align 8, !tbaa !40
  %sub6 = sub i64 %9, %11
  %cmp = icmp ult i64 %sub, %sub6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %size7 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 1
  %12 = load i64, ptr %size7, align 8, !tbaa !107
  %pos8 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2
  %13 = load i64, ptr %pos8, align 8, !tbaa !109
  %sub9 = sub i64 %12, %13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetSectionSize10 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %14, i32 0, i32 6
  %15 = load i64, ptr %targetSectionSize10, align 8, !tbaa !82
  %16 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff11 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %16, i32 0, i32 9
  %filled12 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff11, i32 0, i32 2
  %17 = load i64, ptr %filled12, align 8, !tbaa !40
  %sub13 = sub i64 %15, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub9, %cond.true ], [ %sub13, %cond.false ]
  %toLoad = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 0
  store i64 %cond, ptr %toLoad, align 8, !tbaa !114
  %flush = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 1
  store i32 0, ptr %flush, align 8, !tbaa !111
  %18 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %18, i32 0, i32 5
  %rsyncable = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 12
  %19 = load i32, ptr %rsyncable, align 4, !tbaa !117
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

if.end:                                           ; preds = %cond.end
  %20 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff14 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %20, i32 0, i32 9
  %filled15 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff14, i32 0, i32 2
  %21 = load i64, ptr %filled15, align 8, !tbaa !40
  %size16 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 1
  %22 = load i64, ptr %size16, align 8, !tbaa !107
  %add = add i64 %21, %22
  %pos17 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2
  %23 = load i64, ptr %pos17, align 8, !tbaa !109
  %sub18 = sub i64 %add, %23
  %cmp19 = icmp ult i64 %sub18, 131072
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

if.end21:                                         ; preds = %if.end
  %24 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff22 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %24, i32 0, i32 9
  %filled23 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff22, i32 0, i32 2
  %25 = load i64, ptr %filled23, align 8, !tbaa !40
  %toLoad24 = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 0
  %26 = load i64, ptr %toLoad24, align 8, !tbaa !114
  %add25 = add i64 %25, %26
  %cmp26 = icmp ult i64 %add25, 32
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

if.end28:                                         ; preds = %if.end21
  %27 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff29 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %27, i32 0, i32 9
  %filled30 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff29, i32 0, i32 2
  %28 = load i64, ptr %filled30, align 8, !tbaa !40
  %cmp31 = icmp ult i64 %28, 131072
  br i1 %cmp31, label %if.then32, label %if.else50

if.then32:                                        ; preds = %if.end28
  %29 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff33 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %29, i32 0, i32 9
  %filled34 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff33, i32 0, i32 2
  %30 = load i64, ptr %filled34, align 8, !tbaa !40
  %sub35 = sub i64 131072, %30
  store i64 %sub35, ptr %pos4, align 8, !tbaa !39
  %31 = load i64, ptr %pos4, align 8, !tbaa !39
  %cmp36 = icmp uge i64 %31, 32
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then32
  %32 = load ptr, ptr %istart, align 8, !tbaa !8
  %33 = load i64, ptr %pos4, align 8, !tbaa !39
  %add.ptr38 = getelementptr inbounds i8, ptr %32, i64 %33
  %add.ptr39 = getelementptr inbounds i8, ptr %add.ptr38, i64 -32
  store ptr %add.ptr39, ptr %prev, align 8, !tbaa !8
  %34 = load ptr, ptr %prev, align 8, !tbaa !8
  %call = call i64 @ZSTD_rollingHash_compute(ptr noundef %34, i64 noundef 32)
  store i64 %call, ptr %hash, align 8, !tbaa !39
  br label %if.end49

if.else:                                          ; preds = %if.then32
  %35 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff40 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %35, i32 0, i32 9
  %buffer = getelementptr inbounds %struct.inBuff_t, ptr %inBuff40, i32 0, i32 1
  %start = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 0
  %36 = load ptr, ptr %start, align 8, !tbaa !110
  %37 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff41 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %37, i32 0, i32 9
  %filled42 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff41, i32 0, i32 2
  %38 = load i64, ptr %filled42, align 8, !tbaa !40
  %add.ptr43 = getelementptr inbounds i8, ptr %36, i64 %38
  %add.ptr44 = getelementptr inbounds i8, ptr %add.ptr43, i64 -32
  store ptr %add.ptr44, ptr %prev, align 8, !tbaa !8
  %39 = load ptr, ptr %prev, align 8, !tbaa !8
  %40 = load i64, ptr %pos4, align 8, !tbaa !39
  %add.ptr45 = getelementptr inbounds i8, ptr %39, i64 %40
  %41 = load i64, ptr %pos4, align 8, !tbaa !39
  %sub46 = sub i64 32, %41
  %call47 = call i64 @ZSTD_rollingHash_compute(ptr noundef %add.ptr45, i64 noundef %sub46)
  store i64 %call47, ptr %hash, align 8, !tbaa !39
  %42 = load i64, ptr %hash, align 8, !tbaa !39
  %43 = load ptr, ptr %istart, align 8, !tbaa !8
  %44 = load i64, ptr %pos4, align 8, !tbaa !39
  %call48 = call i64 @ZSTD_rollingHash_append(i64 noundef %42, ptr noundef %43, i64 noundef %44)
  store i64 %call48, ptr %hash, align 8, !tbaa !39
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then37
  br label %if.end64

if.else50:                                        ; preds = %if.end28
  store i64 0, ptr %pos4, align 8, !tbaa !39
  %45 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff51 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %45, i32 0, i32 9
  %buffer52 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff51, i32 0, i32 1
  %start53 = getelementptr inbounds %struct.buffer_s, ptr %buffer52, i32 0, i32 0
  %46 = load ptr, ptr %start53, align 8, !tbaa !110
  %47 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff54 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %47, i32 0, i32 9
  %filled55 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff54, i32 0, i32 2
  %48 = load i64, ptr %filled55, align 8, !tbaa !40
  %add.ptr56 = getelementptr inbounds i8, ptr %46, i64 %48
  %add.ptr57 = getelementptr inbounds i8, ptr %add.ptr56, i64 -32
  store ptr %add.ptr57, ptr %prev, align 8, !tbaa !8
  %49 = load ptr, ptr %prev, align 8, !tbaa !8
  %call58 = call i64 @ZSTD_rollingHash_compute(ptr noundef %49, i64 noundef 32)
  store i64 %call58, ptr %hash, align 8, !tbaa !39
  %50 = load i64, ptr %hash, align 8, !tbaa !39
  %51 = load i64, ptr %hitMask, align 8, !tbaa !39
  %and = and i64 %50, %51
  %52 = load i64, ptr %hitMask, align 8, !tbaa !39
  %cmp59 = icmp eq i64 %and, %52
  br i1 %cmp59, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.else50
  %toLoad61 = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 0
  store i64 0, ptr %toLoad61, align 8, !tbaa !114
  %flush62 = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 1
  store i32 1, ptr %flush62, align 8, !tbaa !111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

if.end63:                                         ; preds = %if.else50
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end49
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end64
  %53 = load i64, ptr %pos4, align 8, !tbaa !39
  %toLoad65 = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 0
  %54 = load i64, ptr %toLoad65, align 8, !tbaa !114
  %cmp66 = icmp ult i64 %53, %54
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %toRemove) #7
  %55 = load i64, ptr %pos4, align 8, !tbaa !39
  %cmp67 = icmp ult i64 %55, 32
  br i1 %cmp67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %for.body
  %56 = load ptr, ptr %prev, align 8, !tbaa !8
  %57 = load i64, ptr %pos4, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8, ptr %56, i64 %57
  %58 = load i8, ptr %arrayidx, align 1, !tbaa !57
  %conv = zext i8 %58 to i32
  br label %cond.end73

cond.false69:                                     ; preds = %for.body
  %59 = load ptr, ptr %istart, align 8, !tbaa !8
  %60 = load i64, ptr %pos4, align 8, !tbaa !39
  %sub70 = sub i64 %60, 32
  %arrayidx71 = getelementptr inbounds i8, ptr %59, i64 %sub70
  %61 = load i8, ptr %arrayidx71, align 1, !tbaa !57
  %conv72 = zext i8 %61 to i32
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false69, %cond.true68
  %cond74 = phi i32 [ %conv, %cond.true68 ], [ %conv72, %cond.false69 ]
  %conv75 = trunc i32 %cond74 to i8
  store i8 %conv75, ptr %toRemove, align 1, !tbaa !57
  %62 = load i64, ptr %hash, align 8, !tbaa !39
  %63 = load i8, ptr %toRemove, align 1, !tbaa !57
  %64 = load ptr, ptr %istart, align 8, !tbaa !8
  %65 = load i64, ptr %pos4, align 8, !tbaa !39
  %arrayidx76 = getelementptr inbounds i8, ptr %64, i64 %65
  %66 = load i8, ptr %arrayidx76, align 1, !tbaa !57
  %67 = load i64, ptr %primePower, align 8, !tbaa !39
  %call77 = call i64 @ZSTD_rollingHash_rotate(i64 noundef %62, i8 noundef zeroext %63, i8 noundef zeroext %66, i64 noundef %67)
  store i64 %call77, ptr %hash, align 8, !tbaa !39
  %68 = load i64, ptr %hash, align 8, !tbaa !39
  %69 = load i64, ptr %hitMask, align 8, !tbaa !39
  %and78 = and i64 %68, %69
  %70 = load i64, ptr %hitMask, align 8, !tbaa !39
  %cmp79 = icmp eq i64 %and78, %70
  br i1 %cmp79, label %if.then81, label %if.end85

if.then81:                                        ; preds = %cond.end73
  %71 = load i64, ptr %pos4, align 8, !tbaa !39
  %add82 = add i64 %71, 1
  %toLoad83 = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 0
  store i64 %add82, ptr %toLoad83, align 8, !tbaa !114
  %flush84 = getelementptr inbounds %struct.syncPoint_t, ptr %retval, i32 0, i32 1
  store i32 1, ptr %flush84, align 8, !tbaa !111
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end85:                                         ; preds = %cond.end73
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then81
  call void @llvm.lifetime.end.p0(i64 1, ptr %toRemove) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %72 = load i64, ptr %pos4, align 8, !tbaa !39
  %inc = add i64 %72, 1
  store i64 %inc, ptr %pos4, align 8, !tbaa !39
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup86

cleanup86:                                        ; preds = %for.end, %if.then60, %if.then27, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hash) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hitMask) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %primePower) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #7
  %73 = load { i64, i32 }, ptr %retval, align 8
  ret { i64, i32 } %73

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_createCompressionJob(ptr noundef %mtctx, i64 noundef %srcSize, i32 noundef %endOp) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %endOp.addr = alloca i32, align 4
  %jobID = alloca i32, align 4
  %endFrame = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %src = alloca ptr, align 8
  %newPrefixSize = alloca i64, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  store i64 %srcSize, ptr %srcSize.addr, align 8, !tbaa !39
  store i32 %endOp, ptr %endOp.addr, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobID) #7
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 15
  %1 = load i32, ptr %nextJobID, align 8, !tbaa !65
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %and = and i32 %1, %3
  store i32 %and, ptr %jobID, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %endFrame) #7
  %4 = load i32, ptr %endOp.addr, align 4, !tbaa !57
  %cmp = icmp eq i32 %4, 2
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %endFrame, align 4, !tbaa !4
  %5 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %5, i32 0, i32 15
  %6 = load i32, ptr %nextJobID1, align 8, !tbaa !65
  %7 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %7, i32 0, i32 14
  %8 = load i32, ptr %doneJobID, align 4, !tbaa !69
  %9 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %9, i32 0, i32 13
  %10 = load i32, ptr %jobIDMask2, align 8, !tbaa !29
  %add = add i32 %8, %10
  %cmp3 = icmp ugt i32 %6, %add
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobReady = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %11, i32 0, i32 8
  %12 = load i32, ptr %jobReady, align 8, !tbaa !68
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end124, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #7
  %13 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %13, i32 0, i32 9
  %buffer = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 1
  %start = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 0
  %14 = load ptr, ptr %start, align 8, !tbaa !110
  store ptr %14, ptr %src, align 8, !tbaa !8
  %15 = load ptr, ptr %src, align 8, !tbaa !8
  %16 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %jobs, align 8, !tbaa !28
  %18 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %17, i64 %idxprom
  %src6 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx, i32 0, i32 10
  %start7 = getelementptr inbounds %struct.range_t, ptr %src6, i32 0, i32 0
  store ptr %15, ptr %start7, align 8, !tbaa !118
  %19 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %20 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs8 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %jobs8, align 8, !tbaa !28
  %22 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom9 = zext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %21, i64 %idxprom9
  %src11 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx10, i32 0, i32 10
  %size = getelementptr inbounds %struct.range_t, ptr %src11, i32 0, i32 1
  store i64 %19, ptr %size, align 8, !tbaa !72
  %23 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs12 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %jobs12, align 8, !tbaa !28
  %25 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom13 = zext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %24, i64 %idxprom13
  %prefix = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx14, i32 0, i32 9
  %26 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff15 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %26, i32 0, i32 9
  %prefix16 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff15, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prefix, ptr align 8 %prefix16, i64 16, i1 false), !tbaa.struct !38
  %27 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs17 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %jobs17, align 8, !tbaa !28
  %29 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom18 = zext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %28, i64 %idxprom18
  %consumed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx19, i32 0, i32 0
  store i64 0, ptr %consumed, align 8, !tbaa !73
  %30 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs20 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %jobs20, align 8, !tbaa !28
  %32 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom21 = zext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %31, i64 %idxprom21
  %cSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx22, i32 0, i32 1
  store i64 0, ptr %cSize, align 8, !tbaa !70
  %33 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs23 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %jobs23, align 8, !tbaa !28
  %35 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom24 = zext i32 %35 to i64
  %arrayidx25 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %34, i64 %idxprom24
  %params = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx25, i32 0, i32 14
  %36 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params26 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %36, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params, ptr align 8 %params26, i64 176, i1 false), !tbaa.struct !78
  %37 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID27 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %37, i32 0, i32 15
  %38 = load i32, ptr %nextJobID27, align 8, !tbaa !65
  %cmp28 = icmp eq i32 %38, 0
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then5
  %39 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cdict = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %39, i32 0, i32 23
  %40 = load ptr, ptr %cdict, align 8, !tbaa !80
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %40, %cond.true ], [ null, %cond.false ]
  %41 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs30 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %jobs30, align 8, !tbaa !28
  %43 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom31 = zext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %42, i64 %idxprom31
  %cdict33 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx32, i32 0, i32 15
  store ptr %cond, ptr %cdict33, align 8, !tbaa !119
  %44 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameContentSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %44, i32 0, i32 18
  %45 = load i64, ptr %frameContentSize, align 8, !tbaa !79
  %46 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs34 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %jobs34, align 8, !tbaa !28
  %48 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom35 = zext i32 %48 to i64
  %arrayidx36 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %47, i64 %idxprom35
  %fullFrameSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx36, i32 0, i32 16
  store i64 %45, ptr %fullFrameSize, align 8, !tbaa !120
  %49 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs37 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %jobs37, align 8, !tbaa !28
  %51 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom38 = zext i32 %51 to i64
  %arrayidx39 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %50, i64 %idxprom38
  %dstBuff = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx39, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dstBuff, ptr align 8 @g_nullBuffer, i64 16, i1 false), !tbaa.struct !38
  %52 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cctxPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %52, i32 0, i32 3
  %53 = load ptr, ptr %cctxPool, align 8, !tbaa !31
  %54 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs40 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %jobs40, align 8, !tbaa !28
  %56 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom41 = zext i32 %56 to i64
  %arrayidx42 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %55, i64 %idxprom41
  %cctxPool43 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx42, i32 0, i32 4
  store ptr %53, ptr %cctxPool43, align 8, !tbaa !121
  %57 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %bufPool, align 8, !tbaa !30
  %59 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs44 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %jobs44, align 8, !tbaa !28
  %61 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom45 = zext i32 %61 to i64
  %arrayidx46 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %60, i64 %idxprom45
  %bufPool47 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx46, i32 0, i32 5
  store ptr %58, ptr %bufPool47, align 8, !tbaa !122
  %62 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %seqPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %seqPool, align 8, !tbaa !32
  %64 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs48 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %jobs48, align 8, !tbaa !28
  %66 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom49 = zext i32 %66 to i64
  %arrayidx50 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %65, i64 %idxprom49
  %seqPool51 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx50, i32 0, i32 6
  store ptr %63, ptr %seqPool51, align 8, !tbaa !123
  %67 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %serial = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %67, i32 0, i32 11
  %68 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs52 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %jobs52, align 8, !tbaa !28
  %70 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom53 = zext i32 %70 to i64
  %arrayidx54 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %69, i64 %idxprom53
  %serial55 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx54, i32 0, i32 7
  store ptr %serial, ptr %serial55, align 8, !tbaa !124
  %71 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID56 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %71, i32 0, i32 15
  %72 = load i32, ptr %nextJobID56, align 8, !tbaa !65
  %73 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs57 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %jobs57, align 8, !tbaa !28
  %75 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom58 = zext i32 %75 to i64
  %arrayidx59 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %74, i64 %idxprom58
  %jobID60 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx59, i32 0, i32 11
  store i32 %72, ptr %jobID60, align 8, !tbaa !125
  %76 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID61 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %76, i32 0, i32 15
  %77 = load i32, ptr %nextJobID61, align 8, !tbaa !65
  %cmp62 = icmp eq i32 %77, 0
  %conv63 = zext i1 %cmp62 to i32
  %78 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs64 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %jobs64, align 8, !tbaa !28
  %80 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom65 = zext i32 %80 to i64
  %arrayidx66 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %79, i64 %idxprom65
  %firstJob = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx66, i32 0, i32 12
  store i32 %conv63, ptr %firstJob, align 4, !tbaa !126
  %81 = load i32, ptr %endFrame, align 4, !tbaa !4
  %82 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs67 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %jobs67, align 8, !tbaa !28
  %84 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom68 = zext i32 %84 to i64
  %arrayidx69 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %83, i64 %idxprom68
  %lastJob = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx69, i32 0, i32 13
  store i32 %81, ptr %lastJob, align 8, !tbaa !127
  %85 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params70 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %85, i32 0, i32 5
  %fParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params70, i32 0, i32 2
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameParameters, ptr %fParams, i32 0, i32 1
  %86 = load i32, ptr %checksumFlag, align 4, !tbaa !128
  %tobool71 = icmp ne i32 %86, 0
  br i1 %tobool71, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %cond.end
  %87 = load i32, ptr %endFrame, align 4, !tbaa !4
  %tobool72 = icmp ne i32 %87, 0
  br i1 %tobool72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %88 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID73 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %88, i32 0, i32 15
  %89 = load i32, ptr %nextJobID73, align 8, !tbaa !65
  %cmp74 = icmp ugt i32 %89, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.end
  %90 = phi i1 [ false, %land.lhs.true ], [ false, %cond.end ], [ %cmp74, %land.rhs ]
  %land.ext = zext i1 %90 to i32
  %91 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs76 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %jobs76, align 8, !tbaa !28
  %93 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom77 = zext i32 %93 to i64
  %arrayidx78 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %92, i64 %idxprom77
  %frameChecksumNeeded = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx78, i32 0, i32 18
  store i32 %land.ext, ptr %frameChecksumNeeded, align 8, !tbaa !129
  %94 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs79 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %jobs79, align 8, !tbaa !28
  %96 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom80 = zext i32 %96 to i64
  %arrayidx81 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %95, i64 %idxprom80
  %dstFlushed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx81, i32 0, i32 17
  store i64 0, ptr %dstFlushed, align 8, !tbaa !71
  %97 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %98 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %roundBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %98, i32 0, i32 10
  %pos = getelementptr inbounds %struct.roundBuff_t, ptr %roundBuff, i32 0, i32 2
  %99 = load i64, ptr %pos, align 8, !tbaa !88
  %add82 = add i64 %99, %97
  store i64 %add82, ptr %pos, align 8, !tbaa !88
  %100 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff83 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %100, i32 0, i32 9
  %buffer84 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff83, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer84, ptr align 8 @g_nullBuffer, i64 16, i1 false), !tbaa.struct !38
  %101 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff85 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %101, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff85, i32 0, i32 2
  store i64 0, ptr %filled, align 8, !tbaa !40
  %102 = load i32, ptr %endFrame, align 4, !tbaa !4
  %tobool86 = icmp ne i32 %102, 0
  br i1 %tobool86, label %if.else, label %if.then87

if.then87:                                        ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %newPrefixSize) #7
  %103 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %104 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetPrefixSize = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %104, i32 0, i32 7
  %105 = load i64, ptr %targetPrefixSize, align 8, !tbaa !81
  %cmp88 = icmp ult i64 %103, %105
  br i1 %cmp88, label %cond.true90, label %cond.false91

cond.true90:                                      ; preds = %if.then87
  %106 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  br label %cond.end93

cond.false91:                                     ; preds = %if.then87
  %107 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %targetPrefixSize92 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %107, i32 0, i32 7
  %108 = load i64, ptr %targetPrefixSize92, align 8, !tbaa !81
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false91, %cond.true90
  %cond94 = phi i64 [ %106, %cond.true90 ], [ %108, %cond.false91 ]
  store i64 %cond94, ptr %newPrefixSize, align 8, !tbaa !39
  %109 = load ptr, ptr %src, align 8, !tbaa !8
  %110 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %add.ptr = getelementptr inbounds i8, ptr %109, i64 %110
  %111 = load i64, ptr %newPrefixSize, align 8, !tbaa !39
  %idx.neg = sub i64 0, %111
  %add.ptr95 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.neg
  %112 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff96 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %112, i32 0, i32 9
  %prefix97 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff96, i32 0, i32 0
  %start98 = getelementptr inbounds %struct.range_t, ptr %prefix97, i32 0, i32 0
  store ptr %add.ptr95, ptr %start98, align 8, !tbaa !116
  %113 = load i64, ptr %newPrefixSize, align 8, !tbaa !39
  %114 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff99 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %114, i32 0, i32 9
  %prefix100 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff99, i32 0, i32 0
  %size101 = getelementptr inbounds %struct.range_t, ptr %prefix100, i32 0, i32 1
  store i64 %113, ptr %size101, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 8, ptr %newPrefixSize) #7
  br label %if.end112

if.else:                                          ; preds = %land.end
  %115 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff102 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %115, i32 0, i32 9
  %prefix103 = getelementptr inbounds %struct.inBuff_t, ptr %inBuff102, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %prefix103, ptr align 8 @kNullRange, i64 16, i1 false), !tbaa.struct !38
  %116 = load i32, ptr %endFrame, align 4, !tbaa !4
  %117 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameEnded = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %117, i32 0, i32 16
  store i32 %116, ptr %frameEnded, align 4, !tbaa !89
  %118 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID104 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %118, i32 0, i32 15
  %119 = load i32, ptr %nextJobID104, align 8, !tbaa !65
  %cmp105 = icmp eq i32 %119, 0
  br i1 %cmp105, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.else
  %120 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params108 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %120, i32 0, i32 5
  %fParams109 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params108, i32 0, i32 2
  %checksumFlag110 = getelementptr inbounds %struct.ZSTD_frameParameters, ptr %fParams109, i32 0, i32 1
  store i32 0, ptr %checksumFlag110, align 4, !tbaa !128
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.else
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %cond.end93
  %121 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %cmp113 = icmp eq i64 %121, 0
  br i1 %cmp113, label %land.lhs.true115, label %if.end123

land.lhs.true115:                                 ; preds = %if.end112
  %122 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID116 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %122, i32 0, i32 15
  %123 = load i32, ptr %nextJobID116, align 8, !tbaa !65
  %cmp117 = icmp ugt i32 %123, 0
  br i1 %cmp117, label %if.then119, label %if.end123

if.then119:                                       ; preds = %land.lhs.true115
  %124 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs120 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %jobs120, align 8, !tbaa !28
  %126 = load i32, ptr %jobID, align 4, !tbaa !4
  %idx.ext = zext i32 %126 to i64
  %add.ptr121 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %125, i64 %idx.ext
  call void @ZSTDMT_writeLastEmptyBlock(ptr noundef %add.ptr121)
  %127 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID122 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %127, i32 0, i32 15
  %128 = load i32, ptr %nextJobID122, align 8, !tbaa !65
  %inc = add i32 %128, 1
  store i32 %inc, ptr %nextJobID122, align 8, !tbaa !65
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end123:                                        ; preds = %land.lhs.true115, %if.end112
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then119
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup136 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end124

if.end124:                                        ; preds = %cleanup.cont, %if.end
  %129 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %factory = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %factory, align 8, !tbaa !10
  %131 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs125 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %jobs125, align 8, !tbaa !28
  %133 = load i32, ptr %jobID, align 4, !tbaa !4
  %idxprom126 = zext i32 %133 to i64
  %arrayidx127 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %132, i64 %idxprom126
  %call = call i32 @POOL_tryAdd(ptr noundef %130, ptr noundef @ZSTDMT_compressionJob, ptr noundef %arrayidx127)
  %tobool128 = icmp ne i32 %call, 0
  br i1 %tobool128, label %if.then129, label %if.else133

if.then129:                                       ; preds = %if.end124
  %134 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID130 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %134, i32 0, i32 15
  %135 = load i32, ptr %nextJobID130, align 8, !tbaa !65
  %inc131 = add i32 %135, 1
  store i32 %inc131, ptr %nextJobID130, align 8, !tbaa !65
  %136 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobReady132 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %136, i32 0, i32 8
  store i32 0, ptr %jobReady132, align 8, !tbaa !68
  br label %if.end135

if.else133:                                       ; preds = %if.end124
  %137 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobReady134 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %137, i32 0, i32 8
  store i32 1, ptr %jobReady134, align 8, !tbaa !68
  br label %if.end135

if.end135:                                        ; preds = %if.else133, %if.then129
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup136

cleanup136:                                       ; preds = %if.end135, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %endFrame) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobID) #7
  %138 = load i64, ptr %retval, align 8
  ret i64 %138
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_flushProduced(ptr noundef %mtctx, ptr noundef %output, i32 noundef %blockToFlush, i32 noundef %end) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %blockToFlush.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %wJobID = alloca i32, align 4
  %cSize25 = alloca i64, align 8
  %srcConsumed = alloca i64, align 8
  %srcSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %checksum = alloca i32, align 4
  %toFlush = alloca i64, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !8
  store i32 %blockToFlush, ptr %blockToFlush.addr, align 4, !tbaa !4
  store i32 %end, ptr %end.addr, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr %wJobID) #7
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %doneJobID, align 4, !tbaa !69
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %and = and i32 %1, %3
  store i32 %and, ptr %wJobID, align 4, !tbaa !4
  %4 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %jobs, align 8, !tbaa !28
  %6 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %5, i64 %idxprom
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx, i32 0, i32 2
  %7 = load i32, ptr %blockToFlush.addr, align 4, !tbaa !4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 14
  %9 = load i32, ptr %doneJobID1, align 4, !tbaa !69
  %10 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %10, i32 0, i32 15
  %11 = load i32, ptr %nextJobID, align 8, !tbaa !65
  %cmp = icmp ult i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %12 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %jobs2, align 8, !tbaa !28
  %14 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom3 = zext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %13, i64 %idxprom3
  %dstFlushed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx4, i32 0, i32 17
  %15 = load i64, ptr %dstFlushed, align 8, !tbaa !71
  %16 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs5 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %jobs5, align 8, !tbaa !28
  %18 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom6 = zext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %17, i64 %idxprom6
  %cSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx7, i32 0, i32 1
  %19 = load i64, ptr %cSize, align 8, !tbaa !70
  %cmp8 = icmp eq i64 %15, %19
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs9 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %jobs9, align 8, !tbaa !28
  %22 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom10 = zext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %21, i64 %idxprom10
  %consumed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx11, i32 0, i32 0
  %23 = load i64, ptr %consumed, align 8, !tbaa !73
  %24 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs12 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %jobs12, align 8, !tbaa !28
  %26 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom13 = zext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %25, i64 %idxprom13
  %src = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx14, i32 0, i32 10
  %size = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %27 = load i64, ptr %size, align 8, !tbaa !72
  %cmp15 = icmp eq i64 %23, %27
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %28 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs17 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %jobs17, align 8, !tbaa !28
  %30 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom18 = zext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %29, i64 %idxprom18
  %job_cond = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx19, i32 0, i32 3
  %31 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs20 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %jobs20, align 8, !tbaa !28
  %33 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom21 = zext i32 %33 to i64
  %arrayidx22 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %32, i64 %idxprom21
  %job_mutex23 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx22, i32 0, i32 2
  br label %while.cond

while.end:                                        ; preds = %if.then16, %while.cond
  br label %if.end24

if.end24:                                         ; preds = %while.end, %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %cSize25) #7
  %34 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs26 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %jobs26, align 8, !tbaa !28
  %36 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom27 = zext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %35, i64 %idxprom27
  %cSize29 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx28, i32 0, i32 1
  %37 = load i64, ptr %cSize29, align 8, !tbaa !70
  store i64 %37, ptr %cSize25, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %srcConsumed) #7
  %38 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs30 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %jobs30, align 8, !tbaa !28
  %40 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom31 = zext i32 %40 to i64
  %arrayidx32 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %39, i64 %idxprom31
  %consumed33 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx32, i32 0, i32 0
  %41 = load i64, ptr %consumed33, align 8, !tbaa !73
  store i64 %41, ptr %srcConsumed, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %srcSize) #7
  %42 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs34 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %jobs34, align 8, !tbaa !28
  %44 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom35 = zext i32 %44 to i64
  %arrayidx36 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %43, i64 %idxprom35
  %src37 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx36, i32 0, i32 10
  %size38 = getelementptr inbounds %struct.range_t, ptr %src37, i32 0, i32 1
  %45 = load i64, ptr %size38, align 8, !tbaa !72
  store i64 %45, ptr %srcSize, align 8, !tbaa !39
  %46 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs39 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %jobs39, align 8, !tbaa !28
  %48 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom40 = zext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %47, i64 %idxprom40
  %job_mutex42 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx41, i32 0, i32 2
  %49 = load i64, ptr %cSize25, align 8, !tbaa !39
  %call = call i32 @ERR_isError(i64 noundef %49)
  %tobool43 = icmp ne i32 %call, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end24
  %50 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  call void @ZSTDMT_waitForAllJobsCompleted(ptr noundef %50)
  %51 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  call void @ZSTDMT_releaseAllJobResources(ptr noundef %51)
  %52 = load i64, ptr %cSize25, align 8, !tbaa !39
  store i64 %52, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end24
  %53 = load i64, ptr %srcConsumed, align 8, !tbaa !39
  %54 = load i64, ptr %srcSize, align 8, !tbaa !39
  %cmp46 = icmp eq i64 %53, %54
  br i1 %cmp46, label %land.lhs.true47, label %if.end70

land.lhs.true47:                                  ; preds = %if.end45
  %55 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs48 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %jobs48, align 8, !tbaa !28
  %57 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom49 = zext i32 %57 to i64
  %arrayidx50 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %56, i64 %idxprom49
  %frameChecksumNeeded = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx50, i32 0, i32 18
  %58 = load i32, ptr %frameChecksumNeeded, align 8, !tbaa !129
  %tobool51 = icmp ne i32 %58, 0
  br i1 %tobool51, label %if.then52, label %if.end70

if.then52:                                        ; preds = %land.lhs.true47
  call void @llvm.lifetime.start.p0(i64 4, ptr %checksum) #7
  %59 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %serial = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %59, i32 0, i32 11
  %xxhState = getelementptr inbounds %struct.serialState_t, ptr %serial, i32 0, i32 4
  %call53 = call i64 @ZSTD_XXH64_digest(ptr noundef %xxhState)
  %conv = trunc i64 %call53 to i32
  store i32 %conv, ptr %checksum, align 4, !tbaa !4
  %60 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs54 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %jobs54, align 8, !tbaa !28
  %62 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom55 = zext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %61, i64 %idxprom55
  %dstBuff = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx56, i32 0, i32 8
  %start = getelementptr inbounds %struct.buffer_s, ptr %dstBuff, i32 0, i32 0
  %63 = load ptr, ptr %start, align 8, !tbaa !130
  %64 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs57 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %jobs57, align 8, !tbaa !28
  %66 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom58 = zext i32 %66 to i64
  %arrayidx59 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %65, i64 %idxprom58
  %cSize60 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx59, i32 0, i32 1
  %67 = load i64, ptr %cSize60, align 8, !tbaa !70
  %add.ptr = getelementptr inbounds i8, ptr %63, i64 %67
  %68 = load i32, ptr %checksum, align 4, !tbaa !4
  call void @MEM_writeLE32(ptr noundef %add.ptr, i32 noundef %68)
  %69 = load i64, ptr %cSize25, align 8, !tbaa !39
  %add = add i64 %69, 4
  store i64 %add, ptr %cSize25, align 8, !tbaa !39
  %70 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs61 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %jobs61, align 8, !tbaa !28
  %72 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom62 = zext i32 %72 to i64
  %arrayidx63 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %71, i64 %idxprom62
  %cSize64 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx63, i32 0, i32 1
  %73 = load i64, ptr %cSize64, align 8, !tbaa !70
  %add65 = add i64 %73, 4
  store i64 %add65, ptr %cSize64, align 8, !tbaa !70
  %74 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs66 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %jobs66, align 8, !tbaa !28
  %76 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom67 = zext i32 %76 to i64
  %arrayidx68 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %75, i64 %idxprom67
  %frameChecksumNeeded69 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx68, i32 0, i32 18
  store i32 0, ptr %frameChecksumNeeded69, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 4, ptr %checksum) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then52, %land.lhs.true47, %if.end45
  %77 = load i64, ptr %cSize25, align 8, !tbaa !39
  %cmp71 = icmp ugt i64 %77, 0
  br i1 %cmp71, label %if.then73, label %if.end140

if.then73:                                        ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 8, ptr %toFlush) #7
  %78 = load i64, ptr %cSize25, align 8, !tbaa !39
  %79 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs74 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %jobs74, align 8, !tbaa !28
  %81 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom75 = zext i32 %81 to i64
  %arrayidx76 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %80, i64 %idxprom75
  %dstFlushed77 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx76, i32 0, i32 17
  %82 = load i64, ptr %dstFlushed77, align 8, !tbaa !71
  %sub = sub i64 %78, %82
  %83 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %size78 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %83, i32 0, i32 1
  %84 = load i64, ptr %size78, align 8, !tbaa !131
  %85 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %pos = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %85, i32 0, i32 2
  %86 = load i64, ptr %pos, align 8, !tbaa !133
  %sub79 = sub i64 %84, %86
  %cmp80 = icmp ult i64 %sub, %sub79
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then73
  %87 = load i64, ptr %cSize25, align 8, !tbaa !39
  %88 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs82 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %88, i32 0, i32 1
  %89 = load ptr, ptr %jobs82, align 8, !tbaa !28
  %90 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom83 = zext i32 %90 to i64
  %arrayidx84 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %89, i64 %idxprom83
  %dstFlushed85 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx84, i32 0, i32 17
  %91 = load i64, ptr %dstFlushed85, align 8, !tbaa !71
  %sub86 = sub i64 %87, %91
  br label %cond.end

cond.false:                                       ; preds = %if.then73
  %92 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %size87 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %92, i32 0, i32 1
  %93 = load i64, ptr %size87, align 8, !tbaa !131
  %94 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %pos88 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %94, i32 0, i32 2
  %95 = load i64, ptr %pos88, align 8, !tbaa !133
  %sub89 = sub i64 %93, %95
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub86, %cond.true ], [ %sub89, %cond.false ]
  store i64 %cond, ptr %toFlush, align 8, !tbaa !39
  %96 = load i64, ptr %toFlush, align 8, !tbaa !39
  %cmp90 = icmp ugt i64 %96, 0
  br i1 %cmp90, label %if.then92, label %if.end105

if.then92:                                        ; preds = %cond.end
  %97 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %dst = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %dst, align 8, !tbaa !134
  %99 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %pos93 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %99, i32 0, i32 2
  %100 = load i64, ptr %pos93, align 8, !tbaa !133
  %add.ptr94 = getelementptr inbounds i8, ptr %98, i64 %100
  %101 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs95 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %jobs95, align 8, !tbaa !28
  %103 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom96 = zext i32 %103 to i64
  %arrayidx97 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %102, i64 %idxprom96
  %dstBuff98 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx97, i32 0, i32 8
  %start99 = getelementptr inbounds %struct.buffer_s, ptr %dstBuff98, i32 0, i32 0
  %104 = load ptr, ptr %start99, align 8, !tbaa !130
  %105 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs100 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %jobs100, align 8, !tbaa !28
  %107 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom101 = zext i32 %107 to i64
  %arrayidx102 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %106, i64 %idxprom101
  %dstFlushed103 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx102, i32 0, i32 17
  %108 = load i64, ptr %dstFlushed103, align 8, !tbaa !71
  %add.ptr104 = getelementptr inbounds i8, ptr %104, i64 %108
  %109 = load i64, ptr %toFlush, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr94, ptr align 1 %add.ptr104, i64 %109, i1 false)
  br label %if.end105

if.end105:                                        ; preds = %if.then92, %cond.end
  %110 = load i64, ptr %toFlush, align 8, !tbaa !39
  %111 = load ptr, ptr %output.addr, align 8, !tbaa !8
  %pos106 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %111, i32 0, i32 2
  %112 = load i64, ptr %pos106, align 8, !tbaa !133
  %add107 = add i64 %112, %110
  store i64 %add107, ptr %pos106, align 8, !tbaa !133
  %113 = load i64, ptr %toFlush, align 8, !tbaa !39
  %114 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs108 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %114, i32 0, i32 1
  %115 = load ptr, ptr %jobs108, align 8, !tbaa !28
  %116 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom109 = zext i32 %116 to i64
  %arrayidx110 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %115, i64 %idxprom109
  %dstFlushed111 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx110, i32 0, i32 17
  %117 = load i64, ptr %dstFlushed111, align 8, !tbaa !71
  %add112 = add i64 %117, %113
  store i64 %add112, ptr %dstFlushed111, align 8, !tbaa !71
  %118 = load i64, ptr %srcConsumed, align 8, !tbaa !39
  %119 = load i64, ptr %srcSize, align 8, !tbaa !39
  %cmp113 = icmp eq i64 %118, %119
  br i1 %cmp113, label %land.lhs.true115, label %if.end139

land.lhs.true115:                                 ; preds = %if.end105
  %120 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs116 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %120, i32 0, i32 1
  %121 = load ptr, ptr %jobs116, align 8, !tbaa !28
  %122 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom117 = zext i32 %122 to i64
  %arrayidx118 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %121, i64 %idxprom117
  %dstFlushed119 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx118, i32 0, i32 17
  %123 = load i64, ptr %dstFlushed119, align 8, !tbaa !71
  %124 = load i64, ptr %cSize25, align 8, !tbaa !39
  %cmp120 = icmp eq i64 %123, %124
  br i1 %cmp120, label %if.then122, label %if.end139

if.then122:                                       ; preds = %land.lhs.true115
  %125 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %125, i32 0, i32 2
  %126 = load ptr, ptr %bufPool, align 8, !tbaa !30
  %127 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs123 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %127, i32 0, i32 1
  %128 = load ptr, ptr %jobs123, align 8, !tbaa !28
  %129 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom124 = zext i32 %129 to i64
  %arrayidx125 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %128, i64 %idxprom124
  %dstBuff126 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx125, i32 0, i32 8
  %130 = getelementptr inbounds { ptr, i64 }, ptr %dstBuff126, i32 0, i32 0
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds { ptr, i64 }, ptr %dstBuff126, i32 0, i32 1
  %133 = load i64, ptr %132, align 8
  call void @ZSTDMT_releaseBuffer(ptr noundef %126, ptr %131, i64 %133)
  %134 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs127 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %134, i32 0, i32 1
  %135 = load ptr, ptr %jobs127, align 8, !tbaa !28
  %136 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom128 = zext i32 %136 to i64
  %arrayidx129 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %135, i64 %idxprom128
  %dstBuff130 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx129, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dstBuff130, ptr align 8 @g_nullBuffer, i64 16, i1 false), !tbaa.struct !38
  %137 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs131 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %137, i32 0, i32 1
  %138 = load ptr, ptr %jobs131, align 8, !tbaa !28
  %139 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom132 = zext i32 %139 to i64
  %arrayidx133 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %138, i64 %idxprom132
  %cSize134 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx133, i32 0, i32 1
  store i64 0, ptr %cSize134, align 8, !tbaa !70
  %140 = load i64, ptr %srcSize, align 8, !tbaa !39
  %141 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %consumed135 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %141, i32 0, i32 19
  %142 = load i64, ptr %consumed135, align 8, !tbaa !58
  %add136 = add i64 %142, %140
  store i64 %add136, ptr %consumed135, align 8, !tbaa !58
  %143 = load i64, ptr %cSize25, align 8, !tbaa !39
  %144 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %produced = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %144, i32 0, i32 20
  %145 = load i64, ptr %produced, align 8, !tbaa !62
  %add137 = add i64 %145, %143
  store i64 %add137, ptr %produced, align 8, !tbaa !62
  %146 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID138 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %146, i32 0, i32 14
  %147 = load i32, ptr %doneJobID138, align 4, !tbaa !69
  %inc = add i32 %147, 1
  store i32 %inc, ptr %doneJobID138, align 4, !tbaa !69
  br label %if.end139

if.end139:                                        ; preds = %if.then122, %land.lhs.true115, %if.end105
  call void @llvm.lifetime.end.p0(i64 8, ptr %toFlush) #7
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end70
  %148 = load i64, ptr %cSize25, align 8, !tbaa !39
  %149 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs141 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %149, i32 0, i32 1
  %150 = load ptr, ptr %jobs141, align 8, !tbaa !28
  %151 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom142 = zext i32 %151 to i64
  %arrayidx143 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %150, i64 %idxprom142
  %dstFlushed144 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx143, i32 0, i32 17
  %152 = load i64, ptr %dstFlushed144, align 8, !tbaa !71
  %cmp145 = icmp ugt i64 %148, %152
  br i1 %cmp145, label %if.then147, label %if.end153

if.then147:                                       ; preds = %if.end140
  %153 = load i64, ptr %cSize25, align 8, !tbaa !39
  %154 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs148 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %154, i32 0, i32 1
  %155 = load ptr, ptr %jobs148, align 8, !tbaa !28
  %156 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom149 = zext i32 %156 to i64
  %arrayidx150 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %155, i64 %idxprom149
  %dstFlushed151 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx150, i32 0, i32 17
  %157 = load i64, ptr %dstFlushed151, align 8, !tbaa !71
  %sub152 = sub i64 %153, %157
  store i64 %sub152, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end153:                                        ; preds = %if.end140
  %158 = load i64, ptr %srcSize, align 8, !tbaa !39
  %159 = load i64, ptr %srcConsumed, align 8, !tbaa !39
  %cmp154 = icmp ugt i64 %158, %159
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.end153
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end157:                                        ; preds = %if.end153
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.then156, %if.then147, %if.then44
  call void @llvm.lifetime.end.p0(i64 8, ptr %srcSize) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %srcConsumed) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cSize25) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup180 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %160 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID160 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %160, i32 0, i32 14
  %161 = load i32, ptr %doneJobID160, align 4, !tbaa !69
  %162 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID161 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %162, i32 0, i32 15
  %163 = load i32, ptr %nextJobID161, align 8, !tbaa !65
  %cmp162 = icmp ult i32 %161, %163
  br i1 %cmp162, label %if.then164, label %if.end165

if.then164:                                       ; preds = %cleanup.cont
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup180

if.end165:                                        ; preds = %cleanup.cont
  %164 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobReady = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %164, i32 0, i32 8
  %165 = load i32, ptr %jobReady, align 8, !tbaa !68
  %tobool166 = icmp ne i32 %165, 0
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.end165
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup180

if.end168:                                        ; preds = %if.end165
  %166 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %inBuff = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %166, i32 0, i32 9
  %filled = getelementptr inbounds %struct.inBuff_t, ptr %inBuff, i32 0, i32 2
  %167 = load i64, ptr %filled, align 8, !tbaa !40
  %cmp169 = icmp ugt i64 %167, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.end168
  store i64 1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup180

if.end172:                                        ; preds = %if.end168
  %168 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameEnded = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %168, i32 0, i32 16
  %169 = load i32, ptr %frameEnded, align 4, !tbaa !89
  %170 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %allJobsCompleted = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %170, i32 0, i32 17
  store i32 %169, ptr %allJobsCompleted, align 8, !tbaa !41
  %171 = load i32, ptr %end.addr, align 4, !tbaa !57
  %cmp173 = icmp eq i32 %171, 2
  br i1 %cmp173, label %if.then175, label %if.end179

if.then175:                                       ; preds = %if.end172
  %172 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %frameEnded176 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %172, i32 0, i32 16
  %173 = load i32, ptr %frameEnded176, align 4, !tbaa !89
  %tobool177 = icmp ne i32 %173, 0
  %lnot = xor i1 %tobool177, true
  %lnot.ext = zext i1 %lnot to i32
  %conv178 = sext i32 %lnot.ext to i64
  store i64 %conv178, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup180

if.end179:                                        ; preds = %if.end172
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup180

cleanup180:                                       ; preds = %if.end179, %if.then175, %if.then171, %if.then167, %if.then164, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %wJobID) #7
  %174 = load i64, ptr %retval, align 8
  ret i64 %174
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_releaseBuffer(ptr noundef %bufPool, ptr %buf.coerce0, i64 %buf.coerce1) #0 {
entry:
  %buf = alloca %struct.buffer_s, align 8
  %bufPool.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %buf, i32 0, i32 0
  store ptr %buf.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %buf, i32 0, i32 1
  store i64 %buf.coerce1, ptr %1, align 8
  store ptr %bufPool, ptr %bufPool.addr, align 8, !tbaa !8
  %start = getelementptr inbounds %struct.buffer_s, ptr %buf, i32 0, i32 0
  %2 = load ptr, ptr %start, align 8, !tbaa !44
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %nbBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %nbBuffers, align 4, !tbaa !135
  %6 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %totalBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %totalBuffers, align 8, !tbaa !42
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %bTable = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %nbBuffers3 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %nbBuffers3, align 4, !tbaa !135
  %inc = add i32 %10, 1
  store i32 %inc, ptr %nbBuffers3, align 4, !tbaa !135
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.buffer_s], ptr %bTable, i64 0, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %buf, i64 16, i1 false), !tbaa.struct !38
  %11 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex4 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %11, i32 0, i32 0
  br label %return

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex6 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %12, i32 0, i32 0
  %start7 = getelementptr inbounds %struct.buffer_s, ptr %buf, i32 0, i32 0
  %13 = load ptr, ptr %start7, align 8, !tbaa !44
  %14 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %14, i32 0, i32 4
  call void @ZSTD_customFree(ptr noundef %13, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i64 @ZSTD_freeCCtx(ptr noundef) #1

declare i64 @ZSTD_sizeof_CCtx(ptr noundef) #1

declare i32 @POOL_resize(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_expandJobsTable(ptr noundef %mtctx, i32 noundef %nbWorkers) #0 {
entry:
  %retval = alloca i64, align 8
  %mtctx.addr = alloca ptr, align 8
  %nbWorkers.addr = alloca i32, align 4
  %nbJobs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  store i32 %nbWorkers, ptr %nbWorkers.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbJobs) #7
  %0 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %add = add i32 %0, 2
  store i32 %add, ptr %nbJobs, align 4, !tbaa !4
  %1 = load i32, ptr %nbJobs, align 4, !tbaa !4
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %add1 = add i32 %3, 1
  %cmp = icmp ugt i32 %1, %add1
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %jobs, align 8, !tbaa !28
  %6 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %jobIDMask2, align 8, !tbaa !29
  %add3 = add i32 %7, 1
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 21
  call void @ZSTDMT_freeJobsTable(ptr noundef %5, i32 noundef %add3, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %9 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask4 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %9, i32 0, i32 13
  store i32 0, ptr %jobIDMask4, align 8, !tbaa !29
  %10 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %cMem5 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %10, i32 0, i32 21
  %call = call ptr @ZSTDMT_createJobsTable(ptr noundef %nbJobs, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem5)
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs6 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %11, i32 0, i32 1
  store ptr %call, ptr %jobs6, align 8, !tbaa !28
  %12 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs7 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %jobs7, align 8, !tbaa !28
  %cmp8 = icmp eq ptr %13, null
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i64 -64, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = load i32, ptr %nbJobs, align 4, !tbaa !4
  %sub = sub i32 %14, 1
  %15 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask10 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %15, i32 0, i32 13
  store i32 %sub, ptr %jobIDMask10, align 8, !tbaa !29
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbJobs) #7
  %16 = load i64, ptr %retval, align 8
  ret i64 %16
}

; Function Attrs: nounwind uwtable
define internal ptr @ZSTDMT_expandBufferPool(ptr noundef %srcBufPool, i32 noundef %maxNbBuffers) #0 {
entry:
  %retval = alloca ptr, align 8
  %srcBufPool.addr = alloca ptr, align 8
  %maxNbBuffers.addr = alloca i32, align 4
  %cMem = alloca %struct.ZSTD_customMem, align 8
  %bSize = alloca i64, align 8
  %newBufPool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %srcBufPool, ptr %srcBufPool.addr, align 8, !tbaa !8
  store i32 %maxNbBuffers, ptr %maxNbBuffers.addr, align 4, !tbaa !4
  %0 = load ptr, ptr %srcBufPool.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %srcBufPool.addr, align 8, !tbaa !8
  %totalBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %totalBuffers, align 8, !tbaa !42
  %3 = load i32, ptr %maxNbBuffers.addr, align 4, !tbaa !4
  %cmp1 = icmp uge i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %srcBufPool.addr, align 8, !tbaa !8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %cMem) #7
  %5 = load ptr, ptr %srcBufPool.addr, align 8, !tbaa !8
  %cMem4 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %5, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem, ptr align 8 %cMem4, i64 24, i1 false), !tbaa.struct !47
  call void @llvm.lifetime.start.p0(i64 8, ptr %bSize) #7
  %6 = load ptr, ptr %srcBufPool.addr, align 8, !tbaa !8
  %bufferSize = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %bufferSize, align 8, !tbaa !95
  store i64 %7, ptr %bSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %newBufPool) #7
  %8 = load ptr, ptr %srcBufPool.addr, align 8, !tbaa !8
  call void @ZSTDMT_freeBufferPool(ptr noundef %8)
  %9 = load i32, ptr %maxNbBuffers.addr, align 4, !tbaa !4
  %call = call ptr @ZSTDMT_createBufferPool(i32 noundef %9, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr %call, ptr %newBufPool, align 8, !tbaa !8
  %10 = load ptr, ptr %newBufPool, align 8, !tbaa !8
  %cmp5 = icmp eq ptr %10, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  %11 = load ptr, ptr %newBufPool, align 8, !tbaa !8
  store ptr %11, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %12 = load ptr, ptr %newBufPool, align 8, !tbaa !8
  %13 = load i64, ptr %bSize, align 8, !tbaa !39
  call void @ZSTDMT_setBufferSize(ptr noundef %12, i64 noundef %13)
  %14 = load ptr, ptr %newBufPool, align 8, !tbaa !8
  store ptr %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %newBufPool) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bSize) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %cMem) #7
  br label %return

return:                                           ; preds = %cleanup, %if.then2, %if.then
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define internal ptr @ZSTDMT_expandCCtxPool(ptr noundef %srcPool, i32 noundef %nbWorkers) #0 {
entry:
  %retval = alloca ptr, align 8
  %srcPool.addr = alloca ptr, align 8
  %nbWorkers.addr = alloca i32, align 4
  %cMem = alloca %struct.ZSTD_customMem, align 8
  store ptr %srcPool, ptr %srcPool.addr, align 8, !tbaa !8
  store i32 %nbWorkers, ptr %nbWorkers.addr, align 4, !tbaa !4
  %0 = load ptr, ptr %srcPool.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %srcPool.addr, align 8, !tbaa !8
  %totalCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %totalCCtx, align 4, !tbaa !45
  %cmp1 = icmp sle i32 %1, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %srcPool.addr, align 8, !tbaa !8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr %cMem) #7
  %5 = load ptr, ptr %srcPool.addr, align 8, !tbaa !8
  %cMem4 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %5, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem, ptr align 8 %cMem4, i64 24, i1 false), !tbaa.struct !47
  %6 = load ptr, ptr %srcPool.addr, align 8, !tbaa !8
  call void @ZSTDMT_freeCCtxPool(ptr noundef %6)
  %7 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %call = call ptr @ZSTDMT_createCCtxPool(i32 noundef %7, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr %call, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr %cMem) #7
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @ZSTDMT_expandSeqPool(ptr noundef %pool, i32 noundef %nbWorkers) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %nbWorkers.addr = alloca i32, align 4
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !8
  store i32 %nbWorkers, ptr %nbWorkers.addr, align 4, !tbaa !4
  %0 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %1 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %call = call ptr @ZSTDMT_expandBufferPool(ptr noundef %0, i32 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTDMT_CCtxParam_setNbWorkers(ptr noundef %params, i32 noundef %nbWorkers) #0 {
entry:
  %params.addr = alloca ptr, align 8
  %nbWorkers.addr = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  store i32 %nbWorkers, ptr %nbWorkers.addr, align 4, !tbaa !4
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %1 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %call = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef %0, i32 noundef 400, i32 noundef %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal ptr @ZSTDMT_createJobsTable(ptr noundef %nbJobsPtr, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #0 {
entry:
  %retval = alloca ptr, align 8
  %nbJobsPtr.addr = alloca ptr, align 8
  %nbJobsLog2 = alloca i32, align 4
  %nbJobs = alloca i32, align 4
  %jobNb = alloca i32, align 4
  %jobTable = alloca ptr, align 8
  %initError = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %nbJobsPtr, ptr %nbJobsPtr.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbJobsLog2) #7
  %0 = load ptr, ptr %nbJobsPtr.addr, align 8, !tbaa !8
  %1 = load i32, ptr %0, align 4, !tbaa !4
  %call = call i32 @ZSTD_highbit32(i32 noundef %1)
  %add = add i32 %call, 1
  store i32 %add, ptr %nbJobsLog2, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbJobs) #7
  %2 = load i32, ptr %nbJobsLog2, align 4, !tbaa !4
  %shl = shl i32 1, %2
  store i32 %shl, ptr %nbJobs, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobNb) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jobTable) #7
  %3 = load i32, ptr %nbJobs, align 4, !tbaa !4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 328
  %call1 = call ptr @ZSTD_customCalloc(i64 noundef %mul, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr %call1, ptr %jobTable, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %initError) #7
  store i32 0, ptr %initError, align 4, !tbaa !4
  %4 = load ptr, ptr %jobTable, align 8, !tbaa !8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %nbJobs, align 4, !tbaa !4
  %6 = load ptr, ptr %nbJobsPtr.addr, align 8, !tbaa !8
  store i32 %5, ptr %6, align 4, !tbaa !4
  store i32 0, ptr %jobNb, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %jobNb, align 4, !tbaa !4
  %8 = load i32, ptr %nbJobs, align 4, !tbaa !4
  %cmp3 = icmp ult i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %jobTable, align 8, !tbaa !8
  %10 = load i32, ptr %jobNb, align 4, !tbaa !4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %9, i64 %idxprom
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx, i32 0, i32 2
  %11 = load i32, ptr %initError, align 4, !tbaa !4
  %or = or i32 %11, 0
  store i32 %or, ptr %initError, align 4, !tbaa !4
  %12 = load ptr, ptr %jobTable, align 8, !tbaa !8
  %13 = load i32, ptr %jobNb, align 4, !tbaa !4
  %idxprom5 = zext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %12, i64 %idxprom5
  %job_cond = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx6, i32 0, i32 3
  %14 = load i32, ptr %initError, align 4, !tbaa !4
  %or7 = or i32 %14, 0
  store i32 %or7, ptr %initError, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %jobNb, align 4, !tbaa !4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %jobNb, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %initError, align 4, !tbaa !4
  %cmp8 = icmp ne i32 %16, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  %17 = load ptr, ptr %jobTable, align 8, !tbaa !8
  %18 = load i32, ptr %nbJobs, align 4, !tbaa !4
  call void @ZSTDMT_freeJobsTable(ptr noundef %17, i32 noundef %18, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %19 = load ptr, ptr %jobTable, align 8, !tbaa !8
  store ptr %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %initError) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jobTable) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobNb) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbJobs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbJobsLog2) #7
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

declare ptr @ZSTD_customCalloc(i64 noundef, ptr noundef byval(%struct.ZSTD_customMem) align 8) #1

; Function Attrs: nounwind uwtable
define internal ptr @ZSTDMT_createBufferPool(i32 noundef %maxNbBuffers, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #0 {
entry:
  %retval = alloca ptr, align 8
  %maxNbBuffers.addr = alloca i32, align 4
  %bufPool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %maxNbBuffers, ptr %maxNbBuffers.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufPool) #7
  %0 = load i32, ptr %maxNbBuffers.addr, align 4, !tbaa !4
  %sub = sub i32 %0, 1
  %conv = zext i32 %sub to i64
  %mul = mul i64 %conv, 16
  %add = add i64 64, %mul
  %call = call ptr @ZSTD_customCalloc(i64 noundef %add, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr %call, ptr %bufPool, align 8, !tbaa !8
  %1 = load ptr, ptr %bufPool, align 8, !tbaa !8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bufPool, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %2, i32 0, i32 0
  br i1 false, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %bufPool, align 8, !tbaa !8
  call void @ZSTD_customFree(ptr noundef %3, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %bufPool, align 8, !tbaa !8
  %bufferSize = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %4, i32 0, i32 1
  store i64 65536, ptr %bufferSize, align 8, !tbaa !95
  %5 = load i32, ptr %maxNbBuffers.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %bufPool, align 8, !tbaa !8
  %totalBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %6, i32 0, i32 2
  store i32 %5, ptr %totalBuffers, align 8, !tbaa !42
  %7 = load ptr, ptr %bufPool, align 8, !tbaa !8
  %nbBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %7, i32 0, i32 3
  store i32 0, ptr %nbBuffers, align 4, !tbaa !135
  %8 = load ptr, ptr %bufPool, align 8, !tbaa !8
  %cMem4 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %8, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem4, ptr align 8 %cMem, i64 24, i1 false), !tbaa.struct !47
  %9 = load ptr, ptr %bufPool, align 8, !tbaa !8
  store ptr %9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufPool) #7
  %10 = load ptr, ptr %retval, align 8
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal ptr @ZSTDMT_createCCtxPool(i32 noundef %nbWorkers, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem) #0 {
entry:
  %retval = alloca ptr, align 8
  %nbWorkers.addr = alloca i32, align 4
  %cctxPool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %nbWorkers, ptr %nbWorkers.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctxPool) #7
  %0 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 8
  %add = add i64 48, %mul
  %call = call ptr @ZSTD_customCalloc(i64 noundef %add, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr %call, ptr %cctxPool, align 8, !tbaa !8
  %1 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %2, i32 0, i32 0
  br i1 false, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  call void @ZSTD_customFree(ptr noundef %3, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  %cMem3 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %4, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cMem3, ptr align 8 %cMem, i64 24, i1 false), !tbaa.struct !47
  %5 = load i32, ptr %nbWorkers.addr, align 4, !tbaa !4
  %6 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  %totalCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %6, i32 0, i32 1
  store i32 %5, ptr %totalCCtx, align 4, !tbaa !45
  %7 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  %availCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %7, i32 0, i32 2
  store i32 1, ptr %availCCtx, align 8, !tbaa !136
  %call4 = call ptr @ZSTD_createCCtx_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  %8 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  %cctx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %8, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %cctx, i64 0, i64 0
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !8
  %9 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  %cctx5 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %9, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [1 x ptr], ptr %cctx5, i64 0, i64 0
  %10 = load ptr, ptr %arrayidx6, align 8, !tbaa !8
  %tobool7 = icmp ne ptr %10, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end2
  %11 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  call void @ZSTDMT_freeCCtxPool(ptr noundef %11)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end2
  %12 = load ptr, ptr %cctxPool, align 8, !tbaa !8
  store ptr %12, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctxPool) #7
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

declare ptr @ZSTD_createCCtx_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8) #1

declare i64 @ZSTD_CCtxParams_setParameter(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ZSTDMT_overlapLog(i32 noundef %ovlog, i32 noundef %strat) #0 {
entry:
  %retval = alloca i32, align 4
  %ovlog.addr = alloca i32, align 4
  %strat.addr = alloca i32, align 4
  store i32 %ovlog, ptr %ovlog.addr, align 4, !tbaa !4
  store i32 %strat, ptr %strat.addr, align 4, !tbaa !57
  %0 = load i32, ptr %ovlog.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %strat.addr, align 4, !tbaa !57
  %call = call i32 @ZSTDMT_overlapLog_default(i32 noundef %1)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %ovlog.addr, align 4, !tbaa !4
  store i32 %2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTDMT_overlapLog_default(i32 noundef %strat) #0 {
entry:
  %retval = alloca i32, align 4
  %strat.addr = alloca i32, align 4
  store i32 %strat, ptr %strat.addr, align 4, !tbaa !57
  %0 = load i32, ptr %strat.addr, align 4, !tbaa !57
  switch i32 %0, label %sw.default [
    i32 9, label %sw.bb
    i32 8, label %sw.bb1
    i32 7, label %sw.bb1
    i32 6, label %sw.bb2
    i32 5, label %sw.bb2
    i32 4, label %sw.bb3
    i32 3, label %sw.bb3
    i32 2, label %sw.bb3
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i32 9, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry, %entry
  store i32 8, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry, %entry
  store i32 7, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare i32 @ZSTD_cycleLog(i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal i64 @ZSTD_ipow(i64 noundef %base, i64 noundef %exponent) #0 {
entry:
  %base.addr = alloca i64, align 8
  %exponent.addr = alloca i64, align 8
  %power = alloca i64, align 8
  store i64 %base, ptr %base.addr, align 8, !tbaa !39
  store i64 %exponent, ptr %exponent.addr, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %power) #7
  store i64 1, ptr %power, align 8, !tbaa !39
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, ptr %exponent.addr, align 8, !tbaa !39
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %exponent.addr, align 8, !tbaa !39
  %and = and i64 %1, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i64, ptr %base.addr, align 8, !tbaa !39
  %3 = load i64, ptr %power, align 8, !tbaa !39
  %mul = mul i64 %3, %2
  store i64 %mul, ptr %power, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = load i64, ptr %exponent.addr, align 8, !tbaa !39
  %shr = lshr i64 %4, 1
  store i64 %shr, ptr %exponent.addr, align 8, !tbaa !39
  %5 = load i64, ptr %base.addr, align 8, !tbaa !39
  %6 = load i64, ptr %base.addr, align 8, !tbaa !39
  %mul2 = mul i64 %6, %5
  store i64 %mul2, ptr %base.addr, align 8, !tbaa !39
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i64, ptr %power, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 8, ptr %power) #7
  ret i64 %7
}

declare void @ZSTD_ldm_adjustParameters(ptr noundef, ptr noundef) #1

declare i32 @ZSTD_XXH64_reset(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_setNbSeq(ptr noundef %seqPool, i64 noundef %nbSeq) #0 {
entry:
  %seqPool.addr = alloca ptr, align 8
  %nbSeq.addr = alloca i64, align 8
  store ptr %seqPool, ptr %seqPool.addr, align 8, !tbaa !8
  store i64 %nbSeq, ptr %nbSeq.addr, align 8, !tbaa !39
  %0 = load ptr, ptr %seqPool.addr, align 8, !tbaa !8
  %1 = load i64, ptr %nbSeq.addr, align 8, !tbaa !39
  %mul = mul i64 %1, 12
  call void @ZSTDMT_setBufferSize(ptr noundef %0, i64 noundef %mul)
  ret void
}

declare i64 @ZSTD_ldm_getMaxNbSeq(ptr noundef byval(%struct.ldmParams_t) align 8, i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @ZSTD_window_init(ptr noundef %window) #4 {
entry:
  %window.addr = alloca ptr, align 8
  store ptr %window, ptr %window.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %window.addr, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 40, i1 false)
  %1 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %base = getelementptr inbounds %struct.ZSTD_window_t, ptr %1, i32 0, i32 1
  store ptr @.str, ptr %base, align 8, !tbaa !137
  %2 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictBase = getelementptr inbounds %struct.ZSTD_window_t, ptr %2, i32 0, i32 2
  store ptr @.str, ptr %dictBase, align 8, !tbaa !138
  %3 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %3, i32 0, i32 3
  store i32 2, ptr %dictLimit, align 8, !tbaa !139
  %4 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %lowLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %4, i32 0, i32 4
  store i32 2, ptr %lowLimit, align 4, !tbaa !140
  %5 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %base1 = getelementptr inbounds %struct.ZSTD_window_t, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %base1, align 8, !tbaa !137
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 2
  %7 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %nextSrc = getelementptr inbounds %struct.ZSTD_window_t, ptr %7, i32 0, i32 0
  store ptr %add.ptr, ptr %nextSrc, align 8, !tbaa !141
  %8 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %nbOverflowCorrections = getelementptr inbounds %struct.ZSTD_window_t, ptr %8, i32 0, i32 5
  store i32 0, ptr %nbOverflowCorrections, align 8, !tbaa !142
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ZSTD_window_update(ptr noundef %window, ptr noundef %src, i64 noundef %srcSize, i32 noundef %forceNonContiguous) #4 {
entry:
  %retval = alloca i32, align 4
  %window.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %forceNonContiguous.addr = alloca i32, align 4
  %ip = alloca ptr, align 8
  %contiguous = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %distanceFromBase = alloca i64, align 8
  %highInputIdx = alloca i64, align 8
  %lowLimitMax = alloca i32, align 4
  store ptr %window, ptr %window.addr, align 8, !tbaa !8
  store ptr %src, ptr %src.addr, align 8, !tbaa !8
  store i64 %srcSize, ptr %srcSize.addr, align 8, !tbaa !39
  store i32 %forceNonContiguous, ptr %forceNonContiguous.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #7
  %0 = load ptr, ptr %src.addr, align 8, !tbaa !8
  store ptr %0, ptr %ip, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %contiguous) #7
  store i32 1, ptr %contiguous, align 4, !tbaa !4
  %1 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %contiguous, align 4, !tbaa !4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %src.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %nextSrc = getelementptr inbounds %struct.ZSTD_window_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %nextSrc, align 8, !tbaa !141
  %cmp1 = icmp ne ptr %3, %5
  br i1 %cmp1, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %forceNonContiguous.addr, align 4, !tbaa !4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then2, label %if.end15

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %distanceFromBase) #7
  %7 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %nextSrc3 = getelementptr inbounds %struct.ZSTD_window_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %nextSrc3, align 8, !tbaa !141
  %9 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %base = getelementptr inbounds %struct.ZSTD_window_t, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %base, align 8, !tbaa !137
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %distanceFromBase, align 8, !tbaa !39
  %11 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %dictLimit, align 8, !tbaa !139
  %13 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %lowLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %13, i32 0, i32 4
  store i32 %12, ptr %lowLimit, align 4, !tbaa !140
  %14 = load i64, ptr %distanceFromBase, align 8, !tbaa !39
  %conv = trunc i64 %14 to i32
  %15 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit4 = getelementptr inbounds %struct.ZSTD_window_t, ptr %15, i32 0, i32 3
  store i32 %conv, ptr %dictLimit4, align 8, !tbaa !139
  %16 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %base5 = getelementptr inbounds %struct.ZSTD_window_t, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %base5, align 8, !tbaa !137
  %18 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictBase = getelementptr inbounds %struct.ZSTD_window_t, ptr %18, i32 0, i32 2
  store ptr %17, ptr %dictBase, align 8, !tbaa !138
  %19 = load ptr, ptr %ip, align 8, !tbaa !8
  %20 = load i64, ptr %distanceFromBase, align 8, !tbaa !39
  %idx.neg = sub i64 0, %20
  %add.ptr = getelementptr inbounds i8, ptr %19, i64 %idx.neg
  %21 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %base6 = getelementptr inbounds %struct.ZSTD_window_t, ptr %21, i32 0, i32 1
  store ptr %add.ptr, ptr %base6, align 8, !tbaa !137
  %22 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit7 = getelementptr inbounds %struct.ZSTD_window_t, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %dictLimit7, align 8, !tbaa !139
  %24 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %lowLimit8 = getelementptr inbounds %struct.ZSTD_window_t, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %lowLimit8, align 4, !tbaa !140
  %sub = sub i32 %23, %25
  %cmp9 = icmp ult i32 %sub, 8
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then2
  %26 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit12 = getelementptr inbounds %struct.ZSTD_window_t, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %dictLimit12, align 8, !tbaa !139
  %28 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %lowLimit13 = getelementptr inbounds %struct.ZSTD_window_t, ptr %28, i32 0, i32 4
  store i32 %27, ptr %lowLimit13, align 4, !tbaa !140
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then2
  store i32 0, ptr %contiguous, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %distanceFromBase) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %lor.lhs.false
  %29 = load ptr, ptr %ip, align 8, !tbaa !8
  %30 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %add.ptr16 = getelementptr inbounds i8, ptr %29, i64 %30
  %31 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %nextSrc17 = getelementptr inbounds %struct.ZSTD_window_t, ptr %31, i32 0, i32 0
  store ptr %add.ptr16, ptr %nextSrc17, align 8, !tbaa !141
  %32 = load ptr, ptr %ip, align 8, !tbaa !8
  %33 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %add.ptr18 = getelementptr inbounds i8, ptr %32, i64 %33
  %34 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictBase19 = getelementptr inbounds %struct.ZSTD_window_t, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %dictBase19, align 8, !tbaa !138
  %36 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %lowLimit20 = getelementptr inbounds %struct.ZSTD_window_t, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %lowLimit20, align 4, !tbaa !140
  %idx.ext = zext i32 %37 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %35, i64 %idx.ext
  %cmp22 = icmp ugt ptr %add.ptr18, %add.ptr21
  %conv23 = zext i1 %cmp22 to i32
  %38 = load ptr, ptr %ip, align 8, !tbaa !8
  %39 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictBase24 = getelementptr inbounds %struct.ZSTD_window_t, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %dictBase24, align 8, !tbaa !138
  %41 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit25 = getelementptr inbounds %struct.ZSTD_window_t, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %dictLimit25, align 8, !tbaa !139
  %idx.ext26 = zext i32 %42 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %40, i64 %idx.ext26
  %cmp28 = icmp ult ptr %38, %add.ptr27
  %conv29 = zext i1 %cmp28 to i32
  %and = and i32 %conv23, %conv29
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.then31, label %if.end44

if.then31:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %highInputIdx) #7
  %43 = load ptr, ptr %ip, align 8, !tbaa !8
  %44 = load i64, ptr %srcSize.addr, align 8, !tbaa !39
  %add.ptr32 = getelementptr inbounds i8, ptr %43, i64 %44
  %45 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictBase33 = getelementptr inbounds %struct.ZSTD_window_t, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %dictBase33, align 8, !tbaa !138
  %sub.ptr.lhs.cast34 = ptrtoint ptr %add.ptr32 to i64
  %sub.ptr.rhs.cast35 = ptrtoint ptr %46 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  store i64 %sub.ptr.sub36, ptr %highInputIdx, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %lowLimitMax) #7
  %47 = load i64, ptr %highInputIdx, align 8, !tbaa !39
  %48 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit37 = getelementptr inbounds %struct.ZSTD_window_t, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %dictLimit37, align 8, !tbaa !139
  %conv38 = zext i32 %49 to i64
  %cmp39 = icmp sgt i64 %47, %conv38
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then31
  %50 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit41 = getelementptr inbounds %struct.ZSTD_window_t, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %dictLimit41, align 8, !tbaa !139
  br label %cond.end

cond.false:                                       ; preds = %if.then31
  %52 = load i64, ptr %highInputIdx, align 8, !tbaa !39
  %conv42 = trunc i64 %52 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %conv42, %cond.false ]
  store i32 %cond, ptr %lowLimitMax, align 4, !tbaa !4
  %53 = load i32, ptr %lowLimitMax, align 4, !tbaa !4
  %54 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %lowLimit43 = getelementptr inbounds %struct.ZSTD_window_t, ptr %54, i32 0, i32 4
  store i32 %53, ptr %lowLimit43, align 4, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 4, ptr %lowLimitMax) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %highInputIdx) #7
  br label %if.end44

if.end44:                                         ; preds = %cond.end, %if.end15
  %55 = load i32, ptr %contiguous, align 4, !tbaa !4
  store i32 %55, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %contiguous) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #7
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

declare void @ZSTD_ldm_fillHashTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal { ptr, i64 } @ZSTDMT_getInputDataInUse(ptr noundef %mtctx) #0 {
entry:
  %retval = alloca %struct.range_t, align 8
  %mtctx.addr = alloca ptr, align 8
  %firstJobID = alloca i32, align 4
  %lastJobID = alloca i32, align 4
  %jobID = alloca i32, align 4
  %wJobID = alloca i32, align 4
  %consumed = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstJobID) #7
  %0 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %doneJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %0, i32 0, i32 14
  %1 = load i32, ptr %doneJobID, align 4, !tbaa !69
  store i32 %1, ptr %firstJobID, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastJobID) #7
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %nextJobID, align 8, !tbaa !65
  store i32 %3, ptr %lastJobID, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jobID) #7
  %4 = load i32, ptr %firstJobID, align 4, !tbaa !4
  store i32 %4, ptr %jobID, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %jobID, align 4, !tbaa !4
  %6 = load i32, ptr %lastJobID, align 4, !tbaa !4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %wJobID) #7
  %7 = load i32, ptr %jobID, align 4, !tbaa !4
  %8 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobIDMask = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %8, i32 0, i32 13
  %9 = load i32, ptr %jobIDMask, align 8, !tbaa !29
  %and = and i32 %7, %9
  store i32 %and, ptr %wJobID, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %consumed) #7
  %10 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %jobs, align 8, !tbaa !28
  %12 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %11, i64 %idxprom
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx, i32 0, i32 2
  %13 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %jobs1, align 8, !tbaa !28
  %15 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom2 = zext i32 %15 to i64
  %arrayidx3 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %14, i64 %idxprom2
  %consumed4 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx3, i32 0, i32 0
  %16 = load i64, ptr %consumed4, align 8, !tbaa !73
  store i64 %16, ptr %consumed, align 8, !tbaa !39
  %17 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs5 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %jobs5, align 8, !tbaa !28
  %19 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom6 = zext i32 %19 to i64
  %arrayidx7 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %18, i64 %idxprom6
  %job_mutex8 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx7, i32 0, i32 2
  %20 = load i64, ptr %consumed, align 8, !tbaa !39
  %21 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs9 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %jobs9, align 8, !tbaa !28
  %23 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom10 = zext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %22, i64 %idxprom10
  %src = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx11, i32 0, i32 10
  %size = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %24 = load i64, ptr %size, align 8, !tbaa !72
  %cmp12 = icmp ult i64 %20, %24
  br i1 %cmp12, label %if.then, label %if.end23

if.then:                                          ; preds = %for.body
  %25 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs13 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %jobs13, align 8, !tbaa !28
  %27 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom14 = zext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %26, i64 %idxprom14
  %prefix = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx15, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %prefix, i64 16, i1 false), !tbaa.struct !38
  %size16 = getelementptr inbounds %struct.range_t, ptr %retval, i32 0, i32 1
  %28 = load i64, ptr %size16, align 8, !tbaa !143
  %cmp17 = icmp eq i64 %28, 0
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then
  %29 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %jobs19 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %jobs19, align 8, !tbaa !28
  %31 = load i32, ptr %wJobID, align 4, !tbaa !4
  %idxprom20 = zext i32 %31 to i64
  %arrayidx21 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %30, i64 %idxprom20
  %src22 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %arrayidx21, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %src22, i64 16, i1 false), !tbaa.struct !38
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %consumed) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %wJobID) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %32 = load i32, ptr %jobID, align 4, !tbaa !4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %jobID, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 @kNullRange, i64 16, i1 false), !tbaa.struct !38
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %jobID) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastJobID) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstJobID) #7
  %33 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %33
}

; Function Attrs: nounwind uwtable
define internal i32 @ZSTDMT_isOverlapped(ptr %buffer.coerce0, i64 %buffer.coerce1, ptr %range.coerce0, i64 %range.coerce1) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer = alloca %struct.buffer_s, align 8
  %range = alloca %struct.range_t, align 8
  %bufferStart = alloca ptr, align 8
  %rangeStart = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bufferEnd = alloca ptr, align 8
  %rangeEnd = alloca ptr, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  store ptr %buffer.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  store i64 %buffer.coerce1, ptr %1, align 8
  %2 = getelementptr inbounds { ptr, i64 }, ptr %range, i32 0, i32 0
  store ptr %range.coerce0, ptr %2, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %range, i32 0, i32 1
  store i64 %range.coerce1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufferStart) #7
  %start = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 0
  %4 = load ptr, ptr %start, align 8, !tbaa !44
  store ptr %4, ptr %bufferStart, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rangeStart) #7
  %start1 = getelementptr inbounds %struct.range_t, ptr %range, i32 0, i32 0
  %5 = load ptr, ptr %start1, align 8, !tbaa !144
  store ptr %5, ptr %rangeStart, align 8, !tbaa !8
  %6 = load ptr, ptr %rangeStart, align 8, !tbaa !8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %bufferStart, align 8, !tbaa !8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufferEnd) #7
  %8 = load ptr, ptr %bufferStart, align 8, !tbaa !8
  %capacity = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 1
  %9 = load i64, ptr %capacity, align 8, !tbaa !51
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 %9
  store ptr %add.ptr, ptr %bufferEnd, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rangeEnd) #7
  %10 = load ptr, ptr %rangeStart, align 8, !tbaa !8
  %size = getelementptr inbounds %struct.range_t, ptr %range, i32 0, i32 1
  %11 = load i64, ptr %size, align 8, !tbaa !143
  %add.ptr3 = getelementptr inbounds i8, ptr %10, i64 %11
  store ptr %add.ptr3, ptr %rangeEnd, align 8, !tbaa !8
  %12 = load ptr, ptr %bufferStart, align 8, !tbaa !8
  %13 = load ptr, ptr %bufferEnd, align 8, !tbaa !8
  %cmp4 = icmp eq ptr %12, %13
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %14 = load ptr, ptr %rangeStart, align 8, !tbaa !8
  %15 = load ptr, ptr %rangeEnd, align 8, !tbaa !8
  %cmp6 = icmp eq ptr %14, %15
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %16 = load ptr, ptr %bufferStart, align 8, !tbaa !8
  %17 = load ptr, ptr %rangeEnd, align 8, !tbaa !8
  %cmp9 = icmp ult ptr %16, %17
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end8
  %18 = load ptr, ptr %rangeStart, align 8, !tbaa !8
  %19 = load ptr, ptr %bufferEnd, align 8, !tbaa !8
  %cmp10 = icmp ult ptr %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end8
  %20 = phi i1 [ false, %if.end8 ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %rangeEnd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufferEnd) #7
  br label %cleanup12

cleanup12:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rangeStart) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufferStart) #7
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_waitForLdmComplete(ptr noundef %mtctx, ptr %buffer.coerce0, i64 %buffer.coerce1) #0 {
entry:
  %buffer = alloca %struct.buffer_s, align 8
  %mtctx.addr = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  store ptr %buffer.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  store i64 %buffer.coerce1, ptr %1, align 8
  store ptr %mtctx, ptr %mtctx.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %params = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %2, i32 0, i32 5
  %ldmParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %enableLdm = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams, i32 0, i32 0
  %3 = load i32, ptr %enableLdm, align 8, !tbaa !87
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %mutex) #7
  %4 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %serial = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %4, i32 0, i32 11
  %ldmWindowMutex = getelementptr inbounds %struct.serialState_t, ptr %serial, i32 0, i32 6
  store ptr %ldmWindowMutex, ptr %mutex, align 8, !tbaa !8
  %5 = load ptr, ptr %mutex, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %serial1 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %6, i32 0, i32 11
  %ldmWindow = getelementptr inbounds %struct.serialState_t, ptr %serial1, i32 0, i32 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %call = call i32 @ZSTDMT_doesOverlapWindow(ptr %8, i64 %10, ptr noundef byval(%struct.ZSTD_window_t) align 8 %ldmWindow)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %mtctx.addr, align 8, !tbaa !8
  %serial2 = getelementptr inbounds %struct.ZSTDMT_CCtx_s, ptr %11, i32 0, i32 11
  %ldmWindowCond = getelementptr inbounds %struct.serialState_t, ptr %serial2, i32 0, i32 7
  %12 = load ptr, ptr %mutex, align 8, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %mutex, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %mutex) #7
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal i32 @ZSTDMT_doesOverlapWindow(ptr %buffer.coerce0, i64 %buffer.coerce1, ptr noundef byval(%struct.ZSTD_window_t) align 8 %window) #0 {
entry:
  %buffer = alloca %struct.buffer_s, align 8
  %extDict = alloca %struct.range_t, align 8
  %prefix = alloca %struct.range_t, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  store ptr %buffer.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  store i64 %buffer.coerce1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %extDict) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %prefix) #7
  %dictBase = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 2
  %2 = load ptr, ptr %dictBase, align 8, !tbaa !138
  %lowLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 4
  %3 = load i32, ptr %lowLimit, align 4, !tbaa !140
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %start = getelementptr inbounds %struct.range_t, ptr %extDict, i32 0, i32 0
  store ptr %add.ptr, ptr %start, align 8, !tbaa !144
  %dictLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 3
  %4 = load i32, ptr %dictLimit, align 8, !tbaa !139
  %lowLimit1 = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 4
  %5 = load i32, ptr %lowLimit1, align 4, !tbaa !140
  %sub = sub i32 %4, %5
  %conv = zext i32 %sub to i64
  %size = getelementptr inbounds %struct.range_t, ptr %extDict, i32 0, i32 1
  store i64 %conv, ptr %size, align 8, !tbaa !143
  %base = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 1
  %6 = load ptr, ptr %base, align 8, !tbaa !137
  %dictLimit2 = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 3
  %7 = load i32, ptr %dictLimit2, align 8, !tbaa !139
  %idx.ext3 = zext i32 %7 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3
  %start5 = getelementptr inbounds %struct.range_t, ptr %prefix, i32 0, i32 0
  store ptr %add.ptr4, ptr %start5, align 8, !tbaa !144
  %nextSrc = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 0
  %8 = load ptr, ptr %nextSrc, align 8, !tbaa !141
  %base6 = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 1
  %9 = load ptr, ptr %base6, align 8, !tbaa !137
  %dictLimit7 = getelementptr inbounds %struct.ZSTD_window_t, ptr %window, i32 0, i32 3
  %10 = load i32, ptr %dictLimit7, align 8, !tbaa !139
  %idx.ext8 = zext i32 %10 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %9, i64 %idx.ext8
  %sub.ptr.lhs.cast = ptrtoint ptr %8 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %size10 = getelementptr inbounds %struct.range_t, ptr %prefix, i32 0, i32 1
  store i64 %sub.ptr.sub, ptr %size10, align 8, !tbaa !143
  %11 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %extDict, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds { ptr, i64 }, ptr %extDict, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %call = call i32 @ZSTDMT_isOverlapped(ptr %12, i64 %14, ptr %16, i64 %18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %19 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds { ptr, i64 }, ptr %prefix, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds { ptr, i64 }, ptr %prefix, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %call11 = call i32 @ZSTDMT_isOverlapped(ptr %20, i64 %22, ptr %24, i64 %26)
  %tobool12 = icmp ne i32 %call11, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %27 = phi i1 [ true, %entry ], [ %tobool12, %lor.rhs ]
  %lor.ext = zext i1 %27 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr %prefix) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %extDict) #7
  ret i32 %lor.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ZSTD_rollingHash_compute(ptr noundef %buf, i64 noundef %size) #4 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !8
  store i64 %size, ptr %size.addr, align 8, !tbaa !39
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !8
  %1 = load i64, ptr %size.addr, align 8, !tbaa !39
  %call = call i64 @ZSTD_rollingHash_append(i64 noundef 0, ptr noundef %0, i64 noundef %1)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i64 @ZSTD_rollingHash_append(i64 noundef %hash, ptr noundef %buf, i64 noundef %size) #0 {
entry:
  %hash.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %istart = alloca ptr, align 8
  %pos = alloca i64, align 8
  store i64 %hash, ptr %hash.addr, align 8, !tbaa !39
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !8
  store i64 %size, ptr %size.addr, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #7
  %0 = load ptr, ptr %buf.addr, align 8, !tbaa !8
  store ptr %0, ptr %istart, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #7
  store i64 0, ptr %pos, align 8, !tbaa !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %pos, align 8, !tbaa !39
  %2 = load i64, ptr %size.addr, align 8, !tbaa !39
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %hash.addr, align 8, !tbaa !39
  %mul = mul i64 %3, -3523014627327384477
  store i64 %mul, ptr %hash.addr, align 8, !tbaa !39
  %4 = load ptr, ptr %istart, align 8, !tbaa !8
  %5 = load i64, ptr %pos, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !57
  %conv = zext i8 %6 to i32
  %add = add nsw i32 %conv, 10
  %conv1 = sext i32 %add to i64
  %7 = load i64, ptr %hash.addr, align 8, !tbaa !39
  %add2 = add i64 %7, %conv1
  store i64 %add2, ptr %hash.addr, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %pos, align 8, !tbaa !39
  %inc = add i64 %8, 1
  store i64 %inc, ptr %pos, align 8, !tbaa !39
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i64, ptr %hash.addr, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #7
  ret i64 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ZSTD_rollingHash_rotate(i64 noundef %hash, i8 noundef zeroext %toRemove, i8 noundef zeroext %toAdd, i64 noundef %primePower) #4 {
entry:
  %hash.addr = alloca i64, align 8
  %toRemove.addr = alloca i8, align 1
  %toAdd.addr = alloca i8, align 1
  %primePower.addr = alloca i64, align 8
  store i64 %hash, ptr %hash.addr, align 8, !tbaa !39
  store i8 %toRemove, ptr %toRemove.addr, align 1, !tbaa !57
  store i8 %toAdd, ptr %toAdd.addr, align 1, !tbaa !57
  store i64 %primePower, ptr %primePower.addr, align 8, !tbaa !39
  %0 = load i8, ptr %toRemove.addr, align 1, !tbaa !57
  %conv = zext i8 %0 to i32
  %add = add nsw i32 %conv, 10
  %conv1 = sext i32 %add to i64
  %1 = load i64, ptr %primePower.addr, align 8, !tbaa !39
  %mul = mul i64 %conv1, %1
  %2 = load i64, ptr %hash.addr, align 8, !tbaa !39
  %sub = sub i64 %2, %mul
  store i64 %sub, ptr %hash.addr, align 8, !tbaa !39
  %3 = load i64, ptr %hash.addr, align 8, !tbaa !39
  %mul2 = mul i64 %3, -3523014627327384477
  store i64 %mul2, ptr %hash.addr, align 8, !tbaa !39
  %4 = load i8, ptr %toAdd.addr, align 1, !tbaa !57
  %conv3 = zext i8 %4 to i32
  %add4 = add nsw i32 %conv3, 10
  %conv5 = sext i32 %add4 to i64
  %5 = load i64, ptr %hash.addr, align 8, !tbaa !39
  %add6 = add i64 %5, %conv5
  store i64 %add6, ptr %hash.addr, align 8, !tbaa !39
  %6 = load i64, ptr %hash.addr, align 8, !tbaa !39
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_writeLastEmptyBlock(ptr noundef %job) #0 {
entry:
  %job.addr = alloca ptr, align 8
  %tmp = alloca %struct.buffer_s, align 8
  store ptr %job, ptr %job.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %dstBuff = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7
  %1 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %bufPool, align 8, !tbaa !122
  %call = call { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %2)
  %3 = getelementptr inbounds { ptr, i64 }, ptr %tmp, i32 0, i32 0
  %4 = extractvalue { ptr, i64 } %call, 0
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %tmp, i32 0, i32 1
  %6 = extractvalue { ptr, i64 } %call, 1
  store i64 %6, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dstBuff, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7
  %7 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %dstBuff1 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %7, i32 0, i32 8
  %start = getelementptr inbounds %struct.buffer_s, ptr %dstBuff1, i32 0, i32 0
  %8 = load ptr, ptr %start, align 8, !tbaa !130
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %cSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %9, i32 0, i32 1
  store i64 -64, ptr %cSize, align 8, !tbaa !70
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %src = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %10, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %src, ptr align 8 @kNullRange, i64 16, i1 false), !tbaa.struct !38
  %11 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %dstBuff2 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %11, i32 0, i32 8
  %start3 = getelementptr inbounds %struct.buffer_s, ptr %dstBuff2, i32 0, i32 0
  %12 = load ptr, ptr %start3, align 8, !tbaa !130
  %13 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %dstBuff4 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %13, i32 0, i32 8
  %capacity = getelementptr inbounds %struct.buffer_s, ptr %dstBuff4, i32 0, i32 1
  %14 = load i64, ptr %capacity, align 8, !tbaa !145
  %call5 = call i64 @ZSTD_writeLastEmptyBlock(ptr noundef %12, i64 noundef %14)
  %15 = load ptr, ptr %job.addr, align 8, !tbaa !8
  %cSize6 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %15, i32 0, i32 1
  store i64 %call5, ptr %cSize6, align 8, !tbaa !70
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @POOL_tryAdd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_compressionJob(ptr noundef %jobDescription) #0 {
entry:
  %jobDescription.addr = alloca ptr, align 8
  %job = alloca ptr, align 8
  %jobParams = alloca %struct.ZSTD_CCtx_params_s, align 8
  %cctx = alloca ptr, align 8
  %rawSeqStore = alloca %struct.rawSeqStore_t, align 8
  %dstBuff = alloca %struct.buffer_s, align 8
  %lastCBlockSize = alloca i64, align 8
  %tmp = alloca %struct.buffer_s, align 8
  %initError = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pledgedSrcSize = alloca i64, align 8
  %forceWindowError = alloca i64, align 8
  %err = alloca i64, align 8
  %initError67 = alloca i64, align 8
  %hSize = alloca i64, align 8
  %chunkSize = alloca i64, align 8
  %nbChunks = alloca i32, align 4
  %ip = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %op = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %chunkNb = alloca i32, align 4
  %cSize114 = alloca i64, align 8
  %lastBlockSize1 = alloca i64, align 8
  %lastBlockSize = alloca i64, align 8
  %cSize151 = alloca i64, align 8
  store ptr %jobDescription, ptr %jobDescription.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %job) #7
  %0 = load ptr, ptr %jobDescription.addr, align 8, !tbaa !8
  store ptr %0, ptr %job, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 176, ptr %jobParams) #7
  %1 = load ptr, ptr %job, align 8, !tbaa !8
  %params = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %1, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %jobParams, ptr align 8 %params, i64 176, i1 false), !tbaa.struct !78
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctx) #7
  %2 = load ptr, ptr %job, align 8, !tbaa !8
  %cctxPool = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %cctxPool, align 8, !tbaa !121
  %call = call ptr @ZSTDMT_getCCtx(ptr noundef %3)
  store ptr %call, ptr %cctx, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 40, ptr %rawSeqStore) #7
  %4 = load ptr, ptr %job, align 8, !tbaa !8
  %seqPool = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %seqPool, align 8, !tbaa !123
  call void @ZSTDMT_getSeq(ptr sret(%struct.rawSeqStore_t) align 8 %rawSeqStore, ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr %dstBuff) #7
  %6 = load ptr, ptr %job, align 8, !tbaa !8
  %dstBuff1 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %6, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dstBuff, ptr align 8 %dstBuff1, i64 16, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastCBlockSize) #7
  store i64 0, ptr %lastCBlockSize, align 8, !tbaa !39
  %7 = load ptr, ptr %cctx, align 8, !tbaa !8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %9, i32 0, i32 1
  store i64 -64, ptr %cSize, align 8, !tbaa !70
  %10 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex2 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %10, i32 0, i32 2
  br label %_endJob

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.buffer_s, ptr %dstBuff, i32 0, i32 0
  %11 = load ptr, ptr %start, align 8, !tbaa !44
  %cmp3 = icmp eq ptr %11, null
  br i1 %cmp3, label %if.then4, label %if.end14

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7
  %12 = load ptr, ptr %job, align 8, !tbaa !8
  %bufPool = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %bufPool, align 8, !tbaa !122
  %call5 = call { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %13)
  %14 = getelementptr inbounds { ptr, i64 }, ptr %tmp, i32 0, i32 0
  %15 = extractvalue { ptr, i64 } %call5, 0
  store ptr %15, ptr %14, align 8
  %16 = getelementptr inbounds { ptr, i64 }, ptr %tmp, i32 0, i32 1
  %17 = extractvalue { ptr, i64 } %call5, 1
  store i64 %17, ptr %16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dstBuff, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7
  %start6 = getelementptr inbounds %struct.buffer_s, ptr %dstBuff, i32 0, i32 0
  %18 = load ptr, ptr %start6, align 8, !tbaa !44
  %cmp7 = icmp eq ptr %18, null
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.then4
  %19 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex9 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize10 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %20, i32 0, i32 1
  store i64 -64, ptr %cSize10, align 8, !tbaa !70
  %21 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex11 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %21, i32 0, i32 2
  br label %_endJob

if.end12:                                         ; preds = %if.then4
  %22 = load ptr, ptr %job, align 8, !tbaa !8
  %dstBuff13 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %22, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dstBuff13, ptr align 8 %dstBuff, i64 16, i1 false), !tbaa.struct !38
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end
  %ldmParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %jobParams, i32 0, i32 13
  %enableLdm = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams, i32 0, i32 0
  %23 = load i32, ptr %enableLdm, align 8, !tbaa !93
  %cmp15 = icmp eq i32 %23, 1
  br i1 %cmp15, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end14
  %seq = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 0
  %24 = load ptr, ptr %seq, align 8, !tbaa !146
  %cmp16 = icmp eq ptr %24, null
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex18 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize19 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %26, i32 0, i32 1
  store i64 -64, ptr %cSize19, align 8, !tbaa !70
  %27 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex20 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %27, i32 0, i32 2
  br label %_endJob

if.end21:                                         ; preds = %land.lhs.true, %if.end14
  %28 = load ptr, ptr %job, align 8, !tbaa !8
  %jobID = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %28, i32 0, i32 11
  %29 = load i32, ptr %jobID, align 8, !tbaa !125
  %cmp22 = icmp ne i32 %29, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  %fParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %jobParams, i32 0, i32 2
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameParameters, ptr %fParams, i32 0, i32 1
  store i32 0, ptr %checksumFlag, align 4, !tbaa !97
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %ldmParams25 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %jobParams, i32 0, i32 13
  %enableLdm26 = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams25, i32 0, i32 0
  store i32 2, ptr %enableLdm26, align 8, !tbaa !93
  %nbWorkers = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %jobParams, i32 0, i32 9
  store i32 0, ptr %nbWorkers, align 4, !tbaa !75
  %30 = load ptr, ptr %job, align 8, !tbaa !8
  %cdict = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %30, i32 0, i32 15
  %31 = load ptr, ptr %cdict, align 8, !tbaa !119
  %tobool = icmp ne ptr %31, null
  br i1 %tobool, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %initError) #7
  %32 = load ptr, ptr %cctx, align 8, !tbaa !8
  %33 = load ptr, ptr %job, align 8, !tbaa !8
  %cdict28 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %33, i32 0, i32 15
  %34 = load ptr, ptr %cdict28, align 8, !tbaa !119
  %35 = load ptr, ptr %job, align 8, !tbaa !8
  %fullFrameSize = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %35, i32 0, i32 16
  %36 = load i64, ptr %fullFrameSize, align 8, !tbaa !120
  %call29 = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %32, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %34, ptr noundef %jobParams, i64 noundef %36)
  store i64 %call29, ptr %initError, align 8, !tbaa !39
  %37 = load i64, ptr %initError, align 8, !tbaa !39
  %call30 = call i32 @ERR_isError(i64 noundef %37)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.then27
  %38 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex33 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %38, i32 0, i32 2
  %39 = load i64, ptr %initError, align 8, !tbaa !39
  %40 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize34 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %40, i32 0, i32 1
  store i64 %39, ptr %cSize34, align 8, !tbaa !70
  %41 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex35 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %41, i32 0, i32 2
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.then27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end36
  call void @llvm.lifetime.end.p0(i64 8, ptr %initError) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %_endJob
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end85

if.else:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %pledgedSrcSize) #7
  %42 = load ptr, ptr %job, align 8, !tbaa !8
  %firstJob = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %42, i32 0, i32 12
  %43 = load i32, ptr %firstJob, align 4, !tbaa !126
  %tobool37 = icmp ne i32 %43, 0
  br i1 %tobool37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %44 = load ptr, ptr %job, align 8, !tbaa !8
  %fullFrameSize38 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %44, i32 0, i32 16
  %45 = load i64, ptr %fullFrameSize38, align 8, !tbaa !120
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %46 = load ptr, ptr %job, align 8, !tbaa !8
  %src = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %46, i32 0, i32 10
  %size = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %47 = load i64, ptr %size, align 8, !tbaa !72
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %45, %cond.true ], [ %47, %cond.false ]
  store i64 %cond, ptr %pledgedSrcSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %forceWindowError) #7
  %48 = load ptr, ptr %job, align 8, !tbaa !8
  %firstJob39 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %48, i32 0, i32 12
  %49 = load i32, ptr %firstJob39, align 4, !tbaa !126
  %tobool40 = icmp ne i32 %49, 0
  %lnot = xor i1 %tobool40, true
  %lnot.ext = zext i1 %lnot to i32
  %call41 = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef %jobParams, i32 noundef 1000, i32 noundef %lnot.ext)
  store i64 %call41, ptr %forceWindowError, align 8, !tbaa !39
  %50 = load i64, ptr %forceWindowError, align 8, !tbaa !39
  %call42 = call i32 @ERR_isError(i64 noundef %50)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %cond.end
  %51 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex45 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %51, i32 0, i32 2
  %52 = load i64, ptr %forceWindowError, align 8, !tbaa !39
  %53 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize46 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %53, i32 0, i32 1
  store i64 %52, ptr %cSize46, align 8, !tbaa !70
  %54 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex47 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %54, i32 0, i32 2
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup49

if.end48:                                         ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %if.then44, %if.end48
  call void @llvm.lifetime.end.p0(i64 8, ptr %forceWindowError) #7
  %cleanup.dest50 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest50, label %cleanup82 [
    i32 0, label %cleanup.cont51
  ]

cleanup.cont51:                                   ; preds = %cleanup49
  %55 = load ptr, ptr %job, align 8, !tbaa !8
  %firstJob52 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %55, i32 0, i32 12
  %56 = load i32, ptr %firstJob52, align 4, !tbaa !126
  %tobool53 = icmp ne i32 %56, 0
  br i1 %tobool53, label %if.end66, label %if.then54

if.then54:                                        ; preds = %cleanup.cont51
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #7
  %call55 = call i64 @ZSTD_CCtxParams_setParameter(ptr noundef %jobParams, i32 noundef 1012, i32 noundef 0)
  store i64 %call55, ptr %err, align 8, !tbaa !39
  %57 = load i64, ptr %err, align 8, !tbaa !39
  %call56 = call i32 @ERR_isError(i64 noundef %57)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.end62

if.then58:                                        ; preds = %if.then54
  %58 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex59 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %58, i32 0, i32 2
  %59 = load i64, ptr %err, align 8, !tbaa !39
  %60 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize60 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %60, i32 0, i32 1
  store i64 %59, ptr %cSize60, align 8, !tbaa !70
  %61 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex61 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %61, i32 0, i32 2
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

if.end62:                                         ; preds = %if.then54
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %if.then58, %if.end62
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #7
  %cleanup.dest64 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest64, label %cleanup82 [
    i32 0, label %cleanup.cont65
  ]

cleanup.cont65:                                   ; preds = %cleanup63
  br label %if.end66

if.end66:                                         ; preds = %cleanup.cont65, %cleanup.cont51
  call void @llvm.lifetime.start.p0(i64 8, ptr %initError67) #7
  %62 = load ptr, ptr %cctx, align 8, !tbaa !8
  %63 = load ptr, ptr %job, align 8, !tbaa !8
  %prefix = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %63, i32 0, i32 9
  %start68 = getelementptr inbounds %struct.range_t, ptr %prefix, i32 0, i32 0
  %64 = load ptr, ptr %start68, align 8, !tbaa !148
  %65 = load ptr, ptr %job, align 8, !tbaa !8
  %prefix69 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %65, i32 0, i32 9
  %size70 = getelementptr inbounds %struct.range_t, ptr %prefix69, i32 0, i32 1
  %66 = load i64, ptr %size70, align 8, !tbaa !149
  %67 = load i64, ptr %pledgedSrcSize, align 8, !tbaa !39
  %call71 = call i64 @ZSTD_compressBegin_advanced_internal(ptr noundef %62, ptr noundef %64, i64 noundef %66, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef %jobParams, i64 noundef %67)
  store i64 %call71, ptr %initError67, align 8, !tbaa !39
  %68 = load i64, ptr %initError67, align 8, !tbaa !39
  %call72 = call i32 @ERR_isError(i64 noundef %68)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end66
  %69 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex75 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %69, i32 0, i32 2
  %70 = load i64, ptr %initError67, align 8, !tbaa !39
  %71 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize76 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %71, i32 0, i32 1
  store i64 %70, ptr %cSize76, align 8, !tbaa !70
  %72 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex77 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %72, i32 0, i32 2
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

if.end78:                                         ; preds = %if.end66
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

cleanup79:                                        ; preds = %if.then74, %if.end78
  call void @llvm.lifetime.end.p0(i64 8, ptr %initError67) #7
  %cleanup.dest80 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest80, label %cleanup82 [
    i32 0, label %cleanup.cont81
  ]

cleanup.cont81:                                   ; preds = %cleanup79
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup82

cleanup82:                                        ; preds = %cleanup.cont81, %cleanup79, %cleanup63, %cleanup49
  call void @llvm.lifetime.end.p0(i64 8, ptr %pledgedSrcSize) #7
  %cleanup.dest83 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest83, label %unreachable [
    i32 0, label %cleanup.cont84
    i32 2, label %_endJob
  ]

cleanup.cont84:                                   ; preds = %cleanup82
  br label %if.end85

if.end85:                                         ; preds = %cleanup.cont84, %cleanup.cont
  %73 = load ptr, ptr %job, align 8, !tbaa !8
  %serial = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %73, i32 0, i32 7
  %74 = load ptr, ptr %serial, align 8, !tbaa !124
  %75 = load ptr, ptr %cctx, align 8, !tbaa !8
  %76 = load ptr, ptr %job, align 8, !tbaa !8
  %src86 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %76, i32 0, i32 10
  %77 = load ptr, ptr %job, align 8, !tbaa !8
  %jobID87 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %77, i32 0, i32 11
  %78 = load i32, ptr %jobID87, align 8, !tbaa !125
  %79 = getelementptr inbounds { ptr, i64 }, ptr %src86, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds { ptr, i64 }, ptr %src86, i32 0, i32 1
  %82 = load i64, ptr %81, align 8
  call void @ZSTDMT_serialState_update(ptr noundef %74, ptr noundef %75, ptr noundef byval(%struct.rawSeqStore_t) align 8 %rawSeqStore, ptr %80, i64 %82, i32 noundef %78)
  %83 = load ptr, ptr %job, align 8, !tbaa !8
  %firstJob88 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %83, i32 0, i32 12
  %84 = load i32, ptr %firstJob88, align 4, !tbaa !126
  %tobool89 = icmp ne i32 %84, 0
  br i1 %tobool89, label %if.end105, label %if.then90

if.then90:                                        ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %hSize) #7
  %85 = load ptr, ptr %cctx, align 8, !tbaa !8
  %start91 = getelementptr inbounds %struct.buffer_s, ptr %dstBuff, i32 0, i32 0
  %86 = load ptr, ptr %start91, align 8, !tbaa !44
  %capacity = getelementptr inbounds %struct.buffer_s, ptr %dstBuff, i32 0, i32 1
  %87 = load i64, ptr %capacity, align 8, !tbaa !51
  %88 = load ptr, ptr %job, align 8, !tbaa !8
  %src92 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %88, i32 0, i32 10
  %start93 = getelementptr inbounds %struct.range_t, ptr %src92, i32 0, i32 0
  %89 = load ptr, ptr %start93, align 8, !tbaa !118
  %call94 = call i64 @ZSTD_compressContinue(ptr noundef %85, ptr noundef %86, i64 noundef %87, ptr noundef %89, i64 noundef 0)
  store i64 %call94, ptr %hSize, align 8, !tbaa !39
  %90 = load i64, ptr %hSize, align 8, !tbaa !39
  %call95 = call i32 @ERR_isError(i64 noundef %90)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end101

if.then97:                                        ; preds = %if.then90
  %91 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex98 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %91, i32 0, i32 2
  %92 = load i64, ptr %hSize, align 8, !tbaa !39
  %93 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize99 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %93, i32 0, i32 1
  store i64 %92, ptr %cSize99, align 8, !tbaa !70
  %94 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex100 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %94, i32 0, i32 2
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup102

if.end101:                                        ; preds = %if.then90
  %95 = load ptr, ptr %cctx, align 8, !tbaa !8
  call void @ZSTD_invalidateRepCodes(ptr noundef %95)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup102

cleanup102:                                       ; preds = %if.then97, %if.end101
  call void @llvm.lifetime.end.p0(i64 8, ptr %hSize) #7
  %cleanup.dest103 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest103, label %unreachable [
    i32 0, label %cleanup.cont104
    i32 2, label %_endJob
  ]

cleanup.cont104:                                  ; preds = %cleanup102
  br label %if.end105

if.end105:                                        ; preds = %cleanup.cont104, %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunkSize) #7
  store i64 524288, ptr %chunkSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbChunks) #7
  %96 = load ptr, ptr %job, align 8, !tbaa !8
  %src106 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %96, i32 0, i32 10
  %size107 = getelementptr inbounds %struct.range_t, ptr %src106, i32 0, i32 1
  %97 = load i64, ptr %size107, align 8, !tbaa !72
  %add = add i64 %97, 524287
  %div = udiv i64 %add, 524288
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %nbChunks, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #7
  %98 = load ptr, ptr %job, align 8, !tbaa !8
  %src108 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %98, i32 0, i32 10
  %start109 = getelementptr inbounds %struct.range_t, ptr %src108, i32 0, i32 0
  %99 = load ptr, ptr %start109, align 8, !tbaa !118
  store ptr %99, ptr %ip, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #7
  %start110 = getelementptr inbounds %struct.buffer_s, ptr %dstBuff, i32 0, i32 0
  %100 = load ptr, ptr %start110, align 8, !tbaa !44
  store ptr %100, ptr %ostart, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #7
  %101 = load ptr, ptr %ostart, align 8, !tbaa !8
  store ptr %101, ptr %op, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #7
  %102 = load ptr, ptr %op, align 8, !tbaa !8
  %capacity111 = getelementptr inbounds %struct.buffer_s, ptr %dstBuff, i32 0, i32 1
  %103 = load i64, ptr %capacity111, align 8, !tbaa !51
  %add.ptr = getelementptr inbounds i8, ptr %102, i64 %103
  store ptr %add.ptr, ptr %oend, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %chunkNb) #7
  store i32 1, ptr %chunkNb, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end105
  %104 = load i32, ptr %chunkNb, align 4, !tbaa !4
  %105 = load i32, ptr %nbChunks, align 4, !tbaa !4
  %cmp112 = icmp slt i32 %104, %105
  br i1 %cmp112, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cSize114) #7
  %106 = load ptr, ptr %cctx, align 8, !tbaa !8
  %107 = load ptr, ptr %op, align 8, !tbaa !8
  %108 = load ptr, ptr %oend, align 8, !tbaa !8
  %109 = load ptr, ptr %op, align 8, !tbaa !8
  %sub.ptr.lhs.cast = ptrtoint ptr %108 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %109 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %110 = load ptr, ptr %ip, align 8, !tbaa !8
  %call115 = call i64 @ZSTD_compressContinue(ptr noundef %106, ptr noundef %107, i64 noundef %sub.ptr.sub, ptr noundef %110, i64 noundef 524288)
  store i64 %call115, ptr %cSize114, align 8, !tbaa !39
  %111 = load i64, ptr %cSize114, align 8, !tbaa !39
  %call116 = call i32 @ERR_isError(i64 noundef %111)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end122

if.then118:                                       ; preds = %for.body
  %112 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex119 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %112, i32 0, i32 2
  %113 = load i64, ptr %cSize114, align 8, !tbaa !39
  %114 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize120 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %114, i32 0, i32 1
  store i64 %113, ptr %cSize120, align 8, !tbaa !70
  %115 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex121 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %115, i32 0, i32 2
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

if.end122:                                        ; preds = %for.body
  %116 = load ptr, ptr %ip, align 8, !tbaa !8
  %add.ptr123 = getelementptr inbounds i8, ptr %116, i64 524288
  store ptr %add.ptr123, ptr %ip, align 8, !tbaa !8
  %117 = load i64, ptr %cSize114, align 8, !tbaa !39
  %118 = load ptr, ptr %op, align 8, !tbaa !8
  %add.ptr124 = getelementptr inbounds i8, ptr %118, i64 %117
  store ptr %add.ptr124, ptr %op, align 8, !tbaa !8
  %119 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex125 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %119, i32 0, i32 2
  %120 = load i64, ptr %cSize114, align 8, !tbaa !39
  %121 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize126 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %121, i32 0, i32 1
  %122 = load i64, ptr %cSize126, align 8, !tbaa !70
  %add127 = add i64 %122, %120
  store i64 %add127, ptr %cSize126, align 8, !tbaa !70
  %123 = load i32, ptr %chunkNb, align 4, !tbaa !4
  %conv128 = sext i32 %123 to i64
  %mul = mul i64 524288, %conv128
  %124 = load ptr, ptr %job, align 8, !tbaa !8
  %consumed = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %124, i32 0, i32 0
  store i64 %mul, ptr %consumed, align 8, !tbaa !73
  %125 = load ptr, ptr %job, align 8, !tbaa !8
  %job_cond = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %125, i32 0, i32 3
  %126 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex129 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %126, i32 0, i32 2
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup130

cleanup130:                                       ; preds = %if.then118, %if.end122
  call void @llvm.lifetime.end.p0(i64 8, ptr %cSize114) #7
  %cleanup.dest131 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest131, label %cleanup179 [
    i32 0, label %cleanup.cont132
  ]

cleanup.cont132:                                  ; preds = %cleanup130
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont132
  %127 = load i32, ptr %chunkNb, align 4, !tbaa !4
  %inc = add nsw i32 %127, 1
  store i32 %inc, ptr %chunkNb, align 4, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %128 = load i32, ptr %nbChunks, align 4, !tbaa !4
  %cmp133 = icmp sgt i32 %128, 0
  %conv134 = zext i1 %cmp133 to i32
  %129 = load ptr, ptr %job, align 8, !tbaa !8
  %lastJob = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %129, i32 0, i32 13
  %130 = load i32, ptr %lastJob, align 8, !tbaa !127
  %or = or i32 %conv134, %130
  %tobool135 = icmp ne i32 %or, 0
  br i1 %tobool135, label %if.then136, label %if.end178

if.then136:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastBlockSize1) #7
  %131 = load ptr, ptr %job, align 8, !tbaa !8
  %src137 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %131, i32 0, i32 10
  %size138 = getelementptr inbounds %struct.range_t, ptr %src137, i32 0, i32 1
  %132 = load i64, ptr %size138, align 8, !tbaa !72
  %and = and i64 %132, 524287
  store i64 %and, ptr %lastBlockSize1, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastBlockSize) #7
  %133 = load i64, ptr %lastBlockSize1, align 8, !tbaa !39
  %cmp139 = icmp eq i64 %133, 0
  %conv140 = zext i1 %cmp139 to i32
  %134 = load ptr, ptr %job, align 8, !tbaa !8
  %src141 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %134, i32 0, i32 10
  %size142 = getelementptr inbounds %struct.range_t, ptr %src141, i32 0, i32 1
  %135 = load i64, ptr %size142, align 8, !tbaa !72
  %cmp143 = icmp uge i64 %135, 524288
  %conv144 = zext i1 %cmp143 to i32
  %and145 = and i32 %conv140, %conv144
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %cond.true147, label %cond.false148

cond.true147:                                     ; preds = %if.then136
  br label %cond.end149

cond.false148:                                    ; preds = %if.then136
  %136 = load i64, ptr %lastBlockSize1, align 8, !tbaa !39
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false148, %cond.true147
  %cond150 = phi i64 [ 524288, %cond.true147 ], [ %136, %cond.false148 ]
  store i64 %cond150, ptr %lastBlockSize, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %cSize151) #7
  %137 = load ptr, ptr %job, align 8, !tbaa !8
  %lastJob152 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %137, i32 0, i32 13
  %138 = load i32, ptr %lastJob152, align 8, !tbaa !127
  %tobool153 = icmp ne i32 %138, 0
  br i1 %tobool153, label %cond.true154, label %cond.false159

cond.true154:                                     ; preds = %cond.end149
  %139 = load ptr, ptr %cctx, align 8, !tbaa !8
  %140 = load ptr, ptr %op, align 8, !tbaa !8
  %141 = load ptr, ptr %oend, align 8, !tbaa !8
  %142 = load ptr, ptr %op, align 8, !tbaa !8
  %sub.ptr.lhs.cast155 = ptrtoint ptr %141 to i64
  %sub.ptr.rhs.cast156 = ptrtoint ptr %142 to i64
  %sub.ptr.sub157 = sub i64 %sub.ptr.lhs.cast155, %sub.ptr.rhs.cast156
  %143 = load ptr, ptr %ip, align 8, !tbaa !8
  %144 = load i64, ptr %lastBlockSize, align 8, !tbaa !39
  %call158 = call i64 @ZSTD_compressEnd(ptr noundef %139, ptr noundef %140, i64 noundef %sub.ptr.sub157, ptr noundef %143, i64 noundef %144)
  br label %cond.end164

cond.false159:                                    ; preds = %cond.end149
  %145 = load ptr, ptr %cctx, align 8, !tbaa !8
  %146 = load ptr, ptr %op, align 8, !tbaa !8
  %147 = load ptr, ptr %oend, align 8, !tbaa !8
  %148 = load ptr, ptr %op, align 8, !tbaa !8
  %sub.ptr.lhs.cast160 = ptrtoint ptr %147 to i64
  %sub.ptr.rhs.cast161 = ptrtoint ptr %148 to i64
  %sub.ptr.sub162 = sub i64 %sub.ptr.lhs.cast160, %sub.ptr.rhs.cast161
  %149 = load ptr, ptr %ip, align 8, !tbaa !8
  %150 = load i64, ptr %lastBlockSize, align 8, !tbaa !39
  %call163 = call i64 @ZSTD_compressContinue(ptr noundef %145, ptr noundef %146, i64 noundef %sub.ptr.sub162, ptr noundef %149, i64 noundef %150)
  br label %cond.end164

cond.end164:                                      ; preds = %cond.false159, %cond.true154
  %cond165 = phi i64 [ %call158, %cond.true154 ], [ %call163, %cond.false159 ]
  store i64 %cond165, ptr %cSize151, align 8, !tbaa !39
  %151 = load i64, ptr %cSize151, align 8, !tbaa !39
  %call166 = call i32 @ERR_isError(i64 noundef %151)
  %tobool167 = icmp ne i32 %call166, 0
  br i1 %tobool167, label %if.then168, label %if.end172

if.then168:                                       ; preds = %cond.end164
  %152 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex169 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %152, i32 0, i32 2
  %153 = load i64, ptr %cSize151, align 8, !tbaa !39
  %154 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize170 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %154, i32 0, i32 1
  store i64 %153, ptr %cSize170, align 8, !tbaa !70
  %155 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex171 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %155, i32 0, i32 2
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup173

if.end172:                                        ; preds = %cond.end164
  %156 = load i64, ptr %cSize151, align 8, !tbaa !39
  store i64 %156, ptr %lastCBlockSize, align 8, !tbaa !39
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup173

cleanup173:                                       ; preds = %if.then168, %if.end172
  call void @llvm.lifetime.end.p0(i64 8, ptr %cSize151) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastBlockSize) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastBlockSize1) #7
  %cleanup.dest176 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest176, label %cleanup179 [
    i32 0, label %cleanup.cont177
  ]

cleanup.cont177:                                  ; preds = %cleanup173
  br label %if.end178

if.end178:                                        ; preds = %cleanup.cont177, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %if.end178, %cleanup173, %cleanup130
  call void @llvm.lifetime.end.p0(i64 4, ptr %chunkNb) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbChunks) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunkSize) #7
  %cleanup.dest186 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest186, label %unreachable [
    i32 0, label %cleanup.cont187
    i32 2, label %_endJob
  ]

cleanup.cont187:                                  ; preds = %cleanup179
  %157 = load ptr, ptr %job, align 8, !tbaa !8
  %firstJob188 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %157, i32 0, i32 12
  %158 = load i32, ptr %firstJob188, align 4, !tbaa !126
  %tobool189 = icmp ne i32 %158, 0
  br i1 %tobool189, label %if.end191, label %if.then190

if.then190:                                       ; preds = %cleanup.cont187
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %cleanup.cont187
  %159 = load ptr, ptr %cctx, align 8, !tbaa !8
  call void @ZSTD_CCtx_trace(ptr noundef %159, i64 noundef 0)
  br label %_endJob

_endJob:                                          ; preds = %if.end191, %cleanup179, %cleanup102, %cleanup82, %cleanup, %if.then17, %if.then8, %if.then
  %160 = load ptr, ptr %job, align 8, !tbaa !8
  %serial192 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %160, i32 0, i32 7
  %161 = load ptr, ptr %serial192, align 8, !tbaa !124
  %162 = load ptr, ptr %job, align 8, !tbaa !8
  %jobID193 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %162, i32 0, i32 11
  %163 = load i32, ptr %jobID193, align 8, !tbaa !125
  %164 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize194 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %164, i32 0, i32 1
  %165 = load i64, ptr %cSize194, align 8, !tbaa !70
  call void @ZSTDMT_serialState_ensureFinished(ptr noundef %161, i32 noundef %163, i64 noundef %165)
  %166 = load ptr, ptr %job, align 8, !tbaa !8
  %prefix195 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %166, i32 0, i32 9
  %size196 = getelementptr inbounds %struct.range_t, ptr %prefix195, i32 0, i32 1
  %167 = load i64, ptr %size196, align 8, !tbaa !149
  %cmp197 = icmp ugt i64 %167, 0
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %_endJob
  br label %if.end200

if.end200:                                        ; preds = %if.then199, %_endJob
  %168 = load ptr, ptr %job, align 8, !tbaa !8
  %seqPool201 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %168, i32 0, i32 6
  %169 = load ptr, ptr %seqPool201, align 8, !tbaa !123
  call void @ZSTDMT_releaseSeq(ptr noundef %169, ptr noundef byval(%struct.rawSeqStore_t) align 8 %rawSeqStore)
  %170 = load ptr, ptr %job, align 8, !tbaa !8
  %cctxPool202 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %170, i32 0, i32 4
  %171 = load ptr, ptr %cctxPool202, align 8, !tbaa !121
  %172 = load ptr, ptr %cctx, align 8, !tbaa !8
  call void @ZSTDMT_releaseCCtx(ptr noundef %171, ptr noundef %172)
  %173 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex203 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %173, i32 0, i32 2
  %174 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize204 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %174, i32 0, i32 1
  %175 = load i64, ptr %cSize204, align 8, !tbaa !70
  %call205 = call i32 @ERR_isError(i64 noundef %175)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.end200
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %if.end200
  %176 = load i64, ptr %lastCBlockSize, align 8, !tbaa !39
  %177 = load ptr, ptr %job, align 8, !tbaa !8
  %cSize209 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %177, i32 0, i32 1
  %178 = load i64, ptr %cSize209, align 8, !tbaa !70
  %add210 = add i64 %178, %176
  store i64 %add210, ptr %cSize209, align 8, !tbaa !70
  %179 = load ptr, ptr %job, align 8, !tbaa !8
  %src211 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %179, i32 0, i32 10
  %size212 = getelementptr inbounds %struct.range_t, ptr %src211, i32 0, i32 1
  %180 = load i64, ptr %size212, align 8, !tbaa !72
  %181 = load ptr, ptr %job, align 8, !tbaa !8
  %consumed213 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %181, i32 0, i32 0
  store i64 %180, ptr %consumed213, align 8, !tbaa !73
  %182 = load ptr, ptr %job, align 8, !tbaa !8
  %job_cond214 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %182, i32 0, i32 3
  %183 = load ptr, ptr %job, align 8, !tbaa !8
  %job_mutex215 = getelementptr inbounds %struct.ZSTDMT_jobDescription, ptr %183, i32 0, i32 2
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastCBlockSize) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %dstBuff) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %rawSeqStore) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctx) #7
  call void @llvm.lifetime.end.p0(i64 176, ptr %jobParams) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %job) #7
  ret void

unreachable:                                      ; preds = %cleanup, %cleanup82, %cleanup102, %cleanup179
  unreachable
}

; Function Attrs: nounwind uwtable
define internal { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %bufPool) #0 {
entry:
  %retval = alloca %struct.buffer_s, align 8
  %bufPool.addr = alloca ptr, align 8
  %bSize = alloca i64, align 8
  %availBufferSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %start13 = alloca ptr, align 8
  store ptr %bufPool, ptr %bufPool.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bSize) #7
  %0 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %bufferSize = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %bufferSize, align 8, !tbaa !95
  store i64 %1, ptr %bSize, align 8, !tbaa !39
  %2 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %nbBuffers = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %nbBuffers, align 4, !tbaa !135
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %bTable = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %nbBuffers1 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %nbBuffers1, align 4, !tbaa !135
  %dec = add i32 %7, -1
  store i32 %dec, ptr %nbBuffers1, align 4, !tbaa !135
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds [1 x %struct.buffer_s], ptr %bTable, i64 0, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %arrayidx, i64 16, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.start.p0(i64 8, ptr %availBufferSize) #7
  %capacity = getelementptr inbounds %struct.buffer_s, ptr %retval, i32 0, i32 1
  %8 = load i64, ptr %capacity, align 8, !tbaa !51
  store i64 %8, ptr %availBufferSize, align 8, !tbaa !39
  %9 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %bTable2 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %nbBuffers3 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %nbBuffers3, align 4, !tbaa !135
  %idxprom4 = zext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [1 x %struct.buffer_s], ptr %bTable2, i64 0, i64 %idxprom4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx5, ptr align 8 @g_nullBuffer, i64 16, i1 false), !tbaa.struct !38
  %12 = load i64, ptr %availBufferSize, align 8, !tbaa !39
  %13 = load i64, ptr %bSize, align 8, !tbaa !39
  %cmp = icmp uge i64 %12, %13
  %conv = zext i1 %cmp to i32
  %14 = load i64, ptr %availBufferSize, align 8, !tbaa !39
  %shr = lshr i64 %14, 3
  %15 = load i64, ptr %bSize, align 8, !tbaa !39
  %cmp6 = icmp ule i64 %shr, %15
  %conv7 = zext i1 %cmp6 to i32
  %and = and i32 %conv, %conv7
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %16 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex10 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %16, i32 0, i32 0
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %start = getelementptr inbounds %struct.buffer_s, ptr %retval, i32 0, i32 0
  %17 = load ptr, ptr %start, align 8, !tbaa !44
  %18 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %18, i32 0, i32 4
  call void @ZSTD_customFree(ptr noundef %17, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %availBufferSize) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11

if.end11:                                         ; preds = %cleanup.cont, %entry
  %19 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %poolMutex12 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %19, i32 0, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr %start13) #7
  %20 = load i64, ptr %bSize, align 8, !tbaa !39
  %21 = load ptr, ptr %bufPool.addr, align 8, !tbaa !8
  %cMem14 = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %21, i32 0, i32 4
  %call = call ptr @ZSTD_customMalloc(i64 noundef %20, ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem14)
  store ptr %call, ptr %start13, align 8, !tbaa !8
  %22 = load ptr, ptr %start13, align 8, !tbaa !8
  %start15 = getelementptr inbounds %struct.buffer_s, ptr %retval, i32 0, i32 0
  store ptr %22, ptr %start15, align 8, !tbaa !44
  %23 = load ptr, ptr %start13, align 8, !tbaa !8
  %cmp16 = icmp eq ptr %23, null
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end11
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  %24 = load i64, ptr %bSize, align 8, !tbaa !39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %24, %cond.false ]
  %capacity18 = getelementptr inbounds %struct.buffer_s, ptr %retval, i32 0, i32 1
  store i64 %cond, ptr %capacity18, align 8, !tbaa !51
  %25 = load ptr, ptr %start13, align 8, !tbaa !8
  %cmp19 = icmp eq ptr %25, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %cond.end
  br label %if.end22

if.else:                                          ; preds = %cond.end
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %start13) #7
  br label %cleanup24

cleanup24:                                        ; preds = %if.end22, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %bSize) #7
  %26 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %26
}

declare i64 @ZSTD_writeLastEmptyBlock(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @ZSTDMT_getCCtx(ptr noundef %cctxPool) #0 {
entry:
  %retval = alloca ptr, align 8
  %cctxPool.addr = alloca ptr, align 8
  %cctx = alloca ptr, align 8
  store ptr %cctxPool, ptr %cctxPool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %availCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %availCCtx, align 8, !tbaa !136
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %availCCtx1 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %availCCtx1, align 8, !tbaa !136
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %availCCtx1, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %cctx) #7
  %5 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %cctx2 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %availCCtx3 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %availCCtx3, align 8, !tbaa !136
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %cctx2, i64 0, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !8
  store ptr %8, ptr %cctx, align 8, !tbaa !8
  %9 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %poolMutex4 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %cctx, align 8, !tbaa !8
  store ptr %10, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cctx) #7
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %poolMutex5 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %cctxPool.addr, align 8, !tbaa !8
  %cMem = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %12, i32 0, i32 3
  %call = call ptr @ZSTD_createCCtx_advanced(ptr noundef byval(%struct.ZSTD_customMem) align 8 %cMem)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_getSeq(ptr noalias sret(%struct.rawSeqStore_t) align 8 %agg.result, ptr noundef %seqPool) #0 {
entry:
  %seqPool.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.buffer_s, align 8
  store ptr %seqPool, ptr %seqPool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %seqPool.addr, align 8, !tbaa !8
  %bufferSize = getelementptr inbounds %struct.ZSTDMT_bufferPool_s, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %bufferSize, align 8, !tbaa !95
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 @kNullRawSeqStore, i64 40, i1 false), !tbaa.struct !150
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #7
  %2 = load ptr, ptr %seqPool.addr, align 8, !tbaa !8
  %call = call { ptr, i64 } @ZSTDMT_getBuffer(ptr noundef %2)
  %3 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 0
  %4 = extractvalue { ptr, i64 } %call, 0
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 1
  %6 = extractvalue { ptr, i64 } %call, 1
  store i64 %6, ptr %5, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  call void @bufferToSeq(ptr sret(%struct.rawSeqStore_t) align 8 %agg.result, ptr %8, i64 %10)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i64 @ZSTD_compressBegin_advanced_internal(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_serialState_update(ptr noundef %serialState, ptr noundef %jobCCtx, ptr noundef byval(%struct.rawSeqStore_t) align 8 %seqStore, ptr %src.coerce0, i64 %src.coerce1, i32 noundef %jobID) #0 {
entry:
  %src = alloca %struct.range_t, align 8
  %serialState.addr = alloca ptr, align 8
  %jobCCtx.addr = alloca ptr, align 8
  %jobID.addr = alloca i32, align 4
  %error = alloca i64, align 8
  %err = alloca i64, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %src, i32 0, i32 0
  store ptr %src.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %src, i32 0, i32 1
  store i64 %src.coerce1, ptr %1, align 8
  store ptr %serialState, ptr %serialState.addr, align 8, !tbaa !8
  store ptr %jobCCtx, ptr %jobCCtx.addr, align 8, !tbaa !8
  store i32 %jobID, ptr %jobID.addr, align 4, !tbaa !4
  %2 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %mutex = getelementptr inbounds %struct.serialState_t, ptr %2, i32 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.serialState_t, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %nextJobID, align 8, !tbaa !96
  %5 = load i32, ptr %jobID.addr, align 4, !tbaa !4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %cond = getelementptr inbounds %struct.serialState_t, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %mutex1 = getelementptr inbounds %struct.serialState_t, ptr %7, i32 0, i32 0
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %nextJobID2 = getelementptr inbounds %struct.serialState_t, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %nextJobID2, align 8, !tbaa !96
  %10 = load i32, ptr %jobID.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end23

if.then:                                          ; preds = %while.end
  %11 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params = getelementptr inbounds %struct.serialState_t, ptr %11, i32 0, i32 2
  %ldmParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params, i32 0, i32 13
  %enableLdm = getelementptr inbounds %struct.ldmParams_t, ptr %ldmParams, i32 0, i32 0
  %12 = load i32, ptr %enableLdm, align 8, !tbaa !151
  %cmp4 = icmp eq i32 %12, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %error) #7
  %13 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState = getelementptr inbounds %struct.serialState_t, ptr %13, i32 0, i32 3
  %window = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 0
  %start = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 0
  %14 = load ptr, ptr %start, align 8, !tbaa !144
  %size = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %15 = load i64, ptr %size, align 8, !tbaa !143
  %call = call i32 @ZSTD_window_update(ptr noundef %window, ptr noundef %14, i64 noundef %15, i32 noundef 0)
  %16 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState6 = getelementptr inbounds %struct.serialState_t, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params7 = getelementptr inbounds %struct.serialState_t, ptr %17, i32 0, i32 2
  %ldmParams8 = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params7, i32 0, i32 13
  %start9 = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 0
  %18 = load ptr, ptr %start9, align 8, !tbaa !144
  %size10 = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %19 = load i64, ptr %size10, align 8, !tbaa !143
  %call11 = call i64 @ZSTD_ldm_generateSequences(ptr noundef %ldmState6, ptr noundef %seqStore, ptr noundef %ldmParams8, ptr noundef %18, i64 noundef %19)
  store i64 %call11, ptr %error, align 8, !tbaa !39
  %20 = load i64, ptr %error, align 8, !tbaa !39
  %21 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowMutex = getelementptr inbounds %struct.serialState_t, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindow = getelementptr inbounds %struct.serialState_t, ptr %22, i32 0, i32 8
  %23 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmState12 = getelementptr inbounds %struct.serialState_t, ptr %23, i32 0, i32 3
  %window13 = getelementptr inbounds %struct.ldmState_t, ptr %ldmState12, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ldmWindow, ptr align 8 %window13, i64 40, i1 false), !tbaa.struct !105
  %24 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowCond = getelementptr inbounds %struct.serialState_t, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowMutex14 = getelementptr inbounds %struct.serialState_t, ptr %25, i32 0, i32 6
  call void @llvm.lifetime.end.p0(i64 8, ptr %error) #7
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %26 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %params15 = getelementptr inbounds %struct.serialState_t, ptr %26, i32 0, i32 2
  %fParams = getelementptr inbounds %struct.ZSTD_CCtx_params_s, ptr %params15, i32 0, i32 2
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameParameters, ptr %fParams, i32 0, i32 1
  %27 = load i32, ptr %checksumFlag, align 4, !tbaa !152
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %size16 = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %28 = load i64, ptr %size16, align 8, !tbaa !143
  %cmp17 = icmp ugt i64 %28, 0
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %xxhState = getelementptr inbounds %struct.serialState_t, ptr %29, i32 0, i32 4
  %start19 = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 0
  %30 = load ptr, ptr %start19, align 8, !tbaa !144
  %size20 = getelementptr inbounds %struct.range_t, ptr %src, i32 0, i32 1
  %31 = load i64, ptr %size20, align 8, !tbaa !143
  %call21 = call i32 @ZSTD_XXH64_update(ptr noundef %xxhState, ptr noundef %30, i64 noundef %31)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %land.lhs.true, %if.end
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %while.end
  %32 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %nextJobID24 = getelementptr inbounds %struct.serialState_t, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %nextJobID24, align 8, !tbaa !96
  %inc = add i32 %33, 1
  store i32 %inc, ptr %nextJobID24, align 8, !tbaa !96
  %34 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %cond25 = getelementptr inbounds %struct.serialState_t, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %mutex26 = getelementptr inbounds %struct.serialState_t, ptr %35, i32 0, i32 0
  %size27 = getelementptr inbounds %struct.rawSeqStore_t, ptr %seqStore, i32 0, i32 3
  %36 = load i64, ptr %size27, align 8, !tbaa !153
  %cmp28 = icmp ugt i64 %36, 0
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #7
  %37 = load ptr, ptr %jobCCtx.addr, align 8, !tbaa !8
  %seq = getelementptr inbounds %struct.rawSeqStore_t, ptr %seqStore, i32 0, i32 0
  %38 = load ptr, ptr %seq, align 8, !tbaa !146
  %size30 = getelementptr inbounds %struct.rawSeqStore_t, ptr %seqStore, i32 0, i32 3
  %39 = load i64, ptr %size30, align 8, !tbaa !153
  %call31 = call i64 @ZSTD_referenceExternalSequences(ptr noundef %37, ptr noundef %38, i64 noundef %39)
  store i64 %call31, ptr %err, align 8, !tbaa !39
  %40 = load i64, ptr %err, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end23
  ret void
}

declare i64 @ZSTD_compressContinue(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare void @ZSTD_invalidateRepCodes(ptr noundef) #1

declare i64 @ZSTD_compressEnd(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #1

declare void @ZSTD_CCtx_trace(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_serialState_ensureFinished(ptr noundef %serialState, i32 noundef %jobID, i64 noundef %cSize) #0 {
entry:
  %serialState.addr = alloca ptr, align 8
  %jobID.addr = alloca i32, align 4
  %cSize.addr = alloca i64, align 8
  store ptr %serialState, ptr %serialState.addr, align 8, !tbaa !8
  store i32 %jobID, ptr %jobID.addr, align 4, !tbaa !4
  store i64 %cSize, ptr %cSize.addr, align 8, !tbaa !39
  %0 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %mutex = getelementptr inbounds %struct.serialState_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %nextJobID = getelementptr inbounds %struct.serialState_t, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nextJobID, align 8, !tbaa !96
  %3 = load i32, ptr %jobID.addr, align 4, !tbaa !4
  %cmp = icmp ule i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %cSize.addr, align 8, !tbaa !39
  %5 = load i32, ptr %jobID.addr, align 4, !tbaa !4
  %add = add i32 %5, 1
  %6 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %nextJobID1 = getelementptr inbounds %struct.serialState_t, ptr %6, i32 0, i32 5
  store i32 %add, ptr %nextJobID1, align 8, !tbaa !96
  %7 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %cond = getelementptr inbounds %struct.serialState_t, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowMutex = getelementptr inbounds %struct.serialState_t, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindow = getelementptr inbounds %struct.serialState_t, ptr %9, i32 0, i32 8
  call void @ZSTD_window_clear(ptr noundef %ldmWindow)
  %10 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowCond = getelementptr inbounds %struct.serialState_t, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %ldmWindowMutex2 = getelementptr inbounds %struct.serialState_t, ptr %11, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %serialState.addr, align 8, !tbaa !8
  %mutex3 = getelementptr inbounds %struct.serialState_t, ptr %12, i32 0, i32 0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_releaseSeq(ptr noundef %seqPool, ptr noundef byval(%struct.rawSeqStore_t) align 8 %seq) #0 {
entry:
  %seqPool.addr = alloca ptr, align 8
  %agg.tmp = alloca %struct.buffer_s, align 8
  store ptr %seqPool, ptr %seqPool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %seqPool.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #7
  %call = call { ptr, i64 } @seqToBuffer(ptr noundef byval(%struct.rawSeqStore_t) align 8 %seq)
  %1 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 0
  %2 = extractvalue { ptr, i64 } %call, 0
  store ptr %2, ptr %1, align 8
  %3 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 1
  %4 = extractvalue { ptr, i64 } %call, 1
  store i64 %4, ptr %3, align 8
  %5 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds { ptr, i64 }, ptr %agg.tmp, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  call void @ZSTDMT_releaseBuffer(ptr noundef %0, ptr %6, i64 %8)
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ZSTDMT_releaseCCtx(ptr noundef %pool, ptr noundef %cctx) #0 {
entry:
  %pool.addr = alloca ptr, align 8
  %cctx.addr = alloca ptr, align 8
  store ptr %pool, ptr %pool.addr, align 8, !tbaa !8
  store ptr %cctx, ptr %cctx.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %cctx.addr, align 8, !tbaa !8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %poolMutex = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %availCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %availCCtx, align 8, !tbaa !136
  %4 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %totalCCtx = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %totalCCtx, align 4, !tbaa !45
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %cctx.addr, align 8, !tbaa !8
  %7 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %cctx3 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %availCCtx4 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %availCCtx4, align 8, !tbaa !136
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %availCCtx4, align 8, !tbaa !136
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %cctx3, i64 0, i64 %idxprom
  store ptr %6, ptr %arrayidx, align 8, !tbaa !8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %cctx.addr, align 8, !tbaa !8
  %call = call i64 @ZSTD_freeCCtx(ptr noundef %10)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %11 = load ptr, ptr %pool.addr, align 8, !tbaa !8
  %poolMutex6 = getelementptr inbounds %struct.ZSTDMT_CCtxPool, ptr %11, i32 0, i32 0
  br label %return

return:                                           ; preds = %if.end5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @bufferToSeq(ptr noalias sret(%struct.rawSeqStore_t) align 8 %agg.result, ptr %buffer.coerce0, i64 %buffer.coerce1) #0 {
entry:
  %buffer = alloca %struct.buffer_s, align 8
  %0 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 0
  store ptr %buffer.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { ptr, i64 }, ptr %buffer, i32 0, i32 1
  store i64 %buffer.coerce1, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %agg.result, i8 0, i64 40, i1 false)
  %start = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 0
  %2 = load ptr, ptr %start, align 8, !tbaa !44
  %seq = getelementptr inbounds %struct.rawSeqStore_t, ptr %agg.result, i32 0, i32 0
  store ptr %2, ptr %seq, align 8, !tbaa !146
  %capacity = getelementptr inbounds %struct.buffer_s, ptr %buffer, i32 0, i32 1
  %3 = load i64, ptr %capacity, align 8, !tbaa !51
  %div = udiv i64 %3, 12
  %capacity1 = getelementptr inbounds %struct.rawSeqStore_t, ptr %agg.result, i32 0, i32 4
  store i64 %div, ptr %capacity1, align 8, !tbaa !154
  ret void
}

declare i64 @ZSTD_ldm_generateSequences(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @ZSTD_XXH64_update(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @ZSTD_referenceExternalSequences(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @ZSTD_window_clear(ptr noundef %window) #4 {
entry:
  %window.addr = alloca ptr, align 8
  %endT = alloca i64, align 8
  %end = alloca i32, align 4
  store ptr %window, ptr %window.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %endT) #7
  %0 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %nextSrc = getelementptr inbounds %struct.ZSTD_window_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %nextSrc, align 8, !tbaa !141
  %2 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %base = getelementptr inbounds %struct.ZSTD_window_t, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %base, align 8, !tbaa !137
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %endT, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #7
  %4 = load i64, ptr %endT, align 8, !tbaa !39
  %conv = trunc i64 %4 to i32
  store i32 %conv, ptr %end, align 4, !tbaa !4
  %5 = load i32, ptr %end, align 4, !tbaa !4
  %6 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %lowLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %6, i32 0, i32 4
  store i32 %5, ptr %lowLimit, align 4, !tbaa !140
  %7 = load i32, ptr %end, align 4, !tbaa !4
  %8 = load ptr, ptr %window.addr, align 8, !tbaa !8
  %dictLimit = getelementptr inbounds %struct.ZSTD_window_t, ptr %8, i32 0, i32 3
  store i32 %7, ptr %dictLimit, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %endT) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal { ptr, i64 } @seqToBuffer(ptr noundef byval(%struct.rawSeqStore_t) align 8 %seq) #0 {
entry:
  %retval = alloca %struct.buffer_s, align 8
  %seq1 = getelementptr inbounds %struct.rawSeqStore_t, ptr %seq, i32 0, i32 0
  %0 = load ptr, ptr %seq1, align 8, !tbaa !146
  %start = getelementptr inbounds %struct.buffer_s, ptr %retval, i32 0, i32 0
  store ptr %0, ptr %start, align 8, !tbaa !44
  %capacity = getelementptr inbounds %struct.rawSeqStore_t, ptr %seq, i32 0, i32 4
  %1 = load i64, ptr %capacity, align 8, !tbaa !154
  %mul = mul i64 %1, 12
  %capacity2 = getelementptr inbounds %struct.buffer_s, ptr %retval, i32 0, i32 1
  store i64 %mul, ptr %capacity2, align 8, !tbaa !51
  %2 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %2
}

declare i64 @ZSTD_XXH64_digest(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @MEM_writeLE32(ptr noundef %memPtr, i32 noundef %val32) #4 {
entry:
  %memPtr.addr = alloca ptr, align 8
  %val32.addr = alloca i32, align 4
  store ptr %memPtr, ptr %memPtr.addr, align 8, !tbaa !8
  store i32 %val32, ptr %val32.addr, align 4, !tbaa !4
  %call = call i32 @MEM_isLittleEndian()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %memPtr.addr, align 8, !tbaa !8
  %1 = load i32, ptr %val32.addr, align 4, !tbaa !4
  call void @MEM_write32(ptr noundef %0, i32 noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %memPtr.addr, align 8, !tbaa !8
  %3 = load i32, ptr %val32.addr, align 4, !tbaa !4
  %call1 = call i32 @MEM_swap32(i32 noundef %3)
  call void @MEM_write32(ptr noundef %2, i32 noundef %call1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MEM_isLittleEndian() #4 {
entry:
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @MEM_write32(ptr noundef %memPtr, i32 noundef %value) #4 {
entry:
  %memPtr.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %memPtr, ptr %memPtr.addr, align 8, !tbaa !8
  store i32 %value, ptr %value.addr, align 4, !tbaa !4
  %0 = load i32, ptr %value.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %memPtr.addr, align 8, !tbaa !8
  %v = getelementptr inbounds %struct.unalign32, ptr %1, i32 0, i32 0
  store i32 %0, ptr %v, align 1, !tbaa !155
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @MEM_swap32(i32 noundef %in) #4 {
entry:
  %in.addr = alloca i32, align 4
  store i32 %in, ptr %in.addr, align 4, !tbaa !4
  %0 = load i32, ptr %in.addr, align 4, !tbaa !4
  %1 = call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"ZSTDMT_CCtx_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !12, i64 40, !15, i64 216, !15, i64 224, !5, i64 232, !18, i64 240, !21, i64 280, !22, i64 304, !26, i64 2744, !5, i64 2768, !5, i64 2772, !5, i64 2776, !5, i64 2780, !5, i64 2784, !27, i64 2792, !27, i64 2800, !27, i64 2808, !17, i64 2816, !9, i64 2840, !9, i64 2848, !5, i64 2856}
!12 = !{!"ZSTD_CCtx_params_s", !6, i64 0, !13, i64 4, !14, i64 32, !5, i64 44, !5, i64 48, !15, i64 56, !5, i64 64, !6, i64 68, !6, i64 72, !5, i64 76, !15, i64 80, !5, i64 88, !5, i64 92, !16, i64 96, !5, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !5, i64 136, !6, i64 140, !6, i64 144, !5, i64 148, !17, i64 152}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24}
!14 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!15 = !{!"long", !6, i64 0}
!16 = !{!"", !6, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!17 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!18 = !{!"", !19, i64 0, !20, i64 16, !15, i64 32}
!19 = !{!"", !9, i64 0, !15, i64 8}
!20 = !{!"buffer_s", !9, i64 0, !15, i64 8}
!21 = !{!"", !9, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"", !5, i64 0, !5, i64 4, !12, i64 8, !23, i64 184, !25, i64 2296, !5, i64 2384, !5, i64 2388, !5, i64 2392, !24, i64 2400}
!23 = !{!"", !24, i64 0, !9, i64 40, !5, i64 48, !9, i64 56, !6, i64 64, !6, i64 576}
!24 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!25 = !{!"XXH64_state_s", !15, i64 0, !6, i64 8, !6, i64 40, !5, i64 72, !5, i64 76, !15, i64 80}
!26 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!27 = !{!"long long", !6, i64 0}
!28 = !{!11, !9, i64 8}
!29 = !{!11, !5, i64 2768}
!30 = !{!11, !9, i64 16}
!31 = !{!11, !9, i64 24}
!32 = !{!11, !9, i64 32}
!33 = !{!11, !9, i64 2840}
!34 = !{!11, !9, i64 280}
!35 = !{!36, !5, i64 16}
!36 = !{!"", !15, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !20, i64 56, !19, i64 72, !19, i64 88, !5, i64 104, !5, i64 108, !5, i64 112, !12, i64 120, !9, i64 296, !27, i64 304, !15, i64 312, !5, i64 320}
!37 = !{!36, !5, i64 20}
!38 = !{i64 0, i64 8, !8, i64 8, i64 8, !39}
!39 = !{!15, !15, i64 0}
!40 = !{!11, !15, i64 272}
!41 = !{!11, !5, i64 2784}
!42 = !{!43, !5, i64 16}
!43 = !{!"ZSTDMT_bufferPool_s", !5, i64 0, !15, i64 8, !5, i64 16, !5, i64 20, !17, i64 24, !6, i64 48}
!44 = !{!20, !9, i64 0}
!45 = !{!46, !5, i64 4}
!46 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !17, i64 16, !6, i64 40}
!47 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 8, !8}
!48 = !{!22, !9, i64 224}
!49 = !{!22, !9, i64 240}
!50 = !{!11, !15, i64 288}
!51 = !{!20, !15, i64 8}
!52 = !{!11, !5, i64 44}
!53 = !{!12, !5, i64 44}
!54 = !{!11, !5, i64 84}
!55 = !{!13, !5, i64 0}
!56 = !{i64 0, i64 4, !4, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !57}
!57 = !{!6, !6, i64 0}
!58 = !{!11, !27, i64 2800}
!59 = !{!60, !27, i64 0}
!60 = !{!"", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !5, i64 32, !5, i64 36}
!61 = !{!60, !27, i64 8}
!62 = !{!11, !27, i64 2808}
!63 = !{!60, !27, i64 24}
!64 = !{!60, !27, i64 16}
!65 = !{!11, !5, i64 2776}
!66 = !{!60, !5, i64 32}
!67 = !{!60, !5, i64 36}
!68 = !{!11, !5, i64 232}
!69 = !{!11, !5, i64 2772}
!70 = !{!36, !15, i64 8}
!71 = !{!36, !15, i64 312}
!72 = !{!36, !15, i64 96}
!73 = !{!36, !15, i64 0}
!74 = !{!27, !27, i64 0}
!75 = !{!12, !5, i64 76}
!76 = !{!11, !5, i64 116}
!77 = !{!12, !15, i64 80}
!78 = !{i64 0, i64 4, !57, i64 4, i64 4, !4, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4, i64 24, i64 4, !4, i64 28, i64 4, !57, i64 32, i64 4, !4, i64 36, i64 4, !4, i64 40, i64 4, !4, i64 44, i64 4, !4, i64 48, i64 4, !4, i64 56, i64 8, !39, i64 64, i64 4, !4, i64 68, i64 4, !57, i64 72, i64 4, !57, i64 76, i64 4, !4, i64 80, i64 8, !39, i64 88, i64 4, !4, i64 92, i64 4, !4, i64 96, i64 4, !57, i64 100, i64 4, !4, i64 104, i64 4, !4, i64 108, i64 4, !4, i64 112, i64 4, !4, i64 116, i64 4, !4, i64 120, i64 4, !4, i64 124, i64 4, !57, i64 128, i64 4, !57, i64 132, i64 4, !57, i64 136, i64 4, !4, i64 140, i64 4, !57, i64 144, i64 4, !57, i64 148, i64 4, !4, i64 152, i64 8, !8, i64 160, i64 8, !8, i64 168, i64 8, !8}
!79 = !{!11, !27, i64 2792}
!80 = !{!11, !9, i64 2848}
!81 = !{!11, !15, i64 224}
!82 = !{!11, !15, i64 216}
!83 = !{!12, !5, i64 92}
!84 = !{!11, !15, i64 2744}
!85 = !{!11, !15, i64 2752}
!86 = !{!11, !15, i64 2760}
!87 = !{!11, !6, i64 136}
!88 = !{!11, !15, i64 296}
!89 = !{!11, !5, i64 2780}
!90 = !{!12, !5, i64 88}
!91 = !{!12, !6, i64 28}
!92 = !{!12, !5, i64 4}
!93 = !{!12, !6, i64 96}
!94 = !{!12, !5, i64 8}
!95 = !{!43, !15, i64 8}
!96 = !{!22, !5, i64 2384}
!97 = !{!12, !5, i64 36}
!98 = !{!12, !5, i64 100}
!99 = !{!12, !5, i64 104}
!100 = !{!22, !5, i64 108}
!101 = !{!22, !5, i64 112}
!102 = !{!22, !5, i64 232}
!103 = !{!12, !5, i64 48}
!104 = !{!22, !9, i64 192}
!105 = !{i64 0, i64 8, !8, i64 8, i64 8, !8, i64 16, i64 8, !8, i64 24, i64 4, !4, i64 28, i64 4, !4, i64 32, i64 4, !4}
!106 = !{!22, !15, i64 88}
!107 = !{!108, !15, i64 8}
!108 = !{!"ZSTD_inBuffer_s", !9, i64 0, !15, i64 8, !15, i64 16}
!109 = !{!108, !15, i64 16}
!110 = !{!11, !9, i64 256}
!111 = !{!112, !5, i64 8}
!112 = !{!"", !15, i64 0, !5, i64 8}
!113 = !{!108, !9, i64 0}
!114 = !{!112, !15, i64 0}
!115 = !{!11, !15, i64 248}
!116 = !{!11, !9, i64 240}
!117 = !{!11, !5, i64 132}
!118 = !{!36, !9, i64 88}
!119 = !{!36, !9, i64 296}
!120 = !{!36, !27, i64 304}
!121 = !{!36, !9, i64 24}
!122 = !{!36, !9, i64 32}
!123 = !{!36, !9, i64 40}
!124 = !{!36, !9, i64 48}
!125 = !{!36, !5, i64 104}
!126 = !{!36, !5, i64 108}
!127 = !{!36, !5, i64 112}
!128 = !{!11, !5, i64 76}
!129 = !{!36, !5, i64 320}
!130 = !{!36, !9, i64 56}
!131 = !{!132, !15, i64 8}
!132 = !{!"ZSTD_outBuffer_s", !9, i64 0, !15, i64 8, !15, i64 16}
!133 = !{!132, !15, i64 16}
!134 = !{!132, !9, i64 0}
!135 = !{!43, !5, i64 20}
!136 = !{!46, !5, i64 8}
!137 = !{!24, !9, i64 8}
!138 = !{!24, !9, i64 16}
!139 = !{!24, !5, i64 24}
!140 = !{!24, !5, i64 28}
!141 = !{!24, !9, i64 0}
!142 = !{!24, !5, i64 32}
!143 = !{!19, !15, i64 8}
!144 = !{!19, !9, i64 0}
!145 = !{!36, !15, i64 64}
!146 = !{!147, !9, i64 0}
!147 = !{!"", !9, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!148 = !{!36, !9, i64 72}
!149 = !{!36, !15, i64 80}
!150 = !{i64 0, i64 8, !8, i64 8, i64 8, !39, i64 16, i64 8, !39, i64 24, i64 8, !39, i64 32, i64 8, !39}
!151 = !{!22, !6, i64 104}
!152 = !{!22, !5, i64 44}
!153 = !{!147, !15, i64 24}
!154 = !{!147, !15, i64 32}
!155 = !{!156, !5, i64 0}
!156 = !{!"", !5, i64 0}
