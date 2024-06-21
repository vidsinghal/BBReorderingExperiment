; ModuleID = 'samples/120.bc'
source_filename = "lsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [3 x i8] c"sh\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [17 x i8] c"  (press RETURN)\00", align 1, !dbg !24
@screen_trashed = external global i32, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Cannot seek to start position\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [19 x i8] c"Cannot create pipe\00", align 1, !dbg !36

; Function Attrs: nounwind uwtable
define dso_local void @lsystem(ptr noundef %cmd, ptr noundef %donemsg) #0 !dbg !75 {
entry:
  %cmd.addr = alloca ptr, align 8
  %donemsg.addr = alloca ptr, align 8
  %inp = alloca i32, align 4
  %shell = alloca ptr, align 8
  %p = alloca ptr, align 8
  %save_ifile = alloca ptr, align 8
  %esccmd = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !93
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !79, metadata !DIExpression()), !dbg !97
  store ptr %donemsg, ptr %donemsg.addr, align 8, !tbaa !93
  tail call void @llvm.dbg.declare(metadata ptr %donemsg.addr, metadata !80, metadata !DIExpression()), !dbg !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %inp) #6, !dbg !99
  tail call void @llvm.dbg.declare(metadata ptr %inp, metadata !81, metadata !DIExpression()), !dbg !100
  call void @llvm.lifetime.start.p0(i64 8, ptr %shell) #6, !dbg !101
  tail call void @llvm.dbg.declare(metadata ptr %shell, metadata !82, metadata !DIExpression()), !dbg !102
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !103
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !83, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 8, ptr %save_ifile) #6, !dbg !105
  tail call void @llvm.dbg.declare(metadata ptr %save_ifile, metadata !84, metadata !DIExpression()), !dbg !106
  %0 = load ptr, ptr %cmd.addr, align 8, !dbg !107, !tbaa !93
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !107
  %1 = load i8, ptr %arrayidx, align 1, !dbg !107, !tbaa !109
  %conv = sext i8 %1 to i32, !dbg !107
  %cmp = icmp eq i32 %conv, 45, !dbg !110
  br i1 %cmp, label %if.then, label %if.else, !dbg !111

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cmd.addr, align 8, !dbg !112, !tbaa !93
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !112
  store ptr %incdec.ptr, ptr %cmd.addr, align 8, !dbg !112, !tbaa !93
  br label %if.end, !dbg !113

if.else:                                          ; preds = %entry
  call void @clear_bot(), !dbg !114
  call void @putstr(ptr noundef @.str), !dbg !116
  %3 = load ptr, ptr %cmd.addr, align 8, !dbg !117, !tbaa !93
  call void @putstr(ptr noundef %3), !dbg !118
  call void @putstr(ptr noundef @.str.1), !dbg !119
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call ptr @save_curr_ifile(), !dbg !120
  store ptr %call, ptr %save_ifile, align 8, !dbg !121, !tbaa !93
  %call2 = call i32 @edit_ifile(ptr noundef null), !dbg !122
  call void @deinit(), !dbg !123
  call void @flush(), !dbg !124
  call void @raw_mode(i32 noundef 0), !dbg !125
  call void @init_signals(i32 noundef 0), !dbg !126
  %call3 = call i32 @dup(i32 noundef 0) #6, !dbg !127
  store i32 %call3, ptr %inp, align 4, !dbg !128, !tbaa !129
  %call4 = call i32 @close(i32 noundef 0), !dbg !131
  %call5 = call i32 @open_tty(), !dbg !132
  %cmp6 = icmp slt i32 %call5, 0, !dbg !134
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !135

if.then8:                                         ; preds = %if.end
  %4 = load i32, ptr %inp, align 4, !dbg !136, !tbaa !129
  %call9 = call i32 @dup(i32 noundef %4) #6, !dbg !137
  br label %if.end10, !dbg !137

if.end10:                                         ; preds = %if.then8, %if.end
  store ptr null, ptr %p, align 8, !dbg !138, !tbaa !93
  %call11 = call ptr @lgetenv(ptr noundef @.str.2), !dbg !139
  store ptr %call11, ptr %shell, align 8, !dbg !140, !tbaa !93
  %cmp12 = icmp ne ptr %call11, null, !dbg !141
  br i1 %cmp12, label %land.lhs.true, label %if.end38, !dbg !142

land.lhs.true:                                    ; preds = %if.end10
  %5 = load ptr, ptr %shell, align 8, !dbg !143, !tbaa !93
  %6 = load i8, ptr %5, align 1, !dbg !144, !tbaa !109
  %conv14 = sext i8 %6 to i32, !dbg !144
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !145
  br i1 %cmp15, label %if.then17, label %if.end38, !dbg !146

if.then17:                                        ; preds = %land.lhs.true
  %7 = load ptr, ptr %cmd.addr, align 8, !dbg !147, !tbaa !93
  %8 = load i8, ptr %7, align 1, !dbg !148, !tbaa !109
  %conv18 = sext i8 %8 to i32, !dbg !148
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !149
  br i1 %cmp19, label %if.then21, label %if.else23, !dbg !150

if.then21:                                        ; preds = %if.then17
  %9 = load ptr, ptr %shell, align 8, !dbg !151, !tbaa !93
  %call22 = call ptr @save(ptr noundef %9), !dbg !152
  store ptr %call22, ptr %p, align 8, !dbg !153, !tbaa !93
  br label %if.end37, !dbg !154

if.else23:                                        ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %esccmd) #6, !dbg !155
  tail call void @llvm.dbg.declare(metadata ptr %esccmd, metadata !85, metadata !DIExpression()), !dbg !156
  %10 = load ptr, ptr %cmd.addr, align 8, !dbg !157, !tbaa !93
  %call24 = call ptr @shell_quote(ptr noundef %10), !dbg !158
  store ptr %call24, ptr %esccmd, align 8, !dbg !156, !tbaa !93
  %11 = load ptr, ptr %esccmd, align 8, !dbg !159, !tbaa !93
  %cmp25 = icmp ne ptr %11, null, !dbg !160
  br i1 %cmp25, label %if.then27, label %if.end36, !dbg !161

if.then27:                                        ; preds = %if.else23
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !162
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !90, metadata !DIExpression()), !dbg !163
  %12 = load ptr, ptr %shell, align 8, !dbg !164, !tbaa !93
  %call28 = call i64 @strlen(ptr noundef %12) #7, !dbg !165
  %13 = load ptr, ptr %esccmd, align 8, !dbg !166, !tbaa !93
  %call29 = call i64 @strlen(ptr noundef %13) #7, !dbg !167
  %add = add i64 %call28, %call29, !dbg !168
  %add30 = add i64 %add, 5, !dbg !169
  %conv31 = trunc i64 %add30 to i32, !dbg !170
  store i32 %conv31, ptr %len, align 4, !dbg !163, !tbaa !129
  %14 = load i32, ptr %len, align 4, !dbg !171, !tbaa !129
  %call32 = call ptr @ecalloc(i32 noundef %14, i32 noundef 1), !dbg !172
  store ptr %call32, ptr %p, align 8, !dbg !173, !tbaa !93
  %15 = load ptr, ptr %p, align 8, !dbg !174, !tbaa !93
  %16 = load i32, ptr %len, align 4, !dbg !174, !tbaa !129
  %conv33 = sext i32 %16 to i64, !dbg !174
  %17 = load ptr, ptr %shell, align 8, !dbg !174, !tbaa !93
  %call34 = call ptr @shell_coption(), !dbg !174
  %18 = load ptr, ptr %esccmd, align 8, !dbg !174, !tbaa !93
  %call35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef %conv33, ptr noundef @.str.3, ptr noundef %17, ptr noundef %call34, ptr noundef %18) #6, !dbg !174
  %19 = load ptr, ptr %esccmd, align 8, !dbg !175, !tbaa !93
  call void @free(ptr noundef %19) #6, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !177
  br label %if.end36, !dbg !178

