; ModuleID = 'samples/783.bc'
source_filename = "muxinternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ChunkInfo = type { i32, i32, i32 }
%struct.WebPChunk = type { i32, i32, %struct.WebPData, ptr }
%struct.WebPData = type { ptr, i64 }
%struct.WebPMuxImage = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.WebPMux = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@kChunks = hidden constant [11 x %struct.ChunkInfo] [%struct.ChunkInfo { i32 1480085590, i32 0, i32 10 }, %struct.ChunkInfo { i32 1346585417, i32 1, i32 -1 }, %struct.ChunkInfo { i32 1296649793, i32 2, i32 6 }, %struct.ChunkInfo { i32 1179471425, i32 3, i32 16 }, %struct.ChunkInfo { i32 1213221953, i32 5, i32 -1 }, %struct.ChunkInfo { i32 540561494, i32 6, i32 -1 }, %struct.ChunkInfo { i32 1278758998, i32 6, i32 -1 }, %struct.ChunkInfo { i32 1179211845, i32 7, i32 -1 }, %struct.ChunkInfo { i32 542133592, i32 8, i32 -1 }, %struct.ChunkInfo { i32 0, i32 9, i32 -1 }, %struct.ChunkInfo { i32 0, i32 10, i32 -1 }], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define i32 @WebPGetMuxVersion() #0 !dbg !117 {
entry:
  ret i32 66052, !dbg !120
}

; Function Attrs: nounwind uwtable
define hidden void @ChunkInit(ptr noundef %chunk) #0 !dbg !121 {
entry:
  %chunk.addr = alloca ptr, align 8
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !126, metadata !DIExpression()), !dbg !131
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !132, !tbaa !127
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 32, i1 false), !dbg !133
  %1 = load ptr, ptr %chunk.addr, align 8, !dbg !134, !tbaa !127
  %tag_ = getelementptr inbounds %struct.WebPChunk, ptr %1, i32 0, i32 0, !dbg !135
  store i32 0, ptr %tag_, align 8, !dbg !136, !tbaa !137
  ret void, !dbg !142
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden ptr @ChunkRelease(ptr noundef %chunk) #0 !dbg !143 {
entry:
  %retval = alloca ptr, align 8
  %chunk.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !150
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !148, metadata !DIExpression()), !dbg !151
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !152, !tbaa !127
  %cmp = icmp eq ptr %0, null, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %chunk.addr, align 8, !dbg !157, !tbaa !127
  %owner_ = getelementptr inbounds %struct.WebPChunk, ptr %1, i32 0, i32 1, !dbg !159
  %2 = load i32, ptr %owner_, align 4, !dbg !159, !tbaa !160
  %tobool = icmp ne i32 %2, 0, !dbg !157
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !161

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %chunk.addr, align 8, !dbg !162, !tbaa !127
  %data_ = getelementptr inbounds %struct.WebPChunk, ptr %3, i32 0, i32 2, !dbg !164
  call void @WebPDataClear(ptr noundef %data_), !dbg !165
  br label %if.end2, !dbg !166

if.end2:                                          ; preds = %if.then1, %if.end
  %4 = load ptr, ptr %chunk.addr, align 8, !dbg !167, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPChunk, ptr %4, i32 0, i32 3, !dbg !168
  %5 = load ptr, ptr %next_, align 8, !dbg !168, !tbaa !169
  store ptr %5, ptr %next, align 8, !dbg !170, !tbaa !127
  %6 = load ptr, ptr %chunk.addr, align 8, !dbg !171, !tbaa !127
  call void @ChunkInit(ptr noundef %6), !dbg !172
  %7 = load ptr, ptr %next, align 8, !dbg !173, !tbaa !127
  store ptr %7, ptr %retval, align 8, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

cleanup:                                          ; preds = %if.end2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !175
  %8 = load ptr, ptr %retval, align 8, !dbg !175
  ret ptr %8, !dbg !175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @WebPDataClear(ptr noundef %webp_data) #3 !dbg !176 {
entry:
  %webp_data.addr = alloca ptr, align 8
  store ptr %webp_data, ptr %webp_data.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %webp_data.addr, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = load ptr, ptr %webp_data.addr, align 8, !dbg !183, !tbaa !127
  %cmp = icmp ne ptr %0, null, !dbg !185
  br i1 %cmp, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %webp_data.addr, align 8, !dbg !187, !tbaa !127
  %bytes = getelementptr inbounds %struct.WebPData, ptr %1, i32 0, i32 0, !dbg !189
  %2 = load ptr, ptr %bytes, align 8, !dbg !189, !tbaa !190
  call void @WebPFree(ptr noundef %2), !dbg !191
  %3 = load ptr, ptr %webp_data.addr, align 8, !dbg !192, !tbaa !127
  call void @WebPDataInit(ptr noundef %3), !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define hidden i32 @ChunkGetIndexFromTag(i32 noundef %tag) #0 !dbg !196 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %tag, ptr %tag.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !204
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !201, metadata !DIExpression()), !dbg !205
  store i32 0, ptr %i, align 4, !dbg !206, !tbaa !202
  br label %for.cond, !dbg !208

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !209, !tbaa !202
  %idxprom = sext i32 %0 to i64, !dbg !211
  %arrayidx = getelementptr inbounds [11 x %struct.ChunkInfo], ptr @kChunks, i64 0, i64 %idxprom, !dbg !211
  %tag1 = getelementptr inbounds %struct.ChunkInfo, ptr %arrayidx, i32 0, i32 0, !dbg !212
  %1 = load i32, ptr %tag1, align 4, !dbg !212, !tbaa !213
  %cmp = icmp ne i32 %1, 0, !dbg !215
  br i1 %cmp, label %for.body, label %for.end, !dbg !216

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %tag.addr, align 4, !dbg !217, !tbaa !202
  %3 = load i32, ptr %i, align 4, !dbg !220, !tbaa !202
  %idxprom2 = sext i32 %3 to i64, !dbg !221
  %arrayidx3 = getelementptr inbounds [11 x %struct.ChunkInfo], ptr @kChunks, i64 0, i64 %idxprom2, !dbg !221
  %tag4 = getelementptr inbounds %struct.ChunkInfo, ptr %arrayidx3, i32 0, i32 0, !dbg !222
  %4 = load i32, ptr %tag4, align 4, !dbg !222, !tbaa !213
  %cmp5 = icmp eq i32 %2, %4, !dbg !223
  br i1 %cmp5, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !225, !tbaa !202
  store i32 %5, ptr %retval, align 4, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !227

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !228, !tbaa !202
  %inc = add nsw i32 %6, 1, !dbg !228
  store i32 %inc, ptr %i, align 4, !dbg !228, !tbaa !202
  br label %for.cond, !dbg !229, !llvm.loop !230

for.end:                                          ; preds = %for.cond
  store i32 9, ptr %retval, align 4, !dbg !233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !234
  %7 = load i32, ptr %retval, align 4, !dbg !234
  ret i32 %7, !dbg !234
}

; Function Attrs: nounwind uwtable
define hidden i32 @ChunkGetIdFromTag(i32 noundef %tag) #0 !dbg !235 {
entry:
  %retval = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %tag, ptr %tag.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !239, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !242
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !240, metadata !DIExpression()), !dbg !243
  store i32 0, ptr %i, align 4, !dbg !244, !tbaa !202
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !247, !tbaa !202
  %idxprom = sext i32 %0 to i64, !dbg !249
  %arrayidx = getelementptr inbounds [11 x %struct.ChunkInfo], ptr @kChunks, i64 0, i64 %idxprom, !dbg !249
  %tag1 = getelementptr inbounds %struct.ChunkInfo, ptr %arrayidx, i32 0, i32 0, !dbg !250
  %1 = load i32, ptr %tag1, align 4, !dbg !250, !tbaa !213
  %cmp = icmp ne i32 %1, 0, !dbg !251
  br i1 %cmp, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %tag.addr, align 4, !dbg !253, !tbaa !202
  %3 = load i32, ptr %i, align 4, !dbg !256, !tbaa !202
  %idxprom2 = sext i32 %3 to i64, !dbg !257
  %arrayidx3 = getelementptr inbounds [11 x %struct.ChunkInfo], ptr @kChunks, i64 0, i64 %idxprom2, !dbg !257
  %tag4 = getelementptr inbounds %struct.ChunkInfo, ptr %arrayidx3, i32 0, i32 0, !dbg !258
  %4 = load i32, ptr %tag4, align 4, !dbg !258, !tbaa !213
  %cmp5 = icmp eq i32 %2, %4, !dbg !259
  br i1 %cmp5, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !261, !tbaa !202
  %idxprom6 = sext i32 %5 to i64, !dbg !262
  %arrayidx7 = getelementptr inbounds [11 x %struct.ChunkInfo], ptr @kChunks, i64 0, i64 %idxprom6, !dbg !262
  %id = getelementptr inbounds %struct.ChunkInfo, ptr %arrayidx7, i32 0, i32 1, !dbg !263
  %6 = load i32, ptr %id, align 4, !dbg !263, !tbaa !264
  store i32 %6, ptr %retval, align 4, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !266

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !267, !tbaa !202
  %inc = add nsw i32 %7, 1, !dbg !267
  store i32 %inc, ptr %i, align 4, !dbg !267, !tbaa !202
  br label %for.cond, !dbg !268, !llvm.loop !269

for.end:                                          ; preds = %for.cond
  store i32 9, ptr %retval, align 4, !dbg !271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !271

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !272
  %8 = load i32, ptr %retval, align 4, !dbg !272
  ret i32 %8, !dbg !272
}

; Function Attrs: nounwind uwtable
define hidden i32 @ChunkGetTagFromFourCC(ptr noundef %fourcc) #0 !dbg !273 {
entry:
  %fourcc.addr = alloca ptr, align 8
  store ptr %fourcc, ptr %fourcc.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %fourcc.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load ptr, ptr %fourcc.addr, align 8, !dbg !282, !tbaa !127
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !282
  %1 = load i8, ptr %arrayidx, align 1, !dbg !282, !tbaa !283
  %conv = sext i8 %1 to i32, !dbg !282
  %2 = load ptr, ptr %fourcc.addr, align 8, !dbg !282, !tbaa !127
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !282
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !282, !tbaa !283
  %conv2 = sext i8 %3 to i32, !dbg !282
  %shl = shl i32 %conv2, 8, !dbg !282
  %or = or i32 %conv, %shl, !dbg !282
  %4 = load ptr, ptr %fourcc.addr, align 8, !dbg !282, !tbaa !127
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !282
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !282, !tbaa !283
  %conv4 = sext i8 %5 to i32, !dbg !282
  %shl5 = shl i32 %conv4, 16, !dbg !282
  %or6 = or i32 %or, %shl5, !dbg !282
  %6 = load ptr, ptr %fourcc.addr, align 8, !dbg !282, !tbaa !127
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 3, !dbg !282
  %7 = load i8, ptr %arrayidx7, align 1, !dbg !282, !tbaa !283
  %conv8 = sext i8 %7 to i32, !dbg !282
  %shl9 = shl i32 %conv8, 24, !dbg !282
  %or10 = or i32 %or6, %shl9, !dbg !282
  ret i32 %or10, !dbg !284
}

; Function Attrs: nounwind uwtable
define hidden i32 @ChunkGetIndexFromFourCC(ptr noundef %fourcc) #0 !dbg !285 {
entry:
  %fourcc.addr = alloca ptr, align 8
  %tag = alloca i32, align 4
  store ptr %fourcc, ptr %fourcc.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %fourcc.addr, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 4, ptr %tag) #7, !dbg !293
  tail call void @llvm.dbg.declare(metadata ptr %tag, metadata !290, metadata !DIExpression()), !dbg !294
  %0 = load ptr, ptr %fourcc.addr, align 8, !dbg !295, !tbaa !127
  %call = call i32 @ChunkGetTagFromFourCC(ptr noundef %0), !dbg !296
  store i32 %call, ptr %tag, align 4, !dbg !294, !tbaa !202
  %1 = load i32, ptr %tag, align 4, !dbg !297, !tbaa !202
  %call1 = call i32 @ChunkGetIndexFromTag(i32 noundef %1), !dbg !298
  call void @llvm.lifetime.end.p0(i64 4, ptr %tag) #7, !dbg !299
  ret i32 %call1, !dbg !300
}

; Function Attrs: nounwind uwtable
define hidden ptr @ChunkSearchList(ptr noundef %first, i32 noundef %nth, i32 noundef %tag) #0 !dbg !301 {
entry:
  %retval = alloca ptr, align 8
  %first.addr = alloca ptr, align 8
  %nth.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  %iter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %next_chunk = alloca ptr, align 8
  store ptr %first, ptr %first.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !305, metadata !DIExpression()), !dbg !311
  store i32 %nth, ptr %nth.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %nth.addr, metadata !306, metadata !DIExpression()), !dbg !312
  store i32 %tag, ptr %tag.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #7, !dbg !314
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !308, metadata !DIExpression()), !dbg !315
  %0 = load i32, ptr %nth.addr, align 4, !dbg !316, !tbaa !202
  store i32 %0, ptr %iter, align 4, !dbg !315, !tbaa !202
  %1 = load ptr, ptr %first.addr, align 8, !dbg !317, !tbaa !127
  %2 = load i32, ptr %tag.addr, align 4, !dbg !318, !tbaa !202
  %call = call ptr @ChunkSearchNextInList(ptr noundef %1, i32 noundef %2), !dbg !319
  store ptr %call, ptr %first.addr, align 8, !dbg !320, !tbaa !127
  %3 = load ptr, ptr %first.addr, align 8, !dbg !321, !tbaa !127
  %cmp = icmp eq ptr %3, null, !dbg !323
  br i1 %cmp, label %if.then, label %if.end, !dbg !324

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !325

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !326

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %4 = load i32, ptr %iter, align 4, !dbg !327, !tbaa !202
  %dec = add i32 %4, -1, !dbg !327
  store i32 %dec, ptr %iter, align 4, !dbg !327, !tbaa !202
  %cmp1 = icmp ne i32 %dec, 0, !dbg !328
  br i1 %cmp1, label %while.body, label %while.end, !dbg !326

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_chunk) #7, !dbg !329
  tail call void @llvm.dbg.declare(metadata ptr %next_chunk, metadata !309, metadata !DIExpression()), !dbg !330
  %5 = load ptr, ptr %first.addr, align 8, !dbg !331, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPChunk, ptr %5, i32 0, i32 3, !dbg !332
  %6 = load ptr, ptr %next_, align 8, !dbg !332, !tbaa !169
  %7 = load i32, ptr %tag.addr, align 4, !dbg !333, !tbaa !202
  %call2 = call ptr @ChunkSearchNextInList(ptr noundef %6, i32 noundef %7), !dbg !334
  store ptr %call2, ptr %next_chunk, align 8, !dbg !330, !tbaa !127
  %8 = load ptr, ptr %next_chunk, align 8, !dbg !335, !tbaa !127
  %cmp3 = icmp eq ptr %8, null, !dbg !337
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !338

if.then4:                                         ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !339

if.end5:                                          ; preds = %while.body
  %9 = load ptr, ptr %next_chunk, align 8, !dbg !340, !tbaa !127
  store ptr %9, ptr %first.addr, align 8, !dbg !341, !tbaa !127
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !342
  br label %cleanup, !dbg !342

cleanup:                                          ; preds = %if.end5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_chunk) #7, !dbg !342
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !326, !llvm.loop !343

while.end:                                        ; preds = %cleanup, %while.cond
  %10 = load i32, ptr %nth.addr, align 4, !dbg !344, !tbaa !202
  %cmp6 = icmp ugt i32 %10, 0, !dbg !345
  br i1 %cmp6, label %land.lhs.true, label %cond.false, !dbg !346

land.lhs.true:                                    ; preds = %while.end
  %11 = load i32, ptr %iter, align 4, !dbg !347, !tbaa !202
  %cmp7 = icmp ugt i32 %11, 0, !dbg !348
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !349

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !349

cond.false:                                       ; preds = %land.lhs.true, %while.end
  %12 = load ptr, ptr %first.addr, align 8, !dbg !350, !tbaa !127
  br label %cond.end, !dbg !349

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %12, %cond.false ], !dbg !349
  store ptr %cond, ptr %retval, align 8, !dbg !351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !351

cleanup8:                                         ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #7, !dbg !352
  %13 = load ptr, ptr %retval, align 8, !dbg !352
  ret ptr %13, !dbg !352

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal ptr @ChunkSearchNextInList(ptr noundef %chunk, i32 noundef %tag) #0 !dbg !353 {
entry:
  %chunk.addr = alloca ptr, align 8
  %tag.addr = alloca i32, align 4
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !357, metadata !DIExpression()), !dbg !359
  store i32 %tag, ptr %tag.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !358, metadata !DIExpression()), !dbg !360
  br label %while.cond, !dbg !361

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !362, !tbaa !127
  %cmp = icmp ne ptr %0, null, !dbg !363
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !364

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %chunk.addr, align 8, !dbg !365, !tbaa !127
  %tag_ = getelementptr inbounds %struct.WebPChunk, ptr %1, i32 0, i32 0, !dbg !366
  %2 = load i32, ptr %tag_, align 8, !dbg !366, !tbaa !137
  %3 = load i32, ptr %tag.addr, align 4, !dbg !367, !tbaa !202
  %cmp1 = icmp ne i32 %2, %3, !dbg !368
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !369
  br i1 %4, label %while.body, label %while.end, !dbg !361

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %chunk.addr, align 8, !dbg !370, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPChunk, ptr %5, i32 0, i32 3, !dbg !372
  %6 = load ptr, ptr %next_, align 8, !dbg !372, !tbaa !169
  store ptr %6, ptr %chunk.addr, align 8, !dbg !373, !tbaa !127
  br label %while.cond, !dbg !361, !llvm.loop !374

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %chunk.addr, align 8, !dbg !376, !tbaa !127
  ret ptr %7, !dbg !377
}

; Function Attrs: nounwind uwtable
define hidden i32 @ChunkAssignData(ptr noundef %chunk, ptr noundef %data, i32 noundef %copy_data, i32 noundef %tag) #0 !dbg !378 {
entry:
  %retval = alloca i32, align 4
  %chunk.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %copy_data.addr = alloca i32, align 4
  %tag.addr = alloca i32, align 4
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !386, metadata !DIExpression()), !dbg !390
  store ptr %data, ptr %data.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !387, metadata !DIExpression()), !dbg !391
  store i32 %copy_data, ptr %copy_data.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %copy_data.addr, metadata !388, metadata !DIExpression()), !dbg !392
  store i32 %tag, ptr %tag.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !389, metadata !DIExpression()), !dbg !393
  %0 = load i32, ptr %tag.addr, align 4, !dbg !394, !tbaa !202
  %cmp = icmp eq i32 %0, 1480085590, !dbg !396
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !397

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %tag.addr, align 4, !dbg !398, !tbaa !202
  %cmp1 = icmp eq i32 %1, 1296649793, !dbg !399
  br i1 %cmp1, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %copy_data.addr, align 4, !dbg !401, !tbaa !202
  br label %if.end, !dbg !403

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load ptr, ptr %chunk.addr, align 8, !dbg !404, !tbaa !127
  %call = call ptr @ChunkRelease(ptr noundef %2), !dbg !405
  %3 = load ptr, ptr %data.addr, align 8, !dbg !406, !tbaa !127
  %cmp2 = icmp ne ptr %3, null, !dbg !408
  br i1 %cmp2, label %if.then3, label %if.end11, !dbg !409

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %copy_data.addr, align 4, !dbg !410, !tbaa !202
  %tobool = icmp ne i32 %4, 0, !dbg !410
  br i1 %tobool, label %if.then4, label %if.else, !dbg !413

if.then4:                                         ; preds = %if.then3
  %5 = load ptr, ptr %data.addr, align 8, !dbg !414, !tbaa !127
  %6 = load ptr, ptr %chunk.addr, align 8, !dbg !417, !tbaa !127
  %data_ = getelementptr inbounds %struct.WebPChunk, ptr %6, i32 0, i32 2, !dbg !418
  %call5 = call i32 @WebPDataCopy(ptr noundef %5, ptr noundef %data_), !dbg !419
  %tobool6 = icmp ne i32 %call5, 0, !dbg !419
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !420

if.then7:                                         ; preds = %if.then4
  store i32 -3, ptr %retval, align 4, !dbg !421
  br label %return, !dbg !421

if.end8:                                          ; preds = %if.then4
  %7 = load ptr, ptr %chunk.addr, align 8, !dbg !422, !tbaa !127
  %owner_ = getelementptr inbounds %struct.WebPChunk, ptr %7, i32 0, i32 1, !dbg !423
  store i32 1, ptr %owner_, align 4, !dbg !424, !tbaa !160
  br label %if.end10, !dbg !425

if.else:                                          ; preds = %if.then3
  %8 = load ptr, ptr %chunk.addr, align 8, !dbg !426, !tbaa !127
  %data_9 = getelementptr inbounds %struct.WebPChunk, ptr %8, i32 0, i32 2, !dbg !428
  %9 = load ptr, ptr %data.addr, align 8, !dbg !429, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data_9, ptr align 8 %9, i64 16, i1 false), !dbg !430, !tbaa.struct !431
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end8
  br label %if.end11, !dbg !433

if.end11:                                         ; preds = %if.end10, %if.end
  %10 = load i32, ptr %tag.addr, align 4, !dbg !434, !tbaa !202
  %11 = load ptr, ptr %chunk.addr, align 8, !dbg !435, !tbaa !127
  %tag_ = getelementptr inbounds %struct.WebPChunk, ptr %11, i32 0, i32 0, !dbg !436
  store i32 %10, ptr %tag_, align 8, !dbg !437, !tbaa !137
  store i32 1, ptr %retval, align 4, !dbg !438
  br label %return, !dbg !438

return:                                           ; preds = %if.end11, %if.then7
  %12 = load i32, ptr %retval, align 4, !dbg !439
  ret i32 %12, !dbg !439
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @WebPDataCopy(ptr noundef %src, ptr noundef %dst) #3 !dbg !440 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !444, metadata !DIExpression()), !dbg !446
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !445, metadata !DIExpression()), !dbg !447
  %0 = load ptr, ptr %src.addr, align 8, !dbg !448, !tbaa !127
  %cmp = icmp eq ptr %0, null, !dbg !450
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !451

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !452, !tbaa !127
  %cmp1 = icmp eq ptr %1, null, !dbg !453
  br i1 %cmp1, label %if.then, label %if.end, !dbg !454

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !455
  br label %return, !dbg !455

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !456, !tbaa !127
  call void @WebPDataInit(ptr noundef %2), !dbg !457
  %3 = load ptr, ptr %src.addr, align 8, !dbg !458, !tbaa !127
  %bytes = getelementptr inbounds %struct.WebPData, ptr %3, i32 0, i32 0, !dbg !460
  %4 = load ptr, ptr %bytes, align 8, !dbg !460, !tbaa !190
  %cmp2 = icmp ne ptr %4, null, !dbg !461
  br i1 %cmp2, label %land.lhs.true, label %if.end16, !dbg !462

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %src.addr, align 8, !dbg !463, !tbaa !127
  %size = getelementptr inbounds %struct.WebPData, ptr %5, i32 0, i32 1, !dbg !464
  %6 = load i64, ptr %size, align 8, !dbg !464, !tbaa !465
  %cmp3 = icmp ne i64 %6, 0, !dbg !466
  br i1 %cmp3, label %if.then4, label %if.end16, !dbg !467

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %src.addr, align 8, !dbg !468, !tbaa !127
  %size5 = getelementptr inbounds %struct.WebPData, ptr %7, i32 0, i32 1, !dbg !470
  %8 = load i64, ptr %size5, align 8, !dbg !470, !tbaa !465
  %call = call ptr @WebPMalloc(i64 noundef %8), !dbg !471
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !472, !tbaa !127
  %bytes6 = getelementptr inbounds %struct.WebPData, ptr %9, i32 0, i32 0, !dbg !473
  store ptr %call, ptr %bytes6, align 8, !dbg !474, !tbaa !190
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !475, !tbaa !127
  %bytes7 = getelementptr inbounds %struct.WebPData, ptr %10, i32 0, i32 0, !dbg !477
  %11 = load ptr, ptr %bytes7, align 8, !dbg !477, !tbaa !190
  %cmp8 = icmp eq ptr %11, null, !dbg !478
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !479

if.then9:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4, !dbg !480
  br label %return, !dbg !480

if.end10:                                         ; preds = %if.then4
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !481, !tbaa !127
  %bytes11 = getelementptr inbounds %struct.WebPData, ptr %12, i32 0, i32 0, !dbg !482
  %13 = load ptr, ptr %bytes11, align 8, !dbg !482, !tbaa !190
  %14 = load ptr, ptr %src.addr, align 8, !dbg !483, !tbaa !127
  %bytes12 = getelementptr inbounds %struct.WebPData, ptr %14, i32 0, i32 0, !dbg !484
  %15 = load ptr, ptr %bytes12, align 8, !dbg !484, !tbaa !190
  %16 = load ptr, ptr %src.addr, align 8, !dbg !485, !tbaa !127
  %size13 = getelementptr inbounds %struct.WebPData, ptr %16, i32 0, i32 1, !dbg !486
  %17 = load i64, ptr %size13, align 8, !dbg !486, !tbaa !465
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %15, i64 %17, i1 false), !dbg !487
  %18 = load ptr, ptr %src.addr, align 8, !dbg !488, !tbaa !127
  %size14 = getelementptr inbounds %struct.WebPData, ptr %18, i32 0, i32 1, !dbg !489
  %19 = load i64, ptr %size14, align 8, !dbg !489, !tbaa !465
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !490, !tbaa !127
  %size15 = getelementptr inbounds %struct.WebPData, ptr %20, i32 0, i32 1, !dbg !491
  store i64 %19, ptr %size15, align 8, !dbg !492, !tbaa !465
  br label %if.end16, !dbg !493

if.end16:                                         ; preds = %if.end10, %land.lhs.true, %if.end
  store i32 1, ptr %retval, align 4, !dbg !494
  br label %return, !dbg !494

return:                                           ; preds = %if.end16, %if.then9, %if.then
  %21 = load i32, ptr %retval, align 4, !dbg !495
  ret i32 %21, !dbg !495
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define hidden i32 @ChunkSetHead(ptr noundef %chunk, ptr noundef %chunk_list) #0 !dbg !496 {
entry:
  %retval = alloca i32, align 4
  %chunk.addr = alloca ptr, align 8
  %chunk_list.addr = alloca ptr, align 8
  %new_chunk = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !501, metadata !DIExpression()), !dbg !504
  store ptr %chunk_list, ptr %chunk_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk_list.addr, metadata !502, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_chunk) #7, !dbg !506
  tail call void @llvm.dbg.declare(metadata ptr %new_chunk, metadata !503, metadata !DIExpression()), !dbg !507
  %0 = load ptr, ptr %chunk_list.addr, align 8, !dbg !508, !tbaa !127
  %1 = load ptr, ptr %0, align 8, !dbg !510, !tbaa !127
  %cmp = icmp ne ptr %1, null, !dbg !511
  br i1 %cmp, label %if.then, label %if.end, !dbg !512

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !513

if.end:                                           ; preds = %entry
  %call = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef 32), !dbg !515
  store ptr %call, ptr %new_chunk, align 8, !dbg !516, !tbaa !127
  %2 = load ptr, ptr %new_chunk, align 8, !dbg !517, !tbaa !127
  %cmp1 = icmp eq ptr %2, null, !dbg !519
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !520

if.then2:                                         ; preds = %if.end
  store i32 -3, ptr %retval, align 4, !dbg !521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !521

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %new_chunk, align 8, !dbg !522, !tbaa !127
  %4 = load ptr, ptr %chunk.addr, align 8, !dbg !523, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %4, i64 32, i1 false), !dbg !524, !tbaa.struct !525
  %5 = load ptr, ptr %chunk.addr, align 8, !dbg !526, !tbaa !127
  %owner_ = getelementptr inbounds %struct.WebPChunk, ptr %5, i32 0, i32 1, !dbg !527
  store i32 0, ptr %owner_, align 4, !dbg !528, !tbaa !160
  %6 = load ptr, ptr %new_chunk, align 8, !dbg !529, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPChunk, ptr %6, i32 0, i32 3, !dbg !530
  store ptr null, ptr %next_, align 8, !dbg !531, !tbaa !169
  %7 = load ptr, ptr %new_chunk, align 8, !dbg !532, !tbaa !127
  %8 = load ptr, ptr %chunk_list.addr, align 8, !dbg !533, !tbaa !127
  store ptr %7, ptr %8, align 8, !dbg !534, !tbaa !127
  store i32 1, ptr %retval, align 4, !dbg !535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !535

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_chunk) #7, !dbg !536
  %9 = load i32, ptr %retval, align 4, !dbg !536
  ret i32 %9, !dbg !536
}

