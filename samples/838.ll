; ModuleID = 'samples/838.bc'
source_filename = ".././../src/chrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Chrom_T = type { i32, i8, ptr, i32, ptr, i32, i8, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c".././../src/chrom.c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"chr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Chr\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"MT\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Chrom_free(ptr noundef %old) #0 {
entry:
  %old.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %alpha = getelementptr inbounds %struct.Chrom_T, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %alpha, align 8, !tbaa !9
  call void @Mem_free(ptr noundef %2, ptr noundef @.str, i32 noundef 56)
  %3 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %alpha1 = getelementptr inbounds %struct.Chrom_T, ptr %4, i32 0, i32 4
  store ptr null, ptr %alpha1, align 8, !tbaa !9
  %5 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %string = getelementptr inbounds %struct.Chrom_T, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %string, align 8, !tbaa !12
  call void @Mem_free(ptr noundef %7, ptr noundef @.str, i32 noundef 57)
  %8 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %string2 = getelementptr inbounds %struct.Chrom_T, ptr %9, i32 0, i32 2
  store ptr null, ptr %string2, align 8, !tbaa !12
  %10 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %11, ptr noundef @.str, i32 noundef 58)
  %12 = load ptr, ptr %old.addr, align 8, !tbaa !5
  store ptr null, ptr %12, align 8, !tbaa !5
  ret void
}

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Chrom_string(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %string = getelementptr inbounds %struct.Chrom_T, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %string, align 8, !tbaa !12
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Chrom_circularp(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %circularp = getelementptr inbounds %struct.Chrom_T, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %circularp, align 4, !tbaa !13
  ret i8 %1
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Chrom_altlocp(ptr noundef %alt_scaffold_start, ptr noundef %alt_scaffold_end, ptr noundef %this) #0 {
entry:
  %retval = alloca i8, align 1
  %alt_scaffold_start.addr = alloca ptr, align 8
  %alt_scaffold_end.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %alt_scaffold_start, ptr %alt_scaffold_start.addr, align 8, !tbaa !5
  store ptr %alt_scaffold_end, ptr %alt_scaffold_end.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %alt_scaffold_start1 = getelementptr inbounds %struct.Chrom_T, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %alt_scaffold_start1, align 8, !tbaa !14
  %2 = load ptr, ptr %alt_scaffold_start.addr, align 8, !tbaa !5
  store i32 %1, ptr %2, align 4, !tbaa !15
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %alt_scaffold_end2 = getelementptr inbounds %struct.Chrom_T, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %alt_scaffold_end2, align 4, !tbaa !16
  %5 = load ptr, ptr %alt_scaffold_end.addr, align 8, !tbaa !5
  store i32 %4, ptr %5, align 4, !tbaa !15
  %6 = load ptr, ptr %alt_scaffold_end.addr, align 8, !tbaa !5
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = load ptr, ptr %alt_scaffold_start.addr, align 8, !tbaa !5
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %cmp = icmp ne i32 %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i8, ptr %retval, align 1
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Chrom_from_string(ptr noundef %string, ptr noundef %mitochondrial_string, i32 noundef %order, i8 noundef zeroext %circularp, i32 noundef %alt_scaffold_start, i32 noundef %alt_scaffold_end) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %mitochondrial_string.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %circularp.addr = alloca i8, align 1
  %alt_scaffold_start.addr = alloca i32, align 4
  %alt_scaffold_end.addr = alloca i32, align 4
  %new = alloca ptr, align 8
  %ndigits = alloca i32, align 4
  %p = alloca ptr, align 8
  %mitochondrial_p = alloca i8, align 1
  %sex_p = alloca i8, align 1
  store ptr %string, ptr %string.addr, align 8, !tbaa !5
  store ptr %mitochondrial_string, ptr %mitochondrial_string.addr, align 8, !tbaa !5
  store i32 %order, ptr %order.addr, align 4, !tbaa !15
  store i8 %circularp, ptr %circularp.addr, align 1, !tbaa !17
  store i32 %alt_scaffold_start, ptr %alt_scaffold_start.addr, align 4, !tbaa !15
  store i32 %alt_scaffold_end, ptr %alt_scaffold_end.addr, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #6
  %call = call ptr @Mem_alloc(i64 noundef 48, ptr noundef @.str, i32 noundef 96)
  store ptr %call, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndigits) #6
  store i32 0, ptr %ndigits, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %mitochondrial_p) #6
  store i8 0, ptr %mitochondrial_p, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 1, ptr %sex_p) #6
  store i8 0, ptr %sex_p, align 1, !tbaa !17
  %0 = load i32, ptr %order.addr, align 4, !tbaa !15
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %order1 = getelementptr inbounds %struct.Chrom_T, ptr %1, i32 0, i32 0
  store i32 %0, ptr %order1, align 8, !tbaa !18
  %2 = load i8, ptr %circularp.addr, align 1, !tbaa !17
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %circularp2 = getelementptr inbounds %struct.Chrom_T, ptr %3, i32 0, i32 6
  store i8 %2, ptr %circularp2, align 4, !tbaa !13
  %4 = load i32, ptr %alt_scaffold_start.addr, align 4, !tbaa !15
  %5 = load ptr, ptr %new, align 8, !tbaa !5
  %alt_scaffold_start3 = getelementptr inbounds %struct.Chrom_T, ptr %5, i32 0, i32 7
  store i32 %4, ptr %alt_scaffold_start3, align 8, !tbaa !14
  %6 = load i32, ptr %alt_scaffold_end.addr, align 4, !tbaa !15
  %7 = load ptr, ptr %new, align 8, !tbaa !5
  %alt_scaffold_end4 = getelementptr inbounds %struct.Chrom_T, ptr %7, i32 0, i32 8
  store i32 %6, ptr %alt_scaffold_end4, align 4, !tbaa !16
  %8 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call5 = call i64 @strlen(ptr noundef %8) #7
  %add = add i64 %call5, 1
  %mul = mul i64 %add, 1
  %call6 = call ptr @Mem_alloc(i64 noundef %mul, ptr noundef @.str, i32 noundef 108)
  %9 = load ptr, ptr %new, align 8, !tbaa !5
  %string7 = getelementptr inbounds %struct.Chrom_T, ptr %9, i32 0, i32 2
  store ptr %call6, ptr %string7, align 8, !tbaa !12
  %10 = load ptr, ptr %new, align 8, !tbaa !5
  %string8 = getelementptr inbounds %struct.Chrom_T, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %string8, align 8, !tbaa !12
  %12 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call9 = call ptr @strcpy(ptr noundef %11, ptr noundef %12) #6
  %13 = load ptr, ptr %mitochondrial_string.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %13, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %mitochondrial_string.addr, align 8, !tbaa !5
  %call10 = call i32 @strcmp(ptr noundef %14, ptr noundef %15) #7
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8 1, ptr %mitochondrial_p, align 1, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call11 = call i32 @strncmp(ptr noundef %16, ptr noundef @.str.1, i64 noundef 3) #7
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.end
  %17 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call13 = call i32 @strncmp(ptr noundef %17, ptr noundef @.str.2, i64 noundef 3) #7
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  %18 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, ptr %18, i64 3
  store ptr %add.ptr, ptr %string.addr, align 8, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false
  %19 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call17 = call i32 @strcmp(ptr noundef %19, ptr noundef @.str.3) #7
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  store i8 1, ptr %sex_p, align 1, !tbaa !17
  br label %if.end41

