; ModuleID = 'samples/315.bc'
source_filename = "zip_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_string = type { ptr, i16, i32, ptr, i32 }

@_zip_string_get.empty = internal constant [1 x i8] zeroinitializer, align 1, !dbg !0

; Function Attrs: nounwind uwtable
define hidden i32 @_zip_string_crc32(ptr noundef %s) #0 !dbg !102 {
entry:
  %s.addr = alloca ptr, align 8
  %crc = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !108, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 4, ptr %crc) #8, !dbg !115
  tail call void @llvm.dbg.declare(metadata ptr %crc, metadata !109, metadata !DIExpression()), !dbg !116
  %call = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0), !dbg !117
  %conv = trunc i64 %call to i32, !dbg !118
  store i32 %conv, ptr %crc, align 4, !dbg !119, !tbaa !120
  %0 = load ptr, ptr %s.addr, align 8, !dbg !122, !tbaa !110
  %cmp = icmp ne ptr %0, null, !dbg !124
  br i1 %cmp, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %crc, align 4, !dbg !126, !tbaa !120
  %conv2 = zext i32 %1 to i64, !dbg !126
  %2 = load ptr, ptr %s.addr, align 8, !dbg !127, !tbaa !110
  %raw = getelementptr inbounds %struct.zip_string, ptr %2, i32 0, i32 0, !dbg !128
  %3 = load ptr, ptr %raw, align 8, !dbg !128, !tbaa !129
  %4 = load ptr, ptr %s.addr, align 8, !dbg !132, !tbaa !110
  %length = getelementptr inbounds %struct.zip_string, ptr %4, i32 0, i32 1, !dbg !133
  %5 = load i16, ptr %length, align 8, !dbg !133, !tbaa !134
  %conv3 = zext i16 %5 to i32, !dbg !132
  %call4 = call i64 @crc32(i64 noundef %conv2, ptr noundef %3, i32 noundef %conv3), !dbg !135
  %conv5 = trunc i64 %call4 to i32, !dbg !136
  store i32 %conv5, ptr %crc, align 4, !dbg !137, !tbaa !120
  br label %if.end, !dbg !138

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %crc, align 4, !dbg !139, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 4, ptr %crc) #8, !dbg !140
  ret i32 %6, !dbg !141
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !142 i64 @crc32(i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_zip_string_equal(ptr noundef %a, ptr noundef %b) #0 !dbg !148 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !152, metadata !DIExpression()), !dbg !154
  store ptr %b, ptr %b.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !153, metadata !DIExpression()), !dbg !155
  %0 = load ptr, ptr %a.addr, align 8, !dbg !156, !tbaa !110
  %cmp = icmp eq ptr %0, null, !dbg !158
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !159

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %b.addr, align 8, !dbg !160, !tbaa !110
  %cmp1 = icmp eq ptr %1, null, !dbg !161
  br i1 %cmp1, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %a.addr, align 8, !dbg !163, !tbaa !110
  %3 = load ptr, ptr %b.addr, align 8, !dbg !164, !tbaa !110
  %cmp2 = icmp eq ptr %2, %3, !dbg !165
  %conv = zext i1 %cmp2 to i32, !dbg !165
  store i32 %conv, ptr %retval, align 4, !dbg !166
  br label %return, !dbg !166

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %a.addr, align 8, !dbg !167, !tbaa !110
  %length = getelementptr inbounds %struct.zip_string, ptr %4, i32 0, i32 1, !dbg !169
  %5 = load i16, ptr %length, align 8, !dbg !169, !tbaa !134
  %conv3 = zext i16 %5 to i32, !dbg !167
  %6 = load ptr, ptr %b.addr, align 8, !dbg !170, !tbaa !110
  %length4 = getelementptr inbounds %struct.zip_string, ptr %6, i32 0, i32 1, !dbg !171
  %7 = load i16, ptr %length4, align 8, !dbg !171, !tbaa !134
  %conv5 = zext i16 %7 to i32, !dbg !170
  %cmp6 = icmp ne i32 %conv3, %conv5, !dbg !172
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !173

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !174
  br label %return, !dbg !174

if.end9:                                          ; preds = %if.end
  %8 = load ptr, ptr %a.addr, align 8, !dbg !175, !tbaa !110
  %raw = getelementptr inbounds %struct.zip_string, ptr %8, i32 0, i32 0, !dbg !176
  %9 = load ptr, ptr %raw, align 8, !dbg !176, !tbaa !129
  %10 = load ptr, ptr %b.addr, align 8, !dbg !177, !tbaa !110
  %raw10 = getelementptr inbounds %struct.zip_string, ptr %10, i32 0, i32 0, !dbg !178
  %11 = load ptr, ptr %raw10, align 8, !dbg !178, !tbaa !129
  %12 = load ptr, ptr %a.addr, align 8, !dbg !179, !tbaa !110
  %length11 = getelementptr inbounds %struct.zip_string, ptr %12, i32 0, i32 1, !dbg !180
  %13 = load i16, ptr %length11, align 8, !dbg !180, !tbaa !134
  %conv12 = zext i16 %13 to i64, !dbg !179
  %call = call i32 @memcmp(ptr noundef %9, ptr noundef %11, i64 noundef %conv12) #9, !dbg !181
  %cmp13 = icmp eq i32 %call, 0, !dbg !182
  %conv14 = zext i1 %cmp13 to i32, !dbg !182
  store i32 %conv14, ptr %retval, align 4, !dbg !183
  br label %return, !dbg !183

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !184
  ret i32 %14, !dbg !184
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !185 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @_zip_string_free(ptr noundef %s) #0 !dbg !191 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load ptr, ptr %s.addr, align 8, !dbg !197, !tbaa !110
  %cmp = icmp eq ptr %0, null, !dbg !199
  br i1 %cmp, label %if.then, label %if.end, !dbg !200

if.then:                                          ; preds = %entry
  br label %return, !dbg !201

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !202, !tbaa !110
  %raw = getelementptr inbounds %struct.zip_string, ptr %1, i32 0, i32 0, !dbg !203
  %2 = load ptr, ptr %raw, align 8, !dbg !203, !tbaa !129
  call void @free(ptr noundef %2) #8, !dbg !204
  %3 = load ptr, ptr %s.addr, align 8, !dbg !205, !tbaa !110
  %converted = getelementptr inbounds %struct.zip_string, ptr %3, i32 0, i32 3, !dbg !206
  %4 = load ptr, ptr %converted, align 8, !dbg !206, !tbaa !207
  call void @free(ptr noundef %4) #8, !dbg !208
  %5 = load ptr, ptr %s.addr, align 8, !dbg !209, !tbaa !110
  call void @free(ptr noundef %5) #8, !dbg !210
  br label %return, !dbg !211

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !211
}

; Function Attrs: nounwind
declare !dbg !212 void @free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define hidden ptr @_zip_string_get(ptr noundef %string, ptr noundef %lenp, i32 noundef %flags, ptr noundef %error) #0 !dbg !2 {
entry:
  %retval = alloca ptr, align 8
  %string.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %error.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !89, metadata !DIExpression()), !dbg !216
  store ptr %lenp, ptr %lenp.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !90, metadata !DIExpression()), !dbg !217
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !120
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !91, metadata !DIExpression()), !dbg !218
  store ptr %error, ptr %error.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !92, metadata !DIExpression()), !dbg !219
  %0 = load ptr, ptr %string.addr, align 8, !dbg !220, !tbaa !110
  %cmp = icmp eq ptr %0, null, !dbg !222
  br i1 %cmp, label %if.then, label %if.end2, !dbg !223

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %lenp.addr, align 8, !dbg !224, !tbaa !110
  %tobool = icmp ne ptr %1, null, !dbg !224
  br i1 %tobool, label %if.then1, label %if.end, !dbg !227

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr %lenp.addr, align 8, !dbg !228, !tbaa !110
  store i32 0, ptr %2, align 4, !dbg !229, !tbaa !120
  br label %if.end, !dbg !230

