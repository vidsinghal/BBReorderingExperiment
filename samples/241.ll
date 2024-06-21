; ModuleID = 'samples/241.bc'
source_filename = "/local-ssd/vtk-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7-build/aidengro/spack-stage-vtk-9.0.3-tde7pvxyfxkjb2rs7jnkeqne3vxa45o7/spack-src/Wrapping/Tools/vtkParseExtras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtk_type_struct = type { i64, ptr, i32 }
%struct._ValueInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct._FunctionInfo = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], [20 x ptr], [20 x i32], i32, ptr, i32, i32, i32, i32, i32 }
%struct._TemplateInfo = type { i32, ptr }
%struct._ClassInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"Bad template args %*.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vtkParse_BasicTypeFromString.vtktypes = internal global [3 x %struct.vtk_type_struct] [%struct.vtk_type_struct { i64 12, ptr @.str.2, i32 33 }, %struct.vtk_type_struct { i64 16, ptr @.str.3, i32 34 }, %struct.vtk_type_struct zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"vtkStdString\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"vtkUnicodeString\00", align 1
@vtkParse_BasicTypeFromString.stdtypes = internal global [6 x %struct.vtk_type_struct] [%struct.vtk_type_struct { i64 6, ptr @.str.4, i32 31 }, %struct.vtk_type_struct { i64 7, ptr @.str.5, i32 15 }, %struct.vtk_type_struct { i64 7, ptr @.str.6, i32 35 }, %struct.vtk_type_struct { i64 7, ptr @.str.7, i32 36 }, %struct.vtk_type_struct { i64 6, ptr @.str.8, i32 33 }, %struct.vtk_type_struct zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ssize_t\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ostream\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"istream\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"__int64\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"vtk\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"std::\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"Qt::\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"unsigned __int64\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"*const \00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"template<\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"virtual \00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"explicit \00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c" final\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.48 = private unnamed_addr constant [65 x i8] c"vtkParse_InstantiateClassTemplate: this class is not templated.\0A\00", align 1
@.str.49 = private unnamed_addr constant [60 x i8] c"vtkParse_InstantiateClassTemplate: too many template args.\0A\00", align 1
@.str.50 = private unnamed_addr constant [59 x i8] c"vtkParse_InstantiateClassTemplate: too few template args.\0A\00", align 1
@vtkParse_GetTemplateMacroTypes.types = internal global [14 x ptr] [ptr @.str.22, ptr @.str.17, ptr @.str.32, ptr @.str.21, ptr @.str.33, ptr @.str.15, ptr @.str.34, ptr @.str.18, ptr @.str.35, ptr @.str.20, ptr @.str.36, ptr @.str.23, ptr @.str.24, ptr null], align 16
@vtkParse_GetArrayTypes.types = internal global [17 x ptr] [ptr @.str.22, ptr @.str.17, ptr @.str.32, ptr @.str.21, ptr @.str.33, ptr @.str.15, ptr @.str.34, ptr @.str.18, ptr @.str.35, ptr @.str.20, ptr @.str.36, ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.3, ptr @.str.51, ptr null], align 16
@.str.51 = private unnamed_addr constant [11 x i8] c"vtkVariant\00", align 1

; Function Attrs: nounwind uwtable
define i64 @vtkParse_IdentifierLength(ptr noundef %text) #0 {
entry:
  %text.addr = alloca ptr, align 8
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call = call i64 @vtkParse_SkipId(ptr noundef %0)
  ret i64 %call
}

declare i64 @vtkParse_SkipId(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i64 @vtkParse_UnscopedNameLength(ptr noundef %text) #0 {
entry:
  %retval = alloca i64, align 8
  %text.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  store i64 0, ptr %i, align 8, !tbaa !8
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call = call i64 @vtkParse_SkipId(ptr noundef %0)
  %1 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %1, %call
  store i64 %add, ptr %i, align 8, !tbaa !8
  %2 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %3 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %3
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %6 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %6
  %call3 = call i64 @vtkparse_bracket_len(ptr noundef %arrayidx2)
  %7 = load i64, ptr %i, align 8, !tbaa !8
  %add4 = add i64 %7, %call3
  store i64 %add4, ptr %i, align 8, !tbaa !8
  %8 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %9 = load i64, ptr %i, align 8, !tbaa !8
  %sub = sub i64 %9, 1
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %sub
  %10 = load i8, ptr %arrayidx5, align 1, !tbaa !10
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp ne i32 %conv6, 62
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %11 = load ptr, ptr @stderr, align 8, !tbaa !4
  %12 = load i64, ptr %i, align 8, !tbaa !8
  %conv10 = trunc i64 %12 to i32
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %conv11 = trunc i64 %13 to i32
  %14 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str, i32 noundef %conv10, i32 noundef %conv11, ptr noundef %14)
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %15 = load i64, ptr %i, align 8, !tbaa !8
  store i64 %15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  %16 = load i64, ptr %retval, align 8
  ret i64 %16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i64 @vtkparse_bracket_len(ptr noundef %text) #0 {
entry:
  %retval = alloca i64, align 8
  %text.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %bc = alloca i8, align 1
  %tc = alloca i8, align 1
  %semi = alloca i8, align 1
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  store i64 0, ptr %i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #6
  store i64 1, ptr %j, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %bc) #6
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !10
  store i8 %1, ptr %bc, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %tc) #6
  store i8 0, ptr %tc, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %semi) #6
  store i8 59, ptr %semi, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #6
  %2 = load i8, ptr %bc, align 1, !tbaa !10
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 41, ptr %tc, align 1, !tbaa !10
  br label %if.end19

if.else:                                          ; preds = %entry
  %3 = load i8, ptr %bc, align 1, !tbaa !10
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 91
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i8 93, ptr %tc, align 1, !tbaa !10
  br label %if.end18

if.else6:                                         ; preds = %if.else
  %4 = load i8, ptr %bc, align 1, !tbaa !10
  %conv7 = sext i8 %4 to i32
  %cmp8 = icmp eq i32 %conv7, 123
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else6
  store i8 125, ptr %tc, align 1, !tbaa !10
  store i8 0, ptr %semi, align 1, !tbaa !10
  br label %if.end17

if.else11:                                        ; preds = %if.else6
  %5 = load i8, ptr %bc, align 1, !tbaa !10
  %conv12 = sext i8 %5 to i32
  %cmp13 = icmp eq i32 %conv12, 60
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else11
  store i8 62, ptr %tc, align 1, !tbaa !10
  br label %if.end

if.else16:                                        ; preds = %if.else11
  store i64 0, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then15
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then10
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end19
  %6 = load i64, ptr %j, align 8, !tbaa !8
  %7 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %7, %6
  store i64 %add, ptr %i, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  %8 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %9 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx20 = getelementptr inbounds i8, ptr %8, i64 %9
  %10 = load i8, ptr %arrayidx20, align 1, !tbaa !10
  store i8 %10, ptr %c, align 1, !tbaa !10
  %11 = load i8, ptr %c, align 1, !tbaa !10
  %call = call i32 @vtkParse_CharType(i8 noundef signext %11, i32 noundef 32)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then21, label %if.else24

if.then21:                                        ; preds = %do.body
  %12 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx22 = getelementptr inbounds i8, ptr %12, i64 %13
  %call23 = call i64 @vtkParse_SkipQuotes(ptr noundef %arrayidx22)
  store i64 %call23, ptr %j, align 8, !tbaa !8
  br label %if.end44

if.else24:                                        ; preds = %do.body
  %14 = load i8, ptr %c, align 1, !tbaa !10
  %conv25 = sext i8 %14 to i32
  %15 = load i8, ptr %bc, align 1, !tbaa !10
  %conv26 = sext i8 %15 to i32
  %cmp27 = icmp eq i32 %conv25, %conv26
  br i1 %cmp27, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else24
  %16 = load i8, ptr %c, align 1, !tbaa !10
  %conv29 = sext i8 %16 to i32
  %cmp30 = icmp eq i32 %conv29, 40
  br i1 %cmp30, label %if.then40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %17 = load i8, ptr %c, align 1, !tbaa !10
  %conv33 = sext i8 %17 to i32
  %cmp34 = icmp eq i32 %conv33, 91
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %18 = load i8, ptr %c, align 1, !tbaa !10
  %conv37 = sext i8 %18 to i32
  %cmp38 = icmp eq i32 %conv37, 123
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false32, %lor.lhs.false, %if.else24
  %19 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %20 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx41 = getelementptr inbounds i8, ptr %19, i64 %20
  %call42 = call i64 @vtkparse_bracket_len(ptr noundef %arrayidx41)
  store i64 %call42, ptr %j, align 8, !tbaa !8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %lor.lhs.false36
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then21
  br label %do.cond

do.cond:                                          ; preds = %if.end44
  %21 = load i8, ptr %c, align 1, !tbaa !10
  %conv45 = sext i8 %21 to i32
  %22 = load i8, ptr %tc, align 1, !tbaa !10
  %conv46 = sext i8 %22 to i32
  %cmp47 = icmp ne i32 %conv45, %conv46
  br i1 %cmp47, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %23 = load i8, ptr %c, align 1, !tbaa !10
  %conv49 = sext i8 %23 to i32
  %cmp50 = icmp ne i32 %conv49, 41
  br i1 %cmp50, label %land.lhs.true52, label %land.end

land.lhs.true52:                                  ; preds = %land.lhs.true
  %24 = load i8, ptr %c, align 1, !tbaa !10
  %conv53 = sext i8 %24 to i32
  %cmp54 = icmp ne i32 %conv53, 93
  br i1 %cmp54, label %land.lhs.true56, label %land.end

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %25 = load i8, ptr %c, align 1, !tbaa !10
  %conv57 = sext i8 %25 to i32
  %cmp58 = icmp ne i32 %conv57, 125
  br i1 %cmp58, label %land.lhs.true60, label %land.end

land.lhs.true60:                                  ; preds = %land.lhs.true56
  %26 = load i8, ptr %c, align 1, !tbaa !10
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp ne i32 %conv61, 0
  br i1 %cmp62, label %land.lhs.true64, label %land.end

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %27 = load i8, ptr %c, align 1, !tbaa !10
  %conv65 = sext i8 %27 to i32
  %cmp66 = icmp ne i32 %conv65, 10
  br i1 %cmp66, label %land.lhs.true68, label %land.end

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %28 = load i8, ptr %c, align 1, !tbaa !10
  %conv69 = sext i8 %28 to i32
  %29 = load i8, ptr %semi, align 1, !tbaa !10
  %conv70 = sext i8 %29 to i32
  %cmp71 = icmp ne i32 %conv69, %conv70
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true68
  %30 = load i64, ptr %j, align 8, !tbaa !8
  %cmp73 = icmp ne i64 %30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true68, %land.lhs.true64, %land.lhs.true60, %land.lhs.true56, %land.lhs.true52, %land.lhs.true, %do.cond
  %31 = phi i1 [ false, %land.lhs.true68 ], [ false, %land.lhs.true64 ], [ false, %land.lhs.true60 ], [ false, %land.lhs.true56 ], [ false, %land.lhs.true52 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp73, %land.rhs ]
  br i1 %31, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %land.end
  %32 = load i8, ptr %c, align 1, !tbaa !10
  %conv75 = sext i8 %32 to i32
  %33 = load i8, ptr %tc, align 1, !tbaa !10
  %conv76 = sext i8 %33 to i32
  %cmp77 = icmp eq i32 %conv75, %conv76
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.end
  %34 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %34, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %do.end
  %35 = load i64, ptr %i, align 8, !tbaa !8
  store i64 %35, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.else16
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %semi) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %tc) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %bc) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  %36 = load i64, ptr %retval, align 8
  ret i64 %36
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i64 @vtkParse_NameLength(ptr noundef %text) #0 {
entry:
  %text.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %1 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %1
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %4 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %4, 1
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %add
  %5 = load i8, ptr %arrayidx2, align 1, !tbaa !10
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 58
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, ptr %i, align 8, !tbaa !8
  %add6 = add i64 %6, 2
  store i64 %add6, ptr %i, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  %7 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %8 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx7 = getelementptr inbounds i8, ptr %7, i64 %8
  %call = call i64 @vtkParse_UnscopedNameLength(ptr noundef %arrayidx7)
  %9 = load i64, ptr %i, align 8, !tbaa !8
  %add8 = add i64 %9, %call
  store i64 %add8, ptr %i, align 8, !tbaa !8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %11 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i8, ptr %arrayidx9, align 1, !tbaa !10
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 58
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %13 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %14 = load i64, ptr %i, align 8, !tbaa !8
  %add13 = add i64 %14, 1
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 %add13
  %15 = load i8, ptr %arrayidx14, align 1, !tbaa !10
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv15, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %cmp16, %land.rhs ]
  br i1 %16, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %land.end
  %17 = load i64, ptr %i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define void @vtkParse_ExpandValues(ptr noundef %valinfo, ptr noundef %cache, i32 noundef %n, ptr noundef %name, ptr noundef %val) #0 {
entry:
  %valinfo.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %dim = alloca i32, align 4
  %count = alloca i32, align 4
  %cp = alloca ptr, align 8
  store ptr %valinfo, ptr %valinfo.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !14
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %dim) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #6
  %0 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Value = getelementptr inbounds %struct._ValueInfo, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %Value, align 8, !tbaa !16
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Value1 = getelementptr inbounds %struct._ValueInfo, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %Value1, align 8, !tbaa !16
  %5 = load i32, ptr %n.addr, align 4, !tbaa !14
  %6 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call = call ptr @vtkparse_string_replace(ptr noundef %2, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Value2 = getelementptr inbounds %struct._ValueInfo, ptr %8, i32 0, i32 4
  store ptr %call, ptr %Value2, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %NumberOfDimensions = getelementptr inbounds %struct._ValueInfo, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %NumberOfDimensions, align 8, !tbaa !18
  store i32 %10, ptr %m, align 4, !tbaa !14
  %11 = load i32, ptr %m, align 4, !tbaa !14
  %tobool3 = icmp ne i32 %11, 0
  br i1 %tobool3, label %if.then4, label %if.end62

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %count, align 4, !tbaa !14
  store i32 0, ptr %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %12 = load i32, ptr %j, align 4, !tbaa !14
  %13 = load i32, ptr %m, align 4, !tbaa !14
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Dimensions = getelementptr inbounds %struct._ValueInfo, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %Dimensions, align 8, !tbaa !19
  %16 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %17, ptr %cp, align 8, !tbaa !4
  %18 = load ptr, ptr %cp, align 8, !tbaa !4
  %tobool5 = icmp ne ptr %18, null
  br i1 %tobool5, label %if.then6, label %if.end58

if.then6:                                         ; preds = %for.body
  %19 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %cp, align 8, !tbaa !4
  %21 = load i32, ptr %n.addr, align 4, !tbaa !14
  %22 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call7 = call ptr @vtkparse_string_replace(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22, ptr noundef %23)
  store ptr %call7, ptr %cp, align 8, !tbaa !4
  %24 = load ptr, ptr %cp, align 8, !tbaa !4
  %25 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Dimensions8 = getelementptr inbounds %struct._ValueInfo, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %Dimensions8, align 8, !tbaa !19
  %27 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom9 = sext i32 %27 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %26, i64 %idxprom9
  store ptr %24, ptr %arrayidx10, align 8, !tbaa !4
  %28 = load ptr, ptr %cp, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx11, align 1, !tbaa !10
  %conv = sext i8 %29 to i32
  %cmp12 = icmp eq i32 %conv, 48
  br i1 %cmp12, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.then6
  %30 = load ptr, ptr %cp, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx14, align 1, !tbaa !10
  %conv15 = sext i8 %31 to i32
  %cmp16 = icmp eq i32 %conv15, 120
  br i1 %cmp16, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %32 = load ptr, ptr %cp, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx18, align 1, !tbaa !10
  %conv19 = sext i8 %33 to i32
  %cmp20 = icmp eq i32 %conv19, 88
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %34 = load ptr, ptr %cp, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %34, i64 2
  store ptr %add.ptr, ptr %cp, align 8, !tbaa !4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %lor.lhs.false, %if.then6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end23
  %35 = load ptr, ptr %cp, align 8, !tbaa !4
  %36 = load i8, ptr %35, align 1, !tbaa !10
  %conv24 = sext i8 %36 to i32
  %cmp25 = icmp sge i32 %conv24, 48
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %37 = load ptr, ptr %cp, align 8, !tbaa !4
  %38 = load i8, ptr %37, align 1, !tbaa !10
  %conv27 = sext i8 %38 to i32
  %cmp28 = icmp sle i32 %conv27, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %cmp28, %land.rhs ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %40 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %40, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %land.end
  br label %while.cond30

while.cond30:                                     ; preds = %while.body45, %while.end
  %41 = load ptr, ptr %cp, align 8, !tbaa !4
  %42 = load i8, ptr %41, align 1, !tbaa !10
  %conv31 = sext i8 %42 to i32
  %cmp32 = icmp eq i32 %conv31, 117
  br i1 %cmp32, label %lor.end, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %while.cond30
  %43 = load ptr, ptr %cp, align 8, !tbaa !4
  %44 = load i8, ptr %43, align 1, !tbaa !10
  %conv35 = sext i8 %44 to i32
  %cmp36 = icmp eq i32 %conv35, 108
  br i1 %cmp36, label %lor.end, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %45 = load ptr, ptr %cp, align 8, !tbaa !4
  %46 = load i8, ptr %45, align 1, !tbaa !10
  %conv39 = sext i8 %46 to i32
  %cmp40 = icmp eq i32 %conv39, 85
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false38
  %47 = load ptr, ptr %cp, align 8, !tbaa !4
  %48 = load i8, ptr %47, align 1, !tbaa !10
  %conv42 = sext i8 %48 to i32
  %cmp43 = icmp eq i32 %conv42, 76
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false38, %lor.lhs.false34, %while.cond30
  %49 = phi i1 [ true, %lor.lhs.false38 ], [ true, %lor.lhs.false34 ], [ true, %while.cond30 ], [ %cmp43, %lor.rhs ]
  br i1 %49, label %while.body45, label %while.end47

while.body45:                                     ; preds = %lor.end
  %50 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr46 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr46, ptr %cp, align 8, !tbaa !4
  br label %while.cond30, !llvm.loop !21

while.end47:                                      ; preds = %lor.end
  store i32 0, ptr %dim, align 4, !tbaa !14
  %51 = load ptr, ptr %cp, align 8, !tbaa !4
  %52 = load i8, ptr %51, align 1, !tbaa !10
  %conv48 = sext i8 %52 to i32
  %cmp49 = icmp eq i32 %conv48, 0
  br i1 %cmp49, label %if.then51, label %if.end57

if.then51:                                        ; preds = %while.end47
  %53 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Dimensions52 = getelementptr inbounds %struct._ValueInfo, ptr %53, i32 0, i32 10
  %54 = load ptr, ptr %Dimensions52, align 8, !tbaa !19
  %55 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom53 = sext i32 %55 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %54, i64 %idxprom53
  %56 = load ptr, ptr %arrayidx54, align 8, !tbaa !4
  %call55 = call i64 @strtol(ptr noundef %56, ptr noundef null, i32 noundef 0) #6
  %conv56 = trunc i64 %call55 to i32
  store i32 %conv56, ptr %dim, align 4, !tbaa !14
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %while.end47
  %57 = load i32, ptr %dim, align 4, !tbaa !14
  %58 = load i32, ptr %count, align 4, !tbaa !14
  %mul = mul nsw i32 %58, %57
  store i32 %mul, ptr %count, align 4, !tbaa !14
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end58
  %59 = load i32, ptr %j, align 4, !tbaa !14
  %inc = add nsw i32 %59, 1
  store i32 %inc, ptr %j, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %60 = load i32, ptr %count, align 4, !tbaa !14
  %tobool59 = icmp ne i32 %60, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.end
  %61 = load i32, ptr %count, align 4, !tbaa !14
  %62 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Count = getelementptr inbounds %struct._ValueInfo, ptr %62, i32 0, i32 7
  store i32 %61, ptr %Count, align 8, !tbaa !23
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %for.end
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %dim) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @vtkparse_string_replace(ptr noundef %cache, ptr noundef %str1, i32 noundef %n, ptr noundef %name, ptr noundef %val) #0 {
entry:
  %retval = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %str1.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %result_store = alloca [1024 x i8], align 16
  %resultMaxLen = alloca i64, align 8
  %result = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %k = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca i64, align 8
  %m = alloca i64, align 8
  %lastPos = alloca i64, align 8
  %nameBegin = alloca i64, align 8
  %nameEnd = alloca i64, align 8
  %replaced = alloca i32, align 4
  %any_replaced = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store ptr %str1, ptr %str1.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !14
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #6
  %0 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  store ptr %0, ptr %cp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %result_store) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %resultMaxLen) #6
  store i64 1024, ptr %resultMaxLen, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %lastPos) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nameBegin) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nameEnd) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %replaced) #6
  store i32 0, ptr %replaced, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %any_replaced) #6
  store i32 0, ptr %any_replaced, align 4, !tbaa !14
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %result_store, i64 0, i64 0
  store ptr %arraydecay, ptr %result, align 8, !tbaa !4
  %1 = load i32, ptr %n.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  store ptr %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8, !tbaa !8
  store i64 0, ptr %j, align 8, !tbaa !8
  %3 = load ptr, ptr %result, align 8, !tbaa !4
  %4 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
  store i8 0, ptr %arrayidx, align 1, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end110, %if.end
  %5 = load ptr, ptr %cp, align 8, !tbaa !4
  %6 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 %6
  %7 = load i8, ptr %arrayidx1, align 1, !tbaa !10
  %conv = sext i8 %7 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %while.body, label %while.end112

while.body:                                       ; preds = %while.cond
  %8 = load i64, ptr %i, align 8, !tbaa !8
  store i64 %8, ptr %lastPos, align 8, !tbaa !8
  br label %while.cond4