if.else:                                          ; preds = %if.end16
  %20 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call20 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.4) #7
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.else
  store i8 1, ptr %sex_p, align 1, !tbaa !17
  br label %if.end40

if.else23:                                        ; preds = %if.else
  %21 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call24 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.5) #7
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %if.else23
  store i8 1, ptr %mitochondrial_p, align 1, !tbaa !17
  br label %if.end39

if.else27:                                        ; preds = %if.else23
  %22 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call28 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str.6) #7
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else31, label %if.then30

if.then30:                                        ; preds = %if.else27
  store i8 1, ptr %mitochondrial_p, align 1, !tbaa !17
  br label %if.end38

if.else31:                                        ; preds = %if.else27
  %23 = load ptr, ptr %mitochondrial_string.addr, align 8, !tbaa !5
  %cmp32 = icmp ne ptr %23, null
  br i1 %cmp32, label %land.lhs.true33, label %if.end37

land.lhs.true33:                                  ; preds = %if.else31
  %24 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %mitochondrial_string.addr, align 8, !tbaa !5
  %call34 = call i32 @strcmp(ptr noundef %24, ptr noundef %25) #7
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %land.lhs.true33
  store i8 1, ptr %mitochondrial_p, align 1, !tbaa !17
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true33, %if.else31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then30
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then26
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then22
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then19
  %26 = load ptr, ptr %string.addr, align 8, !tbaa !5
  store ptr %26, ptr %p, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end41
  %27 = load ptr, ptr %p, align 8, !tbaa !5
  %28 = load i8, ptr %27, align 1, !tbaa !17
  %conv = sext i8 %28 to i32
  %cmp42 = icmp ne i32 %conv, 0
  br i1 %cmp42, label %land.lhs.true44, label %land.end

