; ModuleID = 'samples/704.bc'
source_filename = "../spack-src/src/xkbcomp/keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xkb_keymap = type { ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, %struct.xkb_mod_set, i32, i32, ptr, [32 x %struct.xkb_led], i32, ptr, ptr, ptr, ptr }
%struct.xkb_mod_set = type { [32 x %struct.xkb_mod], i32 }
%struct.xkb_mod = type { i32, i32, i32 }
%struct.xkb_led = type { i32, i32, i32, i32, %struct.xkb_mods, i32 }
%struct.xkb_mods = type { i32, i32 }
%struct.XkbFile = type { %struct._ParseCommon, i32, ptr, ptr, i32 }
%struct._ParseCommon = type { ptr, i32 }
%struct.xkb_key = type { i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.xkb_key_type = type { i32, %struct.xkb_mods, i32, i32, ptr, i32, ptr }
%struct.xkb_key_type_entry = type { i32, %struct.xkb_mods, %struct.xkb_mods }
%struct.xkb_group = type { i8, ptr, ptr }
%struct.xkb_level = type { %union.xkb_action, i32, %union.anon }
%union.xkb_action = type { %struct.xkb_mod_action }
%struct.xkb_mod_action = type { i32, i32, %struct.xkb_mods }
%union.anon = type { ptr }
%struct.xkb_sym_interpret = type { i32, i32, i32, i32, %union.xkb_action, i8, i8 }

@.str = private unnamed_addr constant [47 x i8] c"Geometry sections are not supported; ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot define %s in a keymap file\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"More than one %s section in keymap file; All sections after the first ignored\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Required section %s missing from keymap\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Compiling %s \22%s\22\0A\00", align 1
@compile_file_fns = internal constant [4 x ptr] [ptr @CompileKeycodes, ptr @CompileKeyTypes, ptr @CompileCompatMap, ptr @CompileSymbols], align 16
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed to compile %s\0A\00", align 1
@default_interpret = internal constant { i32, i32, i32, i32, { i32, [12 x i8] }, i8, i8 } { i32 0, i32 1, i32 0, i32 -1, { i32, [12 x i8] } { i32 0, [12 x i8] undef }, i8 0, i8 1 }, align 4

; Function Attrs: nounwind uwtable
define zeroext i1 @CompileKeymap(ptr noundef %file, ptr noundef %keymap, i32 noundef %merge) #0 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca ptr, align 8
  %keymap.addr = alloca ptr, align 8
  %merge.addr = alloca i32, align 4
  %ok = alloca i8, align 1
  %files = alloca [4 x ptr], align 16
  %type = alloca i32, align 4
  %ctx = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  store ptr %keymap, ptr %keymap.addr, align 8
  store i32 %merge, ptr %merge.addr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %ok) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr %files) #6
  call void @llvm.memset.p0.i64(ptr align 16 %files, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #6
  %0 = load ptr, ptr %keymap.addr, align 8
  %ctx1 = getelementptr inbounds %struct.xkb_keymap, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %ctx1, align 8
  store ptr %1, ptr %ctx, align 8
  %2 = load ptr, ptr %file.addr, align 8
  %defs = getelementptr inbounds %struct.XkbFile, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %defs, align 8
  store ptr %3, ptr %file.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %file.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %file.addr, align 8
  %file_type = getelementptr inbounds %struct.XkbFile, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %file_type, align 8
  %cmp = icmp ult i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load ptr, ptr %file.addr, align 8
  %file_type2 = getelementptr inbounds %struct.XkbFile, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %file_type2, align 8
  %cmp3 = icmp ugt i32 %8, 3
  br i1 %cmp3, label %if.then, label %if.end8

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %9 = load ptr, ptr %file.addr, align 8
  %file_type4 = getelementptr inbounds %struct.XkbFile, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %file_type4, align 8
  %cmp5 = icmp eq i32 %10, 4
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %ctx, align 8
  call void (ptr, i32, i32, ptr, ...) @xkb_log(ptr noundef %11, i32 noundef 30, i32 noundef 1, ptr noundef @.str)
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %ctx, align 8
  %13 = load ptr, ptr %file.addr, align 8
  %file_type7 = getelementptr inbounds %struct.XkbFile, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %file_type7, align 8
  %call = call ptr @xkb_file_type_to_string(i32 noundef %14)
  call void (ptr, i32, i32, ptr, ...) @xkb_log(ptr noundef %12, i32 noundef 20, i32 noundef 0, ptr noundef @.str.1, ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %for.inc

if.end8:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %file.addr, align 8
  %file_type9 = getelementptr inbounds %struct.XkbFile, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %file_type9, align 8
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %files, i64 0, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %tobool10 = icmp ne ptr %17, null
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  %18 = load ptr, ptr %ctx, align 8
  %19 = load ptr, ptr %file.addr, align 8
  %file_type12 = getelementptr inbounds %struct.XkbFile, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %file_type12, align 8
  %call13 = call ptr @xkb_file_type_to_string(i32 noundef %20)
  call void (ptr, i32, i32, ptr, ...) @xkb_log(ptr noundef %18, i32 noundef 20, i32 noundef 0, ptr noundef @.str.2, ptr noundef %call13)
  br label %for.inc

if.end14:                                         ; preds = %if.end8
  %21 = load ptr, ptr %file.addr, align 8
  %22 = load ptr, ptr %file.addr, align 8
  %file_type15 = getelementptr inbounds %struct.XkbFile, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %file_type15, align 8
  %idxprom16 = zext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [4 x ptr], ptr %files, i64 0, i64 %idxprom16
  store ptr %21, ptr %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then11, %if.end
  %24 = load ptr, ptr %file.addr, align 8
  %common = getelementptr inbounds %struct.XkbFile, ptr %24, i32 0, i32 0
  %next = getelementptr inbounds %struct._ParseCommon, ptr %common, i32 0, i32 0
  %25 = load ptr, ptr %next, align 8
  store ptr %25, ptr %file.addr, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i8 1, ptr %ok, align 1
  store i32 0, ptr %type, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %for.end
  %26 = load i32, ptr %type, align 4
  %cmp19 = icmp ule i32 %26, 3
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %27 = load i32, ptr %type, align 4
  %idxprom21 = zext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [4 x ptr], ptr %files, i64 0, i64 %idxprom21
  %28 = load ptr, ptr %arrayidx22, align 8
  %cmp23 = icmp eq ptr %28, null
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %for.body20
  %29 = load ptr, ptr %ctx, align 8
  %30 = load i32, ptr %type, align 4
  %call25 = call ptr @xkb_file_type_to_string(i32 noundef %30)
  call void (ptr, i32, i32, ptr, ...) @xkb_log(ptr noundef %29, i32 noundef 20, i32 noundef 0, ptr noundef @.str.3, ptr noundef %call25)
  store i8 0, ptr %ok, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %for.body20
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %31 = load i32, ptr %type, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %type, align 4
  br label %for.cond18, !llvm.loop !6

for.end28:                                        ; preds = %for.cond18
  %32 = load i8, ptr %ok, align 1, !range !7, !noundef !8
  %tobool29 = trunc i8 %32 to i1
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %for.end28
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %for.end28
  store i32 0, ptr %type, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc47, %if.end31
  %33 = load i32, ptr %type, align 4
  %cmp33 = icmp ule i32 %33, 3
  br i1 %cmp33, label %for.body34, label %for.end49

for.body34:                                       ; preds = %for.cond32
  %34 = load ptr, ptr %ctx, align 8
  %35 = load i32, ptr %type, align 4
  %call35 = call ptr @xkb_file_type_to_string(i32 noundef %35)
  %36 = load i32, ptr %type, align 4
  %idxprom36 = zext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds [4 x ptr], ptr %files, i64 0, i64 %idxprom36
  %37 = load ptr, ptr %arrayidx37, align 8
  %name = getelementptr inbounds %struct.XkbFile, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %name, align 8
  call void (ptr, i32, i32, ptr, ...) @xkb_log(ptr noundef %34, i32 noundef 50, i32 noundef 0, ptr noundef @.str.4, ptr noundef %call35, ptr noundef %38)
  %39 = load i32, ptr %type, align 4
  %idxprom38 = zext i32 %39 to i64
  %arrayidx39 = getelementptr inbounds [4 x ptr], ptr @compile_file_fns, i64 0, i64 %idxprom38
  %40 = load ptr, ptr %arrayidx39, align 8
  %41 = load i32, ptr %type, align 4
  %idxprom40 = zext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [4 x ptr], ptr %files, i64 0, i64 %idxprom40
  %42 = load ptr, ptr %arrayidx41, align 8
  %43 = load ptr, ptr %keymap.addr, align 8
  %44 = load i32, ptr %merge.addr, align 4
  %call42 = call zeroext i1 %40(ptr noundef %42, ptr noundef %43, i32 noundef %44)
  %frombool = zext i1 %call42 to i8
  store i8 %frombool, ptr %ok, align 1
  %45 = load i8, ptr %ok, align 1, !range !7, !noundef !8
  %tobool43 = trunc i8 %45 to i1
  br i1 %tobool43, label %if.end46, label %if.then44

if.then44:                                        ; preds = %for.body34
  %46 = load ptr, ptr %ctx, align 8
  %47 = load i32, ptr %type, align 4
  %call45 = call ptr @xkb_file_type_to_string(i32 noundef %47)
  call void (ptr, i32, i32, ptr, ...) @xkb_log(ptr noundef %46, i32 noundef 20, i32 noundef 0, ptr noundef @.str.5, ptr noundef %call45)
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %for.body34
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %48 = load i32, ptr %type, align 4
  %inc48 = add i32 %48, 1
  store i32 %inc48, ptr %type, align 4
  br label %for.cond32, !llvm.loop !9

for.end49:                                        ; preds = %for.cond32
  %49 = load ptr, ptr %keymap.addr, align 8
  %call50 = call zeroext i1 @UpdateDerivedKeymapFields(ptr noundef %49)
  store i1 %call50, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end49, %if.then44, %if.then30
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %files) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ok) #6
  %50 = load i1, ptr %retval, align 1
  ret i1 %50
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @xkb_log(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

declare ptr @xkb_file_type_to_string(i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @UpdateDerivedKeymapFields(ptr noundef %keymap) #0 {
entry:
  %retval = alloca i1, align 1
  %keymap.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %led = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %keymap, ptr %keymap.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %led) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  %0 = load ptr, ptr %keymap.addr, align 8
  %keys = getelementptr inbounds %struct.xkb_keymap, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %keys, align 8
  %2 = load ptr, ptr %keymap.addr, align 8
  %min_key_code = getelementptr inbounds %struct.xkb_keymap, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %min_key_code, align 8
  %idx.ext = zext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.xkb_key, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %key, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %key, align 8
  %5 = load ptr, ptr %keymap.addr, align 8
  %keys1 = getelementptr inbounds %struct.xkb_keymap, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %keys1, align 8
  %7 = load ptr, ptr %keymap.addr, align 8
  %max_key_code = getelementptr inbounds %struct.xkb_keymap, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %max_key_code, align 4
  %idx.ext2 = zext i32 %8 to i64
  %add.ptr3 = getelementptr inbounds %struct.xkb_key, ptr %6, i64 %idx.ext2
  %cmp = icmp ule ptr %4, %add.ptr3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %keymap.addr, align 8
  %10 = load ptr, ptr %key, align 8
  %call = call zeroext i1 @ApplyInterpsToKey(ptr noundef %9, ptr noundef %10)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load ptr, ptr %key, align 8
  %incdec.ptr = getelementptr inbounds %struct.xkb_key, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %key, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %keymap.addr, align 8
  %keys4 = getelementptr inbounds %struct.xkb_keymap, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %keys4, align 8
  %14 = load ptr, ptr %keymap.addr, align 8
  %min_key_code5 = getelementptr inbounds %struct.xkb_keymap, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %min_key_code5, align 8
  %idx.ext6 = zext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds %struct.xkb_key, ptr %13, i64 %idx.ext6
  store ptr %add.ptr7, ptr %key, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc25, %for.end
  %16 = load ptr, ptr %key, align 8
  %17 = load ptr, ptr %keymap.addr, align 8
  %keys9 = getelementptr inbounds %struct.xkb_keymap, ptr %17, i32 0, i32 7
  %18 = load ptr, ptr %keys9, align 8
  %19 = load ptr, ptr %keymap.addr, align 8
  %max_key_code10 = getelementptr inbounds %struct.xkb_keymap, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %max_key_code10, align 4
  %idx.ext11 = zext i32 %20 to i64
  %add.ptr12 = getelementptr inbounds %struct.xkb_key, ptr %18, i64 %idx.ext11
  %cmp13 = icmp ule ptr %16, %add.ptr12
  br i1 %cmp13, label %for.body14, label %for.end27

for.body14:                                       ; preds = %for.cond8
  store i32 0, ptr %i, align 4
  %21 = load ptr, ptr %keymap.addr, align 8
  %mods = getelementptr inbounds %struct.xkb_keymap, ptr %21, i32 0, i32 14
  %mods15 = getelementptr inbounds %struct.xkb_mod_set, ptr %mods, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x %struct.xkb_mod], ptr %mods15, i64 0, i64 0
  store ptr %arraydecay, ptr %mod, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %for.body14
  %22 = load i32, ptr %i, align 4
  %23 = load ptr, ptr %keymap.addr, align 8
  %mods17 = getelementptr inbounds %struct.xkb_keymap, ptr %23, i32 0, i32 14
  %num_mods = getelementptr inbounds %struct.xkb_mod_set, ptr %mods17, i32 0, i32 1
  %24 = load i32, ptr %num_mods, align 8
  %cmp18 = icmp ult i32 %22, %24
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond16
  %25 = load ptr, ptr %key, align 8
  %vmodmap = getelementptr inbounds %struct.xkb_key, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %vmodmap, align 8
  %27 = load i32, ptr %i, align 4
  %shl = shl i32 1, %27
  %and = and i32 %26, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.body19
  %28 = load ptr, ptr %key, align 8
  %modmap = getelementptr inbounds %struct.xkb_key, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %modmap, align 4
  %30 = load ptr, ptr %mod, align 8
  %mapping = getelementptr inbounds %struct.xkb_mod, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %mapping, align 4
  %or = or i32 %31, %29
  store i32 %or, ptr %mapping, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.body19
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %32 = load i32, ptr %i, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %i, align 4
  %33 = load ptr, ptr %mod, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.xkb_mod, ptr %33, i32 1
  store ptr %incdec.ptr23, ptr %mod, align 8
  br label %for.cond16, !llvm.loop !11