while.cond4:                                      ; preds = %if.end26, %while.body
  %9 = load ptr, ptr %cp, align 8, !tbaa !4
  %10 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 %10
  %11 = load i8, ptr %arrayidx5, align 1, !tbaa !10
  %call = call i32 @vtkParse_CharType(i8 noundef signext %11, i32 noundef 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond4
  %12 = load ptr, ptr %cp, align 8, !tbaa !4
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds i8, ptr %12, i64 %13
  %14 = load i8, ptr %arrayidx6, align 1, !tbaa !10
  %conv7 = sext i8 %14 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond4
  %15 = phi i1 [ false, %while.cond4 ], [ %cmp8, %land.rhs ]
  br i1 %15, label %while.body10, label %while.end

while.body10:                                     ; preds = %land.end
  %16 = load ptr, ptr %cp, align 8, !tbaa !4
  %17 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx11 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx11, align 1, !tbaa !10
  %call12 = call i32 @vtkParse_CharType(i8 noundef signext %18, i32 noundef 32)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body10
  %19 = load ptr, ptr %cp, align 8, !tbaa !4
  %20 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx15 = getelementptr inbounds i8, ptr %19, i64 %20
  %call16 = call i64 @vtkParse_SkipQuotes(ptr noundef %arrayidx15)
  %21 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %21, %call16
  store i64 %add, ptr %i, align 8, !tbaa !8
  br label %if.end26

if.else:                                          ; preds = %while.body10
  %22 = load ptr, ptr %cp, align 8, !tbaa !4
  %23 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx17 = getelementptr inbounds i8, ptr %22, i64 %23
  %24 = load i8, ptr %arrayidx17, align 1, !tbaa !10
  %call18 = call i32 @vtkParse_CharType(i8 noundef signext %24, i32 noundef 32)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.else
  %25 = load ptr, ptr %cp, align 8, !tbaa !4
  %26 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx21 = getelementptr inbounds i8, ptr %25, i64 %26
  %call22 = call i64 @vtkParse_SkipNumber(ptr noundef %arrayidx21)
  %27 = load i64, ptr %i, align 8, !tbaa !8
  %add23 = add i64 %27, %call22
  store i64 %add23, ptr %i, align 8, !tbaa !8
  br label %if.end25

if.else24:                                        ; preds = %if.else
  %28 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %28, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then14
  br label %while.cond4, !llvm.loop !24

while.end:                                        ; preds = %land.end
  %29 = load i64, ptr %i, align 8, !tbaa !8
  store i64 %29, ptr %nameBegin, align 8, !tbaa !8
  %30 = load ptr, ptr %cp, align 8, !tbaa !4
  %31 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx27 = getelementptr inbounds i8, ptr %30, i64 %31
  %call28 = call i64 @vtkParse_SkipId(ptr noundef %arrayidx27)
  %32 = load i64, ptr %i, align 8, !tbaa !8
  %add29 = add i64 %32, %call28
  store i64 %add29, ptr %i, align 8, !tbaa !8
  %33 = load i64, ptr %i, align 8, !tbaa !8
  store i64 %33, ptr %nameEnd, align 8, !tbaa !8
  store i32 0, ptr %replaced, align 4, !tbaa !14
  %34 = load i64, ptr %nameEnd, align 8, !tbaa !8
  %35 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %sub = sub i64 %34, %35
  store i64 %sub, ptr %m, align 8, !tbaa !8
  store i32 0, ptr %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %36 = load i32, ptr %k, align 4, !tbaa !14
  %37 = load i32, ptr %n.addr, align 4, !tbaa !14
  %cmp30 = icmp slt i32 %36, %37
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %39 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %38, i64 %idxprom
  %40 = load ptr, ptr %arrayidx32, align 8, !tbaa !4
  %call33 = call i64 @strlen(ptr noundef %40) #7
  store i64 %call33, ptr %l, align 8, !tbaa !8
  %41 = load i64, ptr %l, align 8, !tbaa !8
  %cmp34 = icmp ugt i64 %41, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %for.body
  %42 = load i64, ptr %l, align 8, !tbaa !8
  %43 = load i64, ptr %m, align 8, !tbaa !8
  %cmp36 = icmp eq i64 %42, %43
  br i1 %cmp36, label %land.lhs.true38, label %if.end49

land.lhs.true38:                                  ; preds = %land.lhs.true
  %44 = load ptr, ptr %cp, align 8, !tbaa !4
  %45 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %arrayidx39 = getelementptr inbounds i8, ptr %44, i64 %45
  %46 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %47 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom40 = sext i32 %47 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %46, i64 %idxprom40
  %48 = load ptr, ptr %arrayidx41, align 8, !tbaa !4
  %49 = load i64, ptr %l, align 8, !tbaa !8
  %call42 = call i32 @strncmp(ptr noundef %arrayidx39, ptr noundef %48, i64 noundef %49) #7
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %land.lhs.true38
  %50 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %51 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %50, i64 %idxprom46
  %52 = load ptr, ptr %arrayidx47, align 8, !tbaa !4
  %call48 = call i64 @strlen(ptr noundef %52) #7
  store i64 %call48, ptr %m, align 8, !tbaa !8
  store i32 1, ptr %replaced, align 4, !tbaa !14
  store i32 1, ptr %any_replaced, align 4, !tbaa !14
  br label %for.end

if.end49:                                         ; preds = %land.lhs.true38, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end49
  %53 = load i32, ptr %k, align 4, !tbaa !14
  %inc50 = add nsw i32 %53, 1
  store i32 %inc50, ptr %k, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %if.then45, %for.cond
  %54 = load i64, ptr %j, align 8, !tbaa !8
  %55 = load i64, ptr %m, align 8, !tbaa !8
  %add51 = add i64 %54, %55
  %56 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %57 = load i64, ptr %lastPos, align 8, !tbaa !8
  %sub52 = sub i64 %56, %57
  %add53 = add i64 %add51, %sub52
  %add54 = add i64 %add53, 1
  %58 = load i64, ptr %resultMaxLen, align 8, !tbaa !8
  %cmp55 = icmp uge i64 %add54, %58
  br i1 %cmp55, label %if.then57, label %if.end65

if.then57:                                        ; preds = %for.end
  %59 = load i64, ptr %resultMaxLen, align 8, !tbaa !8
  %mul = mul i64 %59, 2
  store i64 %mul, ptr %resultMaxLen, align 8, !tbaa !8
  %60 = load i64, ptr %resultMaxLen, align 8, !tbaa !8
  %call58 = call noalias ptr @malloc(i64 noundef %60) #8
  store ptr %call58, ptr %tmp, align 8, !tbaa !4
  %61 = load ptr, ptr %tmp, align 8, !tbaa !4
  %62 = load ptr, ptr %result, align 8, !tbaa !4
  %call59 = call ptr @strcpy(ptr noundef %61, ptr noundef %62) #6
  %63 = load ptr, ptr %result, align 8, !tbaa !4
  %arraydecay60 = getelementptr inbounds [1024 x i8], ptr %result_store, i64 0, i64 0
  %cmp61 = icmp ne ptr %63, %arraydecay60
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then57
  %64 = load ptr, ptr %result, align 8, !tbaa !4
  call void @free(ptr noundef %64) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.then57
  %65 = load ptr, ptr %tmp, align 8, !tbaa !4
  store ptr %65, ptr %result, align 8, !tbaa !4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %for.end
  %66 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %67 = load i64, ptr %lastPos, align 8, !tbaa !8
  %cmp66 = icmp ugt i64 %66, %67
  br i1 %cmp66, label %if.then68, label %if.end75

if.then68:                                        ; preds = %if.end65
  %68 = load ptr, ptr %result, align 8, !tbaa !4
  %69 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx69 = getelementptr inbounds i8, ptr %68, i64 %69
  %70 = load ptr, ptr %cp, align 8, !tbaa !4
  %71 = load i64, ptr %lastPos, align 8, !tbaa !8
  %arrayidx70 = getelementptr inbounds i8, ptr %70, i64 %71
  %72 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %73 = load i64, ptr %lastPos, align 8, !tbaa !8
  %sub71 = sub i64 %72, %73
  %call72 = call ptr @strncpy(ptr noundef %arrayidx69, ptr noundef %arrayidx70, i64 noundef %sub71) #6
  %74 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %75 = load i64, ptr %lastPos, align 8, !tbaa !8
  %sub73 = sub i64 %74, %75
  %76 = load i64, ptr %j, align 8, !tbaa !8
  %add74 = add i64 %76, %sub73
  store i64 %add74, ptr %j, align 8, !tbaa !8
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.end65
  %77 = load i32, ptr %replaced, align 4, !tbaa !14
  %tobool76 = icmp ne i32 %77, 0
  br i1 %tobool76, label %if.then77, label %if.else99

if.then77:                                        ; preds = %if.end75
  %78 = load ptr, ptr %result, align 8, !tbaa !4
  %79 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx78 = getelementptr inbounds i8, ptr %78, i64 %79
  %80 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %81 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom79 = sext i32 %81 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %80, i64 %idxprom79
  %82 = load ptr, ptr %arrayidx80, align 8, !tbaa !4
  %83 = load i64, ptr %m, align 8, !tbaa !8
  %call81 = call ptr @strncpy(ptr noundef %arrayidx78, ptr noundef %82, i64 noundef %83) #6
  %84 = load i64, ptr %m, align 8, !tbaa !8
  %85 = load i64, ptr %j, align 8, !tbaa !8
  %add82 = add i64 %85, %84
  store i64 %add82, ptr %j, align 8, !tbaa !8
  %86 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %87 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom83 = sext i32 %87 to i64
  %arrayidx84 = getelementptr inbounds ptr, ptr %86, i64 %idxprom83
  %88 = load ptr, ptr %arrayidx84, align 8, !tbaa !4
  %89 = load i64, ptr %m, align 8, !tbaa !8
  %sub85 = sub i64 %89, 1
  %arrayidx86 = getelementptr inbounds i8, ptr %88, i64 %sub85
  %90 = load i8, ptr %arrayidx86, align 1, !tbaa !10
  %conv87 = sext i8 %90 to i32
  %cmp88 = icmp eq i32 %conv87, 62
  br i1 %cmp88, label %land.lhs.true90, label %if.end98

land.lhs.true90:                                  ; preds = %if.then77
  %91 = load ptr, ptr %cp, align 8, !tbaa !4
  %92 = load i64, ptr %nameEnd, align 8, !tbaa !8
  %arrayidx91 = getelementptr inbounds i8, ptr %91, i64 %92
  %93 = load i8, ptr %arrayidx91, align 1, !tbaa !10
  %conv92 = sext i8 %93 to i32
  %cmp93 = icmp eq i32 %conv92, 62
  br i1 %cmp93, label %if.then95, label %if.end98

if.then95:                                        ; preds = %land.lhs.true90
  %94 = load ptr, ptr %result, align 8, !tbaa !4
  %95 = load i64, ptr %j, align 8, !tbaa !8
  %inc96 = add i64 %95, 1
  store i64 %inc96, ptr %j, align 8, !tbaa !8
  %arrayidx97 = getelementptr inbounds i8, ptr %94, i64 %95
  store i8 32, ptr %arrayidx97, align 1, !tbaa !10
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %land.lhs.true90, %if.then77
  br label %if.end110

if.else99:                                        ; preds = %if.end75
  %96 = load i64, ptr %nameEnd, align 8, !tbaa !8
  %97 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %cmp100 = icmp ugt i64 %96, %97
  br i1 %cmp100, label %if.then102, label %if.end109

if.then102:                                       ; preds = %if.else99
  %98 = load ptr, ptr %result, align 8, !tbaa !4
  %99 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx103 = getelementptr inbounds i8, ptr %98, i64 %99
  %100 = load ptr, ptr %cp, align 8, !tbaa !4
  %101 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %arrayidx104 = getelementptr inbounds i8, ptr %100, i64 %101
  %102 = load i64, ptr %nameEnd, align 8, !tbaa !8
  %103 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %sub105 = sub i64 %102, %103
  %call106 = call ptr @strncpy(ptr noundef %arrayidx103, ptr noundef %arrayidx104, i64 noundef %sub105) #6
  %104 = load i64, ptr %nameEnd, align 8, !tbaa !8
  %105 = load i64, ptr %nameBegin, align 8, !tbaa !8
  %sub107 = sub i64 %104, %105
  %106 = load i64, ptr %j, align 8, !tbaa !8
  %add108 = add i64 %106, %sub107
  store i64 %add108, ptr %j, align 8, !tbaa !8
  br label %if.end109

if.end109:                                        ; preds = %if.then102, %if.else99
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end98
  %107 = load ptr, ptr %result, align 8, !tbaa !4
  %108 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx111 = getelementptr inbounds i8, ptr %107, i64 %108
  store i8 0, ptr %arrayidx111, align 1, !tbaa !10
  br label %while.cond, !llvm.loop !26

while.end112:                                     ; preds = %while.cond
  %109 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %tobool113 = icmp ne ptr %109, null
  br i1 %tobool113, label %if.then114, label %if.else124

if.then114:                                       ; preds = %while.end112
  %110 = load i32, ptr %any_replaced, align 4, !tbaa !14
  %tobool115 = icmp ne i32 %110, 0
  br i1 %tobool115, label %if.then116, label %if.end123

if.then116:                                       ; preds = %if.then114
  %111 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %112 = load ptr, ptr %result, align 8, !tbaa !4
  %113 = load i64, ptr %j, align 8, !tbaa !8
  %call117 = call ptr @vtkParse_CacheString(ptr noundef %111, ptr noundef %112, i64 noundef %113)
  store ptr %call117, ptr %cp, align 8, !tbaa !4
  %114 = load ptr, ptr %result, align 8, !tbaa !4
  %arraydecay118 = getelementptr inbounds [1024 x i8], ptr %result_store, i64 0, i64 0
  %cmp119 = icmp ne ptr %114, %arraydecay118
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.then116
  %115 = load ptr, ptr %result, align 8, !tbaa !4
  call void @free(ptr noundef %115) #6
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.then116
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then114
  br label %if.end137

if.else124:                                       ; preds = %while.end112
  %116 = load i32, ptr %any_replaced, align 4, !tbaa !14
  %tobool125 = icmp ne i32 %116, 0
  br i1 %tobool125, label %if.then126, label %if.end136

if.then126:                                       ; preds = %if.else124
  %117 = load ptr, ptr %result, align 8, !tbaa !4
  %arraydecay127 = getelementptr inbounds [1024 x i8], ptr %result_store, i64 0, i64 0
  %cmp128 = icmp eq ptr %117, %arraydecay127
  br i1 %cmp128, label %if.then130, label %if.end135

if.then130:                                       ; preds = %if.then126
  %118 = load ptr, ptr %result, align 8, !tbaa !4
  %call131 = call i64 @strlen(ptr noundef %118) #7
  %add132 = add i64 %call131, 1
  %call133 = call noalias ptr @malloc(i64 noundef %add132) #8
  store ptr %call133, ptr %tmp, align 8, !tbaa !4
  %119 = load ptr, ptr %tmp, align 8, !tbaa !4
  %120 = load ptr, ptr %result, align 8, !tbaa !4
  %call134 = call ptr @strcpy(ptr noundef %119, ptr noundef %120) #6
  %121 = load ptr, ptr %tmp, align 8, !tbaa !4
  store ptr %121, ptr %result, align 8, !tbaa !4
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.then126
  %122 = load ptr, ptr %result, align 8, !tbaa !4
  store ptr %122, ptr %cp, align 8, !tbaa !4
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.else124
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end123
  %123 = load ptr, ptr %cp, align 8, !tbaa !4
  store ptr %123, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end137, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %any_replaced) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %replaced) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nameEnd) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nameBegin) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %lastPos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %resultMaxLen) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr %result_store) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #6
  %124 = load ptr, ptr %retval, align 8
  ret ptr %124
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define void @vtkParse_ExpandTypedef(ptr noundef %valinfo, ptr noundef %typedefinfo) #0 {
entry:
  %valinfo.addr = alloca ptr, align 8
  %typedefinfo.addr = alloca ptr, align 8
  %classname = alloca ptr, align 8
  %baseType = alloca i32, align 4
  %pointers = alloca i32, align 4
  %refbit = alloca i32, align 4
  %qualifiers = alloca i32, align 4
  %attributes = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %valinfo, ptr %valinfo.addr, align 8, !tbaa !4
  store ptr %typedefinfo, ptr %typedefinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %classname) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %baseType) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %pointers) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %refbit) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %qualifiers) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %attributes) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %Class = getelementptr inbounds %struct._ValueInfo, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %Class, align 8, !tbaa !27
  store ptr %1, ptr %classname, align 8, !tbaa !4
  %2 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %Type = getelementptr inbounds %struct._ValueInfo, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %Type, align 8, !tbaa !28
  %and = and i32 %3, 255
  store i32 %and, ptr %baseType, align 4, !tbaa !14
  %4 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %Type1 = getelementptr inbounds %struct._ValueInfo, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %Type1, align 8, !tbaa !28
  %and2 = and i32 %5, 65024
  store i32 %and2, ptr %pointers, align 4, !tbaa !14
  %6 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Type3 = getelementptr inbounds %struct._ValueInfo, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %Type3, align 8, !tbaa !28
  %and4 = and i32 %7, 256
  store i32 %and4, ptr %refbit, align 4, !tbaa !14
  %8 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %Type5 = getelementptr inbounds %struct._ValueInfo, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %Type5, align 8, !tbaa !28
  %and6 = and i32 %9, 65536
  store i32 %and6, ptr %qualifiers, align 4, !tbaa !14
  %10 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Type7 = getelementptr inbounds %struct._ValueInfo, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %Type7, align 8, !tbaa !28
  %and8 = and i32 %11, 117440512
  store i32 %and8, ptr %attributes, align 4, !tbaa !14
  %12 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Type9 = getelementptr inbounds %struct._ValueInfo, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %Type9, align 8, !tbaa !28
  %and10 = and i32 %13, 65536
  %cmp = icmp ne i32 %and10, 0
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %pointers, align 4, !tbaa !14
  %and11 = and i32 %14, 1536
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  %15 = load i32, ptr %pointers, align 4, !tbaa !14
  %and14 = and i32 %15, 1536
  %cmp15 = icmp ne i32 %and14, 1024
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then13
  %16 = load i32, ptr %pointers, align 4, !tbaa !14
  %and17 = and i32 %16, -1537
  store i32 %and17, ptr %pointers, align 4, !tbaa !14
  %17 = load i32, ptr %pointers, align 4, !tbaa !14
  %or = or i32 %17, 1536
  store i32 %or, ptr %pointers, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then13
  br label %if.end19

if.else:                                          ; preds = %if.then
  %18 = load i32, ptr %qualifiers, align 4, !tbaa !14
  %or18 = or i32 %18, 65536
  store i32 %or18, ptr %qualifiers, align 4, !tbaa !14
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %entry
  %19 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Type21 = getelementptr inbounds %struct._ValueInfo, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %Type21, align 8, !tbaa !28
  %and22 = and i32 %20, 65024
  store i32 %and22, ptr %tmp1, align 4, !tbaa !14
  store i32 0, ptr %tmp2, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end20
  %21 = load i32, ptr %tmp1, align 4, !tbaa !14
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, ptr %tmp2, align 4, !tbaa !14
  %shl = shl i32 %22, 2
  %23 = load i32, ptr %tmp1, align 4, !tbaa !14
  %and23 = and i32 %23, 1536
  %or24 = or i32 %shl, %and23
  store i32 %or24, ptr %tmp2, align 4, !tbaa !14
  %24 = load i32, ptr %tmp1, align 4, !tbaa !14
  %shr = lshr i32 %24, 2
  %and25 = and i32 %shr, 65024
  store i32 %and25, ptr %tmp1, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %25 = load i32, ptr %pointers, align 4, !tbaa !14
  %and26 = and i32 %25, 1536
  %cmp27 = icmp eq i32 %and26, 1024
  br i1 %cmp27, label %if.then28, label %if.else37

if.then28:                                        ; preds = %while.end
  %26 = load i32, ptr %tmp2, align 4, !tbaa !14
  %shr29 = lshr i32 %26, 2
  %and30 = and i32 %shr29, 65024
  store i32 %and30, ptr %tmp2, align 4, !tbaa !14
  br label %while.cond31

while.cond31:                                     ; preds = %while.body33, %if.then28
  %27 = load i32, ptr %tmp2, align 4, !tbaa !14
  %tobool32 = icmp ne i32 %27, 0
  br i1 %tobool32, label %while.body33, label %while.end36

while.body33:                                     ; preds = %while.cond31
  %28 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Dimensions = getelementptr inbounds %struct._ValueInfo, ptr %28, i32 0, i32 10
  %29 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %NumberOfDimensions = getelementptr inbounds %struct._ValueInfo, ptr %29, i32 0, i32 9
  call void @vtkParse_AddStringToArray(ptr noundef %Dimensions, ptr noundef %NumberOfDimensions, ptr noundef @.str.1)
  %30 = load i32, ptr %tmp2, align 4, !tbaa !14
  %shr34 = lshr i32 %30, 2
  %and35 = and i32 %shr34, 65024
  store i32 %and35, ptr %tmp2, align 4, !tbaa !14
  br label %while.cond31, !llvm.loop !30

while.end36:                                      ; preds = %while.cond31
  br label %if.end47

if.else37:                                        ; preds = %while.end
  br label %while.cond38

while.cond38:                                     ; preds = %while.body40, %if.else37
  %31 = load i32, ptr %tmp2, align 4, !tbaa !14
  %tobool39 = icmp ne i32 %31, 0
  br i1 %tobool39, label %while.body40, label %while.end46

while.body40:                                     ; preds = %while.cond38
  %32 = load i32, ptr %pointers, align 4, !tbaa !14
  %shl41 = shl i32 %32, 2
  %33 = load i32, ptr %tmp2, align 4, !tbaa !14
  %and42 = and i32 %33, 1536
  %or43 = or i32 %shl41, %and42
  store i32 %or43, ptr %pointers, align 4, !tbaa !14
  %34 = load i32, ptr %tmp2, align 4, !tbaa !14
  %shr44 = lshr i32 %34, 2
  %and45 = and i32 %shr44, 65024
  store i32 %and45, ptr %tmp2, align 4, !tbaa !14
  br label %while.cond38, !llvm.loop !31

while.end46:                                      ; preds = %while.cond38
  br label %if.end47

if.end47:                                         ; preds = %while.end46, %while.end36
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end47
  %35 = load i32, ptr %i, align 4, !tbaa !14
  %36 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %NumberOfDimensions48 = getelementptr inbounds %struct._ValueInfo, ptr %36, i32 0, i32 9
  %37 = load i32, ptr %NumberOfDimensions48, align 8, !tbaa !18
  %cmp49 = icmp slt i32 %35, %37
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Dimensions50 = getelementptr inbounds %struct._ValueInfo, ptr %38, i32 0, i32 10
  %39 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %NumberOfDimensions51 = getelementptr inbounds %struct._ValueInfo, ptr %39, i32 0, i32 9
  %40 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %Dimensions52 = getelementptr inbounds %struct._ValueInfo, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %Dimensions52, align 8, !tbaa !19
  %42 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %41, i64 %idxprom
  %43 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  call void @vtkParse_AddStringToArray(ptr noundef %Dimensions50, ptr noundef %NumberOfDimensions51, ptr noundef %43)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %45 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %NumberOfDimensions53 = getelementptr inbounds %struct._ValueInfo, ptr %45, i32 0, i32 9
  %46 = load i32, ptr %NumberOfDimensions53, align 8, !tbaa !18
  %cmp54 = icmp sgt i32 %46, 1
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %for.end
  %47 = load i32, ptr %pointers, align 4, !tbaa !14
  %and56 = and i32 %47, -1537
  %or57 = or i32 %and56, 1024
  store i32 %or57, ptr %pointers, align 4, !tbaa !14
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %for.end
  %48 = load i32, ptr %baseType, align 4, !tbaa !14
  %49 = load i32, ptr %pointers, align 4, !tbaa !14
  %or59 = or i32 %48, %49
  %50 = load i32, ptr %refbit, align 4, !tbaa !14
  %or60 = or i32 %or59, %50
  %51 = load i32, ptr %qualifiers, align 4, !tbaa !14
  %or61 = or i32 %or60, %51
  %52 = load i32, ptr %attributes, align 4, !tbaa !14
  %or62 = or i32 %or61, %52
  %53 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Type63 = getelementptr inbounds %struct._ValueInfo, ptr %53, i32 0, i32 5
  store i32 %or62, ptr %Type63, align 8, !tbaa !28
  %54 = load ptr, ptr %classname, align 8, !tbaa !4
  %55 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Class64 = getelementptr inbounds %struct._ValueInfo, ptr %55, i32 0, i32 6
  store ptr %54, ptr %Class64, align 8, !tbaa !27
  %56 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %Function = getelementptr inbounds %struct._ValueInfo, ptr %56, i32 0, i32 11
  %57 = load ptr, ptr %Function, align 8, !tbaa !33
  %58 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Function65 = getelementptr inbounds %struct._ValueInfo, ptr %58, i32 0, i32 11
  store ptr %57, ptr %Function65, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %attributes) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %qualifiers) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %refbit) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pointers) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %baseType) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %classname) #6
  ret void
}