land.lhs.true44:                                  ; preds = %while.cond
  %29 = load ptr, ptr %p, align 8, !tbaa !5
  %30 = load i8, ptr %29, align 1, !tbaa !17
  %conv45 = sext i8 %30 to i32
  %cmp46 = icmp sge i32 %conv45, 48
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true44
  %31 = load ptr, ptr %p, align 8, !tbaa !5
  %32 = load i8, ptr %31, align 1, !tbaa !17
  %conv48 = sext i8 %32 to i32
  %cmp49 = icmp sle i32 %conv48, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true44, %while.cond
  %33 = phi i1 [ false, %land.lhs.true44 ], [ false, %while.cond ], [ %cmp49, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i32, ptr %ndigits, align 4, !tbaa !15
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %ndigits, align 4, !tbaa !15
  %35 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %land.end
  %36 = load i32, ptr %ndigits, align 4, !tbaa !15
  %cmp51 = icmp sgt i32 %36, 0
  br i1 %cmp51, label %land.lhs.true53, label %if.else82

land.lhs.true53:                                  ; preds = %while.end
  %37 = load i32, ptr %ndigits, align 4, !tbaa !15
  %cmp54 = icmp sle i32 %37, 4
  br i1 %cmp54, label %land.lhs.true56, label %if.else82

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %38 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx, align 1, !tbaa !17
  %conv57 = sext i8 %39 to i32
  %cmp58 = icmp ne i32 %conv57, 48
  br i1 %cmp58, label %if.then60, label %if.else82

if.then60:                                        ; preds = %land.lhs.true56
  %40 = load ptr, ptr %new, align 8, !tbaa !5
  %numericp = getelementptr inbounds %struct.Chrom_T, ptr %40, i32 0, i32 1
  store i8 1, ptr %numericp, align 4, !tbaa !21
  %41 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %call61 = call i32 @atoi(ptr noundef %41) #7
  %42 = load ptr, ptr %new, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Chrom_T, ptr %42, i32 0, i32 3
  store i32 %call61, ptr %num, align 8, !tbaa !22
  %43 = load ptr, ptr %p, align 8, !tbaa !5
  %call62 = call i64 @strlen(ptr noundef %43) #7
  %add63 = add i64 %call62, 1
  %call64 = call ptr @Mem_calloc(i64 noundef %add63, i64 noundef 1, ptr noundef @.str, i32 noundef 144)
  %44 = load ptr, ptr %new, align 8, !tbaa !5
  %alpha = getelementptr inbounds %struct.Chrom_T, ptr %44, i32 0, i32 4
  store ptr %call64, ptr %alpha, align 8, !tbaa !9
  %45 = load ptr, ptr %new, align 8, !tbaa !5
  %alpha65 = getelementptr inbounds %struct.Chrom_T, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %alpha65, align 8, !tbaa !9
  %47 = load ptr, ptr %p, align 8, !tbaa !5
  %call66 = call ptr @strcpy(ptr noundef %46, ptr noundef %47) #6
  %48 = load i8, ptr %mitochondrial_p, align 1, !tbaa !17
  %conv67 = zext i8 %48 to i32
  %cmp68 = icmp eq i32 %conv67, 1
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.then60
  %49 = load ptr, ptr %new, align 8, !tbaa !5
  %chromtype = getelementptr inbounds %struct.Chrom_T, ptr %49, i32 0, i32 5
  store i32 2, ptr %chromtype, align 8, !tbaa !23
  br label %if.end81

if.else71:                                        ; preds = %if.then60
  %50 = load ptr, ptr %new, align 8, !tbaa !5
  %alpha72 = getelementptr inbounds %struct.Chrom_T, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %alpha72, align 8, !tbaa !9
  %call73 = call i64 @strlen(ptr noundef %51) #7
  %cmp74 = icmp eq i64 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else71
  %52 = load ptr, ptr %new, align 8, !tbaa !5
  %chromtype77 = getelementptr inbounds %struct.Chrom_T, ptr %52, i32 0, i32 5
  store i32 0, ptr %chromtype77, align 8, !tbaa !23
  br label %if.end80

if.else78:                                        ; preds = %if.else71
  %53 = load ptr, ptr %new, align 8, !tbaa !5
  %chromtype79 = getelementptr inbounds %struct.Chrom_T, ptr %53, i32 0, i32 5
  store i32 3, ptr %chromtype79, align 8, !tbaa !23
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then76
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then70
  br label %if.end140

if.else82:                                        ; preds = %land.lhs.true56, %land.lhs.true53, %while.end
  %54 = load ptr, ptr %new, align 8, !tbaa !5
  %numericp83 = getelementptr inbounds %struct.Chrom_T, ptr %54, i32 0, i32 1
  store i8 0, ptr %numericp83, align 4, !tbaa !21
  %55 = load ptr, ptr %new, align 8, !tbaa !5
  %num84 = getelementptr inbounds %struct.Chrom_T, ptr %55, i32 0, i32 3
  store i32 0, ptr %num84, align 8, !tbaa !22
  %56 = load ptr, ptr %new, align 8, !tbaa !5
  %alpha85 = getelementptr inbounds %struct.Chrom_T, ptr %56, i32 0, i32 4
  store ptr null, ptr %alpha85, align 8, !tbaa !9
  %57 = load i8, ptr %mitochondrial_p, align 1, !tbaa !17
  %conv86 = zext i8 %57 to i32
  %cmp87 = icmp eq i32 %conv86, 1
  br i1 %cmp87, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.else82
  %58 = load ptr, ptr %new, align 8, !tbaa !5
  %chromtype90 = getelementptr inbounds %struct.Chrom_T, ptr %58, i32 0, i32 5
  store i32 2, ptr %chromtype90, align 8, !tbaa !23
  br label %if.end139

if.else91:                                        ; preds = %if.else82
  %59 = load i8, ptr %sex_p, align 1, !tbaa !17
  %conv92 = zext i8 %59 to i32
  %cmp93 = icmp eq i32 %conv92, 1
  br i1 %cmp93, label %if.then95, label %if.else97

if.then95:                                        ; preds = %if.else91
  %60 = load ptr, ptr %new, align 8, !tbaa !5
  %chromtype96 = getelementptr inbounds %struct.Chrom_T, ptr %60, i32 0, i32 5
  store i32 1, ptr %chromtype96, align 8, !tbaa !23
  br label %if.end138

if.else97:                                        ; preds = %if.else91
  br label %while.cond98

while.cond98:                                     ; preds = %while.body110, %if.else97
  %61 = load ptr, ptr %p, align 8, !tbaa !5
  %62 = load i8, ptr %61, align 1, !tbaa !17
  %conv99 = sext i8 %62 to i32
  %cmp100 = icmp ne i32 %conv99, 0
  br i1 %cmp100, label %land.rhs102, label %land.end109

land.rhs102:                                      ; preds = %while.cond98
  %63 = load ptr, ptr %p, align 8, !tbaa !5
  %64 = load i8, ptr %63, align 1, !tbaa !17
  %conv103 = sext i8 %64 to i32
  %cmp104 = icmp slt i32 %conv103, 49
  br i1 %cmp104, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs102
  %65 = load ptr, ptr %p, align 8, !tbaa !5
  %66 = load i8, ptr %65, align 1, !tbaa !17
  %conv106 = sext i8 %66 to i32
  %cmp107 = icmp sgt i32 %conv106, 57
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs102
  %67 = phi i1 [ true, %land.rhs102 ], [ %cmp107, %lor.rhs ]
  br label %land.end109

land.end109:                                      ; preds = %lor.end, %while.cond98
  %68 = phi i1 [ false, %while.cond98 ], [ %67, %lor.end ]
  br i1 %68, label %while.body110, label %while.end112

while.body110:                                    ; preds = %land.end109
  %69 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr111 = getelementptr inbounds i8, ptr %69, i32 1
  store ptr %incdec.ptr111, ptr %p, align 8, !tbaa !5
  br label %while.cond98, !llvm.loop !24

while.end112:                                     ; preds = %land.end109
  %70 = load ptr, ptr %p, align 8, !tbaa !5
  %71 = load i8, ptr %70, align 1, !tbaa !17
  %conv113 = sext i8 %71 to i32
  %cmp114 = icmp ne i32 %conv113, 0
  br i1 %cmp114, label %if.then116, label %if.else135

if.then116:                                       ; preds = %while.end112
  %72 = load ptr, ptr %new, align 8, !tbaa !5
  %chromtype117 = getelementptr inbounds %struct.Chrom_T, ptr %72, i32 0, i32 5
  store i32 4, ptr %chromtype117, align 8, !tbaa !23
  %73 = load ptr, ptr %p, align 8, !tbaa !5
  %call118 = call i32 @atoi(ptr noundef %73) #7
  %74 = load ptr, ptr %new, align 8, !tbaa !5
  %num119 = getelementptr inbounds %struct.Chrom_T, ptr %74, i32 0, i32 3
  store i32 %call118, ptr %num119, align 8, !tbaa !22
  %75 = load ptr, ptr %p, align 8, !tbaa !5
  %76 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %75 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %76 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add120 = add nsw i64 %sub.ptr.sub, 1
  %mul121 = mul i64 %add120, 1
  %call122 = call ptr @Mem_alloc(i64 noundef %mul121, ptr noundef @.str, i32 noundef 175)
  %77 = load ptr, ptr %new, align 8, !tbaa !5
  %alpha123 = getelementptr inbounds %struct.Chrom_T, ptr %77, i32 0, i32 4
  store ptr %call122, ptr %alpha123, align 8, !tbaa !9
  %78 = load ptr, ptr %new, align 8, !tbaa !5
  %alpha124 = getelementptr inbounds %struct.Chrom_T, ptr %78, i32 0, i32 4
  %79 = load ptr, ptr %alpha124, align 8, !tbaa !9
  %80 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %81 = load ptr, ptr %p, align 8, !tbaa !5
  %82 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast125 = ptrtoint ptr %81 to i64
  %sub.ptr.rhs.cast126 = ptrtoint ptr %82 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %mul128 = mul i64 %sub.ptr.sub127, 1
  %call129 = call ptr @strncpy(ptr noundef %79, ptr noundef %80, i64 noundef %mul128) #6
  %83 = load ptr, ptr %new, align 8, !tbaa !5
  %alpha130 = getelementptr inbounds %struct.Chrom_T, ptr %83, i32 0, i32 4
  %84 = load ptr, ptr %alpha130, align 8, !tbaa !9
  %85 = load ptr, ptr %p, align 8, !tbaa !5
  %86 = load ptr, ptr %string.addr, align 8, !tbaa !5
  %sub.ptr.lhs.cast131 = ptrtoint ptr %85 to i64
  %sub.ptr.rhs.cast132 = ptrtoint ptr %86 to i64
  %sub.ptr.sub133 = sub i64 %sub.ptr.lhs.cast131, %sub.ptr.rhs.cast132
  %arrayidx134 = getelementptr inbounds i8, ptr %84, i64 %sub.ptr.sub133
  store i8 0, ptr %arrayidx134, align 1, !tbaa !17
  br label %if.end137

if.else135:                                       ; preds = %while.end112
  %87 = load ptr, ptr %new, align 8, !tbaa !5
  %chromtype136 = getelementptr inbounds %struct.Chrom_T, ptr %87, i32 0, i32 5
  store i32 5, ptr %chromtype136, align 8, !tbaa !23
  br label %if.end137

if.end137:                                        ; preds = %if.else135, %if.then116
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then95
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then89
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end81
  %88 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 1, ptr %sex_p) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %mitochondrial_p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndigits) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #6
  ret ptr %88
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @atoi(ptr noundef nonnull %__nptr) #5 {
entry:
  %__nptr.addr = alloca ptr, align 8
  store ptr %__nptr, ptr %__nptr.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__nptr.addr, align 8, !tbaa !5
  %call = call i64 @strtol(ptr noundef %0, ptr noundef null, i32 noundef 10) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