declare !dbg !537 ptr @WebPSafeMalloc(i64 noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define hidden i32 @ChunkAppend(ptr noundef %chunk, ptr noundef %chunk_list) #0 !dbg !543 {
entry:
  %chunk.addr = alloca ptr, align 8
  %chunk_list.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %last_chunk = alloca ptr, align 8
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !549, metadata !DIExpression()), !dbg !555
  store ptr %chunk_list, ptr %chunk_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk_list.addr, metadata !550, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !557
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !551, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr %chunk_list.addr, align 8, !dbg !559, !tbaa !127
  %1 = load ptr, ptr %0, align 8, !dbg !560, !tbaa !127
  %2 = load ptr, ptr %1, align 8, !dbg !561, !tbaa !127
  %cmp = icmp eq ptr %2, null, !dbg !562
  br i1 %cmp, label %if.then, label %if.else, !dbg !563

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %chunk.addr, align 8, !dbg !564, !tbaa !127
  %4 = load ptr, ptr %chunk_list.addr, align 8, !dbg !566, !tbaa !127
  %5 = load ptr, ptr %4, align 8, !dbg !567, !tbaa !127
  %call = call i32 @ChunkSetHead(ptr noundef %3, ptr noundef %5), !dbg !568
  store i32 %call, ptr %err, align 4, !dbg !569, !tbaa !283
  br label %if.end8, !dbg !570

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_chunk) #7, !dbg !571
  tail call void @llvm.dbg.declare(metadata ptr %last_chunk, metadata !552, metadata !DIExpression()), !dbg !572
  %6 = load ptr, ptr %chunk_list.addr, align 8, !dbg !573, !tbaa !127
  %7 = load ptr, ptr %6, align 8, !dbg !574, !tbaa !127
  %8 = load ptr, ptr %7, align 8, !dbg !575, !tbaa !127
  store ptr %8, ptr %last_chunk, align 8, !dbg !572, !tbaa !127
  br label %while.cond, !dbg !576

while.cond:                                       ; preds = %while.body, %if.else
  %9 = load ptr, ptr %last_chunk, align 8, !dbg !577, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPChunk, ptr %9, i32 0, i32 3, !dbg !578
  %10 = load ptr, ptr %next_, align 8, !dbg !578, !tbaa !169
  %cmp1 = icmp ne ptr %10, null, !dbg !579
  br i1 %cmp1, label %while.body, label %while.end, !dbg !576

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %last_chunk, align 8, !dbg !580, !tbaa !127
  %next_2 = getelementptr inbounds %struct.WebPChunk, ptr %11, i32 0, i32 3, !dbg !581
  %12 = load ptr, ptr %next_2, align 8, !dbg !581, !tbaa !169
  store ptr %12, ptr %last_chunk, align 8, !dbg !582, !tbaa !127
  br label %while.cond, !dbg !576, !llvm.loop !583

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %chunk.addr, align 8, !dbg !584, !tbaa !127
  %14 = load ptr, ptr %last_chunk, align 8, !dbg !585, !tbaa !127
  %next_3 = getelementptr inbounds %struct.WebPChunk, ptr %14, i32 0, i32 3, !dbg !586
  %call4 = call i32 @ChunkSetHead(ptr noundef %13, ptr noundef %next_3), !dbg !587
  store i32 %call4, ptr %err, align 4, !dbg !588, !tbaa !283
  %15 = load i32, ptr %err, align 4, !dbg !589, !tbaa !283
  %cmp5 = icmp eq i32 %15, 1, !dbg !591
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !592

if.then6:                                         ; preds = %while.end
  %16 = load ptr, ptr %last_chunk, align 8, !dbg !593, !tbaa !127
  %next_7 = getelementptr inbounds %struct.WebPChunk, ptr %16, i32 0, i32 3, !dbg !594
  %17 = load ptr, ptr %chunk_list.addr, align 8, !dbg !595, !tbaa !127
  store ptr %next_7, ptr %17, align 8, !dbg !596, !tbaa !127
  br label %if.end, !dbg !597

if.end:                                           ; preds = %if.then6, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_chunk) #7, !dbg !598
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %18 = load i32, ptr %err, align 4, !dbg !599, !tbaa !283
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !600
  ret i32 %18, !dbg !601
}

; Function Attrs: nounwind uwtable
define hidden ptr @ChunkDelete(ptr noundef %chunk) #0 !dbg !602 {
entry:
  %chunk.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !607
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !605, metadata !DIExpression()), !dbg !608
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !609, !tbaa !127
  %call = call ptr @ChunkRelease(ptr noundef %0), !dbg !610
  store ptr %call, ptr %next, align 8, !dbg !608, !tbaa !127
  %1 = load ptr, ptr %chunk.addr, align 8, !dbg !611, !tbaa !127
  call void @WebPSafeFree(ptr noundef %1), !dbg !612
  %2 = load ptr, ptr %next, align 8, !dbg !613, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !614
  ret ptr %2, !dbg !615
}

declare !dbg !616 void @WebPSafeFree(ptr noundef) #5

; Function Attrs: nounwind uwtable
define hidden void @ChunkListDelete(ptr noundef %chunk_list) #0 !dbg !620 {
entry:
  %chunk_list.addr = alloca ptr, align 8
  store ptr %chunk_list, ptr %chunk_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk_list.addr, metadata !624, metadata !DIExpression()), !dbg !625
  br label %while.cond, !dbg !626

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %chunk_list.addr, align 8, !dbg !627, !tbaa !127
  %1 = load ptr, ptr %0, align 8, !dbg !628, !tbaa !127
  %cmp = icmp ne ptr %1, null, !dbg !629
  br i1 %cmp, label %while.body, label %while.end, !dbg !626

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %chunk_list.addr, align 8, !dbg !630, !tbaa !127
  %3 = load ptr, ptr %2, align 8, !dbg !632, !tbaa !127
  %call = call ptr @ChunkDelete(ptr noundef %3), !dbg !633
  %4 = load ptr, ptr %chunk_list.addr, align 8, !dbg !634, !tbaa !127
  store ptr %call, ptr %4, align 8, !dbg !635, !tbaa !127
  br label %while.cond, !dbg !626, !llvm.loop !636

while.end:                                        ; preds = %while.cond
  ret void, !dbg !638
}

; Function Attrs: nounwind uwtable
define hidden ptr @ChunkListEmit(ptr noundef %chunk_list, ptr noundef %dst) #0 !dbg !639 {
entry:
  %chunk_list.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  store ptr %chunk_list, ptr %chunk_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk_list.addr, metadata !645, metadata !DIExpression()), !dbg !647
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !646, metadata !DIExpression()), !dbg !648
  br label %while.cond, !dbg !649

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %chunk_list.addr, align 8, !dbg !650, !tbaa !127
  %cmp = icmp ne ptr %0, null, !dbg !651
  br i1 %cmp, label %while.body, label %while.end, !dbg !649

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %chunk_list.addr, align 8, !dbg !652, !tbaa !127
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !654, !tbaa !127
  %call = call ptr @ChunkEmit(ptr noundef %1, ptr noundef %2), !dbg !655
  store ptr %call, ptr %dst.addr, align 8, !dbg !656, !tbaa !127
  %3 = load ptr, ptr %chunk_list.addr, align 8, !dbg !657, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPChunk, ptr %3, i32 0, i32 3, !dbg !658
  %4 = load ptr, ptr %next_, align 8, !dbg !658, !tbaa !169
  store ptr %4, ptr %chunk_list.addr, align 8, !dbg !659, !tbaa !127
  br label %while.cond, !dbg !649, !llvm.loop !660

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !662, !tbaa !127
  ret ptr %5, !dbg !663
}

; Function Attrs: nounwind uwtable
define internal ptr @ChunkEmit(ptr noundef %chunk, ptr noundef %dst) #0 !dbg !664 {
entry:
  %chunk.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %chunk_size = alloca i64, align 8
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !669, metadata !DIExpression()), !dbg !673
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !670, metadata !DIExpression()), !dbg !674
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_size) #7, !dbg !675
  tail call void @llvm.dbg.declare(metadata ptr %chunk_size, metadata !671, metadata !DIExpression()), !dbg !676
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !677, !tbaa !127
  %data_ = getelementptr inbounds %struct.WebPChunk, ptr %0, i32 0, i32 2, !dbg !678
  %size = getelementptr inbounds %struct.WebPData, ptr %data_, i32 0, i32 1, !dbg !679
  %1 = load i64, ptr %size, align 8, !dbg !679, !tbaa !680
  store i64 %1, ptr %chunk_size, align 8, !dbg !676, !tbaa !432
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !681, !tbaa !127
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 0, !dbg !682
  %3 = load ptr, ptr %chunk.addr, align 8, !dbg !683, !tbaa !127
  %tag_ = getelementptr inbounds %struct.WebPChunk, ptr %3, i32 0, i32 0, !dbg !684
  %4 = load i32, ptr %tag_, align 8, !dbg !684, !tbaa !137
  call void @PutLE32(ptr noundef %add.ptr, i32 noundef %4), !dbg !685
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !686, !tbaa !127
  %add.ptr1 = getelementptr inbounds i8, ptr %5, i64 4, !dbg !687
  %6 = load i64, ptr %chunk_size, align 8, !dbg !688, !tbaa !432
  %conv = trunc i64 %6 to i32, !dbg !689
  call void @PutLE32(ptr noundef %add.ptr1, i32 noundef %conv), !dbg !690
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !691, !tbaa !127
  %add.ptr2 = getelementptr inbounds i8, ptr %7, i64 8, !dbg !692
  %8 = load ptr, ptr %chunk.addr, align 8, !dbg !693, !tbaa !127
  %data_3 = getelementptr inbounds %struct.WebPChunk, ptr %8, i32 0, i32 2, !dbg !694
  %bytes = getelementptr inbounds %struct.WebPData, ptr %data_3, i32 0, i32 0, !dbg !695
  %9 = load ptr, ptr %bytes, align 8, !dbg !695, !tbaa !696
  %10 = load i64, ptr %chunk_size, align 8, !dbg !697, !tbaa !432
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr2, ptr align 1 %9, i64 %10, i1 false), !dbg !698
  %11 = load i64, ptr %chunk_size, align 8, !dbg !699, !tbaa !432
  %and = and i64 %11, 1, !dbg !701
  %tobool = icmp ne i64 %and, 0, !dbg !701
  br i1 %tobool, label %if.then, label %if.end, !dbg !702

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !703, !tbaa !127
  %13 = load i64, ptr %chunk_size, align 8, !dbg !704, !tbaa !432
  %add = add i64 8, %13, !dbg !705
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %add, !dbg !703
  store i8 0, ptr %arrayidx, align 1, !dbg !706, !tbaa !283
  br label %if.end, !dbg !703

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !707, !tbaa !127
  %15 = load ptr, ptr %chunk.addr, align 8, !dbg !708, !tbaa !127
  %call = call i64 @ChunkDiskSize(ptr noundef %15), !dbg !709
  %add.ptr4 = getelementptr inbounds i8, ptr %14, i64 %call, !dbg !710
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_size) #7, !dbg !711
  ret ptr %add.ptr4, !dbg !712
}

; Function Attrs: nounwind uwtable
define hidden i64 @ChunkListDiskSize(ptr noundef %chunk_list) #0 !dbg !713 {
entry:
  %chunk_list.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %chunk_list, ptr %chunk_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk_list.addr, metadata !717, metadata !DIExpression()), !dbg !719
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !720
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !718, metadata !DIExpression()), !dbg !721
  store i64 0, ptr %size, align 8, !dbg !721, !tbaa !432
  br label %while.cond, !dbg !722

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %chunk_list.addr, align 8, !dbg !723, !tbaa !127
  %cmp = icmp ne ptr %0, null, !dbg !724
  br i1 %cmp, label %while.body, label %while.end, !dbg !722

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %chunk_list.addr, align 8, !dbg !725, !tbaa !127
  %call = call i64 @ChunkDiskSize(ptr noundef %1), !dbg !727
  %2 = load i64, ptr %size, align 8, !dbg !728, !tbaa !432
  %add = add i64 %2, %call, !dbg !728
  store i64 %add, ptr %size, align 8, !dbg !728, !tbaa !432
  %3 = load ptr, ptr %chunk_list.addr, align 8, !dbg !729, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPChunk, ptr %3, i32 0, i32 3, !dbg !730
  %4 = load ptr, ptr %next_, align 8, !dbg !730, !tbaa !169
  store ptr %4, ptr %chunk_list.addr, align 8, !dbg !731, !tbaa !127
  br label %while.cond, !dbg !722, !llvm.loop !732

while.end:                                        ; preds = %while.cond
  %5 = load i64, ptr %size, align 8, !dbg !734, !tbaa !432
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !735
  ret i64 %5, !dbg !736
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ChunkDiskSize(ptr noundef %chunk) #3 !dbg !737 {
entry:
  %chunk.addr = alloca ptr, align 8
  %data_size = alloca i64, align 8
  store ptr %chunk, ptr %chunk.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %chunk.addr, metadata !739, metadata !DIExpression()), !dbg !741
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_size) #7, !dbg !742
  tail call void @llvm.dbg.declare(metadata ptr %data_size, metadata !740, metadata !DIExpression()), !dbg !743
  %0 = load ptr, ptr %chunk.addr, align 8, !dbg !744, !tbaa !127
  %data_ = getelementptr inbounds %struct.WebPChunk, ptr %0, i32 0, i32 2, !dbg !745
  %size = getelementptr inbounds %struct.WebPData, ptr %data_, i32 0, i32 1, !dbg !746
  %1 = load i64, ptr %size, align 8, !dbg !746, !tbaa !680
  store i64 %1, ptr %data_size, align 8, !dbg !743, !tbaa !432
  %2 = load i64, ptr %data_size, align 8, !dbg !747, !tbaa !432
  %call = call i64 @SizeWithPadding(i64 noundef %2), !dbg !748
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_size) #7, !dbg !749
  ret i64 %call, !dbg !750
}

; Function Attrs: nounwind uwtable
define hidden void @MuxImageInit(ptr noundef %wpi) #0 !dbg !751 {
entry:
  %wpi.addr = alloca ptr, align 8
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !756, metadata !DIExpression()), !dbg !757
  %0 = load ptr, ptr %wpi.addr, align 8, !dbg !758, !tbaa !127
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 56, i1 false), !dbg !759
  ret void, !dbg !760
}

; Function Attrs: nounwind uwtable
define hidden ptr @MuxImageRelease(ptr noundef %wpi) #0 !dbg !761 {
entry:
  %retval = alloca ptr, align 8
  %wpi.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !765, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !768
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !766, metadata !DIExpression()), !dbg !769
  %0 = load ptr, ptr %wpi.addr, align 8, !dbg !770, !tbaa !127
  %cmp = icmp eq ptr %0, null, !dbg !772
  br i1 %cmp, label %if.then, label %if.end, !dbg !773

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !774

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %wpi.addr, align 8, !dbg !775, !tbaa !127
  %header_ = getelementptr inbounds %struct.WebPMuxImage, ptr %1, i32 0, i32 0, !dbg !776
  call void @ChunkListDelete(ptr noundef %header_), !dbg !777
  %2 = load ptr, ptr %wpi.addr, align 8, !dbg !778, !tbaa !127
  %alpha_ = getelementptr inbounds %struct.WebPMuxImage, ptr %2, i32 0, i32 1, !dbg !779
  call void @ChunkListDelete(ptr noundef %alpha_), !dbg !780
  %3 = load ptr, ptr %wpi.addr, align 8, !dbg !781, !tbaa !127
  %img_ = getelementptr inbounds %struct.WebPMuxImage, ptr %3, i32 0, i32 2, !dbg !782
  call void @ChunkListDelete(ptr noundef %img_), !dbg !783
  %4 = load ptr, ptr %wpi.addr, align 8, !dbg !784, !tbaa !127
  %unknown_ = getelementptr inbounds %struct.WebPMuxImage, ptr %4, i32 0, i32 3, !dbg !785
  call void @ChunkListDelete(ptr noundef %unknown_), !dbg !786
  %5 = load ptr, ptr %wpi.addr, align 8, !dbg !787, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPMuxImage, ptr %5, i32 0, i32 8, !dbg !788
  %6 = load ptr, ptr %next_, align 8, !dbg !788, !tbaa !789
  store ptr %6, ptr %next, align 8, !dbg !791, !tbaa !127
  %7 = load ptr, ptr %wpi.addr, align 8, !dbg !792, !tbaa !127
  call void @MuxImageInit(ptr noundef %7), !dbg !793
  %8 = load ptr, ptr %next, align 8, !dbg !794, !tbaa !127
  store ptr %8, ptr %retval, align 8, !dbg !795
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !795

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !796
  %9 = load ptr, ptr %retval, align 8, !dbg !796
  ret ptr %9, !dbg !796
}

; Function Attrs: nounwind uwtable
define hidden i32 @MuxImageCount(ptr noundef %wpi_list, i32 noundef %id) #0 !dbg !797 {
entry:
  %wpi_list.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %current = alloca ptr, align 8
  %wpi_chunk = alloca ptr, align 8
  %wpi_chunk_id = alloca i32, align 4
  store ptr %wpi_list, ptr %wpi_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi_list.addr, metadata !803, metadata !DIExpression()), !dbg !817
  store i32 %id, ptr %id.addr, align 4, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !804, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7, !dbg !819
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !805, metadata !DIExpression()), !dbg !820
  store i32 0, ptr %count, align 4, !dbg !820, !tbaa !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %current) #7, !dbg !821
  tail call void @llvm.dbg.declare(metadata ptr %current, metadata !806, metadata !DIExpression()), !dbg !822
  %0 = load ptr, ptr %wpi_list.addr, align 8, !dbg !823, !tbaa !127
  store ptr %0, ptr %current, align 8, !dbg !824, !tbaa !127
  br label %for.cond, !dbg !825

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %current, align 8, !dbg !826, !tbaa !127
  %cmp = icmp ne ptr %1, null, !dbg !827
  br i1 %cmp, label %for.body, label %for.end, !dbg !828

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %id.addr, align 4, !dbg !829, !tbaa !283
  %cmp1 = icmp eq i32 %2, 10, !dbg !830
  br i1 %cmp1, label %if.then, label %if.else, !dbg !831

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %count, align 4, !dbg !832, !tbaa !202
  %inc = add nsw i32 %3, 1, !dbg !832
  store i32 %inc, ptr %count, align 4, !dbg !832, !tbaa !202
  br label %if.end9, !dbg !834

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %wpi_chunk) #7, !dbg !835
  tail call void @llvm.dbg.declare(metadata ptr %wpi_chunk, metadata !807, metadata !DIExpression()), !dbg !836
  %4 = load ptr, ptr %current, align 8, !dbg !837, !tbaa !127
  %5 = load i32, ptr %id.addr, align 4, !dbg !838, !tbaa !283
  %call = call ptr @GetChunkListFromId(ptr noundef %4, i32 noundef %5), !dbg !839
  %6 = load ptr, ptr %call, align 8, !dbg !840, !tbaa !127
  store ptr %6, ptr %wpi_chunk, align 8, !dbg !836, !tbaa !127
  %7 = load ptr, ptr %wpi_chunk, align 8, !dbg !841, !tbaa !127
  %cmp2 = icmp ne ptr %7, null, !dbg !842
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !843

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %wpi_chunk_id) #7, !dbg !844
  tail call void @llvm.dbg.declare(metadata ptr %wpi_chunk_id, metadata !813, metadata !DIExpression()), !dbg !845
  %8 = load ptr, ptr %wpi_chunk, align 8, !dbg !846, !tbaa !127
  %tag_ = getelementptr inbounds %struct.WebPChunk, ptr %8, i32 0, i32 0, !dbg !847
  %9 = load i32, ptr %tag_, align 8, !dbg !847, !tbaa !137
  %call4 = call i32 @ChunkGetIdFromTag(i32 noundef %9), !dbg !848
  store i32 %call4, ptr %wpi_chunk_id, align 4, !dbg !845, !tbaa !283
  %10 = load i32, ptr %wpi_chunk_id, align 4, !dbg !849, !tbaa !283
  %11 = load i32, ptr %id.addr, align 4, !dbg !851, !tbaa !283
  %cmp5 = icmp eq i32 %10, %11, !dbg !852
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !853

if.then6:                                         ; preds = %if.then3
  %12 = load i32, ptr %count, align 4, !dbg !854, !tbaa !202
  %inc7 = add nsw i32 %12, 1, !dbg !854
  store i32 %inc7, ptr %count, align 4, !dbg !854, !tbaa !202
  br label %if.end, !dbg !854

if.end:                                           ; preds = %if.then6, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wpi_chunk_id) #7, !dbg !855
  br label %if.end8, !dbg !856

if.end8:                                          ; preds = %if.end, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %wpi_chunk) #7, !dbg !857
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  br label %for.inc, !dbg !858

for.inc:                                          ; preds = %if.end9
  %13 = load ptr, ptr %current, align 8, !dbg !859, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPMuxImage, ptr %13, i32 0, i32 8, !dbg !860
  %14 = load ptr, ptr %next_, align 8, !dbg !860, !tbaa !789
  store ptr %14, ptr %current, align 8, !dbg !861, !tbaa !127
  br label %for.cond, !dbg !862, !llvm.loop !863

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %count, align 4, !dbg !865, !tbaa !202
  call void @llvm.lifetime.end.p0(i64 8, ptr %current) #7, !dbg !866
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7, !dbg !866
  ret i32 %15, !dbg !867
}

; Function Attrs: nounwind uwtable
define internal ptr @GetChunkListFromId(ptr noundef %wpi, i32 noundef %id) #0 !dbg !868 {
entry:
  %retval = alloca ptr, align 8
  %wpi.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !873, metadata !DIExpression()), !dbg !875
  store i32 %id, ptr %id.addr, align 4, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !874, metadata !DIExpression()), !dbg !876
  %0 = load i32, ptr %id.addr, align 4, !dbg !877, !tbaa !283
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
    i32 6, label %sw.bb2
  ], !dbg !878

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %wpi.addr, align 8, !dbg !879, !tbaa !127
  %header_ = getelementptr inbounds %struct.WebPMuxImage, ptr %1, i32 0, i32 0, !dbg !881
  store ptr %header_, ptr %retval, align 8, !dbg !882
  br label %return, !dbg !882

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %wpi.addr, align 8, !dbg !883, !tbaa !127
  %alpha_ = getelementptr inbounds %struct.WebPMuxImage, ptr %2, i32 0, i32 1, !dbg !884
  store ptr %alpha_, ptr %retval, align 8, !dbg !885
  br label %return, !dbg !885

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %wpi.addr, align 8, !dbg !886, !tbaa !127
  %img_ = getelementptr inbounds %struct.WebPMuxImage, ptr %3, i32 0, i32 2, !dbg !887
  store ptr %img_, ptr %retval, align 8, !dbg !888
  br label %return, !dbg !888

sw.default:                                       ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !889
  br label %return, !dbg !889

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %4 = load ptr, ptr %retval, align 8, !dbg !890
  ret ptr %4, !dbg !890
}

; Function Attrs: nounwind uwtable
define hidden i32 @MuxImagePush(ptr noundef %wpi, ptr noundef %wpi_list) #0 !dbg !891 {
entry:
  %retval = alloca i32, align 4
  %wpi.addr = alloca ptr, align 8
  %wpi_list.addr = alloca ptr, align 8
  %new_wpi = alloca ptr, align 8
  %cur_wpi = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !895, metadata !DIExpression()), !dbg !900
  store ptr %wpi_list, ptr %wpi_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi_list.addr, metadata !896, metadata !DIExpression()), !dbg !901
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_wpi) #7, !dbg !902
  tail call void @llvm.dbg.declare(metadata ptr %new_wpi, metadata !897, metadata !DIExpression()), !dbg !903
  br label %while.cond, !dbg !904

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %wpi_list.addr, align 8, !dbg !905, !tbaa !127
  %1 = load ptr, ptr %0, align 8, !dbg !906, !tbaa !127
  %cmp = icmp ne ptr %1, null, !dbg !907
  br i1 %cmp, label %while.body, label %while.end, !dbg !904

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_wpi) #7, !dbg !908
  tail call void @llvm.dbg.declare(metadata ptr %cur_wpi, metadata !898, metadata !DIExpression()), !dbg !909
  %2 = load ptr, ptr %wpi_list.addr, align 8, !dbg !910, !tbaa !127
  %3 = load ptr, ptr %2, align 8, !dbg !911, !tbaa !127
  store ptr %3, ptr %cur_wpi, align 8, !dbg !909, !tbaa !127
  %4 = load ptr, ptr %cur_wpi, align 8, !dbg !912, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPMuxImage, ptr %4, i32 0, i32 8, !dbg !914
  %5 = load ptr, ptr %next_, align 8, !dbg !914, !tbaa !789
  %cmp1 = icmp eq ptr %5, null, !dbg !915
  br i1 %cmp1, label %if.then, label %if.end, !dbg !916

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !917

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %cur_wpi, align 8, !dbg !918, !tbaa !127
  %next_2 = getelementptr inbounds %struct.WebPMuxImage, ptr %6, i32 0, i32 8, !dbg !919
  store ptr %next_2, ptr %wpi_list.addr, align 8, !dbg !920, !tbaa !127
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !921
  br label %cleanup, !dbg !921

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_wpi) #7, !dbg !921
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !904, !llvm.loop !922

while.end:                                        ; preds = %cleanup, %while.cond
  %call = call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef 56), !dbg !923
  store ptr %call, ptr %new_wpi, align 8, !dbg !924, !tbaa !127
  %7 = load ptr, ptr %new_wpi, align 8, !dbg !925, !tbaa !127
  %cmp3 = icmp eq ptr %7, null, !dbg !927
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !928

if.then4:                                         ; preds = %while.end
  store i32 -3, ptr %retval, align 4, !dbg !929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !929

if.end5:                                          ; preds = %while.end
  %8 = load ptr, ptr %new_wpi, align 8, !dbg !930, !tbaa !127
  %9 = load ptr, ptr %wpi.addr, align 8, !dbg !931, !tbaa !127
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 56, i1 false), !dbg !932, !tbaa.struct !933
  %10 = load ptr, ptr %new_wpi, align 8, !dbg !934, !tbaa !127
  %next_6 = getelementptr inbounds %struct.WebPMuxImage, ptr %10, i32 0, i32 8, !dbg !935
  store ptr null, ptr %next_6, align 8, !dbg !936, !tbaa !789
  %11 = load ptr, ptr %wpi_list.addr, align 8, !dbg !937, !tbaa !127
  %12 = load ptr, ptr %11, align 8, !dbg !939, !tbaa !127
  %cmp7 = icmp ne ptr %12, null, !dbg !940
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !941

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %new_wpi, align 8, !dbg !942, !tbaa !127
  %14 = load ptr, ptr %wpi_list.addr, align 8, !dbg !944, !tbaa !127
  %15 = load ptr, ptr %14, align 8, !dbg !945, !tbaa !127
  %next_9 = getelementptr inbounds %struct.WebPMuxImage, ptr %15, i32 0, i32 8, !dbg !946
  store ptr %13, ptr %next_9, align 8, !dbg !947, !tbaa !789
  br label %if.end10, !dbg !948

if.else:                                          ; preds = %if.end5
  %16 = load ptr, ptr %new_wpi, align 8, !dbg !949, !tbaa !127
  %17 = load ptr, ptr %wpi_list.addr, align 8, !dbg !951, !tbaa !127
  store ptr %16, ptr %17, align 8, !dbg !952, !tbaa !127
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  store i32 1, ptr %retval, align 4, !dbg !953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup11, !dbg !953

