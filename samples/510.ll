; ModuleID = 'samples/510.bc'
source_filename = "stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqfs_stack = type { i64, i64, i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define i32 @sqfs_stack_create(ptr noundef %s, i64 noundef %vsize, i64 noundef %initial, ptr noundef %freer) #0 !dbg !22 {
entry:
  %s.addr = alloca ptr, align 8
  %vsize.addr = alloca i64, align 8
  %initial.addr = alloca i64, align 8
  %freer.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !46, metadata !DIExpression()), !dbg !54
  store i64 %vsize, ptr %vsize.addr, align 8, !tbaa !55
  tail call void @llvm.dbg.declare(metadata ptr %vsize.addr, metadata !47, metadata !DIExpression()), !dbg !57
  store i64 %initial, ptr %initial.addr, align 8, !tbaa !55
  tail call void @llvm.dbg.declare(metadata ptr %initial.addr, metadata !48, metadata !DIExpression()), !dbg !58
  store ptr %freer, ptr %freer.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %freer.addr, metadata !49, metadata !DIExpression()), !dbg !59
  %0 = load i64, ptr %vsize.addr, align 8, !dbg !60, !tbaa !55
  %1 = load ptr, ptr %s.addr, align 8, !dbg !61, !tbaa !50
  %value_size = getelementptr inbounds %struct.sqfs_stack, ptr %1, i32 0, i32 0, !dbg !62
  store i64 %0, ptr %value_size, align 8, !dbg !63, !tbaa !64
  %2 = load ptr, ptr %freer.addr, align 8, !dbg !66, !tbaa !50
  %3 = load ptr, ptr %s.addr, align 8, !dbg !67, !tbaa !50
  %freer1 = getelementptr inbounds %struct.sqfs_stack, ptr %3, i32 0, i32 4, !dbg !68
  store ptr %2, ptr %freer1, align 8, !dbg !69, !tbaa !70
  %4 = load ptr, ptr %s.addr, align 8, !dbg !71, !tbaa !50
  %items = getelementptr inbounds %struct.sqfs_stack, ptr %4, i32 0, i32 3, !dbg !72
  store ptr null, ptr %items, align 8, !dbg !73, !tbaa !74
  %5 = load ptr, ptr %s.addr, align 8, !dbg !75, !tbaa !50
  %size = getelementptr inbounds %struct.sqfs_stack, ptr %5, i32 0, i32 1, !dbg !76
  store i64 0, ptr %size, align 8, !dbg !77, !tbaa !78
  %6 = load ptr, ptr %s.addr, align 8, !dbg !79, !tbaa !50
  %capacity = getelementptr inbounds %struct.sqfs_stack, ptr %6, i32 0, i32 2, !dbg !80
  store i64 0, ptr %capacity, align 8, !dbg !81, !tbaa !82
  %7 = load ptr, ptr %s.addr, align 8, !dbg !83, !tbaa !50
  %8 = load i64, ptr %initial.addr, align 8, !dbg !84, !tbaa !55
  %call = call i32 @sqfs_stack_capacity(ptr noundef %7, i64 noundef %8), !dbg !85
  ret i32 %call, !dbg !86
}

; Function Attrs: nounwind uwtable
define internal i32 @sqfs_stack_capacity(ptr noundef %s, i64 noundef %cap) #0 !dbg !87 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %cap.addr = alloca i64, align 8
  %items = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !91, metadata !DIExpression()), !dbg !94
  store i64 %cap, ptr %cap.addr, align 8, !tbaa !55
  tail call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !92, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %items) #5, !dbg !96
  tail call void @llvm.dbg.declare(metadata ptr %items, metadata !93, metadata !DIExpression()), !dbg !97
  %0 = load i64, ptr %cap.addr, align 8, !dbg !98, !tbaa !55
  %1 = load ptr, ptr %s.addr, align 8, !dbg !100, !tbaa !50
  %capacity = getelementptr inbounds %struct.sqfs_stack, ptr %1, i32 0, i32 2, !dbg !101
  %2 = load i64, ptr %capacity, align 8, !dbg !101, !tbaa !82
  %cmp = icmp ule i64 %0, %2, !dbg !102
  br i1 %cmp, label %if.then, label %if.end, !dbg !103

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !104

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !105, !tbaa !50
  %items1 = getelementptr inbounds %struct.sqfs_stack, ptr %3, i32 0, i32 3, !dbg !106
  %4 = load ptr, ptr %items1, align 8, !dbg !106, !tbaa !74
  %5 = load i64, ptr %cap.addr, align 8, !dbg !107, !tbaa !55
  %6 = load ptr, ptr %s.addr, align 8, !dbg !108, !tbaa !50
  %value_size = getelementptr inbounds %struct.sqfs_stack, ptr %6, i32 0, i32 0, !dbg !109
  %7 = load i64, ptr %value_size, align 8, !dbg !109, !tbaa !64
  %mul = mul i64 %5, %7, !dbg !110
  %call = call ptr @realloc(ptr noundef %4, i64 noundef %mul) #6, !dbg !111
  store ptr %call, ptr %items, align 8, !dbg !112, !tbaa !50
  %8 = load ptr, ptr %items, align 8, !dbg !113, !tbaa !50
  %tobool = icmp ne ptr %8, null, !dbg !113
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !115

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !116

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %items, align 8, !dbg !117, !tbaa !50
  %10 = load ptr, ptr %s.addr, align 8, !dbg !118, !tbaa !50
  %items4 = getelementptr inbounds %struct.sqfs_stack, ptr %10, i32 0, i32 3, !dbg !119
  store ptr %9, ptr %items4, align 8, !dbg !120, !tbaa !74
  %11 = load i64, ptr %cap.addr, align 8, !dbg !121, !tbaa !55
  %12 = load ptr, ptr %s.addr, align 8, !dbg !122, !tbaa !50
  %capacity5 = getelementptr inbounds %struct.sqfs_stack, ptr %12, i32 0, i32 2, !dbg !123
  store i64 %11, ptr %capacity5, align 8, !dbg !124, !tbaa !82
  store i32 0, ptr %retval, align 4, !dbg !125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !125

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %items) #5, !dbg !126
  %13 = load i32, ptr %retval, align 4, !dbg !126
  ret i32 %13, !dbg !126
}

