; ModuleID = 'samples/801.bc'
source_filename = "libnet_build_sebek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libnet_sebek_hdr = type { i32, i16, i16, i32, i32, i32, i32, i32, i32, [12 x i8], i32 }
%struct.libnet_context = type { i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, %struct.libnet_stats, i32, [64 x i8], [256 x i8], i32, %struct.libnet_ether_addr }
%struct.libnet_stats = type { i64, i64, i64 }
%struct.libnet_ether_addr = type { [6 x i8] }

@.str = private unnamed_addr constant [29 x i8] c"%s(): payload inconsistency\0A\00", align 1, !dbg !0
@__func__.libnet_build_sebek = private unnamed_addr constant [19 x i8] c"libnet_build_sebek\00", align 1, !dbg !7

; Function Attrs: nounwind uwtable
define i32 @libnet_build_sebek(i32 noundef %magic, i16 noundef zeroext %version, i16 noundef zeroext %type, i32 noundef %counter, i32 noundef %time_sec, i32 noundef %time_usec, i32 noundef %pid, i32 noundef %uid, i32 noundef %fd, ptr noundef %cmd, i32 noundef %length, ptr noundef %payload, i32 noundef %payload_s, ptr noundef %l, i32 noundef %ptag) #0 !dbg !34 {
entry:
  %retval = alloca i32, align 4
  %magic.addr = alloca i32, align 4
  %version.addr = alloca i16, align 2
  %type.addr = alloca i16, align 2
  %counter.addr = alloca i32, align 4
  %time_sec.addr = alloca i32, align 4
  %time_usec.addr = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %uid.addr = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %cmd.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %payload.addr = alloca ptr, align 8
  %payload_s.addr = alloca i32, align 4
  %l.addr = alloca ptr, align 8
  %ptag.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca ptr, align 8
  %sebek_hdr = alloca %struct.libnet_sebek_hdr, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %magic, ptr %magic.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %magic.addr, metadata !101, metadata !DIExpression()), !dbg !140
  store i16 %version, ptr %version.addr, align 2, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !102, metadata !DIExpression()), !dbg !143
  store i16 %type, ptr %type.addr, align 2, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !103, metadata !DIExpression()), !dbg !144
  store i32 %counter, ptr %counter.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !104, metadata !DIExpression()), !dbg !145
  store i32 %time_sec, ptr %time_sec.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %time_sec.addr, metadata !105, metadata !DIExpression()), !dbg !146
  store i32 %time_usec, ptr %time_usec.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %time_usec.addr, metadata !106, metadata !DIExpression()), !dbg !147
  store i32 %pid, ptr %pid.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !107, metadata !DIExpression()), !dbg !148
  store i32 %uid, ptr %uid.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !108, metadata !DIExpression()), !dbg !149
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !109, metadata !DIExpression()), !dbg !150
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !151
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !110, metadata !DIExpression()), !dbg !153
  store i32 %length, ptr %length.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !111, metadata !DIExpression()), !dbg !154
  store ptr %payload, ptr %payload.addr, align 8, !tbaa !151
  tail call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !112, metadata !DIExpression()), !dbg !155
  store i32 %payload_s, ptr %payload_s.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %payload_s.addr, metadata !113, metadata !DIExpression()), !dbg !156
  store ptr %l, ptr %l.addr, align 8, !tbaa !151
  tail call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !114, metadata !DIExpression()), !dbg !157
  store i32 %ptag, ptr %ptag.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %ptag.addr, metadata !115, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8, !dbg !159
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !116, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !161
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !117, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 48, ptr %sebek_hdr) #8, !dbg !163
  tail call void @llvm.dbg.declare(metadata ptr %sebek_hdr, metadata !118, metadata !DIExpression()), !dbg !164
  %0 = load ptr, ptr %l.addr, align 8, !dbg !165, !tbaa !151
  %cmp = icmp eq ptr %0, null, !dbg !167
  br i1 %cmp, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !169

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %payload_s.addr, align 4, !dbg !171, !tbaa !136
  %add = add i32 48, %1, !dbg !172
  store i32 %add, ptr %n, align 4, !dbg !173, !tbaa !136
  %2 = load ptr, ptr %l.addr, align 8, !dbg !174, !tbaa !151
  %3 = load i32, ptr %ptag.addr, align 4, !dbg !175, !tbaa !136
  %4 = load i32, ptr %n, align 4, !dbg !176, !tbaa !136
  %call = call ptr @libnet_pblock_probe(ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 63), !dbg !177
  store ptr %call, ptr %p, align 8, !dbg !178, !tbaa !151
  %5 = load ptr, ptr %p, align 8, !dbg !179, !tbaa !151
  %cmp1 = icmp eq ptr %5, null, !dbg !181
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !182

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !183