for.end24:                                        ; preds = %for.cond16
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %34 = load ptr, ptr %key, align 8
  %incdec.ptr26 = getelementptr inbounds %struct.xkb_key, ptr %34, i32 1
  store ptr %incdec.ptr26, ptr %key, align 8
  br label %for.cond8, !llvm.loop !12

for.end27:                                        ; preds = %for.cond8
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc53, %for.end27
  %35 = load i32, ptr %i, align 4
  %36 = load ptr, ptr %keymap.addr, align 8
  %num_types = getelementptr inbounds %struct.xkb_keymap, ptr %36, i32 0, i32 11
  %37 = load i32, ptr %num_types, align 8
  %cmp29 = icmp ult i32 %35, %37
  br i1 %cmp29, label %for.body30, label %for.end55

for.body30:                                       ; preds = %for.cond28
  %38 = load ptr, ptr %keymap.addr, align 8
  %39 = load ptr, ptr %keymap.addr, align 8
  %types = getelementptr inbounds %struct.xkb_keymap, ptr %39, i32 0, i32 10
  %40 = load ptr, ptr %types, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom = zext i32 %41 to i64
  %arrayidx = getelementptr inbounds %struct.xkb_key_type, ptr %40, i64 %idxprom
  %mods31 = getelementptr inbounds %struct.xkb_key_type, ptr %arrayidx, i32 0, i32 1
  call void @ComputeEffectiveMask(ptr noundef %38, ptr noundef %mods31)
  store i32 0, ptr %j, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc50, %for.body30
  %42 = load i32, ptr %j, align 4
  %43 = load ptr, ptr %keymap.addr, align 8
  %types33 = getelementptr inbounds %struct.xkb_keymap, ptr %43, i32 0, i32 10
  %44 = load ptr, ptr %types33, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom34 = zext i32 %45 to i64
  %arrayidx35 = getelementptr inbounds %struct.xkb_key_type, ptr %44, i64 %idxprom34
  %num_entries = getelementptr inbounds %struct.xkb_key_type, ptr %arrayidx35, i32 0, i32 5
  %46 = load i32, ptr %num_entries, align 8
  %cmp36 = icmp ult i32 %42, %46
  br i1 %cmp36, label %for.body37, label %for.end52