; Function Attrs: nounwind uwtable
define void @sqfs_stack_init(ptr noundef %s) #0 !dbg !127 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load ptr, ptr %s.addr, align 8, !dbg !133, !tbaa !50
  %items = getelementptr inbounds %struct.sqfs_stack, ptr %0, i32 0, i32 3, !dbg !134
  store ptr null, ptr %items, align 8, !dbg !135, !tbaa !74
  %1 = load ptr, ptr %s.addr, align 8, !dbg !136, !tbaa !50
  %capacity = getelementptr inbounds %struct.sqfs_stack, ptr %1, i32 0, i32 2, !dbg !137
  store i64 0, ptr %capacity, align 8, !dbg !138, !tbaa !82
  ret void, !dbg !139
}

; Function Attrs: nounwind uwtable
define void @sqfs_stack_destroy(ptr noundef %s) #0 !dbg !140 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !142, metadata !DIExpression()), !dbg !143
  br label %while.cond, !dbg !144

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !145, !tbaa !50
  %call = call zeroext i1 @sqfs_stack_pop(ptr noundef %0), !dbg !146
  br i1 %call, label %while.body, label %while.end, !dbg !144

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !144, !llvm.loop !147

while.end:                                        ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8, !dbg !150, !tbaa !50
  %items = getelementptr inbounds %struct.sqfs_stack, ptr %1, i32 0, i32 3, !dbg !151
  %2 = load ptr, ptr %items, align 8, !dbg !151, !tbaa !74
  call void @free(ptr noundef %2) #5, !dbg !152
  %3 = load ptr, ptr %s.addr, align 8, !dbg !153, !tbaa !50
  call void @sqfs_stack_init(ptr noundef %3), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: nounwind uwtable
define zeroext i1 @sqfs_stack_pop(ptr noundef %s) #0 !dbg !156 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !161, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #5, !dbg !164
  tail call void @llvm.dbg.declare(metadata ptr %v, metadata !162, metadata !DIExpression()), !dbg !165
  store ptr null, ptr %v, align 8, !dbg !165, !tbaa !50
  %0 = load ptr, ptr %s.addr, align 8, !dbg !166, !tbaa !50
  %size = getelementptr inbounds %struct.sqfs_stack, ptr %0, i32 0, i32 1, !dbg !168
  %1 = load i64, ptr %size, align 8, !dbg !168, !tbaa !78
  %cmp = icmp eq i64 %1, 0, !dbg !169
  br i1 %cmp, label %if.then, label %if.end, !dbg !170

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !171

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !172, !tbaa !50
  %call = call i32 @sqfs_stack_top(ptr noundef %2, ptr noundef %v), !dbg !173
  %3 = load ptr, ptr %s.addr, align 8, !dbg !174, !tbaa !50
  %freer = getelementptr inbounds %struct.sqfs_stack, ptr %3, i32 0, i32 4, !dbg !176
  %4 = load ptr, ptr %freer, align 8, !dbg !176, !tbaa !70
  %tobool = icmp ne ptr %4, null, !dbg !174
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !177

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %s.addr, align 8, !dbg !178, !tbaa !50
  %freer2 = getelementptr inbounds %struct.sqfs_stack, ptr %5, i32 0, i32 4, !dbg !179
  %6 = load ptr, ptr %freer2, align 8, !dbg !179, !tbaa !70
  %7 = load ptr, ptr %v, align 8, !dbg !180, !tbaa !50
  call void %6(ptr noundef %7), !dbg !178
  br label %if.end3, !dbg !178

if.end3:                                          ; preds = %if.then1, %if.end
  %8 = load ptr, ptr %s.addr, align 8, !dbg !181, !tbaa !50
  %size4 = getelementptr inbounds %struct.sqfs_stack, ptr %8, i32 0, i32 1, !dbg !182
  %9 = load i64, ptr %size4, align 8, !dbg !183, !tbaa !78
  %dec = add i64 %9, -1, !dbg !183
  store i64 %dec, ptr %size4, align 8, !dbg !183, !tbaa !78
  store i1 true, ptr %retval, align 1, !dbg !184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !184

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #5, !dbg !185
  %10 = load i1, ptr %retval, align 1, !dbg !185
  ret i1 %10, !dbg !185
}