declare void @vtkParse_AddStringToArray(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @vtkParse_ExpandTypedefs(ptr noundef %valinfo, ptr noundef %cache, i32 noundef %n, ptr noundef %name, ptr noundef %val, ptr noundef %typedefinfo) #0 {
entry:
  %valinfo.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %typedefinfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %valinfo, ptr %valinfo.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !14
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  store ptr %typedefinfo, ptr %typedefinfo.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Type = getelementptr inbounds %struct._ValueInfo, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %Type, align 8, !tbaa !28
  %and = and i32 %1, 255
  %cmp = icmp eq i32 %and, 9
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Type1 = getelementptr inbounds %struct._ValueInfo, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %Type1, align 8, !tbaa !28
  %and2 = and i32 %3, 255
  %cmp3 = icmp eq i32 %and2, 8
  br i1 %cmp3, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Class = getelementptr inbounds %struct._ValueInfo, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %Class, align 8, !tbaa !27
  %cmp4 = icmp ne ptr %5, null
  br i1 %cmp4, label %if.then, label %if.end20

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4, !tbaa !14
  %7 = load i32, ptr %n.addr, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %9 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %for.body
  %11 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Class7 = getelementptr inbounds %struct._ValueInfo, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %Class7, align 8, !tbaa !27
  %13 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %14 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %13, i64 %idxprom8
  %15 = load ptr, ptr %arrayidx9, align 8, !tbaa !4
  %Name = getelementptr inbounds %struct._ValueInfo, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %Name, align 8, !tbaa !34
  %call = call i32 @strcmp(ptr noundef %12, ptr noundef %16) #7
  %cmp10 = icmp eq i32 %call, 0
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %land.lhs.true6
  %17 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %typedefinfo.addr, align 8, !tbaa !4
  %19 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %18, i64 %idxprom12
  %20 = load ptr, ptr %arrayidx13, align 8, !tbaa !4
  call void @vtkParse_ExpandTypedef(ptr noundef %17, ptr noundef %20)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %if.then11, %for.cond
  %22 = load i32, ptr %i, align 4, !tbaa !14
  %23 = load i32, ptr %n.addr, align 4, !tbaa !14
  %cmp14 = icmp eq i32 %22, %23
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %for.end
  %24 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Class16 = getelementptr inbounds %struct._ValueInfo, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %Class16, align 8, !tbaa !27
  %27 = load i32, ptr %n.addr, align 4, !tbaa !14
  %28 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call17 = call ptr @vtkparse_string_replace(ptr noundef %24, ptr noundef %26, i32 noundef %27, ptr noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %valinfo.addr, align 8, !tbaa !4
  %Class18 = getelementptr inbounds %struct._ValueInfo, ptr %30, i32 0, i32 6
  store ptr %call17, ptr %Class18, align 8, !tbaa !27
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %for.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define i64 @vtkParse_BasicTypeFromString(ptr noundef %text, ptr noundef %type_ptr, ptr noundef %classname_ptr, ptr noundef %len_ptr) #0 {
entry:
  %text.addr = alloca ptr, align 8
  %type_ptr.addr = alloca ptr, align 8
  %classname_ptr.addr = alloca ptr, align 8
  %len_ptr.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %tmpcp = alloca ptr, align 8
  %k = alloca i64, align 8
  %n = alloca i64, align 8
  %m = alloca i64, align 8
  %i = alloca i32, align 4
  %const_bits = alloca i32, align 4
  %static_bits = alloca i32, align 4
  %unsigned_bits = alloca i32, align 4
  %base_bits = alloca i32, align 4
  %classname = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  store ptr %type_ptr, ptr %type_ptr.addr, align 8, !tbaa !4
  store ptr %classname_ptr, ptr %classname_ptr.addr, align 8, !tbaa !4
  store ptr %len_ptr, ptr %len_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #6
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  store ptr %0, ptr %cp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpcp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %const_bits) #6
  store i32 0, ptr %const_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %static_bits) #6
  store i32 0, ptr %static_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %unsigned_bits) #6
  store i32 0, ptr %unsigned_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_bits) #6
  store i32 0, ptr %base_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %classname) #6
  store ptr null, ptr %classname, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #6
  store i64 0, ptr %len, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %cp, align 8, !tbaa !4
  %2 = load i8, ptr %1, align 1, !tbaa !10
  %call = call i32 @vtkParse_CharType(i8 noundef signext %2, i32 noundef 64)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.end318, %while.end
  %4 = load ptr, ptr %cp, align 8, !tbaa !4
  %5 = load i8, ptr %4, align 1, !tbaa !10
  %call2 = call i32 @vtkParse_CharType(i8 noundef signext %5, i32 noundef 5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond1
  %6 = load ptr, ptr %cp, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 58
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %8 = load ptr, ptr %cp, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx5, align 1, !tbaa !10
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %cmp7, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond1
  %11 = phi i1 [ true, %while.cond1 ], [ %10, %land.end ]
  br i1 %11, label %while.body9, label %while.end319

while.body9:                                      ; preds = %lor.end
  %12 = load ptr, ptr %cp, align 8, !tbaa !4
  %call10 = call i64 @vtkParse_NameLength(ptr noundef %12)
  store i64 %call10, ptr %n, align 8, !tbaa !8
  %13 = load i64, ptr %n, align 8, !tbaa !8
  %cmp11 = icmp eq i64 %13, 6
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body9
  %14 = load ptr, ptr %cp, align 8, !tbaa !4
  %15 = load i64, ptr %n, align 8, !tbaa !8
  %call13 = call i32 @strncmp(ptr noundef @.str.9, ptr noundef %14, i64 noundef %15) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body9
  %16 = load i64, ptr %n, align 8, !tbaa !8
  %cmp16 = icmp eq i64 %16, 4
  br i1 %cmp16, label %land.lhs.true18, label %lor.lhs.false22

land.lhs.true18:                                  ; preds = %lor.lhs.false
  %17 = load ptr, ptr %cp, align 8, !tbaa !4
  %18 = load i64, ptr %n, align 8, !tbaa !8
  %call19 = call i32 @strncmp(ptr noundef @.str.10, ptr noundef %17, i64 noundef %18) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true18, %lor.lhs.false
  %19 = load i64, ptr %n, align 8, !tbaa !8
  %cmp23 = icmp eq i64 %19, 8
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false29

land.lhs.true25:                                  ; preds = %lor.lhs.false22
  %20 = load ptr, ptr %cp, align 8, !tbaa !4
  %21 = load i64, ptr %n, align 8, !tbaa !8
  %call26 = call i32 @strncmp(ptr noundef @.str.11, ptr noundef %20, i64 noundef %21) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %land.lhs.true25, %lor.lhs.false22
  %22 = load i64, ptr %n, align 8, !tbaa !8
  %cmp30 = icmp eq i64 %22, 8
  br i1 %cmp30, label %land.lhs.true32, label %if.else

land.lhs.true32:                                  ; preds = %lor.lhs.false29
  %23 = load ptr, ptr %cp, align 8, !tbaa !4
  %24 = load i64, ptr %n, align 8, !tbaa !8
  %call33 = call i32 @strncmp(ptr noundef @.str.12, ptr noundef %23, i64 noundef %24) #7
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true32, %land.lhs.true25, %land.lhs.true18, %land.lhs.true
  %25 = load ptr, ptr %cp, align 8, !tbaa !4
  %26 = load i64, ptr %n, align 8, !tbaa !8
  %call36 = call i32 @strncmp(ptr noundef @.str.9, ptr noundef %25, i64 noundef %26) #7
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end

if.then39:                                        ; preds = %if.then
  store i32 131072, ptr %static_bits, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then39, %if.then
  br label %if.end311

if.else:                                          ; preds = %land.lhs.true32, %lor.lhs.false29
  %27 = load i64, ptr %n, align 8, !tbaa !8
  %cmp40 = icmp eq i64 %27, 5
  br i1 %cmp40, label %land.lhs.true42, label %if.else47

land.lhs.true42:                                  ; preds = %if.else
  %28 = load ptr, ptr %cp, align 8, !tbaa !4
  %29 = load i64, ptr %n, align 8, !tbaa !8
  %call43 = call i32 @strncmp(ptr noundef %28, ptr noundef @.str.13, i64 noundef %29) #7
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.else47

if.then46:                                        ; preds = %land.lhs.true42
  %30 = load i32, ptr %const_bits, align 4, !tbaa !14
  %or = or i32 %30, 65536
  store i32 %or, ptr %const_bits, align 4, !tbaa !14
  br label %if.end310

if.else47:                                        ; preds = %land.lhs.true42, %if.else
  %31 = load i64, ptr %n, align 8, !tbaa !8
  %cmp48 = icmp eq i64 %31, 8
  br i1 %cmp48, label %land.lhs.true50, label %if.else60

land.lhs.true50:                                  ; preds = %if.else47
  %32 = load ptr, ptr %cp, align 8, !tbaa !4
  %33 = load i64, ptr %n, align 8, !tbaa !8
  %call51 = call i32 @strncmp(ptr noundef %32, ptr noundef @.str.14, i64 noundef %33) #7
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.else60

if.then54:                                        ; preds = %land.lhs.true50
  %34 = load i32, ptr %unsigned_bits, align 4, !tbaa !14
  %or55 = or i32 %34, 16
  store i32 %or55, ptr %unsigned_bits, align 4, !tbaa !14
  %35 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp56 = icmp eq i32 %35, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then54
  store ptr @.str.15, ptr %classname, align 8, !tbaa !4
  store i32 4, ptr %base_bits, align 4, !tbaa !14
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then54
  br label %if.end309

if.else60:                                        ; preds = %land.lhs.true50, %if.else47
  %36 = load i64, ptr %n, align 8, !tbaa !8
  %cmp61 = icmp eq i64 %36, 6
  br i1 %cmp61, label %land.lhs.true63, label %if.else73

land.lhs.true63:                                  ; preds = %if.else60
  %37 = load ptr, ptr %cp, align 8, !tbaa !4
  %38 = load i64, ptr %n, align 8, !tbaa !8
  %call64 = call i32 @strncmp(ptr noundef %37, ptr noundef @.str.16, i64 noundef %38) #7
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.else73

if.then67:                                        ; preds = %land.lhs.true63
  %39 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp68 = icmp eq i32 %39, 3
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.then67
  store ptr @.str.17, ptr %classname, align 8, !tbaa !4
  store i32 13, ptr %base_bits, align 4, !tbaa !14
  br label %if.end72

if.else71:                                        ; preds = %if.then67
  store ptr @.str.15, ptr %classname, align 8, !tbaa !4
  store i32 4, ptr %base_bits, align 4, !tbaa !14
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then70
  br label %if.end308

if.else73:                                        ; preds = %land.lhs.true63, %if.else60
  %40 = load i64, ptr %n, align 8, !tbaa !8
  %cmp74 = icmp eq i64 %40, 3
  br i1 %cmp74, label %land.lhs.true76, label %if.else85

land.lhs.true76:                                  ; preds = %if.else73
  %41 = load ptr, ptr %cp, align 8, !tbaa !4
  %42 = load i64, ptr %n, align 8, !tbaa !8
  %call77 = call i32 @strncmp(ptr noundef %41, ptr noundef @.str.15, i64 noundef %42) #7
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.else85

if.then80:                                        ; preds = %land.lhs.true76
  %43 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp81 = icmp eq i32 %43, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then80
  store ptr @.str.15, ptr %classname, align 8, !tbaa !4
  store i32 4, ptr %base_bits, align 4, !tbaa !14
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.then80
  br label %if.end307

if.else85:                                        ; preds = %land.lhs.true76, %if.else73
  %44 = load i64, ptr %n, align 8, !tbaa !8
  %cmp86 = icmp eq i64 %44, 4
  br i1 %cmp86, label %land.lhs.true88, label %if.else103

land.lhs.true88:                                  ; preds = %if.else85
  %45 = load ptr, ptr %cp, align 8, !tbaa !4
  %46 = load i64, ptr %n, align 8, !tbaa !8
  %call89 = call i32 @strncmp(ptr noundef %45, ptr noundef @.str.18, i64 noundef %46) #7
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.else103

if.then92:                                        ; preds = %land.lhs.true88
  %47 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp93 = icmp eq i32 %47, 7
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.then92
  store ptr @.str.19, ptr %classname, align 8, !tbaa !4
  store i32 39, ptr %base_bits, align 4, !tbaa !14
  br label %if.end102

if.else96:                                        ; preds = %if.then92
  %48 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp97 = icmp eq i32 %48, 6
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else96
  store ptr @.str.20, ptr %classname, align 8, !tbaa !4
  store i32 11, ptr %base_bits, align 4, !tbaa !14
  br label %if.end101

if.else100:                                       ; preds = %if.else96
  store ptr @.str.18, ptr %classname, align 8, !tbaa !4
  store i32 6, ptr %base_bits, align 4, !tbaa !14
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then99
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then95
  br label %if.end306

if.else103:                                       ; preds = %land.lhs.true88, %if.else85
  %49 = load i64, ptr %n, align 8, !tbaa !8
  %cmp104 = icmp eq i64 %49, 5
  br i1 %cmp104, label %land.lhs.true106, label %if.else111

land.lhs.true106:                                 ; preds = %if.else103
  %50 = load ptr, ptr %cp, align 8, !tbaa !4
  %51 = load i64, ptr %n, align 8, !tbaa !8
  %call107 = call i32 @strncmp(ptr noundef %50, ptr noundef @.str.21, i64 noundef %51) #7
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.else111

if.then110:                                       ; preds = %land.lhs.true106
  store ptr @.str.21, ptr %classname, align 8, !tbaa !4
  store i32 5, ptr %base_bits, align 4, !tbaa !14
  br label %if.end305

if.else111:                                       ; preds = %land.lhs.true106, %if.else103
  %52 = load i64, ptr %n, align 8, !tbaa !8
  %cmp112 = icmp eq i64 %52, 4
  br i1 %cmp112, label %land.lhs.true114, label %if.else127

land.lhs.true114:                                 ; preds = %if.else111
  %53 = load ptr, ptr %cp, align 8, !tbaa !4
  %54 = load i64, ptr %n, align 8, !tbaa !8
  %call115 = call i32 @strncmp(ptr noundef %53, ptr noundef @.str.22, i64 noundef %54) #7
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.else127

if.then118:                                       ; preds = %land.lhs.true114
  %55 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp119 = icmp eq i32 %55, 4
  br i1 %cmp119, label %land.lhs.true121, label %if.else125

land.lhs.true121:                                 ; preds = %if.then118
  %56 = load i32, ptr %unsigned_bits, align 4, !tbaa !14
  %cmp122 = icmp ne i32 %56, 16
  br i1 %cmp122, label %if.then124, label %if.else125

if.then124:                                       ; preds = %land.lhs.true121
  store ptr @.str.17, ptr %classname, align 8, !tbaa !4
  store i32 13, ptr %base_bits, align 4, !tbaa !14
  br label %if.end126

if.else125:                                       ; preds = %land.lhs.true121, %if.then118
  store ptr @.str.22, ptr %classname, align 8, !tbaa !4
  store i32 3, ptr %base_bits, align 4, !tbaa !14
  br label %if.end126

if.end126:                                        ; preds = %if.else125, %if.then124
  br label %if.end304

if.else127:                                       ; preds = %land.lhs.true114, %if.else111
  %57 = load i64, ptr %n, align 8, !tbaa !8
  %cmp128 = icmp eq i64 %57, 5
  br i1 %cmp128, label %land.lhs.true130, label %if.else135

land.lhs.true130:                                 ; preds = %if.else127
  %58 = load ptr, ptr %cp, align 8, !tbaa !4
  %59 = load i64, ptr %n, align 8, !tbaa !8
  %call131 = call i32 @strncmp(ptr noundef %58, ptr noundef @.str.23, i64 noundef %59) #7
  %cmp132 = icmp eq i32 %call131, 0
  br i1 %cmp132, label %if.then134, label %if.else135

if.then134:                                       ; preds = %land.lhs.true130
  store ptr @.str.23, ptr %classname, align 8, !tbaa !4
  store i32 1, ptr %base_bits, align 4, !tbaa !14
  br label %if.end303

if.else135:                                       ; preds = %land.lhs.true130, %if.else127
  %60 = load i64, ptr %n, align 8, !tbaa !8
  %cmp136 = icmp eq i64 %60, 6
  br i1 %cmp136, label %land.lhs.true138, label %if.else148

land.lhs.true138:                                 ; preds = %if.else135
  %61 = load ptr, ptr %cp, align 8, !tbaa !4
  %62 = load i64, ptr %n, align 8, !tbaa !8
  %call139 = call i32 @strncmp(ptr noundef %61, ptr noundef @.str.24, i64 noundef %62) #7
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.else148

if.then142:                                       ; preds = %land.lhs.true138
  %63 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp143 = icmp eq i32 %63, 6
  br i1 %cmp143, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.then142
  store ptr @.str.19, ptr %classname, align 8, !tbaa !4
  store i32 39, ptr %base_bits, align 4, !tbaa !14
  br label %if.end147

if.else146:                                       ; preds = %if.then142
  store ptr @.str.24, ptr %classname, align 8, !tbaa !4
  store i32 7, ptr %base_bits, align 4, !tbaa !14
  br label %if.end147

if.end147:                                        ; preds = %if.else146, %if.then145
  br label %if.end302

if.else148:                                       ; preds = %land.lhs.true138, %if.else135
  %64 = load i64, ptr %n, align 8, !tbaa !8
  %cmp149 = icmp eq i64 %64, 4
  br i1 %cmp149, label %land.lhs.true151, label %if.else156

land.lhs.true151:                                 ; preds = %if.else148
  %65 = load ptr, ptr %cp, align 8, !tbaa !4
  %66 = load i64, ptr %n, align 8, !tbaa !8
  %call152 = call i32 @strncmp(ptr noundef %65, ptr noundef @.str.25, i64 noundef %66) #7
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.then155, label %if.else156

if.then155:                                       ; preds = %land.lhs.true151
  store ptr @.str.25, ptr %classname, align 8, !tbaa !4
  store i32 14, ptr %base_bits, align 4, !tbaa !14
  br label %if.end301

if.else156:                                       ; preds = %land.lhs.true151, %if.else148
  %67 = load i64, ptr %n, align 8, !tbaa !8
  %cmp157 = icmp eq i64 %67, 4
  br i1 %cmp157, label %land.lhs.true159, label %if.else164

land.lhs.true159:                                 ; preds = %if.else156
  %68 = load ptr, ptr %cp, align 8, !tbaa !4
  %69 = load i64, ptr %n, align 8, !tbaa !8
  %call160 = call i32 @strncmp(ptr noundef %68, ptr noundef @.str.26, i64 noundef %69) #7
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %if.then163, label %if.else164

if.then163:                                       ; preds = %land.lhs.true159
  store ptr @.str.26, ptr %classname, align 8, !tbaa !4
  store i32 2, ptr %base_bits, align 4, !tbaa !14
  br label %if.end300

if.else164:                                       ; preds = %land.lhs.true159, %if.else156
  %70 = load i64, ptr %n, align 8, !tbaa !8
  %cmp165 = icmp eq i64 %70, 7
  br i1 %cmp165, label %land.lhs.true167, label %if.else172

land.lhs.true167:                                 ; preds = %if.else164
  %71 = load ptr, ptr %cp, align 8, !tbaa !4
  %72 = load i64, ptr %n, align 8, !tbaa !8
  %call168 = call i32 @strncmp(ptr noundef %71, ptr noundef @.str.27, i64 noundef %72) #7
  %cmp169 = icmp eq i32 %call168, 0
  br i1 %cmp169, label %if.then171, label %if.else172

if.then171:                                       ; preds = %land.lhs.true167
  store ptr @.str.27, ptr %classname, align 8, !tbaa !4
  store i32 12, ptr %base_bits, align 4, !tbaa !14
  br label %if.end299

if.else172:                                       ; preds = %land.lhs.true167, %if.else164
  %73 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp173 = icmp ne i32 %73, 0
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.else172
  br label %while.end319

if.end176:                                        ; preds = %if.else172
  %74 = load ptr, ptr %cp, align 8, !tbaa !4
  %call177 = call i32 @strncmp(ptr noundef %74, ptr noundef @.str.28, i64 noundef 3) #7
  %cmp178 = icmp eq i32 %call177, 0
  br i1 %cmp178, label %if.then180, label %if.end203

if.then180:                                       ; preds = %if.end176
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then180
  %75 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %75 to i64
  %arrayidx181 = getelementptr inbounds [3 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.vtktypes, i64 0, i64 %idxprom
  %len182 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx181, i32 0, i32 0
  %76 = load i64, ptr %len182, align 8, !tbaa !37
  %cmp183 = icmp ne i64 %76, 0
  br i1 %cmp183, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i64, ptr %n, align 8, !tbaa !8
  %78 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom185 = sext i32 %78 to i64
  %arrayidx186 = getelementptr inbounds [3 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.vtktypes, i64 0, i64 %idxprom185
  %len187 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx186, i32 0, i32 0
  %79 = load i64, ptr %len187, align 8, !tbaa !37
  %cmp188 = icmp eq i64 %77, %79
  br i1 %cmp188, label %land.lhs.true190, label %if.end202

land.lhs.true190:                                 ; preds = %for.body
  %80 = load ptr, ptr %cp, align 8, !tbaa !4
  %81 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom191 = sext i32 %81 to i64
  %arrayidx192 = getelementptr inbounds [3 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.vtktypes, i64 0, i64 %idxprom191
  %name = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx192, i32 0, i32 1
  %82 = load ptr, ptr %name, align 8, !tbaa !39
  %83 = load i64, ptr %n, align 8, !tbaa !8
  %call193 = call i32 @strncmp(ptr noundef %80, ptr noundef %82, i64 noundef %83) #7
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.end202

if.then196:                                       ; preds = %land.lhs.true190
  %84 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom197 = sext i32 %84 to i64
  %arrayidx198 = getelementptr inbounds [3 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.vtktypes, i64 0, i64 %idxprom197
  %name199 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx198, i32 0, i32 1
  %85 = load ptr, ptr %name199, align 8, !tbaa !39
  store ptr %85, ptr %classname, align 8, !tbaa !4
  %86 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom200 = sext i32 %86 to i64
  %arrayidx201 = getelementptr inbounds [3 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.vtktypes, i64 0, i64 %idxprom200
  %type = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx201, i32 0, i32 2
  %87 = load i32, ptr %type, align 8, !tbaa !40
  store i32 %87, ptr %base_bits, align 4, !tbaa !14
  br label %if.end202

if.end202:                                        ; preds = %if.then196, %land.lhs.true190, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end202
  %88 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %88, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  br label %if.end203

if.end203:                                        ; preds = %for.end, %if.end176
  %89 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp204 = icmp eq i32 %89, 0
  br i1 %cmp204, label %if.then206, label %if.end255

if.then206:                                       ; preds = %if.end203
  store i64 0, ptr %m, align 8, !tbaa !8
  %90 = load ptr, ptr %cp, align 8, !tbaa !4
  %call207 = call i32 @strncmp(ptr noundef %90, ptr noundef @.str.29, i64 noundef 2) #7
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %if.then210, label %if.else211

if.then210:                                       ; preds = %if.then206
  store i64 2, ptr %m, align 8, !tbaa !8
  br label %if.end217

if.else211:                                       ; preds = %if.then206
  %91 = load ptr, ptr %cp, align 8, !tbaa !4
  %call212 = call i32 @strncmp(ptr noundef %91, ptr noundef @.str.30, i64 noundef 5) #7
  %cmp213 = icmp eq i32 %call212, 0
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.else211
  store i64 5, ptr %m, align 8, !tbaa !8
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %if.else211
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.then210
  %92 = load ptr, ptr %cp, align 8, !tbaa !4
  %93 = load i64, ptr %m, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %92, i64 %93
  store ptr %add.ptr, ptr %tmpcp, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond218

for.cond218:                                      ; preds = %for.inc245, %if.end217
  %94 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom219 = sext i32 %94 to i64
  %arrayidx220 = getelementptr inbounds [6 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.stdtypes, i64 0, i64 %idxprom219
  %len221 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx220, i32 0, i32 0
  %95 = load i64, ptr %len221, align 8, !tbaa !37
  %cmp222 = icmp ne i64 %95, 0
  br i1 %cmp222, label %for.body224, label %for.end247

for.body224:                                      ; preds = %for.cond218
  %96 = load i64, ptr %n, align 8, !tbaa !8
  %97 = load i64, ptr %m, align 8, !tbaa !8
  %98 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom225 = sext i32 %98 to i64
  %arrayidx226 = getelementptr inbounds [6 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.stdtypes, i64 0, i64 %idxprom225
  %len227 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx226, i32 0, i32 0
  %99 = load i64, ptr %len227, align 8, !tbaa !37
  %add = add i64 %97, %99
  %cmp228 = icmp eq i64 %96, %add
  br i1 %cmp228, label %land.lhs.true230, label %if.end244

land.lhs.true230:                                 ; preds = %for.body224
  %100 = load ptr, ptr %tmpcp, align 8, !tbaa !4
  %101 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom231 = sext i32 %101 to i64
  %arrayidx232 = getelementptr inbounds [6 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.stdtypes, i64 0, i64 %idxprom231
  %name233 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx232, i32 0, i32 1
  %102 = load ptr, ptr %name233, align 8, !tbaa !39
  %103 = load i64, ptr %n, align 8, !tbaa !8
  %104 = load i64, ptr %m, align 8, !tbaa !8
  %sub = sub i64 %103, %104
  %call234 = call i32 @strncmp(ptr noundef %100, ptr noundef %102, i64 noundef %sub) #7
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then237, label %if.end244

if.then237:                                       ; preds = %land.lhs.true230
  %105 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom238 = sext i32 %105 to i64
  %arrayidx239 = getelementptr inbounds [6 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.stdtypes, i64 0, i64 %idxprom238
  %name240 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx239, i32 0, i32 1
  %106 = load ptr, ptr %name240, align 8, !tbaa !39
  store ptr %106, ptr %classname, align 8, !tbaa !4
  %107 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom241 = sext i32 %107 to i64
  %arrayidx242 = getelementptr inbounds [6 x %struct.vtk_type_struct], ptr @vtkParse_BasicTypeFromString.stdtypes, i64 0, i64 %idxprom241
  %type243 = getelementptr inbounds %struct.vtk_type_struct, ptr %arrayidx242, i32 0, i32 2
  %108 = load i32, ptr %type243, align 8, !tbaa !40
  store i32 %108, ptr %base_bits, align 4, !tbaa !14
  br label %if.end244

if.end244:                                        ; preds = %if.then237, %land.lhs.true230, %for.body224
  br label %for.inc245

for.inc245:                                       ; preds = %if.end244
  %109 = load i32, ptr %i, align 4, !tbaa !14
  %inc246 = add nsw i32 %109, 1
  store i32 %inc246, ptr %i, align 4, !tbaa !14
  br label %for.cond218, !llvm.loop !42

for.end247:                                       ; preds = %for.cond218
  %110 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp248 = icmp ne i32 %110, 0
  br i1 %cmp248, label %land.lhs.true250, label %if.end254

land.lhs.true250:                                 ; preds = %for.end247
  %111 = load i64, ptr %m, align 8, !tbaa !8
  %cmp251 = icmp ugt i64 %111, 0
  br i1 %cmp251, label %if.then253, label %if.end254

if.then253:                                       ; preds = %land.lhs.true250
  %112 = load ptr, ptr %cp, align 8, !tbaa !4
  store ptr %112, ptr %classname, align 8, !tbaa !4
  %113 = load i64, ptr %n, align 8, !tbaa !8
  store i64 %113, ptr %len, align 8, !tbaa !8
  br label %if.end254

if.end254:                                        ; preds = %if.then253, %land.lhs.true250, %for.end247
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.end203
  %114 = load i32, ptr %base_bits, align 4, !tbaa !14
  %cmp256 = icmp eq i32 %114, 0
  br i1 %cmp256, label %if.then258, label %if.end298

if.then258:                                       ; preds = %if.end255
  store i32 8, ptr %base_bits, align 4, !tbaa !14
  %115 = load ptr, ptr %cp, align 8, !tbaa !4
  store ptr %115, ptr %classname, align 8, !tbaa !4
  %116 = load i64, ptr %n, align 8, !tbaa !8
  store i64 %116, ptr %len, align 8, !tbaa !8
  %117 = load ptr, ptr %classname, align 8, !tbaa !4
  %call259 = call i32 @strncmp(ptr noundef %117, ptr noundef @.str.28, i64 noundef 3) #7
  %cmp260 = icmp eq i32 %call259, 0
  br i1 %cmp260, label %if.then262, label %if.else276

if.then262:                                       ; preds = %if.then258
  store i32 9, ptr %base_bits, align 4, !tbaa !14
  store i64 0, ptr %k, align 8, !tbaa !8
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc273, %if.then262
  %118 = load i64, ptr %k, align 8, !tbaa !8
  %119 = load i64, ptr %n, align 8, !tbaa !8
  %cmp264 = icmp ult i64 %118, %119
  br i1 %cmp264, label %for.body266, label %for.end275

for.body266:                                      ; preds = %for.cond263
  %120 = load ptr, ptr %cp, align 8, !tbaa !4
  %121 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx267 = getelementptr inbounds i8, ptr %120, i64 %121
  %122 = load i8, ptr %arrayidx267, align 1, !tbaa !10
  %conv268 = sext i8 %122 to i32
  %cmp269 = icmp eq i32 %conv268, 58
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %for.body266
  store i32 8, ptr %base_bits, align 4, !tbaa !14
  br label %for.end275

if.end272:                                        ; preds = %for.body266
  br label %for.inc273

for.inc273:                                       ; preds = %if.end272
  %123 = load i64, ptr %k, align 8, !tbaa !8
  %inc274 = add i64 %123, 1
  store i64 %inc274, ptr %k, align 8, !tbaa !8
  br label %for.cond263, !llvm.loop !43

for.end275:                                       ; preds = %if.then271, %for.cond263
  br label %if.end297

if.else276:                                       ; preds = %if.then258
  %124 = load ptr, ptr %classname, align 8, !tbaa !4
  %arrayidx277 = getelementptr inbounds i8, ptr %124, i64 0
  %125 = load i8, ptr %arrayidx277, align 1, !tbaa !10
  %conv278 = sext i8 %125 to i32
  %cmp279 = icmp eq i32 %conv278, 81
  br i1 %cmp279, label %land.lhs.true281, label %if.end296

land.lhs.true281:                                 ; preds = %if.else276
  %126 = load ptr, ptr %classname, align 8, !tbaa !4
  %arrayidx282 = getelementptr inbounds i8, ptr %126, i64 1
  %127 = load i8, ptr %arrayidx282, align 1, !tbaa !10
  %conv283 = sext i8 %127 to i32
  %cmp284 = icmp sge i32 %conv283, 65
  br i1 %cmp284, label %land.lhs.true286, label %lor.lhs.false291

land.lhs.true286:                                 ; preds = %land.lhs.true281
  %128 = load ptr, ptr %classname, align 8, !tbaa !4
  %arrayidx287 = getelementptr inbounds i8, ptr %128, i64 2
  %129 = load i8, ptr %arrayidx287, align 1, !tbaa !10
  %conv288 = sext i8 %129 to i32
  %cmp289 = icmp sle i32 %conv288, 90
  br i1 %cmp289, label %if.then295, label %lor.lhs.false291

lor.lhs.false291:                                 ; preds = %land.lhs.true286, %land.lhs.true281
  %130 = load ptr, ptr %classname, align 8, !tbaa !4
  %call292 = call i32 @strncmp(ptr noundef %130, ptr noundef @.str.31, i64 noundef 4) #7
  %cmp293 = icmp eq i32 %call292, 0
  br i1 %cmp293, label %if.then295, label %if.end296

if.then295:                                       ; preds = %lor.lhs.false291, %land.lhs.true286
  store i32 38, ptr %base_bits, align 4, !tbaa !14
  br label %if.end296

if.end296:                                        ; preds = %if.then295, %lor.lhs.false291, %if.else276
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %for.end275
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.end255
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.then171
  br label %if.end300

if.end300:                                        ; preds = %if.end299, %if.then163
  br label %if.end301

if.end301:                                        ; preds = %if.end300, %if.then155
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.end147
  br label %if.end303

if.end303:                                        ; preds = %if.end302, %if.then134
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %if.end126
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %if.then110
  br label %if.end306

if.end306:                                        ; preds = %if.end305, %if.end102
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %if.end84
  br label %if.end308

if.end308:                                        ; preds = %if.end307, %if.end72
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %if.end59
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.then46
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.end
  %131 = load i64, ptr %n, align 8, !tbaa !8
  %132 = load ptr, ptr %cp, align 8, !tbaa !4
  %add.ptr312 = getelementptr inbounds i8, ptr %132, i64 %131
  store ptr %add.ptr312, ptr %cp, align 8, !tbaa !4
  br label %while.cond313

while.cond313:                                    ; preds = %while.body316, %if.end311
  %133 = load ptr, ptr %cp, align 8, !tbaa !4
  %134 = load i8, ptr %133, align 1, !tbaa !10
  %call314 = call i32 @vtkParse_CharType(i8 noundef signext %134, i32 noundef 64)
  %tobool315 = icmp ne i32 %call314, 0
  br i1 %tobool315, label %while.body316, label %while.end318

while.body316:                                    ; preds = %while.cond313
  %135 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr317 = getelementptr inbounds i8, ptr %135, i32 1
  store ptr %incdec.ptr317, ptr %cp, align 8, !tbaa !4
  br label %while.cond313, !llvm.loop !44

while.end318:                                     ; preds = %while.cond313
  br label %while.cond1, !llvm.loop !45

while.end319:                                     ; preds = %if.then175, %lor.end
  %136 = load i32, ptr %unsigned_bits, align 4, !tbaa !14
  %and = and i32 %136, 16
  %cmp320 = icmp ne i32 %and, 0
  br i1 %cmp320, label %if.then322, label %if.end328

if.then322:                                       ; preds = %while.end319
  %137 = load i32, ptr %base_bits, align 4, !tbaa !14
  switch i32 %137, label %sw.epilog [
    i32 3, label %sw.bb
    i32 5, label %sw.bb323
    i32 4, label %sw.bb324
    i32 6, label %sw.bb325
    i32 11, label %sw.bb326
    i32 12, label %sw.bb327
  ]

sw.bb:                                            ; preds = %if.then322
  store ptr @.str.32, ptr %classname, align 8, !tbaa !4
  br label %sw.epilog

sw.bb323:                                         ; preds = %if.then322
  store ptr @.str.33, ptr %classname, align 8, !tbaa !4
  br label %sw.epilog

sw.bb324:                                         ; preds = %if.then322
  store ptr @.str.34, ptr %classname, align 8, !tbaa !4
  br label %sw.epilog

sw.bb325:                                         ; preds = %if.then322
  store ptr @.str.35, ptr %classname, align 8, !tbaa !4
  br label %sw.epilog

sw.bb326:                                         ; preds = %if.then322
  store ptr @.str.36, ptr %classname, align 8, !tbaa !4
  br label %sw.epilog

sw.bb327:                                         ; preds = %if.then322
  store ptr @.str.37, ptr %classname, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then322, %sw.bb327, %sw.bb326, %sw.bb325, %sw.bb324, %sw.bb323, %sw.bb
  br label %if.end328

if.end328:                                        ; preds = %sw.epilog, %while.end319
  %138 = load i32, ptr %static_bits, align 4, !tbaa !14
  %139 = load i32, ptr %const_bits, align 4, !tbaa !14
  %or329 = or i32 %138, %139
  %140 = load i32, ptr %unsigned_bits, align 4, !tbaa !14
  %or330 = or i32 %or329, %140
  %141 = load i32, ptr %base_bits, align 4, !tbaa !14
  %or331 = or i32 %or330, %141
  %142 = load ptr, ptr %type_ptr.addr, align 8, !tbaa !4
  store i32 %or331, ptr %142, align 4, !tbaa !14
  %143 = load ptr, ptr %classname_ptr.addr, align 8, !tbaa !4
  %tobool332 = icmp ne ptr %143, null
  br i1 %tobool332, label %if.then333, label %if.end341

if.then333:                                       ; preds = %if.end328
  %144 = load ptr, ptr %classname, align 8, !tbaa !4
  %145 = load ptr, ptr %classname_ptr.addr, align 8, !tbaa !4
  store ptr %144, ptr %145, align 8, !tbaa !4
  %146 = load ptr, ptr %classname, align 8, !tbaa !4
  %tobool334 = icmp ne ptr %146, null
  br i1 %tobool334, label %land.lhs.true335, label %if.end340

land.lhs.true335:                                 ; preds = %if.then333
  %147 = load i64, ptr %len, align 8, !tbaa !8
  %cmp336 = icmp eq i64 %147, 0
  br i1 %cmp336, label %if.then338, label %if.end340

if.then338:                                       ; preds = %land.lhs.true335
  %148 = load ptr, ptr %classname, align 8, !tbaa !4
  %call339 = call i64 @strlen(ptr noundef %148) #7
  store i64 %call339, ptr %len, align 8, !tbaa !8
  br label %if.end340

if.end340:                                        ; preds = %if.then338, %land.lhs.true335, %if.then333
  %149 = load i64, ptr %len, align 8, !tbaa !8
  %150 = load ptr, ptr %len_ptr.addr, align 8, !tbaa !4
  store i64 %149, ptr %150, align 8, !tbaa !8
  br label %if.end341

if.end341:                                        ; preds = %if.end340, %if.end328
  %151 = load ptr, ptr %cp, align 8, !tbaa !4
  %152 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %151 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %152 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %classname) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %unsigned_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %static_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %const_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpcp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #6
  ret i64 %sub.ptr.sub
}

declare i32 @vtkParse_CharType(i8 noundef signext, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i64 @vtkParse_ValueInfoFromString(ptr noundef %data, ptr noundef %cache, ptr noundef %text) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %n = alloca i64, align 8
  %m = alloca i32, align 4
  %count = alloca i32, align 4
  %base_bits = alloca i32, align 4
  %pointer_bits = alloca i32, align 4
  %ref_bits = alloca i32, align 4
  %classname = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #6
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  store ptr %0, ptr %cp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %base_bits) #6
  store i32 0, ptr %base_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pointer_bits) #6
  store i32 0, ptr %pointer_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_bits) #6
  store i32 0, ptr %ref_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %classname) #6
  store ptr null, ptr %classname, align 8, !tbaa !4
  %1 = load ptr, ptr %cp, align 8, !tbaa !4
  %call = call i64 @vtkParse_BasicTypeFromString(ptr noundef %1, ptr noundef %base_bits, ptr noundef %classname, ptr noundef %n)
  %2 = load ptr, ptr %cp, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %call
  store ptr %add.ptr, ptr %cp, align 8, !tbaa !4
  %3 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %classname, align 8, !tbaa !4
  %5 = load i64, ptr %n, align 8, !tbaa !8
  %call1 = call ptr @vtkParse_CacheString(ptr noundef %3, ptr noundef %4, i64 noundef %5)
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Class = getelementptr inbounds %struct._ValueInfo, ptr %6, i32 0, i32 6
  store ptr %call1, ptr %Class, align 8, !tbaa !27
  %7 = load i32, ptr %base_bits, align 4, !tbaa !14
  %and = and i32 %7, 131072
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %IsStatic = getelementptr inbounds %struct._ValueInfo, ptr %8, i32 0, i32 13
  store i32 1, ptr %IsStatic, align 8, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end
  %9 = load ptr, ptr %cp, align 8, !tbaa !4
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %conv = sext i8 %10 to i32
  %cmp2 = icmp eq i32 %conv, 42
  br i1 %cmp2, label %while.body, label %while.end24

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %cp, align 8, !tbaa !4
  %12 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %shl = shl i32 %12, 2
  store i32 %shl, ptr %pointer_bits, align 4, !tbaa !14
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.body
  %13 = load ptr, ptr %cp, align 8, !tbaa !4
  %14 = load i8, ptr %13, align 1, !tbaa !10
  %call5 = call i32 @vtkParse_CharType(i8 noundef signext %14, i32 noundef 64)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond4
  %15 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr7, ptr %cp, align 8, !tbaa !4
  br label %while.cond4, !llvm.loop !47

while.end:                                        ; preds = %while.cond4
  %16 = load ptr, ptr %cp, align 8, !tbaa !4
  %call8 = call i32 @strncmp(ptr noundef %16, ptr noundef @.str.13, i64 noundef 5) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %17 = load ptr, ptr %cp, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 5
  %18 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %call11 = call i32 @vtkParse_CharType(i8 noundef signext %18, i32 noundef 7)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %cp, align 8, !tbaa !4
  %add.ptr14 = getelementptr inbounds i8, ptr %19, i64 5
  store ptr %add.ptr14, ptr %cp, align 8, !tbaa !4
  br label %while.cond15

while.cond15:                                     ; preds = %while.body18, %if.then13
  %20 = load ptr, ptr %cp, align 8, !tbaa !4
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %call16 = call i32 @vtkParse_CharType(i8 noundef signext %21, i32 noundef 64)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %while.body18, label %while.end20

while.body18:                                     ; preds = %while.cond15
  %22 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr19 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr19, ptr %cp, align 8, !tbaa !4
  br label %while.cond15, !llvm.loop !48

while.end20:                                      ; preds = %while.cond15
  %23 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %or = or i32 %23, 1536
  store i32 %or, ptr %pointer_bits, align 4, !tbaa !14
  br label %if.end22

if.else:                                          ; preds = %land.lhs.true, %while.end
  %24 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %or21 = or i32 %24, 512
  store i32 %or21, ptr %pointer_bits, align 4, !tbaa !14
  br label %if.end22

if.end22:                                         ; preds = %if.else, %while.end20
  %25 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %and23 = and i32 %25, 65024
  store i32 %and23, ptr %pointer_bits, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !49

while.end24:                                      ; preds = %while.cond
  %26 = load ptr, ptr %cp, align 8, !tbaa !4
  %27 = load i8, ptr %26, align 1, !tbaa !10
  %conv25 = sext i8 %27 to i32
  %cmp26 = icmp eq i32 %conv25, 38
  br i1 %cmp26, label %if.then28, label %if.end36

if.then28:                                        ; preds = %while.end24
  %28 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr29 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr29, ptr %cp, align 8, !tbaa !4
  br label %while.cond30

while.cond30:                                     ; preds = %while.body33, %if.then28
  %29 = load ptr, ptr %cp, align 8, !tbaa !4
  %30 = load i8, ptr %29, align 1, !tbaa !10
  %call31 = call i32 @vtkParse_CharType(i8 noundef signext %30, i32 noundef 64)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %while.body33, label %while.end35

while.body33:                                     ; preds = %while.cond30
  %31 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr34 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr34, ptr %cp, align 8, !tbaa !4
  br label %while.cond30, !llvm.loop !50

while.end35:                                      ; preds = %while.cond30
  store i32 256, ptr %ref_bits, align 4, !tbaa !14
  br label %if.end36

if.end36:                                         ; preds = %while.end35, %while.end24
  %32 = load ptr, ptr %cp, align 8, !tbaa !4
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %call37 = call i32 @vtkParse_CharType(i8 noundef signext %33, i32 noundef 5)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end49

if.then39:                                        ; preds = %if.end36
  %34 = load ptr, ptr %cp, align 8, !tbaa !4
  %call40 = call i64 @vtkParse_SkipId(ptr noundef %34)
  store i64 %call40, ptr %n, align 8, !tbaa !8
  %35 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %cp, align 8, !tbaa !4
  %37 = load i64, ptr %n, align 8, !tbaa !8
  %call41 = call ptr @vtkParse_CacheString(ptr noundef %35, ptr noundef %36, i64 noundef %37)
  %38 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Name = getelementptr inbounds %struct._ValueInfo, ptr %38, i32 0, i32 2
  store ptr %call41, ptr %Name, align 8, !tbaa !34
  %39 = load i64, ptr %n, align 8, !tbaa !8
  %40 = load ptr, ptr %cp, align 8, !tbaa !4
  %add.ptr42 = getelementptr inbounds i8, ptr %40, i64 %39
  store ptr %add.ptr42, ptr %cp, align 8, !tbaa !4
  br label %while.cond43

while.cond43:                                     ; preds = %while.body46, %if.then39
  %41 = load ptr, ptr %cp, align 8, !tbaa !4
  %42 = load i8, ptr %41, align 1, !tbaa !10
  %call44 = call i32 @vtkParse_CharType(i8 noundef signext %42, i32 noundef 64)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %while.body46, label %while.end48

while.body46:                                     ; preds = %while.cond43
  %43 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr47 = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr47, ptr %cp, align 8, !tbaa !4
  br label %while.cond43, !llvm.loop !51

while.end48:                                      ; preds = %while.cond43
  br label %if.end49

if.end49:                                         ; preds = %while.end48, %if.end36
  %44 = load ptr, ptr %cp, align 8, !tbaa !4
  %45 = load i8, ptr %44, align 1, !tbaa !10
  %conv50 = sext i8 %45 to i32
  %cmp51 = icmp eq i32 %conv50, 91
  br i1 %cmp51, label %if.then53, label %if.end112

if.then53:                                        ; preds = %if.end49
  store i32 1, ptr %count, align 4, !tbaa !14
  br label %while.cond54

while.cond54:                                     ; preds = %while.end110, %if.then53
  %46 = load ptr, ptr %cp, align 8, !tbaa !4
  %47 = load i8, ptr %46, align 1, !tbaa !10
  %conv55 = sext i8 %47 to i32
  %cmp56 = icmp eq i32 %conv55, 91
  br i1 %cmp56, label %while.body58, label %while.end111

while.body58:                                     ; preds = %while.cond54
  %48 = load ptr, ptr %cp, align 8, !tbaa !4
  %call59 = call i64 @vtkparse_bracket_len(ptr noundef %48)
  store i64 %call59, ptr %n, align 8, !tbaa !8
  %49 = load i64, ptr %n, align 8, !tbaa !8
  %cmp60 = icmp ugt i64 %49, 1
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %while.body58
  %50 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr63 = getelementptr inbounds i8, ptr %50, i32 1
  store ptr %incdec.ptr63, ptr %cp, align 8, !tbaa !4
  %51 = load i64, ptr %n, align 8, !tbaa !8
  %sub = sub i64 %51, 2
  store i64 %sub, ptr %n, align 8, !tbaa !8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %while.body58
  br label %while.cond65

while.cond65:                                     ; preds = %while.body68, %if.end64
  %52 = load ptr, ptr %cp, align 8, !tbaa !4
  %53 = load i8, ptr %52, align 1, !tbaa !10
  %call66 = call i32 @vtkParse_CharType(i8 noundef signext %53, i32 noundef 64)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %while.body68, label %while.end70

while.body68:                                     ; preds = %while.cond65
  %54 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr69 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr69, ptr %cp, align 8, !tbaa !4
  %55 = load i64, ptr %n, align 8, !tbaa !8
  %dec = add i64 %55, -1
  store i64 %dec, ptr %n, align 8, !tbaa !8
  br label %while.cond65, !llvm.loop !52

while.end70:                                      ; preds = %while.cond65
  br label %while.cond71

while.cond71:                                     ; preds = %while.body78, %while.end70
  %56 = load i64, ptr %n, align 8, !tbaa !8
  %cmp72 = icmp ugt i64 %56, 0
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond71
  %57 = load ptr, ptr %cp, align 8, !tbaa !4
  %58 = load i64, ptr %n, align 8, !tbaa !8
  %sub74 = sub i64 %58, 1
  %arrayidx75 = getelementptr inbounds i8, ptr %57, i64 %sub74
  %59 = load i8, ptr %arrayidx75, align 1, !tbaa !10
  %call76 = call i32 @vtkParse_CharType(i8 noundef signext %59, i32 noundef 64)
  %tobool77 = icmp ne i32 %call76, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond71
  %60 = phi i1 [ false, %while.cond71 ], [ %tobool77, %land.rhs ]
  br i1 %60, label %while.body78, label %while.end80

while.body78:                                     ; preds = %land.end
  %61 = load i64, ptr %n, align 8, !tbaa !8
  %dec79 = add i64 %61, -1
  store i64 %dec79, ptr %n, align 8, !tbaa !8
  br label %while.cond71, !llvm.loop !53

while.end80:                                      ; preds = %land.end
  %62 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Dimensions = getelementptr inbounds %struct._ValueInfo, ptr %62, i32 0, i32 10
  %63 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfDimensions = getelementptr inbounds %struct._ValueInfo, ptr %63, i32 0, i32 9
  %64 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %cp, align 8, !tbaa !4
  %66 = load i64, ptr %n, align 8, !tbaa !8
  %call81 = call ptr @vtkParse_CacheString(ptr noundef %64, ptr noundef %65, i64 noundef %66)
  call void @vtkParse_AddStringToArray(ptr noundef %Dimensions, ptr noundef %NumberOfDimensions, ptr noundef %call81)
  store i32 0, ptr %m, align 4, !tbaa !14
  %67 = load ptr, ptr %cp, align 8, !tbaa !4
  %68 = load i8, ptr %67, align 1, !tbaa !10
  %call82 = call i32 @vtkParse_CharType(i8 noundef signext %68, i32 noundef 2)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %land.lhs.true84, label %if.end91

land.lhs.true84:                                  ; preds = %while.end80
  %69 = load ptr, ptr %cp, align 8, !tbaa !4
  %call85 = call i64 @vtkParse_SkipNumber(ptr noundef %69)
  %70 = load i64, ptr %n, align 8, !tbaa !8
  %cmp86 = icmp eq i64 %call85, %70
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %land.lhs.true84
  %71 = load ptr, ptr %cp, align 8, !tbaa !4
  %call89 = call i64 @strtol(ptr noundef %71, ptr noundef null, i32 noundef 0) #6
  %conv90 = trunc i64 %call89 to i32
  store i32 %conv90, ptr %m, align 4, !tbaa !14
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %land.lhs.true84, %while.end80
  %72 = load i32, ptr %m, align 4, !tbaa !14
  %73 = load i32, ptr %count, align 4, !tbaa !14
  %mul = mul nsw i32 %73, %72
  store i32 %mul, ptr %count, align 4, !tbaa !14
  %74 = load i64, ptr %n, align 8, !tbaa !8
  %75 = load ptr, ptr %cp, align 8, !tbaa !4
  %add.ptr92 = getelementptr inbounds i8, ptr %75, i64 %74
  store ptr %add.ptr92, ptr %cp, align 8, !tbaa !4
  br label %while.cond93

while.cond93:                                     ; preds = %while.body96, %if.end91
  %76 = load ptr, ptr %cp, align 8, !tbaa !4
  %77 = load i8, ptr %76, align 1, !tbaa !10
  %call94 = call i32 @vtkParse_CharType(i8 noundef signext %77, i32 noundef 64)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %while.body96, label %while.end98

while.body96:                                     ; preds = %while.cond93
  %78 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr97 = getelementptr inbounds i8, ptr %78, i32 1
  store ptr %incdec.ptr97, ptr %cp, align 8, !tbaa !4
  br label %while.cond93, !llvm.loop !54

while.end98:                                      ; preds = %while.cond93
  %79 = load ptr, ptr %cp, align 8, !tbaa !4
  %80 = load i8, ptr %79, align 1, !tbaa !10
  %conv99 = sext i8 %80 to i32
  %cmp100 = icmp eq i32 %conv99, 93
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %while.end98
  %81 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr103 = getelementptr inbounds i8, ptr %81, i32 1
  store ptr %incdec.ptr103, ptr %cp, align 8, !tbaa !4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %while.end98
  br label %while.cond105

while.cond105:                                    ; preds = %while.body108, %if.end104
  %82 = load ptr, ptr %cp, align 8, !tbaa !4
  %83 = load i8, ptr %82, align 1, !tbaa !10
  %call106 = call i32 @vtkParse_CharType(i8 noundef signext %83, i32 noundef 64)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %while.body108, label %while.end110

while.body108:                                    ; preds = %while.cond105
  %84 = load ptr, ptr %cp, align 8, !tbaa !4
  %incdec.ptr109 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr109, ptr %cp, align 8, !tbaa !4
  br label %while.cond105, !llvm.loop !55

while.end110:                                     ; preds = %while.cond105
  br label %while.cond54, !llvm.loop !56

while.end111:                                     ; preds = %while.cond54
  br label %if.end112

if.end112:                                        ; preds = %while.end111, %if.end49
  %85 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfDimensions113 = getelementptr inbounds %struct._ValueInfo, ptr %85, i32 0, i32 9
  %86 = load i32, ptr %NumberOfDimensions113, align 8, !tbaa !18
  %cmp114 = icmp sgt i32 %86, 1
  br i1 %cmp114, label %if.then116, label %if.else119

if.then116:                                       ; preds = %if.end112
  %87 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %shl117 = shl i32 %87, 2
  %or118 = or i32 %shl117, 1024
  store i32 %or118, ptr %pointer_bits, align 4, !tbaa !14
  br label %if.end127

if.else119:                                       ; preds = %if.end112
  %88 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfDimensions120 = getelementptr inbounds %struct._ValueInfo, ptr %88, i32 0, i32 9
  %89 = load i32, ptr %NumberOfDimensions120, align 8, !tbaa !18
  %cmp121 = icmp eq i32 %89, 1
  br i1 %cmp121, label %if.then123, label %if.end126

if.then123:                                       ; preds = %if.else119
  %90 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %shl124 = shl i32 %90, 2
  %or125 = or i32 %shl124, 512
  store i32 %or125, ptr %pointer_bits, align 4, !tbaa !14
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.else119
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then116
  %91 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %and128 = and i32 %91, 65024
  store i32 %and128, ptr %pointer_bits, align 4, !tbaa !14
  %92 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %93 = load i32, ptr %ref_bits, align 4, !tbaa !14
  %or129 = or i32 %92, %93
  %94 = load i32, ptr %base_bits, align 4, !tbaa !14
  %or130 = or i32 %or129, %94
  %95 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Type = getelementptr inbounds %struct._ValueInfo, ptr %95, i32 0, i32 5
  store i32 %or130, ptr %Type, align 8, !tbaa !28
  %96 = load ptr, ptr %cp, align 8, !tbaa !4
  %97 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %96 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %97 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.end.p0(i64 8, ptr %classname) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pointer_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %base_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #6
  ret i64 %sub.ptr.sub
}

declare ptr @vtkParse_CacheString(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @vtkParse_SkipNumber(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i64 @vtkParse_ValueInfoToString(ptr noundef %data, ptr noundef %text, i32 noundef %flags) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pointer_bits = alloca i32, align 4
  %ref_bits = alloca i32, align 4
  %qualifier_bits = alloca i32, align 4
  %reverse_bits = alloca i32, align 4
  %pointer_type = alloca i32, align 4
  %tpname = alloca ptr, align 8
  %dimensions = alloca i32, align 4
  %pointer_dimensions = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pointer_bits) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Type = getelementptr inbounds %struct._ValueInfo, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %Type, align 8, !tbaa !28
  %and = and i32 %1, 65024
  store i32 %and, ptr %pointer_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ref_bits) #6
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Type1 = getelementptr inbounds %struct._ValueInfo, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %Type1, align 8, !tbaa !28
  %and2 = and i32 %3, 4194560
  store i32 %and2, ptr %ref_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %qualifier_bits) #6
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Type3 = getelementptr inbounds %struct._ValueInfo, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %Type3, align 8, !tbaa !28
  %and4 = and i32 %5, 65536
  store i32 %and4, ptr %qualifier_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %reverse_bits) #6
  store i32 0, ptr %reverse_bits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pointer_type) #6
  store i32 0, ptr %pointer_type, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpname) #6
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Class = getelementptr inbounds %struct._ValueInfo, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %Class, align 8, !tbaa !27
  store ptr %7, ptr %tpname, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dimensions) #6
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfDimensions = getelementptr inbounds %struct._ValueInfo, ptr %8, i32 0, i32 9
  %9 = load i32, ptr %NumberOfDimensions, align 8, !tbaa !18
  store i32 %9, ptr %dimensions, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %pointer_dimensions) #6
  store i32 0, ptr %pointer_dimensions, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  store i64 0, ptr %i, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !14
  %10 = load ptr, ptr %tpname, align 8, !tbaa !4
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.38, ptr %tpname, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %12 = load i32, ptr %ref_bits, align 4, !tbaa !14
  %and5 = and i32 %12, %11
  store i32 %and5, ptr %ref_bits, align 4, !tbaa !14
  %13 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %14 = load i32, ptr %qualifier_bits, align 4, !tbaa !14
  %and6 = and i32 %14, %13
  store i32 %and6, ptr %qualifier_bits, align 4, !tbaa !14
  %15 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and7 = and i32 %15, 1024
  %cmp = icmp eq i32 %and7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %16 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %cmp8 = icmp eq i32 %16, 512
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  %17 = load i32, ptr %dimensions, align 4, !tbaa !14
  %cmp10 = icmp eq i32 %17, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  store i32 0, ptr %dimensions, align 4, !tbaa !14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %if.end
  %18 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function = getelementptr inbounds %struct._ValueInfo, ptr %18, i32 0, i32 11
  %19 = load ptr, ptr %Function, align 8, !tbaa !33
  %tobool14 = icmp ne ptr %19, null
  br i1 %tobool14, label %if.end22, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.end13
  %20 = load i32, ptr %qualifier_bits, align 4, !tbaa !14
  %and16 = and i32 %20, 65536
  %cmp17 = icmp ne i32 %and16, 0
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true15
  %21 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool19 = icmp ne ptr %21, null
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  %22 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %23 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 %23
  %call = call ptr @strcpy(ptr noundef %arrayidx, ptr noundef @.str.39) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  %24 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %24, 6
  store i64 %add, ptr %i, align 8, !tbaa !8
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true15, %if.end13
  %25 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function23 = getelementptr inbounds %struct._ValueInfo, ptr %25, i32 0, i32 11
  %26 = load ptr, ptr %Function23, align 8, !tbaa !33
  %tobool24 = icmp ne ptr %26, null
  br i1 %tobool24, label %if.then25, label %if.else65