for.body37:                                       ; preds = %for.cond32
  %47 = load ptr, ptr %keymap.addr, align 8
  %48 = load ptr, ptr %keymap.addr, align 8
  %types38 = getelementptr inbounds %struct.xkb_keymap, ptr %48, i32 0, i32 10
  %49 = load ptr, ptr %types38, align 8
  %50 = load i32, ptr %i, align 4
  %idxprom39 = zext i32 %50 to i64
  %arrayidx40 = getelementptr inbounds %struct.xkb_key_type, ptr %49, i64 %idxprom39
  %entries = getelementptr inbounds %struct.xkb_key_type, ptr %arrayidx40, i32 0, i32 6
  %51 = load ptr, ptr %entries, align 8
  %52 = load i32, ptr %j, align 4
  %idxprom41 = zext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds %struct.xkb_key_type_entry, ptr %51, i64 %idxprom41
  %mods43 = getelementptr inbounds %struct.xkb_key_type_entry, ptr %arrayidx42, i32 0, i32 1
  call void @ComputeEffectiveMask(ptr noundef %47, ptr noundef %mods43)
  %53 = load ptr, ptr %keymap.addr, align 8
  %54 = load ptr, ptr %keymap.addr, align 8
  %types44 = getelementptr inbounds %struct.xkb_keymap, ptr %54, i32 0, i32 10
  %55 = load ptr, ptr %types44, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom45 = zext i32 %56 to i64
  %arrayidx46 = getelementptr inbounds %struct.xkb_key_type, ptr %55, i64 %idxprom45
  %entries47 = getelementptr inbounds %struct.xkb_key_type, ptr %arrayidx46, i32 0, i32 6
  %57 = load ptr, ptr %entries47, align 8
  %58 = load i32, ptr %j, align 4
  %idxprom48 = zext i32 %58 to i64
  %arrayidx49 = getelementptr inbounds %struct.xkb_key_type_entry, ptr %57, i64 %idxprom48
  %preserve = getelementptr inbounds %struct.xkb_key_type_entry, ptr %arrayidx49, i32 0, i32 2
  call void @ComputeEffectiveMask(ptr noundef %53, ptr noundef %preserve)
  br label %for.inc50