; Function Attrs: nounwind
declare !dbg !186 void @free(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @sqfs_stack_push(ptr noundef %s, ptr noundef %vout) #0 !dbg !188 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %vout.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !192, metadata !DIExpression()), !dbg !195
  store ptr %vout, ptr %vout.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %vout.addr, metadata !193, metadata !DIExpression()), !dbg !196
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #5, !dbg !197
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !194, metadata !DIExpression()), !dbg !198
  %0 = load ptr, ptr %s.addr, align 8, !dbg !199, !tbaa !50
  %call = call i32 @sqfs_stack_grow(ptr noundef %0), !dbg !200
  store i32 %call, ptr %err, align 4, !dbg !198, !tbaa !201
  %1 = load i32, ptr %err, align 4, !dbg !202, !tbaa !201
  %tobool = icmp ne i32 %1, 0, !dbg !202
  br i1 %tobool, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !205, !tbaa !201
  store i32 %2, ptr %retval, align 4, !dbg !206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !206

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !207, !tbaa !50
  %4 = load ptr, ptr %vout.addr, align 8, !dbg !208, !tbaa !50
  %call1 = call i32 @sqfs_stack_top(ptr noundef %3, ptr noundef %4), !dbg !209
  store i32 %call1, ptr %retval, align 4, !dbg !210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !210

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #5, !dbg !211
  %5 = load i32, ptr %retval, align 4, !dbg !211
  ret i32 %5, !dbg !211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @sqfs_stack_grow(ptr noundef %s) #0 !dbg !212 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !216, metadata !DIExpression()), !dbg !220
  %0 = load ptr, ptr %s.addr, align 8, !dbg !221, !tbaa !50
  %size = getelementptr inbounds %struct.sqfs_stack, ptr %0, i32 0, i32 1, !dbg !222
  %1 = load i64, ptr %size, align 8, !dbg !222, !tbaa !78
  %2 = load ptr, ptr %s.addr, align 8, !dbg !223, !tbaa !50
  %capacity = getelementptr inbounds %struct.sqfs_stack, ptr %2, i32 0, i32 2, !dbg !224
  %3 = load i64, ptr %capacity, align 8, !dbg !224, !tbaa !82
  %cmp = icmp eq i64 %1, %3, !dbg !225
  br i1 %cmp, label %if.then, label %if.end4, !dbg !226

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #5, !dbg !227
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !217, metadata !DIExpression()), !dbg !228
  %4 = load ptr, ptr %s.addr, align 8, !dbg !229, !tbaa !50
  %5 = load ptr, ptr %s.addr, align 8, !dbg !230, !tbaa !50
  %capacity1 = getelementptr inbounds %struct.sqfs_stack, ptr %5, i32 0, i32 2, !dbg !231
  %6 = load i64, ptr %capacity1, align 8, !dbg !231, !tbaa !82
  %call = call i64 @sqfs_stack_next_capacity(i64 noundef %6), !dbg !232
  %call2 = call i32 @sqfs_stack_capacity(ptr noundef %4, i64 noundef %call), !dbg !233
  store i32 %call2, ptr %err, align 4, !dbg !228, !tbaa !201
  %7 = load i32, ptr %err, align 4, !dbg !234, !tbaa !201
  %tobool = icmp ne i32 %7, 0, !dbg !234
  br i1 %tobool, label %if.then3, label %if.end, !dbg !236

if.then3:                                         ; preds = %if.then
  %8 = load i32, ptr %err, align 4, !dbg !237, !tbaa !201
  store i32 %8, ptr %retval, align 4, !dbg !238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !238

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !239
  br label %cleanup, !dbg !239

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #5, !dbg !239
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4, !dbg !240

if.end4:                                          ; preds = %cleanup.cont, %entry
  %9 = load ptr, ptr %s.addr, align 8, !dbg !241, !tbaa !50
  %size5 = getelementptr inbounds %struct.sqfs_stack, ptr %9, i32 0, i32 1, !dbg !242
  %10 = load i64, ptr %size5, align 8, !dbg !243, !tbaa !78
  %inc = add i64 %10, 1, !dbg !243
  store i64 %inc, ptr %size5, align 8, !dbg !243, !tbaa !78
  store i32 0, ptr %retval, align 4, !dbg !244
  br label %return, !dbg !244