cleanup11:                                        ; preds = %if.end10, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_wpi) #7, !dbg !954
  %18 = load i32, ptr %retval, align 4, !dbg !954
  ret i32 %18, !dbg !954

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden ptr @MuxImageDelete(ptr noundef %wpi) #0 !dbg !955 {
entry:
  %wpi.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !957, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !960
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !958, metadata !DIExpression()), !dbg !961
  %0 = load ptr, ptr %wpi.addr, align 8, !dbg !962, !tbaa !127
  %call = call ptr @MuxImageRelease(ptr noundef %0), !dbg !963
  store ptr %call, ptr %next, align 8, !dbg !961, !tbaa !127
  %1 = load ptr, ptr %wpi.addr, align 8, !dbg !964, !tbaa !127
  call void @WebPSafeFree(ptr noundef %1), !dbg !965
  %2 = load ptr, ptr %next, align 8, !dbg !966, !tbaa !127
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !967
  ret ptr %2, !dbg !968
}

; Function Attrs: nounwind uwtable
define hidden i32 @MuxImageDeleteNth(ptr noundef %wpi_list, i32 noundef %nth) #0 !dbg !969 {
entry:
  %retval = alloca i32, align 4
  %wpi_list.addr = alloca ptr, align 8
  %nth.addr = alloca i32, align 4
  store ptr %wpi_list, ptr %wpi_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi_list.addr, metadata !973, metadata !DIExpression()), !dbg !975
  store i32 %nth, ptr %nth.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %nth.addr, metadata !974, metadata !DIExpression()), !dbg !976
  %0 = load ptr, ptr %wpi_list.addr, align 8, !dbg !977, !tbaa !127
  %1 = load i32, ptr %nth.addr, align 4, !dbg !979, !tbaa !202
  %call = call i32 @SearchImageToGetOrDelete(ptr noundef %0, i32 noundef %1, ptr noundef %wpi_list.addr), !dbg !980
  %tobool = icmp ne i32 %call, 0, !dbg !980
  br i1 %tobool, label %if.end, label %if.then, !dbg !981

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !982
  br label %return, !dbg !982

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %wpi_list.addr, align 8, !dbg !984, !tbaa !127
  %3 = load ptr, ptr %2, align 8, !dbg !985, !tbaa !127
  %call1 = call ptr @MuxImageDelete(ptr noundef %3), !dbg !986
  %4 = load ptr, ptr %wpi_list.addr, align 8, !dbg !987, !tbaa !127
  store ptr %call1, ptr %4, align 8, !dbg !988, !tbaa !127
  store i32 1, ptr %retval, align 4, !dbg !989
  br label %return, !dbg !989

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !990
  ret i32 %5, !dbg !990
}

; Function Attrs: nounwind uwtable
define internal i32 @SearchImageToGetOrDelete(ptr noundef %wpi_list, i32 noundef %nth, ptr noundef %location) #0 !dbg !991 {
entry:
  %retval = alloca i32, align 4
  %wpi_list.addr = alloca ptr, align 8
  %nth.addr = alloca i32, align 4
  %location.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %cur_wpi = alloca ptr, align 8
  store ptr %wpi_list, ptr %wpi_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi_list.addr, metadata !996, metadata !DIExpression()), !dbg !1002
  store i32 %nth, ptr %nth.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %nth.addr, metadata !997, metadata !DIExpression()), !dbg !1003
  store ptr %location, ptr %location.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %location.addr, metadata !998, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #7, !dbg !1005
  tail call void @llvm.dbg.declare(metadata ptr %count, metadata !999, metadata !DIExpression()), !dbg !1006
  store i32 0, ptr %count, align 4, !dbg !1006, !tbaa !202
  %0 = load ptr, ptr %wpi_list.addr, align 8, !dbg !1007, !tbaa !127
  %1 = load ptr, ptr %location.addr, align 8, !dbg !1008, !tbaa !127
  store ptr %0, ptr %1, align 8, !dbg !1009, !tbaa !127
  %2 = load i32, ptr %nth.addr, align 4, !dbg !1010, !tbaa !202
  %cmp = icmp eq i32 %2, 0, !dbg !1012
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1013

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %wpi_list.addr, align 8, !dbg !1014, !tbaa !127
  %4 = load ptr, ptr %3, align 8, !dbg !1016, !tbaa !127
  %call = call i32 @MuxImageCount(ptr noundef %4, i32 noundef 10), !dbg !1017
  store i32 %call, ptr %nth.addr, align 4, !dbg !1018, !tbaa !202
  %5 = load i32, ptr %nth.addr, align 4, !dbg !1019, !tbaa !202
  %cmp1 = icmp eq i32 %5, 0, !dbg !1021
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1022

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !1023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !1023

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !1024

if.end3:                                          ; preds = %if.end, %entry
  br label %while.cond, !dbg !1025

while.cond:                                       ; preds = %cleanup.cont, %if.end3
  %6 = load ptr, ptr %wpi_list.addr, align 8, !dbg !1026, !tbaa !127
  %7 = load ptr, ptr %6, align 8, !dbg !1027, !tbaa !127
  %cmp4 = icmp ne ptr %7, null, !dbg !1028
  br i1 %cmp4, label %while.body, label %while.end, !dbg !1025

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_wpi) #7, !dbg !1029
  tail call void @llvm.dbg.declare(metadata ptr %cur_wpi, metadata !1000, metadata !DIExpression()), !dbg !1030
  %8 = load ptr, ptr %wpi_list.addr, align 8, !dbg !1031, !tbaa !127
  %9 = load ptr, ptr %8, align 8, !dbg !1032, !tbaa !127
  store ptr %9, ptr %cur_wpi, align 8, !dbg !1030, !tbaa !127
  %10 = load i32, ptr %count, align 4, !dbg !1033, !tbaa !202
  %inc = add i32 %10, 1, !dbg !1033
  store i32 %inc, ptr %count, align 4, !dbg !1033, !tbaa !202
  %11 = load i32, ptr %count, align 4, !dbg !1034, !tbaa !202
  %12 = load i32, ptr %nth.addr, align 4, !dbg !1036, !tbaa !202
  %cmp5 = icmp eq i32 %11, %12, !dbg !1037
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1038

if.then6:                                         ; preds = %while.body
  store i32 1, ptr %retval, align 4, !dbg !1039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1039

if.end7:                                          ; preds = %while.body
  %13 = load ptr, ptr %cur_wpi, align 8, !dbg !1040, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPMuxImage, ptr %13, i32 0, i32 8, !dbg !1041
  store ptr %next_, ptr %wpi_list.addr, align 8, !dbg !1042, !tbaa !127
  %14 = load ptr, ptr %wpi_list.addr, align 8, !dbg !1043, !tbaa !127
  %15 = load ptr, ptr %location.addr, align 8, !dbg !1044, !tbaa !127
  store ptr %14, ptr %15, align 8, !dbg !1045, !tbaa !127
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1046
  br label %cleanup, !dbg !1046

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_wpi) #7, !dbg !1046
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !1025, !llvm.loop !1047

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !1048

cleanup8:                                         ; preds = %while.end, %cleanup, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #7, !dbg !1049
  %16 = load i32, ptr %retval, align 4, !dbg !1049
  ret i32 %16, !dbg !1049
}

; Function Attrs: nounwind uwtable
define hidden i32 @MuxImageGetNth(ptr noundef %wpi_list, i32 noundef %nth, ptr noundef %wpi) #0 !dbg !1050 {
entry:
  %retval = alloca i32, align 4
  %wpi_list.addr = alloca ptr, align 8
  %nth.addr = alloca i32, align 4
  %wpi.addr = alloca ptr, align 8
  store ptr %wpi_list, ptr %wpi_list.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi_list.addr, metadata !1055, metadata !DIExpression()), !dbg !1058
  store i32 %nth, ptr %nth.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %nth.addr, metadata !1056, metadata !DIExpression()), !dbg !1059
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !1057, metadata !DIExpression()), !dbg !1060
  %0 = load ptr, ptr %wpi_list.addr, align 8, !dbg !1061, !tbaa !127
  %1 = load i32, ptr %nth.addr, align 4, !dbg !1063, !tbaa !202
  %call = call i32 @SearchImageToGetOrDelete(ptr noundef %0, i32 noundef %1, ptr noundef %wpi_list.addr), !dbg !1064
  %tobool = icmp ne i32 %call, 0, !dbg !1064
  br i1 %tobool, label %if.end, label %if.then, !dbg !1065

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1066
  br label %return, !dbg !1066

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %wpi_list.addr, align 8, !dbg !1068, !tbaa !127
  %3 = load ptr, ptr %2, align 8, !dbg !1069, !tbaa !127
  %4 = load ptr, ptr %wpi.addr, align 8, !dbg !1070, !tbaa !127
  store ptr %3, ptr %4, align 8, !dbg !1071, !tbaa !127
  store i32 1, ptr %retval, align 4, !dbg !1072
  br label %return, !dbg !1072

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !1073
  ret i32 %5, !dbg !1073
}

; Function Attrs: nounwind uwtable
define hidden i64 @MuxImageDiskSize(ptr noundef %wpi) #0 !dbg !1074 {
entry:
  %wpi.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !1078, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !1081
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1079, metadata !DIExpression()), !dbg !1082
  store i64 0, ptr %size, align 8, !dbg !1082, !tbaa !432
  %0 = load ptr, ptr %wpi.addr, align 8, !dbg !1083, !tbaa !127
  %header_ = getelementptr inbounds %struct.WebPMuxImage, ptr %0, i32 0, i32 0, !dbg !1085
  %1 = load ptr, ptr %header_, align 8, !dbg !1085, !tbaa !1086
  %cmp = icmp ne ptr %1, null, !dbg !1087
  br i1 %cmp, label %if.then, label %if.end, !dbg !1088

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %wpi.addr, align 8, !dbg !1089, !tbaa !127
  %header_1 = getelementptr inbounds %struct.WebPMuxImage, ptr %2, i32 0, i32 0, !dbg !1090
  %3 = load ptr, ptr %header_1, align 8, !dbg !1090, !tbaa !1086
  %call = call i64 @ChunkDiskSize(ptr noundef %3), !dbg !1091
  %4 = load i64, ptr %size, align 8, !dbg !1092, !tbaa !432
  %add = add i64 %4, %call, !dbg !1092
  store i64 %add, ptr %size, align 8, !dbg !1092, !tbaa !432
  br label %if.end, !dbg !1093

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %wpi.addr, align 8, !dbg !1094, !tbaa !127
  %alpha_ = getelementptr inbounds %struct.WebPMuxImage, ptr %5, i32 0, i32 1, !dbg !1096
  %6 = load ptr, ptr %alpha_, align 8, !dbg !1096, !tbaa !1097
  %cmp2 = icmp ne ptr %6, null, !dbg !1098
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !1099

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %wpi.addr, align 8, !dbg !1100, !tbaa !127
  %alpha_4 = getelementptr inbounds %struct.WebPMuxImage, ptr %7, i32 0, i32 1, !dbg !1101
  %8 = load ptr, ptr %alpha_4, align 8, !dbg !1101, !tbaa !1097
  %call5 = call i64 @ChunkDiskSize(ptr noundef %8), !dbg !1102
  %9 = load i64, ptr %size, align 8, !dbg !1103, !tbaa !432
  %add6 = add i64 %9, %call5, !dbg !1103
  store i64 %add6, ptr %size, align 8, !dbg !1103, !tbaa !432
  br label %if.end7, !dbg !1104

if.end7:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %wpi.addr, align 8, !dbg !1105, !tbaa !127
  %img_ = getelementptr inbounds %struct.WebPMuxImage, ptr %10, i32 0, i32 2, !dbg !1107
  %11 = load ptr, ptr %img_, align 8, !dbg !1107, !tbaa !1108
  %cmp8 = icmp ne ptr %11, null, !dbg !1109
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !1110

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %wpi.addr, align 8, !dbg !1111, !tbaa !127
  %img_10 = getelementptr inbounds %struct.WebPMuxImage, ptr %12, i32 0, i32 2, !dbg !1112
  %13 = load ptr, ptr %img_10, align 8, !dbg !1112, !tbaa !1108
  %call11 = call i64 @ChunkDiskSize(ptr noundef %13), !dbg !1113
  %14 = load i64, ptr %size, align 8, !dbg !1114, !tbaa !432
  %add12 = add i64 %14, %call11, !dbg !1114
  store i64 %add12, ptr %size, align 8, !dbg !1114, !tbaa !432
  br label %if.end13, !dbg !1115

if.end13:                                         ; preds = %if.then9, %if.end7
  %15 = load ptr, ptr %wpi.addr, align 8, !dbg !1116, !tbaa !127
  %unknown_ = getelementptr inbounds %struct.WebPMuxImage, ptr %15, i32 0, i32 3, !dbg !1118
  %16 = load ptr, ptr %unknown_, align 8, !dbg !1118, !tbaa !1119
  %cmp14 = icmp ne ptr %16, null, !dbg !1120
  br i1 %cmp14, label %if.then15, label %if.end19, !dbg !1121

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %wpi.addr, align 8, !dbg !1122, !tbaa !127
  %unknown_16 = getelementptr inbounds %struct.WebPMuxImage, ptr %17, i32 0, i32 3, !dbg !1123
  %18 = load ptr, ptr %unknown_16, align 8, !dbg !1123, !tbaa !1119
  %call17 = call i64 @ChunkListDiskSize(ptr noundef %18), !dbg !1124
  %19 = load i64, ptr %size, align 8, !dbg !1125, !tbaa !432
  %add18 = add i64 %19, %call17, !dbg !1125
  store i64 %add18, ptr %size, align 8, !dbg !1125, !tbaa !432
  br label %if.end19, !dbg !1126

if.end19:                                         ; preds = %if.then15, %if.end13
  %20 = load i64, ptr %size, align 8, !dbg !1127, !tbaa !432
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !1128
  ret i64 %20, !dbg !1129
}

; Function Attrs: nounwind uwtable
define hidden ptr @MuxImageEmit(ptr noundef %wpi, ptr noundef %dst) #0 !dbg !1130 {
entry:
  %wpi.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  store ptr %wpi, ptr %wpi.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %wpi.addr, metadata !1134, metadata !DIExpression()), !dbg !1136
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1135, metadata !DIExpression()), !dbg !1137
  %0 = load ptr, ptr %wpi.addr, align 8, !dbg !1138, !tbaa !127
  %header_ = getelementptr inbounds %struct.WebPMuxImage, ptr %0, i32 0, i32 0, !dbg !1140
  %1 = load ptr, ptr %header_, align 8, !dbg !1140, !tbaa !1086
  %cmp = icmp ne ptr %1, null, !dbg !1141
  br i1 %cmp, label %if.then, label %if.end, !dbg !1142

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %wpi.addr, align 8, !dbg !1143, !tbaa !127
  %header_1 = getelementptr inbounds %struct.WebPMuxImage, ptr %2, i32 0, i32 0, !dbg !1145
  %3 = load ptr, ptr %header_1, align 8, !dbg !1145, !tbaa !1086
  %4 = load ptr, ptr %wpi.addr, align 8, !dbg !1146, !tbaa !127
  %call = call i64 @MuxImageDiskSize(ptr noundef %4), !dbg !1147
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1148, !tbaa !127
  %call2 = call ptr @ChunkEmitSpecial(ptr noundef %3, i64 noundef %call, ptr noundef %5), !dbg !1149
  store ptr %call2, ptr %dst.addr, align 8, !dbg !1150, !tbaa !127
  br label %if.end, !dbg !1151

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %wpi.addr, align 8, !dbg !1152, !tbaa !127
  %alpha_ = getelementptr inbounds %struct.WebPMuxImage, ptr %6, i32 0, i32 1, !dbg !1154
  %7 = load ptr, ptr %alpha_, align 8, !dbg !1154, !tbaa !1097
  %cmp3 = icmp ne ptr %7, null, !dbg !1155
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1156

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %wpi.addr, align 8, !dbg !1157, !tbaa !127
  %alpha_5 = getelementptr inbounds %struct.WebPMuxImage, ptr %8, i32 0, i32 1, !dbg !1158
  %9 = load ptr, ptr %alpha_5, align 8, !dbg !1158, !tbaa !1097
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !1159, !tbaa !127
  %call6 = call ptr @ChunkEmit(ptr noundef %9, ptr noundef %10), !dbg !1160
  store ptr %call6, ptr %dst.addr, align 8, !dbg !1161, !tbaa !127
  br label %if.end7, !dbg !1162

if.end7:                                          ; preds = %if.then4, %if.end
  %11 = load ptr, ptr %wpi.addr, align 8, !dbg !1163, !tbaa !127
  %img_ = getelementptr inbounds %struct.WebPMuxImage, ptr %11, i32 0, i32 2, !dbg !1165
  %12 = load ptr, ptr %img_, align 8, !dbg !1165, !tbaa !1108
  %cmp8 = icmp ne ptr %12, null, !dbg !1166
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !1167

if.then9:                                         ; preds = %if.end7
  %13 = load ptr, ptr %wpi.addr, align 8, !dbg !1168, !tbaa !127
  %img_10 = getelementptr inbounds %struct.WebPMuxImage, ptr %13, i32 0, i32 2, !dbg !1169
  %14 = load ptr, ptr %img_10, align 8, !dbg !1169, !tbaa !1108
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !1170, !tbaa !127
  %call11 = call ptr @ChunkEmit(ptr noundef %14, ptr noundef %15), !dbg !1171
  store ptr %call11, ptr %dst.addr, align 8, !dbg !1172, !tbaa !127
  br label %if.end12, !dbg !1173

if.end12:                                         ; preds = %if.then9, %if.end7
  %16 = load ptr, ptr %wpi.addr, align 8, !dbg !1174, !tbaa !127
  %unknown_ = getelementptr inbounds %struct.WebPMuxImage, ptr %16, i32 0, i32 3, !dbg !1176
  %17 = load ptr, ptr %unknown_, align 8, !dbg !1176, !tbaa !1119
  %cmp13 = icmp ne ptr %17, null, !dbg !1177
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !1178

if.then14:                                        ; preds = %if.end12
  %18 = load ptr, ptr %wpi.addr, align 8, !dbg !1179, !tbaa !127
  %unknown_15 = getelementptr inbounds %struct.WebPMuxImage, ptr %18, i32 0, i32 3, !dbg !1180
  %19 = load ptr, ptr %unknown_15, align 8, !dbg !1180, !tbaa !1119
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !1181, !tbaa !127
  %call16 = call ptr @ChunkListEmit(ptr noundef %19, ptr noundef %20), !dbg !1182
  store ptr %call16, ptr %dst.addr, align 8, !dbg !1183, !tbaa !127
  br label %if.end17, !dbg !1184

if.end17:                                         ; preds = %if.then14, %if.end12
  %21 = load ptr, ptr %dst.addr, align 8, !dbg !1185, !tbaa !127
  ret ptr %21, !dbg !1186
}

; Function Attrs: nounwind uwtable
define internal ptr @ChunkEmitSpecial(ptr noundef %header, i64 noundef %total_size, ptr noundef %dst) #0 !dbg !1187 {
entry:
  %header.addr = alloca ptr, align 8
  %total_size.addr = alloca i64, align 8
  %dst.addr = alloca ptr, align 8
  %header_size = alloca i64, align 8
  %offset_to_next = alloca i64, align 8
  store ptr %header, ptr %header.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %header.addr, metadata !1191, metadata !DIExpression()), !dbg !1196
  store i64 %total_size, ptr %total_size.addr, align 8, !tbaa !432
  tail call void @llvm.dbg.declare(metadata ptr %total_size.addr, metadata !1192, metadata !DIExpression()), !dbg !1197
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1193, metadata !DIExpression()), !dbg !1198
  call void @llvm.lifetime.start.p0(i64 8, ptr %header_size) #7, !dbg !1199
  tail call void @llvm.dbg.declare(metadata ptr %header_size, metadata !1194, metadata !DIExpression()), !dbg !1200
  %0 = load ptr, ptr %header.addr, align 8, !dbg !1201, !tbaa !127
  %data_ = getelementptr inbounds %struct.WebPChunk, ptr %0, i32 0, i32 2, !dbg !1202
  %size = getelementptr inbounds %struct.WebPData, ptr %data_, i32 0, i32 1, !dbg !1203
  %1 = load i64, ptr %size, align 8, !dbg !1203, !tbaa !680
  store i64 %1, ptr %header_size, align 8, !dbg !1200, !tbaa !432
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset_to_next) #7, !dbg !1204
  tail call void @llvm.dbg.declare(metadata ptr %offset_to_next, metadata !1195, metadata !DIExpression()), !dbg !1205
  %2 = load i64, ptr %total_size.addr, align 8, !dbg !1206, !tbaa !432
  %sub = sub i64 %2, 8, !dbg !1207
  store i64 %sub, ptr %offset_to_next, align 8, !dbg !1205, !tbaa !432
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1208, !tbaa !127
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 0, !dbg !1209
  %4 = load ptr, ptr %header.addr, align 8, !dbg !1210, !tbaa !127
  %tag_ = getelementptr inbounds %struct.WebPChunk, ptr %4, i32 0, i32 0, !dbg !1211
  %5 = load i32, ptr %tag_, align 8, !dbg !1211, !tbaa !137
  call void @PutLE32(ptr noundef %add.ptr, i32 noundef %5), !dbg !1212
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1213, !tbaa !127
  %add.ptr1 = getelementptr inbounds i8, ptr %6, i64 4, !dbg !1214
  %7 = load i64, ptr %offset_to_next, align 8, !dbg !1215, !tbaa !432
  %conv = trunc i64 %7 to i32, !dbg !1216
  call void @PutLE32(ptr noundef %add.ptr1, i32 noundef %conv), !dbg !1217
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1218, !tbaa !127
  %add.ptr2 = getelementptr inbounds i8, ptr %8, i64 8, !dbg !1219
  %9 = load ptr, ptr %header.addr, align 8, !dbg !1220, !tbaa !127
  %data_3 = getelementptr inbounds %struct.WebPChunk, ptr %9, i32 0, i32 2, !dbg !1221
  %bytes = getelementptr inbounds %struct.WebPData, ptr %data_3, i32 0, i32 0, !dbg !1222
  %10 = load ptr, ptr %bytes, align 8, !dbg !1222, !tbaa !696
  %11 = load i64, ptr %header_size, align 8, !dbg !1223, !tbaa !432
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr2, ptr align 1 %10, i64 %11, i1 false), !dbg !1224
  %12 = load i64, ptr %header_size, align 8, !dbg !1225, !tbaa !432
  %and = and i64 %12, 1, !dbg !1227
  %tobool = icmp ne i64 %and, 0, !dbg !1227
  br i1 %tobool, label %if.then, label %if.end, !dbg !1228

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !1229, !tbaa !127
  %14 = load i64, ptr %header_size, align 8, !dbg !1231, !tbaa !432
  %add = add i64 8, %14, !dbg !1232
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %add, !dbg !1229
  store i8 0, ptr %arrayidx, align 1, !dbg !1233, !tbaa !283
  br label %if.end, !dbg !1234

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %dst.addr, align 8, !dbg !1235, !tbaa !127
  %16 = load ptr, ptr %header.addr, align 8, !dbg !1236, !tbaa !127
  %call = call i64 @ChunkDiskSize(ptr noundef %16), !dbg !1237
  %add.ptr4 = getelementptr inbounds i8, ptr %15, i64 %call, !dbg !1238
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset_to_next) #7, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr %header_size) #7, !dbg !1239
  ret ptr %add.ptr4, !dbg !1240
}

; Function Attrs: nounwind uwtable
define hidden i32 @MuxHasAlpha(ptr noundef %images) #0 !dbg !1241 {
entry:
  %retval = alloca i32, align 4
  %images.addr = alloca ptr, align 8
  store ptr %images, ptr %images.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %images.addr, metadata !1245, metadata !DIExpression()), !dbg !1246
  br label %while.cond, !dbg !1247

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %images.addr, align 8, !dbg !1248, !tbaa !127
  %cmp = icmp ne ptr %0, null, !dbg !1249
  br i1 %cmp, label %while.body, label %while.end, !dbg !1247

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %images.addr, align 8, !dbg !1250, !tbaa !127
  %has_alpha_ = getelementptr inbounds %struct.WebPMuxImage, ptr %1, i32 0, i32 6, !dbg !1253
  %2 = load i32, ptr %has_alpha_, align 8, !dbg !1253, !tbaa !1254
  %tobool = icmp ne i32 %2, 0, !dbg !1250
  br i1 %tobool, label %if.then, label %if.end, !dbg !1255

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4, !dbg !1256
  br label %return, !dbg !1256

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %images.addr, align 8, !dbg !1257, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPMuxImage, ptr %3, i32 0, i32 8, !dbg !1258
  %4 = load ptr, ptr %next_, align 8, !dbg !1258, !tbaa !789
  store ptr %4, ptr %images.addr, align 8, !dbg !1259, !tbaa !127
  br label %while.cond, !dbg !1247, !llvm.loop !1260

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1262
  br label %return, !dbg !1262

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !1263
  ret i32 %5, !dbg !1263
}

; Function Attrs: nounwind uwtable
define hidden ptr @MuxEmitRiffHeader(ptr noundef %data, i64 noundef %size) #0 !dbg !1264 {
entry:
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1269, metadata !DIExpression()), !dbg !1271
  store i64 %size, ptr %size.addr, align 8, !tbaa !432
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1270, metadata !DIExpression()), !dbg !1272
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1273, !tbaa !127
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 0, !dbg !1274
  call void @PutLE32(ptr noundef %add.ptr, i32 noundef 1179011410), !dbg !1275
  %1 = load ptr, ptr %data.addr, align 8, !dbg !1276, !tbaa !127
  %add.ptr1 = getelementptr inbounds i8, ptr %1, i64 4, !dbg !1277
  %2 = load i64, ptr %size.addr, align 8, !dbg !1278, !tbaa !432
  %conv = trunc i64 %2 to i32, !dbg !1279
  %sub = sub i32 %conv, 8, !dbg !1280
  call void @PutLE32(ptr noundef %add.ptr1, i32 noundef %sub), !dbg !1281
  %3 = load ptr, ptr %data.addr, align 8, !dbg !1282, !tbaa !127
  %add.ptr2 = getelementptr inbounds i8, ptr %3, i64 4, !dbg !1283
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr2, i64 4, !dbg !1284
  call void @PutLE32(ptr noundef %add.ptr3, i32 noundef 1346520407), !dbg !1285
  %4 = load ptr, ptr %data.addr, align 8, !dbg !1286, !tbaa !127
  %add.ptr4 = getelementptr inbounds i8, ptr %4, i64 12, !dbg !1287
  ret ptr %add.ptr4, !dbg !1288
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @PutLE32(ptr noundef %data, i32 noundef %val) #3 !dbg !1289 {
entry:
  %data.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1293, metadata !DIExpression()), !dbg !1295
  store i32 %val, ptr %val.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1294, metadata !DIExpression()), !dbg !1296
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1297, !tbaa !127
  %1 = load i32, ptr %val.addr, align 4, !dbg !1298, !tbaa !202
  %and = and i32 %1, 65535, !dbg !1299
  call void @PutLE16(ptr noundef %0, i32 noundef %and), !dbg !1300
  %2 = load ptr, ptr %data.addr, align 8, !dbg !1301, !tbaa !127
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 2, !dbg !1302
  %3 = load i32, ptr %val.addr, align 4, !dbg !1303, !tbaa !202
  %shr = lshr i32 %3, 16, !dbg !1304
  call void @PutLE16(ptr noundef %add.ptr, i32 noundef %shr), !dbg !1305
  ret void, !dbg !1306
}

; Function Attrs: nounwind uwtable
define hidden ptr @MuxGetChunkListFromId(ptr noundef %mux, i32 noundef %id) #0 !dbg !1307 {
entry:
  %retval = alloca ptr, align 8
  %mux.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  store ptr %mux, ptr %mux.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %mux.addr, metadata !1325, metadata !DIExpression()), !dbg !1327
  store i32 %id, ptr %id.addr, align 4, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1326, metadata !DIExpression()), !dbg !1328
  %0 = load i32, ptr %id.addr, align 4, !dbg !1329, !tbaa !283
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 7, label %sw.bb3
    i32 8, label %sw.bb4
  ], !dbg !1330

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %mux.addr, align 8, !dbg !1331, !tbaa !127
  %vp8x_ = getelementptr inbounds %struct.WebPMux, ptr %1, i32 0, i32 5, !dbg !1333
  store ptr %vp8x_, ptr %retval, align 8, !dbg !1334
  br label %return, !dbg !1334

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %mux.addr, align 8, !dbg !1335, !tbaa !127
  %iccp_ = getelementptr inbounds %struct.WebPMux, ptr %2, i32 0, i32 1, !dbg !1336
  store ptr %iccp_, ptr %retval, align 8, !dbg !1337
  br label %return, !dbg !1337