if.end36:                                         ; preds = %if.then27, %if.else23
  call void @llvm.lifetime.end.p0(i64 8, ptr %esccmd) #6, !dbg !179
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then21
  br label %if.end38, !dbg !180

if.end38:                                         ; preds = %if.end37, %land.lhs.true, %if.end10
  %20 = load ptr, ptr %p, align 8, !dbg !181, !tbaa !93
  %cmp39 = icmp eq ptr %20, null, !dbg !183
  br i1 %cmp39, label %if.then41, label %if.end50, !dbg !184

if.then41:                                        ; preds = %if.end38
  %21 = load ptr, ptr %cmd.addr, align 8, !dbg !185, !tbaa !93
  %22 = load i8, ptr %21, align 1, !dbg !188, !tbaa !109
  %conv42 = sext i8 %22 to i32, !dbg !188
  %cmp43 = icmp eq i32 %conv42, 0, !dbg !189
  br i1 %cmp43, label %if.then45, label %if.else47, !dbg !190

if.then45:                                        ; preds = %if.then41
  %call46 = call ptr @save(ptr noundef @.str.4), !dbg !191
  store ptr %call46, ptr %p, align 8, !dbg !192, !tbaa !93
  br label %if.end49, !dbg !193

if.else47:                                        ; preds = %if.then41
  %23 = load ptr, ptr %cmd.addr, align 8, !dbg !194, !tbaa !93
  %call48 = call ptr @save(ptr noundef %23), !dbg !195
  store ptr %call48, ptr %p, align 8, !dbg !196, !tbaa !93
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then45
  br label %if.end50, !dbg !197

if.end50:                                         ; preds = %if.end49, %if.end38
  %24 = load ptr, ptr %p, align 8, !dbg !198, !tbaa !93
  %call51 = call i32 @system(ptr noundef %24), !dbg !199
  %25 = load ptr, ptr %p, align 8, !dbg !200, !tbaa !93
  call void @free(ptr noundef %25) #6, !dbg !201
  %call52 = call i32 @close(i32 noundef 0), !dbg !202
  %26 = load i32, ptr %inp, align 4, !dbg !203, !tbaa !129
  %call53 = call i32 @dup(i32 noundef %26) #6, !dbg !204
  %27 = load i32, ptr %inp, align 4, !dbg !205, !tbaa !129
  %call54 = call i32 @close(i32 noundef %27), !dbg !206
  call void @init_signals(i32 noundef 1), !dbg !207
  call void @raw_mode(i32 noundef 1), !dbg !208
  %28 = load ptr, ptr %donemsg.addr, align 8, !dbg !209, !tbaa !93
  %cmp55 = icmp ne ptr %28, null, !dbg !211
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !212

if.then57:                                        ; preds = %if.end50
  %29 = load ptr, ptr %donemsg.addr, align 8, !dbg !213, !tbaa !93
  call void @putstr(ptr noundef %29), !dbg !215
  call void @putstr(ptr noundef @.str.5), !dbg !216
  call void @get_return(), !dbg !217
  %call58 = call i32 @putchr(i32 noundef 10), !dbg !218
  call void @flush(), !dbg !219
  br label %if.end59, !dbg !220

if.end59:                                         ; preds = %if.then57, %if.end50
  call void @init(), !dbg !221
  store i32 1, ptr @screen_trashed, align 4, !dbg !222, !tbaa !129
  %30 = load ptr, ptr %save_ifile, align 8, !dbg !223, !tbaa !93
  call void @reedit_ifile(ptr noundef %30), !dbg !224
  call void @winch(i32 noundef 0), !dbg !225
  call void @llvm.lifetime.end.p0(i64 8, ptr %save_ifile) #6, !dbg !226
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !226
  call void @llvm.lifetime.end.p0(i64 8, ptr %shell) #6, !dbg !226
  call void @llvm.lifetime.end.p0(i64 4, ptr %inp) #6, !dbg !226
  ret void, !dbg !226
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !227 void @clear_bot() #2

declare !dbg !231 void @putstr(ptr noundef) #2

declare !dbg !236 ptr @save_curr_ifile() #2

declare !dbg !239 i32 @edit_ifile(ptr noundef) #2

declare !dbg !242 void @deinit() #2

declare !dbg !243 void @flush() #2

declare !dbg !244 void @raw_mode(i32 noundef) #2