if.then25:                                        ; preds = %if.end22
  %27 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool26 = icmp ne ptr %27, null
  br i1 %tobool26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then25
  %28 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function28 = getelementptr inbounds %struct._ValueInfo, ptr %28, i32 0, i32 11
  %29 = load ptr, ptr %Function28, align 8, !tbaa !33
  %30 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %31 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx29 = getelementptr inbounds i8, ptr %30, i64 %31
  %call30 = call i64 @vtkParse_FunctionInfoToString(ptr noundef %29, ptr noundef %arrayidx29, i32 noundef 64)
  %32 = load i64, ptr %i, align 8, !tbaa !8
  %add31 = add i64 %32, %call30
  store i64 %add31, ptr %i, align 8, !tbaa !8
  %33 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %34 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %34, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  %arrayidx32 = getelementptr inbounds i8, ptr %33, i64 %34
  store i8 40, ptr %arrayidx32, align 1, !tbaa !10
  %35 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function33 = getelementptr inbounds %struct._ValueInfo, ptr %35, i32 0, i32 11
  %36 = load ptr, ptr %Function33, align 8, !tbaa !33
  %Class34 = getelementptr inbounds %struct._FunctionInfo, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %Class34, align 8, !tbaa !57
  %tobool35 = icmp ne ptr %37, null
  br i1 %tobool35, label %if.then36, label %if.end49

if.then36:                                        ; preds = %if.then27
  %38 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %39 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx37 = getelementptr inbounds i8, ptr %38, i64 %39
  %40 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function38 = getelementptr inbounds %struct._ValueInfo, ptr %40, i32 0, i32 11
  %41 = load ptr, ptr %Function38, align 8, !tbaa !33
  %Class39 = getelementptr inbounds %struct._FunctionInfo, ptr %41, i32 0, i32 4
  %42 = load ptr, ptr %Class39, align 8, !tbaa !57
  %call40 = call ptr @strcpy(ptr noundef %arrayidx37, ptr noundef %42) #6
  %43 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function41 = getelementptr inbounds %struct._ValueInfo, ptr %43, i32 0, i32 11
  %44 = load ptr, ptr %Function41, align 8, !tbaa !33
  %Class42 = getelementptr inbounds %struct._FunctionInfo, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %Class42, align 8, !tbaa !57
  %call43 = call i64 @strlen(ptr noundef %45) #7
  %46 = load i64, ptr %i, align 8, !tbaa !8
  %add44 = add i64 %46, %call43
  store i64 %add44, ptr %i, align 8, !tbaa !8
  %47 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %48 = load i64, ptr %i, align 8, !tbaa !8
  %inc45 = add i64 %48, 1
  store i64 %inc45, ptr %i, align 8, !tbaa !8
  %arrayidx46 = getelementptr inbounds i8, ptr %47, i64 %48
  store i8 58, ptr %arrayidx46, align 1, !tbaa !10
  %49 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %50 = load i64, ptr %i, align 8, !tbaa !8
  %inc47 = add i64 %50, 1
  store i64 %inc47, ptr %i, align 8, !tbaa !8
  %arrayidx48 = getelementptr inbounds i8, ptr %49, i64 %50
  store i8 58, ptr %arrayidx48, align 1, !tbaa !10
  br label %if.end49

if.end49:                                         ; preds = %if.then36, %if.then27
  br label %if.end64

if.else:                                          ; preds = %if.then25
  %51 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function50 = getelementptr inbounds %struct._ValueInfo, ptr %51, i32 0, i32 11
  %52 = load ptr, ptr %Function50, align 8, !tbaa !33
  %call51 = call i64 @vtkParse_FunctionInfoToString(ptr noundef %52, ptr noundef null, i32 noundef 64)
  %53 = load i64, ptr %i, align 8, !tbaa !8
  %add52 = add i64 %53, %call51
  store i64 %add52, ptr %i, align 8, !tbaa !8
  %54 = load i64, ptr %i, align 8, !tbaa !8
  %add53 = add i64 %54, 1
  store i64 %add53, ptr %i, align 8, !tbaa !8
  %55 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function54 = getelementptr inbounds %struct._ValueInfo, ptr %55, i32 0, i32 11
  %56 = load ptr, ptr %Function54, align 8, !tbaa !33
  %Class55 = getelementptr inbounds %struct._FunctionInfo, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %Class55, align 8, !tbaa !57
  %tobool56 = icmp ne ptr %57, null
  br i1 %tobool56, label %if.then57, label %if.end63

if.then57:                                        ; preds = %if.else
  %58 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function58 = getelementptr inbounds %struct._ValueInfo, ptr %58, i32 0, i32 11
  %59 = load ptr, ptr %Function58, align 8, !tbaa !33
  %Class59 = getelementptr inbounds %struct._FunctionInfo, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %Class59, align 8, !tbaa !57
  %call60 = call i64 @strlen(ptr noundef %60) #7
  %61 = load i64, ptr %i, align 8, !tbaa !8
  %add61 = add i64 %61, %call60
  store i64 %add61, ptr %i, align 8, !tbaa !8
  %62 = load i64, ptr %i, align 8, !tbaa !8
  %add62 = add i64 %62, 2
  store i64 %add62, ptr %i, align 8, !tbaa !8
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.else
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end49
  br label %if.end78

if.else65:                                        ; preds = %if.end22
  %63 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool66 = icmp ne ptr %63, null
  br i1 %tobool66, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.else65
  %64 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %65 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx68 = getelementptr inbounds i8, ptr %64, i64 %65
  %66 = load ptr, ptr %tpname, align 8, !tbaa !4
  %call69 = call ptr @strcpy(ptr noundef %arrayidx68, ptr noundef %66) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.else65
  %67 = load ptr, ptr %tpname, align 8, !tbaa !4
  %call71 = call i64 @strlen(ptr noundef %67) #7
  %68 = load i64, ptr %i, align 8, !tbaa !8
  %add72 = add i64 %68, %call71
  store i64 %add72, ptr %i, align 8, !tbaa !8
  %69 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool73 = icmp ne ptr %69, null
  br i1 %tobool73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end70
  %70 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %71 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx75 = getelementptr inbounds i8, ptr %70, i64 %71
  store i8 32, ptr %arrayidx75, align 1, !tbaa !10
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end70
  %72 = load i64, ptr %i, align 8, !tbaa !8
  %inc77 = add i64 %72, 1
  store i64 %inc77, ptr %i, align 8, !tbaa !8
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %if.end64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end78
  %73 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %cmp79 = icmp ne i32 %73, 0
  br i1 %cmp79, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %74 = load i32, ptr %reverse_bits, align 4, !tbaa !14
  %shl = shl i32 %74, 2
  store i32 %shl, ptr %reverse_bits, align 4, !tbaa !14
  %75 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %and80 = and i32 %75, 1536
  %76 = load i32, ptr %reverse_bits, align 4, !tbaa !14
  %or = or i32 %76, %and80
  store i32 %or, ptr %reverse_bits, align 4, !tbaa !14
  %77 = load i32, ptr %pointer_bits, align 4, !tbaa !14
  %shr = lshr i32 %77, 2
  %and81 = and i32 %shr, 65024
  store i32 %and81, ptr %pointer_bits, align 4, !tbaa !14
  br label %while.cond, !llvm.loop !59

while.end:                                        ; preds = %while.cond
  br label %while.cond82

while.cond82:                                     ; preds = %if.end121, %while.end
  %78 = load i32, ptr %reverse_bits, align 4, !tbaa !14
  %cmp83 = icmp ne i32 %78, 0
  br i1 %cmp83, label %while.body84, label %while.end124

while.body84:                                     ; preds = %while.cond82
  %79 = load i32, ptr %reverse_bits, align 4, !tbaa !14
  %and85 = and i32 %79, 1536
  store i32 %and85, ptr %pointer_type, align 4, !tbaa !14
  %80 = load i32, ptr %pointer_type, align 4, !tbaa !14
  %cmp86 = icmp eq i32 %80, 1024
  br i1 %cmp86, label %if.then90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body84
  %81 = load i32, ptr %reverse_bits, align 4, !tbaa !14
  %cmp87 = icmp eq i32 %81, 512
  br i1 %cmp87, label %land.lhs.true88, label %if.else102

land.lhs.true88:                                  ; preds = %lor.lhs.false
  %82 = load i32, ptr %dimensions, align 4, !tbaa !14
  %cmp89 = icmp sgt i32 %82, 0
  br i1 %cmp89, label %if.then90, label %if.else102

if.then90:                                        ; preds = %land.lhs.true88, %while.body84
  %83 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and91 = and i32 %83, 1024
  %cmp92 = icmp eq i32 %and91, 0
  br i1 %cmp92, label %if.then93, label %if.end101

if.then93:                                        ; preds = %if.then90
  store i32 1, ptr %pointer_dimensions, align 4, !tbaa !14
  %84 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool94 = icmp ne ptr %84, null
  br i1 %tobool94, label %if.then95, label %if.end99

if.then95:                                        ; preds = %if.then93
  %85 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %86 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx96 = getelementptr inbounds i8, ptr %85, i64 %86
  store i8 40, ptr %arrayidx96, align 1, !tbaa !10
  %87 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %88 = load i64, ptr %i, align 8, !tbaa !8
  %add97 = add i64 %88, 1
  %arrayidx98 = getelementptr inbounds i8, ptr %87, i64 %add97
  store i8 42, ptr %arrayidx98, align 1, !tbaa !10
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.then93
  %89 = load i64, ptr %i, align 8, !tbaa !8
  %add100 = add i64 %89, 2
  store i64 %add100, ptr %i, align 8, !tbaa !8
  br label %if.end101

if.end101:                                        ; preds = %if.end99, %if.then90
  br label %while.end124

if.else102:                                       ; preds = %land.lhs.true88, %lor.lhs.false
  %90 = load i32, ptr %pointer_type, align 4, !tbaa !14
  %cmp103 = icmp eq i32 %90, 512
  br i1 %cmp103, label %if.then104, label %if.else110

if.then104:                                       ; preds = %if.else102
  %91 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool105 = icmp ne ptr %91, null
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.then104
  %92 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %93 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx107 = getelementptr inbounds i8, ptr %92, i64 %93
  store i8 42, ptr %arrayidx107, align 1, !tbaa !10
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then104
  %94 = load i64, ptr %i, align 8, !tbaa !8
  %inc109 = add i64 %94, 1
  store i64 %inc109, ptr %i, align 8, !tbaa !8
  br label %if.end120