sw.bb2:                                           ; preds = %entry
  %3 = load ptr, ptr %mux.addr, align 8, !dbg !1338, !tbaa !127
  %anim_ = getelementptr inbounds %struct.WebPMux, ptr %3, i32 0, i32 4, !dbg !1339
  store ptr %anim_, ptr %retval, align 8, !dbg !1340
  br label %return, !dbg !1340

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %mux.addr, align 8, !dbg !1341, !tbaa !127
  %exif_ = getelementptr inbounds %struct.WebPMux, ptr %4, i32 0, i32 2, !dbg !1342
  store ptr %exif_, ptr %retval, align 8, !dbg !1343
  br label %return, !dbg !1343

sw.bb4:                                           ; preds = %entry
  %5 = load ptr, ptr %mux.addr, align 8, !dbg !1344, !tbaa !127
  %xmp_ = getelementptr inbounds %struct.WebPMux, ptr %5, i32 0, i32 3, !dbg !1345
  store ptr %xmp_, ptr %retval, align 8, !dbg !1346
  br label %return, !dbg !1346

sw.default:                                       ; preds = %entry
  %6 = load ptr, ptr %mux.addr, align 8, !dbg !1347, !tbaa !127
  %unknown_ = getelementptr inbounds %struct.WebPMux, ptr %6, i32 0, i32 6, !dbg !1348
  store ptr %unknown_, ptr %retval, align 8, !dbg !1349
  br label %return, !dbg !1349

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %7 = load ptr, ptr %retval, align 8, !dbg !1350
  ret ptr %7, !dbg !1350
}

; Function Attrs: nounwind uwtable
define hidden i32 @MuxValidate(ptr noundef %mux) #0 !dbg !1351 {
entry:
  %retval = alloca i32, align 4
  %mux.addr = alloca ptr, align 8
  %num_iccp = alloca i32, align 4
  %num_exif = alloca i32, align 4
  %num_xmp = alloca i32, align 4
  %num_anim = alloca i32, align 4
  %num_frames = alloca i32, align 4
  %num_vp8x = alloca i32, align 4
  %num_images = alloca i32, align 4
  %num_alpha = alloca i32, align 4
  %flags = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %has_animation = alloca i32, align 4
  %images = alloca ptr, align 8
  store ptr %mux, ptr %mux.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %mux.addr, metadata !1356, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_iccp) #7, !dbg !1374
  tail call void @llvm.dbg.declare(metadata ptr %num_iccp, metadata !1357, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_exif) #7, !dbg !1376
  tail call void @llvm.dbg.declare(metadata ptr %num_exif, metadata !1358, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_xmp) #7, !dbg !1378
  tail call void @llvm.dbg.declare(metadata ptr %num_xmp, metadata !1359, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_anim) #7, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %num_anim, metadata !1360, metadata !DIExpression()), !dbg !1381
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_frames) #7, !dbg !1382
  tail call void @llvm.dbg.declare(metadata ptr %num_frames, metadata !1361, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_vp8x) #7, !dbg !1384
  tail call void @llvm.dbg.declare(metadata ptr %num_vp8x, metadata !1362, metadata !DIExpression()), !dbg !1385
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_images) #7, !dbg !1386
  tail call void @llvm.dbg.declare(metadata ptr %num_images, metadata !1363, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_alpha) #7, !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %num_alpha, metadata !1364, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #7, !dbg !1390
  tail call void @llvm.dbg.declare(metadata ptr %flags, metadata !1365, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !1392
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1366, metadata !DIExpression()), !dbg !1393
  %0 = load ptr, ptr %mux.addr, align 8, !dbg !1394, !tbaa !127
  %cmp = icmp eq ptr %0, null, !dbg !1396
  br i1 %cmp, label %if.then, label %if.end, !dbg !1397

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1398

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %mux.addr, align 8, !dbg !1399, !tbaa !127
  %images_ = getelementptr inbounds %struct.WebPMux, ptr %1, i32 0, i32 0, !dbg !1401
  %2 = load ptr, ptr %images_, align 8, !dbg !1401, !tbaa !1402
  %cmp1 = icmp eq ptr %2, null, !dbg !1404
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1405

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1406

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %mux.addr, align 8, !dbg !1407, !tbaa !127
  %call = call i32 @WebPMuxGetFeatures(ptr noundef %3, ptr noundef %flags), !dbg !1408
  store i32 %call, ptr %err, align 4, !dbg !1409, !tbaa !283
  %4 = load i32, ptr %err, align 4, !dbg !1410, !tbaa !283
  %cmp4 = icmp ne i32 %4, 1, !dbg !1412
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1413

if.then5:                                         ; preds = %if.end3
  %5 = load i32, ptr %err, align 4, !dbg !1414, !tbaa !283
  store i32 %5, ptr %retval, align 4, !dbg !1415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1415

if.end6:                                          ; preds = %if.end3
  %6 = load ptr, ptr %mux.addr, align 8, !dbg !1416, !tbaa !127
  %7 = load i32, ptr %flags, align 4, !dbg !1417, !tbaa !202
  %call7 = call i32 @ValidateChunk(ptr noundef %6, i32 noundef 1, i32 noundef 32, i32 noundef %7, i32 noundef 1, ptr noundef %num_iccp), !dbg !1418
  store i32 %call7, ptr %err, align 4, !dbg !1419, !tbaa !283
  %8 = load i32, ptr %err, align 4, !dbg !1420, !tbaa !283
  %cmp8 = icmp ne i32 %8, 1, !dbg !1422
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1423

if.then9:                                         ; preds = %if.end6
  %9 = load i32, ptr %err, align 4, !dbg !1424, !tbaa !283
  store i32 %9, ptr %retval, align 4, !dbg !1425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1425

if.end10:                                         ; preds = %if.end6
  %10 = load ptr, ptr %mux.addr, align 8, !dbg !1426, !tbaa !127
  %11 = load i32, ptr %flags, align 4, !dbg !1427, !tbaa !202
  %call11 = call i32 @ValidateChunk(ptr noundef %10, i32 noundef 7, i32 noundef 8, i32 noundef %11, i32 noundef 1, ptr noundef %num_exif), !dbg !1428
  store i32 %call11, ptr %err, align 4, !dbg !1429, !tbaa !283
  %12 = load i32, ptr %err, align 4, !dbg !1430, !tbaa !283
  %cmp12 = icmp ne i32 %12, 1, !dbg !1432
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1433

if.then13:                                        ; preds = %if.end10
  %13 = load i32, ptr %err, align 4, !dbg !1434, !tbaa !283
  store i32 %13, ptr %retval, align 4, !dbg !1435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1435

if.end14:                                         ; preds = %if.end10
  %14 = load ptr, ptr %mux.addr, align 8, !dbg !1436, !tbaa !127
  %15 = load i32, ptr %flags, align 4, !dbg !1437, !tbaa !202
  %call15 = call i32 @ValidateChunk(ptr noundef %14, i32 noundef 8, i32 noundef 4, i32 noundef %15, i32 noundef 1, ptr noundef %num_xmp), !dbg !1438
  store i32 %call15, ptr %err, align 4, !dbg !1439, !tbaa !283
  %16 = load i32, ptr %err, align 4, !dbg !1440, !tbaa !283
  %cmp16 = icmp ne i32 %16, 1, !dbg !1442
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1443

if.then17:                                        ; preds = %if.end14
  %17 = load i32, ptr %err, align 4, !dbg !1444, !tbaa !283
  store i32 %17, ptr %retval, align 4, !dbg !1445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1445

if.end18:                                         ; preds = %if.end14
  %18 = load ptr, ptr %mux.addr, align 8, !dbg !1446, !tbaa !127
  %19 = load i32, ptr %flags, align 4, !dbg !1447, !tbaa !202
  %call19 = call i32 @ValidateChunk(ptr noundef %18, i32 noundef 2, i32 noundef 0, i32 noundef %19, i32 noundef 1, ptr noundef %num_anim), !dbg !1448
  store i32 %call19, ptr %err, align 4, !dbg !1449, !tbaa !283
  %20 = load i32, ptr %err, align 4, !dbg !1450, !tbaa !283
  %cmp20 = icmp ne i32 %20, 1, !dbg !1452
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !1453

if.then21:                                        ; preds = %if.end18
  %21 = load i32, ptr %err, align 4, !dbg !1454, !tbaa !283
  store i32 %21, ptr %retval, align 4, !dbg !1455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1455

if.end22:                                         ; preds = %if.end18
  %22 = load ptr, ptr %mux.addr, align 8, !dbg !1456, !tbaa !127
  %23 = load i32, ptr %flags, align 4, !dbg !1457, !tbaa !202
  %call23 = call i32 @ValidateChunk(ptr noundef %22, i32 noundef 3, i32 noundef 0, i32 noundef %23, i32 noundef -1, ptr noundef %num_frames), !dbg !1458
  store i32 %call23, ptr %err, align 4, !dbg !1459, !tbaa !283
  %24 = load i32, ptr %err, align 4, !dbg !1460, !tbaa !283
  %cmp24 = icmp ne i32 %24, 1, !dbg !1462
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1463

if.then25:                                        ; preds = %if.end22
  %25 = load i32, ptr %err, align 4, !dbg !1464, !tbaa !283
  store i32 %25, ptr %retval, align 4, !dbg !1465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1465

if.end26:                                         ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_animation) #7, !dbg !1466
  tail call void @llvm.dbg.declare(metadata ptr %has_animation, metadata !1367, metadata !DIExpression()), !dbg !1467
  %26 = load i32, ptr %flags, align 4, !dbg !1468, !tbaa !202
  %and = and i32 %26, 2, !dbg !1469
  %tobool = icmp ne i32 %and, 0, !dbg !1470
  %lnot = xor i1 %tobool, true, !dbg !1470
  %lnot27 = xor i1 %lnot, true, !dbg !1471
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !1471
  store i32 %lnot.ext, ptr %has_animation, align 4, !dbg !1467, !tbaa !202
  %27 = load i32, ptr %has_animation, align 4, !dbg !1472, !tbaa !202
  %tobool28 = icmp ne i32 %27, 0, !dbg !1472
  br i1 %tobool28, label %land.lhs.true, label %if.end32, !dbg !1474

land.lhs.true:                                    ; preds = %if.end26
  %28 = load i32, ptr %num_anim, align 4, !dbg !1475, !tbaa !202
  %cmp29 = icmp eq i32 %28, 0, !dbg !1476
  br i1 %cmp29, label %if.then31, label %lor.lhs.false, !dbg !1477

lor.lhs.false:                                    ; preds = %land.lhs.true
  %29 = load i32, ptr %num_frames, align 4, !dbg !1478, !tbaa !202
  %cmp30 = icmp eq i32 %29, 0, !dbg !1479
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1480

if.then31:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !1481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !1481

if.end32:                                         ; preds = %lor.lhs.false, %if.end26
  %30 = load i32, ptr %has_animation, align 4, !dbg !1483, !tbaa !202
  %tobool33 = icmp ne i32 %30, 0, !dbg !1483
  br i1 %tobool33, label %if.end39, label %land.lhs.true34, !dbg !1485

land.lhs.true34:                                  ; preds = %if.end32
  %31 = load i32, ptr %num_anim, align 4, !dbg !1486, !tbaa !202
  %cmp35 = icmp eq i32 %31, 1, !dbg !1487
  br i1 %cmp35, label %if.then38, label %lor.lhs.false36, !dbg !1488

lor.lhs.false36:                                  ; preds = %land.lhs.true34
  %32 = load i32, ptr %num_frames, align 4, !dbg !1489, !tbaa !202
  %cmp37 = icmp sgt i32 %32, 0, !dbg !1490
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !1491

if.then38:                                        ; preds = %lor.lhs.false36, %land.lhs.true34
  store i32 -1, ptr %retval, align 4, !dbg !1492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup58, !dbg !1492

if.end39:                                         ; preds = %lor.lhs.false36, %if.end32
  %33 = load i32, ptr %has_animation, align 4, !dbg !1494, !tbaa !202
  %tobool40 = icmp ne i32 %33, 0, !dbg !1494
  br i1 %tobool40, label %if.end57, label %if.then41, !dbg !1495

if.then41:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %images) #7, !dbg !1496
  tail call void @llvm.dbg.declare(metadata ptr %images, metadata !1370, metadata !DIExpression()), !dbg !1497
  %34 = load ptr, ptr %mux.addr, align 8, !dbg !1498, !tbaa !127
  %images_42 = getelementptr inbounds %struct.WebPMux, ptr %34, i32 0, i32 0, !dbg !1499
  %35 = load ptr, ptr %images_42, align 8, !dbg !1499, !tbaa !1402
  store ptr %35, ptr %images, align 8, !dbg !1497, !tbaa !127
  %36 = load ptr, ptr %images, align 8, !dbg !1500, !tbaa !127
  %cmp43 = icmp eq ptr %36, null, !dbg !1502
  br i1 %cmp43, label %if.then46, label %lor.lhs.false44, !dbg !1503

lor.lhs.false44:                                  ; preds = %if.then41
  %37 = load ptr, ptr %images, align 8, !dbg !1504, !tbaa !127
  %next_ = getelementptr inbounds %struct.WebPMuxImage, ptr %37, i32 0, i32 8, !dbg !1505
  %38 = load ptr, ptr %next_, align 8, !dbg !1505, !tbaa !789
  %cmp45 = icmp ne ptr %38, null, !dbg !1506
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1507

if.then46:                                        ; preds = %lor.lhs.false44, %if.then41
  store i32 -1, ptr %retval, align 4, !dbg !1508
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1508

if.end47:                                         ; preds = %lor.lhs.false44
  %39 = load ptr, ptr %mux.addr, align 8, !dbg !1510, !tbaa !127
  %canvas_width_ = getelementptr inbounds %struct.WebPMux, ptr %39, i32 0, i32 7, !dbg !1512
  %40 = load i32, ptr %canvas_width_, align 8, !dbg !1512, !tbaa !1513
  %cmp48 = icmp sgt i32 %40, 0, !dbg !1514
  br i1 %cmp48, label %if.then49, label %if.end56, !dbg !1515

if.then49:                                        ; preds = %if.end47
  %41 = load ptr, ptr %images, align 8, !dbg !1516, !tbaa !127
  %width_ = getelementptr inbounds %struct.WebPMuxImage, ptr %41, i32 0, i32 4, !dbg !1519
  %42 = load i32, ptr %width_, align 8, !dbg !1519, !tbaa !1520
  %43 = load ptr, ptr %mux.addr, align 8, !dbg !1521, !tbaa !127
  %canvas_width_50 = getelementptr inbounds %struct.WebPMux, ptr %43, i32 0, i32 7, !dbg !1522
  %44 = load i32, ptr %canvas_width_50, align 8, !dbg !1522, !tbaa !1513
  %cmp51 = icmp ne i32 %42, %44, !dbg !1523
  br i1 %cmp51, label %if.then54, label %lor.lhs.false52, !dbg !1524

lor.lhs.false52:                                  ; preds = %if.then49
  %45 = load ptr, ptr %images, align 8, !dbg !1525, !tbaa !127
  %height_ = getelementptr inbounds %struct.WebPMuxImage, ptr %45, i32 0, i32 5, !dbg !1526
  %46 = load i32, ptr %height_, align 4, !dbg !1526, !tbaa !1527
  %47 = load ptr, ptr %mux.addr, align 8, !dbg !1528, !tbaa !127
  %canvas_height_ = getelementptr inbounds %struct.WebPMux, ptr %47, i32 0, i32 8, !dbg !1529
  %48 = load i32, ptr %canvas_height_, align 4, !dbg !1529, !tbaa !1530
  %cmp53 = icmp ne i32 %46, %48, !dbg !1531
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !1532

if.then54:                                        ; preds = %lor.lhs.false52, %if.then49
  store i32 -1, ptr %retval, align 4, !dbg !1533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1533

if.end55:                                         ; preds = %lor.lhs.false52
  br label %if.end56, !dbg !1535

if.end56:                                         ; preds = %if.end55, %if.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1536
  br label %cleanup, !dbg !1536

cleanup:                                          ; preds = %if.end56, %if.then54, %if.then46
  call void @llvm.lifetime.end.p0(i64 8, ptr %images) #7, !dbg !1536
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end57, !dbg !1537

if.end57:                                         ; preds = %cleanup.cont, %if.end39
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1538
  br label %cleanup58, !dbg !1538

cleanup58:                                        ; preds = %if.end57, %cleanup, %if.then38, %if.then31
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_animation) #7, !dbg !1538
  %cleanup.dest59 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest59, label %cleanup93 [
    i32 0, label %cleanup.cont60
  ]

cleanup.cont60:                                   ; preds = %cleanup58
  %49 = load ptr, ptr %mux.addr, align 8, !dbg !1539, !tbaa !127
  %50 = load i32, ptr %flags, align 4, !dbg !1540, !tbaa !202
  %call61 = call i32 @ValidateChunk(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef %50, i32 noundef 1, ptr noundef %num_vp8x), !dbg !1541
  store i32 %call61, ptr %err, align 4, !dbg !1542, !tbaa !283
  %51 = load i32, ptr %err, align 4, !dbg !1543, !tbaa !283
  %cmp62 = icmp ne i32 %51, 1, !dbg !1545
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !1546

if.then63:                                        ; preds = %cleanup.cont60
  %52 = load i32, ptr %err, align 4, !dbg !1547, !tbaa !283
  store i32 %52, ptr %retval, align 4, !dbg !1548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1548

if.end64:                                         ; preds = %cleanup.cont60
  %53 = load ptr, ptr %mux.addr, align 8, !dbg !1549, !tbaa !127
  %54 = load i32, ptr %flags, align 4, !dbg !1550, !tbaa !202
  %call65 = call i32 @ValidateChunk(ptr noundef %53, i32 noundef 5, i32 noundef 0, i32 noundef %54, i32 noundef -1, ptr noundef %num_images), !dbg !1551
  store i32 %call65, ptr %err, align 4, !dbg !1552, !tbaa !283
  %55 = load i32, ptr %err, align 4, !dbg !1553, !tbaa !283
  %cmp66 = icmp ne i32 %55, 1, !dbg !1555
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1556

if.then67:                                        ; preds = %if.end64
  %56 = load i32, ptr %err, align 4, !dbg !1557, !tbaa !283
  store i32 %56, ptr %retval, align 4, !dbg !1558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1558

if.end68:                                         ; preds = %if.end64
  %57 = load i32, ptr %num_vp8x, align 4, !dbg !1559, !tbaa !202
  %cmp69 = icmp eq i32 %57, 0, !dbg !1561
  br i1 %cmp69, label %land.lhs.true70, label %if.end73, !dbg !1562

land.lhs.true70:                                  ; preds = %if.end68
  %58 = load i32, ptr %num_images, align 4, !dbg !1563, !tbaa !202
  %cmp71 = icmp ne i32 %58, 1, !dbg !1564
  br i1 %cmp71, label %if.then72, label %if.end73, !dbg !1565

if.then72:                                        ; preds = %land.lhs.true70
  store i32 -1, ptr %retval, align 4, !dbg !1566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1566

if.end73:                                         ; preds = %land.lhs.true70, %if.end68
  %59 = load ptr, ptr %mux.addr, align 8, !dbg !1567, !tbaa !127
  %images_74 = getelementptr inbounds %struct.WebPMux, ptr %59, i32 0, i32 0, !dbg !1569
  %60 = load ptr, ptr %images_74, align 8, !dbg !1569, !tbaa !1402
  %call75 = call i32 @MuxHasAlpha(ptr noundef %60), !dbg !1570
  %tobool76 = icmp ne i32 %call75, 0, !dbg !1570
  br i1 %tobool76, label %if.then77, label %if.end92, !dbg !1571

if.then77:                                        ; preds = %if.end73
  %61 = load i32, ptr %num_vp8x, align 4, !dbg !1572, !tbaa !202
  %cmp78 = icmp sgt i32 %61, 0, !dbg !1575
  br i1 %cmp78, label %if.then79, label %if.else, !dbg !1576

if.then79:                                        ; preds = %if.then77
  %62 = load i32, ptr %flags, align 4, !dbg !1577, !tbaa !202
  %and80 = and i32 %62, 16, !dbg !1580
  %tobool81 = icmp ne i32 %and80, 0, !dbg !1580
  br i1 %tobool81, label %if.end83, label %if.then82, !dbg !1581

if.then82:                                        ; preds = %if.then79
  store i32 -1, ptr %retval, align 4, !dbg !1582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1582

if.end83:                                         ; preds = %if.then79
  br label %if.end91, !dbg !1583

if.else:                                          ; preds = %if.then77
  %63 = load ptr, ptr %mux.addr, align 8, !dbg !1584, !tbaa !127
  %call84 = call i32 @WebPMuxNumChunks(ptr noundef %63, i32 noundef 5, ptr noundef %num_alpha), !dbg !1586
  store i32 %call84, ptr %err, align 4, !dbg !1587, !tbaa !283
  %64 = load i32, ptr %err, align 4, !dbg !1588, !tbaa !283
  %cmp85 = icmp ne i32 %64, 1, !dbg !1590
  br i1 %cmp85, label %if.then86, label %if.end87, !dbg !1591

if.then86:                                        ; preds = %if.else
  %65 = load i32, ptr %err, align 4, !dbg !1592, !tbaa !283
  store i32 %65, ptr %retval, align 4, !dbg !1593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1593

if.end87:                                         ; preds = %if.else
  %66 = load i32, ptr %num_alpha, align 4, !dbg !1594, !tbaa !202
  %cmp88 = icmp sgt i32 %66, 0, !dbg !1596
  br i1 %cmp88, label %if.then89, label %if.end90, !dbg !1597

if.then89:                                        ; preds = %if.end87
  store i32 -1, ptr %retval, align 4, !dbg !1598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1598

if.end90:                                         ; preds = %if.end87
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end83
  br label %if.end92, !dbg !1599

if.end92:                                         ; preds = %if.end91, %if.end73
  store i32 1, ptr %retval, align 4, !dbg !1600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93, !dbg !1600

cleanup93:                                        ; preds = %if.end92, %if.then89, %if.then86, %if.then82, %if.then72, %if.then67, %if.then63, %cleanup58, %if.then25, %if.then21, %if.then17, %if.then13, %if.then9, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_alpha) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_images) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_vp8x) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_frames) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_anim) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_xmp) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_exif) #7, !dbg !1601
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_iccp) #7, !dbg !1601
  %67 = load i32, ptr %retval, align 4, !dbg !1601
  ret i32 %67, !dbg !1601
}

declare !dbg !1602 i32 @WebPMuxGetFeatures(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @ValidateChunk(ptr noundef %mux, i32 noundef %idx, i32 noundef %feature, i32 noundef %vp8x_flags, i32 noundef %max, ptr noundef %num) #0 !dbg !1606 {
entry:
  %retval = alloca i32, align 4
  %mux.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %feature.addr = alloca i32, align 4
  %vp8x_flags.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %num.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mux, ptr %mux.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %mux.addr, metadata !1611, metadata !DIExpression()), !dbg !1619
  store i32 %idx, ptr %idx.addr, align 4, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !1612, metadata !DIExpression()), !dbg !1620
  store i32 %feature, ptr %feature.addr, align 4, !tbaa !283
  tail call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !1613, metadata !DIExpression()), !dbg !1621
  store i32 %vp8x_flags, ptr %vp8x_flags.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %vp8x_flags.addr, metadata !1614, metadata !DIExpression()), !dbg !1622
  store i32 %max, ptr %max.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !1615, metadata !DIExpression()), !dbg !1623
  store ptr %num, ptr %num.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !1616, metadata !DIExpression()), !dbg !1624
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !1625
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1617, metadata !DIExpression()), !dbg !1626
  %0 = load ptr, ptr %mux.addr, align 8, !dbg !1627, !tbaa !127
  %1 = load i32, ptr %idx.addr, align 4, !dbg !1628, !tbaa !283
  %idxprom = zext i32 %1 to i64, !dbg !1629
  %arrayidx = getelementptr inbounds [11 x %struct.ChunkInfo], ptr @kChunks, i64 0, i64 %idxprom, !dbg !1629
  %id = getelementptr inbounds %struct.ChunkInfo, ptr %arrayidx, i32 0, i32 1, !dbg !1630
  %2 = load i32, ptr %id, align 4, !dbg !1630, !tbaa !264
  %3 = load ptr, ptr %num.addr, align 8, !dbg !1631, !tbaa !127
  %call = call i32 @WebPMuxNumChunks(ptr noundef %0, i32 noundef %2, ptr noundef %3), !dbg !1632
  store i32 %call, ptr %err, align 4, !dbg !1626, !tbaa !283
  %4 = load i32, ptr %err, align 4, !dbg !1633, !tbaa !283
  %cmp = icmp ne i32 %4, 1, !dbg !1635
  br i1 %cmp, label %if.then, label %if.end, !dbg !1636

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !1637, !tbaa !283
  store i32 %5, ptr %retval, align 4, !dbg !1638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1638

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %max.addr, align 4, !dbg !1639, !tbaa !202
  %cmp1 = icmp sgt i32 %6, -1, !dbg !1641
  br i1 %cmp1, label %land.lhs.true, label %if.end4, !dbg !1642

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %num.addr, align 8, !dbg !1643, !tbaa !127
  %8 = load i32, ptr %7, align 4, !dbg !1644, !tbaa !202
  %9 = load i32, ptr %max.addr, align 4, !dbg !1645, !tbaa !202
  %cmp2 = icmp sgt i32 %8, %9, !dbg !1646
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1647

if.then3:                                         ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !1648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1648

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %10 = load i32, ptr %feature.addr, align 4, !dbg !1649, !tbaa !283
  %cmp5 = icmp ne i32 %10, 0, !dbg !1651
  br i1 %cmp5, label %land.lhs.true6, label %if.end9, !dbg !1652

land.lhs.true6:                                   ; preds = %if.end4
  %11 = load i32, ptr %vp8x_flags.addr, align 4, !dbg !1653, !tbaa !202
  %12 = load i32, ptr %feature.addr, align 4, !dbg !1654, !tbaa !283
  %and = and i32 %11, %12, !dbg !1655
  %13 = load ptr, ptr %num.addr, align 8, !dbg !1656, !tbaa !127
  %14 = load i32, ptr %13, align 4, !dbg !1657, !tbaa !202
  %call7 = call i32 @IsNotCompatible(i32 noundef %and, i32 noundef %14), !dbg !1658
  %tobool = icmp ne i32 %call7, 0, !dbg !1658
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !1659

if.then8:                                         ; preds = %land.lhs.true6
  store i32 -1, ptr %retval, align 4, !dbg !1660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1660

if.end9:                                          ; preds = %land.lhs.true6, %if.end4
  store i32 1, ptr %retval, align 4, !dbg !1662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1662

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !1663
  %15 = load i32, ptr %retval, align 4, !dbg !1663
  ret i32 %15, !dbg !1663
}

declare !dbg !1664 i32 @WebPMuxNumChunks(ptr noundef, i32 noundef, ptr noundef) #5

declare !dbg !1667 void @WebPFree(ptr noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @WebPDataInit(ptr noundef %webp_data) #3 !dbg !1671 {
entry:
  %webp_data.addr = alloca ptr, align 8
  store ptr %webp_data, ptr %webp_data.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %webp_data.addr, metadata !1673, metadata !DIExpression()), !dbg !1674
  %0 = load ptr, ptr %webp_data.addr, align 8, !dbg !1675, !tbaa !127
  %cmp = icmp ne ptr %0, null, !dbg !1677
  br i1 %cmp, label %if.then, label %if.end, !dbg !1678

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %webp_data.addr, align 8, !dbg !1679, !tbaa !127
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 16, i1 false), !dbg !1681
  br label %if.end, !dbg !1682

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1683
}