declare ptr @Mem_calloc(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_cmp_alpha(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %string = getelementptr inbounds %struct.Chrom_T, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %string, align 8, !tbaa !12
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %string1 = getelementptr inbounds %struct.Chrom_T, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %string1, align 8, !tbaa !12
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef %3) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_cmp_numeric_alpha(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %cmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %numericp = getelementptr inbounds %struct.Chrom_T, ptr %0, i32 0, i32 1
  %1 = load i8, ptr %numericp, align 4, !tbaa !21
  %conv = zext i8 %1 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %numericp3 = getelementptr inbounds %struct.Chrom_T, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %numericp3, align 4, !tbaa !21
  %conv4 = zext i8 %3 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %numericp7 = getelementptr inbounds %struct.Chrom_T, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %numericp7, align 4, !tbaa !21
  %conv8 = zext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.else17

land.lhs.true11:                                  ; preds = %if.else
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %numericp12 = getelementptr inbounds %struct.Chrom_T, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %numericp12, align 4, !tbaa !21
  %conv13 = zext i8 %7 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %land.lhs.true11
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else17:                                        ; preds = %land.lhs.true11, %if.else
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %numericp18 = getelementptr inbounds %struct.Chrom_T, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %numericp18, align 4, !tbaa !21
  %conv19 = zext i8 %9 to i32
  %cmp20 = icmp eq i32 %conv19, 1
  br i1 %cmp20, label %land.lhs.true22, label %if.else40

land.lhs.true22:                                  ; preds = %if.else17
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %numericp23 = getelementptr inbounds %struct.Chrom_T, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %numericp23, align 4, !tbaa !21
  %conv24 = zext i8 %11 to i32
  %cmp25 = icmp eq i32 %conv24, 1
  br i1 %cmp25, label %if.then27, label %if.else40

if.then27:                                        ; preds = %land.lhs.true22
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Chrom_T, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %num, align 8, !tbaa !22
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num28 = getelementptr inbounds %struct.Chrom_T, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %num28, align 8, !tbaa !22
  %cmp29 = icmp ult i32 %13, %15
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.then27
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else32:                                        ; preds = %if.then27
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num33 = getelementptr inbounds %struct.Chrom_T, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %num33, align 8, !tbaa !22
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num34 = getelementptr inbounds %struct.Chrom_T, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %num34, align 8, !tbaa !22
  %cmp35 = icmp ugt i32 %17, %19
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else32
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else38:                                        ; preds = %if.else32
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %alpha = getelementptr inbounds %struct.Chrom_T, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %alpha, align 8, !tbaa !9
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %alpha39 = getelementptr inbounds %struct.Chrom_T, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %alpha39, align 8, !tbaa !9
  %call = call i32 @strcmp(ptr noundef %21, ptr noundef %23) #7
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else40:                                        ; preds = %land.lhs.true22, %if.else17
  %24 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %string = getelementptr inbounds %struct.Chrom_T, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %string, align 8, !tbaa !12
  %26 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %string41 = getelementptr inbounds %struct.Chrom_T, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %string41, align 8, !tbaa !12
  %call42 = call i32 @strcmp(ptr noundef %25, ptr noundef %27) #7
  store i32 %call42, ptr %cmp, align 4, !tbaa !15
  %28 = load i32, ptr %cmp, align 4, !tbaa !15
  %cmp43 = icmp slt i32 %28, 0
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else40
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else46:                                        ; preds = %if.else40
  %29 = load i32, ptr %cmp, align 4, !tbaa !15
  %cmp47 = icmp sgt i32 %29, 0
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else46
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else50:                                        ; preds = %if.else46
  %30 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %chromtype = getelementptr inbounds %struct.Chrom_T, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %chromtype, align 8, !tbaa !23
  %cmp51 = icmp eq i32 %31, 5
  br i1 %cmp51, label %land.lhs.true53, label %if.else58

land.lhs.true53:                                  ; preds = %if.else50
  %32 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %chromtype54 = getelementptr inbounds %struct.Chrom_T, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %chromtype54, align 8, !tbaa !23
  %cmp55 = icmp eq i32 %33, 4
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %land.lhs.true53
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else58:                                        ; preds = %land.lhs.true53, %if.else50
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %chromtype59 = getelementptr inbounds %struct.Chrom_T, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %chromtype59, align 8, !tbaa !23
  %cmp60 = icmp eq i32 %35, 4
  br i1 %cmp60, label %land.lhs.true62, label %if.else67

land.lhs.true62:                                  ; preds = %if.else58
  %36 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %chromtype63 = getelementptr inbounds %struct.Chrom_T, ptr %36, i32 0, i32 5
  %37 = load i32, ptr %chromtype63, align 8, !tbaa !23
  %cmp64 = icmp eq i32 %37, 5
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %land.lhs.true62
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else67:                                        ; preds = %land.lhs.true62, %if.else58
  %38 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %chromtype68 = getelementptr inbounds %struct.Chrom_T, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %chromtype68, align 8, !tbaa !23
  %cmp69 = icmp eq i32 %39, 5
  br i1 %cmp69, label %land.lhs.true71, label %if.else76

land.lhs.true71:                                  ; preds = %if.else67
  %40 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %chromtype72 = getelementptr inbounds %struct.Chrom_T, ptr %40, i32 0, i32 5
  %41 = load i32, ptr %chromtype72, align 8, !tbaa !23
  %cmp73 = icmp eq i32 %41, 5
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %land.lhs.true71
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else76:                                        ; preds = %land.lhs.true71, %if.else67
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num77 = getelementptr inbounds %struct.Chrom_T, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %num77, align 8, !tbaa !22
  %44 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num78 = getelementptr inbounds %struct.Chrom_T, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %num78, align 8, !tbaa !22
  %cmp79 = icmp ult i32 %43, %45
  br i1 %cmp79, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.else76
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else82:                                        ; preds = %if.else76
  %46 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num83 = getelementptr inbounds %struct.Chrom_T, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %num83, align 8, !tbaa !22
  %48 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num84 = getelementptr inbounds %struct.Chrom_T, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %num84, align 8, !tbaa !22
  %cmp85 = icmp ugt i32 %47, %49
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.else82
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else88:                                        ; preds = %if.else82
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else88, %if.then87, %if.then81, %if.then75, %if.then66, %if.then57, %if.then49, %if.then45, %if.else38, %if.then37, %if.then31, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #6
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_cmp_chrom(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %cmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %chromtype = getelementptr inbounds %struct.Chrom_T, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %chromtype, align 8, !tbaa !23
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %chromtype1 = getelementptr inbounds %struct.Chrom_T, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %chromtype1, align 8, !tbaa !23
  %cmp2 = icmp ult i32 %1, %3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %chromtype3 = getelementptr inbounds %struct.Chrom_T, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %chromtype3, align 8, !tbaa !23
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %chromtype4 = getelementptr inbounds %struct.Chrom_T, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %chromtype4, align 8, !tbaa !23
  %cmp5 = icmp ult i32 %5, %7
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else7:                                         ; preds = %if.else
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %numericp = getelementptr inbounds %struct.Chrom_T, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %numericp, align 4, !tbaa !21
  %conv = zext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv, 1
  br i1 %cmp8, label %land.lhs.true, label %if.else27

land.lhs.true:                                    ; preds = %if.else7
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %numericp10 = getelementptr inbounds %struct.Chrom_T, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %numericp10, align 4, !tbaa !21
  %conv11 = zext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 1
  br i1 %cmp12, label %if.then14, label %if.else27

if.then14:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Chrom_T, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %num, align 8, !tbaa !22
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num15 = getelementptr inbounds %struct.Chrom_T, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %num15, align 8, !tbaa !22
  %cmp16 = icmp ult i32 %13, %15
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then14
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else19:                                        ; preds = %if.then14
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num20 = getelementptr inbounds %struct.Chrom_T, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %num20, align 8, !tbaa !22
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num21 = getelementptr inbounds %struct.Chrom_T, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %num21, align 8, !tbaa !22
  %cmp22 = icmp ugt i32 %17, %19
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else19
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.else19
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %alpha = getelementptr inbounds %struct.Chrom_T, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %alpha, align 8, !tbaa !9
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %alpha26 = getelementptr inbounds %struct.Chrom_T, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %alpha26, align 8, !tbaa !9
  %call = call i32 @strcmp(ptr noundef %21, ptr noundef %23) #7
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else27:                                        ; preds = %land.lhs.true, %if.else7
  %24 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %chromtype28 = getelementptr inbounds %struct.Chrom_T, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %chromtype28, align 8, !tbaa !23
  %cmp29 = icmp eq i32 %25, 4
  br i1 %cmp29, label %if.then31, label %if.else57

if.then31:                                        ; preds = %if.else27
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %alpha32 = getelementptr inbounds %struct.Chrom_T, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %alpha32, align 8, !tbaa !9
  %28 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %alpha33 = getelementptr inbounds %struct.Chrom_T, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %alpha33, align 8, !tbaa !9
  %call34 = call i32 @strcmp(ptr noundef %27, ptr noundef %29) #7
  store i32 %call34, ptr %cmp, align 4, !tbaa !15
  %30 = load i32, ptr %cmp, align 4, !tbaa !15
  %cmp35 = icmp slt i32 %30, 0
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then31
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else38:                                        ; preds = %if.then31
  %31 = load i32, ptr %cmp, align 4, !tbaa !15
  %cmp39 = icmp sgt i32 %31, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else42:                                        ; preds = %if.else38
  %32 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num43 = getelementptr inbounds %struct.Chrom_T, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %num43, align 8, !tbaa !22
  %34 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num44 = getelementptr inbounds %struct.Chrom_T, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %num44, align 8, !tbaa !22
  %cmp45 = icmp ult i32 %33, %35
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else42
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else48:                                        ; preds = %if.else42
  %36 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %num49 = getelementptr inbounds %struct.Chrom_T, ptr %36, i32 0, i32 3
  %37 = load i32, ptr %num49, align 8, !tbaa !22
  %38 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %num50 = getelementptr inbounds %struct.Chrom_T, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %num50, align 8, !tbaa !22
  %cmp51 = icmp ugt i32 %37, %39
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else48
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else54:                                        ; preds = %if.else48
  %40 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %string = getelementptr inbounds %struct.Chrom_T, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %string, align 8, !tbaa !12
  %42 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %string55 = getelementptr inbounds %struct.Chrom_T, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %string55, align 8, !tbaa !12
  %call56 = call i32 @strcmp(ptr noundef %41, ptr noundef %43) #7
  store i32 %call56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else57:                                        ; preds = %if.else27
  %44 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %string58 = getelementptr inbounds %struct.Chrom_T, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %string58, align 8, !tbaa !12
  %46 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %string59 = getelementptr inbounds %struct.Chrom_T, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %string59, align 8, !tbaa !12
  %call60 = call i32 @strcmp(ptr noundef %45, ptr noundef %47) #7
  store i32 %call60, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %if.else54, %if.then53, %if.then47, %if.then41, %if.then37, %if.else25, %if.then24, %if.then18, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #6
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_cmp_order(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %order = getelementptr inbounds %struct.Chrom_T, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %order, align 8, !tbaa !18
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %order1 = getelementptr inbounds %struct.Chrom_T, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %order1, align 8, !tbaa !18
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %order2 = getelementptr inbounds %struct.Chrom_T, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %order2, align 8, !tbaa !18
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %order3 = getelementptr inbounds %struct.Chrom_T, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %order3, align 8, !tbaa !18
  %cmp4 = icmp ult i32 %5, %7
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_compare_order(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store ptr %y, ptr %y.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr %3, ptr %b, align 8, !tbaa !5
  %4 = load ptr, ptr %a, align 8, !tbaa !5
  %order = getelementptr inbounds %struct.Chrom_T, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %order, align 8, !tbaa !18
  %6 = load ptr, ptr %b, align 8, !tbaa !5
  %order1 = getelementptr inbounds %struct.Chrom_T, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %order1, align 8, !tbaa !18
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %b, align 8, !tbaa !5
  %order2 = getelementptr inbounds %struct.Chrom_T, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %order2, align 8, !tbaa !18
  %10 = load ptr, ptr %a, align 8, !tbaa !5
  %order3 = getelementptr inbounds %struct.Chrom_T, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %order3, align 8, !tbaa !18
  %cmp4 = icmp ult i32 %9, %11
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_compare_alpha(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store ptr %y, ptr %y.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr %3, ptr %b, align 8, !tbaa !5
  %4 = load ptr, ptr %a, align 8, !tbaa !5
  %string = getelementptr inbounds %struct.Chrom_T, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %string, align 8, !tbaa !12
  %6 = load ptr, ptr %b, align 8, !tbaa !5
  %string1 = getelementptr inbounds %struct.Chrom_T, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %string1, align 8, !tbaa !12
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_compare_numeric_alpha(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store ptr %y, ptr %y.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr %3, ptr %b, align 8, !tbaa !5
  %4 = load ptr, ptr %a, align 8, !tbaa !5
  %5 = load ptr, ptr %b, align 8, !tbaa !5
  %call = call i32 @Chrom_cmp_numeric_alpha(ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_compare_chrom(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store ptr %y, ptr %y.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr %3, ptr %b, align 8, !tbaa !5
  %4 = load ptr, ptr %a, align 8, !tbaa !5
  %5 = load ptr, ptr %b, align 8, !tbaa !5
  %call = call i32 @Chrom_cmp_chrom(ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_compare_table(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store ptr %y, ptr %y.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  store ptr %0, ptr %a, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6
  %1 = load ptr, ptr %y.addr, align 8, !tbaa !5
  store ptr %1, ptr %b, align 8, !tbaa !5
  %2 = load ptr, ptr %a, align 8, !tbaa !5
  %3 = load ptr, ptr %b, align 8, !tbaa !5
  %call = call i32 @Chrom_cmp_chrom(ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Chrom_hash_table(ptr noundef %key) #0 {
entry:
  %key.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #6
  %0 = load ptr, ptr %key.addr, align 8, !tbaa !5
  store ptr %0, ptr %this, align 8, !tbaa !5
  %1 = load ptr, ptr %this, align 8, !tbaa !5
  %string = getelementptr inbounds %struct.Chrom_T, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %string, align 8, !tbaa !12
  %call = call i32 @string_hash(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #6
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @string_hash(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #6
  store i32 0, ptr %h, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !17
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %h, align 4, !tbaa !15
  %shl = shl i32 %3, 5
  %4 = load i32, ptr %h, align 4, !tbaa !15
  %sub = sub i32 %shl, %4
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !17
  %conv2 = sext i8 %6 to i32
  %add = add i32 %sub, %conv2
  store i32 %add, ptr %h, align 4, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %h, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #6
  ret i32 %8
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 24}
!10 = !{!"Chrom_T", !11, i64 0, !7, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !7, i64 32, !7, i64 36, !11, i64 40, !11, i64 44}
!11 = !{!"int", !7, i64 0}
!12 = !{!10, !6, i64 8}
!13 = !{!10, !7, i64 36}
!14 = !{!10, !11, i64 40}
!15 = !{!11, !11, i64 0}
!16 = !{!10, !11, i64 44}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !11, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10, !7, i64 4}
!22 = !{!10, !11, i64 16}
!23 = !{!10, !7, i64 32}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