for.inc50:                                        ; preds = %for.body37
  %59 = load i32, ptr %j, align 4
  %inc51 = add i32 %59, 1
  store i32 %inc51, ptr %j, align 4
  br label %for.cond32, !llvm.loop !13

for.end52:                                        ; preds = %for.cond32
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %60 = load i32, ptr %i, align 4
  %inc54 = add i32 %60, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond28, !llvm.loop !14

for.end55:                                        ; preds = %for.cond28
  %61 = load ptr, ptr %keymap.addr, align 8
  %keys56 = getelementptr inbounds %struct.xkb_keymap, ptr %61, i32 0, i32 7
  %62 = load ptr, ptr %keys56, align 8
  %63 = load ptr, ptr %keymap.addr, align 8
  %min_key_code57 = getelementptr inbounds %struct.xkb_keymap, ptr %63, i32 0, i32 5
  %64 = load i32, ptr %min_key_code57, align 8
  %idx.ext58 = zext i32 %64 to i64
  %add.ptr59 = getelementptr inbounds %struct.xkb_key, ptr %62, i64 %idx.ext58
  store ptr %add.ptr59, ptr %key, align 8
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc85, %for.end55
  %65 = load ptr, ptr %key, align 8
  %66 = load ptr, ptr %keymap.addr, align 8
  %keys61 = getelementptr inbounds %struct.xkb_keymap, ptr %66, i32 0, i32 7
  %67 = load ptr, ptr %keys61, align 8
  %68 = load ptr, ptr %keymap.addr, align 8
  %max_key_code62 = getelementptr inbounds %struct.xkb_keymap, ptr %68, i32 0, i32 6
  %69 = load i32, ptr %max_key_code62, align 4
  %idx.ext63 = zext i32 %69 to i64
  %add.ptr64 = getelementptr inbounds %struct.xkb_key, ptr %67, i64 %idx.ext63
  %cmp65 = icmp ule ptr %65, %add.ptr64
  br i1 %cmp65, label %for.body66, label %for.end87

for.body66:                                       ; preds = %for.cond60
  store i32 0, ptr %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc82, %for.body66
  %70 = load i32, ptr %i, align 4
  %71 = load ptr, ptr %key, align 8
  %num_groups = getelementptr inbounds %struct.xkb_key, ptr %71, i32 0, i32 8
  %72 = load i32, ptr %num_groups, align 8
  %cmp68 = icmp ult i32 %70, %72
  br i1 %cmp68, label %for.body69, label %for.end84

for.body69:                                       ; preds = %for.cond67
  store i32 0, ptr %j, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc79, %for.body69
  %73 = load i32, ptr %j, align 4
  %74 = load ptr, ptr %key, align 8
  %75 = load i32, ptr %i, align 4
  %call71 = call i32 @XkbKeyNumLevels(ptr noundef %74, i32 noundef %75)
  %cmp72 = icmp ult i32 %73, %call71
  br i1 %cmp72, label %for.body73, label %for.end81