if.end3:                                          ; preds = %if.end
  call void @llvm.memset.p0.i64(ptr align 4 %sebek_hdr, i8 0, i64 48, i1 false), !dbg !185
  %6 = load i32, ptr %magic.addr, align 4, !dbg !186, !tbaa !136
  %call4 = call i32 @__bswap_32(i32 noundef %6), !dbg !186
  %magic5 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 0, !dbg !187
  store i32 %call4, ptr %magic5, align 4, !dbg !188, !tbaa !189
  %7 = load i16, ptr %version.addr, align 2, !dbg !191, !tbaa !141
  %call6 = call zeroext i16 @__bswap_16(i16 noundef zeroext %7), !dbg !191
  %version7 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 1, !dbg !192
  store i16 %call6, ptr %version7, align 4, !dbg !193, !tbaa !194
  %8 = load i16, ptr %type.addr, align 2, !dbg !195, !tbaa !141
  %call8 = call zeroext i16 @__bswap_16(i16 noundef zeroext %8), !dbg !195
  %type9 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 2, !dbg !196
  store i16 %call8, ptr %type9, align 2, !dbg !197, !tbaa !198
  %9 = load i32, ptr %counter.addr, align 4, !dbg !199, !tbaa !136
  %call10 = call i32 @__bswap_32(i32 noundef %9), !dbg !199
  %counter11 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 3, !dbg !200
  store i32 %call10, ptr %counter11, align 4, !dbg !201, !tbaa !202
  %10 = load i32, ptr %time_sec.addr, align 4, !dbg !203, !tbaa !136
  %call12 = call i32 @__bswap_32(i32 noundef %10), !dbg !203
  %time_sec13 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 4, !dbg !204
  store i32 %call12, ptr %time_sec13, align 4, !dbg !205, !tbaa !206
  %11 = load i32, ptr %time_usec.addr, align 4, !dbg !207, !tbaa !136
  %call14 = call i32 @__bswap_32(i32 noundef %11), !dbg !207
  %time_usec15 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 5, !dbg !208
  store i32 %call14, ptr %time_usec15, align 4, !dbg !209, !tbaa !210
  %12 = load i32, ptr %pid.addr, align 4, !dbg !211, !tbaa !136
  %call16 = call i32 @__bswap_32(i32 noundef %12), !dbg !211
  %pid17 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 6, !dbg !212
  store i32 %call16, ptr %pid17, align 4, !dbg !213, !tbaa !214
  %13 = load i32, ptr %uid.addr, align 4, !dbg !215, !tbaa !136
  %call18 = call i32 @__bswap_32(i32 noundef %13), !dbg !215
  %uid19 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 7, !dbg !216
  store i32 %call18, ptr %uid19, align 4, !dbg !217, !tbaa !218
  %14 = load i32, ptr %fd.addr, align 4, !dbg !219, !tbaa !136
  %call20 = call i32 @__bswap_32(i32 noundef %14), !dbg !219
  %fd21 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 8, !dbg !220
  store i32 %call20, ptr %fd21, align 4, !dbg !221, !tbaa !222
  %cmd22 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 9, !dbg !223
  %arraydecay = getelementptr inbounds [12 x i8], ptr %cmd22, i64 0, i64 0, !dbg !224
  %15 = load ptr, ptr %cmd.addr, align 8, !dbg !225, !tbaa !151
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 1 %15, i64 12, i1 false), !dbg !224
  %16 = load i32, ptr %length.addr, align 4, !dbg !226, !tbaa !136
  %call23 = call i32 @__bswap_32(i32 noundef %16), !dbg !226
  %length24 = getelementptr inbounds %struct.libnet_sebek_hdr, ptr %sebek_hdr, i32 0, i32 10, !dbg !227
  store i32 %call23, ptr %length24, align 4, !dbg !228, !tbaa !229
  %17 = load ptr, ptr %l.addr, align 8, !dbg !230, !tbaa !151
  %18 = load ptr, ptr %p, align 8, !dbg !231, !tbaa !151
  %call25 = call i32 @libnet_pblock_append(ptr noundef %17, ptr noundef %18, ptr noundef %sebek_hdr, i32 noundef 48), !dbg !232
  store i32 %call25, ptr %n, align 4, !dbg !233, !tbaa !136
  %19 = load i32, ptr %n, align 4, !dbg !234, !tbaa !136
  %cmp26 = icmp eq i32 %19, -1, !dbg !236
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !237

