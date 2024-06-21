; ModuleID = 'samples/532.bc'
source_filename = "../scipy/ndimage/src/ni_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NI_LineBuffer = type { ptr, i64, i64, i64, i64, i64, i64, i64, %struct.NI_Iterator, ptr, i32, i32, double }
%struct.NI_Iterator = type { i32, [32 x i64], [32 x i64], [32 x i64], [32 x i64] }
%struct.tagPyArrayObject_fields = type { %struct._object, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct._object = type { i64, ptr }
%struct.NI_FilterIterator = type { [32 x i64], [32 x i64], [32 x i64], [32 x i64] }
%struct._PyArray_Descr = type { %struct._object, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.pairs = type { double, i64 }

@_scipy_ndimage_ARRAY_API = external global ptr, align 8
@PyExc_RuntimeError = external global ptr, align 8
@.str = private unnamed_addr constant [25 x i8] c"array type not supported\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"unknown error in line processing function\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown error in filter function\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @NI_Correlate1D(ptr noundef %input, ptr noundef %weights, i32 noundef %axis, ptr noundef %output, i32 noundef %mode, double noundef %cval, i64 noundef %origin) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %weights.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cval.addr = alloca double, align 8
  %origin.addr = alloca i64, align 8
  %symmetric = alloca i32, align 4
  %more = alloca i32, align 4
  %ii = alloca i64, align 8
  %jj = alloca i64, align 8
  %ll = alloca i64, align 8
  %lines = alloca i64, align 8
  %length = alloca i64, align 8
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %filter_size = alloca i64, align 8
  %ibuffer = alloca ptr, align 8
  %obuffer = alloca ptr, align 8
  %fw = alloca ptr, align 8
  %iline_buffer = alloca %struct.NI_LineBuffer, align 8
  %oline_buffer = alloca %struct.NI_LineBuffer, align 8
  %_save = alloca ptr, align 8
  %iline = alloca ptr, align 8
  %oline = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !4
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cval, ptr %cval.addr, align 8, !tbaa !11
  store i64 %origin, ptr %origin.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %symmetric) #8
  store i32 0, ptr %symmetric, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %more) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lines) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %filter_size) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibuffer) #8
  store ptr null, ptr %ibuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obuffer) #8
  store ptr null, ptr %obuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw) #8
  call void @llvm.lifetime.start.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.start.p0(i64 1120, ptr %oline_buffer) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #8
  store ptr null, ptr %_save, align 8, !tbaa !4
  %0 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 158
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %2 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call = call ptr @PyArray_DIMS(ptr noundef %2)
  %3 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call1 = call i32 @PyArray_NDIM(ptr noundef %3)
  %call2 = call i64 %1(ptr noundef %call, i32 noundef %call1)
  store i64 %call2, ptr %filter_size, align 8, !tbaa !13
  %4 = load i64, ptr %filter_size, align 8, !tbaa !13
  %div = sdiv i64 %4, 2
  store i64 %div, ptr %size1, align 8, !tbaa !13
  %5 = load i64, ptr %filter_size, align 8, !tbaa !13
  %6 = load i64, ptr %size1, align 8, !tbaa !13
  %sub = sub nsw i64 %5, %6
  %sub3 = sub nsw i64 %sub, 1
  store i64 %sub3, ptr %size2, align 8, !tbaa !13
  %7 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call4 = call ptr @PyArray_DATA(ptr noundef %7)
  store ptr %call4, ptr %fw, align 8, !tbaa !4
  %8 = load i64, ptr %filter_size, align 8, !tbaa !13
  %and = and i64 %8, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  store i32 1, ptr %symmetric, align 4, !tbaa !8
  store i64 1, ptr %ii, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i64, ptr %ii, align 8, !tbaa !13
  %10 = load i64, ptr %filter_size, align 8, !tbaa !13
  %div5 = sdiv i64 %10, 2
  %cmp = icmp sle i64 %9, %div5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %fw, align 8, !tbaa !4
  %12 = load i64, ptr %ii, align 8, !tbaa !13
  %13 = load i64, ptr %size1, align 8, !tbaa !13
  %add = add nsw i64 %12, %13
  %arrayidx6 = getelementptr inbounds double, ptr %11, i64 %add
  %14 = load double, ptr %arrayidx6, align 8, !tbaa !11
  %15 = load ptr, ptr %fw, align 8, !tbaa !4
  %16 = load i64, ptr %size1, align 8, !tbaa !13
  %17 = load i64, ptr %ii, align 8, !tbaa !13
  %sub7 = sub nsw i64 %16, %17
  %arrayidx8 = getelementptr inbounds double, ptr %15, i64 %sub7
  %18 = load double, ptr %arrayidx8, align 8, !tbaa !11
  %sub9 = fsub double %14, %18
  %19 = call double @llvm.fabs.f64(double %sub9)
  %cmp10 = fcmp ogt double %19, 0x3CB0000000000000
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %symmetric, align 4, !tbaa !8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, ptr %ii, align 8, !tbaa !13
  %inc = add nsw i64 %20, 1
  store i64 %inc, ptr %ii, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %if.then11, %for.cond
  %21 = load i32, ptr %symmetric, align 4, !tbaa !8
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %if.then13, label %if.end29

if.then13:                                        ; preds = %for.end
  store i32 -1, ptr %symmetric, align 4, !tbaa !8
  store i64 1, ptr %ii, align 8, !tbaa !13
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc26, %if.then13
  %22 = load i64, ptr %ii, align 8, !tbaa !13
  %23 = load i64, ptr %filter_size, align 8, !tbaa !13
  %div15 = sdiv i64 %23, 2
  %cmp16 = icmp sle i64 %22, %div15
  br i1 %cmp16, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond14
  %24 = load ptr, ptr %fw, align 8, !tbaa !4
  %25 = load i64, ptr %size1, align 8, !tbaa !13
  %26 = load i64, ptr %ii, align 8, !tbaa !13
  %add18 = add nsw i64 %25, %26
  %arrayidx19 = getelementptr inbounds double, ptr %24, i64 %add18
  %27 = load double, ptr %arrayidx19, align 8, !tbaa !11
  %28 = load ptr, ptr %fw, align 8, !tbaa !4
  %29 = load i64, ptr %size1, align 8, !tbaa !13
  %30 = load i64, ptr %ii, align 8, !tbaa !13
  %sub20 = sub nsw i64 %29, %30
  %arrayidx21 = getelementptr inbounds double, ptr %28, i64 %sub20
  %31 = load double, ptr %arrayidx21, align 8, !tbaa !11
  %add22 = fadd double %27, %31
  %32 = call double @llvm.fabs.f64(double %add22)
  %cmp23 = fcmp ogt double %32, 0x3CB0000000000000
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body17
  store i32 0, ptr %symmetric, align 4, !tbaa !8
  br label %for.end28

if.end25:                                         ; preds = %for.body17
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %33 = load i64, ptr %ii, align 8, !tbaa !13
  %inc27 = add nsw i64 %33, 1
  store i64 %inc27, ptr %ii, align 8, !tbaa !13
  br label %for.cond14

for.end28:                                        ; preds = %if.then24, %for.cond14
  br label %if.end29

if.end29:                                         ; preds = %for.end28, %for.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %entry
  store i64 -1, ptr %lines, align 8, !tbaa !13
  %34 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %35 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %36 = load i64, ptr %size1, align 8, !tbaa !13
  %37 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add31 = add nsw i64 %36, %37
  %38 = load i64, ptr %size2, align 8, !tbaa !13
  %39 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub32 = sub nsw i64 %38, %39
  %call33 = call i32 @NI_AllocateLineBuffer(ptr noundef %34, i32 noundef %35, i64 noundef %add31, i64 noundef %sub32, ptr noundef %lines, i64 noundef 256000, ptr noundef %ibuffer)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end30
  br label %exit

if.end36:                                         ; preds = %if.end30
  %40 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %41 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call37 = call i32 @NI_AllocateLineBuffer(ptr noundef %40, i32 noundef %41, i64 noundef 0, i64 noundef 0, ptr noundef %lines, i64 noundef 256000, ptr noundef %obuffer)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end36
  br label %exit

if.end40:                                         ; preds = %if.end36
  %42 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %43 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %44 = load i64, ptr %size1, align 8, !tbaa !13
  %45 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add41 = add nsw i64 %44, %45
  %46 = load i64, ptr %size2, align 8, !tbaa !13
  %47 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub42 = sub nsw i64 %46, %47
  %48 = load i64, ptr %lines, align 8, !tbaa !13
  %49 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  %50 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %51 = load double, ptr %cval.addr, align 8, !tbaa !11
  %call43 = call i32 @NI_InitLineBuffer(ptr noundef %42, i32 noundef %43, i64 noundef %add41, i64 noundef %sub42, i64 noundef %48, ptr noundef %49, i32 noundef %50, double noundef %51, ptr noundef %iline_buffer)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end40
  br label %exit

if.end46:                                         ; preds = %if.end40
  %52 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %53 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %54 = load i64, ptr %lines, align 8, !tbaa !13
  %55 = load ptr, ptr %obuffer, align 8, !tbaa !4
  %56 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call47 = call i32 @NI_InitLineBuffer(ptr noundef %52, i32 noundef %53, i64 noundef 0, i64 noundef 0, i64 noundef %54, ptr noundef %55, i32 noundef %56, double noundef 0.000000e+00, ptr noundef %oline_buffer)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end46
  br label %exit

if.end50:                                         ; preds = %if.end46
  br label %do.body

do.body:                                          ; preds = %if.end50
  %call51 = call ptr @PyEval_SaveThread()
  store ptr %call51, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call52 = call i32 @PyArray_NDIM(ptr noundef %57)
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %58 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %59 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call54 = call i64 @PyArray_DIM(ptr noundef %58, i32 noundef %59)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call54, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, ptr %length, align 8, !tbaa !13
  %60 = load i64, ptr %size1, align 8, !tbaa !13
  %61 = load ptr, ptr %fw, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds double, ptr %61, i64 %60
  store ptr %add.ptr, ptr %fw, align 8, !tbaa !4
  br label %do.body55

do.body55:                                        ; preds = %do.cond162, %cond.end
  %call56 = call i32 @NI_ArrayToLineBuffer(ptr noundef %iline_buffer, ptr noundef %lines, ptr noundef %more)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %do.body55
  br label %exit

if.end59:                                         ; preds = %do.body55
  store i64 0, ptr %ii, align 8, !tbaa !13
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc155, %if.end59
  %62 = load i64, ptr %ii, align 8, !tbaa !13
  %63 = load i64, ptr %lines, align 8, !tbaa !13
  %cmp61 = icmp slt i64 %62, %63
  br i1 %cmp61, label %for.body62, label %for.end157

for.body62:                                       ; preds = %for.cond60
  call void @llvm.lifetime.start.p0(i64 8, ptr %iline) #8
  %buffer_data = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 0
  %64 = load ptr, ptr %buffer_data, align 8, !tbaa !15
  %65 = load i64, ptr %ii, align 8, !tbaa !13
  %line_length = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 2
  %66 = load i64, ptr %line_length, align 8, !tbaa !18
  %size163 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 4
  %67 = load i64, ptr %size163, align 8, !tbaa !19
  %add64 = add nsw i64 %66, %67
  %size265 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 5
  %68 = load i64, ptr %size265, align 8, !tbaa !20
  %add66 = add nsw i64 %add64, %68
  %mul = mul nsw i64 %65, %add66
  %add.ptr67 = getelementptr inbounds double, ptr %64, i64 %mul
  %69 = load i64, ptr %size1, align 8, !tbaa !13
  %add.ptr68 = getelementptr inbounds double, ptr %add.ptr67, i64 %69
  store ptr %add.ptr68, ptr %iline, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oline) #8
  %buffer_data69 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 0
  %70 = load ptr, ptr %buffer_data69, align 8, !tbaa !15
  %71 = load i64, ptr %ii, align 8, !tbaa !13
  %line_length70 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 2
  %72 = load i64, ptr %line_length70, align 8, !tbaa !18
  %size171 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 4
  %73 = load i64, ptr %size171, align 8, !tbaa !19
  %add72 = add nsw i64 %72, %73
  %size273 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 5
  %74 = load i64, ptr %size273, align 8, !tbaa !20
  %add74 = add nsw i64 %add72, %74
  %mul75 = mul nsw i64 %71, %add74
  %add.ptr76 = getelementptr inbounds double, ptr %70, i64 %mul75
  store ptr %add.ptr76, ptr %oline, align 8, !tbaa !4
  %75 = load i32, ptr %symmetric, align 4, !tbaa !8
  %cmp77 = icmp sgt i32 %75, 0
  br i1 %cmp77, label %if.then78, label %if.else

if.then78:                                        ; preds = %for.body62
  store i64 0, ptr %ll, align 8, !tbaa !13
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc100, %if.then78
  %76 = load i64, ptr %ll, align 8, !tbaa !13
  %77 = load i64, ptr %length, align 8, !tbaa !13
  %cmp80 = icmp slt i64 %76, %77
  br i1 %cmp80, label %for.body81, label %for.end102

for.body81:                                       ; preds = %for.cond79
  %78 = load ptr, ptr %iline, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds double, ptr %78, i64 0
  %79 = load double, ptr %arrayidx82, align 8, !tbaa !11
  %80 = load ptr, ptr %fw, align 8, !tbaa !4
  %arrayidx83 = getelementptr inbounds double, ptr %80, i64 0
  %81 = load double, ptr %arrayidx83, align 8, !tbaa !11
  %mul84 = fmul double %79, %81
  %82 = load ptr, ptr %oline, align 8, !tbaa !4
  %83 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx85 = getelementptr inbounds double, ptr %82, i64 %83
  store double %mul84, ptr %arrayidx85, align 8, !tbaa !11
  %84 = load i64, ptr %size1, align 8, !tbaa !13
  %sub86 = sub nsw i64 0, %84
  store i64 %sub86, ptr %jj, align 8, !tbaa !13
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc97, %for.body81
  %85 = load i64, ptr %jj, align 8, !tbaa !13
  %cmp88 = icmp slt i64 %85, 0
  br i1 %cmp88, label %for.body89, label %for.end99

for.body89:                                       ; preds = %for.cond87
  %86 = load ptr, ptr %iline, align 8, !tbaa !4
  %87 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx90 = getelementptr inbounds double, ptr %86, i64 %87
  %88 = load double, ptr %arrayidx90, align 8, !tbaa !11
  %89 = load ptr, ptr %iline, align 8, !tbaa !4
  %90 = load i64, ptr %jj, align 8, !tbaa !13
  %sub91 = sub nsw i64 0, %90
  %arrayidx92 = getelementptr inbounds double, ptr %89, i64 %sub91
  %91 = load double, ptr %arrayidx92, align 8, !tbaa !11
  %add93 = fadd double %88, %91
  %92 = load ptr, ptr %fw, align 8, !tbaa !4
  %93 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx94 = getelementptr inbounds double, ptr %92, i64 %93
  %94 = load double, ptr %arrayidx94, align 8, !tbaa !11
  %95 = load ptr, ptr %oline, align 8, !tbaa !4
  %96 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx96 = getelementptr inbounds double, ptr %95, i64 %96
  %97 = load double, ptr %arrayidx96, align 8, !tbaa !11
  %98 = call double @llvm.fmuladd.f64(double %add93, double %94, double %97)
  store double %98, ptr %arrayidx96, align 8, !tbaa !11
  br label %for.inc97

for.inc97:                                        ; preds = %for.body89
  %99 = load i64, ptr %jj, align 8, !tbaa !13
  %inc98 = add nsw i64 %99, 1
  store i64 %inc98, ptr %jj, align 8, !tbaa !13
  br label %for.cond87

for.end99:                                        ; preds = %for.cond87
  %100 = load ptr, ptr %iline, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %100, i32 1
  store ptr %incdec.ptr, ptr %iline, align 8, !tbaa !4
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %101 = load i64, ptr %ll, align 8, !tbaa !13
  %inc101 = add nsw i64 %101, 1
  store i64 %inc101, ptr %ll, align 8, !tbaa !13
  br label %for.cond79

for.end102:                                       ; preds = %for.cond79
  br label %if.end154

if.else:                                          ; preds = %for.body62
  %102 = load i32, ptr %symmetric, align 4, !tbaa !8
  %cmp103 = icmp slt i32 %102, 0
  br i1 %cmp103, label %if.then104, label %if.else130

if.then104:                                       ; preds = %if.else
  store i64 0, ptr %ll, align 8, !tbaa !13
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc127, %if.then104
  %103 = load i64, ptr %ll, align 8, !tbaa !13
  %104 = load i64, ptr %length, align 8, !tbaa !13
  %cmp106 = icmp slt i64 %103, %104
  br i1 %cmp106, label %for.body107, label %for.end129

for.body107:                                      ; preds = %for.cond105
  %105 = load ptr, ptr %iline, align 8, !tbaa !4
  %arrayidx108 = getelementptr inbounds double, ptr %105, i64 0
  %106 = load double, ptr %arrayidx108, align 8, !tbaa !11
  %107 = load ptr, ptr %fw, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds double, ptr %107, i64 0
  %108 = load double, ptr %arrayidx109, align 8, !tbaa !11
  %mul110 = fmul double %106, %108
  %109 = load ptr, ptr %oline, align 8, !tbaa !4
  %110 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx111 = getelementptr inbounds double, ptr %109, i64 %110
  store double %mul110, ptr %arrayidx111, align 8, !tbaa !11
  %111 = load i64, ptr %size1, align 8, !tbaa !13
  %sub112 = sub nsw i64 0, %111
  store i64 %sub112, ptr %jj, align 8, !tbaa !13
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc123, %for.body107
  %112 = load i64, ptr %jj, align 8, !tbaa !13
  %cmp114 = icmp slt i64 %112, 0
  br i1 %cmp114, label %for.body115, label %for.end125

for.body115:                                      ; preds = %for.cond113
  %113 = load ptr, ptr %iline, align 8, !tbaa !4
  %114 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx116 = getelementptr inbounds double, ptr %113, i64 %114
  %115 = load double, ptr %arrayidx116, align 8, !tbaa !11
  %116 = load ptr, ptr %iline, align 8, !tbaa !4
  %117 = load i64, ptr %jj, align 8, !tbaa !13
  %sub117 = sub nsw i64 0, %117
  %arrayidx118 = getelementptr inbounds double, ptr %116, i64 %sub117
  %118 = load double, ptr %arrayidx118, align 8, !tbaa !11
  %sub119 = fsub double %115, %118
  %119 = load ptr, ptr %fw, align 8, !tbaa !4
  %120 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx120 = getelementptr inbounds double, ptr %119, i64 %120
  %121 = load double, ptr %arrayidx120, align 8, !tbaa !11
  %122 = load ptr, ptr %oline, align 8, !tbaa !4
  %123 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx122 = getelementptr inbounds double, ptr %122, i64 %123
  %124 = load double, ptr %arrayidx122, align 8, !tbaa !11
  %125 = call double @llvm.fmuladd.f64(double %sub119, double %121, double %124)
  store double %125, ptr %arrayidx122, align 8, !tbaa !11
  br label %for.inc123

for.inc123:                                       ; preds = %for.body115
  %126 = load i64, ptr %jj, align 8, !tbaa !13
  %inc124 = add nsw i64 %126, 1
  store i64 %inc124, ptr %jj, align 8, !tbaa !13
  br label %for.cond113

for.end125:                                       ; preds = %for.cond113
  %127 = load ptr, ptr %iline, align 8, !tbaa !4
  %incdec.ptr126 = getelementptr inbounds double, ptr %127, i32 1
  store ptr %incdec.ptr126, ptr %iline, align 8, !tbaa !4
  br label %for.inc127

for.inc127:                                       ; preds = %for.end125
  %128 = load i64, ptr %ll, align 8, !tbaa !13
  %inc128 = add nsw i64 %128, 1
  store i64 %inc128, ptr %ll, align 8, !tbaa !13
  br label %for.cond105

for.end129:                                       ; preds = %for.cond105
  br label %if.end153

if.else130:                                       ; preds = %if.else
  store i64 0, ptr %ll, align 8, !tbaa !13
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc150, %if.else130
  %129 = load i64, ptr %ll, align 8, !tbaa !13
  %130 = load i64, ptr %length, align 8, !tbaa !13
  %cmp132 = icmp slt i64 %129, %130
  br i1 %cmp132, label %for.body133, label %for.end152

for.body133:                                      ; preds = %for.cond131
  %131 = load ptr, ptr %iline, align 8, !tbaa !4
  %132 = load i64, ptr %size2, align 8, !tbaa !13
  %arrayidx134 = getelementptr inbounds double, ptr %131, i64 %132
  %133 = load double, ptr %arrayidx134, align 8, !tbaa !11
  %134 = load ptr, ptr %fw, align 8, !tbaa !4
  %135 = load i64, ptr %size2, align 8, !tbaa !13
  %arrayidx135 = getelementptr inbounds double, ptr %134, i64 %135
  %136 = load double, ptr %arrayidx135, align 8, !tbaa !11
  %mul136 = fmul double %133, %136
  %137 = load ptr, ptr %oline, align 8, !tbaa !4
  %138 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx137 = getelementptr inbounds double, ptr %137, i64 %138
  store double %mul136, ptr %arrayidx137, align 8, !tbaa !11
  %139 = load i64, ptr %size1, align 8, !tbaa !13
  %sub138 = sub nsw i64 0, %139
  store i64 %sub138, ptr %jj, align 8, !tbaa !13
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc146, %for.body133
  %140 = load i64, ptr %jj, align 8, !tbaa !13
  %141 = load i64, ptr %size2, align 8, !tbaa !13
  %cmp140 = icmp slt i64 %140, %141
  br i1 %cmp140, label %for.body141, label %for.end148

for.body141:                                      ; preds = %for.cond139
  %142 = load ptr, ptr %iline, align 8, !tbaa !4
  %143 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx142 = getelementptr inbounds double, ptr %142, i64 %143
  %144 = load double, ptr %arrayidx142, align 8, !tbaa !11
  %145 = load ptr, ptr %fw, align 8, !tbaa !4
  %146 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx143 = getelementptr inbounds double, ptr %145, i64 %146
  %147 = load double, ptr %arrayidx143, align 8, !tbaa !11
  %148 = load ptr, ptr %oline, align 8, !tbaa !4
  %149 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx145 = getelementptr inbounds double, ptr %148, i64 %149
  %150 = load double, ptr %arrayidx145, align 8, !tbaa !11
  %151 = call double @llvm.fmuladd.f64(double %144, double %147, double %150)
  store double %151, ptr %arrayidx145, align 8, !tbaa !11
  br label %for.inc146

for.inc146:                                       ; preds = %for.body141
  %152 = load i64, ptr %jj, align 8, !tbaa !13
  %inc147 = add nsw i64 %152, 1
  store i64 %inc147, ptr %jj, align 8, !tbaa !13
  br label %for.cond139

for.end148:                                       ; preds = %for.cond139
  %153 = load ptr, ptr %iline, align 8, !tbaa !4
  %incdec.ptr149 = getelementptr inbounds double, ptr %153, i32 1
  store ptr %incdec.ptr149, ptr %iline, align 8, !tbaa !4
  br label %for.inc150

for.inc150:                                       ; preds = %for.end148
  %154 = load i64, ptr %ll, align 8, !tbaa !13
  %inc151 = add nsw i64 %154, 1
  store i64 %inc151, ptr %ll, align 8, !tbaa !13
  br label %for.cond131

for.end152:                                       ; preds = %for.cond131
  br label %if.end153

if.end153:                                        ; preds = %for.end152, %for.end129
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %for.end102
  call void @llvm.lifetime.end.p0(i64 8, ptr %oline) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %iline) #8
  br label %for.inc155

for.inc155:                                       ; preds = %if.end154
  %155 = load i64, ptr %ii, align 8, !tbaa !13
  %inc156 = add nsw i64 %155, 1
  store i64 %inc156, ptr %ii, align 8, !tbaa !13
  br label %for.cond60

for.end157:                                       ; preds = %for.cond60
  %call158 = call i32 @NI_LineBufferToArray(ptr noundef %oline_buffer)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.end161, label %if.then160

if.then160:                                       ; preds = %for.end157
  br label %exit

if.end161:                                        ; preds = %for.end157
  br label %do.cond162

do.cond162:                                       ; preds = %if.end161
  %156 = load i32, ptr %more, align 4, !tbaa !8
  %tobool163 = icmp ne i32 %156, 0
  br i1 %tobool163, label %do.body55, label %do.end164

do.end164:                                        ; preds = %do.cond162
  br label %exit

exit:                                             ; preds = %do.end164, %if.then160, %if.then58, %if.then49, %if.then45, %if.then39, %if.then35
  br label %do.body165

do.body165:                                       ; preds = %exit
  %157 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool166 = icmp ne ptr %157, null
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %do.body165
  %158 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %158)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %do.body165
  br label %do.cond169

do.cond169:                                       ; preds = %if.end168
  br label %do.end170

do.end170:                                        ; preds = %do.cond169
  %159 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  call void @free(ptr noundef %159) #8
  %160 = load ptr, ptr %obuffer, align 8, !tbaa !4
  call void @free(ptr noundef %160) #8
  %call171 = call ptr @PyErr_Occurred()
  %tobool172 = icmp ne ptr %call171, null
  %161 = zext i1 %tobool172 to i64
  %cond173 = select i1 %tobool172, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #8
  call void @llvm.lifetime.end.p0(i64 1120, ptr %oline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %obuffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibuffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %filter_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %lines) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %more) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %symmetric) #8
  ret i32 %cond173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @PyArray_DIMS(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %dimensions = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %dimensions, align 8, !tbaa !21
  ret ptr %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyArray_NDIM(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %nd = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nd, align 8, !tbaa !24
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @PyArray_DATA(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %data, align 8, !tbaa !25
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare i32 @NI_AllocateLineBuffer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare i32 @NI_InitLineBuffer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) #4

declare ptr @PyEval_SaveThread() #4

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PyArray_DIM(ptr noundef %arr, i32 noundef %idim) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  %idim.addr = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  store i32 %idim, ptr %idim.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %dimensions = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %dimensions, align 8, !tbaa !21
  %2 = load i32, ptr %idim.addr, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !13
  ret i64 %3
}

declare i32 @NI_ArrayToLineBuffer(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @NI_LineBufferToArray(ptr noundef) #4

declare void @PyEval_RestoreThread(ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

declare ptr @PyErr_Occurred() #4

; Function Attrs: nounwind uwtable
define hidden i32 @NI_Correlate(ptr noundef %input, ptr noundef %weights, ptr noundef %output, i32 noundef %mode, double noundef %cvalue, ptr noundef %origins) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %weights.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cvalue.addr = alloca double, align 8
  %origins.addr = alloca ptr, align 8
  %pf = alloca ptr, align 8
  %fsize = alloca i64, align 8
  %jj = alloca i64, align 8
  %kk = alloca i64, align 8
  %filter_size = alloca i64, align 8
  %border_flag_value = alloca i64, align 8
  %offsets = alloca ptr, align 8
  %oo = alloca ptr, align 8
  %size = alloca i64, align 8
  %fi = alloca %struct.NI_FilterIterator, align 8
  %ii = alloca %struct.NI_Iterator, align 8
  %io = alloca %struct.NI_Iterator, align 8
  %pi = alloca ptr, align 8
  %po = alloca ptr, align 8
  %pw = alloca ptr, align 8
  %ww = alloca ptr, align 8
  %err = alloca i32, align 4
  %_save = alloca ptr, align 8
  %tmp = alloca double, align 8
  %_ii = alloca i64, align 8
  %_offset = alloca i64, align 8
  %_ii79 = alloca i64, align 8
  %_offset80 = alloca i64, align 8
  %_ii101 = alloca i64, align 8
  %_offset102 = alloca i64, align 8
  %_ii123 = alloca i64, align 8
  %_offset124 = alloca i64, align 8
  %_ii145 = alloca i64, align 8
  %_offset146 = alloca i64, align 8
  %_ii167 = alloca i64, align 8
  %_offset168 = alloca i64, align 8
  %_ii189 = alloca i64, align 8
  %_offset190 = alloca i64, align 8
  %_ii211 = alloca i64, align 8
  %_offset212 = alloca i64, align 8
  %_ii233 = alloca i64, align 8
  %_offset234 = alloca i64, align 8
  %_ii255 = alloca i64, align 8
  %_offset256 = alloca i64, align 8
  %_ii277 = alloca i64, align 8
  %_offset278 = alloca i64, align 8
  %_ii299 = alloca i64, align 8
  %_offset300 = alloca i64, align 8
  %_ii321 = alloca i64, align 8
  %_offset322 = alloca i64, align 8
  %_ii426 = alloca i32, align 4
  %_pp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cvalue, ptr %cvalue.addr, align 8, !tbaa !11
  store ptr %origins, ptr %origins.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pf) #8
  store ptr null, ptr %pf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsize) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %filter_size) #8
  store i64 0, ptr %filter_size, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %offsets) #8
  store ptr null, ptr %offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pw) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ww) #8
  store ptr null, ptr %ww, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  store i32 0, ptr %err, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #8
  store ptr null, ptr %_save, align 8, !tbaa !4
  %0 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 158
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %2 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call = call ptr @PyArray_DIMS(ptr noundef %2)
  %3 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call1 = call i32 @PyArray_NDIM(ptr noundef %3)
  %call2 = call i64 %1(ptr noundef %call, i32 noundef %call1)
  store i64 %call2, ptr %fsize, align 8, !tbaa !13
  %4 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call3 = call ptr @PyArray_DATA(ptr noundef %4)
  store ptr %call3, ptr %pw, align 8, !tbaa !4
  %5 = load i64, ptr %fsize, align 8, !tbaa !13
  %mul = mul i64 %5, 1
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #9
  store ptr %call4, ptr %pf, align 8, !tbaa !4
  %6 = load ptr, ptr %pf, align 8, !tbaa !4
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call ptr @PyErr_NoMemory()
  br label %exit

if.end:                                           ; preds = %entry
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i64, ptr %jj, align 8, !tbaa !13
  %8 = load i64, ptr %fsize, align 8, !tbaa !13
  %cmp = icmp slt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pw, align 8, !tbaa !4
  %10 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx6 = getelementptr inbounds double, ptr %9, i64 %10
  %11 = load double, ptr %arrayidx6, align 8, !tbaa !11
  %12 = call double @llvm.fabs.f64(double %11)
  %cmp7 = fcmp ogt double %12, 0x3CB0000000000000
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %13 = load ptr, ptr %pf, align 8, !tbaa !4
  %14 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 1, ptr %arrayidx9, align 1, !tbaa !10
  %15 = load i64, ptr %filter_size, align 8, !tbaa !13
  %inc = add nsw i64 %15, 1
  store i64 %inc, ptr %filter_size, align 8, !tbaa !13
  br label %if.end11

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %pf, align 8, !tbaa !4
  %17 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx10 = getelementptr inbounds i8, ptr %16, i64 %17
  store i8 0, ptr %arrayidx10, align 1, !tbaa !10
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %18 = load i64, ptr %jj, align 8, !tbaa !13
  %inc12 = add nsw i64 %18, 1
  store i64 %inc12, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, ptr %filter_size, align 8, !tbaa !13
  %mul13 = mul i64 %19, 8
  %call14 = call noalias ptr @malloc(i64 noundef %mul13) #9
  store ptr %call14, ptr %ww, align 8, !tbaa !4
  %20 = load ptr, ptr %ww, align 8, !tbaa !4
  %tobool15 = icmp ne ptr %20, null
  br i1 %tobool15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %for.end
  %call17 = call ptr @PyErr_NoMemory()
  br label %exit

if.end18:                                         ; preds = %for.end
  store i64 0, ptr %jj, align 8, !tbaa !13
  store i64 0, ptr %kk, align 8, !tbaa !13
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc29, %if.end18
  %21 = load i64, ptr %kk, align 8, !tbaa !13
  %22 = load i64, ptr %fsize, align 8, !tbaa !13
  %cmp20 = icmp slt i64 %21, %22
  br i1 %cmp20, label %for.body21, label %for.end31

for.body21:                                       ; preds = %for.cond19
  %23 = load ptr, ptr %pf, align 8, !tbaa !4
  %24 = load i64, ptr %kk, align 8, !tbaa !13
  %arrayidx22 = getelementptr inbounds i8, ptr %23, i64 %24
  %25 = load i8, ptr %arrayidx22, align 1, !tbaa !10
  %tobool23 = icmp ne i8 %25, 0
  br i1 %tobool23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %for.body21
  %26 = load ptr, ptr %pw, align 8, !tbaa !4
  %27 = load i64, ptr %kk, align 8, !tbaa !13
  %arrayidx25 = getelementptr inbounds double, ptr %26, i64 %27
  %28 = load double, ptr %arrayidx25, align 8, !tbaa !11
  %29 = load ptr, ptr %ww, align 8, !tbaa !4
  %30 = load i64, ptr %jj, align 8, !tbaa !13
  %inc26 = add nsw i64 %30, 1
  store i64 %inc26, ptr %jj, align 8, !tbaa !13
  %arrayidx27 = getelementptr inbounds double, ptr %29, i64 %30
  store double %28, ptr %arrayidx27, align 8, !tbaa !11
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %for.body21
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %31 = load i64, ptr %kk, align 8, !tbaa !13
  %inc30 = add nsw i64 %31, 1
  store i64 %inc30, ptr %kk, align 8, !tbaa !13
  br label %for.cond19

for.end31:                                        ; preds = %for.cond19
  %32 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %pf, align 8, !tbaa !4
  %34 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call32 = call ptr @PyArray_DIMS(ptr noundef %34)
  %35 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %36 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call33 = call i32 @NI_InitFilterOffsets(ptr noundef %32, ptr noundef %33, ptr noundef %call32, ptr noundef %35, i32 noundef %36, ptr noundef %offsets, ptr noundef %border_flag_value, ptr noundef null)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %for.end31
  br label %exit

if.end36:                                         ; preds = %for.end31
  %37 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call37 = call i32 @PyArray_NDIM(ptr noundef %37)
  %38 = load ptr, ptr %weights.addr, align 8, !tbaa !4
  %call38 = call ptr @PyArray_DIMS(ptr noundef %38)
  %39 = load i64, ptr %filter_size, align 8, !tbaa !13
  %40 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call39 = call ptr @PyArray_DIMS(ptr noundef %40)
  %41 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %call40 = call i32 @NI_InitFilterIterator(i32 noundef %call37, ptr noundef %call38, i64 noundef %39, ptr noundef %call39, ptr noundef %41, ptr noundef %fi)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end43, label %if.then42

if.then42:                                        ; preds = %if.end36
  br label %exit

if.end43:                                         ; preds = %if.end36
  %42 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call44 = call i32 @NI_InitPointIterator(ptr noundef %42, ptr noundef %ii)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  br label %exit

if.end47:                                         ; preds = %if.end43
  %43 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call48 = call i32 @NI_InitPointIterator(ptr noundef %43, ptr noundef %io)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end47
  br label %exit

if.end51:                                         ; preds = %if.end47
  br label %do.body

do.body:                                          ; preds = %if.end51
  %call52 = call ptr @PyEval_SaveThread()
  store ptr %call52, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call53 = call ptr @PyArray_DATA(ptr noundef %44)
  store ptr %call53, ptr %pi, align 8, !tbaa !4
  %45 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call54 = call ptr @PyArray_DATA(ptr noundef %45)
  store ptr %call54, ptr %po, align 8, !tbaa !4
  %46 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx55 = getelementptr inbounds ptr, ptr %46, i64 158
  %47 = load ptr, ptr %arrayidx55, align 8, !tbaa !4
  %48 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call56 = call ptr @PyArray_DIMS(ptr noundef %48)
  %49 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call57 = call i32 @PyArray_NDIM(ptr noundef %49)
  %call58 = call i64 %47(ptr noundef %call56, i32 noundef %call57)
  store i64 %call58, ptr %size, align 8, !tbaa !13
  %50 = load ptr, ptr %offsets, align 8, !tbaa !4
  store ptr %50, ptr %oo, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc485, %do.end
  %51 = load i64, ptr %jj, align 8, !tbaa !13
  %52 = load i64, ptr %size, align 8, !tbaa !13
  %cmp60 = icmp slt i64 %51, %52
  br i1 %cmp60, label %for.body61, label %for.end487

for.body61:                                       ; preds = %for.cond59
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !11
  %53 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call62 = call i32 @PyArray_TYPE(ptr noundef %53)
  switch i32 %call62, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb78
    i32 4, label %sw.bb100
    i32 6, label %sw.bb122
    i32 8, label %sw.bb144
    i32 10, label %sw.bb166
    i32 1, label %sw.bb188
    i32 3, label %sw.bb210
    i32 5, label %sw.bb232
    i32 7, label %sw.bb254
    i32 9, label %sw.bb276
    i32 11, label %sw.bb298
    i32 12, label %sw.bb320
  ]

sw.bb:                                            ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset) #8
  store i64 0, ptr %_ii, align 8, !tbaa !13
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc75, %sw.bb
  %54 = load i64, ptr %_ii, align 8, !tbaa !13
  %55 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp64 = icmp slt i64 %54, %55
  br i1 %cmp64, label %for.body65, label %for.end77

for.body65:                                       ; preds = %for.cond63
  %56 = load ptr, ptr %oo, align 8, !tbaa !4
  %57 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx66 = getelementptr inbounds i64, ptr %56, i64 %57
  %58 = load i64, ptr %arrayidx66, align 8, !tbaa !13
  store i64 %58, ptr %_offset, align 8, !tbaa !13
  %59 = load i64, ptr %_offset, align 8, !tbaa !13
  %60 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp67 = icmp eq i64 %59, %60
  br i1 %cmp67, label %if.then68, label %if.else71

if.then68:                                        ; preds = %for.body65
  %61 = load ptr, ptr %ww, align 8, !tbaa !4
  %62 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx69 = getelementptr inbounds double, ptr %61, i64 %62
  %63 = load double, ptr %arrayidx69, align 8, !tbaa !11
  %64 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %65 = load double, ptr %tmp, align 8, !tbaa !11
  %66 = call double @llvm.fmuladd.f64(double %63, double %64, double %65)
  store double %66, ptr %tmp, align 8, !tbaa !11
  br label %if.end74

if.else71:                                        ; preds = %for.body65
  %67 = load ptr, ptr %ww, align 8, !tbaa !4
  %68 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx72 = getelementptr inbounds double, ptr %67, i64 %68
  %69 = load double, ptr %arrayidx72, align 8, !tbaa !11
  %70 = load ptr, ptr %pi, align 8, !tbaa !4
  %71 = load i64, ptr %_offset, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %70, i64 %71
  %72 = load i8, ptr %add.ptr, align 1, !tbaa !10
  %conv = uitofp i8 %72 to double
  %73 = load double, ptr %tmp, align 8, !tbaa !11
  %74 = call double @llvm.fmuladd.f64(double %69, double %conv, double %73)
  store double %74, ptr %tmp, align 8, !tbaa !11
  br label %if.end74

if.end74:                                         ; preds = %if.else71, %if.then68
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %75 = load i64, ptr %_ii, align 8, !tbaa !13
  %inc76 = add nsw i64 %75, 1
  store i64 %inc76, ptr %_ii, align 8, !tbaa !13
  br label %for.cond63

for.end77:                                        ; preds = %for.cond63
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii) #8
  br label %sw.epilog

sw.bb78:                                          ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii79) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset80) #8
  store i64 0, ptr %_ii79, align 8, !tbaa !13
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc97, %sw.bb78
  %76 = load i64, ptr %_ii79, align 8, !tbaa !13
  %77 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp82 = icmp slt i64 %76, %77
  br i1 %cmp82, label %for.body84, label %for.end99

for.body84:                                       ; preds = %for.cond81
  %78 = load ptr, ptr %oo, align 8, !tbaa !4
  %79 = load i64, ptr %_ii79, align 8, !tbaa !13
  %arrayidx85 = getelementptr inbounds i64, ptr %78, i64 %79
  %80 = load i64, ptr %arrayidx85, align 8, !tbaa !13
  store i64 %80, ptr %_offset80, align 8, !tbaa !13
  %81 = load i64, ptr %_offset80, align 8, !tbaa !13
  %82 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp86 = icmp eq i64 %81, %82
  br i1 %cmp86, label %if.then88, label %if.else91

if.then88:                                        ; preds = %for.body84
  %83 = load ptr, ptr %ww, align 8, !tbaa !4
  %84 = load i64, ptr %_ii79, align 8, !tbaa !13
  %arrayidx89 = getelementptr inbounds double, ptr %83, i64 %84
  %85 = load double, ptr %arrayidx89, align 8, !tbaa !11
  %86 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %87 = load double, ptr %tmp, align 8, !tbaa !11
  %88 = call double @llvm.fmuladd.f64(double %85, double %86, double %87)
  store double %88, ptr %tmp, align 8, !tbaa !11
  br label %if.end96

if.else91:                                        ; preds = %for.body84
  %89 = load ptr, ptr %ww, align 8, !tbaa !4
  %90 = load i64, ptr %_ii79, align 8, !tbaa !13
  %arrayidx92 = getelementptr inbounds double, ptr %89, i64 %90
  %91 = load double, ptr %arrayidx92, align 8, !tbaa !11
  %92 = load ptr, ptr %pi, align 8, !tbaa !4
  %93 = load i64, ptr %_offset80, align 8, !tbaa !13
  %add.ptr93 = getelementptr inbounds i8, ptr %92, i64 %93
  %94 = load i8, ptr %add.ptr93, align 1, !tbaa !10
  %conv94 = uitofp i8 %94 to double
  %95 = load double, ptr %tmp, align 8, !tbaa !11
  %96 = call double @llvm.fmuladd.f64(double %91, double %conv94, double %95)
  store double %96, ptr %tmp, align 8, !tbaa !11
  br label %if.end96

if.end96:                                         ; preds = %if.else91, %if.then88
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %97 = load i64, ptr %_ii79, align 8, !tbaa !13
  %inc98 = add nsw i64 %97, 1
  store i64 %inc98, ptr %_ii79, align 8, !tbaa !13
  br label %for.cond81

for.end99:                                        ; preds = %for.cond81
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset80) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii79) #8
  br label %sw.epilog

sw.bb100:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii101) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset102) #8
  store i64 0, ptr %_ii101, align 8, !tbaa !13
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc119, %sw.bb100
  %98 = load i64, ptr %_ii101, align 8, !tbaa !13
  %99 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp104 = icmp slt i64 %98, %99
  br i1 %cmp104, label %for.body106, label %for.end121

for.body106:                                      ; preds = %for.cond103
  %100 = load ptr, ptr %oo, align 8, !tbaa !4
  %101 = load i64, ptr %_ii101, align 8, !tbaa !13
  %arrayidx107 = getelementptr inbounds i64, ptr %100, i64 %101
  %102 = load i64, ptr %arrayidx107, align 8, !tbaa !13
  store i64 %102, ptr %_offset102, align 8, !tbaa !13
  %103 = load i64, ptr %_offset102, align 8, !tbaa !13
  %104 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp108 = icmp eq i64 %103, %104
  br i1 %cmp108, label %if.then110, label %if.else113

if.then110:                                       ; preds = %for.body106
  %105 = load ptr, ptr %ww, align 8, !tbaa !4
  %106 = load i64, ptr %_ii101, align 8, !tbaa !13
  %arrayidx111 = getelementptr inbounds double, ptr %105, i64 %106
  %107 = load double, ptr %arrayidx111, align 8, !tbaa !11
  %108 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %109 = load double, ptr %tmp, align 8, !tbaa !11
  %110 = call double @llvm.fmuladd.f64(double %107, double %108, double %109)
  store double %110, ptr %tmp, align 8, !tbaa !11
  br label %if.end118

if.else113:                                       ; preds = %for.body106
  %111 = load ptr, ptr %ww, align 8, !tbaa !4
  %112 = load i64, ptr %_ii101, align 8, !tbaa !13
  %arrayidx114 = getelementptr inbounds double, ptr %111, i64 %112
  %113 = load double, ptr %arrayidx114, align 8, !tbaa !11
  %114 = load ptr, ptr %pi, align 8, !tbaa !4
  %115 = load i64, ptr %_offset102, align 8, !tbaa !13
  %add.ptr115 = getelementptr inbounds i8, ptr %114, i64 %115
  %116 = load i16, ptr %add.ptr115, align 2, !tbaa !26
  %conv116 = uitofp i16 %116 to double
  %117 = load double, ptr %tmp, align 8, !tbaa !11
  %118 = call double @llvm.fmuladd.f64(double %113, double %conv116, double %117)
  store double %118, ptr %tmp, align 8, !tbaa !11
  br label %if.end118

if.end118:                                        ; preds = %if.else113, %if.then110
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %119 = load i64, ptr %_ii101, align 8, !tbaa !13
  %inc120 = add nsw i64 %119, 1
  store i64 %inc120, ptr %_ii101, align 8, !tbaa !13
  br label %for.cond103

for.end121:                                       ; preds = %for.cond103
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset102) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii101) #8
  br label %sw.epilog

sw.bb122:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii123) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset124) #8
  store i64 0, ptr %_ii123, align 8, !tbaa !13
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc141, %sw.bb122
  %120 = load i64, ptr %_ii123, align 8, !tbaa !13
  %121 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp126 = icmp slt i64 %120, %121
  br i1 %cmp126, label %for.body128, label %for.end143

for.body128:                                      ; preds = %for.cond125
  %122 = load ptr, ptr %oo, align 8, !tbaa !4
  %123 = load i64, ptr %_ii123, align 8, !tbaa !13
  %arrayidx129 = getelementptr inbounds i64, ptr %122, i64 %123
  %124 = load i64, ptr %arrayidx129, align 8, !tbaa !13
  store i64 %124, ptr %_offset124, align 8, !tbaa !13
  %125 = load i64, ptr %_offset124, align 8, !tbaa !13
  %126 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp130 = icmp eq i64 %125, %126
  br i1 %cmp130, label %if.then132, label %if.else135

if.then132:                                       ; preds = %for.body128
  %127 = load ptr, ptr %ww, align 8, !tbaa !4
  %128 = load i64, ptr %_ii123, align 8, !tbaa !13
  %arrayidx133 = getelementptr inbounds double, ptr %127, i64 %128
  %129 = load double, ptr %arrayidx133, align 8, !tbaa !11
  %130 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %131 = load double, ptr %tmp, align 8, !tbaa !11
  %132 = call double @llvm.fmuladd.f64(double %129, double %130, double %131)
  store double %132, ptr %tmp, align 8, !tbaa !11
  br label %if.end140

if.else135:                                       ; preds = %for.body128
  %133 = load ptr, ptr %ww, align 8, !tbaa !4
  %134 = load i64, ptr %_ii123, align 8, !tbaa !13
  %arrayidx136 = getelementptr inbounds double, ptr %133, i64 %134
  %135 = load double, ptr %arrayidx136, align 8, !tbaa !11
  %136 = load ptr, ptr %pi, align 8, !tbaa !4
  %137 = load i64, ptr %_offset124, align 8, !tbaa !13
  %add.ptr137 = getelementptr inbounds i8, ptr %136, i64 %137
  %138 = load i32, ptr %add.ptr137, align 4, !tbaa !8
  %conv138 = uitofp i32 %138 to double
  %139 = load double, ptr %tmp, align 8, !tbaa !11
  %140 = call double @llvm.fmuladd.f64(double %135, double %conv138, double %139)
  store double %140, ptr %tmp, align 8, !tbaa !11
  br label %if.end140

if.end140:                                        ; preds = %if.else135, %if.then132
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %141 = load i64, ptr %_ii123, align 8, !tbaa !13
  %inc142 = add nsw i64 %141, 1
  store i64 %inc142, ptr %_ii123, align 8, !tbaa !13
  br label %for.cond125

for.end143:                                       ; preds = %for.cond125
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset124) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii123) #8
  br label %sw.epilog

sw.bb144:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii145) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset146) #8
  store i64 0, ptr %_ii145, align 8, !tbaa !13
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc163, %sw.bb144
  %142 = load i64, ptr %_ii145, align 8, !tbaa !13
  %143 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp148 = icmp slt i64 %142, %143
  br i1 %cmp148, label %for.body150, label %for.end165

for.body150:                                      ; preds = %for.cond147
  %144 = load ptr, ptr %oo, align 8, !tbaa !4
  %145 = load i64, ptr %_ii145, align 8, !tbaa !13
  %arrayidx151 = getelementptr inbounds i64, ptr %144, i64 %145
  %146 = load i64, ptr %arrayidx151, align 8, !tbaa !13
  store i64 %146, ptr %_offset146, align 8, !tbaa !13
  %147 = load i64, ptr %_offset146, align 8, !tbaa !13
  %148 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp152 = icmp eq i64 %147, %148
  br i1 %cmp152, label %if.then154, label %if.else157

if.then154:                                       ; preds = %for.body150
  %149 = load ptr, ptr %ww, align 8, !tbaa !4
  %150 = load i64, ptr %_ii145, align 8, !tbaa !13
  %arrayidx155 = getelementptr inbounds double, ptr %149, i64 %150
  %151 = load double, ptr %arrayidx155, align 8, !tbaa !11
  %152 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %153 = load double, ptr %tmp, align 8, !tbaa !11
  %154 = call double @llvm.fmuladd.f64(double %151, double %152, double %153)
  store double %154, ptr %tmp, align 8, !tbaa !11
  br label %if.end162

if.else157:                                       ; preds = %for.body150
  %155 = load ptr, ptr %ww, align 8, !tbaa !4
  %156 = load i64, ptr %_ii145, align 8, !tbaa !13
  %arrayidx158 = getelementptr inbounds double, ptr %155, i64 %156
  %157 = load double, ptr %arrayidx158, align 8, !tbaa !11
  %158 = load ptr, ptr %pi, align 8, !tbaa !4
  %159 = load i64, ptr %_offset146, align 8, !tbaa !13
  %add.ptr159 = getelementptr inbounds i8, ptr %158, i64 %159
  %160 = load i64, ptr %add.ptr159, align 8, !tbaa !13
  %conv160 = uitofp i64 %160 to double
  %161 = load double, ptr %tmp, align 8, !tbaa !11
  %162 = call double @llvm.fmuladd.f64(double %157, double %conv160, double %161)
  store double %162, ptr %tmp, align 8, !tbaa !11
  br label %if.end162

if.end162:                                        ; preds = %if.else157, %if.then154
  br label %for.inc163

for.inc163:                                       ; preds = %if.end162
  %163 = load i64, ptr %_ii145, align 8, !tbaa !13
  %inc164 = add nsw i64 %163, 1
  store i64 %inc164, ptr %_ii145, align 8, !tbaa !13
  br label %for.cond147

for.end165:                                       ; preds = %for.cond147
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset146) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii145) #8
  br label %sw.epilog

sw.bb166:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii167) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset168) #8
  store i64 0, ptr %_ii167, align 8, !tbaa !13
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc185, %sw.bb166
  %164 = load i64, ptr %_ii167, align 8, !tbaa !13
  %165 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp170 = icmp slt i64 %164, %165
  br i1 %cmp170, label %for.body172, label %for.end187

for.body172:                                      ; preds = %for.cond169
  %166 = load ptr, ptr %oo, align 8, !tbaa !4
  %167 = load i64, ptr %_ii167, align 8, !tbaa !13
  %arrayidx173 = getelementptr inbounds i64, ptr %166, i64 %167
  %168 = load i64, ptr %arrayidx173, align 8, !tbaa !13
  store i64 %168, ptr %_offset168, align 8, !tbaa !13
  %169 = load i64, ptr %_offset168, align 8, !tbaa !13
  %170 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp174 = icmp eq i64 %169, %170
  br i1 %cmp174, label %if.then176, label %if.else179

if.then176:                                       ; preds = %for.body172
  %171 = load ptr, ptr %ww, align 8, !tbaa !4
  %172 = load i64, ptr %_ii167, align 8, !tbaa !13
  %arrayidx177 = getelementptr inbounds double, ptr %171, i64 %172
  %173 = load double, ptr %arrayidx177, align 8, !tbaa !11
  %174 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %175 = load double, ptr %tmp, align 8, !tbaa !11
  %176 = call double @llvm.fmuladd.f64(double %173, double %174, double %175)
  store double %176, ptr %tmp, align 8, !tbaa !11
  br label %if.end184

if.else179:                                       ; preds = %for.body172
  %177 = load ptr, ptr %ww, align 8, !tbaa !4
  %178 = load i64, ptr %_ii167, align 8, !tbaa !13
  %arrayidx180 = getelementptr inbounds double, ptr %177, i64 %178
  %179 = load double, ptr %arrayidx180, align 8, !tbaa !11
  %180 = load ptr, ptr %pi, align 8, !tbaa !4
  %181 = load i64, ptr %_offset168, align 8, !tbaa !13
  %add.ptr181 = getelementptr inbounds i8, ptr %180, i64 %181
  %182 = load i64, ptr %add.ptr181, align 8, !tbaa !28
  %conv182 = uitofp i64 %182 to double
  %183 = load double, ptr %tmp, align 8, !tbaa !11
  %184 = call double @llvm.fmuladd.f64(double %179, double %conv182, double %183)
  store double %184, ptr %tmp, align 8, !tbaa !11
  br label %if.end184

if.end184:                                        ; preds = %if.else179, %if.then176
  br label %for.inc185

for.inc185:                                       ; preds = %if.end184
  %185 = load i64, ptr %_ii167, align 8, !tbaa !13
  %inc186 = add nsw i64 %185, 1
  store i64 %inc186, ptr %_ii167, align 8, !tbaa !13
  br label %for.cond169

for.end187:                                       ; preds = %for.cond169
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset168) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii167) #8
  br label %sw.epilog

sw.bb188:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii189) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset190) #8
  store i64 0, ptr %_ii189, align 8, !tbaa !13
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc207, %sw.bb188
  %186 = load i64, ptr %_ii189, align 8, !tbaa !13
  %187 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp192 = icmp slt i64 %186, %187
  br i1 %cmp192, label %for.body194, label %for.end209

for.body194:                                      ; preds = %for.cond191
  %188 = load ptr, ptr %oo, align 8, !tbaa !4
  %189 = load i64, ptr %_ii189, align 8, !tbaa !13
  %arrayidx195 = getelementptr inbounds i64, ptr %188, i64 %189
  %190 = load i64, ptr %arrayidx195, align 8, !tbaa !13
  store i64 %190, ptr %_offset190, align 8, !tbaa !13
  %191 = load i64, ptr %_offset190, align 8, !tbaa !13
  %192 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp196 = icmp eq i64 %191, %192
  br i1 %cmp196, label %if.then198, label %if.else201

if.then198:                                       ; preds = %for.body194
  %193 = load ptr, ptr %ww, align 8, !tbaa !4
  %194 = load i64, ptr %_ii189, align 8, !tbaa !13
  %arrayidx199 = getelementptr inbounds double, ptr %193, i64 %194
  %195 = load double, ptr %arrayidx199, align 8, !tbaa !11
  %196 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %197 = load double, ptr %tmp, align 8, !tbaa !11
  %198 = call double @llvm.fmuladd.f64(double %195, double %196, double %197)
  store double %198, ptr %tmp, align 8, !tbaa !11
  br label %if.end206

if.else201:                                       ; preds = %for.body194
  %199 = load ptr, ptr %ww, align 8, !tbaa !4
  %200 = load i64, ptr %_ii189, align 8, !tbaa !13
  %arrayidx202 = getelementptr inbounds double, ptr %199, i64 %200
  %201 = load double, ptr %arrayidx202, align 8, !tbaa !11
  %202 = load ptr, ptr %pi, align 8, !tbaa !4
  %203 = load i64, ptr %_offset190, align 8, !tbaa !13
  %add.ptr203 = getelementptr inbounds i8, ptr %202, i64 %203
  %204 = load i8, ptr %add.ptr203, align 1, !tbaa !10
  %conv204 = sitofp i8 %204 to double
  %205 = load double, ptr %tmp, align 8, !tbaa !11
  %206 = call double @llvm.fmuladd.f64(double %201, double %conv204, double %205)
  store double %206, ptr %tmp, align 8, !tbaa !11
  br label %if.end206

if.end206:                                        ; preds = %if.else201, %if.then198
  br label %for.inc207

for.inc207:                                       ; preds = %if.end206
  %207 = load i64, ptr %_ii189, align 8, !tbaa !13
  %inc208 = add nsw i64 %207, 1
  store i64 %inc208, ptr %_ii189, align 8, !tbaa !13
  br label %for.cond191

for.end209:                                       ; preds = %for.cond191
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset190) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii189) #8
  br label %sw.epilog

sw.bb210:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii211) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset212) #8
  store i64 0, ptr %_ii211, align 8, !tbaa !13
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc229, %sw.bb210
  %208 = load i64, ptr %_ii211, align 8, !tbaa !13
  %209 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp214 = icmp slt i64 %208, %209
  br i1 %cmp214, label %for.body216, label %for.end231

for.body216:                                      ; preds = %for.cond213
  %210 = load ptr, ptr %oo, align 8, !tbaa !4
  %211 = load i64, ptr %_ii211, align 8, !tbaa !13
  %arrayidx217 = getelementptr inbounds i64, ptr %210, i64 %211
  %212 = load i64, ptr %arrayidx217, align 8, !tbaa !13
  store i64 %212, ptr %_offset212, align 8, !tbaa !13
  %213 = load i64, ptr %_offset212, align 8, !tbaa !13
  %214 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp218 = icmp eq i64 %213, %214
  br i1 %cmp218, label %if.then220, label %if.else223

if.then220:                                       ; preds = %for.body216
  %215 = load ptr, ptr %ww, align 8, !tbaa !4
  %216 = load i64, ptr %_ii211, align 8, !tbaa !13
  %arrayidx221 = getelementptr inbounds double, ptr %215, i64 %216
  %217 = load double, ptr %arrayidx221, align 8, !tbaa !11
  %218 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %219 = load double, ptr %tmp, align 8, !tbaa !11
  %220 = call double @llvm.fmuladd.f64(double %217, double %218, double %219)
  store double %220, ptr %tmp, align 8, !tbaa !11
  br label %if.end228

if.else223:                                       ; preds = %for.body216
  %221 = load ptr, ptr %ww, align 8, !tbaa !4
  %222 = load i64, ptr %_ii211, align 8, !tbaa !13
  %arrayidx224 = getelementptr inbounds double, ptr %221, i64 %222
  %223 = load double, ptr %arrayidx224, align 8, !tbaa !11
  %224 = load ptr, ptr %pi, align 8, !tbaa !4
  %225 = load i64, ptr %_offset212, align 8, !tbaa !13
  %add.ptr225 = getelementptr inbounds i8, ptr %224, i64 %225
  %226 = load i16, ptr %add.ptr225, align 2, !tbaa !26
  %conv226 = sitofp i16 %226 to double
  %227 = load double, ptr %tmp, align 8, !tbaa !11
  %228 = call double @llvm.fmuladd.f64(double %223, double %conv226, double %227)
  store double %228, ptr %tmp, align 8, !tbaa !11
  br label %if.end228

if.end228:                                        ; preds = %if.else223, %if.then220
  br label %for.inc229

for.inc229:                                       ; preds = %if.end228
  %229 = load i64, ptr %_ii211, align 8, !tbaa !13
  %inc230 = add nsw i64 %229, 1
  store i64 %inc230, ptr %_ii211, align 8, !tbaa !13
  br label %for.cond213

for.end231:                                       ; preds = %for.cond213
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset212) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii211) #8
  br label %sw.epilog

sw.bb232:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii233) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset234) #8
  store i64 0, ptr %_ii233, align 8, !tbaa !13
  br label %for.cond235

for.cond235:                                      ; preds = %for.inc251, %sw.bb232
  %230 = load i64, ptr %_ii233, align 8, !tbaa !13
  %231 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp236 = icmp slt i64 %230, %231
  br i1 %cmp236, label %for.body238, label %for.end253

for.body238:                                      ; preds = %for.cond235
  %232 = load ptr, ptr %oo, align 8, !tbaa !4
  %233 = load i64, ptr %_ii233, align 8, !tbaa !13
  %arrayidx239 = getelementptr inbounds i64, ptr %232, i64 %233
  %234 = load i64, ptr %arrayidx239, align 8, !tbaa !13
  store i64 %234, ptr %_offset234, align 8, !tbaa !13
  %235 = load i64, ptr %_offset234, align 8, !tbaa !13
  %236 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp240 = icmp eq i64 %235, %236
  br i1 %cmp240, label %if.then242, label %if.else245

if.then242:                                       ; preds = %for.body238
  %237 = load ptr, ptr %ww, align 8, !tbaa !4
  %238 = load i64, ptr %_ii233, align 8, !tbaa !13
  %arrayidx243 = getelementptr inbounds double, ptr %237, i64 %238
  %239 = load double, ptr %arrayidx243, align 8, !tbaa !11
  %240 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %241 = load double, ptr %tmp, align 8, !tbaa !11
  %242 = call double @llvm.fmuladd.f64(double %239, double %240, double %241)
  store double %242, ptr %tmp, align 8, !tbaa !11
  br label %if.end250

if.else245:                                       ; preds = %for.body238
  %243 = load ptr, ptr %ww, align 8, !tbaa !4
  %244 = load i64, ptr %_ii233, align 8, !tbaa !13
  %arrayidx246 = getelementptr inbounds double, ptr %243, i64 %244
  %245 = load double, ptr %arrayidx246, align 8, !tbaa !11
  %246 = load ptr, ptr %pi, align 8, !tbaa !4
  %247 = load i64, ptr %_offset234, align 8, !tbaa !13
  %add.ptr247 = getelementptr inbounds i8, ptr %246, i64 %247
  %248 = load i32, ptr %add.ptr247, align 4, !tbaa !8
  %conv248 = sitofp i32 %248 to double
  %249 = load double, ptr %tmp, align 8, !tbaa !11
  %250 = call double @llvm.fmuladd.f64(double %245, double %conv248, double %249)
  store double %250, ptr %tmp, align 8, !tbaa !11
  br label %if.end250

if.end250:                                        ; preds = %if.else245, %if.then242
  br label %for.inc251

for.inc251:                                       ; preds = %if.end250
  %251 = load i64, ptr %_ii233, align 8, !tbaa !13
  %inc252 = add nsw i64 %251, 1
  store i64 %inc252, ptr %_ii233, align 8, !tbaa !13
  br label %for.cond235

for.end253:                                       ; preds = %for.cond235
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset234) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii233) #8
  br label %sw.epilog

sw.bb254:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii255) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset256) #8
  store i64 0, ptr %_ii255, align 8, !tbaa !13
  br label %for.cond257

for.cond257:                                      ; preds = %for.inc273, %sw.bb254
  %252 = load i64, ptr %_ii255, align 8, !tbaa !13
  %253 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp258 = icmp slt i64 %252, %253
  br i1 %cmp258, label %for.body260, label %for.end275

for.body260:                                      ; preds = %for.cond257
  %254 = load ptr, ptr %oo, align 8, !tbaa !4
  %255 = load i64, ptr %_ii255, align 8, !tbaa !13
  %arrayidx261 = getelementptr inbounds i64, ptr %254, i64 %255
  %256 = load i64, ptr %arrayidx261, align 8, !tbaa !13
  store i64 %256, ptr %_offset256, align 8, !tbaa !13
  %257 = load i64, ptr %_offset256, align 8, !tbaa !13
  %258 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp262 = icmp eq i64 %257, %258
  br i1 %cmp262, label %if.then264, label %if.else267

if.then264:                                       ; preds = %for.body260
  %259 = load ptr, ptr %ww, align 8, !tbaa !4
  %260 = load i64, ptr %_ii255, align 8, !tbaa !13
  %arrayidx265 = getelementptr inbounds double, ptr %259, i64 %260
  %261 = load double, ptr %arrayidx265, align 8, !tbaa !11
  %262 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %263 = load double, ptr %tmp, align 8, !tbaa !11
  %264 = call double @llvm.fmuladd.f64(double %261, double %262, double %263)
  store double %264, ptr %tmp, align 8, !tbaa !11
  br label %if.end272

if.else267:                                       ; preds = %for.body260
  %265 = load ptr, ptr %ww, align 8, !tbaa !4
  %266 = load i64, ptr %_ii255, align 8, !tbaa !13
  %arrayidx268 = getelementptr inbounds double, ptr %265, i64 %266
  %267 = load double, ptr %arrayidx268, align 8, !tbaa !11
  %268 = load ptr, ptr %pi, align 8, !tbaa !4
  %269 = load i64, ptr %_offset256, align 8, !tbaa !13
  %add.ptr269 = getelementptr inbounds i8, ptr %268, i64 %269
  %270 = load i64, ptr %add.ptr269, align 8, !tbaa !13
  %conv270 = sitofp i64 %270 to double
  %271 = load double, ptr %tmp, align 8, !tbaa !11
  %272 = call double @llvm.fmuladd.f64(double %267, double %conv270, double %271)
  store double %272, ptr %tmp, align 8, !tbaa !11
  br label %if.end272

if.end272:                                        ; preds = %if.else267, %if.then264
  br label %for.inc273

for.inc273:                                       ; preds = %if.end272
  %273 = load i64, ptr %_ii255, align 8, !tbaa !13
  %inc274 = add nsw i64 %273, 1
  store i64 %inc274, ptr %_ii255, align 8, !tbaa !13
  br label %for.cond257

for.end275:                                       ; preds = %for.cond257
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset256) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii255) #8
  br label %sw.epilog

sw.bb276:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii277) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset278) #8
  store i64 0, ptr %_ii277, align 8, !tbaa !13
  br label %for.cond279

for.cond279:                                      ; preds = %for.inc295, %sw.bb276
  %274 = load i64, ptr %_ii277, align 8, !tbaa !13
  %275 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp280 = icmp slt i64 %274, %275
  br i1 %cmp280, label %for.body282, label %for.end297

for.body282:                                      ; preds = %for.cond279
  %276 = load ptr, ptr %oo, align 8, !tbaa !4
  %277 = load i64, ptr %_ii277, align 8, !tbaa !13
  %arrayidx283 = getelementptr inbounds i64, ptr %276, i64 %277
  %278 = load i64, ptr %arrayidx283, align 8, !tbaa !13
  store i64 %278, ptr %_offset278, align 8, !tbaa !13
  %279 = load i64, ptr %_offset278, align 8, !tbaa !13
  %280 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp284 = icmp eq i64 %279, %280
  br i1 %cmp284, label %if.then286, label %if.else289

if.then286:                                       ; preds = %for.body282
  %281 = load ptr, ptr %ww, align 8, !tbaa !4
  %282 = load i64, ptr %_ii277, align 8, !tbaa !13
  %arrayidx287 = getelementptr inbounds double, ptr %281, i64 %282
  %283 = load double, ptr %arrayidx287, align 8, !tbaa !11
  %284 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %285 = load double, ptr %tmp, align 8, !tbaa !11
  %286 = call double @llvm.fmuladd.f64(double %283, double %284, double %285)
  store double %286, ptr %tmp, align 8, !tbaa !11
  br label %if.end294

if.else289:                                       ; preds = %for.body282
  %287 = load ptr, ptr %ww, align 8, !tbaa !4
  %288 = load i64, ptr %_ii277, align 8, !tbaa !13
  %arrayidx290 = getelementptr inbounds double, ptr %287, i64 %288
  %289 = load double, ptr %arrayidx290, align 8, !tbaa !11
  %290 = load ptr, ptr %pi, align 8, !tbaa !4
  %291 = load i64, ptr %_offset278, align 8, !tbaa !13
  %add.ptr291 = getelementptr inbounds i8, ptr %290, i64 %291
  %292 = load i64, ptr %add.ptr291, align 8, !tbaa !28
  %conv292 = sitofp i64 %292 to double
  %293 = load double, ptr %tmp, align 8, !tbaa !11
  %294 = call double @llvm.fmuladd.f64(double %289, double %conv292, double %293)
  store double %294, ptr %tmp, align 8, !tbaa !11
  br label %if.end294

if.end294:                                        ; preds = %if.else289, %if.then286
  br label %for.inc295

for.inc295:                                       ; preds = %if.end294
  %295 = load i64, ptr %_ii277, align 8, !tbaa !13
  %inc296 = add nsw i64 %295, 1
  store i64 %inc296, ptr %_ii277, align 8, !tbaa !13
  br label %for.cond279

for.end297:                                       ; preds = %for.cond279
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset278) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii277) #8
  br label %sw.epilog

sw.bb298:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii299) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset300) #8
  store i64 0, ptr %_ii299, align 8, !tbaa !13
  br label %for.cond301

for.cond301:                                      ; preds = %for.inc317, %sw.bb298
  %296 = load i64, ptr %_ii299, align 8, !tbaa !13
  %297 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp302 = icmp slt i64 %296, %297
  br i1 %cmp302, label %for.body304, label %for.end319

for.body304:                                      ; preds = %for.cond301
  %298 = load ptr, ptr %oo, align 8, !tbaa !4
  %299 = load i64, ptr %_ii299, align 8, !tbaa !13
  %arrayidx305 = getelementptr inbounds i64, ptr %298, i64 %299
  %300 = load i64, ptr %arrayidx305, align 8, !tbaa !13
  store i64 %300, ptr %_offset300, align 8, !tbaa !13
  %301 = load i64, ptr %_offset300, align 8, !tbaa !13
  %302 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp306 = icmp eq i64 %301, %302
  br i1 %cmp306, label %if.then308, label %if.else311

if.then308:                                       ; preds = %for.body304
  %303 = load ptr, ptr %ww, align 8, !tbaa !4
  %304 = load i64, ptr %_ii299, align 8, !tbaa !13
  %arrayidx309 = getelementptr inbounds double, ptr %303, i64 %304
  %305 = load double, ptr %arrayidx309, align 8, !tbaa !11
  %306 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %307 = load double, ptr %tmp, align 8, !tbaa !11
  %308 = call double @llvm.fmuladd.f64(double %305, double %306, double %307)
  store double %308, ptr %tmp, align 8, !tbaa !11
  br label %if.end316

if.else311:                                       ; preds = %for.body304
  %309 = load ptr, ptr %ww, align 8, !tbaa !4
  %310 = load i64, ptr %_ii299, align 8, !tbaa !13
  %arrayidx312 = getelementptr inbounds double, ptr %309, i64 %310
  %311 = load double, ptr %arrayidx312, align 8, !tbaa !11
  %312 = load ptr, ptr %pi, align 8, !tbaa !4
  %313 = load i64, ptr %_offset300, align 8, !tbaa !13
  %add.ptr313 = getelementptr inbounds i8, ptr %312, i64 %313
  %314 = load float, ptr %add.ptr313, align 4, !tbaa !30
  %conv314 = fpext float %314 to double
  %315 = load double, ptr %tmp, align 8, !tbaa !11
  %316 = call double @llvm.fmuladd.f64(double %311, double %conv314, double %315)
  store double %316, ptr %tmp, align 8, !tbaa !11
  br label %if.end316

if.end316:                                        ; preds = %if.else311, %if.then308
  br label %for.inc317

for.inc317:                                       ; preds = %if.end316
  %317 = load i64, ptr %_ii299, align 8, !tbaa !13
  %inc318 = add nsw i64 %317, 1
  store i64 %inc318, ptr %_ii299, align 8, !tbaa !13
  br label %for.cond301

for.end319:                                       ; preds = %for.cond301
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset300) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii299) #8
  br label %sw.epilog

sw.bb320:                                         ; preds = %for.body61
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii321) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset322) #8
  store i64 0, ptr %_ii321, align 8, !tbaa !13
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc338, %sw.bb320
  %318 = load i64, ptr %_ii321, align 8, !tbaa !13
  %319 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp324 = icmp slt i64 %318, %319
  br i1 %cmp324, label %for.body326, label %for.end340

for.body326:                                      ; preds = %for.cond323
  %320 = load ptr, ptr %oo, align 8, !tbaa !4
  %321 = load i64, ptr %_ii321, align 8, !tbaa !13
  %arrayidx327 = getelementptr inbounds i64, ptr %320, i64 %321
  %322 = load i64, ptr %arrayidx327, align 8, !tbaa !13
  store i64 %322, ptr %_offset322, align 8, !tbaa !13
  %323 = load i64, ptr %_offset322, align 8, !tbaa !13
  %324 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp328 = icmp eq i64 %323, %324
  br i1 %cmp328, label %if.then330, label %if.else333

if.then330:                                       ; preds = %for.body326
  %325 = load ptr, ptr %ww, align 8, !tbaa !4
  %326 = load i64, ptr %_ii321, align 8, !tbaa !13
  %arrayidx331 = getelementptr inbounds double, ptr %325, i64 %326
  %327 = load double, ptr %arrayidx331, align 8, !tbaa !11
  %328 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %329 = load double, ptr %tmp, align 8, !tbaa !11
  %330 = call double @llvm.fmuladd.f64(double %327, double %328, double %329)
  store double %330, ptr %tmp, align 8, !tbaa !11
  br label %if.end337

if.else333:                                       ; preds = %for.body326
  %331 = load ptr, ptr %ww, align 8, !tbaa !4
  %332 = load i64, ptr %_ii321, align 8, !tbaa !13
  %arrayidx334 = getelementptr inbounds double, ptr %331, i64 %332
  %333 = load double, ptr %arrayidx334, align 8, !tbaa !11
  %334 = load ptr, ptr %pi, align 8, !tbaa !4
  %335 = load i64, ptr %_offset322, align 8, !tbaa !13
  %add.ptr335 = getelementptr inbounds i8, ptr %334, i64 %335
  %336 = load double, ptr %add.ptr335, align 8, !tbaa !11
  %337 = load double, ptr %tmp, align 8, !tbaa !11
  %338 = call double @llvm.fmuladd.f64(double %333, double %336, double %337)
  store double %338, ptr %tmp, align 8, !tbaa !11
  br label %if.end337

if.end337:                                        ; preds = %if.else333, %if.then330
  br label %for.inc338

for.inc338:                                       ; preds = %if.end337
  %339 = load i64, ptr %_ii321, align 8, !tbaa !13
  %inc339 = add nsw i64 %339, 1
  store i64 %inc339, ptr %_ii321, align 8, !tbaa !13
  br label %for.cond323

for.end340:                                       ; preds = %for.cond323
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset322) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii321) #8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body61
  store i32 1, ptr %err, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup482

sw.epilog:                                        ; preds = %for.end340, %for.end319, %for.end297, %for.end275, %for.end253, %for.end231, %for.end209, %for.end187, %for.end165, %for.end143, %for.end121, %for.end99, %for.end77
  %340 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call341 = call i32 @PyArray_TYPE(ptr noundef %340)
  switch i32 %call341, label %sw.default424 [
    i32 0, label %sw.bb342
    i32 2, label %sw.bb350
    i32 4, label %sw.bb364
    i32 6, label %sw.bb378
    i32 8, label %sw.bb389
    i32 10, label %sw.bb400
    i32 1, label %sw.bb411
    i32 3, label %sw.bb413
    i32 5, label %sw.bb415
    i32 7, label %sw.bb417
    i32 9, label %sw.bb419
    i32 11, label %sw.bb421
    i32 12, label %sw.bb423
  ]

sw.bb342:                                         ; preds = %sw.epilog
  %341 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp343 = fcmp ogt double %341, -1.000000e+00
  br i1 %cmp343, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb342
  %342 = load double, ptr %tmp, align 8, !tbaa !11
  %conv345 = fptoui double %342 to i8
  %conv346 = zext i8 %conv345 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb342
  %343 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg = fneg double %343
  %conv347 = fptoui double %fneg to i8
  %conv348 = zext i8 %conv347 to i32
  %sub = sub nsw i32 0, %conv348
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv346, %cond.true ], [ %sub, %cond.false ]
  %conv349 = trunc i32 %cond to i8
  %344 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv349, ptr %344, align 1, !tbaa !10
  br label %sw.epilog425

sw.bb350:                                         ; preds = %sw.epilog
  %345 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp351 = fcmp ogt double %345, -1.000000e+00
  br i1 %cmp351, label %cond.true353, label %cond.false356

cond.true353:                                     ; preds = %sw.bb350
  %346 = load double, ptr %tmp, align 8, !tbaa !11
  %conv354 = fptoui double %346 to i8
  %conv355 = zext i8 %conv354 to i32
  br label %cond.end361

cond.false356:                                    ; preds = %sw.bb350
  %347 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg357 = fneg double %347
  %conv358 = fptoui double %fneg357 to i8
  %conv359 = zext i8 %conv358 to i32
  %sub360 = sub nsw i32 0, %conv359
  br label %cond.end361

cond.end361:                                      ; preds = %cond.false356, %cond.true353
  %cond362 = phi i32 [ %conv355, %cond.true353 ], [ %sub360, %cond.false356 ]
  %conv363 = trunc i32 %cond362 to i8
  %348 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv363, ptr %348, align 1, !tbaa !10
  br label %sw.epilog425

sw.bb364:                                         ; preds = %sw.epilog
  %349 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp365 = fcmp ogt double %349, -1.000000e+00
  br i1 %cmp365, label %cond.true367, label %cond.false370

cond.true367:                                     ; preds = %sw.bb364
  %350 = load double, ptr %tmp, align 8, !tbaa !11
  %conv368 = fptoui double %350 to i16
  %conv369 = zext i16 %conv368 to i32
  br label %cond.end375

cond.false370:                                    ; preds = %sw.bb364
  %351 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg371 = fneg double %351
  %conv372 = fptoui double %fneg371 to i16
  %conv373 = zext i16 %conv372 to i32
  %sub374 = sub nsw i32 0, %conv373
  br label %cond.end375

cond.end375:                                      ; preds = %cond.false370, %cond.true367
  %cond376 = phi i32 [ %conv369, %cond.true367 ], [ %sub374, %cond.false370 ]
  %conv377 = trunc i32 %cond376 to i16
  %352 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv377, ptr %352, align 2, !tbaa !26
  br label %sw.epilog425

sw.bb378:                                         ; preds = %sw.epilog
  %353 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp379 = fcmp ogt double %353, -1.000000e+00
  br i1 %cmp379, label %cond.true381, label %cond.false383

cond.true381:                                     ; preds = %sw.bb378
  %354 = load double, ptr %tmp, align 8, !tbaa !11
  %conv382 = fptoui double %354 to i32
  br label %cond.end387

cond.false383:                                    ; preds = %sw.bb378
  %355 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg384 = fneg double %355
  %conv385 = fptoui double %fneg384 to i32
  %sub386 = sub i32 0, %conv385
  br label %cond.end387

cond.end387:                                      ; preds = %cond.false383, %cond.true381
  %cond388 = phi i32 [ %conv382, %cond.true381 ], [ %sub386, %cond.false383 ]
  %356 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %cond388, ptr %356, align 4, !tbaa !8
  br label %sw.epilog425

sw.bb389:                                         ; preds = %sw.epilog
  %357 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp390 = fcmp ogt double %357, -1.000000e+00
  br i1 %cmp390, label %cond.true392, label %cond.false394

cond.true392:                                     ; preds = %sw.bb389
  %358 = load double, ptr %tmp, align 8, !tbaa !11
  %conv393 = fptoui double %358 to i64
  br label %cond.end398

cond.false394:                                    ; preds = %sw.bb389
  %359 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg395 = fneg double %359
  %conv396 = fptoui double %fneg395 to i64
  %sub397 = sub i64 0, %conv396
  br label %cond.end398

cond.end398:                                      ; preds = %cond.false394, %cond.true392
  %cond399 = phi i64 [ %conv393, %cond.true392 ], [ %sub397, %cond.false394 ]
  %360 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond399, ptr %360, align 8, !tbaa !13
  br label %sw.epilog425

sw.bb400:                                         ; preds = %sw.epilog
  %361 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp401 = fcmp ogt double %361, -1.000000e+00
  br i1 %cmp401, label %cond.true403, label %cond.false405

cond.true403:                                     ; preds = %sw.bb400
  %362 = load double, ptr %tmp, align 8, !tbaa !11
  %conv404 = fptoui double %362 to i64
  br label %cond.end409

cond.false405:                                    ; preds = %sw.bb400
  %363 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg406 = fneg double %363
  %conv407 = fptoui double %fneg406 to i64
  %sub408 = sub i64 0, %conv407
  br label %cond.end409

cond.end409:                                      ; preds = %cond.false405, %cond.true403
  %cond410 = phi i64 [ %conv404, %cond.true403 ], [ %sub408, %cond.false405 ]
  %364 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond410, ptr %364, align 8, !tbaa !28
  br label %sw.epilog425

sw.bb411:                                         ; preds = %sw.epilog
  %365 = load double, ptr %tmp, align 8, !tbaa !11
  %conv412 = fptosi double %365 to i8
  %366 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv412, ptr %366, align 1, !tbaa !10
  br label %sw.epilog425

sw.bb413:                                         ; preds = %sw.epilog
  %367 = load double, ptr %tmp, align 8, !tbaa !11
  %conv414 = fptosi double %367 to i16
  %368 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv414, ptr %368, align 2, !tbaa !26
  br label %sw.epilog425

sw.bb415:                                         ; preds = %sw.epilog
  %369 = load double, ptr %tmp, align 8, !tbaa !11
  %conv416 = fptosi double %369 to i32
  %370 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv416, ptr %370, align 4, !tbaa !8
  br label %sw.epilog425

sw.bb417:                                         ; preds = %sw.epilog
  %371 = load double, ptr %tmp, align 8, !tbaa !11
  %conv418 = fptosi double %371 to i64
  %372 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv418, ptr %372, align 8, !tbaa !13
  br label %sw.epilog425

sw.bb419:                                         ; preds = %sw.epilog
  %373 = load double, ptr %tmp, align 8, !tbaa !11
  %conv420 = fptosi double %373 to i64
  %374 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv420, ptr %374, align 8, !tbaa !28
  br label %sw.epilog425

sw.bb421:                                         ; preds = %sw.epilog
  %375 = load double, ptr %tmp, align 8, !tbaa !11
  %conv422 = fptrunc double %375 to float
  %376 = load ptr, ptr %po, align 8, !tbaa !4
  store float %conv422, ptr %376, align 4, !tbaa !30
  br label %sw.epilog425

sw.bb423:                                         ; preds = %sw.epilog
  %377 = load double, ptr %tmp, align 8, !tbaa !11
  %378 = load ptr, ptr %po, align 8, !tbaa !4
  store double %377, ptr %378, align 8, !tbaa !11
  br label %sw.epilog425

sw.default424:                                    ; preds = %sw.epilog
  store i32 1, ptr %err, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup482

sw.epilog425:                                     ; preds = %sw.bb423, %sw.bb421, %sw.bb419, %sw.bb417, %sw.bb415, %sw.bb413, %sw.bb411, %cond.end409, %cond.end398, %cond.end387, %cond.end375, %cond.end361, %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ii426) #8
  %rank_m1 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 0
  %379 = load i32, ptr %rank_m1, align 8, !tbaa !32
  store i32 %379, ptr %_ii426, align 4, !tbaa !8
  br label %for.cond427

for.cond427:                                      ; preds = %for.inc480, %sw.epilog425
  %380 = load i32, ptr %_ii426, align 4, !tbaa !8
  %cmp428 = icmp sge i32 %380, 0
  br i1 %cmp428, label %for.body430, label %for.end481

for.body430:                                      ; preds = %for.cond427
  call void @llvm.lifetime.start.p0(i64 8, ptr %_pp) #8
  %coordinates = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %381 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom = sext i32 %381 to i64
  %arrayidx431 = getelementptr inbounds [32 x i64], ptr %coordinates, i64 0, i64 %idxprom
  %382 = load i64, ptr %arrayidx431, align 8, !tbaa !13
  store i64 %382, ptr %_pp, align 8, !tbaa !13
  %383 = load i64, ptr %_pp, align 8, !tbaa !13
  %dimensions = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 1
  %384 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom432 = sext i32 %384 to i64
  %arrayidx433 = getelementptr inbounds [32 x i64], ptr %dimensions, i64 0, i64 %idxprom432
  %385 = load i64, ptr %arrayidx433, align 8, !tbaa !13
  %cmp434 = icmp slt i64 %383, %385
  br i1 %cmp434, label %if.then436, label %if.else462

if.then436:                                       ; preds = %for.body430
  %386 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound1 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 2
  %387 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom437 = sext i32 %387 to i64
  %arrayidx438 = getelementptr inbounds [32 x i64], ptr %bound1, i64 0, i64 %idxprom437
  %388 = load i64, ptr %arrayidx438, align 8, !tbaa !13
  %cmp439 = icmp slt i64 %386, %388
  br i1 %cmp439, label %if.then445, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then436
  %389 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound2 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 3
  %390 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom441 = sext i32 %390 to i64
  %arrayidx442 = getelementptr inbounds [32 x i64], ptr %bound2, i64 0, i64 %idxprom441
  %391 = load i64, ptr %arrayidx442, align 8, !tbaa !13
  %cmp443 = icmp sge i64 %389, %391
  br i1 %cmp443, label %if.then445, label %if.end449

if.then445:                                       ; preds = %lor.lhs.false, %if.then436
  %strides = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 0
  %392 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom446 = sext i32 %392 to i64
  %arrayidx447 = getelementptr inbounds [32 x i64], ptr %strides, i64 0, i64 %idxprom446
  %393 = load i64, ptr %arrayidx447, align 8, !tbaa !13
  %394 = load ptr, ptr %oo, align 8, !tbaa !4
  %add.ptr448 = getelementptr inbounds i64, ptr %394, i64 %393
  store ptr %add.ptr448, ptr %oo, align 8, !tbaa !4
  br label %if.end449

if.end449:                                        ; preds = %if.then445, %lor.lhs.false
  %coordinates450 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %395 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom451 = sext i32 %395 to i64
  %arrayidx452 = getelementptr inbounds [32 x i64], ptr %coordinates450, i64 0, i64 %idxprom451
  %396 = load i64, ptr %arrayidx452, align 8, !tbaa !13
  %inc453 = add nsw i64 %396, 1
  store i64 %inc453, ptr %arrayidx452, align 8, !tbaa !13
  %strides454 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 3
  %397 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom455 = sext i32 %397 to i64
  %arrayidx456 = getelementptr inbounds [32 x i64], ptr %strides454, i64 0, i64 %idxprom455
  %398 = load i64, ptr %arrayidx456, align 8, !tbaa !13
  %399 = load ptr, ptr %pi, align 8, !tbaa !4
  %add.ptr457 = getelementptr inbounds i8, ptr %399, i64 %398
  store ptr %add.ptr457, ptr %pi, align 8, !tbaa !4
  %strides458 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 3
  %400 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom459 = sext i32 %400 to i64
  %arrayidx460 = getelementptr inbounds [32 x i64], ptr %strides458, i64 0, i64 %idxprom459
  %401 = load i64, ptr %arrayidx460, align 8, !tbaa !13
  %402 = load ptr, ptr %po, align 8, !tbaa !4
  %add.ptr461 = getelementptr inbounds i8, ptr %402, i64 %401
  store ptr %add.ptr461, ptr %po, align 8, !tbaa !4
  store i32 55, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else462:                                       ; preds = %for.body430
  %coordinates463 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %403 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom464 = sext i32 %403 to i64
  %arrayidx465 = getelementptr inbounds [32 x i64], ptr %coordinates463, i64 0, i64 %idxprom464
  store i64 0, ptr %arrayidx465, align 8, !tbaa !13
  %backstrides = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 4
  %404 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom466 = sext i32 %404 to i64
  %arrayidx467 = getelementptr inbounds [32 x i64], ptr %backstrides, i64 0, i64 %idxprom466
  %405 = load i64, ptr %arrayidx467, align 8, !tbaa !13
  %406 = load ptr, ptr %pi, align 8, !tbaa !4
  %idx.neg = sub i64 0, %405
  %add.ptr468 = getelementptr inbounds i8, ptr %406, i64 %idx.neg
  store ptr %add.ptr468, ptr %pi, align 8, !tbaa !4
  %backstrides469 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 4
  %407 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom470 = sext i32 %407 to i64
  %arrayidx471 = getelementptr inbounds [32 x i64], ptr %backstrides469, i64 0, i64 %idxprom470
  %408 = load i64, ptr %arrayidx471, align 8, !tbaa !13
  %409 = load ptr, ptr %po, align 8, !tbaa !4
  %idx.neg472 = sub i64 0, %408
  %add.ptr473 = getelementptr inbounds i8, ptr %409, i64 %idx.neg472
  store ptr %add.ptr473, ptr %po, align 8, !tbaa !4
  %backstrides474 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 1
  %410 = load i32, ptr %_ii426, align 4, !tbaa !8
  %idxprom475 = sext i32 %410 to i64
  %arrayidx476 = getelementptr inbounds [32 x i64], ptr %backstrides474, i64 0, i64 %idxprom475
  %411 = load i64, ptr %arrayidx476, align 8, !tbaa !13
  %412 = load ptr, ptr %oo, align 8, !tbaa !4
  %idx.neg477 = sub i64 0, %411
  %add.ptr478 = getelementptr inbounds i64, ptr %412, i64 %idx.neg477
  store ptr %add.ptr478, ptr %oo, align 8, !tbaa !4
  br label %if.end479

if.end479:                                        ; preds = %if.else462
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end479, %if.end449
  call void @llvm.lifetime.end.p0(i64 8, ptr %_pp) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 55, label %for.end481
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc480

for.inc480:                                       ; preds = %cleanup.cont
  %413 = load i32, ptr %_ii426, align 4, !tbaa !8
  %dec = add nsw i32 %413, -1
  store i32 %dec, ptr %_ii426, align 4, !tbaa !8
  br label %for.cond427

for.end481:                                       ; preds = %cleanup, %for.cond427
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ii426) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup482

cleanup482:                                       ; preds = %sw.default424, %sw.default, %for.end481
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  %cleanup.dest483 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest483, label %cleanup501 [
    i32 0, label %cleanup.cont484
    i32 2, label %exit
  ]

cleanup.cont484:                                  ; preds = %cleanup482
  br label %for.inc485

for.inc485:                                       ; preds = %cleanup.cont484
  %414 = load i64, ptr %jj, align 8, !tbaa !13
  %inc486 = add nsw i64 %414, 1
  store i64 %inc486, ptr %jj, align 8, !tbaa !13
  br label %for.cond59

for.end487:                                       ; preds = %for.cond59
  br label %exit

exit:                                             ; preds = %for.end487, %cleanup482, %if.then50, %if.then46, %if.then42, %if.then35, %if.then16, %if.then
  br label %do.body488

do.body488:                                       ; preds = %exit
  %415 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool489 = icmp ne ptr %415, null
  br i1 %tobool489, label %if.then490, label %if.end491

if.then490:                                       ; preds = %do.body488
  %416 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %416)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end491

if.end491:                                        ; preds = %if.then490, %do.body488
  br label %do.cond492

do.cond492:                                       ; preds = %if.end491
  br label %do.end493

do.end493:                                        ; preds = %do.cond492
  %417 = load i32, ptr %err, align 4, !tbaa !8
  %cmp494 = icmp eq i32 %417, 1
  br i1 %cmp494, label %if.then496, label %if.end497

if.then496:                                       ; preds = %do.end493
  %418 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %418, ptr noundef @.str)
  br label %if.end497

if.end497:                                        ; preds = %if.then496, %do.end493
  %419 = load ptr, ptr %offsets, align 8, !tbaa !4
  call void @free(ptr noundef %419) #8
  %420 = load ptr, ptr %ww, align 8, !tbaa !4
  call void @free(ptr noundef %420) #8
  %421 = load ptr, ptr %pf, align 8, !tbaa !4
  call void @free(ptr noundef %421) #8
  %call498 = call ptr @PyErr_Occurred()
  %tobool499 = icmp ne ptr %call498, null
  %422 = zext i1 %tobool499 to i64
  %cond500 = select i1 %tobool499, i32 0, i32 1
  store i32 %cond500, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup501

cleanup501:                                       ; preds = %if.end497, %cleanup482
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ww) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pw) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %offsets) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %filter_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsize) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pf) #8
  %423 = load i32, ptr %retval, align 4
  ret i32 %423

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

declare ptr @PyErr_NoMemory() #4

declare i32 @NI_InitFilterOffsets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @NI_InitFilterIterator(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @NI_InitPointIterator(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyArray_TYPE(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %descr = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %descr, align 8, !tbaa !33
  %type_num = getelementptr inbounds %struct._PyArray_Descr, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %type_num, align 4, !tbaa !34
  ret i32 %2
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define hidden i32 @NI_UniformFilter1D(ptr noundef %input, i64 noundef %filter_size, i32 noundef %axis, ptr noundef %output, i32 noundef %mode, double noundef %cval, i64 noundef %origin) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %filter_size.addr = alloca i64, align 8
  %axis.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cval.addr = alloca double, align 8
  %origin.addr = alloca i64, align 8
  %lines = alloca i64, align 8
  %kk = alloca i64, align 8
  %ll = alloca i64, align 8
  %length = alloca i64, align 8
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %more = alloca i32, align 4
  %ibuffer = alloca ptr, align 8
  %obuffer = alloca ptr, align 8
  %iline_buffer = alloca %struct.NI_LineBuffer, align 8
  %oline_buffer = alloca %struct.NI_LineBuffer, align 8
  %_save = alloca ptr, align 8
  %iline = alloca ptr, align 8
  %oline = alloca ptr, align 8
  %tmp = alloca double, align 8
  %l1 = alloca ptr, align 8
  %l2 = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store i64 %filter_size, ptr %filter_size.addr, align 8, !tbaa !13
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cval, ptr %cval.addr, align 8, !tbaa !11
  store i64 %origin, ptr %origin.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %lines) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %more) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibuffer) #8
  store ptr null, ptr %ibuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obuffer) #8
  store ptr null, ptr %obuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.start.p0(i64 1120, ptr %oline_buffer) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #8
  store ptr null, ptr %_save, align 8, !tbaa !4
  %0 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %div = sdiv i64 %0, 2
  store i64 %div, ptr %size1, align 8, !tbaa !13
  %1 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %2 = load i64, ptr %size1, align 8, !tbaa !13
  %sub = sub nsw i64 %1, %2
  %sub1 = sub nsw i64 %sub, 1
  store i64 %sub1, ptr %size2, align 8, !tbaa !13
  store i64 -1, ptr %lines, align 8, !tbaa !13
  %3 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %4 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %5 = load i64, ptr %size1, align 8, !tbaa !13
  %6 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add = add nsw i64 %5, %6
  %7 = load i64, ptr %size2, align 8, !tbaa !13
  %8 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub2 = sub nsw i64 %7, %8
  %call = call i32 @NI_AllocateLineBuffer(ptr noundef %3, i32 noundef %4, i64 noundef %add, i64 noundef %sub2, ptr noundef %lines, i64 noundef 256000, ptr noundef %ibuffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %10 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call3 = call i32 @NI_AllocateLineBuffer(ptr noundef %9, i32 noundef %10, i64 noundef 0, i64 noundef 0, ptr noundef %lines, i64 noundef 256000, ptr noundef %obuffer)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  br label %exit

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %12 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %13 = load i64, ptr %size1, align 8, !tbaa !13
  %14 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add7 = add nsw i64 %13, %14
  %15 = load i64, ptr %size2, align 8, !tbaa !13
  %16 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub8 = sub nsw i64 %15, %16
  %17 = load i64, ptr %lines, align 8, !tbaa !13
  %18 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  %19 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %20 = load double, ptr %cval.addr, align 8, !tbaa !11
  %call9 = call i32 @NI_InitLineBuffer(ptr noundef %11, i32 noundef %12, i64 noundef %add7, i64 noundef %sub8, i64 noundef %17, ptr noundef %18, i32 noundef %19, double noundef %20, ptr noundef %iline_buffer)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end6
  br label %exit

if.end12:                                         ; preds = %if.end6
  %21 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %22 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %23 = load i64, ptr %lines, align 8, !tbaa !13
  %24 = load ptr, ptr %obuffer, align 8, !tbaa !4
  %25 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call13 = call i32 @NI_InitLineBuffer(ptr noundef %21, i32 noundef %22, i64 noundef 0, i64 noundef 0, i64 noundef %23, ptr noundef %24, i32 noundef %25, double noundef 0.000000e+00, ptr noundef %oline_buffer)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  br label %exit

if.end16:                                         ; preds = %if.end12
  br label %do.body

do.body:                                          ; preds = %if.end16
  %call17 = call ptr @PyEval_SaveThread()
  store ptr %call17, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call18 = call i32 @PyArray_NDIM(ptr noundef %26)
  %cmp = icmp sgt i32 %call18, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %27 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %28 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call19 = call i64 @PyArray_DIM(ptr noundef %27, i32 noundef %28)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call19, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, ptr %length, align 8, !tbaa !13
  br label %do.body20

do.body20:                                        ; preds = %do.cond65, %cond.end
  %call21 = call i32 @NI_ArrayToLineBuffer(ptr noundef %iline_buffer, ptr noundef %lines, ptr noundef %more)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %do.body20
  br label %exit

if.end24:                                         ; preds = %do.body20
  store i64 0, ptr %kk, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %if.end24
  %29 = load i64, ptr %kk, align 8, !tbaa !13
  %30 = load i64, ptr %lines, align 8, !tbaa !13
  %cmp25 = icmp slt i64 %29, %30
  br i1 %cmp25, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %iline) #8
  %buffer_data = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 0
  %31 = load ptr, ptr %buffer_data, align 8, !tbaa !15
  %32 = load i64, ptr %kk, align 8, !tbaa !13
  %line_length = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 2
  %33 = load i64, ptr %line_length, align 8, !tbaa !18
  %size126 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 4
  %34 = load i64, ptr %size126, align 8, !tbaa !19
  %add27 = add nsw i64 %33, %34
  %size228 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 5
  %35 = load i64, ptr %size228, align 8, !tbaa !20
  %add29 = add nsw i64 %add27, %35
  %mul = mul nsw i64 %32, %add29
  %add.ptr = getelementptr inbounds double, ptr %31, i64 %mul
  store ptr %add.ptr, ptr %iline, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oline) #8
  %buffer_data30 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 0
  %36 = load ptr, ptr %buffer_data30, align 8, !tbaa !15
  %37 = load i64, ptr %kk, align 8, !tbaa !13
  %line_length31 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 2
  %38 = load i64, ptr %line_length31, align 8, !tbaa !18
  %size132 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 4
  %39 = load i64, ptr %size132, align 8, !tbaa !19
  %add33 = add nsw i64 %38, %39
  %size234 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 5
  %40 = load i64, ptr %size234, align 8, !tbaa !20
  %add35 = add nsw i64 %add33, %40
  %mul36 = mul nsw i64 %37, %add35
  %add.ptr37 = getelementptr inbounds double, ptr %36, i64 %mul36
  store ptr %add.ptr37, ptr %oline, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %l1) #8
  %41 = load ptr, ptr %iline, align 8, !tbaa !4
  store ptr %41, ptr %l1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l2) #8
  %42 = load ptr, ptr %iline, align 8, !tbaa !4
  %43 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %add.ptr38 = getelementptr inbounds double, ptr %42, i64 %43
  store ptr %add.ptr38, ptr %l2, align 8, !tbaa !4
  store i64 0, ptr %ll, align 8, !tbaa !13
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc, %for.body
  %44 = load i64, ptr %ll, align 8, !tbaa !13
  %45 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %cmp40 = icmp slt i64 %44, %45
  br i1 %cmp40, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond39
  %46 = load ptr, ptr %iline, align 8, !tbaa !4
  %47 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds double, ptr %46, i64 %47
  %48 = load double, ptr %arrayidx, align 8, !tbaa !11
  %49 = load double, ptr %tmp, align 8, !tbaa !11
  %add42 = fadd double %49, %48
  store double %add42, ptr %tmp, align 8, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body41
  %50 = load i64, ptr %ll, align 8, !tbaa !13
  %inc = add nsw i64 %50, 1
  store i64 %inc, ptr %ll, align 8, !tbaa !13
  br label %for.cond39

for.end:                                          ; preds = %for.cond39
  %51 = load double, ptr %tmp, align 8, !tbaa !11
  %52 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %conv = sitofp i64 %52 to double
  %div43 = fdiv double %51, %conv
  %53 = load ptr, ptr %oline, align 8, !tbaa !4
  %arrayidx44 = getelementptr inbounds double, ptr %53, i64 0
  store double %div43, ptr %arrayidx44, align 8, !tbaa !11
  store i64 1, ptr %ll, align 8, !tbaa !13
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc55, %for.end
  %54 = load i64, ptr %ll, align 8, !tbaa !13
  %55 = load i64, ptr %length, align 8, !tbaa !13
  %cmp46 = icmp slt i64 %54, %55
  br i1 %cmp46, label %for.body48, label %for.end57

for.body48:                                       ; preds = %for.cond45
  %56 = load ptr, ptr %l2, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %56, i32 1
  store ptr %incdec.ptr, ptr %l2, align 8, !tbaa !4
  %57 = load double, ptr %56, align 8, !tbaa !11
  %58 = load ptr, ptr %l1, align 8, !tbaa !4
  %incdec.ptr49 = getelementptr inbounds double, ptr %58, i32 1
  store ptr %incdec.ptr49, ptr %l1, align 8, !tbaa !4
  %59 = load double, ptr %58, align 8, !tbaa !11
  %sub50 = fsub double %57, %59
  %60 = load double, ptr %tmp, align 8, !tbaa !11
  %add51 = fadd double %60, %sub50
  store double %add51, ptr %tmp, align 8, !tbaa !11
  %61 = load double, ptr %tmp, align 8, !tbaa !11
  %62 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %conv52 = sitofp i64 %62 to double
  %div53 = fdiv double %61, %conv52
  %63 = load ptr, ptr %oline, align 8, !tbaa !4
  %64 = load i64, ptr %ll, align 8, !tbaa !13
  %arrayidx54 = getelementptr inbounds double, ptr %63, i64 %64
  store double %div53, ptr %arrayidx54, align 8, !tbaa !11
  br label %for.inc55

for.inc55:                                        ; preds = %for.body48
  %65 = load i64, ptr %ll, align 8, !tbaa !13
  %inc56 = add nsw i64 %65, 1
  store i64 %inc56, ptr %ll, align 8, !tbaa !13
  br label %for.cond45

for.end57:                                        ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 8, ptr %l2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %l1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %oline) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %iline) #8
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %66 = load i64, ptr %kk, align 8, !tbaa !13
  %inc59 = add nsw i64 %66, 1
  store i64 %inc59, ptr %kk, align 8, !tbaa !13
  br label %for.cond

for.end60:                                        ; preds = %for.cond
  %call61 = call i32 @NI_LineBufferToArray(ptr noundef %oline_buffer)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %for.end60
  br label %exit

if.end64:                                         ; preds = %for.end60
  br label %do.cond65

do.cond65:                                        ; preds = %if.end64
  %67 = load i32, ptr %more, align 4, !tbaa !8
  %tobool66 = icmp ne i32 %67, 0
  br i1 %tobool66, label %do.body20, label %do.end67

do.end67:                                         ; preds = %do.cond65
  br label %exit

exit:                                             ; preds = %do.end67, %if.then63, %if.then23, %if.then15, %if.then11, %if.then5, %if.then
  br label %do.body68

do.body68:                                        ; preds = %exit
  %68 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool69 = icmp ne ptr %68, null
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.body68
  %69 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %69)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %do.body68
  br label %do.cond72

do.cond72:                                        ; preds = %if.end71
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  %70 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  call void @free(ptr noundef %70) #8
  %71 = load ptr, ptr %obuffer, align 8, !tbaa !4
  call void @free(ptr noundef %71) #8
  %call74 = call ptr @PyErr_Occurred()
  %tobool75 = icmp ne ptr %call74, null
  %72 = zext i1 %tobool75 to i64
  %cond76 = select i1 %tobool75, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #8
  call void @llvm.lifetime.end.p0(i64 1120, ptr %oline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %obuffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibuffer) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %more) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %lines) #8
  ret i32 %cond76
}

; Function Attrs: nounwind uwtable
define hidden i32 @NI_MinOrMaxFilter1D(ptr noundef %input, i64 noundef %filter_size, i32 noundef %axis, ptr noundef %output, i32 noundef %mode, double noundef %cval, i64 noundef %origin, i32 noundef %minimum) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %filter_size.addr = alloca i64, align 8
  %axis.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cval.addr = alloca double, align 8
  %origin.addr = alloca i64, align 8
  %minimum.addr = alloca i32, align 4
  %lines = alloca i64, align 8
  %kk = alloca i64, align 8
  %ll = alloca i64, align 8
  %length = alloca i64, align 8
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %more = alloca i32, align 4
  %ibuffer = alloca ptr, align 8
  %obuffer = alloca ptr, align 8
  %iline_buffer = alloca %struct.NI_LineBuffer, align 8
  %oline_buffer = alloca %struct.NI_LineBuffer, align 8
  %ring = alloca ptr, align 8
  %minpair = alloca ptr, align 8
  %end = alloca ptr, align 8
  %last = alloca ptr, align 8
  %_save = alloca ptr, align 8
  %iline = alloca ptr, align 8
  %oline = alloca ptr, align 8
  %val = alloca double, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store i64 %filter_size, ptr %filter_size.addr, align 8, !tbaa !13
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cval, ptr %cval.addr, align 8, !tbaa !11
  store i64 %origin, ptr %origin.addr, align 8, !tbaa !13
  store i32 %minimum, ptr %minimum.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lines) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %more) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibuffer) #8
  store ptr null, ptr %ibuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obuffer) #8
  store ptr null, ptr %obuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.start.p0(i64 1120, ptr %oline_buffer) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ring) #8
  store ptr null, ptr %ring, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %minpair) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #8
  store ptr null, ptr %_save, align 8, !tbaa !4
  %0 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %div = sdiv i64 %0, 2
  store i64 %div, ptr %size1, align 8, !tbaa !13
  %1 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %2 = load i64, ptr %size1, align 8, !tbaa !13
  %sub = sub nsw i64 %1, %2
  %sub1 = sub nsw i64 %sub, 1
  store i64 %sub1, ptr %size2, align 8, !tbaa !13
  store i64 -1, ptr %lines, align 8, !tbaa !13
  %3 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %4 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %5 = load i64, ptr %size1, align 8, !tbaa !13
  %6 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add = add nsw i64 %5, %6
  %7 = load i64, ptr %size2, align 8, !tbaa !13
  %8 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub2 = sub nsw i64 %7, %8
  %call = call i32 @NI_AllocateLineBuffer(ptr noundef %3, i32 noundef %4, i64 noundef %add, i64 noundef %sub2, ptr noundef %lines, i64 noundef 256000, ptr noundef %ibuffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %10 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call3 = call i32 @NI_AllocateLineBuffer(ptr noundef %9, i32 noundef %10, i64 noundef 0, i64 noundef 0, ptr noundef %lines, i64 noundef 256000, ptr noundef %obuffer)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  br label %exit

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %12 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %13 = load i64, ptr %size1, align 8, !tbaa !13
  %14 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add7 = add nsw i64 %13, %14
  %15 = load i64, ptr %size2, align 8, !tbaa !13
  %16 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub8 = sub nsw i64 %15, %16
  %17 = load i64, ptr %lines, align 8, !tbaa !13
  %18 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  %19 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %20 = load double, ptr %cval.addr, align 8, !tbaa !11
  %call9 = call i32 @NI_InitLineBuffer(ptr noundef %11, i32 noundef %12, i64 noundef %add7, i64 noundef %sub8, i64 noundef %17, ptr noundef %18, i32 noundef %19, double noundef %20, ptr noundef %iline_buffer)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end6
  br label %exit

if.end12:                                         ; preds = %if.end6
  %21 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %22 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %23 = load i64, ptr %lines, align 8, !tbaa !13
  %24 = load ptr, ptr %obuffer, align 8, !tbaa !4
  %25 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call13 = call i32 @NI_InitLineBuffer(ptr noundef %21, i32 noundef %22, i64 noundef 0, i64 noundef 0, i64 noundef %23, ptr noundef %24, i32 noundef %25, double noundef 0.000000e+00, ptr noundef %oline_buffer)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  br label %exit

if.end16:                                         ; preds = %if.end12
  br label %do.body

do.body:                                          ; preds = %if.end16
  %call17 = call ptr @PyEval_SaveThread()
  store ptr %call17, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call18 = call i32 @PyArray_NDIM(ptr noundef %26)
  %cmp = icmp sgt i32 %call18, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %27 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %28 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call19 = call i64 @PyArray_DIM(ptr noundef %27, i32 noundef %28)
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call19, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, ptr %length, align 8, !tbaa !13
  %29 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %mul = mul i64 %29, 16
  %call20 = call noalias ptr @malloc(i64 noundef %mul) #9
  store ptr %call20, ptr %ring, align 8, !tbaa !4
  %30 = load ptr, ptr %ring, align 8, !tbaa !4
  %tobool21 = icmp ne ptr %30, null
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %cond.end
  br label %exit

if.end23:                                         ; preds = %cond.end
  %31 = load ptr, ptr %ring, align 8, !tbaa !4
  %32 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %struct.pairs, ptr %31, i64 %32
  store ptr %add.ptr, ptr %end, align 8, !tbaa !4
  br label %do.body24

do.body24:                                        ; preds = %do.cond106, %if.end23
  %call25 = call i32 @NI_ArrayToLineBuffer(ptr noundef %iline_buffer, ptr noundef %lines, ptr noundef %more)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %do.body24
  br label %exit

if.end28:                                         ; preds = %do.body24
  store i64 0, ptr %kk, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc99, %if.end28
  %33 = load i64, ptr %kk, align 8, !tbaa !13
  %34 = load i64, ptr %lines, align 8, !tbaa !13
  %cmp29 = icmp slt i64 %33, %34
  br i1 %cmp29, label %for.body, label %for.end101

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %iline) #8
  %buffer_data = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 0
  %35 = load ptr, ptr %buffer_data, align 8, !tbaa !15
  %36 = load i64, ptr %kk, align 8, !tbaa !13
  %line_length = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 2
  %37 = load i64, ptr %line_length, align 8, !tbaa !18
  %size130 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 4
  %38 = load i64, ptr %size130, align 8, !tbaa !19
  %add31 = add nsw i64 %37, %38
  %size232 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 5
  %39 = load i64, ptr %size232, align 8, !tbaa !20
  %add33 = add nsw i64 %add31, %39
  %mul34 = mul nsw i64 %36, %add33
  %add.ptr35 = getelementptr inbounds double, ptr %35, i64 %mul34
  store ptr %add.ptr35, ptr %iline, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oline) #8
  %buffer_data36 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 0
  %40 = load ptr, ptr %buffer_data36, align 8, !tbaa !15
  %41 = load i64, ptr %kk, align 8, !tbaa !13
  %line_length37 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 2
  %42 = load i64, ptr %line_length37, align 8, !tbaa !18
  %size138 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 4
  %43 = load i64, ptr %size138, align 8, !tbaa !19
  %add39 = add nsw i64 %42, %43
  %size240 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 5
  %44 = load i64, ptr %size240, align 8, !tbaa !20
  %add41 = add nsw i64 %add39, %44
  %mul42 = mul nsw i64 %41, %add41
  %add.ptr43 = getelementptr inbounds double, ptr %40, i64 %mul42
  store ptr %add.ptr43, ptr %oline, align 8, !tbaa !4
  %45 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %cmp44 = icmp eq i64 %45, 1
  br i1 %cmp44, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.body
  %46 = load ptr, ptr %oline, align 8, !tbaa !4
  %47 = load ptr, ptr %iline, align 8, !tbaa !4
  %48 = load i64, ptr %length, align 8, !tbaa !13
  %mul46 = mul i64 8, %48
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %46, ptr align 8 %47, i64 %mul46, i1 false)
  br label %if.end98

if.else:                                          ; preds = %for.body
  %49 = load ptr, ptr %ring, align 8, !tbaa !4
  store ptr %49, ptr %minpair, align 8, !tbaa !4
  %50 = load ptr, ptr %iline, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %50, i32 1
  store ptr %incdec.ptr, ptr %iline, align 8, !tbaa !4
  %51 = load double, ptr %50, align 8, !tbaa !11
  %52 = load ptr, ptr %minpair, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.pairs, ptr %52, i32 0, i32 0
  store double %51, ptr %value, align 8, !tbaa !36
  %53 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %54 = load ptr, ptr %minpair, align 8, !tbaa !4
  %death = getelementptr inbounds %struct.pairs, ptr %54, i32 0, i32 1
  store i64 %53, ptr %death, align 8, !tbaa !38
  %55 = load ptr, ptr %ring, align 8, !tbaa !4
  store ptr %55, ptr %last, align 8, !tbaa !4
  store i64 1, ptr %ll, align 8, !tbaa !13
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc, %if.else
  %56 = load i64, ptr %ll, align 8, !tbaa !13
  %57 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %58 = load i64, ptr %length, align 8, !tbaa !13
  %add48 = add nsw i64 %57, %58
  %sub49 = sub nsw i64 %add48, 1
  %cmp50 = icmp slt i64 %56, %sub49
  br i1 %cmp50, label %for.body51, label %for.end

for.body51:                                       ; preds = %for.cond47
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8
  %59 = load ptr, ptr %iline, align 8, !tbaa !4
  %incdec.ptr52 = getelementptr inbounds double, ptr %59, i32 1
  store ptr %incdec.ptr52, ptr %iline, align 8, !tbaa !4
  %60 = load double, ptr %59, align 8, !tbaa !11
  store double %60, ptr %val, align 8, !tbaa !11
  %61 = load ptr, ptr %minpair, align 8, !tbaa !4
  %death53 = getelementptr inbounds %struct.pairs, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %death53, align 8, !tbaa !38
  %63 = load i64, ptr %ll, align 8, !tbaa !13
  %cmp54 = icmp eq i64 %62, %63
  br i1 %cmp54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %for.body51
  %64 = load ptr, ptr %minpair, align 8, !tbaa !4
  %incdec.ptr56 = getelementptr inbounds %struct.pairs, ptr %64, i32 1
  store ptr %incdec.ptr56, ptr %minpair, align 8, !tbaa !4
  %65 = load ptr, ptr %minpair, align 8, !tbaa !4
  %66 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp57 = icmp uge ptr %65, %66
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then55
  %67 = load ptr, ptr %ring, align 8, !tbaa !4
  store ptr %67, ptr %minpair, align 8, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.body51
  %68 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool61 = icmp ne i32 %68, 0
  br i1 %tobool61, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end60
  %69 = load double, ptr %val, align 8, !tbaa !11
  %70 = load ptr, ptr %minpair, align 8, !tbaa !4
  %value62 = getelementptr inbounds %struct.pairs, ptr %70, i32 0, i32 0
  %71 = load double, ptr %value62, align 8, !tbaa !36
  %cmp63 = fcmp ole double %69, %71
  br i1 %cmp63, label %if.then68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end60
  %72 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool64 = icmp ne i32 %72, 0
  br i1 %tobool64, label %if.else72, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %lor.lhs.false
  %73 = load double, ptr %val, align 8, !tbaa !11
  %74 = load ptr, ptr %minpair, align 8, !tbaa !4
  %value66 = getelementptr inbounds %struct.pairs, ptr %74, i32 0, i32 0
  %75 = load double, ptr %value66, align 8, !tbaa !36
  %cmp67 = fcmp oge double %73, %75
  br i1 %cmp67, label %if.then68, label %if.else72

if.then68:                                        ; preds = %land.lhs.true65, %land.lhs.true
  %76 = load double, ptr %val, align 8, !tbaa !11
  %77 = load ptr, ptr %minpair, align 8, !tbaa !4
  %value69 = getelementptr inbounds %struct.pairs, ptr %77, i32 0, i32 0
  store double %76, ptr %value69, align 8, !tbaa !36
  %78 = load i64, ptr %ll, align 8, !tbaa !13
  %79 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %add70 = add nsw i64 %78, %79
  %80 = load ptr, ptr %minpair, align 8, !tbaa !4
  %death71 = getelementptr inbounds %struct.pairs, ptr %80, i32 0, i32 1
  store i64 %add70, ptr %death71, align 8, !tbaa !38
  %81 = load ptr, ptr %minpair, align 8, !tbaa !4
  store ptr %81, ptr %last, align 8, !tbaa !4
  br label %if.end91

if.else72:                                        ; preds = %land.lhs.true65, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end82, %if.else72
  %82 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool73 = icmp ne i32 %82, 0
  br i1 %tobool73, label %land.lhs.true74, label %lor.rhs

land.lhs.true74:                                  ; preds = %while.cond
  %83 = load ptr, ptr %last, align 8, !tbaa !4
  %value75 = getelementptr inbounds %struct.pairs, ptr %83, i32 0, i32 0
  %84 = load double, ptr %value75, align 8, !tbaa !36
  %85 = load double, ptr %val, align 8, !tbaa !11
  %cmp76 = fcmp oge double %84, %85
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true74, %while.cond
  %86 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool77 = icmp ne i32 %86, 0
  br i1 %tobool77, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %87 = load ptr, ptr %last, align 8, !tbaa !4
  %value78 = getelementptr inbounds %struct.pairs, ptr %87, i32 0, i32 0
  %88 = load double, ptr %value78, align 8, !tbaa !36
  %89 = load double, ptr %val, align 8, !tbaa !11
  %cmp79 = fcmp ole double %88, %89
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %90 = phi i1 [ false, %lor.rhs ], [ %cmp79, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true74
  %91 = phi i1 [ true, %land.lhs.true74 ], [ %90, %land.end ]
  br i1 %91, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %92 = load ptr, ptr %last, align 8, !tbaa !4
  %93 = load ptr, ptr %ring, align 8, !tbaa !4
  %cmp80 = icmp eq ptr %92, %93
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %while.body
  %94 = load ptr, ptr %end, align 8, !tbaa !4
  store ptr %94, ptr %last, align 8, !tbaa !4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %while.body
  %95 = load ptr, ptr %last, align 8, !tbaa !4
  %incdec.ptr83 = getelementptr inbounds %struct.pairs, ptr %95, i32 -1
  store ptr %incdec.ptr83, ptr %last, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %96 = load ptr, ptr %last, align 8, !tbaa !4
  %incdec.ptr84 = getelementptr inbounds %struct.pairs, ptr %96, i32 1
  store ptr %incdec.ptr84, ptr %last, align 8, !tbaa !4
  %97 = load ptr, ptr %last, align 8, !tbaa !4
  %98 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp85 = icmp uge ptr %97, %98
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %while.end
  %99 = load ptr, ptr %ring, align 8, !tbaa !4
  store ptr %99, ptr %last, align 8, !tbaa !4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %while.end
  %100 = load double, ptr %val, align 8, !tbaa !11
  %101 = load ptr, ptr %last, align 8, !tbaa !4
  %value88 = getelementptr inbounds %struct.pairs, ptr %101, i32 0, i32 0
  store double %100, ptr %value88, align 8, !tbaa !36
  %102 = load i64, ptr %ll, align 8, !tbaa !13
  %103 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %add89 = add nsw i64 %102, %103
  %104 = load ptr, ptr %last, align 8, !tbaa !4
  %death90 = getelementptr inbounds %struct.pairs, ptr %104, i32 0, i32 1
  store i64 %add89, ptr %death90, align 8, !tbaa !38
  br label %if.end91

if.end91:                                         ; preds = %if.end87, %if.then68
  %105 = load i64, ptr %ll, align 8, !tbaa !13
  %106 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %sub92 = sub nsw i64 %106, 1
  %cmp93 = icmp sge i64 %105, %sub92
  br i1 %cmp93, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end91
  %107 = load ptr, ptr %minpair, align 8, !tbaa !4
  %value95 = getelementptr inbounds %struct.pairs, ptr %107, i32 0, i32 0
  %108 = load double, ptr %value95, align 8, !tbaa !36
  %109 = load ptr, ptr %oline, align 8, !tbaa !4
  %incdec.ptr96 = getelementptr inbounds double, ptr %109, i32 1
  store ptr %incdec.ptr96, ptr %oline, align 8, !tbaa !4
  store double %108, ptr %109, align 8, !tbaa !11
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end91
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end97
  %110 = load i64, ptr %ll, align 8, !tbaa !13
  %inc = add nsw i64 %110, 1
  store i64 %inc, ptr %ll, align 8, !tbaa !13
  br label %for.cond47

for.end:                                          ; preds = %for.cond47
  br label %if.end98

if.end98:                                         ; preds = %for.end, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %oline) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %iline) #8
  br label %for.inc99

for.inc99:                                        ; preds = %if.end98
  %111 = load i64, ptr %kk, align 8, !tbaa !13
  %inc100 = add nsw i64 %111, 1
  store i64 %inc100, ptr %kk, align 8, !tbaa !13
  br label %for.cond

for.end101:                                       ; preds = %for.cond
  %call102 = call i32 @NI_LineBufferToArray(ptr noundef %oline_buffer)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %for.end101
  br label %exit

if.end105:                                        ; preds = %for.end101
  br label %do.cond106

do.cond106:                                       ; preds = %if.end105
  %112 = load i32, ptr %more, align 4, !tbaa !8
  %tobool107 = icmp ne i32 %112, 0
  br i1 %tobool107, label %do.body24, label %do.end108

do.end108:                                        ; preds = %do.cond106
  br label %exit

exit:                                             ; preds = %do.end108, %if.then104, %if.then27, %if.then22, %if.then15, %if.then11, %if.then5, %if.then
  br label %do.body109

do.body109:                                       ; preds = %exit
  %113 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool110 = icmp ne ptr %113, null
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %do.body109
  %114 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %114)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %do.body109
  br label %do.cond113

do.cond113:                                       ; preds = %if.end112
  br label %do.end114

do.end114:                                        ; preds = %do.cond113
  %115 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  call void @free(ptr noundef %115) #8
  %116 = load ptr, ptr %obuffer, align 8, !tbaa !4
  call void @free(ptr noundef %116) #8
  %117 = load ptr, ptr %ring, align 8, !tbaa !4
  call void @free(ptr noundef %117) #8
  %call115 = call ptr @PyErr_Occurred()
  %tobool116 = icmp ne ptr %call115, null
  %118 = zext i1 %tobool116 to i64
  %cond117 = select i1 %tobool116, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %minpair) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ring) #8
  call void @llvm.lifetime.end.p0(i64 1120, ptr %oline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %obuffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibuffer) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %more) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %lines) #8
  ret i32 %cond117
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define hidden i32 @NI_MinOrMaxFilter(ptr noundef %input, ptr noundef %footprint, ptr noundef %structure, ptr noundef %output, i32 noundef %mode, double noundef %cvalue, ptr noundef %origins, i32 noundef %minimum) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %footprint.addr = alloca ptr, align 8
  %structure.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cvalue.addr = alloca double, align 8
  %origins.addr = alloca ptr, align 8
  %minimum.addr = alloca i32, align 4
  %pf = alloca ptr, align 8
  %fsize = alloca i64, align 8
  %jj = alloca i64, align 8
  %kk = alloca i64, align 8
  %filter_size = alloca i64, align 8
  %border_flag_value = alloca i64, align 8
  %offsets = alloca ptr, align 8
  %oo = alloca ptr, align 8
  %size = alloca i64, align 8
  %fi = alloca %struct.NI_FilterIterator, align 8
  %ii = alloca %struct.NI_Iterator, align 8
  %io = alloca %struct.NI_Iterator, align 8
  %pi = alloca ptr, align 8
  %po = alloca ptr, align 8
  %err = alloca i32, align 4
  %ss = alloca ptr, align 8
  %ps = alloca ptr, align 8
  %_save = alloca ptr, align 8
  %tmp = alloca double, align 8
  %_ii = alloca i64, align 8
  %_oo = alloca i64, align 8
  %_tmp = alloca i8, align 1
  %_cv = alloca i8, align 1
  %_ii122 = alloca i64, align 8
  %_oo123 = alloca i64, align 8
  %_tmp125 = alloca i8, align 1
  %_cv126 = alloca i8, align 1
  %_ii191 = alloca i64, align 8
  %_oo192 = alloca i64, align 8
  %_tmp194 = alloca i16, align 2
  %_cv195 = alloca i16, align 2
  %_ii260 = alloca i64, align 8
  %_oo261 = alloca i64, align 8
  %_tmp263 = alloca i32, align 4
  %_cv264 = alloca i32, align 4
  %_ii319 = alloca i64, align 8
  %_oo320 = alloca i64, align 8
  %_tmp322 = alloca i64, align 8
  %_cv323 = alloca i64, align 8
  %_ii378 = alloca i64, align 8
  %_oo379 = alloca i64, align 8
  %_tmp381 = alloca i64, align 8
  %_cv382 = alloca i64, align 8
  %_ii437 = alloca i64, align 8
  %_oo438 = alloca i64, align 8
  %_tmp440 = alloca i8, align 1
  %_cv441 = alloca i8, align 1
  %_ii506 = alloca i64, align 8
  %_oo507 = alloca i64, align 8
  %_tmp509 = alloca i16, align 2
  %_cv510 = alloca i16, align 2
  %_ii575 = alloca i64, align 8
  %_oo576 = alloca i64, align 8
  %_tmp578 = alloca i32, align 4
  %_cv579 = alloca i32, align 4
  %_ii634 = alloca i64, align 8
  %_oo635 = alloca i64, align 8
  %_tmp637 = alloca i64, align 8
  %_cv638 = alloca i64, align 8
  %_ii693 = alloca i64, align 8
  %_oo694 = alloca i64, align 8
  %_tmp696 = alloca i64, align 8
  %_cv697 = alloca i64, align 8
  %_ii752 = alloca i64, align 8
  %_oo753 = alloca i64, align 8
  %_tmp755 = alloca float, align 4
  %_cv756 = alloca float, align 4
  %_ii811 = alloca i64, align 8
  %_oo812 = alloca i64, align 8
  %_tmp814 = alloca double, align 8
  %_cv815 = alloca double, align 8
  %_ii952 = alloca i32, align 4
  %_pp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %footprint, ptr %footprint.addr, align 8, !tbaa !4
  store ptr %structure, ptr %structure.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cvalue, ptr %cvalue.addr, align 8, !tbaa !11
  store ptr %origins, ptr %origins.addr, align 8, !tbaa !4
  store i32 %minimum, ptr %minimum.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pf) #8
  store ptr null, ptr %pf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsize) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %filter_size) #8
  store i64 0, ptr %filter_size, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %offsets) #8
  store ptr null, ptr %offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  store i32 0, ptr %err, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #8
  store ptr null, ptr %ss, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #8
  store ptr null, ptr %_save, align 8, !tbaa !4
  %0 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 158
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %2 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call = call ptr @PyArray_DIMS(ptr noundef %2)
  %3 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call1 = call i32 @PyArray_NDIM(ptr noundef %3)
  %call2 = call i64 %1(ptr noundef %call, i32 noundef %call1)
  store i64 %call2, ptr %fsize, align 8, !tbaa !13
  %4 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call3 = call ptr @PyArray_DATA(ptr noundef %4)
  store ptr %call3, ptr %pf, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %jj, align 8, !tbaa !13
  %6 = load i64, ptr %fsize, align 8, !tbaa !13
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pf, align 8, !tbaa !4
  %8 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, ptr %filter_size, align 8, !tbaa !13
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %filter_size, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, ptr %jj, align 8, !tbaa !13
  %inc5 = add nsw i64 %11, 1
  store i64 %inc5, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %structure.addr, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %12, null
  br i1 %tobool6, label %if.then7, label %if.end29

if.then7:                                         ; preds = %for.end
  %13 = load i64, ptr %filter_size, align 8, !tbaa !13
  %mul = mul i64 %13, 8
  %call8 = call noalias ptr @malloc(i64 noundef %mul) #9
  store ptr %call8, ptr %ss, align 8, !tbaa !4
  %14 = load ptr, ptr %ss, align 8, !tbaa !4
  %tobool9 = icmp ne ptr %14, null
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then7
  %call11 = call ptr @PyErr_NoMemory()
  br label %exit

if.end12:                                         ; preds = %if.then7
  %15 = load ptr, ptr %structure.addr, align 8, !tbaa !4
  %call13 = call ptr @PyArray_DATA(ptr noundef %15)
  store ptr %call13, ptr %ps, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  store i64 0, ptr %kk, align 8, !tbaa !13
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc26, %if.end12
  %16 = load i64, ptr %kk, align 8, !tbaa !13
  %17 = load i64, ptr %fsize, align 8, !tbaa !13
  %cmp15 = icmp slt i64 %16, %17
  br i1 %cmp15, label %for.body16, label %for.end28

for.body16:                                       ; preds = %for.cond14
  %18 = load ptr, ptr %pf, align 8, !tbaa !4
  %19 = load i64, ptr %kk, align 8, !tbaa !13
  %arrayidx17 = getelementptr inbounds i8, ptr %18, i64 %19
  %20 = load i8, ptr %arrayidx17, align 1, !tbaa !10
  %tobool18 = icmp ne i8 %20, 0
  br i1 %tobool18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %for.body16
  %21 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then19
  %22 = load ptr, ptr %ps, align 8, !tbaa !4
  %23 = load i64, ptr %kk, align 8, !tbaa !13
  %arrayidx21 = getelementptr inbounds double, ptr %22, i64 %23
  %24 = load double, ptr %arrayidx21, align 8, !tbaa !11
  %fneg = fneg double %24
  br label %cond.end

cond.false:                                       ; preds = %if.then19
  %25 = load ptr, ptr %ps, align 8, !tbaa !4
  %26 = load i64, ptr %kk, align 8, !tbaa !13
  %arrayidx22 = getelementptr inbounds double, ptr %25, i64 %26
  %27 = load double, ptr %arrayidx22, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %27, %cond.false ]
  %28 = load ptr, ptr %ss, align 8, !tbaa !4
  %29 = load i64, ptr %jj, align 8, !tbaa !13
  %inc23 = add nsw i64 %29, 1
  store i64 %inc23, ptr %jj, align 8, !tbaa !13
  %arrayidx24 = getelementptr inbounds double, ptr %28, i64 %29
  store double %cond, ptr %arrayidx24, align 8, !tbaa !11
  br label %if.end25

if.end25:                                         ; preds = %cond.end, %for.body16
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %30 = load i64, ptr %kk, align 8, !tbaa !13
  %inc27 = add nsw i64 %30, 1
  store i64 %inc27, ptr %kk, align 8, !tbaa !13
  br label %for.cond14

for.end28:                                        ; preds = %for.cond14
  br label %if.end29

if.end29:                                         ; preds = %for.end28, %for.end
  %31 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %pf, align 8, !tbaa !4
  %33 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call30 = call ptr @PyArray_DIMS(ptr noundef %33)
  %34 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %35 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call31 = call i32 @NI_InitFilterOffsets(ptr noundef %31, ptr noundef %32, ptr noundef %call30, ptr noundef %34, i32 noundef %35, ptr noundef %offsets, ptr noundef %border_flag_value, ptr noundef null)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end29
  br label %exit

if.end34:                                         ; preds = %if.end29
  %36 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call35 = call i32 @PyArray_NDIM(ptr noundef %36)
  %37 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call36 = call ptr @PyArray_DIMS(ptr noundef %37)
  %38 = load i64, ptr %filter_size, align 8, !tbaa !13
  %39 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call37 = call ptr @PyArray_DIMS(ptr noundef %39)
  %40 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %call38 = call i32 @NI_InitFilterIterator(i32 noundef %call35, ptr noundef %call36, i64 noundef %38, ptr noundef %call37, ptr noundef %40, ptr noundef %fi)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end34
  br label %exit

if.end41:                                         ; preds = %if.end34
  %41 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call42 = call i32 @NI_InitPointIterator(ptr noundef %41, ptr noundef %ii)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  br label %exit

if.end45:                                         ; preds = %if.end41
  %42 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call46 = call i32 @NI_InitPointIterator(ptr noundef %42, ptr noundef %io)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  br label %exit

if.end49:                                         ; preds = %if.end45
  br label %do.body

do.body:                                          ; preds = %if.end49
  %call50 = call ptr @PyEval_SaveThread()
  store ptr %call50, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %43 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call51 = call ptr @PyArray_DATA(ptr noundef %43)
  store ptr %call51, ptr %pi, align 8, !tbaa !4
  %44 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call52 = call ptr @PyArray_DATA(ptr noundef %44)
  store ptr %call52, ptr %po, align 8, !tbaa !4
  %45 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds ptr, ptr %45, i64 158
  %46 = load ptr, ptr %arrayidx53, align 8, !tbaa !4
  %47 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call54 = call ptr @PyArray_DIMS(ptr noundef %47)
  %48 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call55 = call i32 @PyArray_NDIM(ptr noundef %48)
  %call56 = call i64 %46(ptr noundef %call54, i32 noundef %call55)
  store i64 %call56, ptr %size, align 8, !tbaa !13
  %49 = load ptr, ptr %offsets, align 8, !tbaa !4
  store ptr %49, ptr %oo, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc1011, %do.end
  %50 = load i64, ptr %jj, align 8, !tbaa !13
  %51 = load i64, ptr %size, align 8, !tbaa !13
  %cmp58 = icmp slt i64 %50, %51
  br i1 %cmp58, label %for.body59, label %for.end1013

for.body59:                                       ; preds = %for.cond57
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !11
  %52 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call60 = call i32 @PyArray_TYPE(ptr noundef %52)
  switch i32 %call60, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb121
    i32 4, label %sw.bb190
    i32 6, label %sw.bb259
    i32 8, label %sw.bb318
    i32 10, label %sw.bb377
    i32 1, label %sw.bb436
    i32 3, label %sw.bb505
    i32 5, label %sw.bb574
    i32 7, label %sw.bb633
    i32 9, label %sw.bb692
    i32 11, label %sw.bb751
    i32 12, label %sw.bb810
  ]

sw.bb:                                            ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo) #8
  %53 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds i64, ptr %53, i64 0
  %54 = load i64, ptr %arrayidx61, align 8, !tbaa !13
  store i64 %54, ptr %_oo, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %_tmp) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %_cv) #8
  %55 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv = fptoui double %55 to i8
  store i8 %conv, ptr %_cv, align 1, !tbaa !10
  %56 = load i64, ptr %_oo, align 8, !tbaa !13
  %57 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp62 = icmp eq i64 %56, %57
  br i1 %cmp62, label %cond.true64, label %cond.false66

cond.true64:                                      ; preds = %sw.bb
  %58 = load i8, ptr %_cv, align 1, !tbaa !10
  %conv65 = zext i8 %58 to i32
  br label %cond.end68

cond.false66:                                     ; preds = %sw.bb
  %59 = load ptr, ptr %pi, align 8, !tbaa !4
  %60 = load i64, ptr %_oo, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %59, i64 %60
  %61 = load i8, ptr %add.ptr, align 1, !tbaa !10
  %conv67 = zext i8 %61 to i32
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false66, %cond.true64
  %cond69 = phi i32 [ %conv65, %cond.true64 ], [ %conv67, %cond.false66 ]
  %conv70 = sitofp i32 %cond69 to double
  store double %conv70, ptr %tmp, align 8, !tbaa !11
  %62 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp71 = icmp ne ptr %62, null
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %cond.end68
  %63 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds double, ptr %63, i64 0
  %64 = load double, ptr %arrayidx74, align 8, !tbaa !11
  %65 = load double, ptr %tmp, align 8, !tbaa !11
  %add = fadd double %65, %64
  store double %add, ptr %tmp, align 8, !tbaa !11
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %cond.end68
  store i64 1, ptr %_ii, align 8, !tbaa !13
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc118, %if.end75
  %66 = load i64, ptr %_ii, align 8, !tbaa !13
  %67 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp77 = icmp slt i64 %66, %67
  br i1 %cmp77, label %for.body79, label %for.end120

for.body79:                                       ; preds = %for.cond76
  %68 = load ptr, ptr %oo, align 8, !tbaa !4
  %69 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx80 = getelementptr inbounds i64, ptr %68, i64 %69
  %70 = load i64, ptr %arrayidx80, align 8, !tbaa !13
  store i64 %70, ptr %_oo, align 8, !tbaa !13
  %71 = load i64, ptr %_oo, align 8, !tbaa !13
  %72 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp81 = icmp eq i64 %71, %72
  br i1 %cmp81, label %cond.true83, label %cond.false85

cond.true83:                                      ; preds = %for.body79
  %73 = load i8, ptr %_cv, align 1, !tbaa !10
  %conv84 = zext i8 %73 to i32
  br label %cond.end88

cond.false85:                                     ; preds = %for.body79
  %74 = load ptr, ptr %pi, align 8, !tbaa !4
  %75 = load i64, ptr %_oo, align 8, !tbaa !13
  %add.ptr86 = getelementptr inbounds i8, ptr %74, i64 %75
  %76 = load i8, ptr %add.ptr86, align 1, !tbaa !10
  %conv87 = zext i8 %76 to i32
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false85, %cond.true83
  %cond89 = phi i32 [ %conv84, %cond.true83 ], [ %conv87, %cond.false85 ]
  %conv90 = trunc i32 %cond89 to i8
  store i8 %conv90, ptr %_tmp, align 1, !tbaa !10
  %77 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp91 = icmp ne ptr %77, null
  br i1 %cmp91, label %if.then93, label %if.end100

if.then93:                                        ; preds = %cond.end88
  %78 = load ptr, ptr %ss, align 8, !tbaa !4
  %79 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx94 = getelementptr inbounds double, ptr %78, i64 %79
  %80 = load double, ptr %arrayidx94, align 8, !tbaa !11
  %conv95 = fptoui double %80 to i8
  %conv96 = zext i8 %conv95 to i32
  %81 = load i8, ptr %_tmp, align 1, !tbaa !10
  %conv97 = zext i8 %81 to i32
  %add98 = add nsw i32 %conv97, %conv96
  %conv99 = trunc i32 %add98 to i8
  store i8 %conv99, ptr %_tmp, align 1, !tbaa !10
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %cond.end88
  %82 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool101 = icmp ne i32 %82, 0
  br i1 %tobool101, label %if.then102, label %if.else

if.then102:                                       ; preds = %if.end100
  %83 = load i8, ptr %_tmp, align 1, !tbaa !10
  %conv103 = zext i8 %83 to i32
  %conv104 = sitofp i32 %conv103 to double
  %84 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp105 = fcmp olt double %conv104, %84
  br i1 %cmp105, label %if.then107, label %if.end109

if.then107:                                       ; preds = %if.then102
  %85 = load i8, ptr %_tmp, align 1, !tbaa !10
  %conv108 = uitofp i8 %85 to double
  store double %conv108, ptr %tmp, align 8, !tbaa !11
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then102
  br label %if.end117

if.else:                                          ; preds = %if.end100
  %86 = load i8, ptr %_tmp, align 1, !tbaa !10
  %conv110 = zext i8 %86 to i32
  %conv111 = sitofp i32 %conv110 to double
  %87 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp112 = fcmp ogt double %conv111, %87
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.else
  %88 = load i8, ptr %_tmp, align 1, !tbaa !10
  %conv115 = uitofp i8 %88 to double
  store double %conv115, ptr %tmp, align 8, !tbaa !11
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.else
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end109
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117
  %89 = load i64, ptr %_ii, align 8, !tbaa !13
  %inc119 = add nsw i64 %89, 1
  store i64 %inc119, ptr %_ii, align 8, !tbaa !13
  br label %for.cond76

for.end120:                                       ; preds = %for.cond76
  call void @llvm.lifetime.end.p0(i64 1, ptr %_cv) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %_tmp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii) #8
  br label %sw.epilog

sw.bb121:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii122) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo123) #8
  %90 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx124 = getelementptr inbounds i64, ptr %90, i64 0
  %91 = load i64, ptr %arrayidx124, align 8, !tbaa !13
  store i64 %91, ptr %_oo123, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %_tmp125) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %_cv126) #8
  %92 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv127 = fptoui double %92 to i8
  store i8 %conv127, ptr %_cv126, align 1, !tbaa !10
  %93 = load i64, ptr %_oo123, align 8, !tbaa !13
  %94 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp128 = icmp eq i64 %93, %94
  br i1 %cmp128, label %cond.true130, label %cond.false132

cond.true130:                                     ; preds = %sw.bb121
  %95 = load i8, ptr %_cv126, align 1, !tbaa !10
  %conv131 = zext i8 %95 to i32
  br label %cond.end135

cond.false132:                                    ; preds = %sw.bb121
  %96 = load ptr, ptr %pi, align 8, !tbaa !4
  %97 = load i64, ptr %_oo123, align 8, !tbaa !13
  %add.ptr133 = getelementptr inbounds i8, ptr %96, i64 %97
  %98 = load i8, ptr %add.ptr133, align 1, !tbaa !10
  %conv134 = zext i8 %98 to i32
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false132, %cond.true130
  %cond136 = phi i32 [ %conv131, %cond.true130 ], [ %conv134, %cond.false132 ]
  %conv137 = sitofp i32 %cond136 to double
  store double %conv137, ptr %tmp, align 8, !tbaa !11
  %99 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp138 = icmp ne ptr %99, null
  br i1 %cmp138, label %if.then140, label %if.end143

if.then140:                                       ; preds = %cond.end135
  %100 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx141 = getelementptr inbounds double, ptr %100, i64 0
  %101 = load double, ptr %arrayidx141, align 8, !tbaa !11
  %102 = load double, ptr %tmp, align 8, !tbaa !11
  %add142 = fadd double %102, %101
  store double %add142, ptr %tmp, align 8, !tbaa !11
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %cond.end135
  store i64 1, ptr %_ii122, align 8, !tbaa !13
  br label %for.cond144

for.cond144:                                      ; preds = %for.inc187, %if.end143
  %103 = load i64, ptr %_ii122, align 8, !tbaa !13
  %104 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp145 = icmp slt i64 %103, %104
  br i1 %cmp145, label %for.body147, label %for.end189

for.body147:                                      ; preds = %for.cond144
  %105 = load ptr, ptr %oo, align 8, !tbaa !4
  %106 = load i64, ptr %_ii122, align 8, !tbaa !13
  %arrayidx148 = getelementptr inbounds i64, ptr %105, i64 %106
  %107 = load i64, ptr %arrayidx148, align 8, !tbaa !13
  store i64 %107, ptr %_oo123, align 8, !tbaa !13
  %108 = load i64, ptr %_oo123, align 8, !tbaa !13
  %109 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp149 = icmp eq i64 %108, %109
  br i1 %cmp149, label %cond.true151, label %cond.false153

cond.true151:                                     ; preds = %for.body147
  %110 = load i8, ptr %_cv126, align 1, !tbaa !10
  %conv152 = zext i8 %110 to i32
  br label %cond.end156

cond.false153:                                    ; preds = %for.body147
  %111 = load ptr, ptr %pi, align 8, !tbaa !4
  %112 = load i64, ptr %_oo123, align 8, !tbaa !13
  %add.ptr154 = getelementptr inbounds i8, ptr %111, i64 %112
  %113 = load i8, ptr %add.ptr154, align 1, !tbaa !10
  %conv155 = zext i8 %113 to i32
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false153, %cond.true151
  %cond157 = phi i32 [ %conv152, %cond.true151 ], [ %conv155, %cond.false153 ]
  %conv158 = trunc i32 %cond157 to i8
  store i8 %conv158, ptr %_tmp125, align 1, !tbaa !10
  %114 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp159 = icmp ne ptr %114, null
  br i1 %cmp159, label %if.then161, label %if.end168

if.then161:                                       ; preds = %cond.end156
  %115 = load ptr, ptr %ss, align 8, !tbaa !4
  %116 = load i64, ptr %_ii122, align 8, !tbaa !13
  %arrayidx162 = getelementptr inbounds double, ptr %115, i64 %116
  %117 = load double, ptr %arrayidx162, align 8, !tbaa !11
  %conv163 = fptoui double %117 to i8
  %conv164 = zext i8 %conv163 to i32
  %118 = load i8, ptr %_tmp125, align 1, !tbaa !10
  %conv165 = zext i8 %118 to i32
  %add166 = add nsw i32 %conv165, %conv164
  %conv167 = trunc i32 %add166 to i8
  store i8 %conv167, ptr %_tmp125, align 1, !tbaa !10
  br label %if.end168

if.end168:                                        ; preds = %if.then161, %cond.end156
  %119 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool169 = icmp ne i32 %119, 0
  br i1 %tobool169, label %if.then170, label %if.else178

if.then170:                                       ; preds = %if.end168
  %120 = load i8, ptr %_tmp125, align 1, !tbaa !10
  %conv171 = zext i8 %120 to i32
  %conv172 = sitofp i32 %conv171 to double
  %121 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp173 = fcmp olt double %conv172, %121
  br i1 %cmp173, label %if.then175, label %if.end177

if.then175:                                       ; preds = %if.then170
  %122 = load i8, ptr %_tmp125, align 1, !tbaa !10
  %conv176 = uitofp i8 %122 to double
  store double %conv176, ptr %tmp, align 8, !tbaa !11
  br label %if.end177

if.end177:                                        ; preds = %if.then175, %if.then170
  br label %if.end186

if.else178:                                       ; preds = %if.end168
  %123 = load i8, ptr %_tmp125, align 1, !tbaa !10
  %conv179 = zext i8 %123 to i32
  %conv180 = sitofp i32 %conv179 to double
  %124 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp181 = fcmp ogt double %conv180, %124
  br i1 %cmp181, label %if.then183, label %if.end185

if.then183:                                       ; preds = %if.else178
  %125 = load i8, ptr %_tmp125, align 1, !tbaa !10
  %conv184 = uitofp i8 %125 to double
  store double %conv184, ptr %tmp, align 8, !tbaa !11
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.else178
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end177
  br label %for.inc187

for.inc187:                                       ; preds = %if.end186
  %126 = load i64, ptr %_ii122, align 8, !tbaa !13
  %inc188 = add nsw i64 %126, 1
  store i64 %inc188, ptr %_ii122, align 8, !tbaa !13
  br label %for.cond144

for.end189:                                       ; preds = %for.cond144
  call void @llvm.lifetime.end.p0(i64 1, ptr %_cv126) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %_tmp125) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo123) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii122) #8
  br label %sw.epilog

sw.bb190:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii191) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo192) #8
  %127 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx193 = getelementptr inbounds i64, ptr %127, i64 0
  %128 = load i64, ptr %arrayidx193, align 8, !tbaa !13
  store i64 %128, ptr %_oo192, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 2, ptr %_tmp194) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %_cv195) #8
  %129 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv196 = fptoui double %129 to i16
  store i16 %conv196, ptr %_cv195, align 2, !tbaa !26
  %130 = load i64, ptr %_oo192, align 8, !tbaa !13
  %131 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp197 = icmp eq i64 %130, %131
  br i1 %cmp197, label %cond.true199, label %cond.false201

cond.true199:                                     ; preds = %sw.bb190
  %132 = load i16, ptr %_cv195, align 2, !tbaa !26
  %conv200 = zext i16 %132 to i32
  br label %cond.end204

cond.false201:                                    ; preds = %sw.bb190
  %133 = load ptr, ptr %pi, align 8, !tbaa !4
  %134 = load i64, ptr %_oo192, align 8, !tbaa !13
  %add.ptr202 = getelementptr inbounds i8, ptr %133, i64 %134
  %135 = load i16, ptr %add.ptr202, align 2, !tbaa !26
  %conv203 = zext i16 %135 to i32
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false201, %cond.true199
  %cond205 = phi i32 [ %conv200, %cond.true199 ], [ %conv203, %cond.false201 ]
  %conv206 = sitofp i32 %cond205 to double
  store double %conv206, ptr %tmp, align 8, !tbaa !11
  %136 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp207 = icmp ne ptr %136, null
  br i1 %cmp207, label %if.then209, label %if.end212

if.then209:                                       ; preds = %cond.end204
  %137 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx210 = getelementptr inbounds double, ptr %137, i64 0
  %138 = load double, ptr %arrayidx210, align 8, !tbaa !11
  %139 = load double, ptr %tmp, align 8, !tbaa !11
  %add211 = fadd double %139, %138
  store double %add211, ptr %tmp, align 8, !tbaa !11
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %cond.end204
  store i64 1, ptr %_ii191, align 8, !tbaa !13
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc256, %if.end212
  %140 = load i64, ptr %_ii191, align 8, !tbaa !13
  %141 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp214 = icmp slt i64 %140, %141
  br i1 %cmp214, label %for.body216, label %for.end258

for.body216:                                      ; preds = %for.cond213
  %142 = load ptr, ptr %oo, align 8, !tbaa !4
  %143 = load i64, ptr %_ii191, align 8, !tbaa !13
  %arrayidx217 = getelementptr inbounds i64, ptr %142, i64 %143
  %144 = load i64, ptr %arrayidx217, align 8, !tbaa !13
  store i64 %144, ptr %_oo192, align 8, !tbaa !13
  %145 = load i64, ptr %_oo192, align 8, !tbaa !13
  %146 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp218 = icmp eq i64 %145, %146
  br i1 %cmp218, label %cond.true220, label %cond.false222

cond.true220:                                     ; preds = %for.body216
  %147 = load i16, ptr %_cv195, align 2, !tbaa !26
  %conv221 = zext i16 %147 to i32
  br label %cond.end225

cond.false222:                                    ; preds = %for.body216
  %148 = load ptr, ptr %pi, align 8, !tbaa !4
  %149 = load i64, ptr %_oo192, align 8, !tbaa !13
  %add.ptr223 = getelementptr inbounds i8, ptr %148, i64 %149
  %150 = load i16, ptr %add.ptr223, align 2, !tbaa !26
  %conv224 = zext i16 %150 to i32
  br label %cond.end225

cond.end225:                                      ; preds = %cond.false222, %cond.true220
  %cond226 = phi i32 [ %conv221, %cond.true220 ], [ %conv224, %cond.false222 ]
  %conv227 = trunc i32 %cond226 to i16
  store i16 %conv227, ptr %_tmp194, align 2, !tbaa !26
  %151 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp228 = icmp ne ptr %151, null
  br i1 %cmp228, label %if.then230, label %if.end237

if.then230:                                       ; preds = %cond.end225
  %152 = load ptr, ptr %ss, align 8, !tbaa !4
  %153 = load i64, ptr %_ii191, align 8, !tbaa !13
  %arrayidx231 = getelementptr inbounds double, ptr %152, i64 %153
  %154 = load double, ptr %arrayidx231, align 8, !tbaa !11
  %conv232 = fptoui double %154 to i16
  %conv233 = zext i16 %conv232 to i32
  %155 = load i16, ptr %_tmp194, align 2, !tbaa !26
  %conv234 = zext i16 %155 to i32
  %add235 = add nsw i32 %conv234, %conv233
  %conv236 = trunc i32 %add235 to i16
  store i16 %conv236, ptr %_tmp194, align 2, !tbaa !26
  br label %if.end237

if.end237:                                        ; preds = %if.then230, %cond.end225
  %156 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool238 = icmp ne i32 %156, 0
  br i1 %tobool238, label %if.then239, label %if.else247

if.then239:                                       ; preds = %if.end237
  %157 = load i16, ptr %_tmp194, align 2, !tbaa !26
  %conv240 = zext i16 %157 to i32
  %conv241 = sitofp i32 %conv240 to double
  %158 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp242 = fcmp olt double %conv241, %158
  br i1 %cmp242, label %if.then244, label %if.end246

if.then244:                                       ; preds = %if.then239
  %159 = load i16, ptr %_tmp194, align 2, !tbaa !26
  %conv245 = uitofp i16 %159 to double
  store double %conv245, ptr %tmp, align 8, !tbaa !11
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.then239
  br label %if.end255

if.else247:                                       ; preds = %if.end237
  %160 = load i16, ptr %_tmp194, align 2, !tbaa !26
  %conv248 = zext i16 %160 to i32
  %conv249 = sitofp i32 %conv248 to double
  %161 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp250 = fcmp ogt double %conv249, %161
  br i1 %cmp250, label %if.then252, label %if.end254

if.then252:                                       ; preds = %if.else247
  %162 = load i16, ptr %_tmp194, align 2, !tbaa !26
  %conv253 = uitofp i16 %162 to double
  store double %conv253, ptr %tmp, align 8, !tbaa !11
  br label %if.end254

if.end254:                                        ; preds = %if.then252, %if.else247
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.end246
  br label %for.inc256

for.inc256:                                       ; preds = %if.end255
  %163 = load i64, ptr %_ii191, align 8, !tbaa !13
  %inc257 = add nsw i64 %163, 1
  store i64 %inc257, ptr %_ii191, align 8, !tbaa !13
  br label %for.cond213

for.end258:                                       ; preds = %for.cond213
  call void @llvm.lifetime.end.p0(i64 2, ptr %_cv195) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %_tmp194) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo192) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii191) #8
  br label %sw.epilog

sw.bb259:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii260) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo261) #8
  %164 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx262 = getelementptr inbounds i64, ptr %164, i64 0
  %165 = load i64, ptr %arrayidx262, align 8, !tbaa !13
  store i64 %165, ptr %_oo261, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %_tmp263) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_cv264) #8
  %166 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv265 = fptoui double %166 to i32
  store i32 %conv265, ptr %_cv264, align 4, !tbaa !8
  %167 = load i64, ptr %_oo261, align 8, !tbaa !13
  %168 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp266 = icmp eq i64 %167, %168
  br i1 %cmp266, label %cond.true268, label %cond.false269

cond.true268:                                     ; preds = %sw.bb259
  %169 = load i32, ptr %_cv264, align 4, !tbaa !8
  br label %cond.end271

cond.false269:                                    ; preds = %sw.bb259
  %170 = load ptr, ptr %pi, align 8, !tbaa !4
  %171 = load i64, ptr %_oo261, align 8, !tbaa !13
  %add.ptr270 = getelementptr inbounds i8, ptr %170, i64 %171
  %172 = load i32, ptr %add.ptr270, align 4, !tbaa !8
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false269, %cond.true268
  %cond272 = phi i32 [ %169, %cond.true268 ], [ %172, %cond.false269 ]
  %conv273 = uitofp i32 %cond272 to double
  store double %conv273, ptr %tmp, align 8, !tbaa !11
  %173 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp274 = icmp ne ptr %173, null
  br i1 %cmp274, label %if.then276, label %if.end279

if.then276:                                       ; preds = %cond.end271
  %174 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx277 = getelementptr inbounds double, ptr %174, i64 0
  %175 = load double, ptr %arrayidx277, align 8, !tbaa !11
  %176 = load double, ptr %tmp, align 8, !tbaa !11
  %add278 = fadd double %176, %175
  store double %add278, ptr %tmp, align 8, !tbaa !11
  br label %if.end279

if.end279:                                        ; preds = %if.then276, %cond.end271
  store i64 1, ptr %_ii260, align 8, !tbaa !13
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc315, %if.end279
  %177 = load i64, ptr %_ii260, align 8, !tbaa !13
  %178 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp281 = icmp slt i64 %177, %178
  br i1 %cmp281, label %for.body283, label %for.end317

for.body283:                                      ; preds = %for.cond280
  %179 = load ptr, ptr %oo, align 8, !tbaa !4
  %180 = load i64, ptr %_ii260, align 8, !tbaa !13
  %arrayidx284 = getelementptr inbounds i64, ptr %179, i64 %180
  %181 = load i64, ptr %arrayidx284, align 8, !tbaa !13
  store i64 %181, ptr %_oo261, align 8, !tbaa !13
  %182 = load i64, ptr %_oo261, align 8, !tbaa !13
  %183 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp285 = icmp eq i64 %182, %183
  br i1 %cmp285, label %cond.true287, label %cond.false288

cond.true287:                                     ; preds = %for.body283
  %184 = load i32, ptr %_cv264, align 4, !tbaa !8
  br label %cond.end290

cond.false288:                                    ; preds = %for.body283
  %185 = load ptr, ptr %pi, align 8, !tbaa !4
  %186 = load i64, ptr %_oo261, align 8, !tbaa !13
  %add.ptr289 = getelementptr inbounds i8, ptr %185, i64 %186
  %187 = load i32, ptr %add.ptr289, align 4, !tbaa !8
  br label %cond.end290

cond.end290:                                      ; preds = %cond.false288, %cond.true287
  %cond291 = phi i32 [ %184, %cond.true287 ], [ %187, %cond.false288 ]
  store i32 %cond291, ptr %_tmp263, align 4, !tbaa !8
  %188 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp292 = icmp ne ptr %188, null
  br i1 %cmp292, label %if.then294, label %if.end298

if.then294:                                       ; preds = %cond.end290
  %189 = load ptr, ptr %ss, align 8, !tbaa !4
  %190 = load i64, ptr %_ii260, align 8, !tbaa !13
  %arrayidx295 = getelementptr inbounds double, ptr %189, i64 %190
  %191 = load double, ptr %arrayidx295, align 8, !tbaa !11
  %conv296 = fptoui double %191 to i32
  %192 = load i32, ptr %_tmp263, align 4, !tbaa !8
  %add297 = add i32 %192, %conv296
  store i32 %add297, ptr %_tmp263, align 4, !tbaa !8
  br label %if.end298

if.end298:                                        ; preds = %if.then294, %cond.end290
  %193 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool299 = icmp ne i32 %193, 0
  br i1 %tobool299, label %if.then300, label %if.else307

if.then300:                                       ; preds = %if.end298
  %194 = load i32, ptr %_tmp263, align 4, !tbaa !8
  %conv301 = uitofp i32 %194 to double
  %195 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp302 = fcmp olt double %conv301, %195
  br i1 %cmp302, label %if.then304, label %if.end306

if.then304:                                       ; preds = %if.then300
  %196 = load i32, ptr %_tmp263, align 4, !tbaa !8
  %conv305 = uitofp i32 %196 to double
  store double %conv305, ptr %tmp, align 8, !tbaa !11
  br label %if.end306

if.end306:                                        ; preds = %if.then304, %if.then300
  br label %if.end314

if.else307:                                       ; preds = %if.end298
  %197 = load i32, ptr %_tmp263, align 4, !tbaa !8
  %conv308 = uitofp i32 %197 to double
  %198 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp309 = fcmp ogt double %conv308, %198
  br i1 %cmp309, label %if.then311, label %if.end313

if.then311:                                       ; preds = %if.else307
  %199 = load i32, ptr %_tmp263, align 4, !tbaa !8
  %conv312 = uitofp i32 %199 to double
  store double %conv312, ptr %tmp, align 8, !tbaa !11
  br label %if.end313

if.end313:                                        ; preds = %if.then311, %if.else307
  br label %if.end314

if.end314:                                        ; preds = %if.end313, %if.end306
  br label %for.inc315

for.inc315:                                       ; preds = %if.end314
  %200 = load i64, ptr %_ii260, align 8, !tbaa !13
  %inc316 = add nsw i64 %200, 1
  store i64 %inc316, ptr %_ii260, align 8, !tbaa !13
  br label %for.cond280

for.end317:                                       ; preds = %for.cond280
  call void @llvm.lifetime.end.p0(i64 4, ptr %_cv264) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_tmp263) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo261) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii260) #8
  br label %sw.epilog

sw.bb318:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii319) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo320) #8
  %201 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx321 = getelementptr inbounds i64, ptr %201, i64 0
  %202 = load i64, ptr %arrayidx321, align 8, !tbaa !13
  store i64 %202, ptr %_oo320, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp322) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cv323) #8
  %203 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv324 = fptoui double %203 to i64
  store i64 %conv324, ptr %_cv323, align 8, !tbaa !13
  %204 = load i64, ptr %_oo320, align 8, !tbaa !13
  %205 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp325 = icmp eq i64 %204, %205
  br i1 %cmp325, label %cond.true327, label %cond.false328

cond.true327:                                     ; preds = %sw.bb318
  %206 = load i64, ptr %_cv323, align 8, !tbaa !13
  br label %cond.end330

cond.false328:                                    ; preds = %sw.bb318
  %207 = load ptr, ptr %pi, align 8, !tbaa !4
  %208 = load i64, ptr %_oo320, align 8, !tbaa !13
  %add.ptr329 = getelementptr inbounds i8, ptr %207, i64 %208
  %209 = load i64, ptr %add.ptr329, align 8, !tbaa !13
  br label %cond.end330

cond.end330:                                      ; preds = %cond.false328, %cond.true327
  %cond331 = phi i64 [ %206, %cond.true327 ], [ %209, %cond.false328 ]
  %conv332 = uitofp i64 %cond331 to double
  store double %conv332, ptr %tmp, align 8, !tbaa !11
  %210 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp333 = icmp ne ptr %210, null
  br i1 %cmp333, label %if.then335, label %if.end338

if.then335:                                       ; preds = %cond.end330
  %211 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx336 = getelementptr inbounds double, ptr %211, i64 0
  %212 = load double, ptr %arrayidx336, align 8, !tbaa !11
  %213 = load double, ptr %tmp, align 8, !tbaa !11
  %add337 = fadd double %213, %212
  store double %add337, ptr %tmp, align 8, !tbaa !11
  br label %if.end338

if.end338:                                        ; preds = %if.then335, %cond.end330
  store i64 1, ptr %_ii319, align 8, !tbaa !13
  br label %for.cond339

for.cond339:                                      ; preds = %for.inc374, %if.end338
  %214 = load i64, ptr %_ii319, align 8, !tbaa !13
  %215 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp340 = icmp slt i64 %214, %215
  br i1 %cmp340, label %for.body342, label %for.end376

for.body342:                                      ; preds = %for.cond339
  %216 = load ptr, ptr %oo, align 8, !tbaa !4
  %217 = load i64, ptr %_ii319, align 8, !tbaa !13
  %arrayidx343 = getelementptr inbounds i64, ptr %216, i64 %217
  %218 = load i64, ptr %arrayidx343, align 8, !tbaa !13
  store i64 %218, ptr %_oo320, align 8, !tbaa !13
  %219 = load i64, ptr %_oo320, align 8, !tbaa !13
  %220 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp344 = icmp eq i64 %219, %220
  br i1 %cmp344, label %cond.true346, label %cond.false347

cond.true346:                                     ; preds = %for.body342
  %221 = load i64, ptr %_cv323, align 8, !tbaa !13
  br label %cond.end349

cond.false347:                                    ; preds = %for.body342
  %222 = load ptr, ptr %pi, align 8, !tbaa !4
  %223 = load i64, ptr %_oo320, align 8, !tbaa !13
  %add.ptr348 = getelementptr inbounds i8, ptr %222, i64 %223
  %224 = load i64, ptr %add.ptr348, align 8, !tbaa !13
  br label %cond.end349

cond.end349:                                      ; preds = %cond.false347, %cond.true346
  %cond350 = phi i64 [ %221, %cond.true346 ], [ %224, %cond.false347 ]
  store i64 %cond350, ptr %_tmp322, align 8, !tbaa !13
  %225 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp351 = icmp ne ptr %225, null
  br i1 %cmp351, label %if.then353, label %if.end357

if.then353:                                       ; preds = %cond.end349
  %226 = load ptr, ptr %ss, align 8, !tbaa !4
  %227 = load i64, ptr %_ii319, align 8, !tbaa !13
  %arrayidx354 = getelementptr inbounds double, ptr %226, i64 %227
  %228 = load double, ptr %arrayidx354, align 8, !tbaa !11
  %conv355 = fptoui double %228 to i64
  %229 = load i64, ptr %_tmp322, align 8, !tbaa !13
  %add356 = add i64 %229, %conv355
  store i64 %add356, ptr %_tmp322, align 8, !tbaa !13
  br label %if.end357

if.end357:                                        ; preds = %if.then353, %cond.end349
  %230 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool358 = icmp ne i32 %230, 0
  br i1 %tobool358, label %if.then359, label %if.else366

if.then359:                                       ; preds = %if.end357
  %231 = load i64, ptr %_tmp322, align 8, !tbaa !13
  %conv360 = uitofp i64 %231 to double
  %232 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp361 = fcmp olt double %conv360, %232
  br i1 %cmp361, label %if.then363, label %if.end365

if.then363:                                       ; preds = %if.then359
  %233 = load i64, ptr %_tmp322, align 8, !tbaa !13
  %conv364 = uitofp i64 %233 to double
  store double %conv364, ptr %tmp, align 8, !tbaa !11
  br label %if.end365

if.end365:                                        ; preds = %if.then363, %if.then359
  br label %if.end373

if.else366:                                       ; preds = %if.end357
  %234 = load i64, ptr %_tmp322, align 8, !tbaa !13
  %conv367 = uitofp i64 %234 to double
  %235 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp368 = fcmp ogt double %conv367, %235
  br i1 %cmp368, label %if.then370, label %if.end372

if.then370:                                       ; preds = %if.else366
  %236 = load i64, ptr %_tmp322, align 8, !tbaa !13
  %conv371 = uitofp i64 %236 to double
  store double %conv371, ptr %tmp, align 8, !tbaa !11
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.else366
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %if.end365
  br label %for.inc374

for.inc374:                                       ; preds = %if.end373
  %237 = load i64, ptr %_ii319, align 8, !tbaa !13
  %inc375 = add nsw i64 %237, 1
  store i64 %inc375, ptr %_ii319, align 8, !tbaa !13
  br label %for.cond339

for.end376:                                       ; preds = %for.cond339
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cv323) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp322) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo320) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii319) #8
  br label %sw.epilog

sw.bb377:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii378) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo379) #8
  %238 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx380 = getelementptr inbounds i64, ptr %238, i64 0
  %239 = load i64, ptr %arrayidx380, align 8, !tbaa !13
  store i64 %239, ptr %_oo379, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp381) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cv382) #8
  %240 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv383 = fptoui double %240 to i64
  store i64 %conv383, ptr %_cv382, align 8, !tbaa !28
  %241 = load i64, ptr %_oo379, align 8, !tbaa !13
  %242 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp384 = icmp eq i64 %241, %242
  br i1 %cmp384, label %cond.true386, label %cond.false387

cond.true386:                                     ; preds = %sw.bb377
  %243 = load i64, ptr %_cv382, align 8, !tbaa !28
  br label %cond.end389

cond.false387:                                    ; preds = %sw.bb377
  %244 = load ptr, ptr %pi, align 8, !tbaa !4
  %245 = load i64, ptr %_oo379, align 8, !tbaa !13
  %add.ptr388 = getelementptr inbounds i8, ptr %244, i64 %245
  %246 = load i64, ptr %add.ptr388, align 8, !tbaa !28
  br label %cond.end389

cond.end389:                                      ; preds = %cond.false387, %cond.true386
  %cond390 = phi i64 [ %243, %cond.true386 ], [ %246, %cond.false387 ]
  %conv391 = uitofp i64 %cond390 to double
  store double %conv391, ptr %tmp, align 8, !tbaa !11
  %247 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp392 = icmp ne ptr %247, null
  br i1 %cmp392, label %if.then394, label %if.end397

if.then394:                                       ; preds = %cond.end389
  %248 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx395 = getelementptr inbounds double, ptr %248, i64 0
  %249 = load double, ptr %arrayidx395, align 8, !tbaa !11
  %250 = load double, ptr %tmp, align 8, !tbaa !11
  %add396 = fadd double %250, %249
  store double %add396, ptr %tmp, align 8, !tbaa !11
  br label %if.end397

if.end397:                                        ; preds = %if.then394, %cond.end389
  store i64 1, ptr %_ii378, align 8, !tbaa !13
  br label %for.cond398

for.cond398:                                      ; preds = %for.inc433, %if.end397
  %251 = load i64, ptr %_ii378, align 8, !tbaa !13
  %252 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp399 = icmp slt i64 %251, %252
  br i1 %cmp399, label %for.body401, label %for.end435

for.body401:                                      ; preds = %for.cond398
  %253 = load ptr, ptr %oo, align 8, !tbaa !4
  %254 = load i64, ptr %_ii378, align 8, !tbaa !13
  %arrayidx402 = getelementptr inbounds i64, ptr %253, i64 %254
  %255 = load i64, ptr %arrayidx402, align 8, !tbaa !13
  store i64 %255, ptr %_oo379, align 8, !tbaa !13
  %256 = load i64, ptr %_oo379, align 8, !tbaa !13
  %257 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp403 = icmp eq i64 %256, %257
  br i1 %cmp403, label %cond.true405, label %cond.false406

cond.true405:                                     ; preds = %for.body401
  %258 = load i64, ptr %_cv382, align 8, !tbaa !28
  br label %cond.end408

cond.false406:                                    ; preds = %for.body401
  %259 = load ptr, ptr %pi, align 8, !tbaa !4
  %260 = load i64, ptr %_oo379, align 8, !tbaa !13
  %add.ptr407 = getelementptr inbounds i8, ptr %259, i64 %260
  %261 = load i64, ptr %add.ptr407, align 8, !tbaa !28
  br label %cond.end408

cond.end408:                                      ; preds = %cond.false406, %cond.true405
  %cond409 = phi i64 [ %258, %cond.true405 ], [ %261, %cond.false406 ]
  store i64 %cond409, ptr %_tmp381, align 8, !tbaa !28
  %262 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp410 = icmp ne ptr %262, null
  br i1 %cmp410, label %if.then412, label %if.end416

if.then412:                                       ; preds = %cond.end408
  %263 = load ptr, ptr %ss, align 8, !tbaa !4
  %264 = load i64, ptr %_ii378, align 8, !tbaa !13
  %arrayidx413 = getelementptr inbounds double, ptr %263, i64 %264
  %265 = load double, ptr %arrayidx413, align 8, !tbaa !11
  %conv414 = fptoui double %265 to i64
  %266 = load i64, ptr %_tmp381, align 8, !tbaa !28
  %add415 = add i64 %266, %conv414
  store i64 %add415, ptr %_tmp381, align 8, !tbaa !28
  br label %if.end416

if.end416:                                        ; preds = %if.then412, %cond.end408
  %267 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool417 = icmp ne i32 %267, 0
  br i1 %tobool417, label %if.then418, label %if.else425

if.then418:                                       ; preds = %if.end416
  %268 = load i64, ptr %_tmp381, align 8, !tbaa !28
  %conv419 = uitofp i64 %268 to double
  %269 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp420 = fcmp olt double %conv419, %269
  br i1 %cmp420, label %if.then422, label %if.end424

if.then422:                                       ; preds = %if.then418
  %270 = load i64, ptr %_tmp381, align 8, !tbaa !28
  %conv423 = uitofp i64 %270 to double
  store double %conv423, ptr %tmp, align 8, !tbaa !11
  br label %if.end424

if.end424:                                        ; preds = %if.then422, %if.then418
  br label %if.end432

if.else425:                                       ; preds = %if.end416
  %271 = load i64, ptr %_tmp381, align 8, !tbaa !28
  %conv426 = uitofp i64 %271 to double
  %272 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp427 = fcmp ogt double %conv426, %272
  br i1 %cmp427, label %if.then429, label %if.end431

if.then429:                                       ; preds = %if.else425
  %273 = load i64, ptr %_tmp381, align 8, !tbaa !28
  %conv430 = uitofp i64 %273 to double
  store double %conv430, ptr %tmp, align 8, !tbaa !11
  br label %if.end431

if.end431:                                        ; preds = %if.then429, %if.else425
  br label %if.end432

if.end432:                                        ; preds = %if.end431, %if.end424
  br label %for.inc433

for.inc433:                                       ; preds = %if.end432
  %274 = load i64, ptr %_ii378, align 8, !tbaa !13
  %inc434 = add nsw i64 %274, 1
  store i64 %inc434, ptr %_ii378, align 8, !tbaa !13
  br label %for.cond398

for.end435:                                       ; preds = %for.cond398
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cv382) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp381) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo379) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii378) #8
  br label %sw.epilog

sw.bb436:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii437) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo438) #8
  %275 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx439 = getelementptr inbounds i64, ptr %275, i64 0
  %276 = load i64, ptr %arrayidx439, align 8, !tbaa !13
  store i64 %276, ptr %_oo438, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 1, ptr %_tmp440) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %_cv441) #8
  %277 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv442 = fptosi double %277 to i8
  store i8 %conv442, ptr %_cv441, align 1, !tbaa !10
  %278 = load i64, ptr %_oo438, align 8, !tbaa !13
  %279 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp443 = icmp eq i64 %278, %279
  br i1 %cmp443, label %cond.true445, label %cond.false447

cond.true445:                                     ; preds = %sw.bb436
  %280 = load i8, ptr %_cv441, align 1, !tbaa !10
  %conv446 = sext i8 %280 to i32
  br label %cond.end450

cond.false447:                                    ; preds = %sw.bb436
  %281 = load ptr, ptr %pi, align 8, !tbaa !4
  %282 = load i64, ptr %_oo438, align 8, !tbaa !13
  %add.ptr448 = getelementptr inbounds i8, ptr %281, i64 %282
  %283 = load i8, ptr %add.ptr448, align 1, !tbaa !10
  %conv449 = sext i8 %283 to i32
  br label %cond.end450

cond.end450:                                      ; preds = %cond.false447, %cond.true445
  %cond451 = phi i32 [ %conv446, %cond.true445 ], [ %conv449, %cond.false447 ]
  %conv452 = sitofp i32 %cond451 to double
  store double %conv452, ptr %tmp, align 8, !tbaa !11
  %284 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp453 = icmp ne ptr %284, null
  br i1 %cmp453, label %if.then455, label %if.end458

if.then455:                                       ; preds = %cond.end450
  %285 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx456 = getelementptr inbounds double, ptr %285, i64 0
  %286 = load double, ptr %arrayidx456, align 8, !tbaa !11
  %287 = load double, ptr %tmp, align 8, !tbaa !11
  %add457 = fadd double %287, %286
  store double %add457, ptr %tmp, align 8, !tbaa !11
  br label %if.end458

if.end458:                                        ; preds = %if.then455, %cond.end450
  store i64 1, ptr %_ii437, align 8, !tbaa !13
  br label %for.cond459

for.cond459:                                      ; preds = %for.inc502, %if.end458
  %288 = load i64, ptr %_ii437, align 8, !tbaa !13
  %289 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp460 = icmp slt i64 %288, %289
  br i1 %cmp460, label %for.body462, label %for.end504

for.body462:                                      ; preds = %for.cond459
  %290 = load ptr, ptr %oo, align 8, !tbaa !4
  %291 = load i64, ptr %_ii437, align 8, !tbaa !13
  %arrayidx463 = getelementptr inbounds i64, ptr %290, i64 %291
  %292 = load i64, ptr %arrayidx463, align 8, !tbaa !13
  store i64 %292, ptr %_oo438, align 8, !tbaa !13
  %293 = load i64, ptr %_oo438, align 8, !tbaa !13
  %294 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp464 = icmp eq i64 %293, %294
  br i1 %cmp464, label %cond.true466, label %cond.false468

cond.true466:                                     ; preds = %for.body462
  %295 = load i8, ptr %_cv441, align 1, !tbaa !10
  %conv467 = sext i8 %295 to i32
  br label %cond.end471

cond.false468:                                    ; preds = %for.body462
  %296 = load ptr, ptr %pi, align 8, !tbaa !4
  %297 = load i64, ptr %_oo438, align 8, !tbaa !13
  %add.ptr469 = getelementptr inbounds i8, ptr %296, i64 %297
  %298 = load i8, ptr %add.ptr469, align 1, !tbaa !10
  %conv470 = sext i8 %298 to i32
  br label %cond.end471

cond.end471:                                      ; preds = %cond.false468, %cond.true466
  %cond472 = phi i32 [ %conv467, %cond.true466 ], [ %conv470, %cond.false468 ]
  %conv473 = trunc i32 %cond472 to i8
  store i8 %conv473, ptr %_tmp440, align 1, !tbaa !10
  %299 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp474 = icmp ne ptr %299, null
  br i1 %cmp474, label %if.then476, label %if.end483

if.then476:                                       ; preds = %cond.end471
  %300 = load ptr, ptr %ss, align 8, !tbaa !4
  %301 = load i64, ptr %_ii437, align 8, !tbaa !13
  %arrayidx477 = getelementptr inbounds double, ptr %300, i64 %301
  %302 = load double, ptr %arrayidx477, align 8, !tbaa !11
  %conv478 = fptosi double %302 to i8
  %conv479 = sext i8 %conv478 to i32
  %303 = load i8, ptr %_tmp440, align 1, !tbaa !10
  %conv480 = sext i8 %303 to i32
  %add481 = add nsw i32 %conv480, %conv479
  %conv482 = trunc i32 %add481 to i8
  store i8 %conv482, ptr %_tmp440, align 1, !tbaa !10
  br label %if.end483

if.end483:                                        ; preds = %if.then476, %cond.end471
  %304 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool484 = icmp ne i32 %304, 0
  br i1 %tobool484, label %if.then485, label %if.else493

if.then485:                                       ; preds = %if.end483
  %305 = load i8, ptr %_tmp440, align 1, !tbaa !10
  %conv486 = sext i8 %305 to i32
  %conv487 = sitofp i32 %conv486 to double
  %306 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp488 = fcmp olt double %conv487, %306
  br i1 %cmp488, label %if.then490, label %if.end492

if.then490:                                       ; preds = %if.then485
  %307 = load i8, ptr %_tmp440, align 1, !tbaa !10
  %conv491 = sitofp i8 %307 to double
  store double %conv491, ptr %tmp, align 8, !tbaa !11
  br label %if.end492

if.end492:                                        ; preds = %if.then490, %if.then485
  br label %if.end501

if.else493:                                       ; preds = %if.end483
  %308 = load i8, ptr %_tmp440, align 1, !tbaa !10
  %conv494 = sext i8 %308 to i32
  %conv495 = sitofp i32 %conv494 to double
  %309 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp496 = fcmp ogt double %conv495, %309
  br i1 %cmp496, label %if.then498, label %if.end500

if.then498:                                       ; preds = %if.else493
  %310 = load i8, ptr %_tmp440, align 1, !tbaa !10
  %conv499 = sitofp i8 %310 to double
  store double %conv499, ptr %tmp, align 8, !tbaa !11
  br label %if.end500

if.end500:                                        ; preds = %if.then498, %if.else493
  br label %if.end501

if.end501:                                        ; preds = %if.end500, %if.end492
  br label %for.inc502

for.inc502:                                       ; preds = %if.end501
  %311 = load i64, ptr %_ii437, align 8, !tbaa !13
  %inc503 = add nsw i64 %311, 1
  store i64 %inc503, ptr %_ii437, align 8, !tbaa !13
  br label %for.cond459

for.end504:                                       ; preds = %for.cond459
  call void @llvm.lifetime.end.p0(i64 1, ptr %_cv441) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %_tmp440) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo438) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii437) #8
  br label %sw.epilog

sw.bb505:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii506) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo507) #8
  %312 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx508 = getelementptr inbounds i64, ptr %312, i64 0
  %313 = load i64, ptr %arrayidx508, align 8, !tbaa !13
  store i64 %313, ptr %_oo507, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 2, ptr %_tmp509) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr %_cv510) #8
  %314 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv511 = fptosi double %314 to i16
  store i16 %conv511, ptr %_cv510, align 2, !tbaa !26
  %315 = load i64, ptr %_oo507, align 8, !tbaa !13
  %316 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp512 = icmp eq i64 %315, %316
  br i1 %cmp512, label %cond.true514, label %cond.false516

cond.true514:                                     ; preds = %sw.bb505
  %317 = load i16, ptr %_cv510, align 2, !tbaa !26
  %conv515 = sext i16 %317 to i32
  br label %cond.end519

cond.false516:                                    ; preds = %sw.bb505
  %318 = load ptr, ptr %pi, align 8, !tbaa !4
  %319 = load i64, ptr %_oo507, align 8, !tbaa !13
  %add.ptr517 = getelementptr inbounds i8, ptr %318, i64 %319
  %320 = load i16, ptr %add.ptr517, align 2, !tbaa !26
  %conv518 = sext i16 %320 to i32
  br label %cond.end519

cond.end519:                                      ; preds = %cond.false516, %cond.true514
  %cond520 = phi i32 [ %conv515, %cond.true514 ], [ %conv518, %cond.false516 ]
  %conv521 = sitofp i32 %cond520 to double
  store double %conv521, ptr %tmp, align 8, !tbaa !11
  %321 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp522 = icmp ne ptr %321, null
  br i1 %cmp522, label %if.then524, label %if.end527

if.then524:                                       ; preds = %cond.end519
  %322 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx525 = getelementptr inbounds double, ptr %322, i64 0
  %323 = load double, ptr %arrayidx525, align 8, !tbaa !11
  %324 = load double, ptr %tmp, align 8, !tbaa !11
  %add526 = fadd double %324, %323
  store double %add526, ptr %tmp, align 8, !tbaa !11
  br label %if.end527

if.end527:                                        ; preds = %if.then524, %cond.end519
  store i64 1, ptr %_ii506, align 8, !tbaa !13
  br label %for.cond528

for.cond528:                                      ; preds = %for.inc571, %if.end527
  %325 = load i64, ptr %_ii506, align 8, !tbaa !13
  %326 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp529 = icmp slt i64 %325, %326
  br i1 %cmp529, label %for.body531, label %for.end573

for.body531:                                      ; preds = %for.cond528
  %327 = load ptr, ptr %oo, align 8, !tbaa !4
  %328 = load i64, ptr %_ii506, align 8, !tbaa !13
  %arrayidx532 = getelementptr inbounds i64, ptr %327, i64 %328
  %329 = load i64, ptr %arrayidx532, align 8, !tbaa !13
  store i64 %329, ptr %_oo507, align 8, !tbaa !13
  %330 = load i64, ptr %_oo507, align 8, !tbaa !13
  %331 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp533 = icmp eq i64 %330, %331
  br i1 %cmp533, label %cond.true535, label %cond.false537

cond.true535:                                     ; preds = %for.body531
  %332 = load i16, ptr %_cv510, align 2, !tbaa !26
  %conv536 = sext i16 %332 to i32
  br label %cond.end540

cond.false537:                                    ; preds = %for.body531
  %333 = load ptr, ptr %pi, align 8, !tbaa !4
  %334 = load i64, ptr %_oo507, align 8, !tbaa !13
  %add.ptr538 = getelementptr inbounds i8, ptr %333, i64 %334
  %335 = load i16, ptr %add.ptr538, align 2, !tbaa !26
  %conv539 = sext i16 %335 to i32
  br label %cond.end540

cond.end540:                                      ; preds = %cond.false537, %cond.true535
  %cond541 = phi i32 [ %conv536, %cond.true535 ], [ %conv539, %cond.false537 ]
  %conv542 = trunc i32 %cond541 to i16
  store i16 %conv542, ptr %_tmp509, align 2, !tbaa !26
  %336 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp543 = icmp ne ptr %336, null
  br i1 %cmp543, label %if.then545, label %if.end552

if.then545:                                       ; preds = %cond.end540
  %337 = load ptr, ptr %ss, align 8, !tbaa !4
  %338 = load i64, ptr %_ii506, align 8, !tbaa !13
  %arrayidx546 = getelementptr inbounds double, ptr %337, i64 %338
  %339 = load double, ptr %arrayidx546, align 8, !tbaa !11
  %conv547 = fptosi double %339 to i16
  %conv548 = sext i16 %conv547 to i32
  %340 = load i16, ptr %_tmp509, align 2, !tbaa !26
  %conv549 = sext i16 %340 to i32
  %add550 = add nsw i32 %conv549, %conv548
  %conv551 = trunc i32 %add550 to i16
  store i16 %conv551, ptr %_tmp509, align 2, !tbaa !26
  br label %if.end552

if.end552:                                        ; preds = %if.then545, %cond.end540
  %341 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool553 = icmp ne i32 %341, 0
  br i1 %tobool553, label %if.then554, label %if.else562

if.then554:                                       ; preds = %if.end552
  %342 = load i16, ptr %_tmp509, align 2, !tbaa !26
  %conv555 = sext i16 %342 to i32
  %conv556 = sitofp i32 %conv555 to double
  %343 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp557 = fcmp olt double %conv556, %343
  br i1 %cmp557, label %if.then559, label %if.end561

if.then559:                                       ; preds = %if.then554
  %344 = load i16, ptr %_tmp509, align 2, !tbaa !26
  %conv560 = sitofp i16 %344 to double
  store double %conv560, ptr %tmp, align 8, !tbaa !11
  br label %if.end561

if.end561:                                        ; preds = %if.then559, %if.then554
  br label %if.end570

if.else562:                                       ; preds = %if.end552
  %345 = load i16, ptr %_tmp509, align 2, !tbaa !26
  %conv563 = sext i16 %345 to i32
  %conv564 = sitofp i32 %conv563 to double
  %346 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp565 = fcmp ogt double %conv564, %346
  br i1 %cmp565, label %if.then567, label %if.end569

if.then567:                                       ; preds = %if.else562
  %347 = load i16, ptr %_tmp509, align 2, !tbaa !26
  %conv568 = sitofp i16 %347 to double
  store double %conv568, ptr %tmp, align 8, !tbaa !11
  br label %if.end569

if.end569:                                        ; preds = %if.then567, %if.else562
  br label %if.end570

if.end570:                                        ; preds = %if.end569, %if.end561
  br label %for.inc571

for.inc571:                                       ; preds = %if.end570
  %348 = load i64, ptr %_ii506, align 8, !tbaa !13
  %inc572 = add nsw i64 %348, 1
  store i64 %inc572, ptr %_ii506, align 8, !tbaa !13
  br label %for.cond528

for.end573:                                       ; preds = %for.cond528
  call void @llvm.lifetime.end.p0(i64 2, ptr %_cv510) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %_tmp509) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo507) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii506) #8
  br label %sw.epilog

sw.bb574:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii575) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo576) #8
  %349 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx577 = getelementptr inbounds i64, ptr %349, i64 0
  %350 = load i64, ptr %arrayidx577, align 8, !tbaa !13
  store i64 %350, ptr %_oo576, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %_tmp578) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_cv579) #8
  %351 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv580 = fptosi double %351 to i32
  store i32 %conv580, ptr %_cv579, align 4, !tbaa !8
  %352 = load i64, ptr %_oo576, align 8, !tbaa !13
  %353 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp581 = icmp eq i64 %352, %353
  br i1 %cmp581, label %cond.true583, label %cond.false584

cond.true583:                                     ; preds = %sw.bb574
  %354 = load i32, ptr %_cv579, align 4, !tbaa !8
  br label %cond.end586

cond.false584:                                    ; preds = %sw.bb574
  %355 = load ptr, ptr %pi, align 8, !tbaa !4
  %356 = load i64, ptr %_oo576, align 8, !tbaa !13
  %add.ptr585 = getelementptr inbounds i8, ptr %355, i64 %356
  %357 = load i32, ptr %add.ptr585, align 4, !tbaa !8
  br label %cond.end586

cond.end586:                                      ; preds = %cond.false584, %cond.true583
  %cond587 = phi i32 [ %354, %cond.true583 ], [ %357, %cond.false584 ]
  %conv588 = sitofp i32 %cond587 to double
  store double %conv588, ptr %tmp, align 8, !tbaa !11
  %358 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp589 = icmp ne ptr %358, null
  br i1 %cmp589, label %if.then591, label %if.end594

if.then591:                                       ; preds = %cond.end586
  %359 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx592 = getelementptr inbounds double, ptr %359, i64 0
  %360 = load double, ptr %arrayidx592, align 8, !tbaa !11
  %361 = load double, ptr %tmp, align 8, !tbaa !11
  %add593 = fadd double %361, %360
  store double %add593, ptr %tmp, align 8, !tbaa !11
  br label %if.end594

if.end594:                                        ; preds = %if.then591, %cond.end586
  store i64 1, ptr %_ii575, align 8, !tbaa !13
  br label %for.cond595

for.cond595:                                      ; preds = %for.inc630, %if.end594
  %362 = load i64, ptr %_ii575, align 8, !tbaa !13
  %363 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp596 = icmp slt i64 %362, %363
  br i1 %cmp596, label %for.body598, label %for.end632

for.body598:                                      ; preds = %for.cond595
  %364 = load ptr, ptr %oo, align 8, !tbaa !4
  %365 = load i64, ptr %_ii575, align 8, !tbaa !13
  %arrayidx599 = getelementptr inbounds i64, ptr %364, i64 %365
  %366 = load i64, ptr %arrayidx599, align 8, !tbaa !13
  store i64 %366, ptr %_oo576, align 8, !tbaa !13
  %367 = load i64, ptr %_oo576, align 8, !tbaa !13
  %368 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp600 = icmp eq i64 %367, %368
  br i1 %cmp600, label %cond.true602, label %cond.false603

cond.true602:                                     ; preds = %for.body598
  %369 = load i32, ptr %_cv579, align 4, !tbaa !8
  br label %cond.end605

cond.false603:                                    ; preds = %for.body598
  %370 = load ptr, ptr %pi, align 8, !tbaa !4
  %371 = load i64, ptr %_oo576, align 8, !tbaa !13
  %add.ptr604 = getelementptr inbounds i8, ptr %370, i64 %371
  %372 = load i32, ptr %add.ptr604, align 4, !tbaa !8
  br label %cond.end605

cond.end605:                                      ; preds = %cond.false603, %cond.true602
  %cond606 = phi i32 [ %369, %cond.true602 ], [ %372, %cond.false603 ]
  store i32 %cond606, ptr %_tmp578, align 4, !tbaa !8
  %373 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp607 = icmp ne ptr %373, null
  br i1 %cmp607, label %if.then609, label %if.end613

if.then609:                                       ; preds = %cond.end605
  %374 = load ptr, ptr %ss, align 8, !tbaa !4
  %375 = load i64, ptr %_ii575, align 8, !tbaa !13
  %arrayidx610 = getelementptr inbounds double, ptr %374, i64 %375
  %376 = load double, ptr %arrayidx610, align 8, !tbaa !11
  %conv611 = fptosi double %376 to i32
  %377 = load i32, ptr %_tmp578, align 4, !tbaa !8
  %add612 = add nsw i32 %377, %conv611
  store i32 %add612, ptr %_tmp578, align 4, !tbaa !8
  br label %if.end613

if.end613:                                        ; preds = %if.then609, %cond.end605
  %378 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool614 = icmp ne i32 %378, 0
  br i1 %tobool614, label %if.then615, label %if.else622

if.then615:                                       ; preds = %if.end613
  %379 = load i32, ptr %_tmp578, align 4, !tbaa !8
  %conv616 = sitofp i32 %379 to double
  %380 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp617 = fcmp olt double %conv616, %380
  br i1 %cmp617, label %if.then619, label %if.end621

if.then619:                                       ; preds = %if.then615
  %381 = load i32, ptr %_tmp578, align 4, !tbaa !8
  %conv620 = sitofp i32 %381 to double
  store double %conv620, ptr %tmp, align 8, !tbaa !11
  br label %if.end621

if.end621:                                        ; preds = %if.then619, %if.then615
  br label %if.end629

if.else622:                                       ; preds = %if.end613
  %382 = load i32, ptr %_tmp578, align 4, !tbaa !8
  %conv623 = sitofp i32 %382 to double
  %383 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp624 = fcmp ogt double %conv623, %383
  br i1 %cmp624, label %if.then626, label %if.end628

if.then626:                                       ; preds = %if.else622
  %384 = load i32, ptr %_tmp578, align 4, !tbaa !8
  %conv627 = sitofp i32 %384 to double
  store double %conv627, ptr %tmp, align 8, !tbaa !11
  br label %if.end628

if.end628:                                        ; preds = %if.then626, %if.else622
  br label %if.end629

if.end629:                                        ; preds = %if.end628, %if.end621
  br label %for.inc630

for.inc630:                                       ; preds = %if.end629
  %385 = load i64, ptr %_ii575, align 8, !tbaa !13
  %inc631 = add nsw i64 %385, 1
  store i64 %inc631, ptr %_ii575, align 8, !tbaa !13
  br label %for.cond595

for.end632:                                       ; preds = %for.cond595
  call void @llvm.lifetime.end.p0(i64 4, ptr %_cv579) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_tmp578) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo576) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii575) #8
  br label %sw.epilog

sw.bb633:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii634) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo635) #8
  %386 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx636 = getelementptr inbounds i64, ptr %386, i64 0
  %387 = load i64, ptr %arrayidx636, align 8, !tbaa !13
  store i64 %387, ptr %_oo635, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp637) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cv638) #8
  %388 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv639 = fptosi double %388 to i64
  store i64 %conv639, ptr %_cv638, align 8, !tbaa !13
  %389 = load i64, ptr %_oo635, align 8, !tbaa !13
  %390 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp640 = icmp eq i64 %389, %390
  br i1 %cmp640, label %cond.true642, label %cond.false643

cond.true642:                                     ; preds = %sw.bb633
  %391 = load i64, ptr %_cv638, align 8, !tbaa !13
  br label %cond.end645

cond.false643:                                    ; preds = %sw.bb633
  %392 = load ptr, ptr %pi, align 8, !tbaa !4
  %393 = load i64, ptr %_oo635, align 8, !tbaa !13
  %add.ptr644 = getelementptr inbounds i8, ptr %392, i64 %393
  %394 = load i64, ptr %add.ptr644, align 8, !tbaa !13
  br label %cond.end645

cond.end645:                                      ; preds = %cond.false643, %cond.true642
  %cond646 = phi i64 [ %391, %cond.true642 ], [ %394, %cond.false643 ]
  %conv647 = sitofp i64 %cond646 to double
  store double %conv647, ptr %tmp, align 8, !tbaa !11
  %395 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp648 = icmp ne ptr %395, null
  br i1 %cmp648, label %if.then650, label %if.end653

if.then650:                                       ; preds = %cond.end645
  %396 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx651 = getelementptr inbounds double, ptr %396, i64 0
  %397 = load double, ptr %arrayidx651, align 8, !tbaa !11
  %398 = load double, ptr %tmp, align 8, !tbaa !11
  %add652 = fadd double %398, %397
  store double %add652, ptr %tmp, align 8, !tbaa !11
  br label %if.end653

if.end653:                                        ; preds = %if.then650, %cond.end645
  store i64 1, ptr %_ii634, align 8, !tbaa !13
  br label %for.cond654

for.cond654:                                      ; preds = %for.inc689, %if.end653
  %399 = load i64, ptr %_ii634, align 8, !tbaa !13
  %400 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp655 = icmp slt i64 %399, %400
  br i1 %cmp655, label %for.body657, label %for.end691

for.body657:                                      ; preds = %for.cond654
  %401 = load ptr, ptr %oo, align 8, !tbaa !4
  %402 = load i64, ptr %_ii634, align 8, !tbaa !13
  %arrayidx658 = getelementptr inbounds i64, ptr %401, i64 %402
  %403 = load i64, ptr %arrayidx658, align 8, !tbaa !13
  store i64 %403, ptr %_oo635, align 8, !tbaa !13
  %404 = load i64, ptr %_oo635, align 8, !tbaa !13
  %405 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp659 = icmp eq i64 %404, %405
  br i1 %cmp659, label %cond.true661, label %cond.false662

cond.true661:                                     ; preds = %for.body657
  %406 = load i64, ptr %_cv638, align 8, !tbaa !13
  br label %cond.end664

cond.false662:                                    ; preds = %for.body657
  %407 = load ptr, ptr %pi, align 8, !tbaa !4
  %408 = load i64, ptr %_oo635, align 8, !tbaa !13
  %add.ptr663 = getelementptr inbounds i8, ptr %407, i64 %408
  %409 = load i64, ptr %add.ptr663, align 8, !tbaa !13
  br label %cond.end664

cond.end664:                                      ; preds = %cond.false662, %cond.true661
  %cond665 = phi i64 [ %406, %cond.true661 ], [ %409, %cond.false662 ]
  store i64 %cond665, ptr %_tmp637, align 8, !tbaa !13
  %410 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp666 = icmp ne ptr %410, null
  br i1 %cmp666, label %if.then668, label %if.end672

if.then668:                                       ; preds = %cond.end664
  %411 = load ptr, ptr %ss, align 8, !tbaa !4
  %412 = load i64, ptr %_ii634, align 8, !tbaa !13
  %arrayidx669 = getelementptr inbounds double, ptr %411, i64 %412
  %413 = load double, ptr %arrayidx669, align 8, !tbaa !11
  %conv670 = fptosi double %413 to i64
  %414 = load i64, ptr %_tmp637, align 8, !tbaa !13
  %add671 = add nsw i64 %414, %conv670
  store i64 %add671, ptr %_tmp637, align 8, !tbaa !13
  br label %if.end672

if.end672:                                        ; preds = %if.then668, %cond.end664
  %415 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool673 = icmp ne i32 %415, 0
  br i1 %tobool673, label %if.then674, label %if.else681

if.then674:                                       ; preds = %if.end672
  %416 = load i64, ptr %_tmp637, align 8, !tbaa !13
  %conv675 = sitofp i64 %416 to double
  %417 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp676 = fcmp olt double %conv675, %417
  br i1 %cmp676, label %if.then678, label %if.end680

if.then678:                                       ; preds = %if.then674
  %418 = load i64, ptr %_tmp637, align 8, !tbaa !13
  %conv679 = sitofp i64 %418 to double
  store double %conv679, ptr %tmp, align 8, !tbaa !11
  br label %if.end680

if.end680:                                        ; preds = %if.then678, %if.then674
  br label %if.end688

if.else681:                                       ; preds = %if.end672
  %419 = load i64, ptr %_tmp637, align 8, !tbaa !13
  %conv682 = sitofp i64 %419 to double
  %420 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp683 = fcmp ogt double %conv682, %420
  br i1 %cmp683, label %if.then685, label %if.end687

if.then685:                                       ; preds = %if.else681
  %421 = load i64, ptr %_tmp637, align 8, !tbaa !13
  %conv686 = sitofp i64 %421 to double
  store double %conv686, ptr %tmp, align 8, !tbaa !11
  br label %if.end687

if.end687:                                        ; preds = %if.then685, %if.else681
  br label %if.end688

if.end688:                                        ; preds = %if.end687, %if.end680
  br label %for.inc689

for.inc689:                                       ; preds = %if.end688
  %422 = load i64, ptr %_ii634, align 8, !tbaa !13
  %inc690 = add nsw i64 %422, 1
  store i64 %inc690, ptr %_ii634, align 8, !tbaa !13
  br label %for.cond654

for.end691:                                       ; preds = %for.cond654
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cv638) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp637) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo635) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii634) #8
  br label %sw.epilog

sw.bb692:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii693) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo694) #8
  %423 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx695 = getelementptr inbounds i64, ptr %423, i64 0
  %424 = load i64, ptr %arrayidx695, align 8, !tbaa !13
  store i64 %424, ptr %_oo694, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp696) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cv697) #8
  %425 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv698 = fptosi double %425 to i64
  store i64 %conv698, ptr %_cv697, align 8, !tbaa !28
  %426 = load i64, ptr %_oo694, align 8, !tbaa !13
  %427 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp699 = icmp eq i64 %426, %427
  br i1 %cmp699, label %cond.true701, label %cond.false702

cond.true701:                                     ; preds = %sw.bb692
  %428 = load i64, ptr %_cv697, align 8, !tbaa !28
  br label %cond.end704

cond.false702:                                    ; preds = %sw.bb692
  %429 = load ptr, ptr %pi, align 8, !tbaa !4
  %430 = load i64, ptr %_oo694, align 8, !tbaa !13
  %add.ptr703 = getelementptr inbounds i8, ptr %429, i64 %430
  %431 = load i64, ptr %add.ptr703, align 8, !tbaa !28
  br label %cond.end704

cond.end704:                                      ; preds = %cond.false702, %cond.true701
  %cond705 = phi i64 [ %428, %cond.true701 ], [ %431, %cond.false702 ]
  %conv706 = sitofp i64 %cond705 to double
  store double %conv706, ptr %tmp, align 8, !tbaa !11
  %432 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp707 = icmp ne ptr %432, null
  br i1 %cmp707, label %if.then709, label %if.end712

if.then709:                                       ; preds = %cond.end704
  %433 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx710 = getelementptr inbounds double, ptr %433, i64 0
  %434 = load double, ptr %arrayidx710, align 8, !tbaa !11
  %435 = load double, ptr %tmp, align 8, !tbaa !11
  %add711 = fadd double %435, %434
  store double %add711, ptr %tmp, align 8, !tbaa !11
  br label %if.end712

if.end712:                                        ; preds = %if.then709, %cond.end704
  store i64 1, ptr %_ii693, align 8, !tbaa !13
  br label %for.cond713

for.cond713:                                      ; preds = %for.inc748, %if.end712
  %436 = load i64, ptr %_ii693, align 8, !tbaa !13
  %437 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp714 = icmp slt i64 %436, %437
  br i1 %cmp714, label %for.body716, label %for.end750

for.body716:                                      ; preds = %for.cond713
  %438 = load ptr, ptr %oo, align 8, !tbaa !4
  %439 = load i64, ptr %_ii693, align 8, !tbaa !13
  %arrayidx717 = getelementptr inbounds i64, ptr %438, i64 %439
  %440 = load i64, ptr %arrayidx717, align 8, !tbaa !13
  store i64 %440, ptr %_oo694, align 8, !tbaa !13
  %441 = load i64, ptr %_oo694, align 8, !tbaa !13
  %442 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp718 = icmp eq i64 %441, %442
  br i1 %cmp718, label %cond.true720, label %cond.false721

cond.true720:                                     ; preds = %for.body716
  %443 = load i64, ptr %_cv697, align 8, !tbaa !28
  br label %cond.end723

cond.false721:                                    ; preds = %for.body716
  %444 = load ptr, ptr %pi, align 8, !tbaa !4
  %445 = load i64, ptr %_oo694, align 8, !tbaa !13
  %add.ptr722 = getelementptr inbounds i8, ptr %444, i64 %445
  %446 = load i64, ptr %add.ptr722, align 8, !tbaa !28
  br label %cond.end723

cond.end723:                                      ; preds = %cond.false721, %cond.true720
  %cond724 = phi i64 [ %443, %cond.true720 ], [ %446, %cond.false721 ]
  store i64 %cond724, ptr %_tmp696, align 8, !tbaa !28
  %447 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp725 = icmp ne ptr %447, null
  br i1 %cmp725, label %if.then727, label %if.end731

if.then727:                                       ; preds = %cond.end723
  %448 = load ptr, ptr %ss, align 8, !tbaa !4
  %449 = load i64, ptr %_ii693, align 8, !tbaa !13
  %arrayidx728 = getelementptr inbounds double, ptr %448, i64 %449
  %450 = load double, ptr %arrayidx728, align 8, !tbaa !11
  %conv729 = fptosi double %450 to i64
  %451 = load i64, ptr %_tmp696, align 8, !tbaa !28
  %add730 = add nsw i64 %451, %conv729
  store i64 %add730, ptr %_tmp696, align 8, !tbaa !28
  br label %if.end731

if.end731:                                        ; preds = %if.then727, %cond.end723
  %452 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool732 = icmp ne i32 %452, 0
  br i1 %tobool732, label %if.then733, label %if.else740

if.then733:                                       ; preds = %if.end731
  %453 = load i64, ptr %_tmp696, align 8, !tbaa !28
  %conv734 = sitofp i64 %453 to double
  %454 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp735 = fcmp olt double %conv734, %454
  br i1 %cmp735, label %if.then737, label %if.end739

if.then737:                                       ; preds = %if.then733
  %455 = load i64, ptr %_tmp696, align 8, !tbaa !28
  %conv738 = sitofp i64 %455 to double
  store double %conv738, ptr %tmp, align 8, !tbaa !11
  br label %if.end739

if.end739:                                        ; preds = %if.then737, %if.then733
  br label %if.end747

if.else740:                                       ; preds = %if.end731
  %456 = load i64, ptr %_tmp696, align 8, !tbaa !28
  %conv741 = sitofp i64 %456 to double
  %457 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp742 = fcmp ogt double %conv741, %457
  br i1 %cmp742, label %if.then744, label %if.end746

if.then744:                                       ; preds = %if.else740
  %458 = load i64, ptr %_tmp696, align 8, !tbaa !28
  %conv745 = sitofp i64 %458 to double
  store double %conv745, ptr %tmp, align 8, !tbaa !11
  br label %if.end746

if.end746:                                        ; preds = %if.then744, %if.else740
  br label %if.end747

if.end747:                                        ; preds = %if.end746, %if.end739
  br label %for.inc748

for.inc748:                                       ; preds = %if.end747
  %459 = load i64, ptr %_ii693, align 8, !tbaa !13
  %inc749 = add nsw i64 %459, 1
  store i64 %inc749, ptr %_ii693, align 8, !tbaa !13
  br label %for.cond713

for.end750:                                       ; preds = %for.cond713
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cv697) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp696) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo694) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii693) #8
  br label %sw.epilog

sw.bb751:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii752) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo753) #8
  %460 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx754 = getelementptr inbounds i64, ptr %460, i64 0
  %461 = load i64, ptr %arrayidx754, align 8, !tbaa !13
  store i64 %461, ptr %_oo753, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %_tmp755) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_cv756) #8
  %462 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv757 = fptrunc double %462 to float
  store float %conv757, ptr %_cv756, align 4, !tbaa !30
  %463 = load i64, ptr %_oo753, align 8, !tbaa !13
  %464 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp758 = icmp eq i64 %463, %464
  br i1 %cmp758, label %cond.true760, label %cond.false761

cond.true760:                                     ; preds = %sw.bb751
  %465 = load float, ptr %_cv756, align 4, !tbaa !30
  br label %cond.end763

cond.false761:                                    ; preds = %sw.bb751
  %466 = load ptr, ptr %pi, align 8, !tbaa !4
  %467 = load i64, ptr %_oo753, align 8, !tbaa !13
  %add.ptr762 = getelementptr inbounds i8, ptr %466, i64 %467
  %468 = load float, ptr %add.ptr762, align 4, !tbaa !30
  br label %cond.end763

cond.end763:                                      ; preds = %cond.false761, %cond.true760
  %cond764 = phi float [ %465, %cond.true760 ], [ %468, %cond.false761 ]
  %conv765 = fpext float %cond764 to double
  store double %conv765, ptr %tmp, align 8, !tbaa !11
  %469 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp766 = icmp ne ptr %469, null
  br i1 %cmp766, label %if.then768, label %if.end771

if.then768:                                       ; preds = %cond.end763
  %470 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx769 = getelementptr inbounds double, ptr %470, i64 0
  %471 = load double, ptr %arrayidx769, align 8, !tbaa !11
  %472 = load double, ptr %tmp, align 8, !tbaa !11
  %add770 = fadd double %472, %471
  store double %add770, ptr %tmp, align 8, !tbaa !11
  br label %if.end771

if.end771:                                        ; preds = %if.then768, %cond.end763
  store i64 1, ptr %_ii752, align 8, !tbaa !13
  br label %for.cond772

for.cond772:                                      ; preds = %for.inc807, %if.end771
  %473 = load i64, ptr %_ii752, align 8, !tbaa !13
  %474 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp773 = icmp slt i64 %473, %474
  br i1 %cmp773, label %for.body775, label %for.end809

for.body775:                                      ; preds = %for.cond772
  %475 = load ptr, ptr %oo, align 8, !tbaa !4
  %476 = load i64, ptr %_ii752, align 8, !tbaa !13
  %arrayidx776 = getelementptr inbounds i64, ptr %475, i64 %476
  %477 = load i64, ptr %arrayidx776, align 8, !tbaa !13
  store i64 %477, ptr %_oo753, align 8, !tbaa !13
  %478 = load i64, ptr %_oo753, align 8, !tbaa !13
  %479 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp777 = icmp eq i64 %478, %479
  br i1 %cmp777, label %cond.true779, label %cond.false780

cond.true779:                                     ; preds = %for.body775
  %480 = load float, ptr %_cv756, align 4, !tbaa !30
  br label %cond.end782

cond.false780:                                    ; preds = %for.body775
  %481 = load ptr, ptr %pi, align 8, !tbaa !4
  %482 = load i64, ptr %_oo753, align 8, !tbaa !13
  %add.ptr781 = getelementptr inbounds i8, ptr %481, i64 %482
  %483 = load float, ptr %add.ptr781, align 4, !tbaa !30
  br label %cond.end782

cond.end782:                                      ; preds = %cond.false780, %cond.true779
  %cond783 = phi float [ %480, %cond.true779 ], [ %483, %cond.false780 ]
  store float %cond783, ptr %_tmp755, align 4, !tbaa !30
  %484 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp784 = icmp ne ptr %484, null
  br i1 %cmp784, label %if.then786, label %if.end790

if.then786:                                       ; preds = %cond.end782
  %485 = load ptr, ptr %ss, align 8, !tbaa !4
  %486 = load i64, ptr %_ii752, align 8, !tbaa !13
  %arrayidx787 = getelementptr inbounds double, ptr %485, i64 %486
  %487 = load double, ptr %arrayidx787, align 8, !tbaa !11
  %conv788 = fptrunc double %487 to float
  %488 = load float, ptr %_tmp755, align 4, !tbaa !30
  %add789 = fadd float %488, %conv788
  store float %add789, ptr %_tmp755, align 4, !tbaa !30
  br label %if.end790

if.end790:                                        ; preds = %if.then786, %cond.end782
  %489 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool791 = icmp ne i32 %489, 0
  br i1 %tobool791, label %if.then792, label %if.else799

if.then792:                                       ; preds = %if.end790
  %490 = load float, ptr %_tmp755, align 4, !tbaa !30
  %conv793 = fpext float %490 to double
  %491 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp794 = fcmp olt double %conv793, %491
  br i1 %cmp794, label %if.then796, label %if.end798

if.then796:                                       ; preds = %if.then792
  %492 = load float, ptr %_tmp755, align 4, !tbaa !30
  %conv797 = fpext float %492 to double
  store double %conv797, ptr %tmp, align 8, !tbaa !11
  br label %if.end798

if.end798:                                        ; preds = %if.then796, %if.then792
  br label %if.end806

if.else799:                                       ; preds = %if.end790
  %493 = load float, ptr %_tmp755, align 4, !tbaa !30
  %conv800 = fpext float %493 to double
  %494 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp801 = fcmp ogt double %conv800, %494
  br i1 %cmp801, label %if.then803, label %if.end805

if.then803:                                       ; preds = %if.else799
  %495 = load float, ptr %_tmp755, align 4, !tbaa !30
  %conv804 = fpext float %495 to double
  store double %conv804, ptr %tmp, align 8, !tbaa !11
  br label %if.end805

if.end805:                                        ; preds = %if.then803, %if.else799
  br label %if.end806

if.end806:                                        ; preds = %if.end805, %if.end798
  br label %for.inc807

for.inc807:                                       ; preds = %if.end806
  %496 = load i64, ptr %_ii752, align 8, !tbaa !13
  %inc808 = add nsw i64 %496, 1
  store i64 %inc808, ptr %_ii752, align 8, !tbaa !13
  br label %for.cond772

for.end809:                                       ; preds = %for.cond772
  call void @llvm.lifetime.end.p0(i64 4, ptr %_cv756) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_tmp755) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo753) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii752) #8
  br label %sw.epilog

sw.bb810:                                         ; preds = %for.body59
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii811) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_oo812) #8
  %497 = load ptr, ptr %oo, align 8, !tbaa !4
  %arrayidx813 = getelementptr inbounds i64, ptr %497, i64 0
  %498 = load i64, ptr %arrayidx813, align 8, !tbaa !13
  store i64 %498, ptr %_oo812, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp814) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_cv815) #8
  %499 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  store double %499, ptr %_cv815, align 8, !tbaa !11
  %500 = load i64, ptr %_oo812, align 8, !tbaa !13
  %501 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp816 = icmp eq i64 %500, %501
  br i1 %cmp816, label %cond.true818, label %cond.false819

cond.true818:                                     ; preds = %sw.bb810
  %502 = load double, ptr %_cv815, align 8, !tbaa !11
  br label %cond.end821

cond.false819:                                    ; preds = %sw.bb810
  %503 = load ptr, ptr %pi, align 8, !tbaa !4
  %504 = load i64, ptr %_oo812, align 8, !tbaa !13
  %add.ptr820 = getelementptr inbounds i8, ptr %503, i64 %504
  %505 = load double, ptr %add.ptr820, align 8, !tbaa !11
  br label %cond.end821

cond.end821:                                      ; preds = %cond.false819, %cond.true818
  %cond822 = phi double [ %502, %cond.true818 ], [ %505, %cond.false819 ]
  store double %cond822, ptr %tmp, align 8, !tbaa !11
  %506 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp823 = icmp ne ptr %506, null
  br i1 %cmp823, label %if.then825, label %if.end828

if.then825:                                       ; preds = %cond.end821
  %507 = load ptr, ptr %ss, align 8, !tbaa !4
  %arrayidx826 = getelementptr inbounds double, ptr %507, i64 0
  %508 = load double, ptr %arrayidx826, align 8, !tbaa !11
  %509 = load double, ptr %tmp, align 8, !tbaa !11
  %add827 = fadd double %509, %508
  store double %add827, ptr %tmp, align 8, !tbaa !11
  br label %if.end828

if.end828:                                        ; preds = %if.then825, %cond.end821
  store i64 1, ptr %_ii811, align 8, !tbaa !13
  br label %for.cond829

for.cond829:                                      ; preds = %for.inc859, %if.end828
  %510 = load i64, ptr %_ii811, align 8, !tbaa !13
  %511 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp830 = icmp slt i64 %510, %511
  br i1 %cmp830, label %for.body832, label %for.end861

for.body832:                                      ; preds = %for.cond829
  %512 = load ptr, ptr %oo, align 8, !tbaa !4
  %513 = load i64, ptr %_ii811, align 8, !tbaa !13
  %arrayidx833 = getelementptr inbounds i64, ptr %512, i64 %513
  %514 = load i64, ptr %arrayidx833, align 8, !tbaa !13
  store i64 %514, ptr %_oo812, align 8, !tbaa !13
  %515 = load i64, ptr %_oo812, align 8, !tbaa !13
  %516 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp834 = icmp eq i64 %515, %516
  br i1 %cmp834, label %cond.true836, label %cond.false837

cond.true836:                                     ; preds = %for.body832
  %517 = load double, ptr %_cv815, align 8, !tbaa !11
  br label %cond.end839

cond.false837:                                    ; preds = %for.body832
  %518 = load ptr, ptr %pi, align 8, !tbaa !4
  %519 = load i64, ptr %_oo812, align 8, !tbaa !13
  %add.ptr838 = getelementptr inbounds i8, ptr %518, i64 %519
  %520 = load double, ptr %add.ptr838, align 8, !tbaa !11
  br label %cond.end839

cond.end839:                                      ; preds = %cond.false837, %cond.true836
  %cond840 = phi double [ %517, %cond.true836 ], [ %520, %cond.false837 ]
  store double %cond840, ptr %_tmp814, align 8, !tbaa !11
  %521 = load ptr, ptr %ss, align 8, !tbaa !4
  %cmp841 = icmp ne ptr %521, null
  br i1 %cmp841, label %if.then843, label %if.end846

if.then843:                                       ; preds = %cond.end839
  %522 = load ptr, ptr %ss, align 8, !tbaa !4
  %523 = load i64, ptr %_ii811, align 8, !tbaa !13
  %arrayidx844 = getelementptr inbounds double, ptr %522, i64 %523
  %524 = load double, ptr %arrayidx844, align 8, !tbaa !11
  %525 = load double, ptr %_tmp814, align 8, !tbaa !11
  %add845 = fadd double %525, %524
  store double %add845, ptr %_tmp814, align 8, !tbaa !11
  br label %if.end846

if.end846:                                        ; preds = %if.then843, %cond.end839
  %526 = load i32, ptr %minimum.addr, align 4, !tbaa !8
  %tobool847 = icmp ne i32 %526, 0
  br i1 %tobool847, label %if.then848, label %if.else853

if.then848:                                       ; preds = %if.end846
  %527 = load double, ptr %_tmp814, align 8, !tbaa !11
  %528 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp849 = fcmp olt double %527, %528
  br i1 %cmp849, label %if.then851, label %if.end852

if.then851:                                       ; preds = %if.then848
  %529 = load double, ptr %_tmp814, align 8, !tbaa !11
  store double %529, ptr %tmp, align 8, !tbaa !11
  br label %if.end852

if.end852:                                        ; preds = %if.then851, %if.then848
  br label %if.end858

if.else853:                                       ; preds = %if.end846
  %530 = load double, ptr %_tmp814, align 8, !tbaa !11
  %531 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp854 = fcmp ogt double %530, %531
  br i1 %cmp854, label %if.then856, label %if.end857

if.then856:                                       ; preds = %if.else853
  %532 = load double, ptr %_tmp814, align 8, !tbaa !11
  store double %532, ptr %tmp, align 8, !tbaa !11
  br label %if.end857

if.end857:                                        ; preds = %if.then856, %if.else853
  br label %if.end858

if.end858:                                        ; preds = %if.end857, %if.end852
  br label %for.inc859

for.inc859:                                       ; preds = %if.end858
  %533 = load i64, ptr %_ii811, align 8, !tbaa !13
  %inc860 = add nsw i64 %533, 1
  store i64 %inc860, ptr %_ii811, align 8, !tbaa !13
  br label %for.cond829

for.end861:                                       ; preds = %for.cond829
  call void @llvm.lifetime.end.p0(i64 8, ptr %_cv815) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp814) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_oo812) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii811) #8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body59
  store i32 1, ptr %err, align 4, !tbaa !8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup1008

sw.epilog:                                        ; preds = %for.end861, %for.end809, %for.end750, %for.end691, %for.end632, %for.end573, %for.end504, %for.end435, %for.end376, %for.end317, %for.end258, %for.end189, %for.end120
  %534 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call862 = call i32 @PyArray_TYPE(ptr noundef %534)
  switch i32 %call862, label %sw.default950 [
    i32 0, label %sw.bb863
    i32 2, label %sw.bb876
    i32 4, label %sw.bb890
    i32 6, label %sw.bb904
    i32 8, label %sw.bb915
    i32 10, label %sw.bb926
    i32 1, label %sw.bb937
    i32 3, label %sw.bb939
    i32 5, label %sw.bb941
    i32 7, label %sw.bb943
    i32 9, label %sw.bb945
    i32 11, label %sw.bb947
    i32 12, label %sw.bb949
  ]

sw.bb863:                                         ; preds = %sw.epilog
  %535 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp864 = fcmp ogt double %535, -1.000000e+00
  br i1 %cmp864, label %cond.true866, label %cond.false869

cond.true866:                                     ; preds = %sw.bb863
  %536 = load double, ptr %tmp, align 8, !tbaa !11
  %conv867 = fptoui double %536 to i8
  %conv868 = zext i8 %conv867 to i32
  br label %cond.end873

cond.false869:                                    ; preds = %sw.bb863
  %537 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg870 = fneg double %537
  %conv871 = fptoui double %fneg870 to i8
  %conv872 = zext i8 %conv871 to i32
  %sub = sub nsw i32 0, %conv872
  br label %cond.end873

cond.end873:                                      ; preds = %cond.false869, %cond.true866
  %cond874 = phi i32 [ %conv868, %cond.true866 ], [ %sub, %cond.false869 ]
  %conv875 = trunc i32 %cond874 to i8
  %538 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv875, ptr %538, align 1, !tbaa !10
  br label %sw.epilog951

sw.bb876:                                         ; preds = %sw.epilog
  %539 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp877 = fcmp ogt double %539, -1.000000e+00
  br i1 %cmp877, label %cond.true879, label %cond.false882

cond.true879:                                     ; preds = %sw.bb876
  %540 = load double, ptr %tmp, align 8, !tbaa !11
  %conv880 = fptoui double %540 to i8
  %conv881 = zext i8 %conv880 to i32
  br label %cond.end887

cond.false882:                                    ; preds = %sw.bb876
  %541 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg883 = fneg double %541
  %conv884 = fptoui double %fneg883 to i8
  %conv885 = zext i8 %conv884 to i32
  %sub886 = sub nsw i32 0, %conv885
  br label %cond.end887

cond.end887:                                      ; preds = %cond.false882, %cond.true879
  %cond888 = phi i32 [ %conv881, %cond.true879 ], [ %sub886, %cond.false882 ]
  %conv889 = trunc i32 %cond888 to i8
  %542 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv889, ptr %542, align 1, !tbaa !10
  br label %sw.epilog951

sw.bb890:                                         ; preds = %sw.epilog
  %543 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp891 = fcmp ogt double %543, -1.000000e+00
  br i1 %cmp891, label %cond.true893, label %cond.false896

cond.true893:                                     ; preds = %sw.bb890
  %544 = load double, ptr %tmp, align 8, !tbaa !11
  %conv894 = fptoui double %544 to i16
  %conv895 = zext i16 %conv894 to i32
  br label %cond.end901

cond.false896:                                    ; preds = %sw.bb890
  %545 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg897 = fneg double %545
  %conv898 = fptoui double %fneg897 to i16
  %conv899 = zext i16 %conv898 to i32
  %sub900 = sub nsw i32 0, %conv899
  br label %cond.end901

cond.end901:                                      ; preds = %cond.false896, %cond.true893
  %cond902 = phi i32 [ %conv895, %cond.true893 ], [ %sub900, %cond.false896 ]
  %conv903 = trunc i32 %cond902 to i16
  %546 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv903, ptr %546, align 2, !tbaa !26
  br label %sw.epilog951

sw.bb904:                                         ; preds = %sw.epilog
  %547 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp905 = fcmp ogt double %547, -1.000000e+00
  br i1 %cmp905, label %cond.true907, label %cond.false909

cond.true907:                                     ; preds = %sw.bb904
  %548 = load double, ptr %tmp, align 8, !tbaa !11
  %conv908 = fptoui double %548 to i32
  br label %cond.end913

cond.false909:                                    ; preds = %sw.bb904
  %549 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg910 = fneg double %549
  %conv911 = fptoui double %fneg910 to i32
  %sub912 = sub i32 0, %conv911
  br label %cond.end913

cond.end913:                                      ; preds = %cond.false909, %cond.true907
  %cond914 = phi i32 [ %conv908, %cond.true907 ], [ %sub912, %cond.false909 ]
  %550 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %cond914, ptr %550, align 4, !tbaa !8
  br label %sw.epilog951

sw.bb915:                                         ; preds = %sw.epilog
  %551 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp916 = fcmp ogt double %551, -1.000000e+00
  br i1 %cmp916, label %cond.true918, label %cond.false920

cond.true918:                                     ; preds = %sw.bb915
  %552 = load double, ptr %tmp, align 8, !tbaa !11
  %conv919 = fptoui double %552 to i64
  br label %cond.end924

cond.false920:                                    ; preds = %sw.bb915
  %553 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg921 = fneg double %553
  %conv922 = fptoui double %fneg921 to i64
  %sub923 = sub i64 0, %conv922
  br label %cond.end924

cond.end924:                                      ; preds = %cond.false920, %cond.true918
  %cond925 = phi i64 [ %conv919, %cond.true918 ], [ %sub923, %cond.false920 ]
  %554 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond925, ptr %554, align 8, !tbaa !13
  br label %sw.epilog951

sw.bb926:                                         ; preds = %sw.epilog
  %555 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp927 = fcmp ogt double %555, -1.000000e+00
  br i1 %cmp927, label %cond.true929, label %cond.false931

cond.true929:                                     ; preds = %sw.bb926
  %556 = load double, ptr %tmp, align 8, !tbaa !11
  %conv930 = fptoui double %556 to i64
  br label %cond.end935

cond.false931:                                    ; preds = %sw.bb926
  %557 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg932 = fneg double %557
  %conv933 = fptoui double %fneg932 to i64
  %sub934 = sub i64 0, %conv933
  br label %cond.end935

cond.end935:                                      ; preds = %cond.false931, %cond.true929
  %cond936 = phi i64 [ %conv930, %cond.true929 ], [ %sub934, %cond.false931 ]
  %558 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond936, ptr %558, align 8, !tbaa !28
  br label %sw.epilog951

sw.bb937:                                         ; preds = %sw.epilog
  %559 = load double, ptr %tmp, align 8, !tbaa !11
  %conv938 = fptosi double %559 to i8
  %560 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv938, ptr %560, align 1, !tbaa !10
  br label %sw.epilog951

sw.bb939:                                         ; preds = %sw.epilog
  %561 = load double, ptr %tmp, align 8, !tbaa !11
  %conv940 = fptosi double %561 to i16
  %562 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv940, ptr %562, align 2, !tbaa !26
  br label %sw.epilog951

sw.bb941:                                         ; preds = %sw.epilog
  %563 = load double, ptr %tmp, align 8, !tbaa !11
  %conv942 = fptosi double %563 to i32
  %564 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv942, ptr %564, align 4, !tbaa !8
  br label %sw.epilog951

sw.bb943:                                         ; preds = %sw.epilog
  %565 = load double, ptr %tmp, align 8, !tbaa !11
  %conv944 = fptosi double %565 to i64
  %566 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv944, ptr %566, align 8, !tbaa !13
  br label %sw.epilog951

sw.bb945:                                         ; preds = %sw.epilog
  %567 = load double, ptr %tmp, align 8, !tbaa !11
  %conv946 = fptosi double %567 to i64
  %568 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv946, ptr %568, align 8, !tbaa !28
  br label %sw.epilog951

sw.bb947:                                         ; preds = %sw.epilog
  %569 = load double, ptr %tmp, align 8, !tbaa !11
  %conv948 = fptrunc double %569 to float
  %570 = load ptr, ptr %po, align 8, !tbaa !4
  store float %conv948, ptr %570, align 4, !tbaa !30
  br label %sw.epilog951

sw.bb949:                                         ; preds = %sw.epilog
  %571 = load double, ptr %tmp, align 8, !tbaa !11
  %572 = load ptr, ptr %po, align 8, !tbaa !4
  store double %571, ptr %572, align 8, !tbaa !11
  br label %sw.epilog951

sw.default950:                                    ; preds = %sw.epilog
  store i32 1, ptr %err, align 4, !tbaa !8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup1008

sw.epilog951:                                     ; preds = %sw.bb949, %sw.bb947, %sw.bb945, %sw.bb943, %sw.bb941, %sw.bb939, %sw.bb937, %cond.end935, %cond.end924, %cond.end913, %cond.end901, %cond.end887, %cond.end873
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ii952) #8
  %rank_m1 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 0
  %573 = load i32, ptr %rank_m1, align 8, !tbaa !32
  store i32 %573, ptr %_ii952, align 4, !tbaa !8
  br label %for.cond953

for.cond953:                                      ; preds = %for.inc1006, %sw.epilog951
  %574 = load i32, ptr %_ii952, align 4, !tbaa !8
  %cmp954 = icmp sge i32 %574, 0
  br i1 %cmp954, label %for.body956, label %for.end1007

for.body956:                                      ; preds = %for.cond953
  call void @llvm.lifetime.start.p0(i64 8, ptr %_pp) #8
  %coordinates = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %575 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom = sext i32 %575 to i64
  %arrayidx957 = getelementptr inbounds [32 x i64], ptr %coordinates, i64 0, i64 %idxprom
  %576 = load i64, ptr %arrayidx957, align 8, !tbaa !13
  store i64 %576, ptr %_pp, align 8, !tbaa !13
  %577 = load i64, ptr %_pp, align 8, !tbaa !13
  %dimensions = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 1
  %578 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom958 = sext i32 %578 to i64
  %arrayidx959 = getelementptr inbounds [32 x i64], ptr %dimensions, i64 0, i64 %idxprom958
  %579 = load i64, ptr %arrayidx959, align 8, !tbaa !13
  %cmp960 = icmp slt i64 %577, %579
  br i1 %cmp960, label %if.then962, label %if.else988

if.then962:                                       ; preds = %for.body956
  %580 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound1 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 2
  %581 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom963 = sext i32 %581 to i64
  %arrayidx964 = getelementptr inbounds [32 x i64], ptr %bound1, i64 0, i64 %idxprom963
  %582 = load i64, ptr %arrayidx964, align 8, !tbaa !13
  %cmp965 = icmp slt i64 %580, %582
  br i1 %cmp965, label %if.then971, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then962
  %583 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound2 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 3
  %584 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom967 = sext i32 %584 to i64
  %arrayidx968 = getelementptr inbounds [32 x i64], ptr %bound2, i64 0, i64 %idxprom967
  %585 = load i64, ptr %arrayidx968, align 8, !tbaa !13
  %cmp969 = icmp sge i64 %583, %585
  br i1 %cmp969, label %if.then971, label %if.end975

if.then971:                                       ; preds = %lor.lhs.false, %if.then962
  %strides = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 0
  %586 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom972 = sext i32 %586 to i64
  %arrayidx973 = getelementptr inbounds [32 x i64], ptr %strides, i64 0, i64 %idxprom972
  %587 = load i64, ptr %arrayidx973, align 8, !tbaa !13
  %588 = load ptr, ptr %oo, align 8, !tbaa !4
  %add.ptr974 = getelementptr inbounds i64, ptr %588, i64 %587
  store ptr %add.ptr974, ptr %oo, align 8, !tbaa !4
  br label %if.end975

if.end975:                                        ; preds = %if.then971, %lor.lhs.false
  %coordinates976 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %589 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom977 = sext i32 %589 to i64
  %arrayidx978 = getelementptr inbounds [32 x i64], ptr %coordinates976, i64 0, i64 %idxprom977
  %590 = load i64, ptr %arrayidx978, align 8, !tbaa !13
  %inc979 = add nsw i64 %590, 1
  store i64 %inc979, ptr %arrayidx978, align 8, !tbaa !13
  %strides980 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 3
  %591 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom981 = sext i32 %591 to i64
  %arrayidx982 = getelementptr inbounds [32 x i64], ptr %strides980, i64 0, i64 %idxprom981
  %592 = load i64, ptr %arrayidx982, align 8, !tbaa !13
  %593 = load ptr, ptr %pi, align 8, !tbaa !4
  %add.ptr983 = getelementptr inbounds i8, ptr %593, i64 %592
  store ptr %add.ptr983, ptr %pi, align 8, !tbaa !4
  %strides984 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 3
  %594 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom985 = sext i32 %594 to i64
  %arrayidx986 = getelementptr inbounds [32 x i64], ptr %strides984, i64 0, i64 %idxprom985
  %595 = load i64, ptr %arrayidx986, align 8, !tbaa !13
  %596 = load ptr, ptr %po, align 8, !tbaa !4
  %add.ptr987 = getelementptr inbounds i8, ptr %596, i64 %595
  store ptr %add.ptr987, ptr %po, align 8, !tbaa !4
  store i32 55, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else988:                                       ; preds = %for.body956
  %coordinates989 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %597 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom990 = sext i32 %597 to i64
  %arrayidx991 = getelementptr inbounds [32 x i64], ptr %coordinates989, i64 0, i64 %idxprom990
  store i64 0, ptr %arrayidx991, align 8, !tbaa !13
  %backstrides = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 4
  %598 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom992 = sext i32 %598 to i64
  %arrayidx993 = getelementptr inbounds [32 x i64], ptr %backstrides, i64 0, i64 %idxprom992
  %599 = load i64, ptr %arrayidx993, align 8, !tbaa !13
  %600 = load ptr, ptr %pi, align 8, !tbaa !4
  %idx.neg = sub i64 0, %599
  %add.ptr994 = getelementptr inbounds i8, ptr %600, i64 %idx.neg
  store ptr %add.ptr994, ptr %pi, align 8, !tbaa !4
  %backstrides995 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 4
  %601 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom996 = sext i32 %601 to i64
  %arrayidx997 = getelementptr inbounds [32 x i64], ptr %backstrides995, i64 0, i64 %idxprom996
  %602 = load i64, ptr %arrayidx997, align 8, !tbaa !13
  %603 = load ptr, ptr %po, align 8, !tbaa !4
  %idx.neg998 = sub i64 0, %602
  %add.ptr999 = getelementptr inbounds i8, ptr %603, i64 %idx.neg998
  store ptr %add.ptr999, ptr %po, align 8, !tbaa !4
  %backstrides1000 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 1
  %604 = load i32, ptr %_ii952, align 4, !tbaa !8
  %idxprom1001 = sext i32 %604 to i64
  %arrayidx1002 = getelementptr inbounds [32 x i64], ptr %backstrides1000, i64 0, i64 %idxprom1001
  %605 = load i64, ptr %arrayidx1002, align 8, !tbaa !13
  %606 = load ptr, ptr %oo, align 8, !tbaa !4
  %idx.neg1003 = sub i64 0, %605
  %add.ptr1004 = getelementptr inbounds i64, ptr %606, i64 %idx.neg1003
  store ptr %add.ptr1004, ptr %oo, align 8, !tbaa !4
  br label %if.end1005

if.end1005:                                       ; preds = %if.else988
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1005, %if.end975
  call void @llvm.lifetime.end.p0(i64 8, ptr %_pp) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 55, label %for.end1007
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc1006

for.inc1006:                                      ; preds = %cleanup.cont
  %607 = load i32, ptr %_ii952, align 4, !tbaa !8
  %dec = add nsw i32 %607, -1
  store i32 %dec, ptr %_ii952, align 4, !tbaa !8
  br label %for.cond953

for.end1007:                                      ; preds = %cleanup, %for.cond953
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ii952) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup1008

cleanup1008:                                      ; preds = %sw.default950, %sw.default, %for.end1007
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  %cleanup.dest1009 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest1009, label %cleanup1027 [
    i32 0, label %cleanup.cont1010
    i32 5, label %exit
  ]

cleanup.cont1010:                                 ; preds = %cleanup1008
  br label %for.inc1011

for.inc1011:                                      ; preds = %cleanup.cont1010
  %608 = load i64, ptr %jj, align 8, !tbaa !13
  %inc1012 = add nsw i64 %608, 1
  store i64 %inc1012, ptr %jj, align 8, !tbaa !13
  br label %for.cond57

for.end1013:                                      ; preds = %for.cond57
  br label %exit

exit:                                             ; preds = %for.end1013, %cleanup1008, %if.then48, %if.then44, %if.then40, %if.then33, %if.then10
  br label %do.body1014

do.body1014:                                      ; preds = %exit
  %609 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool1015 = icmp ne ptr %609, null
  br i1 %tobool1015, label %if.then1016, label %if.end1017

if.then1016:                                      ; preds = %do.body1014
  %610 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %610)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end1017

if.end1017:                                       ; preds = %if.then1016, %do.body1014
  br label %do.cond1018

do.cond1018:                                      ; preds = %if.end1017
  br label %do.end1019

do.end1019:                                       ; preds = %do.cond1018
  %611 = load i32, ptr %err, align 4, !tbaa !8
  %cmp1020 = icmp eq i32 %611, 1
  br i1 %cmp1020, label %if.then1022, label %if.end1023

if.then1022:                                      ; preds = %do.end1019
  %612 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %612, ptr noundef @.str)
  br label %if.end1023

if.end1023:                                       ; preds = %if.then1022, %do.end1019
  %613 = load ptr, ptr %offsets, align 8, !tbaa !4
  call void @free(ptr noundef %613) #8
  %614 = load ptr, ptr %ss, align 8, !tbaa !4
  call void @free(ptr noundef %614) #8
  %call1024 = call ptr @PyErr_Occurred()
  %tobool1025 = icmp ne ptr %call1024, null
  %615 = zext i1 %tobool1025 to i64
  %cond1026 = select i1 %tobool1025, i32 0, i32 1
  store i32 %cond1026, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1027

cleanup1027:                                      ; preds = %if.end1023, %cleanup1008
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %offsets) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %filter_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsize) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pf) #8
  %616 = load i32, ptr %retval, align 4
  ret i32 %616

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden i32 @NI_RankFilter(ptr noundef %input, i32 noundef %rank, ptr noundef %footprint, ptr noundef %output, i32 noundef %mode, double noundef %cvalue, ptr noundef %origins) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %rank.addr = alloca i32, align 4
  %footprint.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cvalue.addr = alloca double, align 8
  %origins.addr = alloca ptr, align 8
  %fsize = alloca i64, align 8
  %jj = alloca i64, align 8
  %filter_size = alloca i64, align 8
  %border_flag_value = alloca i64, align 8
  %offsets = alloca ptr, align 8
  %oo = alloca ptr, align 8
  %size = alloca i64, align 8
  %fi = alloca %struct.NI_FilterIterator, align 8
  %ii = alloca %struct.NI_Iterator, align 8
  %io = alloca %struct.NI_Iterator, align 8
  %pi = alloca ptr, align 8
  %po = alloca ptr, align 8
  %pf = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %err = alloca i32, align 4
  %_save = alloca ptr, align 8
  %tmp = alloca double, align 8
  %_ii = alloca i64, align 8
  %_offset = alloca i64, align 8
  %_ii61 = alloca i64, align 8
  %_offset66 = alloca i64, align 8
  %_ii88 = alloca i64, align 8
  %_offset93 = alloca i64, align 8
  %_ii115 = alloca i64, align 8
  %_offset120 = alloca i64, align 8
  %_ii142 = alloca i64, align 8
  %_offset147 = alloca i64, align 8
  %_ii169 = alloca i64, align 8
  %_offset174 = alloca i64, align 8
  %_ii196 = alloca i64, align 8
  %_offset201 = alloca i64, align 8
  %_ii223 = alloca i64, align 8
  %_offset228 = alloca i64, align 8
  %_ii250 = alloca i64, align 8
  %_offset255 = alloca i64, align 8
  %_ii277 = alloca i64, align 8
  %_offset282 = alloca i64, align 8
  %_ii304 = alloca i64, align 8
  %_offset309 = alloca i64, align 8
  %_ii331 = alloca i64, align 8
  %_offset336 = alloca i64, align 8
  %_ii358 = alloca i64, align 8
  %_offset363 = alloca i64, align 8
  %_ii465 = alloca i32, align 4
  %_pp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store i32 %rank, ptr %rank.addr, align 4, !tbaa !8
  store ptr %footprint, ptr %footprint.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cvalue, ptr %cvalue.addr, align 8, !tbaa !11
  store ptr %origins, ptr %origins.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsize) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %filter_size) #8
  store i64 0, ptr %filter_size, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %offsets) #8
  store ptr null, ptr %offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pf) #8
  store ptr null, ptr %pf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #8
  store ptr null, ptr %buffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8
  store i32 0, ptr %err, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #8
  store ptr null, ptr %_save, align 8, !tbaa !4
  %0 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 158
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %2 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call = call ptr @PyArray_DIMS(ptr noundef %2)
  %3 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call1 = call i32 @PyArray_NDIM(ptr noundef %3)
  %call2 = call i64 %1(ptr noundef %call, i32 noundef %call1)
  store i64 %call2, ptr %fsize, align 8, !tbaa !13
  %4 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call3 = call ptr @PyArray_DATA(ptr noundef %4)
  store ptr %call3, ptr %pf, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %jj, align 8, !tbaa !13
  %6 = load i64, ptr %fsize, align 8, !tbaa !13
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pf, align 8, !tbaa !4
  %8 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, ptr %filter_size, align 8, !tbaa !13
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %filter_size, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, ptr %jj, align 8, !tbaa !13
  %inc5 = add nsw i64 %11, 1
  store i64 %inc5, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %filter_size, align 8, !tbaa !13
  %mul = mul i64 %12, 8
  %call6 = call noalias ptr @malloc(i64 noundef %mul) #9
  store ptr %call6, ptr %buffer, align 8, !tbaa !4
  %13 = load ptr, ptr %buffer, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %13, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %for.end
  %call9 = call ptr @PyErr_NoMemory()
  br label %exit

if.end10:                                         ; preds = %for.end
  %14 = load ptr, ptr %offsets, align 8, !tbaa !4
  store ptr %14, ptr %oo, align 8, !tbaa !4
  %15 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %pf, align 8, !tbaa !4
  %17 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call11 = call ptr @PyArray_DIMS(ptr noundef %17)
  %18 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %19 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call12 = call i32 @NI_InitFilterOffsets(ptr noundef %15, ptr noundef %16, ptr noundef %call11, ptr noundef %18, i32 noundef %19, ptr noundef %offsets, ptr noundef %border_flag_value, ptr noundef null)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  br label %exit

if.end15:                                         ; preds = %if.end10
  %20 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call16 = call i32 @PyArray_NDIM(ptr noundef %20)
  %21 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call17 = call ptr @PyArray_DIMS(ptr noundef %21)
  %22 = load i64, ptr %filter_size, align 8, !tbaa !13
  %23 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call18 = call ptr @PyArray_DIMS(ptr noundef %23)
  %24 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %call19 = call i32 @NI_InitFilterIterator(i32 noundef %call16, ptr noundef %call17, i64 noundef %22, ptr noundef %call18, ptr noundef %24, ptr noundef %fi)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end15
  br label %exit

if.end22:                                         ; preds = %if.end15
  %25 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call23 = call i32 @NI_InitPointIterator(ptr noundef %25, ptr noundef %ii)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  br label %exit

if.end26:                                         ; preds = %if.end22
  %26 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call27 = call i32 @NI_InitPointIterator(ptr noundef %26, ptr noundef %io)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  br label %exit

if.end30:                                         ; preds = %if.end26
  br label %do.body

do.body:                                          ; preds = %if.end30
  %call31 = call ptr @PyEval_SaveThread()
  store ptr %call31, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call32 = call ptr @PyArray_DATA(ptr noundef %27)
  store ptr %call32, ptr %pi, align 8, !tbaa !4
  %28 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call33 = call ptr @PyArray_DATA(ptr noundef %28)
  store ptr %call33, ptr %po, align 8, !tbaa !4
  %29 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx34 = getelementptr inbounds ptr, ptr %29, i64 158
  %30 = load ptr, ptr %arrayidx34, align 8, !tbaa !4
  %31 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call35 = call ptr @PyArray_DIMS(ptr noundef %31)
  %32 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call36 = call i32 @PyArray_NDIM(ptr noundef %32)
  %call37 = call i64 %30(ptr noundef %call35, i32 noundef %call36)
  store i64 %call37, ptr %size, align 8, !tbaa !13
  %33 = load ptr, ptr %offsets, align 8, !tbaa !4
  store ptr %33, ptr %oo, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc524, %do.end
  %34 = load i64, ptr %jj, align 8, !tbaa !13
  %35 = load i64, ptr %size, align 8, !tbaa !13
  %cmp39 = icmp slt i64 %34, %35
  br i1 %cmp39, label %for.body40, label %for.end526

for.body40:                                       ; preds = %for.cond38
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !11
  %36 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call41 = call i32 @PyArray_TYPE(ptr noundef %36)
  switch i32 %call41, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb60
    i32 4, label %sw.bb87
    i32 6, label %sw.bb114
    i32 8, label %sw.bb141
    i32 10, label %sw.bb168
    i32 1, label %sw.bb195
    i32 3, label %sw.bb222
    i32 5, label %sw.bb249
    i32 7, label %sw.bb276
    i32 9, label %sw.bb303
    i32 11, label %sw.bb330
    i32 12, label %sw.bb357
  ]

sw.bb:                                            ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii) #8
  store i64 0, ptr %_ii, align 8, !tbaa !13
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc53, %sw.bb
  %37 = load i64, ptr %_ii, align 8, !tbaa !13
  %38 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp43 = icmp slt i64 %37, %38
  br i1 %cmp43, label %for.body44, label %for.end55

for.body44:                                       ; preds = %for.cond42
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset) #8
  %39 = load ptr, ptr %oo, align 8, !tbaa !4
  %40 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx45 = getelementptr inbounds i64, ptr %39, i64 %40
  %41 = load i64, ptr %arrayidx45, align 8, !tbaa !13
  store i64 %41, ptr %_offset, align 8, !tbaa !13
  %42 = load i64, ptr %_offset, align 8, !tbaa !13
  %43 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp46 = icmp eq i64 %42, %43
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %for.body44
  %44 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv = fptoui double %44 to i8
  %conv48 = uitofp i8 %conv to double
  %45 = load ptr, ptr %buffer, align 8, !tbaa !4
  %46 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx49 = getelementptr inbounds double, ptr %45, i64 %46
  store double %conv48, ptr %arrayidx49, align 8, !tbaa !11
  br label %if.end52

if.else:                                          ; preds = %for.body44
  %47 = load ptr, ptr %pi, align 8, !tbaa !4
  %48 = load i64, ptr %_offset, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %47, i64 %48
  %49 = load i8, ptr %add.ptr, align 1, !tbaa !10
  %conv50 = uitofp i8 %49 to double
  %50 = load ptr, ptr %buffer, align 8, !tbaa !4
  %51 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx51 = getelementptr inbounds double, ptr %50, i64 %51
  store double %conv50, ptr %arrayidx51, align 8, !tbaa !11
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then47
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset) #8
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %52 = load i64, ptr %_ii, align 8, !tbaa !13
  %inc54 = add nsw i64 %52, 1
  store i64 %inc54, ptr %_ii, align 8, !tbaa !13
  br label %for.cond42

for.end55:                                        ; preds = %for.cond42
  %53 = load ptr, ptr %buffer, align 8, !tbaa !4
  %54 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub = sub nsw i64 %54, 1
  %55 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv56 = sext i32 %55 to i64
  %call57 = call double @NI_Select(ptr noundef %53, i64 noundef 0, i64 noundef %sub, i64 noundef %conv56)
  %conv58 = fptoui double %call57 to i8
  %conv59 = uitofp i8 %conv58 to double
  store double %conv59, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii) #8
  br label %sw.epilog

sw.bb60:                                          ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii61) #8
  store i64 0, ptr %_ii61, align 8, !tbaa !13
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc79, %sw.bb60
  %56 = load i64, ptr %_ii61, align 8, !tbaa !13
  %57 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp63 = icmp slt i64 %56, %57
  br i1 %cmp63, label %for.body65, label %for.end81

for.body65:                                       ; preds = %for.cond62
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset66) #8
  %58 = load ptr, ptr %oo, align 8, !tbaa !4
  %59 = load i64, ptr %_ii61, align 8, !tbaa !13
  %arrayidx67 = getelementptr inbounds i64, ptr %58, i64 %59
  %60 = load i64, ptr %arrayidx67, align 8, !tbaa !13
  store i64 %60, ptr %_offset66, align 8, !tbaa !13
  %61 = load i64, ptr %_offset66, align 8, !tbaa !13
  %62 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp68 = icmp eq i64 %61, %62
  br i1 %cmp68, label %if.then70, label %if.else74

if.then70:                                        ; preds = %for.body65
  %63 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv71 = fptoui double %63 to i8
  %conv72 = uitofp i8 %conv71 to double
  %64 = load ptr, ptr %buffer, align 8, !tbaa !4
  %65 = load i64, ptr %_ii61, align 8, !tbaa !13
  %arrayidx73 = getelementptr inbounds double, ptr %64, i64 %65
  store double %conv72, ptr %arrayidx73, align 8, !tbaa !11
  br label %if.end78

if.else74:                                        ; preds = %for.body65
  %66 = load ptr, ptr %pi, align 8, !tbaa !4
  %67 = load i64, ptr %_offset66, align 8, !tbaa !13
  %add.ptr75 = getelementptr inbounds i8, ptr %66, i64 %67
  %68 = load i8, ptr %add.ptr75, align 1, !tbaa !10
  %conv76 = uitofp i8 %68 to double
  %69 = load ptr, ptr %buffer, align 8, !tbaa !4
  %70 = load i64, ptr %_ii61, align 8, !tbaa !13
  %arrayidx77 = getelementptr inbounds double, ptr %69, i64 %70
  store double %conv76, ptr %arrayidx77, align 8, !tbaa !11
  br label %if.end78

if.end78:                                         ; preds = %if.else74, %if.then70
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset66) #8
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %71 = load i64, ptr %_ii61, align 8, !tbaa !13
  %inc80 = add nsw i64 %71, 1
  store i64 %inc80, ptr %_ii61, align 8, !tbaa !13
  br label %for.cond62

for.end81:                                        ; preds = %for.cond62
  %72 = load ptr, ptr %buffer, align 8, !tbaa !4
  %73 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub82 = sub nsw i64 %73, 1
  %74 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv83 = sext i32 %74 to i64
  %call84 = call double @NI_Select(ptr noundef %72, i64 noundef 0, i64 noundef %sub82, i64 noundef %conv83)
  %conv85 = fptoui double %call84 to i8
  %conv86 = uitofp i8 %conv85 to double
  store double %conv86, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii61) #8
  br label %sw.epilog

sw.bb87:                                          ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii88) #8
  store i64 0, ptr %_ii88, align 8, !tbaa !13
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc106, %sw.bb87
  %75 = load i64, ptr %_ii88, align 8, !tbaa !13
  %76 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp90 = icmp slt i64 %75, %76
  br i1 %cmp90, label %for.body92, label %for.end108

for.body92:                                       ; preds = %for.cond89
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset93) #8
  %77 = load ptr, ptr %oo, align 8, !tbaa !4
  %78 = load i64, ptr %_ii88, align 8, !tbaa !13
  %arrayidx94 = getelementptr inbounds i64, ptr %77, i64 %78
  %79 = load i64, ptr %arrayidx94, align 8, !tbaa !13
  store i64 %79, ptr %_offset93, align 8, !tbaa !13
  %80 = load i64, ptr %_offset93, align 8, !tbaa !13
  %81 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp95 = icmp eq i64 %80, %81
  br i1 %cmp95, label %if.then97, label %if.else101

if.then97:                                        ; preds = %for.body92
  %82 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv98 = fptoui double %82 to i16
  %conv99 = uitofp i16 %conv98 to double
  %83 = load ptr, ptr %buffer, align 8, !tbaa !4
  %84 = load i64, ptr %_ii88, align 8, !tbaa !13
  %arrayidx100 = getelementptr inbounds double, ptr %83, i64 %84
  store double %conv99, ptr %arrayidx100, align 8, !tbaa !11
  br label %if.end105

if.else101:                                       ; preds = %for.body92
  %85 = load ptr, ptr %pi, align 8, !tbaa !4
  %86 = load i64, ptr %_offset93, align 8, !tbaa !13
  %add.ptr102 = getelementptr inbounds i8, ptr %85, i64 %86
  %87 = load i16, ptr %add.ptr102, align 2, !tbaa !26
  %conv103 = uitofp i16 %87 to double
  %88 = load ptr, ptr %buffer, align 8, !tbaa !4
  %89 = load i64, ptr %_ii88, align 8, !tbaa !13
  %arrayidx104 = getelementptr inbounds double, ptr %88, i64 %89
  store double %conv103, ptr %arrayidx104, align 8, !tbaa !11
  br label %if.end105

if.end105:                                        ; preds = %if.else101, %if.then97
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset93) #8
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %90 = load i64, ptr %_ii88, align 8, !tbaa !13
  %inc107 = add nsw i64 %90, 1
  store i64 %inc107, ptr %_ii88, align 8, !tbaa !13
  br label %for.cond89

for.end108:                                       ; preds = %for.cond89
  %91 = load ptr, ptr %buffer, align 8, !tbaa !4
  %92 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub109 = sub nsw i64 %92, 1
  %93 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv110 = sext i32 %93 to i64
  %call111 = call double @NI_Select(ptr noundef %91, i64 noundef 0, i64 noundef %sub109, i64 noundef %conv110)
  %conv112 = fptoui double %call111 to i16
  %conv113 = uitofp i16 %conv112 to double
  store double %conv113, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii88) #8
  br label %sw.epilog

sw.bb114:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii115) #8
  store i64 0, ptr %_ii115, align 8, !tbaa !13
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc133, %sw.bb114
  %94 = load i64, ptr %_ii115, align 8, !tbaa !13
  %95 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp117 = icmp slt i64 %94, %95
  br i1 %cmp117, label %for.body119, label %for.end135

for.body119:                                      ; preds = %for.cond116
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset120) #8
  %96 = load ptr, ptr %oo, align 8, !tbaa !4
  %97 = load i64, ptr %_ii115, align 8, !tbaa !13
  %arrayidx121 = getelementptr inbounds i64, ptr %96, i64 %97
  %98 = load i64, ptr %arrayidx121, align 8, !tbaa !13
  store i64 %98, ptr %_offset120, align 8, !tbaa !13
  %99 = load i64, ptr %_offset120, align 8, !tbaa !13
  %100 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp122 = icmp eq i64 %99, %100
  br i1 %cmp122, label %if.then124, label %if.else128

if.then124:                                       ; preds = %for.body119
  %101 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv125 = fptoui double %101 to i32
  %conv126 = uitofp i32 %conv125 to double
  %102 = load ptr, ptr %buffer, align 8, !tbaa !4
  %103 = load i64, ptr %_ii115, align 8, !tbaa !13
  %arrayidx127 = getelementptr inbounds double, ptr %102, i64 %103
  store double %conv126, ptr %arrayidx127, align 8, !tbaa !11
  br label %if.end132

if.else128:                                       ; preds = %for.body119
  %104 = load ptr, ptr %pi, align 8, !tbaa !4
  %105 = load i64, ptr %_offset120, align 8, !tbaa !13
  %add.ptr129 = getelementptr inbounds i8, ptr %104, i64 %105
  %106 = load i32, ptr %add.ptr129, align 4, !tbaa !8
  %conv130 = uitofp i32 %106 to double
  %107 = load ptr, ptr %buffer, align 8, !tbaa !4
  %108 = load i64, ptr %_ii115, align 8, !tbaa !13
  %arrayidx131 = getelementptr inbounds double, ptr %107, i64 %108
  store double %conv130, ptr %arrayidx131, align 8, !tbaa !11
  br label %if.end132

if.end132:                                        ; preds = %if.else128, %if.then124
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset120) #8
  br label %for.inc133

for.inc133:                                       ; preds = %if.end132
  %109 = load i64, ptr %_ii115, align 8, !tbaa !13
  %inc134 = add nsw i64 %109, 1
  store i64 %inc134, ptr %_ii115, align 8, !tbaa !13
  br label %for.cond116

for.end135:                                       ; preds = %for.cond116
  %110 = load ptr, ptr %buffer, align 8, !tbaa !4
  %111 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub136 = sub nsw i64 %111, 1
  %112 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv137 = sext i32 %112 to i64
  %call138 = call double @NI_Select(ptr noundef %110, i64 noundef 0, i64 noundef %sub136, i64 noundef %conv137)
  %conv139 = fptoui double %call138 to i32
  %conv140 = uitofp i32 %conv139 to double
  store double %conv140, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii115) #8
  br label %sw.epilog

sw.bb141:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii142) #8
  store i64 0, ptr %_ii142, align 8, !tbaa !13
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc160, %sw.bb141
  %113 = load i64, ptr %_ii142, align 8, !tbaa !13
  %114 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp144 = icmp slt i64 %113, %114
  br i1 %cmp144, label %for.body146, label %for.end162

for.body146:                                      ; preds = %for.cond143
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset147) #8
  %115 = load ptr, ptr %oo, align 8, !tbaa !4
  %116 = load i64, ptr %_ii142, align 8, !tbaa !13
  %arrayidx148 = getelementptr inbounds i64, ptr %115, i64 %116
  %117 = load i64, ptr %arrayidx148, align 8, !tbaa !13
  store i64 %117, ptr %_offset147, align 8, !tbaa !13
  %118 = load i64, ptr %_offset147, align 8, !tbaa !13
  %119 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp149 = icmp eq i64 %118, %119
  br i1 %cmp149, label %if.then151, label %if.else155

if.then151:                                       ; preds = %for.body146
  %120 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv152 = fptoui double %120 to i64
  %conv153 = uitofp i64 %conv152 to double
  %121 = load ptr, ptr %buffer, align 8, !tbaa !4
  %122 = load i64, ptr %_ii142, align 8, !tbaa !13
  %arrayidx154 = getelementptr inbounds double, ptr %121, i64 %122
  store double %conv153, ptr %arrayidx154, align 8, !tbaa !11
  br label %if.end159

if.else155:                                       ; preds = %for.body146
  %123 = load ptr, ptr %pi, align 8, !tbaa !4
  %124 = load i64, ptr %_offset147, align 8, !tbaa !13
  %add.ptr156 = getelementptr inbounds i8, ptr %123, i64 %124
  %125 = load i64, ptr %add.ptr156, align 8, !tbaa !13
  %conv157 = uitofp i64 %125 to double
  %126 = load ptr, ptr %buffer, align 8, !tbaa !4
  %127 = load i64, ptr %_ii142, align 8, !tbaa !13
  %arrayidx158 = getelementptr inbounds double, ptr %126, i64 %127
  store double %conv157, ptr %arrayidx158, align 8, !tbaa !11
  br label %if.end159

if.end159:                                        ; preds = %if.else155, %if.then151
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset147) #8
  br label %for.inc160

for.inc160:                                       ; preds = %if.end159
  %128 = load i64, ptr %_ii142, align 8, !tbaa !13
  %inc161 = add nsw i64 %128, 1
  store i64 %inc161, ptr %_ii142, align 8, !tbaa !13
  br label %for.cond143

for.end162:                                       ; preds = %for.cond143
  %129 = load ptr, ptr %buffer, align 8, !tbaa !4
  %130 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub163 = sub nsw i64 %130, 1
  %131 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv164 = sext i32 %131 to i64
  %call165 = call double @NI_Select(ptr noundef %129, i64 noundef 0, i64 noundef %sub163, i64 noundef %conv164)
  %conv166 = fptoui double %call165 to i64
  %conv167 = uitofp i64 %conv166 to double
  store double %conv167, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii142) #8
  br label %sw.epilog

sw.bb168:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii169) #8
  store i64 0, ptr %_ii169, align 8, !tbaa !13
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc187, %sw.bb168
  %132 = load i64, ptr %_ii169, align 8, !tbaa !13
  %133 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp171 = icmp slt i64 %132, %133
  br i1 %cmp171, label %for.body173, label %for.end189

for.body173:                                      ; preds = %for.cond170
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset174) #8
  %134 = load ptr, ptr %oo, align 8, !tbaa !4
  %135 = load i64, ptr %_ii169, align 8, !tbaa !13
  %arrayidx175 = getelementptr inbounds i64, ptr %134, i64 %135
  %136 = load i64, ptr %arrayidx175, align 8, !tbaa !13
  store i64 %136, ptr %_offset174, align 8, !tbaa !13
  %137 = load i64, ptr %_offset174, align 8, !tbaa !13
  %138 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp176 = icmp eq i64 %137, %138
  br i1 %cmp176, label %if.then178, label %if.else182

if.then178:                                       ; preds = %for.body173
  %139 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv179 = fptoui double %139 to i64
  %conv180 = uitofp i64 %conv179 to double
  %140 = load ptr, ptr %buffer, align 8, !tbaa !4
  %141 = load i64, ptr %_ii169, align 8, !tbaa !13
  %arrayidx181 = getelementptr inbounds double, ptr %140, i64 %141
  store double %conv180, ptr %arrayidx181, align 8, !tbaa !11
  br label %if.end186

if.else182:                                       ; preds = %for.body173
  %142 = load ptr, ptr %pi, align 8, !tbaa !4
  %143 = load i64, ptr %_offset174, align 8, !tbaa !13
  %add.ptr183 = getelementptr inbounds i8, ptr %142, i64 %143
  %144 = load i64, ptr %add.ptr183, align 8, !tbaa !28
  %conv184 = uitofp i64 %144 to double
  %145 = load ptr, ptr %buffer, align 8, !tbaa !4
  %146 = load i64, ptr %_ii169, align 8, !tbaa !13
  %arrayidx185 = getelementptr inbounds double, ptr %145, i64 %146
  store double %conv184, ptr %arrayidx185, align 8, !tbaa !11
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then178
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset174) #8
  br label %for.inc187

for.inc187:                                       ; preds = %if.end186
  %147 = load i64, ptr %_ii169, align 8, !tbaa !13
  %inc188 = add nsw i64 %147, 1
  store i64 %inc188, ptr %_ii169, align 8, !tbaa !13
  br label %for.cond170

for.end189:                                       ; preds = %for.cond170
  %148 = load ptr, ptr %buffer, align 8, !tbaa !4
  %149 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub190 = sub nsw i64 %149, 1
  %150 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv191 = sext i32 %150 to i64
  %call192 = call double @NI_Select(ptr noundef %148, i64 noundef 0, i64 noundef %sub190, i64 noundef %conv191)
  %conv193 = fptoui double %call192 to i64
  %conv194 = uitofp i64 %conv193 to double
  store double %conv194, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii169) #8
  br label %sw.epilog

sw.bb195:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii196) #8
  store i64 0, ptr %_ii196, align 8, !tbaa !13
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc214, %sw.bb195
  %151 = load i64, ptr %_ii196, align 8, !tbaa !13
  %152 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp198 = icmp slt i64 %151, %152
  br i1 %cmp198, label %for.body200, label %for.end216

for.body200:                                      ; preds = %for.cond197
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset201) #8
  %153 = load ptr, ptr %oo, align 8, !tbaa !4
  %154 = load i64, ptr %_ii196, align 8, !tbaa !13
  %arrayidx202 = getelementptr inbounds i64, ptr %153, i64 %154
  %155 = load i64, ptr %arrayidx202, align 8, !tbaa !13
  store i64 %155, ptr %_offset201, align 8, !tbaa !13
  %156 = load i64, ptr %_offset201, align 8, !tbaa !13
  %157 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp203 = icmp eq i64 %156, %157
  br i1 %cmp203, label %if.then205, label %if.else209

if.then205:                                       ; preds = %for.body200
  %158 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv206 = fptosi double %158 to i8
  %conv207 = sitofp i8 %conv206 to double
  %159 = load ptr, ptr %buffer, align 8, !tbaa !4
  %160 = load i64, ptr %_ii196, align 8, !tbaa !13
  %arrayidx208 = getelementptr inbounds double, ptr %159, i64 %160
  store double %conv207, ptr %arrayidx208, align 8, !tbaa !11
  br label %if.end213

if.else209:                                       ; preds = %for.body200
  %161 = load ptr, ptr %pi, align 8, !tbaa !4
  %162 = load i64, ptr %_offset201, align 8, !tbaa !13
  %add.ptr210 = getelementptr inbounds i8, ptr %161, i64 %162
  %163 = load i8, ptr %add.ptr210, align 1, !tbaa !10
  %conv211 = sitofp i8 %163 to double
  %164 = load ptr, ptr %buffer, align 8, !tbaa !4
  %165 = load i64, ptr %_ii196, align 8, !tbaa !13
  %arrayidx212 = getelementptr inbounds double, ptr %164, i64 %165
  store double %conv211, ptr %arrayidx212, align 8, !tbaa !11
  br label %if.end213

if.end213:                                        ; preds = %if.else209, %if.then205
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset201) #8
  br label %for.inc214

for.inc214:                                       ; preds = %if.end213
  %166 = load i64, ptr %_ii196, align 8, !tbaa !13
  %inc215 = add nsw i64 %166, 1
  store i64 %inc215, ptr %_ii196, align 8, !tbaa !13
  br label %for.cond197

for.end216:                                       ; preds = %for.cond197
  %167 = load ptr, ptr %buffer, align 8, !tbaa !4
  %168 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub217 = sub nsw i64 %168, 1
  %169 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv218 = sext i32 %169 to i64
  %call219 = call double @NI_Select(ptr noundef %167, i64 noundef 0, i64 noundef %sub217, i64 noundef %conv218)
  %conv220 = fptosi double %call219 to i8
  %conv221 = sitofp i8 %conv220 to double
  store double %conv221, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii196) #8
  br label %sw.epilog

sw.bb222:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii223) #8
  store i64 0, ptr %_ii223, align 8, !tbaa !13
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc241, %sw.bb222
  %170 = load i64, ptr %_ii223, align 8, !tbaa !13
  %171 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp225 = icmp slt i64 %170, %171
  br i1 %cmp225, label %for.body227, label %for.end243

for.body227:                                      ; preds = %for.cond224
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset228) #8
  %172 = load ptr, ptr %oo, align 8, !tbaa !4
  %173 = load i64, ptr %_ii223, align 8, !tbaa !13
  %arrayidx229 = getelementptr inbounds i64, ptr %172, i64 %173
  %174 = load i64, ptr %arrayidx229, align 8, !tbaa !13
  store i64 %174, ptr %_offset228, align 8, !tbaa !13
  %175 = load i64, ptr %_offset228, align 8, !tbaa !13
  %176 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp230 = icmp eq i64 %175, %176
  br i1 %cmp230, label %if.then232, label %if.else236

if.then232:                                       ; preds = %for.body227
  %177 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv233 = fptosi double %177 to i16
  %conv234 = sitofp i16 %conv233 to double
  %178 = load ptr, ptr %buffer, align 8, !tbaa !4
  %179 = load i64, ptr %_ii223, align 8, !tbaa !13
  %arrayidx235 = getelementptr inbounds double, ptr %178, i64 %179
  store double %conv234, ptr %arrayidx235, align 8, !tbaa !11
  br label %if.end240

if.else236:                                       ; preds = %for.body227
  %180 = load ptr, ptr %pi, align 8, !tbaa !4
  %181 = load i64, ptr %_offset228, align 8, !tbaa !13
  %add.ptr237 = getelementptr inbounds i8, ptr %180, i64 %181
  %182 = load i16, ptr %add.ptr237, align 2, !tbaa !26
  %conv238 = sitofp i16 %182 to double
  %183 = load ptr, ptr %buffer, align 8, !tbaa !4
  %184 = load i64, ptr %_ii223, align 8, !tbaa !13
  %arrayidx239 = getelementptr inbounds double, ptr %183, i64 %184
  store double %conv238, ptr %arrayidx239, align 8, !tbaa !11
  br label %if.end240

if.end240:                                        ; preds = %if.else236, %if.then232
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset228) #8
  br label %for.inc241

for.inc241:                                       ; preds = %if.end240
  %185 = load i64, ptr %_ii223, align 8, !tbaa !13
  %inc242 = add nsw i64 %185, 1
  store i64 %inc242, ptr %_ii223, align 8, !tbaa !13
  br label %for.cond224

for.end243:                                       ; preds = %for.cond224
  %186 = load ptr, ptr %buffer, align 8, !tbaa !4
  %187 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub244 = sub nsw i64 %187, 1
  %188 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv245 = sext i32 %188 to i64
  %call246 = call double @NI_Select(ptr noundef %186, i64 noundef 0, i64 noundef %sub244, i64 noundef %conv245)
  %conv247 = fptosi double %call246 to i16
  %conv248 = sitofp i16 %conv247 to double
  store double %conv248, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii223) #8
  br label %sw.epilog

sw.bb249:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii250) #8
  store i64 0, ptr %_ii250, align 8, !tbaa !13
  br label %for.cond251

for.cond251:                                      ; preds = %for.inc268, %sw.bb249
  %189 = load i64, ptr %_ii250, align 8, !tbaa !13
  %190 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp252 = icmp slt i64 %189, %190
  br i1 %cmp252, label %for.body254, label %for.end270

for.body254:                                      ; preds = %for.cond251
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset255) #8
  %191 = load ptr, ptr %oo, align 8, !tbaa !4
  %192 = load i64, ptr %_ii250, align 8, !tbaa !13
  %arrayidx256 = getelementptr inbounds i64, ptr %191, i64 %192
  %193 = load i64, ptr %arrayidx256, align 8, !tbaa !13
  store i64 %193, ptr %_offset255, align 8, !tbaa !13
  %194 = load i64, ptr %_offset255, align 8, !tbaa !13
  %195 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp257 = icmp eq i64 %194, %195
  br i1 %cmp257, label %if.then259, label %if.else263

if.then259:                                       ; preds = %for.body254
  %196 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv260 = fptosi double %196 to i32
  %conv261 = sitofp i32 %conv260 to double
  %197 = load ptr, ptr %buffer, align 8, !tbaa !4
  %198 = load i64, ptr %_ii250, align 8, !tbaa !13
  %arrayidx262 = getelementptr inbounds double, ptr %197, i64 %198
  store double %conv261, ptr %arrayidx262, align 8, !tbaa !11
  br label %if.end267

if.else263:                                       ; preds = %for.body254
  %199 = load ptr, ptr %pi, align 8, !tbaa !4
  %200 = load i64, ptr %_offset255, align 8, !tbaa !13
  %add.ptr264 = getelementptr inbounds i8, ptr %199, i64 %200
  %201 = load i32, ptr %add.ptr264, align 4, !tbaa !8
  %conv265 = sitofp i32 %201 to double
  %202 = load ptr, ptr %buffer, align 8, !tbaa !4
  %203 = load i64, ptr %_ii250, align 8, !tbaa !13
  %arrayidx266 = getelementptr inbounds double, ptr %202, i64 %203
  store double %conv265, ptr %arrayidx266, align 8, !tbaa !11
  br label %if.end267

if.end267:                                        ; preds = %if.else263, %if.then259
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset255) #8
  br label %for.inc268

for.inc268:                                       ; preds = %if.end267
  %204 = load i64, ptr %_ii250, align 8, !tbaa !13
  %inc269 = add nsw i64 %204, 1
  store i64 %inc269, ptr %_ii250, align 8, !tbaa !13
  br label %for.cond251

for.end270:                                       ; preds = %for.cond251
  %205 = load ptr, ptr %buffer, align 8, !tbaa !4
  %206 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub271 = sub nsw i64 %206, 1
  %207 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv272 = sext i32 %207 to i64
  %call273 = call double @NI_Select(ptr noundef %205, i64 noundef 0, i64 noundef %sub271, i64 noundef %conv272)
  %conv274 = fptosi double %call273 to i32
  %conv275 = sitofp i32 %conv274 to double
  store double %conv275, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii250) #8
  br label %sw.epilog

sw.bb276:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii277) #8
  store i64 0, ptr %_ii277, align 8, !tbaa !13
  br label %for.cond278

for.cond278:                                      ; preds = %for.inc295, %sw.bb276
  %208 = load i64, ptr %_ii277, align 8, !tbaa !13
  %209 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp279 = icmp slt i64 %208, %209
  br i1 %cmp279, label %for.body281, label %for.end297

for.body281:                                      ; preds = %for.cond278
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset282) #8
  %210 = load ptr, ptr %oo, align 8, !tbaa !4
  %211 = load i64, ptr %_ii277, align 8, !tbaa !13
  %arrayidx283 = getelementptr inbounds i64, ptr %210, i64 %211
  %212 = load i64, ptr %arrayidx283, align 8, !tbaa !13
  store i64 %212, ptr %_offset282, align 8, !tbaa !13
  %213 = load i64, ptr %_offset282, align 8, !tbaa !13
  %214 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp284 = icmp eq i64 %213, %214
  br i1 %cmp284, label %if.then286, label %if.else290

if.then286:                                       ; preds = %for.body281
  %215 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv287 = fptosi double %215 to i64
  %conv288 = sitofp i64 %conv287 to double
  %216 = load ptr, ptr %buffer, align 8, !tbaa !4
  %217 = load i64, ptr %_ii277, align 8, !tbaa !13
  %arrayidx289 = getelementptr inbounds double, ptr %216, i64 %217
  store double %conv288, ptr %arrayidx289, align 8, !tbaa !11
  br label %if.end294

if.else290:                                       ; preds = %for.body281
  %218 = load ptr, ptr %pi, align 8, !tbaa !4
  %219 = load i64, ptr %_offset282, align 8, !tbaa !13
  %add.ptr291 = getelementptr inbounds i8, ptr %218, i64 %219
  %220 = load i64, ptr %add.ptr291, align 8, !tbaa !13
  %conv292 = sitofp i64 %220 to double
  %221 = load ptr, ptr %buffer, align 8, !tbaa !4
  %222 = load i64, ptr %_ii277, align 8, !tbaa !13
  %arrayidx293 = getelementptr inbounds double, ptr %221, i64 %222
  store double %conv292, ptr %arrayidx293, align 8, !tbaa !11
  br label %if.end294

if.end294:                                        ; preds = %if.else290, %if.then286
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset282) #8
  br label %for.inc295

for.inc295:                                       ; preds = %if.end294
  %223 = load i64, ptr %_ii277, align 8, !tbaa !13
  %inc296 = add nsw i64 %223, 1
  store i64 %inc296, ptr %_ii277, align 8, !tbaa !13
  br label %for.cond278

for.end297:                                       ; preds = %for.cond278
  %224 = load ptr, ptr %buffer, align 8, !tbaa !4
  %225 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub298 = sub nsw i64 %225, 1
  %226 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv299 = sext i32 %226 to i64
  %call300 = call double @NI_Select(ptr noundef %224, i64 noundef 0, i64 noundef %sub298, i64 noundef %conv299)
  %conv301 = fptosi double %call300 to i64
  %conv302 = sitofp i64 %conv301 to double
  store double %conv302, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii277) #8
  br label %sw.epilog

sw.bb303:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii304) #8
  store i64 0, ptr %_ii304, align 8, !tbaa !13
  br label %for.cond305

for.cond305:                                      ; preds = %for.inc322, %sw.bb303
  %227 = load i64, ptr %_ii304, align 8, !tbaa !13
  %228 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp306 = icmp slt i64 %227, %228
  br i1 %cmp306, label %for.body308, label %for.end324

for.body308:                                      ; preds = %for.cond305
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset309) #8
  %229 = load ptr, ptr %oo, align 8, !tbaa !4
  %230 = load i64, ptr %_ii304, align 8, !tbaa !13
  %arrayidx310 = getelementptr inbounds i64, ptr %229, i64 %230
  %231 = load i64, ptr %arrayidx310, align 8, !tbaa !13
  store i64 %231, ptr %_offset309, align 8, !tbaa !13
  %232 = load i64, ptr %_offset309, align 8, !tbaa !13
  %233 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp311 = icmp eq i64 %232, %233
  br i1 %cmp311, label %if.then313, label %if.else317

if.then313:                                       ; preds = %for.body308
  %234 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv314 = fptosi double %234 to i64
  %conv315 = sitofp i64 %conv314 to double
  %235 = load ptr, ptr %buffer, align 8, !tbaa !4
  %236 = load i64, ptr %_ii304, align 8, !tbaa !13
  %arrayidx316 = getelementptr inbounds double, ptr %235, i64 %236
  store double %conv315, ptr %arrayidx316, align 8, !tbaa !11
  br label %if.end321

if.else317:                                       ; preds = %for.body308
  %237 = load ptr, ptr %pi, align 8, !tbaa !4
  %238 = load i64, ptr %_offset309, align 8, !tbaa !13
  %add.ptr318 = getelementptr inbounds i8, ptr %237, i64 %238
  %239 = load i64, ptr %add.ptr318, align 8, !tbaa !28
  %conv319 = sitofp i64 %239 to double
  %240 = load ptr, ptr %buffer, align 8, !tbaa !4
  %241 = load i64, ptr %_ii304, align 8, !tbaa !13
  %arrayidx320 = getelementptr inbounds double, ptr %240, i64 %241
  store double %conv319, ptr %arrayidx320, align 8, !tbaa !11
  br label %if.end321

if.end321:                                        ; preds = %if.else317, %if.then313
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset309) #8
  br label %for.inc322

for.inc322:                                       ; preds = %if.end321
  %242 = load i64, ptr %_ii304, align 8, !tbaa !13
  %inc323 = add nsw i64 %242, 1
  store i64 %inc323, ptr %_ii304, align 8, !tbaa !13
  br label %for.cond305

for.end324:                                       ; preds = %for.cond305
  %243 = load ptr, ptr %buffer, align 8, !tbaa !4
  %244 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub325 = sub nsw i64 %244, 1
  %245 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv326 = sext i32 %245 to i64
  %call327 = call double @NI_Select(ptr noundef %243, i64 noundef 0, i64 noundef %sub325, i64 noundef %conv326)
  %conv328 = fptosi double %call327 to i64
  %conv329 = sitofp i64 %conv328 to double
  store double %conv329, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii304) #8
  br label %sw.epilog

sw.bb330:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii331) #8
  store i64 0, ptr %_ii331, align 8, !tbaa !13
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc349, %sw.bb330
  %246 = load i64, ptr %_ii331, align 8, !tbaa !13
  %247 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp333 = icmp slt i64 %246, %247
  br i1 %cmp333, label %for.body335, label %for.end351

for.body335:                                      ; preds = %for.cond332
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset336) #8
  %248 = load ptr, ptr %oo, align 8, !tbaa !4
  %249 = load i64, ptr %_ii331, align 8, !tbaa !13
  %arrayidx337 = getelementptr inbounds i64, ptr %248, i64 %249
  %250 = load i64, ptr %arrayidx337, align 8, !tbaa !13
  store i64 %250, ptr %_offset336, align 8, !tbaa !13
  %251 = load i64, ptr %_offset336, align 8, !tbaa !13
  %252 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp338 = icmp eq i64 %251, %252
  br i1 %cmp338, label %if.then340, label %if.else344

if.then340:                                       ; preds = %for.body335
  %253 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %conv341 = fptrunc double %253 to float
  %conv342 = fpext float %conv341 to double
  %254 = load ptr, ptr %buffer, align 8, !tbaa !4
  %255 = load i64, ptr %_ii331, align 8, !tbaa !13
  %arrayidx343 = getelementptr inbounds double, ptr %254, i64 %255
  store double %conv342, ptr %arrayidx343, align 8, !tbaa !11
  br label %if.end348

if.else344:                                       ; preds = %for.body335
  %256 = load ptr, ptr %pi, align 8, !tbaa !4
  %257 = load i64, ptr %_offset336, align 8, !tbaa !13
  %add.ptr345 = getelementptr inbounds i8, ptr %256, i64 %257
  %258 = load float, ptr %add.ptr345, align 4, !tbaa !30
  %conv346 = fpext float %258 to double
  %259 = load ptr, ptr %buffer, align 8, !tbaa !4
  %260 = load i64, ptr %_ii331, align 8, !tbaa !13
  %arrayidx347 = getelementptr inbounds double, ptr %259, i64 %260
  store double %conv346, ptr %arrayidx347, align 8, !tbaa !11
  br label %if.end348

if.end348:                                        ; preds = %if.else344, %if.then340
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset336) #8
  br label %for.inc349

for.inc349:                                       ; preds = %if.end348
  %261 = load i64, ptr %_ii331, align 8, !tbaa !13
  %inc350 = add nsw i64 %261, 1
  store i64 %inc350, ptr %_ii331, align 8, !tbaa !13
  br label %for.cond332

for.end351:                                       ; preds = %for.cond332
  %262 = load ptr, ptr %buffer, align 8, !tbaa !4
  %263 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub352 = sub nsw i64 %263, 1
  %264 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv353 = sext i32 %264 to i64
  %call354 = call double @NI_Select(ptr noundef %262, i64 noundef 0, i64 noundef %sub352, i64 noundef %conv353)
  %conv355 = fptrunc double %call354 to float
  %conv356 = fpext float %conv355 to double
  store double %conv356, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii331) #8
  br label %sw.epilog

sw.bb357:                                         ; preds = %for.body40
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii358) #8
  store i64 0, ptr %_ii358, align 8, !tbaa !13
  br label %for.cond359

for.cond359:                                      ; preds = %for.inc373, %sw.bb357
  %265 = load i64, ptr %_ii358, align 8, !tbaa !13
  %266 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp360 = icmp slt i64 %265, %266
  br i1 %cmp360, label %for.body362, label %for.end375

for.body362:                                      ; preds = %for.cond359
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset363) #8
  %267 = load ptr, ptr %oo, align 8, !tbaa !4
  %268 = load i64, ptr %_ii358, align 8, !tbaa !13
  %arrayidx364 = getelementptr inbounds i64, ptr %267, i64 %268
  %269 = load i64, ptr %arrayidx364, align 8, !tbaa !13
  store i64 %269, ptr %_offset363, align 8, !tbaa !13
  %270 = load i64, ptr %_offset363, align 8, !tbaa !13
  %271 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp365 = icmp eq i64 %270, %271
  br i1 %cmp365, label %if.then367, label %if.else369

if.then367:                                       ; preds = %for.body362
  %272 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %273 = load ptr, ptr %buffer, align 8, !tbaa !4
  %274 = load i64, ptr %_ii358, align 8, !tbaa !13
  %arrayidx368 = getelementptr inbounds double, ptr %273, i64 %274
  store double %272, ptr %arrayidx368, align 8, !tbaa !11
  br label %if.end372

if.else369:                                       ; preds = %for.body362
  %275 = load ptr, ptr %pi, align 8, !tbaa !4
  %276 = load i64, ptr %_offset363, align 8, !tbaa !13
  %add.ptr370 = getelementptr inbounds i8, ptr %275, i64 %276
  %277 = load double, ptr %add.ptr370, align 8, !tbaa !11
  %278 = load ptr, ptr %buffer, align 8, !tbaa !4
  %279 = load i64, ptr %_ii358, align 8, !tbaa !13
  %arrayidx371 = getelementptr inbounds double, ptr %278, i64 %279
  store double %277, ptr %arrayidx371, align 8, !tbaa !11
  br label %if.end372

if.end372:                                        ; preds = %if.else369, %if.then367
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset363) #8
  br label %for.inc373

for.inc373:                                       ; preds = %if.end372
  %280 = load i64, ptr %_ii358, align 8, !tbaa !13
  %inc374 = add nsw i64 %280, 1
  store i64 %inc374, ptr %_ii358, align 8, !tbaa !13
  br label %for.cond359

for.end375:                                       ; preds = %for.cond359
  %281 = load ptr, ptr %buffer, align 8, !tbaa !4
  %282 = load i64, ptr %filter_size, align 8, !tbaa !13
  %sub376 = sub nsw i64 %282, 1
  %283 = load i32, ptr %rank.addr, align 4, !tbaa !8
  %conv377 = sext i32 %283 to i64
  %call378 = call double @NI_Select(ptr noundef %281, i64 noundef 0, i64 noundef %sub376, i64 noundef %conv377)
  store double %call378, ptr %tmp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii358) #8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body40
  store i32 1, ptr %err, align 4, !tbaa !8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup521

sw.epilog:                                        ; preds = %for.end375, %for.end351, %for.end324, %for.end297, %for.end270, %for.end243, %for.end216, %for.end189, %for.end162, %for.end135, %for.end108, %for.end81, %for.end55
  %284 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call379 = call i32 @PyArray_TYPE(ptr noundef %284)
  switch i32 %call379, label %sw.default463 [
    i32 0, label %sw.bb380
    i32 2, label %sw.bb389
    i32 4, label %sw.bb403
    i32 6, label %sw.bb417
    i32 8, label %sw.bb428
    i32 10, label %sw.bb439
    i32 1, label %sw.bb450
    i32 3, label %sw.bb452
    i32 5, label %sw.bb454
    i32 7, label %sw.bb456
    i32 9, label %sw.bb458
    i32 11, label %sw.bb460
    i32 12, label %sw.bb462
  ]

sw.bb380:                                         ; preds = %sw.epilog
  %285 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp381 = fcmp ogt double %285, -1.000000e+00
  br i1 %cmp381, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb380
  %286 = load double, ptr %tmp, align 8, !tbaa !11
  %conv383 = fptoui double %286 to i8
  %conv384 = zext i8 %conv383 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb380
  %287 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg = fneg double %287
  %conv385 = fptoui double %fneg to i8
  %conv386 = zext i8 %conv385 to i32
  %sub387 = sub nsw i32 0, %conv386
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv384, %cond.true ], [ %sub387, %cond.false ]
  %conv388 = trunc i32 %cond to i8
  %288 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv388, ptr %288, align 1, !tbaa !10
  br label %sw.epilog464

sw.bb389:                                         ; preds = %sw.epilog
  %289 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp390 = fcmp ogt double %289, -1.000000e+00
  br i1 %cmp390, label %cond.true392, label %cond.false395

cond.true392:                                     ; preds = %sw.bb389
  %290 = load double, ptr %tmp, align 8, !tbaa !11
  %conv393 = fptoui double %290 to i8
  %conv394 = zext i8 %conv393 to i32
  br label %cond.end400

cond.false395:                                    ; preds = %sw.bb389
  %291 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg396 = fneg double %291
  %conv397 = fptoui double %fneg396 to i8
  %conv398 = zext i8 %conv397 to i32
  %sub399 = sub nsw i32 0, %conv398
  br label %cond.end400

cond.end400:                                      ; preds = %cond.false395, %cond.true392
  %cond401 = phi i32 [ %conv394, %cond.true392 ], [ %sub399, %cond.false395 ]
  %conv402 = trunc i32 %cond401 to i8
  %292 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv402, ptr %292, align 1, !tbaa !10
  br label %sw.epilog464

sw.bb403:                                         ; preds = %sw.epilog
  %293 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp404 = fcmp ogt double %293, -1.000000e+00
  br i1 %cmp404, label %cond.true406, label %cond.false409

cond.true406:                                     ; preds = %sw.bb403
  %294 = load double, ptr %tmp, align 8, !tbaa !11
  %conv407 = fptoui double %294 to i16
  %conv408 = zext i16 %conv407 to i32
  br label %cond.end414

cond.false409:                                    ; preds = %sw.bb403
  %295 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg410 = fneg double %295
  %conv411 = fptoui double %fneg410 to i16
  %conv412 = zext i16 %conv411 to i32
  %sub413 = sub nsw i32 0, %conv412
  br label %cond.end414

cond.end414:                                      ; preds = %cond.false409, %cond.true406
  %cond415 = phi i32 [ %conv408, %cond.true406 ], [ %sub413, %cond.false409 ]
  %conv416 = trunc i32 %cond415 to i16
  %296 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv416, ptr %296, align 2, !tbaa !26
  br label %sw.epilog464

sw.bb417:                                         ; preds = %sw.epilog
  %297 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp418 = fcmp ogt double %297, -1.000000e+00
  br i1 %cmp418, label %cond.true420, label %cond.false422

cond.true420:                                     ; preds = %sw.bb417
  %298 = load double, ptr %tmp, align 8, !tbaa !11
  %conv421 = fptoui double %298 to i32
  br label %cond.end426

cond.false422:                                    ; preds = %sw.bb417
  %299 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg423 = fneg double %299
  %conv424 = fptoui double %fneg423 to i32
  %sub425 = sub i32 0, %conv424
  br label %cond.end426

cond.end426:                                      ; preds = %cond.false422, %cond.true420
  %cond427 = phi i32 [ %conv421, %cond.true420 ], [ %sub425, %cond.false422 ]
  %300 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %cond427, ptr %300, align 4, !tbaa !8
  br label %sw.epilog464

sw.bb428:                                         ; preds = %sw.epilog
  %301 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp429 = fcmp ogt double %301, -1.000000e+00
  br i1 %cmp429, label %cond.true431, label %cond.false433

cond.true431:                                     ; preds = %sw.bb428
  %302 = load double, ptr %tmp, align 8, !tbaa !11
  %conv432 = fptoui double %302 to i64
  br label %cond.end437

cond.false433:                                    ; preds = %sw.bb428
  %303 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg434 = fneg double %303
  %conv435 = fptoui double %fneg434 to i64
  %sub436 = sub i64 0, %conv435
  br label %cond.end437

cond.end437:                                      ; preds = %cond.false433, %cond.true431
  %cond438 = phi i64 [ %conv432, %cond.true431 ], [ %sub436, %cond.false433 ]
  %304 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond438, ptr %304, align 8, !tbaa !13
  br label %sw.epilog464

sw.bb439:                                         ; preds = %sw.epilog
  %305 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp440 = fcmp ogt double %305, -1.000000e+00
  br i1 %cmp440, label %cond.true442, label %cond.false444

cond.true442:                                     ; preds = %sw.bb439
  %306 = load double, ptr %tmp, align 8, !tbaa !11
  %conv443 = fptoui double %306 to i64
  br label %cond.end448

cond.false444:                                    ; preds = %sw.bb439
  %307 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg445 = fneg double %307
  %conv446 = fptoui double %fneg445 to i64
  %sub447 = sub i64 0, %conv446
  br label %cond.end448

cond.end448:                                      ; preds = %cond.false444, %cond.true442
  %cond449 = phi i64 [ %conv443, %cond.true442 ], [ %sub447, %cond.false444 ]
  %308 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond449, ptr %308, align 8, !tbaa !28
  br label %sw.epilog464

sw.bb450:                                         ; preds = %sw.epilog
  %309 = load double, ptr %tmp, align 8, !tbaa !11
  %conv451 = fptosi double %309 to i8
  %310 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv451, ptr %310, align 1, !tbaa !10
  br label %sw.epilog464

sw.bb452:                                         ; preds = %sw.epilog
  %311 = load double, ptr %tmp, align 8, !tbaa !11
  %conv453 = fptosi double %311 to i16
  %312 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv453, ptr %312, align 2, !tbaa !26
  br label %sw.epilog464

sw.bb454:                                         ; preds = %sw.epilog
  %313 = load double, ptr %tmp, align 8, !tbaa !11
  %conv455 = fptosi double %313 to i32
  %314 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv455, ptr %314, align 4, !tbaa !8
  br label %sw.epilog464

sw.bb456:                                         ; preds = %sw.epilog
  %315 = load double, ptr %tmp, align 8, !tbaa !11
  %conv457 = fptosi double %315 to i64
  %316 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv457, ptr %316, align 8, !tbaa !13
  br label %sw.epilog464

sw.bb458:                                         ; preds = %sw.epilog
  %317 = load double, ptr %tmp, align 8, !tbaa !11
  %conv459 = fptosi double %317 to i64
  %318 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv459, ptr %318, align 8, !tbaa !28
  br label %sw.epilog464

sw.bb460:                                         ; preds = %sw.epilog
  %319 = load double, ptr %tmp, align 8, !tbaa !11
  %conv461 = fptrunc double %319 to float
  %320 = load ptr, ptr %po, align 8, !tbaa !4
  store float %conv461, ptr %320, align 4, !tbaa !30
  br label %sw.epilog464

sw.bb462:                                         ; preds = %sw.epilog
  %321 = load double, ptr %tmp, align 8, !tbaa !11
  %322 = load ptr, ptr %po, align 8, !tbaa !4
  store double %321, ptr %322, align 8, !tbaa !11
  br label %sw.epilog464

sw.default463:                                    ; preds = %sw.epilog
  store i32 1, ptr %err, align 4, !tbaa !8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup521

sw.epilog464:                                     ; preds = %sw.bb462, %sw.bb460, %sw.bb458, %sw.bb456, %sw.bb454, %sw.bb452, %sw.bb450, %cond.end448, %cond.end437, %cond.end426, %cond.end414, %cond.end400, %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ii465) #8
  %rank_m1 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 0
  %323 = load i32, ptr %rank_m1, align 8, !tbaa !32
  store i32 %323, ptr %_ii465, align 4, !tbaa !8
  br label %for.cond466

for.cond466:                                      ; preds = %for.inc519, %sw.epilog464
  %324 = load i32, ptr %_ii465, align 4, !tbaa !8
  %cmp467 = icmp sge i32 %324, 0
  br i1 %cmp467, label %for.body469, label %for.end520

for.body469:                                      ; preds = %for.cond466
  call void @llvm.lifetime.start.p0(i64 8, ptr %_pp) #8
  %coordinates = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %325 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom = sext i32 %325 to i64
  %arrayidx470 = getelementptr inbounds [32 x i64], ptr %coordinates, i64 0, i64 %idxprom
  %326 = load i64, ptr %arrayidx470, align 8, !tbaa !13
  store i64 %326, ptr %_pp, align 8, !tbaa !13
  %327 = load i64, ptr %_pp, align 8, !tbaa !13
  %dimensions = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 1
  %328 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom471 = sext i32 %328 to i64
  %arrayidx472 = getelementptr inbounds [32 x i64], ptr %dimensions, i64 0, i64 %idxprom471
  %329 = load i64, ptr %arrayidx472, align 8, !tbaa !13
  %cmp473 = icmp slt i64 %327, %329
  br i1 %cmp473, label %if.then475, label %if.else501

if.then475:                                       ; preds = %for.body469
  %330 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound1 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 2
  %331 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom476 = sext i32 %331 to i64
  %arrayidx477 = getelementptr inbounds [32 x i64], ptr %bound1, i64 0, i64 %idxprom476
  %332 = load i64, ptr %arrayidx477, align 8, !tbaa !13
  %cmp478 = icmp slt i64 %330, %332
  br i1 %cmp478, label %if.then484, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then475
  %333 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound2 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 3
  %334 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom480 = sext i32 %334 to i64
  %arrayidx481 = getelementptr inbounds [32 x i64], ptr %bound2, i64 0, i64 %idxprom480
  %335 = load i64, ptr %arrayidx481, align 8, !tbaa !13
  %cmp482 = icmp sge i64 %333, %335
  br i1 %cmp482, label %if.then484, label %if.end488

if.then484:                                       ; preds = %lor.lhs.false, %if.then475
  %strides = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 0
  %336 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom485 = sext i32 %336 to i64
  %arrayidx486 = getelementptr inbounds [32 x i64], ptr %strides, i64 0, i64 %idxprom485
  %337 = load i64, ptr %arrayidx486, align 8, !tbaa !13
  %338 = load ptr, ptr %oo, align 8, !tbaa !4
  %add.ptr487 = getelementptr inbounds i64, ptr %338, i64 %337
  store ptr %add.ptr487, ptr %oo, align 8, !tbaa !4
  br label %if.end488

if.end488:                                        ; preds = %if.then484, %lor.lhs.false
  %coordinates489 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %339 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom490 = sext i32 %339 to i64
  %arrayidx491 = getelementptr inbounds [32 x i64], ptr %coordinates489, i64 0, i64 %idxprom490
  %340 = load i64, ptr %arrayidx491, align 8, !tbaa !13
  %inc492 = add nsw i64 %340, 1
  store i64 %inc492, ptr %arrayidx491, align 8, !tbaa !13
  %strides493 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 3
  %341 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom494 = sext i32 %341 to i64
  %arrayidx495 = getelementptr inbounds [32 x i64], ptr %strides493, i64 0, i64 %idxprom494
  %342 = load i64, ptr %arrayidx495, align 8, !tbaa !13
  %343 = load ptr, ptr %pi, align 8, !tbaa !4
  %add.ptr496 = getelementptr inbounds i8, ptr %343, i64 %342
  store ptr %add.ptr496, ptr %pi, align 8, !tbaa !4
  %strides497 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 3
  %344 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom498 = sext i32 %344 to i64
  %arrayidx499 = getelementptr inbounds [32 x i64], ptr %strides497, i64 0, i64 %idxprom498
  %345 = load i64, ptr %arrayidx499, align 8, !tbaa !13
  %346 = load ptr, ptr %po, align 8, !tbaa !4
  %add.ptr500 = getelementptr inbounds i8, ptr %346, i64 %345
  store ptr %add.ptr500, ptr %po, align 8, !tbaa !4
  store i32 52, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else501:                                       ; preds = %for.body469
  %coordinates502 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %347 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom503 = sext i32 %347 to i64
  %arrayidx504 = getelementptr inbounds [32 x i64], ptr %coordinates502, i64 0, i64 %idxprom503
  store i64 0, ptr %arrayidx504, align 8, !tbaa !13
  %backstrides = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 4
  %348 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom505 = sext i32 %348 to i64
  %arrayidx506 = getelementptr inbounds [32 x i64], ptr %backstrides, i64 0, i64 %idxprom505
  %349 = load i64, ptr %arrayidx506, align 8, !tbaa !13
  %350 = load ptr, ptr %pi, align 8, !tbaa !4
  %idx.neg = sub i64 0, %349
  %add.ptr507 = getelementptr inbounds i8, ptr %350, i64 %idx.neg
  store ptr %add.ptr507, ptr %pi, align 8, !tbaa !4
  %backstrides508 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 4
  %351 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom509 = sext i32 %351 to i64
  %arrayidx510 = getelementptr inbounds [32 x i64], ptr %backstrides508, i64 0, i64 %idxprom509
  %352 = load i64, ptr %arrayidx510, align 8, !tbaa !13
  %353 = load ptr, ptr %po, align 8, !tbaa !4
  %idx.neg511 = sub i64 0, %352
  %add.ptr512 = getelementptr inbounds i8, ptr %353, i64 %idx.neg511
  store ptr %add.ptr512, ptr %po, align 8, !tbaa !4
  %backstrides513 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 1
  %354 = load i32, ptr %_ii465, align 4, !tbaa !8
  %idxprom514 = sext i32 %354 to i64
  %arrayidx515 = getelementptr inbounds [32 x i64], ptr %backstrides513, i64 0, i64 %idxprom514
  %355 = load i64, ptr %arrayidx515, align 8, !tbaa !13
  %356 = load ptr, ptr %oo, align 8, !tbaa !4
  %idx.neg516 = sub i64 0, %355
  %add.ptr517 = getelementptr inbounds i64, ptr %356, i64 %idx.neg516
  store ptr %add.ptr517, ptr %oo, align 8, !tbaa !4
  br label %if.end518

if.end518:                                        ; preds = %if.else501
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end518, %if.end488
  call void @llvm.lifetime.end.p0(i64 8, ptr %_pp) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 52, label %for.end520
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc519

for.inc519:                                       ; preds = %cleanup.cont
  %357 = load i32, ptr %_ii465, align 4, !tbaa !8
  %dec = add nsw i32 %357, -1
  store i32 %dec, ptr %_ii465, align 4, !tbaa !8
  br label %for.cond466

for.end520:                                       ; preds = %cleanup, %for.cond466
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ii465) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup521

cleanup521:                                       ; preds = %sw.default463, %sw.default, %for.end520
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  %cleanup.dest522 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest522, label %cleanup540 [
    i32 0, label %cleanup.cont523
    i32 5, label %exit
  ]

cleanup.cont523:                                  ; preds = %cleanup521
  br label %for.inc524

for.inc524:                                       ; preds = %cleanup.cont523
  %358 = load i64, ptr %jj, align 8, !tbaa !13
  %inc525 = add nsw i64 %358, 1
  store i64 %inc525, ptr %jj, align 8, !tbaa !13
  br label %for.cond38

for.end526:                                       ; preds = %for.cond38
  br label %exit

exit:                                             ; preds = %for.end526, %cleanup521, %if.then29, %if.then25, %if.then21, %if.then14, %if.then8
  br label %do.body527

do.body527:                                       ; preds = %exit
  %359 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool528 = icmp ne ptr %359, null
  br i1 %tobool528, label %if.then529, label %if.end530

if.then529:                                       ; preds = %do.body527
  %360 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %360)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end530

if.end530:                                        ; preds = %if.then529, %do.body527
  br label %do.cond531

do.cond531:                                       ; preds = %if.end530
  br label %do.end532

do.end532:                                        ; preds = %do.cond531
  %361 = load i32, ptr %err, align 4, !tbaa !8
  %cmp533 = icmp eq i32 %361, 1
  br i1 %cmp533, label %if.then535, label %if.end536

if.then535:                                       ; preds = %do.end532
  %362 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %362, ptr noundef @.str)
  br label %if.end536

if.end536:                                        ; preds = %if.then535, %do.end532
  %363 = load ptr, ptr %offsets, align 8, !tbaa !4
  call void @free(ptr noundef %363) #8
  %364 = load ptr, ptr %buffer, align 8, !tbaa !4
  call void @free(ptr noundef %364) #8
  %call537 = call ptr @PyErr_Occurred()
  %tobool538 = icmp ne ptr %call537, null
  %365 = zext i1 %tobool538 to i64
  %cond539 = select i1 %tobool538, i32 0, i32 1
  store i32 %cond539, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup540

cleanup540:                                       ; preds = %if.end536, %cleanup521
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %offsets) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %filter_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsize) #8
  %366 = load i32, ptr %retval, align 4
  ret i32 %366

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal double @NI_Select(ptr noundef %buffer, i64 noundef %min, i64 noundef %max, i64 noundef %rank) #0 {
entry:
  %retval = alloca double, align 8
  %buffer.addr = alloca ptr, align 8
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %rank.addr = alloca i64, align 8
  %ii = alloca i64, align 8
  %jj = alloca i64, align 8
  %x = alloca double, align 8
  %t = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !4
  store i64 %min, ptr %min.addr, align 8, !tbaa !13
  store i64 %max, ptr %max.addr, align 8, !tbaa !13
  store i64 %rank, ptr %rank.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  %0 = load i64, ptr %min.addr, align 8, !tbaa !13
  %1 = load i64, ptr %max.addr, align 8, !tbaa !13
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %3 = load i64, ptr %min.addr, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %3
  %4 = load double, ptr %arrayidx, align 8, !tbaa !11
  store double %4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %6 = load i64, ptr %min.addr, align 8, !tbaa !13
  %arrayidx1 = getelementptr inbounds double, ptr %5, i64 %6
  %7 = load double, ptr %arrayidx1, align 8, !tbaa !11
  store double %7, ptr %x, align 8, !tbaa !11
  %8 = load i64, ptr %min.addr, align 8, !tbaa !13
  %sub = sub nsw i64 %8, 1
  store i64 %sub, ptr %ii, align 8, !tbaa !13
  %9 = load i64, ptr %max.addr, align 8, !tbaa !13
  %add = add nsw i64 %9, 1
  store i64 %add, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.cond
  %10 = load i64, ptr %jj, align 8, !tbaa !13
  %dec = add nsw i64 %10, -1
  store i64 %dec, ptr %jj, align 8, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %12 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx2 = getelementptr inbounds double, ptr %11, i64 %12
  %13 = load double, ptr %arrayidx2, align 8, !tbaa !11
  %14 = load double, ptr %x, align 8, !tbaa !11
  %cmp3 = fcmp ogt double %13, %14
  br i1 %cmp3, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body4

do.body4:                                         ; preds = %do.cond5, %do.end
  %15 = load i64, ptr %ii, align 8, !tbaa !13
  %inc = add nsw i64 %15, 1
  store i64 %inc, ptr %ii, align 8, !tbaa !13
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  %16 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %17 = load i64, ptr %ii, align 8, !tbaa !13
  %arrayidx6 = getelementptr inbounds double, ptr %16, i64 %17
  %18 = load double, ptr %arrayidx6, align 8, !tbaa !11
  %19 = load double, ptr %x, align 8, !tbaa !11
  %cmp7 = fcmp olt double %18, %19
  br i1 %cmp7, label %do.body4, label %do.end8

do.end8:                                          ; preds = %do.cond5
  %20 = load i64, ptr %ii, align 8, !tbaa !13
  %21 = load i64, ptr %jj, align 8, !tbaa !13
  %cmp9 = icmp slt i64 %20, %21
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end8
  %22 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %23 = load i64, ptr %ii, align 8, !tbaa !13
  %arrayidx11 = getelementptr inbounds double, ptr %22, i64 %23
  %24 = load double, ptr %arrayidx11, align 8, !tbaa !11
  store double %24, ptr %t, align 8, !tbaa !11
  %25 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %26 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx12 = getelementptr inbounds double, ptr %25, i64 %26
  %27 = load double, ptr %arrayidx12, align 8, !tbaa !11
  %28 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %29 = load i64, ptr %ii, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds double, ptr %28, i64 %29
  store double %27, ptr %arrayidx13, align 8, !tbaa !11
  %30 = load double, ptr %t, align 8, !tbaa !11
  %31 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %32 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx14 = getelementptr inbounds double, ptr %31, i64 %32
  store double %30, ptr %arrayidx14, align 8, !tbaa !11
  br label %if.end15

if.else:                                          ; preds = %do.end8
  br label %for.end

if.end15:                                         ; preds = %if.then10
  br label %for.cond

for.end:                                          ; preds = %if.else
  %33 = load i64, ptr %jj, align 8, !tbaa !13
  %34 = load i64, ptr %min.addr, align 8, !tbaa !13
  %sub16 = sub nsw i64 %33, %34
  %add17 = add nsw i64 %sub16, 1
  store i64 %add17, ptr %ii, align 8, !tbaa !13
  %35 = load i64, ptr %rank.addr, align 8, !tbaa !13
  %36 = load i64, ptr %ii, align 8, !tbaa !13
  %cmp18 = icmp slt i64 %35, %36
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %for.end
  %37 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %38 = load i64, ptr %min.addr, align 8, !tbaa !13
  %39 = load i64, ptr %jj, align 8, !tbaa !13
  %40 = load i64, ptr %rank.addr, align 8, !tbaa !13
  %call = call double @NI_Select(ptr noundef %37, i64 noundef %38, i64 noundef %39, i64 noundef %40)
  store double %call, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else20:                                        ; preds = %for.end
  %41 = load ptr, ptr %buffer.addr, align 8, !tbaa !4
  %42 = load i64, ptr %jj, align 8, !tbaa !13
  %add21 = add nsw i64 %42, 1
  %43 = load i64, ptr %max.addr, align 8, !tbaa !13
  %44 = load i64, ptr %rank.addr, align 8, !tbaa !13
  %45 = load i64, ptr %ii, align 8, !tbaa !13
  %sub22 = sub nsw i64 %44, %45
  %call23 = call double @NI_Select(ptr noundef %41, i64 noundef %add21, i64 noundef %43, i64 noundef %sub22)
  store double %call23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #8
  %46 = load double, ptr %retval, align 8
  ret double %46
}

; Function Attrs: nounwind uwtable
define hidden i32 @NI_GenericFilter1D(ptr noundef %input, ptr noundef %function, ptr noundef %data, i64 noundef %filter_size, i32 noundef %axis, ptr noundef %output, i32 noundef %mode, double noundef %cval, i64 noundef %origin) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %function.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %filter_size.addr = alloca i64, align 8
  %axis.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cval.addr = alloca double, align 8
  %origin.addr = alloca i64, align 8
  %more = alloca i32, align 4
  %ii = alloca i64, align 8
  %lines = alloca i64, align 8
  %length = alloca i64, align 8
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  %ibuffer = alloca ptr, align 8
  %obuffer = alloca ptr, align 8
  %iline_buffer = alloca %struct.NI_LineBuffer, align 8
  %oline_buffer = alloca %struct.NI_LineBuffer, align 8
  %iline = alloca ptr, align 8
  %oline = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %function, ptr %function.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store i64 %filter_size, ptr %filter_size.addr, align 8, !tbaa !13
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cval, ptr %cval.addr, align 8, !tbaa !11
  store i64 %origin, ptr %origin.addr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %more) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %lines) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ibuffer) #8
  store ptr null, ptr %ibuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obuffer) #8
  store ptr null, ptr %obuffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.start.p0(i64 1120, ptr %oline_buffer) #8
  %0 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %div = sdiv i64 %0, 2
  store i64 %div, ptr %size1, align 8, !tbaa !13
  %1 = load i64, ptr %filter_size.addr, align 8, !tbaa !13
  %2 = load i64, ptr %size1, align 8, !tbaa !13
  %sub = sub nsw i64 %1, %2
  %sub1 = sub nsw i64 %sub, 1
  store i64 %sub1, ptr %size2, align 8, !tbaa !13
  store i64 -1, ptr %lines, align 8, !tbaa !13
  %3 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %4 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %5 = load i64, ptr %size1, align 8, !tbaa !13
  %6 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add = add nsw i64 %5, %6
  %7 = load i64, ptr %size2, align 8, !tbaa !13
  %8 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub2 = sub nsw i64 %7, %8
  %call = call i32 @NI_AllocateLineBuffer(ptr noundef %3, i32 noundef %4, i64 noundef %add, i64 noundef %sub2, ptr noundef %lines, i64 noundef 256000, ptr noundef %ibuffer)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %10 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call3 = call i32 @NI_AllocateLineBuffer(ptr noundef %9, i32 noundef %10, i64 noundef 0, i64 noundef 0, ptr noundef %lines, i64 noundef 256000, ptr noundef %obuffer)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  br label %exit

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %12 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %13 = load i64, ptr %size1, align 8, !tbaa !13
  %14 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %add7 = add nsw i64 %13, %14
  %15 = load i64, ptr %size2, align 8, !tbaa !13
  %16 = load i64, ptr %origin.addr, align 8, !tbaa !13
  %sub8 = sub nsw i64 %15, %16
  %17 = load i64, ptr %lines, align 8, !tbaa !13
  %18 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  %19 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %20 = load double, ptr %cval.addr, align 8, !tbaa !11
  %call9 = call i32 @NI_InitLineBuffer(ptr noundef %11, i32 noundef %12, i64 noundef %add7, i64 noundef %sub8, i64 noundef %17, ptr noundef %18, i32 noundef %19, double noundef %20, ptr noundef %iline_buffer)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end6
  br label %exit

if.end12:                                         ; preds = %if.end6
  %21 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %22 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %23 = load i64, ptr %lines, align 8, !tbaa !13
  %24 = load ptr, ptr %obuffer, align 8, !tbaa !4
  %25 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call13 = call i32 @NI_InitLineBuffer(ptr noundef %21, i32 noundef %22, i64 noundef 0, i64 noundef 0, i64 noundef %23, ptr noundef %24, i32 noundef %25, double noundef 0.000000e+00, ptr noundef %oline_buffer)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  br label %exit

if.end16:                                         ; preds = %if.end12
  %26 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call17 = call i32 @PyArray_NDIM(ptr noundef %26)
  %cmp = icmp sgt i32 %call17, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end16
  %27 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %28 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call18 = call i64 @PyArray_DIM(ptr noundef %27, i32 noundef %28)
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call18, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, ptr %length, align 8, !tbaa !13
  br label %do.body

do.body:                                          ; preds = %do.cond, %cond.end
  %call19 = call i32 @NI_ArrayToLineBuffer(ptr noundef %iline_buffer, ptr noundef %lines, ptr noundef %more)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.body
  br label %exit

if.end22:                                         ; preds = %do.body
  store i64 0, ptr %ii, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %29 = load i64, ptr %ii, align 8, !tbaa !13
  %30 = load i64, ptr %lines, align 8, !tbaa !13
  %cmp23 = icmp slt i64 %29, %30
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %iline) #8
  %buffer_data = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 0
  %31 = load ptr, ptr %buffer_data, align 8, !tbaa !15
  %32 = load i64, ptr %ii, align 8, !tbaa !13
  %line_length = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 2
  %33 = load i64, ptr %line_length, align 8, !tbaa !18
  %size124 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 4
  %34 = load i64, ptr %size124, align 8, !tbaa !19
  %add25 = add nsw i64 %33, %34
  %size226 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 5
  %35 = load i64, ptr %size226, align 8, !tbaa !20
  %add27 = add nsw i64 %add25, %35
  %mul = mul nsw i64 %32, %add27
  %add.ptr = getelementptr inbounds double, ptr %31, i64 %mul
  store ptr %add.ptr, ptr %iline, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oline) #8
  %buffer_data28 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 0
  %36 = load ptr, ptr %buffer_data28, align 8, !tbaa !15
  %37 = load i64, ptr %ii, align 8, !tbaa !13
  %line_length29 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 2
  %38 = load i64, ptr %line_length29, align 8, !tbaa !18
  %size130 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 4
  %39 = load i64, ptr %size130, align 8, !tbaa !19
  %add31 = add nsw i64 %38, %39
  %size232 = getelementptr inbounds %struct.NI_LineBuffer, ptr %oline_buffer, i32 0, i32 5
  %40 = load i64, ptr %size232, align 8, !tbaa !20
  %add33 = add nsw i64 %add31, %40
  %mul34 = mul nsw i64 %37, %add33
  %add.ptr35 = getelementptr inbounds double, ptr %36, i64 %mul34
  store ptr %add.ptr35, ptr %oline, align 8, !tbaa !4
  %41 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %iline, align 8, !tbaa !4
  %43 = load i64, ptr %length, align 8, !tbaa !13
  %44 = load i64, ptr %size1, align 8, !tbaa !13
  %add36 = add nsw i64 %43, %44
  %45 = load i64, ptr %size2, align 8, !tbaa !13
  %add37 = add nsw i64 %add36, %45
  %46 = load ptr, ptr %oline, align 8, !tbaa !4
  %47 = load i64, ptr %length, align 8, !tbaa !13
  %48 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call38 = call i32 %41(ptr noundef %42, i64 noundef %add37, ptr noundef %46, i64 noundef %47, ptr noundef %48)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end45, label %if.then40

if.then40:                                        ; preds = %for.body
  %call41 = call ptr @PyErr_Occurred()
  %tobool42 = icmp ne ptr %call41, null
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.then40
  %49 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %49, ptr noundef @.str.1)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then40
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end45
  call void @llvm.lifetime.end.p0(i64 8, ptr %oline) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %iline) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup55 [
    i32 0, label %cleanup.cont
    i32 2, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %50 = load i64, ptr %ii, align 8, !tbaa !13
  %inc = add nsw i64 %50, 1
  store i64 %inc, ptr %ii, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call47 = call i32 @NI_LineBufferToArray(ptr noundef %oline_buffer)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %for.end
  br label %exit

if.end50:                                         ; preds = %for.end
  br label %do.cond

do.cond:                                          ; preds = %if.end50
  %51 = load i32, ptr %more, align 4, !tbaa !8
  %tobool51 = icmp ne i32 %51, 0
  br i1 %tobool51, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

exit:                                             ; preds = %do.end, %cleanup, %if.then49, %if.then21, %if.then15, %if.then11, %if.then5, %if.then
  %52 = load ptr, ptr %ibuffer, align 8, !tbaa !4
  call void @free(ptr noundef %52) #8
  %53 = load ptr, ptr %obuffer, align 8, !tbaa !4
  call void @free(ptr noundef %53) #8
  %call52 = call ptr @PyErr_Occurred()
  %tobool53 = icmp ne ptr %call52, null
  %54 = zext i1 %tobool53 to i64
  %cond54 = select i1 %tobool53, i32 0, i32 1
  store i32 %cond54, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %exit, %cleanup
  call void @llvm.lifetime.end.p0(i64 1120, ptr %oline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 1120, ptr %iline_buffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %obuffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ibuffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %lines) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %more) #8
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define hidden i32 @NI_GenericFilter(ptr noundef %input, ptr noundef %function, ptr noundef %data, ptr noundef %footprint, ptr noundef %output, i32 noundef %mode, double noundef %cvalue, ptr noundef %origins) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %function.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %footprint.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %mode.addr = alloca i32, align 4
  %cvalue.addr = alloca double, align 8
  %origins.addr = alloca ptr, align 8
  %pf = alloca ptr, align 8
  %fsize = alloca i64, align 8
  %jj = alloca i64, align 8
  %filter_size = alloca i64, align 8
  %border_flag_value = alloca i64, align 8
  %offsets = alloca ptr, align 8
  %oo = alloca ptr, align 8
  %size = alloca i64, align 8
  %fi = alloca %struct.NI_FilterIterator, align 8
  %ii = alloca %struct.NI_Iterator, align 8
  %io = alloca %struct.NI_Iterator, align 8
  %pi = alloca ptr, align 8
  %po = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %tmp = alloca double, align 8
  %_ii = alloca i64, align 8
  %_offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_ii62 = alloca i64, align 8
  %_offset67 = alloca i64, align 8
  %_ii93 = alloca i64, align 8
  %_offset98 = alloca i64, align 8
  %_ii124 = alloca i64, align 8
  %_offset129 = alloca i64, align 8
  %_ii155 = alloca i64, align 8
  %_offset160 = alloca i64, align 8
  %_ii186 = alloca i64, align 8
  %_offset191 = alloca i64, align 8
  %_ii217 = alloca i64, align 8
  %_offset222 = alloca i64, align 8
  %_ii248 = alloca i64, align 8
  %_offset253 = alloca i64, align 8
  %_ii279 = alloca i64, align 8
  %_offset284 = alloca i64, align 8
  %_ii310 = alloca i64, align 8
  %_offset315 = alloca i64, align 8
  %_ii341 = alloca i64, align 8
  %_offset346 = alloca i64, align 8
  %_ii372 = alloca i64, align 8
  %_offset377 = alloca i64, align 8
  %_ii403 = alloca i64, align 8
  %_offset408 = alloca i64, align 8
  %_ii517 = alloca i32, align 4
  %_pp = alloca i64, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %function, ptr %function.addr, align 8, !tbaa !4
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %footprint, ptr %footprint.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store double %cvalue, ptr %cvalue.addr, align 8, !tbaa !11
  store ptr %origins, ptr %origins.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pf) #8
  store ptr null, ptr %pf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsize) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %filter_size) #8
  store i64 0, ptr %filter_size, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %offsets) #8
  store ptr null, ptr %offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #8
  store ptr null, ptr %buffer, align 8, !tbaa !4
  %0 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 158
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  %2 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call = call ptr @PyArray_DIMS(ptr noundef %2)
  %3 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call1 = call i32 @PyArray_NDIM(ptr noundef %3)
  %call2 = call i64 %1(ptr noundef %call, i32 noundef %call1)
  store i64 %call2, ptr %fsize, align 8, !tbaa !13
  %4 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call3 = call ptr @PyArray_DATA(ptr noundef %4)
  store ptr %call3, ptr %pf, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %jj, align 8, !tbaa !13
  %6 = load i64, ptr %fsize, align 8, !tbaa !13
  %cmp = icmp slt i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pf, align 8, !tbaa !4
  %8 = load i64, ptr %jj, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, ptr %filter_size, align 8, !tbaa !13
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %filter_size, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i64, ptr %jj, align 8, !tbaa !13
  %inc5 = add nsw i64 %11, 1
  store i64 %inc5, ptr %jj, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %pf, align 8, !tbaa !4
  %14 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call6 = call ptr @PyArray_DIMS(ptr noundef %14)
  %15 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %16 = load i32, ptr %mode.addr, align 4, !tbaa !10
  %call7 = call i32 @NI_InitFilterOffsets(ptr noundef %12, ptr noundef %13, ptr noundef %call6, ptr noundef %15, i32 noundef %16, ptr noundef %offsets, ptr noundef %border_flag_value, ptr noundef null)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.end
  br label %exit

if.end10:                                         ; preds = %for.end
  %17 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call11 = call i32 @PyArray_NDIM(ptr noundef %17)
  %18 = load ptr, ptr %footprint.addr, align 8, !tbaa !4
  %call12 = call ptr @PyArray_DIMS(ptr noundef %18)
  %19 = load i64, ptr %filter_size, align 8, !tbaa !13
  %20 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call13 = call ptr @PyArray_DIMS(ptr noundef %20)
  %21 = load ptr, ptr %origins.addr, align 8, !tbaa !4
  %call14 = call i32 @NI_InitFilterIterator(i32 noundef %call11, ptr noundef %call12, i64 noundef %19, ptr noundef %call13, ptr noundef %21, ptr noundef %fi)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  br label %exit

if.end17:                                         ; preds = %if.end10
  %22 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call18 = call i32 @NI_InitPointIterator(ptr noundef %22, ptr noundef %ii)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  br label %exit

if.end21:                                         ; preds = %if.end17
  %23 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call22 = call i32 @NI_InitPointIterator(ptr noundef %23, ptr noundef %io)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  br label %exit

if.end25:                                         ; preds = %if.end21
  %24 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call26 = call ptr @PyArray_DATA(ptr noundef %24)
  store ptr %call26, ptr %pi, align 8, !tbaa !4
  %25 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call27 = call ptr @PyArray_DATA(ptr noundef %25)
  store ptr %call27, ptr %po, align 8, !tbaa !4
  %26 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds ptr, ptr %26, i64 158
  %27 = load ptr, ptr %arrayidx28, align 8, !tbaa !4
  %28 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call29 = call ptr @PyArray_DIMS(ptr noundef %28)
  %29 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call30 = call i32 @PyArray_NDIM(ptr noundef %29)
  %call31 = call i64 %27(ptr noundef %call29, i32 noundef %call30)
  store i64 %call31, ptr %size, align 8, !tbaa !13
  %30 = load i64, ptr %filter_size, align 8, !tbaa !13
  %mul = mul i64 %30, 8
  %call32 = call noalias ptr @malloc(i64 noundef %mul) #9
  store ptr %call32, ptr %buffer, align 8, !tbaa !4
  %31 = load ptr, ptr %buffer, align 8, !tbaa !4
  %tobool33 = icmp ne ptr %31, null
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end25
  %call35 = call ptr @PyErr_NoMemory()
  br label %exit

if.end36:                                         ; preds = %if.end25
  %32 = load ptr, ptr %offsets, align 8, !tbaa !4
  store ptr %32, ptr %oo, align 8, !tbaa !4
  store i64 0, ptr %jj, align 8, !tbaa !13
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc579, %if.end36
  %33 = load i64, ptr %jj, align 8, !tbaa !13
  %34 = load i64, ptr %size, align 8, !tbaa !13
  %cmp38 = icmp slt i64 %33, %34
  br i1 %cmp38, label %for.body39, label %for.end581

for.body39:                                       ; preds = %for.cond37
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !11
  %35 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call40 = call i32 @PyArray_TYPE(ptr noundef %35)
  switch i32 %call40, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb61
    i32 4, label %sw.bb92
    i32 6, label %sw.bb123
    i32 8, label %sw.bb154
    i32 10, label %sw.bb185
    i32 1, label %sw.bb216
    i32 3, label %sw.bb247
    i32 5, label %sw.bb278
    i32 7, label %sw.bb309
    i32 9, label %sw.bb340
    i32 11, label %sw.bb371
    i32 12, label %sw.bb402
  ]

sw.bb:                                            ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii) #8
  store i64 0, ptr %_ii, align 8, !tbaa !13
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc50, %sw.bb
  %36 = load i64, ptr %_ii, align 8, !tbaa !13
  %37 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp42 = icmp slt i64 %36, %37
  br i1 %cmp42, label %for.body43, label %for.end52

for.body43:                                       ; preds = %for.cond41
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset) #8
  %38 = load ptr, ptr %oo, align 8, !tbaa !4
  %39 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx44 = getelementptr inbounds i64, ptr %38, i64 %39
  %40 = load i64, ptr %arrayidx44, align 8, !tbaa !13
  store i64 %40, ptr %_offset, align 8, !tbaa !13
  %41 = load i64, ptr %_offset, align 8, !tbaa !13
  %42 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp45 = icmp eq i64 %41, %42
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.body43
  %43 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %44 = load ptr, ptr %buffer, align 8, !tbaa !4
  %45 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx47 = getelementptr inbounds double, ptr %44, i64 %45
  store double %43, ptr %arrayidx47, align 8, !tbaa !11
  br label %if.end49

if.else:                                          ; preds = %for.body43
  %46 = load ptr, ptr %pi, align 8, !tbaa !4
  %47 = load i64, ptr %_offset, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, ptr %46, i64 %47
  %48 = load i8, ptr %add.ptr, align 1, !tbaa !10
  %conv = uitofp i8 %48 to double
  %49 = load ptr, ptr %buffer, align 8, !tbaa !4
  %50 = load i64, ptr %_ii, align 8, !tbaa !13
  %arrayidx48 = getelementptr inbounds double, ptr %49, i64 %50
  store double %conv, ptr %arrayidx48, align 8, !tbaa !11
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then46
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset) #8
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %51 = load i64, ptr %_ii, align 8, !tbaa !13
  %inc51 = add nsw i64 %51, 1
  store i64 %inc51, ptr %_ii, align 8, !tbaa !13
  br label %for.cond41

for.end52:                                        ; preds = %for.cond41
  %52 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %buffer, align 8, !tbaa !4
  %54 = load i64, ptr %filter_size, align 8, !tbaa !13
  %55 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call53 = call i32 %52(ptr noundef %53, i64 noundef %54, ptr noundef %tmp, ptr noundef %55)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end60, label %if.then55

if.then55:                                        ; preds = %for.end52
  %call56 = call ptr @PyErr_Occurred()
  %tobool57 = icmp ne ptr %call56, null
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.then55
  %56 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %56, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.then55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end52
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup576 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.bb61:                                          ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii62) #8
  store i64 0, ptr %_ii62, align 8, !tbaa !13
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc78, %sw.bb61
  %57 = load i64, ptr %_ii62, align 8, !tbaa !13
  %58 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp64 = icmp slt i64 %57, %58
  br i1 %cmp64, label %for.body66, label %for.end80

for.body66:                                       ; preds = %for.cond63
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset67) #8
  %59 = load ptr, ptr %oo, align 8, !tbaa !4
  %60 = load i64, ptr %_ii62, align 8, !tbaa !13
  %arrayidx68 = getelementptr inbounds i64, ptr %59, i64 %60
  %61 = load i64, ptr %arrayidx68, align 8, !tbaa !13
  store i64 %61, ptr %_offset67, align 8, !tbaa !13
  %62 = load i64, ptr %_offset67, align 8, !tbaa !13
  %63 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp69 = icmp eq i64 %62, %63
  br i1 %cmp69, label %if.then71, label %if.else73

if.then71:                                        ; preds = %for.body66
  %64 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %65 = load ptr, ptr %buffer, align 8, !tbaa !4
  %66 = load i64, ptr %_ii62, align 8, !tbaa !13
  %arrayidx72 = getelementptr inbounds double, ptr %65, i64 %66
  store double %64, ptr %arrayidx72, align 8, !tbaa !11
  br label %if.end77

if.else73:                                        ; preds = %for.body66
  %67 = load ptr, ptr %pi, align 8, !tbaa !4
  %68 = load i64, ptr %_offset67, align 8, !tbaa !13
  %add.ptr74 = getelementptr inbounds i8, ptr %67, i64 %68
  %69 = load i8, ptr %add.ptr74, align 1, !tbaa !10
  %conv75 = uitofp i8 %69 to double
  %70 = load ptr, ptr %buffer, align 8, !tbaa !4
  %71 = load i64, ptr %_ii62, align 8, !tbaa !13
  %arrayidx76 = getelementptr inbounds double, ptr %70, i64 %71
  store double %conv75, ptr %arrayidx76, align 8, !tbaa !11
  br label %if.end77

if.end77:                                         ; preds = %if.else73, %if.then71
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset67) #8
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %72 = load i64, ptr %_ii62, align 8, !tbaa !13
  %inc79 = add nsw i64 %72, 1
  store i64 %inc79, ptr %_ii62, align 8, !tbaa !13
  br label %for.cond63

for.end80:                                        ; preds = %for.cond63
  %73 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %buffer, align 8, !tbaa !4
  %75 = load i64, ptr %filter_size, align 8, !tbaa !13
  %76 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call81 = call i32 %73(ptr noundef %74, i64 noundef %75, ptr noundef %tmp, ptr noundef %76)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end88, label %if.then83

if.then83:                                        ; preds = %for.end80
  %call84 = call ptr @PyErr_Occurred()
  %tobool85 = icmp ne ptr %call84, null
  br i1 %tobool85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %if.then83
  %77 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %77, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

if.end87:                                         ; preds = %if.then83
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %for.end80
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %if.then86, %if.end88
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii62) #8
  %cleanup.dest90 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest90, label %cleanup576 [
    i32 0, label %cleanup.cont91
  ]

cleanup.cont91:                                   ; preds = %cleanup89
  br label %sw.epilog

sw.bb92:                                          ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii93) #8
  store i64 0, ptr %_ii93, align 8, !tbaa !13
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc109, %sw.bb92
  %78 = load i64, ptr %_ii93, align 8, !tbaa !13
  %79 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp95 = icmp slt i64 %78, %79
  br i1 %cmp95, label %for.body97, label %for.end111

for.body97:                                       ; preds = %for.cond94
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset98) #8
  %80 = load ptr, ptr %oo, align 8, !tbaa !4
  %81 = load i64, ptr %_ii93, align 8, !tbaa !13
  %arrayidx99 = getelementptr inbounds i64, ptr %80, i64 %81
  %82 = load i64, ptr %arrayidx99, align 8, !tbaa !13
  store i64 %82, ptr %_offset98, align 8, !tbaa !13
  %83 = load i64, ptr %_offset98, align 8, !tbaa !13
  %84 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp100 = icmp eq i64 %83, %84
  br i1 %cmp100, label %if.then102, label %if.else104

if.then102:                                       ; preds = %for.body97
  %85 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %86 = load ptr, ptr %buffer, align 8, !tbaa !4
  %87 = load i64, ptr %_ii93, align 8, !tbaa !13
  %arrayidx103 = getelementptr inbounds double, ptr %86, i64 %87
  store double %85, ptr %arrayidx103, align 8, !tbaa !11
  br label %if.end108

if.else104:                                       ; preds = %for.body97
  %88 = load ptr, ptr %pi, align 8, !tbaa !4
  %89 = load i64, ptr %_offset98, align 8, !tbaa !13
  %add.ptr105 = getelementptr inbounds i8, ptr %88, i64 %89
  %90 = load i16, ptr %add.ptr105, align 2, !tbaa !26
  %conv106 = uitofp i16 %90 to double
  %91 = load ptr, ptr %buffer, align 8, !tbaa !4
  %92 = load i64, ptr %_ii93, align 8, !tbaa !13
  %arrayidx107 = getelementptr inbounds double, ptr %91, i64 %92
  store double %conv106, ptr %arrayidx107, align 8, !tbaa !11
  br label %if.end108

if.end108:                                        ; preds = %if.else104, %if.then102
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset98) #8
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %93 = load i64, ptr %_ii93, align 8, !tbaa !13
  %inc110 = add nsw i64 %93, 1
  store i64 %inc110, ptr %_ii93, align 8, !tbaa !13
  br label %for.cond94

for.end111:                                       ; preds = %for.cond94
  %94 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %95 = load ptr, ptr %buffer, align 8, !tbaa !4
  %96 = load i64, ptr %filter_size, align 8, !tbaa !13
  %97 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call112 = call i32 %94(ptr noundef %95, i64 noundef %96, ptr noundef %tmp, ptr noundef %97)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.end119, label %if.then114

if.then114:                                       ; preds = %for.end111
  %call115 = call ptr @PyErr_Occurred()
  %tobool116 = icmp ne ptr %call115, null
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %if.then114
  %98 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %98, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup120

if.end118:                                        ; preds = %if.then114
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %for.end111
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup120

cleanup120:                                       ; preds = %if.then117, %if.end119
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii93) #8
  %cleanup.dest121 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest121, label %cleanup576 [
    i32 0, label %cleanup.cont122
  ]

cleanup.cont122:                                  ; preds = %cleanup120
  br label %sw.epilog

sw.bb123:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii124) #8
  store i64 0, ptr %_ii124, align 8, !tbaa !13
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc140, %sw.bb123
  %99 = load i64, ptr %_ii124, align 8, !tbaa !13
  %100 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp126 = icmp slt i64 %99, %100
  br i1 %cmp126, label %for.body128, label %for.end142

for.body128:                                      ; preds = %for.cond125
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset129) #8
  %101 = load ptr, ptr %oo, align 8, !tbaa !4
  %102 = load i64, ptr %_ii124, align 8, !tbaa !13
  %arrayidx130 = getelementptr inbounds i64, ptr %101, i64 %102
  %103 = load i64, ptr %arrayidx130, align 8, !tbaa !13
  store i64 %103, ptr %_offset129, align 8, !tbaa !13
  %104 = load i64, ptr %_offset129, align 8, !tbaa !13
  %105 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp131 = icmp eq i64 %104, %105
  br i1 %cmp131, label %if.then133, label %if.else135

if.then133:                                       ; preds = %for.body128
  %106 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %107 = load ptr, ptr %buffer, align 8, !tbaa !4
  %108 = load i64, ptr %_ii124, align 8, !tbaa !13
  %arrayidx134 = getelementptr inbounds double, ptr %107, i64 %108
  store double %106, ptr %arrayidx134, align 8, !tbaa !11
  br label %if.end139

if.else135:                                       ; preds = %for.body128
  %109 = load ptr, ptr %pi, align 8, !tbaa !4
  %110 = load i64, ptr %_offset129, align 8, !tbaa !13
  %add.ptr136 = getelementptr inbounds i8, ptr %109, i64 %110
  %111 = load i32, ptr %add.ptr136, align 4, !tbaa !8
  %conv137 = uitofp i32 %111 to double
  %112 = load ptr, ptr %buffer, align 8, !tbaa !4
  %113 = load i64, ptr %_ii124, align 8, !tbaa !13
  %arrayidx138 = getelementptr inbounds double, ptr %112, i64 %113
  store double %conv137, ptr %arrayidx138, align 8, !tbaa !11
  br label %if.end139

if.end139:                                        ; preds = %if.else135, %if.then133
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset129) #8
  br label %for.inc140

for.inc140:                                       ; preds = %if.end139
  %114 = load i64, ptr %_ii124, align 8, !tbaa !13
  %inc141 = add nsw i64 %114, 1
  store i64 %inc141, ptr %_ii124, align 8, !tbaa !13
  br label %for.cond125

for.end142:                                       ; preds = %for.cond125
  %115 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %116 = load ptr, ptr %buffer, align 8, !tbaa !4
  %117 = load i64, ptr %filter_size, align 8, !tbaa !13
  %118 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call143 = call i32 %115(ptr noundef %116, i64 noundef %117, ptr noundef %tmp, ptr noundef %118)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.end150, label %if.then145

if.then145:                                       ; preds = %for.end142
  %call146 = call ptr @PyErr_Occurred()
  %tobool147 = icmp ne ptr %call146, null
  br i1 %tobool147, label %if.end149, label %if.then148

if.then148:                                       ; preds = %if.then145
  %119 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %119, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

if.end149:                                        ; preds = %if.then145
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %for.end142
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

cleanup151:                                       ; preds = %if.then148, %if.end150
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii124) #8
  %cleanup.dest152 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest152, label %cleanup576 [
    i32 0, label %cleanup.cont153
  ]

cleanup.cont153:                                  ; preds = %cleanup151
  br label %sw.epilog

sw.bb154:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii155) #8
  store i64 0, ptr %_ii155, align 8, !tbaa !13
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc171, %sw.bb154
  %120 = load i64, ptr %_ii155, align 8, !tbaa !13
  %121 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp157 = icmp slt i64 %120, %121
  br i1 %cmp157, label %for.body159, label %for.end173

for.body159:                                      ; preds = %for.cond156
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset160) #8
  %122 = load ptr, ptr %oo, align 8, !tbaa !4
  %123 = load i64, ptr %_ii155, align 8, !tbaa !13
  %arrayidx161 = getelementptr inbounds i64, ptr %122, i64 %123
  %124 = load i64, ptr %arrayidx161, align 8, !tbaa !13
  store i64 %124, ptr %_offset160, align 8, !tbaa !13
  %125 = load i64, ptr %_offset160, align 8, !tbaa !13
  %126 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp162 = icmp eq i64 %125, %126
  br i1 %cmp162, label %if.then164, label %if.else166

if.then164:                                       ; preds = %for.body159
  %127 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %128 = load ptr, ptr %buffer, align 8, !tbaa !4
  %129 = load i64, ptr %_ii155, align 8, !tbaa !13
  %arrayidx165 = getelementptr inbounds double, ptr %128, i64 %129
  store double %127, ptr %arrayidx165, align 8, !tbaa !11
  br label %if.end170

if.else166:                                       ; preds = %for.body159
  %130 = load ptr, ptr %pi, align 8, !tbaa !4
  %131 = load i64, ptr %_offset160, align 8, !tbaa !13
  %add.ptr167 = getelementptr inbounds i8, ptr %130, i64 %131
  %132 = load i64, ptr %add.ptr167, align 8, !tbaa !13
  %conv168 = uitofp i64 %132 to double
  %133 = load ptr, ptr %buffer, align 8, !tbaa !4
  %134 = load i64, ptr %_ii155, align 8, !tbaa !13
  %arrayidx169 = getelementptr inbounds double, ptr %133, i64 %134
  store double %conv168, ptr %arrayidx169, align 8, !tbaa !11
  br label %if.end170

if.end170:                                        ; preds = %if.else166, %if.then164
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset160) #8
  br label %for.inc171

for.inc171:                                       ; preds = %if.end170
  %135 = load i64, ptr %_ii155, align 8, !tbaa !13
  %inc172 = add nsw i64 %135, 1
  store i64 %inc172, ptr %_ii155, align 8, !tbaa !13
  br label %for.cond156

for.end173:                                       ; preds = %for.cond156
  %136 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %137 = load ptr, ptr %buffer, align 8, !tbaa !4
  %138 = load i64, ptr %filter_size, align 8, !tbaa !13
  %139 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call174 = call i32 %136(ptr noundef %137, i64 noundef %138, ptr noundef %tmp, ptr noundef %139)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.end181, label %if.then176

if.then176:                                       ; preds = %for.end173
  %call177 = call ptr @PyErr_Occurred()
  %tobool178 = icmp ne ptr %call177, null
  br i1 %tobool178, label %if.end180, label %if.then179

if.then179:                                       ; preds = %if.then176
  %140 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %140, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup182

if.end180:                                        ; preds = %if.then176
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %for.end173
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup182

cleanup182:                                       ; preds = %if.then179, %if.end181
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii155) #8
  %cleanup.dest183 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest183, label %cleanup576 [
    i32 0, label %cleanup.cont184
  ]

cleanup.cont184:                                  ; preds = %cleanup182
  br label %sw.epilog

sw.bb185:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii186) #8
  store i64 0, ptr %_ii186, align 8, !tbaa !13
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc202, %sw.bb185
  %141 = load i64, ptr %_ii186, align 8, !tbaa !13
  %142 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp188 = icmp slt i64 %141, %142
  br i1 %cmp188, label %for.body190, label %for.end204

for.body190:                                      ; preds = %for.cond187
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset191) #8
  %143 = load ptr, ptr %oo, align 8, !tbaa !4
  %144 = load i64, ptr %_ii186, align 8, !tbaa !13
  %arrayidx192 = getelementptr inbounds i64, ptr %143, i64 %144
  %145 = load i64, ptr %arrayidx192, align 8, !tbaa !13
  store i64 %145, ptr %_offset191, align 8, !tbaa !13
  %146 = load i64, ptr %_offset191, align 8, !tbaa !13
  %147 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp193 = icmp eq i64 %146, %147
  br i1 %cmp193, label %if.then195, label %if.else197

if.then195:                                       ; preds = %for.body190
  %148 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %149 = load ptr, ptr %buffer, align 8, !tbaa !4
  %150 = load i64, ptr %_ii186, align 8, !tbaa !13
  %arrayidx196 = getelementptr inbounds double, ptr %149, i64 %150
  store double %148, ptr %arrayidx196, align 8, !tbaa !11
  br label %if.end201

if.else197:                                       ; preds = %for.body190
  %151 = load ptr, ptr %pi, align 8, !tbaa !4
  %152 = load i64, ptr %_offset191, align 8, !tbaa !13
  %add.ptr198 = getelementptr inbounds i8, ptr %151, i64 %152
  %153 = load i64, ptr %add.ptr198, align 8, !tbaa !28
  %conv199 = uitofp i64 %153 to double
  %154 = load ptr, ptr %buffer, align 8, !tbaa !4
  %155 = load i64, ptr %_ii186, align 8, !tbaa !13
  %arrayidx200 = getelementptr inbounds double, ptr %154, i64 %155
  store double %conv199, ptr %arrayidx200, align 8, !tbaa !11
  br label %if.end201

if.end201:                                        ; preds = %if.else197, %if.then195
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset191) #8
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201
  %156 = load i64, ptr %_ii186, align 8, !tbaa !13
  %inc203 = add nsw i64 %156, 1
  store i64 %inc203, ptr %_ii186, align 8, !tbaa !13
  br label %for.cond187

for.end204:                                       ; preds = %for.cond187
  %157 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %158 = load ptr, ptr %buffer, align 8, !tbaa !4
  %159 = load i64, ptr %filter_size, align 8, !tbaa !13
  %160 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call205 = call i32 %157(ptr noundef %158, i64 noundef %159, ptr noundef %tmp, ptr noundef %160)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.end212, label %if.then207

if.then207:                                       ; preds = %for.end204
  %call208 = call ptr @PyErr_Occurred()
  %tobool209 = icmp ne ptr %call208, null
  br i1 %tobool209, label %if.end211, label %if.then210

if.then210:                                       ; preds = %if.then207
  %161 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %161, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup213

if.end211:                                        ; preds = %if.then207
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %for.end204
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup213

cleanup213:                                       ; preds = %if.then210, %if.end212
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii186) #8
  %cleanup.dest214 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest214, label %cleanup576 [
    i32 0, label %cleanup.cont215
  ]

cleanup.cont215:                                  ; preds = %cleanup213
  br label %sw.epilog

sw.bb216:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii217) #8
  store i64 0, ptr %_ii217, align 8, !tbaa !13
  br label %for.cond218

for.cond218:                                      ; preds = %for.inc233, %sw.bb216
  %162 = load i64, ptr %_ii217, align 8, !tbaa !13
  %163 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp219 = icmp slt i64 %162, %163
  br i1 %cmp219, label %for.body221, label %for.end235

for.body221:                                      ; preds = %for.cond218
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset222) #8
  %164 = load ptr, ptr %oo, align 8, !tbaa !4
  %165 = load i64, ptr %_ii217, align 8, !tbaa !13
  %arrayidx223 = getelementptr inbounds i64, ptr %164, i64 %165
  %166 = load i64, ptr %arrayidx223, align 8, !tbaa !13
  store i64 %166, ptr %_offset222, align 8, !tbaa !13
  %167 = load i64, ptr %_offset222, align 8, !tbaa !13
  %168 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp224 = icmp eq i64 %167, %168
  br i1 %cmp224, label %if.then226, label %if.else228

if.then226:                                       ; preds = %for.body221
  %169 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %170 = load ptr, ptr %buffer, align 8, !tbaa !4
  %171 = load i64, ptr %_ii217, align 8, !tbaa !13
  %arrayidx227 = getelementptr inbounds double, ptr %170, i64 %171
  store double %169, ptr %arrayidx227, align 8, !tbaa !11
  br label %if.end232

if.else228:                                       ; preds = %for.body221
  %172 = load ptr, ptr %pi, align 8, !tbaa !4
  %173 = load i64, ptr %_offset222, align 8, !tbaa !13
  %add.ptr229 = getelementptr inbounds i8, ptr %172, i64 %173
  %174 = load i8, ptr %add.ptr229, align 1, !tbaa !10
  %conv230 = sitofp i8 %174 to double
  %175 = load ptr, ptr %buffer, align 8, !tbaa !4
  %176 = load i64, ptr %_ii217, align 8, !tbaa !13
  %arrayidx231 = getelementptr inbounds double, ptr %175, i64 %176
  store double %conv230, ptr %arrayidx231, align 8, !tbaa !11
  br label %if.end232

if.end232:                                        ; preds = %if.else228, %if.then226
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset222) #8
  br label %for.inc233

for.inc233:                                       ; preds = %if.end232
  %177 = load i64, ptr %_ii217, align 8, !tbaa !13
  %inc234 = add nsw i64 %177, 1
  store i64 %inc234, ptr %_ii217, align 8, !tbaa !13
  br label %for.cond218

for.end235:                                       ; preds = %for.cond218
  %178 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %179 = load ptr, ptr %buffer, align 8, !tbaa !4
  %180 = load i64, ptr %filter_size, align 8, !tbaa !13
  %181 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call236 = call i32 %178(ptr noundef %179, i64 noundef %180, ptr noundef %tmp, ptr noundef %181)
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.end243, label %if.then238

if.then238:                                       ; preds = %for.end235
  %call239 = call ptr @PyErr_Occurred()
  %tobool240 = icmp ne ptr %call239, null
  br i1 %tobool240, label %if.end242, label %if.then241

if.then241:                                       ; preds = %if.then238
  %182 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %182, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end242:                                        ; preds = %if.then238
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %for.end235
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

cleanup244:                                       ; preds = %if.then241, %if.end243
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii217) #8
  %cleanup.dest245 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest245, label %cleanup576 [
    i32 0, label %cleanup.cont246
  ]

cleanup.cont246:                                  ; preds = %cleanup244
  br label %sw.epilog

sw.bb247:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii248) #8
  store i64 0, ptr %_ii248, align 8, !tbaa !13
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc264, %sw.bb247
  %183 = load i64, ptr %_ii248, align 8, !tbaa !13
  %184 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp250 = icmp slt i64 %183, %184
  br i1 %cmp250, label %for.body252, label %for.end266

for.body252:                                      ; preds = %for.cond249
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset253) #8
  %185 = load ptr, ptr %oo, align 8, !tbaa !4
  %186 = load i64, ptr %_ii248, align 8, !tbaa !13
  %arrayidx254 = getelementptr inbounds i64, ptr %185, i64 %186
  %187 = load i64, ptr %arrayidx254, align 8, !tbaa !13
  store i64 %187, ptr %_offset253, align 8, !tbaa !13
  %188 = load i64, ptr %_offset253, align 8, !tbaa !13
  %189 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp255 = icmp eq i64 %188, %189
  br i1 %cmp255, label %if.then257, label %if.else259

if.then257:                                       ; preds = %for.body252
  %190 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %191 = load ptr, ptr %buffer, align 8, !tbaa !4
  %192 = load i64, ptr %_ii248, align 8, !tbaa !13
  %arrayidx258 = getelementptr inbounds double, ptr %191, i64 %192
  store double %190, ptr %arrayidx258, align 8, !tbaa !11
  br label %if.end263

if.else259:                                       ; preds = %for.body252
  %193 = load ptr, ptr %pi, align 8, !tbaa !4
  %194 = load i64, ptr %_offset253, align 8, !tbaa !13
  %add.ptr260 = getelementptr inbounds i8, ptr %193, i64 %194
  %195 = load i16, ptr %add.ptr260, align 2, !tbaa !26
  %conv261 = sitofp i16 %195 to double
  %196 = load ptr, ptr %buffer, align 8, !tbaa !4
  %197 = load i64, ptr %_ii248, align 8, !tbaa !13
  %arrayidx262 = getelementptr inbounds double, ptr %196, i64 %197
  store double %conv261, ptr %arrayidx262, align 8, !tbaa !11
  br label %if.end263

if.end263:                                        ; preds = %if.else259, %if.then257
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset253) #8
  br label %for.inc264

for.inc264:                                       ; preds = %if.end263
  %198 = load i64, ptr %_ii248, align 8, !tbaa !13
  %inc265 = add nsw i64 %198, 1
  store i64 %inc265, ptr %_ii248, align 8, !tbaa !13
  br label %for.cond249

for.end266:                                       ; preds = %for.cond249
  %199 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %200 = load ptr, ptr %buffer, align 8, !tbaa !4
  %201 = load i64, ptr %filter_size, align 8, !tbaa !13
  %202 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call267 = call i32 %199(ptr noundef %200, i64 noundef %201, ptr noundef %tmp, ptr noundef %202)
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %if.end274, label %if.then269

if.then269:                                       ; preds = %for.end266
  %call270 = call ptr @PyErr_Occurred()
  %tobool271 = icmp ne ptr %call270, null
  br i1 %tobool271, label %if.end273, label %if.then272

if.then272:                                       ; preds = %if.then269
  %203 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %203, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup275

if.end273:                                        ; preds = %if.then269
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %for.end266
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup275

cleanup275:                                       ; preds = %if.then272, %if.end274
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii248) #8
  %cleanup.dest276 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest276, label %cleanup576 [
    i32 0, label %cleanup.cont277
  ]

cleanup.cont277:                                  ; preds = %cleanup275
  br label %sw.epilog

sw.bb278:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii279) #8
  store i64 0, ptr %_ii279, align 8, !tbaa !13
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc295, %sw.bb278
  %204 = load i64, ptr %_ii279, align 8, !tbaa !13
  %205 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp281 = icmp slt i64 %204, %205
  br i1 %cmp281, label %for.body283, label %for.end297

for.body283:                                      ; preds = %for.cond280
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset284) #8
  %206 = load ptr, ptr %oo, align 8, !tbaa !4
  %207 = load i64, ptr %_ii279, align 8, !tbaa !13
  %arrayidx285 = getelementptr inbounds i64, ptr %206, i64 %207
  %208 = load i64, ptr %arrayidx285, align 8, !tbaa !13
  store i64 %208, ptr %_offset284, align 8, !tbaa !13
  %209 = load i64, ptr %_offset284, align 8, !tbaa !13
  %210 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp286 = icmp eq i64 %209, %210
  br i1 %cmp286, label %if.then288, label %if.else290

if.then288:                                       ; preds = %for.body283
  %211 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %212 = load ptr, ptr %buffer, align 8, !tbaa !4
  %213 = load i64, ptr %_ii279, align 8, !tbaa !13
  %arrayidx289 = getelementptr inbounds double, ptr %212, i64 %213
  store double %211, ptr %arrayidx289, align 8, !tbaa !11
  br label %if.end294

if.else290:                                       ; preds = %for.body283
  %214 = load ptr, ptr %pi, align 8, !tbaa !4
  %215 = load i64, ptr %_offset284, align 8, !tbaa !13
  %add.ptr291 = getelementptr inbounds i8, ptr %214, i64 %215
  %216 = load i32, ptr %add.ptr291, align 4, !tbaa !8
  %conv292 = sitofp i32 %216 to double
  %217 = load ptr, ptr %buffer, align 8, !tbaa !4
  %218 = load i64, ptr %_ii279, align 8, !tbaa !13
  %arrayidx293 = getelementptr inbounds double, ptr %217, i64 %218
  store double %conv292, ptr %arrayidx293, align 8, !tbaa !11
  br label %if.end294

if.end294:                                        ; preds = %if.else290, %if.then288
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset284) #8
  br label %for.inc295

for.inc295:                                       ; preds = %if.end294
  %219 = load i64, ptr %_ii279, align 8, !tbaa !13
  %inc296 = add nsw i64 %219, 1
  store i64 %inc296, ptr %_ii279, align 8, !tbaa !13
  br label %for.cond280

for.end297:                                       ; preds = %for.cond280
  %220 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %221 = load ptr, ptr %buffer, align 8, !tbaa !4
  %222 = load i64, ptr %filter_size, align 8, !tbaa !13
  %223 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call298 = call i32 %220(ptr noundef %221, i64 noundef %222, ptr noundef %tmp, ptr noundef %223)
  %tobool299 = icmp ne i32 %call298, 0
  br i1 %tobool299, label %if.end305, label %if.then300

if.then300:                                       ; preds = %for.end297
  %call301 = call ptr @PyErr_Occurred()
  %tobool302 = icmp ne ptr %call301, null
  br i1 %tobool302, label %if.end304, label %if.then303

if.then303:                                       ; preds = %if.then300
  %224 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %224, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup306

if.end304:                                        ; preds = %if.then300
  br label %if.end305

if.end305:                                        ; preds = %if.end304, %for.end297
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup306

cleanup306:                                       ; preds = %if.then303, %if.end305
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii279) #8
  %cleanup.dest307 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest307, label %cleanup576 [
    i32 0, label %cleanup.cont308
  ]

cleanup.cont308:                                  ; preds = %cleanup306
  br label %sw.epilog

sw.bb309:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii310) #8
  store i64 0, ptr %_ii310, align 8, !tbaa !13
  br label %for.cond311

for.cond311:                                      ; preds = %for.inc326, %sw.bb309
  %225 = load i64, ptr %_ii310, align 8, !tbaa !13
  %226 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp312 = icmp slt i64 %225, %226
  br i1 %cmp312, label %for.body314, label %for.end328

for.body314:                                      ; preds = %for.cond311
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset315) #8
  %227 = load ptr, ptr %oo, align 8, !tbaa !4
  %228 = load i64, ptr %_ii310, align 8, !tbaa !13
  %arrayidx316 = getelementptr inbounds i64, ptr %227, i64 %228
  %229 = load i64, ptr %arrayidx316, align 8, !tbaa !13
  store i64 %229, ptr %_offset315, align 8, !tbaa !13
  %230 = load i64, ptr %_offset315, align 8, !tbaa !13
  %231 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp317 = icmp eq i64 %230, %231
  br i1 %cmp317, label %if.then319, label %if.else321

if.then319:                                       ; preds = %for.body314
  %232 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %233 = load ptr, ptr %buffer, align 8, !tbaa !4
  %234 = load i64, ptr %_ii310, align 8, !tbaa !13
  %arrayidx320 = getelementptr inbounds double, ptr %233, i64 %234
  store double %232, ptr %arrayidx320, align 8, !tbaa !11
  br label %if.end325

if.else321:                                       ; preds = %for.body314
  %235 = load ptr, ptr %pi, align 8, !tbaa !4
  %236 = load i64, ptr %_offset315, align 8, !tbaa !13
  %add.ptr322 = getelementptr inbounds i8, ptr %235, i64 %236
  %237 = load i64, ptr %add.ptr322, align 8, !tbaa !13
  %conv323 = sitofp i64 %237 to double
  %238 = load ptr, ptr %buffer, align 8, !tbaa !4
  %239 = load i64, ptr %_ii310, align 8, !tbaa !13
  %arrayidx324 = getelementptr inbounds double, ptr %238, i64 %239
  store double %conv323, ptr %arrayidx324, align 8, !tbaa !11
  br label %if.end325

if.end325:                                        ; preds = %if.else321, %if.then319
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset315) #8
  br label %for.inc326

for.inc326:                                       ; preds = %if.end325
  %240 = load i64, ptr %_ii310, align 8, !tbaa !13
  %inc327 = add nsw i64 %240, 1
  store i64 %inc327, ptr %_ii310, align 8, !tbaa !13
  br label %for.cond311

for.end328:                                       ; preds = %for.cond311
  %241 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %242 = load ptr, ptr %buffer, align 8, !tbaa !4
  %243 = load i64, ptr %filter_size, align 8, !tbaa !13
  %244 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call329 = call i32 %241(ptr noundef %242, i64 noundef %243, ptr noundef %tmp, ptr noundef %244)
  %tobool330 = icmp ne i32 %call329, 0
  br i1 %tobool330, label %if.end336, label %if.then331

if.then331:                                       ; preds = %for.end328
  %call332 = call ptr @PyErr_Occurred()
  %tobool333 = icmp ne ptr %call332, null
  br i1 %tobool333, label %if.end335, label %if.then334

if.then334:                                       ; preds = %if.then331
  %245 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %245, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup337

if.end335:                                        ; preds = %if.then331
  br label %if.end336

if.end336:                                        ; preds = %if.end335, %for.end328
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup337

cleanup337:                                       ; preds = %if.then334, %if.end336
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii310) #8
  %cleanup.dest338 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest338, label %cleanup576 [
    i32 0, label %cleanup.cont339
  ]

cleanup.cont339:                                  ; preds = %cleanup337
  br label %sw.epilog

sw.bb340:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii341) #8
  store i64 0, ptr %_ii341, align 8, !tbaa !13
  br label %for.cond342

for.cond342:                                      ; preds = %for.inc357, %sw.bb340
  %246 = load i64, ptr %_ii341, align 8, !tbaa !13
  %247 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp343 = icmp slt i64 %246, %247
  br i1 %cmp343, label %for.body345, label %for.end359

for.body345:                                      ; preds = %for.cond342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset346) #8
  %248 = load ptr, ptr %oo, align 8, !tbaa !4
  %249 = load i64, ptr %_ii341, align 8, !tbaa !13
  %arrayidx347 = getelementptr inbounds i64, ptr %248, i64 %249
  %250 = load i64, ptr %arrayidx347, align 8, !tbaa !13
  store i64 %250, ptr %_offset346, align 8, !tbaa !13
  %251 = load i64, ptr %_offset346, align 8, !tbaa !13
  %252 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp348 = icmp eq i64 %251, %252
  br i1 %cmp348, label %if.then350, label %if.else352

if.then350:                                       ; preds = %for.body345
  %253 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %254 = load ptr, ptr %buffer, align 8, !tbaa !4
  %255 = load i64, ptr %_ii341, align 8, !tbaa !13
  %arrayidx351 = getelementptr inbounds double, ptr %254, i64 %255
  store double %253, ptr %arrayidx351, align 8, !tbaa !11
  br label %if.end356

if.else352:                                       ; preds = %for.body345
  %256 = load ptr, ptr %pi, align 8, !tbaa !4
  %257 = load i64, ptr %_offset346, align 8, !tbaa !13
  %add.ptr353 = getelementptr inbounds i8, ptr %256, i64 %257
  %258 = load i64, ptr %add.ptr353, align 8, !tbaa !28
  %conv354 = sitofp i64 %258 to double
  %259 = load ptr, ptr %buffer, align 8, !tbaa !4
  %260 = load i64, ptr %_ii341, align 8, !tbaa !13
  %arrayidx355 = getelementptr inbounds double, ptr %259, i64 %260
  store double %conv354, ptr %arrayidx355, align 8, !tbaa !11
  br label %if.end356

if.end356:                                        ; preds = %if.else352, %if.then350
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset346) #8
  br label %for.inc357

for.inc357:                                       ; preds = %if.end356
  %261 = load i64, ptr %_ii341, align 8, !tbaa !13
  %inc358 = add nsw i64 %261, 1
  store i64 %inc358, ptr %_ii341, align 8, !tbaa !13
  br label %for.cond342

for.end359:                                       ; preds = %for.cond342
  %262 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %263 = load ptr, ptr %buffer, align 8, !tbaa !4
  %264 = load i64, ptr %filter_size, align 8, !tbaa !13
  %265 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call360 = call i32 %262(ptr noundef %263, i64 noundef %264, ptr noundef %tmp, ptr noundef %265)
  %tobool361 = icmp ne i32 %call360, 0
  br i1 %tobool361, label %if.end367, label %if.then362

if.then362:                                       ; preds = %for.end359
  %call363 = call ptr @PyErr_Occurred()
  %tobool364 = icmp ne ptr %call363, null
  br i1 %tobool364, label %if.end366, label %if.then365

if.then365:                                       ; preds = %if.then362
  %266 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %266, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup368

if.end366:                                        ; preds = %if.then362
  br label %if.end367

if.end367:                                        ; preds = %if.end366, %for.end359
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup368

cleanup368:                                       ; preds = %if.then365, %if.end367
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii341) #8
  %cleanup.dest369 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest369, label %cleanup576 [
    i32 0, label %cleanup.cont370
  ]

cleanup.cont370:                                  ; preds = %cleanup368
  br label %sw.epilog

sw.bb371:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii372) #8
  store i64 0, ptr %_ii372, align 8, !tbaa !13
  br label %for.cond373

for.cond373:                                      ; preds = %for.inc388, %sw.bb371
  %267 = load i64, ptr %_ii372, align 8, !tbaa !13
  %268 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp374 = icmp slt i64 %267, %268
  br i1 %cmp374, label %for.body376, label %for.end390

for.body376:                                      ; preds = %for.cond373
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset377) #8
  %269 = load ptr, ptr %oo, align 8, !tbaa !4
  %270 = load i64, ptr %_ii372, align 8, !tbaa !13
  %arrayidx378 = getelementptr inbounds i64, ptr %269, i64 %270
  %271 = load i64, ptr %arrayidx378, align 8, !tbaa !13
  store i64 %271, ptr %_offset377, align 8, !tbaa !13
  %272 = load i64, ptr %_offset377, align 8, !tbaa !13
  %273 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp379 = icmp eq i64 %272, %273
  br i1 %cmp379, label %if.then381, label %if.else383

if.then381:                                       ; preds = %for.body376
  %274 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %275 = load ptr, ptr %buffer, align 8, !tbaa !4
  %276 = load i64, ptr %_ii372, align 8, !tbaa !13
  %arrayidx382 = getelementptr inbounds double, ptr %275, i64 %276
  store double %274, ptr %arrayidx382, align 8, !tbaa !11
  br label %if.end387

if.else383:                                       ; preds = %for.body376
  %277 = load ptr, ptr %pi, align 8, !tbaa !4
  %278 = load i64, ptr %_offset377, align 8, !tbaa !13
  %add.ptr384 = getelementptr inbounds i8, ptr %277, i64 %278
  %279 = load float, ptr %add.ptr384, align 4, !tbaa !30
  %conv385 = fpext float %279 to double
  %280 = load ptr, ptr %buffer, align 8, !tbaa !4
  %281 = load i64, ptr %_ii372, align 8, !tbaa !13
  %arrayidx386 = getelementptr inbounds double, ptr %280, i64 %281
  store double %conv385, ptr %arrayidx386, align 8, !tbaa !11
  br label %if.end387

if.end387:                                        ; preds = %if.else383, %if.then381
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset377) #8
  br label %for.inc388

for.inc388:                                       ; preds = %if.end387
  %282 = load i64, ptr %_ii372, align 8, !tbaa !13
  %inc389 = add nsw i64 %282, 1
  store i64 %inc389, ptr %_ii372, align 8, !tbaa !13
  br label %for.cond373

for.end390:                                       ; preds = %for.cond373
  %283 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %284 = load ptr, ptr %buffer, align 8, !tbaa !4
  %285 = load i64, ptr %filter_size, align 8, !tbaa !13
  %286 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call391 = call i32 %283(ptr noundef %284, i64 noundef %285, ptr noundef %tmp, ptr noundef %286)
  %tobool392 = icmp ne i32 %call391, 0
  br i1 %tobool392, label %if.end398, label %if.then393

if.then393:                                       ; preds = %for.end390
  %call394 = call ptr @PyErr_Occurred()
  %tobool395 = icmp ne ptr %call394, null
  br i1 %tobool395, label %if.end397, label %if.then396

if.then396:                                       ; preds = %if.then393
  %287 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %287, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup399

if.end397:                                        ; preds = %if.then393
  br label %if.end398

if.end398:                                        ; preds = %if.end397, %for.end390
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup399

cleanup399:                                       ; preds = %if.then396, %if.end398
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii372) #8
  %cleanup.dest400 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest400, label %cleanup576 [
    i32 0, label %cleanup.cont401
  ]

cleanup.cont401:                                  ; preds = %cleanup399
  br label %sw.epilog

sw.bb402:                                         ; preds = %for.body39
  call void @llvm.lifetime.start.p0(i64 8, ptr %_ii403) #8
  store i64 0, ptr %_ii403, align 8, !tbaa !13
  br label %for.cond404

for.cond404:                                      ; preds = %for.inc418, %sw.bb402
  %288 = load i64, ptr %_ii403, align 8, !tbaa !13
  %289 = load i64, ptr %filter_size, align 8, !tbaa !13
  %cmp405 = icmp slt i64 %288, %289
  br i1 %cmp405, label %for.body407, label %for.end420

for.body407:                                      ; preds = %for.cond404
  call void @llvm.lifetime.start.p0(i64 8, ptr %_offset408) #8
  %290 = load ptr, ptr %oo, align 8, !tbaa !4
  %291 = load i64, ptr %_ii403, align 8, !tbaa !13
  %arrayidx409 = getelementptr inbounds i64, ptr %290, i64 %291
  %292 = load i64, ptr %arrayidx409, align 8, !tbaa !13
  store i64 %292, ptr %_offset408, align 8, !tbaa !13
  %293 = load i64, ptr %_offset408, align 8, !tbaa !13
  %294 = load i64, ptr %border_flag_value, align 8, !tbaa !13
  %cmp410 = icmp eq i64 %293, %294
  br i1 %cmp410, label %if.then412, label %if.else414

if.then412:                                       ; preds = %for.body407
  %295 = load double, ptr %cvalue.addr, align 8, !tbaa !11
  %296 = load ptr, ptr %buffer, align 8, !tbaa !4
  %297 = load i64, ptr %_ii403, align 8, !tbaa !13
  %arrayidx413 = getelementptr inbounds double, ptr %296, i64 %297
  store double %295, ptr %arrayidx413, align 8, !tbaa !11
  br label %if.end417

if.else414:                                       ; preds = %for.body407
  %298 = load ptr, ptr %pi, align 8, !tbaa !4
  %299 = load i64, ptr %_offset408, align 8, !tbaa !13
  %add.ptr415 = getelementptr inbounds i8, ptr %298, i64 %299
  %300 = load double, ptr %add.ptr415, align 8, !tbaa !11
  %301 = load ptr, ptr %buffer, align 8, !tbaa !4
  %302 = load i64, ptr %_ii403, align 8, !tbaa !13
  %arrayidx416 = getelementptr inbounds double, ptr %301, i64 %302
  store double %300, ptr %arrayidx416, align 8, !tbaa !11
  br label %if.end417

if.end417:                                        ; preds = %if.else414, %if.then412
  call void @llvm.lifetime.end.p0(i64 8, ptr %_offset408) #8
  br label %for.inc418

for.inc418:                                       ; preds = %if.end417
  %303 = load i64, ptr %_ii403, align 8, !tbaa !13
  %inc419 = add nsw i64 %303, 1
  store i64 %inc419, ptr %_ii403, align 8, !tbaa !13
  br label %for.cond404

for.end420:                                       ; preds = %for.cond404
  %304 = load ptr, ptr %function.addr, align 8, !tbaa !4
  %305 = load ptr, ptr %buffer, align 8, !tbaa !4
  %306 = load i64, ptr %filter_size, align 8, !tbaa !13
  %307 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %call421 = call i32 %304(ptr noundef %305, i64 noundef %306, ptr noundef %tmp, ptr noundef %307)
  %tobool422 = icmp ne i32 %call421, 0
  br i1 %tobool422, label %if.end428, label %if.then423

if.then423:                                       ; preds = %for.end420
  %call424 = call ptr @PyErr_Occurred()
  %tobool425 = icmp ne ptr %call424, null
  br i1 %tobool425, label %if.end427, label %if.then426

if.then426:                                       ; preds = %if.then423
  %308 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %308, ptr noundef @.str.2)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup429

if.end427:                                        ; preds = %if.then423
  br label %if.end428

if.end428:                                        ; preds = %if.end427, %for.end420
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup429

cleanup429:                                       ; preds = %if.then426, %if.end428
  call void @llvm.lifetime.end.p0(i64 8, ptr %_ii403) #8
  %cleanup.dest430 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest430, label %cleanup576 [
    i32 0, label %cleanup.cont431
  ]

cleanup.cont431:                                  ; preds = %cleanup429
  br label %sw.epilog

sw.default:                                       ; preds = %for.body39
  %309 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %309, ptr noundef @.str)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup576

sw.epilog:                                        ; preds = %cleanup.cont431, %cleanup.cont401, %cleanup.cont370, %cleanup.cont339, %cleanup.cont308, %cleanup.cont277, %cleanup.cont246, %cleanup.cont215, %cleanup.cont184, %cleanup.cont153, %cleanup.cont122, %cleanup.cont91, %cleanup.cont
  %310 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call432 = call i32 @PyArray_TYPE(ptr noundef %310)
  switch i32 %call432, label %sw.default515 [
    i32 0, label %sw.bb433
    i32 2, label %sw.bb441
    i32 4, label %sw.bb455
    i32 6, label %sw.bb469
    i32 8, label %sw.bb480
    i32 10, label %sw.bb491
    i32 1, label %sw.bb502
    i32 3, label %sw.bb504
    i32 5, label %sw.bb506
    i32 7, label %sw.bb508
    i32 9, label %sw.bb510
    i32 11, label %sw.bb512
    i32 12, label %sw.bb514
  ]

sw.bb433:                                         ; preds = %sw.epilog
  %311 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp434 = fcmp ogt double %311, -1.000000e+00
  br i1 %cmp434, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb433
  %312 = load double, ptr %tmp, align 8, !tbaa !11
  %conv436 = fptoui double %312 to i8
  %conv437 = zext i8 %conv436 to i32
  br label %cond.end

cond.false:                                       ; preds = %sw.bb433
  %313 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg = fneg double %313
  %conv438 = fptoui double %fneg to i8
  %conv439 = zext i8 %conv438 to i32
  %sub = sub nsw i32 0, %conv439
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv437, %cond.true ], [ %sub, %cond.false ]
  %conv440 = trunc i32 %cond to i8
  %314 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv440, ptr %314, align 1, !tbaa !10
  br label %sw.epilog516

sw.bb441:                                         ; preds = %sw.epilog
  %315 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp442 = fcmp ogt double %315, -1.000000e+00
  br i1 %cmp442, label %cond.true444, label %cond.false447

cond.true444:                                     ; preds = %sw.bb441
  %316 = load double, ptr %tmp, align 8, !tbaa !11
  %conv445 = fptoui double %316 to i8
  %conv446 = zext i8 %conv445 to i32
  br label %cond.end452

cond.false447:                                    ; preds = %sw.bb441
  %317 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg448 = fneg double %317
  %conv449 = fptoui double %fneg448 to i8
  %conv450 = zext i8 %conv449 to i32
  %sub451 = sub nsw i32 0, %conv450
  br label %cond.end452

cond.end452:                                      ; preds = %cond.false447, %cond.true444
  %cond453 = phi i32 [ %conv446, %cond.true444 ], [ %sub451, %cond.false447 ]
  %conv454 = trunc i32 %cond453 to i8
  %318 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv454, ptr %318, align 1, !tbaa !10
  br label %sw.epilog516

sw.bb455:                                         ; preds = %sw.epilog
  %319 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp456 = fcmp ogt double %319, -1.000000e+00
  br i1 %cmp456, label %cond.true458, label %cond.false461

cond.true458:                                     ; preds = %sw.bb455
  %320 = load double, ptr %tmp, align 8, !tbaa !11
  %conv459 = fptoui double %320 to i16
  %conv460 = zext i16 %conv459 to i32
  br label %cond.end466

cond.false461:                                    ; preds = %sw.bb455
  %321 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg462 = fneg double %321
  %conv463 = fptoui double %fneg462 to i16
  %conv464 = zext i16 %conv463 to i32
  %sub465 = sub nsw i32 0, %conv464
  br label %cond.end466

cond.end466:                                      ; preds = %cond.false461, %cond.true458
  %cond467 = phi i32 [ %conv460, %cond.true458 ], [ %sub465, %cond.false461 ]
  %conv468 = trunc i32 %cond467 to i16
  %322 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv468, ptr %322, align 2, !tbaa !26
  br label %sw.epilog516

sw.bb469:                                         ; preds = %sw.epilog
  %323 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp470 = fcmp ogt double %323, -1.000000e+00
  br i1 %cmp470, label %cond.true472, label %cond.false474

cond.true472:                                     ; preds = %sw.bb469
  %324 = load double, ptr %tmp, align 8, !tbaa !11
  %conv473 = fptoui double %324 to i32
  br label %cond.end478

cond.false474:                                    ; preds = %sw.bb469
  %325 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg475 = fneg double %325
  %conv476 = fptoui double %fneg475 to i32
  %sub477 = sub i32 0, %conv476
  br label %cond.end478

cond.end478:                                      ; preds = %cond.false474, %cond.true472
  %cond479 = phi i32 [ %conv473, %cond.true472 ], [ %sub477, %cond.false474 ]
  %326 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %cond479, ptr %326, align 4, !tbaa !8
  br label %sw.epilog516

sw.bb480:                                         ; preds = %sw.epilog
  %327 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp481 = fcmp ogt double %327, -1.000000e+00
  br i1 %cmp481, label %cond.true483, label %cond.false485

cond.true483:                                     ; preds = %sw.bb480
  %328 = load double, ptr %tmp, align 8, !tbaa !11
  %conv484 = fptoui double %328 to i64
  br label %cond.end489

cond.false485:                                    ; preds = %sw.bb480
  %329 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg486 = fneg double %329
  %conv487 = fptoui double %fneg486 to i64
  %sub488 = sub i64 0, %conv487
  br label %cond.end489

cond.end489:                                      ; preds = %cond.false485, %cond.true483
  %cond490 = phi i64 [ %conv484, %cond.true483 ], [ %sub488, %cond.false485 ]
  %330 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond490, ptr %330, align 8, !tbaa !13
  br label %sw.epilog516

sw.bb491:                                         ; preds = %sw.epilog
  %331 = load double, ptr %tmp, align 8, !tbaa !11
  %cmp492 = fcmp ogt double %331, -1.000000e+00
  br i1 %cmp492, label %cond.true494, label %cond.false496

cond.true494:                                     ; preds = %sw.bb491
  %332 = load double, ptr %tmp, align 8, !tbaa !11
  %conv495 = fptoui double %332 to i64
  br label %cond.end500

cond.false496:                                    ; preds = %sw.bb491
  %333 = load double, ptr %tmp, align 8, !tbaa !11
  %fneg497 = fneg double %333
  %conv498 = fptoui double %fneg497 to i64
  %sub499 = sub i64 0, %conv498
  br label %cond.end500

cond.end500:                                      ; preds = %cond.false496, %cond.true494
  %cond501 = phi i64 [ %conv495, %cond.true494 ], [ %sub499, %cond.false496 ]
  %334 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %cond501, ptr %334, align 8, !tbaa !28
  br label %sw.epilog516

sw.bb502:                                         ; preds = %sw.epilog
  %335 = load double, ptr %tmp, align 8, !tbaa !11
  %conv503 = fptosi double %335 to i8
  %336 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv503, ptr %336, align 1, !tbaa !10
  br label %sw.epilog516

sw.bb504:                                         ; preds = %sw.epilog
  %337 = load double, ptr %tmp, align 8, !tbaa !11
  %conv505 = fptosi double %337 to i16
  %338 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv505, ptr %338, align 2, !tbaa !26
  br label %sw.epilog516

sw.bb506:                                         ; preds = %sw.epilog
  %339 = load double, ptr %tmp, align 8, !tbaa !11
  %conv507 = fptosi double %339 to i32
  %340 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv507, ptr %340, align 4, !tbaa !8
  br label %sw.epilog516

sw.bb508:                                         ; preds = %sw.epilog
  %341 = load double, ptr %tmp, align 8, !tbaa !11
  %conv509 = fptosi double %341 to i64
  %342 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv509, ptr %342, align 8, !tbaa !13
  br label %sw.epilog516

sw.bb510:                                         ; preds = %sw.epilog
  %343 = load double, ptr %tmp, align 8, !tbaa !11
  %conv511 = fptosi double %343 to i64
  %344 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv511, ptr %344, align 8, !tbaa !28
  br label %sw.epilog516

sw.bb512:                                         ; preds = %sw.epilog
  %345 = load double, ptr %tmp, align 8, !tbaa !11
  %conv513 = fptrunc double %345 to float
  %346 = load ptr, ptr %po, align 8, !tbaa !4
  store float %conv513, ptr %346, align 4, !tbaa !30
  br label %sw.epilog516

sw.bb514:                                         ; preds = %sw.epilog
  %347 = load double, ptr %tmp, align 8, !tbaa !11
  %348 = load ptr, ptr %po, align 8, !tbaa !4
  store double %347, ptr %348, align 8, !tbaa !11
  br label %sw.epilog516

sw.default515:                                    ; preds = %sw.epilog
  %349 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %349, ptr noundef @.str)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup576

sw.epilog516:                                     ; preds = %sw.bb514, %sw.bb512, %sw.bb510, %sw.bb508, %sw.bb506, %sw.bb504, %sw.bb502, %cond.end500, %cond.end489, %cond.end478, %cond.end466, %cond.end452, %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ii517) #8
  %rank_m1 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 0
  %350 = load i32, ptr %rank_m1, align 8, !tbaa !32
  store i32 %350, ptr %_ii517, align 4, !tbaa !8
  br label %for.cond518

for.cond518:                                      ; preds = %for.inc574, %sw.epilog516
  %351 = load i32, ptr %_ii517, align 4, !tbaa !8
  %cmp519 = icmp sge i32 %351, 0
  br i1 %cmp519, label %for.body521, label %for.end575

for.body521:                                      ; preds = %for.cond518
  call void @llvm.lifetime.start.p0(i64 8, ptr %_pp) #8
  %coordinates = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %352 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom = sext i32 %352 to i64
  %arrayidx522 = getelementptr inbounds [32 x i64], ptr %coordinates, i64 0, i64 %idxprom
  %353 = load i64, ptr %arrayidx522, align 8, !tbaa !13
  store i64 %353, ptr %_pp, align 8, !tbaa !13
  %354 = load i64, ptr %_pp, align 8, !tbaa !13
  %dimensions = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 1
  %355 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom523 = sext i32 %355 to i64
  %arrayidx524 = getelementptr inbounds [32 x i64], ptr %dimensions, i64 0, i64 %idxprom523
  %356 = load i64, ptr %arrayidx524, align 8, !tbaa !13
  %cmp525 = icmp slt i64 %354, %356
  br i1 %cmp525, label %if.then527, label %if.else553

if.then527:                                       ; preds = %for.body521
  %357 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound1 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 2
  %358 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom528 = sext i32 %358 to i64
  %arrayidx529 = getelementptr inbounds [32 x i64], ptr %bound1, i64 0, i64 %idxprom528
  %359 = load i64, ptr %arrayidx529, align 8, !tbaa !13
  %cmp530 = icmp slt i64 %357, %359
  br i1 %cmp530, label %if.then536, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then527
  %360 = load i64, ptr %_pp, align 8, !tbaa !13
  %bound2 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 3
  %361 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom532 = sext i32 %361 to i64
  %arrayidx533 = getelementptr inbounds [32 x i64], ptr %bound2, i64 0, i64 %idxprom532
  %362 = load i64, ptr %arrayidx533, align 8, !tbaa !13
  %cmp534 = icmp sge i64 %360, %362
  br i1 %cmp534, label %if.then536, label %if.end540

if.then536:                                       ; preds = %lor.lhs.false, %if.then527
  %strides = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 0
  %363 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom537 = sext i32 %363 to i64
  %arrayidx538 = getelementptr inbounds [32 x i64], ptr %strides, i64 0, i64 %idxprom537
  %364 = load i64, ptr %arrayidx538, align 8, !tbaa !13
  %365 = load ptr, ptr %oo, align 8, !tbaa !4
  %add.ptr539 = getelementptr inbounds i64, ptr %365, i64 %364
  store ptr %add.ptr539, ptr %oo, align 8, !tbaa !4
  br label %if.end540

if.end540:                                        ; preds = %if.then536, %lor.lhs.false
  %coordinates541 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %366 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom542 = sext i32 %366 to i64
  %arrayidx543 = getelementptr inbounds [32 x i64], ptr %coordinates541, i64 0, i64 %idxprom542
  %367 = load i64, ptr %arrayidx543, align 8, !tbaa !13
  %inc544 = add nsw i64 %367, 1
  store i64 %inc544, ptr %arrayidx543, align 8, !tbaa !13
  %strides545 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 3
  %368 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom546 = sext i32 %368 to i64
  %arrayidx547 = getelementptr inbounds [32 x i64], ptr %strides545, i64 0, i64 %idxprom546
  %369 = load i64, ptr %arrayidx547, align 8, !tbaa !13
  %370 = load ptr, ptr %pi, align 8, !tbaa !4
  %add.ptr548 = getelementptr inbounds i8, ptr %370, i64 %369
  store ptr %add.ptr548, ptr %pi, align 8, !tbaa !4
  %strides549 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 3
  %371 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom550 = sext i32 %371 to i64
  %arrayidx551 = getelementptr inbounds [32 x i64], ptr %strides549, i64 0, i64 %idxprom550
  %372 = load i64, ptr %arrayidx551, align 8, !tbaa !13
  %373 = load ptr, ptr %po, align 8, !tbaa !4
  %add.ptr552 = getelementptr inbounds i8, ptr %373, i64 %372
  store ptr %add.ptr552, ptr %po, align 8, !tbaa !4
  store i32 50, ptr %cleanup.dest.slot, align 4
  br label %cleanup571

if.else553:                                       ; preds = %for.body521
  %coordinates554 = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 2
  %374 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom555 = sext i32 %374 to i64
  %arrayidx556 = getelementptr inbounds [32 x i64], ptr %coordinates554, i64 0, i64 %idxprom555
  store i64 0, ptr %arrayidx556, align 8, !tbaa !13
  %backstrides = getelementptr inbounds %struct.NI_Iterator, ptr %ii, i32 0, i32 4
  %375 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom557 = sext i32 %375 to i64
  %arrayidx558 = getelementptr inbounds [32 x i64], ptr %backstrides, i64 0, i64 %idxprom557
  %376 = load i64, ptr %arrayidx558, align 8, !tbaa !13
  %377 = load ptr, ptr %pi, align 8, !tbaa !4
  %idx.neg = sub i64 0, %376
  %add.ptr559 = getelementptr inbounds i8, ptr %377, i64 %idx.neg
  store ptr %add.ptr559, ptr %pi, align 8, !tbaa !4
  %backstrides560 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 4
  %378 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom561 = sext i32 %378 to i64
  %arrayidx562 = getelementptr inbounds [32 x i64], ptr %backstrides560, i64 0, i64 %idxprom561
  %379 = load i64, ptr %arrayidx562, align 8, !tbaa !13
  %380 = load ptr, ptr %po, align 8, !tbaa !4
  %idx.neg563 = sub i64 0, %379
  %add.ptr564 = getelementptr inbounds i8, ptr %380, i64 %idx.neg563
  store ptr %add.ptr564, ptr %po, align 8, !tbaa !4
  %backstrides565 = getelementptr inbounds %struct.NI_FilterIterator, ptr %fi, i32 0, i32 1
  %381 = load i32, ptr %_ii517, align 4, !tbaa !8
  %idxprom566 = sext i32 %381 to i64
  %arrayidx567 = getelementptr inbounds [32 x i64], ptr %backstrides565, i64 0, i64 %idxprom566
  %382 = load i64, ptr %arrayidx567, align 8, !tbaa !13
  %383 = load ptr, ptr %oo, align 8, !tbaa !4
  %idx.neg568 = sub i64 0, %382
  %add.ptr569 = getelementptr inbounds i64, ptr %383, i64 %idx.neg568
  store ptr %add.ptr569, ptr %oo, align 8, !tbaa !4
  br label %if.end570

if.end570:                                        ; preds = %if.else553
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup571

cleanup571:                                       ; preds = %if.end570, %if.end540
  call void @llvm.lifetime.end.p0(i64 8, ptr %_pp) #8
  %cleanup.dest572 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest572, label %unreachable [
    i32 0, label %cleanup.cont573
    i32 50, label %for.end575
  ]

cleanup.cont573:                                  ; preds = %cleanup571
  br label %for.inc574

for.inc574:                                       ; preds = %cleanup.cont573
  %384 = load i32, ptr %_ii517, align 4, !tbaa !8
  %dec = add nsw i32 %384, -1
  store i32 %dec, ptr %_ii517, align 4, !tbaa !8
  br label %for.cond518

for.end575:                                       ; preds = %cleanup571, %for.cond518
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ii517) #8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup576

cleanup576:                                       ; preds = %sw.default515, %sw.default, %for.end575, %cleanup429, %cleanup399, %cleanup368, %cleanup337, %cleanup306, %cleanup275, %cleanup244, %cleanup213, %cleanup182, %cleanup151, %cleanup120, %cleanup89, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  %cleanup.dest577 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest577, label %cleanup585 [
    i32 0, label %cleanup.cont578
    i32 5, label %exit
  ]

cleanup.cont578:                                  ; preds = %cleanup576
  br label %for.inc579

for.inc579:                                       ; preds = %cleanup.cont578
  %385 = load i64, ptr %jj, align 8, !tbaa !13
  %inc580 = add nsw i64 %385, 1
  store i64 %inc580, ptr %jj, align 8, !tbaa !13
  br label %for.cond37

for.end581:                                       ; preds = %for.cond37
  br label %exit

exit:                                             ; preds = %for.end581, %cleanup576, %if.then34, %if.then24, %if.then20, %if.then16, %if.then9
  %386 = load ptr, ptr %offsets, align 8, !tbaa !4
  call void @free(ptr noundef %386) #8
  %387 = load ptr, ptr %buffer, align 8, !tbaa !4
  call void @free(ptr noundef %387) #8
  %call582 = call ptr @PyErr_Occurred()
  %tobool583 = icmp ne ptr %call582, null
  %388 = zext i1 %tobool583 to i64
  %cond584 = select i1 %tobool583, i32 0, i32 1
  store i32 %cond584, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup585

cleanup585:                                       ; preds = %exit, %cleanup576
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %po) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %io) #8
  call void @llvm.lifetime.end.p0(i64 1032, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr %fi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %oo) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %offsets) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %border_flag_value) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %filter_size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsize) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pf) #8
  %389 = load i32, ptr %retval, align 4
  ret i32 %389

unreachable:                                      ; preds = %cleanup571
  unreachable
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!16, !5, i64 0}
!16 = !{!"", !5, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !17, i64 64, !5, i64 1096, !6, i64 1104, !6, i64 1108, !12, i64 1112}
!17 = !{!"", !9, i64 0, !6, i64 8, !6, i64 264, !6, i64 520, !6, i64 776}
!18 = !{!16, !14, i64 16}
!19 = !{!16, !14, i64 32}
!20 = !{!16, !14, i64 40}
!21 = !{!22, !5, i64 32}
!22 = !{!"tagPyArrayObject_fields", !23, i64 0, !5, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!23 = !{!"_object", !14, i64 0, !5, i64 8}
!24 = !{!22, !9, i64 24}
!25 = !{!22, !5, i64 16}
!26 = !{!27, !27, i64 0}
!27 = !{!"short", !6, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long long", !6, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"float", !6, i64 0}
!32 = !{!17, !9, i64 0}
!33 = !{!22, !5, i64 56}
!34 = !{!35, !9, i64 28}
!35 = !{!"_PyArray_Descr", !23, i64 0, !5, i64 16, !6, i64 24, !6, i64 25, !6, i64 26, !6, i64 27, !9, i64 28, !9, i64 32, !9, i64 36, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !14, i64 88}
!36 = !{!37, !12, i64 0}
!37 = !{!"pairs", !12, i64 0, !14, i64 8}
!38 = !{!37, !14, i64 8}