if.else110:                                       ; preds = %if.else102
  %95 = load i32, ptr %pointer_type, align 4, !tbaa !14
  %cmp111 = icmp eq i32 %95, 1536
  br i1 %cmp111, label %if.then112, label %if.end119

if.then112:                                       ; preds = %if.else110
  %96 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool113 = icmp ne ptr %96, null
  br i1 %tobool113, label %if.then114, label %if.end117

if.then114:                                       ; preds = %if.then112
  %97 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %98 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx115 = getelementptr inbounds i8, ptr %97, i64 %98
  %call116 = call ptr @strcpy(ptr noundef %arrayidx115, ptr noundef @.str.40) #6
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.then112
  %99 = load i64, ptr %i, align 8, !tbaa !8
  %add118 = add i64 %99, 7
  store i64 %add118, ptr %i, align 8, !tbaa !8
  br label %if.end119

if.end119:                                        ; preds = %if.end117, %if.else110
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.end108
  br label %if.end121

if.end121:                                        ; preds = %if.end120
  %100 = load i32, ptr %reverse_bits, align 4, !tbaa !14
  %shr122 = lshr i32 %100, 2
  %and123 = and i32 %shr122, 65024
  store i32 %and123, ptr %reverse_bits, align 4, !tbaa !14
  br label %while.cond82, !llvm.loop !60

while.end124:                                     ; preds = %if.end101, %while.cond82
  %101 = load i32, ptr %ref_bits, align 4, !tbaa !14
  %and125 = and i32 %101, 256
  %cmp126 = icmp ne i32 %and125, 0
  br i1 %cmp126, label %if.then127, label %if.end142

if.then127:                                       ; preds = %while.end124
  %102 = load i32, ptr %ref_bits, align 4, !tbaa !14
  %and128 = and i32 %102, 4194304
  %cmp129 = icmp ne i32 %and128, 0
  br i1 %cmp129, label %if.then130, label %if.end136

if.then130:                                       ; preds = %if.then127
  %103 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool131 = icmp ne ptr %103, null
  br i1 %tobool131, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.then130
  %104 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %105 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx133 = getelementptr inbounds i8, ptr %104, i64 %105
  store i8 38, ptr %arrayidx133, align 1, !tbaa !10
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.then130
  %106 = load i64, ptr %i, align 8, !tbaa !8
  %inc135 = add i64 %106, 1
  store i64 %inc135, ptr %i, align 8, !tbaa !8
  br label %if.end136

if.end136:                                        ; preds = %if.end134, %if.then127
  %107 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool137 = icmp ne ptr %107, null
  br i1 %tobool137, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.end136
  %108 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %109 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx139 = getelementptr inbounds i8, ptr %108, i64 %109
  store i8 38, ptr %arrayidx139, align 1, !tbaa !10
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.end136
  %110 = load i64, ptr %i, align 8, !tbaa !8
  %inc141 = add i64 %110, 1
  store i64 %inc141, ptr %i, align 8, !tbaa !8
  br label %if.end142

if.end142:                                        ; preds = %if.end140, %while.end124
  %111 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Name = getelementptr inbounds %struct._ValueInfo, ptr %111, i32 0, i32 2
  %112 = load ptr, ptr %Name, align 8, !tbaa !34
  %tobool143 = icmp ne ptr %112, null
  br i1 %tobool143, label %land.lhs.true144, label %if.end177

land.lhs.true144:                                 ; preds = %if.end142
  %113 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and145 = and i32 %113, 16
  %cmp146 = icmp ne i32 %and145, 0
  br i1 %cmp146, label %if.then147, label %if.end177

if.then147:                                       ; preds = %land.lhs.true144
  %114 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool148 = icmp ne ptr %114, null
  br i1 %tobool148, label %if.then149, label %if.end153

if.then149:                                       ; preds = %if.then147
  %115 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %116 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx150 = getelementptr inbounds i8, ptr %115, i64 %116
  %117 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Name151 = getelementptr inbounds %struct._ValueInfo, ptr %117, i32 0, i32 2
  %118 = load ptr, ptr %Name151, align 8, !tbaa !34
  %call152 = call ptr @strcpy(ptr noundef %arrayidx150, ptr noundef %118) #6
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %if.then147
  %119 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Name154 = getelementptr inbounds %struct._ValueInfo, ptr %119, i32 0, i32 2
  %120 = load ptr, ptr %Name154, align 8, !tbaa !34
  %call155 = call i64 @strlen(ptr noundef %120) #7
  %121 = load i64, ptr %i, align 8, !tbaa !8
  %add156 = add i64 %121, %call155
  store i64 %add156, ptr %i, align 8, !tbaa !8
  %122 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Value = getelementptr inbounds %struct._ValueInfo, ptr %122, i32 0, i32 4
  %123 = load ptr, ptr %Value, align 8, !tbaa !16
  %tobool157 = icmp ne ptr %123, null
  br i1 %tobool157, label %land.lhs.true158, label %if.end176

land.lhs.true158:                                 ; preds = %if.end153
  %124 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and159 = and i32 %124, 32
  %cmp160 = icmp ne i32 %and159, 0
  br i1 %cmp160, label %if.then161, label %if.end176

if.then161:                                       ; preds = %land.lhs.true158
  %125 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool162 = icmp ne ptr %125, null
  br i1 %tobool162, label %if.then163, label %if.end165

if.then163:                                       ; preds = %if.then161
  %126 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %127 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx164 = getelementptr inbounds i8, ptr %126, i64 %127
  store i8 61, ptr %arrayidx164, align 1, !tbaa !10
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.then161
  %128 = load i64, ptr %i, align 8, !tbaa !8
  %inc166 = add i64 %128, 1
  store i64 %inc166, ptr %i, align 8, !tbaa !8
  %129 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool167 = icmp ne ptr %129, null
  br i1 %tobool167, label %if.then168, label %if.end172

if.then168:                                       ; preds = %if.end165
  %130 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %131 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx169 = getelementptr inbounds i8, ptr %130, i64 %131
  %132 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Value170 = getelementptr inbounds %struct._ValueInfo, ptr %132, i32 0, i32 4
  %133 = load ptr, ptr %Value170, align 8, !tbaa !16
  %call171 = call ptr @strcpy(ptr noundef %arrayidx169, ptr noundef %133) #6
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %if.end165
  %134 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Value173 = getelementptr inbounds %struct._ValueInfo, ptr %134, i32 0, i32 4
  %135 = load ptr, ptr %Value173, align 8, !tbaa !16
  %call174 = call i64 @strlen(ptr noundef %135) #7
  %136 = load i64, ptr %i, align 8, !tbaa !8
  %add175 = add i64 %136, %call174
  store i64 %add175, ptr %i, align 8, !tbaa !8
  br label %if.end176

if.end176:                                        ; preds = %if.end172, %land.lhs.true158, %if.end153
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %land.lhs.true144, %if.end142
  store i32 0, ptr %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end177
  %137 = load i32, ptr %j, align 4, !tbaa !14
  %138 = load i32, ptr %pointer_dimensions, align 4, !tbaa !14
  %cmp178 = icmp slt i32 %137, %138
  br i1 %cmp178, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %139 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool179 = icmp ne ptr %139, null
  br i1 %tobool179, label %if.then180, label %if.end182

if.then180:                                       ; preds = %for.body
  %140 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %141 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx181 = getelementptr inbounds i8, ptr %140, i64 %141
  store i8 41, ptr %arrayidx181, align 1, !tbaa !10
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %for.body
  %142 = load i64, ptr %i, align 8, !tbaa !8
  %inc183 = add i64 %142, 1
  store i64 %inc183, ptr %i, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end182
  %143 = load i32, ptr %j, align 4, !tbaa !14
  %inc184 = add nsw i32 %143, 1
  store i32 %inc184, ptr %j, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %144 = load i32, ptr %pointer_dimensions, align 4, !tbaa !14
  store i32 %144, ptr %j, align 4, !tbaa !14
  br label %for.cond185

for.cond185:                                      ; preds = %for.inc215, %for.end
  %145 = load i32, ptr %j, align 4, !tbaa !14
  %146 = load i32, ptr %dimensions, align 4, !tbaa !14
  %cmp186 = icmp slt i32 %145, %146
  br i1 %cmp186, label %for.body187, label %for.end217

for.body187:                                      ; preds = %for.cond185
  %147 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool188 = icmp ne ptr %147, null
  br i1 %tobool188, label %if.then189, label %if.end191

if.then189:                                       ; preds = %for.body187
  %148 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %149 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx190 = getelementptr inbounds i8, ptr %148, i64 %149
  store i8 91, ptr %arrayidx190, align 1, !tbaa !10
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %for.body187
  %150 = load i64, ptr %i, align 8, !tbaa !8
  %inc192 = add i64 %150, 1
  store i64 %inc192, ptr %i, align 8, !tbaa !8
  %151 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Dimensions = getelementptr inbounds %struct._ValueInfo, ptr %151, i32 0, i32 10
  %152 = load ptr, ptr %Dimensions, align 8, !tbaa !19
  %153 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom = sext i32 %153 to i64
  %arrayidx193 = getelementptr inbounds ptr, ptr %152, i64 %idxprom
  %154 = load ptr, ptr %arrayidx193, align 8, !tbaa !4
  %tobool194 = icmp ne ptr %154, null
  br i1 %tobool194, label %if.then195, label %if.end209

if.then195:                                       ; preds = %if.end191
  %155 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool196 = icmp ne ptr %155, null
  br i1 %tobool196, label %if.then197, label %if.end203

if.then197:                                       ; preds = %if.then195
  %156 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %157 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx198 = getelementptr inbounds i8, ptr %156, i64 %157
  %158 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Dimensions199 = getelementptr inbounds %struct._ValueInfo, ptr %158, i32 0, i32 10
  %159 = load ptr, ptr %Dimensions199, align 8, !tbaa !19
  %160 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom200 = sext i32 %160 to i64
  %arrayidx201 = getelementptr inbounds ptr, ptr %159, i64 %idxprom200
  %161 = load ptr, ptr %arrayidx201, align 8, !tbaa !4
  %call202 = call ptr @strcpy(ptr noundef %arrayidx198, ptr noundef %161) #6
  br label %if.end203

if.end203:                                        ; preds = %if.then197, %if.then195
  %162 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Dimensions204 = getelementptr inbounds %struct._ValueInfo, ptr %162, i32 0, i32 10
  %163 = load ptr, ptr %Dimensions204, align 8, !tbaa !19
  %164 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom205 = sext i32 %164 to i64
  %arrayidx206 = getelementptr inbounds ptr, ptr %163, i64 %idxprom205
  %165 = load ptr, ptr %arrayidx206, align 8, !tbaa !4
  %call207 = call i64 @strlen(ptr noundef %165) #7
  %166 = load i64, ptr %i, align 8, !tbaa !8
  %add208 = add i64 %166, %call207
  store i64 %add208, ptr %i, align 8, !tbaa !8
  br label %if.end209

if.end209:                                        ; preds = %if.end203, %if.end191
  %167 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool210 = icmp ne ptr %167, null
  br i1 %tobool210, label %if.then211, label %if.end213

if.then211:                                       ; preds = %if.end209
  %168 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %169 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx212 = getelementptr inbounds i8, ptr %168, i64 %169
  store i8 93, ptr %arrayidx212, align 1, !tbaa !10
  br label %if.end213

if.end213:                                        ; preds = %if.then211, %if.end209
  %170 = load i64, ptr %i, align 8, !tbaa !8
  %inc214 = add i64 %170, 1
  store i64 %inc214, ptr %i, align 8, !tbaa !8
  br label %for.inc215

for.inc215:                                       ; preds = %if.end213
  %171 = load i32, ptr %j, align 4, !tbaa !14
  %inc216 = add nsw i32 %171, 1
  store i32 %inc216, ptr %j, align 4, !tbaa !14
  br label %for.cond185, !llvm.loop !62

for.end217:                                       ; preds = %for.cond185
  %172 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function218 = getelementptr inbounds %struct._ValueInfo, ptr %172, i32 0, i32 11
  %173 = load ptr, ptr %Function218, align 8, !tbaa !33
  %tobool219 = icmp ne ptr %173, null
  br i1 %tobool219, label %if.then220, label %if.end235

if.then220:                                       ; preds = %for.end217
  %174 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool221 = icmp ne ptr %174, null
  br i1 %tobool221, label %if.then222, label %if.else229

if.then222:                                       ; preds = %if.then220
  %175 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %176 = load i64, ptr %i, align 8, !tbaa !8
  %inc223 = add i64 %176, 1
  store i64 %inc223, ptr %i, align 8, !tbaa !8
  %arrayidx224 = getelementptr inbounds i8, ptr %175, i64 %176
  store i8 41, ptr %arrayidx224, align 1, !tbaa !10
  %177 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function225 = getelementptr inbounds %struct._ValueInfo, ptr %177, i32 0, i32 11
  %178 = load ptr, ptr %Function225, align 8, !tbaa !33
  %179 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %180 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx226 = getelementptr inbounds i8, ptr %179, i64 %180
  %call227 = call i64 @vtkParse_FunctionInfoToString(ptr noundef %178, ptr noundef %arrayidx226, i32 noundef 65664)
  %181 = load i64, ptr %i, align 8, !tbaa !8
  %add228 = add i64 %181, %call227
  store i64 %add228, ptr %i, align 8, !tbaa !8
  br label %if.end234

if.else229:                                       ; preds = %if.then220
  %182 = load i64, ptr %i, align 8, !tbaa !8
  %inc230 = add i64 %182, 1
  store i64 %inc230, ptr %i, align 8, !tbaa !8
  %183 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function231 = getelementptr inbounds %struct._ValueInfo, ptr %183, i32 0, i32 11
  %184 = load ptr, ptr %Function231, align 8, !tbaa !33
  %call232 = call i64 @vtkParse_FunctionInfoToString(ptr noundef %184, ptr noundef null, i32 noundef 65664)
  %185 = load i64, ptr %i, align 8, !tbaa !8
  %add233 = add i64 %185, %call232
  store i64 %add233, ptr %i, align 8, !tbaa !8
  br label %if.end234

if.end234:                                        ; preds = %if.else229, %if.then222
  br label %if.end235

if.end235:                                        ; preds = %if.end234, %for.end217
  %186 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool236 = icmp ne ptr %186, null
  br i1 %tobool236, label %if.then237, label %if.end239

if.then237:                                       ; preds = %if.end235
  %187 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %188 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx238 = getelementptr inbounds i8, ptr %187, i64 %188
  store i8 0, ptr %arrayidx238, align 1, !tbaa !10
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.end235
  %189 = load i64, ptr %i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pointer_dimensions) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %dimensions) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpname) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pointer_type) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %reverse_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %qualifier_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref_bits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pointer_bits) #6
  ret i64 %189
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i64 @vtkParse_FunctionInfoToString(ptr noundef %func, ptr noundef %text, i32 noundef %flags) #0 {
entry:
  %func.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i64, align 8
  store ptr %func, ptr %func.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  store i64 0, ptr %k, align 8, !tbaa !8
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Template = getelementptr inbounds %struct._FunctionInfo, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %Template, align 8, !tbaa !63
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and = and i32 %2, -268435456
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Template3 = getelementptr inbounds %struct._FunctionInfo, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %Template3, align 8, !tbaa !63
  %6 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %7 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %7
  %8 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %call = call i64 @vtkParse_TemplateInfoToString(ptr noundef %5, ptr noundef %arrayidx, i32 noundef %8)
  %9 = load i64, ptr %k, align 8, !tbaa !8
  %add = add i64 %9, %call
  store i64 %add, ptr %k, align 8, !tbaa !8
  %10 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %11 = load i64, ptr %k, align 8, !tbaa !8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %k, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 %11
  store i8 32, ptr %arrayidx4, align 1, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Template5 = getelementptr inbounds %struct._FunctionInfo, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %Template5, align 8, !tbaa !63
  %14 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %call6 = call i64 @vtkParse_TemplateInfoToString(ptr noundef %13, ptr noundef null, i32 noundef %14)
  %15 = load i64, ptr %k, align 8, !tbaa !8
  %add7 = add i64 %15, %call6
  store i64 %add7, ptr %k, align 8, !tbaa !8
  %16 = load i64, ptr %k, align 8, !tbaa !8
  %inc8 = add i64 %16, 1
  store i64 %inc8, ptr %k, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true, %entry
  %17 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %IsStatic = getelementptr inbounds %struct._FunctionInfo, ptr %17, i32 0, i32 18
  %18 = load i32, ptr %IsStatic, align 8, !tbaa !64
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %land.lhs.true11, label %if.end21

land.lhs.true11:                                  ; preds = %if.end9
  %19 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and12 = and i32 %19, 131072
  %cmp13 = icmp ne i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %land.lhs.true11
  %20 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool15 = icmp ne ptr %20, null
  br i1 %tobool15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then14
  %21 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %22 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx17 = getelementptr inbounds i8, ptr %21, i64 %22
  %call18 = call ptr @strcpy(ptr noundef %arrayidx17, ptr noundef @.str.42) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then14
  %23 = load i64, ptr %k, align 8, !tbaa !8
  %add20 = add i64 %23, 7
  store i64 %add20, ptr %k, align 8, !tbaa !8
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %land.lhs.true11, %if.end9
  %24 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %IsVirtual = getelementptr inbounds %struct._FunctionInfo, ptr %24, i32 0, i32 19
  %25 = load i32, ptr %IsVirtual, align 4, !tbaa !65
  %tobool22 = icmp ne i32 %25, 0
  br i1 %tobool22, label %land.lhs.true23, label %if.end33

land.lhs.true23:                                  ; preds = %if.end21
  %26 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and24 = and i32 %26, 262144
  %cmp25 = icmp ne i32 %and24, 0
  br i1 %cmp25, label %if.then26, label %if.end33

if.then26:                                        ; preds = %land.lhs.true23
  %27 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool27 = icmp ne ptr %27, null
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then26
  %28 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %29 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx29 = getelementptr inbounds i8, ptr %28, i64 %29
  %call30 = call ptr @strcpy(ptr noundef %arrayidx29, ptr noundef @.str.43) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then26
  %30 = load i64, ptr %k, align 8, !tbaa !8
  %add32 = add i64 %30, 8
  store i64 %add32, ptr %k, align 8, !tbaa !8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %land.lhs.true23, %if.end21
  %31 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %IsExplicit = getelementptr inbounds %struct._FunctionInfo, ptr %31, i32 0, i32 25
  %32 = load i32, ptr %IsExplicit, align 4, !tbaa !66
  %tobool34 = icmp ne i32 %32, 0
  br i1 %tobool34, label %land.lhs.true35, label %if.end45

land.lhs.true35:                                  ; preds = %if.end33
  %33 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and36 = and i32 %33, 524288
  %cmp37 = icmp ne i32 %and36, 0
  br i1 %cmp37, label %if.then38, label %if.end45

if.then38:                                        ; preds = %land.lhs.true35
  %34 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool39 = icmp ne ptr %34, null
  br i1 %tobool39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then38
  %35 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %36 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx41 = getelementptr inbounds i8, ptr %35, i64 %36
  %call42 = call ptr @strcpy(ptr noundef %arrayidx41, ptr noundef @.str.44) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then38
  %37 = load i64, ptr %k, align 8, !tbaa !8
  %add44 = add i64 %37, 9
  store i64 %add44, ptr %k, align 8, !tbaa !8
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %land.lhs.true35, %if.end33
  %38 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %ReturnValue = getelementptr inbounds %struct._FunctionInfo, ptr %38, i32 0, i32 9
  %39 = load ptr, ptr %ReturnValue, align 8, !tbaa !67
  %tobool46 = icmp ne ptr %39, null
  br i1 %tobool46, label %land.lhs.true47, label %if.end62

land.lhs.true47:                                  ; preds = %if.end45
  %40 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and48 = and i32 %40, 64
  %cmp49 = icmp ne i32 %and48, 0
  br i1 %cmp49, label %if.then50, label %if.end62

if.then50:                                        ; preds = %land.lhs.true47
  %41 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool51 = icmp ne ptr %41, null
  br i1 %tobool51, label %if.then52, label %if.else57

if.then52:                                        ; preds = %if.then50
  %42 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %ReturnValue53 = getelementptr inbounds %struct._FunctionInfo, ptr %42, i32 0, i32 9
  %43 = load ptr, ptr %ReturnValue53, align 8, !tbaa !67
  %44 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %45 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx54 = getelementptr inbounds i8, ptr %44, i64 %45
  %call55 = call i64 @vtkParse_ValueInfoToString(ptr noundef %43, ptr noundef %arrayidx54, i32 noundef -1041)
  %46 = load i64, ptr %k, align 8, !tbaa !8
  %add56 = add i64 %46, %call55
  store i64 %add56, ptr %k, align 8, !tbaa !8
  br label %if.end61

if.else57:                                        ; preds = %if.then50
  %47 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %ReturnValue58 = getelementptr inbounds %struct._FunctionInfo, ptr %47, i32 0, i32 9
  %48 = load ptr, ptr %ReturnValue58, align 8, !tbaa !67
  %call59 = call i64 @vtkParse_ValueInfoToString(ptr noundef %48, ptr noundef null, i32 noundef -1041)
  %49 = load i64, ptr %k, align 8, !tbaa !8
  %add60 = add i64 %49, %call59
  store i64 %add60, ptr %k, align 8, !tbaa !8
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.then52
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.lhs.true47, %if.end45
  %50 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and63 = and i32 %50, 64
  %cmp64 = icmp ne i32 %and63, 0
  br i1 %cmp64, label %land.lhs.true65, label %if.end115

land.lhs.true65:                                  ; preds = %if.end62
  %51 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and66 = and i32 %51, 128
  %cmp67 = icmp ne i32 %and66, 0
  br i1 %cmp67, label %if.then68, label %if.end115

if.then68:                                        ; preds = %land.lhs.true65
  %52 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Name = getelementptr inbounds %struct._FunctionInfo, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %Name, align 8, !tbaa !68
  %tobool69 = icmp ne ptr %53, null
  br i1 %tobool69, label %if.then70, label %if.else80

if.then70:                                        ; preds = %if.then68
  %54 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool71 = icmp ne ptr %54, null
  br i1 %tobool71, label %if.then72, label %if.end76

if.then72:                                        ; preds = %if.then70
  %55 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %56 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx73 = getelementptr inbounds i8, ptr %55, i64 %56
  %57 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Name74 = getelementptr inbounds %struct._FunctionInfo, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %Name74, align 8, !tbaa !68
  %call75 = call ptr @strcpy(ptr noundef %arrayidx73, ptr noundef %58) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then70
  %59 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Name77 = getelementptr inbounds %struct._FunctionInfo, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %Name77, align 8, !tbaa !68
  %call78 = call i64 @strlen(ptr noundef %60) #7
  %61 = load i64, ptr %k, align 8, !tbaa !8
  %add79 = add i64 %61, %call78
  store i64 %add79, ptr %k, align 8, !tbaa !8
  br label %if.end114

if.else80:                                        ; preds = %if.then68
  %62 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool81 = icmp ne ptr %62, null
  br i1 %tobool81, label %if.then82, label %if.else102

if.then82:                                        ; preds = %if.else80
  %63 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %64 = load i64, ptr %k, align 8, !tbaa !8
  %inc83 = add i64 %64, 1
  store i64 %inc83, ptr %k, align 8, !tbaa !8
  %arrayidx84 = getelementptr inbounds i8, ptr %63, i64 %64
  store i8 40, ptr %arrayidx84, align 1, !tbaa !10
  %65 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Class = getelementptr inbounds %struct._FunctionInfo, ptr %65, i32 0, i32 4
  %66 = load ptr, ptr %Class, align 8, !tbaa !57
  %tobool85 = icmp ne ptr %66, null
  br i1 %tobool85, label %if.then86, label %if.end97

if.then86:                                        ; preds = %if.then82
  %67 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %68 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx87 = getelementptr inbounds i8, ptr %67, i64 %68
  %69 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Class88 = getelementptr inbounds %struct._FunctionInfo, ptr %69, i32 0, i32 4
  %70 = load ptr, ptr %Class88, align 8, !tbaa !57
  %call89 = call ptr @strcpy(ptr noundef %arrayidx87, ptr noundef %70) #6
  %71 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Class90 = getelementptr inbounds %struct._FunctionInfo, ptr %71, i32 0, i32 4
  %72 = load ptr, ptr %Class90, align 8, !tbaa !57
  %call91 = call i64 @strlen(ptr noundef %72) #7
  %73 = load i64, ptr %k, align 8, !tbaa !8
  %add92 = add i64 %73, %call91
  store i64 %add92, ptr %k, align 8, !tbaa !8
  %74 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %75 = load i64, ptr %k, align 8, !tbaa !8
  %inc93 = add i64 %75, 1
  store i64 %inc93, ptr %k, align 8, !tbaa !8
  %arrayidx94 = getelementptr inbounds i8, ptr %74, i64 %75
  store i8 58, ptr %arrayidx94, align 1, !tbaa !10
  %76 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %77 = load i64, ptr %k, align 8, !tbaa !8
  %inc95 = add i64 %77, 1
  store i64 %inc95, ptr %k, align 8, !tbaa !8
  %arrayidx96 = getelementptr inbounds i8, ptr %76, i64 %77
  store i8 58, ptr %arrayidx96, align 1, !tbaa !10
  br label %if.end97

if.end97:                                         ; preds = %if.then86, %if.then82
  %78 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %79 = load i64, ptr %k, align 8, !tbaa !8
  %inc98 = add i64 %79, 1
  store i64 %inc98, ptr %k, align 8, !tbaa !8
  %arrayidx99 = getelementptr inbounds i8, ptr %78, i64 %79
  store i8 42, ptr %arrayidx99, align 1, !tbaa !10
  %80 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %81 = load i64, ptr %k, align 8, !tbaa !8
  %inc100 = add i64 %81, 1
  store i64 %inc100, ptr %k, align 8, !tbaa !8
  %arrayidx101 = getelementptr inbounds i8, ptr %80, i64 %81
  store i8 41, ptr %arrayidx101, align 1, !tbaa !10
  br label %if.end113

if.else102:                                       ; preds = %if.else80
  %82 = load i64, ptr %k, align 8, !tbaa !8
  %inc103 = add i64 %82, 1
  store i64 %inc103, ptr %k, align 8, !tbaa !8
  %83 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Class104 = getelementptr inbounds %struct._FunctionInfo, ptr %83, i32 0, i32 4
  %84 = load ptr, ptr %Class104, align 8, !tbaa !57
  %tobool105 = icmp ne ptr %84, null
  br i1 %tobool105, label %if.then106, label %if.end111

if.then106:                                       ; preds = %if.else102
  %85 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Class107 = getelementptr inbounds %struct._FunctionInfo, ptr %85, i32 0, i32 4
  %86 = load ptr, ptr %Class107, align 8, !tbaa !57
  %call108 = call i64 @strlen(ptr noundef %86) #7
  %87 = load i64, ptr %k, align 8, !tbaa !8
  %add109 = add i64 %87, %call108
  store i64 %add109, ptr %k, align 8, !tbaa !8
  %88 = load i64, ptr %k, align 8, !tbaa !8
  %add110 = add i64 %88, 2
  store i64 %add110, ptr %k, align 8, !tbaa !8
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.else102
  %89 = load i64, ptr %k, align 8, !tbaa !8
  %add112 = add i64 %89, 2
  store i64 %add112, ptr %k, align 8, !tbaa !8
  br label %if.end113

if.end113:                                        ; preds = %if.end111, %if.end97
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end76
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %land.lhs.true65, %if.end62
  %90 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and116 = and i32 %90, 128
  %cmp117 = icmp ne i32 %and116, 0
  br i1 %cmp117, label %if.then118, label %if.end161

if.then118:                                       ; preds = %if.end115
  %91 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool119 = icmp ne ptr %91, null
  br i1 %tobool119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.then118
  %92 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %93 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx121 = getelementptr inbounds i8, ptr %92, i64 %93
  store i8 40, ptr %arrayidx121, align 1, !tbaa !10
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.then118
  %94 = load i64, ptr %k, align 8, !tbaa !8
  %inc123 = add i64 %94, 1
  store i64 %inc123, ptr %k, align 8, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end122
  %95 = load i32, ptr %i, align 4, !tbaa !14
  %96 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %NumberOfParameters = getelementptr inbounds %struct._FunctionInfo, ptr %96, i32 0, i32 7
  %97 = load i32, ptr %NumberOfParameters, align 8, !tbaa !69
  %cmp124 = icmp slt i32 %95, %97
  br i1 %cmp124, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load i32, ptr %i, align 4, !tbaa !14
  %cmp125 = icmp ne i32 %98, 0
  br i1 %cmp125, label %if.then126, label %if.end134