if.then27:                                        ; preds = %if.end3
  br label %bad, !dbg !238

if.end28:                                         ; preds = %if.end3
  %20 = load i32, ptr %payload_s.addr, align 4, !dbg !240, !tbaa !136
  %tobool = icmp ne i32 %20, 0, !dbg !240
  br i1 %tobool, label %land.lhs.true, label %if.end33, !dbg !240

land.lhs.true:                                    ; preds = %if.end28
  %21 = load ptr, ptr %payload.addr, align 8, !dbg !240, !tbaa !151
  %tobool29 = icmp ne ptr %21, null, !dbg !240
  br i1 %tobool29, label %if.end33, label %if.then30, !dbg !242

if.then30:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %l.addr, align 8, !dbg !243, !tbaa !151
  %err_buf = getelementptr inbounds %struct.libnet_context, ptr %22, i32 0, i32 12, !dbg !243
  %arraydecay31 = getelementptr inbounds [256 x i8], ptr %err_buf, i64 0, i64 0, !dbg !243
  %call32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay31, i64 noundef 256, ptr noundef @.str, ptr noundef @__func__.libnet_build_sebek) #8, !dbg !243
  br label %bad, !dbg !243

if.end33:                                         ; preds = %land.lhs.true, %if.end28
  %23 = load i32, ptr %payload_s.addr, align 4, !dbg !245, !tbaa !136
  %tobool34 = icmp ne i32 %23, 0, !dbg !245
  br i1 %tobool34, label %if.then35, label %if.end40, !dbg !242

if.then35:                                        ; preds = %if.end33
  %24 = load ptr, ptr %l.addr, align 8, !dbg !247, !tbaa !151
  %25 = load ptr, ptr %p, align 8, !dbg !247, !tbaa !151
  %26 = load ptr, ptr %payload.addr, align 8, !dbg !247, !tbaa !151
  %27 = load i32, ptr %payload_s.addr, align 4, !dbg !247, !tbaa !136
  %call36 = call i32 @libnet_pblock_append(ptr noundef %24, ptr noundef %25, ptr noundef %26, i32 noundef %27), !dbg !247
  store i32 %call36, ptr %n, align 4, !dbg !247, !tbaa !136
  %28 = load i32, ptr %n, align 4, !dbg !249, !tbaa !136
  %cmp37 = icmp eq i32 %28, -1, !dbg !249
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !247

if.then38:                                        ; preds = %if.then35
  br label %bad, !dbg !251

if.end39:                                         ; preds = %if.then35
  br label %if.end40, !dbg !247

if.end40:                                         ; preds = %if.end39, %if.end33
  %29 = load i32, ptr %ptag.addr, align 4, !dbg !253, !tbaa !136
  %tobool41 = icmp ne i32 %29, 0, !dbg !253
  br i1 %tobool41, label %cond.true, label %cond.false, !dbg !253

cond.true:                                        ; preds = %if.end40
  %30 = load i32, ptr %ptag.addr, align 4, !dbg !254, !tbaa !136
  br label %cond.end, !dbg !253

cond.false:                                       ; preds = %if.end40
  %31 = load ptr, ptr %l.addr, align 8, !dbg !255, !tbaa !151
  %32 = load ptr, ptr %p, align 8, !dbg !256, !tbaa !151
  %call42 = call i32 @libnet_pblock_update(ptr noundef %31, ptr noundef %32, i32 noundef 0, i8 noundef zeroext 63), !dbg !257
  br label %cond.end, !dbg !253

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %call42, %cond.false ], !dbg !253
  store i32 %cond, ptr %retval, align 4, !dbg !258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !258