declare !dbg !245 void @init_signals(i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !246 i32 @dup(i32 noundef) #3

declare !dbg !250 i32 @close(i32 noundef) #2

declare !dbg !251 i32 @open_tty() #2

declare !dbg !254 ptr @lgetenv(ptr noundef) #2

declare !dbg !257 ptr @save(ptr noundef) #2

declare !dbg !260 ptr @shell_quote(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !261 i64 @strlen(ptr noundef) #4

declare !dbg !266 ptr @ecalloc(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !270 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare !dbg !278 ptr @shell_coption() #2

; Function Attrs: nounwind
declare !dbg !281 void @free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !285 i32 @system(ptr noundef) #2

declare !dbg !288 void @get_return() #2

declare !dbg !289 i32 @putchr(i32 noundef) #2

declare !dbg !290 void @init() #2

declare !dbg !291 void @reedit_ifile(ptr noundef) #2

declare !dbg !292 void @winch(i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @pipe_mark(i32 noundef %c, ptr noundef %cmd) #0 !dbg !293 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %cmd.addr = alloca ptr, align 8
  %mpos = alloca i64, align 8
  %tpos = alloca i64, align 8
  %bpos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4, !tbaa !129
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !297, metadata !DIExpression()), !dbg !302
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !93
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !298, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %mpos) #6, !dbg !304
  tail call void @llvm.dbg.declare(metadata ptr %mpos, metadata !299, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpos) #6, !dbg !304
  tail call void @llvm.dbg.declare(metadata ptr %tpos, metadata !300, metadata !DIExpression()), !dbg !306
  call void @llvm.lifetime.start.p0(i64 8, ptr %bpos) #6, !dbg !304
  tail call void @llvm.dbg.declare(metadata ptr %bpos, metadata !301, metadata !DIExpression()), !dbg !307
  %0 = load i32, ptr %c.addr, align 4, !dbg !308, !tbaa !129
  %conv = sext i32 %0 to i64, !dbg !308
  %call = call i64 @markpos(i64 noundef %conv), !dbg !309
  store i64 %call, ptr %mpos, align 8, !dbg !310, !tbaa !311
  %1 = load i64, ptr %mpos, align 8, !dbg !313, !tbaa !311
  %cmp = icmp eq i64 %1, -1, !dbg !315
  br i1 %cmp, label %if.then, label %if.end, !dbg !316

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !317

if.end:                                           ; preds = %entry
  %call2 = call i64 @position(i32 noundef 0), !dbg !318
  store i64 %call2, ptr %tpos, align 8, !dbg !319, !tbaa !311
  %2 = load i64, ptr %tpos, align 8, !dbg !320, !tbaa !311
  %cmp3 = icmp eq i64 %2, -1, !dbg !322
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !323

if.then5:                                         ; preds = %if.end
  store i64 0, ptr %tpos, align 8, !dbg !324, !tbaa !311
  br label %if.end6, !dbg !325

if.end6:                                          ; preds = %if.then5, %if.end
  %call7 = call i64 @position(i32 noundef -1), !dbg !326
  store i64 %call7, ptr %bpos, align 8, !dbg !327, !tbaa !311
  %3 = load i32, ptr %c.addr, align 4, !dbg !328, !tbaa !129
  %cmp8 = icmp eq i32 %3, 46, !dbg !330
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !331

if.then10:                                        ; preds = %if.end6
  %4 = load ptr, ptr %cmd.addr, align 8, !dbg !332, !tbaa !93
  %5 = load i64, ptr %tpos, align 8, !dbg !333, !tbaa !311
  %6 = load i64, ptr %bpos, align 8, !dbg !334, !tbaa !311
  %call11 = call i32 @pipe_data(ptr noundef %4, i64 noundef %5, i64 noundef %6), !dbg !335
  store i32 %call11, ptr %retval, align 4, !dbg !336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !336

if.else:                                          ; preds = %if.end6
  %7 = load i64, ptr %mpos, align 8, !dbg !337, !tbaa !311
  %8 = load i64, ptr %tpos, align 8, !dbg !339, !tbaa !311
  %cmp12 = icmp sle i64 %7, %8, !dbg !340
  br i1 %cmp12, label %if.then14, label %if.else16, !dbg !341

if.then14:                                        ; preds = %if.else
  %9 = load ptr, ptr %cmd.addr, align 8, !dbg !342, !tbaa !93
  %10 = load i64, ptr %mpos, align 8, !dbg !343, !tbaa !311
  %11 = load i64, ptr %bpos, align 8, !dbg !344, !tbaa !311
  %call15 = call i32 @pipe_data(ptr noundef %9, i64 noundef %10, i64 noundef %11), !dbg !345
  store i32 %call15, ptr %retval, align 4, !dbg !346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !346

if.else16:                                        ; preds = %if.else
  %12 = load i64, ptr %bpos, align 8, !dbg !347, !tbaa !311
  %cmp17 = icmp eq i64 %12, -1, !dbg !349
  br i1 %cmp17, label %if.then19, label %if.else21, !dbg !350

if.then19:                                        ; preds = %if.else16
  %13 = load ptr, ptr %cmd.addr, align 8, !dbg !351, !tbaa !93
  %14 = load i64, ptr %tpos, align 8, !dbg !352, !tbaa !311
  %15 = load i64, ptr %bpos, align 8, !dbg !353, !tbaa !311
  %call20 = call i32 @pipe_data(ptr noundef %13, i64 noundef %14, i64 noundef %15), !dbg !354
  store i32 %call20, ptr %retval, align 4, !dbg !355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !355

if.else21:                                        ; preds = %if.else16
  %16 = load ptr, ptr %cmd.addr, align 8, !dbg !356, !tbaa !93
  %17 = load i64, ptr %tpos, align 8, !dbg !357, !tbaa !311
  %18 = load i64, ptr %mpos, align 8, !dbg !358, !tbaa !311
  %call22 = call i32 @pipe_data(ptr noundef %16, i64 noundef %17, i64 noundef %18), !dbg !359
  store i32 %call22, ptr %retval, align 4, !dbg !360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !360

cleanup:                                          ; preds = %if.else21, %if.then19, %if.then14, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bpos) #6, !dbg !361
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpos) #6, !dbg !361
  call void @llvm.lifetime.end.p0(i64 8, ptr %mpos) #6, !dbg !361
  %19 = load i32, ptr %retval, align 4, !dbg !361
  ret i32 %19, !dbg !361
}

declare !dbg !362 i64 @markpos(i64 noundef) #2