if.end:                                           ; preds = %if.then1, %if.then
  store ptr @_zip_string_get.empty, ptr %retval, align 8, !dbg !231
  br label %return, !dbg !231

if.end2:                                          ; preds = %entry
  %3 = load i32, ptr %flags.addr, align 4, !dbg !232, !tbaa !120
  %and = and i32 %3, 64, !dbg !234
  %cmp3 = icmp eq i32 %and, 0, !dbg !235
  br i1 %cmp3, label %if.then4, label %if.end33, !dbg !236

if.then4:                                         ; preds = %if.end2
  %4 = load ptr, ptr %string.addr, align 8, !dbg !237, !tbaa !110
  %encoding = getelementptr inbounds %struct.zip_string, ptr %4, i32 0, i32 2, !dbg !240
  %5 = load i32, ptr %encoding, align 4, !dbg !240, !tbaa !241
  %cmp5 = icmp eq i32 %5, 0, !dbg !242
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !243

if.then6:                                         ; preds = %if.then4
  %6 = load ptr, ptr %string.addr, align 8, !dbg !244, !tbaa !110
  %call = call i32 @_zip_guess_encoding(ptr noundef %6, i32 noundef 0), !dbg !245
  br label %if.end7, !dbg !245

if.end7:                                          ; preds = %if.then6, %if.then4
  %7 = load i32, ptr %flags.addr, align 4, !dbg !246, !tbaa !120
  %and8 = and i32 %7, 128, !dbg !248
  %tobool9 = icmp ne i32 %and8, 0, !dbg !248
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false, !dbg !249

land.lhs.true:                                    ; preds = %if.end7
  %8 = load ptr, ptr %string.addr, align 8, !dbg !250, !tbaa !110
  %encoding10 = getelementptr inbounds %struct.zip_string, ptr %8, i32 0, i32 2, !dbg !251
  %9 = load i32, ptr %encoding10, align 4, !dbg !251, !tbaa !241
  %cmp11 = icmp ne i32 %9, 1, !dbg !252
  br i1 %cmp11, label %land.lhs.true12, label %lor.lhs.false, !dbg !253

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = load ptr, ptr %string.addr, align 8, !dbg !254, !tbaa !110
  %encoding13 = getelementptr inbounds %struct.zip_string, ptr %10, i32 0, i32 2, !dbg !255
  %11 = load i32, ptr %encoding13, align 4, !dbg !255, !tbaa !241
  %cmp14 = icmp ne i32 %11, 2, !dbg !256
  br i1 %cmp14, label %if.then17, label %lor.lhs.false, !dbg !257

lor.lhs.false:                                    ; preds = %land.lhs.true12, %land.lhs.true, %if.end7
  %12 = load ptr, ptr %string.addr, align 8, !dbg !258, !tbaa !110
  %encoding15 = getelementptr inbounds %struct.zip_string, ptr %12, i32 0, i32 2, !dbg !259
  %13 = load i32, ptr %encoding15, align 4, !dbg !259, !tbaa !241
  %cmp16 = icmp eq i32 %13, 4, !dbg !260
  br i1 %cmp16, label %if.then17, label %if.end32, !dbg !261

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  %14 = load ptr, ptr %string.addr, align 8, !dbg !262, !tbaa !110
  %converted = getelementptr inbounds %struct.zip_string, ptr %14, i32 0, i32 3, !dbg !265
  %15 = load ptr, ptr %converted, align 8, !dbg !265, !tbaa !207
  %cmp18 = icmp eq ptr %15, null, !dbg !266
  br i1 %cmp18, label %if.then19, label %if.end26, !dbg !267

if.then19:                                        ; preds = %if.then17
  %16 = load ptr, ptr %string.addr, align 8, !dbg !268, !tbaa !110
  %raw = getelementptr inbounds %struct.zip_string, ptr %16, i32 0, i32 0, !dbg !271
  %17 = load ptr, ptr %raw, align 8, !dbg !271, !tbaa !129
  %18 = load ptr, ptr %string.addr, align 8, !dbg !272, !tbaa !110
  %length = getelementptr inbounds %struct.zip_string, ptr %18, i32 0, i32 1, !dbg !273
  %19 = load i16, ptr %length, align 8, !dbg !273, !tbaa !134
  %conv = zext i16 %19 to i32, !dbg !272
  %20 = load ptr, ptr %string.addr, align 8, !dbg !274, !tbaa !110
  %converted_length = getelementptr inbounds %struct.zip_string, ptr %20, i32 0, i32 4, !dbg !275
  %21 = load ptr, ptr %error.addr, align 8, !dbg !276, !tbaa !110
  %call20 = call ptr @_zip_cp437_to_utf8(ptr noundef %17, i32 noundef %conv, ptr noundef %converted_length, ptr noundef %21), !dbg !277
  %22 = load ptr, ptr %string.addr, align 8, !dbg !278, !tbaa !110
  %converted21 = getelementptr inbounds %struct.zip_string, ptr %22, i32 0, i32 3, !dbg !279
  store ptr %call20, ptr %converted21, align 8, !dbg !280, !tbaa !207
  %cmp22 = icmp eq ptr %call20, null, !dbg !281
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !282

if.then24:                                        ; preds = %if.then19
  store ptr null, ptr %retval, align 8, !dbg !283
  br label %return, !dbg !283

if.end25:                                         ; preds = %if.then19
  br label %if.end26, !dbg !284

if.end26:                                         ; preds = %if.end25, %if.then17
  %23 = load ptr, ptr %lenp.addr, align 8, !dbg !285, !tbaa !110
  %tobool27 = icmp ne ptr %23, null, !dbg !285
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !287

if.then28:                                        ; preds = %if.end26
  %24 = load ptr, ptr %string.addr, align 8, !dbg !288, !tbaa !110
  %converted_length29 = getelementptr inbounds %struct.zip_string, ptr %24, i32 0, i32 4, !dbg !289
  %25 = load i32, ptr %converted_length29, align 8, !dbg !289, !tbaa !290
  %26 = load ptr, ptr %lenp.addr, align 8, !dbg !291, !tbaa !110
  store i32 %25, ptr %26, align 4, !dbg !292, !tbaa !120
  br label %if.end30, !dbg !293

if.end30:                                         ; preds = %if.then28, %if.end26
  %27 = load ptr, ptr %string.addr, align 8, !dbg !294, !tbaa !110
  %converted31 = getelementptr inbounds %struct.zip_string, ptr %27, i32 0, i32 3, !dbg !295
  %28 = load ptr, ptr %converted31, align 8, !dbg !295, !tbaa !207
  store ptr %28, ptr %retval, align 8, !dbg !296
  br label %return, !dbg !296

if.end32:                                         ; preds = %lor.lhs.false
  br label %if.end33, !dbg !297

if.end33:                                         ; preds = %if.end32, %if.end2
  %29 = load ptr, ptr %lenp.addr, align 8, !dbg !298, !tbaa !110
  %tobool34 = icmp ne ptr %29, null, !dbg !298
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !300

if.then35:                                        ; preds = %if.end33
  %30 = load ptr, ptr %string.addr, align 8, !dbg !301, !tbaa !110
  %length36 = getelementptr inbounds %struct.zip_string, ptr %30, i32 0, i32 1, !dbg !302
  %31 = load i16, ptr %length36, align 8, !dbg !302, !tbaa !134
  %conv37 = zext i16 %31 to i32, !dbg !301
  %32 = load ptr, ptr %lenp.addr, align 8, !dbg !303, !tbaa !110
  store i32 %conv37, ptr %32, align 4, !dbg !304, !tbaa !120
  br label %if.end38, !dbg !305