bad:                                              ; preds = %if.then38, %if.then30, %if.then27
  tail call void @llvm.dbg.label(metadata !135), !dbg !259
  %33 = load ptr, ptr %l.addr, align 8, !dbg !260, !tbaa !151
  %34 = load ptr, ptr %p, align 8, !dbg !261, !tbaa !151
  call void @libnet_pblock_delete(ptr noundef %33, ptr noundef %34), !dbg !262
  store i32 -1, ptr %retval, align 4, !dbg !263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

cleanup:                                          ; preds = %bad, %cond.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr %sebek_hdr) #8, !dbg !264
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8, !dbg !264
  %35 = load i32, ptr %retval, align 4, !dbg !264
  ret i32 %35, !dbg !264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !265 ptr @libnet_pblock_probe(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__bswap_32(i32 noundef %__bsx) #4 !dbg !269 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, ptr %__bsx.addr, align 4, !tbaa !136
  tail call void @llvm.dbg.declare(metadata ptr %__bsx.addr, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = load i32, ptr %__bsx.addr, align 4, !dbg !276, !tbaa !136
  %and = and i32 %0, -16777216, !dbg !276
  %shr = lshr i32 %and, 24, !dbg !276
  %1 = load i32, ptr %__bsx.addr, align 4, !dbg !276, !tbaa !136
  %and1 = and i32 %1, 16711680, !dbg !276
  %shr2 = lshr i32 %and1, 8, !dbg !276
  %or = or i32 %shr, %shr2, !dbg !276
  %2 = load i32, ptr %__bsx.addr, align 4, !dbg !276, !tbaa !136
  %and3 = and i32 %2, 65280, !dbg !276
  %shl = shl i32 %and3, 8, !dbg !276
  %or4 = or i32 %or, %shl, !dbg !276
  %3 = load i32, ptr %__bsx.addr, align 4, !dbg !276, !tbaa !136
  %and5 = and i32 %3, 255, !dbg !276
  %shl6 = shl i32 %and5, 24, !dbg !276
  %or7 = or i32 %or4, %shl6, !dbg !276
  ret i32 %or7, !dbg !277
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #4 !dbg !278 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, ptr %__bsx.addr, align 2, !tbaa !141
  tail call void @llvm.dbg.declare(metadata ptr %__bsx.addr, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i16, ptr %__bsx.addr, align 2, !dbg !284, !tbaa !141
  %conv = zext i16 %0 to i32, !dbg !284
  %shr = ashr i32 %conv, 8, !dbg !284
  %and = and i32 %shr, 255, !dbg !284
  %1 = load i16, ptr %__bsx.addr, align 2, !dbg !284, !tbaa !141
  %conv1 = zext i16 %1 to i32, !dbg !284
  %and2 = and i32 %conv1, 255, !dbg !284
  %shl = shl i32 %and2, 8, !dbg !284
  %or = or i32 %and, %shl, !dbg !284
  %conv3 = trunc i32 %or to i16, !dbg !284
  ret i16 %conv3, !dbg !285
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !286 i32 @libnet_pblock_append(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !291 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #6

declare !dbg !301 i32 @libnet_pblock_update(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #2

declare !dbg !304 void @libnet_pblock_delete(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "libnet_build_sebek.c", directory: "/local-ssd/libnet-44s2foedgafgp7xnjpoflowb4eoodgos-build/aidengro/spack-stage-libnet-1.2-44s2foedgafgp7xnjpoflowb4eoodgos/spack-src/src", checksumkind: CSK_MD5, checksum: "5a217a1ac1d18a362a5ca05efc8e342c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 152, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 19)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !14, globals: !27, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !16, !22, !25}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 24, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !20, line: 38, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 26, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 42, baseType: !24)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !20, line: 40, baseType: !26)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!0, !7}
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!34 = distinct !DISubprogram(name: "libnet_build_sebek", scope: !2, file: !2, line: 35, type: !35, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !100)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !22, !43, !43, !22, !22, !22, !22, !22, !22, !16, !22, !44, !22, !46, !37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_ptag_t", file: !38, line: 62, baseType: !39)
!38 = !DIFile(filename: "./../include/./libnet/libnet-structures.h", directory: "/local-ssd/libnet-44s2foedgafgp7xnjpoflowb4eoodgos-build/aidengro/spack-stage-libnet-1.2-44s2foedgafgp7xnjpoflowb4eoodgos/spack-src/src", checksumkind: CSK_MD5, checksum: "488c6626acc3212495ff795e590c88af")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !40, line: 26, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 41, baseType: !42)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 25, baseType: !25)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_t", file: !38, line: 229, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_context", file: !38, line: 178, size: 3264, elements: !49)
!49 = !{!50, !51, !52, !67, !68, !69, !70, !71, !72, !74, !82, !83, !87, !91, !92}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !48, file: !38, line: 184, baseType: !42, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "injection_type", scope: !48, file: !38, line: 186, baseType: !42, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_blocks", scope: !48, file: !38, line: 198, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "libnet_pblock_t", file: !38, line: 170, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_protocol_block", file: !38, line: 69, size: 384, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !66}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !55, file: !38, line: 71, baseType: !16, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "b_len", scope: !55, file: !38, line: 72, baseType: !22, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "h_len", scope: !55, file: !38, line: 73, baseType: !43, size: 16, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "copied", scope: !55, file: !38, line: 84, baseType: !22, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !38, line: 86, baseType: !17, size: 8, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !38, line: 160, baseType: !17, size: 8, offset: 168)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ptag", scope: !55, file: !38, line: 162, baseType: !37, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !55, file: !38, line: 167, baseType: !65, size: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !55, file: !38, line: 168, baseType: !65, size: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "pblock_end", scope: !48, file: !38, line: 199, baseType: !53, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "n_pblocks", scope: !48, file: !38, line: 200, baseType: !22, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "link_type", scope: !48, file: !38, line: 202, baseType: !42, size: 32, offset: 224)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "link_offset", scope: !48, file: !38, line: 216, baseType: !42, size: 32, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "aligner", scope: !48, file: !38, line: 217, baseType: !42, size: 32, offset: 288)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !48, file: !38, line: 218, baseType: !73, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !48, file: !38, line: 220, baseType: !75, size: 192, offset: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_stats", file: !38, line: 50, size: 192, elements: !76)
!76 = !{!77, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "packets_sent", scope: !75, file: !38, line: 52, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !20, line: 44, baseType: !79)
!79 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "packet_errors", scope: !75, file: !38, line: 53, baseType: !78, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written", scope: !75, file: !38, line: 54, baseType: !78, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ptag_state", scope: !48, file: !38, line: 221, baseType: !37, size: 32, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !48, file: !38, line: 222, baseType: !84, size: 512, offset: 608)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "err_buf", scope: !48, file: !38, line: 224, baseType: !88, size: 2048, offset: 1120)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !48, file: !38, line: 225, baseType: !22, size: 32, offset: 3168)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "link_addr", scope: !48, file: !38, line: 227, baseType: !93, size: 48, offset: 3200)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_ether_addr", file: !94, line: 531, size: 48, elements: !95)
!94 = !DIFile(filename: "./../include/./libnet/libnet-headers.h", directory: "/local-ssd/libnet-44s2foedgafgp7xnjpoflowb4eoodgos-build/aidengro/spack-stage-libnet-1.2-44s2foedgafgp7xnjpoflowb4eoodgos/spack-src/src", checksumkind: CSK_MD5, checksum: "396ddbf745e2a3cedeaa9f9730cfa1f7")
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ether_addr_octet", scope: !93, file: !94, line: 533, baseType: !97, size: 48)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 48, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 6)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !135}
!101 = !DILocalVariable(name: "magic", arg: 1, scope: !34, file: !2, line: 35, type: !22)
!102 = !DILocalVariable(name: "version", arg: 2, scope: !34, file: !2, line: 35, type: !43)
!103 = !DILocalVariable(name: "type", arg: 3, scope: !34, file: !2, line: 35, type: !43)
!104 = !DILocalVariable(name: "counter", arg: 4, scope: !34, file: !2, line: 36, type: !22)
!105 = !DILocalVariable(name: "time_sec", arg: 5, scope: !34, file: !2, line: 36, type: !22)
!106 = !DILocalVariable(name: "time_usec", arg: 6, scope: !34, file: !2, line: 36, type: !22)
!107 = !DILocalVariable(name: "pid", arg: 7, scope: !34, file: !2, line: 36, type: !22)
!108 = !DILocalVariable(name: "uid", arg: 8, scope: !34, file: !2, line: 37, type: !22)
!109 = !DILocalVariable(name: "fd", arg: 9, scope: !34, file: !2, line: 37, type: !22)
!110 = !DILocalVariable(name: "cmd", arg: 10, scope: !34, file: !2, line: 37, type: !16)
!111 = !DILocalVariable(name: "length", arg: 11, scope: !34, file: !2, line: 37, type: !22)
!112 = !DILocalVariable(name: "payload", arg: 12, scope: !34, file: !2, line: 38, type: !44)
!113 = !DILocalVariable(name: "payload_s", arg: 13, scope: !34, file: !2, line: 38, type: !22)
!114 = !DILocalVariable(name: "l", arg: 14, scope: !34, file: !2, line: 38, type: !46)
!115 = !DILocalVariable(name: "ptag", arg: 15, scope: !34, file: !2, line: 38, type: !37)
!116 = !DILocalVariable(name: "n", scope: !34, file: !2, line: 40, type: !22)
!117 = !DILocalVariable(name: "p", scope: !34, file: !2, line: 41, type: !53)
!118 = !DILocalVariable(name: "sebek_hdr", scope: !34, file: !2, line: 42, type: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libnet_sebek_hdr", file: !94, line: 1741, size: 384, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !134}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !119, file: !94, line: 1743, baseType: !22, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !119, file: !94, line: 1744, baseType: !43, size: 16, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !94, line: 1746, baseType: !43, size: 16, offset: 48)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !119, file: !94, line: 1749, baseType: !22, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "time_sec", scope: !119, file: !94, line: 1750, baseType: !22, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "time_usec", scope: !119, file: !94, line: 1751, baseType: !22, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !119, file: !94, line: 1752, baseType: !22, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !119, file: !94, line: 1753, baseType: !22, size: 32, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !119, file: !94, line: 1754, baseType: !22, size: 32, offset: 224)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !119, file: !94, line: 1756, baseType: !131, size: 96, offset: 256)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 96, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 12)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !119, file: !94, line: 1757, baseType: !22, size: 32, offset: 352)
!135 = !DILabel(scope: !34, name: "bad", file: !2, line: 84)
!136 = !{!137, !137, i64 0}
!137 = !{!"int", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !DILocation(line: 35, column: 29, scope: !34)
!141 = !{!142, !142, i64 0}
!142 = !{!"short", !138, i64 0}
!143 = !DILocation(line: 35, column: 45, scope: !34)
!144 = !DILocation(line: 35, column: 63, scope: !34)
!145 = !DILocation(line: 36, column: 10, scope: !34)
!146 = !DILocation(line: 36, column: 28, scope: !34)
!147 = !DILocation(line: 36, column: 47, scope: !34)
!148 = !DILocation(line: 36, column: 67, scope: !34)
!149 = !DILocation(line: 37, column: 10, scope: !34)
!150 = !DILocation(line: 37, column: 24, scope: !34)
!151 = !{!152, !152, i64 0}
!152 = !{!"any pointer", !138, i64 0}
!153 = !DILocation(line: 37, column: 36, scope: !34)
!154 = !DILocation(line: 37, column: 68, scope: !34)
!155 = !DILocation(line: 38, column: 16, scope: !34)
!156 = !DILocation(line: 38, column: 34, scope: !34)
!157 = !DILocation(line: 38, column: 55, scope: !34)
!158 = !DILocation(line: 38, column: 72, scope: !34)
!159 = !DILocation(line: 40, column: 5, scope: !34)
!160 = !DILocation(line: 40, column: 14, scope: !34)
!161 = !DILocation(line: 41, column: 5, scope: !34)
!162 = !DILocation(line: 41, column: 22, scope: !34)
!163 = !DILocation(line: 42, column: 5, scope: !34)
!164 = !DILocation(line: 42, column: 29, scope: !34)
!165 = !DILocation(line: 44, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !34, file: !2, line: 44, column: 9)
!167 = !DILocation(line: 44, column: 11, scope: !166)
!168 = !DILocation(line: 44, column: 9, scope: !34)
!169 = !DILocation(line: 46, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !2, line: 45, column: 5)
!171 = !DILocation(line: 49, column: 26, scope: !34)
!172 = !DILocation(line: 49, column: 24, scope: !34)
!173 = !DILocation(line: 49, column: 7, scope: !34)
!174 = !DILocation(line: 55, column: 29, scope: !34)
!175 = !DILocation(line: 55, column: 32, scope: !34)
!176 = !DILocation(line: 55, column: 38, scope: !34)
!177 = !DILocation(line: 55, column: 9, scope: !34)
!178 = !DILocation(line: 55, column: 7, scope: !34)
!179 = !DILocation(line: 56, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !34, file: !2, line: 56, column: 9)
!181 = !DILocation(line: 56, column: 11, scope: !180)
!182 = !DILocation(line: 56, column: 9, scope: !34)
!183 = !DILocation(line: 58, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !2, line: 57, column: 5)
!185 = !DILocation(line: 61, column: 5, scope: !34)
!186 = !DILocation(line: 62, column: 27, scope: !34)
!187 = !DILocation(line: 62, column: 15, scope: !34)
!188 = !DILocation(line: 62, column: 25, scope: !34)
!189 = !{!190, !137, i64 0}
!190 = !{!"libnet_sebek_hdr", !137, i64 0, !142, i64 4, !142, i64 6, !137, i64 8, !137, i64 12, !137, i64 16, !137, i64 20, !137, i64 24, !137, i64 28, !138, i64 32, !137, i64 44}
!191 = !DILocation(line: 63, column: 27, scope: !34)
!192 = !DILocation(line: 63, column: 15, scope: !34)
!193 = !DILocation(line: 63, column: 25, scope: !34)
!194 = !{!190, !142, i64 4}
!195 = !DILocation(line: 64, column: 27, scope: !34)
!196 = !DILocation(line: 64, column: 15, scope: !34)
!197 = !DILocation(line: 64, column: 25, scope: !34)
!198 = !{!190, !142, i64 6}
!199 = !DILocation(line: 65, column: 27, scope: !34)
!200 = !DILocation(line: 65, column: 15, scope: !34)
!201 = !DILocation(line: 65, column: 25, scope: !34)
!202 = !{!190, !137, i64 8}
!203 = !DILocation(line: 66, column: 27, scope: !34)
!204 = !DILocation(line: 66, column: 15, scope: !34)
!205 = !DILocation(line: 66, column: 25, scope: !34)
!206 = !{!190, !137, i64 12}
!207 = !DILocation(line: 67, column: 27, scope: !34)
!208 = !DILocation(line: 67, column: 15, scope: !34)
!209 = !DILocation(line: 67, column: 25, scope: !34)
!210 = !{!190, !137, i64 16}
!211 = !DILocation(line: 68, column: 27, scope: !34)
!212 = !DILocation(line: 68, column: 15, scope: !34)
!213 = !DILocation(line: 68, column: 25, scope: !34)
!214 = !{!190, !137, i64 20}
!215 = !DILocation(line: 69, column: 27, scope: !34)
!216 = !DILocation(line: 69, column: 15, scope: !34)
!217 = !DILocation(line: 69, column: 25, scope: !34)
!218 = !{!190, !137, i64 24}
!219 = !DILocation(line: 70, column: 27, scope: !34)
!220 = !DILocation(line: 70, column: 15, scope: !34)
!221 = !DILocation(line: 70, column: 25, scope: !34)
!222 = !{!190, !137, i64 28}
!223 = !DILocation(line: 71, column: 22, scope: !34)
!224 = !DILocation(line: 71, column: 5, scope: !34)
!225 = !DILocation(line: 71, column: 27, scope: !34)
!226 = !DILocation(line: 72, column: 24, scope: !34)
!227 = !DILocation(line: 72, column: 15, scope: !34)
!228 = !DILocation(line: 72, column: 22, scope: !34)
!229 = !{!190, !137, i64 44}
!230 = !DILocation(line: 74, column: 30, scope: !34)
!231 = !DILocation(line: 74, column: 33, scope: !34)
!232 = !DILocation(line: 74, column: 9, scope: !34)
!233 = !DILocation(line: 74, column: 7, scope: !34)
!234 = !DILocation(line: 75, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !34, file: !2, line: 75, column: 9)
!236 = !DILocation(line: 75, column: 11, scope: !235)
!237 = !DILocation(line: 75, column: 9, scope: !34)
!238 = !DILocation(line: 77, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !2, line: 76, column: 5)
!240 = !DILocation(line: 81, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !34, file: !2, line: 81, column: 5)
!242 = !DILocation(line: 81, column: 5, scope: !34)
!243 = !DILocation(line: 81, column: 5, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !2, line: 81, column: 5)
!245 = !DILocation(line: 81, column: 5, scope: !246)
!246 = distinct !DILexicalBlock(scope: !34, file: !2, line: 81, column: 5)
!247 = !DILocation(line: 81, column: 5, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !2, line: 81, column: 5)
!249 = !DILocation(line: 81, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !2, line: 81, column: 5)
!251 = !DILocation(line: 81, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !2, line: 81, column: 5)
!253 = !DILocation(line: 83, column: 13, scope: !34)
!254 = !DILocation(line: 83, column: 20, scope: !34)
!255 = !DILocation(line: 83, column: 48, scope: !34)
!256 = !DILocation(line: 83, column: 51, scope: !34)
!257 = !DILocation(line: 83, column: 27, scope: !34)
!258 = !DILocation(line: 83, column: 5, scope: !34)
!259 = !DILocation(line: 84, column: 1, scope: !34)
!260 = !DILocation(line: 85, column: 26, scope: !34)
!261 = !DILocation(line: 85, column: 29, scope: !34)
!262 = !DILocation(line: 85, column: 5, scope: !34)
!263 = !DILocation(line: 86, column: 5, scope: !34)
!264 = !DILocation(line: 87, column: 1, scope: !34)
!265 = !DISubprogram(name: "libnet_pblock_probe", scope: !266, file: !266, line: 2532, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DIFile(filename: "./../include/./libnet/libnet-functions.h", directory: "/local-ssd/libnet-44s2foedgafgp7xnjpoflowb4eoodgos-build/aidengro/spack-stage-libnet-1.2-44s2foedgafgp7xnjpoflowb4eoodgos/spack-src/src", checksumkind: CSK_MD5, checksum: "19830692bab74217937b558692ad7614")
!267 = !DISubroutineType(types: !268)
!268 = !{!53, !46, !37, !22, !17}
!269 = distinct !DISubprogram(name: "__bswap_32", scope: !270, file: !270, line: 49, type: !271, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !273)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "98f83253ffd9c64e7486789204e9fa05")
!271 = !DISubroutineType(types: !272)
!272 = !{!23, !23}
!273 = !{!274}
!274 = !DILocalVariable(name: "__bsx", arg: 1, scope: !269, file: !270, line: 49, type: !23)
!275 = !DILocation(line: 49, column: 24, scope: !269)
!276 = !DILocation(line: 54, column: 10, scope: !269)
!277 = !DILocation(line: 54, column: 3, scope: !269)
!278 = distinct !DISubprogram(name: "__bswap_16", scope: !270, file: !270, line: 34, type: !279, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!25, !25}
!281 = !{!282}
!282 = !DILocalVariable(name: "__bsx", arg: 1, scope: !278, file: !270, line: 34, type: !25)
!283 = !DILocation(line: 34, column: 24, scope: !278)
!284 = !DILocation(line: 39, column: 10, scope: !278)
!285 = !DILocation(line: 39, column: 3, scope: !278)
!286 = !DISubprogram(name: "libnet_pblock_append", scope: !266, file: !266, line: 2594, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{!42, !46, !53, !289, !22}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!291 = !DISubprogram(name: "snprintf", scope: !292, file: !292, line: 378, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!293 = !DISubroutineType(types: !294)
!294 = !{!42, !295, !296, !299, null}
!295 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !297, line: 70, baseType: !298)
!297 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!298 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!301 = !DISubprogram(name: "libnet_pblock_update", scope: !266, file: !266, line: 2577, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{!37, !46, !53, !22, !17}
!304 = !DISubprogram(name: "libnet_pblock_delete", scope: !266, file: !266, line: 2567, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !46, !53}