for.body73:                                       ; preds = %for.cond70
  %76 = load ptr, ptr %keymap.addr, align 8
  %77 = load ptr, ptr %key, align 8
  %groups = getelementptr inbounds %struct.xkb_key, ptr %77, i32 0, i32 9
  %78 = load ptr, ptr %groups, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom74 = zext i32 %79 to i64
  %arrayidx75 = getelementptr inbounds %struct.xkb_group, ptr %78, i64 %idxprom74
  %levels = getelementptr inbounds %struct.xkb_group, ptr %arrayidx75, i32 0, i32 2
  %80 = load ptr, ptr %levels, align 8
  %81 = load i32, ptr %j, align 4
  %idxprom76 = zext i32 %81 to i64
  %arrayidx77 = getelementptr inbounds %struct.xkb_level, ptr %80, i64 %idxprom76
  %action = getelementptr inbounds %struct.xkb_level, ptr %arrayidx77, i32 0, i32 0
  %82 = load ptr, ptr %key, align 8
  %modmap78 = getelementptr inbounds %struct.xkb_key, ptr %82, i32 0, i32 3
  %83 = load i32, ptr %modmap78, align 4
  call void @UpdateActionMods(ptr noundef %76, ptr noundef %action, i32 noundef %83)
  br label %for.inc79

for.inc79:                                        ; preds = %for.body73
  %84 = load i32, ptr %j, align 4
  %inc80 = add i32 %84, 1
  store i32 %inc80, ptr %j, align 4
  br label %for.cond70, !llvm.loop !15

for.end81:                                        ; preds = %for.cond70
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %85 = load i32, ptr %i, align 4
  %inc83 = add i32 %85, 1
  store i32 %inc83, ptr %i, align 4
  br label %for.cond67, !llvm.loop !16

for.end84:                                        ; preds = %for.cond67
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %86 = load ptr, ptr %key, align 8
  %incdec.ptr86 = getelementptr inbounds %struct.xkb_key, ptr %86, i32 1
  store ptr %incdec.ptr86, ptr %key, align 8
  br label %for.cond60, !llvm.loop !17

for.end87:                                        ; preds = %for.cond60
  %87 = load ptr, ptr %keymap.addr, align 8
  %leds = getelementptr inbounds %struct.xkb_keymap, ptr %87, i32 0, i32 18
  %arraydecay88 = getelementptr inbounds [32 x %struct.xkb_led], ptr %leds, i64 0, i64 0
  store ptr %arraydecay88, ptr %led, align 8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc97, %for.end87
  %88 = load ptr, ptr %led, align 8
  %89 = load ptr, ptr %keymap.addr, align 8
  %leds90 = getelementptr inbounds %struct.xkb_keymap, ptr %89, i32 0, i32 18
  %arraydecay91 = getelementptr inbounds [32 x %struct.xkb_led], ptr %leds90, i64 0, i64 0
  %90 = load ptr, ptr %keymap.addr, align 8
  %num_leds = getelementptr inbounds %struct.xkb_keymap, ptr %90, i32 0, i32 19
  %91 = load i32, ptr %num_leds, align 8
  %idx.ext92 = zext i32 %91 to i64
  %add.ptr93 = getelementptr inbounds %struct.xkb_led, ptr %arraydecay91, i64 %idx.ext92
  %cmp94 = icmp ult ptr %88, %add.ptr93
  br i1 %cmp94, label %for.body95, label %for.end99

for.body95:                                       ; preds = %for.cond89
  %92 = load ptr, ptr %keymap.addr, align 8
  %93 = load ptr, ptr %led, align 8
  %mods96 = getelementptr inbounds %struct.xkb_led, ptr %93, i32 0, i32 4
  call void @ComputeEffectiveMask(ptr noundef %92, ptr noundef %mods96)
  br label %for.inc97

for.inc97:                                        ; preds = %for.body95
  %94 = load ptr, ptr %led, align 8
  %incdec.ptr98 = getelementptr inbounds %struct.xkb_led, ptr %94, i32 1
  store ptr %incdec.ptr98, ptr %led, align 8
  br label %for.cond89, !llvm.loop !18

for.end99:                                        ; preds = %for.cond89
  %95 = load ptr, ptr %keymap.addr, align 8
  %keys100 = getelementptr inbounds %struct.xkb_keymap, ptr %95, i32 0, i32 7
  %96 = load ptr, ptr %keys100, align 8
  %97 = load ptr, ptr %keymap.addr, align 8
  %min_key_code101 = getelementptr inbounds %struct.xkb_keymap, ptr %97, i32 0, i32 5
  %98 = load i32, ptr %min_key_code101, align 8
  %idx.ext102 = zext i32 %98 to i64
  %add.ptr103 = getelementptr inbounds %struct.xkb_key, ptr %96, i64 %idx.ext102
  store ptr %add.ptr103, ptr %key, align 8
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc117, %for.end99
  %99 = load ptr, ptr %key, align 8
  %100 = load ptr, ptr %keymap.addr, align 8
  %keys105 = getelementptr inbounds %struct.xkb_keymap, ptr %100, i32 0, i32 7
  %101 = load ptr, ptr %keys105, align 8
  %102 = load ptr, ptr %keymap.addr, align 8
  %max_key_code106 = getelementptr inbounds %struct.xkb_keymap, ptr %102, i32 0, i32 6
  %103 = load i32, ptr %max_key_code106, align 4
  %idx.ext107 = zext i32 %103 to i64
  %add.ptr108 = getelementptr inbounds %struct.xkb_key, ptr %101, i64 %idx.ext107
  %cmp109 = icmp ule ptr %99, %add.ptr108
  br i1 %cmp109, label %for.body110, label %for.end119