declare !dbg !366 i64 @position(i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @pipe_data(ptr noundef %cmd, i64 noundef %spos, i64 noundef %epos) #0 !dbg !369 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca ptr, align 8
  %spos.addr = alloca i64, align 8
  %epos.addr = alloca i64, align 8
  %f = alloca ptr, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmd, ptr %cmd.addr, align 8, !tbaa !93
  tail call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !373, metadata !DIExpression()), !dbg !431
  store i64 %spos, ptr %spos.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %spos.addr, metadata !374, metadata !DIExpression()), !dbg !432
  store i64 %epos, ptr %epos.addr, align 8, !tbaa !311
  tail call void @llvm.dbg.declare(metadata ptr %epos.addr, metadata !375, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #6, !dbg !434
  tail call void @llvm.dbg.declare(metadata ptr %f, metadata !376, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #6, !dbg !436
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !430, metadata !DIExpression()), !dbg !437
  %0 = load i64, ptr %spos.addr, align 8, !dbg !438, !tbaa !311
  %call = call i32 @ch_seek(i64 noundef %0), !dbg !440
  %cmp = icmp ne i32 %call, 0, !dbg !441
  br i1 %cmp, label %if.then, label %if.end, !dbg !442

if.then:                                          ; preds = %entry
  call void @error(ptr noundef @.str.6, ptr noundef null), !dbg !443
  store i32 -1, ptr %retval, align 4, !dbg !445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !445

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %cmd.addr, align 8, !dbg !446, !tbaa !93
  %call1 = call noalias ptr @popen(ptr noundef %1, ptr noundef @.str.7), !dbg !448
  store ptr %call1, ptr %f, align 8, !dbg !449, !tbaa !93
  %cmp2 = icmp eq ptr %call1, null, !dbg !450
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !451

if.then3:                                         ; preds = %if.end
  call void @error(ptr noundef @.str.8, ptr noundef null), !dbg !452
  store i32 -1, ptr %retval, align 4, !dbg !454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !454

if.end4:                                          ; preds = %if.end
  call void @clear_bot(), !dbg !455
  call void @putstr(ptr noundef @.str), !dbg !456
  %2 = load ptr, ptr %cmd.addr, align 8, !dbg !457, !tbaa !93
  call void @putstr(ptr noundef %2), !dbg !458
  call void @putstr(ptr noundef @.str.1), !dbg !459
  call void @deinit(), !dbg !460
  call void @flush(), !dbg !461
  call void @raw_mode(i32 noundef 0), !dbg !462
  call void @init_signals(i32 noundef 0), !dbg !463
  %call5 = call ptr @signal(i32 noundef 13, ptr noundef inttoptr (i64 1 to ptr)) #6, !dbg !464
  store i32 -1, ptr %c, align 4, !dbg !465, !tbaa !129
  br label %while.cond, !dbg !466

while.cond:                                       ; preds = %if.end15, %if.end4
  %3 = load i64, ptr %epos.addr, align 8, !dbg !467, !tbaa !311
  %cmp6 = icmp eq i64 %3, -1, !dbg !468
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !469

lor.rhs:                                          ; preds = %while.cond
  %4 = load i64, ptr %spos.addr, align 8, !dbg !470, !tbaa !311
  %inc = add nsw i64 %4, 1, !dbg !470
  store i64 %inc, ptr %spos.addr, align 8, !dbg !470, !tbaa !311
  %5 = load i64, ptr %epos.addr, align 8, !dbg !471, !tbaa !311
  %cmp7 = icmp sle i64 %4, %5, !dbg !472
  br label %lor.end, !dbg !469

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %cmp7, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !466

while.body:                                       ; preds = %lor.end
  %call8 = call i32 @ch_forw_get(), !dbg !473
  store i32 %call8, ptr %c, align 4, !dbg !475, !tbaa !129
  %7 = load i32, ptr %c, align 4, !dbg !476, !tbaa !129
  %cmp9 = icmp eq i32 %7, -1, !dbg !478
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !479

if.then10:                                        ; preds = %while.body
  br label %while.end, !dbg !480

if.end11:                                         ; preds = %while.body
  %8 = load i32, ptr %c, align 4, !dbg !481, !tbaa !129
  %9 = load ptr, ptr %f, align 8, !dbg !483, !tbaa !93
  %call12 = call i32 @putc(i32 noundef %8, ptr noundef %9), !dbg !484
  %cmp13 = icmp eq i32 %call12, -1, !dbg !485
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !486

if.then14:                                        ; preds = %if.end11
  br label %while.end, !dbg !487

if.end15:                                         ; preds = %if.end11
  br label %while.cond, !dbg !466, !llvm.loop !488

while.end:                                        ; preds = %if.then14, %if.then10, %lor.end
  br label %while.cond16, !dbg !491

while.cond16:                                     ; preds = %if.end27, %while.end
  %10 = load i32, ptr %c, align 4, !dbg !492, !tbaa !129
  %cmp17 = icmp ne i32 %10, 10, !dbg !493
  br i1 %cmp17, label %land.rhs, label %land.end, !dbg !494

land.rhs:                                         ; preds = %while.cond16
  %11 = load i32, ptr %c, align 4, !dbg !495, !tbaa !129
  %cmp18 = icmp ne i32 %11, -1, !dbg !496
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond16
  %12 = phi i1 [ false, %while.cond16 ], [ %cmp18, %land.rhs ], !dbg !497
  br i1 %12, label %while.body19, label %while.end28, !dbg !491

while.body19:                                     ; preds = %land.end
  %call20 = call i32 @ch_forw_get(), !dbg !498
  store i32 %call20, ptr %c, align 4, !dbg !500, !tbaa !129
  %13 = load i32, ptr %c, align 4, !dbg !501, !tbaa !129
  %cmp21 = icmp eq i32 %13, -1, !dbg !503
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !504

if.then22:                                        ; preds = %while.body19
  br label %while.end28, !dbg !505

if.end23:                                         ; preds = %while.body19
  %14 = load i32, ptr %c, align 4, !dbg !506, !tbaa !129
  %15 = load ptr, ptr %f, align 8, !dbg !508, !tbaa !93
  %call24 = call i32 @putc(i32 noundef %14, ptr noundef %15), !dbg !509
  %cmp25 = icmp eq i32 %call24, -1, !dbg !510
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !511

if.then26:                                        ; preds = %if.end23
  br label %while.end28, !dbg !512

if.end27:                                         ; preds = %if.end23
  br label %while.cond16, !dbg !491, !llvm.loop !513

while.end28:                                      ; preds = %if.then26, %if.then22, %land.end
  %16 = load ptr, ptr %f, align 8, !dbg !515, !tbaa !93
  %call29 = call i32 @pclose(ptr noundef %16), !dbg !516
  %call30 = call ptr @signal(i32 noundef 13, ptr noundef null) #6, !dbg !517
  call void @init_signals(i32 noundef 1), !dbg !518
  call void @raw_mode(i32 noundef 1), !dbg !519
  call void @init(), !dbg !520
  store i32 1, ptr @screen_trashed, align 4, !dbg !521, !tbaa !129
  call void @winch(i32 noundef 0), !dbg !522
  store i32 0, ptr %retval, align 4, !dbg !523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !523

cleanup:                                          ; preds = %while.end28, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #6, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #6, !dbg !524
  %17 = load i32, ptr %retval, align 4, !dbg !524
  ret i32 %17, !dbg !524
}

declare !dbg !525 i32 @ch_seek(i64 noundef) #2

declare !dbg !528 void @error(ptr noundef, ptr noundef) #2

declare !dbg !531 noalias ptr @popen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !534 ptr @signal(i32 noundef, ptr noundef) #3

declare !dbg !537 i32 @ch_forw_get() #2

declare !dbg !538 i32 @putc(i32 noundef, ptr noundef) #2