if.end38:                                         ; preds = %if.then35, %if.end33
  %33 = load ptr, ptr %string.addr, align 8, !dbg !306, !tbaa !110
  %raw39 = getelementptr inbounds %struct.zip_string, ptr %33, i32 0, i32 0, !dbg !307
  %34 = load ptr, ptr %raw39, align 8, !dbg !307, !tbaa !129
  store ptr %34, ptr %retval, align 8, !dbg !308
  br label %return, !dbg !308

return:                                           ; preds = %if.end38, %if.end30, %if.then24, %if.end
  %35 = load ptr, ptr %retval, align 8, !dbg !309
  ret ptr %35, !dbg !309
}

declare !dbg !310 i32 @_zip_guess_encoding(ptr noundef, i32 noundef) #2

declare !dbg !313 ptr @_zip_cp437_to_utf8(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @_zip_string_length(ptr noundef %s) #0 !dbg !317 {
entry:
  %retval = alloca i16, align 2
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load ptr, ptr %s.addr, align 8, !dbg !323, !tbaa !110
  %cmp = icmp eq ptr %0, null, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  store i16 0, ptr %retval, align 2, !dbg !327
  br label %return, !dbg !327

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !328, !tbaa !110
  %length = getelementptr inbounds %struct.zip_string, ptr %1, i32 0, i32 1, !dbg !329
  %2 = load i16, ptr %length, align 8, !dbg !329, !tbaa !134
  store i16 %2, ptr %retval, align 2, !dbg !330
  br label %return, !dbg !330

return:                                           ; preds = %if.end, %if.then
  %3 = load i16, ptr %retval, align 2, !dbg !331
  ret i16 %3, !dbg !331
}

; Function Attrs: nounwind uwtable
define hidden ptr @_zip_string_new(ptr noundef %raw, i16 noundef zeroext %length, i32 noundef %flags, ptr noundef %error) #0 !dbg !332 {
entry:
  %retval = alloca ptr, align 8
  %raw.addr = alloca ptr, align 8
  %length.addr = alloca i16, align 2
  %flags.addr = alloca i32, align 4
  %error.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %expected_encoding = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %raw, ptr %raw.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %raw.addr, metadata !336, metadata !DIExpression()), !dbg !343
  store i16 %length, ptr %length.addr, align 2, !tbaa !344
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !337, metadata !DIExpression()), !dbg !345
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !120
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !338, metadata !DIExpression()), !dbg !346
  store ptr %error, ptr %error.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !339, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8, !dbg !348
  tail call void @llvm.dbg.declare(metadata ptr %s, metadata !340, metadata !DIExpression()), !dbg !349
  call void @llvm.lifetime.start.p0(i64 4, ptr %expected_encoding) #8, !dbg !350
  tail call void @llvm.dbg.declare(metadata ptr %expected_encoding, metadata !341, metadata !DIExpression()), !dbg !351
  %0 = load i16, ptr %length.addr, align 2, !dbg !352, !tbaa !344
  %conv = zext i16 %0 to i32, !dbg !352
  %cmp = icmp eq i32 %conv, 0, !dbg !354
  br i1 %cmp, label %if.then, label %if.end, !dbg !355

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !356

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !357, !tbaa !120
  %and = and i32 %1, 6144, !dbg !358
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 2048, label %sw.bb2
    i32 4096, label %sw.bb3
  ], !dbg !359

sw.bb:                                            ; preds = %if.end
  store i32 0, ptr %expected_encoding, align 4, !dbg !360, !tbaa !362
  br label %sw.epilog, !dbg !363

sw.bb2:                                           ; preds = %if.end
  store i32 2, ptr %expected_encoding, align 4, !dbg !364, !tbaa !362
  br label %sw.epilog, !dbg !365

sw.bb3:                                           ; preds = %if.end
  store i32 4, ptr %expected_encoding, align 4, !dbg !366, !tbaa !362
  br label %sw.epilog, !dbg !367

sw.default:                                       ; preds = %if.end
  %2 = load ptr, ptr %error.addr, align 8, !dbg !368, !tbaa !110
  call void @zip_error_set(ptr noundef %2, i32 noundef 18, i32 noundef 0), !dbg !369
  store ptr null, ptr %retval, align 8, !dbg !370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !370

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %call = call noalias ptr @malloc(i64 noundef 32) #10, !dbg !371
  store ptr %call, ptr %s, align 8, !dbg !373, !tbaa !110
  %cmp4 = icmp eq ptr %call, null, !dbg !374
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !375

if.then6:                                         ; preds = %sw.epilog
  %3 = load ptr, ptr %error.addr, align 8, !dbg !376, !tbaa !110
  call void @zip_error_set(ptr noundef %3, i32 noundef 14, i32 noundef 0), !dbg !378
  store ptr null, ptr %retval, align 8, !dbg !379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

if.end7:                                          ; preds = %sw.epilog
  %4 = load i16, ptr %length.addr, align 2, !dbg !380, !tbaa !344
  %conv8 = zext i16 %4 to i32, !dbg !380
  %add = add nsw i32 %conv8, 1, !dbg !382
  %conv9 = sext i32 %add to i64, !dbg !383
  %call10 = call noalias ptr @malloc(i64 noundef %conv9) #10, !dbg !384
  %5 = load ptr, ptr %s, align 8, !dbg !385, !tbaa !110
  %raw11 = getelementptr inbounds %struct.zip_string, ptr %5, i32 0, i32 0, !dbg !386
  store ptr %call10, ptr %raw11, align 8, !dbg !387, !tbaa !129
  %cmp12 = icmp eq ptr %call10, null, !dbg !388
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !389

if.then14:                                        ; preds = %if.end7
  %6 = load ptr, ptr %s, align 8, !dbg !390, !tbaa !110
  call void @free(ptr noundef %6) #8, !dbg !392
  store ptr null, ptr %retval, align 8, !dbg !393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !393

if.end15:                                         ; preds = %if.end7
  %7 = load ptr, ptr %s, align 8, !dbg !394, !tbaa !110
  %raw16 = getelementptr inbounds %struct.zip_string, ptr %7, i32 0, i32 0, !dbg !395
  %8 = load ptr, ptr %raw16, align 8, !dbg !395, !tbaa !129
  %9 = load ptr, ptr %raw.addr, align 8, !dbg !396, !tbaa !110
  %10 = load i16, ptr %length.addr, align 2, !dbg !397, !tbaa !344
  %conv17 = zext i16 %10 to i64, !dbg !397
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %9, i64 %conv17, i1 false), !dbg !398
  %11 = load ptr, ptr %s, align 8, !dbg !399, !tbaa !110
  %raw18 = getelementptr inbounds %struct.zip_string, ptr %11, i32 0, i32 0, !dbg !400
  %12 = load ptr, ptr %raw18, align 8, !dbg !400, !tbaa !129
  %13 = load i16, ptr %length.addr, align 2, !dbg !401, !tbaa !344
  %idxprom = zext i16 %13 to i64, !dbg !399
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 %idxprom, !dbg !399
  store i8 0, ptr %arrayidx, align 1, !dbg !402, !tbaa !362
  %14 = load i16, ptr %length.addr, align 2, !dbg !403, !tbaa !344
  %15 = load ptr, ptr %s, align 8, !dbg !404, !tbaa !110
  %length19 = getelementptr inbounds %struct.zip_string, ptr %15, i32 0, i32 1, !dbg !405
  store i16 %14, ptr %length19, align 8, !dbg !406, !tbaa !134
  %16 = load ptr, ptr %s, align 8, !dbg !407, !tbaa !110
  %encoding = getelementptr inbounds %struct.zip_string, ptr %16, i32 0, i32 2, !dbg !408
  store i32 0, ptr %encoding, align 4, !dbg !409, !tbaa !241
  %17 = load ptr, ptr %s, align 8, !dbg !410, !tbaa !110
  %converted = getelementptr inbounds %struct.zip_string, ptr %17, i32 0, i32 3, !dbg !411
  store ptr null, ptr %converted, align 8, !dbg !412, !tbaa !207
  %18 = load ptr, ptr %s, align 8, !dbg !413, !tbaa !110
  %converted_length = getelementptr inbounds %struct.zip_string, ptr %18, i32 0, i32 4, !dbg !414
  store i32 0, ptr %converted_length, align 8, !dbg !415, !tbaa !290
  %19 = load i32, ptr %expected_encoding, align 4, !dbg !416, !tbaa !362
  %cmp20 = icmp ne i32 %19, 0, !dbg !418
  br i1 %cmp20, label %if.then22, label %if.end28, !dbg !419