if.then126:                                       ; preds = %for.body
  %99 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool127 = icmp ne ptr %99, null
  br i1 %tobool127, label %if.then128, label %if.end132

if.then128:                                       ; preds = %if.then126
  %100 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %101 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx129 = getelementptr inbounds i8, ptr %100, i64 %101
  store i8 44, ptr %arrayidx129, align 1, !tbaa !10
  %102 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %103 = load i64, ptr %k, align 8, !tbaa !8
  %add130 = add i64 %103, 1
  %arrayidx131 = getelementptr inbounds i8, ptr %102, i64 %add130
  store i8 32, ptr %arrayidx131, align 1, !tbaa !10
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.then126
  %104 = load i64, ptr %k, align 8, !tbaa !8
  %add133 = add i64 %104, 2
  store i64 %add133, ptr %k, align 8, !tbaa !8
  br label %if.end134

if.end134:                                        ; preds = %if.end132, %for.body
  %105 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool135 = icmp ne ptr %105, null
  br i1 %tobool135, label %if.then136, label %if.else146

if.then136:                                       ; preds = %if.end134
  %106 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Parameters = getelementptr inbounds %struct._FunctionInfo, ptr %106, i32 0, i32 8
  %107 = load ptr, ptr %Parameters, align 8, !tbaa !70
  %108 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %108 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %107, i64 %idxprom
  %109 = load ptr, ptr %arrayidx137, align 8, !tbaa !4
  %110 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %111 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx138 = getelementptr inbounds i8, ptr %110, i64 %111
  %112 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and139 = and i32 %112, 48
  %or = or i32 -49, %and139
  %call140 = call i64 @vtkParse_ValueInfoToString(ptr noundef %109, ptr noundef %arrayidx138, i32 noundef %or)
  %113 = load i64, ptr %k, align 8, !tbaa !8
  %add141 = add i64 %113, %call140
  store i64 %add141, ptr %k, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then136
  %114 = load i64, ptr %k, align 8, !tbaa !8
  %cmp142 = icmp ugt i64 %114, 0
  br i1 %cmp142, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %115 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %116 = load i64, ptr %k, align 8, !tbaa !8
  %sub = sub i64 %116, 1
  %arrayidx143 = getelementptr inbounds i8, ptr %115, i64 %sub
  %117 = load i8, ptr %arrayidx143, align 1, !tbaa !10
  %conv = sext i8 %117 to i32
  %cmp144 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %118 = phi i1 [ false, %while.cond ], [ %cmp144, %land.rhs ]
  br i1 %118, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %119 = load i64, ptr %k, align 8, !tbaa !8
  %dec = add i64 %119, -1
  store i64 %dec, ptr %k, align 8, !tbaa !8
  br label %while.cond, !llvm.loop !71

while.end:                                        ; preds = %land.end
  br label %if.end154

if.else146:                                       ; preds = %if.end134
  %120 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %Parameters147 = getelementptr inbounds %struct._FunctionInfo, ptr %120, i32 0, i32 8
  %121 = load ptr, ptr %Parameters147, align 8, !tbaa !70
  %122 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom148 = sext i32 %122 to i64
  %arrayidx149 = getelementptr inbounds ptr, ptr %121, i64 %idxprom148
  %123 = load ptr, ptr %arrayidx149, align 8, !tbaa !4
  %124 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and150 = and i32 %124, 48
  %or151 = or i32 -49, %and150
  %call152 = call i64 @vtkParse_ValueInfoToString(ptr noundef %123, ptr noundef null, i32 noundef %or151)
  %125 = load i64, ptr %k, align 8, !tbaa !8
  %add153 = add i64 %125, %call152
  store i64 %add153, ptr %k, align 8, !tbaa !8
  br label %if.end154

if.end154:                                        ; preds = %if.else146, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end154
  %126 = load i32, ptr %i, align 4, !tbaa !14
  %inc155 = add nsw i32 %126, 1
  store i32 %inc155, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  %127 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool156 = icmp ne ptr %127, null
  br i1 %tobool156, label %if.then157, label %if.end159

if.then157:                                       ; preds = %for.end
  %128 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %129 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx158 = getelementptr inbounds i8, ptr %128, i64 %129
  store i8 41, ptr %arrayidx158, align 1, !tbaa !10
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %for.end
  %130 = load i64, ptr %k, align 8, !tbaa !8
  %inc160 = add i64 %130, 1
  store i64 %inc160, ptr %k, align 8, !tbaa !8
  br label %if.end161

if.end161:                                        ; preds = %if.end159, %if.end115
  %131 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %IsConst = getelementptr inbounds %struct._FunctionInfo, ptr %131, i32 0, i32 21
  %132 = load i32, ptr %IsConst, align 4, !tbaa !73
  %tobool162 = icmp ne i32 %132, 0
  br i1 %tobool162, label %land.lhs.true163, label %if.end174

land.lhs.true163:                                 ; preds = %if.end161
  %133 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and164 = and i32 %133, 65536
  %cmp165 = icmp ne i32 %and164, 0
  br i1 %cmp165, label %if.then167, label %if.end174

if.then167:                                       ; preds = %land.lhs.true163
  %134 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool168 = icmp ne ptr %134, null
  br i1 %tobool168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.then167
  %135 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %136 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx170 = getelementptr inbounds i8, ptr %135, i64 %136
  %call171 = call ptr @strcpy(ptr noundef %arrayidx170, ptr noundef @.str.45) #6
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.then167
  %137 = load i64, ptr %k, align 8, !tbaa !8
  %add173 = add i64 %137, 6
  store i64 %add173, ptr %k, align 8, !tbaa !8
  br label %if.end174

if.end174:                                        ; preds = %if.end172, %land.lhs.true163, %if.end161
  %138 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %IsFinal = getelementptr inbounds %struct._FunctionInfo, ptr %138, i32 0, i32 23
  %139 = load i32, ptr %IsFinal, align 4, !tbaa !74
  %tobool175 = icmp ne i32 %139, 0
  br i1 %tobool175, label %land.lhs.true176, label %if.end187

land.lhs.true176:                                 ; preds = %if.end174
  %140 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and177 = and i32 %140, 251658240
  %cmp178 = icmp ne i32 %and177, 0
  br i1 %cmp178, label %if.then180, label %if.end187

if.then180:                                       ; preds = %land.lhs.true176
  %141 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool181 = icmp ne ptr %141, null
  br i1 %tobool181, label %if.then182, label %if.end185

if.then182:                                       ; preds = %if.then180
  %142 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %143 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx183 = getelementptr inbounds i8, ptr %142, i64 %143
  %call184 = call ptr @strcpy(ptr noundef %arrayidx183, ptr noundef @.str.46) #6
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.then180
  %144 = load i64, ptr %k, align 8, !tbaa !8
  %add186 = add i64 %144, 6
  store i64 %add186, ptr %k, align 8, !tbaa !8
  br label %if.end187

if.end187:                                        ; preds = %if.end185, %land.lhs.true176, %if.end174
  %145 = load ptr, ptr %func.addr, align 8, !tbaa !4
  %IsPureVirtual = getelementptr inbounds %struct._FunctionInfo, ptr %145, i32 0, i32 20
  %146 = load i32, ptr %IsPureVirtual, align 8, !tbaa !75
  %tobool188 = icmp ne i32 %146, 0
  br i1 %tobool188, label %land.lhs.true189, label %if.end200

land.lhs.true189:                                 ; preds = %if.end187
  %147 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %and190 = and i32 %147, 251658240
  %cmp191 = icmp ne i32 %and190, 0
  br i1 %cmp191, label %if.then193, label %if.end200

if.then193:                                       ; preds = %land.lhs.true189
  %148 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool194 = icmp ne ptr %148, null
  br i1 %tobool194, label %if.then195, label %if.end198

if.then195:                                       ; preds = %if.then193
  %149 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %150 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx196 = getelementptr inbounds i8, ptr %149, i64 %150
  %call197 = call ptr @strcpy(ptr noundef %arrayidx196, ptr noundef @.str.47) #6
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.then193
  %151 = load i64, ptr %k, align 8, !tbaa !8
  %add199 = add i64 %151, 4
  store i64 %add199, ptr %k, align 8, !tbaa !8
  br label %if.end200

if.end200:                                        ; preds = %if.end198, %land.lhs.true189, %if.end187
  %152 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool201 = icmp ne ptr %152, null
  br i1 %tobool201, label %if.then202, label %if.end204

if.then202:                                       ; preds = %if.end200
  %153 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %154 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx203 = getelementptr inbounds i8, ptr %153, i64 %154
  store i8 0, ptr %arrayidx203, align 1, !tbaa !10
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %if.end200
  %155 = load i64, ptr %k, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i64 %155
}

; Function Attrs: nounwind uwtable
define i64 @vtkParse_TemplateInfoToString(ptr noundef %data, ptr noundef %text, i32 noundef %flags) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  store i64 0, ptr %k, align 8, !tbaa !8
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %2 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %2
  %call = call ptr @strcpy(ptr noundef %arrayidx, ptr noundef @.str.41) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %k, align 8, !tbaa !8
  %add = add i64 %3, 9
  store i64 %add, ptr %k, align 8, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !14
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfParameters = getelementptr inbounds %struct._TemplateInfo, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %NumberOfParameters, align 8, !tbaa !76
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !tbaa !14
  %cmp1 = icmp ne i32 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %for.body
  %8 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.then2
  %9 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %10 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 %10
  store i8 44, ptr %arrayidx5, align 1, !tbaa !10
  %11 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %12 = load i64, ptr %k, align 8, !tbaa !8
  %add6 = add i64 %12, 1
  %arrayidx7 = getelementptr inbounds i8, ptr %11, i64 %add6
  store i8 32, ptr %arrayidx7, align 1, !tbaa !10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then2
  %13 = load i64, ptr %k, align 8, !tbaa !8
  %add9 = add i64 %13, 2
  store i64 %add9, ptr %k, align 8, !tbaa !8
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %for.body
  %14 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %14, null
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %15 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters = getelementptr inbounds %struct._TemplateInfo, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %Parameters, align 8, !tbaa !78
  %17 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx13, align 8, !tbaa !4
  %19 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %20 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx14 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %call15 = call i64 @vtkParse_ValueInfoToString(ptr noundef %18, ptr noundef %arrayidx14, i32 noundef %21)
  %22 = load i64, ptr %k, align 8, !tbaa !8
  %add16 = add i64 %22, %call15
  store i64 %add16, ptr %k, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then12
  %23 = load i64, ptr %k, align 8, !tbaa !8
  %cmp17 = icmp ugt i64 %23, 0
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %24 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %25 = load i64, ptr %k, align 8, !tbaa !8
  %sub = sub i64 %25, 1
  %arrayidx18 = getelementptr inbounds i8, ptr %24, i64 %sub
  %26 = load i8, ptr %arrayidx18, align 1, !tbaa !10
  %conv = sext i8 %26 to i32
  %cmp19 = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i64, ptr %k, align 8, !tbaa !8
  %dec = add i64 %28, -1
  store i64 %dec, ptr %k, align 8, !tbaa !8
  br label %while.cond, !llvm.loop !79

while.end:                                        ; preds = %land.end
  br label %if.end26

if.else:                                          ; preds = %if.end10
  %29 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters21 = getelementptr inbounds %struct._TemplateInfo, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %Parameters21, align 8, !tbaa !78
  %31 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %30, i64 %idxprom22
  %32 = load ptr, ptr %arrayidx23, align 8, !tbaa !4
  %33 = load i32, ptr %flags.addr, align 4, !tbaa !14
  %call24 = call i64 @vtkParse_ValueInfoToString(ptr noundef %32, ptr noundef null, i32 noundef %33)
  %34 = load i64, ptr %k, align 8, !tbaa !8
  %add25 = add i64 %34, %call24
  store i64 %add25, ptr %k, align 8, !tbaa !8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %35 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %tobool27 = icmp ne ptr %36, null
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %for.end
  %37 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %38 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx29 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 62, ptr %arrayidx29, align 1, !tbaa !10
  %39 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %40 = load i64, ptr %k, align 8, !tbaa !8
  %add30 = add i64 %40, 1
  %arrayidx31 = getelementptr inbounds i8, ptr %39, i64 %add30
  store i8 0, ptr %arrayidx31, align 1, !tbaa !10
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %for.end
  %41 = load i64, ptr %k, align 8, !tbaa !8
  %inc33 = add i64 %41, 1
  store i64 %inc33, ptr %k, align 8, !tbaa !8
  %42 = load i64, ptr %k, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i64 %42
}

; Function Attrs: nounwind uwtable
define i32 @vtkParse_CompareFunctionSignature(ptr noundef %func1, ptr noundef %func2) #0 {
entry:
  %retval = alloca i32, align 4
  %func1.addr = alloca ptr, align 8
  %func2.addr = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %match = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func1, ptr %func1.addr, align 8, !tbaa !4
  store ptr %func2, ptr %func2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %match) #6
  store i32 0, ptr %match, align 4, !tbaa !14
  %0 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %Template = getelementptr inbounds %struct._FunctionInfo, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %Template, align 8, !tbaa !63
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %Template1 = getelementptr inbounds %struct._FunctionInfo, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %Template1, align 8, !tbaa !63
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %NumberOfParameters = getelementptr inbounds %struct._FunctionInfo, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %NumberOfParameters, align 8, !tbaa !69
  %6 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %NumberOfParameters3 = getelementptr inbounds %struct._FunctionInfo, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %NumberOfParameters3, align 8, !tbaa !69
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.then4, label %if.end60

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %if.then4
  %8 = load i32, ptr %k, align 4, !tbaa !14
  %9 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %NumberOfParameters5 = getelementptr inbounds %struct._FunctionInfo, ptr %9, i32 0, i32 7
  %10 = load i32, ptr %NumberOfParameters5, align 8, !tbaa !69
  %cmp6 = icmp slt i32 %8, %10
  br i1 %cmp6, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %Parameters = getelementptr inbounds %struct._FunctionInfo, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %Parameters, align 8, !tbaa !70
  %13 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %14, ptr %p1, align 8, !tbaa !4
  %15 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %Parameters7 = getelementptr inbounds %struct._FunctionInfo, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %Parameters7, align 8, !tbaa !70
  %17 = load i32, ptr %k, align 4, !tbaa !14
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom8
  %18 = load ptr, ptr %arrayidx9, align 8, !tbaa !4
  store ptr %18, ptr %p2, align 8, !tbaa !4
  %19 = load ptr, ptr %p2, align 8, !tbaa !4
  %Type = getelementptr inbounds %struct._ValueInfo, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %Type, align 8, !tbaa !28
  %21 = load ptr, ptr %p1, align 8, !tbaa !4
  %Type10 = getelementptr inbounds %struct._ValueInfo, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %Type10, align 8, !tbaa !28
  %call = call i32 @override_compatible(i32 noundef %20, i32 noundef %22)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %lor.lhs.false12, label %if.then16

lor.lhs.false12:                                  ; preds = %for.body
  %23 = load ptr, ptr %p2, align 8, !tbaa !4
  %Class = getelementptr inbounds %struct._ValueInfo, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %Class, align 8, !tbaa !27
  %25 = load ptr, ptr %p1, align 8, !tbaa !4
  %Class13 = getelementptr inbounds %struct._ValueInfo, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %Class13, align 8, !tbaa !27
  %call14 = call i32 @strcmp(ptr noundef %24, ptr noundef %26) #7
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false12, %for.body
  br label %for.end55

if.end17:                                         ; preds = %lor.lhs.false12
  %27 = load ptr, ptr %p1, align 8, !tbaa !4
  %Function = getelementptr inbounds %struct._ValueInfo, ptr %27, i32 0, i32 11
  %28 = load ptr, ptr %Function, align 8, !tbaa !33
  %tobool18 = icmp ne ptr %28, null
  br i1 %tobool18, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end17
  %29 = load ptr, ptr %p2, align 8, !tbaa !4
  %Function19 = getelementptr inbounds %struct._ValueInfo, ptr %29, i32 0, i32 11
  %30 = load ptr, ptr %Function19, align 8, !tbaa !33
  %tobool20 = icmp ne ptr %30, null
  br i1 %tobool20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %p1, align 8, !tbaa !4
  %Function22 = getelementptr inbounds %struct._ValueInfo, ptr %31, i32 0, i32 11
  %32 = load ptr, ptr %Function22, align 8, !tbaa !33
  %33 = load ptr, ptr %p2, align 8, !tbaa !4
  %Function23 = getelementptr inbounds %struct._ValueInfo, ptr %33, i32 0, i32 11
  %34 = load ptr, ptr %Function23, align 8, !tbaa !33
  %call24 = call i32 @vtkParse_CompareFunctionSignature(ptr noundef %32, ptr noundef %34)
  %cmp25 = icmp slt i32 %call24, 7
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then21
  br label %for.end55

if.end27:                                         ; preds = %if.then21
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %land.lhs.true, %if.end17
  %35 = load ptr, ptr %p1, align 8, !tbaa !4
  %NumberOfDimensions = getelementptr inbounds %struct._ValueInfo, ptr %35, i32 0, i32 9
  %36 = load i32, ptr %NumberOfDimensions, align 8, !tbaa !18
  %cmp29 = icmp sgt i32 %36, 1
  br i1 %cmp29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end28
  %37 = load ptr, ptr %p2, align 8, !tbaa !4
  %NumberOfDimensions31 = getelementptr inbounds %struct._ValueInfo, ptr %37, i32 0, i32 9
  %38 = load i32, ptr %NumberOfDimensions31, align 8, !tbaa !18
  %cmp32 = icmp sgt i32 %38, 1
  br i1 %cmp32, label %if.then33, label %if.end52

if.then33:                                        ; preds = %lor.lhs.false30, %if.end28
  %39 = load ptr, ptr %p1, align 8, !tbaa !4
  %NumberOfDimensions34 = getelementptr inbounds %struct._ValueInfo, ptr %39, i32 0, i32 9
  %40 = load i32, ptr %NumberOfDimensions34, align 8, !tbaa !18
  %41 = load ptr, ptr %p2, align 8, !tbaa !4
  %NumberOfDimensions35 = getelementptr inbounds %struct._ValueInfo, ptr %41, i32 0, i32 9
  %42 = load i32, ptr %NumberOfDimensions35, align 8, !tbaa !18
  %cmp36 = icmp ne i32 %40, %42
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then33
  br label %for.end55

if.end38:                                         ; preds = %if.then33
  store i32 1, ptr %j, align 4, !tbaa !14
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc, %if.end38
  %43 = load i32, ptr %j, align 4, !tbaa !14
  %44 = load ptr, ptr %p1, align 8, !tbaa !4
  %NumberOfDimensions40 = getelementptr inbounds %struct._ValueInfo, ptr %44, i32 0, i32 9
  %45 = load i32, ptr %NumberOfDimensions40, align 8, !tbaa !18
  %cmp41 = icmp slt i32 %43, %45
  br i1 %cmp41, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond39
  %46 = load ptr, ptr %p1, align 8, !tbaa !4
  %Dimensions = getelementptr inbounds %struct._ValueInfo, ptr %46, i32 0, i32 10
  %47 = load ptr, ptr %Dimensions, align 8, !tbaa !19
  %48 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom43 = sext i32 %48 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %47, i64 %idxprom43
  %49 = load ptr, ptr %arrayidx44, align 8, !tbaa !4
  %50 = load ptr, ptr %p2, align 8, !tbaa !4
  %Dimensions45 = getelementptr inbounds %struct._ValueInfo, ptr %50, i32 0, i32 10
  %51 = load ptr, ptr %Dimensions45, align 8, !tbaa !19
  %52 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom46 = sext i32 %52 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %51, i64 %idxprom46
  %53 = load ptr, ptr %arrayidx47, align 8, !tbaa !4
  %call48 = call i32 @strcmp(ptr noundef %49, ptr noundef %53) #7
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.body42
  br label %for.end

if.end51:                                         ; preds = %for.body42
  br label %for.inc

for.inc:                                          ; preds = %if.end51
  %54 = load i32, ptr %j, align 4, !tbaa !14
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %j, align 4, !tbaa !14
  br label %for.cond39, !llvm.loop !81

for.end:                                          ; preds = %if.then50, %for.cond39
  br label %if.end52

if.end52:                                         ; preds = %for.end, %lor.lhs.false30
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %55 = load i32, ptr %k, align 4, !tbaa !14
  %inc54 = add nsw i32 %55, 1
  store i32 %inc54, ptr %k, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !82

for.end55:                                        ; preds = %if.then37, %if.then26, %if.then16, %for.cond
  %56 = load i32, ptr %k, align 4, !tbaa !14
  %57 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %NumberOfParameters56 = getelementptr inbounds %struct._FunctionInfo, ptr %57, i32 0, i32 7
  %58 = load i32, ptr %NumberOfParameters56, align 8, !tbaa !69
  %cmp57 = icmp eq i32 %56, %58
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end55
  store i32 1, ptr %match, align 4, !tbaa !14
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %for.end55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end
  %59 = load i32, ptr %match, align 4, !tbaa !14
  %tobool61 = icmp ne i32 %59, 0
  br i1 %tobool61, label %land.lhs.true62, label %if.end95

land.lhs.true62:                                  ; preds = %if.end60
  %60 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %ReturnValue = getelementptr inbounds %struct._FunctionInfo, ptr %60, i32 0, i32 9
  %61 = load ptr, ptr %ReturnValue, align 8, !tbaa !67
  %tobool63 = icmp ne ptr %61, null
  br i1 %tobool63, label %land.lhs.true64, label %if.end95

land.lhs.true64:                                  ; preds = %land.lhs.true62
  %62 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %ReturnValue65 = getelementptr inbounds %struct._FunctionInfo, ptr %62, i32 0, i32 9
  %63 = load ptr, ptr %ReturnValue65, align 8, !tbaa !67
  %tobool66 = icmp ne ptr %63, null
  br i1 %tobool66, label %if.then67, label %if.end95

if.then67:                                        ; preds = %land.lhs.true64
  %64 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %ReturnValue68 = getelementptr inbounds %struct._FunctionInfo, ptr %64, i32 0, i32 9
  %65 = load ptr, ptr %ReturnValue68, align 8, !tbaa !67
  store ptr %65, ptr %p1, align 8, !tbaa !4
  %66 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %ReturnValue69 = getelementptr inbounds %struct._FunctionInfo, ptr %66, i32 0, i32 9
  %67 = load ptr, ptr %ReturnValue69, align 8, !tbaa !67
  store ptr %67, ptr %p2, align 8, !tbaa !4
  %68 = load ptr, ptr %p2, align 8, !tbaa !4
  %Type70 = getelementptr inbounds %struct._ValueInfo, ptr %68, i32 0, i32 5
  %69 = load i32, ptr %Type70, align 8, !tbaa !28
  %70 = load ptr, ptr %p1, align 8, !tbaa !4
  %Type71 = getelementptr inbounds %struct._ValueInfo, ptr %70, i32 0, i32 5
  %71 = load i32, ptr %Type71, align 8, !tbaa !28
  %call72 = call i32 @override_compatible(i32 noundef %69, i32 noundef %71)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %land.lhs.true74, label %if.end94

land.lhs.true74:                                  ; preds = %if.then67
  %72 = load ptr, ptr %p2, align 8, !tbaa !4
  %Class75 = getelementptr inbounds %struct._ValueInfo, ptr %72, i32 0, i32 6
  %73 = load ptr, ptr %Class75, align 8, !tbaa !27
  %74 = load ptr, ptr %p1, align 8, !tbaa !4
  %Class76 = getelementptr inbounds %struct._ValueInfo, ptr %74, i32 0, i32 6
  %75 = load ptr, ptr %Class76, align 8, !tbaa !27
  %call77 = call i32 @strcmp(ptr noundef %73, ptr noundef %75) #7
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.end94

if.then79:                                        ; preds = %land.lhs.true74
  %76 = load ptr, ptr %p1, align 8, !tbaa !4
  %Function80 = getelementptr inbounds %struct._ValueInfo, ptr %76, i32 0, i32 11
  %77 = load ptr, ptr %Function80, align 8, !tbaa !33
  %tobool81 = icmp ne ptr %77, null
  br i1 %tobool81, label %land.lhs.true82, label %if.else

land.lhs.true82:                                  ; preds = %if.then79
  %78 = load ptr, ptr %p2, align 8, !tbaa !4
  %Function83 = getelementptr inbounds %struct._ValueInfo, ptr %78, i32 0, i32 11
  %79 = load ptr, ptr %Function83, align 8, !tbaa !33
  %tobool84 = icmp ne ptr %79, null
  br i1 %tobool84, label %if.then85, label %if.else

if.then85:                                        ; preds = %land.lhs.true82
  %80 = load ptr, ptr %p1, align 8, !tbaa !4
  %Function86 = getelementptr inbounds %struct._ValueInfo, ptr %80, i32 0, i32 11
  %81 = load ptr, ptr %Function86, align 8, !tbaa !33
  %82 = load ptr, ptr %p2, align 8, !tbaa !4
  %Function87 = getelementptr inbounds %struct._ValueInfo, ptr %82, i32 0, i32 11
  %83 = load ptr, ptr %Function87, align 8, !tbaa !33
  %call88 = call i32 @vtkParse_CompareFunctionSignature(ptr noundef %81, ptr noundef %83)
  %cmp89 = icmp slt i32 %call88, 7
  br i1 %cmp89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then85
  %84 = load i32, ptr %match, align 4, !tbaa !14
  %or = or i32 %84, 2
  store i32 %or, ptr %match, align 4, !tbaa !14
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.then85
  br label %if.end93

if.else:                                          ; preds = %land.lhs.true82, %if.then79
  %85 = load i32, ptr %match, align 4, !tbaa !14
  %or92 = or i32 %85, 2
  store i32 %or92, ptr %match, align 4, !tbaa !14
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.end91
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %land.lhs.true74, %if.then67
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %land.lhs.true64, %land.lhs.true62, %if.end60
  %86 = load i32, ptr %match, align 4, !tbaa !14
  %tobool96 = icmp ne i32 %86, 0
  br i1 %tobool96, label %land.lhs.true97, label %if.end114

land.lhs.true97:                                  ; preds = %if.end95
  %87 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %Class98 = getelementptr inbounds %struct._FunctionInfo, ptr %87, i32 0, i32 4
  %88 = load ptr, ptr %Class98, align 8, !tbaa !57
  %tobool99 = icmp ne ptr %88, null
  br i1 %tobool99, label %land.lhs.true100, label %if.end114

land.lhs.true100:                                 ; preds = %land.lhs.true97
  %89 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %Class101 = getelementptr inbounds %struct._FunctionInfo, ptr %89, i32 0, i32 4
  %90 = load ptr, ptr %Class101, align 8, !tbaa !57
  %tobool102 = icmp ne ptr %90, null
  br i1 %tobool102, label %land.lhs.true103, label %if.end114

land.lhs.true103:                                 ; preds = %land.lhs.true100
  %91 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %Class104 = getelementptr inbounds %struct._FunctionInfo, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %Class104, align 8, !tbaa !57
  %93 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %Class105 = getelementptr inbounds %struct._FunctionInfo, ptr %93, i32 0, i32 4
  %94 = load ptr, ptr %Class105, align 8, !tbaa !57
  %call106 = call i32 @strcmp(ptr noundef %92, ptr noundef %94) #7
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then108, label %if.end114