return:                                           ; preds = %if.end4, %cleanup
  %11 = load i32, ptr %retval, align 4, !dbg !245
  ret i32 %11, !dbg !245

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @sqfs_stack_top(ptr noundef %s, ptr noundef %vout) #0 !dbg !246 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %vout.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !248, metadata !DIExpression()), !dbg !250
  store ptr %vout, ptr %vout.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %vout.addr, metadata !249, metadata !DIExpression()), !dbg !251
  %0 = load ptr, ptr %s.addr, align 8, !dbg !252, !tbaa !50
  %size = getelementptr inbounds %struct.sqfs_stack, ptr %0, i32 0, i32 1, !dbg !254
  %1 = load i64, ptr %size, align 8, !dbg !254, !tbaa !78
  %cmp = icmp eq i64 %1, 0, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !256

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !257
  br label %return, !dbg !257

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !258, !tbaa !50
  %3 = load ptr, ptr %s.addr, align 8, !dbg !259, !tbaa !50
  %size1 = getelementptr inbounds %struct.sqfs_stack, ptr %3, i32 0, i32 1, !dbg !260
  %4 = load i64, ptr %size1, align 8, !dbg !260, !tbaa !78
  %sub = sub i64 %4, 1, !dbg !261
  %5 = load ptr, ptr %vout.addr, align 8, !dbg !262, !tbaa !50
  %call = call i32 @sqfs_stack_at(ptr noundef %2, i64 noundef %sub, ptr noundef %5), !dbg !263
  store i32 %call, ptr %retval, align 4, !dbg !264
  br label %return, !dbg !264

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !265
  ret i32 %6, !dbg !265
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i64 @sqfs_stack_size(ptr noundef %s) #0 !dbg !266 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load ptr, ptr %s.addr, align 8, !dbg !272, !tbaa !50
  %size = getelementptr inbounds %struct.sqfs_stack, ptr %0, i32 0, i32 1, !dbg !273
  %1 = load i64, ptr %size, align 8, !dbg !273, !tbaa !78
  ret i64 %1, !dbg !274
}