if.then22:                                        ; preds = %if.end15
  %20 = load ptr, ptr %s, align 8, !dbg !420, !tbaa !110
  %21 = load i32, ptr %expected_encoding, align 4, !dbg !423, !tbaa !362
  %call23 = call i32 @_zip_guess_encoding(ptr noundef %20, i32 noundef %21), !dbg !424
  %cmp24 = icmp eq i32 %call23, 5, !dbg !425
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !426

if.then26:                                        ; preds = %if.then22
  %22 = load ptr, ptr %s, align 8, !dbg !427, !tbaa !110
  call void @_zip_string_free(ptr noundef %22), !dbg !429
  %23 = load ptr, ptr %error.addr, align 8, !dbg !430, !tbaa !110
  call void @zip_error_set(ptr noundef %23, i32 noundef 18, i32 noundef 0), !dbg !431
  store ptr null, ptr %retval, align 8, !dbg !432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !432

if.end27:                                         ; preds = %if.then22
  br label %if.end28, !dbg !433

if.end28:                                         ; preds = %if.end27, %if.end15
  %24 = load ptr, ptr %s, align 8, !dbg !434, !tbaa !110
  store ptr %24, ptr %retval, align 8, !dbg !435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !435

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then14, %if.then6, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %expected_encoding) #8, !dbg !436
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8, !dbg !436
  %25 = load ptr, ptr %retval, align 8, !dbg !436
  ret ptr %25, !dbg !436
}

declare !dbg !437 void @zip_error_set(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind allocsize(0)
declare !dbg !440 noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define hidden i32 @_zip_string_write(ptr noundef %za, ptr noundef %s) #0 !dbg !443 {
entry:
  %retval = alloca i32, align 4
  %za.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %za, ptr %za.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %za.addr, metadata !562, metadata !DIExpression()), !dbg !564
  store ptr %s, ptr %s.addr, align 8, !tbaa !110
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !563, metadata !DIExpression()), !dbg !565
  %0 = load ptr, ptr %s.addr, align 8, !dbg !566, !tbaa !110
  %cmp = icmp eq ptr %0, null, !dbg !568
  br i1 %cmp, label %if.then, label %if.end, !dbg !569

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !570
  br label %return, !dbg !570

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %za.addr, align 8, !dbg !571, !tbaa !110
  %2 = load ptr, ptr %s.addr, align 8, !dbg !572, !tbaa !110
  %raw = getelementptr inbounds %struct.zip_string, ptr %2, i32 0, i32 0, !dbg !573
  %3 = load ptr, ptr %raw, align 8, !dbg !573, !tbaa !129
  %4 = load ptr, ptr %s.addr, align 8, !dbg !574, !tbaa !110
  %length = getelementptr inbounds %struct.zip_string, ptr %4, i32 0, i32 1, !dbg !575
  %5 = load i16, ptr %length, align 8, !dbg !575, !tbaa !134
  %conv = zext i16 %5 to i64, !dbg !574
  %call = call i32 @_zip_write(ptr noundef %1, ptr noundef %3, i64 noundef %conv), !dbg !576
  store i32 %call, ptr %retval, align 4, !dbg !577
  br label %return, !dbg !577

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !578
  ret i32 %6, !dbg !578
}