declare !dbg !541 i32 @pclose(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!41}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lsystem.c", directory: "/local-ssd/less-decbftxbyduk4mq42wpghe76vv2hkjcs-build/aidengro/spack-stage-less-643-decbftxbyduk4mq42wpghe76vv2hkjcs/spack-src", checksumkind: CSK_MD5, checksum: "347ac06307c77689a76051467f65a84c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 6)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 9)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 3)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 190, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 17)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 30)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !3, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 19)
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !42, globals: !67, splitDebugInlining: false, nameTableKind: None)
!42 = !{!43, !44, !45, !46, !53, !62}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "POSITION", file: !47, line: 239, baseType: !48)
!47 = !DIFile(filename: "./less.h", directory: "/local-ssd/less-decbftxbyduk4mq42wpghe76vv2hkjcs-build/aidengro/spack-stage-less-643-decbftxbyduk4mq42wpghe76vv2hkjcs/spack-src", checksumkind: CSK_MD5, checksum: "ee741e61daa628b9b46468bad36a7105")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !49, line: 85, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 152, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!52 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "PARG", file: !47, line: 334, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "parg", file: !47, line: 328, size: 64, elements: !56)
!56 = !{!57, !58, !59, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "p_string", scope: !55, file: !47, line: 330, baseType: !45, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "p_int", scope: !55, file: !47, line: 331, baseType: !44, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "p_linenum", scope: !55, file: !47, line: 332, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINENUM", file: !47, line: 240, baseType: !48)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "p_char", scope: !55, file: !47, line: 333, baseType: !4, size: 8)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !63, line: 72, baseType: !64)
!63 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !44}
!67 = !{!0, !7, !9, !14, !19, !24, !29, !34, !36}
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!75 = distinct !DISubprogram(name: "lsystem", scope: !2, file: !2, line: 45, type: !76, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !45, !45}
!78 = !{!79, !80, !81, !82, !83, !84, !85, !90}
!79 = !DILocalVariable(name: "cmd", arg: 1, scope: !75, file: !2, line: 45, type: !45)
!80 = !DILocalVariable(name: "donemsg", arg: 2, scope: !75, file: !2, line: 45, type: !45)
!81 = !DILocalVariable(name: "inp", scope: !75, file: !2, line: 47, type: !44)
!82 = !DILocalVariable(name: "shell", scope: !75, file: !2, line: 49, type: !45)
!83 = !DILocalVariable(name: "p", scope: !75, file: !2, line: 50, type: !45)
!84 = !DILocalVariable(name: "save_ifile", scope: !75, file: !2, line: 52, type: !43)
!85 = !DILocalVariable(name: "esccmd", scope: !86, file: !2, line: 136, type: !45)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 135, column: 3)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 132, column: 7)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 131, column: 2)
!89 = distinct !DILexicalBlock(scope: !75, file: !2, line: 130, column: 6)
!90 = !DILocalVariable(name: "len", scope: !91, file: !2, line: 139, type: !44)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 138, column: 4)
!92 = distinct !DILexicalBlock(scope: !86, file: !2, line: 137, column: 8)
!93 = !{!94, !94, i64 0}
!94 = !{!"any pointer", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !DILocation(line: 45, column: 27, scope: !75)
!98 = !DILocation(line: 45, column: 38, scope: !75)
!99 = !DILocation(line: 47, column: 2, scope: !75)
!100 = !DILocation(line: 47, column: 6, scope: !75)
!101 = !DILocation(line: 49, column: 2, scope: !75)
!102 = !DILocation(line: 49, column: 8, scope: !75)
!103 = !DILocation(line: 50, column: 2, scope: !75)
!104 = !DILocation(line: 50, column: 8, scope: !75)
!105 = !DILocation(line: 52, column: 2, scope: !75)
!106 = !DILocation(line: 52, column: 8, scope: !75)
!107 = !DILocation(line: 61, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !75, file: !2, line: 61, column: 6)
!109 = !{!95, !95, i64 0}
!110 = !DILocation(line: 61, column: 13, scope: !108)
!111 = !DILocation(line: 61, column: 6, scope: !75)
!112 = !DILocation(line: 62, column: 6, scope: !108)
!113 = !DILocation(line: 62, column: 3, scope: !108)
!114 = !DILocation(line: 65, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !108, file: !2, line: 64, column: 2)
!116 = !DILocation(line: 66, column: 3, scope: !115)
!117 = !DILocation(line: 67, column: 10, scope: !115)
!118 = !DILocation(line: 67, column: 3, scope: !115)
!119 = !DILocation(line: 68, column: 3, scope: !115)
!120 = !DILocation(line: 90, column: 15, scope: !75)
!121 = !DILocation(line: 90, column: 13, scope: !75)
!122 = !DILocation(line: 91, column: 9, scope: !75)
!123 = !DILocation(line: 96, column: 2, scope: !75)
!124 = !DILocation(line: 97, column: 2, scope: !75)
!125 = !DILocation(line: 98, column: 2, scope: !75)
!126 = !DILocation(line: 106, column: 2, scope: !75)
!127 = !DILocation(line: 114, column: 8, scope: !75)
!128 = !DILocation(line: 114, column: 6, scope: !75)
!129 = !{!130, !130, i64 0}
!130 = !{!"int", !95, i64 0}
!131 = !DILocation(line: 115, column: 2, scope: !75)
!132 = !DILocation(line: 117, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !75, file: !2, line: 117, column: 6)
!134 = !DILocation(line: 117, column: 17, scope: !133)
!135 = !DILocation(line: 117, column: 6, scope: !75)
!136 = !DILocation(line: 119, column: 7, scope: !133)
!137 = !DILocation(line: 119, column: 3, scope: !133)
!138 = !DILocation(line: 129, column: 4, scope: !75)
!139 = !DILocation(line: 130, column: 15, scope: !89)
!140 = !DILocation(line: 130, column: 13, scope: !89)
!141 = !DILocation(line: 130, column: 33, scope: !89)
!142 = !DILocation(line: 130, column: 41, scope: !89)
!143 = !DILocation(line: 130, column: 45, scope: !89)
!144 = !DILocation(line: 130, column: 44, scope: !89)
!145 = !DILocation(line: 130, column: 51, scope: !89)
!146 = !DILocation(line: 130, column: 6, scope: !75)
!147 = !DILocation(line: 132, column: 8, scope: !87)
!148 = !DILocation(line: 132, column: 7, scope: !87)
!149 = !DILocation(line: 132, column: 12, scope: !87)
!150 = !DILocation(line: 132, column: 7, scope: !88)
!151 = !DILocation(line: 133, column: 13, scope: !87)
!152 = !DILocation(line: 133, column: 8, scope: !87)
!153 = !DILocation(line: 133, column: 6, scope: !87)
!154 = !DILocation(line: 133, column: 4, scope: !87)
!155 = !DILocation(line: 136, column: 4, scope: !86)
!156 = !DILocation(line: 136, column: 10, scope: !86)
!157 = !DILocation(line: 136, column: 31, scope: !86)
!158 = !DILocation(line: 136, column: 19, scope: !86)
!159 = !DILocation(line: 137, column: 8, scope: !92)
!160 = !DILocation(line: 137, column: 15, scope: !92)
!161 = !DILocation(line: 137, column: 8, scope: !86)
!162 = !DILocation(line: 139, column: 5, scope: !91)
!163 = !DILocation(line: 139, column: 9, scope: !91)
!164 = !DILocation(line: 139, column: 29, scope: !91)
!165 = !DILocation(line: 139, column: 22, scope: !91)
!166 = !DILocation(line: 139, column: 45, scope: !91)
!167 = !DILocation(line: 139, column: 38, scope: !91)
!168 = !DILocation(line: 139, column: 36, scope: !91)
!169 = !DILocation(line: 139, column: 53, scope: !91)
!170 = !DILocation(line: 139, column: 15, scope: !91)
!171 = !DILocation(line: 140, column: 26, scope: !91)
!172 = !DILocation(line: 140, column: 18, scope: !91)
!173 = !DILocation(line: 140, column: 7, scope: !91)
!174 = !DILocation(line: 141, column: 5, scope: !91)
!175 = !DILocation(line: 142, column: 10, scope: !91)
!176 = !DILocation(line: 142, column: 5, scope: !91)
!177 = !DILocation(line: 143, column: 4, scope: !92)
!178 = !DILocation(line: 143, column: 4, scope: !91)
!179 = !DILocation(line: 144, column: 3, scope: !87)
!180 = !DILocation(line: 145, column: 2, scope: !88)
!181 = !DILocation(line: 146, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !75, file: !2, line: 146, column: 6)
!183 = !DILocation(line: 146, column: 8, scope: !182)
!184 = !DILocation(line: 146, column: 6, scope: !75)
!185 = !DILocation(line: 148, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 148, column: 7)
!187 = distinct !DILexicalBlock(scope: !182, file: !2, line: 147, column: 2)
!188 = !DILocation(line: 148, column: 7, scope: !186)
!189 = !DILocation(line: 148, column: 12, scope: !186)
!190 = !DILocation(line: 148, column: 7, scope: !187)
!191 = !DILocation(line: 149, column: 8, scope: !186)
!192 = !DILocation(line: 149, column: 6, scope: !186)
!193 = !DILocation(line: 149, column: 4, scope: !186)
!194 = !DILocation(line: 151, column: 13, scope: !186)
!195 = !DILocation(line: 151, column: 8, scope: !186)
!196 = !DILocation(line: 151, column: 6, scope: !186)
!197 = !DILocation(line: 152, column: 2, scope: !187)
!198 = !DILocation(line: 153, column: 9, scope: !75)
!199 = !DILocation(line: 153, column: 2, scope: !75)
!200 = !DILocation(line: 154, column: 7, scope: !75)
!201 = !DILocation(line: 154, column: 2, scope: !75)
!202 = !DILocation(line: 177, column: 2, scope: !75)
!203 = !DILocation(line: 178, column: 6, scope: !75)
!204 = !DILocation(line: 178, column: 2, scope: !75)
!205 = !DILocation(line: 179, column: 8, scope: !75)
!206 = !DILocation(line: 179, column: 2, scope: !75)
!207 = !DILocation(line: 185, column: 2, scope: !75)
!208 = !DILocation(line: 186, column: 2, scope: !75)
!209 = !DILocation(line: 187, column: 6, scope: !210)
!210 = distinct !DILexicalBlock(scope: !75, file: !2, line: 187, column: 6)
!211 = !DILocation(line: 187, column: 14, scope: !210)
!212 = !DILocation(line: 187, column: 6, scope: !75)
!213 = !DILocation(line: 189, column: 10, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !2, line: 188, column: 2)
!215 = !DILocation(line: 189, column: 3, scope: !214)
!216 = !DILocation(line: 190, column: 3, scope: !214)
!217 = !DILocation(line: 191, column: 3, scope: !214)
!218 = !DILocation(line: 192, column: 3, scope: !214)
!219 = !DILocation(line: 193, column: 3, scope: !214)
!220 = !DILocation(line: 194, column: 2, scope: !214)
!221 = !DILocation(line: 195, column: 2, scope: !75)
!222 = !DILocation(line: 196, column: 17, scope: !75)
!223 = !DILocation(line: 222, column: 15, scope: !75)
!224 = !DILocation(line: 222, column: 2, scope: !75)
!225 = !DILocation(line: 231, column: 2, scope: !75)
!226 = !DILocation(line: 233, column: 1, scope: !75)
!227 = !DISubprogram(name: "clear_bot", scope: !228, file: !228, line: 29, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIFile(filename: "./funcs.h", directory: "/local-ssd/less-decbftxbyduk4mq42wpghe76vv2hkjcs-build/aidengro/spack-stage-less-643-decbftxbyduk4mq42wpghe76vv2hkjcs/spack-src", checksumkind: CSK_MD5, checksum: "c15ce3be09c70853d196dc09084905ce")
!229 = !DISubroutineType(types: !230)
!230 = !{null}
!231 = !DISubprogram(name: "putstr", scope: !228, file: !228, line: 313, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!236 = !DISubprogram(name: "save_curr_ifile", scope: !228, file: !228, line: 128, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{!43}
!239 = !DISubprogram(name: "edit_ifile", scope: !228, file: !228, line: 121, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubroutineType(types: !241)
!241 = !{!44, !43}
!242 = !DISubprogram(name: "deinit", scope: !228, file: !228, line: 14, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DISubprogram(name: "flush", scope: !228, file: !228, line: 309, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubprogram(name: "raw_mode", scope: !228, file: !228, line: 7, type: !65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "init_signals", scope: !228, file: !228, line: 359, type: !65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubprogram(name: "dup", scope: !247, file: !247, line: 552, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!248 = !DISubroutineType(types: !249)
!249 = !{!44, !44}
!250 = !DISubprogram(name: "close", scope: !247, file: !247, line: 358, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DISubprogram(name: "open_tty", scope: !228, file: !228, line: 370, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubroutineType(types: !253)
!253 = !{!44}
!254 = !DISubprogram(name: "lgetenv", scope: !228, file: !228, line: 109, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!255 = !DISubroutineType(types: !256)
!256 = !{!45, !45}
!257 = !DISubprogram(name: "save", scope: !228, file: !228, line: 1, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{!45, !234}
!260 = !DISubprogram(name: "shell_quote", scope: !228, file: !228, line: 137, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DISubprogram(name: "strlen", scope: !262, file: !262, line: 407, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !234}
!265 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!266 = !DISubprogram(name: "ecalloc", scope: !228, file: !228, line: 3, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!43, !44, !269}
!269 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!270 = !DISubprogram(name: "snprintf", scope: !271, file: !271, line: 378, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!272 = !DISubroutineType(types: !273)
!273 = !{!44, !274, !275, !277, null}
!274 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !276, line: 70, baseType: !265)
!276 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!277 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!278 = !DISubprogram(name: "shell_coption", scope: !228, file: !228, line: 152, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{!45}
!281 = !DISubprogram(name: "free", scope: !282, file: !282, line: 555, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!283 = !DISubroutineType(types: !284)
!284 = !{null, !43}
!285 = !DISubprogram(name: "system", scope: !282, file: !282, line: 791, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!44, !234}
!288 = !DISubprogram(name: "get_return", scope: !228, file: !228, line: 315, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubprogram(name: "putchr", scope: !228, file: !228, line: 311, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DISubprogram(name: "init", scope: !228, file: !228, line: 13, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubprogram(name: "reedit_ifile", scope: !228, file: !228, line: 130, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubprogram(name: "winch", scope: !228, file: !228, line: 358, type: !65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = distinct !DISubprogram(name: "pipe_mark", scope: !2, file: !2, line: 251, type: !294, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{!44, !44, !45}
!296 = !{!297, !298, !299, !300, !301}
!297 = !DILocalVariable(name: "c", arg: 1, scope: !293, file: !2, line: 251, type: !44)
!298 = !DILocalVariable(name: "cmd", arg: 2, scope: !293, file: !2, line: 251, type: !45)
!299 = !DILocalVariable(name: "mpos", scope: !293, file: !2, line: 253, type: !46)
!300 = !DILocalVariable(name: "tpos", scope: !293, file: !2, line: 253, type: !46)
!301 = !DILocalVariable(name: "bpos", scope: !293, file: !2, line: 253, type: !46)
!302 = !DILocation(line: 251, column: 26, scope: !293)
!303 = !DILocation(line: 251, column: 35, scope: !293)
!304 = !DILocation(line: 253, column: 2, scope: !293)
!305 = !DILocation(line: 253, column: 11, scope: !293)
!306 = !DILocation(line: 253, column: 17, scope: !293)
!307 = !DILocation(line: 253, column: 23, scope: !293)
!308 = !DILocation(line: 260, column: 17, scope: !293)
!309 = !DILocation(line: 260, column: 9, scope: !293)
!310 = !DILocation(line: 260, column: 7, scope: !293)
!311 = !{!312, !312, i64 0}
!312 = !{!"long", !95, i64 0}
!313 = !DILocation(line: 261, column: 6, scope: !314)
!314 = distinct !DILexicalBlock(scope: !293, file: !2, line: 261, column: 6)
!315 = !DILocation(line: 261, column: 11, scope: !314)
!316 = !DILocation(line: 261, column: 6, scope: !293)
!317 = !DILocation(line: 262, column: 3, scope: !314)
!318 = !DILocation(line: 263, column: 9, scope: !293)
!319 = !DILocation(line: 263, column: 7, scope: !293)
!320 = !DILocation(line: 264, column: 6, scope: !321)
!321 = distinct !DILexicalBlock(scope: !293, file: !2, line: 264, column: 6)
!322 = !DILocation(line: 264, column: 11, scope: !321)
!323 = !DILocation(line: 264, column: 6, scope: !293)
!324 = !DILocation(line: 265, column: 8, scope: !321)
!325 = !DILocation(line: 265, column: 3, scope: !321)
!326 = !DILocation(line: 266, column: 9, scope: !293)
!327 = !DILocation(line: 266, column: 7, scope: !293)
!328 = !DILocation(line: 268, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !293, file: !2, line: 268, column: 6)
!330 = !DILocation(line: 268, column: 8, scope: !329)
!331 = !DILocation(line: 268, column: 6, scope: !293)
!332 = !DILocation(line: 269, column: 21, scope: !329)
!333 = !DILocation(line: 269, column: 26, scope: !329)
!334 = !DILocation(line: 269, column: 32, scope: !329)
!335 = !DILocation(line: 269, column: 11, scope: !329)
!336 = !DILocation(line: 269, column: 3, scope: !329)
!337 = !DILocation(line: 270, column: 11, scope: !338)
!338 = distinct !DILexicalBlock(scope: !329, file: !2, line: 270, column: 11)
!339 = !DILocation(line: 270, column: 19, scope: !338)
!340 = !DILocation(line: 270, column: 16, scope: !338)
!341 = !DILocation(line: 270, column: 11, scope: !329)
!342 = !DILocation(line: 271, column: 21, scope: !338)
!343 = !DILocation(line: 271, column: 26, scope: !338)
!344 = !DILocation(line: 271, column: 32, scope: !338)
!345 = !DILocation(line: 271, column: 11, scope: !338)
!346 = !DILocation(line: 271, column: 3, scope: !338)
!347 = !DILocation(line: 272, column: 11, scope: !348)
!348 = distinct !DILexicalBlock(scope: !338, file: !2, line: 272, column: 11)
!349 = !DILocation(line: 272, column: 16, scope: !348)
!350 = !DILocation(line: 272, column: 11, scope: !338)
!351 = !DILocation(line: 273, column: 21, scope: !348)
!352 = !DILocation(line: 273, column: 26, scope: !348)
!353 = !DILocation(line: 273, column: 32, scope: !348)
!354 = !DILocation(line: 273, column: 11, scope: !348)
!355 = !DILocation(line: 273, column: 3, scope: !348)
!356 = !DILocation(line: 275, column: 21, scope: !348)
!357 = !DILocation(line: 275, column: 26, scope: !348)
!358 = !DILocation(line: 275, column: 32, scope: !348)
!359 = !DILocation(line: 275, column: 11, scope: !348)
!360 = !DILocation(line: 275, column: 3, scope: !348)
!361 = !DILocation(line: 276, column: 1, scope: !293)
!362 = !DISubprogram(name: "markpos", scope: !228, file: !228, line: 244, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{!46, !365}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "LWCHAR", file: !47, line: 238, baseType: !265)
!366 = !DISubprogram(name: "position", scope: !228, file: !228, line: 326, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!46, !44}
!369 = distinct !DISubprogram(name: "pipe_data", scope: !2, file: !2, line: 282, type: !370, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{!44, !45, !46, !46}
!372 = !{!373, !374, !375, !376, !430}
!373 = !DILocalVariable(name: "cmd", arg: 1, scope: !369, file: !2, line: 282, type: !45)
!374 = !DILocalVariable(name: "spos", arg: 2, scope: !369, file: !2, line: 282, type: !46)
!375 = !DILocalVariable(name: "epos", arg: 3, scope: !369, file: !2, line: 282, type: !46)
!376 = !DILocalVariable(name: "f", scope: !369, file: !2, line: 284, type: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !379, line: 7, baseType: !380)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !381, line: 49, size: 1728, elements: !382)
!381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !398, !400, !401, !402, !403, !405, !407, !411, !414, !416, !419, !422, !423, !424, !425, !426}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !380, file: !381, line: 51, baseType: !44, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !380, file: !381, line: 54, baseType: !45, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !380, file: !381, line: 55, baseType: !45, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !380, file: !381, line: 56, baseType: !45, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !380, file: !381, line: 57, baseType: !45, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !380, file: !381, line: 58, baseType: !45, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !380, file: !381, line: 59, baseType: !45, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !380, file: !381, line: 60, baseType: !45, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !380, file: !381, line: 61, baseType: !45, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !380, file: !381, line: 64, baseType: !45, size: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !380, file: !381, line: 65, baseType: !45, size: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !380, file: !381, line: 66, baseType: !45, size: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !380, file: !381, line: 68, baseType: !396, size: 64, offset: 768)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !381, line: 36, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !380, file: !381, line: 70, baseType: !399, size: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !380, file: !381, line: 72, baseType: !44, size: 32, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !380, file: !381, line: 73, baseType: !44, size: 32, offset: 928)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !380, file: !381, line: 74, baseType: !50, size: 64, offset: 960)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !380, file: !381, line: 77, baseType: !404, size: 16, offset: 1024)
!404 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !380, file: !381, line: 78, baseType: !406, size: 8, offset: 1040)
!406 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !380, file: !381, line: 79, baseType: !408, size: 8, offset: 1048)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 1)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !380, file: !381, line: 81, baseType: !412, size: 64, offset: 1088)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !381, line: 43, baseType: null)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !380, file: !381, line: 89, baseType: !415, size: 64, offset: 1152)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 153, baseType: !52)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !380, file: !381, line: 91, baseType: !417, size: 64, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !381, line: 37, flags: DIFlagFwdDecl)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !380, file: !381, line: 92, baseType: !420, size: 64, offset: 1280)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !381, line: 38, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !380, file: !381, line: 93, baseType: !399, size: 64, offset: 1344)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !380, file: !381, line: 94, baseType: !43, size: 64, offset: 1408)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !380, file: !381, line: 95, baseType: !275, size: 64, offset: 1472)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !380, file: !381, line: 96, baseType: !44, size: 32, offset: 1536)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !380, file: !381, line: 98, baseType: !427, size: 160, offset: 1568)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 20)
!430 = !DILocalVariable(name: "c", scope: !369, file: !2, line: 285, type: !44)
!431 = !DILocation(line: 282, column: 28, scope: !369)
!432 = !DILocation(line: 282, column: 42, scope: !369)
!433 = !DILocation(line: 282, column: 57, scope: !369)
!434 = !DILocation(line: 284, column: 2, scope: !369)
!435 = !DILocation(line: 284, column: 8, scope: !369)
!436 = !DILocation(line: 285, column: 2, scope: !369)
!437 = !DILocation(line: 285, column: 6, scope: !369)
!438 = !DILocation(line: 293, column: 14, scope: !439)
!439 = distinct !DILexicalBlock(scope: !369, file: !2, line: 293, column: 6)
!440 = !DILocation(line: 293, column: 6, scope: !439)
!441 = !DILocation(line: 293, column: 20, scope: !439)
!442 = !DILocation(line: 293, column: 6, scope: !369)
!443 = !DILocation(line: 295, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !2, line: 294, column: 2)
!445 = !DILocation(line: 296, column: 3, scope: !444)
!446 = !DILocation(line: 299, column: 17, scope: !447)
!447 = distinct !DILexicalBlock(scope: !369, file: !2, line: 299, column: 6)
!448 = !DILocation(line: 299, column: 11, scope: !447)
!449 = !DILocation(line: 299, column: 9, scope: !447)
!450 = !DILocation(line: 299, column: 28, scope: !447)
!451 = !DILocation(line: 299, column: 6, scope: !369)
!452 = !DILocation(line: 301, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !447, file: !2, line: 300, column: 2)
!454 = !DILocation(line: 302, column: 3, scope: !453)
!455 = !DILocation(line: 304, column: 2, scope: !369)
!456 = !DILocation(line: 305, column: 2, scope: !369)
!457 = !DILocation(line: 306, column: 9, scope: !369)
!458 = !DILocation(line: 306, column: 2, scope: !369)
!459 = !DILocation(line: 307, column: 2, scope: !369)
!460 = !DILocation(line: 309, column: 2, scope: !369)
!461 = !DILocation(line: 310, column: 2, scope: !369)
!462 = !DILocation(line: 311, column: 2, scope: !369)
!463 = !DILocation(line: 312, column: 2, scope: !369)
!464 = !DILocation(line: 317, column: 2, scope: !369)
!465 = !DILocation(line: 320, column: 4, scope: !369)
!466 = !DILocation(line: 321, column: 2, scope: !369)
!467 = !DILocation(line: 321, column: 9, scope: !369)
!468 = !DILocation(line: 321, column: 14, scope: !369)
!469 = !DILocation(line: 321, column: 31, scope: !369)
!470 = !DILocation(line: 321, column: 38, scope: !369)
!471 = !DILocation(line: 321, column: 44, scope: !369)
!472 = !DILocation(line: 321, column: 41, scope: !369)
!473 = !DILocation(line: 326, column: 7, scope: !474)
!474 = distinct !DILexicalBlock(scope: !369, file: !2, line: 322, column: 2)
!475 = !DILocation(line: 326, column: 5, scope: !474)
!476 = !DILocation(line: 327, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !2, line: 327, column: 7)
!478 = !DILocation(line: 327, column: 9, scope: !477)
!479 = !DILocation(line: 327, column: 7, scope: !474)
!480 = !DILocation(line: 328, column: 4, scope: !477)
!481 = !DILocation(line: 329, column: 12, scope: !482)
!482 = distinct !DILexicalBlock(scope: !474, file: !2, line: 329, column: 7)
!483 = !DILocation(line: 329, column: 15, scope: !482)
!484 = !DILocation(line: 329, column: 7, scope: !482)
!485 = !DILocation(line: 329, column: 18, scope: !482)
!486 = !DILocation(line: 329, column: 7, scope: !474)
!487 = !DILocation(line: 330, column: 4, scope: !482)
!488 = distinct !{!488, !466, !489, !490}
!489 = !DILocation(line: 331, column: 2, scope: !369)
!490 = !{!"llvm.loop.mustprogress"}
!491 = !DILocation(line: 336, column: 2, scope: !369)
!492 = !DILocation(line: 336, column: 9, scope: !369)
!493 = !DILocation(line: 336, column: 11, scope: !369)
!494 = !DILocation(line: 336, column: 19, scope: !369)
!495 = !DILocation(line: 336, column: 22, scope: !369)
!496 = !DILocation(line: 336, column: 24, scope: !369)
!497 = !DILocation(line: 0, scope: !369)
!498 = !DILocation(line: 338, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !369, file: !2, line: 337, column: 2)
!500 = !DILocation(line: 338, column: 5, scope: !499)
!501 = !DILocation(line: 339, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !2, line: 339, column: 7)
!503 = !DILocation(line: 339, column: 9, scope: !502)
!504 = !DILocation(line: 339, column: 7, scope: !499)
!505 = !DILocation(line: 340, column: 4, scope: !502)
!506 = !DILocation(line: 341, column: 12, scope: !507)
!507 = distinct !DILexicalBlock(scope: !499, file: !2, line: 341, column: 7)
!508 = !DILocation(line: 341, column: 15, scope: !507)
!509 = !DILocation(line: 341, column: 7, scope: !507)
!510 = !DILocation(line: 341, column: 18, scope: !507)
!511 = !DILocation(line: 341, column: 7, scope: !499)
!512 = !DILocation(line: 342, column: 4, scope: !507)
!513 = distinct !{!513, !491, !514, !490}
!514 = !DILocation(line: 343, column: 2, scope: !369)
!515 = !DILocation(line: 345, column: 9, scope: !369)
!516 = !DILocation(line: 345, column: 2, scope: !369)
!517 = !DILocation(line: 348, column: 2, scope: !369)
!518 = !DILocation(line: 353, column: 2, scope: !369)
!519 = !DILocation(line: 354, column: 2, scope: !369)
!520 = !DILocation(line: 355, column: 2, scope: !369)
!521 = !DILocation(line: 356, column: 17, scope: !369)
!522 = !DILocation(line: 359, column: 2, scope: !369)
!523 = !DILocation(line: 361, column: 2, scope: !369)
!524 = !DILocation(line: 362, column: 1, scope: !369)
!525 = !DISubprogram(name: "ch_seek", scope: !228, file: !228, line: 46, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubroutineType(types: !527)
!527 = !{!44, !46}
!528 = !DISubprogram(name: "error", scope: !228, file: !228, line: 316, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !45, !53}
!531 = !DISubprogram(name: "popen", scope: !271, file: !271, line: 829, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!377, !234, !234}
!534 = !DISubprogram(name: "signal", scope: !63, file: !63, line: 88, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubroutineType(types: !536)
!536 = !{!62, !44, !62}
!537 = !DISubprogram(name: "ch_forw_get", scope: !228, file: !228, line: 52, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubprogram(name: "putc", scope: !271, file: !271, line: 550, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubroutineType(types: !540)
!540 = !{!44, !44, !377}
!541 = !DISubprogram(name: "pclose", scope: !228, file: !228, line: 373, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!44, !377}