for.body110:                                      ; preds = %for.cond104
  %104 = load ptr, ptr %keymap.addr, align 8
  %num_groups111 = getelementptr inbounds %struct.xkb_keymap, ptr %104, i32 0, i32 15
  %105 = load i32, ptr %num_groups111, align 4
  %106 = load ptr, ptr %key, align 8
  %num_groups112 = getelementptr inbounds %struct.xkb_key, ptr %106, i32 0, i32 8
  %107 = load i32, ptr %num_groups112, align 8
  %cmp113 = icmp ugt i32 %105, %107
  br i1 %cmp113, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body110
  %108 = load ptr, ptr %keymap.addr, align 8
  %num_groups114 = getelementptr inbounds %struct.xkb_keymap, ptr %108, i32 0, i32 15
  %109 = load i32, ptr %num_groups114, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body110
  %110 = load ptr, ptr %key, align 8
  %num_groups115 = getelementptr inbounds %struct.xkb_key, ptr %110, i32 0, i32 8
  %111 = load i32, ptr %num_groups115, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %109, %cond.true ], [ %111, %cond.false ]
  %112 = load ptr, ptr %keymap.addr, align 8
  %num_groups116 = getelementptr inbounds %struct.xkb_keymap, ptr %112, i32 0, i32 15
  store i32 %cond, ptr %num_groups116, align 4
  br label %for.inc117

for.inc117:                                       ; preds = %cond.end
  %113 = load ptr, ptr %key, align 8
  %incdec.ptr118 = getelementptr inbounds %struct.xkb_key, ptr %113, i32 1
  store ptr %incdec.ptr118, ptr %key, align 8
  br label %for.cond104, !llvm.loop !19

for.end119:                                       ; preds = %for.cond104
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end119, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %led) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #6
  %114 = load i1, ptr %retval, align 1
  ret i1 %114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i1 @CompileKeycodes(ptr noundef, ptr noundef, i32 noundef) #3

declare zeroext i1 @CompileKeyTypes(ptr noundef, ptr noundef, i32 noundef) #3

declare zeroext i1 @CompileCompatMap(ptr noundef, ptr noundef, i32 noundef) #3

declare zeroext i1 @CompileSymbols(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ApplyInterpsToKey(ptr noundef %keymap, ptr noundef %key) #0 {
entry:
  %retval = alloca i1, align 1
  %keymap.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %vmodmap = alloca i32, align 4
  %group = alloca i32, align 4
  %level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %interp = alloca ptr, align 8
  store ptr %keymap, ptr %keymap.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmodmap) #6
  store i32 0, ptr %vmodmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %group) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #6
  %0 = load ptr, ptr %key.addr, align 8
  %explicit = getelementptr inbounds %struct.xkb_key, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %explicit, align 8
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45

if.end:                                           ; preds = %entry
  store i32 0, ptr %group, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %if.end
  %2 = load i32, ptr %group, align 4
  %3 = load ptr, ptr %key.addr, align 8
  %num_groups = getelementptr inbounds %struct.xkb_key, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %num_groups, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %level, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %level, align 4
  %6 = load ptr, ptr %key.addr, align 8
  %7 = load i32, ptr %group, align 4
  %call = call i32 @XkbKeyNumLevels(ptr noundef %6, i32 noundef %7)
  %cmp2 = icmp ult i32 %5, %call
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %interp) #6
  %8 = load ptr, ptr %keymap.addr, align 8
  %9 = load ptr, ptr %key.addr, align 8
  %10 = load i32, ptr %group, align 4
  %11 = load i32, ptr %level, align 4
  %call4 = call ptr @FindInterpForKey(ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11)
  store ptr %call4, ptr %interp, align 8
  %12 = load ptr, ptr %interp, align 8
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.body3
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.body3
  %13 = load i32, ptr %group, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end7
  %14 = load i32, ptr %level, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %key.addr, align 8
  %explicit11 = getelementptr inbounds %struct.xkb_key, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %explicit11, align 8
  %and12 = and i32 %16, 4
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end17, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.then10
  %17 = load ptr, ptr %interp, align 8
  %repeat = getelementptr inbounds %struct.xkb_sym_interpret, ptr %17, i32 0, i32 6
  %18 = load i8, ptr %repeat, align 1, !range !7, !noundef !8
  %tobool15 = trunc i8 %18 to i1
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  %19 = load ptr, ptr %key.addr, align 8
  %repeats = getelementptr inbounds %struct.xkb_key, ptr %19, i32 0, i32 5
  store i8 1, ptr %repeats, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true14, %if.then10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %if.end7
  %20 = load i32, ptr %group, align 4
  %cmp19 = icmp eq i32 %20, 0
  br i1 %cmp19, label %land.lhs.true20, label %lor.lhs.false

land.lhs.true20:                                  ; preds = %if.end18
  %21 = load i32, ptr %level, align 4
  %cmp21 = icmp eq i32 %21, 0
  br i1 %cmp21, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true20, %if.end18
  %22 = load ptr, ptr %interp, align 8
  %level_one_only = getelementptr inbounds %struct.xkb_sym_interpret, ptr %22, i32 0, i32 5
  %23 = load i8, ptr %level_one_only, align 4, !range !7, !noundef !8
  %tobool22 = trunc i8 %23 to i1
  br i1 %tobool22, label %if.end28, label %if.then23