if.then108:                                       ; preds = %land.lhs.true103
  %95 = load ptr, ptr %func1.addr, align 8, !tbaa !4
  %IsConst = getelementptr inbounds %struct._FunctionInfo, ptr %95, i32 0, i32 21
  %96 = load i32, ptr %IsConst, align 4, !tbaa !73
  %97 = load ptr, ptr %func2.addr, align 8, !tbaa !4
  %IsConst109 = getelementptr inbounds %struct._FunctionInfo, ptr %97, i32 0, i32 21
  %98 = load i32, ptr %IsConst109, align 4, !tbaa !73
  %cmp110 = icmp eq i32 %96, %98
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then108
  %99 = load i32, ptr %match, align 4, !tbaa !14
  %or112 = or i32 %99, 4
  store i32 %or112, ptr %match, align 4, !tbaa !14
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then108
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %land.lhs.true103, %land.lhs.true100, %land.lhs.true97, %if.end95
  %100 = load i32, ptr %match, align 4, !tbaa !14
  store i32 %100, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %match) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1) #6
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal i32 @override_compatible(i32 noundef %t1, i32 noundef %t2) #0 {
entry:
  %t1.addr = alloca i32, align 4
  %t2.addr = alloca i32, align 4
  %typebits = alloca i32, align 4
  %diff = alloca i32, align 4
  store i32 %t1, ptr %t1.addr, align 4, !tbaa !14
  store i32 %t2, ptr %t2.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %typebits) #6
  store i32 6422527, ptr %typebits, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %diff) #6
  %0 = load i32, ptr %t1.addr, align 4, !tbaa !14
  %1 = load i32, ptr %t2.addr, align 4, !tbaa !14
  %xor = xor i32 %0, %1
  %2 = load i32, ptr %typebits, align 4, !tbaa !14
  %and = and i32 %xor, %2
  store i32 %and, ptr %diff, align 4, !tbaa !14
  %3 = load i32, ptr %diff, align 4, !tbaa !14
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %4 = load i32, ptr %t1.addr, align 4, !tbaa !14
  %and1 = and i32 %4, 65280
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i32, ptr %diff, align 4, !tbaa !14
  %and3 = and i32 %5, 65535
  %cmp4 = icmp eq i32 %and3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %diff) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %typebits) #6
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define ptr @vtkParse_StringReplace(ptr noundef %str1, i32 noundef %n, ptr noundef %name, ptr noundef %val) #0 {
entry:
  %str1.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %str1, ptr %str1.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !14
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store ptr %val, ptr %val.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %str1.addr, align 8, !tbaa !4
  %1 = load i32, ptr %n.addr, align 4, !tbaa !14
  %2 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %val.addr, align 8, !tbaa !4
  %call = call ptr @vtkparse_string_replace(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define i64 @vtkParse_DecomposeTemplatedType(ptr noundef %text, ptr noundef %classname, i32 noundef %nargs, ptr noundef %argp, ptr noundef %defaults) #0 {
entry:
  %text.addr = alloca ptr, align 8
  %classname.addr = alloca ptr, align 8
  %nargs.addr = alloca i32, align 4
  %argp.addr = alloca ptr, align 8
  %defaults.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %n = alloca i64, align 8
  %arg = alloca ptr, align 8
  %new_text = alloca ptr, align 8
  %template_args = alloca ptr, align 8
  %template_arg_count = alloca i32, align 4
  store ptr %text, ptr %text.addr, align 8, !tbaa !4
  store ptr %classname, ptr %classname.addr, align 8, !tbaa !4
  store i32 %nargs, ptr %nargs.addr, align 4, !tbaa !14
  store ptr %argp, ptr %argp.addr, align 8, !tbaa !4
  store ptr %defaults, ptr %defaults.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_text) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %template_args) #6
  store ptr null, ptr %template_args, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %template_arg_count) #6
  store i32 0, ptr %template_arg_count, align 4, !tbaa !14
  %0 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %call = call i64 @vtkParse_NameLength(ptr noundef %0)
  store i64 %call, ptr %n, align 8, !tbaa !8
  store i64 0, ptr %i, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !8
  %2 = load i64, ptr %n, align 8, !tbaa !8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %4 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %4
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !10
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 60
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, ptr %i, align 8, !tbaa !8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %i, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load ptr, ptr %classname.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then3, label %if.end7

if.then3:                                         ; preds = %for.end
  %8 = load i64, ptr %i, align 8, !tbaa !8
  %add = add i64 %8, 1
  %call4 = call noalias ptr @malloc(i64 noundef %add) #8
  store ptr %call4, ptr %new_text, align 8, !tbaa !4
  %9 = load ptr, ptr %new_text, align 8, !tbaa !4
  %10 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %11 = load i64, ptr %i, align 8, !tbaa !8
  %call5 = call ptr @strncpy(ptr noundef %9, ptr noundef %10, i64 noundef %11) #6
  %12 = load ptr, ptr %new_text, align 8, !tbaa !4
  %13 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds i8, ptr %12, i64 %13
  store i8 0, ptr %arrayidx6, align 1, !tbaa !10
  %14 = load ptr, ptr %new_text, align 8, !tbaa !4
  %15 = load ptr, ptr %classname.addr, align 8, !tbaa !4
  store ptr %14, ptr %15, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %for.end
  %16 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %17 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx8, align 1, !tbaa !10
  %conv9 = sext i8 %18 to i32
  %cmp10 = icmp eq i32 %conv9, 60
  br i1 %cmp10, label %if.then12, label %if.end94

if.then12:                                        ; preds = %if.end7
  %19 = load i64, ptr %i, align 8, !tbaa !8
  %inc13 = add i64 %19, 1
  store i64 %inc13, ptr %i, align 8, !tbaa !8
  br label %for.cond14

for.cond14:                                       ; preds = %if.end92, %if.then12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond14
  %20 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %21 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx15 = getelementptr inbounds i8, ptr %20, i64 %21
  %22 = load i8, ptr %arrayidx15, align 1, !tbaa !10
  %call16 = call i32 @vtkParse_CharType(i8 noundef signext %22, i32 noundef 64)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i64, ptr %i, align 8, !tbaa !8
  %inc18 = add i64 %23, 1
  store i64 %inc18, ptr %i, align 8, !tbaa !8
  br label %while.cond, !llvm.loop !84

while.end:                                        ; preds = %while.cond
  %24 = load i64, ptr %i, align 8, !tbaa !8
  store i64 %24, ptr %j, align 8, !tbaa !8
  br label %while.cond19

while.cond19:                                     ; preds = %if.end70, %while.end
  %25 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %26 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx20 = getelementptr inbounds i8, ptr %25, i64 %26
  %27 = load i8, ptr %arrayidx20, align 1, !tbaa !10
  %conv21 = sext i8 %27 to i32
  %cmp22 = icmp ne i32 %conv21, 44
  br i1 %cmp22, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond19
  %28 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %29 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx24 = getelementptr inbounds i8, ptr %28, i64 %29
  %30 = load i8, ptr %arrayidx24, align 1, !tbaa !10
  %conv25 = sext i8 %30 to i32
  %cmp26 = icmp ne i32 %conv25, 62
  br i1 %cmp26, label %land.lhs.true28, label %land.end

land.lhs.true28:                                  ; preds = %land.lhs.true
  %31 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %32 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx29 = getelementptr inbounds i8, ptr %31, i64 %32
  %33 = load i8, ptr %arrayidx29, align 1, !tbaa !10
  %conv30 = sext i8 %33 to i32
  %cmp31 = icmp ne i32 %conv30, 10
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true28
  %34 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %35 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx33 = getelementptr inbounds i8, ptr %34, i64 %35
  %36 = load i8, ptr %arrayidx33, align 1, !tbaa !10
  %conv34 = sext i8 %36 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true28, %land.lhs.true, %while.cond19
  %37 = phi i1 [ false, %land.lhs.true28 ], [ false, %land.lhs.true ], [ false, %while.cond19 ], [ %cmp35, %land.rhs ]
  br i1 %37, label %while.body37, label %while.end71

while.body37:                                     ; preds = %land.end
  %38 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %39 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx38 = getelementptr inbounds i8, ptr %38, i64 %39
  %40 = load i8, ptr %arrayidx38, align 1, !tbaa !10
  %conv39 = sext i8 %40 to i32
  %cmp40 = icmp eq i32 %conv39, 60
  br i1 %cmp40, label %if.then56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body37
  %41 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %42 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx42 = getelementptr inbounds i8, ptr %41, i64 %42
  %43 = load i8, ptr %arrayidx42, align 1, !tbaa !10
  %conv43 = sext i8 %43 to i32
  %cmp44 = icmp eq i32 %conv43, 40
  br i1 %cmp44, label %if.then56, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %44 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %45 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx47 = getelementptr inbounds i8, ptr %44, i64 %45
  %46 = load i8, ptr %arrayidx47, align 1, !tbaa !10
  %conv48 = sext i8 %46 to i32
  %cmp49 = icmp eq i32 %conv48, 91
  br i1 %cmp49, label %if.then56, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %47 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %48 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx52 = getelementptr inbounds i8, ptr %47, i64 %48
  %49 = load i8, ptr %arrayidx52, align 1, !tbaa !10
  %conv53 = sext i8 %49 to i32
  %cmp54 = icmp eq i32 %conv53, 123
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %lor.lhs.false51, %lor.lhs.false46, %lor.lhs.false, %while.body37
  %50 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %51 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx57 = getelementptr inbounds i8, ptr %50, i64 %51
  %call58 = call i64 @vtkparse_bracket_len(ptr noundef %arrayidx57)
  %52 = load i64, ptr %j, align 8, !tbaa !8
  %add59 = add i64 %52, %call58
  store i64 %add59, ptr %j, align 8, !tbaa !8
  br label %if.end70

if.else:                                          ; preds = %lor.lhs.false51
  %53 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %54 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx60 = getelementptr inbounds i8, ptr %53, i64 %54
  %55 = load i8, ptr %arrayidx60, align 1, !tbaa !10
  %call61 = call i32 @vtkParse_CharType(i8 noundef signext %55, i32 noundef 32)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.else67

if.then63:                                        ; preds = %if.else
  %56 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %57 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx64 = getelementptr inbounds i8, ptr %56, i64 %57
  %call65 = call i64 @vtkParse_SkipQuotes(ptr noundef %arrayidx64)
  %58 = load i64, ptr %j, align 8, !tbaa !8
  %add66 = add i64 %58, %call65
  store i64 %add66, ptr %j, align 8, !tbaa !8
  br label %if.end69

if.else67:                                        ; preds = %if.else
  %59 = load i64, ptr %j, align 8, !tbaa !8
  %inc68 = add i64 %59, 1
  store i64 %inc68, ptr %j, align 8, !tbaa !8
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.then63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then56
  br label %while.cond19, !llvm.loop !85

while.end71:                                      ; preds = %land.end
  %60 = load i64, ptr %j, align 8, !tbaa !8
  store i64 %60, ptr %k, align 8, !tbaa !8
  br label %while.cond72

while.cond72:                                     ; preds = %while.body76, %while.end71
  %61 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %62 = load i64, ptr %k, align 8, !tbaa !8
  %sub = sub i64 %62, 1
  %arrayidx73 = getelementptr inbounds i8, ptr %61, i64 %sub
  %63 = load i8, ptr %arrayidx73, align 1, !tbaa !10
  %call74 = call i32 @vtkParse_CharType(i8 noundef signext %63, i32 noundef 64)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %while.body76, label %while.end77

while.body76:                                     ; preds = %while.cond72
  %64 = load i64, ptr %k, align 8, !tbaa !8
  %dec = add i64 %64, -1
  store i64 %dec, ptr %k, align 8, !tbaa !8
  br label %while.cond72, !llvm.loop !86

while.end77:                                      ; preds = %while.cond72
  %65 = load i64, ptr %k, align 8, !tbaa !8
  %66 = load i64, ptr %i, align 8, !tbaa !8
  %sub78 = sub i64 %65, %66
  %add79 = add i64 %sub78, 1
  %call80 = call noalias ptr @malloc(i64 noundef %add79) #8
  store ptr %call80, ptr %new_text, align 8, !tbaa !4
  %67 = load ptr, ptr %new_text, align 8, !tbaa !4
  %68 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %69 = load i64, ptr %i, align 8, !tbaa !8
  %arrayidx81 = getelementptr inbounds i8, ptr %68, i64 %69
  %70 = load i64, ptr %k, align 8, !tbaa !8
  %71 = load i64, ptr %i, align 8, !tbaa !8
  %sub82 = sub i64 %70, %71
  %call83 = call ptr @strncpy(ptr noundef %67, ptr noundef %arrayidx81, i64 noundef %sub82) #6
  %72 = load ptr, ptr %new_text, align 8, !tbaa !4
  %73 = load i64, ptr %k, align 8, !tbaa !8
  %74 = load i64, ptr %i, align 8, !tbaa !8
  %sub84 = sub i64 %73, %74
  %arrayidx85 = getelementptr inbounds i8, ptr %72, i64 %sub84
  store i8 0, ptr %arrayidx85, align 1, !tbaa !10
  %75 = load ptr, ptr %new_text, align 8, !tbaa !4
  call void @vtkParse_AddStringToArray(ptr noundef %template_args, ptr noundef %template_arg_count, ptr noundef %75)
  %76 = load i64, ptr %j, align 8, !tbaa !8
  %add86 = add i64 %76, 1
  store i64 %add86, ptr %i, align 8, !tbaa !8
  %77 = load ptr, ptr %text.addr, align 8, !tbaa !4
  %78 = load i64, ptr %j, align 8, !tbaa !8
  %arrayidx87 = getelementptr inbounds i8, ptr %77, i64 %78
  %79 = load i8, ptr %arrayidx87, align 1, !tbaa !10
  %conv88 = sext i8 %79 to i32
  %cmp89 = icmp ne i32 %conv88, 44
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %while.end77
  br label %for.end93

if.end92:                                         ; preds = %while.end77
  br label %for.cond14

for.end93:                                        ; preds = %if.then91
  br label %if.end94

if.end94:                                         ; preds = %for.end93, %if.end7
  br label %while.cond95

while.cond95:                                     ; preds = %while.body98, %if.end94
  %80 = load i32, ptr %template_arg_count, align 4, !tbaa !14
  %81 = load i32, ptr %nargs.addr, align 4, !tbaa !14
  %cmp96 = icmp slt i32 %80, %81
  br i1 %cmp96, label %while.body98, label %while.end104

while.body98:                                     ; preds = %while.cond95
  %82 = load ptr, ptr %defaults.addr, align 8, !tbaa !4
  %83 = load i32, ptr %template_arg_count, align 4, !tbaa !14
  %idxprom = sext i32 %83 to i64
  %arrayidx99 = getelementptr inbounds ptr, ptr %82, i64 %idxprom
  %84 = load ptr, ptr %arrayidx99, align 8, !tbaa !4
  store ptr %84, ptr %arg, align 8, !tbaa !4
  %85 = load ptr, ptr %arg, align 8, !tbaa !4
  %call100 = call i64 @strlen(ptr noundef %85) #7
  %add101 = add i64 %call100, 1
  %call102 = call noalias ptr @malloc(i64 noundef %add101) #8
  store ptr %call102, ptr %new_text, align 8, !tbaa !4
  %86 = load ptr, ptr %new_text, align 8, !tbaa !4
  %87 = load ptr, ptr %arg, align 8, !tbaa !4
  %call103 = call ptr @strcpy(ptr noundef %86, ptr noundef %87) #6
  %88 = load ptr, ptr %new_text, align 8, !tbaa !4
  call void @vtkParse_AddStringToArray(ptr noundef %template_args, ptr noundef %template_arg_count, ptr noundef %88)
  br label %while.cond95, !llvm.loop !87

while.end104:                                     ; preds = %while.cond95
  %89 = load ptr, ptr %template_args, align 8, !tbaa !4
  %90 = load ptr, ptr %argp.addr, align 8, !tbaa !4
  store ptr %89, ptr %90, align 8, !tbaa !4
  %91 = load i64, ptr %i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %template_arg_count) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %template_args) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_text) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6
  ret i64 %91
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

declare i64 @vtkParse_SkipQuotes(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @vtkParse_FreeTemplateDecomposition(ptr noundef %name, i32 noundef %n, ptr noundef %args) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %args.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !14
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  call void @free(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %n.addr, align 4, !tbaa !14
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %3 = load i32, ptr %i, align 4, !tbaa !14
  %4 = load i32, ptr %n.addr, align 4, !tbaa !14
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  call void @free(ptr noundef %7) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %args.addr, align 8, !tbaa !4
  call void @free(ptr noundef %9) #6
  br label %if.end3

if.end3:                                          ; preds = %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @vtkParse_InstantiateClassTemplate(ptr noundef %data, ptr noundef %cache, i32 noundef %n, ptr noundef %args) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %args.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %new_args = alloca ptr, align 8
  %arg_names = alloca ptr, align 8
  %arg_types = alloca ptr, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %new_name = alloca ptr, align 8
  %k = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store i32 %n, ptr %n.addr, align 4, !tbaa !14
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Template = getelementptr inbounds %struct._ClassInfo, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %Template, align 8, !tbaa !89
  store ptr %1, ptr %t, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_args) #6
  store ptr null, ptr %new_args, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg_names) #6
  store ptr null, ptr %arg_names, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg_types) #6
  store ptr null, ptr %arg_types, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_name) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %2 = load ptr, ptr %t, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.48)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %t, align 8, !tbaa !4
  %NumberOfParameters = getelementptr inbounds %struct._TemplateInfo, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %NumberOfParameters, align 8, !tbaa !76
  store i32 %5, ptr %m, align 4, !tbaa !14
  %6 = load i32, ptr %n.addr, align 4, !tbaa !14
  %7 = load i32, ptr %m, align 4, !tbaa !14
  %cmp1 = icmp sgt i32 %6, %7
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.49)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = load i32, ptr %n.addr, align 4, !tbaa !14
  store i32 %9, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %10 = load i32, ptr %i, align 4, !tbaa !14
  %11 = load i32, ptr %m, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %10, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %t, align 8, !tbaa !4
  %Parameters = getelementptr inbounds %struct._TemplateInfo, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %Parameters, align 8, !tbaa !78
  %14 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %Value = getelementptr inbounds %struct._ValueInfo, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %Value, align 8, !tbaa !16
  %cmp6 = icmp eq ptr %16, null
  br i1 %cmp6, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %17 = load ptr, ptr %t, align 8, !tbaa !4
  %Parameters7 = getelementptr inbounds %struct._TemplateInfo, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %Parameters7, align 8, !tbaa !78
  %19 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %18, i64 %idxprom8
  %20 = load ptr, ptr %arrayidx9, align 8, !tbaa !4
  %Value10 = getelementptr inbounds %struct._ValueInfo, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %Value10, align 8, !tbaa !16
  %arrayidx11 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx11, align 1, !tbaa !10
  %conv = sext i8 %22 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %lor.lhs.false, %for.body
  %23 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.50)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %24 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %m, align 4, !tbaa !14
  %conv17 = sext i32 %25 to i64
  %mul = mul i64 %conv17, 8
  %call18 = call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call18, ptr %new_args, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.end
  %26 = load i32, ptr %i, align 4, !tbaa !14
  %27 = load i32, ptr %n.addr, align 4, !tbaa !14
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond19
  %28 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %28, i64 %idxprom23
  %30 = load ptr, ptr %arrayidx24, align 8, !tbaa !4
  %31 = load ptr, ptr %new_args, align 8, !tbaa !4
  %32 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %31, i64 %idxprom25
  store ptr %30, ptr %arrayidx26, align 8, !tbaa !4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %33 = load i32, ptr %i, align 4, !tbaa !14
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !14
  br label %for.cond19, !llvm.loop !92

for.end29:                                        ; preds = %for.cond19
  %34 = load i32, ptr %n.addr, align 4, !tbaa !14
  store i32 %34, ptr %i, align 4, !tbaa !14
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc40, %for.end29
  %35 = load i32, ptr %i, align 4, !tbaa !14
  %36 = load i32, ptr %m, align 4, !tbaa !14
  %cmp31 = icmp slt i32 %35, %36
  br i1 %cmp31, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond30
  %37 = load ptr, ptr %t, align 8, !tbaa !4
  %Parameters34 = getelementptr inbounds %struct._TemplateInfo, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %Parameters34, align 8, !tbaa !78
  %39 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %38, i64 %idxprom35
  %40 = load ptr, ptr %arrayidx36, align 8, !tbaa !4
  %Value37 = getelementptr inbounds %struct._ValueInfo, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %Value37, align 8, !tbaa !16
  %42 = load ptr, ptr %new_args, align 8, !tbaa !4
  %43 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom38 = sext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %42, i64 %idxprom38
  store ptr %41, ptr %arrayidx39, align 8, !tbaa !4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body33
  %44 = load i32, ptr %i, align 4, !tbaa !14
  %inc41 = add nsw i32 %44, 1
  store i32 %inc41, ptr %i, align 4, !tbaa !14
  br label %for.cond30, !llvm.loop !93

for.end42:                                        ; preds = %for.cond30
  %45 = load ptr, ptr %new_args, align 8, !tbaa !4
  store ptr %45, ptr %args.addr, align 8, !tbaa !4
  %46 = load i32, ptr %m, align 4, !tbaa !14
  %conv43 = sext i32 %46 to i64
  %mul44 = mul i64 %conv43, 8
  %call45 = call noalias ptr @malloc(i64 noundef %mul44) #8
  store ptr %call45, ptr %arg_names, align 8, !tbaa !4
  %47 = load i32, ptr %m, align 4, !tbaa !14
  %conv46 = sext i32 %47 to i64
  %mul47 = mul i64 %conv46, 8
  %call48 = call noalias ptr @malloc(i64 noundef %mul47) #8
  store ptr %call48, ptr %arg_types, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc84, %for.end42
  %48 = load i32, ptr %i, align 4, !tbaa !14
  %49 = load i32, ptr %m, align 4, !tbaa !14
  %cmp50 = icmp slt i32 %48, %49
  br i1 %cmp50, label %for.body52, label %for.end86

for.body52:                                       ; preds = %for.cond49
  %50 = load ptr, ptr %t, align 8, !tbaa !4
  %Parameters53 = getelementptr inbounds %struct._TemplateInfo, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %Parameters53, align 8, !tbaa !78
  %52 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom54 = sext i32 %52 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %51, i64 %idxprom54
  %53 = load ptr, ptr %arrayidx55, align 8, !tbaa !4
  %Name = getelementptr inbounds %struct._ValueInfo, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %Name, align 8, !tbaa !34
  %55 = load ptr, ptr %arg_names, align 8, !tbaa !4
  %56 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom56 = sext i32 %56 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %55, i64 %idxprom56
  store ptr %54, ptr %arrayidx57, align 8, !tbaa !4
  %57 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %58 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom58 = sext i32 %58 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %57, i64 %idxprom58
  store ptr null, ptr %arrayidx59, align 8, !tbaa !4
  %59 = load ptr, ptr %t, align 8, !tbaa !4
  %Parameters60 = getelementptr inbounds %struct._TemplateInfo, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %Parameters60, align 8, !tbaa !78
  %61 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom61 = sext i32 %61 to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %60, i64 %idxprom61
  %62 = load ptr, ptr %arrayidx62, align 8, !tbaa !4
  %Type = getelementptr inbounds %struct._ValueInfo, ptr %62, i32 0, i32 5
  %63 = load i32, ptr %Type, align 8, !tbaa !28
  %cmp63 = icmp eq i32 %63, 0
  br i1 %cmp63, label %if.then65, label %if.end83

if.then65:                                        ; preds = %for.body52
  %call66 = call noalias ptr @malloc(i64 noundef 112) #8
  %64 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %65 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom67 = sext i32 %65 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %64, i64 %idxprom67
  store ptr %call66, ptr %arrayidx68, align 8, !tbaa !4
  %66 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %67 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom69 = sext i32 %67 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %66, i64 %idxprom69
  %68 = load ptr, ptr %arrayidx70, align 8, !tbaa !4
  call void @vtkParse_InitValue(ptr noundef %68)
  %69 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %70 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom71 = sext i32 %70 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %69, i64 %idxprom71
  %71 = load ptr, ptr %arrayidx72, align 8, !tbaa !4
  %72 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %74 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom73 = sext i32 %74 to i64
  %arrayidx74 = getelementptr inbounds ptr, ptr %73, i64 %idxprom73
  %75 = load ptr, ptr %arrayidx74, align 8, !tbaa !4
  %call75 = call i64 @vtkParse_ValueInfoFromString(ptr noundef %71, ptr noundef %72, ptr noundef %75)
  %76 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %77 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom76 = sext i32 %77 to i64
  %arrayidx77 = getelementptr inbounds ptr, ptr %76, i64 %idxprom76
  %78 = load ptr, ptr %arrayidx77, align 8, !tbaa !4
  %ItemType = getelementptr inbounds %struct._ValueInfo, ptr %78, i32 0, i32 0
  store i32 9, ptr %ItemType, align 8, !tbaa !94
  %79 = load ptr, ptr %arg_names, align 8, !tbaa !4
  %80 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom78 = sext i32 %80 to i64
  %arrayidx79 = getelementptr inbounds ptr, ptr %79, i64 %idxprom78
  %81 = load ptr, ptr %arrayidx79, align 8, !tbaa !4
  %82 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %83 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom80 = sext i32 %83 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %82, i64 %idxprom80
  %84 = load ptr, ptr %arrayidx81, align 8, !tbaa !4
  %Name82 = getelementptr inbounds %struct._ValueInfo, ptr %84, i32 0, i32 2
  store ptr %81, ptr %Name82, align 8, !tbaa !34
  br label %if.end83

if.end83:                                         ; preds = %if.then65, %for.body52
  br label %for.inc84

for.inc84:                                        ; preds = %if.end83
  %85 = load i32, ptr %i, align 4, !tbaa !14
  %inc85 = add nsw i32 %85, 1
  store i32 %inc85, ptr %i, align 4, !tbaa !14
  br label %for.cond49, !llvm.loop !95

for.end86:                                        ; preds = %for.cond49
  %86 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Template87 = getelementptr inbounds %struct._ClassInfo, ptr %86, i32 0, i32 4
  %87 = load ptr, ptr %Template87, align 8, !tbaa !89
  %tobool = icmp ne ptr %87, null
  br i1 %tobool, label %if.then88, label %if.end90

if.then88:                                        ; preds = %for.end86
  %88 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Template89 = getelementptr inbounds %struct._ClassInfo, ptr %88, i32 0, i32 4
  %89 = load ptr, ptr %Template89, align 8, !tbaa !89
  call void @vtkParse_FreeTemplate(ptr noundef %89)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %for.end86
  %90 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Template91 = getelementptr inbounds %struct._ClassInfo, ptr %90, i32 0, i32 4
  store ptr null, ptr %Template91, align 8, !tbaa !89
  %91 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Name92 = getelementptr inbounds %struct._ClassInfo, ptr %91, i32 0, i32 2
  %92 = load ptr, ptr %Name92, align 8, !tbaa !96
  %call93 = call i64 @strlen(ptr noundef %92) #7
  %add = add i64 %call93, 2
  store i64 %add, ptr %k, align 8, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc103, %if.end90
  %93 = load i32, ptr %i, align 4, !tbaa !14
  %94 = load i32, ptr %m, align 4, !tbaa !14
  %cmp95 = icmp slt i32 %93, %94
  br i1 %cmp95, label %for.body97, label %for.end105

for.body97:                                       ; preds = %for.cond94
  %95 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %96 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom98 = sext i32 %96 to i64
  %arrayidx99 = getelementptr inbounds ptr, ptr %95, i64 %idxprom98
  %97 = load ptr, ptr %arrayidx99, align 8, !tbaa !4
  %call100 = call i64 @strlen(ptr noundef %97) #7
  %add101 = add i64 %call100, 2
  %98 = load i64, ptr %k, align 8, !tbaa !8
  %add102 = add i64 %98, %add101
  store i64 %add102, ptr %k, align 8, !tbaa !8
  br label %for.inc103

for.inc103:                                       ; preds = %for.body97
  %99 = load i32, ptr %i, align 4, !tbaa !14
  %inc104 = add nsw i32 %99, 1
  store i32 %inc104, ptr %i, align 4, !tbaa !14
  br label %for.cond94, !llvm.loop !97

for.end105:                                       ; preds = %for.cond94
  %100 = load i64, ptr %k, align 8, !tbaa !8
  %call106 = call noalias ptr @malloc(i64 noundef %100) #8
  store ptr %call106, ptr %new_name, align 8, !tbaa !4
  %101 = load ptr, ptr %new_name, align 8, !tbaa !4
  %102 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Name107 = getelementptr inbounds %struct._ClassInfo, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %Name107, align 8, !tbaa !96
  %call108 = call ptr @strcpy(ptr noundef %101, ptr noundef %103) #6
  %104 = load ptr, ptr %new_name, align 8, !tbaa !4
  %call109 = call i64 @strlen(ptr noundef %104) #7
  store i64 %call109, ptr %k, align 8, !tbaa !8
  %105 = load ptr, ptr %new_name, align 8, !tbaa !4
  %106 = load i64, ptr %k, align 8, !tbaa !8
  %inc110 = add i64 %106, 1
  store i64 %inc110, ptr %k, align 8, !tbaa !8
  %arrayidx111 = getelementptr inbounds i8, ptr %105, i64 %106
  store i8 60, ptr %arrayidx111, align 1, !tbaa !10
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc133, %for.end105
  %107 = load i32, ptr %i, align 4, !tbaa !14
  %108 = load i32, ptr %m, align 4, !tbaa !14
  %cmp113 = icmp slt i32 %107, %108
  br i1 %cmp113, label %for.body115, label %for.end135

for.body115:                                      ; preds = %for.cond112
  %109 = load ptr, ptr %new_name, align 8, !tbaa !4
  %110 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx116 = getelementptr inbounds i8, ptr %109, i64 %110
  %111 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %112 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom117 = sext i32 %112 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %111, i64 %idxprom117
  %113 = load ptr, ptr %arrayidx118, align 8, !tbaa !4
  %call119 = call ptr @strcpy(ptr noundef %arrayidx116, ptr noundef %113) #6
  %114 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %115 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom120 = sext i32 %115 to i64
  %arrayidx121 = getelementptr inbounds ptr, ptr %114, i64 %idxprom120
  %116 = load ptr, ptr %arrayidx121, align 8, !tbaa !4
  %call122 = call i64 @strlen(ptr noundef %116) #7
  %117 = load i64, ptr %k, align 8, !tbaa !8
  %add123 = add i64 %117, %call122
  store i64 %add123, ptr %k, align 8, !tbaa !8
  %118 = load i32, ptr %i, align 4, !tbaa !14
  %add124 = add nsw i32 %118, 1
  %119 = load i32, ptr %m, align 4, !tbaa !14
  %cmp125 = icmp slt i32 %add124, %119
  br i1 %cmp125, label %if.then127, label %if.end132