; Function Attrs: nounwind uwtable
define i32 @sqfs_stack_at(ptr noundef %s, i64 noundef %i, ptr noundef %vout) #0 !dbg !275 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  %vout.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !279, metadata !DIExpression()), !dbg !282
  store i64 %i, ptr %i.addr, align 8, !tbaa !55
  tail call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !280, metadata !DIExpression()), !dbg !283
  store ptr %vout, ptr %vout.addr, align 8, !tbaa !50
  tail call void @llvm.dbg.declare(metadata ptr %vout.addr, metadata !281, metadata !DIExpression()), !dbg !284
  %0 = load i64, ptr %i.addr, align 8, !dbg !285, !tbaa !55
  %1 = load ptr, ptr %s.addr, align 8, !dbg !287, !tbaa !50
  %size = getelementptr inbounds %struct.sqfs_stack, ptr %1, i32 0, i32 1, !dbg !288
  %2 = load i64, ptr %size, align 8, !dbg !288, !tbaa !78
  %cmp = icmp uge i64 %0, %2, !dbg !289
  br i1 %cmp, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !291
  br label %return, !dbg !291

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !292, !tbaa !50
  %items = getelementptr inbounds %struct.sqfs_stack, ptr %3, i32 0, i32 3, !dbg !293
  %4 = load ptr, ptr %items, align 8, !dbg !293, !tbaa !74
  %5 = load i64, ptr %i.addr, align 8, !dbg !294, !tbaa !55
  %6 = load ptr, ptr %s.addr, align 8, !dbg !295, !tbaa !50
  %value_size = getelementptr inbounds %struct.sqfs_stack, ptr %6, i32 0, i32 0, !dbg !296
  %7 = load i64, ptr %value_size, align 8, !dbg !296, !tbaa !64
  %mul = mul i64 %5, %7, !dbg !297
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %mul, !dbg !298
  %8 = load ptr, ptr %vout.addr, align 8, !dbg !299, !tbaa !50
  store ptr %add.ptr, ptr %8, align 8, !dbg !300, !tbaa !50
  store i32 0, ptr %retval, align 4, !dbg !301
  br label %return, !dbg !301

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !302
  ret i32 %9, !dbg !302
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !303 ptr @realloc(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define internal i64 @sqfs_stack_next_capacity(i64 noundef %cap) #0 !dbg !306 {
entry:
  %retval = alloca i64, align 8
  %cap.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %cap, ptr %cap.addr, align 8, !tbaa !55
  tail call void @llvm.dbg.declare(metadata ptr %cap.addr, metadata !310, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #5, !dbg !313
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !311, metadata !DIExpression()), !dbg !314
  %0 = load i64, ptr %cap.addr, align 8, !dbg !315, !tbaa !55
  %cmp = icmp eq i64 %0, 0, !dbg !317
  br i1 %cmp, label %if.then, label %if.end, !dbg !318

if.then:                                          ; preds = %entry
  store i64 8, ptr %retval, align 8, !dbg !319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !319

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %cap.addr, align 8, !dbg !320, !tbaa !55
  %mul = mul i64 %1, 3, !dbg !321
  %div = udiv i64 %mul, 2, !dbg !322
  store i64 %div, ptr %n, align 8, !dbg !323, !tbaa !55
  %2 = load i64, ptr %n, align 8, !dbg !324, !tbaa !55
  %3 = load i64, ptr %cap.addr, align 8, !dbg !326, !tbaa !55
  %cmp1 = icmp ule i64 %2, %3, !dbg !327
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !328

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr %cap.addr, align 8, !dbg !329, !tbaa !55
  %add = add i64 %4, 1, !dbg !330
  store i64 %add, ptr %retval, align 8, !dbg !331
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !331

if.end3:                                          ; preds = %if.end
  %5 = load i64, ptr %n, align 8, !dbg !332, !tbaa !55
  store i64 %5, ptr %retval, align 8, !dbg !333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !333

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #5, !dbg !334
  %6 = load i64, ptr %retval, align 8, !dbg !334
  ret i64 %6, !dbg !334
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stack.c", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "2307ee10a6c5fd82a1fdca53aaa8e7c5")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 43, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./common.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "14d63e8b50564c475a5631ac35c0a2da")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "SQFS_OK", value: 0)
!8 = !DIEnumerator(name: "SQFS_ERR", value: 1)
!9 = !DIEnumerator(name: "SQFS_BADFORMAT", value: 2)
!10 = !DIEnumerator(name: "SQFS_BADVERSION", value: 3)
!11 = !DIEnumerator(name: "SQFS_BADCOMP", value: 4)
!12 = !DIEnumerator(name: "SQFS_UNSUP", value: 5)
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!22 = distinct !DISubprogram(name: "sqfs_stack_create", scope: !1, file: !1, line: 72, type: !23, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !26, !32, !32, !41}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_err", file: !4, line: 50, baseType: !3)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_stack", file: !28, line: 38, baseType: !29)
!28 = !DIFile(filename: "./stack.h", directory: "/local-ssd/squashfuse-56ds4hojz5mre6erdixwkyufs6wgoe4q-build/aidengro/spack-stage-squashfuse-0.1.104-56ds4hojz5mre6erdixwkyufs6wgoe4q/spack-src", checksumkind: CSK_MD5, checksum: "8a5a9c1eb3d8815d41eae0940ab83cb6")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 32, size: 320, elements: !30)
!30 = !{!31, !35, !36, !37, !40}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !29, file: !28, line: 33, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 70, baseType: !34)
!33 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !29, file: !28, line: 34, baseType: !32, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !29, file: !28, line: 35, baseType: !32, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !29, file: !28, line: 36, baseType: !38, size: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "freer", scope: !29, file: !28, line: 37, baseType: !41, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqfs_stack_free_t", file: !28, line: 30, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !14}
!45 = !{!46, !47, !48, !49}
!46 = !DILocalVariable(name: "s", arg: 1, scope: !22, file: !1, line: 72, type: !26)
!47 = !DILocalVariable(name: "vsize", arg: 2, scope: !22, file: !1, line: 72, type: !32)
!48 = !DILocalVariable(name: "initial", arg: 3, scope: !22, file: !1, line: 72, type: !32)
!49 = !DILocalVariable(name: "freer", arg: 4, scope: !22, file: !1, line: 73, type: !41)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 72, column: 40, scope: !22)
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !52, i64 0}
!57 = !DILocation(line: 72, column: 50, scope: !22)
!58 = !DILocation(line: 72, column: 64, scope: !22)
!59 = !DILocation(line: 73, column: 21, scope: !22)
!60 = !DILocation(line: 74, column: 18, scope: !22)
!61 = !DILocation(line: 74, column: 2, scope: !22)
!62 = !DILocation(line: 74, column: 5, scope: !22)
!63 = !DILocation(line: 74, column: 16, scope: !22)
!64 = !{!65, !56, i64 0}
!65 = !{!"", !56, i64 0, !56, i64 8, !56, i64 16, !51, i64 24, !51, i64 32}
!66 = !DILocation(line: 75, column: 13, scope: !22)
!67 = !DILocation(line: 75, column: 2, scope: !22)
!68 = !DILocation(line: 75, column: 5, scope: !22)
!69 = !DILocation(line: 75, column: 11, scope: !22)
!70 = !{!65, !51, i64 32}
!71 = !DILocation(line: 76, column: 2, scope: !22)
!72 = !DILocation(line: 76, column: 5, scope: !22)
!73 = !DILocation(line: 76, column: 11, scope: !22)
!74 = !{!65, !51, i64 24}
!75 = !DILocation(line: 77, column: 16, scope: !22)
!76 = !DILocation(line: 77, column: 19, scope: !22)
!77 = !DILocation(line: 77, column: 24, scope: !22)
!78 = !{!65, !56, i64 8}
!79 = !DILocation(line: 77, column: 2, scope: !22)
!80 = !DILocation(line: 77, column: 5, scope: !22)
!81 = !DILocation(line: 77, column: 14, scope: !22)
!82 = !{!65, !56, i64 16}
!83 = !DILocation(line: 78, column: 29, scope: !22)
!84 = !DILocation(line: 78, column: 32, scope: !22)
!85 = !DILocation(line: 78, column: 9, scope: !22)
!86 = !DILocation(line: 78, column: 2, scope: !22)
!87 = distinct !DISubprogram(name: "sqfs_stack_capacity", scope: !1, file: !1, line: 30, type: !88, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{!25, !26, !32}
!90 = !{!91, !92, !93}
!91 = !DILocalVariable(name: "s", arg: 1, scope: !87, file: !1, line: 30, type: !26)
!92 = !DILocalVariable(name: "cap", arg: 2, scope: !87, file: !1, line: 30, type: !32)
!93 = !DILocalVariable(name: "items", scope: !87, file: !1, line: 31, type: !38)
!94 = !DILocation(line: 30, column: 49, scope: !87)
!95 = !DILocation(line: 30, column: 59, scope: !87)
!96 = !DILocation(line: 31, column: 2, scope: !87)
!97 = !DILocation(line: 31, column: 8, scope: !87)
!98 = !DILocation(line: 32, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !87, file: !1, line: 32, column: 6)
!100 = !DILocation(line: 32, column: 13, scope: !99)
!101 = !DILocation(line: 32, column: 16, scope: !99)
!102 = !DILocation(line: 32, column: 10, scope: !99)
!103 = !DILocation(line: 32, column: 6, scope: !87)
!104 = !DILocation(line: 33, column: 3, scope: !99)
!105 = !DILocation(line: 35, column: 18, scope: !87)
!106 = !DILocation(line: 35, column: 21, scope: !87)
!107 = !DILocation(line: 35, column: 28, scope: !87)
!108 = !DILocation(line: 35, column: 34, scope: !87)
!109 = !DILocation(line: 35, column: 37, scope: !87)
!110 = !DILocation(line: 35, column: 32, scope: !87)
!111 = !DILocation(line: 35, column: 10, scope: !87)
!112 = !DILocation(line: 35, column: 8, scope: !87)
!113 = !DILocation(line: 36, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !87, file: !1, line: 36, column: 6)
!115 = !DILocation(line: 36, column: 6, scope: !87)
!116 = !DILocation(line: 37, column: 3, scope: !114)
!117 = !DILocation(line: 39, column: 13, scope: !87)
!118 = !DILocation(line: 39, column: 2, scope: !87)
!119 = !DILocation(line: 39, column: 5, scope: !87)
!120 = !DILocation(line: 39, column: 11, scope: !87)
!121 = !DILocation(line: 40, column: 16, scope: !87)
!122 = !DILocation(line: 40, column: 2, scope: !87)
!123 = !DILocation(line: 40, column: 5, scope: !87)
!124 = !DILocation(line: 40, column: 14, scope: !87)
!125 = !DILocation(line: 41, column: 2, scope: !87)
!126 = !DILocation(line: 42, column: 1, scope: !87)
!127 = distinct !DISubprogram(name: "sqfs_stack_init", scope: !1, file: !1, line: 81, type: !128, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !26}
!130 = !{!131}
!131 = !DILocalVariable(name: "s", arg: 1, scope: !127, file: !1, line: 81, type: !26)
!132 = !DILocation(line: 81, column: 34, scope: !127)
!133 = !DILocation(line: 82, column: 2, scope: !127)
!134 = !DILocation(line: 82, column: 5, scope: !127)
!135 = !DILocation(line: 82, column: 11, scope: !127)
!136 = !DILocation(line: 83, column: 2, scope: !127)
!137 = !DILocation(line: 83, column: 5, scope: !127)
!138 = !DILocation(line: 83, column: 14, scope: !127)
!139 = !DILocation(line: 84, column: 1, scope: !127)
!140 = distinct !DISubprogram(name: "sqfs_stack_destroy", scope: !1, file: !1, line: 86, type: !128, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!142}
!142 = !DILocalVariable(name: "s", arg: 1, scope: !140, file: !1, line: 86, type: !26)
!143 = !DILocation(line: 86, column: 37, scope: !140)
!144 = !DILocation(line: 87, column: 2, scope: !140)
!145 = !DILocation(line: 87, column: 24, scope: !140)
!146 = !DILocation(line: 87, column: 9, scope: !140)
!147 = distinct !{!147, !144, !148, !149}
!148 = !DILocation(line: 88, column: 3, scope: !140)
!149 = !{!"llvm.loop.mustprogress"}
!150 = !DILocation(line: 89, column: 7, scope: !140)
!151 = !DILocation(line: 89, column: 10, scope: !140)
!152 = !DILocation(line: 89, column: 2, scope: !140)
!153 = !DILocation(line: 90, column: 18, scope: !140)
!154 = !DILocation(line: 90, column: 2, scope: !140)
!155 = !DILocation(line: 91, column: 1, scope: !140)
!156 = distinct !DISubprogram(name: "sqfs_stack_pop", scope: !1, file: !1, line: 100, type: !157, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !26}
!159 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "s", arg: 1, scope: !156, file: !1, line: 100, type: !26)
!162 = !DILocalVariable(name: "v", scope: !156, file: !1, line: 101, type: !14)
!163 = !DILocation(line: 100, column: 33, scope: !156)
!164 = !DILocation(line: 101, column: 2, scope: !156)
!165 = !DILocation(line: 101, column: 8, scope: !156)
!166 = !DILocation(line: 103, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !156, file: !1, line: 103, column: 6)
!168 = !DILocation(line: 103, column: 9, scope: !167)
!169 = !DILocation(line: 103, column: 14, scope: !167)
!170 = !DILocation(line: 103, column: 6, scope: !156)
!171 = !DILocation(line: 104, column: 3, scope: !167)
!172 = !DILocation(line: 106, column: 17, scope: !156)
!173 = !DILocation(line: 106, column: 2, scope: !156)
!174 = !DILocation(line: 107, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !156, file: !1, line: 107, column: 6)
!176 = !DILocation(line: 107, column: 9, scope: !175)
!177 = !DILocation(line: 107, column: 6, scope: !156)
!178 = !DILocation(line: 108, column: 3, scope: !175)
!179 = !DILocation(line: 108, column: 6, scope: !175)
!180 = !DILocation(line: 108, column: 12, scope: !175)
!181 = !DILocation(line: 109, column: 2, scope: !156)
!182 = !DILocation(line: 109, column: 5, scope: !156)
!183 = !DILocation(line: 109, column: 9, scope: !156)
!184 = !DILocation(line: 110, column: 2, scope: !156)
!185 = !DILocation(line: 111, column: 1, scope: !156)
!186 = !DISubprogram(name: "free", scope: !187, file: !187, line: 555, type: !43, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!188 = distinct !DISubprogram(name: "sqfs_stack_push", scope: !1, file: !1, line: 93, type: !189, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!25, !26, !14}
!191 = !{!192, !193, !194}
!192 = !DILocalVariable(name: "s", arg: 1, scope: !188, file: !1, line: 93, type: !26)
!193 = !DILocalVariable(name: "vout", arg: 2, scope: !188, file: !1, line: 93, type: !14)
!194 = !DILocalVariable(name: "err", scope: !188, file: !1, line: 94, type: !25)
!195 = !DILocation(line: 93, column: 38, scope: !188)
!196 = !DILocation(line: 93, column: 47, scope: !188)
!197 = !DILocation(line: 94, column: 2, scope: !188)
!198 = !DILocation(line: 94, column: 11, scope: !188)
!199 = !DILocation(line: 94, column: 33, scope: !188)
!200 = !DILocation(line: 94, column: 17, scope: !188)
!201 = !{!52, !52, i64 0}
!202 = !DILocation(line: 95, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !188, file: !1, line: 95, column: 6)
!204 = !DILocation(line: 95, column: 6, scope: !188)
!205 = !DILocation(line: 96, column: 10, scope: !203)
!206 = !DILocation(line: 96, column: 3, scope: !203)
!207 = !DILocation(line: 97, column: 24, scope: !188)
!208 = !DILocation(line: 97, column: 27, scope: !188)
!209 = !DILocation(line: 97, column: 9, scope: !188)
!210 = !DILocation(line: 97, column: 2, scope: !188)
!211 = !DILocation(line: 98, column: 1, scope: !188)
!212 = distinct !DISubprogram(name: "sqfs_stack_grow", scope: !1, file: !1, line: 60, type: !213, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{!25, !26}
!215 = !{!216, !217}
!216 = !DILocalVariable(name: "s", arg: 1, scope: !212, file: !1, line: 60, type: !26)
!217 = !DILocalVariable(name: "err", scope: !218, file: !1, line: 62, type: !25)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 61, column: 30)
!219 = distinct !DILexicalBlock(scope: !212, file: !1, line: 61, column: 6)
!220 = !DILocation(line: 60, column: 45, scope: !212)
!221 = !DILocation(line: 61, column: 6, scope: !219)
!222 = !DILocation(line: 61, column: 9, scope: !219)
!223 = !DILocation(line: 61, column: 17, scope: !219)
!224 = !DILocation(line: 61, column: 20, scope: !219)
!225 = !DILocation(line: 61, column: 14, scope: !219)
!226 = !DILocation(line: 61, column: 6, scope: !212)
!227 = !DILocation(line: 62, column: 3, scope: !218)
!228 = !DILocation(line: 62, column: 12, scope: !218)
!229 = !DILocation(line: 62, column: 38, scope: !218)
!230 = !DILocation(line: 63, column: 29, scope: !218)
!231 = !DILocation(line: 63, column: 32, scope: !218)
!232 = !DILocation(line: 63, column: 4, scope: !218)
!233 = !DILocation(line: 62, column: 18, scope: !218)
!234 = !DILocation(line: 64, column: 7, scope: !235)
!235 = distinct !DILexicalBlock(scope: !218, file: !1, line: 64, column: 7)
!236 = !DILocation(line: 64, column: 7, scope: !218)
!237 = !DILocation(line: 65, column: 11, scope: !235)
!238 = !DILocation(line: 65, column: 4, scope: !235)
!239 = !DILocation(line: 66, column: 2, scope: !219)
!240 = !DILocation(line: 66, column: 2, scope: !218)
!241 = !DILocation(line: 67, column: 2, scope: !212)
!242 = !DILocation(line: 67, column: 5, scope: !212)
!243 = !DILocation(line: 67, column: 9, scope: !212)
!244 = !DILocation(line: 68, column: 2, scope: !212)
!245 = !DILocation(line: 69, column: 1, scope: !212)
!246 = distinct !DISubprogram(name: "sqfs_stack_top", scope: !1, file: !1, line: 125, type: !189, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "s", arg: 1, scope: !246, file: !1, line: 125, type: !26)
!249 = !DILocalVariable(name: "vout", arg: 2, scope: !246, file: !1, line: 125, type: !14)
!250 = !DILocation(line: 125, column: 37, scope: !246)
!251 = !DILocation(line: 125, column: 46, scope: !246)
!252 = !DILocation(line: 126, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !1, line: 126, column: 6)
!254 = !DILocation(line: 126, column: 9, scope: !253)
!255 = !DILocation(line: 126, column: 14, scope: !253)
!256 = !DILocation(line: 126, column: 6, scope: !246)
!257 = !DILocation(line: 127, column: 3, scope: !253)
!258 = !DILocation(line: 129, column: 23, scope: !246)
!259 = !DILocation(line: 129, column: 26, scope: !246)
!260 = !DILocation(line: 129, column: 29, scope: !246)
!261 = !DILocation(line: 129, column: 34, scope: !246)
!262 = !DILocation(line: 129, column: 39, scope: !246)
!263 = !DILocation(line: 129, column: 9, scope: !246)
!264 = !DILocation(line: 129, column: 2, scope: !246)
!265 = !DILocation(line: 130, column: 1, scope: !246)
!266 = distinct !DISubprogram(name: "sqfs_stack_size", scope: !1, file: !1, line: 113, type: !267, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{!32, !26}
!269 = !{!270}
!270 = !DILocalVariable(name: "s", arg: 1, scope: !266, file: !1, line: 113, type: !26)
!271 = !DILocation(line: 113, column: 36, scope: !266)
!272 = !DILocation(line: 114, column: 9, scope: !266)
!273 = !DILocation(line: 114, column: 12, scope: !266)
!274 = !DILocation(line: 114, column: 2, scope: !266)
!275 = distinct !DISubprogram(name: "sqfs_stack_at", scope: !1, file: !1, line: 117, type: !276, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!25, !26, !32, !14}
!278 = !{!279, !280, !281}
!279 = !DILocalVariable(name: "s", arg: 1, scope: !275, file: !1, line: 117, type: !26)
!280 = !DILocalVariable(name: "i", arg: 2, scope: !275, file: !1, line: 117, type: !32)
!281 = !DILocalVariable(name: "vout", arg: 3, scope: !275, file: !1, line: 117, type: !14)
!282 = !DILocation(line: 117, column: 36, scope: !275)
!283 = !DILocation(line: 117, column: 46, scope: !275)
!284 = !DILocation(line: 117, column: 55, scope: !275)
!285 = !DILocation(line: 118, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !275, file: !1, line: 118, column: 6)
!287 = !DILocation(line: 118, column: 11, scope: !286)
!288 = !DILocation(line: 118, column: 14, scope: !286)
!289 = !DILocation(line: 118, column: 8, scope: !286)
!290 = !DILocation(line: 118, column: 6, scope: !275)
!291 = !DILocation(line: 119, column: 3, scope: !286)
!292 = !DILocation(line: 121, column: 18, scope: !275)
!293 = !DILocation(line: 121, column: 21, scope: !275)
!294 = !DILocation(line: 121, column: 29, scope: !275)
!295 = !DILocation(line: 121, column: 33, scope: !275)
!296 = !DILocation(line: 121, column: 36, scope: !275)
!297 = !DILocation(line: 121, column: 31, scope: !275)
!298 = !DILocation(line: 121, column: 27, scope: !275)
!299 = !DILocation(line: 121, column: 11, scope: !275)
!300 = !DILocation(line: 121, column: 16, scope: !275)
!301 = !DILocation(line: 122, column: 2, scope: !275)
!302 = !DILocation(line: 123, column: 1, scope: !275)
!303 = !DISubprogram(name: "realloc", scope: !187, file: !187, line: 551, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!14, !14, !32}
!306 = distinct !DISubprogram(name: "sqfs_stack_next_capacity", scope: !1, file: !1, line: 47, type: !307, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!32, !32}
!309 = !{!310, !311}
!310 = !DILocalVariable(name: "cap", arg: 1, scope: !306, file: !1, line: 47, type: !32)
!311 = !DILocalVariable(name: "n", scope: !306, file: !1, line: 48, type: !32)
!312 = !DILocation(line: 47, column: 47, scope: !306)
!313 = !DILocation(line: 48, column: 2, scope: !306)
!314 = !DILocation(line: 48, column: 9, scope: !306)
!315 = !DILocation(line: 50, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !306, file: !1, line: 50, column: 6)
!317 = !DILocation(line: 50, column: 10, scope: !316)
!318 = !DILocation(line: 50, column: 6, scope: !306)
!319 = !DILocation(line: 51, column: 3, scope: !316)
!320 = !DILocation(line: 53, column: 6, scope: !306)
!321 = !DILocation(line: 53, column: 10, scope: !306)
!322 = !DILocation(line: 53, column: 12, scope: !306)
!323 = !DILocation(line: 53, column: 4, scope: !306)
!324 = !DILocation(line: 54, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !306, file: !1, line: 54, column: 6)
!326 = !DILocation(line: 54, column: 11, scope: !325)
!327 = !DILocation(line: 54, column: 8, scope: !325)
!328 = !DILocation(line: 54, column: 6, scope: !306)
!329 = !DILocation(line: 55, column: 10, scope: !325)
!330 = !DILocation(line: 55, column: 14, scope: !325)
!331 = !DILocation(line: 55, column: 3, scope: !325)
!332 = !DILocation(line: 56, column: 9, scope: !306)
!333 = !DILocation(line: 56, column: 2, scope: !306)
!334 = !DILocation(line: 57, column: 1, scope: !306)