declare !dbg !1684 ptr @WebPMalloc(i64 noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @SizeWithPadding(i64 noundef %chunk_size) #3 !dbg !1687 {
entry:
  %chunk_size.addr = alloca i64, align 8
  store i64 %chunk_size, ptr %chunk_size.addr, align 8, !tbaa !432
  tail call void @llvm.dbg.declare(metadata ptr %chunk_size.addr, metadata !1691, metadata !DIExpression()), !dbg !1692
  %0 = load i64, ptr %chunk_size.addr, align 8, !dbg !1693, !tbaa !432
  %add = add i64 %0, 1, !dbg !1694
  %and = and i64 %add, 4294967294, !dbg !1695
  %add1 = add i64 8, %and, !dbg !1696
  ret i64 %add1, !dbg !1697
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @PutLE16(ptr noundef %data, i32 noundef %val) #3 !dbg !1698 {
entry:
  %data.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !127
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1702, metadata !DIExpression()), !dbg !1704
  store i32 %val, ptr %val.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1703, metadata !DIExpression()), !dbg !1705
  %0 = load i32, ptr %val.addr, align 4, !dbg !1706, !tbaa !202
  %shr = ashr i32 %0, 0, !dbg !1707
  %and = and i32 %shr, 255, !dbg !1708
  %conv = trunc i32 %and to i8, !dbg !1709
  %1 = load ptr, ptr %data.addr, align 8, !dbg !1710, !tbaa !127
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0, !dbg !1710
  store i8 %conv, ptr %arrayidx, align 1, !dbg !1711, !tbaa !283
  %2 = load i32, ptr %val.addr, align 4, !dbg !1712, !tbaa !202
  %shr1 = ashr i32 %2, 8, !dbg !1713
  %and2 = and i32 %shr1, 255, !dbg !1714
  %conv3 = trunc i32 %and2 to i8, !dbg !1715
  %3 = load ptr, ptr %data.addr, align 8, !dbg !1716, !tbaa !127
  %arrayidx4 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1716
  store i8 %conv3, ptr %arrayidx4, align 1, !dbg !1717, !tbaa !283
  ret void, !dbg !1718
}