declare !dbg !579 i32 @_zip_write(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!55}
!llvm.module.flags = !{!96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "empty", scope: !2, file: !3, line: 85, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "_zip_string_get", scope: !3, file: !3, line: 83, type: !4, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !88)
!3 = !DIFile(filename: "zip_string.c", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "49d641811aa3c069673c7d0785425168")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !15, !42, !43, !45}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint8_t", file: !9, line: 22, baseType: !10)
!9 = !DIFile(filename: "./zipconf.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "7cb5f99232d7b54e05c9f9d3c2375652")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 24, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !13, line: 38, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_string_t", file: !17, line: 206, baseType: !18)
!17 = !DIFile(filename: "./zipint.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "9cf4a3b80decb4346dbb92f349ffcae6")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_string", file: !17, line: 351, size: 256, elements: !19)
!19 = !{!20, !22, !27, !37, !38}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !18, file: !17, line: 352, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !18, file: !17, line: 353, baseType: !23, size: 16, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint16_t", file: !9, line: 29, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !11, line: 25, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !13, line: 40, baseType: !26)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !18, file: !17, line: 354, baseType: !28, size: 32, offset: 96)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_encoding_type", file: !17, line: 188, baseType: !29, size: 32, elements: !30)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "ZIP_ENCODING_UNKNOWN", value: 0)
!32 = !DIEnumerator(name: "ZIP_ENCODING_ASCII", value: 1)
!33 = !DIEnumerator(name: "ZIP_ENCODING_UTF8_KNOWN", value: 2)
!34 = !DIEnumerator(name: "ZIP_ENCODING_UTF8_GUESSED", value: 3)
!35 = !DIEnumerator(name: "ZIP_ENCODING_CP437", value: 4)
!36 = !DIEnumerator(name: "ZIP_ENCODING_ERROR", value: 5)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "converted", scope: !18, file: !17, line: 355, baseType: !21, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "converted_length", scope: !18, file: !17, line: 356, baseType: !39, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint32_t", file: !9, line: 36, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !11, line: 26, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !13, line: 42, baseType: !29)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_flags_t", file: !44, line: 309, baseType: !39)
!44 = !DIFile(filename: "./zip.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "6758aaa3e0d08949c1a3d4b0a3aed88b")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_error_t", file: !44, line: 304, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_error", file: !44, line: 270, size: 128, elements: !48)
!48 = !{!49, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "zip_err", scope: !47, file: !44, line: 271, baseType: !50, size: 32)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "sys_err", scope: !47, file: !44, line: 272, baseType: !50, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !47, file: !44, line: 273, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !82, globals: !87, splitDebugInlining: false, nameTableKind: None)
!56 = !{!28, !57, !76}
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_source_cmd", file: !44, line: 214, baseType: !29, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!59 = !DIEnumerator(name: "ZIP_SOURCE_OPEN", value: 0)
!60 = !DIEnumerator(name: "ZIP_SOURCE_READ", value: 1)
!61 = !DIEnumerator(name: "ZIP_SOURCE_CLOSE", value: 2)
!62 = !DIEnumerator(name: "ZIP_SOURCE_STAT", value: 3)
!63 = !DIEnumerator(name: "ZIP_SOURCE_ERROR", value: 4)
!64 = !DIEnumerator(name: "ZIP_SOURCE_FREE", value: 5)
!65 = !DIEnumerator(name: "ZIP_SOURCE_SEEK", value: 6)
!66 = !DIEnumerator(name: "ZIP_SOURCE_TELL", value: 7)
!67 = !DIEnumerator(name: "ZIP_SOURCE_BEGIN_WRITE", value: 8)
!68 = !DIEnumerator(name: "ZIP_SOURCE_COMMIT_WRITE", value: 9)
!69 = !DIEnumerator(name: "ZIP_SOURCE_ROLLBACK_WRITE", value: 10)
!70 = !DIEnumerator(name: "ZIP_SOURCE_WRITE", value: 11)
!71 = !DIEnumerator(name: "ZIP_SOURCE_SEEK_WRITE", value: 12)
!72 = !DIEnumerator(name: "ZIP_SOURCE_TELL_WRITE", value: 13)
!73 = !DIEnumerator(name: "ZIP_SOURCE_SUPPORTS", value: 14)
!74 = !DIEnumerator(name: "ZIP_SOURCE_REMOVE", value: 15)
!75 = !DIEnumerator(name: "ZIP_SOURCE_GET_COMPRESSION_FLAGS", value: 16)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_source_write_state", file: !17, line: 310, baseType: !29, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81}
!78 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_CLOSED", value: 0)
!79 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_OPEN", value: 1)
!80 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_FAILED", value: 2)
!81 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_REMOVED", value: 3)
!82 = !{!39, !83, !15, !21, !84}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 70, baseType: !86)
!85 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !{!0}
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(name: "string", arg: 1, scope: !2, file: !3, line: 83, type: !15)
!90 = !DILocalVariable(name: "lenp", arg: 2, scope: !2, file: !3, line: 83, type: !42)
!91 = !DILocalVariable(name: "flags", arg: 3, scope: !2, file: !3, line: 83, type: !43)
!92 = !DILocalVariable(name: "error", arg: 4, scope: !2, file: !3, line: 83, type: !45)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !{i32 7, !"Dwarf Version", i32 5}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{i32 1, !"wchar_size", i32 4}
!99 = !{i32 8, !"PIC Level", i32 2}
!100 = !{i32 7, !"uwtable", i32 2}
!101 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!102 = distinct !DISubprogram(name: "_zip_string_crc32", scope: !3, file: !3, line: 42, type: !103, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !107)
!103 = !DISubroutineType(types: !104)
!104 = !{!39, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!107 = !{!108, !109}
!108 = !DILocalVariable(name: "s", arg: 1, scope: !102, file: !3, line: 42, type: !105)
!109 = !DILocalVariable(name: "crc", scope: !102, file: !3, line: 44, type: !39)
!110 = !{!111, !111, i64 0}
!111 = !{!"any pointer", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !DILocation(line: 42, column: 39, scope: !102)
!115 = !DILocation(line: 44, column: 5, scope: !102)
!116 = !DILocation(line: 44, column: 18, scope: !102)
!117 = !DILocation(line: 46, column: 25, scope: !102)
!118 = !DILocation(line: 46, column: 11, scope: !102)
!119 = !DILocation(line: 46, column: 9, scope: !102)
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !112, i64 0}
!122 = !DILocation(line: 48, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !102, file: !3, line: 48, column: 9)
!124 = !DILocation(line: 48, column: 11, scope: !123)
!125 = !DILocation(line: 48, column: 9, scope: !102)
!126 = !DILocation(line: 49, column: 28, scope: !123)
!127 = !DILocation(line: 49, column: 33, scope: !123)
!128 = !DILocation(line: 49, column: 36, scope: !123)
!129 = !{!130, !111, i64 0}
!130 = !{!"zip_string", !111, i64 0, !131, i64 8, !112, i64 12, !111, i64 16, !121, i64 24}
!131 = !{!"short", !112, i64 0}
!132 = !DILocation(line: 49, column: 41, scope: !123)
!133 = !DILocation(line: 49, column: 44, scope: !123)
!134 = !{!130, !131, i64 8}
!135 = !DILocation(line: 49, column: 22, scope: !123)
!136 = !DILocation(line: 49, column: 8, scope: !123)
!137 = !DILocation(line: 49, column: 6, scope: !123)
!138 = !DILocation(line: 49, column: 2, scope: !123)
!139 = !DILocation(line: 51, column: 12, scope: !102)
!140 = !DILocation(line: 52, column: 1, scope: !102)
!141 = !DILocation(line: 51, column: 5, scope: !102)
!142 = !DISubprogram(name: "crc32", scope: !143, file: !143, line: 1705, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_/linux-ubuntu22.04-zen2/clang-18.0.0/zlib-ng-2.1.4-lf6r7k4krys7xeuhd6faiwtpvvvf43ts/include/zlib.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build", checksumkind: CSK_MD5, checksum: "6de5f76a2b2462480db006f0a81f31fb")
!144 = !DISubroutineType(types: !145)
!145 = !{!86, !86, !146, !29}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!148 = distinct !DISubprogram(name: "_zip_string_equal", scope: !3, file: !3, line: 56, type: !149, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!50, !105, !105}
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "a", arg: 1, scope: !148, file: !3, line: 56, type: !105)
!153 = !DILocalVariable(name: "b", arg: 2, scope: !148, file: !3, line: 56, type: !105)
!154 = !DILocation(line: 56, column: 39, scope: !148)
!155 = !DILocation(line: 56, column: 62, scope: !148)
!156 = !DILocation(line: 58, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !148, file: !3, line: 58, column: 9)
!158 = !DILocation(line: 58, column: 11, scope: !157)
!159 = !DILocation(line: 58, column: 19, scope: !157)
!160 = !DILocation(line: 58, column: 22, scope: !157)
!161 = !DILocation(line: 58, column: 24, scope: !157)
!162 = !DILocation(line: 58, column: 9, scope: !148)
!163 = !DILocation(line: 59, column: 9, scope: !157)
!164 = !DILocation(line: 59, column: 14, scope: !157)
!165 = !DILocation(line: 59, column: 11, scope: !157)
!166 = !DILocation(line: 59, column: 2, scope: !157)
!167 = !DILocation(line: 61, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !148, file: !3, line: 61, column: 9)
!169 = !DILocation(line: 61, column: 12, scope: !168)
!170 = !DILocation(line: 61, column: 22, scope: !168)
!171 = !DILocation(line: 61, column: 25, scope: !168)
!172 = !DILocation(line: 61, column: 19, scope: !168)
!173 = !DILocation(line: 61, column: 9, scope: !148)
!174 = !DILocation(line: 62, column: 2, scope: !168)
!175 = !DILocation(line: 66, column: 20, scope: !148)
!176 = !DILocation(line: 66, column: 23, scope: !148)
!177 = !DILocation(line: 66, column: 28, scope: !148)
!178 = !DILocation(line: 66, column: 31, scope: !148)
!179 = !DILocation(line: 66, column: 36, scope: !148)
!180 = !DILocation(line: 66, column: 39, scope: !148)
!181 = !DILocation(line: 66, column: 13, scope: !148)
!182 = !DILocation(line: 66, column: 47, scope: !148)
!183 = !DILocation(line: 66, column: 5, scope: !148)
!184 = !DILocation(line: 67, column: 1, scope: !148)
!185 = !DISubprogram(name: "memcmp", scope: !186, file: !186, line: 64, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!187 = !DISubroutineType(types: !188)
!188 = !{!50, !189, !189, !84}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!191 = distinct !DISubprogram(name: "_zip_string_free", scope: !3, file: !3, line: 71, type: !192, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !15}
!194 = !{!195}
!195 = !DILocalVariable(name: "s", arg: 1, scope: !191, file: !3, line: 71, type: !15)
!196 = !DILocation(line: 71, column: 32, scope: !191)
!197 = !DILocation(line: 73, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !191, file: !3, line: 73, column: 9)
!199 = !DILocation(line: 73, column: 11, scope: !198)
!200 = !DILocation(line: 73, column: 9, scope: !191)
!201 = !DILocation(line: 74, column: 2, scope: !198)
!202 = !DILocation(line: 76, column: 10, scope: !191)
!203 = !DILocation(line: 76, column: 13, scope: !191)
!204 = !DILocation(line: 76, column: 5, scope: !191)
!205 = !DILocation(line: 77, column: 10, scope: !191)
!206 = !DILocation(line: 77, column: 13, scope: !191)
!207 = !{!130, !111, i64 16}
!208 = !DILocation(line: 77, column: 5, scope: !191)
!209 = !DILocation(line: 78, column: 10, scope: !191)
!210 = !DILocation(line: 78, column: 5, scope: !191)
!211 = !DILocation(line: 79, column: 1, scope: !191)
!212 = !DISubprogram(name: "free", scope: !213, file: !213, line: 555, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!213 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!214 = !DISubroutineType(types: !215)
!215 = !{null, !83}
!216 = !DILocation(line: 83, column: 31, scope: !2)
!217 = !DILocation(line: 83, column: 53, scope: !2)
!218 = !DILocation(line: 83, column: 71, scope: !2)
!219 = !DILocation(line: 83, column: 91, scope: !2)
!220 = !DILocation(line: 87, column: 9, scope: !221)
!221 = distinct !DILexicalBlock(scope: !2, file: !3, line: 87, column: 9)
!222 = !DILocation(line: 87, column: 16, scope: !221)
!223 = !DILocation(line: 87, column: 9, scope: !2)
!224 = !DILocation(line: 88, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 88, column: 6)
!226 = distinct !DILexicalBlock(scope: !221, file: !3, line: 87, column: 25)
!227 = !DILocation(line: 88, column: 6, scope: !226)
!228 = !DILocation(line: 89, column: 7, scope: !225)
!229 = !DILocation(line: 89, column: 12, scope: !225)
!230 = !DILocation(line: 89, column: 6, scope: !225)
!231 = !DILocation(line: 90, column: 2, scope: !226)
!232 = !DILocation(line: 93, column: 10, scope: !233)
!233 = distinct !DILexicalBlock(scope: !2, file: !3, line: 93, column: 9)
!234 = !DILocation(line: 93, column: 16, scope: !233)
!235 = !DILocation(line: 93, column: 34, scope: !233)
!236 = !DILocation(line: 93, column: 9, scope: !2)
!237 = !DILocation(line: 95, column: 6, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 95, column: 6)
!239 = distinct !DILexicalBlock(scope: !233, file: !3, line: 93, column: 40)
!240 = !DILocation(line: 95, column: 14, scope: !238)
!241 = !{!130, !112, i64 12}
!242 = !DILocation(line: 95, column: 23, scope: !238)
!243 = !DILocation(line: 95, column: 6, scope: !239)
!244 = !DILocation(line: 96, column: 26, scope: !238)
!245 = !DILocation(line: 96, column: 6, scope: !238)
!246 = !DILocation(line: 98, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !239, file: !3, line: 98, column: 6)
!248 = !DILocation(line: 98, column: 14, scope: !247)
!249 = !DILocation(line: 99, column: 7, scope: !247)
!250 = !DILocation(line: 99, column: 10, scope: !247)
!251 = !DILocation(line: 99, column: 18, scope: !247)
!252 = !DILocation(line: 99, column: 27, scope: !247)
!253 = !DILocation(line: 99, column: 49, scope: !247)
!254 = !DILocation(line: 99, column: 52, scope: !247)
!255 = !DILocation(line: 99, column: 60, scope: !247)
!256 = !DILocation(line: 99, column: 69, scope: !247)
!257 = !DILocation(line: 100, column: 6, scope: !247)
!258 = !DILocation(line: 100, column: 10, scope: !247)
!259 = !DILocation(line: 100, column: 18, scope: !247)
!260 = !DILocation(line: 100, column: 27, scope: !247)
!261 = !DILocation(line: 98, column: 6, scope: !239)
!262 = !DILocation(line: 101, column: 10, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 101, column: 10)
!264 = distinct !DILexicalBlock(scope: !247, file: !3, line: 100, column: 51)
!265 = !DILocation(line: 101, column: 18, scope: !263)
!266 = !DILocation(line: 101, column: 28, scope: !263)
!267 = !DILocation(line: 101, column: 10, scope: !264)
!268 = !DILocation(line: 102, column: 45, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 102, column: 7)
!270 = distinct !DILexicalBlock(scope: !263, file: !3, line: 101, column: 37)
!271 = !DILocation(line: 102, column: 53, scope: !269)
!272 = !DILocation(line: 102, column: 58, scope: !269)
!273 = !DILocation(line: 102, column: 66, scope: !269)
!274 = !DILocation(line: 103, column: 11, scope: !269)
!275 = !DILocation(line: 103, column: 19, scope: !269)
!276 = !DILocation(line: 103, column: 37, scope: !269)
!277 = !DILocation(line: 102, column: 26, scope: !269)
!278 = !DILocation(line: 102, column: 8, scope: !269)
!279 = !DILocation(line: 102, column: 16, scope: !269)
!280 = !DILocation(line: 102, column: 25, scope: !269)
!281 = !DILocation(line: 103, column: 45, scope: !269)
!282 = !DILocation(line: 102, column: 7, scope: !270)
!283 = !DILocation(line: 104, column: 7, scope: !269)
!284 = !DILocation(line: 105, column: 6, scope: !270)
!285 = !DILocation(line: 106, column: 10, scope: !286)
!286 = distinct !DILexicalBlock(scope: !264, file: !3, line: 106, column: 10)
!287 = !DILocation(line: 106, column: 10, scope: !264)
!288 = !DILocation(line: 107, column: 11, scope: !286)
!289 = !DILocation(line: 107, column: 19, scope: !286)
!290 = !{!130, !121, i64 24}
!291 = !DILocation(line: 107, column: 4, scope: !286)
!292 = !DILocation(line: 107, column: 9, scope: !286)
!293 = !DILocation(line: 107, column: 3, scope: !286)
!294 = !DILocation(line: 108, column: 13, scope: !264)
!295 = !DILocation(line: 108, column: 21, scope: !264)
!296 = !DILocation(line: 108, column: 6, scope: !264)
!297 = !DILocation(line: 110, column: 5, scope: !239)
!298 = !DILocation(line: 112, column: 9, scope: !299)
!299 = distinct !DILexicalBlock(scope: !2, file: !3, line: 112, column: 9)
!300 = !DILocation(line: 112, column: 9, scope: !2)
!301 = !DILocation(line: 113, column: 10, scope: !299)
!302 = !DILocation(line: 113, column: 18, scope: !299)
!303 = !DILocation(line: 113, column: 3, scope: !299)
!304 = !DILocation(line: 113, column: 8, scope: !299)
!305 = !DILocation(line: 113, column: 2, scope: !299)
!306 = !DILocation(line: 114, column: 12, scope: !2)
!307 = !DILocation(line: 114, column: 20, scope: !2)
!308 = !DILocation(line: 114, column: 5, scope: !2)
!309 = !DILocation(line: 115, column: 1, scope: !2)
!310 = !DISubprogram(name: "_zip_guess_encoding", scope: !17, file: !17, line: 480, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!28, !15, !28}
!313 = !DISubprogram(name: "_zip_cp437_to_utf8", scope: !17, file: !17, line: 481, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!21, !316, !39, !42, !45}
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!317 = distinct !DISubprogram(name: "_zip_string_length", scope: !3, file: !3, line: 119, type: !318, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!23, !105}
!320 = !{!321}
!321 = !DILocalVariable(name: "s", arg: 1, scope: !317, file: !3, line: 119, type: !105)
!322 = !DILocation(line: 119, column: 40, scope: !317)
!323 = !DILocation(line: 121, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !317, file: !3, line: 121, column: 9)
!325 = !DILocation(line: 121, column: 11, scope: !324)
!326 = !DILocation(line: 121, column: 9, scope: !317)
!327 = !DILocation(line: 122, column: 2, scope: !324)
!328 = !DILocation(line: 124, column: 12, scope: !317)
!329 = !DILocation(line: 124, column: 15, scope: !317)
!330 = !DILocation(line: 124, column: 5, scope: !317)
!331 = !DILocation(line: 125, column: 1, scope: !317)
!332 = distinct !DISubprogram(name: "_zip_string_new", scope: !3, file: !3, line: 129, type: !333, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{!15, !6, !23, !43, !45}
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DILocalVariable(name: "raw", arg: 1, scope: !332, file: !3, line: 129, type: !6)
!337 = !DILocalVariable(name: "length", arg: 2, scope: !332, file: !3, line: 129, type: !23)
!338 = !DILocalVariable(name: "flags", arg: 3, scope: !332, file: !3, line: 129, type: !43)
!339 = !DILocalVariable(name: "error", arg: 4, scope: !332, file: !3, line: 129, type: !45)
!340 = !DILocalVariable(name: "s", scope: !332, file: !3, line: 131, type: !15)
!341 = !DILocalVariable(name: "expected_encoding", scope: !332, file: !3, line: 132, type: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_encoding_type_t", file: !17, line: 197, baseType: !28)
!343 = !DILocation(line: 129, column: 36, scope: !332)
!344 = !{!131, !131, i64 0}
!345 = !DILocation(line: 129, column: 54, scope: !332)
!346 = !DILocation(line: 129, column: 74, scope: !332)
!347 = !DILocation(line: 129, column: 94, scope: !332)
!348 = !DILocation(line: 131, column: 5, scope: !332)
!349 = !DILocation(line: 131, column: 19, scope: !332)
!350 = !DILocation(line: 132, column: 5, scope: !332)
!351 = !DILocation(line: 132, column: 25, scope: !332)
!352 = !DILocation(line: 134, column: 9, scope: !353)
!353 = distinct !DILexicalBlock(scope: !332, file: !3, line: 134, column: 9)
!354 = !DILocation(line: 134, column: 16, scope: !353)
!355 = !DILocation(line: 134, column: 9, scope: !332)
!356 = !DILocation(line: 135, column: 2, scope: !353)
!357 = !DILocation(line: 137, column: 13, scope: !332)
!358 = !DILocation(line: 137, column: 19, scope: !332)
!359 = !DILocation(line: 137, column: 5, scope: !332)
!360 = !DILocation(line: 139, column: 20, scope: !361)
!361 = distinct !DILexicalBlock(scope: !332, file: !3, line: 137, column: 42)
!362 = !{!112, !112, i64 0}
!363 = !DILocation(line: 140, column: 2, scope: !361)
!364 = !DILocation(line: 142, column: 20, scope: !361)
!365 = !DILocation(line: 143, column: 2, scope: !361)
!366 = !DILocation(line: 145, column: 20, scope: !361)
!367 = !DILocation(line: 146, column: 2, scope: !361)
!368 = !DILocation(line: 148, column: 16, scope: !361)
!369 = !DILocation(line: 148, column: 2, scope: !361)
!370 = !DILocation(line: 149, column: 2, scope: !361)
!371 = !DILocation(line: 152, column: 28, scope: !372)
!372 = distinct !DILexicalBlock(scope: !332, file: !3, line: 152, column: 9)
!373 = !DILocation(line: 152, column: 11, scope: !372)
!374 = !DILocation(line: 152, column: 48, scope: !372)
!375 = !DILocation(line: 152, column: 9, scope: !332)
!376 = !DILocation(line: 153, column: 16, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 152, column: 57)
!378 = !DILocation(line: 153, column: 2, scope: !377)
!379 = !DILocation(line: 154, column: 2, scope: !377)
!380 = !DILocation(line: 157, column: 48, scope: !381)
!381 = distinct !DILexicalBlock(scope: !332, file: !3, line: 157, column: 9)
!382 = !DILocation(line: 157, column: 54, scope: !381)
!383 = !DILocation(line: 157, column: 39, scope: !381)
!384 = !DILocation(line: 157, column: 32, scope: !381)
!385 = !DILocation(line: 157, column: 10, scope: !381)
!386 = !DILocation(line: 157, column: 13, scope: !381)
!387 = !DILocation(line: 157, column: 16, scope: !381)
!388 = !DILocation(line: 157, column: 60, scope: !381)
!389 = !DILocation(line: 157, column: 9, scope: !332)
!390 = !DILocation(line: 158, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !381, file: !3, line: 157, column: 69)
!392 = !DILocation(line: 158, column: 2, scope: !391)
!393 = !DILocation(line: 159, column: 2, scope: !391)
!394 = !DILocation(line: 162, column: 12, scope: !332)
!395 = !DILocation(line: 162, column: 15, scope: !332)
!396 = !DILocation(line: 162, column: 20, scope: !332)
!397 = !DILocation(line: 162, column: 25, scope: !332)
!398 = !DILocation(line: 162, column: 5, scope: !332)
!399 = !DILocation(line: 163, column: 5, scope: !332)
!400 = !DILocation(line: 163, column: 8, scope: !332)
!401 = !DILocation(line: 163, column: 12, scope: !332)
!402 = !DILocation(line: 163, column: 20, scope: !332)
!403 = !DILocation(line: 164, column: 17, scope: !332)
!404 = !DILocation(line: 164, column: 5, scope: !332)
!405 = !DILocation(line: 164, column: 8, scope: !332)
!406 = !DILocation(line: 164, column: 15, scope: !332)
!407 = !DILocation(line: 165, column: 5, scope: !332)
!408 = !DILocation(line: 165, column: 8, scope: !332)
!409 = !DILocation(line: 165, column: 17, scope: !332)
!410 = !DILocation(line: 166, column: 5, scope: !332)
!411 = !DILocation(line: 166, column: 8, scope: !332)
!412 = !DILocation(line: 166, column: 18, scope: !332)
!413 = !DILocation(line: 167, column: 5, scope: !332)
!414 = !DILocation(line: 167, column: 8, scope: !332)
!415 = !DILocation(line: 167, column: 25, scope: !332)
!416 = !DILocation(line: 169, column: 9, scope: !417)
!417 = distinct !DILexicalBlock(scope: !332, file: !3, line: 169, column: 9)
!418 = !DILocation(line: 169, column: 27, scope: !417)
!419 = !DILocation(line: 169, column: 9, scope: !332)
!420 = !DILocation(line: 170, column: 26, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 170, column: 6)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 169, column: 52)
!423 = !DILocation(line: 170, column: 29, scope: !421)
!424 = !DILocation(line: 170, column: 6, scope: !421)
!425 = !DILocation(line: 170, column: 48, scope: !421)
!426 = !DILocation(line: 170, column: 6, scope: !422)
!427 = !DILocation(line: 171, column: 23, scope: !428)
!428 = distinct !DILexicalBlock(scope: !421, file: !3, line: 170, column: 71)
!429 = !DILocation(line: 171, column: 6, scope: !428)
!430 = !DILocation(line: 172, column: 20, scope: !428)
!431 = !DILocation(line: 172, column: 6, scope: !428)
!432 = !DILocation(line: 173, column: 6, scope: !428)
!433 = !DILocation(line: 175, column: 5, scope: !422)
!434 = !DILocation(line: 177, column: 12, scope: !332)
!435 = !DILocation(line: 177, column: 5, scope: !332)
!436 = !DILocation(line: 178, column: 1, scope: !332)
!437 = !DISubprogram(name: "zip_error_set", scope: !44, file: !44, line: 343, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !45, !50, !50}
!440 = !DISubprogram(name: "malloc", scope: !213, file: !213, line: 540, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!441 = !DISubroutineType(types: !442)
!442 = !{!83, !84}
!443 = distinct !DISubprogram(name: "_zip_string_write", scope: !3, file: !3, line: 182, type: !444, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !561)
!444 = !DISubroutineType(types: !445)
!445 = !{!50, !446, !105}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_t", file: !44, line: 303, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip", file: !17, line: 213, size: 1024, elements: !449)
!449 = !{!450, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !549, !550, !551, !553, !557}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !448, file: !17, line: 214, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_t", file: !44, line: 306, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_source", file: !17, line: 318, size: 640, elements: !454)
!454 = !{!455, !456, !478, !479, !480, !481, !482, !484, !486, !487, !488}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !453, file: !17, line: 319, baseType: !451, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !453, file: !17, line: 323, baseType: !457, size: 64, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !17, line: 320, size: 64, elements: !458)
!458 = !{!459, !473}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !457, file: !17, line: 321, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_callback", file: !44, line: 311, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !83, !83, !469, !472}
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int64_t", file: !9, line: 39, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !466, line: 27, baseType: !467)
!466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !13, line: 44, baseType: !468)
!468 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint64_t", file: !9, line: 43, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 27, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !13, line: 45, baseType: !86)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_cmd_t", file: !44, line: 233, baseType: !57)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !457, file: !17, line: 322, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_layered_callback", file: !17, line: 151, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!464, !451, !83, !83, !469, !57}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !453, file: !17, line: 324, baseType: !83, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !453, file: !17, line: 325, baseType: !46, size: 128, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "supports", scope: !453, file: !17, line: 326, baseType: !464, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !453, file: !17, line: 327, baseType: !29, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "write_state", scope: !453, file: !17, line: 328, baseType: !483, size: 32, offset: 416)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_write_state_t", file: !17, line: 316, baseType: !76)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "source_closed", scope: !453, file: !17, line: 329, baseType: !485, size: 8, offset: 448)
!485 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "source_archive", scope: !453, file: !17, line: 330, baseType: !446, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !453, file: !17, line: 331, baseType: !29, size: 32, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !453, file: !17, line: 332, baseType: !485, size: 8, offset: 608)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "open_flags", scope: !448, file: !17, line: 215, baseType: !29, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !448, file: !17, line: 216, baseType: !46, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !17, line: 218, baseType: !29, size: 32, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ch_flags", scope: !448, file: !17, line: 219, baseType: !29, size: 32, offset: 288)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "default_password", scope: !448, file: !17, line: 221, baseType: !53, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "comment_orig", scope: !448, file: !17, line: 223, baseType: !15, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "comment_changes", scope: !448, file: !17, line: 224, baseType: !15, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "comment_changed", scope: !448, file: !17, line: 225, baseType: !485, size: 8, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "nentry", scope: !448, file: !17, line: 227, baseType: !469, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "nentry_alloc", scope: !448, file: !17, line: 228, baseType: !469, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !448, file: !17, line: 229, baseType: !500, size: 64, offset: 704)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_entry_t", file: !17, line: 204, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_entry", file: !17, line: 341, size: 256, elements: !503)
!503 = !{!504, !546, !547, !548}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !502, file: !17, line: 342, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_dirent_t", file: !17, line: 203, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_dirent", file: !17, line: 261, size: 960, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !520, !524, !525, !526, !527, !528, !538, !539, !540, !541, !542, !543, !544, !545}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !507, file: !17, line: 262, baseType: !39, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "local_extra_fields_read", scope: !507, file: !17, line: 263, baseType: !485, size: 8, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !507, file: !17, line: 264, baseType: !485, size: 8, offset: 40)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "crc_valid", scope: !507, file: !17, line: 266, baseType: !485, size: 8, offset: 48)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "version_madeby", scope: !507, file: !17, line: 268, baseType: !23, size: 16, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "version_needed", scope: !507, file: !17, line: 269, baseType: !23, size: 16, offset: 80)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "bitflags", scope: !507, file: !17, line: 270, baseType: !23, size: 16, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "comp_method", scope: !507, file: !17, line: 271, baseType: !517, size: 32, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int32_t", file: !9, line: 32, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !466, line: 26, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !13, line: 41, baseType: !50)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "last_mod", scope: !507, file: !17, line: 272, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !522, line: 10, baseType: !523)
!522 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !13, line: 160, baseType: !468)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !507, file: !17, line: 273, baseType: !39, size: 32, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "comp_size", scope: !507, file: !17, line: 274, baseType: !469, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "uncomp_size", scope: !507, file: !17, line: 275, baseType: !469, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !507, file: !17, line: 276, baseType: !15, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "extra_fields", scope: !507, file: !17, line: 277, baseType: !529, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_extra_field_t", file: !17, line: 205, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_extra_field", file: !17, line: 302, size: 192, elements: !532)
!532 = !{!533, !534, !535, !536, !537}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !17, line: 303, baseType: !529, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !17, line: 304, baseType: !43, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !531, file: !17, line: 305, baseType: !23, size: 16, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !531, file: !17, line: 306, baseType: !23, size: 16, offset: 112)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !531, file: !17, line: 307, baseType: !21, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !507, file: !17, line: 278, baseType: !15, size: 64, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "disk_number", scope: !507, file: !17, line: 279, baseType: !39, size: 32, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "int_attrib", scope: !507, file: !17, line: 280, baseType: !23, size: 16, offset: 672)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ext_attrib", scope: !507, file: !17, line: 281, baseType: !39, size: 32, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !507, file: !17, line: 282, baseType: !469, size: 64, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "compression_level", scope: !507, file: !17, line: 284, baseType: !23, size: 16, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_method", scope: !507, file: !17, line: 285, baseType: !23, size: 16, offset: 848)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !507, file: !17, line: 286, baseType: !53, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !502, file: !17, line: 343, baseType: !505, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !502, file: !17, line: 344, baseType: !451, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !502, file: !17, line: 345, baseType: !485, size: 8, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nopen_source", scope: !448, file: !17, line: 231, baseType: !29, size: 32, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nopen_source_alloc", scope: !448, file: !17, line: 232, baseType: !29, size: 32, offset: 800)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "open_source", scope: !448, file: !17, line: 233, baseType: !552, size: 64, offset: 832)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !448, file: !17, line: 235, baseType: !554, size: 64, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_hash_t", file: !17, line: 208, baseType: !556)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip_hash", file: !17, line: 199, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !448, file: !17, line: 237, baseType: !558, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_progress_t", file: !17, line: 209, baseType: !560)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip_progress", file: !17, line: 200, flags: DIFlagFwdDecl)
!561 = !{!562, !563}
!562 = !DILocalVariable(name: "za", arg: 1, scope: !443, file: !3, line: 182, type: !446)
!563 = !DILocalVariable(name: "s", arg: 2, scope: !443, file: !3, line: 182, type: !105)
!564 = !DILocation(line: 182, column: 26, scope: !443)
!565 = !DILocation(line: 182, column: 50, scope: !443)
!566 = !DILocation(line: 184, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !443, file: !3, line: 184, column: 9)
!568 = !DILocation(line: 184, column: 11, scope: !567)
!569 = !DILocation(line: 184, column: 9, scope: !443)
!570 = !DILocation(line: 185, column: 2, scope: !567)
!571 = !DILocation(line: 187, column: 23, scope: !443)
!572 = !DILocation(line: 187, column: 27, scope: !443)
!573 = !DILocation(line: 187, column: 30, scope: !443)
!574 = !DILocation(line: 187, column: 35, scope: !443)
!575 = !DILocation(line: 187, column: 38, scope: !443)
!576 = !DILocation(line: 187, column: 12, scope: !443)
!577 = !DILocation(line: 187, column: 5, scope: !443)
!578 = !DILocation(line: 188, column: 1, scope: !443)
!579 = !DISubprogram(name: "_zip_write", scope: !17, file: !17, line: 543, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DISubroutineType(types: !581)
!581 = !{!50, !446, !189, !469}