if.then23:                                        ; preds = %lor.lhs.false, %land.lhs.true20
  %24 = load ptr, ptr %interp, align 8
  %virtual_mod = getelementptr inbounds %struct.xkb_sym_interpret, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %virtual_mod, align 4
  %cmp24 = icmp ne i32 %25, -1
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.then23
  %26 = load ptr, ptr %interp, align 8
  %virtual_mod26 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %virtual_mod26, align 4
  %shl = shl i32 1, %27
  %28 = load i32, ptr %vmodmap, align 4
  %or = or i32 %28, %shl
  store i32 %or, ptr %vmodmap, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %lor.lhs.false
  %29 = load ptr, ptr %interp, align 8
  %action = getelementptr inbounds %struct.xkb_sym_interpret, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %action, align 4
  %cmp29 = icmp ne i32 %30, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end28
  %31 = load ptr, ptr %key.addr, align 8
  %groups = getelementptr inbounds %struct.xkb_key, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %groups, align 8
  %33 = load i32, ptr %group, align 4
  %idxprom = zext i32 %33 to i64
  %arrayidx = getelementptr inbounds %struct.xkb_group, ptr %32, i64 %idxprom
  %levels = getelementptr inbounds %struct.xkb_group, ptr %arrayidx, i32 0, i32 2
  %34 = load ptr, ptr %levels, align 8
  %35 = load i32, ptr %level, align 4
  %idxprom31 = zext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds %struct.xkb_level, ptr %34, i64 %idxprom31
  %action33 = getelementptr inbounds %struct.xkb_level, ptr %arrayidx32, i32 0, i32 0
  %36 = load ptr, ptr %interp, align 8
  %action34 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %36, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %action33, ptr align 4 %action34, i64 16, i1 false)
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end28
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %interp) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %37 = load i32, ptr %level, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %level, align 4
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  br label %for.inc36

for.inc36:                                        ; preds = %for.end
  %38 = load i32, ptr %group, align 4
  %inc37 = add i32 %38, 1
  store i32 %inc37, ptr %group, align 4
  br label %for.cond, !llvm.loop !21

for.end38:                                        ; preds = %for.cond
  %39 = load ptr, ptr %key.addr, align 8
  %explicit39 = getelementptr inbounds %struct.xkb_key, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %explicit39, align 8
  %and40 = and i32 %40, 2
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.end44, label %if.then42

if.then42:                                        ; preds = %for.end38
  %41 = load i32, ptr %vmodmap, align 4
  %42 = load ptr, ptr %key.addr, align 8
  %vmodmap43 = getelementptr inbounds %struct.xkb_key, ptr %42, i32 0, i32 4
  store i32 %41, ptr %vmodmap43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.end38
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %if.end44, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %group) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmodmap) #6
  %43 = load i1, ptr %retval, align 1
  ret i1 %43

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @ComputeEffectiveMask(ptr noundef %keymap, ptr noundef %mods) #0 {
entry:
  %keymap.addr = alloca ptr, align 8
  %mods.addr = alloca ptr, align 8
  store ptr %keymap, ptr %keymap.addr, align 8
  store ptr %mods, ptr %mods.addr, align 8
  %0 = load ptr, ptr %keymap.addr, align 8
  %1 = load ptr, ptr %mods.addr, align 8
  %mods1 = getelementptr inbounds %struct.xkb_mods, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %mods1, align 4
  %call = call i32 @mod_mask_get_effective(ptr noundef %0, i32 noundef %2)
  %3 = load ptr, ptr %mods.addr, align 8
  %mask = getelementptr inbounds %struct.xkb_mods, ptr %3, i32 0, i32 1
  store i32 %call, ptr %mask, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @XkbKeyNumLevels(ptr noundef %key, i32 noundef %layout) #4 {
entry:
  %key.addr = alloca ptr, align 8
  %layout.addr = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  store i32 %layout, ptr %layout.addr, align 4
  %0 = load ptr, ptr %key.addr, align 8
  %groups = getelementptr inbounds %struct.xkb_key, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %groups, align 8
  %2 = load i32, ptr %layout.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.xkb_group, ptr %1, i64 %idxprom
  %type = getelementptr inbounds %struct.xkb_group, ptr %arrayidx, i32 0, i32 1
  %3 = load ptr, ptr %type, align 8
  %num_levels = getelementptr inbounds %struct.xkb_key_type, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %num_levels, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal void @UpdateActionMods(ptr noundef %keymap, ptr noundef %act, i32 noundef %modmap) #0 {
