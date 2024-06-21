; ModuleID = 'samples/341.bc'
source_filename = "lisp/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._LispMac = type { %struct.anon.15, %struct.anon.16, %struct.anon.17, %struct.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.19, [1 x %struct.__jmp_buf_tag], %struct.anon.20, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.anon.21, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], ptr, ptr, ptr, i32, i32, i32, ptr, i32 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.anon.16 = type { ptr, ptr, i32, i32, i32, i32 }
%struct.anon.17 = type { ptr, i32 }
%struct.anon.18 = type { ptr, i32, i32 }
%struct.anon.19 = type { i32, i32, ptr, ptr }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.anon.20 = type { i8, i32, i64, i32 }
%struct.anon.21 = type { i32, i32, i32, ptr }
%struct._LispBuiltin = type { i32, ptr, ptr, i32, i32, ptr, ptr }
%struct._LispObj = type { i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i64, i8 }
%struct._LispAtom = type { ptr, ptr, i16, ptr, i32, ptr, ptr, ptr, ptr, [5 x ptr] }
%struct._hash_key = type { ptr, i32 }
%struct.anon.3 = type { ptr, ptr }
%struct.anon.7 = type { %union.anon.8, ptr, i8 }
%union.anon.8 = type { ptr }
%struct._LispString = type { ptr, i32, i32, i32, i32, i32, i32, i8 }
%struct.anon.5 = type { ptr, ptr, i16 }

@lisp__data = external global %struct._LispMac, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s: %s is not a string\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: %s is not a positive fixnum\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: index %ld too large for string length %ld\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: %s is not a character\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: %s is readonly\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: cannot represent character %d\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: %s is not a fixnum\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [42 x i8] c"%s: radix must be >= 2 and <= 36, not %ld\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [44 x i8] c"%s: :RADIX %ld must be in the range 2 to 36\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [40 x i8] c"%s: %s has a bad integer representation\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [28 x i8] c"%s: unexpected end of input\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !54
@.str.12 = private unnamed_addr constant [25 x i8] c"%s: %s is not a sequence\00", align 1, !dbg !59

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharLess(ptr noundef %builtin) #0 !dbg !493 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !497
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 1, i32 noundef 0), !dbg !498
  ret ptr %call, !dbg !499
}

; Function Attrs: nounwind uwtable
define internal ptr @LispCharCompare(ptr noundef %builtin, i32 noundef %operation, i32 noundef %ignore_case) #0 !dbg !500 {
entry:
  %retval = alloca ptr, align 8
  %builtin.addr = alloca ptr, align 8
  %operation.addr = alloca i32, align 4
  %ignore_case.addr = alloca i32, align 4
  %object = alloca ptr, align 8
  %cmp = alloca i32, align 4
  %value = alloca i32, align 4
  %next_value = alloca i32, align 4
  %character = alloca ptr, align 8
  %more_characters = alloca ptr, align 8
  %__res = alloca i32, align 4
  %__c = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res82 = alloca i32, align 4
  %__c84 = alloca i32, align 4
  %tmp100 = alloca i32, align 4
  %__res123 = alloca i32, align 4
  %__c125 = alloca i32, align 4
  %tmp141 = alloca i32, align 4
  %__res181 = alloca i32, align 4
  %__c183 = alloca i32, align 4
  %tmp199 = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !504, metadata !DIExpression()), !dbg !554
  store i32 %operation, ptr %operation.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %operation.addr, metadata !505, metadata !DIExpression()), !dbg !555
  store i32 %ignore_case, ptr %ignore_case.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %ignore_case.addr, metadata !506, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #11, !dbg !557
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !507, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp) #11, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %cmp, metadata !508, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #11, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !509, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_value) #11, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %next_value, metadata !510, metadata !DIExpression()), !dbg !562
  call void @llvm.lifetime.start.p0(i64 8, ptr %character) #11, !dbg !563
  tail call void @llvm.dbg.declare(metadata ptr %character, metadata !511, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 8, ptr %more_characters) #11, !dbg !563
  tail call void @llvm.dbg.declare(metadata ptr %more_characters, metadata !512, metadata !DIExpression()), !dbg !565
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !566
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !566
  %add = add nsw i32 %1, 1, !dbg !566
  %idxprom = sext i32 %add to i64, !dbg !566
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !566
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !566
  store ptr %2, ptr %more_characters, align 8, !dbg !567
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !568
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !568
  %add1 = add nsw i32 %4, 0, !dbg !568
  %idxprom2 = sext i32 %add1 to i64, !dbg !568
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !568
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !568
  store ptr %5, ptr %character, align 8, !dbg !569
  %6 = load ptr, ptr %character, align 8, !dbg !570
  %7 = ptrtoint ptr %6 to i64, !dbg !570
  %and = and i64 %7, 15, !dbg !570
  %cmp4 = icmp eq i64 %and, 5, !dbg !570
  br i1 %cmp4, label %if.end, label %if.then, !dbg !572

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %builtin.addr, align 8, !dbg !570
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %8, i32 0, i32 6, !dbg !570
  %9 = load ptr, ptr %symbol, align 8, !dbg !570
  %data = getelementptr inbounds %struct._LispObj, ptr %9, i32 0, i32 1, !dbg !570
  %10 = load ptr, ptr %data, align 8, !dbg !570
  %key = getelementptr inbounds %struct._LispAtom, ptr %10, i32 0, i32 0, !dbg !570
  %11 = load ptr, ptr %key, align 8, !dbg !570
  %value5 = getelementptr inbounds %struct._hash_key, ptr %11, i32 0, i32 0, !dbg !570
  %12 = load ptr, ptr %value5, align 8, !dbg !570
  %13 = load ptr, ptr %character, align 8, !dbg !570
  %call = call ptr @LispStrObj(ptr noundef %13), !dbg !570
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.3, ptr noundef %12, ptr noundef %call), !dbg !570
  br label %if.end, !dbg !570

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %character, align 8, !dbg !573
  %15 = ptrtoint ptr %14 to i64, !dbg !573
  %shr = ashr i64 %15, 4, !dbg !573
  %conv = trunc i64 %shr to i32, !dbg !573
  store i32 %conv, ptr %value, align 4, !dbg !574
  %16 = load i32, ptr %ignore_case.addr, align 4, !dbg !575
  %tobool = icmp ne i32 %16, 0, !dbg !575
  br i1 %tobool, label %land.lhs.true, label %if.end23, !dbg !576

land.lhs.true:                                    ; preds = %if.end
  %call6 = call ptr @__ctype_b_loc() #12, !dbg !577
  %17 = load ptr, ptr %call6, align 8, !dbg !577
  %18 = load i32, ptr %value, align 4, !dbg !577
  %idxprom7 = sext i32 %18 to i64, !dbg !577
  %arrayidx8 = getelementptr inbounds i16, ptr %17, i64 %idxprom7, !dbg !577
  %19 = load i16, ptr %arrayidx8, align 2, !dbg !577
  %conv9 = zext i16 %19 to i32, !dbg !577
  %and10 = and i32 %conv9, 512, !dbg !577
  %tobool11 = icmp ne i32 %and10, 0, !dbg !577
  br i1 %tobool11, label %if.then12, label %if.end23, !dbg !578

if.then12:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11, !dbg !579
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !513, metadata !DIExpression()), !dbg !579
  %20 = load i32, ptr %value, align 4, !dbg !580
  %21 = call i1 @llvm.is.constant.i32(i32 %20), !dbg !580
  br i1 %21, label %if.then13, label %if.else, !dbg !581

if.then13:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #11, !dbg !582
  tail call void @llvm.dbg.declare(metadata ptr %__c, metadata !516, metadata !DIExpression()), !dbg !582
  %22 = load i32, ptr %value, align 4, !dbg !582
  store i32 %22, ptr %__c, align 4, !dbg !582
  %23 = load i32, ptr %__c, align 4, !dbg !582
  %cmp14 = icmp slt i32 %23, -128, !dbg !582
  br i1 %cmp14, label %cond.true, label %lor.lhs.false, !dbg !582

lor.lhs.false:                                    ; preds = %if.then13
  %24 = load i32, ptr %__c, align 4, !dbg !582
  %cmp16 = icmp sgt i32 %24, 255, !dbg !582
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !582

cond.true:                                        ; preds = %lor.lhs.false, %if.then13
  %25 = load i32, ptr %__c, align 4, !dbg !582
  br label %cond.end, !dbg !582

cond.false:                                       ; preds = %lor.lhs.false
  %call18 = call ptr @__ctype_toupper_loc() #12, !dbg !582
  %26 = load ptr, ptr %call18, align 8, !dbg !582
  %27 = load i32, ptr %__c, align 4, !dbg !582
  %idxprom19 = sext i32 %27 to i64, !dbg !582
  %arrayidx20 = getelementptr inbounds i32, ptr %26, i64 %idxprom19, !dbg !582
  %28 = load i32, ptr %arrayidx20, align 4, !dbg !582
  br label %cond.end, !dbg !582

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %28, %cond.false ], !dbg !582
  store i32 %cond, ptr %__res, align 4, !dbg !582
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11, !dbg !580
  br label %if.end22, !dbg !582

if.else:                                          ; preds = %if.then12
  %29 = load i32, ptr %value, align 4, !dbg !580
  %call21 = call i32 @toupper(i32 noundef %29) #13, !dbg !580
  store i32 %call21, ptr %__res, align 4, !dbg !580
  br label %if.end22

if.end22:                                         ; preds = %if.else, %cond.end
  %30 = load i32, ptr %__res, align 4, !dbg !579
  store i32 %30, ptr %tmp, align 4, !dbg !583
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11, !dbg !584
  %31 = load i32, ptr %tmp, align 4, !dbg !579
  store i32 %31, ptr %value, align 4, !dbg !585
  br label %if.end23, !dbg !586

if.end23:                                         ; preds = %if.end22, %land.lhs.true, %if.end
  %32 = load ptr, ptr %more_characters, align 8, !dbg !587
  %33 = ptrtoint ptr %32 to i64, !dbg !587
  %and24 = and i64 %33, 1, !dbg !587
  %cmp25 = icmp eq i64 %and24, 0, !dbg !587
  br i1 %cmp25, label %land.lhs.true27, label %if.then30, !dbg !587

land.lhs.true27:                                  ; preds = %if.end23
  %34 = load ptr, ptr %more_characters, align 8, !dbg !587
  %bf.load = load i16, ptr %34, align 8, !dbg !587
  %bf.clear = and i16 %bf.load, 63, !dbg !587
  %bf.cast = zext i16 %bf.clear to i32, !dbg !587
  %cmp28 = icmp eq i32 %bf.cast, 28, !dbg !587
  br i1 %cmp28, label %if.end31, label %if.then30, !dbg !589

if.then30:                                        ; preds = %land.lhs.true27, %if.end23
  store ptr inttoptr (i64 17 to ptr), ptr %retval, align 8, !dbg !590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !590

if.end31:                                         ; preds = %land.lhs.true27
  %35 = load ptr, ptr %more_characters, align 8, !dbg !591
  store ptr %35, ptr %object, align 8, !dbg !593
  br label %for.cond, !dbg !594

for.cond:                                         ; preds = %for.inc, %if.end31
  %36 = load ptr, ptr %object, align 8, !dbg !595
  %37 = ptrtoint ptr %36 to i64, !dbg !595
  %and32 = and i64 %37, 1, !dbg !595
  %cmp33 = icmp eq i64 %and32, 0, !dbg !595
  br i1 %cmp33, label %land.rhs, label %land.end, !dbg !595

land.rhs:                                         ; preds = %for.cond
  %38 = load ptr, ptr %object, align 8, !dbg !595
  %bf.load35 = load i16, ptr %38, align 8, !dbg !595
  %bf.clear36 = and i16 %bf.load35, 63, !dbg !595
  %bf.cast37 = zext i16 %bf.clear36 to i32, !dbg !595
  %cmp38 = icmp eq i32 %bf.cast37, 28, !dbg !595
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %39 = phi i1 [ false, %for.cond ], [ %cmp38, %land.rhs ], !dbg !597
  br i1 %39, label %for.body, label %for.end, !dbg !598

for.body:                                         ; preds = %land.end
  %40 = load ptr, ptr %object, align 8, !dbg !599
  %data40 = getelementptr inbounds %struct._LispObj, ptr %40, i32 0, i32 1, !dbg !599
  %car = getelementptr inbounds %struct.anon.3, ptr %data40, i32 0, i32 0, !dbg !599
  %41 = load ptr, ptr %car, align 8, !dbg !599
  %42 = ptrtoint ptr %41 to i64, !dbg !599
  %and41 = and i64 %42, 15, !dbg !599
  %cmp42 = icmp eq i64 %and41, 5, !dbg !599
  br i1 %cmp42, label %if.end52, label %if.then44, !dbg !601

if.then44:                                        ; preds = %for.body
  %43 = load ptr, ptr %builtin.addr, align 8, !dbg !599
  %symbol45 = getelementptr inbounds %struct._LispBuiltin, ptr %43, i32 0, i32 6, !dbg !599
  %44 = load ptr, ptr %symbol45, align 8, !dbg !599
  %data46 = getelementptr inbounds %struct._LispObj, ptr %44, i32 0, i32 1, !dbg !599
  %45 = load ptr, ptr %data46, align 8, !dbg !599
  %key47 = getelementptr inbounds %struct._LispAtom, ptr %45, i32 0, i32 0, !dbg !599
  %46 = load ptr, ptr %key47, align 8, !dbg !599
  %value48 = getelementptr inbounds %struct._hash_key, ptr %46, i32 0, i32 0, !dbg !599
  %47 = load ptr, ptr %value48, align 8, !dbg !599
  %48 = load ptr, ptr %object, align 8, !dbg !599
  %data49 = getelementptr inbounds %struct._LispObj, ptr %48, i32 0, i32 1, !dbg !599
  %car50 = getelementptr inbounds %struct.anon.3, ptr %data49, i32 0, i32 0, !dbg !599
  %49 = load ptr, ptr %car50, align 8, !dbg !599
  %call51 = call ptr @LispStrObj(ptr noundef %49), !dbg !599
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.3, ptr noundef %47, ptr noundef %call51), !dbg !599
  br label %if.end52, !dbg !599

if.end52:                                         ; preds = %if.then44, %for.body
  br label %for.inc, !dbg !599

for.inc:                                          ; preds = %if.end52
  %50 = load ptr, ptr %object, align 8, !dbg !602
  %data53 = getelementptr inbounds %struct._LispObj, ptr %50, i32 0, i32 1, !dbg !602
  %cdr = getelementptr inbounds %struct.anon.3, ptr %data53, i32 0, i32 1, !dbg !602
  %51 = load ptr, ptr %cdr, align 8, !dbg !602
  store ptr %51, ptr %object, align 8, !dbg !603
  br label %for.cond, !dbg !604, !llvm.loop !605

for.end:                                          ; preds = %land.end
  %52 = load i32, ptr %operation.addr, align 4, !dbg !608
  %cmp54 = icmp eq i32 %52, 6, !dbg !609
  br i1 %cmp54, label %if.then56, label %if.end155, !dbg !610

if.then56:                                        ; preds = %for.end
  br label %do.body, !dbg !611

do.body:                                          ; preds = %land.end154, %if.then56
  %53 = load ptr, ptr %more_characters, align 8, !dbg !612
  store ptr %53, ptr %object, align 8, !dbg !613
  br label %for.cond57, !dbg !614

for.cond57:                                       ; preds = %for.inc106, %do.body
  %54 = load ptr, ptr %object, align 8, !dbg !615
  %55 = ptrtoint ptr %54 to i64, !dbg !615
  %and58 = and i64 %55, 1, !dbg !615
  %cmp59 = icmp eq i64 %and58, 0, !dbg !615
  br i1 %cmp59, label %land.rhs61, label %land.end67, !dbg !615

land.rhs61:                                       ; preds = %for.cond57
  %56 = load ptr, ptr %object, align 8, !dbg !615
  %bf.load62 = load i16, ptr %56, align 8, !dbg !615
  %bf.clear63 = and i16 %bf.load62, 63, !dbg !615
  %bf.cast64 = zext i16 %bf.clear63 to i32, !dbg !615
  %cmp65 = icmp eq i32 %bf.cast64, 28, !dbg !615
  br label %land.end67

land.end67:                                       ; preds = %land.rhs61, %for.cond57
  %57 = phi i1 [ false, %for.cond57 ], [ %cmp65, %land.rhs61 ], !dbg !616
  br i1 %57, label %for.body68, label %for.end109, !dbg !617

for.body68:                                       ; preds = %land.end67
  %58 = load ptr, ptr %object, align 8, !dbg !618
  %data69 = getelementptr inbounds %struct._LispObj, ptr %58, i32 0, i32 1, !dbg !618
  %car70 = getelementptr inbounds %struct.anon.3, ptr %data69, i32 0, i32 0, !dbg !618
  %59 = load ptr, ptr %car70, align 8, !dbg !618
  store ptr %59, ptr %character, align 8, !dbg !619
  %60 = load ptr, ptr %character, align 8, !dbg !620
  %61 = ptrtoint ptr %60 to i64, !dbg !620
  %shr71 = ashr i64 %61, 4, !dbg !620
  %conv72 = trunc i64 %shr71 to i32, !dbg !620
  store i32 %conv72, ptr %next_value, align 4, !dbg !621
  %62 = load i32, ptr %ignore_case.addr, align 4, !dbg !622
  %tobool73 = icmp ne i32 %62, 0, !dbg !622
  br i1 %tobool73, label %land.lhs.true74, label %if.end101, !dbg !623

land.lhs.true74:                                  ; preds = %for.body68
  %call75 = call ptr @__ctype_b_loc() #12, !dbg !624
  %63 = load ptr, ptr %call75, align 8, !dbg !624
  %64 = load i32, ptr %next_value, align 4, !dbg !624
  %idxprom76 = sext i32 %64 to i64, !dbg !624
  %arrayidx77 = getelementptr inbounds i16, ptr %63, i64 %idxprom76, !dbg !624
  %65 = load i16, ptr %arrayidx77, align 2, !dbg !624
  %conv78 = zext i16 %65 to i32, !dbg !624
  %and79 = and i32 %conv78, 512, !dbg !624
  %tobool80 = icmp ne i32 %and79, 0, !dbg !624
  br i1 %tobool80, label %if.then81, label %if.end101, !dbg !625

if.then81:                                        ; preds = %land.lhs.true74
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res82) #11, !dbg !626
  tail call void @llvm.dbg.declare(metadata ptr %__res82, metadata !521, metadata !DIExpression()), !dbg !626
  %66 = load i32, ptr %next_value, align 4, !dbg !627
  %67 = call i1 @llvm.is.constant.i32(i32 %66), !dbg !627
  br i1 %67, label %if.then83, label %if.else97, !dbg !628

if.then83:                                        ; preds = %if.then81
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c84) #11, !dbg !629
  tail call void @llvm.dbg.declare(metadata ptr %__c84, metadata !530, metadata !DIExpression()), !dbg !629
  %68 = load i32, ptr %next_value, align 4, !dbg !629
  store i32 %68, ptr %__c84, align 4, !dbg !629
  %69 = load i32, ptr %__c84, align 4, !dbg !629
  %cmp85 = icmp slt i32 %69, -128, !dbg !629
  br i1 %cmp85, label %cond.true90, label %lor.lhs.false87, !dbg !629

lor.lhs.false87:                                  ; preds = %if.then83
  %70 = load i32, ptr %__c84, align 4, !dbg !629
  %cmp88 = icmp sgt i32 %70, 255, !dbg !629
  br i1 %cmp88, label %cond.true90, label %cond.false91, !dbg !629

cond.true90:                                      ; preds = %lor.lhs.false87, %if.then83
  %71 = load i32, ptr %__c84, align 4, !dbg !629
  br label %cond.end95, !dbg !629

cond.false91:                                     ; preds = %lor.lhs.false87
  %call92 = call ptr @__ctype_toupper_loc() #12, !dbg !629
  %72 = load ptr, ptr %call92, align 8, !dbg !629
  %73 = load i32, ptr %__c84, align 4, !dbg !629
  %idxprom93 = sext i32 %73 to i64, !dbg !629
  %arrayidx94 = getelementptr inbounds i32, ptr %72, i64 %idxprom93, !dbg !629
  %74 = load i32, ptr %arrayidx94, align 4, !dbg !629
  br label %cond.end95, !dbg !629

cond.end95:                                       ; preds = %cond.false91, %cond.true90
  %cond96 = phi i32 [ %71, %cond.true90 ], [ %74, %cond.false91 ], !dbg !629
  store i32 %cond96, ptr %__res82, align 4, !dbg !629
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c84) #11, !dbg !627
  br label %if.end99, !dbg !629

if.else97:                                        ; preds = %if.then81
  %75 = load i32, ptr %next_value, align 4, !dbg !627
  %call98 = call i32 @toupper(i32 noundef %75) #13, !dbg !627
  store i32 %call98, ptr %__res82, align 4, !dbg !627
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %cond.end95
  %76 = load i32, ptr %__res82, align 4, !dbg !626
  store i32 %76, ptr %tmp100, align 4, !dbg !630
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res82) #11, !dbg !631
  %77 = load i32, ptr %tmp100, align 4, !dbg !626
  store i32 %77, ptr %next_value, align 4, !dbg !632
  br label %if.end101, !dbg !633

if.end101:                                        ; preds = %if.end99, %land.lhs.true74, %for.body68
  %78 = load i32, ptr %value, align 4, !dbg !634
  %79 = load i32, ptr %next_value, align 4, !dbg !636
  %cmp102 = icmp eq i32 %78, %79, !dbg !637
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !638

if.then104:                                       ; preds = %if.end101
  store ptr inttoptr (i64 1 to ptr), ptr %retval, align 8, !dbg !639
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !639

if.end105:                                        ; preds = %if.end101
  br label %for.inc106, !dbg !640

for.inc106:                                       ; preds = %if.end105
  %80 = load ptr, ptr %object, align 8, !dbg !641
  %data107 = getelementptr inbounds %struct._LispObj, ptr %80, i32 0, i32 1, !dbg !641
  %cdr108 = getelementptr inbounds %struct.anon.3, ptr %data107, i32 0, i32 1, !dbg !641
  %81 = load ptr, ptr %cdr108, align 8, !dbg !641
  store ptr %81, ptr %object, align 8, !dbg !642
  br label %for.cond57, !dbg !643, !llvm.loop !644

for.end109:                                       ; preds = %land.end67
  %82 = load ptr, ptr %more_characters, align 8, !dbg !646
  %data110 = getelementptr inbounds %struct._LispObj, ptr %82, i32 0, i32 1, !dbg !646
  %car111 = getelementptr inbounds %struct.anon.3, ptr %data110, i32 0, i32 0, !dbg !646
  %83 = load ptr, ptr %car111, align 8, !dbg !646
  %84 = ptrtoint ptr %83 to i64, !dbg !646
  %shr112 = ashr i64 %84, 4, !dbg !646
  %conv113 = trunc i64 %shr112 to i32, !dbg !646
  store i32 %conv113, ptr %value, align 4, !dbg !647
  %85 = load i32, ptr %ignore_case.addr, align 4, !dbg !648
  %tobool114 = icmp ne i32 %85, 0, !dbg !648
  br i1 %tobool114, label %land.lhs.true115, label %if.end142, !dbg !649

land.lhs.true115:                                 ; preds = %for.end109
  %call116 = call ptr @__ctype_b_loc() #12, !dbg !650
  %86 = load ptr, ptr %call116, align 8, !dbg !650
  %87 = load i32, ptr %value, align 4, !dbg !650
  %idxprom117 = sext i32 %87 to i64, !dbg !650
  %arrayidx118 = getelementptr inbounds i16, ptr %86, i64 %idxprom117, !dbg !650
  %88 = load i16, ptr %arrayidx118, align 2, !dbg !650
  %conv119 = zext i16 %88 to i32, !dbg !650
  %and120 = and i32 %conv119, 512, !dbg !650
  %tobool121 = icmp ne i32 %and120, 0, !dbg !650
  br i1 %tobool121, label %if.then122, label %if.end142, !dbg !651

if.then122:                                       ; preds = %land.lhs.true115
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res123) #11, !dbg !652
  tail call void @llvm.dbg.declare(metadata ptr %__res123, metadata !535, metadata !DIExpression()), !dbg !652
  %89 = load i32, ptr %value, align 4, !dbg !653
  %90 = call i1 @llvm.is.constant.i32(i32 %89), !dbg !653
  br i1 %90, label %if.then124, label %if.else138, !dbg !654

if.then124:                                       ; preds = %if.then122
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c125) #11, !dbg !655
  tail call void @llvm.dbg.declare(metadata ptr %__c125, metadata !538, metadata !DIExpression()), !dbg !655
  %91 = load i32, ptr %value, align 4, !dbg !655
  store i32 %91, ptr %__c125, align 4, !dbg !655
  %92 = load i32, ptr %__c125, align 4, !dbg !655
  %cmp126 = icmp slt i32 %92, -128, !dbg !655
  br i1 %cmp126, label %cond.true131, label %lor.lhs.false128, !dbg !655

lor.lhs.false128:                                 ; preds = %if.then124
  %93 = load i32, ptr %__c125, align 4, !dbg !655
  %cmp129 = icmp sgt i32 %93, 255, !dbg !655
  br i1 %cmp129, label %cond.true131, label %cond.false132, !dbg !655

cond.true131:                                     ; preds = %lor.lhs.false128, %if.then124
  %94 = load i32, ptr %__c125, align 4, !dbg !655
  br label %cond.end136, !dbg !655

cond.false132:                                    ; preds = %lor.lhs.false128
  %call133 = call ptr @__ctype_toupper_loc() #12, !dbg !655
  %95 = load ptr, ptr %call133, align 8, !dbg !655
  %96 = load i32, ptr %__c125, align 4, !dbg !655
  %idxprom134 = sext i32 %96 to i64, !dbg !655
  %arrayidx135 = getelementptr inbounds i32, ptr %95, i64 %idxprom134, !dbg !655
  %97 = load i32, ptr %arrayidx135, align 4, !dbg !655
  br label %cond.end136, !dbg !655

cond.end136:                                      ; preds = %cond.false132, %cond.true131
  %cond137 = phi i32 [ %94, %cond.true131 ], [ %97, %cond.false132 ], !dbg !655
  store i32 %cond137, ptr %__res123, align 4, !dbg !655
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c125) #11, !dbg !653
  br label %if.end140, !dbg !655

if.else138:                                       ; preds = %if.then122
  %98 = load i32, ptr %value, align 4, !dbg !653
  %call139 = call i32 @toupper(i32 noundef %98) #13, !dbg !653
  store i32 %call139, ptr %__res123, align 4, !dbg !653
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %cond.end136
  %99 = load i32, ptr %__res123, align 4, !dbg !652
  store i32 %99, ptr %tmp141, align 4, !dbg !656
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res123) #11, !dbg !657
  %100 = load i32, ptr %tmp141, align 4, !dbg !652
  store i32 %100, ptr %value, align 4, !dbg !658
  br label %if.end142, !dbg !659

if.end142:                                        ; preds = %if.end140, %land.lhs.true115, %for.end109
  %101 = load ptr, ptr %more_characters, align 8, !dbg !660
  %data143 = getelementptr inbounds %struct._LispObj, ptr %101, i32 0, i32 1, !dbg !660
  %cdr144 = getelementptr inbounds %struct.anon.3, ptr %data143, i32 0, i32 1, !dbg !660
  %102 = load ptr, ptr %cdr144, align 8, !dbg !660
  store ptr %102, ptr %more_characters, align 8, !dbg !661
  br label %do.cond, !dbg !662

do.cond:                                          ; preds = %if.end142
  %103 = load ptr, ptr %more_characters, align 8, !dbg !663
  %104 = ptrtoint ptr %103 to i64, !dbg !663
  %and145 = and i64 %104, 1, !dbg !663
  %cmp146 = icmp eq i64 %and145, 0, !dbg !663
  br i1 %cmp146, label %land.rhs148, label %land.end154, !dbg !663

land.rhs148:                                      ; preds = %do.cond
  %105 = load ptr, ptr %more_characters, align 8, !dbg !663
  %bf.load149 = load i16, ptr %105, align 8, !dbg !663
  %bf.clear150 = and i16 %bf.load149, 63, !dbg !663
  %bf.cast151 = zext i16 %bf.clear150 to i32, !dbg !663
  %cmp152 = icmp eq i32 %bf.cast151, 28, !dbg !663
  br label %land.end154

land.end154:                                      ; preds = %land.rhs148, %do.cond
  %106 = phi i1 [ false, %do.cond ], [ %cmp152, %land.rhs148 ], !dbg !664
  br i1 %106, label %do.body, label %do.end, !dbg !662, !llvm.loop !665

do.end:                                           ; preds = %land.end154
  store ptr inttoptr (i64 17 to ptr), ptr %retval, align 8, !dbg !667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !667

if.end155:                                        ; preds = %for.end
  br label %for.cond156, !dbg !668

for.cond156:                                      ; preds = %for.inc218, %if.end155
  %107 = load ptr, ptr %more_characters, align 8, !dbg !669
  %108 = ptrtoint ptr %107 to i64, !dbg !669
  %and157 = and i64 %108, 1, !dbg !669
  %cmp158 = icmp eq i64 %and157, 0, !dbg !669
  br i1 %cmp158, label %land.rhs160, label %land.end166, !dbg !669

land.rhs160:                                      ; preds = %for.cond156
  %109 = load ptr, ptr %more_characters, align 8, !dbg !669
  %bf.load161 = load i16, ptr %109, align 8, !dbg !669
  %bf.clear162 = and i16 %bf.load161, 63, !dbg !669
  %bf.cast163 = zext i16 %bf.clear162 to i32, !dbg !669
  %cmp164 = icmp eq i32 %bf.cast163, 28, !dbg !669
  br label %land.end166

land.end166:                                      ; preds = %land.rhs160, %for.cond156
  %110 = phi i1 [ false, %for.cond156 ], [ %cmp164, %land.rhs160 ], !dbg !670
  br i1 %110, label %for.body167, label %for.end221, !dbg !671

for.body167:                                      ; preds = %land.end166
  %111 = load ptr, ptr %more_characters, align 8, !dbg !672
  %data168 = getelementptr inbounds %struct._LispObj, ptr %111, i32 0, i32 1, !dbg !672
  %car169 = getelementptr inbounds %struct.anon.3, ptr %data168, i32 0, i32 0, !dbg !672
  %112 = load ptr, ptr %car169, align 8, !dbg !672
  store ptr %112, ptr %character, align 8, !dbg !673
  %113 = load ptr, ptr %character, align 8, !dbg !674
  %114 = ptrtoint ptr %113 to i64, !dbg !674
  %shr170 = ashr i64 %114, 4, !dbg !674
  %conv171 = trunc i64 %shr170 to i32, !dbg !674
  store i32 %conv171, ptr %next_value, align 4, !dbg !675
  %115 = load i32, ptr %ignore_case.addr, align 4, !dbg !676
  %tobool172 = icmp ne i32 %115, 0, !dbg !676
  br i1 %tobool172, label %land.lhs.true173, label %if.end200, !dbg !677

land.lhs.true173:                                 ; preds = %for.body167
  %call174 = call ptr @__ctype_b_loc() #12, !dbg !678
  %116 = load ptr, ptr %call174, align 8, !dbg !678
  %117 = load i32, ptr %next_value, align 4, !dbg !678
  %idxprom175 = sext i32 %117 to i64, !dbg !678
  %arrayidx176 = getelementptr inbounds i16, ptr %116, i64 %idxprom175, !dbg !678
  %118 = load i16, ptr %arrayidx176, align 2, !dbg !678
  %conv177 = zext i16 %118 to i32, !dbg !678
  %and178 = and i32 %conv177, 512, !dbg !678
  %tobool179 = icmp ne i32 %and178, 0, !dbg !678
  br i1 %tobool179, label %if.then180, label %if.end200, !dbg !679

if.then180:                                       ; preds = %land.lhs.true173
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res181) #11, !dbg !680
  tail call void @llvm.dbg.declare(metadata ptr %__res181, metadata !543, metadata !DIExpression()), !dbg !680
  %119 = load i32, ptr %next_value, align 4, !dbg !681
  %120 = call i1 @llvm.is.constant.i32(i32 %119), !dbg !681
  br i1 %120, label %if.then182, label %if.else196, !dbg !682

if.then182:                                       ; preds = %if.then180
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c183) #11, !dbg !683
  tail call void @llvm.dbg.declare(metadata ptr %__c183, metadata !549, metadata !DIExpression()), !dbg !683
  %121 = load i32, ptr %next_value, align 4, !dbg !683
  store i32 %121, ptr %__c183, align 4, !dbg !683
  %122 = load i32, ptr %__c183, align 4, !dbg !683
  %cmp184 = icmp slt i32 %122, -128, !dbg !683
  br i1 %cmp184, label %cond.true189, label %lor.lhs.false186, !dbg !683

lor.lhs.false186:                                 ; preds = %if.then182
  %123 = load i32, ptr %__c183, align 4, !dbg !683
  %cmp187 = icmp sgt i32 %123, 255, !dbg !683
  br i1 %cmp187, label %cond.true189, label %cond.false190, !dbg !683

cond.true189:                                     ; preds = %lor.lhs.false186, %if.then182
  %124 = load i32, ptr %__c183, align 4, !dbg !683
  br label %cond.end194, !dbg !683

cond.false190:                                    ; preds = %lor.lhs.false186
  %call191 = call ptr @__ctype_toupper_loc() #12, !dbg !683
  %125 = load ptr, ptr %call191, align 8, !dbg !683
  %126 = load i32, ptr %__c183, align 4, !dbg !683
  %idxprom192 = sext i32 %126 to i64, !dbg !683
  %arrayidx193 = getelementptr inbounds i32, ptr %125, i64 %idxprom192, !dbg !683
  %127 = load i32, ptr %arrayidx193, align 4, !dbg !683
  br label %cond.end194, !dbg !683

cond.end194:                                      ; preds = %cond.false190, %cond.true189
  %cond195 = phi i32 [ %124, %cond.true189 ], [ %127, %cond.false190 ], !dbg !683
  store i32 %cond195, ptr %__res181, align 4, !dbg !683
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c183) #11, !dbg !681
  br label %if.end198, !dbg !683

if.else196:                                       ; preds = %if.then180
  %128 = load i32, ptr %next_value, align 4, !dbg !681
  %call197 = call i32 @toupper(i32 noundef %128) #13, !dbg !681
  store i32 %call197, ptr %__res181, align 4, !dbg !681
  br label %if.end198

if.end198:                                        ; preds = %if.else196, %cond.end194
  %129 = load i32, ptr %__res181, align 4, !dbg !680
  store i32 %129, ptr %tmp199, align 4, !dbg !684
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res181) #11, !dbg !685
  %130 = load i32, ptr %tmp199, align 4, !dbg !680
  store i32 %130, ptr %next_value, align 4, !dbg !686
  br label %if.end200, !dbg !687

if.end200:                                        ; preds = %if.end198, %land.lhs.true173, %for.body167
  %131 = load i32, ptr %operation.addr, align 4, !dbg !688
  switch i32 %131, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb203
    i32 3, label %sw.bb206
    i32 4, label %sw.bb209
    i32 5, label %sw.bb212
  ], !dbg !689

sw.bb:                                            ; preds = %if.end200
  %132 = load i32, ptr %value, align 4, !dbg !690
  %133 = load i32, ptr %next_value, align 4, !dbg !692
  %cmp201 = icmp slt i32 %132, %133, !dbg !693
  %conv202 = zext i1 %cmp201 to i32, !dbg !693
  store i32 %conv202, ptr %cmp, align 4, !dbg !694
  br label %sw.epilog, !dbg !695

sw.bb203:                                         ; preds = %if.end200
  %134 = load i32, ptr %value, align 4, !dbg !696
  %135 = load i32, ptr %next_value, align 4, !dbg !697
  %cmp204 = icmp sle i32 %134, %135, !dbg !698
  %conv205 = zext i1 %cmp204 to i32, !dbg !698
  store i32 %conv205, ptr %cmp, align 4, !dbg !699
  br label %sw.epilog, !dbg !700

sw.bb206:                                         ; preds = %if.end200
  %136 = load i32, ptr %value, align 4, !dbg !701
  %137 = load i32, ptr %next_value, align 4, !dbg !702
  %cmp207 = icmp eq i32 %136, %137, !dbg !703
  %conv208 = zext i1 %cmp207 to i32, !dbg !703
  store i32 %conv208, ptr %cmp, align 4, !dbg !704
  br label %sw.epilog, !dbg !705

sw.bb209:                                         ; preds = %if.end200
  %138 = load i32, ptr %value, align 4, !dbg !706
  %139 = load i32, ptr %next_value, align 4, !dbg !707
  %cmp210 = icmp sge i32 %138, %139, !dbg !708
  %conv211 = zext i1 %cmp210 to i32, !dbg !708
  store i32 %conv211, ptr %cmp, align 4, !dbg !709
  br label %sw.epilog, !dbg !710

sw.bb212:                                         ; preds = %if.end200
  %140 = load i32, ptr %value, align 4, !dbg !711
  %141 = load i32, ptr %next_value, align 4, !dbg !712
  %cmp213 = icmp sgt i32 %140, %141, !dbg !713
  %conv214 = zext i1 %cmp213 to i32, !dbg !713
  store i32 %conv214, ptr %cmp, align 4, !dbg !714
  br label %sw.epilog, !dbg !715

sw.default:                                       ; preds = %if.end200
  store i32 0, ptr %cmp, align 4, !dbg !716
  br label %sw.epilog, !dbg !717

sw.epilog:                                        ; preds = %sw.default, %sw.bb212, %sw.bb209, %sw.bb206, %sw.bb203, %sw.bb
  %142 = load i32, ptr %cmp, align 4, !dbg !718
  %tobool215 = icmp ne i32 %142, 0, !dbg !718
  br i1 %tobool215, label %if.end217, label %if.then216, !dbg !720

if.then216:                                       ; preds = %sw.epilog
  store ptr inttoptr (i64 1 to ptr), ptr %retval, align 8, !dbg !721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !721

if.end217:                                        ; preds = %sw.epilog
  %143 = load i32, ptr %next_value, align 4, !dbg !722
  store i32 %143, ptr %value, align 4, !dbg !723
  br label %for.inc218, !dbg !724

for.inc218:                                       ; preds = %if.end217
  %144 = load ptr, ptr %more_characters, align 8, !dbg !725
  %data219 = getelementptr inbounds %struct._LispObj, ptr %144, i32 0, i32 1, !dbg !725
  %cdr220 = getelementptr inbounds %struct.anon.3, ptr %data219, i32 0, i32 1, !dbg !725
  %145 = load ptr, ptr %cdr220, align 8, !dbg !725
  store ptr %145, ptr %more_characters, align 8, !dbg !726
  br label %for.cond156, !dbg !727, !llvm.loop !728

for.end221:                                       ; preds = %land.end166
  store ptr inttoptr (i64 17 to ptr), ptr %retval, align 8, !dbg !730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !730

cleanup:                                          ; preds = %for.end221, %if.then216, %do.end, %if.then104, %if.then30
  call void @llvm.lifetime.end.p0(i64 8, ptr %more_characters) #11, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr %character) #11, !dbg !731
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_value) #11, !dbg !731
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #11, !dbg !731
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp) #11, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #11, !dbg !731
  %146 = load ptr, ptr %retval, align 8, !dbg !731
  ret ptr %146, !dbg !731
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharLessEqual(ptr noundef %builtin) #0 !dbg !732 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !734, metadata !DIExpression()), !dbg !735
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !736
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 2, i32 noundef 0), !dbg !737
  ret ptr %call, !dbg !738
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharEqual_(ptr noundef %builtin) #0 !dbg !739 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !741, metadata !DIExpression()), !dbg !742
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !743
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 3, i32 noundef 0), !dbg !744
  ret ptr %call, !dbg !745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharGreater(ptr noundef %builtin) #0 !dbg !746 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !750
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 5, i32 noundef 0), !dbg !751
  ret ptr %call, !dbg !752
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharGreaterEqual(ptr noundef %builtin) #0 !dbg !753 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !755, metadata !DIExpression()), !dbg !756
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !757
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 4, i32 noundef 0), !dbg !758
  ret ptr %call, !dbg !759
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharNotEqual_(ptr noundef %builtin) #0 !dbg !760 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !762, metadata !DIExpression()), !dbg !763
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !764
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 6, i32 noundef 0), !dbg !765
  ret ptr %call, !dbg !766
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharLessp(ptr noundef %builtin) #0 !dbg !767 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !769, metadata !DIExpression()), !dbg !770
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !771
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 1, i32 noundef 1), !dbg !772
  ret ptr %call, !dbg !773
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharNotGreaterp(ptr noundef %builtin) #0 !dbg !774 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !776, metadata !DIExpression()), !dbg !777
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !778
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 2, i32 noundef 1), !dbg !779
  ret ptr %call, !dbg !780
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharEqual(ptr noundef %builtin) #0 !dbg !781 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !783, metadata !DIExpression()), !dbg !784
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !785
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 3, i32 noundef 1), !dbg !786
  ret ptr %call, !dbg !787
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharGreaterp(ptr noundef %builtin) #0 !dbg !788 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !792
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 5, i32 noundef 1), !dbg !793
  ret ptr %call, !dbg !794
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharNotLessp(ptr noundef %builtin) #0 !dbg !795 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !797, metadata !DIExpression()), !dbg !798
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !799
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 4, i32 noundef 1), !dbg !800
  ret ptr %call, !dbg !801
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharNotEqual(ptr noundef %builtin) #0 !dbg !802 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !804, metadata !DIExpression()), !dbg !805
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !806
  %call = call ptr @LispCharCompare(ptr noundef %0, i32 noundef 6, i32 noundef 1), !dbg !807
  ret ptr %call, !dbg !808
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_AlphaCharP(ptr noundef %builtin) #0 !dbg !809 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !811, metadata !DIExpression()), !dbg !812
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !813
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 1), !dbg !814
  ret ptr %call, !dbg !815
}

; Function Attrs: nounwind uwtable
define internal ptr @LispCharOp(ptr noundef %builtin, i32 noundef %operation) #0 !dbg !816 {
entry:
  %builtin.addr = alloca ptr, align 8
  %operation.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %result = alloca ptr, align 8
  %character = alloca ptr, align 8
  %__res = alloca i32, align 4
  %__c = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res21 = alloca i32, align 4
  %__c23 = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !820, metadata !DIExpression()), !dbg !840
  store i32 %operation, ptr %operation.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %operation.addr, metadata !821, metadata !DIExpression()), !dbg !841
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #11, !dbg !842
  tail call void @llvm.dbg.declare(metadata ptr %value, metadata !822, metadata !DIExpression()), !dbg !843
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !844
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !823, metadata !DIExpression()), !dbg !845
  call void @llvm.lifetime.start.p0(i64 8, ptr %character) #11, !dbg !844
  tail call void @llvm.dbg.declare(metadata ptr %character, metadata !824, metadata !DIExpression()), !dbg !846
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !847
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !847
  %add = add nsw i32 %1, 0, !dbg !847
  %idxprom = sext i32 %add to i64, !dbg !847
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !847
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !847
  store ptr %2, ptr %character, align 8, !dbg !848
  %3 = load ptr, ptr %character, align 8, !dbg !849
  %4 = ptrtoint ptr %3 to i64, !dbg !849
  %and = and i64 %4, 15, !dbg !849
  %cmp = icmp eq i64 %and, 5, !dbg !849
  br i1 %cmp, label %if.end, label %if.then, !dbg !851

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %builtin.addr, align 8, !dbg !849
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %5, i32 0, i32 6, !dbg !849
  %6 = load ptr, ptr %symbol, align 8, !dbg !849
  %data = getelementptr inbounds %struct._LispObj, ptr %6, i32 0, i32 1, !dbg !849
  %7 = load ptr, ptr %data, align 8, !dbg !849
  %key = getelementptr inbounds %struct._LispAtom, ptr %7, i32 0, i32 0, !dbg !849
  %8 = load ptr, ptr %key, align 8, !dbg !849
  %value1 = getelementptr inbounds %struct._hash_key, ptr %8, i32 0, i32 0, !dbg !849
  %9 = load ptr, ptr %value1, align 8, !dbg !849
  %10 = load ptr, ptr %character, align 8, !dbg !849
  %call = call ptr @LispStrObj(ptr noundef %10), !dbg !849
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.3, ptr noundef %9, ptr noundef %call), !dbg !849
  br label %if.end, !dbg !849

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %character, align 8, !dbg !852
  %12 = ptrtoint ptr %11 to i64, !dbg !852
  %shr = ashr i64 %12, 4, !dbg !852
  %conv = trunc i64 %shr to i32, !dbg !853
  store i32 %conv, ptr %value, align 4, !dbg !854
  %13 = load i32, ptr %operation.addr, align 4, !dbg !855
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb20
    i32 4, label %sw.bb43
    i32 5, label %sw.bb47
    i32 6, label %sw.bb61
    i32 7, label %sw.bb69
    i32 8, label %sw.bb77
  ], !dbg !856

sw.bb:                                            ; preds = %if.end
  %call2 = call ptr @__ctype_b_loc() #12, !dbg !857
  %14 = load ptr, ptr %call2, align 8, !dbg !857
  %15 = load i32, ptr %value, align 4, !dbg !857
  %idxprom3 = sext i32 %15 to i64, !dbg !857
  %arrayidx4 = getelementptr inbounds i16, ptr %14, i64 %idxprom3, !dbg !857
  %16 = load i16, ptr %arrayidx4, align 2, !dbg !857
  %conv5 = zext i16 %16 to i32, !dbg !857
  %and6 = and i32 %conv5, 1024, !dbg !857
  %tobool = icmp ne i32 %and6, 0, !dbg !857
  %17 = zext i1 %tobool to i64, !dbg !857
  %cond = select i1 %tobool, ptr inttoptr (i64 17 to ptr), ptr inttoptr (i64 1 to ptr), !dbg !857
  store ptr %cond, ptr %result, align 8, !dbg !858
  br label %sw.epilog, !dbg !859

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11, !dbg !860
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !825, metadata !DIExpression()), !dbg !860
  %18 = load i32, ptr %value, align 4, !dbg !861
  %19 = call i1 @llvm.is.constant.i32(i32 %18), !dbg !861
  br i1 %19, label %if.then8, label %if.else, !dbg !862

if.then8:                                         ; preds = %sw.bb7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #11, !dbg !863
  tail call void @llvm.dbg.declare(metadata ptr %__c, metadata !828, metadata !DIExpression()), !dbg !863
  %20 = load i32, ptr %value, align 4, !dbg !863
  store i32 %20, ptr %__c, align 4, !dbg !863
  %21 = load i32, ptr %__c, align 4, !dbg !863
  %cmp9 = icmp slt i32 %21, -128, !dbg !863
  br i1 %cmp9, label %cond.true, label %lor.lhs.false, !dbg !863

lor.lhs.false:                                    ; preds = %if.then8
  %22 = load i32, ptr %__c, align 4, !dbg !863
  %cmp11 = icmp sgt i32 %22, 255, !dbg !863
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !863

cond.true:                                        ; preds = %lor.lhs.false, %if.then8
  %23 = load i32, ptr %__c, align 4, !dbg !863
  br label %cond.end, !dbg !863

cond.false:                                       ; preds = %lor.lhs.false
  %call13 = call ptr @__ctype_tolower_loc() #12, !dbg !863
  %24 = load ptr, ptr %call13, align 8, !dbg !863
  %25 = load i32, ptr %__c, align 4, !dbg !863
  %idxprom14 = sext i32 %25 to i64, !dbg !863
  %arrayidx15 = getelementptr inbounds i32, ptr %24, i64 %idxprom14, !dbg !863
  %26 = load i32, ptr %arrayidx15, align 4, !dbg !863
  br label %cond.end, !dbg !863

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i32 [ %23, %cond.true ], [ %26, %cond.false ], !dbg !863
  store i32 %cond16, ptr %__res, align 4, !dbg !863
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11, !dbg !861
  br label %if.end18, !dbg !863

if.else:                                          ; preds = %sw.bb7
  %27 = load i32, ptr %value, align 4, !dbg !861
  %call17 = call i32 @tolower(i32 noundef %27) #13, !dbg !861
  store i32 %call17, ptr %__res, align 4, !dbg !861
  br label %if.end18

if.end18:                                         ; preds = %if.else, %cond.end
  %28 = load i32, ptr %__res, align 4, !dbg !860
  store i32 %28, ptr %tmp, align 4, !dbg !864
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11, !dbg !865
  %29 = load i32, ptr %tmp, align 4, !dbg !860
  %conv19 = sext i32 %29 to i64, !dbg !865
  %shl = shl i64 %conv19, 4, !dbg !865
  %or = or i64 %shl, 5, !dbg !865
  %30 = inttoptr i64 %or to ptr, !dbg !865
  store ptr %30, ptr %result, align 8, !dbg !866
  br label %sw.epilog, !dbg !867

sw.bb20:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res21) #11, !dbg !868
  tail call void @llvm.dbg.declare(metadata ptr %__res21, metadata !833, metadata !DIExpression()), !dbg !868
  %31 = load i32, ptr %value, align 4, !dbg !869
  %32 = call i1 @llvm.is.constant.i32(i32 %31), !dbg !869
  br i1 %32, label %if.then22, label %if.else36, !dbg !870

if.then22:                                        ; preds = %sw.bb20
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c23) #11, !dbg !871
  tail call void @llvm.dbg.declare(metadata ptr %__c23, metadata !835, metadata !DIExpression()), !dbg !871
  %33 = load i32, ptr %value, align 4, !dbg !871
  store i32 %33, ptr %__c23, align 4, !dbg !871
  %34 = load i32, ptr %__c23, align 4, !dbg !871
  %cmp24 = icmp slt i32 %34, -128, !dbg !871
  br i1 %cmp24, label %cond.true29, label %lor.lhs.false26, !dbg !871

lor.lhs.false26:                                  ; preds = %if.then22
  %35 = load i32, ptr %__c23, align 4, !dbg !871
  %cmp27 = icmp sgt i32 %35, 255, !dbg !871
  br i1 %cmp27, label %cond.true29, label %cond.false30, !dbg !871

cond.true29:                                      ; preds = %lor.lhs.false26, %if.then22
  %36 = load i32, ptr %__c23, align 4, !dbg !871
  br label %cond.end34, !dbg !871

cond.false30:                                     ; preds = %lor.lhs.false26
  %call31 = call ptr @__ctype_toupper_loc() #12, !dbg !871
  %37 = load ptr, ptr %call31, align 8, !dbg !871
  %38 = load i32, ptr %__c23, align 4, !dbg !871
  %idxprom32 = sext i32 %38 to i64, !dbg !871
  %arrayidx33 = getelementptr inbounds i32, ptr %37, i64 %idxprom32, !dbg !871
  %39 = load i32, ptr %arrayidx33, align 4, !dbg !871
  br label %cond.end34, !dbg !871

cond.end34:                                       ; preds = %cond.false30, %cond.true29
  %cond35 = phi i32 [ %36, %cond.true29 ], [ %39, %cond.false30 ], !dbg !871
  store i32 %cond35, ptr %__res21, align 4, !dbg !871
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c23) #11, !dbg !869
  br label %if.end38, !dbg !871

if.else36:                                        ; preds = %sw.bb20
  %40 = load i32, ptr %value, align 4, !dbg !869
  %call37 = call i32 @toupper(i32 noundef %40) #13, !dbg !869
  store i32 %call37, ptr %__res21, align 4, !dbg !869
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %cond.end34
  %41 = load i32, ptr %__res21, align 4, !dbg !868
  store i32 %41, ptr %tmp39, align 4, !dbg !872
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res21) #11, !dbg !873
  %42 = load i32, ptr %tmp39, align 4, !dbg !868
  %conv40 = sext i32 %42 to i64, !dbg !873
  %shl41 = shl i64 %conv40, 4, !dbg !873
  %or42 = or i64 %shl41, 5, !dbg !873
  %43 = inttoptr i64 %or42 to ptr, !dbg !873
  store ptr %43, ptr %result, align 8, !dbg !874
  br label %sw.epilog, !dbg !875

sw.bb43:                                          ; preds = %if.end
  %44 = load i32, ptr %value, align 4, !dbg !876
  %conv44 = sext i32 %44 to i64, !dbg !876
  %shl45 = shl i64 %conv44, 4, !dbg !876
  %or46 = or i64 %shl45, 3, !dbg !876
  %45 = inttoptr i64 %or46 to ptr, !dbg !876
  store ptr %45, ptr %result, align 8, !dbg !877
  br label %sw.epilog, !dbg !878

sw.bb47:                                          ; preds = %if.end
  %call48 = call ptr @__ctype_b_loc() #12, !dbg !879
  %46 = load ptr, ptr %call48, align 8, !dbg !879
  %47 = load i32, ptr %value, align 4, !dbg !879
  %idxprom49 = sext i32 %47 to i64, !dbg !879
  %arrayidx50 = getelementptr inbounds i16, ptr %46, i64 %idxprom49, !dbg !879
  %48 = load i16, ptr %arrayidx50, align 2, !dbg !879
  %conv51 = zext i16 %48 to i32, !dbg !879
  %and52 = and i32 %conv51, 256, !dbg !879
  %tobool53 = icmp ne i32 %and52, 0, !dbg !879
  br i1 %tobool53, label %lor.end, label %lor.rhs, !dbg !880

lor.rhs:                                          ; preds = %sw.bb47
  %call54 = call ptr @__ctype_b_loc() #12, !dbg !881
  %49 = load ptr, ptr %call54, align 8, !dbg !881
  %50 = load i32, ptr %value, align 4, !dbg !881
  %idxprom55 = sext i32 %50 to i64, !dbg !881
  %arrayidx56 = getelementptr inbounds i16, ptr %49, i64 %idxprom55, !dbg !881
  %51 = load i16, ptr %arrayidx56, align 2, !dbg !881
  %conv57 = zext i16 %51 to i32, !dbg !881
  %and58 = and i32 %conv57, 512, !dbg !881
  %tobool59 = icmp ne i32 %and58, 0, !dbg !880
  br label %lor.end, !dbg !880

lor.end:                                          ; preds = %lor.rhs, %sw.bb47
  %52 = phi i1 [ true, %sw.bb47 ], [ %tobool59, %lor.rhs ]
  %53 = zext i1 %52 to i64, !dbg !879
  %cond60 = select i1 %52, ptr inttoptr (i64 17 to ptr), ptr inttoptr (i64 1 to ptr), !dbg !879
  store ptr %cond60, ptr %result, align 8, !dbg !882
  br label %sw.epilog, !dbg !883

sw.bb61:                                          ; preds = %if.end
  %call62 = call ptr @__ctype_b_loc() #12, !dbg !884
  %54 = load ptr, ptr %call62, align 8, !dbg !884
  %55 = load i32, ptr %value, align 4, !dbg !884
  %idxprom63 = sext i32 %55 to i64, !dbg !884
  %arrayidx64 = getelementptr inbounds i16, ptr %54, i64 %idxprom63, !dbg !884
  %56 = load i16, ptr %arrayidx64, align 2, !dbg !884
  %conv65 = zext i16 %56 to i32, !dbg !884
  %and66 = and i32 %conv65, 256, !dbg !884
  %tobool67 = icmp ne i32 %and66, 0, !dbg !884
  %57 = zext i1 %tobool67 to i64, !dbg !884
  %cond68 = select i1 %tobool67, ptr inttoptr (i64 17 to ptr), ptr inttoptr (i64 1 to ptr), !dbg !884
  store ptr %cond68, ptr %result, align 8, !dbg !885
  br label %sw.epilog, !dbg !886

sw.bb69:                                          ; preds = %if.end
  %call70 = call ptr @__ctype_b_loc() #12, !dbg !887
  %58 = load ptr, ptr %call70, align 8, !dbg !887
  %59 = load i32, ptr %value, align 4, !dbg !887
  %idxprom71 = sext i32 %59 to i64, !dbg !887
  %arrayidx72 = getelementptr inbounds i16, ptr %58, i64 %idxprom71, !dbg !887
  %60 = load i16, ptr %arrayidx72, align 2, !dbg !887
  %conv73 = zext i16 %60 to i32, !dbg !887
  %and74 = and i32 %conv73, 512, !dbg !887
  %tobool75 = icmp ne i32 %and74, 0, !dbg !887
  %61 = zext i1 %tobool75 to i64, !dbg !887
  %cond76 = select i1 %tobool75, ptr inttoptr (i64 17 to ptr), ptr inttoptr (i64 1 to ptr), !dbg !887
  store ptr %cond76, ptr %result, align 8, !dbg !888
  br label %sw.epilog, !dbg !889

sw.bb77:                                          ; preds = %if.end
  %62 = load i32, ptr %value, align 4, !dbg !890
  %cmp78 = icmp eq i32 %62, 32, !dbg !891
  br i1 %cmp78, label %lor.end87, label %lor.rhs80, !dbg !892

lor.rhs80:                                        ; preds = %sw.bb77
  %call81 = call ptr @__ctype_b_loc() #12, !dbg !893
  %63 = load ptr, ptr %call81, align 8, !dbg !893
  %64 = load i32, ptr %value, align 4, !dbg !893
  %idxprom82 = sext i32 %64 to i64, !dbg !893
  %arrayidx83 = getelementptr inbounds i16, ptr %63, i64 %idxprom82, !dbg !893
  %65 = load i16, ptr %arrayidx83, align 2, !dbg !893
  %conv84 = zext i16 %65 to i32, !dbg !893
  %and85 = and i32 %conv84, 32768, !dbg !893
  %tobool86 = icmp ne i32 %and85, 0, !dbg !892
  br label %lor.end87, !dbg !892

lor.end87:                                        ; preds = %lor.rhs80, %sw.bb77
  %66 = phi i1 [ true, %sw.bb77 ], [ %tobool86, %lor.rhs80 ]
  %67 = zext i1 %66 to i64, !dbg !890
  %cond88 = select i1 %66, ptr inttoptr (i64 17 to ptr), ptr inttoptr (i64 1 to ptr), !dbg !890
  store ptr %cond88, ptr %result, align 8, !dbg !894
  br label %sw.epilog, !dbg !895

sw.default:                                       ; preds = %if.end
  store ptr inttoptr (i64 1 to ptr), ptr %result, align 8, !dbg !896
  br label %sw.epilog, !dbg !897

sw.epilog:                                        ; preds = %sw.default, %lor.end87, %sw.bb69, %sw.bb61, %lor.end, %sw.bb43, %if.end38, %if.end18, %sw.bb
  %68 = load ptr, ptr %result, align 8, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %character) #11, !dbg !899
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #11, !dbg !899
  ret ptr %68, !dbg !900
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharDowncase(ptr noundef %builtin) #0 !dbg !901 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !903, metadata !DIExpression()), !dbg !904
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !905
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 2), !dbg !906
  ret ptr %call, !dbg !907
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharInt(ptr noundef %builtin) #0 !dbg !908 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !910, metadata !DIExpression()), !dbg !911
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !912
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 4), !dbg !913
  ret ptr %call, !dbg !914
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_CharUpcase(ptr noundef %builtin) #0 !dbg !915 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !917, metadata !DIExpression()), !dbg !918
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !919
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 3), !dbg !920
  ret ptr %call, !dbg !921
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_BothCaseP(ptr noundef %builtin) #0 !dbg !922 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !926
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 5), !dbg !927
  ret ptr %call, !dbg !928
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_UpperCaseP(ptr noundef %builtin) #0 !dbg !929 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !931, metadata !DIExpression()), !dbg !932
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !933
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 6), !dbg !934
  ret ptr %call, !dbg !935
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_LowerCaseP(ptr noundef %builtin) #0 !dbg !936 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !938, metadata !DIExpression()), !dbg !939
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !940
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 7), !dbg !941
  ret ptr %call, !dbg !942
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_GraphicCharP(ptr noundef %builtin) #0 !dbg !943 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !945, metadata !DIExpression()), !dbg !946
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !947
  %call = call ptr @LispCharOp(ptr noundef %0, i32 noundef 8), !dbg !948
  ret ptr %call, !dbg !949
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_Char(ptr noundef %builtin) #0 !dbg !950 {
entry:
  %builtin.addr = alloca ptr, align 8
  %string = alloca ptr, align 8
  %offset = alloca i64, align 8
  %length = alloca i64, align 8
  %ostring = alloca ptr, align 8
  %oindex = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !952, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !959
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !953, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !961
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !954, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !961
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !955, metadata !DIExpression()), !dbg !963
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !964
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !956, metadata !DIExpression()), !dbg !965
  call void @llvm.lifetime.start.p0(i64 8, ptr %oindex) #11, !dbg !964
  tail call void @llvm.dbg.declare(metadata ptr %oindex, metadata !957, metadata !DIExpression()), !dbg !966
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !967
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !967
  %add = add nsw i32 %1, 1, !dbg !967
  %idxprom = sext i32 %add to i64, !dbg !967
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !967
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !967
  store ptr %2, ptr %oindex, align 8, !dbg !968
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !969
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !969
  %add1 = add nsw i32 %4, 0, !dbg !969
  %idxprom2 = sext i32 %add1 to i64, !dbg !969
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !969
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !969
  store ptr %5, ptr %ostring, align 8, !dbg !970
  %6 = load ptr, ptr %ostring, align 8, !dbg !971
  %7 = ptrtoint ptr %6 to i64, !dbg !971
  %and = and i64 %7, 1, !dbg !971
  %cmp = icmp eq i64 %and, 0, !dbg !971
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !971

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %ostring, align 8, !dbg !971
  %bf.load = load i16, ptr %8, align 8, !dbg !971
  %bf.clear = and i16 %bf.load, 63, !dbg !971
  %bf.cast = zext i16 %bf.clear to i32, !dbg !971
  %cmp4 = icmp eq i32 %bf.cast, 18, !dbg !971
  br i1 %cmp4, label %if.end, label %if.then, !dbg !973

if.then:                                          ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %builtin.addr, align 8, !dbg !971
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %9, i32 0, i32 6, !dbg !971
  %10 = load ptr, ptr %symbol, align 8, !dbg !971
  %data = getelementptr inbounds %struct._LispObj, ptr %10, i32 0, i32 1, !dbg !971
  %11 = load ptr, ptr %data, align 8, !dbg !971
  %key = getelementptr inbounds %struct._LispAtom, ptr %11, i32 0, i32 0, !dbg !971
  %12 = load ptr, ptr %key, align 8, !dbg !971
  %value = getelementptr inbounds %struct._hash_key, ptr %12, i32 0, i32 0, !dbg !971
  %13 = load ptr, ptr %value, align 8, !dbg !971
  %14 = load ptr, ptr %ostring, align 8, !dbg !971
  %call = call ptr @LispStrObj(ptr noundef %14), !dbg !971
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %13, ptr noundef %call), !dbg !971
  br label %if.end, !dbg !971

if.end:                                           ; preds = %if.then, %land.lhs.true
  %15 = load ptr, ptr %oindex, align 8, !dbg !974
  %16 = ptrtoint ptr %15 to i64, !dbg !974
  %and5 = and i64 %16, 15, !dbg !974
  %cmp6 = icmp eq i64 %and5, 3, !dbg !974
  br i1 %cmp6, label %land.lhs.true7, label %if.then9, !dbg !974

land.lhs.true7:                                   ; preds = %if.end
  %17 = load ptr, ptr %oindex, align 8, !dbg !974
  %18 = ptrtoint ptr %17 to i64, !dbg !974
  %shr = ashr i64 %18, 4, !dbg !974
  %cmp8 = icmp sge i64 %shr, 0, !dbg !974
  br i1 %cmp8, label %if.end15, label %if.then9, !dbg !976

if.then9:                                         ; preds = %land.lhs.true7, %if.end
  %19 = load ptr, ptr %builtin.addr, align 8, !dbg !974
  %symbol10 = getelementptr inbounds %struct._LispBuiltin, ptr %19, i32 0, i32 6, !dbg !974
  %20 = load ptr, ptr %symbol10, align 8, !dbg !974
  %data11 = getelementptr inbounds %struct._LispObj, ptr %20, i32 0, i32 1, !dbg !974
  %21 = load ptr, ptr %data11, align 8, !dbg !974
  %key12 = getelementptr inbounds %struct._LispAtom, ptr %21, i32 0, i32 0, !dbg !974
  %22 = load ptr, ptr %key12, align 8, !dbg !974
  %value13 = getelementptr inbounds %struct._hash_key, ptr %22, i32 0, i32 0, !dbg !974
  %23 = load ptr, ptr %value13, align 8, !dbg !974
  %24 = load ptr, ptr %oindex, align 8, !dbg !974
  %call14 = call ptr @LispStrObj(ptr noundef %24), !dbg !974
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.1, ptr noundef %23, ptr noundef %call14), !dbg !974
  br label %if.end15, !dbg !974

if.end15:                                         ; preds = %if.then9, %land.lhs.true7
  %25 = load ptr, ptr %oindex, align 8, !dbg !977
  %26 = ptrtoint ptr %25 to i64, !dbg !977
  %shr16 = ashr i64 %26, 4, !dbg !977
  store i64 %shr16, ptr %offset, align 8, !dbg !978
  %27 = load ptr, ptr %ostring, align 8, !dbg !979
  %data17 = getelementptr inbounds %struct._LispObj, ptr %27, i32 0, i32 1, !dbg !979
  %string18 = getelementptr inbounds %struct.anon, ptr %data17, i32 0, i32 0, !dbg !979
  %28 = load ptr, ptr %string18, align 8, !dbg !979
  store ptr %28, ptr %string, align 8, !dbg !980
  %29 = load ptr, ptr %ostring, align 8, !dbg !981
  %data19 = getelementptr inbounds %struct._LispObj, ptr %29, i32 0, i32 1, !dbg !981
  %length20 = getelementptr inbounds %struct.anon, ptr %data19, i32 0, i32 1, !dbg !981
  %30 = load i64, ptr %length20, align 8, !dbg !981
  store i64 %30, ptr %length, align 8, !dbg !982
  %31 = load i64, ptr %offset, align 8, !dbg !983
  %32 = load i64, ptr %length, align 8, !dbg !985
  %cmp21 = icmp sge i64 %31, %32, !dbg !986
  br i1 %cmp21, label %if.then22, label %if.end27, !dbg !987

if.then22:                                        ; preds = %if.end15
  %33 = load ptr, ptr %builtin.addr, align 8, !dbg !988
  %symbol23 = getelementptr inbounds %struct._LispBuiltin, ptr %33, i32 0, i32 6, !dbg !988
  %34 = load ptr, ptr %symbol23, align 8, !dbg !988
  %data24 = getelementptr inbounds %struct._LispObj, ptr %34, i32 0, i32 1, !dbg !988
  %35 = load ptr, ptr %data24, align 8, !dbg !988
  %key25 = getelementptr inbounds %struct._LispAtom, ptr %35, i32 0, i32 0, !dbg !988
  %36 = load ptr, ptr %key25, align 8, !dbg !988
  %value26 = getelementptr inbounds %struct._hash_key, ptr %36, i32 0, i32 0, !dbg !988
  %37 = load ptr, ptr %value26, align 8, !dbg !988
  %38 = load i64, ptr %offset, align 8, !dbg !989
  %39 = load i64, ptr %length, align 8, !dbg !990
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.2, ptr noundef %37, i64 noundef %38, i64 noundef %39), !dbg !991
  br label %if.end27, !dbg !991

if.end27:                                         ; preds = %if.then22, %if.end15
  %40 = load ptr, ptr %string, align 8, !dbg !992
  %41 = load i64, ptr %offset, align 8, !dbg !992
  %arrayidx28 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !992
  %42 = load i8, ptr %arrayidx28, align 1, !dbg !992
  %conv = zext i8 %42 to i64, !dbg !992
  %shl = shl i64 %conv, 4, !dbg !992
  %or = or i64 %shl, 5, !dbg !992
  %43 = inttoptr i64 %or to ptr, !dbg !992
  call void @llvm.lifetime.end.p0(i64 8, ptr %oindex) #11, !dbg !993
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !993
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !993
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !993
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !993
  ret ptr %43, !dbg !994
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !995 void @LispDestroy(ptr noundef, ...) #2

declare !dbg !998 ptr @LispStrObj(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_XeditCharStore(ptr noundef %builtin) #0 !dbg !1001 {
entry:
  %builtin.addr = alloca ptr, align 8
  %character = alloca i32, align 4
  %offset = alloca i64, align 8
  %length = alloca i64, align 8
  %ostring = alloca ptr, align 8
  %oindex = alloca ptr, align 8
  %ovalue = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1003, metadata !DIExpression()), !dbg !1010
  call void @llvm.lifetime.start.p0(i64 4, ptr %character) #11, !dbg !1011
  tail call void @llvm.dbg.declare(metadata ptr %character, metadata !1004, metadata !DIExpression()), !dbg !1012
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !1013
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !1005, metadata !DIExpression()), !dbg !1014
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !1013
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !1006, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !1016
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !1007, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 8, ptr %oindex) #11, !dbg !1016
  tail call void @llvm.dbg.declare(metadata ptr %oindex, metadata !1008, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %ovalue) #11, !dbg !1016
  tail call void @llvm.dbg.declare(metadata ptr %ovalue, metadata !1009, metadata !DIExpression()), !dbg !1019
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1020
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1020
  %add = add nsw i32 %1, 2, !dbg !1020
  %idxprom = sext i32 %add to i64, !dbg !1020
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1020
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1020
  store ptr %2, ptr %ovalue, align 8, !dbg !1021
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !1022
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1022
  %add1 = add nsw i32 %4, 1, !dbg !1022
  %idxprom2 = sext i32 %add1 to i64, !dbg !1022
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !1022
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !1022
  store ptr %5, ptr %oindex, align 8, !dbg !1023
  %6 = load ptr, ptr @lisp__data, align 8, !dbg !1024
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1024
  %add4 = add nsw i32 %7, 0, !dbg !1024
  %idxprom5 = sext i32 %add4 to i64, !dbg !1024
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5, !dbg !1024
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !1024
  store ptr %8, ptr %ostring, align 8, !dbg !1025
  %9 = load ptr, ptr %ostring, align 8, !dbg !1026
  %10 = ptrtoint ptr %9 to i64, !dbg !1026
  %and = and i64 %10, 1, !dbg !1026
  %cmp = icmp eq i64 %and, 0, !dbg !1026
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !1026

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %ostring, align 8, !dbg !1026
  %bf.load = load i16, ptr %11, align 8, !dbg !1026
  %bf.clear = and i16 %bf.load, 63, !dbg !1026
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1026
  %cmp7 = icmp eq i32 %bf.cast, 18, !dbg !1026
  br i1 %cmp7, label %if.end, label %if.then, !dbg !1028

if.then:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %builtin.addr, align 8, !dbg !1026
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %12, i32 0, i32 6, !dbg !1026
  %13 = load ptr, ptr %symbol, align 8, !dbg !1026
  %data = getelementptr inbounds %struct._LispObj, ptr %13, i32 0, i32 1, !dbg !1026
  %14 = load ptr, ptr %data, align 8, !dbg !1026
  %key = getelementptr inbounds %struct._LispAtom, ptr %14, i32 0, i32 0, !dbg !1026
  %15 = load ptr, ptr %key, align 8, !dbg !1026
  %value = getelementptr inbounds %struct._hash_key, ptr %15, i32 0, i32 0, !dbg !1026
  %16 = load ptr, ptr %value, align 8, !dbg !1026
  %17 = load ptr, ptr %ostring, align 8, !dbg !1026
  %call = call ptr @LispStrObj(ptr noundef %17), !dbg !1026
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %16, ptr noundef %call), !dbg !1026
  br label %if.end, !dbg !1026

if.end:                                           ; preds = %if.then, %land.lhs.true
  %18 = load ptr, ptr %oindex, align 8, !dbg !1029
  %19 = ptrtoint ptr %18 to i64, !dbg !1029
  %and8 = and i64 %19, 15, !dbg !1029
  %cmp9 = icmp eq i64 %and8, 3, !dbg !1029
  br i1 %cmp9, label %land.lhs.true10, label %if.then12, !dbg !1029

land.lhs.true10:                                  ; preds = %if.end
  %20 = load ptr, ptr %oindex, align 8, !dbg !1029
  %21 = ptrtoint ptr %20 to i64, !dbg !1029
  %shr = ashr i64 %21, 4, !dbg !1029
  %cmp11 = icmp sge i64 %shr, 0, !dbg !1029
  br i1 %cmp11, label %if.end18, label %if.then12, !dbg !1031

if.then12:                                        ; preds = %land.lhs.true10, %if.end
  %22 = load ptr, ptr %builtin.addr, align 8, !dbg !1029
  %symbol13 = getelementptr inbounds %struct._LispBuiltin, ptr %22, i32 0, i32 6, !dbg !1029
  %23 = load ptr, ptr %symbol13, align 8, !dbg !1029
  %data14 = getelementptr inbounds %struct._LispObj, ptr %23, i32 0, i32 1, !dbg !1029
  %24 = load ptr, ptr %data14, align 8, !dbg !1029
  %key15 = getelementptr inbounds %struct._LispAtom, ptr %24, i32 0, i32 0, !dbg !1029
  %25 = load ptr, ptr %key15, align 8, !dbg !1029
  %value16 = getelementptr inbounds %struct._hash_key, ptr %25, i32 0, i32 0, !dbg !1029
  %26 = load ptr, ptr %value16, align 8, !dbg !1029
  %27 = load ptr, ptr %oindex, align 8, !dbg !1029
  %call17 = call ptr @LispStrObj(ptr noundef %27), !dbg !1029
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.1, ptr noundef %26, ptr noundef %call17), !dbg !1029
  br label %if.end18, !dbg !1029

if.end18:                                         ; preds = %if.then12, %land.lhs.true10
  %28 = load ptr, ptr %ostring, align 8, !dbg !1032
  %data19 = getelementptr inbounds %struct._LispObj, ptr %28, i32 0, i32 1, !dbg !1032
  %length20 = getelementptr inbounds %struct.anon, ptr %data19, i32 0, i32 1, !dbg !1032
  %29 = load i64, ptr %length20, align 8, !dbg !1032
  store i64 %29, ptr %length, align 8, !dbg !1033
  %30 = load ptr, ptr %oindex, align 8, !dbg !1034
  %31 = ptrtoint ptr %30 to i64, !dbg !1034
  %shr21 = ashr i64 %31, 4, !dbg !1034
  store i64 %shr21, ptr %offset, align 8, !dbg !1035
  %32 = load i64, ptr %offset, align 8, !dbg !1036
  %33 = load i64, ptr %length, align 8, !dbg !1038
  %cmp22 = icmp sge i64 %32, %33, !dbg !1039
  br i1 %cmp22, label %if.then23, label %if.end28, !dbg !1040

if.then23:                                        ; preds = %if.end18
  %34 = load ptr, ptr %builtin.addr, align 8, !dbg !1041
  %symbol24 = getelementptr inbounds %struct._LispBuiltin, ptr %34, i32 0, i32 6, !dbg !1041
  %35 = load ptr, ptr %symbol24, align 8, !dbg !1041
  %data25 = getelementptr inbounds %struct._LispObj, ptr %35, i32 0, i32 1, !dbg !1041
  %36 = load ptr, ptr %data25, align 8, !dbg !1041
  %key26 = getelementptr inbounds %struct._LispAtom, ptr %36, i32 0, i32 0, !dbg !1041
  %37 = load ptr, ptr %key26, align 8, !dbg !1041
  %value27 = getelementptr inbounds %struct._hash_key, ptr %37, i32 0, i32 0, !dbg !1041
  %38 = load ptr, ptr %value27, align 8, !dbg !1041
  %39 = load i64, ptr %offset, align 8, !dbg !1042
  %40 = load i64, ptr %length, align 8, !dbg !1043
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.2, ptr noundef %38, i64 noundef %39, i64 noundef %40), !dbg !1044
  br label %if.end28, !dbg !1044

if.end28:                                         ; preds = %if.then23, %if.end18
  %41 = load ptr, ptr %ovalue, align 8, !dbg !1045
  %42 = ptrtoint ptr %41 to i64, !dbg !1045
  %and29 = and i64 %42, 15, !dbg !1045
  %cmp30 = icmp eq i64 %and29, 5, !dbg !1045
  br i1 %cmp30, label %if.end37, label %if.then31, !dbg !1047

if.then31:                                        ; preds = %if.end28
  %43 = load ptr, ptr %builtin.addr, align 8, !dbg !1045
  %symbol32 = getelementptr inbounds %struct._LispBuiltin, ptr %43, i32 0, i32 6, !dbg !1045
  %44 = load ptr, ptr %symbol32, align 8, !dbg !1045
  %data33 = getelementptr inbounds %struct._LispObj, ptr %44, i32 0, i32 1, !dbg !1045
  %45 = load ptr, ptr %data33, align 8, !dbg !1045
  %key34 = getelementptr inbounds %struct._LispAtom, ptr %45, i32 0, i32 0, !dbg !1045
  %46 = load ptr, ptr %key34, align 8, !dbg !1045
  %value35 = getelementptr inbounds %struct._hash_key, ptr %46, i32 0, i32 0, !dbg !1045
  %47 = load ptr, ptr %value35, align 8, !dbg !1045
  %48 = load ptr, ptr %ovalue, align 8, !dbg !1045
  %call36 = call ptr @LispStrObj(ptr noundef %48), !dbg !1045
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.3, ptr noundef %47, ptr noundef %call36), !dbg !1045
  br label %if.end37, !dbg !1045

if.end37:                                         ; preds = %if.then31, %if.end28
  %49 = load ptr, ptr %ostring, align 8, !dbg !1048
  %data38 = getelementptr inbounds %struct._LispObj, ptr %49, i32 0, i32 1, !dbg !1048
  %writable = getelementptr inbounds %struct.anon, ptr %data38, i32 0, i32 2, !dbg !1048
  %bf.load39 = load i8, ptr %writable, align 8, !dbg !1048
  %bf.clear40 = and i8 %bf.load39, 1, !dbg !1048
  %bf.cast41 = zext i8 %bf.clear40 to i32, !dbg !1048
  %tobool = icmp ne i32 %bf.cast41, 0, !dbg !1048
  br i1 %tobool, label %if.end48, label %if.then42, !dbg !1050

if.then42:                                        ; preds = %if.end37
  %50 = load ptr, ptr %builtin.addr, align 8, !dbg !1048
  %symbol43 = getelementptr inbounds %struct._LispBuiltin, ptr %50, i32 0, i32 6, !dbg !1048
  %51 = load ptr, ptr %symbol43, align 8, !dbg !1048
  %data44 = getelementptr inbounds %struct._LispObj, ptr %51, i32 0, i32 1, !dbg !1048
  %52 = load ptr, ptr %data44, align 8, !dbg !1048
  %key45 = getelementptr inbounds %struct._LispAtom, ptr %52, i32 0, i32 0, !dbg !1048
  %53 = load ptr, ptr %key45, align 8, !dbg !1048
  %value46 = getelementptr inbounds %struct._hash_key, ptr %53, i32 0, i32 0, !dbg !1048
  %54 = load ptr, ptr %value46, align 8, !dbg !1048
  %55 = load ptr, ptr %ostring, align 8, !dbg !1048
  %call47 = call ptr @LispStrObj(ptr noundef %55), !dbg !1048
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.4, ptr noundef %54, ptr noundef %call47), !dbg !1048
  br label %if.end48, !dbg !1048

if.end48:                                         ; preds = %if.then42, %if.end37
  %56 = load ptr, ptr %ovalue, align 8, !dbg !1051
  %57 = ptrtoint ptr %56 to i64, !dbg !1051
  %shr49 = ashr i64 %57, 4, !dbg !1051
  %conv = trunc i64 %shr49 to i32, !dbg !1051
  store i32 %conv, ptr %character, align 4, !dbg !1052
  %58 = load i32, ptr %character, align 4, !dbg !1053
  %cmp50 = icmp slt i32 %58, 0, !dbg !1055
  br i1 %cmp50, label %if.then54, label %lor.lhs.false, !dbg !1056

lor.lhs.false:                                    ; preds = %if.end48
  %59 = load i32, ptr %character, align 4, !dbg !1057
  %cmp52 = icmp sgt i32 %59, 255, !dbg !1058
  br i1 %cmp52, label %if.then54, label %if.end59, !dbg !1059

if.then54:                                        ; preds = %lor.lhs.false, %if.end48
  %60 = load ptr, ptr %builtin.addr, align 8, !dbg !1060
  %symbol55 = getelementptr inbounds %struct._LispBuiltin, ptr %60, i32 0, i32 6, !dbg !1060
  %61 = load ptr, ptr %symbol55, align 8, !dbg !1060
  %data56 = getelementptr inbounds %struct._LispObj, ptr %61, i32 0, i32 1, !dbg !1060
  %62 = load ptr, ptr %data56, align 8, !dbg !1060
  %key57 = getelementptr inbounds %struct._LispAtom, ptr %62, i32 0, i32 0, !dbg !1060
  %63 = load ptr, ptr %key57, align 8, !dbg !1060
  %value58 = getelementptr inbounds %struct._hash_key, ptr %63, i32 0, i32 0, !dbg !1060
  %64 = load ptr, ptr %value58, align 8, !dbg !1060
  %65 = load i32, ptr %character, align 4, !dbg !1061
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.5, ptr noundef %64, i32 noundef %65), !dbg !1062
  br label %if.end59, !dbg !1062

if.end59:                                         ; preds = %if.then54, %lor.lhs.false
  %66 = load i32, ptr %character, align 4, !dbg !1063
  %conv60 = trunc i32 %66 to i8, !dbg !1063
  %67 = load ptr, ptr %ostring, align 8, !dbg !1064
  %data61 = getelementptr inbounds %struct._LispObj, ptr %67, i32 0, i32 1, !dbg !1064
  %string = getelementptr inbounds %struct.anon, ptr %data61, i32 0, i32 0, !dbg !1064
  %68 = load ptr, ptr %string, align 8, !dbg !1064
  %69 = load i64, ptr %offset, align 8, !dbg !1065
  %arrayidx62 = getelementptr inbounds i8, ptr %68, i64 %69, !dbg !1064
  store i8 %conv60, ptr %arrayidx62, align 1, !dbg !1066
  %70 = load ptr, ptr %ovalue, align 8, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 8, ptr %ovalue) #11, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %oindex) #11, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !1068
  call void @llvm.lifetime.end.p0(i64 4, ptr %character) #11, !dbg !1068
  ret ptr %70, !dbg !1069
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_Character(ptr noundef %builtin) #0 !dbg !1070 {
entry:
  %builtin.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1072, metadata !DIExpression()), !dbg !1074
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #11, !dbg !1075
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !1073, metadata !DIExpression()), !dbg !1076
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1077
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1077
  %add = add nsw i32 %1, 0, !dbg !1077
  %idxprom = sext i32 %add to i64, !dbg !1077
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1077
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1077
  store ptr %2, ptr %object, align 8, !dbg !1078
  %3 = load ptr, ptr %builtin.addr, align 8, !dbg !1079
  %4 = load ptr, ptr %object, align 8, !dbg !1080
  %call = call ptr @LispCharacterCoerce(ptr noundef %3, ptr noundef %4), !dbg !1081
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #11, !dbg !1082
  ret ptr %call, !dbg !1083
}

declare !dbg !1084 ptr @LispCharacterCoerce(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_Characterp(ptr noundef %builtin) #0 !dbg !1088 {
entry:
  %builtin.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1090, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #11, !dbg !1093
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !1091, metadata !DIExpression()), !dbg !1094
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1095
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1095
  %add = add nsw i32 %1, 0, !dbg !1095
  %idxprom = sext i32 %add to i64, !dbg !1095
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1095
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1095
  store ptr %2, ptr %object, align 8, !dbg !1096
  %3 = load ptr, ptr %object, align 8, !dbg !1097
  %4 = ptrtoint ptr %3 to i64, !dbg !1097
  %and = and i64 %4, 15, !dbg !1097
  %cmp = icmp eq i64 %and, 5, !dbg !1097
  %5 = zext i1 %cmp to i64, !dbg !1097
  %cond = select i1 %cmp, ptr inttoptr (i64 17 to ptr), ptr inttoptr (i64 1 to ptr), !dbg !1097
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #11, !dbg !1098
  ret ptr %cond, !dbg !1099
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_DigitChar(ptr noundef %builtin) #0 !dbg !1100 {
entry:
  %builtin.addr = alloca ptr, align 8
  %radix = alloca i64, align 8
  %weight = alloca i64, align 8
  %oweight = alloca ptr, align 8
  %oradix = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1102, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 8, ptr %radix) #11, !dbg !1109
  tail call void @llvm.dbg.declare(metadata ptr %radix, metadata !1103, metadata !DIExpression()), !dbg !1110
  store i64 10, ptr %radix, align 8, !dbg !1110
  call void @llvm.lifetime.start.p0(i64 8, ptr %weight) #11, !dbg !1109
  tail call void @llvm.dbg.declare(metadata ptr %weight, metadata !1104, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 8, ptr %oweight) #11, !dbg !1112
  tail call void @llvm.dbg.declare(metadata ptr %oweight, metadata !1105, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 8, ptr %oradix) #11, !dbg !1112
  tail call void @llvm.dbg.declare(metadata ptr %oradix, metadata !1106, metadata !DIExpression()), !dbg !1114
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !1112
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1107, metadata !DIExpression()), !dbg !1115
  store ptr inttoptr (i64 1 to ptr), ptr %result, align 8, !dbg !1115
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1116
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1116
  %add = add nsw i32 %1, 1, !dbg !1116
  %idxprom = sext i32 %add to i64, !dbg !1116
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1116
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1116
  store ptr %2, ptr %oradix, align 8, !dbg !1117
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !1118
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1118
  %add1 = add nsw i32 %4, 0, !dbg !1118
  %idxprom2 = sext i32 %add1 to i64, !dbg !1118
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !1118
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !1118
  store ptr %5, ptr %oweight, align 8, !dbg !1119
  %6 = load ptr, ptr %oweight, align 8, !dbg !1120
  %7 = ptrtoint ptr %6 to i64, !dbg !1120
  %and = and i64 %7, 15, !dbg !1120
  %cmp = icmp eq i64 %and, 3, !dbg !1120
  br i1 %cmp, label %if.end, label %if.then, !dbg !1122

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %builtin.addr, align 8, !dbg !1120
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %8, i32 0, i32 6, !dbg !1120
  %9 = load ptr, ptr %symbol, align 8, !dbg !1120
  %data = getelementptr inbounds %struct._LispObj, ptr %9, i32 0, i32 1, !dbg !1120
  %10 = load ptr, ptr %data, align 8, !dbg !1120
  %key = getelementptr inbounds %struct._LispAtom, ptr %10, i32 0, i32 0, !dbg !1120
  %11 = load ptr, ptr %key, align 8, !dbg !1120
  %value = getelementptr inbounds %struct._hash_key, ptr %11, i32 0, i32 0, !dbg !1120
  %12 = load ptr, ptr %value, align 8, !dbg !1120
  %13 = load ptr, ptr %oweight, align 8, !dbg !1120
  %call = call ptr @LispStrObj(ptr noundef %13), !dbg !1120
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.6, ptr noundef %12, ptr noundef %call), !dbg !1120
  br label %if.end, !dbg !1120

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %oweight, align 8, !dbg !1123
  %15 = ptrtoint ptr %14 to i64, !dbg !1123
  %shr = ashr i64 %15, 4, !dbg !1123
  store i64 %shr, ptr %weight, align 8, !dbg !1124
  %16 = load ptr, ptr %oradix, align 8, !dbg !1125
  %cmp4 = icmp ne ptr %16, inttoptr (i64 81 to ptr), !dbg !1127
  br i1 %cmp4, label %if.then5, label %if.end18, !dbg !1128

if.then5:                                         ; preds = %if.end
  %17 = load ptr, ptr %oradix, align 8, !dbg !1129
  %18 = ptrtoint ptr %17 to i64, !dbg !1129
  %and6 = and i64 %18, 15, !dbg !1129
  %cmp7 = icmp eq i64 %and6, 3, !dbg !1129
  br i1 %cmp7, label %land.lhs.true, label %if.then10, !dbg !1129

land.lhs.true:                                    ; preds = %if.then5
  %19 = load ptr, ptr %oradix, align 8, !dbg !1129
  %20 = ptrtoint ptr %19 to i64, !dbg !1129
  %shr8 = ashr i64 %20, 4, !dbg !1129
  %cmp9 = icmp sge i64 %shr8, 0, !dbg !1129
  br i1 %cmp9, label %if.end16, label %if.then10, !dbg !1132

if.then10:                                        ; preds = %land.lhs.true, %if.then5
  %21 = load ptr, ptr %builtin.addr, align 8, !dbg !1129
  %symbol11 = getelementptr inbounds %struct._LispBuiltin, ptr %21, i32 0, i32 6, !dbg !1129
  %22 = load ptr, ptr %symbol11, align 8, !dbg !1129
  %data12 = getelementptr inbounds %struct._LispObj, ptr %22, i32 0, i32 1, !dbg !1129
  %23 = load ptr, ptr %data12, align 8, !dbg !1129
  %key13 = getelementptr inbounds %struct._LispAtom, ptr %23, i32 0, i32 0, !dbg !1129
  %24 = load ptr, ptr %key13, align 8, !dbg !1129
  %value14 = getelementptr inbounds %struct._hash_key, ptr %24, i32 0, i32 0, !dbg !1129
  %25 = load ptr, ptr %value14, align 8, !dbg !1129
  %26 = load ptr, ptr %oradix, align 8, !dbg !1129
  %call15 = call ptr @LispStrObj(ptr noundef %26), !dbg !1129
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.1, ptr noundef %25, ptr noundef %call15), !dbg !1129
  br label %if.end16, !dbg !1129

if.end16:                                         ; preds = %if.then10, %land.lhs.true
  %27 = load ptr, ptr %oradix, align 8, !dbg !1133
  %28 = ptrtoint ptr %27 to i64, !dbg !1133
  %shr17 = ashr i64 %28, 4, !dbg !1133
  store i64 %shr17, ptr %radix, align 8, !dbg !1134
  br label %if.end18, !dbg !1135

if.end18:                                         ; preds = %if.end16, %if.end
  %29 = load i64, ptr %radix, align 8, !dbg !1136
  %cmp19 = icmp slt i64 %29, 2, !dbg !1138
  br i1 %cmp19, label %if.then21, label %lor.lhs.false, !dbg !1139

lor.lhs.false:                                    ; preds = %if.end18
  %30 = load i64, ptr %radix, align 8, !dbg !1140
  %cmp20 = icmp sgt i64 %30, 36, !dbg !1141
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !1142

if.then21:                                        ; preds = %lor.lhs.false, %if.end18
  %31 = load ptr, ptr %builtin.addr, align 8, !dbg !1143
  %symbol22 = getelementptr inbounds %struct._LispBuiltin, ptr %31, i32 0, i32 6, !dbg !1143
  %32 = load ptr, ptr %symbol22, align 8, !dbg !1143
  %data23 = getelementptr inbounds %struct._LispObj, ptr %32, i32 0, i32 1, !dbg !1143
  %33 = load ptr, ptr %data23, align 8, !dbg !1143
  %key24 = getelementptr inbounds %struct._LispAtom, ptr %33, i32 0, i32 0, !dbg !1143
  %34 = load ptr, ptr %key24, align 8, !dbg !1143
  %value25 = getelementptr inbounds %struct._hash_key, ptr %34, i32 0, i32 0, !dbg !1143
  %35 = load ptr, ptr %value25, align 8, !dbg !1143
  %36 = load i64, ptr %radix, align 8, !dbg !1144
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.7, ptr noundef %35, i64 noundef %36), !dbg !1145
  br label %if.end26, !dbg !1145

if.end26:                                         ; preds = %if.then21, %lor.lhs.false
  %37 = load i64, ptr %weight, align 8, !dbg !1146
  %cmp27 = icmp sge i64 %37, 0, !dbg !1148
  br i1 %cmp27, label %land.lhs.true28, label %if.end36, !dbg !1149

land.lhs.true28:                                  ; preds = %if.end26
  %38 = load i64, ptr %weight, align 8, !dbg !1150
  %39 = load i64, ptr %radix, align 8, !dbg !1151
  %cmp29 = icmp slt i64 %38, %39, !dbg !1152
  br i1 %cmp29, label %if.then30, label %if.end36, !dbg !1153

if.then30:                                        ; preds = %land.lhs.true28
  %40 = load i64, ptr %weight, align 8, !dbg !1154
  %cmp31 = icmp slt i64 %40, 9, !dbg !1157
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !1158

if.then32:                                        ; preds = %if.then30
  %41 = load i64, ptr %weight, align 8, !dbg !1159
  %add33 = add nsw i64 %41, 48, !dbg !1159
  store i64 %add33, ptr %weight, align 8, !dbg !1159
  br label %if.end35, !dbg !1160

if.else:                                          ; preds = %if.then30
  %42 = load i64, ptr %weight, align 8, !dbg !1161
  %add34 = add nsw i64 %42, 55, !dbg !1161
  store i64 %add34, ptr %weight, align 8, !dbg !1161
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %43 = load i64, ptr %weight, align 8, !dbg !1162
  %shl = shl i64 %43, 4, !dbg !1162
  %or = or i64 %shl, 5, !dbg !1162
  %44 = inttoptr i64 %or to ptr, !dbg !1162
  store ptr %44, ptr %result, align 8, !dbg !1163
  br label %if.end36, !dbg !1164

if.end36:                                         ; preds = %if.end35, %land.lhs.true28, %if.end26
  %45 = load ptr, ptr %result, align 8, !dbg !1165
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %oradix) #11, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %oweight) #11, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %weight) #11, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 8, ptr %radix) #11, !dbg !1166
  ret ptr %45, !dbg !1167
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_DigitCharP(ptr noundef %builtin) #0 !dbg !1168 {
entry:
  %builtin.addr = alloca ptr, align 8
  %radix = alloca i64, align 8
  %character = alloca i64, align 8
  %ochar = alloca ptr, align 8
  %oradix = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1170, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 8, ptr %radix) #11, !dbg !1177
  tail call void @llvm.dbg.declare(metadata ptr %radix, metadata !1171, metadata !DIExpression()), !dbg !1178
  store i64 10, ptr %radix, align 8, !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %character) #11, !dbg !1177
  tail call void @llvm.dbg.declare(metadata ptr %character, metadata !1172, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 8, ptr %ochar) #11, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %ochar, metadata !1173, metadata !DIExpression()), !dbg !1181
  call void @llvm.lifetime.start.p0(i64 8, ptr %oradix) #11, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %oradix, metadata !1174, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1175, metadata !DIExpression()), !dbg !1183
  store ptr inttoptr (i64 1 to ptr), ptr %result, align 8, !dbg !1183
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1184
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1184
  %add = add nsw i32 %1, 1, !dbg !1184
  %idxprom = sext i32 %add to i64, !dbg !1184
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1184
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1184
  store ptr %2, ptr %oradix, align 8, !dbg !1185
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !1186
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1186
  %add1 = add nsw i32 %4, 0, !dbg !1186
  %idxprom2 = sext i32 %add1 to i64, !dbg !1186
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !1186
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !1186
  store ptr %5, ptr %ochar, align 8, !dbg !1187
  %6 = load ptr, ptr %ochar, align 8, !dbg !1188
  %7 = ptrtoint ptr %6 to i64, !dbg !1188
  %and = and i64 %7, 15, !dbg !1188
  %cmp = icmp eq i64 %and, 5, !dbg !1188
  br i1 %cmp, label %if.end, label %if.then, !dbg !1190

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %builtin.addr, align 8, !dbg !1188
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %8, i32 0, i32 6, !dbg !1188
  %9 = load ptr, ptr %symbol, align 8, !dbg !1188
  %data = getelementptr inbounds %struct._LispObj, ptr %9, i32 0, i32 1, !dbg !1188
  %10 = load ptr, ptr %data, align 8, !dbg !1188
  %key = getelementptr inbounds %struct._LispAtom, ptr %10, i32 0, i32 0, !dbg !1188
  %11 = load ptr, ptr %key, align 8, !dbg !1188
  %value = getelementptr inbounds %struct._hash_key, ptr %11, i32 0, i32 0, !dbg !1188
  %12 = load ptr, ptr %value, align 8, !dbg !1188
  %13 = load ptr, ptr %ochar, align 8, !dbg !1188
  %call = call ptr @LispStrObj(ptr noundef %13), !dbg !1188
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.3, ptr noundef %12, ptr noundef %call), !dbg !1188
  br label %if.end, !dbg !1188

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %ochar, align 8, !dbg !1191
  %15 = ptrtoint ptr %14 to i64, !dbg !1191
  %shr = ashr i64 %15, 4, !dbg !1191
  store i64 %shr, ptr %character, align 8, !dbg !1192
  %16 = load ptr, ptr %oradix, align 8, !dbg !1193
  %cmp4 = icmp ne ptr %16, inttoptr (i64 81 to ptr), !dbg !1195
  br i1 %cmp4, label %if.then5, label %if.end18, !dbg !1196

if.then5:                                         ; preds = %if.end
  %17 = load ptr, ptr %oradix, align 8, !dbg !1197
  %18 = ptrtoint ptr %17 to i64, !dbg !1197
  %and6 = and i64 %18, 15, !dbg !1197
  %cmp7 = icmp eq i64 %and6, 3, !dbg !1197
  br i1 %cmp7, label %land.lhs.true, label %if.then10, !dbg !1197

land.lhs.true:                                    ; preds = %if.then5
  %19 = load ptr, ptr %oradix, align 8, !dbg !1197
  %20 = ptrtoint ptr %19 to i64, !dbg !1197
  %shr8 = ashr i64 %20, 4, !dbg !1197
  %cmp9 = icmp sge i64 %shr8, 0, !dbg !1197
  br i1 %cmp9, label %if.end16, label %if.then10, !dbg !1200

if.then10:                                        ; preds = %land.lhs.true, %if.then5
  %21 = load ptr, ptr %builtin.addr, align 8, !dbg !1197
  %symbol11 = getelementptr inbounds %struct._LispBuiltin, ptr %21, i32 0, i32 6, !dbg !1197
  %22 = load ptr, ptr %symbol11, align 8, !dbg !1197
  %data12 = getelementptr inbounds %struct._LispObj, ptr %22, i32 0, i32 1, !dbg !1197
  %23 = load ptr, ptr %data12, align 8, !dbg !1197
  %key13 = getelementptr inbounds %struct._LispAtom, ptr %23, i32 0, i32 0, !dbg !1197
  %24 = load ptr, ptr %key13, align 8, !dbg !1197
  %value14 = getelementptr inbounds %struct._hash_key, ptr %24, i32 0, i32 0, !dbg !1197
  %25 = load ptr, ptr %value14, align 8, !dbg !1197
  %26 = load ptr, ptr %oradix, align 8, !dbg !1197
  %call15 = call ptr @LispStrObj(ptr noundef %26), !dbg !1197
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.1, ptr noundef %25, ptr noundef %call15), !dbg !1197
  br label %if.end16, !dbg !1197

if.end16:                                         ; preds = %if.then10, %land.lhs.true
  %27 = load ptr, ptr %oradix, align 8, !dbg !1201
  %28 = ptrtoint ptr %27 to i64, !dbg !1201
  %shr17 = ashr i64 %28, 4, !dbg !1201
  store i64 %shr17, ptr %radix, align 8, !dbg !1202
  br label %if.end18, !dbg !1203

if.end18:                                         ; preds = %if.end16, %if.end
  %29 = load i64, ptr %radix, align 8, !dbg !1204
  %cmp19 = icmp slt i64 %29, 2, !dbg !1206
  br i1 %cmp19, label %if.then21, label %lor.lhs.false, !dbg !1207

lor.lhs.false:                                    ; preds = %if.end18
  %30 = load i64, ptr %radix, align 8, !dbg !1208
  %cmp20 = icmp sgt i64 %30, 36, !dbg !1209
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !1210

if.then21:                                        ; preds = %lor.lhs.false, %if.end18
  %31 = load ptr, ptr %builtin.addr, align 8, !dbg !1211
  %symbol22 = getelementptr inbounds %struct._LispBuiltin, ptr %31, i32 0, i32 6, !dbg !1211
  %32 = load ptr, ptr %symbol22, align 8, !dbg !1211
  %data23 = getelementptr inbounds %struct._LispObj, ptr %32, i32 0, i32 1, !dbg !1211
  %33 = load ptr, ptr %data23, align 8, !dbg !1211
  %key24 = getelementptr inbounds %struct._LispAtom, ptr %33, i32 0, i32 0, !dbg !1211
  %34 = load ptr, ptr %key24, align 8, !dbg !1211
  %value25 = getelementptr inbounds %struct._hash_key, ptr %34, i32 0, i32 0, !dbg !1211
  %35 = load ptr, ptr %value25, align 8, !dbg !1211
  %36 = load i64, ptr %radix, align 8, !dbg !1212
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.7, ptr noundef %35, i64 noundef %36), !dbg !1213
  br label %if.end26, !dbg !1213

if.end26:                                         ; preds = %if.then21, %lor.lhs.false
  %37 = load i64, ptr %character, align 8, !dbg !1214
  %cmp27 = icmp sge i64 %37, 48, !dbg !1216
  br i1 %cmp27, label %land.lhs.true28, label %if.else, !dbg !1217

land.lhs.true28:                                  ; preds = %if.end26
  %38 = load i64, ptr %character, align 8, !dbg !1218
  %cmp29 = icmp sle i64 %38, 57, !dbg !1219
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !1220

if.then30:                                        ; preds = %land.lhs.true28
  %39 = load i64, ptr %character, align 8, !dbg !1221
  %sub = sub nsw i64 %39, 48, !dbg !1221
  store i64 %sub, ptr %character, align 8, !dbg !1221
  br label %if.end44, !dbg !1222

if.else:                                          ; preds = %land.lhs.true28, %if.end26
  %40 = load i64, ptr %character, align 8, !dbg !1223
  %cmp31 = icmp sge i64 %40, 65, !dbg !1225
  br i1 %cmp31, label %land.lhs.true32, label %if.else36, !dbg !1226

land.lhs.true32:                                  ; preds = %if.else
  %41 = load i64, ptr %character, align 8, !dbg !1227
  %cmp33 = icmp sle i64 %41, 90, !dbg !1228
  br i1 %cmp33, label %if.then34, label %if.else36, !dbg !1229

if.then34:                                        ; preds = %land.lhs.true32
  %42 = load i64, ptr %character, align 8, !dbg !1230
  %sub35 = sub nsw i64 %42, 55, !dbg !1230
  store i64 %sub35, ptr %character, align 8, !dbg !1230
  br label %if.end43, !dbg !1231

if.else36:                                        ; preds = %land.lhs.true32, %if.else
  %43 = load i64, ptr %character, align 8, !dbg !1232
  %cmp37 = icmp sge i64 %43, 97, !dbg !1234
  br i1 %cmp37, label %land.lhs.true38, label %if.end42, !dbg !1235

land.lhs.true38:                                  ; preds = %if.else36
  %44 = load i64, ptr %character, align 8, !dbg !1236
  %cmp39 = icmp sle i64 %44, 122, !dbg !1237
  br i1 %cmp39, label %if.then40, label %if.end42, !dbg !1238

if.then40:                                        ; preds = %land.lhs.true38
  %45 = load i64, ptr %character, align 8, !dbg !1239
  %sub41 = sub nsw i64 %45, 87, !dbg !1239
  store i64 %sub41, ptr %character, align 8, !dbg !1239
  br label %if.end42, !dbg !1240

if.end42:                                         ; preds = %if.then40, %land.lhs.true38, %if.else36
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then34
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then30
  %46 = load i64, ptr %character, align 8, !dbg !1241
  %47 = load i64, ptr %radix, align 8, !dbg !1243
  %cmp45 = icmp slt i64 %46, %47, !dbg !1244
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1245

if.then46:                                        ; preds = %if.end44
  %48 = load i64, ptr %character, align 8, !dbg !1246
  %shl = shl i64 %48, 4, !dbg !1246
  %or = or i64 %shl, 3, !dbg !1246
  %49 = inttoptr i64 %or to ptr, !dbg !1246
  store ptr %49, ptr %result, align 8, !dbg !1247
  br label %if.end47, !dbg !1248

if.end47:                                         ; preds = %if.then46, %if.end44
  %50 = load ptr, ptr %result, align 8, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 8, ptr %oradix) #11, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 8, ptr %ochar) #11, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 8, ptr %character) #11, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 8, ptr %radix) #11, !dbg !1250
  ret ptr %50, !dbg !1251
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_IntChar(ptr noundef %builtin) #0 !dbg !1252 {
entry:
  %builtin.addr = alloca ptr, align 8
  %character = alloca i64, align 8
  %integer = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1254, metadata !DIExpression()), !dbg !1257
  call void @llvm.lifetime.start.p0(i64 8, ptr %character) #11, !dbg !1258
  tail call void @llvm.dbg.declare(metadata ptr %character, metadata !1255, metadata !DIExpression()), !dbg !1259
  store i64 0, ptr %character, align 8, !dbg !1259
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer) #11, !dbg !1260
  tail call void @llvm.dbg.declare(metadata ptr %integer, metadata !1256, metadata !DIExpression()), !dbg !1261
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1262
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1262
  %add = add nsw i32 %1, 0, !dbg !1262
  %idxprom = sext i32 %add to i64, !dbg !1262
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1262
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1262
  store ptr %2, ptr %integer, align 8, !dbg !1263
  %3 = load ptr, ptr %integer, align 8, !dbg !1264
  %4 = ptrtoint ptr %3 to i64, !dbg !1264
  %and = and i64 %4, 15, !dbg !1264
  %cmp = icmp eq i64 %and, 3, !dbg !1264
  br i1 %cmp, label %if.end, label %if.then, !dbg !1266

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %builtin.addr, align 8, !dbg !1264
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %5, i32 0, i32 6, !dbg !1264
  %6 = load ptr, ptr %symbol, align 8, !dbg !1264
  %data = getelementptr inbounds %struct._LispObj, ptr %6, i32 0, i32 1, !dbg !1264
  %7 = load ptr, ptr %data, align 8, !dbg !1264
  %key = getelementptr inbounds %struct._LispAtom, ptr %7, i32 0, i32 0, !dbg !1264
  %8 = load ptr, ptr %key, align 8, !dbg !1264
  %value = getelementptr inbounds %struct._hash_key, ptr %8, i32 0, i32 0, !dbg !1264
  %9 = load ptr, ptr %value, align 8, !dbg !1264
  %10 = load ptr, ptr %integer, align 8, !dbg !1264
  %call = call ptr @LispStrObj(ptr noundef %10), !dbg !1264
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.6, ptr noundef %9, ptr noundef %call), !dbg !1264
  br label %if.end, !dbg !1264

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %integer, align 8, !dbg !1267
  %12 = ptrtoint ptr %11 to i64, !dbg !1267
  %shr = ashr i64 %12, 4, !dbg !1267
  store i64 %shr, ptr %character, align 8, !dbg !1268
  %13 = load i64, ptr %character, align 8, !dbg !1269
  %cmp1 = icmp sge i64 %13, 0, !dbg !1270
  br i1 %cmp1, label %land.lhs.true, label %cond.false, !dbg !1271

land.lhs.true:                                    ; preds = %if.end
  %14 = load i64, ptr %character, align 8, !dbg !1272
  %cmp2 = icmp slt i64 %14, 255, !dbg !1273
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !1269

cond.true:                                        ; preds = %land.lhs.true
  %15 = load i64, ptr %character, align 8, !dbg !1274
  %shl = shl i64 %15, 4, !dbg !1274
  %or = or i64 %shl, 5, !dbg !1274
  %16 = inttoptr i64 %or to ptr, !dbg !1274
  br label %cond.end, !dbg !1269

cond.false:                                       ; preds = %land.lhs.true, %if.end
  br label %cond.end, !dbg !1269

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %16, %cond.true ], [ inttoptr (i64 1 to ptr), %cond.false ], !dbg !1269
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer) #11, !dbg !1275
  call void @llvm.lifetime.end.p0(i64 8, ptr %character) #11, !dbg !1275
  ret ptr %cond, !dbg !1276
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_MakeString(ptr noundef %builtin) #0 !dbg !1277 {
entry:
  %builtin.addr = alloca ptr, align 8
  %length = alloca i64, align 8
  %string = alloca ptr, align 8
  %initial = alloca i8, align 1
  %size = alloca ptr, align 8
  %initial_element = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1279, metadata !DIExpression()), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !1286
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !1280, metadata !DIExpression()), !dbg !1287
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !1288
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !1281, metadata !DIExpression()), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 1, ptr %initial) #11, !dbg !1288
  tail call void @llvm.dbg.declare(metadata ptr %initial, metadata !1282, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !1291
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !1283, metadata !DIExpression()), !dbg !1292
  call void @llvm.lifetime.start.p0(i64 8, ptr %initial_element) #11, !dbg !1291
  tail call void @llvm.dbg.declare(metadata ptr %initial_element, metadata !1284, metadata !DIExpression()), !dbg !1293
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1294
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1294
  %add = add nsw i32 %1, 1, !dbg !1294
  %idxprom = sext i32 %add to i64, !dbg !1294
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1294
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1294
  store ptr %2, ptr %initial_element, align 8, !dbg !1295
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !1296
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1296
  %add1 = add nsw i32 %4, 0, !dbg !1296
  %idxprom2 = sext i32 %add1 to i64, !dbg !1296
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !1296
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !1296
  store ptr %5, ptr %size, align 8, !dbg !1297
  %6 = load ptr, ptr %size, align 8, !dbg !1298
  %7 = ptrtoint ptr %6 to i64, !dbg !1298
  %and = and i64 %7, 15, !dbg !1298
  %cmp = icmp eq i64 %and, 3, !dbg !1298
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !1298

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %size, align 8, !dbg !1298
  %9 = ptrtoint ptr %8 to i64, !dbg !1298
  %shr = ashr i64 %9, 4, !dbg !1298
  %cmp4 = icmp sge i64 %shr, 0, !dbg !1298
  br i1 %cmp4, label %if.end, label %if.then, !dbg !1300

if.then:                                          ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %builtin.addr, align 8, !dbg !1298
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %10, i32 0, i32 6, !dbg !1298
  %11 = load ptr, ptr %symbol, align 8, !dbg !1298
  %data = getelementptr inbounds %struct._LispObj, ptr %11, i32 0, i32 1, !dbg !1298
  %12 = load ptr, ptr %data, align 8, !dbg !1298
  %key = getelementptr inbounds %struct._LispAtom, ptr %12, i32 0, i32 0, !dbg !1298
  %13 = load ptr, ptr %key, align 8, !dbg !1298
  %value = getelementptr inbounds %struct._hash_key, ptr %13, i32 0, i32 0, !dbg !1298
  %14 = load ptr, ptr %value, align 8, !dbg !1298
  %15 = load ptr, ptr %size, align 8, !dbg !1298
  %call = call ptr @LispStrObj(ptr noundef %15), !dbg !1298
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.1, ptr noundef %14, ptr noundef %call), !dbg !1298
  br label %if.end, !dbg !1298

if.end:                                           ; preds = %if.then, %land.lhs.true
  %16 = load ptr, ptr %size, align 8, !dbg !1301
  %17 = ptrtoint ptr %16 to i64, !dbg !1301
  %shr5 = ashr i64 %17, 4, !dbg !1301
  store i64 %shr5, ptr %length, align 8, !dbg !1302
  %18 = load ptr, ptr %initial_element, align 8, !dbg !1303
  %cmp6 = icmp ne ptr %18, inttoptr (i64 81 to ptr), !dbg !1305
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !1306

if.then7:                                         ; preds = %if.end
  %19 = load ptr, ptr %initial_element, align 8, !dbg !1307
  %20 = ptrtoint ptr %19 to i64, !dbg !1307
  %and8 = and i64 %20, 15, !dbg !1307
  %cmp9 = icmp eq i64 %and8, 5, !dbg !1307
  br i1 %cmp9, label %if.end16, label %if.then10, !dbg !1310

if.then10:                                        ; preds = %if.then7
  %21 = load ptr, ptr %builtin.addr, align 8, !dbg !1307
  %symbol11 = getelementptr inbounds %struct._LispBuiltin, ptr %21, i32 0, i32 6, !dbg !1307
  %22 = load ptr, ptr %symbol11, align 8, !dbg !1307
  %data12 = getelementptr inbounds %struct._LispObj, ptr %22, i32 0, i32 1, !dbg !1307
  %23 = load ptr, ptr %data12, align 8, !dbg !1307
  %key13 = getelementptr inbounds %struct._LispAtom, ptr %23, i32 0, i32 0, !dbg !1307
  %24 = load ptr, ptr %key13, align 8, !dbg !1307
  %value14 = getelementptr inbounds %struct._hash_key, ptr %24, i32 0, i32 0, !dbg !1307
  %25 = load ptr, ptr %value14, align 8, !dbg !1307
  %26 = load ptr, ptr %initial_element, align 8, !dbg !1307
  %call15 = call ptr @LispStrObj(ptr noundef %26), !dbg !1307
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.3, ptr noundef %25, ptr noundef %call15), !dbg !1307
  br label %if.end16, !dbg !1307

if.end16:                                         ; preds = %if.then10, %if.then7
  %27 = load ptr, ptr %initial_element, align 8, !dbg !1311
  %28 = ptrtoint ptr %27 to i64, !dbg !1311
  %shr17 = ashr i64 %28, 4, !dbg !1311
  %conv = trunc i64 %shr17 to i8, !dbg !1311
  store i8 %conv, ptr %initial, align 1, !dbg !1312
  br label %if.end18, !dbg !1313

if.else:                                          ; preds = %if.end
  store i8 0, ptr %initial, align 1, !dbg !1314
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end16
  %29 = load i64, ptr %length, align 8, !dbg !1315
  %add19 = add nsw i64 %29, 1, !dbg !1316
  %call20 = call ptr @LispMalloc(i64 noundef %add19), !dbg !1317
  store ptr %call20, ptr %string, align 8, !dbg !1318
  %30 = load ptr, ptr %string, align 8, !dbg !1319
  %31 = load i8, ptr %initial, align 1, !dbg !1320
  %conv21 = sext i8 %31 to i32, !dbg !1320
  %32 = trunc i32 %conv21 to i8, !dbg !1321
  %33 = load i64, ptr %length, align 8, !dbg !1322
  call void @llvm.memset.p0.i64(ptr align 1 %30, i8 %32, i64 %33, i1 false), !dbg !1321
  %34 = load ptr, ptr %string, align 8, !dbg !1323
  %35 = load i64, ptr %length, align 8, !dbg !1324
  %arrayidx22 = getelementptr inbounds i8, ptr %34, i64 %35, !dbg !1323
  store i8 0, ptr %arrayidx22, align 1, !dbg !1325
  %36 = load ptr, ptr %string, align 8, !dbg !1326
  %37 = load i64, ptr %length, align 8, !dbg !1326
  %call23 = call ptr @LispNewStringAlloced(ptr noundef %36, i64 noundef %37), !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %initial_element) #11, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 1, ptr %initial) #11, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !1327
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !1327
  ret ptr %call23, !dbg !1328
}

declare !dbg !1329 ptr @LispMalloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !1332 ptr @LispNewStringAlloced(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_ParseInteger(ptr noundef %builtin) #0 !dbg !1335 {
entry:
  %builtin.addr = alloca ptr, align 8
  %gc__protect = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %string = alloca ptr, align 8
  %character = alloca i32, align 4
  %junk = alloca i32, align 4
  %sign = alloca i32, align 4
  %overflow = alloca i32, align 4
  %i = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %radix = alloca i64, align 8
  %length = alloca i64, align 8
  %integer = alloca i64, align 8
  %check = alloca i64, align 8
  %result = alloca ptr, align 8
  %ostring = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %oradix = alloca ptr, align 8
  %junk_allowed = alloca ptr, align 8
  %__res = alloca i32, align 4
  %__c = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bigi = alloca ptr, align 8
  %str = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1337, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 4, ptr %gc__protect) #11, !dbg !1376
  tail call void @llvm.dbg.declare(metadata ptr %gc__protect, metadata !1338, metadata !DIExpression()), !dbg !1376
  %0 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1376
  store i32 %0, ptr %gc__protect, align 4, !dbg !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #11, !dbg !1377
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1339, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !1377
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !1340, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 4, ptr %character) #11, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %character, metadata !1341, metadata !DIExpression()), !dbg !1381
  call void @llvm.lifetime.start.p0(i64 4, ptr %junk) #11, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %junk, metadata !1342, metadata !DIExpression()), !dbg !1382
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #11, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %sign, metadata !1343, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 4, ptr %overflow) #11, !dbg !1380
  tail call void @llvm.dbg.declare(metadata ptr %overflow, metadata !1344, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1345, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !1346, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !1347, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 8, ptr %radix) #11, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %radix, metadata !1348, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !1349, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer) #11, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %integer, metadata !1350, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0(i64 8, ptr %check) #11, !dbg !1385
  tail call void @llvm.dbg.declare(metadata ptr %check, metadata !1351, metadata !DIExpression()), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !1393
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1352, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !1353, metadata !DIExpression()), !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %ostart, metadata !1354, metadata !DIExpression()), !dbg !1397
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %oend, metadata !1355, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.start.p0(i64 8, ptr %oradix) #11, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %oradix, metadata !1356, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 8, ptr %junk_allowed) #11, !dbg !1395
  tail call void @llvm.dbg.declare(metadata ptr %junk_allowed, metadata !1357, metadata !DIExpression()), !dbg !1400
  %1 = load ptr, ptr @lisp__data, align 8, !dbg !1401
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1401
  %add = add nsw i32 %2, 4, !dbg !1401
  %idxprom = sext i32 %add to i64, !dbg !1401
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1401
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1401
  store ptr %3, ptr %junk_allowed, align 8, !dbg !1402
  %4 = load ptr, ptr @lisp__data, align 8, !dbg !1403
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1403
  %add1 = add nsw i32 %5, 3, !dbg !1403
  %idxprom2 = sext i32 %add1 to i64, !dbg !1403
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 %idxprom2, !dbg !1403
  %6 = load ptr, ptr %arrayidx3, align 8, !dbg !1403
  store ptr %6, ptr %oradix, align 8, !dbg !1404
  %7 = load ptr, ptr @lisp__data, align 8, !dbg !1405
  %8 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1405
  %add4 = add nsw i32 %8, 2, !dbg !1405
  %idxprom5 = sext i32 %add4 to i64, !dbg !1405
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom5, !dbg !1405
  %9 = load ptr, ptr %arrayidx6, align 8, !dbg !1405
  store ptr %9, ptr %oend, align 8, !dbg !1406
  %10 = load ptr, ptr @lisp__data, align 8, !dbg !1407
  %11 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1407
  %add7 = add nsw i32 %11, 1, !dbg !1407
  %idxprom8 = sext i32 %add7 to i64, !dbg !1407
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 %idxprom8, !dbg !1407
  %12 = load ptr, ptr %arrayidx9, align 8, !dbg !1407
  store ptr %12, ptr %ostart, align 8, !dbg !1408
  %13 = load ptr, ptr @lisp__data, align 8, !dbg !1409
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1409
  %add10 = add nsw i32 %14, 0, !dbg !1409
  %idxprom11 = sext i32 %add10 to i64, !dbg !1409
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 %idxprom11, !dbg !1409
  %15 = load ptr, ptr %arrayidx12, align 8, !dbg !1409
  store ptr %15, ptr %ostring, align 8, !dbg !1410
  store i64 0, ptr %radix, align 8, !dbg !1411
  store i64 0, ptr %end, align 8, !dbg !1412
  store i64 0, ptr %start, align 8, !dbg !1413
  store ptr inttoptr (i64 1 to ptr), ptr %result, align 8, !dbg !1414
  %16 = load ptr, ptr %ostring, align 8, !dbg !1415
  %17 = ptrtoint ptr %16 to i64, !dbg !1415
  %and = and i64 %17, 1, !dbg !1415
  %cmp = icmp eq i64 %and, 0, !dbg !1415
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !1415

land.lhs.true:                                    ; preds = %entry
  %18 = load ptr, ptr %ostring, align 8, !dbg !1415
  %bf.load = load i16, ptr %18, align 8, !dbg !1415
  %bf.clear = and i16 %bf.load, 63, !dbg !1415
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1415
  %cmp13 = icmp eq i32 %bf.cast, 18, !dbg !1415
  br i1 %cmp13, label %if.end, label %if.then, !dbg !1417

if.then:                                          ; preds = %land.lhs.true, %entry
  %19 = load ptr, ptr %builtin.addr, align 8, !dbg !1415
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %19, i32 0, i32 6, !dbg !1415
  %20 = load ptr, ptr %symbol, align 8, !dbg !1415
  %data = getelementptr inbounds %struct._LispObj, ptr %20, i32 0, i32 1, !dbg !1415
  %21 = load ptr, ptr %data, align 8, !dbg !1415
  %key = getelementptr inbounds %struct._LispAtom, ptr %21, i32 0, i32 0, !dbg !1415
  %22 = load ptr, ptr %key, align 8, !dbg !1415
  %value = getelementptr inbounds %struct._hash_key, ptr %22, i32 0, i32 0, !dbg !1415
  %23 = load ptr, ptr %value, align 8, !dbg !1415
  %24 = load ptr, ptr %ostring, align 8, !dbg !1415
  %call = call ptr @LispStrObj(ptr noundef %24), !dbg !1415
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %23, ptr noundef %call), !dbg !1415
  br label %if.end, !dbg !1415

if.end:                                           ; preds = %if.then, %land.lhs.true
  %25 = load ptr, ptr %builtin.addr, align 8, !dbg !1418
  %26 = load ptr, ptr %ostring, align 8, !dbg !1419
  %27 = load ptr, ptr %ostart, align 8, !dbg !1420
  %28 = load ptr, ptr %oend, align 8, !dbg !1421
  call void @LispCheckSequenceStartEnd(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %start, ptr noundef %end, ptr noundef %length), !dbg !1422
  %29 = load ptr, ptr %ostring, align 8, !dbg !1423
  %data14 = getelementptr inbounds %struct._LispObj, ptr %29, i32 0, i32 1, !dbg !1423
  %string15 = getelementptr inbounds %struct.anon, ptr %data14, i32 0, i32 0, !dbg !1423
  %30 = load ptr, ptr %string15, align 8, !dbg !1423
  store ptr %30, ptr %string, align 8, !dbg !1424
  %31 = load ptr, ptr %oradix, align 8, !dbg !1425
  %cmp16 = icmp eq ptr %31, inttoptr (i64 81 to ptr), !dbg !1427
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1428

if.then17:                                        ; preds = %if.end
  store i64 10, ptr %radix, align 8, !dbg !1429
  br label %if.end30, !dbg !1430

if.else:                                          ; preds = %if.end
  %32 = load ptr, ptr %oradix, align 8, !dbg !1431
  %33 = ptrtoint ptr %32 to i64, !dbg !1431
  %and18 = and i64 %33, 15, !dbg !1431
  %cmp19 = icmp eq i64 %and18, 3, !dbg !1431
  br i1 %cmp19, label %land.lhs.true20, label %if.then22, !dbg !1431

land.lhs.true20:                                  ; preds = %if.else
  %34 = load ptr, ptr %oradix, align 8, !dbg !1431
  %35 = ptrtoint ptr %34 to i64, !dbg !1431
  %shr = ashr i64 %35, 4, !dbg !1431
  %cmp21 = icmp sge i64 %shr, 0, !dbg !1431
  br i1 %cmp21, label %if.end28, label %if.then22, !dbg !1434

if.then22:                                        ; preds = %land.lhs.true20, %if.else
  %36 = load ptr, ptr %builtin.addr, align 8, !dbg !1431
  %symbol23 = getelementptr inbounds %struct._LispBuiltin, ptr %36, i32 0, i32 6, !dbg !1431
  %37 = load ptr, ptr %symbol23, align 8, !dbg !1431
  %data24 = getelementptr inbounds %struct._LispObj, ptr %37, i32 0, i32 1, !dbg !1431
  %38 = load ptr, ptr %data24, align 8, !dbg !1431
  %key25 = getelementptr inbounds %struct._LispAtom, ptr %38, i32 0, i32 0, !dbg !1431
  %39 = load ptr, ptr %key25, align 8, !dbg !1431
  %value26 = getelementptr inbounds %struct._hash_key, ptr %39, i32 0, i32 0, !dbg !1431
  %40 = load ptr, ptr %value26, align 8, !dbg !1431
  %41 = load ptr, ptr %oradix, align 8, !dbg !1431
  %call27 = call ptr @LispStrObj(ptr noundef %41), !dbg !1431
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.1, ptr noundef %40, ptr noundef %call27), !dbg !1431
  br label %if.end28, !dbg !1431

if.end28:                                         ; preds = %if.then22, %land.lhs.true20
  %42 = load ptr, ptr %oradix, align 8, !dbg !1435
  %43 = ptrtoint ptr %42 to i64, !dbg !1435
  %shr29 = ashr i64 %43, 4, !dbg !1435
  store i64 %shr29, ptr %radix, align 8, !dbg !1436
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.then17
  %44 = load i64, ptr %radix, align 8, !dbg !1437
  %cmp31 = icmp slt i64 %44, 2, !dbg !1439
  br i1 %cmp31, label %if.then33, label %lor.lhs.false, !dbg !1440

lor.lhs.false:                                    ; preds = %if.end30
  %45 = load i64, ptr %radix, align 8, !dbg !1441
  %cmp32 = icmp sgt i64 %45, 36, !dbg !1442
  br i1 %cmp32, label %if.then33, label %if.end38, !dbg !1443

if.then33:                                        ; preds = %lor.lhs.false, %if.end30
  %46 = load ptr, ptr %builtin.addr, align 8, !dbg !1444
  %symbol34 = getelementptr inbounds %struct._LispBuiltin, ptr %46, i32 0, i32 6, !dbg !1444
  %47 = load ptr, ptr %symbol34, align 8, !dbg !1444
  %data35 = getelementptr inbounds %struct._LispObj, ptr %47, i32 0, i32 1, !dbg !1444
  %48 = load ptr, ptr %data35, align 8, !dbg !1444
  %key36 = getelementptr inbounds %struct._LispAtom, ptr %48, i32 0, i32 0, !dbg !1444
  %49 = load ptr, ptr %key36, align 8, !dbg !1444
  %value37 = getelementptr inbounds %struct._hash_key, ptr %49, i32 0, i32 0, !dbg !1444
  %50 = load ptr, ptr %value37, align 8, !dbg !1444
  %51 = load i64, ptr %radix, align 8, !dbg !1445
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.8, ptr noundef %50, i64 noundef %51), !dbg !1446
  br label %if.end38, !dbg !1446

if.end38:                                         ; preds = %if.then33, %lor.lhs.false
  store i64 0, ptr %check, align 8, !dbg !1447
  store i64 0, ptr %integer, align 8, !dbg !1448
  %52 = load ptr, ptr %string, align 8, !dbg !1449
  %53 = load i64, ptr %start, align 8, !dbg !1450
  %add.ptr = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !1451
  store ptr %add.ptr, ptr %ptr, align 8, !dbg !1452
  store i32 0, ptr %overflow, align 4, !dbg !1453
  store i32 0, ptr %sign, align 4, !dbg !1454
  %54 = load i64, ptr %start, align 8, !dbg !1455
  store i64 %54, ptr %i, align 8, !dbg !1457
  br label %for.cond, !dbg !1458

for.cond:                                         ; preds = %for.inc, %if.end38
  %55 = load i64, ptr %i, align 8, !dbg !1459
  %56 = load i64, ptr %end, align 8, !dbg !1461
  %cmp39 = icmp slt i64 %55, %56, !dbg !1462
  br i1 %cmp39, label %land.lhs.true40, label %land.end, !dbg !1463

land.lhs.true40:                                  ; preds = %for.cond
  %57 = load ptr, ptr %ptr, align 8, !dbg !1464
  %58 = load i8, ptr %57, align 1, !dbg !1465
  %conv = sext i8 %58 to i32, !dbg !1465
  %tobool = icmp ne i32 %conv, 0, !dbg !1465
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1466

land.rhs:                                         ; preds = %land.lhs.true40
  %call41 = call ptr @__ctype_b_loc() #12, !dbg !1467
  %59 = load ptr, ptr %call41, align 8, !dbg !1467
  %60 = load ptr, ptr %ptr, align 8, !dbg !1467
  %61 = load i8, ptr %60, align 1, !dbg !1467
  %conv42 = sext i8 %61 to i32, !dbg !1467
  %idxprom43 = sext i32 %conv42 to i64, !dbg !1467
  %arrayidx44 = getelementptr inbounds i16, ptr %59, i64 %idxprom43, !dbg !1467
  %62 = load i16, ptr %arrayidx44, align 2, !dbg !1467
  %conv45 = zext i16 %62 to i32, !dbg !1467
  %and46 = and i32 %conv45, 8192, !dbg !1467
  %tobool47 = icmp ne i32 %and46, 0, !dbg !1466
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true40, %for.cond
  %63 = phi i1 [ false, %land.lhs.true40 ], [ false, %for.cond ], [ %tobool47, %land.rhs ], !dbg !1468
  br i1 %63, label %for.body, label %for.end, !dbg !1469

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !1469

for.inc:                                          ; preds = %for.body
  %64 = load ptr, ptr %ptr, align 8, !dbg !1470
  %incdec.ptr = getelementptr inbounds i8, ptr %64, i32 1, !dbg !1470
  store ptr %incdec.ptr, ptr %ptr, align 8, !dbg !1470
  %65 = load i64, ptr %i, align 8, !dbg !1471
  %inc = add nsw i64 %65, 1, !dbg !1471
  store i64 %inc, ptr %i, align 8, !dbg !1471
  br label %for.cond, !dbg !1472, !llvm.loop !1473

for.end:                                          ; preds = %land.end
  %66 = load i64, ptr %i, align 8, !dbg !1475
  %67 = load i64, ptr %end, align 8, !dbg !1477
  %cmp48 = icmp slt i64 %66, %67, !dbg !1478
  br i1 %cmp48, label %land.lhs.true50, label %if.end64, !dbg !1479

land.lhs.true50:                                  ; preds = %for.end
  %68 = load ptr, ptr %ptr, align 8, !dbg !1480
  %69 = load i8, ptr %68, align 1, !dbg !1481
  %conv51 = sext i8 %69 to i32, !dbg !1481
  %cmp52 = icmp eq i32 %conv51, 45, !dbg !1482
  br i1 %cmp52, label %if.then58, label %lor.lhs.false54, !dbg !1483

lor.lhs.false54:                                  ; preds = %land.lhs.true50
  %70 = load ptr, ptr %ptr, align 8, !dbg !1484
  %71 = load i8, ptr %70, align 1, !dbg !1485
  %conv55 = sext i8 %71 to i32, !dbg !1485
  %cmp56 = icmp eq i32 %conv55, 43, !dbg !1486
  br i1 %cmp56, label %if.then58, label %if.end64, !dbg !1487

if.then58:                                        ; preds = %lor.lhs.false54, %land.lhs.true50
  %72 = load ptr, ptr %ptr, align 8, !dbg !1488
  %73 = load i8, ptr %72, align 1, !dbg !1490
  %conv59 = sext i8 %73 to i32, !dbg !1490
  %cmp60 = icmp eq i32 %conv59, 45, !dbg !1491
  %conv61 = zext i1 %cmp60 to i32, !dbg !1491
  store i32 %conv61, ptr %sign, align 4, !dbg !1492
  %74 = load ptr, ptr %ptr, align 8, !dbg !1493
  %incdec.ptr62 = getelementptr inbounds i8, ptr %74, i32 1, !dbg !1493
  store ptr %incdec.ptr62, ptr %ptr, align 8, !dbg !1493
  %75 = load i64, ptr %i, align 8, !dbg !1494
  %inc63 = add nsw i64 %75, 1, !dbg !1494
  store i64 %inc63, ptr %i, align 8, !dbg !1494
  br label %if.end64, !dbg !1495

if.end64:                                         ; preds = %if.then58, %lor.lhs.false54, %for.end
  store i32 0, ptr %junk, align 4, !dbg !1496
  br label %for.cond65, !dbg !1497

for.cond65:                                       ; preds = %for.inc145, %if.end64
  %76 = load i64, ptr %i, align 8, !dbg !1498
  %77 = load i64, ptr %end, align 8, !dbg !1499
  %cmp66 = icmp slt i64 %76, %77, !dbg !1500
  br i1 %cmp66, label %for.body68, label %for.end148, !dbg !1501

for.body68:                                       ; preds = %for.cond65
  %78 = load ptr, ptr %ptr, align 8, !dbg !1502
  %79 = load i8, ptr %78, align 1, !dbg !1503
  %conv69 = sext i8 %79 to i32, !dbg !1503
  store i32 %conv69, ptr %character, align 4, !dbg !1504
  %call70 = call ptr @__ctype_b_loc() #12, !dbg !1505
  %80 = load ptr, ptr %call70, align 8, !dbg !1505
  %81 = load i32, ptr %character, align 4, !dbg !1505
  %idxprom71 = sext i32 %81 to i64, !dbg !1505
  %arrayidx72 = getelementptr inbounds i16, ptr %80, i64 %idxprom71, !dbg !1505
  %82 = load i16, ptr %arrayidx72, align 2, !dbg !1505
  %conv73 = zext i16 %82 to i32, !dbg !1505
  %and74 = and i32 %conv73, 512, !dbg !1505
  %tobool75 = icmp ne i32 %and74, 0, !dbg !1505
  br i1 %tobool75, label %if.then76, label %if.end89, !dbg !1506

if.then76:                                        ; preds = %for.body68
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11, !dbg !1507
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !1358, metadata !DIExpression()), !dbg !1507
  %83 = load i32, ptr %character, align 4, !dbg !1508
  %84 = call i1 @llvm.is.constant.i32(i32 %83), !dbg !1508
  br i1 %84, label %if.then77, label %if.else86, !dbg !1509

if.then77:                                        ; preds = %if.then76
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #11, !dbg !1510
  tail call void @llvm.dbg.declare(metadata ptr %__c, metadata !1364, metadata !DIExpression()), !dbg !1510
  %85 = load i32, ptr %character, align 4, !dbg !1510
  store i32 %85, ptr %__c, align 4, !dbg !1510
  %86 = load i32, ptr %__c, align 4, !dbg !1510
  %cmp78 = icmp slt i32 %86, -128, !dbg !1510
  br i1 %cmp78, label %cond.true, label %lor.lhs.false80, !dbg !1510

lor.lhs.false80:                                  ; preds = %if.then77
  %87 = load i32, ptr %__c, align 4, !dbg !1510
  %cmp81 = icmp sgt i32 %87, 255, !dbg !1510
  br i1 %cmp81, label %cond.true, label %cond.false, !dbg !1510

cond.true:                                        ; preds = %lor.lhs.false80, %if.then77
  %88 = load i32, ptr %__c, align 4, !dbg !1510
  br label %cond.end, !dbg !1510

cond.false:                                       ; preds = %lor.lhs.false80
  %call83 = call ptr @__ctype_toupper_loc() #12, !dbg !1510
  %89 = load ptr, ptr %call83, align 8, !dbg !1510
  %90 = load i32, ptr %__c, align 4, !dbg !1510
  %idxprom84 = sext i32 %90 to i64, !dbg !1510
  %arrayidx85 = getelementptr inbounds i32, ptr %89, i64 %idxprom84, !dbg !1510
  %91 = load i32, ptr %arrayidx85, align 4, !dbg !1510
  br label %cond.end, !dbg !1510

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %88, %cond.true ], [ %91, %cond.false ], !dbg !1510
  store i32 %cond, ptr %__res, align 4, !dbg !1510
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11, !dbg !1508
  br label %if.end88, !dbg !1510

if.else86:                                        ; preds = %if.then76
  %92 = load i32, ptr %character, align 4, !dbg !1508
  %call87 = call i32 @toupper(i32 noundef %92) #13, !dbg !1508
  store i32 %call87, ptr %__res, align 4, !dbg !1508
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %cond.end
  %93 = load i32, ptr %__res, align 4, !dbg !1507
  store i32 %93, ptr %tmp, align 4, !dbg !1511
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11, !dbg !1512
  %94 = load i32, ptr %tmp, align 4, !dbg !1507
  store i32 %94, ptr %character, align 4, !dbg !1513
  br label %if.end89, !dbg !1514

if.end89:                                         ; preds = %if.end88, %for.body68
  %95 = load i32, ptr %character, align 4, !dbg !1515
  %cmp90 = icmp sge i32 %95, 48, !dbg !1517
  br i1 %cmp90, label %land.lhs.true92, label %if.else105, !dbg !1518

land.lhs.true92:                                  ; preds = %if.end89
  %96 = load i32, ptr %character, align 4, !dbg !1519
  %cmp93 = icmp sle i32 %96, 57, !dbg !1520
  br i1 %cmp93, label %if.then95, label %if.else105, !dbg !1521

if.then95:                                        ; preds = %land.lhs.true92
  %97 = load i32, ptr %character, align 4, !dbg !1522
  %sub = sub nsw i32 %97, 48, !dbg !1525
  %conv96 = sext i32 %sub to i64, !dbg !1522
  %98 = load i64, ptr %radix, align 8, !dbg !1526
  %cmp97 = icmp sge i64 %conv96, %98, !dbg !1527
  br i1 %cmp97, label %if.then99, label %if.else100, !dbg !1528

if.then99:                                        ; preds = %if.then95
  store i32 1, ptr %junk, align 4, !dbg !1529
  br label %if.end104, !dbg !1530

if.else100:                                       ; preds = %if.then95
  %99 = load i64, ptr %integer, align 8, !dbg !1531
  store i64 %99, ptr %check, align 8, !dbg !1533
  %100 = load i64, ptr %integer, align 8, !dbg !1534
  %101 = load i64, ptr %radix, align 8, !dbg !1535
  %mul = mul nsw i64 %100, %101, !dbg !1536
  %102 = load i32, ptr %character, align 4, !dbg !1537
  %conv101 = sext i32 %102 to i64, !dbg !1537
  %add102 = add nsw i64 %mul, %conv101, !dbg !1538
  %sub103 = sub nsw i64 %add102, 48, !dbg !1539
  store i64 %sub103, ptr %integer, align 8, !dbg !1540
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.then99
  br label %if.end135, !dbg !1541

if.else105:                                       ; preds = %land.lhs.true92, %if.end89
  %103 = load i32, ptr %character, align 4, !dbg !1542
  %cmp106 = icmp sge i32 %103, 65, !dbg !1544
  br i1 %cmp106, label %land.lhs.true108, label %if.else125, !dbg !1545

land.lhs.true108:                                 ; preds = %if.else105
  %104 = load i32, ptr %character, align 4, !dbg !1546
  %cmp109 = icmp sle i32 %104, 90, !dbg !1547
  br i1 %cmp109, label %if.then111, label %if.else125, !dbg !1548

if.then111:                                       ; preds = %land.lhs.true108
  %105 = load i32, ptr %character, align 4, !dbg !1549
  %sub112 = sub nsw i32 %105, 65, !dbg !1552
  %add113 = add nsw i32 %sub112, 10, !dbg !1553
  %conv114 = sext i32 %add113 to i64, !dbg !1549
  %106 = load i64, ptr %radix, align 8, !dbg !1554
  %cmp115 = icmp sge i64 %conv114, %106, !dbg !1555
  br i1 %cmp115, label %if.then117, label %if.else118, !dbg !1556

if.then117:                                       ; preds = %if.then111
  store i32 1, ptr %junk, align 4, !dbg !1557
  br label %if.end124, !dbg !1558

if.else118:                                       ; preds = %if.then111
  %107 = load i64, ptr %integer, align 8, !dbg !1559
  store i64 %107, ptr %check, align 8, !dbg !1561
  %108 = load i64, ptr %integer, align 8, !dbg !1562
  %109 = load i64, ptr %radix, align 8, !dbg !1563
  %mul119 = mul nsw i64 %108, %109, !dbg !1564
  %110 = load i32, ptr %character, align 4, !dbg !1565
  %conv120 = sext i32 %110 to i64, !dbg !1565
  %add121 = add nsw i64 %mul119, %conv120, !dbg !1566
  %sub122 = sub nsw i64 %add121, 65, !dbg !1567
  %add123 = add nsw i64 %sub122, 10, !dbg !1568
  store i64 %add123, ptr %integer, align 8, !dbg !1569
  br label %if.end124

if.end124:                                        ; preds = %if.else118, %if.then117
  br label %if.end134, !dbg !1570

if.else125:                                       ; preds = %land.lhs.true108, %if.else105
  %call126 = call ptr @__ctype_b_loc() #12, !dbg !1571
  %111 = load ptr, ptr %call126, align 8, !dbg !1571
  %112 = load i32, ptr %character, align 4, !dbg !1571
  %idxprom127 = sext i32 %112 to i64, !dbg !1571
  %arrayidx128 = getelementptr inbounds i16, ptr %111, i64 %idxprom127, !dbg !1571
  %113 = load i16, ptr %arrayidx128, align 2, !dbg !1571
  %conv129 = zext i16 %113 to i32, !dbg !1571
  %and130 = and i32 %conv129, 8192, !dbg !1571
  %tobool131 = icmp ne i32 %and130, 0, !dbg !1571
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !1574

if.then132:                                       ; preds = %if.else125
  br label %for.end148, !dbg !1575

if.end133:                                        ; preds = %if.else125
  store i32 1, ptr %junk, align 4, !dbg !1576
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.end124
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end104
  %114 = load i32, ptr %junk, align 4, !dbg !1577
  %tobool136 = icmp ne i32 %114, 0, !dbg !1577
  br i1 %tobool136, label %if.then137, label %if.end138, !dbg !1579

if.then137:                                       ; preds = %if.end135
  br label %for.end148, !dbg !1580

if.end138:                                        ; preds = %if.end135
  %115 = load i32, ptr %overflow, align 4, !dbg !1581
  %tobool139 = icmp ne i32 %115, 0, !dbg !1581
  br i1 %tobool139, label %if.end144, label %land.lhs.true140, !dbg !1583

land.lhs.true140:                                 ; preds = %if.end138
  %116 = load i64, ptr %check, align 8, !dbg !1584
  %117 = load i64, ptr %integer, align 8, !dbg !1585
  %cmp141 = icmp sgt i64 %116, %117, !dbg !1586
  br i1 %cmp141, label %if.then143, label %if.end144, !dbg !1587

if.then143:                                       ; preds = %land.lhs.true140
  store i32 1, ptr %overflow, align 4, !dbg !1588
  br label %if.end144, !dbg !1589

if.end144:                                        ; preds = %if.then143, %land.lhs.true140, %if.end138
  br label %for.inc145, !dbg !1590

for.inc145:                                       ; preds = %if.end144
  %118 = load i64, ptr %i, align 8, !dbg !1591
  %inc146 = add nsw i64 %118, 1, !dbg !1591
  store i64 %inc146, ptr %i, align 8, !dbg !1591
  %119 = load ptr, ptr %ptr, align 8, !dbg !1592
  %incdec.ptr147 = getelementptr inbounds i8, ptr %119, i32 1, !dbg !1592
  store ptr %incdec.ptr147, ptr %ptr, align 8, !dbg !1592
  br label %for.cond65, !dbg !1593, !llvm.loop !1594

for.end148:                                       ; preds = %if.then137, %if.then132, %for.cond65
  %120 = load i32, ptr %junk, align 4, !dbg !1596
  %tobool149 = icmp ne i32 %120, 0, !dbg !1596
  br i1 %tobool149, label %if.end171, label %if.then150, !dbg !1598

if.then150:                                       ; preds = %for.end148
  br label %for.cond151, !dbg !1599

for.cond151:                                      ; preds = %for.inc167, %if.then150
  %121 = load i64, ptr %i, align 8, !dbg !1600
  %122 = load i64, ptr %end, align 8, !dbg !1603
  %cmp152 = icmp slt i64 %121, %122, !dbg !1604
  br i1 %cmp152, label %land.lhs.true154, label %land.end165, !dbg !1605

land.lhs.true154:                                 ; preds = %for.cond151
  %123 = load ptr, ptr %ptr, align 8, !dbg !1606
  %124 = load i8, ptr %123, align 1, !dbg !1607
  %conv155 = sext i8 %124 to i32, !dbg !1607
  %tobool156 = icmp ne i32 %conv155, 0, !dbg !1607
  br i1 %tobool156, label %land.rhs157, label %land.end165, !dbg !1608

land.rhs157:                                      ; preds = %land.lhs.true154
  %call158 = call ptr @__ctype_b_loc() #12, !dbg !1609
  %125 = load ptr, ptr %call158, align 8, !dbg !1609
  %126 = load ptr, ptr %ptr, align 8, !dbg !1609
  %127 = load i8, ptr %126, align 1, !dbg !1609
  %conv159 = sext i8 %127 to i32, !dbg !1609
  %idxprom160 = sext i32 %conv159 to i64, !dbg !1609
  %arrayidx161 = getelementptr inbounds i16, ptr %125, i64 %idxprom160, !dbg !1609
  %128 = load i16, ptr %arrayidx161, align 2, !dbg !1609
  %conv162 = zext i16 %128 to i32, !dbg !1609
  %and163 = and i32 %conv162, 8192, !dbg !1609
  %tobool164 = icmp ne i32 %and163, 0, !dbg !1608
  br label %land.end165

land.end165:                                      ; preds = %land.rhs157, %land.lhs.true154, %for.cond151
  %129 = phi i1 [ false, %land.lhs.true154 ], [ false, %for.cond151 ], [ %tobool164, %land.rhs157 ], !dbg !1610
  br i1 %129, label %for.body166, label %for.end170, !dbg !1611

for.body166:                                      ; preds = %land.end165
  br label %for.inc167, !dbg !1611

for.inc167:                                       ; preds = %for.body166
  %130 = load ptr, ptr %ptr, align 8, !dbg !1612
  %incdec.ptr168 = getelementptr inbounds i8, ptr %130, i32 1, !dbg !1612
  store ptr %incdec.ptr168, ptr %ptr, align 8, !dbg !1612
  %131 = load i64, ptr %i, align 8, !dbg !1613
  %inc169 = add nsw i64 %131, 1, !dbg !1613
  store i64 %inc169, ptr %i, align 8, !dbg !1613
  br label %for.cond151, !dbg !1614, !llvm.loop !1615

for.end170:                                       ; preds = %land.end165
  br label %if.end171, !dbg !1616

if.end171:                                        ; preds = %for.end170, %for.end148
  %132 = load i32, ptr %junk, align 4, !dbg !1617
  %tobool172 = icmp ne i32 %132, 0, !dbg !1617
  br i1 %tobool172, label %land.lhs.true176, label %lor.lhs.false173, !dbg !1618

lor.lhs.false173:                                 ; preds = %if.end171
  %133 = load ptr, ptr %ptr, align 8, !dbg !1619
  %134 = load ptr, ptr %string, align 8, !dbg !1620
  %cmp174 = icmp eq ptr %133, %134, !dbg !1621
  br i1 %cmp174, label %land.lhs.true176, label %if.else188, !dbg !1622

land.lhs.true176:                                 ; preds = %lor.lhs.false173, %if.end171
  %135 = load ptr, ptr %junk_allowed, align 8, !dbg !1623
  %cmp177 = icmp eq ptr %135, inttoptr (i64 81 to ptr), !dbg !1624
  br i1 %cmp177, label %if.then182, label %lor.lhs.false179, !dbg !1625

lor.lhs.false179:                                 ; preds = %land.lhs.true176
  %136 = load ptr, ptr %junk_allowed, align 8, !dbg !1626
  %cmp180 = icmp eq ptr %136, inttoptr (i64 1 to ptr), !dbg !1627
  br i1 %cmp180, label %if.then182, label %if.else188, !dbg !1628

if.then182:                                       ; preds = %lor.lhs.false179, %land.lhs.true176
  %137 = load ptr, ptr %builtin.addr, align 8, !dbg !1629
  %symbol183 = getelementptr inbounds %struct._LispBuiltin, ptr %137, i32 0, i32 6, !dbg !1629
  %138 = load ptr, ptr %symbol183, align 8, !dbg !1629
  %data184 = getelementptr inbounds %struct._LispObj, ptr %138, i32 0, i32 1, !dbg !1629
  %139 = load ptr, ptr %data184, align 8, !dbg !1629
  %key185 = getelementptr inbounds %struct._LispAtom, ptr %139, i32 0, i32 0, !dbg !1629
  %140 = load ptr, ptr %key185, align 8, !dbg !1629
  %value186 = getelementptr inbounds %struct._hash_key, ptr %140, i32 0, i32 0, !dbg !1629
  %141 = load ptr, ptr %value186, align 8, !dbg !1629
  %142 = load ptr, ptr %ostring, align 8, !dbg !1630
  %call187 = call ptr @LispStrObj(ptr noundef %142), !dbg !1630
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.9, ptr noundef %141, ptr noundef %call187), !dbg !1631
  br label %if.end220, !dbg !1631

if.else188:                                       ; preds = %lor.lhs.false179, %lor.lhs.false173
  %143 = load ptr, ptr %ptr, align 8, !dbg !1632
  %144 = load ptr, ptr %string, align 8, !dbg !1633
  %cmp189 = icmp eq ptr %143, %144, !dbg !1634
  br i1 %cmp189, label %if.then191, label %if.else192, !dbg !1635

if.then191:                                       ; preds = %if.else188
  store ptr inttoptr (i64 1 to ptr), ptr %result, align 8, !dbg !1636
  br label %if.end219, !dbg !1637

if.else192:                                       ; preds = %if.else188
  %145 = load i32, ptr %overflow, align 4, !dbg !1638
  %tobool193 = icmp ne i32 %145, 0, !dbg !1638
  br i1 %tobool193, label %if.then194, label %if.else210, !dbg !1639

if.then194:                                       ; preds = %if.else192
  call void @llvm.lifetime.start.p0(i64 8, ptr %bigi) #11, !dbg !1640
  tail call void @llvm.dbg.declare(metadata ptr %bigi, metadata !1369, metadata !DIExpression()), !dbg !1641
  %call195 = call ptr @LispMalloc(i64 noundef 24), !dbg !1642
  store ptr %call195, ptr %bigi, align 8, !dbg !1641
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #11, !dbg !1643
  tail call void @llvm.dbg.declare(metadata ptr %str, metadata !1374, metadata !DIExpression()), !dbg !1644
  %146 = load i64, ptr %end, align 8, !dbg !1645
  %147 = load i64, ptr %start, align 8, !dbg !1646
  %sub196 = sub nsw i64 %146, %147, !dbg !1647
  %148 = load i32, ptr %sign, align 4, !dbg !1648
  %conv197 = sext i32 %148 to i64, !dbg !1648
  %add198 = add nsw i64 %sub196, %conv197, !dbg !1649
  store i64 %add198, ptr %length, align 8, !dbg !1650
  %149 = load i64, ptr %length, align 8, !dbg !1651
  %add199 = add nsw i64 %149, 1, !dbg !1652
  %call200 = call ptr @LispMalloc(i64 noundef %add199), !dbg !1653
  store ptr %call200, ptr %str, align 8, !dbg !1654
  %150 = load ptr, ptr %str, align 8, !dbg !1655
  %151 = load ptr, ptr %string, align 8, !dbg !1656
  %152 = load i32, ptr %sign, align 4, !dbg !1657
  %idx.ext = sext i32 %152 to i64, !dbg !1658
  %idx.neg = sub i64 0, %idx.ext, !dbg !1658
  %add.ptr201 = getelementptr inbounds i8, ptr %151, i64 %idx.neg, !dbg !1658
  %153 = load i64, ptr %length, align 8, !dbg !1659
  %154 = load i32, ptr %sign, align 4, !dbg !1660
  %conv202 = sext i32 %154 to i64, !dbg !1660
  %add203 = add nsw i64 %153, %conv202, !dbg !1661
  %call204 = call ptr @strncpy(ptr noundef %150, ptr noundef %add.ptr201, i64 noundef %add203) #11, !dbg !1662
  %155 = load ptr, ptr %str, align 8, !dbg !1663
  %156 = load i64, ptr %length, align 8, !dbg !1664
  %157 = load i32, ptr %sign, align 4, !dbg !1665
  %conv205 = sext i32 %157 to i64, !dbg !1665
  %add206 = add nsw i64 %156, %conv205, !dbg !1666
  %arrayidx207 = getelementptr inbounds i8, ptr %155, i64 %add206, !dbg !1663
  store i8 0, ptr %arrayidx207, align 1, !dbg !1667
  %158 = load ptr, ptr %bigi, align 8, !dbg !1668
  call void @mpi_init(ptr noundef %158), !dbg !1669
  %159 = load ptr, ptr %bigi, align 8, !dbg !1670
  %160 = load ptr, ptr %str, align 8, !dbg !1671
  %161 = load i64, ptr %radix, align 8, !dbg !1672
  %conv208 = trunc i64 %161 to i32, !dbg !1672
  call void @mpi_setstr(ptr noundef %159, ptr noundef %160, i32 noundef %conv208), !dbg !1673
  %162 = load ptr, ptr %str, align 8, !dbg !1674
  call void @LispFree(ptr noundef %162), !dbg !1675
  %163 = load ptr, ptr %bigi, align 8, !dbg !1676
  %call209 = call ptr @LispNewBignum(ptr noundef %163), !dbg !1676
  store ptr %call209, ptr %result, align 8, !dbg !1677
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #11, !dbg !1678
  call void @llvm.lifetime.end.p0(i64 8, ptr %bigi) #11, !dbg !1678
  br label %if.end218, !dbg !1679

if.else210:                                       ; preds = %if.else192
  %164 = load i32, ptr %sign, align 4, !dbg !1680
  %tobool211 = icmp ne i32 %164, 0, !dbg !1680
  br i1 %tobool211, label %cond.true212, label %cond.false214, !dbg !1680

cond.true212:                                     ; preds = %if.else210
  %165 = load i64, ptr %integer, align 8, !dbg !1680
  %sub213 = sub nsw i64 0, %165, !dbg !1680
  br label %cond.end215, !dbg !1680

cond.false214:                                    ; preds = %if.else210
  %166 = load i64, ptr %integer, align 8, !dbg !1680
  br label %cond.end215, !dbg !1680

cond.end215:                                      ; preds = %cond.false214, %cond.true212
  %cond216 = phi i64 [ %sub213, %cond.true212 ], [ %166, %cond.false214 ], !dbg !1680
  %call217 = call ptr @LispNewInteger(i64 noundef %cond216), !dbg !1680
  store ptr %call217, ptr %result, align 8, !dbg !1681
  br label %if.end218

if.end218:                                        ; preds = %cond.end215, %if.then194
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.then191
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.then182
  %167 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1682
  %168 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 2), align 4, !dbg !1682
  %cmp221 = icmp sge i32 %167, %168, !dbg !1682
  br i1 %cmp221, label %if.then223, label %if.end224, !dbg !1684

if.then223:                                       ; preds = %if.end220
  call void @LispMoreProtects(), !dbg !1682
  br label %if.end224, !dbg !1682

if.end224:                                        ; preds = %if.then223, %if.end220
  %169 = load ptr, ptr %result, align 8, !dbg !1684
  %170 = load ptr, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3), align 8, !dbg !1684
  %171 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1684
  %inc225 = add nsw i32 %171, 1, !dbg !1684
  store i32 %inc225, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1684
  %idxprom226 = sext i32 %171 to i64, !dbg !1684
  %arrayidx227 = getelementptr inbounds ptr, ptr %170, i64 %idxprom226, !dbg !1684
  store ptr %169, ptr %arrayidx227, align 8, !dbg !1684
  %172 = load i64, ptr %i, align 8, !dbg !1685
  %shl = shl i64 %172, 4, !dbg !1685
  %or = or i64 %shl, 3, !dbg !1685
  %173 = inttoptr i64 %or to ptr, !dbg !1685
  %174 = load ptr, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 2), align 8, !dbg !1686
  %arrayidx228 = getelementptr inbounds ptr, ptr %174, i64 0, !dbg !1686
  store ptr %173, ptr %arrayidx228, align 8, !dbg !1687
  store i32 1, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 2, i32 1), align 8, !dbg !1688
  %175 = load i32, ptr %gc__protect, align 4, !dbg !1689
  store i32 %175, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1689
  %176 = load ptr, ptr %result, align 8, !dbg !1690
  call void @llvm.lifetime.end.p0(i64 8, ptr %junk_allowed) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %oradix) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %check) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %radix) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 4, ptr %overflow) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 4, ptr %junk) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 4, ptr %character) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #11, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 4, ptr %gc__protect) #11, !dbg !1691
  ret ptr %176, !dbg !1692
}

declare !dbg !1693 void @LispCheckSequenceStartEnd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1697 ptr @__ctype_b_loc() #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !1703 ptr @__ctype_toupper_loc() #4

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @toupper(i32 noundef %__c) #6 !dbg !1710 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !1714, metadata !DIExpression()), !dbg !1715
  %0 = load i32, ptr %__c.addr, align 4, !dbg !1716
  %cmp = icmp sge i32 %0, -128, !dbg !1717
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !1718

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %__c.addr, align 4, !dbg !1719
  %cmp1 = icmp slt i32 %1, 256, !dbg !1720
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1716

cond.true:                                        ; preds = %land.lhs.true
  %call = call ptr @__ctype_toupper_loc() #12, !dbg !1721
  %2 = load ptr, ptr %call, align 8, !dbg !1722
  %3 = load i32, ptr %__c.addr, align 4, !dbg !1723
  %idxprom = sext i32 %3 to i64, !dbg !1724
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !1724
  %4 = load i32, ptr %arrayidx, align 4, !dbg !1724
  br label %cond.end, !dbg !1716

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %__c.addr, align 4, !dbg !1725
  br label %cond.end, !dbg !1716

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !1716
  ret i32 %cond, !dbg !1726
}

; Function Attrs: nounwind
declare !dbg !1727 ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #7

declare !dbg !1733 void @mpi_init(ptr noundef) #2

declare !dbg !1736 void @mpi_setstr(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !1739 void @LispFree(ptr noundef) #2

declare !dbg !1742 ptr @LispNewBignum(ptr noundef) #2

declare !dbg !1745 ptr @LispNewInteger(i64 noundef) #2

declare !dbg !1748 void @LispMoreProtects() #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_String(ptr noundef %builtin) #0 !dbg !1751 {
entry:
  %builtin.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1753, metadata !DIExpression()), !dbg !1755
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #11, !dbg !1756
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !1754, metadata !DIExpression()), !dbg !1757
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1758
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1758
  %add = add nsw i32 %1, 0, !dbg !1758
  %idxprom = sext i32 %add to i64, !dbg !1758
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1758
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1758
  store ptr %2, ptr %object, align 8, !dbg !1759
  %3 = load ptr, ptr %builtin.addr, align 8, !dbg !1760
  %4 = load ptr, ptr %object, align 8, !dbg !1761
  %call = call ptr @LispStringCoerce(ptr noundef %3, ptr noundef %4), !dbg !1762
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #11, !dbg !1763
  ret ptr %call, !dbg !1764
}

declare !dbg !1765 ptr @LispStringCoerce(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_Stringp(ptr noundef %builtin) #0 !dbg !1766 {
entry:
  %builtin.addr = alloca ptr, align 8
  %object = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1768, metadata !DIExpression()), !dbg !1770
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #11, !dbg !1771
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !1769, metadata !DIExpression()), !dbg !1772
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1773
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1773
  %add = add nsw i32 %1, 0, !dbg !1773
  %idxprom = sext i32 %add to i64, !dbg !1773
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1773
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1773
  store ptr %2, ptr %object, align 8, !dbg !1774
  %3 = load ptr, ptr %object, align 8, !dbg !1775
  %4 = ptrtoint ptr %3 to i64, !dbg !1775
  %and = and i64 %4, 1, !dbg !1775
  %cmp = icmp eq i64 %and, 0, !dbg !1775
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1775

land.rhs:                                         ; preds = %entry
  %5 = load ptr, ptr %object, align 8, !dbg !1775
  %bf.load = load i16, ptr %5, align 8, !dbg !1775
  %bf.clear = and i16 %bf.load, 63, !dbg !1775
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1775
  %cmp1 = icmp eq i32 %bf.cast, 18, !dbg !1775
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1776
  %7 = zext i1 %6 to i64, !dbg !1775
  %cond = select i1 %6, ptr inttoptr (i64 17 to ptr), ptr inttoptr (i64 1 to ptr), !dbg !1775
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #11, !dbg !1777
  ret ptr %cond, !dbg !1778
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_ReadFromString(ptr noundef %builtin) #0 !dbg !1779 {
entry:
  %builtin.addr = alloca ptr, align 8
  %gc__protect = alloca i32, align 4
  %string = alloca ptr, align 8
  %stream = alloca ptr, align 8
  %result = alloca ptr, align 8
  %length = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %bytes_read = alloca i64, align 8
  %ostring = alloca ptr, align 8
  %eof_error_p = alloca ptr, align 8
  %eof_value = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1781, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 4, ptr %gc__protect) #11, !dbg !1796
  tail call void @llvm.dbg.declare(metadata ptr %gc__protect, metadata !1782, metadata !DIExpression()), !dbg !1796
  %0 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1796
  store i32 %0, ptr %gc__protect, align 4, !dbg !1796
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !1797
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !1783, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.start.p0(i64 8, ptr %stream) #11, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %stream, metadata !1784, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1785, metadata !DIExpression()), !dbg !1801
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !1802
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !1786, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !1802
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !1787, metadata !DIExpression()), !dbg !1804
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !1802
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !1788, metadata !DIExpression()), !dbg !1805
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes_read) #11, !dbg !1802
  tail call void @llvm.dbg.declare(metadata ptr %bytes_read, metadata !1789, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !1790, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 8, ptr %eof_error_p) #11, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %eof_error_p, metadata !1791, metadata !DIExpression()), !dbg !1809
  call void @llvm.lifetime.start.p0(i64 8, ptr %eof_value) #11, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %eof_value, metadata !1792, metadata !DIExpression()), !dbg !1810
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %ostart, metadata !1793, metadata !DIExpression()), !dbg !1811
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !1807
  tail call void @llvm.dbg.declare(metadata ptr %oend, metadata !1794, metadata !DIExpression()), !dbg !1812
  %1 = load ptr, ptr @lisp__data, align 8, !dbg !1813
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1813
  %add = add nsw i32 %2, 4, !dbg !1813
  %idxprom = sext i32 %add to i64, !dbg !1813
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom, !dbg !1813
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1813
  store ptr %3, ptr %oend, align 8, !dbg !1814
  %4 = load ptr, ptr @lisp__data, align 8, !dbg !1815
  %5 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1815
  %add1 = add nsw i32 %5, 3, !dbg !1815
  %idxprom2 = sext i32 %add1 to i64, !dbg !1815
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 %idxprom2, !dbg !1815
  %6 = load ptr, ptr %arrayidx3, align 8, !dbg !1815
  store ptr %6, ptr %ostart, align 8, !dbg !1816
  %7 = load ptr, ptr @lisp__data, align 8, !dbg !1817
  %8 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1817
  %add4 = add nsw i32 %8, 2, !dbg !1817
  %idxprom5 = sext i32 %add4 to i64, !dbg !1817
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 %idxprom5, !dbg !1817
  %9 = load ptr, ptr %arrayidx6, align 8, !dbg !1817
  store ptr %9, ptr %eof_value, align 8, !dbg !1818
  %10 = load ptr, ptr @lisp__data, align 8, !dbg !1819
  %11 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1819
  %add7 = add nsw i32 %11, 1, !dbg !1819
  %idxprom8 = sext i32 %add7 to i64, !dbg !1819
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 %idxprom8, !dbg !1819
  %12 = load ptr, ptr %arrayidx9, align 8, !dbg !1819
  store ptr %12, ptr %eof_error_p, align 8, !dbg !1820
  %13 = load ptr, ptr @lisp__data, align 8, !dbg !1821
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1821
  %add10 = add nsw i32 %14, 0, !dbg !1821
  %idxprom11 = sext i32 %add10 to i64, !dbg !1821
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 %idxprom11, !dbg !1821
  %15 = load ptr, ptr %arrayidx12, align 8, !dbg !1821
  store ptr %15, ptr %ostring, align 8, !dbg !1822
  %16 = load ptr, ptr %ostring, align 8, !dbg !1823
  %17 = ptrtoint ptr %16 to i64, !dbg !1823
  %and = and i64 %17, 1, !dbg !1823
  %cmp = icmp eq i64 %and, 0, !dbg !1823
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !1823

land.lhs.true:                                    ; preds = %entry
  %18 = load ptr, ptr %ostring, align 8, !dbg !1823
  %bf.load = load i16, ptr %18, align 8, !dbg !1823
  %bf.clear = and i16 %bf.load, 63, !dbg !1823
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1823
  %cmp13 = icmp eq i32 %bf.cast, 18, !dbg !1823
  br i1 %cmp13, label %if.end, label %if.then, !dbg !1825

if.then:                                          ; preds = %land.lhs.true, %entry
  %19 = load ptr, ptr %builtin.addr, align 8, !dbg !1823
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %19, i32 0, i32 6, !dbg !1823
  %20 = load ptr, ptr %symbol, align 8, !dbg !1823
  %data = getelementptr inbounds %struct._LispObj, ptr %20, i32 0, i32 1, !dbg !1823
  %21 = load ptr, ptr %data, align 8, !dbg !1823
  %key = getelementptr inbounds %struct._LispAtom, ptr %21, i32 0, i32 0, !dbg !1823
  %22 = load ptr, ptr %key, align 8, !dbg !1823
  %value = getelementptr inbounds %struct._hash_key, ptr %22, i32 0, i32 0, !dbg !1823
  %23 = load ptr, ptr %value, align 8, !dbg !1823
  %24 = load ptr, ptr %ostring, align 8, !dbg !1823
  %call = call ptr @LispStrObj(ptr noundef %24), !dbg !1823
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %23, ptr noundef %call), !dbg !1823
  br label %if.end, !dbg !1823

if.end:                                           ; preds = %if.then, %land.lhs.true
  %25 = load ptr, ptr %ostring, align 8, !dbg !1826
  %data14 = getelementptr inbounds %struct._LispObj, ptr %25, i32 0, i32 1, !dbg !1826
  %string15 = getelementptr inbounds %struct.anon, ptr %data14, i32 0, i32 0, !dbg !1826
  %26 = load ptr, ptr %string15, align 8, !dbg !1826
  store ptr %26, ptr %string, align 8, !dbg !1827
  %27 = load ptr, ptr %builtin.addr, align 8, !dbg !1828
  %28 = load ptr, ptr %ostring, align 8, !dbg !1829
  %29 = load ptr, ptr %ostart, align 8, !dbg !1830
  %30 = load ptr, ptr %oend, align 8, !dbg !1831
  call void @LispCheckSequenceStartEnd(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %start, ptr noundef %end, ptr noundef %length), !dbg !1832
  %31 = load i64, ptr %start, align 8, !dbg !1833
  %cmp16 = icmp sgt i64 %31, 0, !dbg !1835
  br i1 %cmp16, label %if.then18, label %lor.lhs.false, !dbg !1836

lor.lhs.false:                                    ; preds = %if.end
  %32 = load i64, ptr %end, align 8, !dbg !1837
  %33 = load i64, ptr %length, align 8, !dbg !1838
  %cmp17 = icmp slt i64 %32, %33, !dbg !1839
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1840

if.then18:                                        ; preds = %lor.lhs.false, %if.end
  %34 = load i64, ptr %end, align 8, !dbg !1841
  %35 = load i64, ptr %start, align 8, !dbg !1842
  %sub = sub nsw i64 %34, %35, !dbg !1843
  store i64 %sub, ptr %length, align 8, !dbg !1844
  br label %if.end19, !dbg !1845

if.end19:                                         ; preds = %if.then18, %lor.lhs.false
  %36 = load ptr, ptr %string, align 8, !dbg !1846
  %37 = load i64, ptr %start, align 8, !dbg !1846
  %add.ptr = getelementptr inbounds i8, ptr %36, i64 %37, !dbg !1846
  %38 = load i64, ptr %length, align 8, !dbg !1846
  %call20 = call ptr @LispNewStringStream(ptr noundef %add.ptr, i32 noundef 1, i64 noundef %38), !dbg !1846
  store ptr %call20, ptr %stream, align 8, !dbg !1847
  %39 = load ptr, ptr %eof_value, align 8, !dbg !1848
  %cmp21 = icmp eq ptr %39, inttoptr (i64 81 to ptr), !dbg !1850
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1851

if.then22:                                        ; preds = %if.end19
  store ptr inttoptr (i64 1 to ptr), ptr %eof_value, align 8, !dbg !1852
  br label %if.end23, !dbg !1853

if.end23:                                         ; preds = %if.then22, %if.end19
  %40 = load ptr, ptr %stream, align 8, !dbg !1854
  call void @LispPushInput(ptr noundef %40), !dbg !1855
  %call24 = call ptr @LispRead(), !dbg !1856
  store ptr %call24, ptr %result, align 8, !dbg !1857
  %41 = load ptr, ptr %stream, align 8, !dbg !1858
  %data25 = getelementptr inbounds %struct._LispObj, ptr %41, i32 0, i32 1, !dbg !1859
  %source = getelementptr inbounds %struct.anon.7, ptr %data25, i32 0, i32 0, !dbg !1860
  %42 = load ptr, ptr %source, align 8, !dbg !1861
  %input = getelementptr inbounds %struct._LispString, ptr %42, i32 0, i32 5, !dbg !1862
  %43 = load i32, ptr %input, align 8, !dbg !1862
  %conv = sext i32 %43 to i64, !dbg !1858
  store i64 %conv, ptr %bytes_read, align 8, !dbg !1863
  %44 = load ptr, ptr %stream, align 8, !dbg !1864
  call void @LispPopInput(ptr noundef %44), !dbg !1865
  %45 = load ptr, ptr %result, align 8, !dbg !1866
  %cmp26 = icmp eq ptr %45, null, !dbg !1868
  br i1 %cmp26, label %if.then28, label %if.end37, !dbg !1869

if.then28:                                        ; preds = %if.end23
  %46 = load ptr, ptr %eof_error_p, align 8, !dbg !1870
  %cmp29 = icmp eq ptr %46, inttoptr (i64 1 to ptr), !dbg !1873
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !1874

if.then31:                                        ; preds = %if.then28
  %47 = load ptr, ptr %eof_value, align 8, !dbg !1875
  store ptr %47, ptr %result, align 8, !dbg !1876
  br label %if.end36, !dbg !1877

if.else:                                          ; preds = %if.then28
  %48 = load ptr, ptr %builtin.addr, align 8, !dbg !1878
  %symbol32 = getelementptr inbounds %struct._LispBuiltin, ptr %48, i32 0, i32 6, !dbg !1878
  %49 = load ptr, ptr %symbol32, align 8, !dbg !1878
  %data33 = getelementptr inbounds %struct._LispObj, ptr %49, i32 0, i32 1, !dbg !1878
  %50 = load ptr, ptr %data33, align 8, !dbg !1878
  %key34 = getelementptr inbounds %struct._LispAtom, ptr %50, i32 0, i32 0, !dbg !1878
  %51 = load ptr, ptr %key34, align 8, !dbg !1878
  %value35 = getelementptr inbounds %struct._hash_key, ptr %51, i32 0, i32 0, !dbg !1878
  %52 = load ptr, ptr %value35, align 8, !dbg !1878
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.10, ptr noundef %52), !dbg !1879
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then31
  br label %if.end37, !dbg !1880

if.end37:                                         ; preds = %if.end36, %if.end23
  %53 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1881
  %54 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 2), align 4, !dbg !1881
  %cmp38 = icmp sge i32 %53, %54, !dbg !1881
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1883

if.then40:                                        ; preds = %if.end37
  call void @LispMoreProtects(), !dbg !1881
  br label %if.end41, !dbg !1881

if.end41:                                         ; preds = %if.then40, %if.end37
  %55 = load ptr, ptr %result, align 8, !dbg !1883
  %56 = load ptr, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3), align 8, !dbg !1883
  %57 = load i32, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1883
  %inc = add nsw i32 %57, 1, !dbg !1883
  store i32 %inc, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1883
  %idxprom42 = sext i32 %57 to i64, !dbg !1883
  %arrayidx43 = getelementptr inbounds ptr, ptr %56, i64 %idxprom42, !dbg !1883
  store ptr %55, ptr %arrayidx43, align 8, !dbg !1883
  %58 = load i64, ptr %start, align 8, !dbg !1884
  %59 = load i64, ptr %bytes_read, align 8, !dbg !1884
  %add44 = add nsw i64 %58, %59, !dbg !1884
  %shl = shl i64 %add44, 4, !dbg !1884
  %or = or i64 %shl, 3, !dbg !1884
  %60 = inttoptr i64 %or to ptr, !dbg !1884
  %61 = load ptr, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 2), align 8, !dbg !1885
  %arrayidx45 = getelementptr inbounds ptr, ptr %61, i64 0, !dbg !1885
  store ptr %60, ptr %arrayidx45, align 8, !dbg !1886
  store i32 1, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 2, i32 1), align 8, !dbg !1887
  %62 = load i32, ptr %gc__protect, align 4, !dbg !1888
  store i32 %62, ptr getelementptr inbounds (%struct._LispMac, ptr @lisp__data, i32 0, i32 3, i32 1), align 8, !dbg !1888
  %63 = load ptr, ptr %result, align 8, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %eof_value) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %eof_error_p) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes_read) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %stream) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 4, ptr %gc__protect) #11, !dbg !1890
  ret ptr %63, !dbg !1891
}

declare !dbg !1892 ptr @LispNewStringStream(ptr noundef, i32 noundef, i64 noundef) #2

declare !dbg !1895 void @LispPushInput(ptr noundef) #2

declare !dbg !1898 ptr @LispRead() #2

declare !dbg !1902 void @LispPopInput(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringTrim(ptr noundef %builtin) #0 !dbg !1903 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1905, metadata !DIExpression()), !dbg !1906
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !1907
  %call = call ptr @LispStringTrim(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0), !dbg !1908
  ret ptr %call, !dbg !1909
}

; Function Attrs: nounwind uwtable
define internal ptr @LispStringTrim(ptr noundef %builtin, i32 noundef %left, i32 noundef %right, i32 noundef %inplace) #0 !dbg !1910 {
entry:
  %retval = alloca ptr, align 8
  %builtin.addr = alloca ptr, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %inplace.addr = alloca i32, align 4
  %string = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %length = alloca i64, align 8
  %ochars = alloca ptr, align 8
  %ostring = alloca ptr, align 8
  %chars = alloca ptr, align 8
  %i = alloca i64, align 8
  %clength = alloca i64, align 8
  %ochar = alloca ptr, align 8
  %list103 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !1914, metadata !DIExpression()), !dbg !1932
  store i32 %left, ptr %left.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !1915, metadata !DIExpression()), !dbg !1933
  store i32 %right, ptr %right.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %right.addr, metadata !1916, metadata !DIExpression()), !dbg !1934
  store i32 %inplace, ptr %inplace.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %inplace.addr, metadata !1917, metadata !DIExpression()), !dbg !1935
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !1936
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !1918, metadata !DIExpression()), !dbg !1937
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !1938
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !1919, metadata !DIExpression()), !dbg !1939
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !1938
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !1920, metadata !DIExpression()), !dbg !1940
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !1938
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !1921, metadata !DIExpression()), !dbg !1941
  call void @llvm.lifetime.start.p0(i64 8, ptr %ochars) #11, !dbg !1942
  tail call void @llvm.dbg.declare(metadata ptr %ochars, metadata !1922, metadata !DIExpression()), !dbg !1943
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !1942
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !1923, metadata !DIExpression()), !dbg !1944
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !1945
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1945
  %add = add nsw i32 %1, 1, !dbg !1945
  %idxprom = sext i32 %add to i64, !dbg !1945
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !1945
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1945
  store ptr %2, ptr %ostring, align 8, !dbg !1946
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !1947
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !1947
  %add1 = add nsw i32 %4, 0, !dbg !1947
  %idxprom2 = sext i32 %add1 to i64, !dbg !1947
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !1947
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !1947
  store ptr %5, ptr %ochars, align 8, !dbg !1948
  %6 = load ptr, ptr %ochars, align 8, !dbg !1949
  %7 = ptrtoint ptr %6 to i64, !dbg !1949
  %and = and i64 %7, 1, !dbg !1949
  %cmp = icmp eq i64 %and, 0, !dbg !1949
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !1951

lor.lhs.false:                                    ; preds = %entry
  %8 = load ptr, ptr %ochars, align 8, !dbg !1952
  %bf.load = load i16, ptr %8, align 8, !dbg !1952
  %bf.clear = and i16 %bf.load, 63, !dbg !1952
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1952
  %cmp4 = icmp eq i32 %bf.cast, 18, !dbg !1952
  br i1 %cmp4, label %if.end24, label %lor.lhs.false5, !dbg !1953

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %ochars, align 8, !dbg !1954
  %bf.load6 = load i16, ptr %9, align 8, !dbg !1954
  %bf.clear7 = and i16 %bf.load6, 63, !dbg !1954
  %bf.cast8 = zext i16 %bf.clear7 to i32, !dbg !1954
  %cmp9 = icmp eq i32 %bf.cast8, 28, !dbg !1954
  br i1 %cmp9, label %if.end24, label %if.then, !dbg !1955

if.then:                                          ; preds = %lor.lhs.false5, %entry
  %10 = load ptr, ptr %ochars, align 8, !dbg !1956
  %11 = ptrtoint ptr %10 to i64, !dbg !1956
  %and10 = and i64 %11, 1, !dbg !1956
  %cmp11 = icmp eq i64 %and10, 0, !dbg !1956
  br i1 %cmp11, label %land.lhs.true, label %if.else, !dbg !1956

land.lhs.true:                                    ; preds = %if.then
  %12 = load ptr, ptr %ochars, align 8, !dbg !1956
  %bf.load12 = load i16, ptr %12, align 8, !dbg !1956
  %bf.clear13 = and i16 %bf.load12, 63, !dbg !1956
  %bf.cast14 = zext i16 %bf.clear13 to i32, !dbg !1956
  %cmp15 = icmp eq i32 %bf.cast14, 30, !dbg !1956
  br i1 %cmp15, label %land.lhs.true16, label %if.else, !dbg !1959

land.lhs.true16:                                  ; preds = %land.lhs.true
  %13 = load ptr, ptr %ochars, align 8, !dbg !1960
  %data = getelementptr inbounds %struct._LispObj, ptr %13, i32 0, i32 1, !dbg !1961
  %rank = getelementptr inbounds %struct.anon.5, ptr %data, i32 0, i32 2, !dbg !1962
  %bf.load17 = load i16, ptr %rank, align 8, !dbg !1962
  %bf.clear18 = and i16 %bf.load17, 255, !dbg !1962
  %bf.cast19 = zext i16 %bf.clear18 to i32, !dbg !1962
  %cmp20 = icmp eq i32 %bf.cast19, 1, !dbg !1963
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !1964

if.then21:                                        ; preds = %land.lhs.true16
  %14 = load ptr, ptr %ochars, align 8, !dbg !1965
  %data22 = getelementptr inbounds %struct._LispObj, ptr %14, i32 0, i32 1, !dbg !1966
  %list = getelementptr inbounds %struct.anon.5, ptr %data22, i32 0, i32 0, !dbg !1967
  %15 = load ptr, ptr %list, align 8, !dbg !1967
  store ptr %15, ptr %ochars, align 8, !dbg !1968
  br label %if.end, !dbg !1969

if.else:                                          ; preds = %land.lhs.true16, %land.lhs.true, %if.then
  %16 = load ptr, ptr %builtin.addr, align 8, !dbg !1970
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %16, i32 0, i32 6, !dbg !1970
  %17 = load ptr, ptr %symbol, align 8, !dbg !1970
  %data23 = getelementptr inbounds %struct._LispObj, ptr %17, i32 0, i32 1, !dbg !1970
  %18 = load ptr, ptr %data23, align 8, !dbg !1970
  %key = getelementptr inbounds %struct._LispAtom, ptr %18, i32 0, i32 0, !dbg !1970
  %19 = load ptr, ptr %key, align 8, !dbg !1970
  %value = getelementptr inbounds %struct._hash_key, ptr %19, i32 0, i32 0, !dbg !1970
  %20 = load ptr, ptr %value, align 8, !dbg !1970
  %21 = load ptr, ptr %ochars, align 8, !dbg !1971
  %call = call ptr @LispStrObj(ptr noundef %21), !dbg !1971
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.12, ptr noundef %20, ptr noundef %call), !dbg !1972
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then21
  br label %if.end24, !dbg !1973

if.end24:                                         ; preds = %if.end, %lor.lhs.false5, %lor.lhs.false
  %22 = load ptr, ptr %ostring, align 8, !dbg !1974
  %23 = ptrtoint ptr %22 to i64, !dbg !1974
  %and25 = and i64 %23, 1, !dbg !1974
  %cmp26 = icmp eq i64 %and25, 0, !dbg !1974
  br i1 %cmp26, label %land.lhs.true27, label %if.then32, !dbg !1974

land.lhs.true27:                                  ; preds = %if.end24
  %24 = load ptr, ptr %ostring, align 8, !dbg !1974
  %bf.load28 = load i16, ptr %24, align 8, !dbg !1974
  %bf.clear29 = and i16 %bf.load28, 63, !dbg !1974
  %bf.cast30 = zext i16 %bf.clear29 to i32, !dbg !1974
  %cmp31 = icmp eq i32 %bf.cast30, 18, !dbg !1974
  br i1 %cmp31, label %if.end38, label %if.then32, !dbg !1976

if.then32:                                        ; preds = %land.lhs.true27, %if.end24
  %25 = load ptr, ptr %builtin.addr, align 8, !dbg !1974
  %symbol33 = getelementptr inbounds %struct._LispBuiltin, ptr %25, i32 0, i32 6, !dbg !1974
  %26 = load ptr, ptr %symbol33, align 8, !dbg !1974
  %data34 = getelementptr inbounds %struct._LispObj, ptr %26, i32 0, i32 1, !dbg !1974
  %27 = load ptr, ptr %data34, align 8, !dbg !1974
  %key35 = getelementptr inbounds %struct._LispAtom, ptr %27, i32 0, i32 0, !dbg !1974
  %28 = load ptr, ptr %key35, align 8, !dbg !1974
  %value36 = getelementptr inbounds %struct._hash_key, ptr %28, i32 0, i32 0, !dbg !1974
  %29 = load ptr, ptr %value36, align 8, !dbg !1974
  %30 = load ptr, ptr %ostring, align 8, !dbg !1974
  %call37 = call ptr @LispStrObj(ptr noundef %30), !dbg !1974
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %29, ptr noundef %call37), !dbg !1974
  br label %if.end38, !dbg !1974

if.end38:                                         ; preds = %if.then32, %land.lhs.true27
  %31 = load ptr, ptr %ostring, align 8, !dbg !1977
  %data39 = getelementptr inbounds %struct._LispObj, ptr %31, i32 0, i32 1, !dbg !1977
  %string40 = getelementptr inbounds %struct.anon, ptr %data39, i32 0, i32 0, !dbg !1977
  %32 = load ptr, ptr %string40, align 8, !dbg !1977
  store ptr %32, ptr %string, align 8, !dbg !1978
  %33 = load ptr, ptr %ostring, align 8, !dbg !1979
  %data41 = getelementptr inbounds %struct._LispObj, ptr %33, i32 0, i32 1, !dbg !1979
  %length42 = getelementptr inbounds %struct.anon, ptr %data41, i32 0, i32 1, !dbg !1979
  %34 = load i64, ptr %length42, align 8, !dbg !1979
  store i64 %34, ptr %length, align 8, !dbg !1980
  store i64 0, ptr %start, align 8, !dbg !1981
  %35 = load i64, ptr %length, align 8, !dbg !1982
  store i64 %35, ptr %end, align 8, !dbg !1983
  %36 = load ptr, ptr %ochars, align 8, !dbg !1984
  %bf.load43 = load i16, ptr %36, align 8, !dbg !1984
  %bf.clear44 = and i16 %bf.load43, 63, !dbg !1984
  %bf.cast45 = zext i16 %bf.clear44 to i32, !dbg !1984
  %cmp46 = icmp eq i32 %bf.cast45, 18, !dbg !1984
  br i1 %cmp46, label %if.then47, label %if.else102, !dbg !1985

if.then47:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %chars) #11, !dbg !1986
  tail call void @llvm.dbg.declare(metadata ptr %chars, metadata !1924, metadata !DIExpression()), !dbg !1987
  %37 = load ptr, ptr %ochars, align 8, !dbg !1988
  %data48 = getelementptr inbounds %struct._LispObj, ptr %37, i32 0, i32 1, !dbg !1988
  %string49 = getelementptr inbounds %struct.anon, ptr %data48, i32 0, i32 0, !dbg !1988
  %38 = load ptr, ptr %string49, align 8, !dbg !1988
  store ptr %38, ptr %chars, align 8, !dbg !1987
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !1989
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1927, metadata !DIExpression()), !dbg !1990
  call void @llvm.lifetime.start.p0(i64 8, ptr %clength) #11, !dbg !1989
  tail call void @llvm.dbg.declare(metadata ptr %clength, metadata !1928, metadata !DIExpression()), !dbg !1991
  %39 = load ptr, ptr %ochars, align 8, !dbg !1992
  %data50 = getelementptr inbounds %struct._LispObj, ptr %39, i32 0, i32 1, !dbg !1992
  %length51 = getelementptr inbounds %struct.anon, ptr %data50, i32 0, i32 1, !dbg !1992
  %40 = load i64, ptr %length51, align 8, !dbg !1992
  store i64 %40, ptr %clength, align 8, !dbg !1991
  %41 = load i32, ptr %left.addr, align 4, !dbg !1993
  %tobool = icmp ne i32 %41, 0, !dbg !1993
  br i1 %tobool, label %if.then52, label %if.end71, !dbg !1995

if.then52:                                        ; preds = %if.then47
  br label %for.cond, !dbg !1996

for.cond:                                         ; preds = %for.inc68, %if.then52
  %42 = load i64, ptr %start, align 8, !dbg !1998
  %43 = load i64, ptr %end, align 8, !dbg !2001
  %cmp53 = icmp slt i64 %42, %43, !dbg !2002
  br i1 %cmp53, label %for.body, label %for.end70, !dbg !2003

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8, !dbg !2004
  br label %for.cond54, !dbg !2007

for.cond54:                                       ; preds = %for.inc, %for.body
  %44 = load i64, ptr %i, align 8, !dbg !2008
  %45 = load i64, ptr %clength, align 8, !dbg !2010
  %cmp55 = icmp slt i64 %44, %45, !dbg !2011
  br i1 %cmp55, label %for.body56, label %for.end, !dbg !2012

for.body56:                                       ; preds = %for.cond54
  %46 = load ptr, ptr %string, align 8, !dbg !2013
  %47 = load i64, ptr %start, align 8, !dbg !2015
  %arrayidx57 = getelementptr inbounds i8, ptr %46, i64 %47, !dbg !2013
  %48 = load i8, ptr %arrayidx57, align 1, !dbg !2013
  %conv = zext i8 %48 to i32, !dbg !2013
  %49 = load ptr, ptr %chars, align 8, !dbg !2016
  %50 = load i64, ptr %i, align 8, !dbg !2017
  %arrayidx58 = getelementptr inbounds i8, ptr %49, i64 %50, !dbg !2016
  %51 = load i8, ptr %arrayidx58, align 1, !dbg !2016
  %conv59 = zext i8 %51 to i32, !dbg !2016
  %cmp60 = icmp eq i32 %conv, %conv59, !dbg !2018
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !2019

if.then62:                                        ; preds = %for.body56
  br label %for.end, !dbg !2020

if.end63:                                         ; preds = %for.body56
  br label %for.inc, !dbg !2021

for.inc:                                          ; preds = %if.end63
  %52 = load i64, ptr %i, align 8, !dbg !2022
  %inc = add nsw i64 %52, 1, !dbg !2022
  store i64 %inc, ptr %i, align 8, !dbg !2022
  br label %for.cond54, !dbg !2023, !llvm.loop !2024

for.end:                                          ; preds = %if.then62, %for.cond54
  %53 = load i64, ptr %i, align 8, !dbg !2026
  %54 = load i64, ptr %clength, align 8, !dbg !2028
  %cmp64 = icmp sge i64 %53, %54, !dbg !2029
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !2030

if.then66:                                        ; preds = %for.end
  br label %for.end70, !dbg !2031

if.end67:                                         ; preds = %for.end
  br label %for.inc68, !dbg !2032

for.inc68:                                        ; preds = %if.end67
  %55 = load i64, ptr %start, align 8, !dbg !2033
  %inc69 = add nsw i64 %55, 1, !dbg !2033
  store i64 %inc69, ptr %start, align 8, !dbg !2033
  br label %for.cond, !dbg !2034, !llvm.loop !2035

for.end70:                                        ; preds = %if.then66, %for.cond
  br label %if.end71, !dbg !2037

if.end71:                                         ; preds = %for.end70, %if.then47
  %56 = load i32, ptr %right.addr, align 4, !dbg !2038
  %tobool72 = icmp ne i32 %56, 0, !dbg !2038
  br i1 %tobool72, label %if.then73, label %if.end101, !dbg !2040

if.then73:                                        ; preds = %if.end71
  %57 = load i64, ptr %end, align 8, !dbg !2041
  %dec = add nsw i64 %57, -1, !dbg !2041
  store i64 %dec, ptr %end, align 8, !dbg !2041
  br label %for.cond74, !dbg !2041

for.cond74:                                       ; preds = %for.inc97, %if.then73
  %58 = load i64, ptr %end, align 8, !dbg !2044
  %cmp75 = icmp sge i64 %58, 0, !dbg !2046
  br i1 %cmp75, label %for.body77, label %for.end99, !dbg !2047

for.body77:                                       ; preds = %for.cond74
  store i64 0, ptr %i, align 8, !dbg !2048
  br label %for.cond78, !dbg !2051

for.cond78:                                       ; preds = %for.inc90, %for.body77
  %59 = load i64, ptr %i, align 8, !dbg !2052
  %60 = load i64, ptr %clength, align 8, !dbg !2054
  %cmp79 = icmp slt i64 %59, %60, !dbg !2055
  br i1 %cmp79, label %for.body81, label %for.end92, !dbg !2056

for.body81:                                       ; preds = %for.cond78
  %61 = load ptr, ptr %string, align 8, !dbg !2057
  %62 = load i64, ptr %end, align 8, !dbg !2059
  %arrayidx82 = getelementptr inbounds i8, ptr %61, i64 %62, !dbg !2057
  %63 = load i8, ptr %arrayidx82, align 1, !dbg !2057
  %conv83 = zext i8 %63 to i32, !dbg !2057
  %64 = load ptr, ptr %chars, align 8, !dbg !2060
  %65 = load i64, ptr %i, align 8, !dbg !2061
  %arrayidx84 = getelementptr inbounds i8, ptr %64, i64 %65, !dbg !2060
  %66 = load i8, ptr %arrayidx84, align 1, !dbg !2060
  %conv85 = zext i8 %66 to i32, !dbg !2060
  %cmp86 = icmp eq i32 %conv83, %conv85, !dbg !2062
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !2063

if.then88:                                        ; preds = %for.body81
  br label %for.end92, !dbg !2064

if.end89:                                         ; preds = %for.body81
  br label %for.inc90, !dbg !2065

for.inc90:                                        ; preds = %if.end89
  %67 = load i64, ptr %i, align 8, !dbg !2066
  %inc91 = add nsw i64 %67, 1, !dbg !2066
  store i64 %inc91, ptr %i, align 8, !dbg !2066
  br label %for.cond78, !dbg !2067, !llvm.loop !2068

for.end92:                                        ; preds = %if.then88, %for.cond78
  %68 = load i64, ptr %i, align 8, !dbg !2070
  %69 = load i64, ptr %clength, align 8, !dbg !2072
  %cmp93 = icmp sge i64 %68, %69, !dbg !2073
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !2074

if.then95:                                        ; preds = %for.end92
  br label %for.end99, !dbg !2075

if.end96:                                         ; preds = %for.end92
  br label %for.inc97, !dbg !2076

for.inc97:                                        ; preds = %if.end96
  %70 = load i64, ptr %end, align 8, !dbg !2077
  %dec98 = add nsw i64 %70, -1, !dbg !2077
  store i64 %dec98, ptr %end, align 8, !dbg !2077
  br label %for.cond74, !dbg !2078, !llvm.loop !2079

for.end99:                                        ; preds = %if.then95, %for.cond74
  %71 = load i64, ptr %end, align 8, !dbg !2081
  %inc100 = add nsw i64 %71, 1, !dbg !2081
  store i64 %inc100, ptr %end, align 8, !dbg !2081
  br label %if.end101, !dbg !2082

if.end101:                                        ; preds = %for.end99, %if.end71
  call void @llvm.lifetime.end.p0(i64 8, ptr %clength) #11, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !2083
  call void @llvm.lifetime.end.p0(i64 8, ptr %chars) #11, !dbg !2083
  br label %if.end201, !dbg !2084

if.else102:                                       ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %ochar) #11, !dbg !2085
  tail call void @llvm.dbg.declare(metadata ptr %ochar, metadata !1929, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 8, ptr %list103) #11, !dbg !2085
  tail call void @llvm.dbg.declare(metadata ptr %list103, metadata !1931, metadata !DIExpression()), !dbg !2087
  %72 = load i32, ptr %left.addr, align 4, !dbg !2088
  %tobool104 = icmp ne i32 %72, 0, !dbg !2088
  br i1 %tobool104, label %if.then105, label %if.end148, !dbg !2090

if.then105:                                       ; preds = %if.else102
  br label %for.cond106, !dbg !2091

for.cond106:                                      ; preds = %for.inc145, %if.then105
  %73 = load i64, ptr %start, align 8, !dbg !2093
  %74 = load i64, ptr %end, align 8, !dbg !2096
  %cmp107 = icmp slt i64 %73, %74, !dbg !2097
  br i1 %cmp107, label %for.body109, label %for.end147, !dbg !2098

for.body109:                                      ; preds = %for.cond106
  %75 = load ptr, ptr %ochars, align 8, !dbg !2099
  store ptr %75, ptr %list103, align 8, !dbg !2102
  br label %for.cond110, !dbg !2103

for.cond110:                                      ; preds = %for.inc131, %for.body109
  %76 = load ptr, ptr %list103, align 8, !dbg !2104
  %77 = ptrtoint ptr %76 to i64, !dbg !2104
  %and111 = and i64 %77, 1, !dbg !2104
  %cmp112 = icmp eq i64 %and111, 0, !dbg !2104
  br i1 %cmp112, label %land.rhs, label %land.end, !dbg !2104

land.rhs:                                         ; preds = %for.cond110
  %78 = load ptr, ptr %list103, align 8, !dbg !2104
  %bf.load114 = load i16, ptr %78, align 8, !dbg !2104
  %bf.clear115 = and i16 %bf.load114, 63, !dbg !2104
  %bf.cast116 = zext i16 %bf.clear115 to i32, !dbg !2104
  %cmp117 = icmp eq i32 %bf.cast116, 28, !dbg !2104
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond110
  %79 = phi i1 [ false, %for.cond110 ], [ %cmp117, %land.rhs ], !dbg !2106
  br i1 %79, label %for.body119, label %for.end133, !dbg !2107

for.body119:                                      ; preds = %land.end
  %80 = load ptr, ptr %list103, align 8, !dbg !2108
  %data120 = getelementptr inbounds %struct._LispObj, ptr %80, i32 0, i32 1, !dbg !2108
  %car = getelementptr inbounds %struct.anon.3, ptr %data120, i32 0, i32 0, !dbg !2108
  %81 = load ptr, ptr %car, align 8, !dbg !2108
  store ptr %81, ptr %ochar, align 8, !dbg !2110
  %82 = load ptr, ptr %ochar, align 8, !dbg !2111
  %83 = ptrtoint ptr %82 to i64, !dbg !2111
  %and121 = and i64 %83, 15, !dbg !2111
  %cmp122 = icmp eq i64 %and121, 5, !dbg !2111
  br i1 %cmp122, label %land.lhs.true124, label %if.end130, !dbg !2113

land.lhs.true124:                                 ; preds = %for.body119
  %84 = load ptr, ptr %string, align 8, !dbg !2114
  %85 = load i64, ptr %start, align 8, !dbg !2115
  %arrayidx125 = getelementptr inbounds i8, ptr %84, i64 %85, !dbg !2114
  %86 = load i8, ptr %arrayidx125, align 1, !dbg !2114
  %conv126 = zext i8 %86 to i64, !dbg !2114
  %87 = load ptr, ptr %ochar, align 8, !dbg !2116
  %88 = ptrtoint ptr %87 to i64, !dbg !2116
  %shr = ashr i64 %88, 4, !dbg !2116
  %cmp127 = icmp eq i64 %conv126, %shr, !dbg !2117
  br i1 %cmp127, label %if.then129, label %if.end130, !dbg !2118

if.then129:                                       ; preds = %land.lhs.true124
  br label %for.end133, !dbg !2119

if.end130:                                        ; preds = %land.lhs.true124, %for.body119
  br label %for.inc131, !dbg !2120

for.inc131:                                       ; preds = %if.end130
  %89 = load ptr, ptr %list103, align 8, !dbg !2121
  %data132 = getelementptr inbounds %struct._LispObj, ptr %89, i32 0, i32 1, !dbg !2121
  %cdr = getelementptr inbounds %struct.anon.3, ptr %data132, i32 0, i32 1, !dbg !2121
  %90 = load ptr, ptr %cdr, align 8, !dbg !2121
  store ptr %90, ptr %list103, align 8, !dbg !2122
  br label %for.cond110, !dbg !2123, !llvm.loop !2124

for.end133:                                       ; preds = %if.then129, %land.end
  %91 = load ptr, ptr %list103, align 8, !dbg !2126
  %92 = ptrtoint ptr %91 to i64, !dbg !2126
  %and134 = and i64 %92, 1, !dbg !2126
  %cmp135 = icmp eq i64 %and134, 0, !dbg !2126
  br i1 %cmp135, label %land.lhs.true137, label %if.then143, !dbg !2126

land.lhs.true137:                                 ; preds = %for.end133
  %93 = load ptr, ptr %list103, align 8, !dbg !2126
  %bf.load138 = load i16, ptr %93, align 8, !dbg !2126
  %bf.clear139 = and i16 %bf.load138, 63, !dbg !2126
  %bf.cast140 = zext i16 %bf.clear139 to i32, !dbg !2126
  %cmp141 = icmp eq i32 %bf.cast140, 28, !dbg !2126
  br i1 %cmp141, label %if.end144, label %if.then143, !dbg !2128

if.then143:                                       ; preds = %land.lhs.true137, %for.end133
  br label %for.end147, !dbg !2129

if.end144:                                        ; preds = %land.lhs.true137
  br label %for.inc145, !dbg !2130

for.inc145:                                       ; preds = %if.end144
  %94 = load i64, ptr %start, align 8, !dbg !2131
  %inc146 = add nsw i64 %94, 1, !dbg !2131
  store i64 %inc146, ptr %start, align 8, !dbg !2131
  br label %for.cond106, !dbg !2132, !llvm.loop !2133

for.end147:                                       ; preds = %if.then143, %for.cond106
  br label %if.end148, !dbg !2135

if.end148:                                        ; preds = %for.end147, %if.else102
  %95 = load i32, ptr %right.addr, align 4, !dbg !2136
  %tobool149 = icmp ne i32 %95, 0, !dbg !2136
  br i1 %tobool149, label %if.then150, label %if.end200, !dbg !2138

if.then150:                                       ; preds = %if.end148
  %96 = load i64, ptr %end, align 8, !dbg !2139
  %dec151 = add nsw i64 %96, -1, !dbg !2139
  store i64 %dec151, ptr %end, align 8, !dbg !2139
  br label %for.cond152, !dbg !2139

for.cond152:                                      ; preds = %for.inc196, %if.then150
  %97 = load i64, ptr %end, align 8, !dbg !2142
  %cmp153 = icmp sge i64 %97, 0, !dbg !2144
  br i1 %cmp153, label %for.body155, label %for.end198, !dbg !2145

for.body155:                                      ; preds = %for.cond152
  %98 = load ptr, ptr %ochars, align 8, !dbg !2146
  store ptr %98, ptr %list103, align 8, !dbg !2149
  br label %for.cond156, !dbg !2150

for.cond156:                                      ; preds = %for.inc181, %for.body155
  %99 = load ptr, ptr %list103, align 8, !dbg !2151
  %100 = ptrtoint ptr %99 to i64, !dbg !2151
  %and157 = and i64 %100, 1, !dbg !2151
  %cmp158 = icmp eq i64 %and157, 0, !dbg !2151
  br i1 %cmp158, label %land.rhs160, label %land.end166, !dbg !2151

land.rhs160:                                      ; preds = %for.cond156
  %101 = load ptr, ptr %list103, align 8, !dbg !2151
  %bf.load161 = load i16, ptr %101, align 8, !dbg !2151
  %bf.clear162 = and i16 %bf.load161, 63, !dbg !2151
  %bf.cast163 = zext i16 %bf.clear162 to i32, !dbg !2151
  %cmp164 = icmp eq i32 %bf.cast163, 28, !dbg !2151
  br label %land.end166

land.end166:                                      ; preds = %land.rhs160, %for.cond156
  %102 = phi i1 [ false, %for.cond156 ], [ %cmp164, %land.rhs160 ], !dbg !2153
  br i1 %102, label %for.body167, label %for.end184, !dbg !2154

for.body167:                                      ; preds = %land.end166
  %103 = load ptr, ptr %list103, align 8, !dbg !2155
  %data168 = getelementptr inbounds %struct._LispObj, ptr %103, i32 0, i32 1, !dbg !2155
  %car169 = getelementptr inbounds %struct.anon.3, ptr %data168, i32 0, i32 0, !dbg !2155
  %104 = load ptr, ptr %car169, align 8, !dbg !2155
  store ptr %104, ptr %ochar, align 8, !dbg !2157
  %105 = load ptr, ptr %ochar, align 8, !dbg !2158
  %106 = ptrtoint ptr %105 to i64, !dbg !2158
  %and170 = and i64 %106, 15, !dbg !2158
  %cmp171 = icmp eq i64 %and170, 5, !dbg !2158
  br i1 %cmp171, label %land.lhs.true173, label %if.end180, !dbg !2160

land.lhs.true173:                                 ; preds = %for.body167
  %107 = load ptr, ptr %string, align 8, !dbg !2161
  %108 = load i64, ptr %end, align 8, !dbg !2162
  %arrayidx174 = getelementptr inbounds i8, ptr %107, i64 %108, !dbg !2161
  %109 = load i8, ptr %arrayidx174, align 1, !dbg !2161
  %conv175 = zext i8 %109 to i64, !dbg !2161
  %110 = load ptr, ptr %ochar, align 8, !dbg !2163
  %111 = ptrtoint ptr %110 to i64, !dbg !2163
  %shr176 = ashr i64 %111, 4, !dbg !2163
  %cmp177 = icmp eq i64 %conv175, %shr176, !dbg !2164
  br i1 %cmp177, label %if.then179, label %if.end180, !dbg !2165

if.then179:                                       ; preds = %land.lhs.true173
  br label %for.end184, !dbg !2166

if.end180:                                        ; preds = %land.lhs.true173, %for.body167
  br label %for.inc181, !dbg !2167

for.inc181:                                       ; preds = %if.end180
  %112 = load ptr, ptr %list103, align 8, !dbg !2168
  %data182 = getelementptr inbounds %struct._LispObj, ptr %112, i32 0, i32 1, !dbg !2168
  %cdr183 = getelementptr inbounds %struct.anon.3, ptr %data182, i32 0, i32 1, !dbg !2168
  %113 = load ptr, ptr %cdr183, align 8, !dbg !2168
  store ptr %113, ptr %list103, align 8, !dbg !2169
  br label %for.cond156, !dbg !2170, !llvm.loop !2171

for.end184:                                       ; preds = %if.then179, %land.end166
  %114 = load ptr, ptr %list103, align 8, !dbg !2173
  %115 = ptrtoint ptr %114 to i64, !dbg !2173
  %and185 = and i64 %115, 1, !dbg !2173
  %cmp186 = icmp eq i64 %and185, 0, !dbg !2173
  br i1 %cmp186, label %land.lhs.true188, label %if.then194, !dbg !2173

land.lhs.true188:                                 ; preds = %for.end184
  %116 = load ptr, ptr %list103, align 8, !dbg !2173
  %bf.load189 = load i16, ptr %116, align 8, !dbg !2173
  %bf.clear190 = and i16 %bf.load189, 63, !dbg !2173
  %bf.cast191 = zext i16 %bf.clear190 to i32, !dbg !2173
  %cmp192 = icmp eq i32 %bf.cast191, 28, !dbg !2173
  br i1 %cmp192, label %if.end195, label %if.then194, !dbg !2175

if.then194:                                       ; preds = %land.lhs.true188, %for.end184
  br label %for.end198, !dbg !2176

if.end195:                                        ; preds = %land.lhs.true188
  br label %for.inc196, !dbg !2177

for.inc196:                                       ; preds = %if.end195
  %117 = load i64, ptr %end, align 8, !dbg !2178
  %dec197 = add nsw i64 %117, -1, !dbg !2178
  store i64 %dec197, ptr %end, align 8, !dbg !2178
  br label %for.cond152, !dbg !2179, !llvm.loop !2180

for.end198:                                       ; preds = %if.then194, %for.cond152
  %118 = load i64, ptr %end, align 8, !dbg !2182
  %inc199 = add nsw i64 %118, 1, !dbg !2182
  store i64 %inc199, ptr %end, align 8, !dbg !2182
  br label %if.end200, !dbg !2183

if.end200:                                        ; preds = %for.end198, %if.end148
  call void @llvm.lifetime.end.p0(i64 8, ptr %list103) #11, !dbg !2184
  call void @llvm.lifetime.end.p0(i64 8, ptr %ochar) #11, !dbg !2184
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end101
  %119 = load i64, ptr %start, align 8, !dbg !2185
  %cmp202 = icmp eq i64 %119, 0, !dbg !2187
  br i1 %cmp202, label %land.lhs.true204, label %if.end208, !dbg !2188

land.lhs.true204:                                 ; preds = %if.end201
  %120 = load i64, ptr %end, align 8, !dbg !2189
  %121 = load i64, ptr %length, align 8, !dbg !2190
  %cmp205 = icmp eq i64 %120, %121, !dbg !2191
  br i1 %cmp205, label %if.then207, label %if.end208, !dbg !2192

if.then207:                                       ; preds = %land.lhs.true204
  %122 = load ptr, ptr %ostring, align 8, !dbg !2193
  store ptr %122, ptr %retval, align 8, !dbg !2194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2194

if.end208:                                        ; preds = %land.lhs.true204, %if.end201
  %123 = load i64, ptr %end, align 8, !dbg !2195
  %124 = load i64, ptr %start, align 8, !dbg !2196
  %sub = sub nsw i64 %123, %124, !dbg !2197
  store i64 %sub, ptr %length, align 8, !dbg !2198
  %125 = load i32, ptr %inplace.addr, align 4, !dbg !2199
  %tobool209 = icmp ne i32 %125, 0, !dbg !2199
  br i1 %tobool209, label %if.then210, label %if.else226, !dbg !2201

if.then210:                                       ; preds = %if.end208
  %126 = load ptr, ptr %ostring, align 8, !dbg !2202
  %data211 = getelementptr inbounds %struct._LispObj, ptr %126, i32 0, i32 1, !dbg !2202
  %writable = getelementptr inbounds %struct.anon, ptr %data211, i32 0, i32 2, !dbg !2202
  %bf.load212 = load i8, ptr %writable, align 8, !dbg !2202
  %bf.clear213 = and i8 %bf.load212, 1, !dbg !2202
  %bf.cast214 = zext i8 %bf.clear213 to i32, !dbg !2202
  %tobool215 = icmp ne i32 %bf.cast214, 0, !dbg !2202
  br i1 %tobool215, label %if.end222, label %if.then216, !dbg !2205

if.then216:                                       ; preds = %if.then210
  %127 = load ptr, ptr %builtin.addr, align 8, !dbg !2202
  %symbol217 = getelementptr inbounds %struct._LispBuiltin, ptr %127, i32 0, i32 6, !dbg !2202
  %128 = load ptr, ptr %symbol217, align 8, !dbg !2202
  %data218 = getelementptr inbounds %struct._LispObj, ptr %128, i32 0, i32 1, !dbg !2202
  %129 = load ptr, ptr %data218, align 8, !dbg !2202
  %key219 = getelementptr inbounds %struct._LispAtom, ptr %129, i32 0, i32 0, !dbg !2202
  %130 = load ptr, ptr %key219, align 8, !dbg !2202
  %value220 = getelementptr inbounds %struct._hash_key, ptr %130, i32 0, i32 0, !dbg !2202
  %131 = load ptr, ptr %value220, align 8, !dbg !2202
  %132 = load ptr, ptr %ostring, align 8, !dbg !2202
  %call221 = call ptr @LispStrObj(ptr noundef %132), !dbg !2202
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.4, ptr noundef %131, ptr noundef %call221), !dbg !2202
  br label %if.end222, !dbg !2202

if.end222:                                        ; preds = %if.then216, %if.then210
  %133 = load ptr, ptr %string, align 8, !dbg !2206
  %134 = load ptr, ptr %string, align 8, !dbg !2207
  %135 = load i64, ptr %start, align 8, !dbg !2208
  %add.ptr = getelementptr inbounds i8, ptr %134, i64 %135, !dbg !2209
  %136 = load i64, ptr %length, align 8, !dbg !2210
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %133, ptr align 1 %add.ptr, i64 %136, i1 false), !dbg !2211
  %137 = load ptr, ptr %string, align 8, !dbg !2212
  %138 = load i64, ptr %length, align 8, !dbg !2213
  %arrayidx223 = getelementptr inbounds i8, ptr %137, i64 %138, !dbg !2212
  store i8 0, ptr %arrayidx223, align 1, !dbg !2214
  %139 = load i64, ptr %length, align 8, !dbg !2215
  %140 = load ptr, ptr %ostring, align 8, !dbg !2216
  %data224 = getelementptr inbounds %struct._LispObj, ptr %140, i32 0, i32 1, !dbg !2216
  %length225 = getelementptr inbounds %struct.anon, ptr %data224, i32 0, i32 1, !dbg !2216
  store i64 %139, ptr %length225, align 8, !dbg !2217
  br label %if.end234, !dbg !2218

if.else226:                                       ; preds = %if.end208
  %141 = load i64, ptr %length, align 8, !dbg !2219
  %add227 = add nsw i64 %141, 1, !dbg !2221
  %call228 = call ptr @LispMalloc(i64 noundef %add227), !dbg !2222
  store ptr %call228, ptr %string, align 8, !dbg !2223
  %142 = load ptr, ptr %string, align 8, !dbg !2224
  %143 = load ptr, ptr %ostring, align 8, !dbg !2225
  %data229 = getelementptr inbounds %struct._LispObj, ptr %143, i32 0, i32 1, !dbg !2225
  %string230 = getelementptr inbounds %struct.anon, ptr %data229, i32 0, i32 0, !dbg !2225
  %144 = load ptr, ptr %string230, align 8, !dbg !2225
  %145 = load i64, ptr %start, align 8, !dbg !2226
  %add.ptr231 = getelementptr inbounds i8, ptr %144, i64 %145, !dbg !2227
  %146 = load i64, ptr %length, align 8, !dbg !2228
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %142, ptr align 1 %add.ptr231, i64 %146, i1 false), !dbg !2229
  %147 = load ptr, ptr %string, align 8, !dbg !2230
  %148 = load i64, ptr %length, align 8, !dbg !2231
  %arrayidx232 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2230
  store i8 0, ptr %arrayidx232, align 1, !dbg !2232
  %149 = load ptr, ptr %string, align 8, !dbg !2233
  %150 = load i64, ptr %length, align 8, !dbg !2233
  %call233 = call ptr @LispNewStringAlloced(ptr noundef %149, i64 noundef %150), !dbg !2233
  store ptr %call233, ptr %ostring, align 8, !dbg !2234
  br label %if.end234

if.end234:                                        ; preds = %if.else226, %if.end222
  %151 = load ptr, ptr %ostring, align 8, !dbg !2235
  store ptr %151, ptr %retval, align 8, !dbg !2236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2236

cleanup:                                          ; preds = %if.end234, %if.then207
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 8, ptr %ochars) #11, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !2237
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !2237
  %152 = load ptr, ptr %retval, align 8, !dbg !2237
  ret ptr %152, !dbg !2237
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_NstringTrim(ptr noundef %builtin) #0 !dbg !2238 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2240, metadata !DIExpression()), !dbg !2241
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2242
  %call = call ptr @LispStringTrim(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 1), !dbg !2243
  ret ptr %call, !dbg !2244
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringLeftTrim(ptr noundef %builtin) #0 !dbg !2245 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2247, metadata !DIExpression()), !dbg !2248
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2249
  %call = call ptr @LispStringTrim(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0), !dbg !2250
  ret ptr %call, !dbg !2251
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_NstringLeftTrim(ptr noundef %builtin) #0 !dbg !2252 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2254, metadata !DIExpression()), !dbg !2255
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2256
  %call = call ptr @LispStringTrim(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 1), !dbg !2257
  ret ptr %call, !dbg !2258
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringRightTrim(ptr noundef %builtin) #0 !dbg !2259 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2261, metadata !DIExpression()), !dbg !2262
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2263
  %call = call ptr @LispStringTrim(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0), !dbg !2264
  ret ptr %call, !dbg !2265
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_NstringRightTrim(ptr noundef %builtin) #0 !dbg !2266 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2268, metadata !DIExpression()), !dbg !2269
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2270
  %call = call ptr @LispStringTrim(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 1), !dbg !2271
  ret ptr %call, !dbg !2272
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringEqual_(ptr noundef %builtin) #0 !dbg !2273 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2275, metadata !DIExpression()), !dbg !2276
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2277
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 3, i32 noundef 0), !dbg !2278
  ret ptr %call, !dbg !2279
}

; Function Attrs: nounwind uwtable
define internal ptr @LispStringCompare(ptr noundef %builtin, i32 noundef %function, i32 noundef %ignore_case) #0 !dbg !2280 {
entry:
  %retval = alloca ptr, align 8
  %builtin.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %ignore_case.addr = alloca i32, align 4
  %cmp1 = alloca i32, align 4
  %cmp2 = alloca i32, align 4
  %fixnum = alloca ptr, align 8
  %string1 = alloca ptr, align 8
  %string2 = alloca ptr, align 8
  %start1 = alloca i64, align 8
  %end1 = alloca i64, align 8
  %start2 = alloca i64, align 8
  %end2 = alloca i64, align 8
  %offset = alloca i64, align 8
  %length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res10 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %__res35 = alloca i32, align 4
  %__c = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %__res51 = alloca i32, align 4
  %__c53 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2282, metadata !DIExpression()), !dbg !2324
  store i32 %function, ptr %function.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !2283, metadata !DIExpression()), !dbg !2325
  store i32 %ignore_case, ptr %ignore_case.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %ignore_case.addr, metadata !2284, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp1) #11, !dbg !2327
  tail call void @llvm.dbg.declare(metadata ptr %cmp1, metadata !2285, metadata !DIExpression()), !dbg !2328
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp2) #11, !dbg !2327
  tail call void @llvm.dbg.declare(metadata ptr %cmp2, metadata !2286, metadata !DIExpression()), !dbg !2329
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixnum) #11, !dbg !2330
  tail call void @llvm.dbg.declare(metadata ptr %fixnum, metadata !2287, metadata !DIExpression()), !dbg !2331
  call void @llvm.lifetime.start.p0(i64 8, ptr %string1) #11, !dbg !2332
  tail call void @llvm.dbg.declare(metadata ptr %string1, metadata !2288, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 8, ptr %string2) #11, !dbg !2332
  tail call void @llvm.dbg.declare(metadata ptr %string2, metadata !2289, metadata !DIExpression()), !dbg !2334
  call void @llvm.lifetime.start.p0(i64 8, ptr %start1) #11, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %start1, metadata !2290, metadata !DIExpression()), !dbg !2336
  call void @llvm.lifetime.start.p0(i64 8, ptr %end1) #11, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %end1, metadata !2291, metadata !DIExpression()), !dbg !2337
  call void @llvm.lifetime.start.p0(i64 8, ptr %start2) #11, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %start2, metadata !2292, metadata !DIExpression()), !dbg !2338
  call void @llvm.lifetime.start.p0(i64 8, ptr %end2) #11, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %end2, metadata !2293, metadata !DIExpression()), !dbg !2339
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !2294, metadata !DIExpression()), !dbg !2340
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !2335
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !2295, metadata !DIExpression()), !dbg !2341
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2342
  call void @LispGetStringArgs(ptr noundef %0, ptr noundef %string1, ptr noundef %string2, ptr noundef %start1, ptr noundef %end1, ptr noundef %start2, ptr noundef %end2), !dbg !2343
  %1 = load i64, ptr %start1, align 8, !dbg !2344
  %2 = load ptr, ptr %string1, align 8, !dbg !2345
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %1, !dbg !2345
  store ptr %add.ptr, ptr %string1, align 8, !dbg !2345
  %3 = load i64, ptr %start2, align 8, !dbg !2346
  %4 = load ptr, ptr %string2, align 8, !dbg !2347
  %add.ptr1 = getelementptr inbounds i8, ptr %4, i64 %3, !dbg !2347
  store ptr %add.ptr1, ptr %string2, align 8, !dbg !2347
  %5 = load i32, ptr %function.addr, align 4, !dbg !2348
  %cmp = icmp eq i32 %5, 3, !dbg !2349
  br i1 %cmp, label %if.then, label %if.end21, !dbg !2350

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %end1, align 8, !dbg !2351
  %7 = load i64, ptr %start1, align 8, !dbg !2352
  %sub = sub nsw i64 %6, %7, !dbg !2353
  store i64 %sub, ptr %length, align 8, !dbg !2354
  %8 = load i64, ptr %length, align 8, !dbg !2355
  %9 = load i64, ptr %end2, align 8, !dbg !2357
  %10 = load i64, ptr %start2, align 8, !dbg !2358
  %sub2 = sub nsw i64 %9, %10, !dbg !2359
  %cmp3 = icmp ne i64 %8, %sub2, !dbg !2360
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2361

if.then4:                                         ; preds = %if.then
  store ptr inttoptr (i64 1 to ptr), ptr %retval, align 8, !dbg !2362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2362

if.end:                                           ; preds = %if.then
  %11 = load i32, ptr %ignore_case.addr, align 4, !dbg !2363
  %tobool = icmp ne i32 %11, 0, !dbg !2363
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !2365

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %string1, align 8, !dbg !2366
  %13 = load ptr, ptr %string2, align 8, !dbg !2367
  %14 = load i64, ptr %length, align 8, !dbg !2368
  %call = call i32 @memcmp(ptr noundef %12, ptr noundef %13, i64 noundef %14) #13, !dbg !2369
  %tobool6 = icmp ne i32 %call, 0, !dbg !2369
  %15 = zext i1 %tobool6 to i64, !dbg !2369
  %cond = select i1 %tobool6, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 17 to ptr), !dbg !2369
  store ptr %cond, ptr %retval, align 8, !dbg !2370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2370

if.end7:                                          ; preds = %if.end
  br label %for.cond, !dbg !2371

for.cond:                                         ; preds = %for.inc, %if.end7
  %16 = load i64, ptr %length, align 8, !dbg !2372
  %tobool8 = icmp ne i64 %16, 0, !dbg !2373
  br i1 %tobool8, label %for.body, label %for.end, !dbg !2373

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11, !dbg !2374
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !2296, metadata !DIExpression()), !dbg !2374
  %call9 = call ptr @__ctype_toupper_loc() #12, !dbg !2375
  %17 = load ptr, ptr %call9, align 8, !dbg !2375
  %18 = load ptr, ptr %string1, align 8, !dbg !2375
  %19 = load i8, ptr %18, align 1, !dbg !2375
  %conv = zext i8 %19 to i32, !dbg !2375
  %idxprom = sext i32 %conv to i64, !dbg !2375
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom, !dbg !2375
  %20 = load i32, ptr %arrayidx, align 4, !dbg !2375
  store i32 %20, ptr %__res, align 4, !dbg !2375
  %21 = load i32, ptr %__res, align 4, !dbg !2374
  store i32 %21, ptr %tmp, align 4, !dbg !2375
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11, !dbg !2377
  %22 = load i32, ptr %tmp, align 4, !dbg !2374
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res10) #11, !dbg !2378
  tail call void @llvm.dbg.declare(metadata ptr %__res10, metadata !2303, metadata !DIExpression()), !dbg !2378
  %call11 = call ptr @__ctype_toupper_loc() #12, !dbg !2379
  %23 = load ptr, ptr %call11, align 8, !dbg !2379
  %24 = load ptr, ptr %string2, align 8, !dbg !2379
  %25 = load i8, ptr %24, align 1, !dbg !2379
  %conv12 = zext i8 %25 to i32, !dbg !2379
  %idxprom13 = sext i32 %conv12 to i64, !dbg !2379
  %arrayidx14 = getelementptr inbounds i32, ptr %23, i64 %idxprom13, !dbg !2379
  %26 = load i32, ptr %arrayidx14, align 4, !dbg !2379
  store i32 %26, ptr %__res10, align 4, !dbg !2379
  %27 = load i32, ptr %__res10, align 4, !dbg !2378
  store i32 %27, ptr %tmp15, align 4, !dbg !2379
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res10) #11, !dbg !2381
  %28 = load i32, ptr %tmp15, align 4, !dbg !2378
  %cmp16 = icmp ne i32 %22, %28, !dbg !2382
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !2383

if.then18:                                        ; preds = %for.body
  store ptr inttoptr (i64 1 to ptr), ptr %retval, align 8, !dbg !2384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2384

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !2381

for.inc:                                          ; preds = %if.end19
  %29 = load i64, ptr %length, align 8, !dbg !2385
  %dec = add nsw i64 %29, -1, !dbg !2385
  store i64 %dec, ptr %length, align 8, !dbg !2385
  %30 = load ptr, ptr %string1, align 8, !dbg !2386
  %incdec.ptr = getelementptr inbounds i8, ptr %30, i32 1, !dbg !2386
  store ptr %incdec.ptr, ptr %string1, align 8, !dbg !2386
  %31 = load ptr, ptr %string2, align 8, !dbg !2387
  %incdec.ptr20 = getelementptr inbounds i8, ptr %31, i32 1, !dbg !2387
  store ptr %incdec.ptr20, ptr %string2, align 8, !dbg !2387
  br label %for.cond, !dbg !2388, !llvm.loop !2389

for.end:                                          ; preds = %for.cond
  store ptr inttoptr (i64 17 to ptr), ptr %retval, align 8, !dbg !2391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2391

if.end21:                                         ; preds = %entry
  %32 = load i64, ptr %start1, align 8, !dbg !2392
  %33 = load i64, ptr %end1, align 8, !dbg !2393
  %sub22 = sub nsw i64 %33, %32, !dbg !2393
  store i64 %sub22, ptr %end1, align 8, !dbg !2393
  %34 = load i64, ptr %start2, align 8, !dbg !2394
  %35 = load i64, ptr %end2, align 8, !dbg !2395
  %sub23 = sub nsw i64 %35, %34, !dbg !2395
  store i64 %sub23, ptr %end2, align 8, !dbg !2395
  %36 = load i64, ptr %end1, align 8, !dbg !2396
  %37 = load i64, ptr %end2, align 8, !dbg !2396
  %cmp24 = icmp slt i64 %36, %37, !dbg !2396
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !2396

cond.true:                                        ; preds = %if.end21
  %38 = load i64, ptr %end1, align 8, !dbg !2396
  br label %cond.end, !dbg !2396

cond.false:                                       ; preds = %if.end21
  %39 = load i64, ptr %end2, align 8, !dbg !2396
  br label %cond.end, !dbg !2396

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i64 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !2396
  store i64 %cond26, ptr %length, align 8, !dbg !2397
  store i64 0, ptr %offset, align 8, !dbg !2398
  br label %for.cond27, !dbg !2399

for.cond27:                                       ; preds = %for.inc103, %cond.end
  %40 = load i64, ptr %offset, align 8, !dbg !2400
  %41 = load i64, ptr %length, align 8, !dbg !2401
  %cmp28 = icmp slt i64 %40, %41, !dbg !2402
  br i1 %cmp28, label %for.body30, label %for.end108, !dbg !2403

for.body30:                                       ; preds = %for.cond27
  %42 = load ptr, ptr %string1, align 8, !dbg !2404
  %43 = load i8, ptr %42, align 1, !dbg !2405
  %conv31 = zext i8 %43 to i32, !dbg !2405
  store i32 %conv31, ptr %cmp1, align 4, !dbg !2406
  %44 = load ptr, ptr %string2, align 8, !dbg !2407
  %45 = load i8, ptr %44, align 1, !dbg !2408
  %conv32 = zext i8 %45 to i32, !dbg !2408
  store i32 %conv32, ptr %cmp2, align 4, !dbg !2409
  %46 = load i32, ptr %ignore_case.addr, align 4, !dbg !2410
  %tobool33 = icmp ne i32 %46, 0, !dbg !2410
  br i1 %tobool33, label %if.then34, label %if.end70, !dbg !2411

if.then34:                                        ; preds = %for.body30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res35) #11, !dbg !2412
  tail call void @llvm.dbg.declare(metadata ptr %__res35, metadata !2305, metadata !DIExpression()), !dbg !2412
  %47 = load i32, ptr %cmp1, align 4, !dbg !2413
  %48 = call i1 @llvm.is.constant.i32(i32 %47), !dbg !2413
  br i1 %48, label %if.then36, label %if.else, !dbg !2414

if.then36:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c) #11, !dbg !2415
  tail call void @llvm.dbg.declare(metadata ptr %__c, metadata !2312, metadata !DIExpression()), !dbg !2415
  %49 = load i32, ptr %cmp1, align 4, !dbg !2415
  store i32 %49, ptr %__c, align 4, !dbg !2415
  %50 = load i32, ptr %__c, align 4, !dbg !2415
  %cmp37 = icmp slt i32 %50, -128, !dbg !2415
  br i1 %cmp37, label %cond.true41, label %lor.lhs.false, !dbg !2415

lor.lhs.false:                                    ; preds = %if.then36
  %51 = load i32, ptr %__c, align 4, !dbg !2415
  %cmp39 = icmp sgt i32 %51, 255, !dbg !2415
  br i1 %cmp39, label %cond.true41, label %cond.false42, !dbg !2415

cond.true41:                                      ; preds = %lor.lhs.false, %if.then36
  %52 = load i32, ptr %__c, align 4, !dbg !2415
  br label %cond.end46, !dbg !2415

cond.false42:                                     ; preds = %lor.lhs.false
  %call43 = call ptr @__ctype_toupper_loc() #12, !dbg !2415
  %53 = load ptr, ptr %call43, align 8, !dbg !2415
  %54 = load i32, ptr %__c, align 4, !dbg !2415
  %idxprom44 = sext i32 %54 to i64, !dbg !2415
  %arrayidx45 = getelementptr inbounds i32, ptr %53, i64 %idxprom44, !dbg !2415
  %55 = load i32, ptr %arrayidx45, align 4, !dbg !2415
  br label %cond.end46, !dbg !2415

cond.end46:                                       ; preds = %cond.false42, %cond.true41
  %cond47 = phi i32 [ %52, %cond.true41 ], [ %55, %cond.false42 ], !dbg !2415
  store i32 %cond47, ptr %__res35, align 4, !dbg !2415
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11, !dbg !2413
  br label %if.end49, !dbg !2415

if.else:                                          ; preds = %if.then34
  %56 = load i32, ptr %cmp1, align 4, !dbg !2413
  %call48 = call i32 @toupper(i32 noundef %56) #13, !dbg !2413
  store i32 %call48, ptr %__res35, align 4, !dbg !2413
  br label %if.end49

if.end49:                                         ; preds = %if.else, %cond.end46
  %57 = load i32, ptr %__res35, align 4, !dbg !2412
  store i32 %57, ptr %tmp50, align 4, !dbg !2416
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res35) #11, !dbg !2417
  %58 = load i32, ptr %tmp50, align 4, !dbg !2412
  store i32 %58, ptr %cmp1, align 4, !dbg !2418
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res51) #11, !dbg !2419
  tail call void @llvm.dbg.declare(metadata ptr %__res51, metadata !2317, metadata !DIExpression()), !dbg !2419
  %59 = load i32, ptr %cmp2, align 4, !dbg !2420
  %60 = call i1 @llvm.is.constant.i32(i32 %59), !dbg !2420
  br i1 %60, label %if.then52, label %if.else66, !dbg !2421

if.then52:                                        ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr %__c53) #11, !dbg !2422
  tail call void @llvm.dbg.declare(metadata ptr %__c53, metadata !2319, metadata !DIExpression()), !dbg !2422
  %61 = load i32, ptr %cmp2, align 4, !dbg !2422
  store i32 %61, ptr %__c53, align 4, !dbg !2422
  %62 = load i32, ptr %__c53, align 4, !dbg !2422
  %cmp54 = icmp slt i32 %62, -128, !dbg !2422
  br i1 %cmp54, label %cond.true59, label %lor.lhs.false56, !dbg !2422

lor.lhs.false56:                                  ; preds = %if.then52
  %63 = load i32, ptr %__c53, align 4, !dbg !2422
  %cmp57 = icmp sgt i32 %63, 255, !dbg !2422
  br i1 %cmp57, label %cond.true59, label %cond.false60, !dbg !2422

cond.true59:                                      ; preds = %lor.lhs.false56, %if.then52
  %64 = load i32, ptr %__c53, align 4, !dbg !2422
  br label %cond.end64, !dbg !2422

cond.false60:                                     ; preds = %lor.lhs.false56
  %call61 = call ptr @__ctype_toupper_loc() #12, !dbg !2422
  %65 = load ptr, ptr %call61, align 8, !dbg !2422
  %66 = load i32, ptr %__c53, align 4, !dbg !2422
  %idxprom62 = sext i32 %66 to i64, !dbg !2422
  %arrayidx63 = getelementptr inbounds i32, ptr %65, i64 %idxprom62, !dbg !2422
  %67 = load i32, ptr %arrayidx63, align 4, !dbg !2422
  br label %cond.end64, !dbg !2422

cond.end64:                                       ; preds = %cond.false60, %cond.true59
  %cond65 = phi i32 [ %64, %cond.true59 ], [ %67, %cond.false60 ], !dbg !2422
  store i32 %cond65, ptr %__res51, align 4, !dbg !2422
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c53) #11, !dbg !2420
  br label %if.end68, !dbg !2422

if.else66:                                        ; preds = %if.end49
  %68 = load i32, ptr %cmp2, align 4, !dbg !2420
  %call67 = call i32 @toupper(i32 noundef %68) #13, !dbg !2420
  store i32 %call67, ptr %__res51, align 4, !dbg !2420
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %cond.end64
  %69 = load i32, ptr %__res51, align 4, !dbg !2419
  store i32 %69, ptr %tmp69, align 4, !dbg !2423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res51) #11, !dbg !2424
  %70 = load i32, ptr %tmp69, align 4, !dbg !2419
  store i32 %70, ptr %cmp2, align 4, !dbg !2425
  br label %if.end70, !dbg !2426

if.end70:                                         ; preds = %if.end68, %for.body30
  %71 = load i32, ptr %cmp1, align 4, !dbg !2427
  %72 = load i32, ptr %cmp2, align 4, !dbg !2429
  %cmp71 = icmp ne i32 %71, %72, !dbg !2430
  br i1 %cmp71, label %if.then73, label %if.end102, !dbg !2431

if.then73:                                        ; preds = %if.end70
  %73 = load i64, ptr %start1, align 8, !dbg !2432
  %shl = shl i64 %73, 4, !dbg !2432
  %or = or i64 %shl, 3, !dbg !2432
  %74 = inttoptr i64 %or to ptr, !dbg !2432
  store ptr %74, ptr %fixnum, align 8, !dbg !2434
  %75 = load i32, ptr %function.addr, align 4, !dbg !2435
  switch i32 %75, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb80
    i32 6, label %sw.bb87
    i32 4, label %sw.bb88
    i32 5, label %sw.bb95
  ], !dbg !2436

sw.bb:                                            ; preds = %if.then73
  %76 = load i32, ptr %cmp1, align 4, !dbg !2437
  %77 = load i32, ptr %cmp2, align 4, !dbg !2439
  %cmp74 = icmp slt i32 %76, %77, !dbg !2440
  br i1 %cmp74, label %cond.true76, label %cond.false77, !dbg !2441

cond.true76:                                      ; preds = %sw.bb
  %78 = load ptr, ptr %fixnum, align 8, !dbg !2442
  br label %cond.end78, !dbg !2441

cond.false77:                                     ; preds = %sw.bb
  br label %cond.end78, !dbg !2441

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi ptr [ %78, %cond.true76 ], [ inttoptr (i64 1 to ptr), %cond.false77 ], !dbg !2441
  store ptr %cond79, ptr %retval, align 8, !dbg !2443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2443

sw.bb80:                                          ; preds = %if.then73
  %79 = load i32, ptr %cmp1, align 4, !dbg !2444
  %80 = load i32, ptr %cmp2, align 4, !dbg !2445
  %cmp81 = icmp sle i32 %79, %80, !dbg !2446
  br i1 %cmp81, label %cond.true83, label %cond.false84, !dbg !2447

cond.true83:                                      ; preds = %sw.bb80
  %81 = load ptr, ptr %fixnum, align 8, !dbg !2448
  br label %cond.end85, !dbg !2447

cond.false84:                                     ; preds = %sw.bb80
  br label %cond.end85, !dbg !2447

cond.end85:                                       ; preds = %cond.false84, %cond.true83
  %cond86 = phi ptr [ %81, %cond.true83 ], [ inttoptr (i64 1 to ptr), %cond.false84 ], !dbg !2447
  store ptr %cond86, ptr %retval, align 8, !dbg !2449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2449

sw.bb87:                                          ; preds = %if.then73
  %82 = load ptr, ptr %fixnum, align 8, !dbg !2450
  store ptr %82, ptr %retval, align 8, !dbg !2451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2451

sw.bb88:                                          ; preds = %if.then73
  %83 = load i32, ptr %cmp1, align 4, !dbg !2452
  %84 = load i32, ptr %cmp2, align 4, !dbg !2453
  %cmp89 = icmp sge i32 %83, %84, !dbg !2454
  br i1 %cmp89, label %cond.true91, label %cond.false92, !dbg !2455

cond.true91:                                      ; preds = %sw.bb88
  %85 = load ptr, ptr %fixnum, align 8, !dbg !2456
  br label %cond.end93, !dbg !2455

cond.false92:                                     ; preds = %sw.bb88
  br label %cond.end93, !dbg !2455

cond.end93:                                       ; preds = %cond.false92, %cond.true91
  %cond94 = phi ptr [ %85, %cond.true91 ], [ inttoptr (i64 1 to ptr), %cond.false92 ], !dbg !2455
  store ptr %cond94, ptr %retval, align 8, !dbg !2457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2457

sw.bb95:                                          ; preds = %if.then73
  %86 = load i32, ptr %cmp1, align 4, !dbg !2458
  %87 = load i32, ptr %cmp2, align 4, !dbg !2459
  %cmp96 = icmp sgt i32 %86, %87, !dbg !2460
  br i1 %cmp96, label %cond.true98, label %cond.false99, !dbg !2461

cond.true98:                                      ; preds = %sw.bb95
  %88 = load ptr, ptr %fixnum, align 8, !dbg !2462
  br label %cond.end100, !dbg !2461

cond.false99:                                     ; preds = %sw.bb95
  br label %cond.end100, !dbg !2461

cond.end100:                                      ; preds = %cond.false99, %cond.true98
  %cond101 = phi ptr [ %88, %cond.true98 ], [ inttoptr (i64 1 to ptr), %cond.false99 ], !dbg !2461
  store ptr %cond101, ptr %retval, align 8, !dbg !2463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2463

sw.epilog:                                        ; preds = %if.then73
  br label %if.end102, !dbg !2464

if.end102:                                        ; preds = %sw.epilog, %if.end70
  br label %for.inc103, !dbg !2465

for.inc103:                                       ; preds = %if.end102
  %89 = load ptr, ptr %string1, align 8, !dbg !2466
  %incdec.ptr104 = getelementptr inbounds i8, ptr %89, i32 1, !dbg !2466
  store ptr %incdec.ptr104, ptr %string1, align 8, !dbg !2466
  %90 = load ptr, ptr %string2, align 8, !dbg !2467
  %incdec.ptr105 = getelementptr inbounds i8, ptr %90, i32 1, !dbg !2467
  store ptr %incdec.ptr105, ptr %string2, align 8, !dbg !2467
  %91 = load i64, ptr %offset, align 8, !dbg !2468
  %inc = add nsw i64 %91, 1, !dbg !2468
  store i64 %inc, ptr %offset, align 8, !dbg !2468
  %92 = load i64, ptr %start1, align 8, !dbg !2469
  %inc106 = add nsw i64 %92, 1, !dbg !2469
  store i64 %inc106, ptr %start1, align 8, !dbg !2469
  %93 = load i64, ptr %start2, align 8, !dbg !2470
  %inc107 = add nsw i64 %93, 1, !dbg !2470
  store i64 %inc107, ptr %start2, align 8, !dbg !2470
  br label %for.cond27, !dbg !2471, !llvm.loop !2472

for.end108:                                       ; preds = %for.cond27
  %94 = load i64, ptr %start1, align 8, !dbg !2474
  %shl109 = shl i64 %94, 4, !dbg !2474
  %or110 = or i64 %shl109, 3, !dbg !2474
  %95 = inttoptr i64 %or110 to ptr, !dbg !2474
  store ptr %95, ptr %fixnum, align 8, !dbg !2475
  %96 = load i32, ptr %function.addr, align 4, !dbg !2476
  switch i32 %96, label %sw.epilog154 [
    i32 1, label %sw.bb111
    i32 2, label %sw.bb120
    i32 6, label %sw.bb127
    i32 4, label %sw.bb137
    i32 5, label %sw.bb144
  ], !dbg !2477

sw.bb111:                                         ; preds = %for.end108
  %97 = load i64, ptr %start1, align 8, !dbg !2478
  %98 = load i64, ptr %end1, align 8, !dbg !2480
  %cmp112 = icmp sge i64 %97, %98, !dbg !2481
  br i1 %cmp112, label %land.lhs.true, label %cond.false117, !dbg !2482

land.lhs.true:                                    ; preds = %sw.bb111
  %99 = load i64, ptr %start2, align 8, !dbg !2483
  %100 = load i64, ptr %end2, align 8, !dbg !2484
  %cmp114 = icmp slt i64 %99, %100, !dbg !2485
  br i1 %cmp114, label %cond.true116, label %cond.false117, !dbg !2478

cond.true116:                                     ; preds = %land.lhs.true
  %101 = load ptr, ptr %fixnum, align 8, !dbg !2486
  br label %cond.end118, !dbg !2478

cond.false117:                                    ; preds = %land.lhs.true, %sw.bb111
  br label %cond.end118, !dbg !2478

cond.end118:                                      ; preds = %cond.false117, %cond.true116
  %cond119 = phi ptr [ %101, %cond.true116 ], [ inttoptr (i64 1 to ptr), %cond.false117 ], !dbg !2478
  store ptr %cond119, ptr %retval, align 8, !dbg !2487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2487

sw.bb120:                                         ; preds = %for.end108
  %102 = load i64, ptr %start1, align 8, !dbg !2488
  %103 = load i64, ptr %end1, align 8, !dbg !2489
  %cmp121 = icmp sge i64 %102, %103, !dbg !2490
  br i1 %cmp121, label %cond.true123, label %cond.false124, !dbg !2488

cond.true123:                                     ; preds = %sw.bb120
  %104 = load ptr, ptr %fixnum, align 8, !dbg !2491
  br label %cond.end125, !dbg !2488

cond.false124:                                    ; preds = %sw.bb120
  br label %cond.end125, !dbg !2488

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi ptr [ %104, %cond.true123 ], [ inttoptr (i64 1 to ptr), %cond.false124 ], !dbg !2488
  store ptr %cond126, ptr %retval, align 8, !dbg !2492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2492

sw.bb127:                                         ; preds = %for.end108
  %105 = load i64, ptr %start1, align 8, !dbg !2493
  %106 = load i64, ptr %end1, align 8, !dbg !2494
  %cmp128 = icmp sge i64 %105, %106, !dbg !2495
  br i1 %cmp128, label %land.lhs.true130, label %cond.false134, !dbg !2496

land.lhs.true130:                                 ; preds = %sw.bb127
  %107 = load i64, ptr %start2, align 8, !dbg !2497
  %108 = load i64, ptr %end2, align 8, !dbg !2498
  %cmp131 = icmp sge i64 %107, %108, !dbg !2499
  br i1 %cmp131, label %cond.true133, label %cond.false134, !dbg !2493

cond.true133:                                     ; preds = %land.lhs.true130
  br label %cond.end135, !dbg !2493

cond.false134:                                    ; preds = %land.lhs.true130, %sw.bb127
  %109 = load ptr, ptr %fixnum, align 8, !dbg !2500
  br label %cond.end135, !dbg !2493

cond.end135:                                      ; preds = %cond.false134, %cond.true133
  %cond136 = phi ptr [ inttoptr (i64 1 to ptr), %cond.true133 ], [ %109, %cond.false134 ], !dbg !2493
  store ptr %cond136, ptr %retval, align 8, !dbg !2501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2501

sw.bb137:                                         ; preds = %for.end108
  %110 = load i64, ptr %start2, align 8, !dbg !2502
  %111 = load i64, ptr %end2, align 8, !dbg !2503
  %cmp138 = icmp sge i64 %110, %111, !dbg !2504
  br i1 %cmp138, label %cond.true140, label %cond.false141, !dbg !2502

cond.true140:                                     ; preds = %sw.bb137
  %112 = load ptr, ptr %fixnum, align 8, !dbg !2505
  br label %cond.end142, !dbg !2502

cond.false141:                                    ; preds = %sw.bb137
  br label %cond.end142, !dbg !2502

cond.end142:                                      ; preds = %cond.false141, %cond.true140
  %cond143 = phi ptr [ %112, %cond.true140 ], [ inttoptr (i64 1 to ptr), %cond.false141 ], !dbg !2502
  store ptr %cond143, ptr %retval, align 8, !dbg !2506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2506

sw.bb144:                                         ; preds = %for.end108
  %113 = load i64, ptr %start2, align 8, !dbg !2507
  %114 = load i64, ptr %end2, align 8, !dbg !2508
  %cmp145 = icmp sge i64 %113, %114, !dbg !2509
  br i1 %cmp145, label %land.lhs.true147, label %cond.false151, !dbg !2510

land.lhs.true147:                                 ; preds = %sw.bb144
  %115 = load i64, ptr %start1, align 8, !dbg !2511
  %116 = load i64, ptr %end1, align 8, !dbg !2512
  %cmp148 = icmp slt i64 %115, %116, !dbg !2513
  br i1 %cmp148, label %cond.true150, label %cond.false151, !dbg !2507

cond.true150:                                     ; preds = %land.lhs.true147
  %117 = load ptr, ptr %fixnum, align 8, !dbg !2514
  br label %cond.end152, !dbg !2507

cond.false151:                                    ; preds = %land.lhs.true147, %sw.bb144
  br label %cond.end152, !dbg !2507

cond.end152:                                      ; preds = %cond.false151, %cond.true150
  %cond153 = phi ptr [ %117, %cond.true150 ], [ inttoptr (i64 1 to ptr), %cond.false151 ], !dbg !2507
  store ptr %cond153, ptr %retval, align 8, !dbg !2515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2515

sw.epilog154:                                     ; preds = %for.end108
  store ptr inttoptr (i64 1 to ptr), ptr %retval, align 8, !dbg !2516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2516

cleanup:                                          ; preds = %sw.epilog154, %cond.end152, %cond.end142, %cond.end135, %cond.end125, %cond.end118, %cond.end100, %cond.end93, %sw.bb87, %cond.end85, %cond.end78, %for.end, %if.then18, %if.then5, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %end2) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %start2) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %end1) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %start1) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %string2) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %string1) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixnum) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp2) #11, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp1) #11, !dbg !2517
  %118 = load ptr, ptr %retval, align 8, !dbg !2517
  ret ptr %118, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringLess(ptr noundef %builtin) #0 !dbg !2518 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2522
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 1, i32 noundef 0), !dbg !2523
  ret ptr %call, !dbg !2524
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringGreater(ptr noundef %builtin) #0 !dbg !2525 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2527, metadata !DIExpression()), !dbg !2528
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2529
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 5, i32 noundef 0), !dbg !2530
  ret ptr %call, !dbg !2531
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringLessEqual(ptr noundef %builtin) #0 !dbg !2532 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2534, metadata !DIExpression()), !dbg !2535
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2536
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 2, i32 noundef 0), !dbg !2537
  ret ptr %call, !dbg !2538
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringGreaterEqual(ptr noundef %builtin) #0 !dbg !2539 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2541, metadata !DIExpression()), !dbg !2542
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2543
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 4, i32 noundef 0), !dbg !2544
  ret ptr %call, !dbg !2545
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringNotEqual_(ptr noundef %builtin) #0 !dbg !2546 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2548, metadata !DIExpression()), !dbg !2549
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2550
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 6, i32 noundef 0), !dbg !2551
  ret ptr %call, !dbg !2552
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringEqual(ptr noundef %builtin) #0 !dbg !2553 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2555, metadata !DIExpression()), !dbg !2556
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2557
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 3, i32 noundef 1), !dbg !2558
  ret ptr %call, !dbg !2559
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringLessp(ptr noundef %builtin) #0 !dbg !2560 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2564
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 1, i32 noundef 1), !dbg !2565
  ret ptr %call, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringGreaterp(ptr noundef %builtin) #0 !dbg !2567 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2569, metadata !DIExpression()), !dbg !2570
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2571
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 5, i32 noundef 1), !dbg !2572
  ret ptr %call, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringNotGreaterp(ptr noundef %builtin) #0 !dbg !2574 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2578
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 2, i32 noundef 1), !dbg !2579
  ret ptr %call, !dbg !2580
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringNotLessp(ptr noundef %builtin) #0 !dbg !2581 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2585
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 4, i32 noundef 1), !dbg !2586
  ret ptr %call, !dbg !2587
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringNotEqual(ptr noundef %builtin) #0 !dbg !2588 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2590, metadata !DIExpression()), !dbg !2591
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2592
  %call = call ptr @LispStringCompare(ptr noundef %0, i32 noundef 6, i32 noundef 1), !dbg !2593
  ret ptr %call, !dbg !2594
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringUpcase(ptr noundef %builtin) #0 !dbg !2595 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2599
  %call = call ptr @LispStringUpcase(ptr noundef %0, i32 noundef 0), !dbg !2600
  ret ptr %call, !dbg !2601
}

; Function Attrs: nounwind uwtable
define internal ptr @LispStringUpcase(ptr noundef %builtin, i32 noundef %inplace) #0 !dbg !2602 {
entry:
  %retval = alloca ptr, align 8
  %builtin.addr = alloca ptr, align 8
  %inplace.addr = alloca i32, align 4
  %result = alloca ptr, align 8
  %string = alloca ptr, align 8
  %newstring = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %length = alloca i64, align 8
  %offset = alloca i64, align 8
  %ostring = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res56 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2604, metadata !DIExpression()), !dbg !2625
  store i32 %inplace, ptr %inplace.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %inplace.addr, metadata !2605, metadata !DIExpression()), !dbg !2626
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !2627
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2606, metadata !DIExpression()), !dbg !2628
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !2629
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !2607, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 8, ptr %newstring) #11, !dbg !2629
  tail call void @llvm.dbg.declare(metadata ptr %newstring, metadata !2608, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !2609, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !2610, metadata !DIExpression()), !dbg !2634
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !2611, metadata !DIExpression()), !dbg !2635
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !2632
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !2612, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !2637
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !2613, metadata !DIExpression()), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !2637
  tail call void @llvm.dbg.declare(metadata ptr %ostart, metadata !2614, metadata !DIExpression()), !dbg !2639
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !2637
  tail call void @llvm.dbg.declare(metadata ptr %oend, metadata !2615, metadata !DIExpression()), !dbg !2640
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !2641
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2641
  %add = add nsw i32 %1, 2, !dbg !2641
  %idxprom = sext i32 %add to i64, !dbg !2641
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !2641
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2641
  store ptr %2, ptr %oend, align 8, !dbg !2642
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !2643
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2643
  %add1 = add nsw i32 %4, 1, !dbg !2643
  %idxprom2 = sext i32 %add1 to i64, !dbg !2643
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !2643
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !2643
  store ptr %5, ptr %ostart, align 8, !dbg !2644
  %6 = load ptr, ptr @lisp__data, align 8, !dbg !2645
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2645
  %add4 = add nsw i32 %7, 0, !dbg !2645
  %idxprom5 = sext i32 %add4 to i64, !dbg !2645
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5, !dbg !2645
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !2645
  store ptr %8, ptr %ostring, align 8, !dbg !2646
  %9 = load ptr, ptr %ostring, align 8, !dbg !2647
  %10 = ptrtoint ptr %9 to i64, !dbg !2647
  %and = and i64 %10, 1, !dbg !2647
  %cmp = icmp eq i64 %and, 0, !dbg !2647
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !2647

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %ostring, align 8, !dbg !2647
  %bf.load = load i16, ptr %11, align 8, !dbg !2647
  %bf.clear = and i16 %bf.load, 63, !dbg !2647
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2647
  %cmp7 = icmp eq i32 %bf.cast, 18, !dbg !2647
  br i1 %cmp7, label %if.end, label %if.then, !dbg !2649

if.then:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %builtin.addr, align 8, !dbg !2647
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %12, i32 0, i32 6, !dbg !2647
  %13 = load ptr, ptr %symbol, align 8, !dbg !2647
  %data = getelementptr inbounds %struct._LispObj, ptr %13, i32 0, i32 1, !dbg !2647
  %14 = load ptr, ptr %data, align 8, !dbg !2647
  %key = getelementptr inbounds %struct._LispAtom, ptr %14, i32 0, i32 0, !dbg !2647
  %15 = load ptr, ptr %key, align 8, !dbg !2647
  %value = getelementptr inbounds %struct._hash_key, ptr %15, i32 0, i32 0, !dbg !2647
  %16 = load ptr, ptr %value, align 8, !dbg !2647
  %17 = load ptr, ptr %ostring, align 8, !dbg !2647
  %call = call ptr @LispStrObj(ptr noundef %17), !dbg !2647
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %16, ptr noundef %call), !dbg !2647
  br label %if.end, !dbg !2647

if.end:                                           ; preds = %if.then, %land.lhs.true
  %18 = load ptr, ptr %builtin.addr, align 8, !dbg !2650
  %19 = load ptr, ptr %ostring, align 8, !dbg !2651
  %20 = load ptr, ptr %ostart, align 8, !dbg !2652
  %21 = load ptr, ptr %oend, align 8, !dbg !2653
  call void @LispCheckSequenceStartEnd(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %start, ptr noundef %end, ptr noundef %offset), !dbg !2654
  %22 = load ptr, ptr %ostring, align 8, !dbg !2655
  store ptr %22, ptr %result, align 8, !dbg !2656
  %23 = load ptr, ptr %ostring, align 8, !dbg !2657
  %data8 = getelementptr inbounds %struct._LispObj, ptr %23, i32 0, i32 1, !dbg !2657
  %string9 = getelementptr inbounds %struct.anon, ptr %data8, i32 0, i32 0, !dbg !2657
  %24 = load ptr, ptr %string9, align 8, !dbg !2657
  store ptr %24, ptr %string, align 8, !dbg !2658
  %25 = load ptr, ptr %ostring, align 8, !dbg !2659
  %data10 = getelementptr inbounds %struct._LispObj, ptr %25, i32 0, i32 1, !dbg !2659
  %length11 = getelementptr inbounds %struct.anon, ptr %data10, i32 0, i32 1, !dbg !2659
  %26 = load i64, ptr %length11, align 8, !dbg !2659
  store i64 %26, ptr %length, align 8, !dbg !2660
  %27 = load i64, ptr %start, align 8, !dbg !2661
  store i64 %27, ptr %offset, align 8, !dbg !2662
  br label %for.cond, !dbg !2663

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i64, ptr %offset, align 8, !dbg !2664
  %29 = load i64, ptr %end, align 8, !dbg !2665
  %cmp12 = icmp slt i64 %28, %29, !dbg !2666
  br i1 %cmp12, label %for.body, label %for.end, !dbg !2667

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %string, align 8, !dbg !2668
  %31 = load i64, ptr %offset, align 8, !dbg !2669
  %arrayidx13 = getelementptr inbounds i8, ptr %30, i64 %31, !dbg !2668
  %32 = load i8, ptr %arrayidx13, align 1, !dbg !2668
  %conv = sext i8 %32 to i32, !dbg !2668
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11, !dbg !2670
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !2616, metadata !DIExpression()), !dbg !2670
  %call14 = call ptr @__ctype_toupper_loc() #12, !dbg !2671
  %33 = load ptr, ptr %call14, align 8, !dbg !2671
  %34 = load ptr, ptr %string, align 8, !dbg !2671
  %35 = load i64, ptr %offset, align 8, !dbg !2671
  %arrayidx15 = getelementptr inbounds i8, ptr %34, i64 %35, !dbg !2671
  %36 = load i8, ptr %arrayidx15, align 1, !dbg !2671
  %conv16 = sext i8 %36 to i32, !dbg !2671
  %idxprom17 = sext i32 %conv16 to i64, !dbg !2671
  %arrayidx18 = getelementptr inbounds i32, ptr %33, i64 %idxprom17, !dbg !2671
  %37 = load i32, ptr %arrayidx18, align 4, !dbg !2671
  store i32 %37, ptr %__res, align 4, !dbg !2671
  %38 = load i32, ptr %__res, align 4, !dbg !2670
  store i32 %38, ptr %tmp, align 4, !dbg !2671
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11, !dbg !2673
  %39 = load i32, ptr %tmp, align 4, !dbg !2670
  %cmp19 = icmp ne i32 %conv, %39, !dbg !2674
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2675

if.then21:                                        ; preds = %for.body
  br label %for.end, !dbg !2676

if.end22:                                         ; preds = %for.body
  br label %for.inc, !dbg !2673

for.inc:                                          ; preds = %if.end22
  %40 = load i64, ptr %offset, align 8, !dbg !2677
  %inc = add nsw i64 %40, 1, !dbg !2677
  store i64 %inc, ptr %offset, align 8, !dbg !2677
  br label %for.cond, !dbg !2678, !llvm.loop !2679

for.end:                                          ; preds = %if.then21, %for.cond
  %41 = load i64, ptr %offset, align 8, !dbg !2681
  %42 = load i64, ptr %end, align 8, !dbg !2683
  %cmp23 = icmp sge i64 %41, %42, !dbg !2684
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2685

if.then25:                                        ; preds = %for.end
  %43 = load ptr, ptr %result, align 8, !dbg !2686
  store ptr %43, ptr %retval, align 8, !dbg !2687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2687

if.end26:                                         ; preds = %for.end
  %44 = load i32, ptr %inplace.addr, align 4, !dbg !2688
  %tobool = icmp ne i32 %44, 0, !dbg !2688
  br i1 %tobool, label %if.then27, label %if.else, !dbg !2690

if.then27:                                        ; preds = %if.end26
  %45 = load ptr, ptr %ostring, align 8, !dbg !2691
  %data28 = getelementptr inbounds %struct._LispObj, ptr %45, i32 0, i32 1, !dbg !2691
  %writable = getelementptr inbounds %struct.anon, ptr %data28, i32 0, i32 2, !dbg !2691
  %bf.load29 = load i8, ptr %writable, align 8, !dbg !2691
  %bf.clear30 = and i8 %bf.load29, 1, !dbg !2691
  %bf.cast31 = zext i8 %bf.clear30 to i32, !dbg !2691
  %tobool32 = icmp ne i32 %bf.cast31, 0, !dbg !2691
  br i1 %tobool32, label %if.end39, label %if.then33, !dbg !2694

if.then33:                                        ; preds = %if.then27
  %46 = load ptr, ptr %builtin.addr, align 8, !dbg !2691
  %symbol34 = getelementptr inbounds %struct._LispBuiltin, ptr %46, i32 0, i32 6, !dbg !2691
  %47 = load ptr, ptr %symbol34, align 8, !dbg !2691
  %data35 = getelementptr inbounds %struct._LispObj, ptr %47, i32 0, i32 1, !dbg !2691
  %48 = load ptr, ptr %data35, align 8, !dbg !2691
  %key36 = getelementptr inbounds %struct._LispAtom, ptr %48, i32 0, i32 0, !dbg !2691
  %49 = load ptr, ptr %key36, align 8, !dbg !2691
  %value37 = getelementptr inbounds %struct._hash_key, ptr %49, i32 0, i32 0, !dbg !2691
  %50 = load ptr, ptr %value37, align 8, !dbg !2691
  %51 = load ptr, ptr %ostring, align 8, !dbg !2691
  %call38 = call ptr @LispStrObj(ptr noundef %51), !dbg !2691
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.4, ptr noundef %50, ptr noundef %call38), !dbg !2691
  br label %if.end39, !dbg !2691

if.end39:                                         ; preds = %if.then33, %if.then27
  %52 = load ptr, ptr %string, align 8, !dbg !2695
  store ptr %52, ptr %newstring, align 8, !dbg !2696
  br label %if.end51, !dbg !2697

if.else:                                          ; preds = %if.end26
  %53 = load i64, ptr %length, align 8, !dbg !2698
  %add40 = add nsw i64 %53, 1, !dbg !2700
  %call41 = call ptr @LispMalloc(i64 noundef %add40), !dbg !2701
  store ptr %call41, ptr %newstring, align 8, !dbg !2702
  %54 = load i64, ptr %offset, align 8, !dbg !2703
  %tobool42 = icmp ne i64 %54, 0, !dbg !2703
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !2705

if.then43:                                        ; preds = %if.else
  %55 = load ptr, ptr %newstring, align 8, !dbg !2706
  %56 = load ptr, ptr %string, align 8, !dbg !2707
  %57 = load i64, ptr %offset, align 8, !dbg !2708
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %57, i1 false), !dbg !2709
  br label %if.end44, !dbg !2709

if.end44:                                         ; preds = %if.then43, %if.else
  %58 = load i64, ptr %length, align 8, !dbg !2710
  %59 = load i64, ptr %end, align 8, !dbg !2712
  %cmp45 = icmp sgt i64 %58, %59, !dbg !2713
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !2714

if.then47:                                        ; preds = %if.end44
  %60 = load ptr, ptr %newstring, align 8, !dbg !2715
  %61 = load i64, ptr %end, align 8, !dbg !2716
  %add.ptr = getelementptr inbounds i8, ptr %60, i64 %61, !dbg !2717
  %62 = load ptr, ptr %string, align 8, !dbg !2718
  %63 = load i64, ptr %end, align 8, !dbg !2719
  %add.ptr48 = getelementptr inbounds i8, ptr %62, i64 %63, !dbg !2720
  %64 = load i64, ptr %length, align 8, !dbg !2721
  %65 = load i64, ptr %end, align 8, !dbg !2722
  %sub = sub nsw i64 %64, %65, !dbg !2723
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr48, i64 %sub, i1 false), !dbg !2724
  br label %if.end49, !dbg !2724

if.end49:                                         ; preds = %if.then47, %if.end44
  %66 = load ptr, ptr %newstring, align 8, !dbg !2725
  %67 = load i64, ptr %length, align 8, !dbg !2726
  %arrayidx50 = getelementptr inbounds i8, ptr %66, i64 %67, !dbg !2725
  store i8 0, ptr %arrayidx50, align 1, !dbg !2727
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end39
  br label %for.cond52, !dbg !2728

for.cond52:                                       ; preds = %for.inc65, %if.end51
  %68 = load i64, ptr %offset, align 8, !dbg !2729
  %69 = load i64, ptr %end, align 8, !dbg !2730
  %cmp53 = icmp slt i64 %68, %69, !dbg !2731
  br i1 %cmp53, label %for.body55, label %for.end67, !dbg !2732

for.body55:                                       ; preds = %for.cond52
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res56) #11, !dbg !2733
  tail call void @llvm.dbg.declare(metadata ptr %__res56, metadata !2621, metadata !DIExpression()), !dbg !2733
  %call57 = call ptr @__ctype_toupper_loc() #12, !dbg !2734
  %70 = load ptr, ptr %call57, align 8, !dbg !2734
  %71 = load ptr, ptr %string, align 8, !dbg !2734
  %72 = load i64, ptr %offset, align 8, !dbg !2734
  %arrayidx58 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2734
  %73 = load i8, ptr %arrayidx58, align 1, !dbg !2734
  %conv59 = sext i8 %73 to i32, !dbg !2734
  %idxprom60 = sext i32 %conv59 to i64, !dbg !2734
  %arrayidx61 = getelementptr inbounds i32, ptr %70, i64 %idxprom60, !dbg !2734
  %74 = load i32, ptr %arrayidx61, align 4, !dbg !2734
  store i32 %74, ptr %__res56, align 4, !dbg !2734
  %75 = load i32, ptr %__res56, align 4, !dbg !2733
  store i32 %75, ptr %tmp62, align 4, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res56) #11, !dbg !2736
  %76 = load i32, ptr %tmp62, align 4, !dbg !2733
  %conv63 = trunc i32 %76 to i8, !dbg !2736
  %77 = load ptr, ptr %newstring, align 8, !dbg !2737
  %78 = load i64, ptr %offset, align 8, !dbg !2738
  %arrayidx64 = getelementptr inbounds i8, ptr %77, i64 %78, !dbg !2737
  store i8 %conv63, ptr %arrayidx64, align 1, !dbg !2739
  br label %for.inc65, !dbg !2737

for.inc65:                                        ; preds = %for.body55
  %79 = load i64, ptr %offset, align 8, !dbg !2740
  %inc66 = add nsw i64 %79, 1, !dbg !2740
  store i64 %inc66, ptr %offset, align 8, !dbg !2740
  br label %for.cond52, !dbg !2741, !llvm.loop !2742

for.end67:                                        ; preds = %for.cond52
  %80 = load i32, ptr %inplace.addr, align 4, !dbg !2744
  %tobool68 = icmp ne i32 %80, 0, !dbg !2744
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !2746

if.then69:                                        ; preds = %for.end67
  %81 = load ptr, ptr %newstring, align 8, !dbg !2747
  %82 = load i64, ptr %length, align 8, !dbg !2747
  %call70 = call ptr @LispNewStringAlloced(ptr noundef %81, i64 noundef %82), !dbg !2747
  store ptr %call70, ptr %result, align 8, !dbg !2748
  br label %if.end71, !dbg !2749

if.end71:                                         ; preds = %if.then69, %for.end67
  %83 = load ptr, ptr %result, align 8, !dbg !2750
  store ptr %83, ptr %retval, align 8, !dbg !2751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2751

cleanup:                                          ; preds = %if.end71, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %newstring) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !2752
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !2752
  %84 = load ptr, ptr %retval, align 8, !dbg !2752
  ret ptr %84, !dbg !2752
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_NstringUpcase(ptr noundef %builtin) #0 !dbg !2753 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2757
  %call = call ptr @LispStringUpcase(ptr noundef %0, i32 noundef 1), !dbg !2758
  ret ptr %call, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringDowncase(ptr noundef %builtin) #0 !dbg !2760 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2762, metadata !DIExpression()), !dbg !2763
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2764
  %call = call ptr @LispStringDowncase(ptr noundef %0, i32 noundef 0), !dbg !2765
  ret ptr %call, !dbg !2766
}

; Function Attrs: nounwind uwtable
define internal ptr @LispStringDowncase(ptr noundef %builtin, i32 noundef %inplace) #0 !dbg !2767 {
entry:
  %retval = alloca ptr, align 8
  %builtin.addr = alloca ptr, align 8
  %inplace.addr = alloca i32, align 4
  %result = alloca ptr, align 8
  %string = alloca ptr, align 8
  %newstring = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %length = alloca i64, align 8
  %offset = alloca i64, align 8
  %ostring = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res56 = alloca i32, align 4
  %tmp62 = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2769, metadata !DIExpression()), !dbg !2790
  store i32 %inplace, ptr %inplace.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %inplace.addr, metadata !2770, metadata !DIExpression()), !dbg !2791
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !2792
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2771, metadata !DIExpression()), !dbg !2793
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !2794
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !2772, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 8, ptr %newstring) #11, !dbg !2794
  tail call void @llvm.dbg.declare(metadata ptr %newstring, metadata !2773, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !2797
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !2774, metadata !DIExpression()), !dbg !2798
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !2797
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !2775, metadata !DIExpression()), !dbg !2799
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !2797
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !2776, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !2797
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !2777, metadata !DIExpression()), !dbg !2801
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !2802
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !2778, metadata !DIExpression()), !dbg !2803
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !2802
  tail call void @llvm.dbg.declare(metadata ptr %ostart, metadata !2779, metadata !DIExpression()), !dbg !2804
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !2802
  tail call void @llvm.dbg.declare(metadata ptr %oend, metadata !2780, metadata !DIExpression()), !dbg !2805
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !2806
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2806
  %add = add nsw i32 %1, 2, !dbg !2806
  %idxprom = sext i32 %add to i64, !dbg !2806
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !2806
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2806
  store ptr %2, ptr %oend, align 8, !dbg !2807
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !2808
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2808
  %add1 = add nsw i32 %4, 1, !dbg !2808
  %idxprom2 = sext i32 %add1 to i64, !dbg !2808
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !2808
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !2808
  store ptr %5, ptr %ostart, align 8, !dbg !2809
  %6 = load ptr, ptr @lisp__data, align 8, !dbg !2810
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2810
  %add4 = add nsw i32 %7, 0, !dbg !2810
  %idxprom5 = sext i32 %add4 to i64, !dbg !2810
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5, !dbg !2810
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !2810
  store ptr %8, ptr %ostring, align 8, !dbg !2811
  %9 = load ptr, ptr %ostring, align 8, !dbg !2812
  %10 = ptrtoint ptr %9 to i64, !dbg !2812
  %and = and i64 %10, 1, !dbg !2812
  %cmp = icmp eq i64 %and, 0, !dbg !2812
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !2812

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %ostring, align 8, !dbg !2812
  %bf.load = load i16, ptr %11, align 8, !dbg !2812
  %bf.clear = and i16 %bf.load, 63, !dbg !2812
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2812
  %cmp7 = icmp eq i32 %bf.cast, 18, !dbg !2812
  br i1 %cmp7, label %if.end, label %if.then, !dbg !2814

if.then:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %builtin.addr, align 8, !dbg !2812
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %12, i32 0, i32 6, !dbg !2812
  %13 = load ptr, ptr %symbol, align 8, !dbg !2812
  %data = getelementptr inbounds %struct._LispObj, ptr %13, i32 0, i32 1, !dbg !2812
  %14 = load ptr, ptr %data, align 8, !dbg !2812
  %key = getelementptr inbounds %struct._LispAtom, ptr %14, i32 0, i32 0, !dbg !2812
  %15 = load ptr, ptr %key, align 8, !dbg !2812
  %value = getelementptr inbounds %struct._hash_key, ptr %15, i32 0, i32 0, !dbg !2812
  %16 = load ptr, ptr %value, align 8, !dbg !2812
  %17 = load ptr, ptr %ostring, align 8, !dbg !2812
  %call = call ptr @LispStrObj(ptr noundef %17), !dbg !2812
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %16, ptr noundef %call), !dbg !2812
  br label %if.end, !dbg !2812

if.end:                                           ; preds = %if.then, %land.lhs.true
  %18 = load ptr, ptr %builtin.addr, align 8, !dbg !2815
  %19 = load ptr, ptr %ostring, align 8, !dbg !2816
  %20 = load ptr, ptr %ostart, align 8, !dbg !2817
  %21 = load ptr, ptr %oend, align 8, !dbg !2818
  call void @LispCheckSequenceStartEnd(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %start, ptr noundef %end, ptr noundef %offset), !dbg !2819
  %22 = load ptr, ptr %ostring, align 8, !dbg !2820
  store ptr %22, ptr %result, align 8, !dbg !2821
  %23 = load ptr, ptr %ostring, align 8, !dbg !2822
  %data8 = getelementptr inbounds %struct._LispObj, ptr %23, i32 0, i32 1, !dbg !2822
  %string9 = getelementptr inbounds %struct.anon, ptr %data8, i32 0, i32 0, !dbg !2822
  %24 = load ptr, ptr %string9, align 8, !dbg !2822
  store ptr %24, ptr %string, align 8, !dbg !2823
  %25 = load ptr, ptr %ostring, align 8, !dbg !2824
  %data10 = getelementptr inbounds %struct._LispObj, ptr %25, i32 0, i32 1, !dbg !2824
  %length11 = getelementptr inbounds %struct.anon, ptr %data10, i32 0, i32 1, !dbg !2824
  %26 = load i64, ptr %length11, align 8, !dbg !2824
  store i64 %26, ptr %length, align 8, !dbg !2825
  %27 = load i64, ptr %start, align 8, !dbg !2826
  store i64 %27, ptr %offset, align 8, !dbg !2827
  br label %for.cond, !dbg !2828

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i64, ptr %offset, align 8, !dbg !2829
  %29 = load i64, ptr %end, align 8, !dbg !2830
  %cmp12 = icmp slt i64 %28, %29, !dbg !2831
  br i1 %cmp12, label %for.body, label %for.end, !dbg !2832

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %string, align 8, !dbg !2833
  %31 = load i64, ptr %offset, align 8, !dbg !2834
  %arrayidx13 = getelementptr inbounds i8, ptr %30, i64 %31, !dbg !2833
  %32 = load i8, ptr %arrayidx13, align 1, !dbg !2833
  %conv = sext i8 %32 to i32, !dbg !2833
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11, !dbg !2835
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !2781, metadata !DIExpression()), !dbg !2835
  %call14 = call ptr @__ctype_tolower_loc() #12, !dbg !2836
  %33 = load ptr, ptr %call14, align 8, !dbg !2836
  %34 = load ptr, ptr %string, align 8, !dbg !2836
  %35 = load i64, ptr %offset, align 8, !dbg !2836
  %arrayidx15 = getelementptr inbounds i8, ptr %34, i64 %35, !dbg !2836
  %36 = load i8, ptr %arrayidx15, align 1, !dbg !2836
  %conv16 = sext i8 %36 to i32, !dbg !2836
  %idxprom17 = sext i32 %conv16 to i64, !dbg !2836
  %arrayidx18 = getelementptr inbounds i32, ptr %33, i64 %idxprom17, !dbg !2836
  %37 = load i32, ptr %arrayidx18, align 4, !dbg !2836
  store i32 %37, ptr %__res, align 4, !dbg !2836
  %38 = load i32, ptr %__res, align 4, !dbg !2835
  store i32 %38, ptr %tmp, align 4, !dbg !2836
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11, !dbg !2838
  %39 = load i32, ptr %tmp, align 4, !dbg !2835
  %cmp19 = icmp ne i32 %conv, %39, !dbg !2839
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2840

if.then21:                                        ; preds = %for.body
  br label %for.end, !dbg !2841

if.end22:                                         ; preds = %for.body
  br label %for.inc, !dbg !2838

for.inc:                                          ; preds = %if.end22
  %40 = load i64, ptr %offset, align 8, !dbg !2842
  %inc = add nsw i64 %40, 1, !dbg !2842
  store i64 %inc, ptr %offset, align 8, !dbg !2842
  br label %for.cond, !dbg !2843, !llvm.loop !2844

for.end:                                          ; preds = %if.then21, %for.cond
  %41 = load i64, ptr %offset, align 8, !dbg !2846
  %42 = load i64, ptr %end, align 8, !dbg !2848
  %cmp23 = icmp sge i64 %41, %42, !dbg !2849
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2850

if.then25:                                        ; preds = %for.end
  %43 = load ptr, ptr %result, align 8, !dbg !2851
  store ptr %43, ptr %retval, align 8, !dbg !2852
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2852

if.end26:                                         ; preds = %for.end
  %44 = load i32, ptr %inplace.addr, align 4, !dbg !2853
  %tobool = icmp ne i32 %44, 0, !dbg !2853
  br i1 %tobool, label %if.then27, label %if.else, !dbg !2855

if.then27:                                        ; preds = %if.end26
  %45 = load ptr, ptr %ostring, align 8, !dbg !2856
  %data28 = getelementptr inbounds %struct._LispObj, ptr %45, i32 0, i32 1, !dbg !2856
  %writable = getelementptr inbounds %struct.anon, ptr %data28, i32 0, i32 2, !dbg !2856
  %bf.load29 = load i8, ptr %writable, align 8, !dbg !2856
  %bf.clear30 = and i8 %bf.load29, 1, !dbg !2856
  %bf.cast31 = zext i8 %bf.clear30 to i32, !dbg !2856
  %tobool32 = icmp ne i32 %bf.cast31, 0, !dbg !2856
  br i1 %tobool32, label %if.end39, label %if.then33, !dbg !2859

if.then33:                                        ; preds = %if.then27
  %46 = load ptr, ptr %builtin.addr, align 8, !dbg !2856
  %symbol34 = getelementptr inbounds %struct._LispBuiltin, ptr %46, i32 0, i32 6, !dbg !2856
  %47 = load ptr, ptr %symbol34, align 8, !dbg !2856
  %data35 = getelementptr inbounds %struct._LispObj, ptr %47, i32 0, i32 1, !dbg !2856
  %48 = load ptr, ptr %data35, align 8, !dbg !2856
  %key36 = getelementptr inbounds %struct._LispAtom, ptr %48, i32 0, i32 0, !dbg !2856
  %49 = load ptr, ptr %key36, align 8, !dbg !2856
  %value37 = getelementptr inbounds %struct._hash_key, ptr %49, i32 0, i32 0, !dbg !2856
  %50 = load ptr, ptr %value37, align 8, !dbg !2856
  %51 = load ptr, ptr %ostring, align 8, !dbg !2856
  %call38 = call ptr @LispStrObj(ptr noundef %51), !dbg !2856
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.4, ptr noundef %50, ptr noundef %call38), !dbg !2856
  br label %if.end39, !dbg !2856

if.end39:                                         ; preds = %if.then33, %if.then27
  %52 = load ptr, ptr %string, align 8, !dbg !2860
  store ptr %52, ptr %newstring, align 8, !dbg !2861
  br label %if.end51, !dbg !2862

if.else:                                          ; preds = %if.end26
  %53 = load i64, ptr %length, align 8, !dbg !2863
  %add40 = add nsw i64 %53, 1, !dbg !2865
  %call41 = call ptr @LispMalloc(i64 noundef %add40), !dbg !2866
  store ptr %call41, ptr %newstring, align 8, !dbg !2867
  %54 = load i64, ptr %offset, align 8, !dbg !2868
  %tobool42 = icmp ne i64 %54, 0, !dbg !2868
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !2870

if.then43:                                        ; preds = %if.else
  %55 = load ptr, ptr %newstring, align 8, !dbg !2871
  %56 = load ptr, ptr %string, align 8, !dbg !2872
  %57 = load i64, ptr %offset, align 8, !dbg !2873
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %56, i64 %57, i1 false), !dbg !2874
  br label %if.end44, !dbg !2874

if.end44:                                         ; preds = %if.then43, %if.else
  %58 = load i64, ptr %length, align 8, !dbg !2875
  %59 = load i64, ptr %end, align 8, !dbg !2877
  %cmp45 = icmp sgt i64 %58, %59, !dbg !2878
  br i1 %cmp45, label %if.then47, label %if.end49, !dbg !2879

if.then47:                                        ; preds = %if.end44
  %60 = load ptr, ptr %newstring, align 8, !dbg !2880
  %61 = load i64, ptr %end, align 8, !dbg !2881
  %add.ptr = getelementptr inbounds i8, ptr %60, i64 %61, !dbg !2882
  %62 = load ptr, ptr %string, align 8, !dbg !2883
  %63 = load i64, ptr %end, align 8, !dbg !2884
  %add.ptr48 = getelementptr inbounds i8, ptr %62, i64 %63, !dbg !2885
  %64 = load i64, ptr %length, align 8, !dbg !2886
  %65 = load i64, ptr %end, align 8, !dbg !2887
  %sub = sub nsw i64 %64, %65, !dbg !2888
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr48, i64 %sub, i1 false), !dbg !2889
  br label %if.end49, !dbg !2889

if.end49:                                         ; preds = %if.then47, %if.end44
  %66 = load ptr, ptr %newstring, align 8, !dbg !2890
  %67 = load i64, ptr %length, align 8, !dbg !2891
  %arrayidx50 = getelementptr inbounds i8, ptr %66, i64 %67, !dbg !2890
  store i8 0, ptr %arrayidx50, align 1, !dbg !2892
  br label %if.end51

if.end51:                                         ; preds = %if.end49, %if.end39
  br label %for.cond52, !dbg !2893

for.cond52:                                       ; preds = %for.inc65, %if.end51
  %68 = load i64, ptr %offset, align 8, !dbg !2894
  %69 = load i64, ptr %end, align 8, !dbg !2895
  %cmp53 = icmp slt i64 %68, %69, !dbg !2896
  br i1 %cmp53, label %for.body55, label %for.end67, !dbg !2897

for.body55:                                       ; preds = %for.cond52
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res56) #11, !dbg !2898
  tail call void @llvm.dbg.declare(metadata ptr %__res56, metadata !2786, metadata !DIExpression()), !dbg !2898
  %call57 = call ptr @__ctype_tolower_loc() #12, !dbg !2899
  %70 = load ptr, ptr %call57, align 8, !dbg !2899
  %71 = load ptr, ptr %string, align 8, !dbg !2899
  %72 = load i64, ptr %offset, align 8, !dbg !2899
  %arrayidx58 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2899
  %73 = load i8, ptr %arrayidx58, align 1, !dbg !2899
  %conv59 = sext i8 %73 to i32, !dbg !2899
  %idxprom60 = sext i32 %conv59 to i64, !dbg !2899
  %arrayidx61 = getelementptr inbounds i32, ptr %70, i64 %idxprom60, !dbg !2899
  %74 = load i32, ptr %arrayidx61, align 4, !dbg !2899
  store i32 %74, ptr %__res56, align 4, !dbg !2899
  %75 = load i32, ptr %__res56, align 4, !dbg !2898
  store i32 %75, ptr %tmp62, align 4, !dbg !2899
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res56) #11, !dbg !2901
  %76 = load i32, ptr %tmp62, align 4, !dbg !2898
  %conv63 = trunc i32 %76 to i8, !dbg !2901
  %77 = load ptr, ptr %newstring, align 8, !dbg !2902
  %78 = load i64, ptr %offset, align 8, !dbg !2903
  %arrayidx64 = getelementptr inbounds i8, ptr %77, i64 %78, !dbg !2902
  store i8 %conv63, ptr %arrayidx64, align 1, !dbg !2904
  br label %for.inc65, !dbg !2902

for.inc65:                                        ; preds = %for.body55
  %79 = load i64, ptr %offset, align 8, !dbg !2905
  %inc66 = add nsw i64 %79, 1, !dbg !2905
  store i64 %inc66, ptr %offset, align 8, !dbg !2905
  br label %for.cond52, !dbg !2906, !llvm.loop !2907

for.end67:                                        ; preds = %for.cond52
  %80 = load i32, ptr %inplace.addr, align 4, !dbg !2909
  %tobool68 = icmp ne i32 %80, 0, !dbg !2909
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !2911

if.then69:                                        ; preds = %for.end67
  %81 = load ptr, ptr %newstring, align 8, !dbg !2912
  %82 = load i64, ptr %length, align 8, !dbg !2912
  %call70 = call ptr @LispNewStringAlloced(ptr noundef %81, i64 noundef %82), !dbg !2912
  store ptr %call70, ptr %result, align 8, !dbg !2913
  br label %if.end71, !dbg !2914

if.end71:                                         ; preds = %if.then69, %for.end67
  %83 = load ptr, ptr %result, align 8, !dbg !2915
  store ptr %83, ptr %retval, align 8, !dbg !2916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2916

cleanup:                                          ; preds = %if.end71, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %newstring) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !2917
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !2917
  %84 = load ptr, ptr %retval, align 8, !dbg !2917
  ret ptr %84, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_NstringDowncase(ptr noundef %builtin) #0 !dbg !2918 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2922
  %call = call ptr @LispStringDowncase(ptr noundef %0, i32 noundef 1), !dbg !2923
  ret ptr %call, !dbg !2924
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringCapitalize(ptr noundef %builtin) #0 !dbg !2925 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2927, metadata !DIExpression()), !dbg !2928
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !2929
  %call = call ptr @LispStringCapitalize(ptr noundef %0, i32 noundef 0), !dbg !2930
  ret ptr %call, !dbg !2931
}

; Function Attrs: nounwind uwtable
define internal ptr @LispStringCapitalize(ptr noundef %builtin, i32 noundef %inplace) #0 !dbg !2932 {
entry:
  %retval = alloca ptr, align 8
  %builtin.addr = alloca ptr, align 8
  %inplace.addr = alloca i32, align 4
  %result = alloca ptr, align 8
  %string = alloca ptr, align 8
  %newstring = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %length = alloca i64, align 8
  %offset = alloca i64, align 8
  %upcase = alloca i64, align 8
  %ostring = alloca ptr, align 8
  %ostart = alloca ptr, align 8
  %oend = alloca ptr, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res45 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res98 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %__res117 = alloca i32, align 4
  %tmp123 = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !2934, metadata !DIExpression()), !dbg !2972
  store i32 %inplace, ptr %inplace.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %inplace.addr, metadata !2935, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #11, !dbg !2974
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !2936, metadata !DIExpression()), !dbg !2975
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !2976
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !2937, metadata !DIExpression()), !dbg !2977
  call void @llvm.lifetime.start.p0(i64 8, ptr %newstring) #11, !dbg !2976
  tail call void @llvm.dbg.declare(metadata ptr %newstring, metadata !2938, metadata !DIExpression()), !dbg !2978
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #11, !dbg !2979
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !2939, metadata !DIExpression()), !dbg !2980
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #11, !dbg !2979
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !2940, metadata !DIExpression()), !dbg !2981
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !2979
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !2941, metadata !DIExpression()), !dbg !2982
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !2979
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !2942, metadata !DIExpression()), !dbg !2983
  call void @llvm.lifetime.start.p0(i64 8, ptr %upcase) #11, !dbg !2979
  tail call void @llvm.dbg.declare(metadata ptr %upcase, metadata !2943, metadata !DIExpression()), !dbg !2984
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostring) #11, !dbg !2985
  tail call void @llvm.dbg.declare(metadata ptr %ostring, metadata !2944, metadata !DIExpression()), !dbg !2986
  call void @llvm.lifetime.start.p0(i64 8, ptr %ostart) #11, !dbg !2985
  tail call void @llvm.dbg.declare(metadata ptr %ostart, metadata !2945, metadata !DIExpression()), !dbg !2987
  call void @llvm.lifetime.start.p0(i64 8, ptr %oend) #11, !dbg !2985
  tail call void @llvm.dbg.declare(metadata ptr %oend, metadata !2946, metadata !DIExpression()), !dbg !2988
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !2989
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2989
  %add = add nsw i32 %1, 2, !dbg !2989
  %idxprom = sext i32 %add to i64, !dbg !2989
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !2989
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2989
  store ptr %2, ptr %oend, align 8, !dbg !2990
  %3 = load ptr, ptr @lisp__data, align 8, !dbg !2991
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2991
  %add1 = add nsw i32 %4, 1, !dbg !2991
  %idxprom2 = sext i32 %add1 to i64, !dbg !2991
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %idxprom2, !dbg !2991
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !2991
  store ptr %5, ptr %ostart, align 8, !dbg !2992
  %6 = load ptr, ptr @lisp__data, align 8, !dbg !2993
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !2993
  %add4 = add nsw i32 %7, 0, !dbg !2993
  %idxprom5 = sext i32 %add4 to i64, !dbg !2993
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 %idxprom5, !dbg !2993
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !2993
  store ptr %8, ptr %ostring, align 8, !dbg !2994
  %9 = load ptr, ptr %ostring, align 8, !dbg !2995
  %10 = ptrtoint ptr %9 to i64, !dbg !2995
  %and = and i64 %10, 1, !dbg !2995
  %cmp = icmp eq i64 %and, 0, !dbg !2995
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !2995

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %ostring, align 8, !dbg !2995
  %bf.load = load i16, ptr %11, align 8, !dbg !2995
  %bf.clear = and i16 %bf.load, 63, !dbg !2995
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2995
  %cmp7 = icmp eq i32 %bf.cast, 18, !dbg !2995
  br i1 %cmp7, label %if.end, label %if.then, !dbg !2997

if.then:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %builtin.addr, align 8, !dbg !2995
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %12, i32 0, i32 6, !dbg !2995
  %13 = load ptr, ptr %symbol, align 8, !dbg !2995
  %data = getelementptr inbounds %struct._LispObj, ptr %13, i32 0, i32 1, !dbg !2995
  %14 = load ptr, ptr %data, align 8, !dbg !2995
  %key = getelementptr inbounds %struct._LispAtom, ptr %14, i32 0, i32 0, !dbg !2995
  %15 = load ptr, ptr %key, align 8, !dbg !2995
  %value = getelementptr inbounds %struct._hash_key, ptr %15, i32 0, i32 0, !dbg !2995
  %16 = load ptr, ptr %value, align 8, !dbg !2995
  %17 = load ptr, ptr %ostring, align 8, !dbg !2995
  %call = call ptr @LispStrObj(ptr noundef %17), !dbg !2995
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %16, ptr noundef %call), !dbg !2995
  br label %if.end, !dbg !2995

if.end:                                           ; preds = %if.then, %land.lhs.true
  %18 = load ptr, ptr %builtin.addr, align 8, !dbg !2998
  %19 = load ptr, ptr %ostring, align 8, !dbg !2999
  %20 = load ptr, ptr %ostart, align 8, !dbg !3000
  %21 = load ptr, ptr %oend, align 8, !dbg !3001
  call void @LispCheckSequenceStartEnd(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %start, ptr noundef %end, ptr noundef %offset), !dbg !3002
  %22 = load ptr, ptr %ostring, align 8, !dbg !3003
  store ptr %22, ptr %result, align 8, !dbg !3004
  %23 = load ptr, ptr %ostring, align 8, !dbg !3005
  %data8 = getelementptr inbounds %struct._LispObj, ptr %23, i32 0, i32 1, !dbg !3005
  %string9 = getelementptr inbounds %struct.anon, ptr %data8, i32 0, i32 0, !dbg !3005
  %24 = load ptr, ptr %string9, align 8, !dbg !3005
  store ptr %24, ptr %string, align 8, !dbg !3006
  %25 = load ptr, ptr %ostring, align 8, !dbg !3007
  %data10 = getelementptr inbounds %struct._LispObj, ptr %25, i32 0, i32 1, !dbg !3007
  %length11 = getelementptr inbounds %struct.anon, ptr %data10, i32 0, i32 1, !dbg !3007
  %26 = load i64, ptr %length11, align 8, !dbg !3007
  store i64 %26, ptr %length, align 8, !dbg !3008
  store i64 1, ptr %upcase, align 8, !dbg !3009
  %27 = load i64, ptr %start, align 8, !dbg !3010
  store i64 %27, ptr %offset, align 8, !dbg !3011
  br label %for.cond, !dbg !3012

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i64, ptr %offset, align 8, !dbg !3013
  %29 = load i64, ptr %end, align 8, !dbg !3014
  %cmp12 = icmp slt i64 %28, %29, !dbg !3015
  br i1 %cmp12, label %for.body, label %for.end, !dbg !3016

for.body:                                         ; preds = %for.cond
  %30 = load i64, ptr %upcase, align 8, !dbg !3017
  %tobool = icmp ne i64 %30, 0, !dbg !3017
  br i1 %tobool, label %if.then13, label %if.else, !dbg !3018

if.then13:                                        ; preds = %for.body
  %call14 = call ptr @__ctype_b_loc() #12, !dbg !3019
  %31 = load ptr, ptr %call14, align 8, !dbg !3019
  %32 = load ptr, ptr %string, align 8, !dbg !3019
  %33 = load i64, ptr %offset, align 8, !dbg !3019
  %arrayidx15 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !3019
  %34 = load i8, ptr %arrayidx15, align 1, !dbg !3019
  %conv = sext i8 %34 to i32, !dbg !3019
  %idxprom16 = sext i32 %conv to i64, !dbg !3019
  %arrayidx17 = getelementptr inbounds i16, ptr %31, i64 %idxprom16, !dbg !3019
  %35 = load i16, ptr %arrayidx17, align 2, !dbg !3019
  %conv18 = zext i16 %35 to i32, !dbg !3019
  %and19 = and i32 %conv18, 8, !dbg !3019
  %tobool20 = icmp ne i32 %and19, 0, !dbg !3019
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3021

if.then21:                                        ; preds = %if.then13
  br label %for.inc, !dbg !3022

if.end22:                                         ; preds = %if.then13
  %36 = load ptr, ptr %string, align 8, !dbg !3023
  %37 = load i64, ptr %offset, align 8, !dbg !3024
  %arrayidx23 = getelementptr inbounds i8, ptr %36, i64 %37, !dbg !3023
  %38 = load i8, ptr %arrayidx23, align 1, !dbg !3023
  %conv24 = sext i8 %38 to i32, !dbg !3023
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11, !dbg !3025
  tail call void @llvm.dbg.declare(metadata ptr %__res, metadata !2947, metadata !DIExpression()), !dbg !3025
  %call25 = call ptr @__ctype_toupper_loc() #12, !dbg !3026
  %39 = load ptr, ptr %call25, align 8, !dbg !3026
  %40 = load ptr, ptr %string, align 8, !dbg !3026
  %41 = load i64, ptr %offset, align 8, !dbg !3026
  %arrayidx26 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !3026
  %42 = load i8, ptr %arrayidx26, align 1, !dbg !3026
  %conv27 = sext i8 %42 to i32, !dbg !3026
  %idxprom28 = sext i32 %conv27 to i64, !dbg !3026
  %arrayidx29 = getelementptr inbounds i32, ptr %39, i64 %idxprom28, !dbg !3026
  %43 = load i32, ptr %arrayidx29, align 4, !dbg !3026
  store i32 %43, ptr %__res, align 4, !dbg !3026
  %44 = load i32, ptr %__res, align 4, !dbg !3025
  store i32 %44, ptr %tmp, align 4, !dbg !3026
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11, !dbg !3028
  %45 = load i32, ptr %tmp, align 4, !dbg !3025
  %cmp30 = icmp ne i32 %conv24, %45, !dbg !3029
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !3030

if.then32:                                        ; preds = %if.end22
  br label %for.end, !dbg !3031

if.end33:                                         ; preds = %if.end22
  store i64 0, ptr %upcase, align 8, !dbg !3032
  br label %if.end58, !dbg !3033

if.else:                                          ; preds = %for.body
  %call34 = call ptr @__ctype_b_loc() #12, !dbg !3034
  %46 = load ptr, ptr %call34, align 8, !dbg !3034
  %47 = load ptr, ptr %string, align 8, !dbg !3034
  %48 = load i64, ptr %offset, align 8, !dbg !3034
  %arrayidx35 = getelementptr inbounds i8, ptr %47, i64 %48, !dbg !3034
  %49 = load i8, ptr %arrayidx35, align 1, !dbg !3034
  %conv36 = sext i8 %49 to i32, !dbg !3034
  %idxprom37 = sext i32 %conv36 to i64, !dbg !3034
  %arrayidx38 = getelementptr inbounds i16, ptr %46, i64 %idxprom37, !dbg !3034
  %50 = load i16, ptr %arrayidx38, align 2, !dbg !3034
  %conv39 = zext i16 %50 to i32, !dbg !3034
  %and40 = and i32 %conv39, 8, !dbg !3034
  %tobool41 = icmp ne i32 %and40, 0, !dbg !3034
  br i1 %tobool41, label %if.then42, label %if.else56, !dbg !3035

if.then42:                                        ; preds = %if.else
  %51 = load ptr, ptr %string, align 8, !dbg !3036
  %52 = load i64, ptr %offset, align 8, !dbg !3037
  %arrayidx43 = getelementptr inbounds i8, ptr %51, i64 %52, !dbg !3036
  %53 = load i8, ptr %arrayidx43, align 1, !dbg !3036
  %conv44 = sext i8 %53 to i32, !dbg !3036
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res45) #11, !dbg !3038
  tail call void @llvm.dbg.declare(metadata ptr %__res45, metadata !2955, metadata !DIExpression()), !dbg !3038
  %call46 = call ptr @__ctype_tolower_loc() #12, !dbg !3039
  %54 = load ptr, ptr %call46, align 8, !dbg !3039
  %55 = load ptr, ptr %string, align 8, !dbg !3039
  %56 = load i64, ptr %offset, align 8, !dbg !3039
  %arrayidx47 = getelementptr inbounds i8, ptr %55, i64 %56, !dbg !3039
  %57 = load i8, ptr %arrayidx47, align 1, !dbg !3039
  %conv48 = sext i8 %57 to i32, !dbg !3039
  %idxprom49 = sext i32 %conv48 to i64, !dbg !3039
  %arrayidx50 = getelementptr inbounds i32, ptr %54, i64 %idxprom49, !dbg !3039
  %58 = load i32, ptr %arrayidx50, align 4, !dbg !3039
  store i32 %58, ptr %__res45, align 4, !dbg !3039
  %59 = load i32, ptr %__res45, align 4, !dbg !3038
  store i32 %59, ptr %tmp51, align 4, !dbg !3039
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res45) #11, !dbg !3041
  %60 = load i32, ptr %tmp51, align 4, !dbg !3038
  %cmp52 = icmp ne i32 %conv44, %60, !dbg !3042
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !3043

if.then54:                                        ; preds = %if.then42
  br label %for.end, !dbg !3044

if.end55:                                         ; preds = %if.then42
  br label %if.end57, !dbg !3045

if.else56:                                        ; preds = %if.else
  store i64 1, ptr %upcase, align 8, !dbg !3046
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.end55
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end33
  br label %for.inc, !dbg !3047

for.inc:                                          ; preds = %if.end58, %if.then21
  %61 = load i64, ptr %offset, align 8, !dbg !3048
  %inc = add nsw i64 %61, 1, !dbg !3048
  store i64 %inc, ptr %offset, align 8, !dbg !3048
  br label %for.cond, !dbg !3049, !llvm.loop !3050

for.end:                                          ; preds = %if.then54, %if.then32, %for.cond
  %62 = load i64, ptr %offset, align 8, !dbg !3052
  %63 = load i64, ptr %end, align 8, !dbg !3054
  %cmp59 = icmp sge i64 %62, %63, !dbg !3055
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !3056

if.then61:                                        ; preds = %for.end
  %64 = load ptr, ptr %result, align 8, !dbg !3057
  store ptr %64, ptr %retval, align 8, !dbg !3058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3058

if.end62:                                         ; preds = %for.end
  %65 = load i32, ptr %inplace.addr, align 4, !dbg !3059
  %tobool63 = icmp ne i32 %65, 0, !dbg !3059
  br i1 %tobool63, label %if.then64, label %if.else77, !dbg !3061

if.then64:                                        ; preds = %if.end62
  %66 = load ptr, ptr %ostring, align 8, !dbg !3062
  %data65 = getelementptr inbounds %struct._LispObj, ptr %66, i32 0, i32 1, !dbg !3062
  %writable = getelementptr inbounds %struct.anon, ptr %data65, i32 0, i32 2, !dbg !3062
  %bf.load66 = load i8, ptr %writable, align 8, !dbg !3062
  %bf.clear67 = and i8 %bf.load66, 1, !dbg !3062
  %bf.cast68 = zext i8 %bf.clear67 to i32, !dbg !3062
  %tobool69 = icmp ne i32 %bf.cast68, 0, !dbg !3062
  br i1 %tobool69, label %if.end76, label %if.then70, !dbg !3065

if.then70:                                        ; preds = %if.then64
  %67 = load ptr, ptr %builtin.addr, align 8, !dbg !3062
  %symbol71 = getelementptr inbounds %struct._LispBuiltin, ptr %67, i32 0, i32 6, !dbg !3062
  %68 = load ptr, ptr %symbol71, align 8, !dbg !3062
  %data72 = getelementptr inbounds %struct._LispObj, ptr %68, i32 0, i32 1, !dbg !3062
  %69 = load ptr, ptr %data72, align 8, !dbg !3062
  %key73 = getelementptr inbounds %struct._LispAtom, ptr %69, i32 0, i32 0, !dbg !3062
  %70 = load ptr, ptr %key73, align 8, !dbg !3062
  %value74 = getelementptr inbounds %struct._hash_key, ptr %70, i32 0, i32 0, !dbg !3062
  %71 = load ptr, ptr %value74, align 8, !dbg !3062
  %72 = load ptr, ptr %ostring, align 8, !dbg !3062
  %call75 = call ptr @LispStrObj(ptr noundef %72), !dbg !3062
  call void (ptr, ...) @LispDestroy(ptr noundef @.str.4, ptr noundef %71, ptr noundef %call75), !dbg !3062
  br label %if.end76, !dbg !3062

if.end76:                                         ; preds = %if.then70, %if.then64
  %73 = load ptr, ptr %string, align 8, !dbg !3066
  store ptr %73, ptr %newstring, align 8, !dbg !3067
  br label %if.end81, !dbg !3068

if.else77:                                        ; preds = %if.end62
  %74 = load i64, ptr %length, align 8, !dbg !3069
  %add78 = add nsw i64 %74, 1, !dbg !3071
  %call79 = call ptr @LispMalloc(i64 noundef %add78), !dbg !3072
  store ptr %call79, ptr %newstring, align 8, !dbg !3073
  %75 = load ptr, ptr %newstring, align 8, !dbg !3074
  %76 = load ptr, ptr %string, align 8, !dbg !3075
  %77 = load i64, ptr %length, align 8, !dbg !3076
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %75, ptr align 1 %76, i64 %77, i1 false), !dbg !3077
  %78 = load ptr, ptr %newstring, align 8, !dbg !3078
  %79 = load i64, ptr %length, align 8, !dbg !3079
  %arrayidx80 = getelementptr inbounds i8, ptr %78, i64 %79, !dbg !3078
  store i8 0, ptr %arrayidx80, align 1, !dbg !3080
  br label %if.end81

if.end81:                                         ; preds = %if.else77, %if.end76
  br label %for.cond82, !dbg !3081

for.cond82:                                       ; preds = %for.inc129, %if.end81
  %80 = load i64, ptr %offset, align 8, !dbg !3082
  %81 = load i64, ptr %end, align 8, !dbg !3083
  %cmp83 = icmp slt i64 %80, %81, !dbg !3084
  br i1 %cmp83, label %for.body85, label %for.end131, !dbg !3085

for.body85:                                       ; preds = %for.cond82
  %82 = load i64, ptr %upcase, align 8, !dbg !3086
  %tobool86 = icmp ne i64 %82, 0, !dbg !3086
  br i1 %tobool86, label %if.then87, label %if.else107, !dbg !3087

if.then87:                                        ; preds = %for.body85
  %call88 = call ptr @__ctype_b_loc() #12, !dbg !3088
  %83 = load ptr, ptr %call88, align 8, !dbg !3088
  %84 = load ptr, ptr %string, align 8, !dbg !3088
  %85 = load i64, ptr %offset, align 8, !dbg !3088
  %arrayidx89 = getelementptr inbounds i8, ptr %84, i64 %85, !dbg !3088
  %86 = load i8, ptr %arrayidx89, align 1, !dbg !3088
  %conv90 = sext i8 %86 to i32, !dbg !3088
  %idxprom91 = sext i32 %conv90 to i64, !dbg !3088
  %arrayidx92 = getelementptr inbounds i16, ptr %83, i64 %idxprom91, !dbg !3088
  %87 = load i16, ptr %arrayidx92, align 2, !dbg !3088
  %conv93 = zext i16 %87 to i32, !dbg !3088
  %and94 = and i32 %conv93, 8, !dbg !3088
  %tobool95 = icmp ne i32 %and94, 0, !dbg !3088
  br i1 %tobool95, label %if.end97, label %if.then96, !dbg !3090

if.then96:                                        ; preds = %if.then87
  br label %for.inc129, !dbg !3091

if.end97:                                         ; preds = %if.then87
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res98) #11, !dbg !3092
  tail call void @llvm.dbg.declare(metadata ptr %__res98, metadata !2961, metadata !DIExpression()), !dbg !3092
  %call99 = call ptr @__ctype_toupper_loc() #12, !dbg !3093
  %88 = load ptr, ptr %call99, align 8, !dbg !3093
  %89 = load ptr, ptr %string, align 8, !dbg !3093
  %90 = load i64, ptr %offset, align 8, !dbg !3093
  %arrayidx100 = getelementptr inbounds i8, ptr %89, i64 %90, !dbg !3093
  %91 = load i8, ptr %arrayidx100, align 1, !dbg !3093
  %conv101 = sext i8 %91 to i32, !dbg !3093
  %idxprom102 = sext i32 %conv101 to i64, !dbg !3093
  %arrayidx103 = getelementptr inbounds i32, ptr %88, i64 %idxprom102, !dbg !3093
  %92 = load i32, ptr %arrayidx103, align 4, !dbg !3093
  store i32 %92, ptr %__res98, align 4, !dbg !3093
  %93 = load i32, ptr %__res98, align 4, !dbg !3092
  store i32 %93, ptr %tmp104, align 4, !dbg !3093
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res98) #11, !dbg !3095
  %94 = load i32, ptr %tmp104, align 4, !dbg !3092
  %conv105 = trunc i32 %94 to i8, !dbg !3095
  %95 = load ptr, ptr %newstring, align 8, !dbg !3096
  %96 = load i64, ptr %offset, align 8, !dbg !3097
  %arrayidx106 = getelementptr inbounds i8, ptr %95, i64 %96, !dbg !3096
  store i8 %conv105, ptr %arrayidx106, align 1, !dbg !3098
  store i64 0, ptr %upcase, align 8, !dbg !3099
  br label %if.end128, !dbg !3100

if.else107:                                       ; preds = %for.body85
  %call108 = call ptr @__ctype_b_loc() #12, !dbg !3101
  %97 = load ptr, ptr %call108, align 8, !dbg !3101
  %98 = load ptr, ptr %newstring, align 8, !dbg !3101
  %99 = load i64, ptr %offset, align 8, !dbg !3101
  %arrayidx109 = getelementptr inbounds i8, ptr %98, i64 %99, !dbg !3101
  %100 = load i8, ptr %arrayidx109, align 1, !dbg !3101
  %conv110 = sext i8 %100 to i32, !dbg !3101
  %idxprom111 = sext i32 %conv110 to i64, !dbg !3101
  %arrayidx112 = getelementptr inbounds i16, ptr %97, i64 %idxprom111, !dbg !3101
  %101 = load i16, ptr %arrayidx112, align 2, !dbg !3101
  %conv113 = zext i16 %101 to i32, !dbg !3101
  %and114 = and i32 %conv113, 8, !dbg !3101
  %tobool115 = icmp ne i32 %and114, 0, !dbg !3101
  br i1 %tobool115, label %if.then116, label %if.else126, !dbg !3102

if.then116:                                       ; preds = %if.else107
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res117) #11, !dbg !3103
  tail call void @llvm.dbg.declare(metadata ptr %__res117, metadata !2968, metadata !DIExpression()), !dbg !3103
  %call118 = call ptr @__ctype_tolower_loc() #12, !dbg !3104
  %102 = load ptr, ptr %call118, align 8, !dbg !3104
  %103 = load ptr, ptr %string, align 8, !dbg !3104
  %104 = load i64, ptr %offset, align 8, !dbg !3104
  %arrayidx119 = getelementptr inbounds i8, ptr %103, i64 %104, !dbg !3104
  %105 = load i8, ptr %arrayidx119, align 1, !dbg !3104
  %conv120 = sext i8 %105 to i32, !dbg !3104
  %idxprom121 = sext i32 %conv120 to i64, !dbg !3104
  %arrayidx122 = getelementptr inbounds i32, ptr %102, i64 %idxprom121, !dbg !3104
  %106 = load i32, ptr %arrayidx122, align 4, !dbg !3104
  store i32 %106, ptr %__res117, align 4, !dbg !3104
  %107 = load i32, ptr %__res117, align 4, !dbg !3103
  store i32 %107, ptr %tmp123, align 4, !dbg !3104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res117) #11, !dbg !3106
  %108 = load i32, ptr %tmp123, align 4, !dbg !3103
  %conv124 = trunc i32 %108 to i8, !dbg !3106
  %109 = load ptr, ptr %newstring, align 8, !dbg !3107
  %110 = load i64, ptr %offset, align 8, !dbg !3108
  %arrayidx125 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3107
  store i8 %conv124, ptr %arrayidx125, align 1, !dbg !3109
  br label %if.end127, !dbg !3107

if.else126:                                       ; preds = %if.else107
  store i64 1, ptr %upcase, align 8, !dbg !3110
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.then116
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end97
  br label %for.inc129, !dbg !3111

for.inc129:                                       ; preds = %if.end128, %if.then96
  %111 = load i64, ptr %offset, align 8, !dbg !3112
  %inc130 = add nsw i64 %111, 1, !dbg !3112
  store i64 %inc130, ptr %offset, align 8, !dbg !3112
  br label %for.cond82, !dbg !3113, !llvm.loop !3114

for.end131:                                       ; preds = %for.cond82
  %112 = load i32, ptr %inplace.addr, align 4, !dbg !3116
  %tobool132 = icmp ne i32 %112, 0, !dbg !3116
  br i1 %tobool132, label %if.end135, label %if.then133, !dbg !3118

if.then133:                                       ; preds = %for.end131
  %113 = load ptr, ptr %newstring, align 8, !dbg !3119
  %114 = load i64, ptr %length, align 8, !dbg !3119
  %call134 = call ptr @LispNewStringAlloced(ptr noundef %113, i64 noundef %114), !dbg !3119
  store ptr %call134, ptr %result, align 8, !dbg !3120
  br label %if.end135, !dbg !3121

if.end135:                                        ; preds = %if.then133, %for.end131
  %115 = load ptr, ptr %result, align 8, !dbg !3122
  store ptr %115, ptr %retval, align 8, !dbg !3123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3123

cleanup:                                          ; preds = %if.end135, %if.then61
  call void @llvm.lifetime.end.p0(i64 8, ptr %oend) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostart) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %ostring) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %upcase) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %newstring) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #11, !dbg !3124
  %116 = load ptr, ptr %retval, align 8, !dbg !3124
  ret ptr %116, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_NstringCapitalize(ptr noundef %builtin) #0 !dbg !3125 {
entry:
  %builtin.addr = alloca ptr, align 8
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !3127, metadata !DIExpression()), !dbg !3128
  %0 = load ptr, ptr %builtin.addr, align 8, !dbg !3129
  %call = call ptr @LispStringCapitalize(ptr noundef %0, i32 noundef 1), !dbg !3130
  ret ptr %call, !dbg !3131
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Lisp_StringConcat(ptr noundef %builtin) #0 !dbg !3132 {
entry:
  %retval = alloca ptr, align 8
  %builtin.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %size = alloca i64, align 8
  %length = alloca i64, align 8
  %object = alloca ptr, align 8
  %string = alloca ptr, align 8
  %strings = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %builtin, ptr %builtin.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %builtin.addr, metadata !3134, metadata !DIExpression()), !dbg !3141
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #11, !dbg !3142
  tail call void @llvm.dbg.declare(metadata ptr %buffer, metadata !3135, metadata !DIExpression()), !dbg !3143
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #11, !dbg !3144
  tail call void @llvm.dbg.declare(metadata ptr %size, metadata !3136, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #11, !dbg !3144
  tail call void @llvm.dbg.declare(metadata ptr %length, metadata !3137, metadata !DIExpression()), !dbg !3146
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #11, !dbg !3147
  tail call void @llvm.dbg.declare(metadata ptr %object, metadata !3138, metadata !DIExpression()), !dbg !3148
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #11, !dbg !3147
  tail call void @llvm.dbg.declare(metadata ptr %string, metadata !3139, metadata !DIExpression()), !dbg !3149
  call void @llvm.lifetime.start.p0(i64 8, ptr %strings) #11, !dbg !3150
  tail call void @llvm.dbg.declare(metadata ptr %strings, metadata !3140, metadata !DIExpression()), !dbg !3151
  %0 = load ptr, ptr @lisp__data, align 8, !dbg !3152
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.15, ptr @lisp__data, i32 0, i32 1), align 8, !dbg !3152
  %add = add nsw i32 %1, 0, !dbg !3152
  %idxprom = sext i32 %add to i64, !dbg !3152
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom, !dbg !3152
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !3152
  store ptr %2, ptr %strings, align 8, !dbg !3153
  %3 = load ptr, ptr %strings, align 8, !dbg !3154
  %cmp = icmp eq ptr %3, inttoptr (i64 1 to ptr), !dbg !3156
  br i1 %cmp, label %if.then, label %if.end, !dbg !3157

if.then:                                          ; preds = %entry
  %call = call ptr @LispNewString(ptr noundef @.str.11, i64 noundef 0), !dbg !3158
  store ptr %call, ptr %retval, align 8, !dbg !3159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3159

if.end:                                           ; preds = %entry
  store i64 1, ptr %length, align 8, !dbg !3160
  %4 = load ptr, ptr %strings, align 8, !dbg !3162
  store ptr %4, ptr %object, align 8, !dbg !3163
  br label %for.cond, !dbg !3164

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %object, align 8, !dbg !3165
  %6 = ptrtoint ptr %5 to i64, !dbg !3165
  %and = and i64 %6, 1, !dbg !3165
  %cmp1 = icmp eq i64 %and, 0, !dbg !3165
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !3165

land.rhs:                                         ; preds = %for.cond
  %7 = load ptr, ptr %object, align 8, !dbg !3165
  %bf.load = load i16, ptr %7, align 8, !dbg !3165
  %bf.clear = and i16 %bf.load, 63, !dbg !3165
  %bf.cast = zext i16 %bf.clear to i32, !dbg !3165
  %cmp2 = icmp eq i32 %bf.cast, 28, !dbg !3165
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !3167
  br i1 %8, label %for.body, label %for.end, !dbg !3168

for.body:                                         ; preds = %land.end
  %9 = load ptr, ptr %object, align 8, !dbg !3169
  %data = getelementptr inbounds %struct._LispObj, ptr %9, i32 0, i32 1, !dbg !3169
  %car = getelementptr inbounds %struct.anon.3, ptr %data, i32 0, i32 0, !dbg !3169
  %10 = load ptr, ptr %car, align 8, !dbg !3169
  store ptr %10, ptr %string, align 8, !dbg !3171
  %11 = load ptr, ptr %string, align 8, !dbg !3172
  %12 = ptrtoint ptr %11 to i64, !dbg !3172
  %and3 = and i64 %12, 1, !dbg !3172
  %cmp4 = icmp eq i64 %and3, 0, !dbg !3172
  br i1 %cmp4, label %land.lhs.true, label %if.then9, !dbg !3172

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %string, align 8, !dbg !3172
  %bf.load5 = load i16, ptr %13, align 8, !dbg !3172
  %bf.clear6 = and i16 %bf.load5, 63, !dbg !3172
  %bf.cast7 = zext i16 %bf.clear6 to i32, !dbg !3172
  %cmp8 = icmp eq i32 %bf.cast7, 18, !dbg !3172
  br i1 %cmp8, label %if.end12, label %if.then9, !dbg !3174

if.then9:                                         ; preds = %land.lhs.true, %for.body
  %14 = load ptr, ptr %builtin.addr, align 8, !dbg !3172
  %symbol = getelementptr inbounds %struct._LispBuiltin, ptr %14, i32 0, i32 6, !dbg !3172
  %15 = load ptr, ptr %symbol, align 8, !dbg !3172
  %data10 = getelementptr inbounds %struct._LispObj, ptr %15, i32 0, i32 1, !dbg !3172
  %16 = load ptr, ptr %data10, align 8, !dbg !3172
  %key = getelementptr inbounds %struct._LispAtom, ptr %16, i32 0, i32 0, !dbg !3172
  %17 = load ptr, ptr %key, align 8, !dbg !3172
  %value = getelementptr inbounds %struct._hash_key, ptr %17, i32 0, i32 0, !dbg !3172
  %18 = load ptr, ptr %value, align 8, !dbg !3172
  %19 = load ptr, ptr %string, align 8, !dbg !3172
  %call11 = call ptr @LispStrObj(ptr noundef %19), !dbg !3172
  call void (ptr, ...) @LispDestroy(ptr noundef @.str, ptr noundef %18, ptr noundef %call11), !dbg !3172
  br label %if.end12, !dbg !3172

if.end12:                                         ; preds = %if.then9, %land.lhs.true
  %20 = load ptr, ptr %string, align 8, !dbg !3175
  %data13 = getelementptr inbounds %struct._LispObj, ptr %20, i32 0, i32 1, !dbg !3175
  %length14 = getelementptr inbounds %struct.anon, ptr %data13, i32 0, i32 1, !dbg !3175
  %21 = load i64, ptr %length14, align 8, !dbg !3175
  %22 = load i64, ptr %length, align 8, !dbg !3176
  %add15 = add nsw i64 %22, %21, !dbg !3176
  store i64 %add15, ptr %length, align 8, !dbg !3176
  br label %for.inc, !dbg !3177

for.inc:                                          ; preds = %if.end12
  %23 = load ptr, ptr %object, align 8, !dbg !3178
  %data16 = getelementptr inbounds %struct._LispObj, ptr %23, i32 0, i32 1, !dbg !3178
  %cdr = getelementptr inbounds %struct.anon.3, ptr %data16, i32 0, i32 1, !dbg !3178
  %24 = load ptr, ptr %cdr, align 8, !dbg !3178
  store ptr %24, ptr %object, align 8, !dbg !3179
  br label %for.cond, !dbg !3180, !llvm.loop !3181

for.end:                                          ; preds = %land.end
  %25 = load i64, ptr %length, align 8, !dbg !3183
  %call17 = call ptr @LispMalloc(i64 noundef %25), !dbg !3184
  store ptr %call17, ptr %buffer, align 8, !dbg !3185
  store i64 0, ptr %length, align 8, !dbg !3186
  %26 = load ptr, ptr %strings, align 8, !dbg !3188
  store ptr %26, ptr %object, align 8, !dbg !3189
  br label %for.cond18, !dbg !3190

for.cond18:                                       ; preds = %for.inc35, %for.end
  %27 = load ptr, ptr %object, align 8, !dbg !3191
  %28 = ptrtoint ptr %27 to i64, !dbg !3191
  %and19 = and i64 %28, 1, !dbg !3191
  %cmp20 = icmp eq i64 %and19, 0, !dbg !3191
  br i1 %cmp20, label %land.rhs21, label %land.end26, !dbg !3191

land.rhs21:                                       ; preds = %for.cond18
  %29 = load ptr, ptr %object, align 8, !dbg !3191
  %bf.load22 = load i16, ptr %29, align 8, !dbg !3191
  %bf.clear23 = and i16 %bf.load22, 63, !dbg !3191
  %bf.cast24 = zext i16 %bf.clear23 to i32, !dbg !3191
  %cmp25 = icmp eq i32 %bf.cast24, 28, !dbg !3191
  br label %land.end26

land.end26:                                       ; preds = %land.rhs21, %for.cond18
  %30 = phi i1 [ false, %for.cond18 ], [ %cmp25, %land.rhs21 ], !dbg !3193
  br i1 %30, label %for.body27, label %for.end38, !dbg !3194

for.body27:                                       ; preds = %land.end26
  %31 = load ptr, ptr %object, align 8, !dbg !3195
  %data28 = getelementptr inbounds %struct._LispObj, ptr %31, i32 0, i32 1, !dbg !3195
  %car29 = getelementptr inbounds %struct.anon.3, ptr %data28, i32 0, i32 0, !dbg !3195
  %32 = load ptr, ptr %car29, align 8, !dbg !3195
  store ptr %32, ptr %string, align 8, !dbg !3197
  %33 = load ptr, ptr %string, align 8, !dbg !3198
  %data30 = getelementptr inbounds %struct._LispObj, ptr %33, i32 0, i32 1, !dbg !3198
  %length31 = getelementptr inbounds %struct.anon, ptr %data30, i32 0, i32 1, !dbg !3198
  %34 = load i64, ptr %length31, align 8, !dbg !3198
  store i64 %34, ptr %size, align 8, !dbg !3199
  %35 = load ptr, ptr %buffer, align 8, !dbg !3200
  %36 = load i64, ptr %length, align 8, !dbg !3201
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %36, !dbg !3202
  %37 = load ptr, ptr %string, align 8, !dbg !3203
  %data32 = getelementptr inbounds %struct._LispObj, ptr %37, i32 0, i32 1, !dbg !3203
  %string33 = getelementptr inbounds %struct.anon, ptr %data32, i32 0, i32 0, !dbg !3203
  %38 = load ptr, ptr %string33, align 8, !dbg !3203
  %39 = load i64, ptr %size, align 8, !dbg !3204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %38, i64 %39, i1 false), !dbg !3205
  %40 = load i64, ptr %size, align 8, !dbg !3206
  %41 = load i64, ptr %length, align 8, !dbg !3207
  %add34 = add nsw i64 %41, %40, !dbg !3207
  store i64 %add34, ptr %length, align 8, !dbg !3207
  br label %for.inc35, !dbg !3208

for.inc35:                                        ; preds = %for.body27
  %42 = load ptr, ptr %object, align 8, !dbg !3209
  %data36 = getelementptr inbounds %struct._LispObj, ptr %42, i32 0, i32 1, !dbg !3209
  %cdr37 = getelementptr inbounds %struct.anon.3, ptr %data36, i32 0, i32 1, !dbg !3209
  %43 = load ptr, ptr %cdr37, align 8, !dbg !3209
  store ptr %43, ptr %object, align 8, !dbg !3210
  br label %for.cond18, !dbg !3211, !llvm.loop !3212

for.end38:                                        ; preds = %land.end26
  %44 = load ptr, ptr %buffer, align 8, !dbg !3214
  %45 = load i64, ptr %length, align 8, !dbg !3215
  %arrayidx39 = getelementptr inbounds i8, ptr %44, i64 %45, !dbg !3214
  store i8 0, ptr %arrayidx39, align 1, !dbg !3216
  %46 = load ptr, ptr %buffer, align 8, !dbg !3217
  %47 = load i64, ptr %length, align 8, !dbg !3217
  %call40 = call ptr @LispNewStringAlloced(ptr noundef %46, i64 noundef %47), !dbg !3217
  store ptr %call40, ptr %object, align 8, !dbg !3218
  %48 = load ptr, ptr %object, align 8, !dbg !3219
  store ptr %48, ptr %retval, align 8, !dbg !3220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3220

cleanup:                                          ; preds = %for.end38, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %strings) #11, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #11, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #11, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #11, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #11, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #11, !dbg !3221
  %49 = load ptr, ptr %retval, align 8, !dbg !3221
  ret ptr %49, !dbg !3221
}

declare !dbg !3222 ptr @LispNewString(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !3225 ptr @__ctype_tolower_loc() #4

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @tolower(i32 noundef %__c) #6 !dbg !3226 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, ptr %__c.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %__c.addr, metadata !3228, metadata !DIExpression()), !dbg !3229
  %0 = load i32, ptr %__c.addr, align 4, !dbg !3230
  %cmp = icmp sge i32 %0, -128, !dbg !3231
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !3232

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %__c.addr, align 4, !dbg !3233
  %cmp1 = icmp slt i32 %1, 256, !dbg !3234
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3230

cond.true:                                        ; preds = %land.lhs.true
  %call = call ptr @__ctype_tolower_loc() #12, !dbg !3235
  %2 = load ptr, ptr %call, align 8, !dbg !3236
  %3 = load i32, ptr %__c.addr, align 4, !dbg !3237
  %idxprom = sext i32 %3 to i64, !dbg !3238
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !3238
  %4 = load i32, ptr %arrayidx, align 4, !dbg !3238
  br label %cond.end, !dbg !3230

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %__c.addr, align 4, !dbg !3239
  br label %cond.end, !dbg !3230

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !3230
  ret i32 %cond, !dbg !3240
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

declare !dbg !3241 void @LispGetStringArgs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !3244 i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!64}
!llvm.module.flags = !{!486, !487, !488, !489, !490, !491}
!llvm.ident = !{!492}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lisp/string.c", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "d1d48f81fcffe4ef6fbe00e431546c1b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 32)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 46)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 26)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 19)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 34)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 469, type: !3, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 42)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 608, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 44)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 667, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 40)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 765, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 28)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1367, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 794, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 25)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !124, globals: !485, splitDebugInlining: false, nameTableKind: None)
!65 = !{!66, !97, !103, !109}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_LispType", file: !67, line: 496, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "./lisp/internal.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "1b851b5a43254ef7f342dbdef3a0d76a")
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!70 = !DIEnumerator(name: "LispNil_t", value: 1)
!71 = !DIEnumerator(name: "LispFixnum_t", value: 3)
!72 = !DIEnumerator(name: "LispSChar_t", value: 5)
!73 = !DIEnumerator(name: "LispInteger_t", value: 16)
!74 = !DIEnumerator(name: "LispDFloat_t", value: 17)
!75 = !DIEnumerator(name: "LispString_t", value: 18)
!76 = !DIEnumerator(name: "LispRatio_t", value: 19)
!77 = !DIEnumerator(name: "LispOpaque_t", value: 20)
!78 = !DIEnumerator(name: "LispBignum_t", value: 21)
!79 = !DIEnumerator(name: "LispBigratio_t", value: 22)
!80 = !DIEnumerator(name: "LispAtom_t", value: 23)
!81 = !DIEnumerator(name: "LispFunction_t", value: 24)
!82 = !DIEnumerator(name: "LispFunctionQuote_t", value: 25)
!83 = !DIEnumerator(name: "LispLambda_t", value: 26)
!84 = !DIEnumerator(name: "LispComplex_t", value: 27)
!85 = !DIEnumerator(name: "LispCons_t", value: 28)
!86 = !DIEnumerator(name: "LispQuote_t", value: 29)
!87 = !DIEnumerator(name: "LispArray_t", value: 30)
!88 = !DIEnumerator(name: "LispStruct_t", value: 31)
!89 = !DIEnumerator(name: "LispStream_t", value: 32)
!90 = !DIEnumerator(name: "LispBackquote_t", value: 33)
!91 = !DIEnumerator(name: "LispComma_t", value: 34)
!92 = !DIEnumerator(name: "LispPathname_t", value: 35)
!93 = !DIEnumerator(name: "LispPackage_t", value: 36)
!94 = !DIEnumerator(name: "LispRegex_t", value: 37)
!95 = !DIEnumerator(name: "LispBytecode_t", value: 38)
!96 = !DIEnumerator(name: "LispHashTable_t", value: 39)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_LispFunType", file: !67, line: 534, baseType: !68, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102}
!99 = !DIEnumerator(name: "LispLambda", value: 0)
!100 = !DIEnumerator(name: "LispFunction", value: 1)
!101 = !DIEnumerator(name: "LispMacro", value: 2)
!102 = !DIEnumerator(name: "LispSetf", value: 3)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_LispStreamType", file: !67, line: 541, baseType: !68, size: 32, elements: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DIEnumerator(name: "LispStreamString", value: 0)
!106 = !DIEnumerator(name: "LispStreamFile", value: 1)
!107 = !DIEnumerator(name: "LispStreamStandard", value: 2)
!108 = !DIEnumerator(name: "LispStreamPipe", value: 3)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 46, baseType: !68, size: 32, elements: !111)
!110 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!112 = !DIEnumerator(name: "_ISupper", value: 256)
!113 = !DIEnumerator(name: "_ISlower", value: 512)
!114 = !DIEnumerator(name: "_ISalpha", value: 1024)
!115 = !DIEnumerator(name: "_ISdigit", value: 2048)
!116 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!117 = !DIEnumerator(name: "_ISspace", value: 8192)
!118 = !DIEnumerator(name: "_ISprint", value: 16384)
!119 = !DIEnumerator(name: "_ISgraph", value: 32768)
!120 = !DIEnumerator(name: "_ISblank", value: 1)
!121 = !DIEnumerator(name: "_IScntrl", value: 2)
!122 = !DIEnumerator(name: "_ISpunct", value: 4)
!123 = !DIEnumerator(name: "_ISalnum", value: 8)
!124 = !{!125, !126, !127, !129, !173, !483, !439, !155, !484}
!125 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispObj", file: !67, line: 481, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispObj", file: !67, line: 562, size: 256, elements: !132)
!132 = !{!133, !135, !136, !137, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !67, line: 563, baseType: !134, size: 6, flags: DIFlagBitField, extraData: i64 0)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispType", file: !67, line: 532, baseType: !66)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !131, file: !67, line: 564, baseType: !68, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !131, file: !67, line: 565, baseType: !68, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "funtype", scope: !131, file: !67, line: 566, baseType: !138, size: 4, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispFunType", file: !67, line: 539, baseType: !97)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !131, file: !67, line: 652, baseType: !140, size: 192, offset: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !67, line: 567, size: 192, elements: !141)
!141 = !{!142, !302, !308, !309, !311, !312, !313, !318, !339, !344, !349, !355, !363, !368, !435, !441, !446, !452, !466, !475}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !140, file: !67, line: 568, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispAtom", file: !67, line: 482, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispAtom", file: !146, line: 195, size: 896, elements: !147)
!146 = !DIFile(filename: "./lisp/private.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "90e1ca13cd32dba55a2a656b67d463f4")
!147 = !{!148, !157, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !174, !175, !176, !177, !298}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !145, file: !146, line: 196, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_key", file: !151, line: 34, baseType: !152)
!151 = !DIFile(filename: "./util.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "1e139f1aa84cdd5018400c780a62640c")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_hash_key", file: !151, line: 39, size: 128, elements: !153)
!153 = !{!154, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !152, file: !151, line: 40, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !152, file: !151, line: 41, baseType: !68, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 197, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "dyn", scope: !145, file: !146, line: 200, baseType: !68, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "a_object", scope: !145, file: !146, line: 203, baseType: !68, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "a_function", scope: !145, file: !146, line: 205, baseType: !68, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "a_builtin", scope: !145, file: !146, line: 207, baseType: !68, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "a_compiled", scope: !145, file: !146, line: 209, baseType: !68, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "a_property", scope: !145, file: !146, line: 211, baseType: !68, size: 1, offset: 133, flags: DIFlagBitField, extraData: i64 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "a_defsetf", scope: !145, file: !146, line: 213, baseType: !68, size: 1, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "a_defstruct", scope: !145, file: !146, line: 215, baseType: !68, size: 1, offset: 135, flags: DIFlagBitField, extraData: i64 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !145, file: !146, line: 218, baseType: !68, size: 1, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "unreadable", scope: !145, file: !146, line: 221, baseType: !68, size: 1, offset: 137, flags: DIFlagBitField, extraData: i64 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "watch", scope: !145, file: !146, line: 224, baseType: !68, size: 1, offset: 138, flags: DIFlagBitField, extraData: i64 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !145, file: !146, line: 227, baseType: !68, size: 1, offset: 139, flags: DIFlagBitField, extraData: i64 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !145, file: !146, line: 229, baseType: !129, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !145, file: !146, line: 230, baseType: !173, size: 32, offset: 256)
!173 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !145, file: !146, line: 231, baseType: !129, size: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !145, file: !146, line: 232, baseType: !129, size: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !146, line: 233, baseType: !129, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "property", scope: !145, file: !146, line: 234, baseType: !178, size: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispProperty", file: !146, line: 97, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispProperty", file: !146, line: 158, size: 640, elements: !181)
!181 = !{!182, !183, !222, !223, !252, !290, !291, !292, !293}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !180, file: !146, line: 160, baseType: !68, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !180, file: !146, line: 163, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispPackage", file: !67, line: 487, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispPackage", file: !146, line: 245, size: 320, elements: !187)
!187 = !{!188, !196, !197}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "glb", scope: !186, file: !146, line: 246, baseType: !189, size: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispObjList", file: !146, line: 98, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispObjList", file: !146, line: 239, size: 128, elements: !191)
!191 = !{!192, !194, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pairs", scope: !190, file: !146, line: 240, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !190, file: !146, line: 241, baseType: !173, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !190, file: !146, line: 242, baseType: !173, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !186, file: !146, line: 247, baseType: !189, size: 128, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !186, file: !146, line: 248, baseType: !198, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !151, line: 36, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_hash_table", file: !151, line: 49, size: 320, elements: !201)
!201 = !{!202, !210, !211, !212, !217}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !200, file: !151, line: 50, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_entry", file: !151, line: 35, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_hash_entry", file: !151, line: 44, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !206, file: !151, line: 45, baseType: !149, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !151, line: 46, baseType: !204, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !200, file: !151, line: 51, baseType: !68, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !200, file: !151, line: 52, baseType: !68, size: 32, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !200, file: !151, line: 53, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_compare", file: !151, line: 37, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!173, !149, !149}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !200, file: !151, line: 58, baseType: !218, size: 128, offset: 192)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !151, line: 55, size: 128, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !218, file: !151, line: 56, baseType: !173, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !218, file: !151, line: 57, baseType: !204, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !180, file: !146, line: 166, baseType: !129, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "fun", scope: !180, file: !146, line: 173, baseType: !224, size: 64, offset: 192)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !146, line: 168, size: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !224, file: !146, line: 170, baseType: !129, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !224, file: !146, line: 172, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispBuiltin", file: !67, line: 483, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispBuiltin", file: !67, line: 663, size: 384, elements: !231)
!231 = !{!232, !233, !238, !241, !242, !243, !251}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !230, file: !67, line: 665, baseType: !138, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !230, file: !67, line: 666, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispFunPtr", file: !67, line: 660, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!129, !228}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "declaration", scope: !230, file: !67, line: 667, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_values", scope: !230, file: !67, line: 670, baseType: !173, size: 32, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !230, file: !67, line: 673, baseType: !173, size: 32, offset: 224)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "compile", scope: !230, file: !67, line: 676, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispComPtr", file: !67, line: 661, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !248, !228}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispCom", file: !67, line: 492, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LispCom", file: !67, line: 492, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !230, file: !67, line: 679, baseType: !129, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "alist", scope: !180, file: !146, line: 175, baseType: !253, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispArgList", file: !146, line: 148, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispArgList", file: !146, line: 140, size: 1088, elements: !256)
!256 = !{!257, !263, !271, !280, !281, !288, !289}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "normals", scope: !255, file: !146, line: 141, baseType: !258, size: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispNormalArgs", file: !146, line: 107, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispNormalArgs", file: !146, line: 104, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "num_symbols", scope: !259, file: !146, line: 105, baseType: !173, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !259, file: !146, line: 106, baseType: !193, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "optionals", scope: !255, file: !146, line: 142, baseType: !264, size: 256, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispOptionalArgs", file: !146, line: 115, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispOptionalArgs", file: !146, line: 110, size: 256, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "num_symbols", scope: !265, file: !146, line: 111, baseType: !173, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !265, file: !146, line: 112, baseType: !193, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !265, file: !146, line: 113, baseType: !193, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sforms", scope: !265, file: !146, line: 114, baseType: !193, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !255, file: !146, line: 143, baseType: !272, size: 320, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispKeyArgs", file: !146, line: 124, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispKeyArgs", file: !146, line: 118, size: 320, elements: !274)
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "num_symbols", scope: !273, file: !146, line: 119, baseType: !173, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !273, file: !146, line: 120, baseType: !193, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !273, file: !146, line: 121, baseType: !193, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sforms", scope: !273, file: !146, line: 122, baseType: !193, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !273, file: !146, line: 123, baseType: !193, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "rest", scope: !255, file: !146, line: 144, baseType: !129, size: 64, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "auxs", scope: !255, file: !146, line: 145, baseType: !282, size: 192, offset: 768)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispAuxArgs", file: !146, line: 131, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispAuxArgs", file: !146, line: 127, size: 192, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "num_symbols", scope: !283, file: !146, line: 128, baseType: !173, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !283, file: !146, line: 129, baseType: !193, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "initials", scope: !283, file: !146, line: 130, baseType: !193, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "num_arguments", scope: !255, file: !146, line: 146, baseType: !173, size: 32, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !255, file: !146, line: 147, baseType: !155, size: 64, offset: 1024)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !180, file: !146, line: 178, baseType: !129, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "setf", scope: !180, file: !146, line: 181, baseType: !129, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "salist", scope: !180, file: !146, line: 183, baseType: !253, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "structure", scope: !180, file: !146, line: 192, baseType: !294, size: 128, offset: 512)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !146, line: 186, size: 128, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "definition", scope: !294, file: !146, line: 187, baseType: !129, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !294, file: !146, line: 191, baseType: !173, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "documentation", scope: !145, file: !146, line: 236, baseType: !299, size: 320, offset: 576)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 5)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !140, file: !67, line: 573, baseType: !303, size: 192)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 569, size: 192, elements: !304)
!304 = !{!305, !306, !307}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !303, file: !67, line: 570, baseType: !155, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !303, file: !67, line: 571, baseType: !126, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !303, file: !67, line: 572, baseType: !68, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !140, file: !67, line: 574, baseType: !126, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dfloat", scope: !140, file: !67, line: 575, baseType: !310, size: 64)
!310 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "quote", scope: !140, file: !67, line: 576, baseType: !129, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pathname", scope: !140, file: !67, line: 577, baseType: !129, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ratio", scope: !140, file: !67, line: 582, baseType: !314, size: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 579, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "numerator", scope: !314, file: !67, line: 580, baseType: !126, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "denominator", scope: !314, file: !67, line: 581, baseType: !126, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !140, file: !67, line: 586, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !140, file: !67, line: 583, size: 64, elements: !320)
!320 = !{!321, !332}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !319, file: !67, line: 584, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi", file: !324, line: 119, baseType: !325)
!324 = !DIFile(filename: "./lisp/mp/mp.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "c8e1682473a380849e8707431cf59f36")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mpi", file: !324, line: 114, size: 192, elements: !326)
!326 = !{!327, !328, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !325, file: !324, line: 115, baseType: !68, size: 31, flags: DIFlagBitField, extraData: i64 0)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !325, file: !324, line: 116, baseType: !68, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !325, file: !324, line: 117, baseType: !125, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "digs", scope: !325, file: !324, line: 118, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ratio", scope: !319, file: !67, line: 585, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpr", file: !324, line: 124, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mpr", file: !324, line: 121, size: 384, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !335, file: !324, line: 122, baseType: !323, size: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !335, file: !324, line: 123, baseType: !323, size: 192, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !140, file: !67, line: 590, baseType: !340, size: 128)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 587, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !340, file: !67, line: 588, baseType: !129, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !340, file: !67, line: 589, baseType: !129, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cons", scope: !140, file: !67, line: 594, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 591, size: 128, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "car", scope: !345, file: !67, line: 592, baseType: !129, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "cdr", scope: !345, file: !67, line: 593, baseType: !129, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !140, file: !67, line: 599, baseType: !350, size: 192)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 595, size: 192, elements: !351)
!351 = !{!352, !353, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !350, file: !67, line: 596, baseType: !129, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !350, file: !67, line: 597, baseType: !129, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !350, file: !67, line: 598, baseType: !129, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !140, file: !67, line: 609, baseType: !356, size: 192)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 600, size: 192, elements: !357)
!357 = !{!358, !359, !360, !361, !362}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !356, file: !67, line: 601, baseType: !129, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !356, file: !67, line: 602, baseType: !129, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !356, file: !67, line: 603, baseType: !68, size: 8, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !356, file: !67, line: 604, baseType: !68, size: 7, offset: 136, flags: DIFlagBitField, extraData: i64 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !356, file: !67, line: 607, baseType: !68, size: 1, offset: 143, flags: DIFlagBitField, extraData: i64 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "struc", scope: !140, file: !67, line: 613, baseType: !364, size: 128)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 610, size: 128, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !364, file: !67, line: 611, baseType: !129, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !364, file: !67, line: 612, baseType: !129, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !140, file: !67, line: 624, baseType: !369, size: 192)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 614, size: 192, elements: !370)
!370 = !{!371, !430, !431, !433, !434}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !369, file: !67, line: 619, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !67, line: 615, size: 64, elements: !373)
!373 = !{!374, !407, !416}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !372, file: !67, line: 616, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispFile", file: !67, line: 485, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispFile", file: !378, line: 50, size: 320, elements: !379)
!378 = !DIFile(filename: "./lisp/io.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "e1cc0f49364109d3f81381a34f801d0f")
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !377, file: !378, line: 51, baseType: !155, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !377, file: !378, line: 52, baseType: !173, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !377, file: !378, line: 53, baseType: !173, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !377, file: !378, line: 54, baseType: !173, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !377, file: !378, line: 55, baseType: !173, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !377, file: !378, line: 56, baseType: !173, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "unget", scope: !377, file: !378, line: 57, baseType: !173, size: 8, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "readable", scope: !377, file: !378, line: 58, baseType: !68, size: 1, offset: 232, flags: DIFlagBitField, extraData: i64 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !377, file: !378, line: 59, baseType: !68, size: 1, offset: 233, flags: DIFlagBitField, extraData: i64 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "regular", scope: !377, file: !378, line: 60, baseType: !68, size: 1, offset: 234, flags: DIFlagBitField, extraData: i64 224)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !377, file: !378, line: 61, baseType: !68, size: 1, offset: 235, flags: DIFlagBitField, extraData: i64 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !377, file: !378, line: 62, baseType: !68, size: 1, offset: 236, flags: DIFlagBitField, extraData: i64 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nonblock", scope: !377, file: !378, line: 63, baseType: !68, size: 1, offset: 237, flags: DIFlagBitField, extraData: i64 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !377, file: !378, line: 64, baseType: !68, size: 1, offset: 238, flags: DIFlagBitField, extraData: i64 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !377, file: !378, line: 65, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_write_fn", file: !378, line: 48, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !173, !403, !405}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !400, line: 108, baseType: !401)
!400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !402, line: 194, baseType: !126)
!402 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !406, line: 70, baseType: !125)
!406 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !372, file: !67, line: 617, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispPipe", file: !67, line: 553, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 548, size: 256, elements: !411)
!411 = !{!412, !413, !414, !415}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !410, file: !67, line: 549, baseType: !173, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !410, file: !67, line: 550, baseType: !375, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !410, file: !67, line: 551, baseType: !375, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "errorp", scope: !410, file: !67, line: 552, baseType: !129, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !372, file: !67, line: 618, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispString", file: !67, line: 486, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LispString", file: !378, line: 68, size: 320, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !419, file: !378, line: 69, baseType: !155, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !419, file: !378, line: 70, baseType: !173, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !419, file: !378, line: 71, baseType: !173, size: 32, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !419, file: !378, line: 72, baseType: !173, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !419, file: !378, line: 73, baseType: !173, size: 32, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !419, file: !378, line: 74, baseType: !173, size: 32, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !419, file: !378, line: 75, baseType: !173, size: 32, offset: 224)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fixed", scope: !419, file: !378, line: 76, baseType: !68, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !419, file: !378, line: 77, baseType: !68, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pathname", scope: !369, file: !67, line: 620, baseType: !129, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !369, file: !67, line: 621, baseType: !432, size: 6, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispStreamType", file: !67, line: 546, baseType: !103)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "readable", scope: !369, file: !67, line: 622, baseType: !68, size: 1, offset: 134, flags: DIFlagBitField, extraData: i64 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !369, file: !67, line: 623, baseType: !68, size: 1, offset: 135, flags: DIFlagBitField, extraData: i64 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !140, file: !67, line: 628, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 625, size: 128, elements: !437)
!437 = !{!438, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !436, file: !67, line: 626, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !67, line: 627, baseType: !173, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "comma", scope: !140, file: !67, line: 632, baseType: !442, size: 128)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 629, size: 128, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !442, file: !67, line: 630, baseType: !129, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "atlist", scope: !442, file: !67, line: 631, baseType: !173, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !140, file: !67, line: 637, baseType: !447, size: 192)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 633, size: 192, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !447, file: !67, line: 634, baseType: !129, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nicknames", scope: !447, file: !67, line: 635, baseType: !129, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !447, file: !67, line: 636, baseType: !184, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !140, file: !67, line: 642, baseType: !453, size: 192)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 638, size: 192, elements: !454)
!454 = !{!455, !464, !465}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !453, file: !67, line: 639, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_cod", file: !458, line: 101, baseType: !459)
!458 = !DIFile(filename: "./lisp/re/re.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "3383ac1886bf39bb465aad3f182925ce")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_re_cod", file: !458, line: 97, size: 192, elements: !460)
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cod", scope: !459, file: !458, line: 98, baseType: !127, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !459, file: !458, line: 99, baseType: !173, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "re_endp", scope: !459, file: !458, line: 100, baseType: !239, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !453, file: !67, line: 640, baseType: !129, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !453, file: !67, line: 641, baseType: !173, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bytecode", scope: !140, file: !67, line: 647, baseType: !467, size: 192)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 643, size: 192, elements: !468)
!468 = !{!469, !473, !474}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bytecode", scope: !467, file: !67, line: 644, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispBytecode", file: !67, line: 488, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LispBytecode", file: !67, line: 488, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !467, file: !67, line: 645, baseType: !129, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !67, line: 646, baseType: !129, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !140, file: !67, line: 651, baseType: !476, size: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !67, line: 648, size: 128, elements: !477)
!477 = !{!478, !482}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !476, file: !67, line: 649, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "LispHashTable", file: !67, line: 489, baseType: !481)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LispHashTable", file: !67, line: 489, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !476, file: !67, line: 650, baseType: !129, size: 64, offset: 64)
!483 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!485 = !{!0, !7, !12, !17, !22, !27, !32, !34, !39, !44, !49, !54, !59}
!486 = !{i32 7, !"Dwarf Version", i32 5}
!487 = !{i32 2, !"Debug Info Version", i32 3}
!488 = !{i32 1, !"wchar_size", i32 4}
!489 = !{i32 8, !"PIC Level", i32 2}
!490 = !{i32 7, !"PIE Level", i32 2}
!491 = !{i32 7, !"uwtable", i32 2}
!492 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!493 = distinct !DISubprogram(name: "Lisp_CharLess", scope: !2, file: !2, line: 142, type: !236, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !494)
!494 = !{!495}
!495 = !DILocalVariable(name: "builtin", arg: 1, scope: !493, file: !2, line: 142, type: !228)
!496 = !DILocation(line: 142, column: 28, scope: !493)
!497 = !DILocation(line: 147, column: 29, scope: !493)
!498 = !DILocation(line: 147, column: 13, scope: !493)
!499 = !DILocation(line: 147, column: 5, scope: !493)
!500 = distinct !DISubprogram(name: "LispCharCompare", scope: !2, file: !2, line: 74, type: !501, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!129, !228, !173, !173}
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !516, !521, !530, !535, !538, !543, !549}
!504 = !DILocalVariable(name: "builtin", arg: 1, scope: !500, file: !2, line: 74, type: !228)
!505 = !DILocalVariable(name: "operation", arg: 2, scope: !500, file: !2, line: 74, type: !173)
!506 = !DILocalVariable(name: "ignore_case", arg: 3, scope: !500, file: !2, line: 74, type: !173)
!507 = !DILocalVariable(name: "object", scope: !500, file: !2, line: 76, type: !129)
!508 = !DILocalVariable(name: "cmp", scope: !500, file: !2, line: 77, type: !173)
!509 = !DILocalVariable(name: "value", scope: !500, file: !2, line: 77, type: !173)
!510 = !DILocalVariable(name: "next_value", scope: !500, file: !2, line: 77, type: !173)
!511 = !DILocalVariable(name: "character", scope: !500, file: !2, line: 79, type: !129)
!512 = !DILocalVariable(name: "more_characters", scope: !500, file: !2, line: 79, type: !129)
!513 = !DILocalVariable(name: "__res", scope: !514, file: !2, line: 87, type: !173)
!514 = distinct !DILexicalBlock(scope: !515, file: !2, line: 87, column: 10)
!515 = distinct !DILexicalBlock(scope: !500, file: !2, line: 86, column: 9)
!516 = !DILocalVariable(name: "__c", scope: !517, file: !2, line: 87, type: !173)
!517 = distinct !DILexicalBlock(scope: !518, file: !2, line: 87, column: 10)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 87, column: 10)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 87, column: 10)
!520 = distinct !DILexicalBlock(scope: !514, file: !2, line: 87, column: 10)
!521 = !DILocalVariable(name: "__res", scope: !522, file: !2, line: 104, type: !173)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 104, column: 20)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 103, column: 7)
!524 = distinct !DILexicalBlock(scope: !525, file: !2, line: 100, column: 74)
!525 = distinct !DILexicalBlock(scope: !526, file: !2, line: 100, column: 6)
!526 = distinct !DILexicalBlock(scope: !527, file: !2, line: 100, column: 6)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 99, column: 5)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 97, column: 38)
!529 = distinct !DILexicalBlock(scope: !500, file: !2, line: 97, column: 9)
!530 = !DILocalVariable(name: "__c", scope: !531, file: !2, line: 104, type: !173)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 104, column: 20)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 104, column: 20)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 104, column: 20)
!534 = distinct !DILexicalBlock(scope: !522, file: !2, line: 104, column: 20)
!535 = !DILocalVariable(name: "__res", scope: !536, file: !2, line: 110, type: !173)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 110, column: 11)
!537 = distinct !DILexicalBlock(scope: !527, file: !2, line: 109, column: 10)
!538 = !DILocalVariable(name: "__c", scope: !539, file: !2, line: 110, type: !173)
!539 = distinct !DILexicalBlock(scope: !540, file: !2, line: 110, column: 11)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 110, column: 11)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 110, column: 11)
!542 = distinct !DILexicalBlock(scope: !536, file: !2, line: 110, column: 11)
!543 = !DILocalVariable(name: "__res", scope: !544, file: !2, line: 122, type: !173)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 122, column: 19)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 121, column: 6)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 118, column: 76)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 118, column: 5)
!548 = distinct !DILexicalBlock(scope: !500, file: !2, line: 118, column: 5)
!549 = !DILocalVariable(name: "__c", scope: !550, file: !2, line: 122, type: !173)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 122, column: 19)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 122, column: 19)
!552 = distinct !DILexicalBlock(scope: !553, file: !2, line: 122, column: 19)
!553 = distinct !DILexicalBlock(scope: !544, file: !2, line: 122, column: 19)
!554 = !DILocation(line: 74, column: 30, scope: !500)
!555 = !DILocation(line: 74, column: 43, scope: !500)
!556 = !DILocation(line: 74, column: 58, scope: !500)
!557 = !DILocation(line: 76, column: 5, scope: !500)
!558 = !DILocation(line: 76, column: 14, scope: !500)
!559 = !DILocation(line: 77, column: 5, scope: !500)
!560 = !DILocation(line: 77, column: 9, scope: !500)
!561 = !DILocation(line: 77, column: 14, scope: !500)
!562 = !DILocation(line: 77, column: 21, scope: !500)
!563 = !DILocation(line: 79, column: 5, scope: !500)
!564 = !DILocation(line: 79, column: 14, scope: !500)
!565 = !DILocation(line: 79, column: 26, scope: !500)
!566 = !DILocation(line: 81, column: 23, scope: !500)
!567 = !DILocation(line: 81, column: 21, scope: !500)
!568 = !DILocation(line: 82, column: 17, scope: !500)
!569 = !DILocation(line: 82, column: 15, scope: !500)
!570 = !DILocation(line: 84, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !500, file: !2, line: 84, column: 5)
!572 = !DILocation(line: 84, column: 5, scope: !500)
!573 = !DILocation(line: 85, column: 13, scope: !500)
!574 = !DILocation(line: 85, column: 11, scope: !500)
!575 = !DILocation(line: 86, column: 9, scope: !515)
!576 = !DILocation(line: 86, column: 21, scope: !515)
!577 = !DILocation(line: 86, column: 24, scope: !515)
!578 = !DILocation(line: 86, column: 9, scope: !500)
!579 = !DILocation(line: 87, column: 10, scope: !514)
!580 = !DILocation(line: 87, column: 10, scope: !518)
!581 = !DILocation(line: 87, column: 10, scope: !519)
!582 = !DILocation(line: 87, column: 10, scope: !517)
!583 = !DILocation(line: 87, column: 10, scope: !520)
!584 = !DILocation(line: 87, column: 10, scope: !515)
!585 = !DILocation(line: 87, column: 8, scope: !515)
!586 = !DILocation(line: 87, column: 2, scope: !515)
!587 = !DILocation(line: 89, column: 10, scope: !588)
!588 = distinct !DILexicalBlock(scope: !500, file: !2, line: 89, column: 9)
!589 = !DILocation(line: 89, column: 9, scope: !500)
!590 = !DILocation(line: 90, column: 2, scope: !588)
!591 = !DILocation(line: 93, column: 19, scope: !592)
!592 = distinct !DILexicalBlock(scope: !500, file: !2, line: 93, column: 5)
!593 = !DILocation(line: 93, column: 17, scope: !592)
!594 = !DILocation(line: 93, column: 10, scope: !592)
!595 = !DILocation(line: 93, column: 36, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !2, line: 93, column: 5)
!597 = !DILocation(line: 0, scope: !596)
!598 = !DILocation(line: 93, column: 5, scope: !592)
!599 = !DILocation(line: 94, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !2, line: 94, column: 2)
!601 = !DILocation(line: 94, column: 2, scope: !596)
!602 = !DILocation(line: 93, column: 60, scope: !596)
!603 = !DILocation(line: 93, column: 58, scope: !596)
!604 = !DILocation(line: 93, column: 5, scope: !596)
!605 = distinct !{!605, !598, !606, !607}
!606 = !DILocation(line: 94, column: 2, scope: !592)
!607 = !{!"llvm.loop.mustprogress"}
!608 = !DILocation(line: 97, column: 9, scope: !529)
!609 = !DILocation(line: 97, column: 19, scope: !529)
!610 = !DILocation(line: 97, column: 9, scope: !500)
!611 = !DILocation(line: 99, column: 2, scope: !528)
!612 = !DILocation(line: 100, column: 20, scope: !526)
!613 = !DILocation(line: 100, column: 18, scope: !526)
!614 = !DILocation(line: 100, column: 11, scope: !526)
!615 = !DILocation(line: 100, column: 37, scope: !525)
!616 = !DILocation(line: 0, scope: !525)
!617 = !DILocation(line: 100, column: 6, scope: !526)
!618 = !DILocation(line: 101, column: 15, scope: !524)
!619 = !DILocation(line: 101, column: 13, scope: !524)
!620 = !DILocation(line: 102, column: 16, scope: !524)
!621 = !DILocation(line: 102, column: 14, scope: !524)
!622 = !DILocation(line: 103, column: 7, scope: !523)
!623 = !DILocation(line: 103, column: 19, scope: !523)
!624 = !DILocation(line: 103, column: 22, scope: !523)
!625 = !DILocation(line: 103, column: 7, scope: !524)
!626 = !DILocation(line: 104, column: 20, scope: !522)
!627 = !DILocation(line: 104, column: 20, scope: !532)
!628 = !DILocation(line: 104, column: 20, scope: !533)
!629 = !DILocation(line: 104, column: 20, scope: !531)
!630 = !DILocation(line: 104, column: 20, scope: !534)
!631 = !DILocation(line: 104, column: 20, scope: !523)
!632 = !DILocation(line: 104, column: 18, scope: !523)
!633 = !DILocation(line: 104, column: 7, scope: !523)
!634 = !DILocation(line: 105, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !524, file: !2, line: 105, column: 7)
!636 = !DILocation(line: 105, column: 16, scope: !635)
!637 = !DILocation(line: 105, column: 13, scope: !635)
!638 = !DILocation(line: 105, column: 7, scope: !524)
!639 = !DILocation(line: 106, column: 7, scope: !635)
!640 = !DILocation(line: 107, column: 6, scope: !524)
!641 = !DILocation(line: 100, column: 61, scope: !525)
!642 = !DILocation(line: 100, column: 59, scope: !525)
!643 = !DILocation(line: 100, column: 6, scope: !525)
!644 = distinct !{!644, !617, !645, !607}
!645 = !DILocation(line: 107, column: 6, scope: !526)
!646 = !DILocation(line: 108, column: 14, scope: !527)
!647 = !DILocation(line: 108, column: 12, scope: !527)
!648 = !DILocation(line: 109, column: 10, scope: !537)
!649 = !DILocation(line: 109, column: 22, scope: !537)
!650 = !DILocation(line: 109, column: 25, scope: !537)
!651 = !DILocation(line: 109, column: 10, scope: !527)
!652 = !DILocation(line: 110, column: 11, scope: !536)
!653 = !DILocation(line: 110, column: 11, scope: !540)
!654 = !DILocation(line: 110, column: 11, scope: !541)
!655 = !DILocation(line: 110, column: 11, scope: !539)
!656 = !DILocation(line: 110, column: 11, scope: !542)
!657 = !DILocation(line: 110, column: 11, scope: !537)
!658 = !DILocation(line: 110, column: 9, scope: !537)
!659 = !DILocation(line: 110, column: 3, scope: !537)
!660 = !DILocation(line: 111, column: 24, scope: !527)
!661 = !DILocation(line: 111, column: 22, scope: !527)
!662 = !DILocation(line: 112, column: 2, scope: !527)
!663 = !DILocation(line: 112, column: 11, scope: !528)
!664 = !DILocation(line: 0, scope: !528)
!665 = distinct !{!665, !611, !666, !607}
!666 = !DILocation(line: 112, column: 33, scope: !528)
!667 = !DILocation(line: 114, column: 2, scope: !528)
!668 = !DILocation(line: 118, column: 5, scope: !500)
!669 = !DILocation(line: 118, column: 12, scope: !547)
!670 = !DILocation(line: 0, scope: !547)
!671 = !DILocation(line: 118, column: 5, scope: !548)
!672 = !DILocation(line: 119, column: 14, scope: !546)
!673 = !DILocation(line: 119, column: 12, scope: !546)
!674 = !DILocation(line: 120, column: 15, scope: !546)
!675 = !DILocation(line: 120, column: 13, scope: !546)
!676 = !DILocation(line: 121, column: 6, scope: !545)
!677 = !DILocation(line: 121, column: 18, scope: !545)
!678 = !DILocation(line: 121, column: 21, scope: !545)
!679 = !DILocation(line: 121, column: 6, scope: !546)
!680 = !DILocation(line: 122, column: 19, scope: !544)
!681 = !DILocation(line: 122, column: 19, scope: !551)
!682 = !DILocation(line: 122, column: 19, scope: !552)
!683 = !DILocation(line: 122, column: 19, scope: !550)
!684 = !DILocation(line: 122, column: 19, scope: !553)
!685 = !DILocation(line: 122, column: 19, scope: !545)
!686 = !DILocation(line: 122, column: 17, scope: !545)
!687 = !DILocation(line: 122, column: 6, scope: !545)
!688 = !DILocation(line: 124, column: 10, scope: !546)
!689 = !DILocation(line: 124, column: 2, scope: !546)
!690 = !DILocation(line: 125, column: 29, scope: !691)
!691 = distinct !DILexicalBlock(scope: !546, file: !2, line: 124, column: 21)
!692 = !DILocation(line: 125, column: 37, scope: !691)
!693 = !DILocation(line: 125, column: 35, scope: !691)
!694 = !DILocation(line: 125, column: 27, scope: !691)
!695 = !DILocation(line: 125, column: 49, scope: !691)
!696 = !DILocation(line: 126, column: 34, scope: !691)
!697 = !DILocation(line: 126, column: 43, scope: !691)
!698 = !DILocation(line: 126, column: 40, scope: !691)
!699 = !DILocation(line: 126, column: 32, scope: !691)
!700 = !DILocation(line: 126, column: 55, scope: !691)
!701 = !DILocation(line: 127, column: 30, scope: !691)
!702 = !DILocation(line: 127, column: 39, scope: !691)
!703 = !DILocation(line: 127, column: 36, scope: !691)
!704 = !DILocation(line: 127, column: 28, scope: !691)
!705 = !DILocation(line: 127, column: 51, scope: !691)
!706 = !DILocation(line: 128, column: 37, scope: !691)
!707 = !DILocation(line: 128, column: 46, scope: !691)
!708 = !DILocation(line: 128, column: 43, scope: !691)
!709 = !DILocation(line: 128, column: 35, scope: !691)
!710 = !DILocation(line: 128, column: 58, scope: !691)
!711 = !DILocation(line: 129, column: 32, scope: !691)
!712 = !DILocation(line: 129, column: 40, scope: !691)
!713 = !DILocation(line: 129, column: 38, scope: !691)
!714 = !DILocation(line: 129, column: 30, scope: !691)
!715 = !DILocation(line: 129, column: 52, scope: !691)
!716 = !DILocation(line: 130, column: 21, scope: !691)
!717 = !DILocation(line: 130, column: 28, scope: !691)
!718 = !DILocation(line: 133, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !546, file: !2, line: 133, column: 6)
!720 = !DILocation(line: 133, column: 6, scope: !546)
!721 = !DILocation(line: 134, column: 6, scope: !719)
!722 = !DILocation(line: 135, column: 10, scope: !546)
!723 = !DILocation(line: 135, column: 8, scope: !546)
!724 = !DILocation(line: 136, column: 5, scope: !546)
!725 = !DILocation(line: 118, column: 54, scope: !547)
!726 = !DILocation(line: 118, column: 52, scope: !547)
!727 = !DILocation(line: 118, column: 5, scope: !547)
!728 = distinct !{!728, !671, !729, !607}
!729 = !DILocation(line: 136, column: 5, scope: !548)
!730 = !DILocation(line: 138, column: 5, scope: !500)
!731 = !DILocation(line: 139, column: 1, scope: !500)
!732 = distinct !DISubprogram(name: "Lisp_CharLessEqual", scope: !2, file: !2, line: 151, type: !236, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !733)
!733 = !{!734}
!734 = !DILocalVariable(name: "builtin", arg: 1, scope: !732, file: !2, line: 151, type: !228)
!735 = !DILocation(line: 151, column: 33, scope: !732)
!736 = !DILocation(line: 156, column: 29, scope: !732)
!737 = !DILocation(line: 156, column: 13, scope: !732)
!738 = !DILocation(line: 156, column: 5, scope: !732)
!739 = distinct !DISubprogram(name: "Lisp_CharEqual_", scope: !2, file: !2, line: 160, type: !236, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !740)
!740 = !{!741}
!741 = !DILocalVariable(name: "builtin", arg: 1, scope: !739, file: !2, line: 160, type: !228)
!742 = !DILocation(line: 160, column: 30, scope: !739)
!743 = !DILocation(line: 165, column: 29, scope: !739)
!744 = !DILocation(line: 165, column: 13, scope: !739)
!745 = !DILocation(line: 165, column: 5, scope: !739)
!746 = distinct !DISubprogram(name: "Lisp_CharGreater", scope: !2, file: !2, line: 169, type: !236, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !747)
!747 = !{!748}
!748 = !DILocalVariable(name: "builtin", arg: 1, scope: !746, file: !2, line: 169, type: !228)
!749 = !DILocation(line: 169, column: 31, scope: !746)
!750 = !DILocation(line: 174, column: 29, scope: !746)
!751 = !DILocation(line: 174, column: 13, scope: !746)
!752 = !DILocation(line: 174, column: 5, scope: !746)
!753 = distinct !DISubprogram(name: "Lisp_CharGreaterEqual", scope: !2, file: !2, line: 178, type: !236, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !754)
!754 = !{!755}
!755 = !DILocalVariable(name: "builtin", arg: 1, scope: !753, file: !2, line: 178, type: !228)
!756 = !DILocation(line: 178, column: 36, scope: !753)
!757 = !DILocation(line: 183, column: 29, scope: !753)
!758 = !DILocation(line: 183, column: 13, scope: !753)
!759 = !DILocation(line: 183, column: 5, scope: !753)
!760 = distinct !DISubprogram(name: "Lisp_CharNotEqual_", scope: !2, file: !2, line: 187, type: !236, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !761)
!761 = !{!762}
!762 = !DILocalVariable(name: "builtin", arg: 1, scope: !760, file: !2, line: 187, type: !228)
!763 = !DILocation(line: 187, column: 33, scope: !760)
!764 = !DILocation(line: 192, column: 29, scope: !760)
!765 = !DILocation(line: 192, column: 13, scope: !760)
!766 = !DILocation(line: 192, column: 5, scope: !760)
!767 = distinct !DISubprogram(name: "Lisp_CharLessp", scope: !2, file: !2, line: 196, type: !236, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !768)
!768 = !{!769}
!769 = !DILocalVariable(name: "builtin", arg: 1, scope: !767, file: !2, line: 196, type: !228)
!770 = !DILocation(line: 196, column: 29, scope: !767)
!771 = !DILocation(line: 201, column: 29, scope: !767)
!772 = !DILocation(line: 201, column: 13, scope: !767)
!773 = !DILocation(line: 201, column: 5, scope: !767)
!774 = distinct !DISubprogram(name: "Lisp_CharNotGreaterp", scope: !2, file: !2, line: 205, type: !236, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !775)
!775 = !{!776}
!776 = !DILocalVariable(name: "builtin", arg: 1, scope: !774, file: !2, line: 205, type: !228)
!777 = !DILocation(line: 205, column: 35, scope: !774)
!778 = !DILocation(line: 210, column: 29, scope: !774)
!779 = !DILocation(line: 210, column: 13, scope: !774)
!780 = !DILocation(line: 210, column: 5, scope: !774)
!781 = distinct !DISubprogram(name: "Lisp_CharEqual", scope: !2, file: !2, line: 214, type: !236, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !782)
!782 = !{!783}
!783 = !DILocalVariable(name: "builtin", arg: 1, scope: !781, file: !2, line: 214, type: !228)
!784 = !DILocation(line: 214, column: 29, scope: !781)
!785 = !DILocation(line: 219, column: 29, scope: !781)
!786 = !DILocation(line: 219, column: 13, scope: !781)
!787 = !DILocation(line: 219, column: 5, scope: !781)
!788 = distinct !DISubprogram(name: "Lisp_CharGreaterp", scope: !2, file: !2, line: 223, type: !236, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !789)
!789 = !{!790}
!790 = !DILocalVariable(name: "builtin", arg: 1, scope: !788, file: !2, line: 223, type: !228)
!791 = !DILocation(line: 223, column: 32, scope: !788)
!792 = !DILocation(line: 228, column: 29, scope: !788)
!793 = !DILocation(line: 228, column: 13, scope: !788)
!794 = !DILocation(line: 228, column: 5, scope: !788)
!795 = distinct !DISubprogram(name: "Lisp_CharNotLessp", scope: !2, file: !2, line: 232, type: !236, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !796)
!796 = !{!797}
!797 = !DILocalVariable(name: "builtin", arg: 1, scope: !795, file: !2, line: 232, type: !228)
!798 = !DILocation(line: 232, column: 32, scope: !795)
!799 = !DILocation(line: 237, column: 29, scope: !795)
!800 = !DILocation(line: 237, column: 13, scope: !795)
!801 = !DILocation(line: 237, column: 5, scope: !795)
!802 = distinct !DISubprogram(name: "Lisp_CharNotEqual", scope: !2, file: !2, line: 241, type: !236, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !803)
!803 = !{!804}
!804 = !DILocalVariable(name: "builtin", arg: 1, scope: !802, file: !2, line: 241, type: !228)
!805 = !DILocation(line: 241, column: 32, scope: !802)
!806 = !DILocation(line: 246, column: 29, scope: !802)
!807 = !DILocation(line: 246, column: 13, scope: !802)
!808 = !DILocation(line: 246, column: 5, scope: !802)
!809 = distinct !DISubprogram(name: "Lisp_AlphaCharP", scope: !2, file: !2, line: 293, type: !236, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !810)
!810 = !{!811}
!811 = !DILocalVariable(name: "builtin", arg: 1, scope: !809, file: !2, line: 293, type: !228)
!812 = !DILocation(line: 293, column: 30, scope: !809)
!813 = !DILocation(line: 298, column: 24, scope: !809)
!814 = !DILocation(line: 298, column: 13, scope: !809)
!815 = !DILocation(line: 298, column: 5, scope: !809)
!816 = distinct !DISubprogram(name: "LispCharOp", scope: !2, file: !2, line: 250, type: !817, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!129, !228, !173}
!819 = !{!820, !821, !822, !823, !824, !825, !828, !833, !835}
!820 = !DILocalVariable(name: "builtin", arg: 1, scope: !816, file: !2, line: 250, type: !228)
!821 = !DILocalVariable(name: "operation", arg: 2, scope: !816, file: !2, line: 250, type: !173)
!822 = !DILocalVariable(name: "value", scope: !816, file: !2, line: 252, type: !173)
!823 = !DILocalVariable(name: "result", scope: !816, file: !2, line: 253, type: !129)
!824 = !DILocalVariable(name: "character", scope: !816, file: !2, line: 253, type: !129)
!825 = !DILocalVariable(name: "__res", scope: !826, file: !2, line: 264, type: !173)
!826 = distinct !DILexicalBlock(scope: !827, file: !2, line: 264, column: 15)
!827 = distinct !DILexicalBlock(scope: !816, file: !2, line: 259, column: 24)
!828 = !DILocalVariable(name: "__c", scope: !829, file: !2, line: 264, type: !173)
!829 = distinct !DILexicalBlock(scope: !830, file: !2, line: 264, column: 15)
!830 = distinct !DILexicalBlock(scope: !831, file: !2, line: 264, column: 15)
!831 = distinct !DILexicalBlock(scope: !832, file: !2, line: 264, column: 15)
!832 = distinct !DILexicalBlock(scope: !826, file: !2, line: 264, column: 15)
!833 = !DILocalVariable(name: "__res", scope: !834, file: !2, line: 267, type: !173)
!834 = distinct !DILexicalBlock(scope: !827, file: !2, line: 267, column: 15)
!835 = !DILocalVariable(name: "__c", scope: !836, file: !2, line: 267, type: !173)
!836 = distinct !DILexicalBlock(scope: !837, file: !2, line: 267, column: 15)
!837 = distinct !DILexicalBlock(scope: !838, file: !2, line: 267, column: 15)
!838 = distinct !DILexicalBlock(scope: !839, file: !2, line: 267, column: 15)
!839 = distinct !DILexicalBlock(scope: !834, file: !2, line: 267, column: 15)
!840 = !DILocation(line: 250, column: 25, scope: !816)
!841 = !DILocation(line: 250, column: 38, scope: !816)
!842 = !DILocation(line: 252, column: 5, scope: !816)
!843 = !DILocation(line: 252, column: 9, scope: !816)
!844 = !DILocation(line: 253, column: 5, scope: !816)
!845 = !DILocation(line: 253, column: 14, scope: !816)
!846 = !DILocation(line: 253, column: 23, scope: !816)
!847 = !DILocation(line: 255, column: 17, scope: !816)
!848 = !DILocation(line: 255, column: 15, scope: !816)
!849 = !DILocation(line: 256, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !816, file: !2, line: 256, column: 5)
!851 = !DILocation(line: 256, column: 5, scope: !816)
!852 = !DILocation(line: 257, column: 18, scope: !816)
!853 = !DILocation(line: 257, column: 13, scope: !816)
!854 = !DILocation(line: 257, column: 11, scope: !816)
!855 = !DILocation(line: 259, column: 13, scope: !816)
!856 = !DILocation(line: 259, column: 5, scope: !816)
!857 = !DILocation(line: 261, column: 15, scope: !827)
!858 = !DILocation(line: 261, column: 13, scope: !827)
!859 = !DILocation(line: 262, column: 6, scope: !827)
!860 = !DILocation(line: 264, column: 15, scope: !826)
!861 = !DILocation(line: 264, column: 15, scope: !830)
!862 = !DILocation(line: 264, column: 15, scope: !831)
!863 = !DILocation(line: 264, column: 15, scope: !829)
!864 = !DILocation(line: 264, column: 15, scope: !832)
!865 = !DILocation(line: 264, column: 15, scope: !827)
!866 = !DILocation(line: 264, column: 13, scope: !827)
!867 = !DILocation(line: 265, column: 6, scope: !827)
!868 = !DILocation(line: 267, column: 15, scope: !834)
!869 = !DILocation(line: 267, column: 15, scope: !837)
!870 = !DILocation(line: 267, column: 15, scope: !838)
!871 = !DILocation(line: 267, column: 15, scope: !836)
!872 = !DILocation(line: 267, column: 15, scope: !839)
!873 = !DILocation(line: 267, column: 15, scope: !827)
!874 = !DILocation(line: 267, column: 13, scope: !827)
!875 = !DILocation(line: 268, column: 6, scope: !827)
!876 = !DILocation(line: 270, column: 15, scope: !827)
!877 = !DILocation(line: 270, column: 13, scope: !827)
!878 = !DILocation(line: 271, column: 6, scope: !827)
!879 = !DILocation(line: 273, column: 15, scope: !827)
!880 = !DILocation(line: 273, column: 30, scope: !827)
!881 = !DILocation(line: 273, column: 33, scope: !827)
!882 = !DILocation(line: 273, column: 13, scope: !827)
!883 = !DILocation(line: 274, column: 6, scope: !827)
!884 = !DILocation(line: 276, column: 15, scope: !827)
!885 = !DILocation(line: 276, column: 13, scope: !827)
!886 = !DILocation(line: 277, column: 6, scope: !827)
!887 = !DILocation(line: 279, column: 15, scope: !827)
!888 = !DILocation(line: 279, column: 13, scope: !827)
!889 = !DILocation(line: 280, column: 6, scope: !827)
!890 = !DILocation(line: 282, column: 15, scope: !827)
!891 = !DILocation(line: 282, column: 21, scope: !827)
!892 = !DILocation(line: 282, column: 28, scope: !827)
!893 = !DILocation(line: 282, column: 31, scope: !827)
!894 = !DILocation(line: 282, column: 13, scope: !827)
!895 = !DILocation(line: 283, column: 6, scope: !827)
!896 = !DILocation(line: 285, column: 13, scope: !827)
!897 = !DILocation(line: 286, column: 6, scope: !827)
!898 = !DILocation(line: 289, column: 13, scope: !816)
!899 = !DILocation(line: 290, column: 1, scope: !816)
!900 = !DILocation(line: 289, column: 5, scope: !816)
!901 = distinct !DISubprogram(name: "Lisp_CharDowncase", scope: !2, file: !2, line: 302, type: !236, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !902)
!902 = !{!903}
!903 = !DILocalVariable(name: "builtin", arg: 1, scope: !901, file: !2, line: 302, type: !228)
!904 = !DILocation(line: 302, column: 32, scope: !901)
!905 = !DILocation(line: 307, column: 24, scope: !901)
!906 = !DILocation(line: 307, column: 13, scope: !901)
!907 = !DILocation(line: 307, column: 5, scope: !901)
!908 = distinct !DISubprogram(name: "Lisp_CharInt", scope: !2, file: !2, line: 311, type: !236, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !909)
!909 = !{!910}
!910 = !DILocalVariable(name: "builtin", arg: 1, scope: !908, file: !2, line: 311, type: !228)
!911 = !DILocation(line: 311, column: 27, scope: !908)
!912 = !DILocation(line: 317, column: 24, scope: !908)
!913 = !DILocation(line: 317, column: 13, scope: !908)
!914 = !DILocation(line: 317, column: 5, scope: !908)
!915 = distinct !DISubprogram(name: "Lisp_CharUpcase", scope: !2, file: !2, line: 321, type: !236, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !916)
!916 = !{!917}
!917 = !DILocalVariable(name: "builtin", arg: 1, scope: !915, file: !2, line: 321, type: !228)
!918 = !DILocation(line: 321, column: 30, scope: !915)
!919 = !DILocation(line: 326, column: 24, scope: !915)
!920 = !DILocation(line: 326, column: 13, scope: !915)
!921 = !DILocation(line: 326, column: 5, scope: !915)
!922 = distinct !DISubprogram(name: "Lisp_BothCaseP", scope: !2, file: !2, line: 330, type: !236, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !923)
!923 = !{!924}
!924 = !DILocalVariable(name: "builtin", arg: 1, scope: !922, file: !2, line: 330, type: !228)
!925 = !DILocation(line: 330, column: 29, scope: !922)
!926 = !DILocation(line: 335, column: 24, scope: !922)
!927 = !DILocation(line: 335, column: 13, scope: !922)
!928 = !DILocation(line: 335, column: 5, scope: !922)
!929 = distinct !DISubprogram(name: "Lisp_UpperCaseP", scope: !2, file: !2, line: 339, type: !236, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !930)
!930 = !{!931}
!931 = !DILocalVariable(name: "builtin", arg: 1, scope: !929, file: !2, line: 339, type: !228)
!932 = !DILocation(line: 339, column: 30, scope: !929)
!933 = !DILocation(line: 344, column: 24, scope: !929)
!934 = !DILocation(line: 344, column: 13, scope: !929)
!935 = !DILocation(line: 344, column: 5, scope: !929)
!936 = distinct !DISubprogram(name: "Lisp_LowerCaseP", scope: !2, file: !2, line: 348, type: !236, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !937)
!937 = !{!938}
!938 = !DILocalVariable(name: "builtin", arg: 1, scope: !936, file: !2, line: 348, type: !228)
!939 = !DILocation(line: 348, column: 30, scope: !936)
!940 = !DILocation(line: 353, column: 24, scope: !936)
!941 = !DILocation(line: 353, column: 13, scope: !936)
!942 = !DILocation(line: 353, column: 5, scope: !936)
!943 = distinct !DISubprogram(name: "Lisp_GraphicCharP", scope: !2, file: !2, line: 357, type: !236, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !944)
!944 = !{!945}
!945 = !DILocalVariable(name: "builtin", arg: 1, scope: !943, file: !2, line: 357, type: !228)
!946 = !DILocation(line: 357, column: 32, scope: !943)
!947 = !DILocation(line: 362, column: 24, scope: !943)
!948 = !DILocation(line: 362, column: 13, scope: !943)
!949 = !DILocation(line: 362, column: 5, scope: !943)
!950 = distinct !DISubprogram(name: "Lisp_Char", scope: !2, file: !2, line: 366, type: !236, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !951)
!951 = !{!952, !953, !954, !955, !956, !957}
!952 = !DILocalVariable(name: "builtin", arg: 1, scope: !950, file: !2, line: 366, type: !228)
!953 = !DILocalVariable(name: "string", scope: !950, file: !2, line: 372, type: !127)
!954 = !DILocalVariable(name: "offset", scope: !950, file: !2, line: 373, type: !126)
!955 = !DILocalVariable(name: "length", scope: !950, file: !2, line: 373, type: !126)
!956 = !DILocalVariable(name: "ostring", scope: !950, file: !2, line: 375, type: !129)
!957 = !DILocalVariable(name: "oindex", scope: !950, file: !2, line: 375, type: !129)
!958 = !DILocation(line: 366, column: 24, scope: !950)
!959 = !DILocation(line: 372, column: 5, scope: !950)
!960 = !DILocation(line: 372, column: 20, scope: !950)
!961 = !DILocation(line: 373, column: 5, scope: !950)
!962 = !DILocation(line: 373, column: 10, scope: !950)
!963 = !DILocation(line: 373, column: 18, scope: !950)
!964 = !DILocation(line: 375, column: 5, scope: !950)
!965 = !DILocation(line: 375, column: 14, scope: !950)
!966 = !DILocation(line: 375, column: 24, scope: !950)
!967 = !DILocation(line: 377, column: 14, scope: !950)
!968 = !DILocation(line: 377, column: 12, scope: !950)
!969 = !DILocation(line: 378, column: 15, scope: !950)
!970 = !DILocation(line: 378, column: 13, scope: !950)
!971 = !DILocation(line: 380, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !950, file: !2, line: 380, column: 5)
!973 = !DILocation(line: 380, column: 5, scope: !950)
!974 = !DILocation(line: 381, column: 5, scope: !975)
!975 = distinct !DILexicalBlock(scope: !950, file: !2, line: 381, column: 5)
!976 = !DILocation(line: 381, column: 5, scope: !950)
!977 = !DILocation(line: 382, column: 14, scope: !950)
!978 = !DILocation(line: 382, column: 12, scope: !950)
!979 = !DILocation(line: 383, column: 30, scope: !950)
!980 = !DILocation(line: 383, column: 12, scope: !950)
!981 = !DILocation(line: 384, column: 14, scope: !950)
!982 = !DILocation(line: 384, column: 12, scope: !950)
!983 = !DILocation(line: 386, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !950, file: !2, line: 386, column: 9)
!985 = !DILocation(line: 386, column: 19, scope: !984)
!986 = !DILocation(line: 386, column: 16, scope: !984)
!987 = !DILocation(line: 386, column: 9, scope: !950)
!988 = !DILocation(line: 388, column: 7, scope: !984)
!989 = !DILocation(line: 388, column: 24, scope: !984)
!990 = !DILocation(line: 388, column: 32, scope: !984)
!991 = !DILocation(line: 387, column: 2, scope: !984)
!992 = !DILocation(line: 390, column: 13, scope: !950)
!993 = !DILocation(line: 391, column: 1, scope: !950)
!994 = !DILocation(line: 390, column: 5, scope: !950)
!995 = !DISubprogram(name: "LispDestroy", scope: !67, file: !67, line: 754, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !239, null}
!998 = !DISubprogram(name: "LispStrObj", scope: !67, file: !67, line: 747, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!155, !129}
!1001 = distinct !DISubprogram(name: "Lisp_XeditCharStore", scope: !2, file: !2, line: 397, type: !236, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009}
!1003 = !DILocalVariable(name: "builtin", arg: 1, scope: !1001, file: !2, line: 397, type: !228)
!1004 = !DILocalVariable(name: "character", scope: !1001, file: !2, line: 402, type: !173)
!1005 = !DILocalVariable(name: "offset", scope: !1001, file: !2, line: 403, type: !126)
!1006 = !DILocalVariable(name: "length", scope: !1001, file: !2, line: 403, type: !126)
!1007 = !DILocalVariable(name: "ostring", scope: !1001, file: !2, line: 404, type: !129)
!1008 = !DILocalVariable(name: "oindex", scope: !1001, file: !2, line: 404, type: !129)
!1009 = !DILocalVariable(name: "ovalue", scope: !1001, file: !2, line: 404, type: !129)
!1010 = !DILocation(line: 397, column: 34, scope: !1001)
!1011 = !DILocation(line: 402, column: 5, scope: !1001)
!1012 = !DILocation(line: 402, column: 9, scope: !1001)
!1013 = !DILocation(line: 403, column: 5, scope: !1001)
!1014 = !DILocation(line: 403, column: 10, scope: !1001)
!1015 = !DILocation(line: 403, column: 18, scope: !1001)
!1016 = !DILocation(line: 404, column: 5, scope: !1001)
!1017 = !DILocation(line: 404, column: 14, scope: !1001)
!1018 = !DILocation(line: 404, column: 24, scope: !1001)
!1019 = !DILocation(line: 404, column: 33, scope: !1001)
!1020 = !DILocation(line: 406, column: 14, scope: !1001)
!1021 = !DILocation(line: 406, column: 12, scope: !1001)
!1022 = !DILocation(line: 407, column: 14, scope: !1001)
!1023 = !DILocation(line: 407, column: 12, scope: !1001)
!1024 = !DILocation(line: 408, column: 15, scope: !1001)
!1025 = !DILocation(line: 408, column: 13, scope: !1001)
!1026 = !DILocation(line: 410, column: 5, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 410, column: 5)
!1028 = !DILocation(line: 410, column: 5, scope: !1001)
!1029 = !DILocation(line: 411, column: 5, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 411, column: 5)
!1031 = !DILocation(line: 411, column: 5, scope: !1001)
!1032 = !DILocation(line: 412, column: 14, scope: !1001)
!1033 = !DILocation(line: 412, column: 12, scope: !1001)
!1034 = !DILocation(line: 413, column: 14, scope: !1001)
!1035 = !DILocation(line: 413, column: 12, scope: !1001)
!1036 = !DILocation(line: 414, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 414, column: 9)
!1038 = !DILocation(line: 414, column: 19, scope: !1037)
!1039 = !DILocation(line: 414, column: 16, scope: !1037)
!1040 = !DILocation(line: 414, column: 9, scope: !1001)
!1041 = !DILocation(line: 416, column: 7, scope: !1037)
!1042 = !DILocation(line: 416, column: 24, scope: !1037)
!1043 = !DILocation(line: 416, column: 32, scope: !1037)
!1044 = !DILocation(line: 415, column: 2, scope: !1037)
!1045 = !DILocation(line: 417, column: 5, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 417, column: 5)
!1047 = !DILocation(line: 417, column: 5, scope: !1001)
!1048 = !DILocation(line: 418, column: 5, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 418, column: 5)
!1050 = !DILocation(line: 418, column: 5, scope: !1001)
!1051 = !DILocation(line: 420, column: 17, scope: !1001)
!1052 = !DILocation(line: 420, column: 15, scope: !1001)
!1053 = !DILocation(line: 422, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 422, column: 9)
!1055 = !DILocation(line: 422, column: 19, scope: !1054)
!1056 = !DILocation(line: 422, column: 23, scope: !1054)
!1057 = !DILocation(line: 422, column: 26, scope: !1054)
!1058 = !DILocation(line: 422, column: 36, scope: !1054)
!1059 = !DILocation(line: 422, column: 9, scope: !1001)
!1060 = !DILocation(line: 424, column: 7, scope: !1054)
!1061 = !DILocation(line: 424, column: 24, scope: !1054)
!1062 = !DILocation(line: 423, column: 2, scope: !1054)
!1063 = !DILocation(line: 426, column: 31, scope: !1001)
!1064 = !DILocation(line: 426, column: 5, scope: !1001)
!1065 = !DILocation(line: 426, column: 21, scope: !1001)
!1066 = !DILocation(line: 426, column: 29, scope: !1001)
!1067 = !DILocation(line: 428, column: 13, scope: !1001)
!1068 = !DILocation(line: 429, column: 1, scope: !1001)
!1069 = !DILocation(line: 428, column: 5, scope: !1001)
!1070 = distinct !DISubprogram(name: "Lisp_Character", scope: !2, file: !2, line: 432, type: !236, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1071)
!1071 = !{!1072, !1073}
!1072 = !DILocalVariable(name: "builtin", arg: 1, scope: !1070, file: !2, line: 432, type: !228)
!1073 = !DILocalVariable(name: "object", scope: !1070, file: !2, line: 437, type: !129)
!1074 = !DILocation(line: 432, column: 29, scope: !1070)
!1075 = !DILocation(line: 437, column: 5, scope: !1070)
!1076 = !DILocation(line: 437, column: 14, scope: !1070)
!1077 = !DILocation(line: 439, column: 14, scope: !1070)
!1078 = !DILocation(line: 439, column: 12, scope: !1070)
!1079 = !DILocation(line: 441, column: 33, scope: !1070)
!1080 = !DILocation(line: 441, column: 42, scope: !1070)
!1081 = !DILocation(line: 441, column: 13, scope: !1070)
!1082 = !DILocation(line: 442, column: 1, scope: !1070)
!1083 = !DILocation(line: 441, column: 5, scope: !1070)
!1084 = !DISubprogram(name: "LispCharacterCoerce", scope: !1085, file: !1085, line: 43, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1085 = !DIFile(filename: "./lisp/helper.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "a5cabf1da693dc5c54afc5290ca63a88")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!129, !228, !129}
!1088 = distinct !DISubprogram(name: "Lisp_Characterp", scope: !2, file: !2, line: 445, type: !236, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1089)
!1089 = !{!1090, !1091}
!1090 = !DILocalVariable(name: "builtin", arg: 1, scope: !1088, file: !2, line: 445, type: !228)
!1091 = !DILocalVariable(name: "object", scope: !1088, file: !2, line: 450, type: !129)
!1092 = !DILocation(line: 445, column: 30, scope: !1088)
!1093 = !DILocation(line: 450, column: 5, scope: !1088)
!1094 = !DILocation(line: 450, column: 14, scope: !1088)
!1095 = !DILocation(line: 452, column: 14, scope: !1088)
!1096 = !DILocation(line: 452, column: 12, scope: !1088)
!1097 = !DILocation(line: 454, column: 13, scope: !1088)
!1098 = !DILocation(line: 455, column: 1, scope: !1088)
!1099 = !DILocation(line: 454, column: 5, scope: !1088)
!1100 = distinct !DISubprogram(name: "Lisp_DigitChar", scope: !2, file: !2, line: 458, type: !236, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1101)
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107}
!1102 = !DILocalVariable(name: "builtin", arg: 1, scope: !1100, file: !2, line: 458, type: !228)
!1103 = !DILocalVariable(name: "radix", scope: !1100, file: !2, line: 463, type: !126)
!1104 = !DILocalVariable(name: "weight", scope: !1100, file: !2, line: 463, type: !126)
!1105 = !DILocalVariable(name: "oweight", scope: !1100, file: !2, line: 464, type: !129)
!1106 = !DILocalVariable(name: "oradix", scope: !1100, file: !2, line: 464, type: !129)
!1107 = !DILocalVariable(name: "result", scope: !1100, file: !2, line: 464, type: !129)
!1108 = !DILocation(line: 458, column: 29, scope: !1100)
!1109 = !DILocation(line: 463, column: 5, scope: !1100)
!1110 = !DILocation(line: 463, column: 10, scope: !1100)
!1111 = !DILocation(line: 463, column: 22, scope: !1100)
!1112 = !DILocation(line: 464, column: 5, scope: !1100)
!1113 = !DILocation(line: 464, column: 14, scope: !1100)
!1114 = !DILocation(line: 464, column: 24, scope: !1100)
!1115 = !DILocation(line: 464, column: 33, scope: !1100)
!1116 = !DILocation(line: 466, column: 14, scope: !1100)
!1117 = !DILocation(line: 466, column: 12, scope: !1100)
!1118 = !DILocation(line: 467, column: 15, scope: !1100)
!1119 = !DILocation(line: 467, column: 13, scope: !1100)
!1120 = !DILocation(line: 469, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 469, column: 5)
!1122 = !DILocation(line: 469, column: 5, scope: !1100)
!1123 = !DILocation(line: 470, column: 14, scope: !1100)
!1124 = !DILocation(line: 470, column: 12, scope: !1100)
!1125 = !DILocation(line: 472, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 472, column: 9)
!1127 = !DILocation(line: 472, column: 16, scope: !1126)
!1128 = !DILocation(line: 472, column: 9, scope: !1100)
!1129 = !DILocation(line: 473, column: 2, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 473, column: 2)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 472, column: 27)
!1132 = !DILocation(line: 473, column: 2, scope: !1131)
!1133 = !DILocation(line: 474, column: 10, scope: !1131)
!1134 = !DILocation(line: 474, column: 8, scope: !1131)
!1135 = !DILocation(line: 475, column: 5, scope: !1131)
!1136 = !DILocation(line: 476, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 476, column: 9)
!1138 = !DILocation(line: 476, column: 15, scope: !1137)
!1139 = !DILocation(line: 476, column: 19, scope: !1137)
!1140 = !DILocation(line: 476, column: 22, scope: !1137)
!1141 = !DILocation(line: 476, column: 28, scope: !1137)
!1142 = !DILocation(line: 476, column: 9, scope: !1100)
!1143 = !DILocation(line: 478, column: 7, scope: !1137)
!1144 = !DILocation(line: 478, column: 24, scope: !1137)
!1145 = !DILocation(line: 477, column: 2, scope: !1137)
!1146 = !DILocation(line: 480, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 480, column: 9)
!1148 = !DILocation(line: 480, column: 16, scope: !1147)
!1149 = !DILocation(line: 480, column: 21, scope: !1147)
!1150 = !DILocation(line: 480, column: 24, scope: !1147)
!1151 = !DILocation(line: 480, column: 33, scope: !1147)
!1152 = !DILocation(line: 480, column: 31, scope: !1147)
!1153 = !DILocation(line: 480, column: 9, scope: !1100)
!1154 = !DILocation(line: 481, column: 6, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 481, column: 6)
!1156 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 480, column: 40)
!1157 = !DILocation(line: 481, column: 13, scope: !1155)
!1158 = !DILocation(line: 481, column: 6, scope: !1156)
!1159 = !DILocation(line: 482, column: 13, scope: !1155)
!1160 = !DILocation(line: 482, column: 6, scope: !1155)
!1161 = !DILocation(line: 484, column: 13, scope: !1155)
!1162 = !DILocation(line: 485, column: 11, scope: !1156)
!1163 = !DILocation(line: 485, column: 9, scope: !1156)
!1164 = !DILocation(line: 486, column: 5, scope: !1156)
!1165 = !DILocation(line: 488, column: 13, scope: !1100)
!1166 = !DILocation(line: 489, column: 1, scope: !1100)
!1167 = !DILocation(line: 488, column: 5, scope: !1100)
!1168 = distinct !DISubprogram(name: "Lisp_DigitCharP", scope: !2, file: !2, line: 492, type: !236, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175}
!1170 = !DILocalVariable(name: "builtin", arg: 1, scope: !1168, file: !2, line: 492, type: !228)
!1171 = !DILocalVariable(name: "radix", scope: !1168, file: !2, line: 497, type: !126)
!1172 = !DILocalVariable(name: "character", scope: !1168, file: !2, line: 497, type: !126)
!1173 = !DILocalVariable(name: "ochar", scope: !1168, file: !2, line: 498, type: !129)
!1174 = !DILocalVariable(name: "oradix", scope: !1168, file: !2, line: 498, type: !129)
!1175 = !DILocalVariable(name: "result", scope: !1168, file: !2, line: 498, type: !129)
!1176 = !DILocation(line: 492, column: 30, scope: !1168)
!1177 = !DILocation(line: 497, column: 5, scope: !1168)
!1178 = !DILocation(line: 497, column: 10, scope: !1168)
!1179 = !DILocation(line: 497, column: 22, scope: !1168)
!1180 = !DILocation(line: 498, column: 5, scope: !1168)
!1181 = !DILocation(line: 498, column: 14, scope: !1168)
!1182 = !DILocation(line: 498, column: 22, scope: !1168)
!1183 = !DILocation(line: 498, column: 31, scope: !1168)
!1184 = !DILocation(line: 500, column: 14, scope: !1168)
!1185 = !DILocation(line: 500, column: 12, scope: !1168)
!1186 = !DILocation(line: 501, column: 13, scope: !1168)
!1187 = !DILocation(line: 501, column: 11, scope: !1168)
!1188 = !DILocation(line: 503, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 503, column: 5)
!1190 = !DILocation(line: 503, column: 5, scope: !1168)
!1191 = !DILocation(line: 504, column: 17, scope: !1168)
!1192 = !DILocation(line: 504, column: 15, scope: !1168)
!1193 = !DILocation(line: 505, column: 9, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 505, column: 9)
!1195 = !DILocation(line: 505, column: 16, scope: !1194)
!1196 = !DILocation(line: 505, column: 9, scope: !1168)
!1197 = !DILocation(line: 506, column: 2, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 506, column: 2)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 505, column: 27)
!1200 = !DILocation(line: 506, column: 2, scope: !1199)
!1201 = !DILocation(line: 507, column: 10, scope: !1199)
!1202 = !DILocation(line: 507, column: 8, scope: !1199)
!1203 = !DILocation(line: 508, column: 5, scope: !1199)
!1204 = !DILocation(line: 509, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 509, column: 9)
!1206 = !DILocation(line: 509, column: 15, scope: !1205)
!1207 = !DILocation(line: 509, column: 19, scope: !1205)
!1208 = !DILocation(line: 509, column: 22, scope: !1205)
!1209 = !DILocation(line: 509, column: 28, scope: !1205)
!1210 = !DILocation(line: 509, column: 9, scope: !1168)
!1211 = !DILocation(line: 511, column: 7, scope: !1205)
!1212 = !DILocation(line: 511, column: 24, scope: !1205)
!1213 = !DILocation(line: 510, column: 2, scope: !1205)
!1214 = !DILocation(line: 513, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 513, column: 9)
!1216 = !DILocation(line: 513, column: 19, scope: !1215)
!1217 = !DILocation(line: 513, column: 26, scope: !1215)
!1218 = !DILocation(line: 513, column: 29, scope: !1215)
!1219 = !DILocation(line: 513, column: 39, scope: !1215)
!1220 = !DILocation(line: 513, column: 9, scope: !1168)
!1221 = !DILocation(line: 514, column: 12, scope: !1215)
!1222 = !DILocation(line: 514, column: 2, scope: !1215)
!1223 = !DILocation(line: 515, column: 14, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 515, column: 14)
!1225 = !DILocation(line: 515, column: 24, scope: !1224)
!1226 = !DILocation(line: 515, column: 31, scope: !1224)
!1227 = !DILocation(line: 515, column: 34, scope: !1224)
!1228 = !DILocation(line: 515, column: 44, scope: !1224)
!1229 = !DILocation(line: 515, column: 14, scope: !1215)
!1230 = !DILocation(line: 516, column: 12, scope: !1224)
!1231 = !DILocation(line: 516, column: 2, scope: !1224)
!1232 = !DILocation(line: 517, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 517, column: 14)
!1234 = !DILocation(line: 517, column: 24, scope: !1233)
!1235 = !DILocation(line: 517, column: 31, scope: !1233)
!1236 = !DILocation(line: 517, column: 34, scope: !1233)
!1237 = !DILocation(line: 517, column: 44, scope: !1233)
!1238 = !DILocation(line: 517, column: 14, scope: !1224)
!1239 = !DILocation(line: 518, column: 12, scope: !1233)
!1240 = !DILocation(line: 518, column: 2, scope: !1233)
!1241 = !DILocation(line: 519, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 519, column: 9)
!1243 = !DILocation(line: 519, column: 21, scope: !1242)
!1244 = !DILocation(line: 519, column: 19, scope: !1242)
!1245 = !DILocation(line: 519, column: 9, scope: !1168)
!1246 = !DILocation(line: 520, column: 11, scope: !1242)
!1247 = !DILocation(line: 520, column: 9, scope: !1242)
!1248 = !DILocation(line: 520, column: 2, scope: !1242)
!1249 = !DILocation(line: 522, column: 13, scope: !1168)
!1250 = !DILocation(line: 523, column: 1, scope: !1168)
!1251 = !DILocation(line: 522, column: 5, scope: !1168)
!1252 = distinct !DISubprogram(name: "Lisp_IntChar", scope: !2, file: !2, line: 526, type: !236, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DILocalVariable(name: "builtin", arg: 1, scope: !1252, file: !2, line: 526, type: !228)
!1255 = !DILocalVariable(name: "character", scope: !1252, file: !2, line: 532, type: !126)
!1256 = !DILocalVariable(name: "integer", scope: !1252, file: !2, line: 533, type: !129)
!1257 = !DILocation(line: 526, column: 27, scope: !1252)
!1258 = !DILocation(line: 532, column: 5, scope: !1252)
!1259 = !DILocation(line: 532, column: 10, scope: !1252)
!1260 = !DILocation(line: 533, column: 5, scope: !1252)
!1261 = !DILocation(line: 533, column: 14, scope: !1252)
!1262 = !DILocation(line: 535, column: 15, scope: !1252)
!1263 = !DILocation(line: 535, column: 13, scope: !1252)
!1264 = !DILocation(line: 537, column: 5, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 537, column: 5)
!1266 = !DILocation(line: 537, column: 5, scope: !1252)
!1267 = !DILocation(line: 538, column: 17, scope: !1252)
!1268 = !DILocation(line: 538, column: 15, scope: !1252)
!1269 = !DILocation(line: 540, column: 13, scope: !1252)
!1270 = !DILocation(line: 540, column: 23, scope: !1252)
!1271 = !DILocation(line: 540, column: 28, scope: !1252)
!1272 = !DILocation(line: 540, column: 31, scope: !1252)
!1273 = !DILocation(line: 540, column: 41, scope: !1252)
!1274 = !DILocation(line: 540, column: 50, scope: !1252)
!1275 = !DILocation(line: 541, column: 1, scope: !1252)
!1276 = !DILocation(line: 540, column: 5, scope: !1252)
!1277 = distinct !DISubprogram(name: "Lisp_MakeString", scope: !2, file: !2, line: 545, type: !236, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284}
!1279 = !DILocalVariable(name: "builtin", arg: 1, scope: !1277, file: !2, line: 545, type: !228)
!1280 = !DILocalVariable(name: "length", scope: !1277, file: !2, line: 550, type: !126)
!1281 = !DILocalVariable(name: "string", scope: !1277, file: !2, line: 551, type: !155)
!1282 = !DILocalVariable(name: "initial", scope: !1277, file: !2, line: 551, type: !4)
!1283 = !DILocalVariable(name: "size", scope: !1277, file: !2, line: 553, type: !129)
!1284 = !DILocalVariable(name: "initial_element", scope: !1277, file: !2, line: 553, type: !129)
!1285 = !DILocation(line: 545, column: 30, scope: !1277)
!1286 = !DILocation(line: 550, column: 5, scope: !1277)
!1287 = !DILocation(line: 550, column: 10, scope: !1277)
!1288 = !DILocation(line: 551, column: 5, scope: !1277)
!1289 = !DILocation(line: 551, column: 11, scope: !1277)
!1290 = !DILocation(line: 551, column: 19, scope: !1277)
!1291 = !DILocation(line: 553, column: 5, scope: !1277)
!1292 = !DILocation(line: 553, column: 14, scope: !1277)
!1293 = !DILocation(line: 553, column: 21, scope: !1277)
!1294 = !DILocation(line: 555, column: 23, scope: !1277)
!1295 = !DILocation(line: 555, column: 21, scope: !1277)
!1296 = !DILocation(line: 556, column: 12, scope: !1277)
!1297 = !DILocation(line: 556, column: 10, scope: !1277)
!1298 = !DILocation(line: 558, column: 5, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 558, column: 5)
!1300 = !DILocation(line: 558, column: 5, scope: !1277)
!1301 = !DILocation(line: 559, column: 14, scope: !1277)
!1302 = !DILocation(line: 559, column: 12, scope: !1277)
!1303 = !DILocation(line: 560, column: 9, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 560, column: 9)
!1305 = !DILocation(line: 560, column: 25, scope: !1304)
!1306 = !DILocation(line: 560, column: 9, scope: !1277)
!1307 = !DILocation(line: 561, column: 2, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 561, column: 2)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !2, line: 560, column: 36)
!1310 = !DILocation(line: 561, column: 2, scope: !1309)
!1311 = !DILocation(line: 562, column: 12, scope: !1309)
!1312 = !DILocation(line: 562, column: 10, scope: !1309)
!1313 = !DILocation(line: 563, column: 5, scope: !1309)
!1314 = !DILocation(line: 565, column: 10, scope: !1304)
!1315 = !DILocation(line: 567, column: 25, scope: !1277)
!1316 = !DILocation(line: 567, column: 32, scope: !1277)
!1317 = !DILocation(line: 567, column: 14, scope: !1277)
!1318 = !DILocation(line: 567, column: 12, scope: !1277)
!1319 = !DILocation(line: 568, column: 12, scope: !1277)
!1320 = !DILocation(line: 568, column: 20, scope: !1277)
!1321 = !DILocation(line: 568, column: 5, scope: !1277)
!1322 = !DILocation(line: 568, column: 29, scope: !1277)
!1323 = !DILocation(line: 569, column: 5, scope: !1277)
!1324 = !DILocation(line: 569, column: 12, scope: !1277)
!1325 = !DILocation(line: 569, column: 20, scope: !1277)
!1326 = !DILocation(line: 571, column: 13, scope: !1277)
!1327 = !DILocation(line: 572, column: 1, scope: !1277)
!1328 = !DILocation(line: 571, column: 5, scope: !1277)
!1329 = !DISubprogram(name: "LispMalloc", scope: !67, file: !67, line: 736, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!439, !405}
!1332 = !DISubprogram(name: "LispNewStringAlloced", scope: !67, file: !67, line: 709, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!129, !155, !126}
!1335 = distinct !DISubprogram(name: "Lisp_ParseInteger", scope: !2, file: !2, line: 575, type: !236, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1364, !1369, !1374}
!1337 = !DILocalVariable(name: "builtin", arg: 1, scope: !1335, file: !2, line: 575, type: !228)
!1338 = !DILocalVariable(name: "gc__protect", scope: !1335, file: !2, line: 580, type: !173)
!1339 = !DILocalVariable(name: "ptr", scope: !1335, file: !2, line: 581, type: !155)
!1340 = !DILocalVariable(name: "string", scope: !1335, file: !2, line: 581, type: !155)
!1341 = !DILocalVariable(name: "character", scope: !1335, file: !2, line: 582, type: !173)
!1342 = !DILocalVariable(name: "junk", scope: !1335, file: !2, line: 582, type: !173)
!1343 = !DILocalVariable(name: "sign", scope: !1335, file: !2, line: 582, type: !173)
!1344 = !DILocalVariable(name: "overflow", scope: !1335, file: !2, line: 582, type: !173)
!1345 = !DILocalVariable(name: "i", scope: !1335, file: !2, line: 583, type: !126)
!1346 = !DILocalVariable(name: "start", scope: !1335, file: !2, line: 583, type: !126)
!1347 = !DILocalVariable(name: "end", scope: !1335, file: !2, line: 583, type: !126)
!1348 = !DILocalVariable(name: "radix", scope: !1335, file: !2, line: 583, type: !126)
!1349 = !DILocalVariable(name: "length", scope: !1335, file: !2, line: 583, type: !126)
!1350 = !DILocalVariable(name: "integer", scope: !1335, file: !2, line: 583, type: !126)
!1351 = !DILocalVariable(name: "check", scope: !1335, file: !2, line: 583, type: !126)
!1352 = !DILocalVariable(name: "result", scope: !1335, file: !2, line: 584, type: !129)
!1353 = !DILocalVariable(name: "ostring", scope: !1335, file: !2, line: 586, type: !129)
!1354 = !DILocalVariable(name: "ostart", scope: !1335, file: !2, line: 586, type: !129)
!1355 = !DILocalVariable(name: "oend", scope: !1335, file: !2, line: 586, type: !129)
!1356 = !DILocalVariable(name: "oradix", scope: !1335, file: !2, line: 586, type: !129)
!1357 = !DILocalVariable(name: "junk_allowed", scope: !1335, file: !2, line: 586, type: !129)
!1358 = !DILocalVariable(name: "__res", scope: !1359, file: !2, line: 629, type: !173)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 629, column: 18)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 628, column: 6)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 626, column: 41)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 626, column: 5)
!1363 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 626, column: 5)
!1364 = !DILocalVariable(name: "__c", scope: !1365, file: !2, line: 629, type: !173)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 629, column: 18)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 629, column: 18)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 629, column: 18)
!1368 = distinct !DILexicalBlock(scope: !1359, file: !2, line: 629, column: 18)
!1369 = !DILocalVariable(name: "bigi", scope: !1370, file: !2, line: 672, type: !322)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 671, column: 24)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 671, column: 14)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 669, column: 14)
!1373 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 665, column: 9)
!1374 = !DILocalVariable(name: "str", scope: !1370, file: !2, line: 673, type: !155)
!1375 = !DILocation(line: 575, column: 32, scope: !1335)
!1376 = !DILocation(line: 580, column: 5, scope: !1335)
!1377 = !DILocation(line: 581, column: 5, scope: !1335)
!1378 = !DILocation(line: 581, column: 11, scope: !1335)
!1379 = !DILocation(line: 581, column: 17, scope: !1335)
!1380 = !DILocation(line: 582, column: 5, scope: !1335)
!1381 = !DILocation(line: 582, column: 9, scope: !1335)
!1382 = !DILocation(line: 582, column: 20, scope: !1335)
!1383 = !DILocation(line: 582, column: 26, scope: !1335)
!1384 = !DILocation(line: 582, column: 32, scope: !1335)
!1385 = !DILocation(line: 583, column: 5, scope: !1335)
!1386 = !DILocation(line: 583, column: 10, scope: !1335)
!1387 = !DILocation(line: 583, column: 13, scope: !1335)
!1388 = !DILocation(line: 583, column: 20, scope: !1335)
!1389 = !DILocation(line: 583, column: 25, scope: !1335)
!1390 = !DILocation(line: 583, column: 32, scope: !1335)
!1391 = !DILocation(line: 583, column: 40, scope: !1335)
!1392 = !DILocation(line: 583, column: 49, scope: !1335)
!1393 = !DILocation(line: 584, column: 5, scope: !1335)
!1394 = !DILocation(line: 584, column: 14, scope: !1335)
!1395 = !DILocation(line: 586, column: 5, scope: !1335)
!1396 = !DILocation(line: 586, column: 14, scope: !1335)
!1397 = !DILocation(line: 586, column: 24, scope: !1335)
!1398 = !DILocation(line: 586, column: 33, scope: !1335)
!1399 = !DILocation(line: 586, column: 40, scope: !1335)
!1400 = !DILocation(line: 586, column: 49, scope: !1335)
!1401 = !DILocation(line: 588, column: 20, scope: !1335)
!1402 = !DILocation(line: 588, column: 18, scope: !1335)
!1403 = !DILocation(line: 589, column: 14, scope: !1335)
!1404 = !DILocation(line: 589, column: 12, scope: !1335)
!1405 = !DILocation(line: 590, column: 12, scope: !1335)
!1406 = !DILocation(line: 590, column: 10, scope: !1335)
!1407 = !DILocation(line: 591, column: 14, scope: !1335)
!1408 = !DILocation(line: 591, column: 12, scope: !1335)
!1409 = !DILocation(line: 592, column: 15, scope: !1335)
!1410 = !DILocation(line: 592, column: 13, scope: !1335)
!1411 = !DILocation(line: 594, column: 25, scope: !1335)
!1412 = !DILocation(line: 594, column: 17, scope: !1335)
!1413 = !DILocation(line: 594, column: 11, scope: !1335)
!1414 = !DILocation(line: 595, column: 12, scope: !1335)
!1415 = !DILocation(line: 597, column: 5, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 597, column: 5)
!1417 = !DILocation(line: 597, column: 5, scope: !1335)
!1418 = !DILocation(line: 598, column: 31, scope: !1335)
!1419 = !DILocation(line: 598, column: 40, scope: !1335)
!1420 = !DILocation(line: 598, column: 49, scope: !1335)
!1421 = !DILocation(line: 598, column: 57, scope: !1335)
!1422 = !DILocation(line: 598, column: 5, scope: !1335)
!1423 = !DILocation(line: 600, column: 14, scope: !1335)
!1424 = !DILocation(line: 600, column: 12, scope: !1335)
!1425 = !DILocation(line: 601, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 601, column: 9)
!1427 = !DILocation(line: 601, column: 16, scope: !1426)
!1428 = !DILocation(line: 601, column: 9, scope: !1335)
!1429 = !DILocation(line: 602, column: 8, scope: !1426)
!1430 = !DILocation(line: 602, column: 2, scope: !1426)
!1431 = !DILocation(line: 604, column: 2, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 604, column: 2)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 603, column: 10)
!1434 = !DILocation(line: 604, column: 2, scope: !1433)
!1435 = !DILocation(line: 605, column: 10, scope: !1433)
!1436 = !DILocation(line: 605, column: 8, scope: !1433)
!1437 = !DILocation(line: 607, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 607, column: 9)
!1439 = !DILocation(line: 607, column: 15, scope: !1438)
!1440 = !DILocation(line: 607, column: 19, scope: !1438)
!1441 = !DILocation(line: 607, column: 22, scope: !1438)
!1442 = !DILocation(line: 607, column: 28, scope: !1438)
!1443 = !DILocation(line: 607, column: 9, scope: !1335)
!1444 = !DILocation(line: 609, column: 7, scope: !1438)
!1445 = !DILocation(line: 609, column: 24, scope: !1438)
!1446 = !DILocation(line: 608, column: 2, scope: !1438)
!1447 = !DILocation(line: 611, column: 21, scope: !1335)
!1448 = !DILocation(line: 611, column: 13, scope: !1335)
!1449 = !DILocation(line: 612, column: 11, scope: !1335)
!1450 = !DILocation(line: 612, column: 20, scope: !1335)
!1451 = !DILocation(line: 612, column: 18, scope: !1335)
!1452 = !DILocation(line: 612, column: 9, scope: !1335)
!1453 = !DILocation(line: 613, column: 21, scope: !1335)
!1454 = !DILocation(line: 613, column: 10, scope: !1335)
!1455 = !DILocation(line: 616, column: 14, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 616, column: 5)
!1457 = !DILocation(line: 616, column: 12, scope: !1456)
!1458 = !DILocation(line: 616, column: 10, scope: !1456)
!1459 = !DILocation(line: 616, column: 21, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 616, column: 5)
!1461 = !DILocation(line: 616, column: 25, scope: !1460)
!1462 = !DILocation(line: 616, column: 23, scope: !1460)
!1463 = !DILocation(line: 616, column: 29, scope: !1460)
!1464 = !DILocation(line: 616, column: 33, scope: !1460)
!1465 = !DILocation(line: 616, column: 32, scope: !1460)
!1466 = !DILocation(line: 616, column: 37, scope: !1460)
!1467 = !DILocation(line: 616, column: 40, scope: !1460)
!1468 = !DILocation(line: 0, scope: !1460)
!1469 = !DILocation(line: 616, column: 5, scope: !1456)
!1470 = !DILocation(line: 616, column: 58, scope: !1460)
!1471 = !DILocation(line: 616, column: 63, scope: !1460)
!1472 = !DILocation(line: 616, column: 5, scope: !1460)
!1473 = distinct !{!1473, !1469, !1474, !607}
!1474 = !DILocation(line: 617, column: 2, scope: !1456)
!1475 = !DILocation(line: 620, column: 9, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 620, column: 9)
!1477 = !DILocation(line: 620, column: 13, scope: !1476)
!1478 = !DILocation(line: 620, column: 11, scope: !1476)
!1479 = !DILocation(line: 620, column: 17, scope: !1476)
!1480 = !DILocation(line: 620, column: 22, scope: !1476)
!1481 = !DILocation(line: 620, column: 21, scope: !1476)
!1482 = !DILocation(line: 620, column: 26, scope: !1476)
!1483 = !DILocation(line: 620, column: 33, scope: !1476)
!1484 = !DILocation(line: 620, column: 37, scope: !1476)
!1485 = !DILocation(line: 620, column: 36, scope: !1476)
!1486 = !DILocation(line: 620, column: 41, scope: !1476)
!1487 = !DILocation(line: 620, column: 9, scope: !1335)
!1488 = !DILocation(line: 621, column: 10, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 620, column: 50)
!1490 = !DILocation(line: 621, column: 9, scope: !1489)
!1491 = !DILocation(line: 621, column: 14, scope: !1489)
!1492 = !DILocation(line: 621, column: 7, scope: !1489)
!1493 = !DILocation(line: 622, column: 2, scope: !1489)
!1494 = !DILocation(line: 623, column: 2, scope: !1489)
!1495 = !DILocation(line: 624, column: 5, scope: !1489)
!1496 = !DILocation(line: 626, column: 15, scope: !1363)
!1497 = !DILocation(line: 626, column: 10, scope: !1363)
!1498 = !DILocation(line: 626, column: 20, scope: !1362)
!1499 = !DILocation(line: 626, column: 24, scope: !1362)
!1500 = !DILocation(line: 626, column: 22, scope: !1362)
!1501 = !DILocation(line: 626, column: 5, scope: !1363)
!1502 = !DILocation(line: 627, column: 15, scope: !1361)
!1503 = !DILocation(line: 627, column: 14, scope: !1361)
!1504 = !DILocation(line: 627, column: 12, scope: !1361)
!1505 = !DILocation(line: 628, column: 6, scope: !1360)
!1506 = !DILocation(line: 628, column: 6, scope: !1361)
!1507 = !DILocation(line: 629, column: 18, scope: !1359)
!1508 = !DILocation(line: 629, column: 18, scope: !1366)
!1509 = !DILocation(line: 629, column: 18, scope: !1367)
!1510 = !DILocation(line: 629, column: 18, scope: !1365)
!1511 = !DILocation(line: 629, column: 18, scope: !1368)
!1512 = !DILocation(line: 629, column: 18, scope: !1360)
!1513 = !DILocation(line: 629, column: 16, scope: !1360)
!1514 = !DILocation(line: 629, column: 6, scope: !1360)
!1515 = !DILocation(line: 630, column: 6, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 630, column: 6)
!1517 = !DILocation(line: 630, column: 16, scope: !1516)
!1518 = !DILocation(line: 630, column: 23, scope: !1516)
!1519 = !DILocation(line: 630, column: 26, scope: !1516)
!1520 = !DILocation(line: 630, column: 36, scope: !1516)
!1521 = !DILocation(line: 630, column: 6, scope: !1361)
!1522 = !DILocation(line: 631, column: 10, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 631, column: 10)
!1524 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 630, column: 44)
!1525 = !DILocation(line: 631, column: 20, scope: !1523)
!1526 = !DILocation(line: 631, column: 29, scope: !1523)
!1527 = !DILocation(line: 631, column: 26, scope: !1523)
!1528 = !DILocation(line: 631, column: 10, scope: !1524)
!1529 = !DILocation(line: 632, column: 8, scope: !1523)
!1530 = !DILocation(line: 632, column: 3, scope: !1523)
!1531 = !DILocation(line: 634, column: 11, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 633, column: 11)
!1533 = !DILocation(line: 634, column: 9, scope: !1532)
!1534 = !DILocation(line: 635, column: 13, scope: !1532)
!1535 = !DILocation(line: 635, column: 23, scope: !1532)
!1536 = !DILocation(line: 635, column: 21, scope: !1532)
!1537 = !DILocation(line: 635, column: 31, scope: !1532)
!1538 = !DILocation(line: 635, column: 29, scope: !1532)
!1539 = !DILocation(line: 635, column: 41, scope: !1532)
!1540 = !DILocation(line: 635, column: 11, scope: !1532)
!1541 = !DILocation(line: 637, column: 2, scope: !1524)
!1542 = !DILocation(line: 638, column: 11, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 638, column: 11)
!1544 = !DILocation(line: 638, column: 21, scope: !1543)
!1545 = !DILocation(line: 638, column: 28, scope: !1543)
!1546 = !DILocation(line: 638, column: 31, scope: !1543)
!1547 = !DILocation(line: 638, column: 41, scope: !1543)
!1548 = !DILocation(line: 638, column: 11, scope: !1516)
!1549 = !DILocation(line: 639, column: 10, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !2, line: 639, column: 10)
!1551 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 638, column: 49)
!1552 = !DILocation(line: 639, column: 20, scope: !1550)
!1553 = !DILocation(line: 639, column: 26, scope: !1550)
!1554 = !DILocation(line: 639, column: 34, scope: !1550)
!1555 = !DILocation(line: 639, column: 31, scope: !1550)
!1556 = !DILocation(line: 639, column: 10, scope: !1551)
!1557 = !DILocation(line: 640, column: 8, scope: !1550)
!1558 = !DILocation(line: 640, column: 3, scope: !1550)
!1559 = !DILocation(line: 642, column: 11, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1550, file: !2, line: 641, column: 11)
!1561 = !DILocation(line: 642, column: 9, scope: !1560)
!1562 = !DILocation(line: 643, column: 13, scope: !1560)
!1563 = !DILocation(line: 643, column: 23, scope: !1560)
!1564 = !DILocation(line: 643, column: 21, scope: !1560)
!1565 = !DILocation(line: 643, column: 31, scope: !1560)
!1566 = !DILocation(line: 643, column: 29, scope: !1560)
!1567 = !DILocation(line: 643, column: 41, scope: !1560)
!1568 = !DILocation(line: 643, column: 47, scope: !1560)
!1569 = !DILocation(line: 643, column: 11, scope: !1560)
!1570 = !DILocation(line: 645, column: 2, scope: !1551)
!1571 = !DILocation(line: 647, column: 10, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !2, line: 647, column: 10)
!1573 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 646, column: 7)
!1574 = !DILocation(line: 647, column: 10, scope: !1573)
!1575 = !DILocation(line: 648, column: 3, scope: !1572)
!1576 = !DILocation(line: 649, column: 11, scope: !1573)
!1577 = !DILocation(line: 652, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 652, column: 6)
!1579 = !DILocation(line: 652, column: 6, scope: !1361)
!1580 = !DILocation(line: 653, column: 6, scope: !1578)
!1581 = !DILocation(line: 655, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 655, column: 6)
!1583 = !DILocation(line: 655, column: 16, scope: !1582)
!1584 = !DILocation(line: 655, column: 19, scope: !1582)
!1585 = !DILocation(line: 655, column: 27, scope: !1582)
!1586 = !DILocation(line: 655, column: 25, scope: !1582)
!1587 = !DILocation(line: 655, column: 6, scope: !1361)
!1588 = !DILocation(line: 656, column: 15, scope: !1582)
!1589 = !DILocation(line: 656, column: 6, scope: !1582)
!1590 = !DILocation(line: 658, column: 5, scope: !1361)
!1591 = !DILocation(line: 626, column: 30, scope: !1362)
!1592 = !DILocation(line: 626, column: 37, scope: !1362)
!1593 = !DILocation(line: 626, column: 5, scope: !1362)
!1594 = distinct !{!1594, !1501, !1595, !607}
!1595 = !DILocation(line: 658, column: 5, scope: !1363)
!1596 = !DILocation(line: 660, column: 10, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 660, column: 9)
!1598 = !DILocation(line: 660, column: 9, scope: !1335)
!1599 = !DILocation(line: 662, column: 2, scope: !1597)
!1600 = !DILocation(line: 662, column: 9, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 662, column: 2)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 662, column: 2)
!1603 = !DILocation(line: 662, column: 13, scope: !1601)
!1604 = !DILocation(line: 662, column: 11, scope: !1601)
!1605 = !DILocation(line: 662, column: 17, scope: !1601)
!1606 = !DILocation(line: 662, column: 21, scope: !1601)
!1607 = !DILocation(line: 662, column: 20, scope: !1601)
!1608 = !DILocation(line: 662, column: 25, scope: !1601)
!1609 = !DILocation(line: 662, column: 28, scope: !1601)
!1610 = !DILocation(line: 0, scope: !1601)
!1611 = !DILocation(line: 662, column: 2, scope: !1602)
!1612 = !DILocation(line: 662, column: 46, scope: !1601)
!1613 = !DILocation(line: 662, column: 51, scope: !1601)
!1614 = !DILocation(line: 662, column: 2, scope: !1601)
!1615 = distinct !{!1615, !1611, !1616, !607}
!1616 = !DILocation(line: 663, column: 6, scope: !1602)
!1617 = !DILocation(line: 665, column: 10, scope: !1373)
!1618 = !DILocation(line: 665, column: 15, scope: !1373)
!1619 = !DILocation(line: 665, column: 18, scope: !1373)
!1620 = !DILocation(line: 665, column: 25, scope: !1373)
!1621 = !DILocation(line: 665, column: 22, scope: !1373)
!1622 = !DILocation(line: 665, column: 33, scope: !1373)
!1623 = !DILocation(line: 666, column: 3, scope: !1373)
!1624 = !DILocation(line: 666, column: 16, scope: !1373)
!1625 = !DILocation(line: 666, column: 26, scope: !1373)
!1626 = !DILocation(line: 666, column: 29, scope: !1373)
!1627 = !DILocation(line: 666, column: 42, scope: !1373)
!1628 = !DILocation(line: 665, column: 9, scope: !1335)
!1629 = !DILocation(line: 668, column: 7, scope: !1373)
!1630 = !DILocation(line: 668, column: 24, scope: !1373)
!1631 = !DILocation(line: 667, column: 2, scope: !1373)
!1632 = !DILocation(line: 669, column: 14, scope: !1372)
!1633 = !DILocation(line: 669, column: 21, scope: !1372)
!1634 = !DILocation(line: 669, column: 18, scope: !1372)
!1635 = !DILocation(line: 669, column: 14, scope: !1373)
!1636 = !DILocation(line: 670, column: 9, scope: !1372)
!1637 = !DILocation(line: 670, column: 2, scope: !1372)
!1638 = !DILocation(line: 671, column: 14, scope: !1371)
!1639 = !DILocation(line: 671, column: 14, scope: !1372)
!1640 = !DILocation(line: 672, column: 2, scope: !1370)
!1641 = !DILocation(line: 672, column: 7, scope: !1370)
!1642 = !DILocation(line: 672, column: 14, scope: !1370)
!1643 = !DILocation(line: 673, column: 2, scope: !1370)
!1644 = !DILocation(line: 673, column: 8, scope: !1370)
!1645 = !DILocation(line: 675, column: 11, scope: !1370)
!1646 = !DILocation(line: 675, column: 17, scope: !1370)
!1647 = !DILocation(line: 675, column: 15, scope: !1370)
!1648 = !DILocation(line: 675, column: 25, scope: !1370)
!1649 = !DILocation(line: 675, column: 23, scope: !1370)
!1650 = !DILocation(line: 675, column: 9, scope: !1370)
!1651 = !DILocation(line: 676, column: 19, scope: !1370)
!1652 = !DILocation(line: 676, column: 26, scope: !1370)
!1653 = !DILocation(line: 676, column: 8, scope: !1370)
!1654 = !DILocation(line: 676, column: 6, scope: !1370)
!1655 = !DILocation(line: 678, column: 10, scope: !1370)
!1656 = !DILocation(line: 678, column: 15, scope: !1370)
!1657 = !DILocation(line: 678, column: 24, scope: !1370)
!1658 = !DILocation(line: 678, column: 22, scope: !1370)
!1659 = !DILocation(line: 678, column: 30, scope: !1370)
!1660 = !DILocation(line: 678, column: 39, scope: !1370)
!1661 = !DILocation(line: 678, column: 37, scope: !1370)
!1662 = !DILocation(line: 678, column: 2, scope: !1370)
!1663 = !DILocation(line: 679, column: 2, scope: !1370)
!1664 = !DILocation(line: 679, column: 6, scope: !1370)
!1665 = !DILocation(line: 679, column: 15, scope: !1370)
!1666 = !DILocation(line: 679, column: 13, scope: !1370)
!1667 = !DILocation(line: 679, column: 21, scope: !1370)
!1668 = !DILocation(line: 680, column: 11, scope: !1370)
!1669 = !DILocation(line: 680, column: 2, scope: !1370)
!1670 = !DILocation(line: 681, column: 13, scope: !1370)
!1671 = !DILocation(line: 681, column: 19, scope: !1370)
!1672 = !DILocation(line: 681, column: 24, scope: !1370)
!1673 = !DILocation(line: 681, column: 2, scope: !1370)
!1674 = !DILocation(line: 682, column: 11, scope: !1370)
!1675 = !DILocation(line: 682, column: 2, scope: !1370)
!1676 = !DILocation(line: 683, column: 11, scope: !1370)
!1677 = !DILocation(line: 683, column: 9, scope: !1370)
!1678 = !DILocation(line: 684, column: 5, scope: !1371)
!1679 = !DILocation(line: 684, column: 5, scope: !1370)
!1680 = !DILocation(line: 686, column: 11, scope: !1371)
!1681 = !DILocation(line: 686, column: 9, scope: !1371)
!1682 = !DILocation(line: 688, column: 5, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 688, column: 5)
!1684 = !DILocation(line: 688, column: 5, scope: !1335)
!1685 = !DILocation(line: 689, column: 17, scope: !1335)
!1686 = !DILocation(line: 689, column: 5, scope: !1335)
!1687 = !DILocation(line: 689, column: 15, scope: !1335)
!1688 = !DILocation(line: 690, column: 18, scope: !1335)
!1689 = !DILocation(line: 691, column: 5, scope: !1335)
!1690 = !DILocation(line: 693, column: 13, scope: !1335)
!1691 = !DILocation(line: 694, column: 1, scope: !1335)
!1692 = !DILocation(line: 693, column: 5, scope: !1335)
!1693 = !DISubprogram(name: "LispCheckSequenceStartEnd", scope: !1085, file: !1085, line: 40, type: !1694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !228, !129, !129, !129, !1696, !1696, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1697 = !DISubprogram(name: "__ctype_b_loc", scope: !110, file: !110, line: 79, type: !1698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!1703 = !DISubprogram(name: "__ctype_toupper_loc", scope: !110, file: !110, line: 83, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !402, line: 41, baseType: !173)
!1710 = distinct !DISubprogram(name: "toupper", scope: !110, file: !110, line: 213, type: !1711, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!173, !173}
!1713 = !{!1714}
!1714 = !DILocalVariable(name: "__c", arg: 1, scope: !1710, file: !110, line: 213, type: !173)
!1715 = !DILocation(line: 213, column: 1, scope: !1710)
!1716 = !DILocation(line: 215, column: 10, scope: !1710)
!1717 = !DILocation(line: 215, column: 14, scope: !1710)
!1718 = !DILocation(line: 215, column: 22, scope: !1710)
!1719 = !DILocation(line: 215, column: 25, scope: !1710)
!1720 = !DILocation(line: 215, column: 29, scope: !1710)
!1721 = !DILocation(line: 215, column: 39, scope: !1710)
!1722 = !DILocation(line: 215, column: 38, scope: !1710)
!1723 = !DILocation(line: 215, column: 63, scope: !1710)
!1724 = !DILocation(line: 215, column: 37, scope: !1710)
!1725 = !DILocation(line: 215, column: 70, scope: !1710)
!1726 = !DILocation(line: 215, column: 3, scope: !1710)
!1727 = !DISubprogram(name: "strncpy", scope: !1728, file: !1728, line: 144, type: !1729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1728 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!155, !1731, !1732, !405}
!1731 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!1732 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!1733 = !DISubprogram(name: "mpi_init", scope: !324, file: !324, line: 197, type: !1734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !322}
!1736 = !DISubprogram(name: "mpi_setstr", scope: !324, file: !324, line: 215, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !322, !155, !173}
!1739 = !DISubprogram(name: "LispFree", scope: !67, file: !67, line: 740, type: !1740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !439}
!1742 = !DISubprogram(name: "LispNewBignum", scope: !67, file: !67, line: 727, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!129, !322}
!1745 = !DISubprogram(name: "LispNewInteger", scope: !67, file: !67, line: 710, type: !1746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!129, !126}
!1748 = !DISubprogram(name: "LispMoreProtects", scope: !146, file: !146, line: 514, type: !1749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null}
!1751 = distinct !DISubprogram(name: "Lisp_String", scope: !2, file: !2, line: 697, type: !236, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1752)
!1752 = !{!1753, !1754}
!1753 = !DILocalVariable(name: "builtin", arg: 1, scope: !1751, file: !2, line: 697, type: !228)
!1754 = !DILocalVariable(name: "object", scope: !1751, file: !2, line: 702, type: !129)
!1755 = !DILocation(line: 697, column: 26, scope: !1751)
!1756 = !DILocation(line: 702, column: 5, scope: !1751)
!1757 = !DILocation(line: 702, column: 14, scope: !1751)
!1758 = !DILocation(line: 704, column: 14, scope: !1751)
!1759 = !DILocation(line: 704, column: 12, scope: !1751)
!1760 = !DILocation(line: 706, column: 30, scope: !1751)
!1761 = !DILocation(line: 706, column: 39, scope: !1751)
!1762 = !DILocation(line: 706, column: 13, scope: !1751)
!1763 = !DILocation(line: 707, column: 1, scope: !1751)
!1764 = !DILocation(line: 706, column: 5, scope: !1751)
!1765 = !DISubprogram(name: "LispStringCoerce", scope: !1085, file: !1085, line: 44, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1766 = distinct !DISubprogram(name: "Lisp_Stringp", scope: !2, file: !2, line: 710, type: !236, scopeLine: 714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1767)
!1767 = !{!1768, !1769}
!1768 = !DILocalVariable(name: "builtin", arg: 1, scope: !1766, file: !2, line: 710, type: !228)
!1769 = !DILocalVariable(name: "object", scope: !1766, file: !2, line: 715, type: !129)
!1770 = !DILocation(line: 710, column: 27, scope: !1766)
!1771 = !DILocation(line: 715, column: 5, scope: !1766)
!1772 = !DILocation(line: 715, column: 14, scope: !1766)
!1773 = !DILocation(line: 717, column: 14, scope: !1766)
!1774 = !DILocation(line: 717, column: 12, scope: !1766)
!1775 = !DILocation(line: 719, column: 13, scope: !1766)
!1776 = !DILocation(line: 0, scope: !1766)
!1777 = !DILocation(line: 720, column: 1, scope: !1766)
!1778 = !DILocation(line: 719, column: 5, scope: !1766)
!1779 = distinct !DISubprogram(name: "Lisp_ReadFromString", scope: !2, file: !2, line: 724, type: !236, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794}
!1781 = !DILocalVariable(name: "builtin", arg: 1, scope: !1779, file: !2, line: 724, type: !228)
!1782 = !DILocalVariable(name: "gc__protect", scope: !1779, file: !2, line: 729, type: !173)
!1783 = !DILocalVariable(name: "string", scope: !1779, file: !2, line: 730, type: !155)
!1784 = !DILocalVariable(name: "stream", scope: !1779, file: !2, line: 731, type: !129)
!1785 = !DILocalVariable(name: "result", scope: !1779, file: !2, line: 731, type: !129)
!1786 = !DILocalVariable(name: "length", scope: !1779, file: !2, line: 732, type: !126)
!1787 = !DILocalVariable(name: "start", scope: !1779, file: !2, line: 732, type: !126)
!1788 = !DILocalVariable(name: "end", scope: !1779, file: !2, line: 732, type: !126)
!1789 = !DILocalVariable(name: "bytes_read", scope: !1779, file: !2, line: 732, type: !126)
!1790 = !DILocalVariable(name: "ostring", scope: !1779, file: !2, line: 734, type: !129)
!1791 = !DILocalVariable(name: "eof_error_p", scope: !1779, file: !2, line: 734, type: !129)
!1792 = !DILocalVariable(name: "eof_value", scope: !1779, file: !2, line: 734, type: !129)
!1793 = !DILocalVariable(name: "ostart", scope: !1779, file: !2, line: 734, type: !129)
!1794 = !DILocalVariable(name: "oend", scope: !1779, file: !2, line: 734, type: !129)
!1795 = !DILocation(line: 724, column: 34, scope: !1779)
!1796 = !DILocation(line: 729, column: 5, scope: !1779)
!1797 = !DILocation(line: 730, column: 5, scope: !1779)
!1798 = !DILocation(line: 730, column: 11, scope: !1779)
!1799 = !DILocation(line: 731, column: 5, scope: !1779)
!1800 = !DILocation(line: 731, column: 14, scope: !1779)
!1801 = !DILocation(line: 731, column: 23, scope: !1779)
!1802 = !DILocation(line: 732, column: 5, scope: !1779)
!1803 = !DILocation(line: 732, column: 10, scope: !1779)
!1804 = !DILocation(line: 732, column: 18, scope: !1779)
!1805 = !DILocation(line: 732, column: 25, scope: !1779)
!1806 = !DILocation(line: 732, column: 30, scope: !1779)
!1807 = !DILocation(line: 734, column: 5, scope: !1779)
!1808 = !DILocation(line: 734, column: 14, scope: !1779)
!1809 = !DILocation(line: 734, column: 24, scope: !1779)
!1810 = !DILocation(line: 734, column: 38, scope: !1779)
!1811 = !DILocation(line: 734, column: 50, scope: !1779)
!1812 = !DILocation(line: 734, column: 59, scope: !1779)
!1813 = !DILocation(line: 736, column: 12, scope: !1779)
!1814 = !DILocation(line: 736, column: 10, scope: !1779)
!1815 = !DILocation(line: 737, column: 14, scope: !1779)
!1816 = !DILocation(line: 737, column: 12, scope: !1779)
!1817 = !DILocation(line: 738, column: 17, scope: !1779)
!1818 = !DILocation(line: 738, column: 15, scope: !1779)
!1819 = !DILocation(line: 739, column: 19, scope: !1779)
!1820 = !DILocation(line: 739, column: 17, scope: !1779)
!1821 = !DILocation(line: 740, column: 15, scope: !1779)
!1822 = !DILocation(line: 740, column: 13, scope: !1779)
!1823 = !DILocation(line: 742, column: 5, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 742, column: 5)
!1825 = !DILocation(line: 742, column: 5, scope: !1779)
!1826 = !DILocation(line: 743, column: 14, scope: !1779)
!1827 = !DILocation(line: 743, column: 12, scope: !1779)
!1828 = !DILocation(line: 744, column: 31, scope: !1779)
!1829 = !DILocation(line: 744, column: 40, scope: !1779)
!1830 = !DILocation(line: 744, column: 49, scope: !1779)
!1831 = !DILocation(line: 744, column: 57, scope: !1779)
!1832 = !DILocation(line: 744, column: 5, scope: !1779)
!1833 = !DILocation(line: 747, column: 9, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 747, column: 9)
!1835 = !DILocation(line: 747, column: 15, scope: !1834)
!1836 = !DILocation(line: 747, column: 19, scope: !1834)
!1837 = !DILocation(line: 747, column: 22, scope: !1834)
!1838 = !DILocation(line: 747, column: 28, scope: !1834)
!1839 = !DILocation(line: 747, column: 26, scope: !1834)
!1840 = !DILocation(line: 747, column: 9, scope: !1779)
!1841 = !DILocation(line: 748, column: 11, scope: !1834)
!1842 = !DILocation(line: 748, column: 17, scope: !1834)
!1843 = !DILocation(line: 748, column: 15, scope: !1834)
!1844 = !DILocation(line: 748, column: 9, scope: !1834)
!1845 = !DILocation(line: 748, column: 2, scope: !1834)
!1846 = !DILocation(line: 749, column: 14, scope: !1779)
!1847 = !DILocation(line: 749, column: 12, scope: !1779)
!1848 = !DILocation(line: 751, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 751, column: 9)
!1850 = !DILocation(line: 751, column: 19, scope: !1849)
!1851 = !DILocation(line: 751, column: 9, scope: !1779)
!1852 = !DILocation(line: 752, column: 12, scope: !1849)
!1853 = !DILocation(line: 752, column: 2, scope: !1849)
!1854 = !DILocation(line: 754, column: 19, scope: !1779)
!1855 = !DILocation(line: 754, column: 5, scope: !1779)
!1856 = !DILocation(line: 755, column: 14, scope: !1779)
!1857 = !DILocation(line: 755, column: 12, scope: !1779)
!1858 = !DILocation(line: 758, column: 18, scope: !1779)
!1859 = !DILocation(line: 758, column: 26, scope: !1779)
!1860 = !DILocation(line: 758, column: 38, scope: !1779)
!1861 = !DILocation(line: 758, column: 45, scope: !1779)
!1862 = !DILocation(line: 758, column: 53, scope: !1779)
!1863 = !DILocation(line: 758, column: 16, scope: !1779)
!1864 = !DILocation(line: 759, column: 18, scope: !1779)
!1865 = !DILocation(line: 759, column: 5, scope: !1779)
!1866 = !DILocation(line: 761, column: 9, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 761, column: 9)
!1868 = !DILocation(line: 761, column: 16, scope: !1867)
!1869 = !DILocation(line: 761, column: 9, scope: !1779)
!1870 = !DILocation(line: 762, column: 6, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 762, column: 6)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !2, line: 761, column: 25)
!1873 = !DILocation(line: 762, column: 18, scope: !1871)
!1874 = !DILocation(line: 762, column: 6, scope: !1872)
!1875 = !DILocation(line: 763, column: 15, scope: !1871)
!1876 = !DILocation(line: 763, column: 13, scope: !1871)
!1877 = !DILocation(line: 763, column: 6, scope: !1871)
!1878 = !DILocation(line: 765, column: 49, scope: !1871)
!1879 = !DILocation(line: 765, column: 6, scope: !1871)
!1880 = !DILocation(line: 766, column: 5, scope: !1872)
!1881 = !DILocation(line: 768, column: 5, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 768, column: 5)
!1883 = !DILocation(line: 768, column: 5, scope: !1779)
!1884 = !DILocation(line: 769, column: 17, scope: !1779)
!1885 = !DILocation(line: 769, column: 5, scope: !1779)
!1886 = !DILocation(line: 769, column: 15, scope: !1779)
!1887 = !DILocation(line: 770, column: 18, scope: !1779)
!1888 = !DILocation(line: 771, column: 5, scope: !1779)
!1889 = !DILocation(line: 773, column: 13, scope: !1779)
!1890 = !DILocation(line: 774, column: 1, scope: !1779)
!1891 = !DILocation(line: 773, column: 5, scope: !1779)
!1892 = !DISubprogram(name: "LispNewStringStream", scope: !67, file: !67, line: 723, type: !1893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!129, !239, !173, !126}
!1895 = !DISubprogram(name: "LispPushInput", scope: !378, file: !378, line: 86, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !129}
!1898 = !DISubprogram(name: "LispRead", scope: !1899, file: !1899, line: 40, type: !1900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1899 = !DIFile(filename: "./lisp/read.h", directory: "/local-ssd/xedit-dhuehljb5hvbgi4rpzwcjdfs76jnrafe-build/aidengro/spack-stage-xedit-1.2.3-dhuehljb5hvbgi4rpzwcjdfs76jnrafe/spack-src", checksumkind: CSK_MD5, checksum: "f371c6e105655f46a98dacb223446162")
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!129}
!1902 = !DISubprogram(name: "LispPopInput", scope: !378, file: !378, line: 87, type: !1896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1903 = distinct !DISubprogram(name: "Lisp_StringTrim", scope: !2, file: !2, line: 879, type: !236, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "builtin", arg: 1, scope: !1903, file: !2, line: 879, type: !228)
!1906 = !DILocation(line: 879, column: 30, scope: !1903)
!1907 = !DILocation(line: 884, column: 28, scope: !1903)
!1908 = !DILocation(line: 884, column: 13, scope: !1903)
!1909 = !DILocation(line: 884, column: 5, scope: !1903)
!1910 = distinct !DISubprogram(name: "LispStringTrim", scope: !2, file: !2, line: 777, type: !1911, scopeLine: 781, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!129, !228, !173, !173, !173}
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1927, !1928, !1929, !1931}
!1914 = !DILocalVariable(name: "builtin", arg: 1, scope: !1910, file: !2, line: 777, type: !228)
!1915 = !DILocalVariable(name: "left", arg: 2, scope: !1910, file: !2, line: 777, type: !173)
!1916 = !DILocalVariable(name: "right", arg: 3, scope: !1910, file: !2, line: 777, type: !173)
!1917 = !DILocalVariable(name: "inplace", arg: 4, scope: !1910, file: !2, line: 777, type: !173)
!1918 = !DILocalVariable(name: "string", scope: !1910, file: !2, line: 782, type: !127)
!1919 = !DILocalVariable(name: "start", scope: !1910, file: !2, line: 783, type: !126)
!1920 = !DILocalVariable(name: "end", scope: !1910, file: !2, line: 783, type: !126)
!1921 = !DILocalVariable(name: "length", scope: !1910, file: !2, line: 783, type: !126)
!1922 = !DILocalVariable(name: "ochars", scope: !1910, file: !2, line: 785, type: !129)
!1923 = !DILocalVariable(name: "ostring", scope: !1910, file: !2, line: 785, type: !129)
!1924 = !DILocalVariable(name: "chars", scope: !1925, file: !2, line: 806, type: !127)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 805, column: 27)
!1926 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 805, column: 9)
!1927 = !DILocalVariable(name: "i", scope: !1925, file: !2, line: 807, type: !126)
!1928 = !DILocalVariable(name: "clength", scope: !1925, file: !2, line: 807, type: !126)
!1929 = !DILocalVariable(name: "ochar", scope: !1930, file: !2, line: 830, type: !129)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 829, column: 10)
!1931 = !DILocalVariable(name: "list", scope: !1930, file: !2, line: 830, type: !129)
!1932 = !DILocation(line: 777, column: 29, scope: !1910)
!1933 = !DILocation(line: 777, column: 42, scope: !1910)
!1934 = !DILocation(line: 777, column: 52, scope: !1910)
!1935 = !DILocation(line: 777, column: 63, scope: !1910)
!1936 = !DILocation(line: 782, column: 5, scope: !1910)
!1937 = !DILocation(line: 782, column: 20, scope: !1910)
!1938 = !DILocation(line: 783, column: 5, scope: !1910)
!1939 = !DILocation(line: 783, column: 10, scope: !1910)
!1940 = !DILocation(line: 783, column: 17, scope: !1910)
!1941 = !DILocation(line: 783, column: 22, scope: !1910)
!1942 = !DILocation(line: 785, column: 5, scope: !1910)
!1943 = !DILocation(line: 785, column: 14, scope: !1910)
!1944 = !DILocation(line: 785, column: 23, scope: !1910)
!1945 = !DILocation(line: 787, column: 15, scope: !1910)
!1946 = !DILocation(line: 787, column: 13, scope: !1910)
!1947 = !DILocation(line: 788, column: 14, scope: !1910)
!1948 = !DILocation(line: 788, column: 12, scope: !1910)
!1949 = !DILocation(line: 790, column: 10, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 790, column: 9)
!1951 = !DILocation(line: 790, column: 27, scope: !1950)
!1952 = !DILocation(line: 790, column: 32, scope: !1950)
!1953 = !DILocation(line: 790, column: 49, scope: !1950)
!1954 = !DILocation(line: 790, column: 52, scope: !1950)
!1955 = !DILocation(line: 790, column: 9, scope: !1910)
!1956 = !DILocation(line: 791, column: 6, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 791, column: 6)
!1958 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 790, column: 69)
!1959 = !DILocation(line: 791, column: 21, scope: !1957)
!1960 = !DILocation(line: 791, column: 24, scope: !1957)
!1961 = !DILocation(line: 791, column: 32, scope: !1957)
!1962 = !DILocation(line: 791, column: 43, scope: !1957)
!1963 = !DILocation(line: 791, column: 48, scope: !1957)
!1964 = !DILocation(line: 791, column: 6, scope: !1958)
!1965 = !DILocation(line: 792, column: 15, scope: !1957)
!1966 = !DILocation(line: 792, column: 23, scope: !1957)
!1967 = !DILocation(line: 792, column: 34, scope: !1957)
!1968 = !DILocation(line: 792, column: 13, scope: !1957)
!1969 = !DILocation(line: 792, column: 6, scope: !1957)
!1970 = !DILocation(line: 795, column: 4, scope: !1957)
!1971 = !DILocation(line: 795, column: 21, scope: !1957)
!1972 = !DILocation(line: 794, column: 6, scope: !1957)
!1973 = !DILocation(line: 796, column: 5, scope: !1958)
!1974 = !DILocation(line: 797, column: 5, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 797, column: 5)
!1976 = !DILocation(line: 797, column: 5, scope: !1910)
!1977 = !DILocation(line: 799, column: 30, scope: !1910)
!1978 = !DILocation(line: 799, column: 12, scope: !1910)
!1979 = !DILocation(line: 800, column: 14, scope: !1910)
!1980 = !DILocation(line: 800, column: 12, scope: !1910)
!1981 = !DILocation(line: 802, column: 11, scope: !1910)
!1982 = !DILocation(line: 803, column: 11, scope: !1910)
!1983 = !DILocation(line: 803, column: 9, scope: !1910)
!1984 = !DILocation(line: 805, column: 9, scope: !1926)
!1985 = !DILocation(line: 805, column: 9, scope: !1910)
!1986 = !DILocation(line: 806, column: 2, scope: !1925)
!1987 = !DILocation(line: 806, column: 17, scope: !1925)
!1988 = !DILocation(line: 806, column: 41, scope: !1925)
!1989 = !DILocation(line: 807, column: 2, scope: !1925)
!1990 = !DILocation(line: 807, column: 7, scope: !1925)
!1991 = !DILocation(line: 807, column: 10, scope: !1925)
!1992 = !DILocation(line: 807, column: 20, scope: !1925)
!1993 = !DILocation(line: 809, column: 6, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 809, column: 6)
!1995 = !DILocation(line: 809, column: 6, scope: !1925)
!1996 = !DILocation(line: 810, column: 6, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 809, column: 12)
!1998 = !DILocation(line: 810, column: 13, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !2, line: 810, column: 6)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !2, line: 810, column: 6)
!2001 = !DILocation(line: 810, column: 21, scope: !1999)
!2002 = !DILocation(line: 810, column: 19, scope: !1999)
!2003 = !DILocation(line: 810, column: 6, scope: !2000)
!2004 = !DILocation(line: 811, column: 10, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 811, column: 3)
!2006 = distinct !DILexicalBlock(scope: !1999, file: !2, line: 810, column: 35)
!2007 = !DILocation(line: 811, column: 8, scope: !2005)
!2008 = !DILocation(line: 811, column: 15, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 811, column: 3)
!2010 = !DILocation(line: 811, column: 19, scope: !2009)
!2011 = !DILocation(line: 811, column: 17, scope: !2009)
!2012 = !DILocation(line: 811, column: 3, scope: !2005)
!2013 = !DILocation(line: 812, column: 11, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 812, column: 11)
!2015 = !DILocation(line: 812, column: 18, scope: !2014)
!2016 = !DILocation(line: 812, column: 28, scope: !2014)
!2017 = !DILocation(line: 812, column: 34, scope: !2014)
!2018 = !DILocation(line: 812, column: 25, scope: !2014)
!2019 = !DILocation(line: 812, column: 11, scope: !2009)
!2020 = !DILocation(line: 813, column: 4, scope: !2014)
!2021 = !DILocation(line: 812, column: 35, scope: !2014)
!2022 = !DILocation(line: 811, column: 29, scope: !2009)
!2023 = !DILocation(line: 811, column: 3, scope: !2009)
!2024 = distinct !{!2024, !2012, !2025, !607}
!2025 = !DILocation(line: 813, column: 4, scope: !2005)
!2026 = !DILocation(line: 814, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 814, column: 7)
!2028 = !DILocation(line: 814, column: 12, scope: !2027)
!2029 = !DILocation(line: 814, column: 9, scope: !2027)
!2030 = !DILocation(line: 814, column: 7, scope: !2006)
!2031 = !DILocation(line: 815, column: 7, scope: !2027)
!2032 = !DILocation(line: 816, column: 6, scope: !2006)
!2033 = !DILocation(line: 810, column: 31, scope: !1999)
!2034 = !DILocation(line: 810, column: 6, scope: !1999)
!2035 = distinct !{!2035, !2003, !2036, !607}
!2036 = !DILocation(line: 816, column: 6, scope: !2000)
!2037 = !DILocation(line: 817, column: 2, scope: !1997)
!2038 = !DILocation(line: 818, column: 6, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 818, column: 6)
!2040 = !DILocation(line: 818, column: 6, scope: !1925)
!2041 = !DILocation(line: 819, column: 11, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 819, column: 6)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 818, column: 13)
!2044 = !DILocation(line: 819, column: 18, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !2, line: 819, column: 6)
!2046 = !DILocation(line: 819, column: 22, scope: !2045)
!2047 = !DILocation(line: 819, column: 6, scope: !2042)
!2048 = !DILocation(line: 820, column: 10, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 820, column: 3)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 819, column: 35)
!2051 = !DILocation(line: 820, column: 8, scope: !2049)
!2052 = !DILocation(line: 820, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 820, column: 3)
!2054 = !DILocation(line: 820, column: 19, scope: !2053)
!2055 = !DILocation(line: 820, column: 17, scope: !2053)
!2056 = !DILocation(line: 820, column: 3, scope: !2049)
!2057 = !DILocation(line: 821, column: 11, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 821, column: 11)
!2059 = !DILocation(line: 821, column: 18, scope: !2058)
!2060 = !DILocation(line: 821, column: 26, scope: !2058)
!2061 = !DILocation(line: 821, column: 32, scope: !2058)
!2062 = !DILocation(line: 821, column: 23, scope: !2058)
!2063 = !DILocation(line: 821, column: 11, scope: !2053)
!2064 = !DILocation(line: 822, column: 4, scope: !2058)
!2065 = !DILocation(line: 821, column: 33, scope: !2058)
!2066 = !DILocation(line: 820, column: 29, scope: !2053)
!2067 = !DILocation(line: 820, column: 3, scope: !2053)
!2068 = distinct !{!2068, !2056, !2069, !607}
!2069 = !DILocation(line: 822, column: 4, scope: !2049)
!2070 = !DILocation(line: 823, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 823, column: 7)
!2072 = !DILocation(line: 823, column: 12, scope: !2071)
!2073 = !DILocation(line: 823, column: 9, scope: !2071)
!2074 = !DILocation(line: 823, column: 7, scope: !2050)
!2075 = !DILocation(line: 824, column: 7, scope: !2071)
!2076 = !DILocation(line: 825, column: 6, scope: !2050)
!2077 = !DILocation(line: 819, column: 31, scope: !2045)
!2078 = !DILocation(line: 819, column: 6, scope: !2045)
!2079 = distinct !{!2079, !2047, !2080, !607}
!2080 = !DILocation(line: 825, column: 6, scope: !2042)
!2081 = !DILocation(line: 826, column: 6, scope: !2043)
!2082 = !DILocation(line: 827, column: 2, scope: !2043)
!2083 = !DILocation(line: 828, column: 5, scope: !1926)
!2084 = !DILocation(line: 828, column: 5, scope: !1925)
!2085 = !DILocation(line: 830, column: 2, scope: !1930)
!2086 = !DILocation(line: 830, column: 11, scope: !1930)
!2087 = !DILocation(line: 830, column: 19, scope: !1930)
!2088 = !DILocation(line: 832, column: 6, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 832, column: 6)
!2090 = !DILocation(line: 832, column: 6, scope: !1930)
!2091 = !DILocation(line: 833, column: 6, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 832, column: 12)
!2093 = !DILocation(line: 833, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 833, column: 6)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 833, column: 6)
!2096 = !DILocation(line: 833, column: 21, scope: !2094)
!2097 = !DILocation(line: 833, column: 19, scope: !2094)
!2098 = !DILocation(line: 833, column: 6, scope: !2095)
!2099 = !DILocation(line: 834, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 834, column: 3)
!2101 = distinct !DILexicalBlock(scope: !2094, file: !2, line: 833, column: 35)
!2102 = !DILocation(line: 834, column: 13, scope: !2100)
!2103 = !DILocation(line: 834, column: 8, scope: !2100)
!2104 = !DILocation(line: 834, column: 23, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 834, column: 3)
!2106 = !DILocation(line: 0, scope: !2105)
!2107 = !DILocation(line: 834, column: 3, scope: !2100)
!2108 = !DILocation(line: 835, column: 15, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !2, line: 834, column: 54)
!2110 = !DILocation(line: 835, column: 13, scope: !2109)
!2111 = !DILocation(line: 836, column: 11, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !2, line: 836, column: 11)
!2113 = !DILocation(line: 836, column: 25, scope: !2112)
!2114 = !DILocation(line: 836, column: 28, scope: !2112)
!2115 = !DILocation(line: 836, column: 35, scope: !2112)
!2116 = !DILocation(line: 836, column: 45, scope: !2112)
!2117 = !DILocation(line: 836, column: 42, scope: !2112)
!2118 = !DILocation(line: 836, column: 11, scope: !2109)
!2119 = !DILocation(line: 837, column: 4, scope: !2112)
!2120 = !DILocation(line: 838, column: 3, scope: !2109)
!2121 = !DILocation(line: 834, column: 43, scope: !2105)
!2122 = !DILocation(line: 834, column: 41, scope: !2105)
!2123 = !DILocation(line: 834, column: 3, scope: !2105)
!2124 = distinct !{!2124, !2107, !2125, !607}
!2125 = !DILocation(line: 838, column: 3, scope: !2100)
!2126 = !DILocation(line: 839, column: 8, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2101, file: !2, line: 839, column: 7)
!2128 = !DILocation(line: 839, column: 7, scope: !2101)
!2129 = !DILocation(line: 840, column: 7, scope: !2127)
!2130 = !DILocation(line: 841, column: 6, scope: !2101)
!2131 = !DILocation(line: 833, column: 31, scope: !2094)
!2132 = !DILocation(line: 833, column: 6, scope: !2094)
!2133 = distinct !{!2133, !2098, !2134, !607}
!2134 = !DILocation(line: 841, column: 6, scope: !2095)
!2135 = !DILocation(line: 842, column: 2, scope: !2092)
!2136 = !DILocation(line: 843, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 843, column: 6)
!2138 = !DILocation(line: 843, column: 6, scope: !1930)
!2139 = !DILocation(line: 844, column: 11, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 844, column: 6)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !2, line: 843, column: 13)
!2142 = !DILocation(line: 844, column: 18, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !2, line: 844, column: 6)
!2144 = !DILocation(line: 844, column: 22, scope: !2143)
!2145 = !DILocation(line: 844, column: 6, scope: !2140)
!2146 = !DILocation(line: 845, column: 15, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 845, column: 3)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !2, line: 844, column: 35)
!2149 = !DILocation(line: 845, column: 13, scope: !2147)
!2150 = !DILocation(line: 845, column: 8, scope: !2147)
!2151 = !DILocation(line: 845, column: 23, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 845, column: 3)
!2153 = !DILocation(line: 0, scope: !2152)
!2154 = !DILocation(line: 845, column: 3, scope: !2147)
!2155 = !DILocation(line: 846, column: 15, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 845, column: 54)
!2157 = !DILocation(line: 846, column: 13, scope: !2156)
!2158 = !DILocation(line: 847, column: 11, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 847, column: 11)
!2160 = !DILocation(line: 847, column: 25, scope: !2159)
!2161 = !DILocation(line: 847, column: 28, scope: !2159)
!2162 = !DILocation(line: 847, column: 35, scope: !2159)
!2163 = !DILocation(line: 847, column: 43, scope: !2159)
!2164 = !DILocation(line: 847, column: 40, scope: !2159)
!2165 = !DILocation(line: 847, column: 11, scope: !2156)
!2166 = !DILocation(line: 848, column: 4, scope: !2159)
!2167 = !DILocation(line: 849, column: 3, scope: !2156)
!2168 = !DILocation(line: 845, column: 43, scope: !2152)
!2169 = !DILocation(line: 845, column: 41, scope: !2152)
!2170 = !DILocation(line: 845, column: 3, scope: !2152)
!2171 = distinct !{!2171, !2154, !2172, !607}
!2172 = !DILocation(line: 849, column: 3, scope: !2147)
!2173 = !DILocation(line: 850, column: 8, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 850, column: 7)
!2175 = !DILocation(line: 850, column: 7, scope: !2148)
!2176 = !DILocation(line: 851, column: 7, scope: !2174)
!2177 = !DILocation(line: 852, column: 6, scope: !2148)
!2178 = !DILocation(line: 844, column: 31, scope: !2143)
!2179 = !DILocation(line: 844, column: 6, scope: !2143)
!2180 = distinct !{!2180, !2145, !2181, !607}
!2181 = !DILocation(line: 852, column: 6, scope: !2140)
!2182 = !DILocation(line: 853, column: 6, scope: !2141)
!2183 = !DILocation(line: 854, column: 2, scope: !2141)
!2184 = !DILocation(line: 855, column: 5, scope: !1926)
!2185 = !DILocation(line: 857, column: 9, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 857, column: 9)
!2187 = !DILocation(line: 857, column: 15, scope: !2186)
!2188 = !DILocation(line: 857, column: 20, scope: !2186)
!2189 = !DILocation(line: 857, column: 23, scope: !2186)
!2190 = !DILocation(line: 857, column: 30, scope: !2186)
!2191 = !DILocation(line: 857, column: 27, scope: !2186)
!2192 = !DILocation(line: 857, column: 9, scope: !1910)
!2193 = !DILocation(line: 858, column: 10, scope: !2186)
!2194 = !DILocation(line: 858, column: 2, scope: !2186)
!2195 = !DILocation(line: 860, column: 14, scope: !1910)
!2196 = !DILocation(line: 860, column: 20, scope: !1910)
!2197 = !DILocation(line: 860, column: 18, scope: !1910)
!2198 = !DILocation(line: 860, column: 12, scope: !1910)
!2199 = !DILocation(line: 862, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 862, column: 9)
!2201 = !DILocation(line: 862, column: 9, scope: !1910)
!2202 = !DILocation(line: 863, column: 2, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !2, line: 863, column: 2)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 862, column: 18)
!2205 = !DILocation(line: 863, column: 2, scope: !2204)
!2206 = !DILocation(line: 864, column: 10, scope: !2204)
!2207 = !DILocation(line: 864, column: 18, scope: !2204)
!2208 = !DILocation(line: 864, column: 27, scope: !2204)
!2209 = !DILocation(line: 864, column: 25, scope: !2204)
!2210 = !DILocation(line: 864, column: 34, scope: !2204)
!2211 = !DILocation(line: 864, column: 2, scope: !2204)
!2212 = !DILocation(line: 865, column: 2, scope: !2204)
!2213 = !DILocation(line: 865, column: 9, scope: !2204)
!2214 = !DILocation(line: 865, column: 17, scope: !2204)
!2215 = !DILocation(line: 866, column: 20, scope: !2204)
!2216 = !DILocation(line: 866, column: 2, scope: !2204)
!2217 = !DILocation(line: 866, column: 18, scope: !2204)
!2218 = !DILocation(line: 867, column: 5, scope: !2204)
!2219 = !DILocation(line: 869, column: 22, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 868, column: 10)
!2221 = !DILocation(line: 869, column: 29, scope: !2220)
!2222 = !DILocation(line: 869, column: 11, scope: !2220)
!2223 = !DILocation(line: 869, column: 9, scope: !2220)
!2224 = !DILocation(line: 870, column: 9, scope: !2220)
!2225 = !DILocation(line: 870, column: 17, scope: !2220)
!2226 = !DILocation(line: 870, column: 35, scope: !2220)
!2227 = !DILocation(line: 870, column: 33, scope: !2220)
!2228 = !DILocation(line: 870, column: 42, scope: !2220)
!2229 = !DILocation(line: 870, column: 2, scope: !2220)
!2230 = !DILocation(line: 871, column: 2, scope: !2220)
!2231 = !DILocation(line: 871, column: 9, scope: !2220)
!2232 = !DILocation(line: 871, column: 17, scope: !2220)
!2233 = !DILocation(line: 872, column: 12, scope: !2220)
!2234 = !DILocation(line: 872, column: 10, scope: !2220)
!2235 = !DILocation(line: 875, column: 13, scope: !1910)
!2236 = !DILocation(line: 875, column: 5, scope: !1910)
!2237 = !DILocation(line: 876, column: 1, scope: !1910)
!2238 = distinct !DISubprogram(name: "Lisp_NstringTrim", scope: !2, file: !2, line: 888, type: !236, scopeLine: 892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2239)
!2239 = !{!2240}
!2240 = !DILocalVariable(name: "builtin", arg: 1, scope: !2238, file: !2, line: 888, type: !228)
!2241 = !DILocation(line: 888, column: 31, scope: !2238)
!2242 = !DILocation(line: 893, column: 28, scope: !2238)
!2243 = !DILocation(line: 893, column: 13, scope: !2238)
!2244 = !DILocation(line: 893, column: 5, scope: !2238)
!2245 = distinct !DISubprogram(name: "Lisp_StringLeftTrim", scope: !2, file: !2, line: 897, type: !236, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2246)
!2246 = !{!2247}
!2247 = !DILocalVariable(name: "builtin", arg: 1, scope: !2245, file: !2, line: 897, type: !228)
!2248 = !DILocation(line: 897, column: 34, scope: !2245)
!2249 = !DILocation(line: 902, column: 28, scope: !2245)
!2250 = !DILocation(line: 902, column: 13, scope: !2245)
!2251 = !DILocation(line: 902, column: 5, scope: !2245)
!2252 = distinct !DISubprogram(name: "Lisp_NstringLeftTrim", scope: !2, file: !2, line: 906, type: !236, scopeLine: 910, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2253)
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "builtin", arg: 1, scope: !2252, file: !2, line: 906, type: !228)
!2255 = !DILocation(line: 906, column: 35, scope: !2252)
!2256 = !DILocation(line: 911, column: 28, scope: !2252)
!2257 = !DILocation(line: 911, column: 13, scope: !2252)
!2258 = !DILocation(line: 911, column: 5, scope: !2252)
!2259 = distinct !DISubprogram(name: "Lisp_StringRightTrim", scope: !2, file: !2, line: 915, type: !236, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2260)
!2260 = !{!2261}
!2261 = !DILocalVariable(name: "builtin", arg: 1, scope: !2259, file: !2, line: 915, type: !228)
!2262 = !DILocation(line: 915, column: 35, scope: !2259)
!2263 = !DILocation(line: 920, column: 28, scope: !2259)
!2264 = !DILocation(line: 920, column: 13, scope: !2259)
!2265 = !DILocation(line: 920, column: 5, scope: !2259)
!2266 = distinct !DISubprogram(name: "Lisp_NstringRightTrim", scope: !2, file: !2, line: 924, type: !236, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2267)
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "builtin", arg: 1, scope: !2266, file: !2, line: 924, type: !228)
!2269 = !DILocation(line: 924, column: 36, scope: !2266)
!2270 = !DILocation(line: 929, column: 28, scope: !2266)
!2271 = !DILocation(line: 929, column: 13, scope: !2266)
!2272 = !DILocation(line: 929, column: 5, scope: !2266)
!2273 = distinct !DISubprogram(name: "Lisp_StringEqual_", scope: !2, file: !2, line: 1008, type: !236, scopeLine: 1012, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2274)
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "builtin", arg: 1, scope: !2273, file: !2, line: 1008, type: !228)
!2276 = !DILocation(line: 1008, column: 32, scope: !2273)
!2277 = !DILocation(line: 1013, column: 31, scope: !2273)
!2278 = !DILocation(line: 1013, column: 13, scope: !2273)
!2279 = !DILocation(line: 1013, column: 5, scope: !2273)
!2280 = distinct !DISubprogram(name: "LispStringCompare", scope: !2, file: !2, line: 933, type: !501, scopeLine: 934, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2281)
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2303, !2305, !2312, !2317, !2319}
!2282 = !DILocalVariable(name: "builtin", arg: 1, scope: !2280, file: !2, line: 933, type: !228)
!2283 = !DILocalVariable(name: "function", arg: 2, scope: !2280, file: !2, line: 933, type: !173)
!2284 = !DILocalVariable(name: "ignore_case", arg: 3, scope: !2280, file: !2, line: 933, type: !173)
!2285 = !DILocalVariable(name: "cmp1", scope: !2280, file: !2, line: 935, type: !173)
!2286 = !DILocalVariable(name: "cmp2", scope: !2280, file: !2, line: 935, type: !173)
!2287 = !DILocalVariable(name: "fixnum", scope: !2280, file: !2, line: 936, type: !129)
!2288 = !DILocalVariable(name: "string1", scope: !2280, file: !2, line: 937, type: !127)
!2289 = !DILocalVariable(name: "string2", scope: !2280, file: !2, line: 937, type: !127)
!2290 = !DILocalVariable(name: "start1", scope: !2280, file: !2, line: 938, type: !126)
!2291 = !DILocalVariable(name: "end1", scope: !2280, file: !2, line: 938, type: !126)
!2292 = !DILocalVariable(name: "start2", scope: !2280, file: !2, line: 938, type: !126)
!2293 = !DILocalVariable(name: "end2", scope: !2280, file: !2, line: 938, type: !126)
!2294 = !DILocalVariable(name: "offset", scope: !2280, file: !2, line: 938, type: !126)
!2295 = !DILocalVariable(name: "length", scope: !2280, file: !2, line: 938, type: !126)
!2296 = !DILocalVariable(name: "__res", scope: !2297, file: !2, line: 956, type: !173)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 956, column: 10)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 956, column: 10)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !2, line: 955, column: 2)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 955, column: 2)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 946, column: 33)
!2302 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 946, column: 9)
!2303 = !DILocalVariable(name: "__res", scope: !2304, file: !2, line: 956, type: !173)
!2304 = distinct !DILexicalBlock(scope: !2298, file: !2, line: 956, column: 31)
!2305 = !DILocalVariable(name: "__res", scope: !2306, file: !2, line: 970, type: !173)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 970, column: 13)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !2, line: 969, column: 19)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 969, column: 6)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !2, line: 966, column: 55)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 964, column: 5)
!2311 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 964, column: 5)
!2312 = !DILocalVariable(name: "__c", scope: !2313, file: !2, line: 970, type: !173)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 970, column: 13)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 970, column: 13)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 970, column: 13)
!2316 = distinct !DILexicalBlock(scope: !2306, file: !2, line: 970, column: 13)
!2317 = !DILocalVariable(name: "__res", scope: !2318, file: !2, line: 971, type: !173)
!2318 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 971, column: 13)
!2319 = !DILocalVariable(name: "__c", scope: !2320, file: !2, line: 971, type: !173)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 971, column: 13)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 971, column: 13)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 971, column: 13)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 971, column: 13)
!2324 = !DILocation(line: 933, column: 32, scope: !2280)
!2325 = !DILocation(line: 933, column: 45, scope: !2280)
!2326 = !DILocation(line: 933, column: 59, scope: !2280)
!2327 = !DILocation(line: 935, column: 5, scope: !2280)
!2328 = !DILocation(line: 935, column: 9, scope: !2280)
!2329 = !DILocation(line: 935, column: 15, scope: !2280)
!2330 = !DILocation(line: 936, column: 5, scope: !2280)
!2331 = !DILocation(line: 936, column: 14, scope: !2280)
!2332 = !DILocation(line: 937, column: 5, scope: !2280)
!2333 = !DILocation(line: 937, column: 20, scope: !2280)
!2334 = !DILocation(line: 937, column: 30, scope: !2280)
!2335 = !DILocation(line: 938, column: 5, scope: !2280)
!2336 = !DILocation(line: 938, column: 10, scope: !2280)
!2337 = !DILocation(line: 938, column: 18, scope: !2280)
!2338 = !DILocation(line: 938, column: 24, scope: !2280)
!2339 = !DILocation(line: 938, column: 32, scope: !2280)
!2340 = !DILocation(line: 938, column: 38, scope: !2280)
!2341 = !DILocation(line: 938, column: 46, scope: !2280)
!2342 = !DILocation(line: 940, column: 23, scope: !2280)
!2343 = !DILocation(line: 940, column: 5, scope: !2280)
!2344 = !DILocation(line: 943, column: 16, scope: !2280)
!2345 = !DILocation(line: 943, column: 13, scope: !2280)
!2346 = !DILocation(line: 944, column: 16, scope: !2280)
!2347 = !DILocation(line: 944, column: 13, scope: !2280)
!2348 = !DILocation(line: 946, column: 9, scope: !2302)
!2349 = !DILocation(line: 946, column: 18, scope: !2302)
!2350 = !DILocation(line: 946, column: 9, scope: !2280)
!2351 = !DILocation(line: 947, column: 11, scope: !2301)
!2352 = !DILocation(line: 947, column: 18, scope: !2301)
!2353 = !DILocation(line: 947, column: 16, scope: !2301)
!2354 = !DILocation(line: 947, column: 9, scope: !2301)
!2355 = !DILocation(line: 949, column: 6, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 949, column: 6)
!2357 = !DILocation(line: 949, column: 17, scope: !2356)
!2358 = !DILocation(line: 949, column: 24, scope: !2356)
!2359 = !DILocation(line: 949, column: 22, scope: !2356)
!2360 = !DILocation(line: 949, column: 13, scope: !2356)
!2361 = !DILocation(line: 949, column: 6, scope: !2301)
!2362 = !DILocation(line: 950, column: 6, scope: !2356)
!2363 = !DILocation(line: 952, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 952, column: 6)
!2365 = !DILocation(line: 952, column: 6, scope: !2301)
!2366 = !DILocation(line: 953, column: 21, scope: !2364)
!2367 = !DILocation(line: 953, column: 30, scope: !2364)
!2368 = !DILocation(line: 953, column: 39, scope: !2364)
!2369 = !DILocation(line: 953, column: 14, scope: !2364)
!2370 = !DILocation(line: 953, column: 6, scope: !2364)
!2371 = !DILocation(line: 955, column: 2, scope: !2301)
!2372 = !DILocation(line: 955, column: 9, scope: !2299)
!2373 = !DILocation(line: 955, column: 2, scope: !2300)
!2374 = !DILocation(line: 956, column: 10, scope: !2297)
!2375 = !DILocation(line: 956, column: 10, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 956, column: 10)
!2377 = !DILocation(line: 956, column: 10, scope: !2298)
!2378 = !DILocation(line: 956, column: 31, scope: !2304)
!2379 = !DILocation(line: 956, column: 31, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2304, file: !2, line: 956, column: 31)
!2381 = !DILocation(line: 956, column: 31, scope: !2298)
!2382 = !DILocation(line: 956, column: 28, scope: !2298)
!2383 = !DILocation(line: 956, column: 10, scope: !2299)
!2384 = !DILocation(line: 957, column: 3, scope: !2298)
!2385 = !DILocation(line: 955, column: 23, scope: !2299)
!2386 = !DILocation(line: 955, column: 34, scope: !2299)
!2387 = !DILocation(line: 955, column: 45, scope: !2299)
!2388 = !DILocation(line: 955, column: 2, scope: !2299)
!2389 = distinct !{!2389, !2373, !2390, !607}
!2390 = !DILocation(line: 957, column: 14, scope: !2300)
!2391 = !DILocation(line: 958, column: 2, scope: !2301)
!2392 = !DILocation(line: 961, column: 13, scope: !2280)
!2393 = !DILocation(line: 961, column: 10, scope: !2280)
!2394 = !DILocation(line: 962, column: 13, scope: !2280)
!2395 = !DILocation(line: 962, column: 10, scope: !2280)
!2396 = !DILocation(line: 963, column: 14, scope: !2280)
!2397 = !DILocation(line: 963, column: 12, scope: !2280)
!2398 = !DILocation(line: 964, column: 17, scope: !2311)
!2399 = !DILocation(line: 964, column: 10, scope: !2311)
!2400 = !DILocation(line: 965, column: 3, scope: !2310)
!2401 = !DILocation(line: 965, column: 12, scope: !2310)
!2402 = !DILocation(line: 965, column: 10, scope: !2310)
!2403 = !DILocation(line: 964, column: 5, scope: !2311)
!2404 = !DILocation(line: 967, column: 10, scope: !2309)
!2405 = !DILocation(line: 967, column: 9, scope: !2309)
!2406 = !DILocation(line: 967, column: 7, scope: !2309)
!2407 = !DILocation(line: 968, column: 10, scope: !2309)
!2408 = !DILocation(line: 968, column: 9, scope: !2309)
!2409 = !DILocation(line: 968, column: 7, scope: !2309)
!2410 = !DILocation(line: 969, column: 6, scope: !2308)
!2411 = !DILocation(line: 969, column: 6, scope: !2309)
!2412 = !DILocation(line: 970, column: 13, scope: !2306)
!2413 = !DILocation(line: 970, column: 13, scope: !2314)
!2414 = !DILocation(line: 970, column: 13, scope: !2315)
!2415 = !DILocation(line: 970, column: 13, scope: !2313)
!2416 = !DILocation(line: 970, column: 13, scope: !2316)
!2417 = !DILocation(line: 970, column: 13, scope: !2307)
!2418 = !DILocation(line: 970, column: 11, scope: !2307)
!2419 = !DILocation(line: 971, column: 13, scope: !2318)
!2420 = !DILocation(line: 971, column: 13, scope: !2321)
!2421 = !DILocation(line: 971, column: 13, scope: !2322)
!2422 = !DILocation(line: 971, column: 13, scope: !2320)
!2423 = !DILocation(line: 971, column: 13, scope: !2323)
!2424 = !DILocation(line: 971, column: 13, scope: !2307)
!2425 = !DILocation(line: 971, column: 11, scope: !2307)
!2426 = !DILocation(line: 972, column: 2, scope: !2307)
!2427 = !DILocation(line: 973, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2309, file: !2, line: 973, column: 6)
!2429 = !DILocation(line: 973, column: 14, scope: !2428)
!2430 = !DILocation(line: 973, column: 11, scope: !2428)
!2431 = !DILocation(line: 973, column: 6, scope: !2309)
!2432 = !DILocation(line: 974, column: 15, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2428, file: !2, line: 973, column: 20)
!2434 = !DILocation(line: 974, column: 13, scope: !2433)
!2435 = !DILocation(line: 975, column: 14, scope: !2433)
!2436 = !DILocation(line: 975, column: 6, scope: !2433)
!2437 = !DILocation(line: 977, column: 16, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !2, line: 975, column: 24)
!2439 = !DILocation(line: 977, column: 23, scope: !2438)
!2440 = !DILocation(line: 977, column: 21, scope: !2438)
!2441 = !DILocation(line: 977, column: 15, scope: !2438)
!2442 = !DILocation(line: 977, column: 31, scope: !2438)
!2443 = !DILocation(line: 977, column: 7, scope: !2438)
!2444 = !DILocation(line: 979, column: 16, scope: !2438)
!2445 = !DILocation(line: 979, column: 24, scope: !2438)
!2446 = !DILocation(line: 979, column: 21, scope: !2438)
!2447 = !DILocation(line: 979, column: 15, scope: !2438)
!2448 = !DILocation(line: 979, column: 32, scope: !2438)
!2449 = !DILocation(line: 979, column: 7, scope: !2438)
!2450 = !DILocation(line: 981, column: 15, scope: !2438)
!2451 = !DILocation(line: 981, column: 7, scope: !2438)
!2452 = !DILocation(line: 983, column: 16, scope: !2438)
!2453 = !DILocation(line: 983, column: 24, scope: !2438)
!2454 = !DILocation(line: 983, column: 21, scope: !2438)
!2455 = !DILocation(line: 983, column: 15, scope: !2438)
!2456 = !DILocation(line: 983, column: 32, scope: !2438)
!2457 = !DILocation(line: 983, column: 7, scope: !2438)
!2458 = !DILocation(line: 985, column: 16, scope: !2438)
!2459 = !DILocation(line: 985, column: 23, scope: !2438)
!2460 = !DILocation(line: 985, column: 21, scope: !2438)
!2461 = !DILocation(line: 985, column: 15, scope: !2438)
!2462 = !DILocation(line: 985, column: 31, scope: !2438)
!2463 = !DILocation(line: 985, column: 7, scope: !2438)
!2464 = !DILocation(line: 987, column: 2, scope: !2433)
!2465 = !DILocation(line: 988, column: 5, scope: !2309)
!2466 = !DILocation(line: 966, column: 10, scope: !2310)
!2467 = !DILocation(line: 966, column: 21, scope: !2310)
!2468 = !DILocation(line: 966, column: 31, scope: !2310)
!2469 = !DILocation(line: 966, column: 41, scope: !2310)
!2470 = !DILocation(line: 966, column: 51, scope: !2310)
!2471 = !DILocation(line: 964, column: 5, scope: !2310)
!2472 = distinct !{!2472, !2403, !2473, !607}
!2473 = !DILocation(line: 988, column: 5, scope: !2311)
!2474 = !DILocation(line: 990, column: 14, scope: !2280)
!2475 = !DILocation(line: 990, column: 12, scope: !2280)
!2476 = !DILocation(line: 991, column: 13, scope: !2280)
!2477 = !DILocation(line: 991, column: 5, scope: !2280)
!2478 = !DILocation(line: 993, column: 14, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 991, column: 23)
!2480 = !DILocation(line: 993, column: 24, scope: !2479)
!2481 = !DILocation(line: 993, column: 21, scope: !2479)
!2482 = !DILocation(line: 993, column: 29, scope: !2479)
!2483 = !DILocation(line: 993, column: 32, scope: !2479)
!2484 = !DILocation(line: 993, column: 41, scope: !2479)
!2485 = !DILocation(line: 993, column: 39, scope: !2479)
!2486 = !DILocation(line: 993, column: 48, scope: !2479)
!2487 = !DILocation(line: 993, column: 6, scope: !2479)
!2488 = !DILocation(line: 995, column: 14, scope: !2479)
!2489 = !DILocation(line: 995, column: 24, scope: !2479)
!2490 = !DILocation(line: 995, column: 21, scope: !2479)
!2491 = !DILocation(line: 995, column: 31, scope: !2479)
!2492 = !DILocation(line: 995, column: 6, scope: !2479)
!2493 = !DILocation(line: 997, column: 14, scope: !2479)
!2494 = !DILocation(line: 997, column: 24, scope: !2479)
!2495 = !DILocation(line: 997, column: 21, scope: !2479)
!2496 = !DILocation(line: 997, column: 29, scope: !2479)
!2497 = !DILocation(line: 997, column: 32, scope: !2479)
!2498 = !DILocation(line: 997, column: 42, scope: !2479)
!2499 = !DILocation(line: 997, column: 39, scope: !2479)
!2500 = !DILocation(line: 997, column: 55, scope: !2479)
!2501 = !DILocation(line: 997, column: 6, scope: !2479)
!2502 = !DILocation(line: 999, column: 14, scope: !2479)
!2503 = !DILocation(line: 999, column: 24, scope: !2479)
!2504 = !DILocation(line: 999, column: 21, scope: !2479)
!2505 = !DILocation(line: 999, column: 31, scope: !2479)
!2506 = !DILocation(line: 999, column: 6, scope: !2479)
!2507 = !DILocation(line: 1001, column: 14, scope: !2479)
!2508 = !DILocation(line: 1001, column: 24, scope: !2479)
!2509 = !DILocation(line: 1001, column: 21, scope: !2479)
!2510 = !DILocation(line: 1001, column: 29, scope: !2479)
!2511 = !DILocation(line: 1001, column: 32, scope: !2479)
!2512 = !DILocation(line: 1001, column: 41, scope: !2479)
!2513 = !DILocation(line: 1001, column: 39, scope: !2479)
!2514 = !DILocation(line: 1001, column: 48, scope: !2479)
!2515 = !DILocation(line: 1001, column: 6, scope: !2479)
!2516 = !DILocation(line: 1004, column: 5, scope: !2280)
!2517 = !DILocation(line: 1005, column: 1, scope: !2280)
!2518 = distinct !DISubprogram(name: "Lisp_StringLess", scope: !2, file: !2, line: 1017, type: !236, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2519)
!2519 = !{!2520}
!2520 = !DILocalVariable(name: "builtin", arg: 1, scope: !2518, file: !2, line: 1017, type: !228)
!2521 = !DILocation(line: 1017, column: 30, scope: !2518)
!2522 = !DILocation(line: 1022, column: 31, scope: !2518)
!2523 = !DILocation(line: 1022, column: 13, scope: !2518)
!2524 = !DILocation(line: 1022, column: 5, scope: !2518)
!2525 = distinct !DISubprogram(name: "Lisp_StringGreater", scope: !2, file: !2, line: 1026, type: !236, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2526)
!2526 = !{!2527}
!2527 = !DILocalVariable(name: "builtin", arg: 1, scope: !2525, file: !2, line: 1026, type: !228)
!2528 = !DILocation(line: 1026, column: 33, scope: !2525)
!2529 = !DILocation(line: 1031, column: 31, scope: !2525)
!2530 = !DILocation(line: 1031, column: 13, scope: !2525)
!2531 = !DILocation(line: 1031, column: 5, scope: !2525)
!2532 = distinct !DISubprogram(name: "Lisp_StringLessEqual", scope: !2, file: !2, line: 1035, type: !236, scopeLine: 1039, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2533)
!2533 = !{!2534}
!2534 = !DILocalVariable(name: "builtin", arg: 1, scope: !2532, file: !2, line: 1035, type: !228)
!2535 = !DILocation(line: 1035, column: 35, scope: !2532)
!2536 = !DILocation(line: 1040, column: 31, scope: !2532)
!2537 = !DILocation(line: 1040, column: 13, scope: !2532)
!2538 = !DILocation(line: 1040, column: 5, scope: !2532)
!2539 = distinct !DISubprogram(name: "Lisp_StringGreaterEqual", scope: !2, file: !2, line: 1044, type: !236, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2540)
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "builtin", arg: 1, scope: !2539, file: !2, line: 1044, type: !228)
!2542 = !DILocation(line: 1044, column: 38, scope: !2539)
!2543 = !DILocation(line: 1049, column: 31, scope: !2539)
!2544 = !DILocation(line: 1049, column: 13, scope: !2539)
!2545 = !DILocation(line: 1049, column: 5, scope: !2539)
!2546 = distinct !DISubprogram(name: "Lisp_StringNotEqual_", scope: !2, file: !2, line: 1053, type: !236, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2547)
!2547 = !{!2548}
!2548 = !DILocalVariable(name: "builtin", arg: 1, scope: !2546, file: !2, line: 1053, type: !228)
!2549 = !DILocation(line: 1053, column: 35, scope: !2546)
!2550 = !DILocation(line: 1058, column: 31, scope: !2546)
!2551 = !DILocation(line: 1058, column: 13, scope: !2546)
!2552 = !DILocation(line: 1058, column: 5, scope: !2546)
!2553 = distinct !DISubprogram(name: "Lisp_StringEqual", scope: !2, file: !2, line: 1062, type: !236, scopeLine: 1066, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2554)
!2554 = !{!2555}
!2555 = !DILocalVariable(name: "builtin", arg: 1, scope: !2553, file: !2, line: 1062, type: !228)
!2556 = !DILocation(line: 1062, column: 31, scope: !2553)
!2557 = !DILocation(line: 1067, column: 31, scope: !2553)
!2558 = !DILocation(line: 1067, column: 13, scope: !2553)
!2559 = !DILocation(line: 1067, column: 5, scope: !2553)
!2560 = distinct !DISubprogram(name: "Lisp_StringLessp", scope: !2, file: !2, line: 1071, type: !236, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2561)
!2561 = !{!2562}
!2562 = !DILocalVariable(name: "builtin", arg: 1, scope: !2560, file: !2, line: 1071, type: !228)
!2563 = !DILocation(line: 1071, column: 31, scope: !2560)
!2564 = !DILocation(line: 1076, column: 31, scope: !2560)
!2565 = !DILocation(line: 1076, column: 13, scope: !2560)
!2566 = !DILocation(line: 1076, column: 5, scope: !2560)
!2567 = distinct !DISubprogram(name: "Lisp_StringGreaterp", scope: !2, file: !2, line: 1080, type: !236, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2568)
!2568 = !{!2569}
!2569 = !DILocalVariable(name: "builtin", arg: 1, scope: !2567, file: !2, line: 1080, type: !228)
!2570 = !DILocation(line: 1080, column: 34, scope: !2567)
!2571 = !DILocation(line: 1085, column: 31, scope: !2567)
!2572 = !DILocation(line: 1085, column: 13, scope: !2567)
!2573 = !DILocation(line: 1085, column: 5, scope: !2567)
!2574 = distinct !DISubprogram(name: "Lisp_StringNotGreaterp", scope: !2, file: !2, line: 1089, type: !236, scopeLine: 1093, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2575)
!2575 = !{!2576}
!2576 = !DILocalVariable(name: "builtin", arg: 1, scope: !2574, file: !2, line: 1089, type: !228)
!2577 = !DILocation(line: 1089, column: 37, scope: !2574)
!2578 = !DILocation(line: 1094, column: 31, scope: !2574)
!2579 = !DILocation(line: 1094, column: 13, scope: !2574)
!2580 = !DILocation(line: 1094, column: 5, scope: !2574)
!2581 = distinct !DISubprogram(name: "Lisp_StringNotLessp", scope: !2, file: !2, line: 1098, type: !236, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2582)
!2582 = !{!2583}
!2583 = !DILocalVariable(name: "builtin", arg: 1, scope: !2581, file: !2, line: 1098, type: !228)
!2584 = !DILocation(line: 1098, column: 34, scope: !2581)
!2585 = !DILocation(line: 1103, column: 31, scope: !2581)
!2586 = !DILocation(line: 1103, column: 13, scope: !2581)
!2587 = !DILocation(line: 1103, column: 5, scope: !2581)
!2588 = distinct !DISubprogram(name: "Lisp_StringNotEqual", scope: !2, file: !2, line: 1107, type: !236, scopeLine: 1111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2589)
!2589 = !{!2590}
!2590 = !DILocalVariable(name: "builtin", arg: 1, scope: !2588, file: !2, line: 1107, type: !228)
!2591 = !DILocation(line: 1107, column: 34, scope: !2588)
!2592 = !DILocation(line: 1112, column: 31, scope: !2588)
!2593 = !DILocation(line: 1112, column: 13, scope: !2588)
!2594 = !DILocation(line: 1112, column: 5, scope: !2588)
!2595 = distinct !DISubprogram(name: "Lisp_StringUpcase", scope: !2, file: !2, line: 1170, type: !236, scopeLine: 1174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2596)
!2596 = !{!2597}
!2597 = !DILocalVariable(name: "builtin", arg: 1, scope: !2595, file: !2, line: 1170, type: !228)
!2598 = !DILocation(line: 1170, column: 32, scope: !2595)
!2599 = !DILocation(line: 1175, column: 30, scope: !2595)
!2600 = !DILocation(line: 1175, column: 13, scope: !2595)
!2601 = !DILocation(line: 1175, column: 5, scope: !2595)
!2602 = distinct !DISubprogram(name: "LispStringUpcase", scope: !2, file: !2, line: 1116, type: !817, scopeLine: 1121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2621}
!2604 = !DILocalVariable(name: "builtin", arg: 1, scope: !2602, file: !2, line: 1116, type: !228)
!2605 = !DILocalVariable(name: "inplace", arg: 2, scope: !2602, file: !2, line: 1116, type: !173)
!2606 = !DILocalVariable(name: "result", scope: !2602, file: !2, line: 1122, type: !129)
!2607 = !DILocalVariable(name: "string", scope: !2602, file: !2, line: 1123, type: !155)
!2608 = !DILocalVariable(name: "newstring", scope: !2602, file: !2, line: 1123, type: !155)
!2609 = !DILocalVariable(name: "start", scope: !2602, file: !2, line: 1124, type: !126)
!2610 = !DILocalVariable(name: "end", scope: !2602, file: !2, line: 1124, type: !126)
!2611 = !DILocalVariable(name: "length", scope: !2602, file: !2, line: 1124, type: !126)
!2612 = !DILocalVariable(name: "offset", scope: !2602, file: !2, line: 1124, type: !126)
!2613 = !DILocalVariable(name: "ostring", scope: !2602, file: !2, line: 1126, type: !129)
!2614 = !DILocalVariable(name: "ostart", scope: !2602, file: !2, line: 1126, type: !129)
!2615 = !DILocalVariable(name: "oend", scope: !2602, file: !2, line: 1126, type: !129)
!2616 = !DILocalVariable(name: "__res", scope: !2617, file: !2, line: 1140, type: !173)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !2, line: 1140, column: 24)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !2, line: 1140, column: 6)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !2, line: 1139, column: 5)
!2620 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1139, column: 5)
!2621 = !DILocalVariable(name: "__res", scope: !2622, file: !2, line: 1161, type: !173)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !2, line: 1161, column: 22)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 1160, column: 5)
!2624 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1160, column: 5)
!2625 = !DILocation(line: 1116, column: 31, scope: !2602)
!2626 = !DILocation(line: 1116, column: 44, scope: !2602)
!2627 = !DILocation(line: 1122, column: 5, scope: !2602)
!2628 = !DILocation(line: 1122, column: 14, scope: !2602)
!2629 = !DILocation(line: 1123, column: 5, scope: !2602)
!2630 = !DILocation(line: 1123, column: 11, scope: !2602)
!2631 = !DILocation(line: 1123, column: 20, scope: !2602)
!2632 = !DILocation(line: 1124, column: 5, scope: !2602)
!2633 = !DILocation(line: 1124, column: 10, scope: !2602)
!2634 = !DILocation(line: 1124, column: 17, scope: !2602)
!2635 = !DILocation(line: 1124, column: 22, scope: !2602)
!2636 = !DILocation(line: 1124, column: 30, scope: !2602)
!2637 = !DILocation(line: 1126, column: 5, scope: !2602)
!2638 = !DILocation(line: 1126, column: 14, scope: !2602)
!2639 = !DILocation(line: 1126, column: 24, scope: !2602)
!2640 = !DILocation(line: 1126, column: 33, scope: !2602)
!2641 = !DILocation(line: 1128, column: 12, scope: !2602)
!2642 = !DILocation(line: 1128, column: 10, scope: !2602)
!2643 = !DILocation(line: 1129, column: 14, scope: !2602)
!2644 = !DILocation(line: 1129, column: 12, scope: !2602)
!2645 = !DILocation(line: 1130, column: 15, scope: !2602)
!2646 = !DILocation(line: 1130, column: 13, scope: !2602)
!2647 = !DILocation(line: 1131, column: 5, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1131, column: 5)
!2649 = !DILocation(line: 1131, column: 5, scope: !2602)
!2650 = !DILocation(line: 1132, column: 31, scope: !2602)
!2651 = !DILocation(line: 1132, column: 40, scope: !2602)
!2652 = !DILocation(line: 1132, column: 49, scope: !2602)
!2653 = !DILocation(line: 1132, column: 57, scope: !2602)
!2654 = !DILocation(line: 1132, column: 5, scope: !2602)
!2655 = !DILocation(line: 1134, column: 14, scope: !2602)
!2656 = !DILocation(line: 1134, column: 12, scope: !2602)
!2657 = !DILocation(line: 1135, column: 14, scope: !2602)
!2658 = !DILocation(line: 1135, column: 12, scope: !2602)
!2659 = !DILocation(line: 1136, column: 14, scope: !2602)
!2660 = !DILocation(line: 1136, column: 12, scope: !2602)
!2661 = !DILocation(line: 1139, column: 19, scope: !2620)
!2662 = !DILocation(line: 1139, column: 17, scope: !2620)
!2663 = !DILocation(line: 1139, column: 10, scope: !2620)
!2664 = !DILocation(line: 1139, column: 26, scope: !2619)
!2665 = !DILocation(line: 1139, column: 35, scope: !2619)
!2666 = !DILocation(line: 1139, column: 33, scope: !2619)
!2667 = !DILocation(line: 1139, column: 5, scope: !2620)
!2668 = !DILocation(line: 1140, column: 6, scope: !2618)
!2669 = !DILocation(line: 1140, column: 13, scope: !2618)
!2670 = !DILocation(line: 1140, column: 24, scope: !2617)
!2671 = !DILocation(line: 1140, column: 24, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2617, file: !2, line: 1140, column: 24)
!2673 = !DILocation(line: 1140, column: 24, scope: !2618)
!2674 = !DILocation(line: 1140, column: 21, scope: !2618)
!2675 = !DILocation(line: 1140, column: 6, scope: !2619)
!2676 = !DILocation(line: 1141, column: 6, scope: !2618)
!2677 = !DILocation(line: 1139, column: 46, scope: !2619)
!2678 = !DILocation(line: 1139, column: 5, scope: !2619)
!2679 = distinct !{!2679, !2667, !2680, !607}
!2680 = !DILocation(line: 1141, column: 6, scope: !2620)
!2681 = !DILocation(line: 1143, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1143, column: 9)
!2683 = !DILocation(line: 1143, column: 19, scope: !2682)
!2684 = !DILocation(line: 1143, column: 16, scope: !2682)
!2685 = !DILocation(line: 1143, column: 9, scope: !2602)
!2686 = !DILocation(line: 1144, column: 10, scope: !2682)
!2687 = !DILocation(line: 1144, column: 2, scope: !2682)
!2688 = !DILocation(line: 1146, column: 9, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1146, column: 9)
!2690 = !DILocation(line: 1146, column: 9, scope: !2602)
!2691 = !DILocation(line: 1147, column: 2, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !2, line: 1147, column: 2)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 1146, column: 18)
!2694 = !DILocation(line: 1147, column: 2, scope: !2693)
!2695 = !DILocation(line: 1148, column: 14, scope: !2693)
!2696 = !DILocation(line: 1148, column: 12, scope: !2693)
!2697 = !DILocation(line: 1149, column: 5, scope: !2693)
!2698 = !DILocation(line: 1152, column: 25, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 1150, column: 10)
!2700 = !DILocation(line: 1152, column: 32, scope: !2699)
!2701 = !DILocation(line: 1152, column: 14, scope: !2699)
!2702 = !DILocation(line: 1152, column: 12, scope: !2699)
!2703 = !DILocation(line: 1153, column: 6, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !2, line: 1153, column: 6)
!2705 = !DILocation(line: 1153, column: 6, scope: !2699)
!2706 = !DILocation(line: 1154, column: 13, scope: !2704)
!2707 = !DILocation(line: 1154, column: 24, scope: !2704)
!2708 = !DILocation(line: 1154, column: 32, scope: !2704)
!2709 = !DILocation(line: 1154, column: 6, scope: !2704)
!2710 = !DILocation(line: 1155, column: 6, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2699, file: !2, line: 1155, column: 6)
!2712 = !DILocation(line: 1155, column: 15, scope: !2711)
!2713 = !DILocation(line: 1155, column: 13, scope: !2711)
!2714 = !DILocation(line: 1155, column: 6, scope: !2699)
!2715 = !DILocation(line: 1156, column: 13, scope: !2711)
!2716 = !DILocation(line: 1156, column: 25, scope: !2711)
!2717 = !DILocation(line: 1156, column: 23, scope: !2711)
!2718 = !DILocation(line: 1156, column: 30, scope: !2711)
!2719 = !DILocation(line: 1156, column: 39, scope: !2711)
!2720 = !DILocation(line: 1156, column: 37, scope: !2711)
!2721 = !DILocation(line: 1156, column: 44, scope: !2711)
!2722 = !DILocation(line: 1156, column: 53, scope: !2711)
!2723 = !DILocation(line: 1156, column: 51, scope: !2711)
!2724 = !DILocation(line: 1156, column: 6, scope: !2711)
!2725 = !DILocation(line: 1157, column: 2, scope: !2699)
!2726 = !DILocation(line: 1157, column: 12, scope: !2699)
!2727 = !DILocation(line: 1157, column: 20, scope: !2699)
!2728 = !DILocation(line: 1160, column: 5, scope: !2602)
!2729 = !DILocation(line: 1160, column: 12, scope: !2623)
!2730 = !DILocation(line: 1160, column: 21, scope: !2623)
!2731 = !DILocation(line: 1160, column: 19, scope: !2623)
!2732 = !DILocation(line: 1160, column: 5, scope: !2624)
!2733 = !DILocation(line: 1161, column: 22, scope: !2622)
!2734 = !DILocation(line: 1161, column: 22, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2622, file: !2, line: 1161, column: 22)
!2736 = !DILocation(line: 1161, column: 22, scope: !2623)
!2737 = !DILocation(line: 1161, column: 2, scope: !2623)
!2738 = !DILocation(line: 1161, column: 12, scope: !2623)
!2739 = !DILocation(line: 1161, column: 20, scope: !2623)
!2740 = !DILocation(line: 1160, column: 32, scope: !2623)
!2741 = !DILocation(line: 1160, column: 5, scope: !2623)
!2742 = distinct !{!2742, !2732, !2743, !607}
!2743 = !DILocation(line: 1161, column: 22, scope: !2624)
!2744 = !DILocation(line: 1163, column: 10, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 1163, column: 9)
!2746 = !DILocation(line: 1163, column: 9, scope: !2602)
!2747 = !DILocation(line: 1164, column: 11, scope: !2745)
!2748 = !DILocation(line: 1164, column: 9, scope: !2745)
!2749 = !DILocation(line: 1164, column: 2, scope: !2745)
!2750 = !DILocation(line: 1166, column: 13, scope: !2602)
!2751 = !DILocation(line: 1166, column: 5, scope: !2602)
!2752 = !DILocation(line: 1167, column: 1, scope: !2602)
!2753 = distinct !DISubprogram(name: "Lisp_NstringUpcase", scope: !2, file: !2, line: 1179, type: !236, scopeLine: 1183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2754)
!2754 = !{!2755}
!2755 = !DILocalVariable(name: "builtin", arg: 1, scope: !2753, file: !2, line: 1179, type: !228)
!2756 = !DILocation(line: 1179, column: 33, scope: !2753)
!2757 = !DILocation(line: 1184, column: 30, scope: !2753)
!2758 = !DILocation(line: 1184, column: 13, scope: !2753)
!2759 = !DILocation(line: 1184, column: 5, scope: !2753)
!2760 = distinct !DISubprogram(name: "Lisp_StringDowncase", scope: !2, file: !2, line: 1241, type: !236, scopeLine: 1245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2761)
!2761 = !{!2762}
!2762 = !DILocalVariable(name: "builtin", arg: 1, scope: !2760, file: !2, line: 1241, type: !228)
!2763 = !DILocation(line: 1241, column: 34, scope: !2760)
!2764 = !DILocation(line: 1246, column: 32, scope: !2760)
!2765 = !DILocation(line: 1246, column: 13, scope: !2760)
!2766 = !DILocation(line: 1246, column: 5, scope: !2760)
!2767 = distinct !DISubprogram(name: "LispStringDowncase", scope: !2, file: !2, line: 1188, type: !817, scopeLine: 1193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2786}
!2769 = !DILocalVariable(name: "builtin", arg: 1, scope: !2767, file: !2, line: 1188, type: !228)
!2770 = !DILocalVariable(name: "inplace", arg: 2, scope: !2767, file: !2, line: 1188, type: !173)
!2771 = !DILocalVariable(name: "result", scope: !2767, file: !2, line: 1194, type: !129)
!2772 = !DILocalVariable(name: "string", scope: !2767, file: !2, line: 1195, type: !155)
!2773 = !DILocalVariable(name: "newstring", scope: !2767, file: !2, line: 1195, type: !155)
!2774 = !DILocalVariable(name: "start", scope: !2767, file: !2, line: 1196, type: !126)
!2775 = !DILocalVariable(name: "end", scope: !2767, file: !2, line: 1196, type: !126)
!2776 = !DILocalVariable(name: "length", scope: !2767, file: !2, line: 1196, type: !126)
!2777 = !DILocalVariable(name: "offset", scope: !2767, file: !2, line: 1196, type: !126)
!2778 = !DILocalVariable(name: "ostring", scope: !2767, file: !2, line: 1198, type: !129)
!2779 = !DILocalVariable(name: "ostart", scope: !2767, file: !2, line: 1198, type: !129)
!2780 = !DILocalVariable(name: "oend", scope: !2767, file: !2, line: 1198, type: !129)
!2781 = !DILocalVariable(name: "__res", scope: !2782, file: !2, line: 1212, type: !173)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !2, line: 1212, column: 24)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !2, line: 1212, column: 6)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !2, line: 1211, column: 5)
!2785 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1211, column: 5)
!2786 = !DILocalVariable(name: "__res", scope: !2787, file: !2, line: 1232, type: !173)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !2, line: 1232, column: 22)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !2, line: 1231, column: 5)
!2789 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1231, column: 5)
!2790 = !DILocation(line: 1188, column: 33, scope: !2767)
!2791 = !DILocation(line: 1188, column: 46, scope: !2767)
!2792 = !DILocation(line: 1194, column: 5, scope: !2767)
!2793 = !DILocation(line: 1194, column: 14, scope: !2767)
!2794 = !DILocation(line: 1195, column: 5, scope: !2767)
!2795 = !DILocation(line: 1195, column: 11, scope: !2767)
!2796 = !DILocation(line: 1195, column: 20, scope: !2767)
!2797 = !DILocation(line: 1196, column: 5, scope: !2767)
!2798 = !DILocation(line: 1196, column: 10, scope: !2767)
!2799 = !DILocation(line: 1196, column: 17, scope: !2767)
!2800 = !DILocation(line: 1196, column: 22, scope: !2767)
!2801 = !DILocation(line: 1196, column: 30, scope: !2767)
!2802 = !DILocation(line: 1198, column: 5, scope: !2767)
!2803 = !DILocation(line: 1198, column: 14, scope: !2767)
!2804 = !DILocation(line: 1198, column: 24, scope: !2767)
!2805 = !DILocation(line: 1198, column: 33, scope: !2767)
!2806 = !DILocation(line: 1200, column: 12, scope: !2767)
!2807 = !DILocation(line: 1200, column: 10, scope: !2767)
!2808 = !DILocation(line: 1201, column: 14, scope: !2767)
!2809 = !DILocation(line: 1201, column: 12, scope: !2767)
!2810 = !DILocation(line: 1202, column: 15, scope: !2767)
!2811 = !DILocation(line: 1202, column: 13, scope: !2767)
!2812 = !DILocation(line: 1203, column: 5, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1203, column: 5)
!2814 = !DILocation(line: 1203, column: 5, scope: !2767)
!2815 = !DILocation(line: 1204, column: 31, scope: !2767)
!2816 = !DILocation(line: 1204, column: 40, scope: !2767)
!2817 = !DILocation(line: 1204, column: 49, scope: !2767)
!2818 = !DILocation(line: 1204, column: 57, scope: !2767)
!2819 = !DILocation(line: 1204, column: 5, scope: !2767)
!2820 = !DILocation(line: 1206, column: 14, scope: !2767)
!2821 = !DILocation(line: 1206, column: 12, scope: !2767)
!2822 = !DILocation(line: 1207, column: 14, scope: !2767)
!2823 = !DILocation(line: 1207, column: 12, scope: !2767)
!2824 = !DILocation(line: 1208, column: 14, scope: !2767)
!2825 = !DILocation(line: 1208, column: 12, scope: !2767)
!2826 = !DILocation(line: 1211, column: 19, scope: !2785)
!2827 = !DILocation(line: 1211, column: 17, scope: !2785)
!2828 = !DILocation(line: 1211, column: 10, scope: !2785)
!2829 = !DILocation(line: 1211, column: 26, scope: !2784)
!2830 = !DILocation(line: 1211, column: 35, scope: !2784)
!2831 = !DILocation(line: 1211, column: 33, scope: !2784)
!2832 = !DILocation(line: 1211, column: 5, scope: !2785)
!2833 = !DILocation(line: 1212, column: 6, scope: !2783)
!2834 = !DILocation(line: 1212, column: 13, scope: !2783)
!2835 = !DILocation(line: 1212, column: 24, scope: !2782)
!2836 = !DILocation(line: 1212, column: 24, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2782, file: !2, line: 1212, column: 24)
!2838 = !DILocation(line: 1212, column: 24, scope: !2783)
!2839 = !DILocation(line: 1212, column: 21, scope: !2783)
!2840 = !DILocation(line: 1212, column: 6, scope: !2784)
!2841 = !DILocation(line: 1213, column: 6, scope: !2783)
!2842 = !DILocation(line: 1211, column: 46, scope: !2784)
!2843 = !DILocation(line: 1211, column: 5, scope: !2784)
!2844 = distinct !{!2844, !2832, !2845, !607}
!2845 = !DILocation(line: 1213, column: 6, scope: !2785)
!2846 = !DILocation(line: 1215, column: 9, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1215, column: 9)
!2848 = !DILocation(line: 1215, column: 19, scope: !2847)
!2849 = !DILocation(line: 1215, column: 16, scope: !2847)
!2850 = !DILocation(line: 1215, column: 9, scope: !2767)
!2851 = !DILocation(line: 1216, column: 10, scope: !2847)
!2852 = !DILocation(line: 1216, column: 2, scope: !2847)
!2853 = !DILocation(line: 1218, column: 9, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1218, column: 9)
!2855 = !DILocation(line: 1218, column: 9, scope: !2767)
!2856 = !DILocation(line: 1219, column: 2, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1219, column: 2)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !2, line: 1218, column: 18)
!2859 = !DILocation(line: 1219, column: 2, scope: !2858)
!2860 = !DILocation(line: 1220, column: 14, scope: !2858)
!2861 = !DILocation(line: 1220, column: 12, scope: !2858)
!2862 = !DILocation(line: 1221, column: 5, scope: !2858)
!2863 = !DILocation(line: 1224, column: 25, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2854, file: !2, line: 1222, column: 10)
!2865 = !DILocation(line: 1224, column: 32, scope: !2864)
!2866 = !DILocation(line: 1224, column: 14, scope: !2864)
!2867 = !DILocation(line: 1224, column: 12, scope: !2864)
!2868 = !DILocation(line: 1225, column: 6, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2864, file: !2, line: 1225, column: 6)
!2870 = !DILocation(line: 1225, column: 6, scope: !2864)
!2871 = !DILocation(line: 1226, column: 13, scope: !2869)
!2872 = !DILocation(line: 1226, column: 24, scope: !2869)
!2873 = !DILocation(line: 1226, column: 32, scope: !2869)
!2874 = !DILocation(line: 1226, column: 6, scope: !2869)
!2875 = !DILocation(line: 1227, column: 6, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2864, file: !2, line: 1227, column: 6)
!2877 = !DILocation(line: 1227, column: 15, scope: !2876)
!2878 = !DILocation(line: 1227, column: 13, scope: !2876)
!2879 = !DILocation(line: 1227, column: 6, scope: !2864)
!2880 = !DILocation(line: 1228, column: 13, scope: !2876)
!2881 = !DILocation(line: 1228, column: 25, scope: !2876)
!2882 = !DILocation(line: 1228, column: 23, scope: !2876)
!2883 = !DILocation(line: 1228, column: 30, scope: !2876)
!2884 = !DILocation(line: 1228, column: 39, scope: !2876)
!2885 = !DILocation(line: 1228, column: 37, scope: !2876)
!2886 = !DILocation(line: 1228, column: 44, scope: !2876)
!2887 = !DILocation(line: 1228, column: 53, scope: !2876)
!2888 = !DILocation(line: 1228, column: 51, scope: !2876)
!2889 = !DILocation(line: 1228, column: 6, scope: !2876)
!2890 = !DILocation(line: 1229, column: 2, scope: !2864)
!2891 = !DILocation(line: 1229, column: 12, scope: !2864)
!2892 = !DILocation(line: 1229, column: 20, scope: !2864)
!2893 = !DILocation(line: 1231, column: 5, scope: !2767)
!2894 = !DILocation(line: 1231, column: 12, scope: !2788)
!2895 = !DILocation(line: 1231, column: 21, scope: !2788)
!2896 = !DILocation(line: 1231, column: 19, scope: !2788)
!2897 = !DILocation(line: 1231, column: 5, scope: !2789)
!2898 = !DILocation(line: 1232, column: 22, scope: !2787)
!2899 = !DILocation(line: 1232, column: 22, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2787, file: !2, line: 1232, column: 22)
!2901 = !DILocation(line: 1232, column: 22, scope: !2788)
!2902 = !DILocation(line: 1232, column: 2, scope: !2788)
!2903 = !DILocation(line: 1232, column: 12, scope: !2788)
!2904 = !DILocation(line: 1232, column: 20, scope: !2788)
!2905 = !DILocation(line: 1231, column: 32, scope: !2788)
!2906 = !DILocation(line: 1231, column: 5, scope: !2788)
!2907 = distinct !{!2907, !2897, !2908, !607}
!2908 = !DILocation(line: 1232, column: 22, scope: !2789)
!2909 = !DILocation(line: 1234, column: 10, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2767, file: !2, line: 1234, column: 9)
!2911 = !DILocation(line: 1234, column: 9, scope: !2767)
!2912 = !DILocation(line: 1235, column: 11, scope: !2910)
!2913 = !DILocation(line: 1235, column: 9, scope: !2910)
!2914 = !DILocation(line: 1235, column: 2, scope: !2910)
!2915 = !DILocation(line: 1237, column: 13, scope: !2767)
!2916 = !DILocation(line: 1237, column: 5, scope: !2767)
!2917 = !DILocation(line: 1238, column: 1, scope: !2767)
!2918 = distinct !DISubprogram(name: "Lisp_NstringDowncase", scope: !2, file: !2, line: 1250, type: !236, scopeLine: 1254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2919)
!2919 = !{!2920}
!2920 = !DILocalVariable(name: "builtin", arg: 1, scope: !2918, file: !2, line: 1250, type: !228)
!2921 = !DILocation(line: 1250, column: 35, scope: !2918)
!2922 = !DILocation(line: 1255, column: 32, scope: !2918)
!2923 = !DILocation(line: 1255, column: 13, scope: !2918)
!2924 = !DILocation(line: 1255, column: 5, scope: !2918)
!2925 = distinct !DISubprogram(name: "Lisp_StringCapitalize", scope: !2, file: !2, line: 1335, type: !236, scopeLine: 1339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2926)
!2926 = !{!2927}
!2927 = !DILocalVariable(name: "builtin", arg: 1, scope: !2925, file: !2, line: 1335, type: !228)
!2928 = !DILocation(line: 1335, column: 36, scope: !2925)
!2929 = !DILocation(line: 1340, column: 34, scope: !2925)
!2930 = !DILocation(line: 1340, column: 13, scope: !2925)
!2931 = !DILocation(line: 1340, column: 5, scope: !2925)
!2932 = distinct !DISubprogram(name: "LispStringCapitalize", scope: !2, file: !2, line: 1259, type: !817, scopeLine: 1264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !2933)
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2955, !2961, !2968}
!2934 = !DILocalVariable(name: "builtin", arg: 1, scope: !2932, file: !2, line: 1259, type: !228)
!2935 = !DILocalVariable(name: "inplace", arg: 2, scope: !2932, file: !2, line: 1259, type: !173)
!2936 = !DILocalVariable(name: "result", scope: !2932, file: !2, line: 1265, type: !129)
!2937 = !DILocalVariable(name: "string", scope: !2932, file: !2, line: 1266, type: !155)
!2938 = !DILocalVariable(name: "newstring", scope: !2932, file: !2, line: 1266, type: !155)
!2939 = !DILocalVariable(name: "start", scope: !2932, file: !2, line: 1267, type: !126)
!2940 = !DILocalVariable(name: "end", scope: !2932, file: !2, line: 1267, type: !126)
!2941 = !DILocalVariable(name: "length", scope: !2932, file: !2, line: 1267, type: !126)
!2942 = !DILocalVariable(name: "offset", scope: !2932, file: !2, line: 1267, type: !126)
!2943 = !DILocalVariable(name: "upcase", scope: !2932, file: !2, line: 1267, type: !126)
!2944 = !DILocalVariable(name: "ostring", scope: !2932, file: !2, line: 1269, type: !129)
!2945 = !DILocalVariable(name: "ostart", scope: !2932, file: !2, line: 1269, type: !129)
!2946 = !DILocalVariable(name: "oend", scope: !2932, file: !2, line: 1269, type: !129)
!2947 = !DILocalVariable(name: "__res", scope: !2948, file: !2, line: 1286, type: !173)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 1286, column: 28)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 1286, column: 10)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 1283, column: 14)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !2, line: 1283, column: 6)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !2, line: 1282, column: 62)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !2, line: 1282, column: 5)
!2954 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1282, column: 5)
!2955 = !DILocalVariable(name: "__res", scope: !2956, file: !2, line: 1292, type: !173)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !2, line: 1292, column: 25)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !2, line: 1292, column: 7)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !2, line: 1291, column: 35)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !2, line: 1291, column: 10)
!2960 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 1290, column: 7)
!2961 = !DILocalVariable(name: "__res", scope: !2962, file: !2, line: 1317, type: !173)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !2, line: 1317, column: 26)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !2, line: 1314, column: 14)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !2, line: 1314, column: 6)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !2, line: 1313, column: 36)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !2, line: 1313, column: 5)
!2967 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1313, column: 5)
!2968 = !DILocalVariable(name: "__res", scope: !2969, file: !2, line: 1322, type: !173)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !2, line: 1322, column: 23)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !2, line: 1321, column: 10)
!2971 = distinct !DILexicalBlock(scope: !2964, file: !2, line: 1320, column: 7)
!2972 = !DILocation(line: 1259, column: 35, scope: !2932)
!2973 = !DILocation(line: 1259, column: 48, scope: !2932)
!2974 = !DILocation(line: 1265, column: 5, scope: !2932)
!2975 = !DILocation(line: 1265, column: 14, scope: !2932)
!2976 = !DILocation(line: 1266, column: 5, scope: !2932)
!2977 = !DILocation(line: 1266, column: 11, scope: !2932)
!2978 = !DILocation(line: 1266, column: 20, scope: !2932)
!2979 = !DILocation(line: 1267, column: 5, scope: !2932)
!2980 = !DILocation(line: 1267, column: 10, scope: !2932)
!2981 = !DILocation(line: 1267, column: 17, scope: !2932)
!2982 = !DILocation(line: 1267, column: 22, scope: !2932)
!2983 = !DILocation(line: 1267, column: 30, scope: !2932)
!2984 = !DILocation(line: 1267, column: 38, scope: !2932)
!2985 = !DILocation(line: 1269, column: 5, scope: !2932)
!2986 = !DILocation(line: 1269, column: 14, scope: !2932)
!2987 = !DILocation(line: 1269, column: 24, scope: !2932)
!2988 = !DILocation(line: 1269, column: 33, scope: !2932)
!2989 = !DILocation(line: 1271, column: 12, scope: !2932)
!2990 = !DILocation(line: 1271, column: 10, scope: !2932)
!2991 = !DILocation(line: 1272, column: 14, scope: !2932)
!2992 = !DILocation(line: 1272, column: 12, scope: !2932)
!2993 = !DILocation(line: 1273, column: 15, scope: !2932)
!2994 = !DILocation(line: 1273, column: 13, scope: !2932)
!2995 = !DILocation(line: 1274, column: 5, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1274, column: 5)
!2997 = !DILocation(line: 1274, column: 5, scope: !2932)
!2998 = !DILocation(line: 1275, column: 31, scope: !2932)
!2999 = !DILocation(line: 1275, column: 40, scope: !2932)
!3000 = !DILocation(line: 1275, column: 49, scope: !2932)
!3001 = !DILocation(line: 1275, column: 57, scope: !2932)
!3002 = !DILocation(line: 1275, column: 5, scope: !2932)
!3003 = !DILocation(line: 1277, column: 14, scope: !2932)
!3004 = !DILocation(line: 1277, column: 12, scope: !2932)
!3005 = !DILocation(line: 1278, column: 14, scope: !2932)
!3006 = !DILocation(line: 1278, column: 12, scope: !2932)
!3007 = !DILocation(line: 1279, column: 14, scope: !2932)
!3008 = !DILocation(line: 1279, column: 12, scope: !2932)
!3009 = !DILocation(line: 1282, column: 17, scope: !2954)
!3010 = !DILocation(line: 1282, column: 31, scope: !2954)
!3011 = !DILocation(line: 1282, column: 29, scope: !2954)
!3012 = !DILocation(line: 1282, column: 10, scope: !2954)
!3013 = !DILocation(line: 1282, column: 38, scope: !2953)
!3014 = !DILocation(line: 1282, column: 47, scope: !2953)
!3015 = !DILocation(line: 1282, column: 45, scope: !2953)
!3016 = !DILocation(line: 1282, column: 5, scope: !2954)
!3017 = !DILocation(line: 1283, column: 6, scope: !2951)
!3018 = !DILocation(line: 1283, column: 6, scope: !2952)
!3019 = !DILocation(line: 1284, column: 11, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 1284, column: 10)
!3021 = !DILocation(line: 1284, column: 10, scope: !2950)
!3022 = !DILocation(line: 1285, column: 3, scope: !3020)
!3023 = !DILocation(line: 1286, column: 10, scope: !2949)
!3024 = !DILocation(line: 1286, column: 17, scope: !2949)
!3025 = !DILocation(line: 1286, column: 28, scope: !2948)
!3026 = !DILocation(line: 1286, column: 28, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2948, file: !2, line: 1286, column: 28)
!3028 = !DILocation(line: 1286, column: 28, scope: !2949)
!3029 = !DILocation(line: 1286, column: 25, scope: !2949)
!3030 = !DILocation(line: 1286, column: 10, scope: !2950)
!3031 = !DILocation(line: 1287, column: 3, scope: !2949)
!3032 = !DILocation(line: 1288, column: 13, scope: !2950)
!3033 = !DILocation(line: 1289, column: 2, scope: !2950)
!3034 = !DILocation(line: 1291, column: 10, scope: !2959)
!3035 = !DILocation(line: 1291, column: 10, scope: !2960)
!3036 = !DILocation(line: 1292, column: 7, scope: !2957)
!3037 = !DILocation(line: 1292, column: 14, scope: !2957)
!3038 = !DILocation(line: 1292, column: 25, scope: !2956)
!3039 = !DILocation(line: 1292, column: 25, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2956, file: !2, line: 1292, column: 25)
!3041 = !DILocation(line: 1292, column: 25, scope: !2957)
!3042 = !DILocation(line: 1292, column: 22, scope: !2957)
!3043 = !DILocation(line: 1292, column: 7, scope: !2958)
!3044 = !DILocation(line: 1293, column: 7, scope: !2957)
!3045 = !DILocation(line: 1294, column: 6, scope: !2958)
!3046 = !DILocation(line: 1296, column: 10, scope: !2959)
!3047 = !DILocation(line: 1298, column: 5, scope: !2952)
!3048 = !DILocation(line: 1282, column: 58, scope: !2953)
!3049 = !DILocation(line: 1282, column: 5, scope: !2953)
!3050 = distinct !{!3050, !3016, !3051, !607}
!3051 = !DILocation(line: 1298, column: 5, scope: !2954)
!3052 = !DILocation(line: 1300, column: 9, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1300, column: 9)
!3054 = !DILocation(line: 1300, column: 19, scope: !3053)
!3055 = !DILocation(line: 1300, column: 16, scope: !3053)
!3056 = !DILocation(line: 1300, column: 9, scope: !2932)
!3057 = !DILocation(line: 1301, column: 10, scope: !3053)
!3058 = !DILocation(line: 1301, column: 2, scope: !3053)
!3059 = !DILocation(line: 1303, column: 9, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1303, column: 9)
!3061 = !DILocation(line: 1303, column: 9, scope: !2932)
!3062 = !DILocation(line: 1304, column: 2, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !2, line: 1304, column: 2)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !2, line: 1303, column: 18)
!3065 = !DILocation(line: 1304, column: 2, scope: !3064)
!3066 = !DILocation(line: 1305, column: 14, scope: !3064)
!3067 = !DILocation(line: 1305, column: 12, scope: !3064)
!3068 = !DILocation(line: 1306, column: 5, scope: !3064)
!3069 = !DILocation(line: 1309, column: 25, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3060, file: !2, line: 1307, column: 10)
!3071 = !DILocation(line: 1309, column: 32, scope: !3070)
!3072 = !DILocation(line: 1309, column: 14, scope: !3070)
!3073 = !DILocation(line: 1309, column: 12, scope: !3070)
!3074 = !DILocation(line: 1310, column: 9, scope: !3070)
!3075 = !DILocation(line: 1310, column: 20, scope: !3070)
!3076 = !DILocation(line: 1310, column: 28, scope: !3070)
!3077 = !DILocation(line: 1310, column: 2, scope: !3070)
!3078 = !DILocation(line: 1311, column: 2, scope: !3070)
!3079 = !DILocation(line: 1311, column: 12, scope: !3070)
!3080 = !DILocation(line: 1311, column: 20, scope: !3070)
!3081 = !DILocation(line: 1313, column: 5, scope: !2932)
!3082 = !DILocation(line: 1313, column: 12, scope: !2966)
!3083 = !DILocation(line: 1313, column: 21, scope: !2966)
!3084 = !DILocation(line: 1313, column: 19, scope: !2966)
!3085 = !DILocation(line: 1313, column: 5, scope: !2967)
!3086 = !DILocation(line: 1314, column: 6, scope: !2964)
!3087 = !DILocation(line: 1314, column: 6, scope: !2965)
!3088 = !DILocation(line: 1315, column: 11, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !2963, file: !2, line: 1315, column: 10)
!3090 = !DILocation(line: 1315, column: 10, scope: !2963)
!3091 = !DILocation(line: 1316, column: 3, scope: !3089)
!3092 = !DILocation(line: 1317, column: 26, scope: !2962)
!3093 = !DILocation(line: 1317, column: 26, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !2962, file: !2, line: 1317, column: 26)
!3095 = !DILocation(line: 1317, column: 26, scope: !2963)
!3096 = !DILocation(line: 1317, column: 6, scope: !2963)
!3097 = !DILocation(line: 1317, column: 16, scope: !2963)
!3098 = !DILocation(line: 1317, column: 24, scope: !2963)
!3099 = !DILocation(line: 1318, column: 13, scope: !2963)
!3100 = !DILocation(line: 1319, column: 2, scope: !2963)
!3101 = !DILocation(line: 1321, column: 10, scope: !2970)
!3102 = !DILocation(line: 1321, column: 10, scope: !2971)
!3103 = !DILocation(line: 1322, column: 23, scope: !2969)
!3104 = !DILocation(line: 1322, column: 23, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !2969, file: !2, line: 1322, column: 23)
!3106 = !DILocation(line: 1322, column: 23, scope: !2970)
!3107 = !DILocation(line: 1322, column: 3, scope: !2970)
!3108 = !DILocation(line: 1322, column: 13, scope: !2970)
!3109 = !DILocation(line: 1322, column: 21, scope: !2970)
!3110 = !DILocation(line: 1324, column: 10, scope: !2970)
!3111 = !DILocation(line: 1326, column: 5, scope: !2965)
!3112 = !DILocation(line: 1313, column: 32, scope: !2966)
!3113 = !DILocation(line: 1313, column: 5, scope: !2966)
!3114 = distinct !{!3114, !3085, !3115, !607}
!3115 = !DILocation(line: 1326, column: 5, scope: !2967)
!3116 = !DILocation(line: 1328, column: 10, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2932, file: !2, line: 1328, column: 9)
!3118 = !DILocation(line: 1328, column: 9, scope: !2932)
!3119 = !DILocation(line: 1329, column: 11, scope: !3117)
!3120 = !DILocation(line: 1329, column: 9, scope: !3117)
!3121 = !DILocation(line: 1329, column: 2, scope: !3117)
!3122 = !DILocation(line: 1331, column: 13, scope: !2932)
!3123 = !DILocation(line: 1331, column: 5, scope: !2932)
!3124 = !DILocation(line: 1332, column: 1, scope: !2932)
!3125 = distinct !DISubprogram(name: "Lisp_NstringCapitalize", scope: !2, file: !2, line: 1344, type: !236, scopeLine: 1348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !3126)
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "builtin", arg: 1, scope: !3125, file: !2, line: 1344, type: !228)
!3128 = !DILocation(line: 1344, column: 37, scope: !3125)
!3129 = !DILocation(line: 1349, column: 34, scope: !3125)
!3130 = !DILocation(line: 1349, column: 13, scope: !3125)
!3131 = !DILocation(line: 1349, column: 5, scope: !3125)
!3132 = distinct !DISubprogram(name: "Lisp_StringConcat", scope: !2, file: !2, line: 1353, type: !236, scopeLine: 1357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139, !3140}
!3134 = !DILocalVariable(name: "builtin", arg: 1, scope: !3132, file: !2, line: 1353, type: !228)
!3135 = !DILocalVariable(name: "buffer", scope: !3132, file: !2, line: 1358, type: !155)
!3136 = !DILocalVariable(name: "size", scope: !3132, file: !2, line: 1359, type: !126)
!3137 = !DILocalVariable(name: "length", scope: !3132, file: !2, line: 1359, type: !126)
!3138 = !DILocalVariable(name: "object", scope: !3132, file: !2, line: 1360, type: !129)
!3139 = !DILocalVariable(name: "string", scope: !3132, file: !2, line: 1360, type: !129)
!3140 = !DILocalVariable(name: "strings", scope: !3132, file: !2, line: 1362, type: !129)
!3141 = !DILocation(line: 1353, column: 32, scope: !3132)
!3142 = !DILocation(line: 1358, column: 5, scope: !3132)
!3143 = !DILocation(line: 1358, column: 11, scope: !3132)
!3144 = !DILocation(line: 1359, column: 5, scope: !3132)
!3145 = !DILocation(line: 1359, column: 10, scope: !3132)
!3146 = !DILocation(line: 1359, column: 16, scope: !3132)
!3147 = !DILocation(line: 1360, column: 5, scope: !3132)
!3148 = !DILocation(line: 1360, column: 14, scope: !3132)
!3149 = !DILocation(line: 1360, column: 23, scope: !3132)
!3150 = !DILocation(line: 1362, column: 5, scope: !3132)
!3151 = !DILocation(line: 1362, column: 14, scope: !3132)
!3152 = !DILocation(line: 1364, column: 15, scope: !3132)
!3153 = !DILocation(line: 1364, column: 13, scope: !3132)
!3154 = !DILocation(line: 1366, column: 9, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3132, file: !2, line: 1366, column: 9)
!3156 = !DILocation(line: 1366, column: 17, scope: !3155)
!3157 = !DILocation(line: 1366, column: 9, scope: !3132)
!3158 = !DILocation(line: 1367, column: 10, scope: !3155)
!3159 = !DILocation(line: 1367, column: 2, scope: !3155)
!3160 = !DILocation(line: 1369, column: 17, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3132, file: !2, line: 1369, column: 5)
!3162 = !DILocation(line: 1369, column: 31, scope: !3161)
!3163 = !DILocation(line: 1369, column: 29, scope: !3161)
!3164 = !DILocation(line: 1369, column: 10, scope: !3161)
!3165 = !DILocation(line: 1369, column: 40, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 1369, column: 5)
!3167 = !DILocation(line: 0, scope: !3166)
!3168 = !DILocation(line: 1369, column: 5, scope: !3161)
!3169 = !DILocation(line: 1370, column: 11, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3166, file: !2, line: 1369, column: 77)
!3171 = !DILocation(line: 1370, column: 9, scope: !3170)
!3172 = !DILocation(line: 1371, column: 2, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !2, line: 1371, column: 2)
!3174 = !DILocation(line: 1371, column: 2, scope: !3170)
!3175 = !DILocation(line: 1372, column: 12, scope: !3170)
!3176 = !DILocation(line: 1372, column: 9, scope: !3170)
!3177 = !DILocation(line: 1373, column: 5, scope: !3170)
!3178 = !DILocation(line: 1369, column: 64, scope: !3166)
!3179 = !DILocation(line: 1369, column: 62, scope: !3166)
!3180 = !DILocation(line: 1369, column: 5, scope: !3166)
!3181 = distinct !{!3181, !3168, !3182, !607}
!3182 = !DILocation(line: 1373, column: 5, scope: !3161)
!3183 = !DILocation(line: 1375, column: 25, scope: !3132)
!3184 = !DILocation(line: 1375, column: 14, scope: !3132)
!3185 = !DILocation(line: 1375, column: 12, scope: !3132)
!3186 = !DILocation(line: 1377, column: 17, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3132, file: !2, line: 1377, column: 5)
!3188 = !DILocation(line: 1377, column: 31, scope: !3187)
!3189 = !DILocation(line: 1377, column: 29, scope: !3187)
!3190 = !DILocation(line: 1377, column: 10, scope: !3187)
!3191 = !DILocation(line: 1377, column: 40, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3187, file: !2, line: 1377, column: 5)
!3193 = !DILocation(line: 0, scope: !3192)
!3194 = !DILocation(line: 1377, column: 5, scope: !3187)
!3195 = !DILocation(line: 1378, column: 11, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !2, line: 1377, column: 77)
!3197 = !DILocation(line: 1378, column: 9, scope: !3196)
!3198 = !DILocation(line: 1379, column: 9, scope: !3196)
!3199 = !DILocation(line: 1379, column: 7, scope: !3196)
!3200 = !DILocation(line: 1380, column: 9, scope: !3196)
!3201 = !DILocation(line: 1380, column: 18, scope: !3196)
!3202 = !DILocation(line: 1380, column: 16, scope: !3196)
!3203 = !DILocation(line: 1380, column: 26, scope: !3196)
!3204 = !DILocation(line: 1380, column: 42, scope: !3196)
!3205 = !DILocation(line: 1380, column: 2, scope: !3196)
!3206 = !DILocation(line: 1381, column: 12, scope: !3196)
!3207 = !DILocation(line: 1381, column: 9, scope: !3196)
!3208 = !DILocation(line: 1382, column: 5, scope: !3196)
!3209 = !DILocation(line: 1377, column: 64, scope: !3192)
!3210 = !DILocation(line: 1377, column: 62, scope: !3192)
!3211 = !DILocation(line: 1377, column: 5, scope: !3192)
!3212 = distinct !{!3212, !3194, !3213, !607}
!3213 = !DILocation(line: 1382, column: 5, scope: !3187)
!3214 = !DILocation(line: 1383, column: 5, scope: !3132)
!3215 = !DILocation(line: 1383, column: 12, scope: !3132)
!3216 = !DILocation(line: 1383, column: 20, scope: !3132)
!3217 = !DILocation(line: 1384, column: 14, scope: !3132)
!3218 = !DILocation(line: 1384, column: 12, scope: !3132)
!3219 = !DILocation(line: 1386, column: 13, scope: !3132)
!3220 = !DILocation(line: 1386, column: 5, scope: !3132)
!3221 = !DILocation(line: 1387, column: 1, scope: !3132)
!3222 = !DISubprogram(name: "LispNewString", scope: !67, file: !67, line: 708, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!129, !239, !126}
!3225 = !DISubprogram(name: "__ctype_tolower_loc", scope: !110, file: !110, line: 81, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3226 = distinct !DISubprogram(name: "tolower", scope: !110, file: !110, line: 207, type: !1711, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !3227)
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "__c", arg: 1, scope: !3226, file: !110, line: 207, type: !173)
!3229 = !DILocation(line: 207, column: 1, scope: !3226)
!3230 = !DILocation(line: 209, column: 10, scope: !3226)
!3231 = !DILocation(line: 209, column: 14, scope: !3226)
!3232 = !DILocation(line: 209, column: 22, scope: !3226)
!3233 = !DILocation(line: 209, column: 25, scope: !3226)
!3234 = !DILocation(line: 209, column: 29, scope: !3226)
!3235 = !DILocation(line: 209, column: 39, scope: !3226)
!3236 = !DILocation(line: 209, column: 38, scope: !3226)
!3237 = !DILocation(line: 209, column: 63, scope: !3226)
!3238 = !DILocation(line: 209, column: 37, scope: !3226)
!3239 = !DILocation(line: 209, column: 70, scope: !3226)
!3240 = !DILocation(line: 209, column: 3, scope: !3226)
!3241 = !DISubprogram(name: "LispGetStringArgs", scope: !1085, file: !1085, line: 85, type: !3242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !228, !484, !484, !1696, !1696, !1696, !1696}
!3244 = !DISubprogram(name: "memcmp", scope: !1728, file: !1728, line: 64, type: !3245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!173, !403, !403, !405}