if.then127:                                       ; preds = %for.body115
  %120 = load ptr, ptr %new_name, align 8, !tbaa !4
  %121 = load i64, ptr %k, align 8, !tbaa !8
  %inc128 = add i64 %121, 1
  store i64 %inc128, ptr %k, align 8, !tbaa !8
  %arrayidx129 = getelementptr inbounds i8, ptr %120, i64 %121
  store i8 44, ptr %arrayidx129, align 1, !tbaa !10
  %122 = load ptr, ptr %new_name, align 8, !tbaa !4
  %123 = load i64, ptr %k, align 8, !tbaa !8
  %inc130 = add i64 %123, 1
  store i64 %inc130, ptr %k, align 8, !tbaa !8
  %arrayidx131 = getelementptr inbounds i8, ptr %122, i64 %123
  store i8 32, ptr %arrayidx131, align 1, !tbaa !10
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %for.body115
  br label %for.inc133

for.inc133:                                       ; preds = %if.end132
  %124 = load i32, ptr %i, align 4, !tbaa !14
  %inc134 = add nsw i32 %124, 1
  store i32 %inc134, ptr %i, align 4, !tbaa !14
  br label %for.cond112, !llvm.loop !98

for.end135:                                       ; preds = %for.cond112
  %125 = load ptr, ptr %new_name, align 8, !tbaa !4
  %126 = load i64, ptr %k, align 8, !tbaa !8
  %sub = sub i64 %126, 1
  %arrayidx136 = getelementptr inbounds i8, ptr %125, i64 %sub
  %127 = load i8, ptr %arrayidx136, align 1, !tbaa !10
  %conv137 = sext i8 %127 to i32
  %cmp138 = icmp eq i32 %conv137, 62
  br i1 %cmp138, label %if.then140, label %if.end143

if.then140:                                       ; preds = %for.end135
  %128 = load ptr, ptr %new_name, align 8, !tbaa !4
  %129 = load i64, ptr %k, align 8, !tbaa !8
  %inc141 = add i64 %129, 1
  store i64 %inc141, ptr %k, align 8, !tbaa !8
  %arrayidx142 = getelementptr inbounds i8, ptr %128, i64 %129
  store i8 32, ptr %arrayidx142, align 1, !tbaa !10
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %for.end135
  %130 = load ptr, ptr %new_name, align 8, !tbaa !4
  %131 = load i64, ptr %k, align 8, !tbaa !8
  %inc144 = add i64 %131, 1
  store i64 %inc144, ptr %k, align 8, !tbaa !8
  %arrayidx145 = getelementptr inbounds i8, ptr %130, i64 %131
  store i8 62, ptr %arrayidx145, align 1, !tbaa !10
  %132 = load ptr, ptr %new_name, align 8, !tbaa !4
  %133 = load i64, ptr %k, align 8, !tbaa !8
  %arrayidx146 = getelementptr inbounds i8, ptr %132, i64 %133
  store i8 0, ptr %arrayidx146, align 1, !tbaa !10
  %134 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %135 = load ptr, ptr %new_name, align 8, !tbaa !4
  %136 = load i64, ptr %k, align 8, !tbaa !8
  %call147 = call ptr @vtkParse_CacheString(ptr noundef %134, ptr noundef %135, i64 noundef %136)
  %137 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Name148 = getelementptr inbounds %struct._ClassInfo, ptr %137, i32 0, i32 2
  store ptr %call147, ptr %Name148, align 8, !tbaa !96
  %138 = load ptr, ptr %new_name, align 8, !tbaa !4
  call void @free(ptr noundef %138) #6
  %139 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %140 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %141 = load i32, ptr %m, align 4, !tbaa !14
  %142 = load ptr, ptr %arg_names, align 8, !tbaa !4
  %143 = load ptr, ptr %args.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %arg_types, align 8, !tbaa !4
  call void @class_substitution(ptr noundef %139, ptr noundef %140, i32 noundef %141, ptr noundef %142, ptr noundef %143, ptr noundef %144)
  %145 = load ptr, ptr %new_args, align 8, !tbaa !4
  call void @free(ptr noundef %145) #6
  %146 = load ptr, ptr %arg_names, align 8, !tbaa !4
  call void @free(ptr noundef %146) #6
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond149

for.cond149:                                      ; preds = %for.inc160, %if.end143
  %147 = load i32, ptr %i, align 4, !tbaa !14
  %148 = load i32, ptr %m, align 4, !tbaa !14
  %cmp150 = icmp slt i32 %147, %148
  br i1 %cmp150, label %for.body152, label %for.end162

for.body152:                                      ; preds = %for.cond149
  %149 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %150 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom153 = sext i32 %150 to i64
  %arrayidx154 = getelementptr inbounds ptr, ptr %149, i64 %idxprom153
  %151 = load ptr, ptr %arrayidx154, align 8, !tbaa !4
  %tobool155 = icmp ne ptr %151, null
  br i1 %tobool155, label %if.then156, label %if.end159

if.then156:                                       ; preds = %for.body152
  %152 = load ptr, ptr %arg_types, align 8, !tbaa !4
  %153 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom157 = sext i32 %153 to i64
  %arrayidx158 = getelementptr inbounds ptr, ptr %152, i64 %idxprom157
  %154 = load ptr, ptr %arrayidx158, align 8, !tbaa !4
  call void @vtkParse_FreeValue(ptr noundef %154)
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %for.body152
  br label %for.inc160

for.inc160:                                       ; preds = %if.end159
  %155 = load i32, ptr %i, align 4, !tbaa !14
  %inc161 = add nsw i32 %155, 1
  store i32 %inc161, ptr %i, align 4, !tbaa !14
  br label %for.cond149, !llvm.loop !99

for.end162:                                       ; preds = %for.cond149
  %156 = load ptr, ptr %arg_types, align 8, !tbaa !4
  call void @free(ptr noundef %156) #6
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end162, %if.then14, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_name) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg_types) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg_names) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_args) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #6
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

declare void @vtkParse_InitValue(ptr noundef) #1

declare void @vtkParse_FreeTemplate(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @class_substitution(ptr noundef %data, ptr noundef %cache, i32 noundef %m, ptr noundef %arg_names, ptr noundef %arg_values, ptr noundef %arg_types) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %arg_names.addr = alloca ptr, align 8
  %arg_values.addr = alloca ptr, align 8
  %arg_types.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !14
  store ptr %arg_names, ptr %arg_names.addr, align 8, !tbaa !4
  store ptr %arg_values, ptr %arg_values.addr, align 8, !tbaa !4
  store ptr %arg_types, ptr %arg_types.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfSuperClasses = getelementptr inbounds %struct._ClassInfo, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %NumberOfSuperClasses, align 8, !tbaa !100
  store i32 %1, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !14
  %3 = load i32, ptr %n, align 4, !tbaa !14
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %SuperClasses = getelementptr inbounds %struct._ClassInfo, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %SuperClasses, align 8, !tbaa !101
  %7 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %9 = load i32, ptr %m.addr, align 4, !tbaa !14
  %10 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %call = call ptr @vtkparse_string_replace(ptr noundef %4, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %SuperClasses1 = getelementptr inbounds %struct._ClassInfo, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %SuperClasses1, align 8, !tbaa !101
  %14 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %13, i64 %idxprom2
  store ptr %call, ptr %arrayidx3, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !102

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfClasses = getelementptr inbounds %struct._ClassInfo, ptr %16, i32 0, i32 9
  %17 = load i32, ptr %NumberOfClasses, align 8, !tbaa !103
  store i32 %17, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %18 = load i32, ptr %i, align 4, !tbaa !14
  %19 = load i32, ptr %n, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %18, %19
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %20 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Classes = getelementptr inbounds %struct._ClassInfo, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %Classes, align 8, !tbaa !104
  %22 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom7 = sext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %21, i64 %idxprom7
  %23 = load ptr, ptr %arrayidx8, align 8, !tbaa !4
  %24 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %25 = load i32, ptr %m.addr, align 4, !tbaa !14
  %26 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @class_substitution(ptr noundef %23, ptr noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %29 = load i32, ptr %i, align 4, !tbaa !14
  %inc10 = add nsw i32 %29, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !14
  br label %for.cond4, !llvm.loop !105

for.end11:                                        ; preds = %for.cond4
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfFunctions = getelementptr inbounds %struct._ClassInfo, ptr %30, i32 0, i32 11
  %31 = load i32, ptr %NumberOfFunctions, align 8, !tbaa !106
  store i32 %31, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %for.end11
  %32 = load i32, ptr %i, align 4, !tbaa !14
  %33 = load i32, ptr %n, align 4, !tbaa !14
  %cmp13 = icmp slt i32 %32, %33
  br i1 %cmp13, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond12
  %34 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Functions = getelementptr inbounds %struct._ClassInfo, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %Functions, align 8, !tbaa !107
  %36 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom15 = sext i32 %36 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %35, i64 %idxprom15
  %37 = load ptr, ptr %arrayidx16, align 8, !tbaa !4
  %38 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %39 = load i32, ptr %m.addr, align 4, !tbaa !14
  %40 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @func_substitution(ptr noundef %37, ptr noundef %38, i32 noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %43 = load i32, ptr %i, align 4, !tbaa !14
  %inc18 = add nsw i32 %43, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !14
  br label %for.cond12, !llvm.loop !108

for.end19:                                        ; preds = %for.cond12
  %44 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfConstants = getelementptr inbounds %struct._ClassInfo, ptr %44, i32 0, i32 13
  %45 = load i32, ptr %NumberOfConstants, align 8, !tbaa !109
  store i32 %45, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %for.end19
  %46 = load i32, ptr %i, align 4, !tbaa !14
  %47 = load i32, ptr %n, align 4, !tbaa !14
  %cmp21 = icmp slt i32 %46, %47
  br i1 %cmp21, label %for.body22, label %for.end27

for.body22:                                       ; preds = %for.cond20
  %48 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Constants = getelementptr inbounds %struct._ClassInfo, ptr %48, i32 0, i32 14
  %49 = load ptr, ptr %Constants, align 8, !tbaa !110
  %50 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom23 = sext i32 %50 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %49, i64 %idxprom23
  %51 = load ptr, ptr %arrayidx24, align 8, !tbaa !4
  %52 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %53 = load i32, ptr %m.addr, align 4, !tbaa !14
  %54 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @value_substitution(ptr noundef %51, ptr noundef %52, i32 noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body22
  %57 = load i32, ptr %i, align 4, !tbaa !14
  %inc26 = add nsw i32 %57, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !14
  br label %for.cond20, !llvm.loop !111

for.end27:                                        ; preds = %for.cond20
  %58 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfVariables = getelementptr inbounds %struct._ClassInfo, ptr %58, i32 0, i32 15
  %59 = load i32, ptr %NumberOfVariables, align 8, !tbaa !112
  store i32 %59, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc33, %for.end27
  %60 = load i32, ptr %i, align 4, !tbaa !14
  %61 = load i32, ptr %n, align 4, !tbaa !14
  %cmp29 = icmp slt i32 %60, %61
  br i1 %cmp29, label %for.body30, label %for.end35

for.body30:                                       ; preds = %for.cond28
  %62 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Variables = getelementptr inbounds %struct._ClassInfo, ptr %62, i32 0, i32 16
  %63 = load ptr, ptr %Variables, align 8, !tbaa !113
  %64 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom31 = sext i32 %64 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %63, i64 %idxprom31
  %65 = load ptr, ptr %arrayidx32, align 8, !tbaa !4
  %66 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %67 = load i32, ptr %m.addr, align 4, !tbaa !14
  %68 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %69 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %70 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @value_substitution(ptr noundef %65, ptr noundef %66, i32 noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body30
  %71 = load i32, ptr %i, align 4, !tbaa !14
  %inc34 = add nsw i32 %71, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !14
  br label %for.cond28, !llvm.loop !114

for.end35:                                        ; preds = %for.cond28
  %72 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfTypedefs = getelementptr inbounds %struct._ClassInfo, ptr %72, i32 0, i32 19
  %73 = load i32, ptr %NumberOfTypedefs, align 8, !tbaa !115
  store i32 %73, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc41, %for.end35
  %74 = load i32, ptr %i, align 4, !tbaa !14
  %75 = load i32, ptr %n, align 4, !tbaa !14
  %cmp37 = icmp slt i32 %74, %75
  br i1 %cmp37, label %for.body38, label %for.end43

for.body38:                                       ; preds = %for.cond36
  %76 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Typedefs = getelementptr inbounds %struct._ClassInfo, ptr %76, i32 0, i32 20
  %77 = load ptr, ptr %Typedefs, align 8, !tbaa !116
  %78 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom39 = sext i32 %78 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %77, i64 %idxprom39
  %79 = load ptr, ptr %arrayidx40, align 8, !tbaa !4
  %80 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %81 = load i32, ptr %m.addr, align 4, !tbaa !14
  %82 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %84 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @value_substitution(ptr noundef %79, ptr noundef %80, i32 noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body38
  %85 = load i32, ptr %i, align 4, !tbaa !14
  %inc42 = add nsw i32 %85, 1
  store i32 %inc42, ptr %i, align 4, !tbaa !14
  br label %for.cond36, !llvm.loop !117

for.end43:                                        ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

declare void @vtkParse_FreeValue(ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @vtkParse_GetTemplateMacroTypes() #0 {
entry:
  ret ptr @vtkParse_GetTemplateMacroTypes.types
}

; Function Attrs: nounwind uwtable
define ptr @vtkParse_GetArrayTypes() #0 {
entry:
  ret ptr @vtkParse_GetArrayTypes.types
}

; Function Attrs: nounwind uwtable
define internal void @func_substitution(ptr noundef %data, ptr noundef %cache, i32 noundef %m, ptr noundef %arg_names, ptr noundef %arg_values, ptr noundef %arg_types) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %arg_names.addr = alloca ptr, align 8
  %arg_values.addr = alloca ptr, align 8
  %arg_types.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !14
  store ptr %arg_names, ptr %arg_names.addr, align 8, !tbaa !4
  store ptr %arg_values, ptr %arg_values.addr, align 8, !tbaa !4
  store ptr %arg_types, ptr %arg_types.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfParameters = getelementptr inbounds %struct._FunctionInfo, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %NumberOfParameters, align 8, !tbaa !69
  store i32 %1, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !14
  %3 = load i32, ptr %n, align 4, !tbaa !14
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters = getelementptr inbounds %struct._FunctionInfo, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %Parameters, align 8, !tbaa !70
  %6 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %8 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %9 = load i32, ptr %m.addr, align 4, !tbaa !14
  %10 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @value_substitution(ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue = getelementptr inbounds %struct._FunctionInfo, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %ReturnValue, align 8, !tbaa !67
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %16 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue1 = getelementptr inbounds %struct._FunctionInfo, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %ReturnValue1, align 8, !tbaa !67
  %18 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %19 = load i32, ptr %m.addr, align 4, !tbaa !14
  %20 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @value_substitution(ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %23 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Signature = getelementptr inbounds %struct._FunctionInfo, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %Signature, align 8, !tbaa !119
  %tobool2 = icmp ne ptr %24, null
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %25 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Signature4 = getelementptr inbounds %struct._FunctionInfo, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %Signature4, align 8, !tbaa !119
  %28 = load i32, ptr %m.addr, align 4, !tbaa !14
  %29 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %call = call ptr @vtkparse_string_replace(ptr noundef %25, ptr noundef %27, i32 noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Signature5 = getelementptr inbounds %struct._FunctionInfo, ptr %31, i32 0, i32 5
  store ptr %call, ptr %Signature5, align 8, !tbaa !119
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %32 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %NumberOfArguments = getelementptr inbounds %struct._FunctionInfo, ptr %32, i32 0, i32 26
  %33 = load i32, ptr %NumberOfArguments, align 8, !tbaa !120
  store i32 %33, ptr %n, align 4, !tbaa !14
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc36, %if.end6
  %34 = load i32, ptr %i, align 4, !tbaa !14
  %35 = load i32, ptr %n, align 4, !tbaa !14
  %cmp8 = icmp slt i32 %34, %35
  br i1 %cmp8, label %for.body9, label %for.end38

for.body9:                                        ; preds = %for.cond7
  %36 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters10 = getelementptr inbounds %struct._FunctionInfo, ptr %36, i32 0, i32 8
  %37 = load ptr, ptr %Parameters10, align 8, !tbaa !70
  %38 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom11 = sext i32 %38 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %37, i64 %idxprom11
  %39 = load ptr, ptr %arrayidx12, align 8, !tbaa !4
  %Type = getelementptr inbounds %struct._ValueInfo, ptr %39, i32 0, i32 5
  %40 = load i32, ptr %Type, align 8, !tbaa !28
  %41 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ArgTypes = getelementptr inbounds %struct._FunctionInfo, ptr %41, i32 0, i32 27
  %42 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom13 = sext i32 %42 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], ptr %ArgTypes, i64 0, i64 %idxprom13
  store i32 %40, ptr %arrayidx14, align 4, !tbaa !14
  %43 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters15 = getelementptr inbounds %struct._FunctionInfo, ptr %43, i32 0, i32 8
  %44 = load ptr, ptr %Parameters15, align 8, !tbaa !70
  %45 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom16 = sext i32 %45 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %44, i64 %idxprom16
  %46 = load ptr, ptr %arrayidx17, align 8, !tbaa !4
  %Class = getelementptr inbounds %struct._ValueInfo, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %Class, align 8, !tbaa !27
  %48 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ArgClasses = getelementptr inbounds %struct._FunctionInfo, ptr %48, i32 0, i32 28
  %49 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom18 = sext i32 %49 to i64
  %arrayidx19 = getelementptr inbounds [20 x ptr], ptr %ArgClasses, i64 0, i64 %idxprom18
  store ptr %47, ptr %arrayidx19, align 8, !tbaa !4
  %50 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters20 = getelementptr inbounds %struct._FunctionInfo, ptr %50, i32 0, i32 8
  %51 = load ptr, ptr %Parameters20, align 8, !tbaa !70
  %52 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom21 = sext i32 %52 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %51, i64 %idxprom21
  %53 = load ptr, ptr %arrayidx22, align 8, !tbaa !4
  %NumberOfDimensions = getelementptr inbounds %struct._ValueInfo, ptr %53, i32 0, i32 9
  %54 = load i32, ptr %NumberOfDimensions, align 8, !tbaa !18
  %cmp23 = icmp eq i32 %54, 1
  br i1 %cmp23, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %for.body9
  %55 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters24 = getelementptr inbounds %struct._FunctionInfo, ptr %55, i32 0, i32 8
  %56 = load ptr, ptr %Parameters24, align 8, !tbaa !70
  %57 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom25 = sext i32 %57 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %56, i64 %idxprom25
  %58 = load ptr, ptr %arrayidx26, align 8, !tbaa !4
  %Count = getelementptr inbounds %struct._ValueInfo, ptr %58, i32 0, i32 7
  %59 = load i32, ptr %Count, align 8, !tbaa !23
  %cmp27 = icmp sgt i32 %59, 0
  br i1 %cmp27, label %if.then28, label %if.end35

if.then28:                                        ; preds = %land.lhs.true
  %60 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Parameters29 = getelementptr inbounds %struct._FunctionInfo, ptr %60, i32 0, i32 8
  %61 = load ptr, ptr %Parameters29, align 8, !tbaa !70
  %62 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom30 = sext i32 %62 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %61, i64 %idxprom30
  %63 = load ptr, ptr %arrayidx31, align 8, !tbaa !4
  %Count32 = getelementptr inbounds %struct._ValueInfo, ptr %63, i32 0, i32 7
  %64 = load i32, ptr %Count32, align 8, !tbaa !23
  %65 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ArgCounts = getelementptr inbounds %struct._FunctionInfo, ptr %65, i32 0, i32 29
  %66 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom33 = sext i32 %66 to i64
  %arrayidx34 = getelementptr inbounds [20 x i32], ptr %ArgCounts, i64 0, i64 %idxprom33
  store i32 %64, ptr %arrayidx34, align 4, !tbaa !14
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %land.lhs.true, %for.body9
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %67 = load i32, ptr %i, align 4, !tbaa !14
  %inc37 = add nsw i32 %67, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !14
  br label %for.cond7, !llvm.loop !121

for.end38:                                        ; preds = %for.cond7
  %68 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue39 = getelementptr inbounds %struct._FunctionInfo, ptr %68, i32 0, i32 9
  %69 = load ptr, ptr %ReturnValue39, align 8, !tbaa !67
  %tobool40 = icmp ne ptr %69, null
  br i1 %tobool40, label %if.then41, label %if.end57

if.then41:                                        ; preds = %for.end38
  %70 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue42 = getelementptr inbounds %struct._FunctionInfo, ptr %70, i32 0, i32 9
  %71 = load ptr, ptr %ReturnValue42, align 8, !tbaa !67
  %Type43 = getelementptr inbounds %struct._ValueInfo, ptr %71, i32 0, i32 5
  %72 = load i32, ptr %Type43, align 8, !tbaa !28
  %73 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnType = getelementptr inbounds %struct._FunctionInfo, ptr %73, i32 0, i32 30
  store i32 %72, ptr %ReturnType, align 8, !tbaa !122
  %74 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue44 = getelementptr inbounds %struct._FunctionInfo, ptr %74, i32 0, i32 9
  %75 = load ptr, ptr %ReturnValue44, align 8, !tbaa !67
  %Class45 = getelementptr inbounds %struct._ValueInfo, ptr %75, i32 0, i32 6
  %76 = load ptr, ptr %Class45, align 8, !tbaa !27
  %77 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnClass = getelementptr inbounds %struct._FunctionInfo, ptr %77, i32 0, i32 31
  store ptr %76, ptr %ReturnClass, align 8, !tbaa !123
  %78 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue46 = getelementptr inbounds %struct._FunctionInfo, ptr %78, i32 0, i32 9
  %79 = load ptr, ptr %ReturnValue46, align 8, !tbaa !67
  %NumberOfDimensions47 = getelementptr inbounds %struct._ValueInfo, ptr %79, i32 0, i32 9
  %80 = load i32, ptr %NumberOfDimensions47, align 8, !tbaa !18
  %cmp48 = icmp eq i32 %80, 1
  br i1 %cmp48, label %land.lhs.true49, label %if.end56

land.lhs.true49:                                  ; preds = %if.then41
  %81 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue50 = getelementptr inbounds %struct._FunctionInfo, ptr %81, i32 0, i32 9
  %82 = load ptr, ptr %ReturnValue50, align 8, !tbaa !67
  %Count51 = getelementptr inbounds %struct._ValueInfo, ptr %82, i32 0, i32 7
  %83 = load i32, ptr %Count51, align 8, !tbaa !23
  %cmp52 = icmp sgt i32 %83, 0
  br i1 %cmp52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %land.lhs.true49
  %84 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %ReturnValue54 = getelementptr inbounds %struct._FunctionInfo, ptr %84, i32 0, i32 9
  %85 = load ptr, ptr %ReturnValue54, align 8, !tbaa !67
  %Count55 = getelementptr inbounds %struct._ValueInfo, ptr %85, i32 0, i32 7
  %86 = load i32, ptr %Count55, align 8, !tbaa !23
  %87 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %HintSize = getelementptr inbounds %struct._FunctionInfo, ptr %87, i32 0, i32 33
  store i32 %86, ptr %HintSize, align 4, !tbaa !124
  %88 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %HaveHint = getelementptr inbounds %struct._FunctionInfo, ptr %88, i32 0, i32 32
  store i32 1, ptr %HaveHint, align 8, !tbaa !125
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %land.lhs.true49, %if.then41
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %for.end38
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @value_substitution(ptr noundef %data, ptr noundef %cache, i32 noundef %m, ptr noundef %arg_names, ptr noundef %arg_values, ptr noundef %arg_types) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %cache.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %arg_names.addr = alloca ptr, align 8
  %arg_values.addr = alloca ptr, align 8
  %arg_types.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %cache, ptr %cache.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !14
  store ptr %arg_names, ptr %arg_names.addr, align 8, !tbaa !4
  store ptr %arg_values, ptr %arg_values.addr, align 8, !tbaa !4
  store ptr %arg_types, ptr %arg_types.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %2 = load i32, ptr %m.addr, align 4, !tbaa !14
  %3 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @vtkParse_ExpandTypedefs(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %8 = load i32, ptr %m.addr, align 4, !tbaa !14
  %9 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  call void @vtkParse_ExpandValues(ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function = getelementptr inbounds %struct._ValueInfo, ptr %11, i32 0, i32 11
  %12 = load ptr, ptr %Function, align 8, !tbaa !33
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %Function1 = getelementptr inbounds %struct._ValueInfo, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %Function1, align 8, !tbaa !33
  %15 = load ptr, ptr %cache.addr, align 8, !tbaa !4
  %16 = load i32, ptr %m.addr, align 4, !tbaa !14
  %17 = load ptr, ptr %arg_names.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %arg_values.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %arg_types.addr, align 8, !tbaa !4
  call void @func_substitution(ptr noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!17, !5, i64 24}
!17 = !{!"_ValueInfo", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !15, i64 32, !5, i64 40, !15, i64 48, !5, i64 56, !15, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !15, i64 96, !15, i64 100, !15, i64 104}
!18 = !{!17, !15, i64 64}
!19 = !{!17, !5, i64 72}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{!17, !15, i64 48}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = !{!17, !5, i64 40}
!28 = !{!17, !15, i64 32}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = !{!17, !5, i64 80}
!34 = !{!17, !5, i64 8}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = !{!38, !9, i64 0}
!38 = !{!"vtk_type_struct", !9, i64 0, !5, i64 8, !15, i64 16}
!39 = !{!38, !5, i64 8}
!40 = !{!38, !15, i64 16}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = !{!17, !15, i64 96}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = !{!58, !5, i64 24}
!58 = !{!"_FunctionInfo", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !15, i64 48, !5, i64 56, !5, i64 64, !15, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !6, i64 156, !6, i64 240, !6, i64 400, !15, i64 480, !5, i64 488, !15, i64 496, !15, i64 500, !15, i64 504, !15, i64 508, !15, i64 512}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = !{!58, !5, i64 40}
!64 = !{!58, !15, i64 120}
!65 = !{!58, !15, i64 124}
!66 = !{!58, !15, i64 148}
!67 = !{!58, !5, i64 64}
!68 = !{!58, !5, i64 8}
!69 = !{!58, !15, i64 48}
!70 = !{!58, !5, i64 56}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = !{!58, !15, i64 132}
!74 = !{!58, !15, i64 140}
!75 = !{!58, !15, i64 128}
!76 = !{!77, !15, i64 0}
!77 = !{!"_TemplateInfo", !15, i64 0, !5, i64 8}
!78 = !{!77, !5, i64 8}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = !{!90, !5, i64 24}
!90 = !{!"_ClassInfo", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !15, i64 32, !5, i64 40, !15, i64 48, !5, i64 56, !15, i64 64, !5, i64 72, !15, i64 80, !5, i64 88, !15, i64 96, !5, i64 104, !15, i64 112, !5, i64 120, !15, i64 128, !5, i64 136, !15, i64 144, !5, i64 152, !15, i64 160, !5, i64 168, !15, i64 176, !5, i64 184, !15, i64 192, !5, i64 200, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = !{!17, !6, i64 0}
!95 = distinct !{!95, !12}
!96 = !{!90, !5, i64 8}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = !{!90, !15, i64 32}
!101 = !{!90, !5, i64 40}
!102 = distinct !{!102, !12}
!103 = !{!90, !15, i64 64}
!104 = !{!90, !5, i64 72}
!105 = distinct !{!105, !12}
!106 = !{!90, !15, i64 80}
!107 = !{!90, !5, i64 88}
!108 = distinct !{!108, !12}
!109 = !{!90, !15, i64 96}
!110 = !{!90, !5, i64 104}
!111 = distinct !{!111, !12}
!112 = !{!90, !15, i64 112}
!113 = !{!90, !5, i64 120}
!114 = distinct !{!114, !12}
!115 = !{!90, !15, i64 144}
!116 = !{!90, !5, i64 152}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = !{!58, !5, i64 32}
!120 = !{!58, !15, i64 152}
!121 = distinct !{!121, !12}
!122 = !{!58, !15, i64 480}
!123 = !{!58, !5, i64 488}
!124 = !{!58, !15, i64 500}
!125 = !{!58, !15, i64 496}