entry:
  %keymap.addr = alloca ptr, align 8
  %act.addr = alloca ptr, align 8
  %modmap.addr = alloca i32, align 4
  store ptr %keymap, ptr %keymap.addr, align 8
  store ptr %act, ptr %act.addr, align 8
  store i32 %modmap, ptr %modmap.addr, align 4
  %0 = load ptr, ptr %act.addr, align 8
  %1 = load i32, ptr %0, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load ptr, ptr %act.addr, align 8
  %flags = getelementptr inbounds %struct.xkb_mod_action, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i32, ptr %modmap.addr, align 4
  %5 = load ptr, ptr %act.addr, align 8
  %mods = getelementptr inbounds %struct.xkb_mod_action, ptr %5, i32 0, i32 2
  %mods1 = getelementptr inbounds %struct.xkb_mods, ptr %mods, i32 0, i32 0
  store i32 %4, ptr %mods1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %6 = load ptr, ptr %keymap.addr, align 8
  %7 = load ptr, ptr %act.addr, align 8
  %mods2 = getelementptr inbounds %struct.xkb_mod_action, ptr %7, i32 0, i32 2
  call void @ComputeEffectiveMask(ptr noundef %6, ptr noundef %mods2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @FindInterpForKey(ptr noundef %keymap, ptr noundef %key, i32 noundef %group, i32 noundef %level) #0 {
entry:
  %retval = alloca ptr, align 8
  %keymap.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %group.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %syms = alloca ptr, align 8
  %num_syms = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %interp = alloca ptr, align 8
  %mods = alloca i32, align 4
  %found = alloca i8, align 1
  store ptr %keymap, ptr %keymap.addr, align 8
  store ptr %key, ptr %key.addr, align 8
  store i32 %group, ptr %group.addr, align 4
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %syms) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_syms) #6
  %0 = load ptr, ptr %keymap.addr, align 8
  %1 = load ptr, ptr %key.addr, align 8
  %keycode = getelementptr inbounds %struct.xkb_key, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %keycode, align 8
  %3 = load i32, ptr %group.addr, align 4
  %4 = load i32, ptr %level.addr, align 4
  %call = call i32 @xkb_keymap_key_get_syms_by_level(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %syms)
  store i32 %call, ptr %num_syms, align 4
  %5 = load i32, ptr %num_syms, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %keymap.addr, align 8
  %num_sym_interprets = getelementptr inbounds %struct.xkb_keymap, ptr %7, i32 0, i32 12
  %8 = load i32, ptr %num_sym_interprets, align 4
  %cmp1 = icmp ult i32 %6, %8
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup41

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %interp) #6
  %9 = load ptr, ptr %keymap.addr, align 8
  %sym_interprets = getelementptr inbounds %struct.xkb_keymap, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %sym_interprets, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.xkb_sym_interpret, ptr %10, i64 %idxprom
  store ptr %arrayidx, ptr %interp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %mods) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #6
  store i8 0, ptr %found, align 1
  %12 = load i32, ptr %num_syms, align 4
  %cmp2 = icmp sgt i32 %12, 1
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load ptr, ptr %interp, align 8
  %sym = getelementptr inbounds %struct.xkb_sym_interpret, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %sym, align 4
  %15 = load ptr, ptr %syms, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %15, i64 0
  %16 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp ne i32 %14, %16
  br i1 %cmp4, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %17 = load ptr, ptr %interp, align 8
  %sym5 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %sym5, align 4
  %cmp6 = icmp ne i32 %18, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %19 = load ptr, ptr %interp, align 8
  %level_one_only = getelementptr inbounds %struct.xkb_sym_interpret, ptr %19, i32 0, i32 5
  %20 = load i8, ptr %level_one_only, align 4, !range !7, !noundef !8
  %tobool = trunc i8 %20 to i1
  br i1 %tobool, label %land.lhs.true9, label %if.else

land.lhs.true9:                                   ; preds = %if.end8
  %21 = load i32, ptr %level.addr, align 4
  %cmp10 = icmp ne i32 %21, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true9
  store i32 0, ptr %mods, align 4
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true9, %if.end8
  %22 = load ptr, ptr %key.addr, align 8
  %modmap = getelementptr inbounds %struct.xkb_key, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %modmap, align 4
  store i32 %23, ptr %mods, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %24 = load ptr, ptr %interp, align 8
  %match = getelementptr inbounds %struct.xkb_sym_interpret, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %match, align 4
  switch i32 %25, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb21
    i32 3, label %sw.bb26
    i32 4, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end12
  %26 = load ptr, ptr %interp, align 8
  %mods13 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %mods13, align 4
  %28 = load i32, ptr %mods, align 4
  %and = and i32 %27, %28
  %tobool14 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool14, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, ptr %found, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end12
  %29 = load i32, ptr %mods, align 4
  %tobool16 = icmp ne i32 %29, 0
  br i1 %tobool16, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %sw.bb15
  %30 = load ptr, ptr %interp, align 8
  %mods17 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %mods17, align 4
  %32 = load i32, ptr %mods, align 4
  %and18 = and i32 %31, %32
  %tobool19 = icmp ne i32 %and18, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb15
  %33 = phi i1 [ true, %sw.bb15 ], [ %tobool19, %lor.rhs ]
  %frombool20 = zext i1 %33 to i8
  store i8 %frombool20, ptr %found, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end12
  %34 = load ptr, ptr %interp, align 8
  %mods22 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %mods22, align 4
  %36 = load i32, ptr %mods, align 4
  %and23 = and i32 %35, %36
  %tobool24 = icmp ne i32 %and23, 0
  %frombool25 = zext i1 %tobool24 to i8
  store i8 %frombool25, ptr %found, align 1
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end12
  %37 = load ptr, ptr %interp, align 8
  %mods27 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %mods27, align 4
  %39 = load i32, ptr %mods, align 4
  %and28 = and i32 %38, %39
  %40 = load ptr, ptr %interp, align 8
  %mods29 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %mods29, align 4
  %cmp30 = icmp eq i32 %and28, %41
  %frombool31 = zext i1 %cmp30 to i8
  store i8 %frombool31, ptr %found, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end12
  %42 = load ptr, ptr %interp, align 8
  %mods33 = getelementptr inbounds %struct.xkb_sym_interpret, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %mods33, align 4
  %44 = load i32, ptr %mods, align 4
  %cmp34 = icmp eq i32 %43, %44
  %frombool35 = zext i1 %cmp34 to i8
  store i8 %frombool35, ptr %found, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12, %sw.bb32, %sw.bb26, %sw.bb21, %lor.end, %sw.bb
  %45 = load i8, ptr %found, align 1, !range !7, !noundef !8
  %tobool36 = trunc i8 %45 to i1
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %sw.epilog
  %46 = load ptr, ptr %interp, align 8
  store ptr %46, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %mods) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %interp) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %47 = load i32, ptr %i, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

cleanup41:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %cleanup.dest42 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest42, label %cleanup43 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup41
  store ptr @default_interpret, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %for.end, %cleanup41, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_syms) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %syms) #6
  %48 = load ptr, ptr %retval, align 8
  ret ptr %48
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @xkb_keymap_key_get_syms_by_level(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @mod_mask_get_effective(ptr noundef, i32 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