; Function Attrs: nounwind uwtable
define internal i32 @IsNotCompatible(i32 noundef %feature, i32 noundef %num_items) #0 !dbg !1719 {
entry:
  %feature.addr = alloca i32, align 4
  %num_items.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !1723, metadata !DIExpression()), !dbg !1725
  store i32 %num_items, ptr %num_items.addr, align 4, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %num_items.addr, metadata !1724, metadata !DIExpression()), !dbg !1726
  %0 = load i32, ptr %feature.addr, align 4, !dbg !1727, !tbaa !202
  %cmp = icmp ne i32 %0, 0, !dbg !1728
  %conv = zext i1 %cmp to i32, !dbg !1728
  %1 = load i32, ptr %num_items.addr, align 4, !dbg !1729, !tbaa !202
  %cmp1 = icmp sgt i32 %1, 0, !dbg !1730
  %conv2 = zext i1 %cmp1 to i32, !dbg !1730
  %cmp3 = icmp ne i32 %conv, %conv2, !dbg !1731
  %conv4 = zext i1 %cmp3 to i32, !dbg !1731
  ret i32 %conv4, !dbg !1732
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "kChunks", scope: !2, file: !3, line: 21, type: !100, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !53, globals: !99, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "muxinternal.c", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/mux", checksumkind: CSK_MD5, checksum: "d93ac828eceecc7c48247a6966f095e0")
!4 = !{!5, !20, !35, !44}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "WebPChunkId", file: !6, line: 83, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../src/webp/mux.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/mux", checksumkind: CSK_MD5, checksum: "dedafed77ebeb347f8a1bf86d8fb56e1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "WEBP_CHUNK_VP8X", value: 0)
!10 = !DIEnumerator(name: "WEBP_CHUNK_ICCP", value: 1)
!11 = !DIEnumerator(name: "WEBP_CHUNK_ANIM", value: 2)
!12 = !DIEnumerator(name: "WEBP_CHUNK_ANMF", value: 3)
!13 = !DIEnumerator(name: "WEBP_CHUNK_DEPRECATED", value: 4)
!14 = !DIEnumerator(name: "WEBP_CHUNK_ALPHA", value: 5)
!15 = !DIEnumerator(name: "WEBP_CHUNK_IMAGE", value: 6)
!16 = !DIEnumerator(name: "WEBP_CHUNK_EXIF", value: 7)
!17 = !DIEnumerator(name: "WEBP_CHUNK_XMP", value: 8)
!18 = !DIEnumerator(name: "WEBP_CHUNK_UNKNOWN", value: 9)
!19 = !DIEnumerator(name: "WEBP_CHUNK_NIL", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 78, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "../../src/mux/muxi.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/mux", checksumkind: CSK_MD5, checksum: "292d83a6509548bff3ffd61e2452db98")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "IDX_VP8X", value: 0)
!24 = !DIEnumerator(name: "IDX_ICCP", value: 1)
!25 = !DIEnumerator(name: "IDX_ANIM", value: 2)
!26 = !DIEnumerator(name: "IDX_ANMF", value: 3)
!27 = !DIEnumerator(name: "IDX_ALPHA", value: 4)
!28 = !DIEnumerator(name: "IDX_VP8", value: 5)
!29 = !DIEnumerator(name: "IDX_VP8L", value: 6)
!30 = !DIEnumerator(name: "IDX_EXIF", value: 7)
!31 = !DIEnumerator(name: "IDX_XMP", value: 8)
!32 = !DIEnumerator(name: "IDX_UNKNOWN", value: 9)
!33 = !DIEnumerator(name: "IDX_NIL", value: 10)
!34 = !DIEnumerator(name: "IDX_LAST_CHUNK", value: 11)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "WebPMuxError", file: !6, line: 73, baseType: !36, size: 32, elements: !37)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DIEnumerator(name: "WEBP_MUX_OK", value: 1)
!39 = !DIEnumerator(name: "WEBP_MUX_NOT_FOUND", value: 0)
!40 = !DIEnumerator(name: "WEBP_MUX_INVALID_ARGUMENT", value: -1)
!41 = !DIEnumerator(name: "WEBP_MUX_BAD_DATA", value: -2)
!42 = !DIEnumerator(name: "WEBP_MUX_MEMORY_ERROR", value: -3)
!43 = !DIEnumerator(name: "WEBP_MUX_NOT_ENOUGH_DATA", value: -4)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "WebPFeatureFlags", file: !45, line: 32, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "../../src/webp/./mux_types.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/mux", checksumkind: CSK_MD5, checksum: "f6ee710c04662910d3455580ace07758")
!46 = !{!47, !48, !49, !50, !51, !52}
!47 = !DIEnumerator(name: "ANIMATION_FLAG", value: 2)
!48 = !DIEnumerator(name: "XMP_FLAG", value: 4)
!49 = !DIEnumerator(name: "EXIF_FLAG", value: 8)
!50 = !DIEnumerator(name: "ALPHA_FLAG", value: 16)
!51 = !DIEnumerator(name: "ICCP_FLAG", value: 32)
!52 = !DIEnumerator(name: "ALL_VALID_FLAGS", value: 62)
!53 = !{!54, !58, !59, !60, !81, !94, !95, !96, !97, !98, !36}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !55, line: 26, baseType: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !57, line: 42, baseType: !7)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHUNK_INDEX", file: !21, line: 92, baseType: !20)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPChunk", file: !21, line: 35, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WebPChunk", file: !21, line: 36, size: 256, elements: !63)
!63 = !{!64, !65, !66, !80}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tag_", scope: !62, file: !21, line: 37, baseType: !54, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "owner_", scope: !62, file: !21, line: 38, baseType: !36, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "data_", scope: !62, file: !21, line: 41, baseType: !67, size: 128, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPData", file: !45, line: 29, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WebPData", file: !45, line: 59, size: 128, elements: !69)
!69 = !{!70, !76}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !68, file: !45, line: 60, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !55, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !57, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !68, file: !45, line: 61, baseType: !77, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 70, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!79 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_", scope: !62, file: !21, line: 42, baseType: !60, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPMuxImage", file: !21, line: 47, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WebPMuxImage", file: !21, line: 48, size: 448, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "header_", scope: !83, file: !21, line: 49, baseType: !60, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_", scope: !83, file: !21, line: 50, baseType: !60, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "img_", scope: !83, file: !21, line: 51, baseType: !60, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "unknown_", scope: !83, file: !21, line: 52, baseType: !60, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "width_", scope: !83, file: !21, line: 53, baseType: !36, size: 32, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "height_", scope: !83, file: !21, line: 54, baseType: !36, size: 32, offset: 288)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha_", scope: !83, file: !21, line: 55, baseType: !36, size: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "is_partial_", scope: !83, file: !21, line: 56, baseType: !36, size: 32, offset: 352)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next_", scope: !83, file: !21, line: 57, baseType: !81, size: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPFeatureFlags", file: !45, line: 40, baseType: !44)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!99 = !{!0}
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1056, elements: !109)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChunkInfo", file: !21, line: 100, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 96, size: 96, elements: !104)
!104 = !{!105, !106, !108}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !103, file: !21, line: 97, baseType: !54, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !103, file: !21, line: 98, baseType: !107, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPChunkId", file: !6, line: 95, baseType: !5)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !103, file: !21, line: 99, baseType: !54, size: 32, offset: 64)
!109 = !{!110}
!110 = !DISubrange(count: 11)
!111 = !{i32 7, !"Dwarf Version", i32 5}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = !{i32 8, !"PIC Level", i32 2}
!115 = !{i32 7, !"uwtable", i32 2}
!116 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!117 = distinct !DISubprogram(name: "WebPGetMuxVersion", scope: !3, file: !3, line: 38, type: !118, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!118 = !DISubroutineType(types: !119)
!119 = !{!36}
!120 = !DILocation(line: 39, column: 3, scope: !117)
!121 = distinct !DISubprogram(name: "ChunkInit", scope: !3, file: !3, line: 45, type: !122, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!125 = !{!126}
!126 = !DILocalVariable(name: "chunk", arg: 1, scope: !121, file: !3, line: 45, type: !124)
!127 = !{!128, !128, i64 0}
!128 = !{!"any pointer", !129, i64 0}
!129 = !{!"omnipotent char", !130, i64 0}
!130 = !{!"Simple C/C++ TBAA"}
!131 = !DILocation(line: 45, column: 33, scope: !121)
!132 = !DILocation(line: 47, column: 10, scope: !121)
!133 = !DILocation(line: 47, column: 3, scope: !121)
!134 = !DILocation(line: 48, column: 3, scope: !121)
!135 = !DILocation(line: 48, column: 10, scope: !121)
!136 = !DILocation(line: 48, column: 15, scope: !121)
!137 = !{!138, !139, i64 0}
!138 = !{!"WebPChunk", !139, i64 0, !139, i64 4, !140, i64 8, !128, i64 24}
!139 = !{!"int", !129, i64 0}
!140 = !{!"WebPData", !128, i64 0, !141, i64 8}
!141 = !{!"long", !129, i64 0}
!142 = !DILocation(line: 49, column: 1, scope: !121)
!143 = distinct !DISubprogram(name: "ChunkRelease", scope: !3, file: !3, line: 51, type: !144, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!60, !124}
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "chunk", arg: 1, scope: !143, file: !3, line: 51, type: !124)
!148 = !DILocalVariable(name: "next", scope: !143, file: !3, line: 52, type: !60)
!149 = !DILocation(line: 51, column: 42, scope: !143)
!150 = !DILocation(line: 52, column: 3, scope: !143)
!151 = !DILocation(line: 52, column: 14, scope: !143)
!152 = !DILocation(line: 53, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !143, file: !3, line: 53, column: 7)
!154 = !DILocation(line: 53, column: 13, scope: !153)
!155 = !DILocation(line: 53, column: 7, scope: !143)
!156 = !DILocation(line: 53, column: 22, scope: !153)
!157 = !DILocation(line: 54, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !143, file: !3, line: 54, column: 7)
!159 = !DILocation(line: 54, column: 14, scope: !158)
!160 = !{!138, !139, i64 4}
!161 = !DILocation(line: 54, column: 7, scope: !143)
!162 = !DILocation(line: 55, column: 20, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !3, line: 54, column: 22)
!164 = !DILocation(line: 55, column: 27, scope: !163)
!165 = !DILocation(line: 55, column: 5, scope: !163)
!166 = !DILocation(line: 56, column: 3, scope: !163)
!167 = !DILocation(line: 57, column: 10, scope: !143)
!168 = !DILocation(line: 57, column: 17, scope: !143)
!169 = !{!138, !128, i64 24}
!170 = !DILocation(line: 57, column: 8, scope: !143)
!171 = !DILocation(line: 58, column: 13, scope: !143)
!172 = !DILocation(line: 58, column: 3, scope: !143)
!173 = !DILocation(line: 59, column: 10, scope: !143)
!174 = !DILocation(line: 59, column: 3, scope: !143)
!175 = !DILocation(line: 60, column: 1, scope: !143)
!176 = distinct !DISubprogram(name: "WebPDataClear", scope: !45, file: !45, line: 73, type: !177, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!180 = !{!181}
!181 = !DILocalVariable(name: "webp_data", arg: 1, scope: !176, file: !45, line: 73, type: !179)
!182 = !DILocation(line: 73, column: 49, scope: !176)
!183 = !DILocation(line: 74, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !176, file: !45, line: 74, column: 7)
!185 = !DILocation(line: 74, column: 17, scope: !184)
!186 = !DILocation(line: 74, column: 7, scope: !176)
!187 = !DILocation(line: 75, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !45, line: 74, column: 26)
!189 = !DILocation(line: 75, column: 32, scope: !188)
!190 = !{!140, !128, i64 0}
!191 = !DILocation(line: 75, column: 5, scope: !188)
!192 = !DILocation(line: 76, column: 18, scope: !188)
!193 = !DILocation(line: 76, column: 5, scope: !188)
!194 = !DILocation(line: 77, column: 3, scope: !188)
!195 = !DILocation(line: 78, column: 1, scope: !176)
!196 = distinct !DISubprogram(name: "ChunkGetIndexFromTag", scope: !3, file: !3, line: 65, type: !197, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!59, !54}
!199 = !{!200, !201}
!200 = !DILocalVariable(name: "tag", arg: 1, scope: !196, file: !3, line: 65, type: !54)
!201 = !DILocalVariable(name: "i", scope: !196, file: !3, line: 66, type: !36)
!202 = !{!139, !139, i64 0}
!203 = !DILocation(line: 65, column: 43, scope: !196)
!204 = !DILocation(line: 66, column: 3, scope: !196)
!205 = !DILocation(line: 66, column: 7, scope: !196)
!206 = !DILocation(line: 67, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !196, file: !3, line: 67, column: 3)
!208 = !DILocation(line: 67, column: 8, scope: !207)
!209 = !DILocation(line: 67, column: 23, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !3, line: 67, column: 3)
!211 = !DILocation(line: 67, column: 15, scope: !210)
!212 = !DILocation(line: 67, column: 26, scope: !210)
!213 = !{!214, !139, i64 0}
!214 = !{!"", !139, i64 0, !129, i64 4, !139, i64 8}
!215 = !DILocation(line: 67, column: 30, scope: !210)
!216 = !DILocation(line: 67, column: 3, scope: !207)
!217 = !DILocation(line: 68, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !3, line: 68, column: 9)
!219 = distinct !DILexicalBlock(scope: !210, file: !3, line: 67, column: 47)
!220 = !DILocation(line: 68, column: 24, scope: !218)
!221 = !DILocation(line: 68, column: 16, scope: !218)
!222 = !DILocation(line: 68, column: 27, scope: !218)
!223 = !DILocation(line: 68, column: 13, scope: !218)
!224 = !DILocation(line: 68, column: 9, scope: !219)
!225 = !DILocation(line: 68, column: 52, scope: !218)
!226 = !DILocation(line: 68, column: 32, scope: !218)
!227 = !DILocation(line: 69, column: 3, scope: !219)
!228 = !DILocation(line: 67, column: 42, scope: !210)
!229 = !DILocation(line: 67, column: 3, scope: !210)
!230 = distinct !{!230, !216, !231, !232}
!231 = !DILocation(line: 69, column: 3, scope: !207)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 70, column: 3, scope: !196)
!234 = !DILocation(line: 71, column: 1, scope: !196)
!235 = distinct !DISubprogram(name: "ChunkGetIdFromTag", scope: !3, file: !3, line: 73, type: !236, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!107, !54}
!238 = !{!239, !240}
!239 = !DILocalVariable(name: "tag", arg: 1, scope: !235, file: !3, line: 73, type: !54)
!240 = !DILocalVariable(name: "i", scope: !235, file: !3, line: 74, type: !36)
!241 = !DILocation(line: 73, column: 40, scope: !235)
!242 = !DILocation(line: 74, column: 3, scope: !235)
!243 = !DILocation(line: 74, column: 7, scope: !235)
!244 = !DILocation(line: 75, column: 10, scope: !245)
!245 = distinct !DILexicalBlock(scope: !235, file: !3, line: 75, column: 3)
!246 = !DILocation(line: 75, column: 8, scope: !245)
!247 = !DILocation(line: 75, column: 23, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 75, column: 3)
!249 = !DILocation(line: 75, column: 15, scope: !248)
!250 = !DILocation(line: 75, column: 26, scope: !248)
!251 = !DILocation(line: 75, column: 30, scope: !248)
!252 = !DILocation(line: 75, column: 3, scope: !245)
!253 = !DILocation(line: 76, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 76, column: 9)
!255 = distinct !DILexicalBlock(scope: !248, file: !3, line: 75, column: 47)
!256 = !DILocation(line: 76, column: 24, scope: !254)
!257 = !DILocation(line: 76, column: 16, scope: !254)
!258 = !DILocation(line: 76, column: 27, scope: !254)
!259 = !DILocation(line: 76, column: 13, scope: !254)
!260 = !DILocation(line: 76, column: 9, scope: !255)
!261 = !DILocation(line: 76, column: 47, scope: !254)
!262 = !DILocation(line: 76, column: 39, scope: !254)
!263 = !DILocation(line: 76, column: 50, scope: !254)
!264 = !{!214, !129, i64 4}
!265 = !DILocation(line: 76, column: 32, scope: !254)
!266 = !DILocation(line: 77, column: 3, scope: !255)
!267 = !DILocation(line: 75, column: 42, scope: !248)
!268 = !DILocation(line: 75, column: 3, scope: !248)
!269 = distinct !{!269, !252, !270, !232}
!270 = !DILocation(line: 77, column: 3, scope: !245)
!271 = !DILocation(line: 78, column: 3, scope: !235)
!272 = !DILocation(line: 79, column: 1, scope: !235)
!273 = distinct !DISubprogram(name: "ChunkGetTagFromFourCC", scope: !3, file: !3, line: 81, type: !274, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!274 = !DISubroutineType(types: !275)
!275 = !{!54, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!279 = !{!280}
!280 = !DILocalVariable(name: "fourcc", arg: 1, scope: !273, file: !3, line: 81, type: !276)
!281 = !DILocation(line: 81, column: 43, scope: !273)
!282 = !DILocation(line: 82, column: 10, scope: !273)
!283 = !{!129, !129, i64 0}
!284 = !DILocation(line: 82, column: 3, scope: !273)
!285 = distinct !DISubprogram(name: "ChunkGetIndexFromFourCC", scope: !3, file: !3, line: 85, type: !286, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{!59, !276}
!288 = !{!289, !290}
!289 = !DILocalVariable(name: "fourcc", arg: 1, scope: !285, file: !3, line: 85, type: !276)
!290 = !DILocalVariable(name: "tag", scope: !285, file: !3, line: 86, type: !291)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!292 = !DILocation(line: 85, column: 48, scope: !285)
!293 = !DILocation(line: 86, column: 3, scope: !285)
!294 = !DILocation(line: 86, column: 18, scope: !285)
!295 = !DILocation(line: 86, column: 46, scope: !285)
!296 = !DILocation(line: 86, column: 24, scope: !285)
!297 = !DILocation(line: 87, column: 31, scope: !285)
!298 = !DILocation(line: 87, column: 10, scope: !285)
!299 = !DILocation(line: 88, column: 1, scope: !285)
!300 = !DILocation(line: 87, column: 3, scope: !285)
!301 = distinct !DISubprogram(name: "ChunkSearchList", scope: !3, file: !3, line: 101, type: !302, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!60, !60, !54, !54}
!304 = !{!305, !306, !307, !308, !309}
!305 = !DILocalVariable(name: "first", arg: 1, scope: !301, file: !3, line: 101, type: !60)
!306 = !DILocalVariable(name: "nth", arg: 2, scope: !301, file: !3, line: 101, type: !54)
!307 = !DILocalVariable(name: "tag", arg: 3, scope: !301, file: !3, line: 101, type: !54)
!308 = !DILocalVariable(name: "iter", scope: !301, file: !3, line: 102, type: !54)
!309 = !DILocalVariable(name: "next_chunk", scope: !310, file: !3, line: 107, type: !60)
!310 = distinct !DILexicalBlock(scope: !301, file: !3, line: 106, column: 23)
!311 = !DILocation(line: 101, column: 39, scope: !301)
!312 = !DILocation(line: 101, column: 55, scope: !301)
!313 = !DILocation(line: 101, column: 69, scope: !301)
!314 = !DILocation(line: 102, column: 3, scope: !301)
!315 = !DILocation(line: 102, column: 12, scope: !301)
!316 = !DILocation(line: 102, column: 19, scope: !301)
!317 = !DILocation(line: 103, column: 33, scope: !301)
!318 = !DILocation(line: 103, column: 40, scope: !301)
!319 = !DILocation(line: 103, column: 11, scope: !301)
!320 = !DILocation(line: 103, column: 9, scope: !301)
!321 = !DILocation(line: 104, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !301, file: !3, line: 104, column: 7)
!323 = !DILocation(line: 104, column: 13, scope: !322)
!324 = !DILocation(line: 104, column: 7, scope: !301)
!325 = !DILocation(line: 104, column: 22, scope: !322)
!326 = !DILocation(line: 106, column: 3, scope: !301)
!327 = !DILocation(line: 106, column: 10, scope: !301)
!328 = !DILocation(line: 106, column: 17, scope: !301)
!329 = !DILocation(line: 107, column: 5, scope: !310)
!330 = !DILocation(line: 107, column: 16, scope: !310)
!331 = !DILocation(line: 107, column: 51, scope: !310)
!332 = !DILocation(line: 107, column: 58, scope: !310)
!333 = !DILocation(line: 107, column: 65, scope: !310)
!334 = !DILocation(line: 107, column: 29, scope: !310)
!335 = !DILocation(line: 108, column: 9, scope: !336)
!336 = distinct !DILexicalBlock(scope: !310, file: !3, line: 108, column: 9)
!337 = !DILocation(line: 108, column: 20, scope: !336)
!338 = !DILocation(line: 108, column: 9, scope: !310)
!339 = !DILocation(line: 108, column: 29, scope: !336)
!340 = !DILocation(line: 109, column: 13, scope: !310)
!341 = !DILocation(line: 109, column: 11, scope: !310)
!342 = !DILocation(line: 110, column: 3, scope: !301)
!343 = distinct !{!343, !326, !342, !232}
!344 = !DILocation(line: 111, column: 12, scope: !301)
!345 = !DILocation(line: 111, column: 16, scope: !301)
!346 = !DILocation(line: 111, column: 21, scope: !301)
!347 = !DILocation(line: 111, column: 25, scope: !301)
!348 = !DILocation(line: 111, column: 30, scope: !301)
!349 = !DILocation(line: 111, column: 10, scope: !301)
!350 = !DILocation(line: 111, column: 45, scope: !301)
!351 = !DILocation(line: 111, column: 3, scope: !301)
!352 = !DILocation(line: 112, column: 1, scope: !301)
!353 = distinct !DISubprogram(name: "ChunkSearchNextInList", scope: !3, file: !3, line: 94, type: !354, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!60, !60, !54}
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "chunk", arg: 1, scope: !353, file: !3, line: 94, type: !60)
!358 = !DILocalVariable(name: "tag", arg: 2, scope: !353, file: !3, line: 94, type: !54)
!359 = !DILocation(line: 94, column: 52, scope: !353)
!360 = !DILocation(line: 94, column: 68, scope: !353)
!361 = !DILocation(line: 95, column: 3, scope: !353)
!362 = !DILocation(line: 95, column: 10, scope: !353)
!363 = !DILocation(line: 95, column: 16, scope: !353)
!364 = !DILocation(line: 95, column: 24, scope: !353)
!365 = !DILocation(line: 95, column: 27, scope: !353)
!366 = !DILocation(line: 95, column: 34, scope: !353)
!367 = !DILocation(line: 95, column: 42, scope: !353)
!368 = !DILocation(line: 95, column: 39, scope: !353)
!369 = !DILocation(line: 0, scope: !353)
!370 = !DILocation(line: 96, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !353, file: !3, line: 95, column: 47)
!372 = !DILocation(line: 96, column: 20, scope: !371)
!373 = !DILocation(line: 96, column: 11, scope: !371)
!374 = distinct !{!374, !361, !375, !232}
!375 = !DILocation(line: 97, column: 3, scope: !353)
!376 = !DILocation(line: 98, column: 10, scope: !353)
!377 = !DILocation(line: 98, column: 3, scope: !353)
!378 = distinct !DISubprogram(name: "ChunkAssignData", scope: !3, file: !3, line: 117, type: !379, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !60, !382, !36, !54}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPMuxError", file: !6, line: 80, baseType: !35)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!385 = !{!386, !387, !388, !389}
!386 = !DILocalVariable(name: "chunk", arg: 1, scope: !378, file: !3, line: 117, type: !60)
!387 = !DILocalVariable(name: "data", arg: 2, scope: !378, file: !3, line: 117, type: !382)
!388 = !DILocalVariable(name: "copy_data", arg: 3, scope: !378, file: !3, line: 118, type: !36)
!389 = !DILocalVariable(name: "tag", arg: 4, scope: !378, file: !3, line: 118, type: !54)
!390 = !DILocation(line: 117, column: 41, scope: !378)
!391 = !DILocation(line: 117, column: 70, scope: !378)
!392 = !DILocation(line: 118, column: 34, scope: !378)
!393 = !DILocation(line: 118, column: 54, scope: !378)
!394 = !DILocation(line: 120, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !378, file: !3, line: 120, column: 7)
!396 = !DILocation(line: 120, column: 11, scope: !395)
!397 = !DILocation(line: 120, column: 36, scope: !395)
!398 = !DILocation(line: 120, column: 39, scope: !395)
!399 = !DILocation(line: 120, column: 43, scope: !395)
!400 = !DILocation(line: 120, column: 7, scope: !378)
!401 = !DILocation(line: 121, column: 15, scope: !402)
!402 = distinct !DILexicalBlock(scope: !395, file: !3, line: 120, column: 69)
!403 = !DILocation(line: 122, column: 3, scope: !402)
!404 = !DILocation(line: 124, column: 16, scope: !378)
!405 = !DILocation(line: 124, column: 3, scope: !378)
!406 = !DILocation(line: 126, column: 7, scope: !407)
!407 = distinct !DILexicalBlock(scope: !378, file: !3, line: 126, column: 7)
!408 = !DILocation(line: 126, column: 12, scope: !407)
!409 = !DILocation(line: 126, column: 7, scope: !378)
!410 = !DILocation(line: 127, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 127, column: 9)
!412 = distinct !DILexicalBlock(scope: !407, file: !3, line: 126, column: 21)
!413 = !DILocation(line: 127, column: 9, scope: !412)
!414 = !DILocation(line: 128, column: 25, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 128, column: 11)
!416 = distinct !DILexicalBlock(scope: !411, file: !3, line: 127, column: 20)
!417 = !DILocation(line: 128, column: 32, scope: !415)
!418 = !DILocation(line: 128, column: 39, scope: !415)
!419 = !DILocation(line: 128, column: 12, scope: !415)
!420 = !DILocation(line: 128, column: 11, scope: !416)
!421 = !DILocation(line: 128, column: 47, scope: !415)
!422 = !DILocation(line: 129, column: 7, scope: !416)
!423 = !DILocation(line: 129, column: 14, scope: !416)
!424 = !DILocation(line: 129, column: 21, scope: !416)
!425 = !DILocation(line: 130, column: 5, scope: !416)
!426 = !DILocation(line: 131, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !411, file: !3, line: 130, column: 12)
!428 = !DILocation(line: 131, column: 14, scope: !427)
!429 = !DILocation(line: 131, column: 23, scope: !427)
!430 = !DILocation(line: 131, column: 22, scope: !427)
!431 = !{i64 0, i64 8, !127, i64 8, i64 8, !432}
!432 = !{!141, !141, i64 0}
!433 = !DILocation(line: 133, column: 3, scope: !412)
!434 = !DILocation(line: 134, column: 17, scope: !378)
!435 = !DILocation(line: 134, column: 3, scope: !378)
!436 = !DILocation(line: 134, column: 10, scope: !378)
!437 = !DILocation(line: 134, column: 15, scope: !378)
!438 = !DILocation(line: 135, column: 3, scope: !378)
!439 = !DILocation(line: 136, column: 1, scope: !378)
!440 = distinct !DISubprogram(name: "WebPDataCopy", scope: !45, file: !45, line: 82, type: !441, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!36, !383, !179}
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "src", arg: 1, scope: !440, file: !45, line: 82, type: !383)
!445 = !DILocalVariable(name: "dst", arg: 2, scope: !440, file: !45, line: 82, type: !179)
!446 = !DILocation(line: 82, column: 53, scope: !440)
!447 = !DILocation(line: 82, column: 68, scope: !440)
!448 = !DILocation(line: 83, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !440, file: !45, line: 83, column: 7)
!450 = !DILocation(line: 83, column: 11, scope: !449)
!451 = !DILocation(line: 83, column: 19, scope: !449)
!452 = !DILocation(line: 83, column: 22, scope: !449)
!453 = !DILocation(line: 83, column: 26, scope: !449)
!454 = !DILocation(line: 83, column: 7, scope: !440)
!455 = !DILocation(line: 83, column: 35, scope: !449)
!456 = !DILocation(line: 84, column: 16, scope: !440)
!457 = !DILocation(line: 84, column: 3, scope: !440)
!458 = !DILocation(line: 85, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !440, file: !45, line: 85, column: 7)
!460 = !DILocation(line: 85, column: 12, scope: !459)
!461 = !DILocation(line: 85, column: 18, scope: !459)
!462 = !DILocation(line: 85, column: 26, scope: !459)
!463 = !DILocation(line: 85, column: 29, scope: !459)
!464 = !DILocation(line: 85, column: 34, scope: !459)
!465 = !{!140, !141, i64 8}
!466 = !DILocation(line: 85, column: 39, scope: !459)
!467 = !DILocation(line: 85, column: 7, scope: !440)
!468 = !DILocation(line: 86, column: 39, scope: !469)
!469 = distinct !DILexicalBlock(scope: !459, file: !45, line: 85, column: 45)
!470 = !DILocation(line: 86, column: 44, scope: !469)
!471 = !DILocation(line: 86, column: 28, scope: !469)
!472 = !DILocation(line: 86, column: 5, scope: !469)
!473 = !DILocation(line: 86, column: 10, scope: !469)
!474 = !DILocation(line: 86, column: 16, scope: !469)
!475 = !DILocation(line: 87, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !469, file: !45, line: 87, column: 9)
!477 = !DILocation(line: 87, column: 14, scope: !476)
!478 = !DILocation(line: 87, column: 20, scope: !476)
!479 = !DILocation(line: 87, column: 9, scope: !469)
!480 = !DILocation(line: 87, column: 29, scope: !476)
!481 = !DILocation(line: 88, column: 19, scope: !469)
!482 = !DILocation(line: 88, column: 24, scope: !469)
!483 = !DILocation(line: 88, column: 31, scope: !469)
!484 = !DILocation(line: 88, column: 36, scope: !469)
!485 = !DILocation(line: 88, column: 43, scope: !469)
!486 = !DILocation(line: 88, column: 48, scope: !469)
!487 = !DILocation(line: 88, column: 5, scope: !469)
!488 = !DILocation(line: 89, column: 17, scope: !469)
!489 = !DILocation(line: 89, column: 22, scope: !469)
!490 = !DILocation(line: 89, column: 5, scope: !469)
!491 = !DILocation(line: 89, column: 10, scope: !469)
!492 = !DILocation(line: 89, column: 15, scope: !469)
!493 = !DILocation(line: 90, column: 3, scope: !469)
!494 = !DILocation(line: 91, column: 3, scope: !440)
!495 = !DILocation(line: 92, column: 1, scope: !440)
!496 = distinct !DISubprogram(name: "ChunkSetHead", scope: !3, file: !3, line: 138, type: !497, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!497 = !DISubroutineType(types: !498)
!498 = !{!381, !124, !499}
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!500 = !{!501, !502, !503}
!501 = !DILocalVariable(name: "chunk", arg: 1, scope: !496, file: !3, line: 138, type: !124)
!502 = !DILocalVariable(name: "chunk_list", arg: 2, scope: !496, file: !3, line: 139, type: !499)
!503 = !DILocalVariable(name: "new_chunk", scope: !496, file: !3, line: 140, type: !60)
!504 = !DILocation(line: 138, column: 44, scope: !496)
!505 = !DILocation(line: 139, column: 45, scope: !496)
!506 = !DILocation(line: 140, column: 3, scope: !496)
!507 = !DILocation(line: 140, column: 14, scope: !496)
!508 = !DILocation(line: 143, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !496, file: !3, line: 143, column: 7)
!510 = !DILocation(line: 143, column: 7, scope: !509)
!511 = !DILocation(line: 143, column: 19, scope: !509)
!512 = !DILocation(line: 143, column: 7, scope: !496)
!513 = !DILocation(line: 144, column: 5, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !3, line: 143, column: 28)
!515 = !DILocation(line: 147, column: 27, scope: !496)
!516 = !DILocation(line: 147, column: 13, scope: !496)
!517 = !DILocation(line: 148, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !496, file: !3, line: 148, column: 7)
!519 = !DILocation(line: 148, column: 17, scope: !518)
!520 = !DILocation(line: 148, column: 7, scope: !496)
!521 = !DILocation(line: 148, column: 26, scope: !518)
!522 = !DILocation(line: 149, column: 4, scope: !496)
!523 = !DILocation(line: 149, column: 17, scope: !496)
!524 = !DILocation(line: 149, column: 16, scope: !496)
!525 = !{i64 0, i64 4, !202, i64 4, i64 4, !202, i64 8, i64 8, !127, i64 16, i64 8, !432, i64 24, i64 8, !127}
!526 = !DILocation(line: 150, column: 3, scope: !496)
!527 = !DILocation(line: 150, column: 10, scope: !496)
!528 = !DILocation(line: 150, column: 17, scope: !496)
!529 = !DILocation(line: 151, column: 3, scope: !496)
!530 = !DILocation(line: 151, column: 14, scope: !496)
!531 = !DILocation(line: 151, column: 20, scope: !496)
!532 = !DILocation(line: 152, column: 17, scope: !496)
!533 = !DILocation(line: 152, column: 4, scope: !496)
!534 = !DILocation(line: 152, column: 15, scope: !496)
!535 = !DILocation(line: 153, column: 3, scope: !496)
!536 = !DILocation(line: 154, column: 1, scope: !496)
!537 = !DISubprogram(name: "WebPSafeMalloc", scope: !538, file: !538, line: 55, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DIFile(filename: "../../src/utils/utils.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/mux", checksumkind: CSK_MD5, checksum: "a92c64449e1fea70c2890d0a53386cbe")
!539 = !DISubroutineType(types: !540)
!540 = !{!58, !541, !77}
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !55, line: 27, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !57, line: 45, baseType: !79)
!543 = distinct !DISubprogram(name: "ChunkAppend", scope: !3, file: !3, line: 156, type: !544, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !548)
!544 = !DISubroutineType(types: !545)
!545 = !{!381, !124, !546}
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!548 = !{!549, !550, !551, !552}
!549 = !DILocalVariable(name: "chunk", arg: 1, scope: !543, file: !3, line: 156, type: !124)
!550 = !DILocalVariable(name: "chunk_list", arg: 2, scope: !543, file: !3, line: 157, type: !546)
!551 = !DILocalVariable(name: "err", scope: !543, file: !3, line: 158, type: !381)
!552 = !DILocalVariable(name: "last_chunk", scope: !553, file: !3, line: 164, type: !60)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 163, column: 10)
!554 = distinct !DILexicalBlock(scope: !543, file: !3, line: 161, column: 7)
!555 = !DILocation(line: 156, column: 43, scope: !543)
!556 = !DILocation(line: 157, column: 45, scope: !543)
!557 = !DILocation(line: 158, column: 3, scope: !543)
!558 = !DILocation(line: 158, column: 16, scope: !543)
!559 = !DILocation(line: 161, column: 9, scope: !554)
!560 = !DILocation(line: 161, column: 8, scope: !554)
!561 = !DILocation(line: 161, column: 7, scope: !554)
!562 = !DILocation(line: 161, column: 20, scope: !554)
!563 = !DILocation(line: 161, column: 7, scope: !543)
!564 = !DILocation(line: 162, column: 24, scope: !565)
!565 = distinct !DILexicalBlock(scope: !554, file: !3, line: 161, column: 29)
!566 = !DILocation(line: 162, column: 32, scope: !565)
!567 = !DILocation(line: 162, column: 31, scope: !565)
!568 = !DILocation(line: 162, column: 11, scope: !565)
!569 = !DILocation(line: 162, column: 9, scope: !565)
!570 = !DILocation(line: 163, column: 3, scope: !565)
!571 = !DILocation(line: 164, column: 5, scope: !553)
!572 = !DILocation(line: 164, column: 16, scope: !553)
!573 = !DILocation(line: 164, column: 31, scope: !553)
!574 = !DILocation(line: 164, column: 30, scope: !553)
!575 = !DILocation(line: 164, column: 29, scope: !553)
!576 = !DILocation(line: 165, column: 5, scope: !553)
!577 = !DILocation(line: 165, column: 12, scope: !553)
!578 = !DILocation(line: 165, column: 24, scope: !553)
!579 = !DILocation(line: 165, column: 30, scope: !553)
!580 = !DILocation(line: 165, column: 52, scope: !553)
!581 = !DILocation(line: 165, column: 64, scope: !553)
!582 = !DILocation(line: 165, column: 50, scope: !553)
!583 = distinct !{!583, !576, !581, !232}
!584 = !DILocation(line: 166, column: 24, scope: !553)
!585 = !DILocation(line: 166, column: 32, scope: !553)
!586 = !DILocation(line: 166, column: 44, scope: !553)
!587 = !DILocation(line: 166, column: 11, scope: !553)
!588 = !DILocation(line: 166, column: 9, scope: !553)
!589 = !DILocation(line: 167, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !553, file: !3, line: 167, column: 9)
!591 = !DILocation(line: 167, column: 13, scope: !590)
!592 = !DILocation(line: 167, column: 9, scope: !553)
!593 = !DILocation(line: 167, column: 44, scope: !590)
!594 = !DILocation(line: 167, column: 56, scope: !590)
!595 = !DILocation(line: 167, column: 30, scope: !590)
!596 = !DILocation(line: 167, column: 41, scope: !590)
!597 = !DILocation(line: 167, column: 29, scope: !590)
!598 = !DILocation(line: 168, column: 3, scope: !554)
!599 = !DILocation(line: 169, column: 10, scope: !543)
!600 = !DILocation(line: 170, column: 1, scope: !543)
!601 = !DILocation(line: 169, column: 3, scope: !543)
!602 = distinct !DISubprogram(name: "ChunkDelete", scope: !3, file: !3, line: 175, type: !144, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "chunk", arg: 1, scope: !602, file: !3, line: 175, type: !124)
!605 = !DILocalVariable(name: "next", scope: !602, file: !3, line: 176, type: !124)
!606 = !DILocation(line: 175, column: 41, scope: !602)
!607 = !DILocation(line: 176, column: 3, scope: !602)
!608 = !DILocation(line: 176, column: 20, scope: !602)
!609 = !DILocation(line: 176, column: 40, scope: !602)
!610 = !DILocation(line: 176, column: 27, scope: !602)
!611 = !DILocation(line: 177, column: 16, scope: !602)
!612 = !DILocation(line: 177, column: 3, scope: !602)
!613 = !DILocation(line: 178, column: 10, scope: !602)
!614 = !DILocation(line: 179, column: 1, scope: !602)
!615 = !DILocation(line: 178, column: 3, scope: !602)
!616 = !DISubprogram(name: "WebPSafeFree", scope: !538, file: !538, line: 61, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !619}
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!620 = distinct !DISubprogram(name: "ChunkListDelete", scope: !3, file: !3, line: 181, type: !621, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !499}
!623 = !{!624}
!624 = !DILocalVariable(name: "chunk_list", arg: 1, scope: !620, file: !3, line: 181, type: !499)
!625 = !DILocation(line: 181, column: 40, scope: !620)
!626 = !DILocation(line: 182, column: 3, scope: !620)
!627 = !DILocation(line: 182, column: 11, scope: !620)
!628 = !DILocation(line: 182, column: 10, scope: !620)
!629 = !DILocation(line: 182, column: 22, scope: !620)
!630 = !DILocation(line: 183, column: 32, scope: !631)
!631 = distinct !DILexicalBlock(scope: !620, file: !3, line: 182, column: 31)
!632 = !DILocation(line: 183, column: 31, scope: !631)
!633 = !DILocation(line: 183, column: 19, scope: !631)
!634 = !DILocation(line: 183, column: 6, scope: !631)
!635 = !DILocation(line: 183, column: 17, scope: !631)
!636 = distinct !{!636, !626, !637, !232}
!637 = !DILocation(line: 184, column: 3, scope: !620)
!638 = !DILocation(line: 185, column: 1, scope: !620)
!639 = distinct !DISubprogram(name: "ChunkListEmit", scope: !3, file: !3, line: 203, type: !640, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !644)
!640 = !DISubroutineType(types: !641)
!641 = !{!98, !642, !98}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "chunk_list", arg: 1, scope: !639, file: !3, line: 203, type: !642)
!646 = !DILocalVariable(name: "dst", arg: 2, scope: !639, file: !3, line: 203, type: !98)
!647 = !DILocation(line: 203, column: 41, scope: !639)
!648 = !DILocation(line: 203, column: 62, scope: !639)
!649 = !DILocation(line: 204, column: 3, scope: !639)
!650 = !DILocation(line: 204, column: 10, scope: !639)
!651 = !DILocation(line: 204, column: 21, scope: !639)
!652 = !DILocation(line: 205, column: 21, scope: !653)
!653 = distinct !DILexicalBlock(scope: !639, file: !3, line: 204, column: 30)
!654 = !DILocation(line: 205, column: 33, scope: !653)
!655 = !DILocation(line: 205, column: 11, scope: !653)
!656 = !DILocation(line: 205, column: 9, scope: !653)
!657 = !DILocation(line: 206, column: 18, scope: !653)
!658 = !DILocation(line: 206, column: 30, scope: !653)
!659 = !DILocation(line: 206, column: 16, scope: !653)
!660 = distinct !{!660, !649, !661, !232}
!661 = !DILocation(line: 207, column: 3, scope: !639)
!662 = !DILocation(line: 208, column: 10, scope: !639)
!663 = !DILocation(line: 208, column: 3, scope: !639)
!664 = distinct !DISubprogram(name: "ChunkEmit", scope: !3, file: !3, line: 190, type: !665, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!665 = !DISubroutineType(types: !666)
!666 = !{!98, !667, !98}
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!668 = !{!669, !670, !671}
!669 = !DILocalVariable(name: "chunk", arg: 1, scope: !664, file: !3, line: 190, type: !667)
!670 = !DILocalVariable(name: "dst", arg: 2, scope: !664, file: !3, line: 190, type: !98)
!671 = !DILocalVariable(name: "chunk_size", scope: !664, file: !3, line: 191, type: !672)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!673 = !DILocation(line: 190, column: 50, scope: !664)
!674 = !DILocation(line: 190, column: 66, scope: !664)
!675 = !DILocation(line: 191, column: 3, scope: !664)
!676 = !DILocation(line: 191, column: 16, scope: !664)
!677 = !DILocation(line: 191, column: 29, scope: !664)
!678 = !DILocation(line: 191, column: 36, scope: !664)
!679 = !DILocation(line: 191, column: 42, scope: !664)
!680 = !{!138, !141, i64 16}
!681 = !DILocation(line: 194, column: 11, scope: !664)
!682 = !DILocation(line: 194, column: 15, scope: !664)
!683 = !DILocation(line: 194, column: 20, scope: !664)
!684 = !DILocation(line: 194, column: 27, scope: !664)
!685 = !DILocation(line: 194, column: 3, scope: !664)
!686 = !DILocation(line: 195, column: 11, scope: !664)
!687 = !DILocation(line: 195, column: 15, scope: !664)
!688 = !DILocation(line: 195, column: 37, scope: !664)
!689 = !DILocation(line: 195, column: 27, scope: !664)
!690 = !DILocation(line: 195, column: 3, scope: !664)
!691 = !DILocation(line: 197, column: 10, scope: !664)
!692 = !DILocation(line: 197, column: 14, scope: !664)
!693 = !DILocation(line: 197, column: 35, scope: !664)
!694 = !DILocation(line: 197, column: 42, scope: !664)
!695 = !DILocation(line: 197, column: 48, scope: !664)
!696 = !{!138, !128, i64 8}
!697 = !DILocation(line: 197, column: 55, scope: !664)
!698 = !DILocation(line: 197, column: 3, scope: !664)
!699 = !DILocation(line: 198, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !664, file: !3, line: 198, column: 7)
!701 = !DILocation(line: 198, column: 18, scope: !700)
!702 = !DILocation(line: 198, column: 7, scope: !664)
!703 = !DILocation(line: 199, column: 5, scope: !700)
!704 = !DILocation(line: 199, column: 29, scope: !700)
!705 = !DILocation(line: 199, column: 27, scope: !700)
!706 = !DILocation(line: 199, column: 41, scope: !700)
!707 = !DILocation(line: 200, column: 10, scope: !664)
!708 = !DILocation(line: 200, column: 30, scope: !664)
!709 = !DILocation(line: 200, column: 16, scope: !664)
!710 = !DILocation(line: 200, column: 14, scope: !664)
!711 = !DILocation(line: 201, column: 1, scope: !664)
!712 = !DILocation(line: 200, column: 3, scope: !664)
!713 = distinct !DISubprogram(name: "ChunkListDiskSize", scope: !3, file: !3, line: 211, type: !714, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !716)
!714 = !DISubroutineType(types: !715)
!715 = !{!77, !642}
!716 = !{!717, !718}
!717 = !DILocalVariable(name: "chunk_list", arg: 1, scope: !713, file: !3, line: 211, type: !642)
!718 = !DILocalVariable(name: "size", scope: !713, file: !3, line: 212, type: !77)
!719 = !DILocation(line: 211, column: 43, scope: !713)
!720 = !DILocation(line: 212, column: 3, scope: !713)
!721 = !DILocation(line: 212, column: 10, scope: !713)
!722 = !DILocation(line: 213, column: 3, scope: !713)
!723 = !DILocation(line: 213, column: 10, scope: !713)
!724 = !DILocation(line: 213, column: 21, scope: !713)
!725 = !DILocation(line: 214, column: 27, scope: !726)
!726 = distinct !DILexicalBlock(scope: !713, file: !3, line: 213, column: 30)
!727 = !DILocation(line: 214, column: 13, scope: !726)
!728 = !DILocation(line: 214, column: 10, scope: !726)
!729 = !DILocation(line: 215, column: 18, scope: !726)
!730 = !DILocation(line: 215, column: 30, scope: !726)
!731 = !DILocation(line: 215, column: 16, scope: !726)
!732 = distinct !{!732, !722, !733, !232}
!733 = !DILocation(line: 216, column: 3, scope: !713)
!734 = !DILocation(line: 217, column: 10, scope: !713)
!735 = !DILocation(line: 218, column: 1, scope: !713)
!736 = !DILocation(line: 217, column: 3, scope: !713)
!737 = distinct !DISubprogram(name: "ChunkDiskSize", scope: !21, file: !21, line: 155, type: !714, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !738)
!738 = !{!739, !740}
!739 = !DILocalVariable(name: "chunk", arg: 1, scope: !737, file: !21, line: 155, type: !642)
!740 = !DILocalVariable(name: "data_size", scope: !737, file: !21, line: 156, type: !672)
!741 = !DILocation(line: 155, column: 58, scope: !737)
!742 = !DILocation(line: 156, column: 3, scope: !737)
!743 = !DILocation(line: 156, column: 16, scope: !737)
!744 = !DILocation(line: 156, column: 28, scope: !737)
!745 = !DILocation(line: 156, column: 35, scope: !737)
!746 = !DILocation(line: 156, column: 41, scope: !737)
!747 = !DILocation(line: 157, column: 26, scope: !737)
!748 = !DILocation(line: 157, column: 10, scope: !737)
!749 = !DILocation(line: 158, column: 1, scope: !737)
!750 = !DILocation(line: 157, column: 3, scope: !737)
!751 = distinct !DISubprogram(name: "MuxImageInit", scope: !3, file: !3, line: 223, type: !752, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !754}
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!755 = !{!756}
!756 = !DILocalVariable(name: "wpi", arg: 1, scope: !751, file: !3, line: 223, type: !754)
!757 = !DILocation(line: 223, column: 39, scope: !751)
!758 = !DILocation(line: 225, column: 10, scope: !751)
!759 = !DILocation(line: 225, column: 3, scope: !751)
!760 = !DILocation(line: 226, column: 1, scope: !751)
!761 = distinct !DISubprogram(name: "MuxImageRelease", scope: !3, file: !3, line: 228, type: !762, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!762 = !DISubroutineType(types: !763)
!763 = !{!81, !754}
!764 = !{!765, !766}
!765 = !DILocalVariable(name: "wpi", arg: 1, scope: !761, file: !3, line: 228, type: !754)
!766 = !DILocalVariable(name: "next", scope: !761, file: !3, line: 229, type: !81)
!767 = !DILocation(line: 228, column: 51, scope: !761)
!768 = !DILocation(line: 229, column: 3, scope: !761)
!769 = !DILocation(line: 229, column: 17, scope: !761)
!770 = !DILocation(line: 230, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !761, file: !3, line: 230, column: 7)
!772 = !DILocation(line: 230, column: 11, scope: !771)
!773 = !DILocation(line: 230, column: 7, scope: !761)
!774 = !DILocation(line: 230, column: 20, scope: !771)
!775 = !DILocation(line: 233, column: 20, scope: !761)
!776 = !DILocation(line: 233, column: 25, scope: !761)
!777 = !DILocation(line: 233, column: 3, scope: !761)
!778 = !DILocation(line: 234, column: 20, scope: !761)
!779 = !DILocation(line: 234, column: 25, scope: !761)
!780 = !DILocation(line: 234, column: 3, scope: !761)
!781 = !DILocation(line: 235, column: 20, scope: !761)
!782 = !DILocation(line: 235, column: 25, scope: !761)
!783 = !DILocation(line: 235, column: 3, scope: !761)
!784 = !DILocation(line: 236, column: 20, scope: !761)
!785 = !DILocation(line: 236, column: 25, scope: !761)
!786 = !DILocation(line: 236, column: 3, scope: !761)
!787 = !DILocation(line: 238, column: 10, scope: !761)
!788 = !DILocation(line: 238, column: 15, scope: !761)
!789 = !{!790, !128, i64 48}
!790 = !{!"WebPMuxImage", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !139, i64 32, !139, i64 36, !139, i64 40, !139, i64 44, !128, i64 48}
!791 = !DILocation(line: 238, column: 8, scope: !761)
!792 = !DILocation(line: 239, column: 16, scope: !761)
!793 = !DILocation(line: 239, column: 3, scope: !761)
!794 = !DILocation(line: 240, column: 10, scope: !761)
!795 = !DILocation(line: 240, column: 3, scope: !761)
!796 = !DILocation(line: 241, column: 1, scope: !761)
!797 = distinct !DISubprogram(name: "MuxImageCount", scope: !3, file: !3, line: 258, type: !798, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!798 = !DISubroutineType(types: !799)
!799 = !{!36, !800, !107}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!802 = !{!803, !804, !805, !806, !807, !813}
!803 = !DILocalVariable(name: "wpi_list", arg: 1, scope: !797, file: !3, line: 258, type: !800)
!804 = !DILocalVariable(name: "id", arg: 2, scope: !797, file: !3, line: 258, type: !107)
!805 = !DILocalVariable(name: "count", scope: !797, file: !3, line: 259, type: !36)
!806 = !DILocalVariable(name: "current", scope: !797, file: !3, line: 260, type: !800)
!807 = !DILocalVariable(name: "wpi_chunk", scope: !808, file: !3, line: 265, type: !667)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 264, column: 12)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 262, column: 9)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 261, column: 71)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 261, column: 3)
!812 = distinct !DILexicalBlock(scope: !797, file: !3, line: 261, column: 3)
!813 = !DILocalVariable(name: "wpi_chunk_id", scope: !814, file: !3, line: 267, type: !816)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 266, column: 30)
!815 = distinct !DILexicalBlock(scope: !808, file: !3, line: 266, column: 11)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!817 = !DILocation(line: 258, column: 39, scope: !797)
!818 = !DILocation(line: 258, column: 61, scope: !797)
!819 = !DILocation(line: 259, column: 3, scope: !797)
!820 = !DILocation(line: 259, column: 7, scope: !797)
!821 = !DILocation(line: 260, column: 3, scope: !797)
!822 = !DILocation(line: 260, column: 23, scope: !797)
!823 = !DILocation(line: 261, column: 18, scope: !812)
!824 = !DILocation(line: 261, column: 16, scope: !812)
!825 = !DILocation(line: 261, column: 8, scope: !812)
!826 = !DILocation(line: 261, column: 28, scope: !811)
!827 = !DILocation(line: 261, column: 36, scope: !811)
!828 = !DILocation(line: 261, column: 3, scope: !812)
!829 = !DILocation(line: 262, column: 9, scope: !809)
!830 = !DILocation(line: 262, column: 12, scope: !809)
!831 = !DILocation(line: 262, column: 9, scope: !810)
!832 = !DILocation(line: 263, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !809, file: !3, line: 262, column: 31)
!834 = !DILocation(line: 264, column: 5, scope: !833)
!835 = !DILocation(line: 265, column: 7, scope: !808)
!836 = !DILocation(line: 265, column: 30, scope: !808)
!837 = !DILocation(line: 265, column: 62, scope: !808)
!838 = !DILocation(line: 265, column: 71, scope: !808)
!839 = !DILocation(line: 265, column: 43, scope: !808)
!840 = !DILocation(line: 265, column: 42, scope: !808)
!841 = !DILocation(line: 266, column: 11, scope: !815)
!842 = !DILocation(line: 266, column: 21, scope: !815)
!843 = !DILocation(line: 266, column: 11, scope: !808)
!844 = !DILocation(line: 267, column: 9, scope: !814)
!845 = !DILocation(line: 267, column: 27, scope: !814)
!846 = !DILocation(line: 267, column: 60, scope: !814)
!847 = !DILocation(line: 267, column: 71, scope: !814)
!848 = !DILocation(line: 267, column: 42, scope: !814)
!849 = !DILocation(line: 268, column: 13, scope: !850)
!850 = distinct !DILexicalBlock(scope: !814, file: !3, line: 268, column: 13)
!851 = !DILocation(line: 268, column: 29, scope: !850)
!852 = !DILocation(line: 268, column: 26, scope: !850)
!853 = !DILocation(line: 268, column: 13, scope: !814)
!854 = !DILocation(line: 268, column: 33, scope: !850)
!855 = !DILocation(line: 269, column: 7, scope: !815)
!856 = !DILocation(line: 269, column: 7, scope: !814)
!857 = !DILocation(line: 270, column: 5, scope: !809)
!858 = !DILocation(line: 271, column: 3, scope: !810)
!859 = !DILocation(line: 261, column: 55, scope: !811)
!860 = !DILocation(line: 261, column: 64, scope: !811)
!861 = !DILocation(line: 261, column: 53, scope: !811)
!862 = !DILocation(line: 261, column: 3, scope: !811)
!863 = distinct !{!863, !828, !864, !232}
!864 = !DILocation(line: 271, column: 3, scope: !812)
!865 = !DILocation(line: 272, column: 10, scope: !797)
!866 = !DILocation(line: 273, column: 1, scope: !797)
!867 = !DILocation(line: 272, column: 3, scope: !797)
!868 = distinct !DISubprogram(name: "GetChunkListFromId", scope: !3, file: !3, line: 247, type: !869, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!869 = !DISubroutineType(types: !870)
!870 = !{!96, !871, !107}
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "wpi", arg: 1, scope: !868, file: !3, line: 247, type: !871)
!874 = !DILocalVariable(name: "id", arg: 2, scope: !868, file: !3, line: 248, type: !107)
!875 = !DILocation(line: 247, column: 65, scope: !868)
!876 = !DILocation(line: 248, column: 51, scope: !868)
!877 = !DILocation(line: 250, column: 11, scope: !868)
!878 = !DILocation(line: 250, column: 3, scope: !868)
!879 = !DILocation(line: 251, column: 49, scope: !880)
!880 = distinct !DILexicalBlock(scope: !868, file: !3, line: 250, column: 15)
!881 = !DILocation(line: 251, column: 54, scope: !880)
!882 = !DILocation(line: 251, column: 28, scope: !880)
!883 = !DILocation(line: 252, column: 49, scope: !880)
!884 = !DILocation(line: 252, column: 54, scope: !880)
!885 = !DILocation(line: 252, column: 28, scope: !880)
!886 = !DILocation(line: 253, column: 49, scope: !880)
!887 = !DILocation(line: 253, column: 54, scope: !880)
!888 = !DILocation(line: 253, column: 28, scope: !880)
!889 = !DILocation(line: 254, column: 14, scope: !880)
!890 = !DILocation(line: 256, column: 1, scope: !868)
!891 = distinct !DISubprogram(name: "MuxImagePush", scope: !3, file: !3, line: 302, type: !892, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!381, !800, !94}
!894 = !{!895, !896, !897, !898}
!895 = !DILocalVariable(name: "wpi", arg: 1, scope: !891, file: !3, line: 302, type: !800)
!896 = !DILocalVariable(name: "wpi_list", arg: 2, scope: !891, file: !3, line: 302, type: !94)
!897 = !DILocalVariable(name: "new_wpi", scope: !891, file: !3, line: 303, type: !81)
!898 = !DILocalVariable(name: "cur_wpi", scope: !899, file: !3, line: 306, type: !754)
!899 = distinct !DILexicalBlock(scope: !891, file: !3, line: 305, column: 29)
!900 = !DILocation(line: 302, column: 47, scope: !891)
!901 = !DILocation(line: 302, column: 67, scope: !891)
!902 = !DILocation(line: 303, column: 3, scope: !891)
!903 = !DILocation(line: 303, column: 17, scope: !891)
!904 = !DILocation(line: 305, column: 3, scope: !891)
!905 = !DILocation(line: 305, column: 11, scope: !891)
!906 = !DILocation(line: 305, column: 10, scope: !891)
!907 = !DILocation(line: 305, column: 20, scope: !891)
!908 = !DILocation(line: 306, column: 5, scope: !899)
!909 = !DILocation(line: 306, column: 25, scope: !899)
!910 = !DILocation(line: 306, column: 36, scope: !899)
!911 = !DILocation(line: 306, column: 35, scope: !899)
!912 = !DILocation(line: 307, column: 9, scope: !913)
!913 = distinct !DILexicalBlock(scope: !899, file: !3, line: 307, column: 9)
!914 = !DILocation(line: 307, column: 18, scope: !913)
!915 = !DILocation(line: 307, column: 24, scope: !913)
!916 = !DILocation(line: 307, column: 9, scope: !899)
!917 = !DILocation(line: 307, column: 33, scope: !913)
!918 = !DILocation(line: 308, column: 17, scope: !899)
!919 = !DILocation(line: 308, column: 26, scope: !899)
!920 = !DILocation(line: 308, column: 14, scope: !899)
!921 = !DILocation(line: 309, column: 3, scope: !891)
!922 = distinct !{!922, !904, !921, !232}
!923 = !DILocation(line: 311, column: 28, scope: !891)
!924 = !DILocation(line: 311, column: 11, scope: !891)
!925 = !DILocation(line: 312, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !891, file: !3, line: 312, column: 7)
!927 = !DILocation(line: 312, column: 15, scope: !926)
!928 = !DILocation(line: 312, column: 7, scope: !891)
!929 = !DILocation(line: 312, column: 24, scope: !926)
!930 = !DILocation(line: 313, column: 4, scope: !891)
!931 = !DILocation(line: 313, column: 15, scope: !891)
!932 = !DILocation(line: 313, column: 14, scope: !891)
!933 = !{i64 0, i64 8, !127, i64 8, i64 8, !127, i64 16, i64 8, !127, i64 24, i64 8, !127, i64 32, i64 4, !202, i64 36, i64 4, !202, i64 40, i64 4, !202, i64 44, i64 4, !202, i64 48, i64 8, !127}
!934 = !DILocation(line: 314, column: 3, scope: !891)
!935 = !DILocation(line: 314, column: 12, scope: !891)
!936 = !DILocation(line: 314, column: 18, scope: !891)
!937 = !DILocation(line: 316, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !891, file: !3, line: 316, column: 7)
!939 = !DILocation(line: 316, column: 7, scope: !938)
!940 = !DILocation(line: 316, column: 17, scope: !938)
!941 = !DILocation(line: 316, column: 7, scope: !891)
!942 = !DILocation(line: 317, column: 26, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !3, line: 316, column: 26)
!944 = !DILocation(line: 317, column: 7, scope: !943)
!945 = !DILocation(line: 317, column: 6, scope: !943)
!946 = !DILocation(line: 317, column: 18, scope: !943)
!947 = !DILocation(line: 317, column: 24, scope: !943)
!948 = !DILocation(line: 318, column: 3, scope: !943)
!949 = !DILocation(line: 319, column: 17, scope: !950)
!950 = distinct !DILexicalBlock(scope: !938, file: !3, line: 318, column: 10)
!951 = !DILocation(line: 319, column: 6, scope: !950)
!952 = !DILocation(line: 319, column: 15, scope: !950)
!953 = !DILocation(line: 321, column: 3, scope: !891)
!954 = !DILocation(line: 322, column: 1, scope: !891)
!955 = distinct !DISubprogram(name: "MuxImageDelete", scope: !3, file: !3, line: 327, type: !762, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !956)
!956 = !{!957, !958}
!957 = !DILocalVariable(name: "wpi", arg: 1, scope: !955, file: !3, line: 327, type: !754)
!958 = !DILocalVariable(name: "next", scope: !955, file: !3, line: 329, type: !754)
!959 = !DILocation(line: 327, column: 50, scope: !955)
!960 = !DILocation(line: 329, column: 3, scope: !955)
!961 = !DILocation(line: 329, column: 23, scope: !955)
!962 = !DILocation(line: 329, column: 46, scope: !955)
!963 = !DILocation(line: 329, column: 30, scope: !955)
!964 = !DILocation(line: 330, column: 16, scope: !955)
!965 = !DILocation(line: 330, column: 3, scope: !955)
!966 = !DILocation(line: 331, column: 10, scope: !955)
!967 = !DILocation(line: 332, column: 1, scope: !955)
!968 = !DILocation(line: 331, column: 3, scope: !955)
!969 = distinct !DISubprogram(name: "MuxImageDeleteNth", scope: !3, file: !3, line: 334, type: !970, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!381, !94, !54}
!972 = !{!973, !974}
!973 = !DILocalVariable(name: "wpi_list", arg: 1, scope: !969, file: !3, line: 334, type: !94)
!974 = !DILocalVariable(name: "nth", arg: 2, scope: !969, file: !3, line: 334, type: !54)
!975 = !DILocation(line: 334, column: 47, scope: !969)
!976 = !DILocation(line: 334, column: 66, scope: !969)
!977 = !DILocation(line: 336, column: 33, scope: !978)
!978 = distinct !DILexicalBlock(scope: !969, file: !3, line: 336, column: 7)
!979 = !DILocation(line: 336, column: 43, scope: !978)
!980 = !DILocation(line: 336, column: 8, scope: !978)
!981 = !DILocation(line: 336, column: 7, scope: !969)
!982 = !DILocation(line: 337, column: 5, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !3, line: 336, column: 60)
!984 = !DILocation(line: 339, column: 31, scope: !969)
!985 = !DILocation(line: 339, column: 30, scope: !969)
!986 = !DILocation(line: 339, column: 15, scope: !969)
!987 = !DILocation(line: 339, column: 4, scope: !969)
!988 = !DILocation(line: 339, column: 13, scope: !969)
!989 = !DILocation(line: 340, column: 3, scope: !969)
!990 = !DILocation(line: 341, column: 1, scope: !969)
!991 = distinct !DISubprogram(name: "SearchImageToGetOrDelete", scope: !3, file: !3, line: 278, type: !992, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!992 = !DISubroutineType(types: !993)
!993 = !{!36, !94, !54, !994}
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!995 = !{!996, !997, !998, !999, !1000}
!996 = !DILocalVariable(name: "wpi_list", arg: 1, scope: !991, file: !3, line: 278, type: !94)
!997 = !DILocalVariable(name: "nth", arg: 2, scope: !991, file: !3, line: 278, type: !54)
!998 = !DILocalVariable(name: "location", arg: 3, scope: !991, file: !3, line: 279, type: !994)
!999 = !DILocalVariable(name: "count", scope: !991, file: !3, line: 280, type: !54)
!1000 = !DILocalVariable(name: "cur_wpi", scope: !1001, file: !3, line: 290, type: !754)
!1001 = distinct !DILexicalBlock(scope: !991, file: !3, line: 289, column: 29)
!1002 = !DILocation(line: 278, column: 52, scope: !991)
!1003 = !DILocation(line: 278, column: 71, scope: !991)
!1004 = !DILocation(line: 279, column: 59, scope: !991)
!1005 = !DILocation(line: 280, column: 3, scope: !991)
!1006 = !DILocation(line: 280, column: 12, scope: !991)
!1007 = !DILocation(line: 282, column: 15, scope: !991)
!1008 = !DILocation(line: 282, column: 4, scope: !991)
!1009 = !DILocation(line: 282, column: 13, scope: !991)
!1010 = !DILocation(line: 284, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !991, file: !3, line: 284, column: 7)
!1012 = !DILocation(line: 284, column: 11, scope: !1011)
!1013 = !DILocation(line: 284, column: 7, scope: !991)
!1014 = !DILocation(line: 285, column: 26, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 284, column: 17)
!1016 = !DILocation(line: 285, column: 25, scope: !1015)
!1017 = !DILocation(line: 285, column: 11, scope: !1015)
!1018 = !DILocation(line: 285, column: 9, scope: !1015)
!1019 = !DILocation(line: 286, column: 9, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 286, column: 9)
!1021 = !DILocation(line: 286, column: 13, scope: !1020)
!1022 = !DILocation(line: 286, column: 9, scope: !1015)
!1023 = !DILocation(line: 286, column: 19, scope: !1020)
!1024 = !DILocation(line: 287, column: 3, scope: !1015)
!1025 = !DILocation(line: 289, column: 3, scope: !991)
!1026 = !DILocation(line: 289, column: 11, scope: !991)
!1027 = !DILocation(line: 289, column: 10, scope: !991)
!1028 = !DILocation(line: 289, column: 20, scope: !991)
!1029 = !DILocation(line: 290, column: 5, scope: !1001)
!1030 = !DILocation(line: 290, column: 25, scope: !1001)
!1031 = !DILocation(line: 290, column: 36, scope: !1001)
!1032 = !DILocation(line: 290, column: 35, scope: !1001)
!1033 = !DILocation(line: 291, column: 5, scope: !1001)
!1034 = !DILocation(line: 292, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 292, column: 9)
!1036 = !DILocation(line: 292, column: 18, scope: !1035)
!1037 = !DILocation(line: 292, column: 15, scope: !1035)
!1038 = !DILocation(line: 292, column: 9, scope: !1001)
!1039 = !DILocation(line: 292, column: 23, scope: !1035)
!1040 = !DILocation(line: 293, column: 17, scope: !1001)
!1041 = !DILocation(line: 293, column: 26, scope: !1001)
!1042 = !DILocation(line: 293, column: 14, scope: !1001)
!1043 = !DILocation(line: 294, column: 17, scope: !1001)
!1044 = !DILocation(line: 294, column: 6, scope: !1001)
!1045 = !DILocation(line: 294, column: 15, scope: !1001)
!1046 = !DILocation(line: 295, column: 3, scope: !991)
!1047 = distinct !{!1047, !1025, !1046, !232}
!1048 = !DILocation(line: 296, column: 3, scope: !991)
!1049 = !DILocation(line: 297, column: 1, scope: !991)
!1050 = distinct !DISubprogram(name: "MuxImageGetNth", scope: !3, file: !3, line: 346, type: !1051, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!381, !1053, !54, !94}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!1054 = !{!1055, !1056, !1057}
!1055 = !DILocalVariable(name: "wpi_list", arg: 1, scope: !1050, file: !3, line: 346, type: !1053)
!1056 = !DILocalVariable(name: "nth", arg: 2, scope: !1050, file: !3, line: 346, type: !54)
!1057 = !DILocalVariable(name: "wpi", arg: 3, scope: !1050, file: !3, line: 347, type: !94)
!1058 = !DILocation(line: 346, column: 50, scope: !1050)
!1059 = !DILocation(line: 346, column: 69, scope: !1050)
!1060 = !DILocation(line: 347, column: 44, scope: !1050)
!1061 = !DILocation(line: 350, column: 49, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 350, column: 7)
!1063 = !DILocation(line: 350, column: 59, scope: !1062)
!1064 = !DILocation(line: 350, column: 8, scope: !1062)
!1065 = !DILocation(line: 350, column: 7, scope: !1050)
!1066 = !DILocation(line: 352, column: 5, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 351, column: 62)
!1068 = !DILocation(line: 354, column: 26, scope: !1050)
!1069 = !DILocation(line: 354, column: 25, scope: !1050)
!1070 = !DILocation(line: 354, column: 4, scope: !1050)
!1071 = !DILocation(line: 354, column: 8, scope: !1050)
!1072 = !DILocation(line: 355, column: 3, scope: !1050)
!1073 = !DILocation(line: 356, column: 1, scope: !1050)
!1074 = distinct !DISubprogram(name: "MuxImageDiskSize", scope: !3, file: !3, line: 362, type: !1075, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!77, !871}
!1077 = !{!1078, !1079}
!1078 = !DILocalVariable(name: "wpi", arg: 1, scope: !1074, file: !3, line: 362, type: !871)
!1079 = !DILocalVariable(name: "size", scope: !1074, file: !3, line: 363, type: !77)
!1080 = !DILocation(line: 362, column: 51, scope: !1074)
!1081 = !DILocation(line: 363, column: 3, scope: !1074)
!1082 = !DILocation(line: 363, column: 10, scope: !1074)
!1083 = !DILocation(line: 364, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 364, column: 7)
!1085 = !DILocation(line: 364, column: 12, scope: !1084)
!1086 = !{!790, !128, i64 0}
!1087 = !DILocation(line: 364, column: 20, scope: !1084)
!1088 = !DILocation(line: 364, column: 7, scope: !1074)
!1089 = !DILocation(line: 364, column: 51, scope: !1084)
!1090 = !DILocation(line: 364, column: 56, scope: !1084)
!1091 = !DILocation(line: 364, column: 37, scope: !1084)
!1092 = !DILocation(line: 364, column: 34, scope: !1084)
!1093 = !DILocation(line: 364, column: 29, scope: !1084)
!1094 = !DILocation(line: 365, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 365, column: 7)
!1096 = !DILocation(line: 365, column: 12, scope: !1095)
!1097 = !{!790, !128, i64 8}
!1098 = !DILocation(line: 365, column: 19, scope: !1095)
!1099 = !DILocation(line: 365, column: 7, scope: !1074)
!1100 = !DILocation(line: 365, column: 50, scope: !1095)
!1101 = !DILocation(line: 365, column: 55, scope: !1095)
!1102 = !DILocation(line: 365, column: 36, scope: !1095)
!1103 = !DILocation(line: 365, column: 33, scope: !1095)
!1104 = !DILocation(line: 365, column: 28, scope: !1095)
!1105 = !DILocation(line: 366, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 366, column: 7)
!1107 = !DILocation(line: 366, column: 12, scope: !1106)
!1108 = !{!790, !128, i64 16}
!1109 = !DILocation(line: 366, column: 17, scope: !1106)
!1110 = !DILocation(line: 366, column: 7, scope: !1074)
!1111 = !DILocation(line: 366, column: 48, scope: !1106)
!1112 = !DILocation(line: 366, column: 53, scope: !1106)
!1113 = !DILocation(line: 366, column: 34, scope: !1106)
!1114 = !DILocation(line: 366, column: 31, scope: !1106)
!1115 = !DILocation(line: 366, column: 26, scope: !1106)
!1116 = !DILocation(line: 367, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 367, column: 7)
!1118 = !DILocation(line: 367, column: 12, scope: !1117)
!1119 = !{!790, !128, i64 24}
!1120 = !DILocation(line: 367, column: 21, scope: !1117)
!1121 = !DILocation(line: 367, column: 7, scope: !1074)
!1122 = !DILocation(line: 367, column: 56, scope: !1117)
!1123 = !DILocation(line: 367, column: 61, scope: !1117)
!1124 = !DILocation(line: 367, column: 38, scope: !1117)
!1125 = !DILocation(line: 367, column: 35, scope: !1117)
!1126 = !DILocation(line: 367, column: 30, scope: !1117)
!1127 = !DILocation(line: 368, column: 10, scope: !1074)
!1128 = !DILocation(line: 369, column: 1, scope: !1074)
!1129 = !DILocation(line: 368, column: 3, scope: !1074)
!1130 = distinct !DISubprogram(name: "MuxImageEmit", scope: !3, file: !3, line: 387, type: !1131, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!98, !871, !98}
!1133 = !{!1134, !1135}
!1134 = !DILocalVariable(name: "wpi", arg: 1, scope: !1130, file: !3, line: 387, type: !871)
!1135 = !DILocalVariable(name: "dst", arg: 2, scope: !1130, file: !3, line: 387, type: !98)
!1136 = !DILocation(line: 387, column: 49, scope: !1130)
!1137 = !DILocation(line: 387, column: 63, scope: !1130)
!1138 = !DILocation(line: 393, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 393, column: 7)
!1140 = !DILocation(line: 393, column: 12, scope: !1139)
!1141 = !DILocation(line: 393, column: 20, scope: !1139)
!1142 = !DILocation(line: 393, column: 7, scope: !1130)
!1143 = !DILocation(line: 394, column: 28, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 393, column: 29)
!1145 = !DILocation(line: 394, column: 33, scope: !1144)
!1146 = !DILocation(line: 394, column: 59, scope: !1144)
!1147 = !DILocation(line: 394, column: 42, scope: !1144)
!1148 = !DILocation(line: 394, column: 65, scope: !1144)
!1149 = !DILocation(line: 394, column: 11, scope: !1144)
!1150 = !DILocation(line: 394, column: 9, scope: !1144)
!1151 = !DILocation(line: 395, column: 3, scope: !1144)
!1152 = !DILocation(line: 396, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 396, column: 7)
!1154 = !DILocation(line: 396, column: 12, scope: !1153)
!1155 = !DILocation(line: 396, column: 19, scope: !1153)
!1156 = !DILocation(line: 396, column: 7, scope: !1130)
!1157 = !DILocation(line: 396, column: 44, scope: !1153)
!1158 = !DILocation(line: 396, column: 49, scope: !1153)
!1159 = !DILocation(line: 396, column: 57, scope: !1153)
!1160 = !DILocation(line: 396, column: 34, scope: !1153)
!1161 = !DILocation(line: 396, column: 32, scope: !1153)
!1162 = !DILocation(line: 396, column: 28, scope: !1153)
!1163 = !DILocation(line: 397, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 397, column: 7)
!1165 = !DILocation(line: 397, column: 12, scope: !1164)
!1166 = !DILocation(line: 397, column: 17, scope: !1164)
!1167 = !DILocation(line: 397, column: 7, scope: !1130)
!1168 = !DILocation(line: 397, column: 42, scope: !1164)
!1169 = !DILocation(line: 397, column: 47, scope: !1164)
!1170 = !DILocation(line: 397, column: 53, scope: !1164)
!1171 = !DILocation(line: 397, column: 32, scope: !1164)
!1172 = !DILocation(line: 397, column: 30, scope: !1164)
!1173 = !DILocation(line: 397, column: 26, scope: !1164)
!1174 = !DILocation(line: 398, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 398, column: 7)
!1176 = !DILocation(line: 398, column: 12, scope: !1175)
!1177 = !DILocation(line: 398, column: 21, scope: !1175)
!1178 = !DILocation(line: 398, column: 7, scope: !1130)
!1179 = !DILocation(line: 398, column: 50, scope: !1175)
!1180 = !DILocation(line: 398, column: 55, scope: !1175)
!1181 = !DILocation(line: 398, column: 65, scope: !1175)
!1182 = !DILocation(line: 398, column: 36, scope: !1175)
!1183 = !DILocation(line: 398, column: 34, scope: !1175)
!1184 = !DILocation(line: 398, column: 30, scope: !1175)
!1185 = !DILocation(line: 399, column: 10, scope: !1130)
!1186 = !DILocation(line: 399, column: 3, scope: !1130)
!1187 = distinct !DISubprogram(name: "ChunkEmitSpecial", scope: !3, file: !3, line: 372, type: !1188, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!98, !667, !77, !98}
!1190 = !{!1191, !1192, !1193, !1194, !1195}
!1191 = !DILocalVariable(name: "header", arg: 1, scope: !1187, file: !3, line: 372, type: !667)
!1192 = !DILocalVariable(name: "total_size", arg: 2, scope: !1187, file: !3, line: 373, type: !77)
!1193 = !DILocalVariable(name: "dst", arg: 3, scope: !1187, file: !3, line: 373, type: !98)
!1194 = !DILocalVariable(name: "header_size", scope: !1187, file: !3, line: 374, type: !672)
!1195 = !DILocalVariable(name: "offset_to_next", scope: !1187, file: !3, line: 375, type: !672)
!1196 = !DILocation(line: 372, column: 57, scope: !1187)
!1197 = !DILocation(line: 373, column: 41, scope: !1187)
!1198 = !DILocation(line: 373, column: 62, scope: !1187)
!1199 = !DILocation(line: 374, column: 3, scope: !1187)
!1200 = !DILocation(line: 374, column: 16, scope: !1187)
!1201 = !DILocation(line: 374, column: 30, scope: !1187)
!1202 = !DILocation(line: 374, column: 38, scope: !1187)
!1203 = !DILocation(line: 374, column: 44, scope: !1187)
!1204 = !DILocation(line: 375, column: 3, scope: !1187)
!1205 = !DILocation(line: 375, column: 16, scope: !1187)
!1206 = !DILocation(line: 375, column: 33, scope: !1187)
!1207 = !DILocation(line: 375, column: 44, scope: !1187)
!1208 = !DILocation(line: 377, column: 11, scope: !1187)
!1209 = !DILocation(line: 377, column: 15, scope: !1187)
!1210 = !DILocation(line: 377, column: 20, scope: !1187)
!1211 = !DILocation(line: 377, column: 28, scope: !1187)
!1212 = !DILocation(line: 377, column: 3, scope: !1187)
!1213 = !DILocation(line: 378, column: 11, scope: !1187)
!1214 = !DILocation(line: 378, column: 15, scope: !1187)
!1215 = !DILocation(line: 378, column: 37, scope: !1187)
!1216 = !DILocation(line: 378, column: 27, scope: !1187)
!1217 = !DILocation(line: 378, column: 3, scope: !1187)
!1218 = !DILocation(line: 380, column: 10, scope: !1187)
!1219 = !DILocation(line: 380, column: 14, scope: !1187)
!1220 = !DILocation(line: 380, column: 35, scope: !1187)
!1221 = !DILocation(line: 380, column: 43, scope: !1187)
!1222 = !DILocation(line: 380, column: 49, scope: !1187)
!1223 = !DILocation(line: 380, column: 56, scope: !1187)
!1224 = !DILocation(line: 380, column: 3, scope: !1187)
!1225 = !DILocation(line: 381, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 381, column: 7)
!1227 = !DILocation(line: 381, column: 19, scope: !1226)
!1228 = !DILocation(line: 381, column: 7, scope: !1187)
!1229 = !DILocation(line: 382, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 381, column: 24)
!1231 = !DILocation(line: 382, column: 29, scope: !1230)
!1232 = !DILocation(line: 382, column: 27, scope: !1230)
!1233 = !DILocation(line: 382, column: 42, scope: !1230)
!1234 = !DILocation(line: 383, column: 3, scope: !1230)
!1235 = !DILocation(line: 384, column: 10, scope: !1187)
!1236 = !DILocation(line: 384, column: 30, scope: !1187)
!1237 = !DILocation(line: 384, column: 16, scope: !1187)
!1238 = !DILocation(line: 384, column: 14, scope: !1187)
!1239 = !DILocation(line: 385, column: 1, scope: !1187)
!1240 = !DILocation(line: 384, column: 3, scope: !1187)
!1241 = distinct !DISubprogram(name: "MuxHasAlpha", scope: !3, file: !3, line: 405, type: !1242, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!36, !800}
!1244 = !{!1245}
!1245 = !DILocalVariable(name: "images", arg: 1, scope: !1241, file: !3, line: 405, type: !800)
!1246 = !DILocation(line: 405, column: 37, scope: !1241)
!1247 = !DILocation(line: 406, column: 3, scope: !1241)
!1248 = !DILocation(line: 406, column: 10, scope: !1241)
!1249 = !DILocation(line: 406, column: 17, scope: !1241)
!1250 = !DILocation(line: 407, column: 9, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 407, column: 9)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 406, column: 26)
!1253 = !DILocation(line: 407, column: 17, scope: !1251)
!1254 = !{!790, !139, i64 40}
!1255 = !DILocation(line: 407, column: 9, scope: !1252)
!1256 = !DILocation(line: 407, column: 29, scope: !1251)
!1257 = !DILocation(line: 408, column: 14, scope: !1252)
!1258 = !DILocation(line: 408, column: 22, scope: !1252)
!1259 = !DILocation(line: 408, column: 12, scope: !1252)
!1260 = distinct !{!1260, !1247, !1261, !232}
!1261 = !DILocation(line: 409, column: 3, scope: !1241)
!1262 = !DILocation(line: 410, column: 3, scope: !1241)
!1263 = !DILocation(line: 411, column: 1, scope: !1241)
!1264 = distinct !DISubprogram(name: "MuxEmitRiffHeader", scope: !3, file: !3, line: 413, type: !1265, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1268)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!98, !1267, !77}
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1268 = !{!1269, !1270}
!1269 = !DILocalVariable(name: "data", arg: 1, scope: !1264, file: !3, line: 413, type: !1267)
!1270 = !DILocalVariable(name: "size", arg: 2, scope: !1264, file: !3, line: 413, type: !77)
!1271 = !DILocation(line: 413, column: 43, scope: !1264)
!1272 = !DILocation(line: 413, column: 56, scope: !1264)
!1273 = !DILocation(line: 414, column: 11, scope: !1264)
!1274 = !DILocation(line: 414, column: 16, scope: !1264)
!1275 = !DILocation(line: 414, column: 3, scope: !1264)
!1276 = !DILocation(line: 415, column: 11, scope: !1264)
!1277 = !DILocation(line: 415, column: 16, scope: !1264)
!1278 = !DILocation(line: 415, column: 38, scope: !1264)
!1279 = !DILocation(line: 415, column: 28, scope: !1264)
!1280 = !DILocation(line: 415, column: 43, scope: !1264)
!1281 = !DILocation(line: 415, column: 3, scope: !1264)
!1282 = !DILocation(line: 417, column: 11, scope: !1264)
!1283 = !DILocation(line: 417, column: 16, scope: !1264)
!1284 = !DILocation(line: 417, column: 27, scope: !1264)
!1285 = !DILocation(line: 417, column: 3, scope: !1264)
!1286 = !DILocation(line: 418, column: 10, scope: !1264)
!1287 = !DILocation(line: 418, column: 15, scope: !1264)
!1288 = !DILocation(line: 418, column: 3, scope: !1264)
!1289 = distinct !DISubprogram(name: "PutLE32", scope: !538, file: !538, line: 109, type: !1290, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !1267, !54}
!1292 = !{!1293, !1294}
!1293 = !DILocalVariable(name: "data", arg: 1, scope: !1289, file: !538, line: 109, type: !1267)
!1294 = !DILocalVariable(name: "val", arg: 2, scope: !1289, file: !538, line: 109, type: !54)
!1295 = !DILocation(line: 109, column: 48, scope: !1289)
!1296 = !DILocation(line: 109, column: 63, scope: !1289)
!1297 = !DILocation(line: 110, column: 11, scope: !1289)
!1298 = !DILocation(line: 110, column: 23, scope: !1289)
!1299 = !DILocation(line: 110, column: 27, scope: !1289)
!1300 = !DILocation(line: 110, column: 3, scope: !1289)
!1301 = !DILocation(line: 111, column: 11, scope: !1289)
!1302 = !DILocation(line: 111, column: 16, scope: !1289)
!1303 = !DILocation(line: 111, column: 27, scope: !1289)
!1304 = !DILocation(line: 111, column: 31, scope: !1289)
!1305 = !DILocation(line: 111, column: 3, scope: !1289)
!1306 = !DILocation(line: 112, column: 1, scope: !1289)
!1307 = distinct !DISubprogram(name: "MuxGetChunkListFromId", scope: !3, file: !3, line: 421, type: !1308, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!96, !1310, !107}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "WebPMux", file: !6, line: 67, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WebPMux", file: !21, line: 61, size: 512, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "images_", scope: !1313, file: !21, line: 62, baseType: !81, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "iccp_", scope: !1313, file: !21, line: 63, baseType: !60, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "exif_", scope: !1313, file: !21, line: 64, baseType: !60, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "xmp_", scope: !1313, file: !21, line: 65, baseType: !60, size: 64, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "anim_", scope: !1313, file: !21, line: 66, baseType: !60, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vp8x_", scope: !1313, file: !21, line: 67, baseType: !60, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "unknown_", scope: !1313, file: !21, line: 69, baseType: !60, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "canvas_width_", scope: !1313, file: !21, line: 70, baseType: !36, size: 32, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "canvas_height_", scope: !1313, file: !21, line: 71, baseType: !36, size: 32, offset: 480)
!1324 = !{!1325, !1326}
!1325 = !DILocalVariable(name: "mux", arg: 1, scope: !1307, file: !3, line: 421, type: !1310)
!1326 = !DILocalVariable(name: "id", arg: 2, scope: !1307, file: !3, line: 421, type: !107)
!1327 = !DILocation(line: 421, column: 50, scope: !1307)
!1328 = !DILocation(line: 421, column: 67, scope: !1307)
!1329 = !DILocation(line: 423, column: 11, scope: !1307)
!1330 = !DILocation(line: 423, column: 3, scope: !1307)
!1331 = !DILocation(line: 424, column: 51, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 423, column: 15)
!1333 = !DILocation(line: 424, column: 56, scope: !1332)
!1334 = !DILocation(line: 424, column: 30, scope: !1332)
!1335 = !DILocation(line: 425, column: 51, scope: !1332)
!1336 = !DILocation(line: 425, column: 56, scope: !1332)
!1337 = !DILocation(line: 425, column: 30, scope: !1332)
!1338 = !DILocation(line: 426, column: 51, scope: !1332)
!1339 = !DILocation(line: 426, column: 56, scope: !1332)
!1340 = !DILocation(line: 426, column: 30, scope: !1332)
!1341 = !DILocation(line: 427, column: 51, scope: !1332)
!1342 = !DILocation(line: 427, column: 56, scope: !1332)
!1343 = !DILocation(line: 427, column: 30, scope: !1332)
!1344 = !DILocation(line: 428, column: 51, scope: !1332)
!1345 = !DILocation(line: 428, column: 56, scope: !1332)
!1346 = !DILocation(line: 428, column: 30, scope: !1332)
!1347 = !DILocation(line: 429, column: 51, scope: !1332)
!1348 = !DILocation(line: 429, column: 56, scope: !1332)
!1349 = !DILocation(line: 429, column: 30, scope: !1332)
!1350 = !DILocation(line: 431, column: 1, scope: !1307)
!1351 = distinct !DISubprogram(name: "MuxValidate", scope: !3, file: !3, line: 457, type: !1352, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!381, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1370}
!1356 = !DILocalVariable(name: "mux", arg: 1, scope: !1351, file: !3, line: 457, type: !1354)
!1357 = !DILocalVariable(name: "num_iccp", scope: !1351, file: !3, line: 458, type: !36)
!1358 = !DILocalVariable(name: "num_exif", scope: !1351, file: !3, line: 459, type: !36)
!1359 = !DILocalVariable(name: "num_xmp", scope: !1351, file: !3, line: 460, type: !36)
!1360 = !DILocalVariable(name: "num_anim", scope: !1351, file: !3, line: 461, type: !36)
!1361 = !DILocalVariable(name: "num_frames", scope: !1351, file: !3, line: 462, type: !36)
!1362 = !DILocalVariable(name: "num_vp8x", scope: !1351, file: !3, line: 463, type: !36)
!1363 = !DILocalVariable(name: "num_images", scope: !1351, file: !3, line: 464, type: !36)
!1364 = !DILocalVariable(name: "num_alpha", scope: !1351, file: !3, line: 465, type: !36)
!1365 = !DILocalVariable(name: "flags", scope: !1351, file: !3, line: 466, type: !54)
!1366 = !DILocalVariable(name: "err", scope: !1351, file: !3, line: 467, type: !381)
!1367 = !DILocalVariable(name: "has_animation", scope: !1368, file: !3, line: 498, type: !1369)
!1368 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 497, column: 3)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!1370 = !DILocalVariable(name: "images", scope: !1371, file: !3, line: 506, type: !800)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 505, column: 25)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 505, column: 9)
!1373 = !DILocation(line: 457, column: 47, scope: !1351)
!1374 = !DILocation(line: 458, column: 3, scope: !1351)
!1375 = !DILocation(line: 458, column: 7, scope: !1351)
!1376 = !DILocation(line: 459, column: 3, scope: !1351)
!1377 = !DILocation(line: 459, column: 7, scope: !1351)
!1378 = !DILocation(line: 460, column: 3, scope: !1351)
!1379 = !DILocation(line: 460, column: 7, scope: !1351)
!1380 = !DILocation(line: 461, column: 3, scope: !1351)
!1381 = !DILocation(line: 461, column: 7, scope: !1351)
!1382 = !DILocation(line: 462, column: 3, scope: !1351)
!1383 = !DILocation(line: 462, column: 7, scope: !1351)
!1384 = !DILocation(line: 463, column: 3, scope: !1351)
!1385 = !DILocation(line: 463, column: 7, scope: !1351)
!1386 = !DILocation(line: 464, column: 3, scope: !1351)
!1387 = !DILocation(line: 464, column: 7, scope: !1351)
!1388 = !DILocation(line: 465, column: 3, scope: !1351)
!1389 = !DILocation(line: 465, column: 7, scope: !1351)
!1390 = !DILocation(line: 466, column: 3, scope: !1351)
!1391 = !DILocation(line: 466, column: 12, scope: !1351)
!1392 = !DILocation(line: 467, column: 3, scope: !1351)
!1393 = !DILocation(line: 467, column: 16, scope: !1351)
!1394 = !DILocation(line: 470, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 470, column: 7)
!1396 = !DILocation(line: 470, column: 11, scope: !1395)
!1397 = !DILocation(line: 470, column: 7, scope: !1351)
!1398 = !DILocation(line: 470, column: 20, scope: !1395)
!1399 = !DILocation(line: 473, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 473, column: 7)
!1401 = !DILocation(line: 473, column: 12, scope: !1400)
!1402 = !{!1403, !128, i64 0}
!1403 = !{!"WebPMux", !128, i64 0, !128, i64 8, !128, i64 16, !128, i64 24, !128, i64 32, !128, i64 40, !128, i64 48, !139, i64 56, !139, i64 60}
!1404 = !DILocation(line: 473, column: 20, scope: !1400)
!1405 = !DILocation(line: 473, column: 7, scope: !1351)
!1406 = !DILocation(line: 473, column: 29, scope: !1400)
!1407 = !DILocation(line: 475, column: 28, scope: !1351)
!1408 = !DILocation(line: 475, column: 9, scope: !1351)
!1409 = !DILocation(line: 475, column: 7, scope: !1351)
!1410 = !DILocation(line: 476, column: 7, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 476, column: 7)
!1412 = !DILocation(line: 476, column: 11, scope: !1411)
!1413 = !DILocation(line: 476, column: 7, scope: !1351)
!1414 = !DILocation(line: 476, column: 34, scope: !1411)
!1415 = !DILocation(line: 476, column: 27, scope: !1411)
!1416 = !DILocation(line: 479, column: 23, scope: !1351)
!1417 = !DILocation(line: 479, column: 49, scope: !1351)
!1418 = !DILocation(line: 479, column: 9, scope: !1351)
!1419 = !DILocation(line: 479, column: 7, scope: !1351)
!1420 = !DILocation(line: 480, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 480, column: 7)
!1422 = !DILocation(line: 480, column: 11, scope: !1421)
!1423 = !DILocation(line: 480, column: 7, scope: !1351)
!1424 = !DILocation(line: 480, column: 34, scope: !1421)
!1425 = !DILocation(line: 480, column: 27, scope: !1421)
!1426 = !DILocation(line: 483, column: 23, scope: !1351)
!1427 = !DILocation(line: 483, column: 49, scope: !1351)
!1428 = !DILocation(line: 483, column: 9, scope: !1351)
!1429 = !DILocation(line: 483, column: 7, scope: !1351)
!1430 = !DILocation(line: 484, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 484, column: 7)
!1432 = !DILocation(line: 484, column: 11, scope: !1431)
!1433 = !DILocation(line: 484, column: 7, scope: !1351)
!1434 = !DILocation(line: 484, column: 34, scope: !1431)
!1435 = !DILocation(line: 484, column: 27, scope: !1431)
!1436 = !DILocation(line: 487, column: 23, scope: !1351)
!1437 = !DILocation(line: 487, column: 47, scope: !1351)
!1438 = !DILocation(line: 487, column: 9, scope: !1351)
!1439 = !DILocation(line: 487, column: 7, scope: !1351)
!1440 = !DILocation(line: 488, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 488, column: 7)
!1442 = !DILocation(line: 488, column: 11, scope: !1441)
!1443 = !DILocation(line: 488, column: 7, scope: !1351)
!1444 = !DILocation(line: 488, column: 34, scope: !1441)
!1445 = !DILocation(line: 488, column: 27, scope: !1441)
!1446 = !DILocation(line: 492, column: 23, scope: !1351)
!1447 = !DILocation(line: 492, column: 47, scope: !1351)
!1448 = !DILocation(line: 492, column: 9, scope: !1351)
!1449 = !DILocation(line: 492, column: 7, scope: !1351)
!1450 = !DILocation(line: 493, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 493, column: 7)
!1452 = !DILocation(line: 493, column: 11, scope: !1451)
!1453 = !DILocation(line: 493, column: 7, scope: !1351)
!1454 = !DILocation(line: 493, column: 34, scope: !1451)
!1455 = !DILocation(line: 493, column: 27, scope: !1451)
!1456 = !DILocation(line: 494, column: 23, scope: !1351)
!1457 = !DILocation(line: 494, column: 47, scope: !1351)
!1458 = !DILocation(line: 494, column: 9, scope: !1351)
!1459 = !DILocation(line: 494, column: 7, scope: !1351)
!1460 = !DILocation(line: 495, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 495, column: 7)
!1462 = !DILocation(line: 495, column: 11, scope: !1461)
!1463 = !DILocation(line: 495, column: 7, scope: !1351)
!1464 = !DILocation(line: 495, column: 34, scope: !1461)
!1465 = !DILocation(line: 495, column: 27, scope: !1461)
!1466 = !DILocation(line: 498, column: 5, scope: !1368)
!1467 = !DILocation(line: 498, column: 15, scope: !1368)
!1468 = !DILocation(line: 498, column: 34, scope: !1368)
!1469 = !DILocation(line: 498, column: 40, scope: !1368)
!1470 = !DILocation(line: 498, column: 32, scope: !1368)
!1471 = !DILocation(line: 498, column: 31, scope: !1368)
!1472 = !DILocation(line: 499, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 499, column: 9)
!1474 = !DILocation(line: 499, column: 23, scope: !1473)
!1475 = !DILocation(line: 499, column: 27, scope: !1473)
!1476 = !DILocation(line: 499, column: 36, scope: !1473)
!1477 = !DILocation(line: 499, column: 41, scope: !1473)
!1478 = !DILocation(line: 499, column: 44, scope: !1473)
!1479 = !DILocation(line: 499, column: 55, scope: !1473)
!1480 = !DILocation(line: 499, column: 9, scope: !1368)
!1481 = !DILocation(line: 500, column: 7, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 499, column: 62)
!1483 = !DILocation(line: 502, column: 10, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 502, column: 9)
!1485 = !DILocation(line: 502, column: 24, scope: !1484)
!1486 = !DILocation(line: 502, column: 28, scope: !1484)
!1487 = !DILocation(line: 502, column: 37, scope: !1484)
!1488 = !DILocation(line: 502, column: 42, scope: !1484)
!1489 = !DILocation(line: 502, column: 45, scope: !1484)
!1490 = !DILocation(line: 502, column: 56, scope: !1484)
!1491 = !DILocation(line: 502, column: 9, scope: !1368)
!1492 = !DILocation(line: 503, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 502, column: 62)
!1494 = !DILocation(line: 505, column: 10, scope: !1372)
!1495 = !DILocation(line: 505, column: 9, scope: !1368)
!1496 = !DILocation(line: 506, column: 7, scope: !1371)
!1497 = !DILocation(line: 506, column: 27, scope: !1371)
!1498 = !DILocation(line: 506, column: 36, scope: !1371)
!1499 = !DILocation(line: 506, column: 41, scope: !1371)
!1500 = !DILocation(line: 508, column: 11, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 508, column: 11)
!1502 = !DILocation(line: 508, column: 18, scope: !1501)
!1503 = !DILocation(line: 508, column: 26, scope: !1501)
!1504 = !DILocation(line: 508, column: 29, scope: !1501)
!1505 = !DILocation(line: 508, column: 37, scope: !1501)
!1506 = !DILocation(line: 508, column: 43, scope: !1501)
!1507 = !DILocation(line: 508, column: 11, scope: !1371)
!1508 = !DILocation(line: 509, column: 9, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 508, column: 52)
!1510 = !DILocation(line: 512, column: 11, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 512, column: 11)
!1512 = !DILocation(line: 512, column: 16, scope: !1511)
!1513 = !{!1403, !139, i64 56}
!1514 = !DILocation(line: 512, column: 30, scope: !1511)
!1515 = !DILocation(line: 512, column: 11, scope: !1371)
!1516 = !DILocation(line: 513, column: 13, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 513, column: 13)
!1518 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 512, column: 35)
!1519 = !DILocation(line: 513, column: 21, scope: !1517)
!1520 = !{!790, !139, i64 32}
!1521 = !DILocation(line: 513, column: 31, scope: !1517)
!1522 = !DILocation(line: 513, column: 36, scope: !1517)
!1523 = !DILocation(line: 513, column: 28, scope: !1517)
!1524 = !DILocation(line: 513, column: 50, scope: !1517)
!1525 = !DILocation(line: 514, column: 13, scope: !1517)
!1526 = !DILocation(line: 514, column: 21, scope: !1517)
!1527 = !{!790, !139, i64 36}
!1528 = !DILocation(line: 514, column: 32, scope: !1517)
!1529 = !DILocation(line: 514, column: 37, scope: !1517)
!1530 = !{!1403, !139, i64 60}
!1531 = !DILocation(line: 514, column: 29, scope: !1517)
!1532 = !DILocation(line: 513, column: 13, scope: !1518)
!1533 = !DILocation(line: 515, column: 11, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 514, column: 53)
!1535 = !DILocation(line: 517, column: 7, scope: !1518)
!1536 = !DILocation(line: 518, column: 5, scope: !1372)
!1537 = !DILocation(line: 518, column: 5, scope: !1371)
!1538 = !DILocation(line: 519, column: 3, scope: !1351)
!1539 = !DILocation(line: 523, column: 23, scope: !1351)
!1540 = !DILocation(line: 523, column: 47, scope: !1351)
!1541 = !DILocation(line: 523, column: 9, scope: !1351)
!1542 = !DILocation(line: 523, column: 7, scope: !1351)
!1543 = !DILocation(line: 524, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 524, column: 7)
!1545 = !DILocation(line: 524, column: 11, scope: !1544)
!1546 = !DILocation(line: 524, column: 7, scope: !1351)
!1547 = !DILocation(line: 524, column: 34, scope: !1544)
!1548 = !DILocation(line: 524, column: 27, scope: !1544)
!1549 = !DILocation(line: 525, column: 23, scope: !1351)
!1550 = !DILocation(line: 525, column: 46, scope: !1351)
!1551 = !DILocation(line: 525, column: 9, scope: !1351)
!1552 = !DILocation(line: 525, column: 7, scope: !1351)
!1553 = !DILocation(line: 526, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 526, column: 7)
!1555 = !DILocation(line: 526, column: 11, scope: !1554)
!1556 = !DILocation(line: 526, column: 7, scope: !1351)
!1557 = !DILocation(line: 526, column: 34, scope: !1554)
!1558 = !DILocation(line: 526, column: 27, scope: !1554)
!1559 = !DILocation(line: 527, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 527, column: 7)
!1561 = !DILocation(line: 527, column: 16, scope: !1560)
!1562 = !DILocation(line: 527, column: 21, scope: !1560)
!1563 = !DILocation(line: 527, column: 24, scope: !1560)
!1564 = !DILocation(line: 527, column: 35, scope: !1560)
!1565 = !DILocation(line: 527, column: 7, scope: !1351)
!1566 = !DILocation(line: 527, column: 41, scope: !1560)
!1567 = !DILocation(line: 531, column: 19, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 531, column: 7)
!1569 = !DILocation(line: 531, column: 24, scope: !1568)
!1570 = !DILocation(line: 531, column: 7, scope: !1568)
!1571 = !DILocation(line: 531, column: 7, scope: !1351)
!1572 = !DILocation(line: 532, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 532, column: 9)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 531, column: 34)
!1575 = !DILocation(line: 532, column: 18, scope: !1573)
!1576 = !DILocation(line: 532, column: 9, scope: !1574)
!1577 = !DILocation(line: 534, column: 13, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 534, column: 11)
!1579 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 532, column: 23)
!1580 = !DILocation(line: 534, column: 19, scope: !1578)
!1581 = !DILocation(line: 534, column: 11, scope: !1579)
!1582 = !DILocation(line: 534, column: 34, scope: !1578)
!1583 = !DILocation(line: 535, column: 5, scope: !1579)
!1584 = !DILocation(line: 537, column: 30, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 535, column: 12)
!1586 = !DILocation(line: 537, column: 13, scope: !1585)
!1587 = !DILocation(line: 537, column: 11, scope: !1585)
!1588 = !DILocation(line: 538, column: 11, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 538, column: 11)
!1590 = !DILocation(line: 538, column: 15, scope: !1589)
!1591 = !DILocation(line: 538, column: 11, scope: !1585)
!1592 = !DILocation(line: 538, column: 38, scope: !1589)
!1593 = !DILocation(line: 538, column: 31, scope: !1589)
!1594 = !DILocation(line: 539, column: 11, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 539, column: 11)
!1596 = !DILocation(line: 539, column: 21, scope: !1595)
!1597 = !DILocation(line: 539, column: 11, scope: !1585)
!1598 = !DILocation(line: 539, column: 26, scope: !1595)
!1599 = !DILocation(line: 541, column: 3, scope: !1574)
!1600 = !DILocation(line: 543, column: 3, scope: !1351)
!1601 = !DILocation(line: 544, column: 1, scope: !1351)
!1602 = !DISubprogram(name: "WebPMuxGetFeatures", scope: !6, file: !6, line: 362, type: !1603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!381, !1310, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!1606 = distinct !DISubprogram(name: "ValidateChunk", scope: !3, file: !3, line: 443, type: !1607, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1610)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!381, !1354, !59, !97, !54, !36, !1609}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617}
!1611 = !DILocalVariable(name: "mux", arg: 1, scope: !1606, file: !3, line: 443, type: !1354)
!1612 = !DILocalVariable(name: "idx", arg: 2, scope: !1606, file: !3, line: 443, type: !59)
!1613 = !DILocalVariable(name: "feature", arg: 3, scope: !1606, file: !3, line: 444, type: !97)
!1614 = !DILocalVariable(name: "vp8x_flags", arg: 4, scope: !1606, file: !3, line: 445, type: !54)
!1615 = !DILocalVariable(name: "max", arg: 5, scope: !1606, file: !3, line: 446, type: !36)
!1616 = !DILocalVariable(name: "num", arg: 6, scope: !1606, file: !3, line: 446, type: !1609)
!1617 = !DILocalVariable(name: "err", scope: !1606, file: !3, line: 447, type: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!1619 = !DILocation(line: 443, column: 56, scope: !1606)
!1620 = !DILocation(line: 443, column: 73, scope: !1606)
!1621 = !DILocation(line: 444, column: 52, scope: !1606)
!1622 = !DILocation(line: 445, column: 44, scope: !1606)
!1623 = !DILocation(line: 446, column: 39, scope: !1606)
!1624 = !DILocation(line: 446, column: 49, scope: !1606)
!1625 = !DILocation(line: 447, column: 3, scope: !1606)
!1626 = !DILocation(line: 447, column: 22, scope: !1606)
!1627 = !DILocation(line: 448, column: 24, scope: !1606)
!1628 = !DILocation(line: 448, column: 37, scope: !1606)
!1629 = !DILocation(line: 448, column: 29, scope: !1606)
!1630 = !DILocation(line: 448, column: 42, scope: !1606)
!1631 = !DILocation(line: 448, column: 46, scope: !1606)
!1632 = !DILocation(line: 448, column: 7, scope: !1606)
!1633 = !DILocation(line: 449, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 449, column: 7)
!1635 = !DILocation(line: 449, column: 11, scope: !1634)
!1636 = !DILocation(line: 449, column: 7, scope: !1606)
!1637 = !DILocation(line: 449, column: 34, scope: !1634)
!1638 = !DILocation(line: 449, column: 27, scope: !1634)
!1639 = !DILocation(line: 450, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 450, column: 7)
!1641 = !DILocation(line: 450, column: 11, scope: !1640)
!1642 = !DILocation(line: 450, column: 16, scope: !1640)
!1643 = !DILocation(line: 450, column: 20, scope: !1640)
!1644 = !DILocation(line: 450, column: 19, scope: !1640)
!1645 = !DILocation(line: 450, column: 26, scope: !1640)
!1646 = !DILocation(line: 450, column: 24, scope: !1640)
!1647 = !DILocation(line: 450, column: 7, scope: !1606)
!1648 = !DILocation(line: 450, column: 31, scope: !1640)
!1649 = !DILocation(line: 451, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 451, column: 7)
!1651 = !DILocation(line: 451, column: 15, scope: !1650)
!1652 = !DILocation(line: 451, column: 26, scope: !1650)
!1653 = !DILocation(line: 451, column: 45, scope: !1650)
!1654 = !DILocation(line: 451, column: 58, scope: !1650)
!1655 = !DILocation(line: 451, column: 56, scope: !1650)
!1656 = !DILocation(line: 451, column: 68, scope: !1650)
!1657 = !DILocation(line: 451, column: 67, scope: !1650)
!1658 = !DILocation(line: 451, column: 29, scope: !1650)
!1659 = !DILocation(line: 451, column: 7, scope: !1606)
!1660 = !DILocation(line: 452, column: 5, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 451, column: 74)
!1662 = !DILocation(line: 454, column: 3, scope: !1606)
!1663 = !DILocation(line: 455, column: 1, scope: !1606)
!1664 = !DISubprogram(name: "WebPMuxNumChunks", scope: !6, file: !6, line: 373, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!381, !1310, !107, !1609}
!1667 = !DISubprogram(name: "WebPFree", scope: !1668, file: !1668, line: 62, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1668 = !DIFile(filename: "../../src/webp/types.h", directory: "/local-ssd/libwebp-ogk6inqjmrnmtyq4i2sug432zt64ty5a-build/aidengro/spack-stage-libwebp-1.2.4-ogk6inqjmrnmtyq4i2sug432zt64ty5a/spack-src/src/mux", checksumkind: CSK_MD5, checksum: "21e2e3ccdc6fd8cddc2c1c0eca8a9ebc")
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !58}
!1671 = distinct !DISubprogram(name: "WebPDataInit", scope: !45, file: !45, line: 65, type: !177, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1672)
!1672 = !{!1673}
!1673 = !DILocalVariable(name: "webp_data", arg: 1, scope: !1671, file: !45, line: 65, type: !179)
!1674 = !DILocation(line: 65, column: 48, scope: !1671)
!1675 = !DILocation(line: 66, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !45, line: 66, column: 7)
!1677 = !DILocation(line: 66, column: 17, scope: !1676)
!1678 = !DILocation(line: 66, column: 7, scope: !1671)
!1679 = !DILocation(line: 67, column: 12, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !45, line: 66, column: 26)
!1681 = !DILocation(line: 67, column: 5, scope: !1680)
!1682 = !DILocation(line: 68, column: 3, scope: !1680)
!1683 = !DILocation(line: 69, column: 1, scope: !1671)
!1684 = !DISubprogram(name: "WebPMalloc", scope: !1668, file: !1668, line: 59, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!58, !77}
!1687 = distinct !DISubprogram(name: "SizeWithPadding", scope: !21, file: !21, line: 149, type: !1688, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!77, !77}
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "chunk_size", arg: 1, scope: !1687, file: !21, line: 149, type: !77)
!1692 = !DILocation(line: 149, column: 50, scope: !1687)
!1693 = !DILocation(line: 151, column: 32, scope: !1687)
!1694 = !DILocation(line: 151, column: 43, scope: !1687)
!1695 = !DILocation(line: 151, column: 48, scope: !1687)
!1696 = !DILocation(line: 151, column: 28, scope: !1687)
!1697 = !DILocation(line: 151, column: 3, scope: !1687)
!1698 = distinct !DISubprogram(name: "PutLE16", scope: !538, file: !538, line: 97, type: !1699, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1267, !36}
!1701 = !{!1702, !1703}
!1702 = !DILocalVariable(name: "data", arg: 1, scope: !1698, file: !538, line: 97, type: !1267)
!1703 = !DILocalVariable(name: "val", arg: 2, scope: !1698, file: !538, line: 97, type: !36)
!1704 = !DILocation(line: 97, column: 48, scope: !1698)
!1705 = !DILocation(line: 97, column: 58, scope: !1698)
!1706 = !DILocation(line: 99, column: 14, scope: !1698)
!1707 = !DILocation(line: 99, column: 18, scope: !1698)
!1708 = !DILocation(line: 99, column: 24, scope: !1698)
!1709 = !DILocation(line: 99, column: 13, scope: !1698)
!1710 = !DILocation(line: 99, column: 3, scope: !1698)
!1711 = !DILocation(line: 99, column: 11, scope: !1698)
!1712 = !DILocation(line: 100, column: 14, scope: !1698)
!1713 = !DILocation(line: 100, column: 18, scope: !1698)
!1714 = !DILocation(line: 100, column: 24, scope: !1698)
!1715 = !DILocation(line: 100, column: 13, scope: !1698)
!1716 = !DILocation(line: 100, column: 3, scope: !1698)
!1717 = !DILocation(line: 100, column: 11, scope: !1698)
!1718 = !DILocation(line: 101, column: 1, scope: !1698)
!1719 = distinct !DISubprogram(name: "IsNotCompatible", scope: !3, file: !3, line: 433, type: !1720, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!36, !36, !36}
!1722 = !{!1723, !1724}
!1723 = !DILocalVariable(name: "feature", arg: 1, scope: !1719, file: !3, line: 433, type: !36)
!1724 = !DILocalVariable(name: "num_items", arg: 2, scope: !1719, file: !3, line: 433, type: !36)
!1725 = !DILocation(line: 433, column: 32, scope: !1719)
!1726 = !DILocation(line: 433, column: 45, scope: !1719)
!1727 = !DILocation(line: 434, column: 11, scope: !1719)
!1728 = !DILocation(line: 434, column: 19, scope: !1719)
!1729 = !DILocation(line: 434, column: 29, scope: !1719)
!1730 = !DILocation(line: 434, column: 39, scope: !1719)
!1731 = !DILocation(line: 434, column: 25, scope: !1719)
!1732 = !DILocation(line: 434, column: 3, scope: !1719)
