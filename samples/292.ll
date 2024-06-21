; ModuleID = 'samples/292.bc'
source_filename = "../scipy/ndimage/src/ni_interpolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NI_LineBuffer = type { ptr, i64, i64, i64, i64, i64, i64, i64, %struct.NI_Iterator, ptr, i32, i32, double }
%struct.NI_Iterator = type { i32, [32 x i64], [32 x i64], [32 x i64], [32 x i64] }
%struct.tagPyArrayObject_fields = type { %struct._object, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct._object = type { i64, ptr }
%struct._PyArray_Descr = type { %struct._object, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@_scipy_ndimage_ARRAY_API = external global ptr, align 8
@PyExc_RuntimeError = external global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"unknown error in mapping function\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"coordinate array data type not supported\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"data type not supported\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @NI_SplineFilter1D(ptr noundef %input, i32 noundef %order, i32 noundef %axis, i32 noundef %mode, ptr noundef %output) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %axis.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %npoles = alloca i32, align 4
  %more = alloca i32, align 4
  %kk = alloca i64, align 8
  %lines = alloca i64, align 8
  %len = alloca i64, align 8
  %buffer = alloca ptr, align 8
  %poles = alloca [2 x double], align 16
  %iline_buffer = alloca %struct.NI_LineBuffer, align 8
  %oline_buffer = alloca %struct.NI_LineBuffer, align 8
  %_save = alloca ptr, align 8
  %ln = alloca ptr, align 8
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store i32 %order, ptr %order.addr, align 4, !tbaa !8
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !8
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !10
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %npoles) #7
  store i32 0, ptr %npoles, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %more) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lines) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #7
  store ptr null, ptr %buffer, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %poles) #7
  call void @llvm.lifetime.start.p0(i64 1120, ptr %iline_buffer) #7
  call void @llvm.lifetime.start.p0(i64 1120, ptr %oline_buffer) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #7
  store ptr null, ptr %_save, align 8, !tbaa !4
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call = call i32 @PyArray_NDIM(ptr noundef %0)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %2 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call1 = call i64 @PyArray_DIM(ptr noundef %1, i32 noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, ptr %len, align 8, !tbaa !11
  %3 = load i64, ptr %len, align 8, !tbaa !11
  %cmp2 = icmp slt i64 %3, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %exit

if.end:                                           ; preds = %cond.end
  %4 = load i32, ptr %order.addr, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [2 x double], ptr %poles, i64 0, i64 0
  %call3 = call i32 @get_filter_poles(i32 noundef %4, ptr noundef %npoles, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %exit

if.end5:                                          ; preds = %if.end
  store i64 -1, ptr %lines, align 8, !tbaa !11
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %6 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %call6 = call i32 @NI_AllocateLineBuffer(ptr noundef %5, i32 noundef %6, i64 noundef 0, i64 noundef 0, ptr noundef %lines, i64 noundef 256000, ptr noundef %buffer)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  br label %exit

if.end9:                                          ; preds = %if.end5
  %7 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %8 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %9 = load i64, ptr %lines, align 8, !tbaa !11
  %10 = load ptr, ptr %buffer, align 8, !tbaa !4
  %call10 = call i32 @NI_InitLineBuffer(ptr noundef %7, i32 noundef %8, i64 noundef 0, i64 noundef 0, i64 noundef %9, ptr noundef %10, i32 noundef 3, double noundef 0.000000e+00, ptr noundef %iline_buffer)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  br label %exit

if.end13:                                         ; preds = %if.end9
  %11 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %12 = load i32, ptr %axis.addr, align 4, !tbaa !8
  %13 = load i64, ptr %lines, align 8, !tbaa !11
  %14 = load ptr, ptr %buffer, align 8, !tbaa !4
  %call14 = call i32 @NI_InitLineBuffer(ptr noundef %11, i32 noundef %12, i64 noundef 0, i64 noundef 0, i64 noundef %13, ptr noundef %14, i32 noundef 3, double noundef 0.000000e+00, ptr noundef %oline_buffer)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  br label %exit

if.end17:                                         ; preds = %if.end13
  br label %do.body

do.body:                                          ; preds = %if.end17
  %call18 = call ptr @PyEval_SaveThread()
  store ptr %call18, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body19

do.body19:                                        ; preds = %do.cond34, %do.end
  %call20 = call i32 @NI_ArrayToLineBuffer(ptr noundef %iline_buffer, ptr noundef %lines, ptr noundef %more)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %do.body19
  br label %exit

if.end23:                                         ; preds = %do.body19
  store i64 0, ptr %kk, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %15 = load i64, ptr %kk, align 8, !tbaa !11
  %16 = load i64, ptr %lines, align 8, !tbaa !11
  %cmp24 = icmp slt i64 %15, %16
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ln) #7
  %buffer_data = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 0
  %17 = load ptr, ptr %buffer_data, align 8, !tbaa !13
  %18 = load i64, ptr %kk, align 8, !tbaa !11
  %line_length = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 2
  %19 = load i64, ptr %line_length, align 8, !tbaa !17
  %size1 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 4
  %20 = load i64, ptr %size1, align 8, !tbaa !18
  %add = add nsw i64 %19, %20
  %size2 = getelementptr inbounds %struct.NI_LineBuffer, ptr %iline_buffer, i32 0, i32 5
  %21 = load i64, ptr %size2, align 8, !tbaa !19
  %add25 = add nsw i64 %add, %21
  %mul = mul nsw i64 %18, %add25
  %add.ptr = getelementptr inbounds double, ptr %17, i64 %mul
  store ptr %add.ptr, ptr %ln, align 8, !tbaa !4
  %22 = load i64, ptr %len, align 8, !tbaa !11
  %cmp26 = icmp sgt i64 %22, 1
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.body
  %23 = load ptr, ptr %ln, align 8, !tbaa !4
  %24 = load i64, ptr %len, align 8, !tbaa !11
  %arraydecay28 = getelementptr inbounds [2 x double], ptr %poles, i64 0, i64 0
  %25 = load i32, ptr %npoles, align 4, !tbaa !8
  %26 = load i32, ptr %mode.addr, align 4, !tbaa !10
  call void @apply_filter(ptr noundef %23, i64 noundef %24, ptr noundef %arraydecay28, i32 noundef %25, i32 noundef %26)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %ln) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %27 = load i64, ptr %kk, align 8, !tbaa !11
  %inc = add nsw i64 %27, 1
  store i64 %inc, ptr %kk, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call30 = call i32 @NI_LineBufferToArray(ptr noundef %oline_buffer)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %for.end
  br label %exit

if.end33:                                         ; preds = %for.end
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  %28 = load i32, ptr %more, align 4, !tbaa !8
  %tobool35 = icmp ne i32 %28, 0
  br i1 %tobool35, label %do.body19, label %do.end36

do.end36:                                         ; preds = %do.cond34
  br label %exit

exit:                                             ; preds = %do.end36, %if.then32, %if.then22, %if.then16, %if.then12, %if.then8, %if.then4, %if.then
  br label %do.body37

do.body37:                                        ; preds = %exit
  %29 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool38 = icmp ne ptr %29, null
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body37
  %30 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %30)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %do.body37
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  %31 = load ptr, ptr %buffer, align 8, !tbaa !4
  call void @free(ptr noundef %31) #7
  %call43 = call ptr @PyErr_Occurred()
  %tobool44 = icmp ne ptr %call43, null
  %32 = zext i1 %tobool44 to i64
  %cond45 = select i1 %tobool44, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #7
  call void @llvm.lifetime.end.p0(i64 1120, ptr %oline_buffer) #7
  call void @llvm.lifetime.end.p0(i64 1120, ptr %iline_buffer) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %poles) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lines) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %more) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %npoles) #7
  ret i32 %cond45
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyArray_NDIM(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %nd = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nd, align 8, !tbaa !20
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PyArray_DIM(ptr noundef %arr, i32 noundef %idim) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  %idim.addr = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  store i32 %idim, ptr %idim.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %dimensions = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %dimensions, align 8, !tbaa !23
  %2 = load i32, ptr %idim.addr, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !11
  ret i64 %3
}

declare i32 @get_filter_poles(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @NI_AllocateLineBuffer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @NI_InitLineBuffer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) #3

declare ptr @PyEval_SaveThread() #3

declare i32 @NI_ArrayToLineBuffer(ptr noundef, ptr noundef, ptr noundef) #3

declare void @apply_filter(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @NI_LineBufferToArray(ptr noundef) #3

declare void @PyEval_RestoreThread(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare ptr @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define hidden i32 @_get_spline_boundary_mode(i32 noundef %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  %0 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %mode.addr, align 4, !tbaa !8
  store i32 %2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define hidden i32 @NI_GeometricTransform(ptr noundef %input, ptr noundef %map, ptr noundef %map_data, ptr noundef %matrix_ar, ptr noundef %shift_ar, ptr noundef %coordinates, ptr noundef %output, i32 noundef %order, i32 noundef %mode, double noundef %cval, i32 noundef %nprepad) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %map.addr = alloca ptr, align 8
  %map_data.addr = alloca ptr, align 8
  %matrix_ar.addr = alloca ptr, align 8
  %shift_ar.addr = alloca ptr, align 8
  %coordinates.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %cval.addr = alloca double, align 8
  %nprepad.addr = alloca i32, align 4
  %po = alloca ptr, align 8
  %pi = alloca ptr, align 8
  %pc = alloca ptr, align 8
  %edge_offsets = alloca ptr, align 8
  %data_offsets = alloca ptr, align 8
  %filter_size = alloca i64, align 8
  %edge_grid_const = alloca ptr, align 8
  %ftmp = alloca [32 x i64], align 16
  %fcoordinates = alloca ptr, align 8
  %foffsets = alloca ptr, align 8
  %cstride = alloca i64, align 8
  %kk = alloca i64, align 8
  %hh = alloca i64, align 8
  %ll = alloca i64, align 8
  %jj = alloca i64, align 8
  %size = alloca i64, align 8
  %splvals = alloca ptr, align 8
  %icoor = alloca [32 x double], align 16
  %idimensions = alloca [32 x i64], align 16
  %istrides = alloca [32 x i64], align 16
  %io = alloca %struct.NI_Iterator, align 8
  %ic = alloca %struct.NI_Iterator, align 8
  %matrix = alloca ptr, align 8
  %shift = alloca ptr, align 8
  %irank = alloca i32, align 4
  %orank = alloca i32, align 4
  %spline_mode = alloca i32, align 4
  %_save = alloca ptr, align 8
  %t = alloca double, align 8
  %constant = alloca i32, align 4
  %edge = alloca i32, align 4
  %offset = alloca i64, align 8
  %p = alloca ptr, align 8
  %p343 = alloca ptr, align 8
  %_hh = alloca i64, align 8
  %_hh356 = alloca i64, align 8
  %_hh369 = alloca i64, align 8
  %_hh382 = alloca i64, align 8
  %_hh395 = alloca i64, align 8
  %_hh408 = alloca i64, align 8
  %_hh421 = alloca i64, align 8
  %_hh434 = alloca i64, align 8
  %_hh447 = alloca i64, align 8
  %_hh460 = alloca i64, align 8
  %_hh473 = alloca i64, align 8
  %_hh486 = alloca i64, align 8
  %_hh499 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cc = alloca double, align 8
  %start = alloca i64, align 8
  %idx = alloca i64, align 8
  %ff = alloca ptr, align 8
  %type_num = alloca i32, align 4
  %coeff = alloca double, align 8
  %idx630 = alloca i64, align 8
  %is_cval = alloca i8, align 1
  %_ii = alloca i32, align 4
  %_ii1029 = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %map, ptr %map.addr, align 8, !tbaa !4
  store ptr %map_data, ptr %map_data.addr, align 8, !tbaa !4
  store ptr %matrix_ar, ptr %matrix_ar.addr, align 8, !tbaa !4
  store ptr %shift_ar, ptr %shift_ar.addr, align 8, !tbaa !4
  store ptr %coordinates, ptr %coordinates.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %order, ptr %order.addr, align 4, !tbaa !8
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  store double %cval, ptr %cval.addr, align 8, !tbaa !24
  store i32 %nprepad, ptr %nprepad.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %po) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pc) #7
  store ptr null, ptr %pc, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %edge_offsets) #7
  store ptr null, ptr %edge_offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_offsets) #7
  store ptr null, ptr %data_offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %filter_size) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %edge_grid_const) #7
  store ptr null, ptr %edge_grid_const, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 256, ptr %ftmp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcoordinates) #7
  store ptr null, ptr %fcoordinates, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %foffsets) #7
  store ptr null, ptr %foffsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cstride) #7
  store i64 0, ptr %cstride, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hh) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ll) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %splvals) #7
  store ptr null, ptr %splvals, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 256, ptr %icoor) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %idimensions) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %istrides) #7
  call void @llvm.lifetime.start.p0(i64 1032, ptr %io) #7
  call void @llvm.lifetime.start.p0(i64 1032, ptr %ic) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %matrix) #7
  %0 = load ptr, ptr %matrix_ar.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %matrix_ar.addr, align 8, !tbaa !4
  %call = call ptr @PyArray_DATA(ptr noundef %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %matrix, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %shift) #7
  %2 = load ptr, ptr %shift_ar.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %cond.true2, label %cond.false4

cond.true2:                                       ; preds = %cond.end
  %3 = load ptr, ptr %shift_ar.addr, align 8, !tbaa !4
  %call3 = call ptr @PyArray_DATA(ptr noundef %3)
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi ptr [ %call3, %cond.true2 ], [ null, %cond.false4 ]
  store ptr %cond6, ptr %shift, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %irank) #7
  store i32 0, ptr %irank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %orank) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %spline_mode) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #7
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %cond.end5
  %call7 = call ptr @PyEval_SaveThread()
  store ptr %call7, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %kk, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i64, ptr %kk, align 8, !tbaa !11
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call8 = call i32 @PyArray_NDIM(ptr noundef %5)
  %conv = sext i32 %call8 to i64
  %cmp = icmp slt i64 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %7 = load i64, ptr %kk, align 8, !tbaa !11
  %conv10 = trunc i64 %7 to i32
  %call11 = call i64 @PyArray_DIM(ptr noundef %6, i32 noundef %conv10)
  %8 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %8
  store i64 %call11, ptr %arrayidx, align 8, !tbaa !11
  %9 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %10 = load i64, ptr %kk, align 8, !tbaa !11
  %conv12 = trunc i64 %10 to i32
  %call13 = call i64 @PyArray_STRIDE(ptr noundef %9, i32 noundef %conv12)
  %11 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx14 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %11
  store i64 %call13, ptr %arrayidx14, align 8, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, ptr %kk, align 8, !tbaa !11
  %inc = add nsw i64 %12, 1
  store i64 %inc, ptr %kk, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call15 = call i32 @PyArray_NDIM(ptr noundef %13)
  store i32 %call15, ptr %irank, align 4, !tbaa !8
  %14 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call16 = call i32 @PyArray_NDIM(ptr noundef %14)
  store i32 %call16, ptr %orank, align 4, !tbaa !8
  %15 = load ptr, ptr %coordinates.addr, align 8, !tbaa !4
  %tobool17 = icmp ne ptr %15, null
  br i1 %tobool17, label %if.then, label %if.end27

if.then:                                          ; preds = %for.end
  %16 = load ptr, ptr %coordinates.addr, align 8, !tbaa !4
  %call18 = call i32 @NI_InitPointIterator(ptr noundef %16, ptr noundef %ic)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end, label %if.then20

if.then20:                                        ; preds = %if.then
  br label %exit

if.end:                                           ; preds = %if.then
  %strides = getelementptr inbounds %struct.NI_Iterator, ptr %ic, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [32 x i64], ptr %strides, i64 0, i64 0
  %17 = load i64, ptr %arrayidx21, align 8, !tbaa !11
  store i64 %17, ptr %cstride, align 8, !tbaa !11
  %call22 = call i32 @NI_LineIterator(ptr noundef %ic, i32 noundef 0)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end
  br label %exit

if.end25:                                         ; preds = %if.end
  %18 = load ptr, ptr %coordinates.addr, align 8, !tbaa !4
  %call26 = call ptr @PyArray_DATA(ptr noundef %18)
  store ptr %call26, ptr %pc, align 8, !tbaa !4
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %for.end
  %19 = load i32, ptr %irank, align 4, !tbaa !8
  %conv28 = sext i32 %19 to i64
  %mul = mul i64 %conv28, 8
  %call29 = call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call29, ptr %edge_offsets, align 8, !tbaa !4
  %20 = load i32, ptr %irank, align 4, !tbaa !8
  %conv30 = sext i32 %20 to i64
  %mul31 = mul i64 %conv30, 8
  %call32 = call noalias ptr @malloc(i64 noundef %mul31) #8
  store ptr %call32, ptr %data_offsets, align 8, !tbaa !4
  %21 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %tobool33 = icmp ne ptr %21, null
  br i1 %tobool33, label %lor.lhs.false, label %if.then35

lor.lhs.false:                                    ; preds = %if.end27
  %22 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  %tobool34 = icmp ne ptr %22, null
  br i1 %tobool34, label %if.end43, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false, %if.end27
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  %23 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool37 = icmp ne ptr %23, null
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %do.body36
  %24 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %24)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %do.body36
  br label %do.cond40

do.cond40:                                        ; preds = %if.end39
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  %call42 = call ptr @PyErr_NoMemory()
  br label %exit

if.end43:                                         ; preds = %lor.lhs.false
  %25 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp44 = icmp eq i32 %25, 6
  br i1 %cmp44, label %if.then46, label %if.end92

if.then46:                                        ; preds = %if.end43
  %26 = load i32, ptr %irank, align 4, !tbaa !8
  %conv47 = sext i32 %26 to i64
  %mul48 = mul i64 %conv47, 8
  %call49 = call noalias ptr @malloc(i64 noundef %mul48) #8
  store ptr %call49, ptr %edge_grid_const, align 8, !tbaa !4
  %27 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %tobool50 = icmp ne ptr %27, null
  br i1 %tobool50, label %if.end59, label %if.then51

if.then51:                                        ; preds = %if.then46
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  %28 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool53 = icmp ne ptr %28, null
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %do.body52
  %29 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %29)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %do.body52
  br label %do.cond56

do.cond56:                                        ; preds = %if.end55
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  %call58 = call ptr @PyErr_NoMemory()
  br label %exit

if.end59:                                         ; preds = %if.then46
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc66, %if.end59
  %30 = load i64, ptr %jj, align 8, !tbaa !11
  %31 = load i32, ptr %irank, align 4, !tbaa !8
  %conv61 = sext i32 %31 to i64
  %cmp62 = icmp slt i64 %30, %conv61
  br i1 %cmp62, label %for.body64, label %for.end68

for.body64:                                       ; preds = %for.cond60
  %32 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %33 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx65 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr null, ptr %arrayidx65, align 8, !tbaa !4
  br label %for.inc66

for.inc66:                                        ; preds = %for.body64
  %34 = load i64, ptr %jj, align 8, !tbaa !11
  %inc67 = add nsw i64 %34, 1
  store i64 %inc67, ptr %jj, align 8, !tbaa !11
  br label %for.cond60

for.end68:                                        ; preds = %for.cond60
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc89, %for.end68
  %35 = load i64, ptr %jj, align 8, !tbaa !11
  %36 = load i32, ptr %irank, align 4, !tbaa !8
  %conv70 = sext i32 %36 to i64
  %cmp71 = icmp slt i64 %35, %conv70
  br i1 %cmp71, label %for.body73, label %for.end91

for.body73:                                       ; preds = %for.cond69
  %37 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add = add nsw i32 %37, 1
  %conv74 = sext i32 %add to i64
  %mul75 = mul i64 %conv74, 1
  %call76 = call noalias ptr @malloc(i64 noundef %mul75) #8
  %38 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %39 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx77 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr %call76, ptr %arrayidx77, align 8, !tbaa !4
  %40 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %41 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx78 = getelementptr inbounds ptr, ptr %40, i64 %41
  %42 = load ptr, ptr %arrayidx78, align 8, !tbaa !4
  %tobool79 = icmp ne ptr %42, null
  br i1 %tobool79, label %if.end88, label %if.then80

if.then80:                                        ; preds = %for.body73
  br label %do.body81

do.body81:                                        ; preds = %if.then80
  %43 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %43, null
  br i1 %tobool82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %do.body81
  %44 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %44)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %do.body81
  br label %do.cond85

do.cond85:                                        ; preds = %if.end84
  br label %do.end86

do.end86:                                         ; preds = %do.cond85
  %call87 = call ptr @PyErr_NoMemory()
  br label %exit

if.end88:                                         ; preds = %for.body73
  br label %for.inc89

for.inc89:                                        ; preds = %if.end88
  %45 = load i64, ptr %jj, align 8, !tbaa !11
  %inc90 = add nsw i64 %45, 1
  store i64 %inc90, ptr %jj, align 8, !tbaa !11
  br label %for.cond69

for.end91:                                        ; preds = %for.cond69
  br label %if.end92

if.end92:                                         ; preds = %for.end91, %if.end43
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc99, %if.end92
  %46 = load i64, ptr %jj, align 8, !tbaa !11
  %47 = load i32, ptr %irank, align 4, !tbaa !8
  %conv94 = sext i32 %47 to i64
  %cmp95 = icmp slt i64 %46, %conv94
  br i1 %cmp95, label %for.body97, label %for.end101

for.body97:                                       ; preds = %for.cond93
  %48 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  %49 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx98 = getelementptr inbounds ptr, ptr %48, i64 %49
  store ptr null, ptr %arrayidx98, align 8, !tbaa !4
  br label %for.inc99

for.inc99:                                        ; preds = %for.body97
  %50 = load i64, ptr %jj, align 8, !tbaa !11
  %inc100 = add nsw i64 %50, 1
  store i64 %inc100, ptr %jj, align 8, !tbaa !11
  br label %for.cond93

for.end101:                                       ; preds = %for.cond93
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc123, %for.end101
  %51 = load i64, ptr %jj, align 8, !tbaa !11
  %52 = load i32, ptr %irank, align 4, !tbaa !8
  %conv103 = sext i32 %52 to i64
  %cmp104 = icmp slt i64 %51, %conv103
  br i1 %cmp104, label %for.body106, label %for.end125

for.body106:                                      ; preds = %for.cond102
  %53 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add107 = add nsw i32 %53, 1
  %conv108 = sext i32 %add107 to i64
  %mul109 = mul i64 %conv108, 8
  %call110 = call noalias ptr @malloc(i64 noundef %mul109) #8
  %54 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  %55 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx111 = getelementptr inbounds ptr, ptr %54, i64 %55
  store ptr %call110, ptr %arrayidx111, align 8, !tbaa !4
  %56 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  %57 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx112 = getelementptr inbounds ptr, ptr %56, i64 %57
  %58 = load ptr, ptr %arrayidx112, align 8, !tbaa !4
  %tobool113 = icmp ne ptr %58, null
  br i1 %tobool113, label %if.end122, label %if.then114

if.then114:                                       ; preds = %for.body106
  br label %do.body115

do.body115:                                       ; preds = %if.then114
  %59 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool116 = icmp ne ptr %59, null
  br i1 %tobool116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %do.body115
  %60 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %60)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %do.body115
  br label %do.cond119

do.cond119:                                       ; preds = %if.end118
  br label %do.end120

do.end120:                                        ; preds = %do.cond119
  %call121 = call ptr @PyErr_NoMemory()
  br label %exit

if.end122:                                        ; preds = %for.body106
  br label %for.inc123

for.inc123:                                       ; preds = %if.end122
  %61 = load i64, ptr %jj, align 8, !tbaa !11
  %inc124 = add nsw i64 %61, 1
  store i64 %inc124, ptr %jj, align 8, !tbaa !11
  br label %for.cond102

for.end125:                                       ; preds = %for.cond102
  %62 = load i32, ptr %irank, align 4, !tbaa !8
  %conv126 = sext i32 %62 to i64
  %mul127 = mul i64 %conv126, 8
  %call128 = call noalias ptr @malloc(i64 noundef %mul127) #8
  store ptr %call128, ptr %splvals, align 8, !tbaa !4
  %63 = load ptr, ptr %splvals, align 8, !tbaa !4
  %tobool129 = icmp ne ptr %63, null
  br i1 %tobool129, label %if.end138, label %if.then130

if.then130:                                       ; preds = %for.end125
  br label %do.body131

do.body131:                                       ; preds = %if.then130
  %64 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool132 = icmp ne ptr %64, null
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %do.body131
  %65 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %65)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %do.body131
  br label %do.cond135

do.cond135:                                       ; preds = %if.end134
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  %call137 = call ptr @PyErr_NoMemory()
  br label %exit

if.end138:                                        ; preds = %for.end125
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc145, %if.end138
  %66 = load i64, ptr %jj, align 8, !tbaa !11
  %67 = load i32, ptr %irank, align 4, !tbaa !8
  %conv140 = sext i32 %67 to i64
  %cmp141 = icmp slt i64 %66, %conv140
  br i1 %cmp141, label %for.body143, label %for.end147

for.body143:                                      ; preds = %for.cond139
  %68 = load ptr, ptr %splvals, align 8, !tbaa !4
  %69 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx144 = getelementptr inbounds ptr, ptr %68, i64 %69
  store ptr null, ptr %arrayidx144, align 8, !tbaa !4
  br label %for.inc145

for.inc145:                                       ; preds = %for.body143
  %70 = load i64, ptr %jj, align 8, !tbaa !11
  %inc146 = add nsw i64 %70, 1
  store i64 %inc146, ptr %jj, align 8, !tbaa !11
  br label %for.cond139

for.end147:                                       ; preds = %for.cond139
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc169, %for.end147
  %71 = load i64, ptr %jj, align 8, !tbaa !11
  %72 = load i32, ptr %irank, align 4, !tbaa !8
  %conv149 = sext i32 %72 to i64
  %cmp150 = icmp slt i64 %71, %conv149
  br i1 %cmp150, label %for.body152, label %for.end171

for.body152:                                      ; preds = %for.cond148
  %73 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add153 = add nsw i32 %73, 1
  %conv154 = sext i32 %add153 to i64
  %mul155 = mul i64 %conv154, 8
  %call156 = call noalias ptr @malloc(i64 noundef %mul155) #8
  %74 = load ptr, ptr %splvals, align 8, !tbaa !4
  %75 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx157 = getelementptr inbounds ptr, ptr %74, i64 %75
  store ptr %call156, ptr %arrayidx157, align 8, !tbaa !4
  %76 = load ptr, ptr %splvals, align 8, !tbaa !4
  %77 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx158 = getelementptr inbounds ptr, ptr %76, i64 %77
  %78 = load ptr, ptr %arrayidx158, align 8, !tbaa !4
  %tobool159 = icmp ne ptr %78, null
  br i1 %tobool159, label %if.end168, label %if.then160

if.then160:                                       ; preds = %for.body152
  br label %do.body161

do.body161:                                       ; preds = %if.then160
  %79 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool162 = icmp ne ptr %79, null
  br i1 %tobool162, label %if.then163, label %if.end164

if.then163:                                       ; preds = %do.body161
  %80 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %80)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %do.body161
  br label %do.cond165

do.cond165:                                       ; preds = %if.end164
  br label %do.end166

do.end166:                                        ; preds = %do.cond165
  %call167 = call ptr @PyErr_NoMemory()
  br label %exit

if.end168:                                        ; preds = %for.body152
  br label %for.inc169

for.inc169:                                       ; preds = %if.end168
  %81 = load i64, ptr %jj, align 8, !tbaa !11
  %inc170 = add nsw i64 %81, 1
  store i64 %inc170, ptr %jj, align 8, !tbaa !11
  br label %for.cond148

for.end171:                                       ; preds = %for.cond148
  store i64 1, ptr %filter_size, align 8, !tbaa !11
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc180, %for.end171
  %82 = load i64, ptr %jj, align 8, !tbaa !11
  %83 = load i32, ptr %irank, align 4, !tbaa !8
  %conv173 = sext i32 %83 to i64
  %cmp174 = icmp slt i64 %82, %conv173
  br i1 %cmp174, label %for.body176, label %for.end182

for.body176:                                      ; preds = %for.cond172
  %84 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add177 = add nsw i32 %84, 1
  %conv178 = sext i32 %add177 to i64
  %85 = load i64, ptr %filter_size, align 8, !tbaa !11
  %mul179 = mul nsw i64 %85, %conv178
  store i64 %mul179, ptr %filter_size, align 8, !tbaa !11
  br label %for.inc180

for.inc180:                                       ; preds = %for.body176
  %86 = load i64, ptr %jj, align 8, !tbaa !11
  %inc181 = add nsw i64 %86, 1
  store i64 %inc181, ptr %jj, align 8, !tbaa !11
  br label %for.cond172

for.end182:                                       ; preds = %for.cond172
  %87 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call183 = call i32 @NI_InitPointIterator(ptr noundef %87, ptr noundef %io)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.end186, label %if.then185

if.then185:                                       ; preds = %for.end182
  br label %exit

if.end186:                                        ; preds = %for.end182
  %88 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call187 = call ptr @PyArray_DATA(ptr noundef %88)
  store ptr %call187, ptr %pi, align 8, !tbaa !4
  %89 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call188 = call ptr @PyArray_DATA(ptr noundef %89)
  store ptr %call188, ptr %po, align 8, !tbaa !4
  %90 = load i32, ptr %irank, align 4, !tbaa !8
  %conv189 = sext i32 %90 to i64
  %91 = load i64, ptr %filter_size, align 8, !tbaa !11
  %mul190 = mul nsw i64 %conv189, %91
  %mul191 = mul i64 %mul190, 8
  %call192 = call noalias ptr @malloc(i64 noundef %mul191) #8
  store ptr %call192, ptr %fcoordinates, align 8, !tbaa !4
  %92 = load i64, ptr %filter_size, align 8, !tbaa !11
  %mul193 = mul i64 %92, 8
  %call194 = call noalias ptr @malloc(i64 noundef %mul193) #8
  store ptr %call194, ptr %foffsets, align 8, !tbaa !4
  %93 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  %tobool195 = icmp ne ptr %93, null
  br i1 %tobool195, label %lor.lhs.false196, label %if.then198

lor.lhs.false196:                                 ; preds = %if.end186
  %94 = load ptr, ptr %foffsets, align 8, !tbaa !4
  %tobool197 = icmp ne ptr %94, null
  br i1 %tobool197, label %if.end206, label %if.then198

if.then198:                                       ; preds = %lor.lhs.false196, %if.end186
  br label %do.body199

do.body199:                                       ; preds = %if.then198
  %95 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool200 = icmp ne ptr %95, null
  br i1 %tobool200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %do.body199
  %96 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %96)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %do.body199
  br label %do.cond203

do.cond203:                                       ; preds = %if.end202
  br label %do.end204

do.end204:                                        ; preds = %do.cond203
  %call205 = call ptr @PyErr_NoMemory()
  br label %exit

if.end206:                                        ; preds = %lor.lhs.false196
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc213, %if.end206
  %97 = load i64, ptr %jj, align 8, !tbaa !11
  %98 = load i32, ptr %irank, align 4, !tbaa !8
  %conv208 = sext i32 %98 to i64
  %cmp209 = icmp slt i64 %97, %conv208
  br i1 %cmp209, label %for.body211, label %for.end215

for.body211:                                      ; preds = %for.cond207
  %99 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx212 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %99
  store i64 0, ptr %arrayidx212, align 8, !tbaa !11
  br label %for.inc213

for.inc213:                                       ; preds = %for.body211
  %100 = load i64, ptr %jj, align 8, !tbaa !11
  %inc214 = add nsw i64 %100, 1
  store i64 %inc214, ptr %jj, align 8, !tbaa !11
  br label %for.cond207

for.end215:                                       ; preds = %for.cond207
  store i64 0, ptr %kk, align 8, !tbaa !11
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc256, %for.end215
  %101 = load i64, ptr %hh, align 8, !tbaa !11
  %102 = load i64, ptr %filter_size, align 8, !tbaa !11
  %cmp217 = icmp slt i64 %101, %102
  br i1 %cmp217, label %for.body219, label %for.end258

for.body219:                                      ; preds = %for.cond216
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc230, %for.body219
  %103 = load i64, ptr %jj, align 8, !tbaa !11
  %104 = load i32, ptr %irank, align 4, !tbaa !8
  %conv221 = sext i32 %104 to i64
  %cmp222 = icmp slt i64 %103, %conv221
  br i1 %cmp222, label %for.body224, label %for.end232

for.body224:                                      ; preds = %for.cond220
  %105 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx225 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %105
  %106 = load i64, ptr %arrayidx225, align 8, !tbaa !11
  %107 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  %108 = load i64, ptr %jj, align 8, !tbaa !11
  %109 = load i64, ptr %hh, align 8, !tbaa !11
  %110 = load i32, ptr %irank, align 4, !tbaa !8
  %conv226 = sext i32 %110 to i64
  %mul227 = mul nsw i64 %109, %conv226
  %add228 = add nsw i64 %108, %mul227
  %arrayidx229 = getelementptr inbounds i64, ptr %107, i64 %add228
  store i64 %106, ptr %arrayidx229, align 8, !tbaa !11
  br label %for.inc230

for.inc230:                                       ; preds = %for.body224
  %111 = load i64, ptr %jj, align 8, !tbaa !11
  %inc231 = add nsw i64 %111, 1
  store i64 %inc231, ptr %jj, align 8, !tbaa !11
  br label %for.cond220

for.end232:                                       ; preds = %for.cond220
  %112 = load i64, ptr %kk, align 8, !tbaa !11
  %113 = load ptr, ptr %foffsets, align 8, !tbaa !4
  %114 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx233 = getelementptr inbounds i64, ptr %113, i64 %114
  store i64 %112, ptr %arrayidx233, align 8, !tbaa !11
  %115 = load i32, ptr %irank, align 4, !tbaa !8
  %sub = sub nsw i32 %115, 1
  %conv234 = sext i32 %sub to i64
  store i64 %conv234, ptr %jj, align 8, !tbaa !11
  br label %for.cond235

for.cond235:                                      ; preds = %for.inc254, %for.end232
  %116 = load i64, ptr %jj, align 8, !tbaa !11
  %cmp236 = icmp sge i64 %116, 0
  br i1 %cmp236, label %for.body238, label %for.end255

for.body238:                                      ; preds = %for.cond235
  %117 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx239 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %117
  %118 = load i64, ptr %arrayidx239, align 8, !tbaa !11
  %119 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv240 = sext i32 %119 to i64
  %cmp241 = icmp slt i64 %118, %conv240
  br i1 %cmp241, label %if.then243, label %if.else

if.then243:                                       ; preds = %for.body238
  %120 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx244 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %120
  %121 = load i64, ptr %arrayidx244, align 8, !tbaa !11
  %inc245 = add nsw i64 %121, 1
  store i64 %inc245, ptr %arrayidx244, align 8, !tbaa !11
  %122 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx246 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %122
  %123 = load i64, ptr %arrayidx246, align 8, !tbaa !11
  %124 = load i64, ptr %kk, align 8, !tbaa !11
  %add247 = add nsw i64 %124, %123
  store i64 %add247, ptr %kk, align 8, !tbaa !11
  br label %for.end255

if.else:                                          ; preds = %for.body238
  %125 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx248 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %125
  store i64 0, ptr %arrayidx248, align 8, !tbaa !11
  %126 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx249 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %126
  %127 = load i64, ptr %arrayidx249, align 8, !tbaa !11
  %128 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv250 = sext i32 %128 to i64
  %mul251 = mul nsw i64 %127, %conv250
  %129 = load i64, ptr %kk, align 8, !tbaa !11
  %sub252 = sub nsw i64 %129, %mul251
  store i64 %sub252, ptr %kk, align 8, !tbaa !11
  br label %if.end253

if.end253:                                        ; preds = %if.else
  br label %for.inc254

for.inc254:                                       ; preds = %if.end253
  %130 = load i64, ptr %jj, align 8, !tbaa !11
  %dec = add nsw i64 %130, -1
  store i64 %dec, ptr %jj, align 8, !tbaa !11
  br label %for.cond235

for.end255:                                       ; preds = %if.then243, %for.cond235
  br label %for.inc256

for.inc256:                                       ; preds = %for.end255
  %131 = load i64, ptr %hh, align 8, !tbaa !11
  %inc257 = add nsw i64 %131, 1
  store i64 %inc257, ptr %hh, align 8, !tbaa !11
  br label %for.cond216

for.end258:                                       ; preds = %for.cond216
  %132 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %call259 = call i32 @_get_spline_boundary_mode(i32 noundef %132)
  store i32 %call259, ptr %spline_mode, align 4, !tbaa !8
  %133 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx260 = getelementptr inbounds ptr, ptr %133, i64 158
  %134 = load ptr, ptr %arrayidx260, align 8, !tbaa !4
  %135 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call261 = call ptr @PyArray_DIMS(ptr noundef %135)
  %136 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call262 = call i32 @PyArray_NDIM(ptr noundef %136)
  %call263 = call i64 %134(ptr noundef %call261, i32 noundef %call262)
  store i64 %call263, ptr %size, align 8, !tbaa !11
  store i64 0, ptr %kk, align 8, !tbaa !11
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc1072, %for.end258
  %137 = load i64, ptr %kk, align 8, !tbaa !11
  %138 = load i64, ptr %size, align 8, !tbaa !11
  %cmp265 = icmp slt i64 %137, %138
  br i1 %cmp265, label %for.body267, label %for.end1074

for.body267:                                      ; preds = %for.cond264
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7
  store double 0.000000e+00, ptr %t, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 4, ptr %constant) #7
  store i32 0, ptr %constant, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %edge) #7
  store i32 0, ptr %edge, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #7
  store i64 0, ptr %offset, align 8, !tbaa !11
  %139 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp268 = icmp eq i32 %139, 6
  br i1 %cmp268, label %if.then270, label %if.end289

if.then270:                                       ; preds = %for.body267
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond271

for.cond271:                                      ; preds = %for.inc286, %if.then270
  %140 = load i64, ptr %hh, align 8, !tbaa !11
  %141 = load i32, ptr %irank, align 4, !tbaa !8
  %conv272 = sext i32 %141 to i64
  %cmp273 = icmp slt i64 %140, %conv272
  br i1 %cmp273, label %for.body275, label %for.end288

for.body275:                                      ; preds = %for.cond271
  store i64 0, ptr %ll, align 8, !tbaa !11
  br label %for.cond276

for.cond276:                                      ; preds = %for.inc283, %for.body275
  %142 = load i64, ptr %ll, align 8, !tbaa !11
  %143 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv277 = sext i32 %143 to i64
  %cmp278 = icmp sle i64 %142, %conv277
  br i1 %cmp278, label %for.body280, label %for.end285

for.body280:                                      ; preds = %for.cond276
  %144 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %145 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx281 = getelementptr inbounds ptr, ptr %144, i64 %145
  %146 = load ptr, ptr %arrayidx281, align 8, !tbaa !4
  %147 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx282 = getelementptr inbounds i8, ptr %146, i64 %147
  store i8 0, ptr %arrayidx282, align 1, !tbaa !10
  br label %for.inc283

for.inc283:                                       ; preds = %for.body280
  %148 = load i64, ptr %ll, align 8, !tbaa !11
  %inc284 = add nsw i64 %148, 1
  store i64 %inc284, ptr %ll, align 8, !tbaa !11
  br label %for.cond276

for.end285:                                       ; preds = %for.cond276
  br label %for.inc286

for.inc286:                                       ; preds = %for.end285
  %149 = load i64, ptr %hh, align 8, !tbaa !11
  %inc287 = add nsw i64 %149, 1
  store i64 %inc287, ptr %hh, align 8, !tbaa !11
  br label %for.cond271

for.end288:                                       ; preds = %for.cond271
  br label %if.end289

if.end289:                                        ; preds = %for.end288, %for.body267
  %150 = load ptr, ptr %map.addr, align 8, !tbaa !4
  %tobool290 = icmp ne ptr %150, null
  br i1 %tobool290, label %if.then291, label %if.else312

if.then291:                                       ; preds = %if.end289
  br label %do.body292

do.body292:                                       ; preds = %if.then291
  %151 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool293 = icmp ne ptr %151, null
  br i1 %tobool293, label %if.then294, label %if.end295

if.then294:                                       ; preds = %do.body292
  %152 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %152)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end295

if.end295:                                        ; preds = %if.then294, %do.body292
  br label %do.cond296

do.cond296:                                       ; preds = %if.end295
  br label %do.end297

do.end297:                                        ; preds = %do.cond296
  %153 = load ptr, ptr %map.addr, align 8, !tbaa !4
  %coordinates298 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i64], ptr %coordinates298, i64 0, i64 0
  %arraydecay299 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 0
  %154 = load i32, ptr %orank, align 4, !tbaa !8
  %155 = load i32, ptr %irank, align 4, !tbaa !8
  %156 = load ptr, ptr %map_data.addr, align 8, !tbaa !4
  %call300 = call i32 %153(ptr noundef %arraydecay, ptr noundef %arraydecay299, i32 noundef %154, i32 noundef %155, ptr noundef %156)
  %tobool301 = icmp ne i32 %call300, 0
  br i1 %tobool301, label %if.end307, label %if.then302

if.then302:                                       ; preds = %do.end297
  %call303 = call ptr @PyErr_Occurred()
  %tobool304 = icmp ne ptr %call303, null
  br i1 %tobool304, label %if.end306, label %if.then305

if.then305:                                       ; preds = %if.then302
  %157 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %157, ptr noundef @.str)
  br label %if.end306

if.end306:                                        ; preds = %if.then305, %if.then302
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup1066

if.end307:                                        ; preds = %do.end297
  br label %do.body308

do.body308:                                       ; preds = %if.end307
  %call309 = call ptr @PyEval_SaveThread()
  store ptr %call309, ptr %_save, align 8, !tbaa !4
  br label %do.cond310

do.cond310:                                       ; preds = %do.body308
  br label %do.end311

do.end311:                                        ; preds = %do.cond310
  br label %if.end518

if.else312:                                       ; preds = %if.end289
  %158 = load ptr, ptr %matrix, align 8, !tbaa !4
  %tobool313 = icmp ne ptr %158, null
  br i1 %tobool313, label %if.then314, label %if.else340

if.then314:                                       ; preds = %if.else312
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7
  %159 = load ptr, ptr %matrix, align 8, !tbaa !4
  store ptr %159, ptr %p, align 8, !tbaa !4
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond315

for.cond315:                                      ; preds = %for.inc337, %if.then314
  %160 = load i64, ptr %hh, align 8, !tbaa !11
  %161 = load i32, ptr %irank, align 4, !tbaa !8
  %conv316 = sext i32 %161 to i64
  %cmp317 = icmp slt i64 %160, %conv316
  br i1 %cmp317, label %for.body319, label %for.end339

for.body319:                                      ; preds = %for.cond315
  %162 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx320 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %162
  store double 0.000000e+00, ptr %arrayidx320, align 8, !tbaa !24
  store i64 0, ptr %ll, align 8, !tbaa !11
  br label %for.cond321

for.cond321:                                      ; preds = %for.inc331, %for.body319
  %163 = load i64, ptr %ll, align 8, !tbaa !11
  %164 = load i32, ptr %orank, align 4, !tbaa !8
  %conv322 = sext i32 %164 to i64
  %cmp323 = icmp slt i64 %163, %conv322
  br i1 %cmp323, label %for.body325, label %for.end333

for.body325:                                      ; preds = %for.cond321
  %coordinates326 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %165 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx327 = getelementptr inbounds [32 x i64], ptr %coordinates326, i64 0, i64 %165
  %166 = load i64, ptr %arrayidx327, align 8, !tbaa !11
  %conv328 = sitofp i64 %166 to double
  %167 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %167, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  %168 = load double, ptr %167, align 8, !tbaa !24
  %169 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx330 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %169
  %170 = load double, ptr %arrayidx330, align 8, !tbaa !24
  %171 = call double @llvm.fmuladd.f64(double %conv328, double %168, double %170)
  store double %171, ptr %arrayidx330, align 8, !tbaa !24
  br label %for.inc331

for.inc331:                                       ; preds = %for.body325
  %172 = load i64, ptr %ll, align 8, !tbaa !11
  %inc332 = add nsw i64 %172, 1
  store i64 %inc332, ptr %ll, align 8, !tbaa !11
  br label %for.cond321

for.end333:                                       ; preds = %for.cond321
  %173 = load ptr, ptr %shift, align 8, !tbaa !4
  %174 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx334 = getelementptr inbounds double, ptr %173, i64 %174
  %175 = load double, ptr %arrayidx334, align 8, !tbaa !24
  %176 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx335 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %176
  %177 = load double, ptr %arrayidx335, align 8, !tbaa !24
  %add336 = fadd double %177, %175
  store double %add336, ptr %arrayidx335, align 8, !tbaa !24
  br label %for.inc337

for.inc337:                                       ; preds = %for.end333
  %178 = load i64, ptr %hh, align 8, !tbaa !11
  %inc338 = add nsw i64 %178, 1
  store i64 %inc338, ptr %hh, align 8, !tbaa !11
  br label %for.cond315

for.end339:                                       ; preds = %for.cond315
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7
  br label %if.end517

if.else340:                                       ; preds = %if.else312
  %179 = load ptr, ptr %coordinates.addr, align 8, !tbaa !4
  %tobool341 = icmp ne ptr %179, null
  br i1 %tobool341, label %if.then342, label %if.end516

if.then342:                                       ; preds = %if.else340
  call void @llvm.lifetime.start.p0(i64 8, ptr %p343) #7
  %180 = load ptr, ptr %pc, align 8, !tbaa !4
  store ptr %180, ptr %p343, align 8, !tbaa !4
  %181 = load ptr, ptr %coordinates.addr, align 8, !tbaa !4
  %call344 = call i32 @PyArray_TYPE(ptr noundef %181)
  switch i32 %call344, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb355
    i32 4, label %sw.bb368
    i32 6, label %sw.bb381
    i32 8, label %sw.bb394
    i32 10, label %sw.bb407
    i32 1, label %sw.bb420
    i32 3, label %sw.bb433
    i32 5, label %sw.bb446
    i32 7, label %sw.bb459
    i32 9, label %sw.bb472
    i32 11, label %sw.bb485
    i32 12, label %sw.bb498
  ]

sw.bb:                                            ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh) #7
  store i64 0, ptr %_hh, align 8, !tbaa !11
  br label %for.cond345

for.cond345:                                      ; preds = %for.inc352, %sw.bb
  %182 = load i64, ptr %_hh, align 8, !tbaa !11
  %183 = load i32, ptr %irank, align 4, !tbaa !8
  %conv346 = sext i32 %183 to i64
  %cmp347 = icmp slt i64 %182, %conv346
  br i1 %cmp347, label %for.body349, label %for.end354

for.body349:                                      ; preds = %for.cond345
  %184 = load ptr, ptr %p343, align 8, !tbaa !4
  %185 = load i8, ptr %184, align 1, !tbaa !10
  %conv350 = uitofp i8 %185 to double
  %186 = load i64, ptr %_hh, align 8, !tbaa !11
  %arrayidx351 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %186
  store double %conv350, ptr %arrayidx351, align 8, !tbaa !24
  %187 = load i64, ptr %cstride, align 8, !tbaa !11
  %188 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %188, i64 %187
  store ptr %add.ptr, ptr %p343, align 8, !tbaa !4
  br label %for.inc352

for.inc352:                                       ; preds = %for.body349
  %189 = load i64, ptr %_hh, align 8, !tbaa !11
  %inc353 = add nsw i64 %189, 1
  store i64 %inc353, ptr %_hh, align 8, !tbaa !11
  br label %for.cond345

for.end354:                                       ; preds = %for.cond345
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh) #7
  br label %sw.epilog

sw.bb355:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh356) #7
  store i64 0, ptr %_hh356, align 8, !tbaa !11
  br label %for.cond357

for.cond357:                                      ; preds = %for.inc365, %sw.bb355
  %190 = load i64, ptr %_hh356, align 8, !tbaa !11
  %191 = load i32, ptr %irank, align 4, !tbaa !8
  %conv358 = sext i32 %191 to i64
  %cmp359 = icmp slt i64 %190, %conv358
  br i1 %cmp359, label %for.body361, label %for.end367

for.body361:                                      ; preds = %for.cond357
  %192 = load ptr, ptr %p343, align 8, !tbaa !4
  %193 = load i8, ptr %192, align 1, !tbaa !10
  %conv362 = uitofp i8 %193 to double
  %194 = load i64, ptr %_hh356, align 8, !tbaa !11
  %arrayidx363 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %194
  store double %conv362, ptr %arrayidx363, align 8, !tbaa !24
  %195 = load i64, ptr %cstride, align 8, !tbaa !11
  %196 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr364 = getelementptr inbounds i8, ptr %196, i64 %195
  store ptr %add.ptr364, ptr %p343, align 8, !tbaa !4
  br label %for.inc365

for.inc365:                                       ; preds = %for.body361
  %197 = load i64, ptr %_hh356, align 8, !tbaa !11
  %inc366 = add nsw i64 %197, 1
  store i64 %inc366, ptr %_hh356, align 8, !tbaa !11
  br label %for.cond357

for.end367:                                       ; preds = %for.cond357
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh356) #7
  br label %sw.epilog

sw.bb368:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh369) #7
  store i64 0, ptr %_hh369, align 8, !tbaa !11
  br label %for.cond370

for.cond370:                                      ; preds = %for.inc378, %sw.bb368
  %198 = load i64, ptr %_hh369, align 8, !tbaa !11
  %199 = load i32, ptr %irank, align 4, !tbaa !8
  %conv371 = sext i32 %199 to i64
  %cmp372 = icmp slt i64 %198, %conv371
  br i1 %cmp372, label %for.body374, label %for.end380

for.body374:                                      ; preds = %for.cond370
  %200 = load ptr, ptr %p343, align 8, !tbaa !4
  %201 = load i16, ptr %200, align 2, !tbaa !25
  %conv375 = uitofp i16 %201 to double
  %202 = load i64, ptr %_hh369, align 8, !tbaa !11
  %arrayidx376 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %202
  store double %conv375, ptr %arrayidx376, align 8, !tbaa !24
  %203 = load i64, ptr %cstride, align 8, !tbaa !11
  %204 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr377 = getelementptr inbounds i8, ptr %204, i64 %203
  store ptr %add.ptr377, ptr %p343, align 8, !tbaa !4
  br label %for.inc378

for.inc378:                                       ; preds = %for.body374
  %205 = load i64, ptr %_hh369, align 8, !tbaa !11
  %inc379 = add nsw i64 %205, 1
  store i64 %inc379, ptr %_hh369, align 8, !tbaa !11
  br label %for.cond370

for.end380:                                       ; preds = %for.cond370
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh369) #7
  br label %sw.epilog

sw.bb381:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh382) #7
  store i64 0, ptr %_hh382, align 8, !tbaa !11
  br label %for.cond383

for.cond383:                                      ; preds = %for.inc391, %sw.bb381
  %206 = load i64, ptr %_hh382, align 8, !tbaa !11
  %207 = load i32, ptr %irank, align 4, !tbaa !8
  %conv384 = sext i32 %207 to i64
  %cmp385 = icmp slt i64 %206, %conv384
  br i1 %cmp385, label %for.body387, label %for.end393

for.body387:                                      ; preds = %for.cond383
  %208 = load ptr, ptr %p343, align 8, !tbaa !4
  %209 = load i32, ptr %208, align 4, !tbaa !8
  %conv388 = uitofp i32 %209 to double
  %210 = load i64, ptr %_hh382, align 8, !tbaa !11
  %arrayidx389 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %210
  store double %conv388, ptr %arrayidx389, align 8, !tbaa !24
  %211 = load i64, ptr %cstride, align 8, !tbaa !11
  %212 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr390 = getelementptr inbounds i8, ptr %212, i64 %211
  store ptr %add.ptr390, ptr %p343, align 8, !tbaa !4
  br label %for.inc391

for.inc391:                                       ; preds = %for.body387
  %213 = load i64, ptr %_hh382, align 8, !tbaa !11
  %inc392 = add nsw i64 %213, 1
  store i64 %inc392, ptr %_hh382, align 8, !tbaa !11
  br label %for.cond383

for.end393:                                       ; preds = %for.cond383
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh382) #7
  br label %sw.epilog

sw.bb394:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh395) #7
  store i64 0, ptr %_hh395, align 8, !tbaa !11
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc404, %sw.bb394
  %214 = load i64, ptr %_hh395, align 8, !tbaa !11
  %215 = load i32, ptr %irank, align 4, !tbaa !8
  %conv397 = sext i32 %215 to i64
  %cmp398 = icmp slt i64 %214, %conv397
  br i1 %cmp398, label %for.body400, label %for.end406

for.body400:                                      ; preds = %for.cond396
  %216 = load ptr, ptr %p343, align 8, !tbaa !4
  %217 = load i64, ptr %216, align 8, !tbaa !11
  %conv401 = uitofp i64 %217 to double
  %218 = load i64, ptr %_hh395, align 8, !tbaa !11
  %arrayidx402 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %218
  store double %conv401, ptr %arrayidx402, align 8, !tbaa !24
  %219 = load i64, ptr %cstride, align 8, !tbaa !11
  %220 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr403 = getelementptr inbounds i8, ptr %220, i64 %219
  store ptr %add.ptr403, ptr %p343, align 8, !tbaa !4
  br label %for.inc404

for.inc404:                                       ; preds = %for.body400
  %221 = load i64, ptr %_hh395, align 8, !tbaa !11
  %inc405 = add nsw i64 %221, 1
  store i64 %inc405, ptr %_hh395, align 8, !tbaa !11
  br label %for.cond396

for.end406:                                       ; preds = %for.cond396
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh395) #7
  br label %sw.epilog

sw.bb407:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh408) #7
  store i64 0, ptr %_hh408, align 8, !tbaa !11
  br label %for.cond409

for.cond409:                                      ; preds = %for.inc417, %sw.bb407
  %222 = load i64, ptr %_hh408, align 8, !tbaa !11
  %223 = load i32, ptr %irank, align 4, !tbaa !8
  %conv410 = sext i32 %223 to i64
  %cmp411 = icmp slt i64 %222, %conv410
  br i1 %cmp411, label %for.body413, label %for.end419

for.body413:                                      ; preds = %for.cond409
  %224 = load ptr, ptr %p343, align 8, !tbaa !4
  %225 = load i64, ptr %224, align 8, !tbaa !27
  %conv414 = uitofp i64 %225 to double
  %226 = load i64, ptr %_hh408, align 8, !tbaa !11
  %arrayidx415 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %226
  store double %conv414, ptr %arrayidx415, align 8, !tbaa !24
  %227 = load i64, ptr %cstride, align 8, !tbaa !11
  %228 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr416 = getelementptr inbounds i8, ptr %228, i64 %227
  store ptr %add.ptr416, ptr %p343, align 8, !tbaa !4
  br label %for.inc417

for.inc417:                                       ; preds = %for.body413
  %229 = load i64, ptr %_hh408, align 8, !tbaa !11
  %inc418 = add nsw i64 %229, 1
  store i64 %inc418, ptr %_hh408, align 8, !tbaa !11
  br label %for.cond409

for.end419:                                       ; preds = %for.cond409
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh408) #7
  br label %sw.epilog

sw.bb420:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh421) #7
  store i64 0, ptr %_hh421, align 8, !tbaa !11
  br label %for.cond422

for.cond422:                                      ; preds = %for.inc430, %sw.bb420
  %230 = load i64, ptr %_hh421, align 8, !tbaa !11
  %231 = load i32, ptr %irank, align 4, !tbaa !8
  %conv423 = sext i32 %231 to i64
  %cmp424 = icmp slt i64 %230, %conv423
  br i1 %cmp424, label %for.body426, label %for.end432

for.body426:                                      ; preds = %for.cond422
  %232 = load ptr, ptr %p343, align 8, !tbaa !4
  %233 = load i8, ptr %232, align 1, !tbaa !10
  %conv427 = sitofp i8 %233 to double
  %234 = load i64, ptr %_hh421, align 8, !tbaa !11
  %arrayidx428 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %234
  store double %conv427, ptr %arrayidx428, align 8, !tbaa !24
  %235 = load i64, ptr %cstride, align 8, !tbaa !11
  %236 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr429 = getelementptr inbounds i8, ptr %236, i64 %235
  store ptr %add.ptr429, ptr %p343, align 8, !tbaa !4
  br label %for.inc430

for.inc430:                                       ; preds = %for.body426
  %237 = load i64, ptr %_hh421, align 8, !tbaa !11
  %inc431 = add nsw i64 %237, 1
  store i64 %inc431, ptr %_hh421, align 8, !tbaa !11
  br label %for.cond422

for.end432:                                       ; preds = %for.cond422
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh421) #7
  br label %sw.epilog

sw.bb433:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh434) #7
  store i64 0, ptr %_hh434, align 8, !tbaa !11
  br label %for.cond435

for.cond435:                                      ; preds = %for.inc443, %sw.bb433
  %238 = load i64, ptr %_hh434, align 8, !tbaa !11
  %239 = load i32, ptr %irank, align 4, !tbaa !8
  %conv436 = sext i32 %239 to i64
  %cmp437 = icmp slt i64 %238, %conv436
  br i1 %cmp437, label %for.body439, label %for.end445

for.body439:                                      ; preds = %for.cond435
  %240 = load ptr, ptr %p343, align 8, !tbaa !4
  %241 = load i16, ptr %240, align 2, !tbaa !25
  %conv440 = sitofp i16 %241 to double
  %242 = load i64, ptr %_hh434, align 8, !tbaa !11
  %arrayidx441 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %242
  store double %conv440, ptr %arrayidx441, align 8, !tbaa !24
  %243 = load i64, ptr %cstride, align 8, !tbaa !11
  %244 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr442 = getelementptr inbounds i8, ptr %244, i64 %243
  store ptr %add.ptr442, ptr %p343, align 8, !tbaa !4
  br label %for.inc443

for.inc443:                                       ; preds = %for.body439
  %245 = load i64, ptr %_hh434, align 8, !tbaa !11
  %inc444 = add nsw i64 %245, 1
  store i64 %inc444, ptr %_hh434, align 8, !tbaa !11
  br label %for.cond435

for.end445:                                       ; preds = %for.cond435
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh434) #7
  br label %sw.epilog

sw.bb446:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh447) #7
  store i64 0, ptr %_hh447, align 8, !tbaa !11
  br label %for.cond448

for.cond448:                                      ; preds = %for.inc456, %sw.bb446
  %246 = load i64, ptr %_hh447, align 8, !tbaa !11
  %247 = load i32, ptr %irank, align 4, !tbaa !8
  %conv449 = sext i32 %247 to i64
  %cmp450 = icmp slt i64 %246, %conv449
  br i1 %cmp450, label %for.body452, label %for.end458

for.body452:                                      ; preds = %for.cond448
  %248 = load ptr, ptr %p343, align 8, !tbaa !4
  %249 = load i32, ptr %248, align 4, !tbaa !8
  %conv453 = sitofp i32 %249 to double
  %250 = load i64, ptr %_hh447, align 8, !tbaa !11
  %arrayidx454 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %250
  store double %conv453, ptr %arrayidx454, align 8, !tbaa !24
  %251 = load i64, ptr %cstride, align 8, !tbaa !11
  %252 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr455 = getelementptr inbounds i8, ptr %252, i64 %251
  store ptr %add.ptr455, ptr %p343, align 8, !tbaa !4
  br label %for.inc456

for.inc456:                                       ; preds = %for.body452
  %253 = load i64, ptr %_hh447, align 8, !tbaa !11
  %inc457 = add nsw i64 %253, 1
  store i64 %inc457, ptr %_hh447, align 8, !tbaa !11
  br label %for.cond448

for.end458:                                       ; preds = %for.cond448
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh447) #7
  br label %sw.epilog

sw.bb459:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh460) #7
  store i64 0, ptr %_hh460, align 8, !tbaa !11
  br label %for.cond461

for.cond461:                                      ; preds = %for.inc469, %sw.bb459
  %254 = load i64, ptr %_hh460, align 8, !tbaa !11
  %255 = load i32, ptr %irank, align 4, !tbaa !8
  %conv462 = sext i32 %255 to i64
  %cmp463 = icmp slt i64 %254, %conv462
  br i1 %cmp463, label %for.body465, label %for.end471

for.body465:                                      ; preds = %for.cond461
  %256 = load ptr, ptr %p343, align 8, !tbaa !4
  %257 = load i64, ptr %256, align 8, !tbaa !11
  %conv466 = sitofp i64 %257 to double
  %258 = load i64, ptr %_hh460, align 8, !tbaa !11
  %arrayidx467 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %258
  store double %conv466, ptr %arrayidx467, align 8, !tbaa !24
  %259 = load i64, ptr %cstride, align 8, !tbaa !11
  %260 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr468 = getelementptr inbounds i8, ptr %260, i64 %259
  store ptr %add.ptr468, ptr %p343, align 8, !tbaa !4
  br label %for.inc469

for.inc469:                                       ; preds = %for.body465
  %261 = load i64, ptr %_hh460, align 8, !tbaa !11
  %inc470 = add nsw i64 %261, 1
  store i64 %inc470, ptr %_hh460, align 8, !tbaa !11
  br label %for.cond461

for.end471:                                       ; preds = %for.cond461
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh460) #7
  br label %sw.epilog

sw.bb472:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh473) #7
  store i64 0, ptr %_hh473, align 8, !tbaa !11
  br label %for.cond474

for.cond474:                                      ; preds = %for.inc482, %sw.bb472
  %262 = load i64, ptr %_hh473, align 8, !tbaa !11
  %263 = load i32, ptr %irank, align 4, !tbaa !8
  %conv475 = sext i32 %263 to i64
  %cmp476 = icmp slt i64 %262, %conv475
  br i1 %cmp476, label %for.body478, label %for.end484

for.body478:                                      ; preds = %for.cond474
  %264 = load ptr, ptr %p343, align 8, !tbaa !4
  %265 = load i64, ptr %264, align 8, !tbaa !27
  %conv479 = sitofp i64 %265 to double
  %266 = load i64, ptr %_hh473, align 8, !tbaa !11
  %arrayidx480 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %266
  store double %conv479, ptr %arrayidx480, align 8, !tbaa !24
  %267 = load i64, ptr %cstride, align 8, !tbaa !11
  %268 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr481 = getelementptr inbounds i8, ptr %268, i64 %267
  store ptr %add.ptr481, ptr %p343, align 8, !tbaa !4
  br label %for.inc482

for.inc482:                                       ; preds = %for.body478
  %269 = load i64, ptr %_hh473, align 8, !tbaa !11
  %inc483 = add nsw i64 %269, 1
  store i64 %inc483, ptr %_hh473, align 8, !tbaa !11
  br label %for.cond474

for.end484:                                       ; preds = %for.cond474
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh473) #7
  br label %sw.epilog

sw.bb485:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh486) #7
  store i64 0, ptr %_hh486, align 8, !tbaa !11
  br label %for.cond487

for.cond487:                                      ; preds = %for.inc495, %sw.bb485
  %270 = load i64, ptr %_hh486, align 8, !tbaa !11
  %271 = load i32, ptr %irank, align 4, !tbaa !8
  %conv488 = sext i32 %271 to i64
  %cmp489 = icmp slt i64 %270, %conv488
  br i1 %cmp489, label %for.body491, label %for.end497

for.body491:                                      ; preds = %for.cond487
  %272 = load ptr, ptr %p343, align 8, !tbaa !4
  %273 = load float, ptr %272, align 4, !tbaa !29
  %conv492 = fpext float %273 to double
  %274 = load i64, ptr %_hh486, align 8, !tbaa !11
  %arrayidx493 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %274
  store double %conv492, ptr %arrayidx493, align 8, !tbaa !24
  %275 = load i64, ptr %cstride, align 8, !tbaa !11
  %276 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr494 = getelementptr inbounds i8, ptr %276, i64 %275
  store ptr %add.ptr494, ptr %p343, align 8, !tbaa !4
  br label %for.inc495

for.inc495:                                       ; preds = %for.body491
  %277 = load i64, ptr %_hh486, align 8, !tbaa !11
  %inc496 = add nsw i64 %277, 1
  store i64 %inc496, ptr %_hh486, align 8, !tbaa !11
  br label %for.cond487

for.end497:                                       ; preds = %for.cond487
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh486) #7
  br label %sw.epilog

sw.bb498:                                         ; preds = %if.then342
  call void @llvm.lifetime.start.p0(i64 8, ptr %_hh499) #7
  store i64 0, ptr %_hh499, align 8, !tbaa !11
  br label %for.cond500

for.cond500:                                      ; preds = %for.inc507, %sw.bb498
  %278 = load i64, ptr %_hh499, align 8, !tbaa !11
  %279 = load i32, ptr %irank, align 4, !tbaa !8
  %conv501 = sext i32 %279 to i64
  %cmp502 = icmp slt i64 %278, %conv501
  br i1 %cmp502, label %for.body504, label %for.end509

for.body504:                                      ; preds = %for.cond500
  %280 = load ptr, ptr %p343, align 8, !tbaa !4
  %281 = load double, ptr %280, align 8, !tbaa !24
  %282 = load i64, ptr %_hh499, align 8, !tbaa !11
  %arrayidx505 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %282
  store double %281, ptr %arrayidx505, align 8, !tbaa !24
  %283 = load i64, ptr %cstride, align 8, !tbaa !11
  %284 = load ptr, ptr %p343, align 8, !tbaa !4
  %add.ptr506 = getelementptr inbounds i8, ptr %284, i64 %283
  store ptr %add.ptr506, ptr %p343, align 8, !tbaa !4
  br label %for.inc507

for.inc507:                                       ; preds = %for.body504
  %285 = load i64, ptr %_hh499, align 8, !tbaa !11
  %inc508 = add nsw i64 %285, 1
  store i64 %inc508, ptr %_hh499, align 8, !tbaa !11
  br label %for.cond500

for.end509:                                       ; preds = %for.cond500
  call void @llvm.lifetime.end.p0(i64 8, ptr %_hh499) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.then342
  br label %do.body510

do.body510:                                       ; preds = %sw.default
  %286 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool511 = icmp ne ptr %286, null
  br i1 %tobool511, label %if.then512, label %if.end513

if.then512:                                       ; preds = %do.body510
  %287 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %287)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end513

if.end513:                                        ; preds = %if.then512, %do.body510
  br label %do.cond514

do.cond514:                                       ; preds = %if.end513
  br label %do.end515

do.end515:                                        ; preds = %do.cond514
  %288 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %288, ptr noundef @.str.1)
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %for.end509, %for.end497, %for.end484, %for.end471, %for.end458, %for.end445, %for.end432, %for.end419, %for.end406, %for.end393, %for.end380, %for.end367, %for.end354
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end515, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr %p343) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup1066 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end516

if.end516:                                        ; preds = %cleanup.cont, %if.else340
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %for.end339
  br label %if.end518

if.end518:                                        ; preds = %if.end517, %do.end311
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond519

for.cond519:                                      ; preds = %for.inc620, %if.end518
  %289 = load i64, ptr %hh, align 8, !tbaa !11
  %290 = load i32, ptr %irank, align 4, !tbaa !8
  %conv520 = sext i32 %290 to i64
  %cmp521 = icmp slt i64 %289, %conv520
  br i1 %cmp521, label %for.body523, label %for.end622

for.body523:                                      ; preds = %for.cond519
  call void @llvm.lifetime.start.p0(i64 8, ptr %cc) #7
  %291 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx524 = getelementptr inbounds [32 x double], ptr %icoor, i64 0, i64 %291
  %292 = load double, ptr %arrayidx524, align 8, !tbaa !24
  %293 = load i32, ptr %nprepad.addr, align 4, !tbaa !8
  %conv525 = sitofp i32 %293 to double
  %add526 = fadd double %292, %conv525
  store double %add526, ptr %cc, align 8, !tbaa !24
  %294 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp527 = icmp ne i32 %294, 6
  br i1 %cmp527, label %land.lhs.true, label %if.end534

land.lhs.true:                                    ; preds = %for.body523
  %295 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp529 = icmp ne i32 %295, 0
  br i1 %cmp529, label %if.then531, label %if.end534

if.then531:                                       ; preds = %land.lhs.true
  %296 = load double, ptr %cc, align 8, !tbaa !24
  %297 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx532 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %297
  %298 = load i64, ptr %arrayidx532, align 8, !tbaa !11
  %299 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %call533 = call double @map_coordinate(double noundef %296, i64 noundef %298, i32 noundef %299)
  store double %call533, ptr %cc, align 8, !tbaa !24
  br label %if.end534

if.end534:                                        ; preds = %if.then531, %land.lhs.true, %for.body523
  %300 = load double, ptr %cc, align 8, !tbaa !24
  %cmp535 = fcmp ogt double %300, -1.000000e+00
  br i1 %cmp535, label %if.then543, label %lor.lhs.false537

lor.lhs.false537:                                 ; preds = %if.end534
  %301 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp538 = icmp eq i32 %301, 6
  br i1 %cmp538, label %if.then543, label %lor.lhs.false540

lor.lhs.false540:                                 ; preds = %lor.lhs.false537
  %302 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp541 = icmp eq i32 %302, 0
  br i1 %cmp541, label %if.then543, label %if.else615

if.then543:                                       ; preds = %lor.lhs.false540, %lor.lhs.false537, %if.end534
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7
  %303 = load i32, ptr %order.addr, align 4, !tbaa !8
  %and = and i32 %303, 1
  %tobool544 = icmp ne i32 %and, 0
  br i1 %tobool544, label %if.then545, label %if.else549

if.then545:                                       ; preds = %if.then543
  %304 = load double, ptr %cc, align 8, !tbaa !24
  %305 = call double @llvm.floor.f64(double %304)
  %conv546 = fptosi double %305 to i64
  %306 = load i32, ptr %order.addr, align 4, !tbaa !8
  %div = sdiv i32 %306, 2
  %conv547 = sext i32 %div to i64
  %sub548 = sub nsw i64 %conv546, %conv547
  store i64 %sub548, ptr %start, align 8, !tbaa !11
  br label %if.end555

if.else549:                                       ; preds = %if.then543
  %307 = load double, ptr %cc, align 8, !tbaa !24
  %add550 = fadd double %307, 5.000000e-01
  %308 = call double @llvm.floor.f64(double %add550)
  %conv551 = fptosi double %308 to i64
  %309 = load i32, ptr %order.addr, align 4, !tbaa !8
  %div552 = sdiv i32 %309, 2
  %conv553 = sext i32 %div552 to i64
  %sub554 = sub nsw i64 %conv551, %conv553
  store i64 %sub554, ptr %start, align 8, !tbaa !11
  br label %if.end555

if.end555:                                        ; preds = %if.else549, %if.then545
  %310 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx556 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %310
  %311 = load i64, ptr %arrayidx556, align 8, !tbaa !11
  %312 = load i64, ptr %start, align 8, !tbaa !11
  %mul557 = mul nsw i64 %311, %312
  %313 = load i64, ptr %offset, align 8, !tbaa !11
  %add558 = add nsw i64 %313, %mul557
  store i64 %add558, ptr %offset, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7
  store i64 0, ptr %idx, align 8, !tbaa !11
  %314 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp559 = icmp eq i32 %314, 6
  br i1 %cmp559, label %if.then561, label %if.else579

if.then561:                                       ; preds = %if.end555
  store i64 0, ptr %ll, align 8, !tbaa !11
  br label %for.cond562

for.cond562:                                      ; preds = %for.inc576, %if.then561
  %315 = load i64, ptr %ll, align 8, !tbaa !11
  %316 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv563 = sext i32 %316 to i64
  %cmp564 = icmp sle i64 %315, %conv563
  br i1 %cmp564, label %for.body566, label %for.end578

for.body566:                                      ; preds = %for.cond562
  %317 = load i64, ptr %start, align 8, !tbaa !11
  %318 = load i64, ptr %ll, align 8, !tbaa !11
  %add567 = add nsw i64 %317, %318
  store i64 %add567, ptr %idx, align 8, !tbaa !11
  %319 = load i64, ptr %idx, align 8, !tbaa !11
  %cmp568 = icmp slt i64 %319, 0
  br i1 %cmp568, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body566
  %320 = load i64, ptr %idx, align 8, !tbaa !11
  %321 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx570 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %321
  %322 = load i64, ptr %arrayidx570, align 8, !tbaa !11
  %cmp571 = icmp sge i64 %320, %322
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body566
  %323 = phi i1 [ true, %for.body566 ], [ %cmp571, %lor.rhs ]
  %lor.ext = zext i1 %323 to i32
  %conv573 = trunc i32 %lor.ext to i8
  %324 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %325 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx574 = getelementptr inbounds ptr, ptr %324, i64 %325
  %326 = load ptr, ptr %arrayidx574, align 8, !tbaa !4
  %327 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx575 = getelementptr inbounds i8, ptr %326, i64 %327
  store i8 %conv573, ptr %arrayidx575, align 1, !tbaa !10
  br label %for.inc576

for.inc576:                                       ; preds = %lor.end
  %328 = load i64, ptr %ll, align 8, !tbaa !11
  %inc577 = add nsw i64 %328, 1
  store i64 %inc577, ptr %ll, align 8, !tbaa !11
  br label %for.cond562

for.end578:                                       ; preds = %for.cond562
  br label %if.end612

if.else579:                                       ; preds = %if.end555
  %329 = load i64, ptr %start, align 8, !tbaa !11
  %cmp580 = icmp slt i64 %329, 0
  br i1 %cmp580, label %if.then588, label %lor.lhs.false582

lor.lhs.false582:                                 ; preds = %if.else579
  %330 = load i64, ptr %start, align 8, !tbaa !11
  %331 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv583 = sext i32 %331 to i64
  %add584 = add nsw i64 %330, %conv583
  %332 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx585 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %332
  %333 = load i64, ptr %arrayidx585, align 8, !tbaa !11
  %cmp586 = icmp sge i64 %add584, %333
  br i1 %cmp586, label %if.then588, label %if.else609

if.then588:                                       ; preds = %lor.lhs.false582, %if.else579
  store i32 1, ptr %edge, align 4, !tbaa !8
  %334 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  %335 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx589 = getelementptr inbounds ptr, ptr %334, i64 %335
  %336 = load ptr, ptr %arrayidx589, align 8, !tbaa !4
  %337 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %338 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx590 = getelementptr inbounds ptr, ptr %337, i64 %338
  store ptr %336, ptr %arrayidx590, align 8, !tbaa !4
  store i64 0, ptr %ll, align 8, !tbaa !11
  br label %for.cond591

for.cond591:                                      ; preds = %for.inc606, %if.then588
  %339 = load i64, ptr %ll, align 8, !tbaa !11
  %340 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv592 = sext i32 %340 to i64
  %cmp593 = icmp sle i64 %339, %conv592
  br i1 %cmp593, label %for.body595, label %for.end608

for.body595:                                      ; preds = %for.cond591
  %341 = load i64, ptr %start, align 8, !tbaa !11
  %342 = load i64, ptr %ll, align 8, !tbaa !11
  %add596 = add nsw i64 %341, %342
  store i64 %add596, ptr %idx, align 8, !tbaa !11
  %343 = load i64, ptr %idx, align 8, !tbaa !11
  %conv597 = sitofp i64 %343 to double
  %344 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx598 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %344
  %345 = load i64, ptr %arrayidx598, align 8, !tbaa !11
  %346 = load i32, ptr %spline_mode, align 4, !tbaa !8
  %call599 = call double @map_coordinate(double noundef %conv597, i64 noundef %345, i32 noundef %346)
  %conv600 = fptosi double %call599 to i64
  store i64 %conv600, ptr %idx, align 8, !tbaa !11
  %347 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx601 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %347
  %348 = load i64, ptr %arrayidx601, align 8, !tbaa !11
  %349 = load i64, ptr %idx, align 8, !tbaa !11
  %350 = load i64, ptr %start, align 8, !tbaa !11
  %sub602 = sub nsw i64 %349, %350
  %mul603 = mul nsw i64 %348, %sub602
  %351 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %352 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx604 = getelementptr inbounds ptr, ptr %351, i64 %352
  %353 = load ptr, ptr %arrayidx604, align 8, !tbaa !4
  %354 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx605 = getelementptr inbounds i64, ptr %353, i64 %354
  store i64 %mul603, ptr %arrayidx605, align 8, !tbaa !11
  br label %for.inc606

for.inc606:                                       ; preds = %for.body595
  %355 = load i64, ptr %ll, align 8, !tbaa !11
  %inc607 = add nsw i64 %355, 1
  store i64 %inc607, ptr %ll, align 8, !tbaa !11
  br label %for.cond591

for.end608:                                       ; preds = %for.cond591
  br label %if.end611

if.else609:                                       ; preds = %lor.lhs.false582
  %356 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %357 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx610 = getelementptr inbounds ptr, ptr %356, i64 %357
  store ptr null, ptr %arrayidx610, align 8, !tbaa !4
  br label %if.end611

if.end611:                                        ; preds = %if.else609, %for.end608
  br label %if.end612

if.end612:                                        ; preds = %if.end611, %for.end578
  %358 = load double, ptr %cc, align 8, !tbaa !24
  %359 = load i32, ptr %order.addr, align 4, !tbaa !8
  %360 = load ptr, ptr %splvals, align 8, !tbaa !4
  %361 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx613 = getelementptr inbounds ptr, ptr %360, i64 %361
  %362 = load ptr, ptr %arrayidx613, align 8, !tbaa !4
  %call614 = call i32 @get_spline_interpolation_weights(double noundef %358, i32 noundef %359, ptr noundef %362)
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7
  br label %if.end616

if.else615:                                       ; preds = %lor.lhs.false540
  store i32 1, ptr %constant, align 4, !tbaa !8
  store i32 116, ptr %cleanup.dest.slot, align 4
  br label %cleanup617

if.end616:                                        ; preds = %if.end612
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup617

cleanup617:                                       ; preds = %if.end616, %if.else615
  call void @llvm.lifetime.end.p0(i64 8, ptr %cc) #7
  %cleanup.dest618 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest618, label %unreachable [
    i32 0, label %cleanup.cont619
    i32 116, label %for.end622
  ]

cleanup.cont619:                                  ; preds = %cleanup617
  br label %for.inc620

for.inc620:                                       ; preds = %cleanup.cont619
  %363 = load i64, ptr %hh, align 8, !tbaa !11
  %inc621 = add nsw i64 %363, 1
  store i64 %inc621, ptr %hh, align 8, !tbaa !11
  br label %for.cond519

for.end622:                                       ; preds = %cleanup617, %for.cond519
  %364 = load i32, ptr %constant, align 4, !tbaa !8
  %tobool623 = icmp ne i32 %364, 0
  br i1 %tobool623, label %if.else756, label %if.then624

if.then624:                                       ; preds = %for.end622
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #7
  %365 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  store ptr %365, ptr %ff, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %type_num) #7
  %366 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call625 = call i32 @PyArray_TYPE(ptr noundef %366)
  store i32 %call625, ptr %type_num, align 4, !tbaa !8
  store double 0.000000e+00, ptr %t, align 8, !tbaa !24
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond626

for.cond626:                                      ; preds = %for.inc749, %if.then624
  %367 = load i64, ptr %hh, align 8, !tbaa !11
  %368 = load i64, ptr %filter_size, align 8, !tbaa !11
  %cmp627 = icmp slt i64 %367, %368
  br i1 %cmp627, label %for.body629, label %for.end751

for.body629:                                      ; preds = %for.cond626
  call void @llvm.lifetime.start.p0(i64 8, ptr %coeff) #7
  store double 0.000000e+00, ptr %coeff, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx630) #7
  store i64 0, ptr %idx630, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_cval) #7
  store i8 0, ptr %is_cval, align 1, !tbaa !10
  %369 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp631 = icmp eq i32 %369, 6
  br i1 %cmp631, label %if.then633, label %if.end648

if.then633:                                       ; preds = %for.body629
  store i64 0, ptr %ll, align 8, !tbaa !11
  br label %for.cond634

for.cond634:                                      ; preds = %for.inc645, %if.then633
  %370 = load i64, ptr %ll, align 8, !tbaa !11
  %371 = load i32, ptr %irank, align 4, !tbaa !8
  %conv635 = sext i32 %371 to i64
  %cmp636 = icmp slt i64 %370, %conv635
  br i1 %cmp636, label %for.body638, label %for.end647

for.body638:                                      ; preds = %for.cond634
  %372 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %373 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx639 = getelementptr inbounds ptr, ptr %372, i64 %373
  %374 = load ptr, ptr %arrayidx639, align 8, !tbaa !4
  %375 = load ptr, ptr %ff, align 8, !tbaa !4
  %376 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx640 = getelementptr inbounds i64, ptr %375, i64 %376
  %377 = load i64, ptr %arrayidx640, align 8, !tbaa !11
  %arrayidx641 = getelementptr inbounds i8, ptr %374, i64 %377
  %378 = load i8, ptr %arrayidx641, align 1, !tbaa !10
  %tobool642 = icmp ne i8 %378, 0
  br i1 %tobool642, label %if.then643, label %if.end644

if.then643:                                       ; preds = %for.body638
  store i8 1, ptr %is_cval, align 1, !tbaa !10
  br label %if.end644

if.end644:                                        ; preds = %if.then643, %for.body638
  br label %for.inc645

for.inc645:                                       ; preds = %if.end644
  %379 = load i64, ptr %ll, align 8, !tbaa !11
  %inc646 = add nsw i64 %379, 1
  store i64 %inc646, ptr %ll, align 8, !tbaa !11
  br label %for.cond634

for.end647:                                       ; preds = %for.cond634
  br label %if.end648

if.end648:                                        ; preds = %for.end647, %for.body629
  %380 = load i8, ptr %is_cval, align 1, !tbaa !10
  %tobool649 = icmp ne i8 %380, 0
  br i1 %tobool649, label %if.then650, label %if.else651

if.then650:                                       ; preds = %if.end648
  %381 = load double, ptr %cval.addr, align 8, !tbaa !24
  store double %381, ptr %coeff, align 8, !tbaa !24
  br label %if.end725

if.else651:                                       ; preds = %if.end648
  %382 = load i32, ptr %edge, align 4, !tbaa !8
  %tobool652 = icmp ne i32 %382, 0
  br i1 %tobool652, label %if.then653, label %if.else675

if.then653:                                       ; preds = %if.else651
  store i64 0, ptr %ll, align 8, !tbaa !11
  br label %for.cond654

for.cond654:                                      ; preds = %for.inc672, %if.then653
  %383 = load i64, ptr %ll, align 8, !tbaa !11
  %384 = load i32, ptr %irank, align 4, !tbaa !8
  %conv655 = sext i32 %384 to i64
  %cmp656 = icmp slt i64 %383, %conv655
  br i1 %cmp656, label %for.body658, label %for.end674

for.body658:                                      ; preds = %for.cond654
  %385 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %386 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx659 = getelementptr inbounds ptr, ptr %385, i64 %386
  %387 = load ptr, ptr %arrayidx659, align 8, !tbaa !4
  %tobool660 = icmp ne ptr %387, null
  br i1 %tobool660, label %if.then661, label %if.else666

if.then661:                                       ; preds = %for.body658
  %388 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %389 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx662 = getelementptr inbounds ptr, ptr %388, i64 %389
  %390 = load ptr, ptr %arrayidx662, align 8, !tbaa !4
  %391 = load ptr, ptr %ff, align 8, !tbaa !4
  %392 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx663 = getelementptr inbounds i64, ptr %391, i64 %392
  %393 = load i64, ptr %arrayidx663, align 8, !tbaa !11
  %arrayidx664 = getelementptr inbounds i64, ptr %390, i64 %393
  %394 = load i64, ptr %arrayidx664, align 8, !tbaa !11
  %395 = load i64, ptr %idx630, align 8, !tbaa !11
  %add665 = add nsw i64 %395, %394
  store i64 %add665, ptr %idx630, align 8, !tbaa !11
  br label %if.end671

if.else666:                                       ; preds = %for.body658
  %396 = load ptr, ptr %ff, align 8, !tbaa !4
  %397 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx667 = getelementptr inbounds i64, ptr %396, i64 %397
  %398 = load i64, ptr %arrayidx667, align 8, !tbaa !11
  %399 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx668 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %399
  %400 = load i64, ptr %arrayidx668, align 8, !tbaa !11
  %mul669 = mul nsw i64 %398, %400
  %401 = load i64, ptr %idx630, align 8, !tbaa !11
  %add670 = add nsw i64 %401, %mul669
  store i64 %add670, ptr %idx630, align 8, !tbaa !11
  br label %if.end671

if.end671:                                        ; preds = %if.else666, %if.then661
  br label %for.inc672

for.inc672:                                       ; preds = %if.end671
  %402 = load i64, ptr %ll, align 8, !tbaa !11
  %inc673 = add nsw i64 %402, 1
  store i64 %inc673, ptr %ll, align 8, !tbaa !11
  br label %for.cond654

for.end674:                                       ; preds = %for.cond654
  br label %if.end677

if.else675:                                       ; preds = %if.else651
  %403 = load ptr, ptr %foffsets, align 8, !tbaa !4
  %404 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx676 = getelementptr inbounds i64, ptr %403, i64 %404
  %405 = load i64, ptr %arrayidx676, align 8, !tbaa !11
  store i64 %405, ptr %idx630, align 8, !tbaa !11
  br label %if.end677

if.end677:                                        ; preds = %if.else675, %for.end674
  %406 = load i64, ptr %offset, align 8, !tbaa !11
  %407 = load i64, ptr %idx630, align 8, !tbaa !11
  %add678 = add nsw i64 %407, %406
  store i64 %add678, ptr %idx630, align 8, !tbaa !11
  %408 = load i32, ptr %type_num, align 4, !tbaa !8
  switch i32 %408, label %sw.default717 [
    i32 0, label %sw.bb679
    i32 2, label %sw.bb682
    i32 4, label %sw.bb685
    i32 6, label %sw.bb688
    i32 8, label %sw.bb691
    i32 10, label %sw.bb694
    i32 1, label %sw.bb697
    i32 3, label %sw.bb700
    i32 5, label %sw.bb703
    i32 7, label %sw.bb706
    i32 9, label %sw.bb709
    i32 11, label %sw.bb712
    i32 12, label %sw.bb715
  ]

sw.bb679:                                         ; preds = %if.end677
  %409 = load ptr, ptr %pi, align 8, !tbaa !4
  %410 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr680 = getelementptr inbounds i8, ptr %409, i64 %410
  %411 = load i8, ptr %add.ptr680, align 1, !tbaa !10
  %conv681 = uitofp i8 %411 to double
  store double %conv681, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb682:                                         ; preds = %if.end677
  %412 = load ptr, ptr %pi, align 8, !tbaa !4
  %413 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr683 = getelementptr inbounds i8, ptr %412, i64 %413
  %414 = load i8, ptr %add.ptr683, align 1, !tbaa !10
  %conv684 = uitofp i8 %414 to double
  store double %conv684, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb685:                                         ; preds = %if.end677
  %415 = load ptr, ptr %pi, align 8, !tbaa !4
  %416 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr686 = getelementptr inbounds i8, ptr %415, i64 %416
  %417 = load i16, ptr %add.ptr686, align 2, !tbaa !25
  %conv687 = uitofp i16 %417 to double
  store double %conv687, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb688:                                         ; preds = %if.end677
  %418 = load ptr, ptr %pi, align 8, !tbaa !4
  %419 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr689 = getelementptr inbounds i8, ptr %418, i64 %419
  %420 = load i32, ptr %add.ptr689, align 4, !tbaa !8
  %conv690 = uitofp i32 %420 to double
  store double %conv690, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb691:                                         ; preds = %if.end677
  %421 = load ptr, ptr %pi, align 8, !tbaa !4
  %422 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr692 = getelementptr inbounds i8, ptr %421, i64 %422
  %423 = load i64, ptr %add.ptr692, align 8, !tbaa !11
  %conv693 = uitofp i64 %423 to double
  store double %conv693, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb694:                                         ; preds = %if.end677
  %424 = load ptr, ptr %pi, align 8, !tbaa !4
  %425 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr695 = getelementptr inbounds i8, ptr %424, i64 %425
  %426 = load i64, ptr %add.ptr695, align 8, !tbaa !27
  %conv696 = uitofp i64 %426 to double
  store double %conv696, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb697:                                         ; preds = %if.end677
  %427 = load ptr, ptr %pi, align 8, !tbaa !4
  %428 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr698 = getelementptr inbounds i8, ptr %427, i64 %428
  %429 = load i8, ptr %add.ptr698, align 1, !tbaa !10
  %conv699 = sitofp i8 %429 to double
  store double %conv699, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb700:                                         ; preds = %if.end677
  %430 = load ptr, ptr %pi, align 8, !tbaa !4
  %431 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr701 = getelementptr inbounds i8, ptr %430, i64 %431
  %432 = load i16, ptr %add.ptr701, align 2, !tbaa !25
  %conv702 = sitofp i16 %432 to double
  store double %conv702, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb703:                                         ; preds = %if.end677
  %433 = load ptr, ptr %pi, align 8, !tbaa !4
  %434 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr704 = getelementptr inbounds i8, ptr %433, i64 %434
  %435 = load i32, ptr %add.ptr704, align 4, !tbaa !8
  %conv705 = sitofp i32 %435 to double
  store double %conv705, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb706:                                         ; preds = %if.end677
  %436 = load ptr, ptr %pi, align 8, !tbaa !4
  %437 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr707 = getelementptr inbounds i8, ptr %436, i64 %437
  %438 = load i64, ptr %add.ptr707, align 8, !tbaa !11
  %conv708 = sitofp i64 %438 to double
  store double %conv708, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb709:                                         ; preds = %if.end677
  %439 = load ptr, ptr %pi, align 8, !tbaa !4
  %440 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr710 = getelementptr inbounds i8, ptr %439, i64 %440
  %441 = load i64, ptr %add.ptr710, align 8, !tbaa !27
  %conv711 = sitofp i64 %441 to double
  store double %conv711, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb712:                                         ; preds = %if.end677
  %442 = load ptr, ptr %pi, align 8, !tbaa !4
  %443 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr713 = getelementptr inbounds i8, ptr %442, i64 %443
  %444 = load float, ptr %add.ptr713, align 4, !tbaa !29
  %conv714 = fpext float %444 to double
  store double %conv714, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.bb715:                                         ; preds = %if.end677
  %445 = load ptr, ptr %pi, align 8, !tbaa !4
  %446 = load i64, ptr %idx630, align 8, !tbaa !11
  %add.ptr716 = getelementptr inbounds i8, ptr %445, i64 %446
  %447 = load double, ptr %add.ptr716, align 8, !tbaa !24
  store double %447, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog724

sw.default717:                                    ; preds = %if.end677
  br label %do.body718

do.body718:                                       ; preds = %sw.default717
  %448 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool719 = icmp ne ptr %448, null
  br i1 %tobool719, label %if.then720, label %if.end721

if.then720:                                       ; preds = %do.body718
  %449 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %449)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end721

if.end721:                                        ; preds = %if.then720, %do.body718
  br label %do.cond722

do.cond722:                                       ; preds = %if.end721
  br label %do.end723

do.end723:                                        ; preds = %do.cond722
  %450 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %450, ptr noundef @.str.2)
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup744

sw.epilog724:                                     ; preds = %sw.bb715, %sw.bb712, %sw.bb709, %sw.bb706, %sw.bb703, %sw.bb700, %sw.bb697, %sw.bb694, %sw.bb691, %sw.bb688, %sw.bb685, %sw.bb682, %sw.bb679
  br label %if.end725

if.end725:                                        ; preds = %sw.epilog724, %if.then650
  store i64 0, ptr %ll, align 8, !tbaa !11
  br label %for.cond726

for.cond726:                                      ; preds = %for.inc739, %if.end725
  %451 = load i64, ptr %ll, align 8, !tbaa !11
  %452 = load i32, ptr %irank, align 4, !tbaa !8
  %conv727 = sext i32 %452 to i64
  %cmp728 = icmp slt i64 %451, %conv727
  br i1 %cmp728, label %for.body730, label %for.end741

for.body730:                                      ; preds = %for.cond726
  %453 = load i32, ptr %order.addr, align 4, !tbaa !8
  %cmp731 = icmp sgt i32 %453, 0
  br i1 %cmp731, label %if.then733, label %if.end738

if.then733:                                       ; preds = %for.body730
  %454 = load ptr, ptr %splvals, align 8, !tbaa !4
  %455 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx734 = getelementptr inbounds ptr, ptr %454, i64 %455
  %456 = load ptr, ptr %arrayidx734, align 8, !tbaa !4
  %457 = load ptr, ptr %ff, align 8, !tbaa !4
  %458 = load i64, ptr %ll, align 8, !tbaa !11
  %arrayidx735 = getelementptr inbounds i64, ptr %457, i64 %458
  %459 = load i64, ptr %arrayidx735, align 8, !tbaa !11
  %arrayidx736 = getelementptr inbounds double, ptr %456, i64 %459
  %460 = load double, ptr %arrayidx736, align 8, !tbaa !24
  %461 = load double, ptr %coeff, align 8, !tbaa !24
  %mul737 = fmul double %461, %460
  store double %mul737, ptr %coeff, align 8, !tbaa !24
  br label %if.end738

if.end738:                                        ; preds = %if.then733, %for.body730
  br label %for.inc739

for.inc739:                                       ; preds = %if.end738
  %462 = load i64, ptr %ll, align 8, !tbaa !11
  %inc740 = add nsw i64 %462, 1
  store i64 %inc740, ptr %ll, align 8, !tbaa !11
  br label %for.cond726

for.end741:                                       ; preds = %for.cond726
  %463 = load double, ptr %coeff, align 8, !tbaa !24
  %464 = load double, ptr %t, align 8, !tbaa !24
  %add742 = fadd double %464, %463
  store double %add742, ptr %t, align 8, !tbaa !24
  %465 = load i32, ptr %irank, align 4, !tbaa !8
  %466 = load ptr, ptr %ff, align 8, !tbaa !4
  %idx.ext = sext i32 %465 to i64
  %add.ptr743 = getelementptr inbounds i64, ptr %466, i64 %idx.ext
  store ptr %add.ptr743, ptr %ff, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup744

cleanup744:                                       ; preds = %do.end723, %for.end741
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_cval) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx630) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %coeff) #7
  %cleanup.dest747 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest747, label %cleanup752 [
    i32 0, label %cleanup.cont748
  ]

cleanup.cont748:                                  ; preds = %cleanup744
  br label %for.inc749

for.inc749:                                       ; preds = %cleanup.cont748
  %467 = load i64, ptr %hh, align 8, !tbaa !11
  %inc750 = add nsw i64 %467, 1
  store i64 %inc750, ptr %hh, align 8, !tbaa !11
  br label %for.cond626

for.end751:                                       ; preds = %for.cond626
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup752

cleanup752:                                       ; preds = %for.end751, %cleanup744
  call void @llvm.lifetime.end.p0(i64 4, ptr %type_num) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #7
  %cleanup.dest754 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest754, label %cleanup1066 [
    i32 0, label %cleanup.cont755
  ]

cleanup.cont755:                                  ; preds = %cleanup752
  br label %if.end757

if.else756:                                       ; preds = %for.end622
  %468 = load double, ptr %cval.addr, align 8, !tbaa !24
  store double %468, ptr %t, align 8, !tbaa !24
  br label %if.end757

if.end757:                                        ; preds = %if.else756, %cleanup.cont755
  %469 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call758 = call i32 @PyArray_TYPE(ptr noundef %469)
  switch i32 %call758, label %sw.default979 [
    i32 0, label %sw.bb759
    i32 2, label %sw.bb761
    i32 4, label %sw.bb782
    i32 6, label %sw.bb803
    i32 8, label %sw.bb824
    i32 10, label %sw.bb845
    i32 1, label %sw.bb866
    i32 3, label %sw.bb888
    i32 5, label %sw.bb910
    i32 7, label %sw.bb932
    i32 9, label %sw.bb954
    i32 11, label %sw.bb976
    i32 12, label %sw.bb978
  ]

sw.bb759:                                         ; preds = %if.end757
  %470 = load double, ptr %t, align 8, !tbaa !24
  %conv760 = fptoui double %470 to i8
  %471 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv760, ptr %471, align 1, !tbaa !10
  br label %sw.epilog986

sw.bb761:                                         ; preds = %if.end757
  %472 = load double, ptr %t, align 8, !tbaa !24
  %cmp762 = fcmp ogt double %472, 0.000000e+00
  br i1 %cmp762, label %cond.true764, label %cond.false766

cond.true764:                                     ; preds = %sw.bb761
  %473 = load double, ptr %t, align 8, !tbaa !24
  %add765 = fadd double %473, 5.000000e-01
  br label %cond.end767

cond.false766:                                    ; preds = %sw.bb761
  br label %cond.end767

cond.end767:                                      ; preds = %cond.false766, %cond.true764
  %cond768 = phi double [ %add765, %cond.true764 ], [ 0.000000e+00, %cond.false766 ]
  store double %cond768, ptr %t, align 8, !tbaa !24
  %474 = load double, ptr %t, align 8, !tbaa !24
  %cmp769 = fcmp ogt double %474, 2.550000e+02
  br i1 %cmp769, label %cond.true771, label %cond.false772

cond.true771:                                     ; preds = %cond.end767
  br label %cond.end773

cond.false772:                                    ; preds = %cond.end767
  %475 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end773

cond.end773:                                      ; preds = %cond.false772, %cond.true771
  %cond774 = phi double [ 2.550000e+02, %cond.true771 ], [ %475, %cond.false772 ]
  store double %cond774, ptr %t, align 8, !tbaa !24
  %476 = load double, ptr %t, align 8, !tbaa !24
  %cmp775 = fcmp olt double %476, 0.000000e+00
  br i1 %cmp775, label %cond.true777, label %cond.false778

cond.true777:                                     ; preds = %cond.end773
  br label %cond.end779

cond.false778:                                    ; preds = %cond.end773
  %477 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end779

cond.end779:                                      ; preds = %cond.false778, %cond.true777
  %cond780 = phi double [ 0.000000e+00, %cond.true777 ], [ %477, %cond.false778 ]
  store double %cond780, ptr %t, align 8, !tbaa !24
  %478 = load double, ptr %t, align 8, !tbaa !24
  %conv781 = fptoui double %478 to i8
  %479 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv781, ptr %479, align 1, !tbaa !10
  br label %sw.epilog986

sw.bb782:                                         ; preds = %if.end757
  %480 = load double, ptr %t, align 8, !tbaa !24
  %cmp783 = fcmp ogt double %480, 0.000000e+00
  br i1 %cmp783, label %cond.true785, label %cond.false787

cond.true785:                                     ; preds = %sw.bb782
  %481 = load double, ptr %t, align 8, !tbaa !24
  %add786 = fadd double %481, 5.000000e-01
  br label %cond.end788

cond.false787:                                    ; preds = %sw.bb782
  br label %cond.end788

cond.end788:                                      ; preds = %cond.false787, %cond.true785
  %cond789 = phi double [ %add786, %cond.true785 ], [ 0.000000e+00, %cond.false787 ]
  store double %cond789, ptr %t, align 8, !tbaa !24
  %482 = load double, ptr %t, align 8, !tbaa !24
  %cmp790 = fcmp ogt double %482, 6.553500e+04
  br i1 %cmp790, label %cond.true792, label %cond.false793

cond.true792:                                     ; preds = %cond.end788
  br label %cond.end794

cond.false793:                                    ; preds = %cond.end788
  %483 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end794

cond.end794:                                      ; preds = %cond.false793, %cond.true792
  %cond795 = phi double [ 6.553500e+04, %cond.true792 ], [ %483, %cond.false793 ]
  store double %cond795, ptr %t, align 8, !tbaa !24
  %484 = load double, ptr %t, align 8, !tbaa !24
  %cmp796 = fcmp olt double %484, 0.000000e+00
  br i1 %cmp796, label %cond.true798, label %cond.false799

cond.true798:                                     ; preds = %cond.end794
  br label %cond.end800

cond.false799:                                    ; preds = %cond.end794
  %485 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end800

cond.end800:                                      ; preds = %cond.false799, %cond.true798
  %cond801 = phi double [ 0.000000e+00, %cond.true798 ], [ %485, %cond.false799 ]
  store double %cond801, ptr %t, align 8, !tbaa !24
  %486 = load double, ptr %t, align 8, !tbaa !24
  %conv802 = fptoui double %486 to i16
  %487 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv802, ptr %487, align 2, !tbaa !25
  br label %sw.epilog986

sw.bb803:                                         ; preds = %if.end757
  %488 = load double, ptr %t, align 8, !tbaa !24
  %cmp804 = fcmp ogt double %488, 0.000000e+00
  br i1 %cmp804, label %cond.true806, label %cond.false808

cond.true806:                                     ; preds = %sw.bb803
  %489 = load double, ptr %t, align 8, !tbaa !24
  %add807 = fadd double %489, 5.000000e-01
  br label %cond.end809

cond.false808:                                    ; preds = %sw.bb803
  br label %cond.end809

cond.end809:                                      ; preds = %cond.false808, %cond.true806
  %cond810 = phi double [ %add807, %cond.true806 ], [ 0.000000e+00, %cond.false808 ]
  store double %cond810, ptr %t, align 8, !tbaa !24
  %490 = load double, ptr %t, align 8, !tbaa !24
  %cmp811 = fcmp ogt double %490, 0x41EFFFFFFFE00000
  br i1 %cmp811, label %cond.true813, label %cond.false814

cond.true813:                                     ; preds = %cond.end809
  br label %cond.end815

cond.false814:                                    ; preds = %cond.end809
  %491 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end815

cond.end815:                                      ; preds = %cond.false814, %cond.true813
  %cond816 = phi double [ 0x41EFFFFFFFE00000, %cond.true813 ], [ %491, %cond.false814 ]
  store double %cond816, ptr %t, align 8, !tbaa !24
  %492 = load double, ptr %t, align 8, !tbaa !24
  %cmp817 = fcmp olt double %492, 0.000000e+00
  br i1 %cmp817, label %cond.true819, label %cond.false820

cond.true819:                                     ; preds = %cond.end815
  br label %cond.end821

cond.false820:                                    ; preds = %cond.end815
  %493 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end821

cond.end821:                                      ; preds = %cond.false820, %cond.true819
  %cond822 = phi double [ 0.000000e+00, %cond.true819 ], [ %493, %cond.false820 ]
  store double %cond822, ptr %t, align 8, !tbaa !24
  %494 = load double, ptr %t, align 8, !tbaa !24
  %conv823 = fptoui double %494 to i32
  %495 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv823, ptr %495, align 4, !tbaa !8
  br label %sw.epilog986

sw.bb824:                                         ; preds = %if.end757
  %496 = load double, ptr %t, align 8, !tbaa !24
  %cmp825 = fcmp ogt double %496, 0.000000e+00
  br i1 %cmp825, label %cond.true827, label %cond.false829

cond.true827:                                     ; preds = %sw.bb824
  %497 = load double, ptr %t, align 8, !tbaa !24
  %add828 = fadd double %497, 5.000000e-01
  br label %cond.end830

cond.false829:                                    ; preds = %sw.bb824
  br label %cond.end830

cond.end830:                                      ; preds = %cond.false829, %cond.true827
  %cond831 = phi double [ %add828, %cond.true827 ], [ 0.000000e+00, %cond.false829 ]
  store double %cond831, ptr %t, align 8, !tbaa !24
  %498 = load double, ptr %t, align 8, !tbaa !24
  %cmp832 = fcmp ogt double %498, 0x43F0000000000000
  br i1 %cmp832, label %cond.true834, label %cond.false835

cond.true834:                                     ; preds = %cond.end830
  br label %cond.end836

cond.false835:                                    ; preds = %cond.end830
  %499 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end836

cond.end836:                                      ; preds = %cond.false835, %cond.true834
  %cond837 = phi double [ 0x43F0000000000000, %cond.true834 ], [ %499, %cond.false835 ]
  store double %cond837, ptr %t, align 8, !tbaa !24
  %500 = load double, ptr %t, align 8, !tbaa !24
  %cmp838 = fcmp olt double %500, 0.000000e+00
  br i1 %cmp838, label %cond.true840, label %cond.false841

cond.true840:                                     ; preds = %cond.end836
  br label %cond.end842

cond.false841:                                    ; preds = %cond.end836
  %501 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end842

cond.end842:                                      ; preds = %cond.false841, %cond.true840
  %cond843 = phi double [ 0.000000e+00, %cond.true840 ], [ %501, %cond.false841 ]
  store double %cond843, ptr %t, align 8, !tbaa !24
  %502 = load double, ptr %t, align 8, !tbaa !24
  %conv844 = fptoui double %502 to i64
  %503 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv844, ptr %503, align 8, !tbaa !11
  br label %sw.epilog986

sw.bb845:                                         ; preds = %if.end757
  %504 = load double, ptr %t, align 8, !tbaa !24
  %cmp846 = fcmp ogt double %504, 0.000000e+00
  br i1 %cmp846, label %cond.true848, label %cond.false850

cond.true848:                                     ; preds = %sw.bb845
  %505 = load double, ptr %t, align 8, !tbaa !24
  %add849 = fadd double %505, 5.000000e-01
  br label %cond.end851

cond.false850:                                    ; preds = %sw.bb845
  br label %cond.end851

cond.end851:                                      ; preds = %cond.false850, %cond.true848
  %cond852 = phi double [ %add849, %cond.true848 ], [ 0.000000e+00, %cond.false850 ]
  store double %cond852, ptr %t, align 8, !tbaa !24
  %506 = load double, ptr %t, align 8, !tbaa !24
  %cmp853 = fcmp ogt double %506, 0x43F0000000000000
  br i1 %cmp853, label %cond.true855, label %cond.false856

cond.true855:                                     ; preds = %cond.end851
  br label %cond.end857

cond.false856:                                    ; preds = %cond.end851
  %507 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end857

cond.end857:                                      ; preds = %cond.false856, %cond.true855
  %cond858 = phi double [ 0x43F0000000000000, %cond.true855 ], [ %507, %cond.false856 ]
  store double %cond858, ptr %t, align 8, !tbaa !24
  %508 = load double, ptr %t, align 8, !tbaa !24
  %cmp859 = fcmp olt double %508, 0.000000e+00
  br i1 %cmp859, label %cond.true861, label %cond.false862

cond.true861:                                     ; preds = %cond.end857
  br label %cond.end863

cond.false862:                                    ; preds = %cond.end857
  %509 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end863

cond.end863:                                      ; preds = %cond.false862, %cond.true861
  %cond864 = phi double [ 0.000000e+00, %cond.true861 ], [ %509, %cond.false862 ]
  store double %cond864, ptr %t, align 8, !tbaa !24
  %510 = load double, ptr %t, align 8, !tbaa !24
  %conv865 = fptoui double %510 to i64
  %511 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv865, ptr %511, align 8, !tbaa !27
  br label %sw.epilog986

sw.bb866:                                         ; preds = %if.end757
  %512 = load double, ptr %t, align 8, !tbaa !24
  %cmp867 = fcmp ogt double %512, 0.000000e+00
  br i1 %cmp867, label %cond.true869, label %cond.false871

cond.true869:                                     ; preds = %sw.bb866
  %513 = load double, ptr %t, align 8, !tbaa !24
  %add870 = fadd double %513, 5.000000e-01
  br label %cond.end873

cond.false871:                                    ; preds = %sw.bb866
  %514 = load double, ptr %t, align 8, !tbaa !24
  %sub872 = fsub double %514, 5.000000e-01
  br label %cond.end873

cond.end873:                                      ; preds = %cond.false871, %cond.true869
  %cond874 = phi double [ %add870, %cond.true869 ], [ %sub872, %cond.false871 ]
  store double %cond874, ptr %t, align 8, !tbaa !24
  %515 = load double, ptr %t, align 8, !tbaa !24
  %cmp875 = fcmp ogt double %515, 1.270000e+02
  br i1 %cmp875, label %cond.true877, label %cond.false878

cond.true877:                                     ; preds = %cond.end873
  br label %cond.end879

cond.false878:                                    ; preds = %cond.end873
  %516 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end879

cond.end879:                                      ; preds = %cond.false878, %cond.true877
  %cond880 = phi double [ 1.270000e+02, %cond.true877 ], [ %516, %cond.false878 ]
  store double %cond880, ptr %t, align 8, !tbaa !24
  %517 = load double, ptr %t, align 8, !tbaa !24
  %cmp881 = fcmp olt double %517, -1.280000e+02
  br i1 %cmp881, label %cond.true883, label %cond.false884

cond.true883:                                     ; preds = %cond.end879
  br label %cond.end885

cond.false884:                                    ; preds = %cond.end879
  %518 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end885

cond.end885:                                      ; preds = %cond.false884, %cond.true883
  %cond886 = phi double [ -1.280000e+02, %cond.true883 ], [ %518, %cond.false884 ]
  store double %cond886, ptr %t, align 8, !tbaa !24
  %519 = load double, ptr %t, align 8, !tbaa !24
  %conv887 = fptosi double %519 to i8
  %520 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv887, ptr %520, align 1, !tbaa !10
  br label %sw.epilog986

sw.bb888:                                         ; preds = %if.end757
  %521 = load double, ptr %t, align 8, !tbaa !24
  %cmp889 = fcmp ogt double %521, 0.000000e+00
  br i1 %cmp889, label %cond.true891, label %cond.false893

cond.true891:                                     ; preds = %sw.bb888
  %522 = load double, ptr %t, align 8, !tbaa !24
  %add892 = fadd double %522, 5.000000e-01
  br label %cond.end895

cond.false893:                                    ; preds = %sw.bb888
  %523 = load double, ptr %t, align 8, !tbaa !24
  %sub894 = fsub double %523, 5.000000e-01
  br label %cond.end895

cond.end895:                                      ; preds = %cond.false893, %cond.true891
  %cond896 = phi double [ %add892, %cond.true891 ], [ %sub894, %cond.false893 ]
  store double %cond896, ptr %t, align 8, !tbaa !24
  %524 = load double, ptr %t, align 8, !tbaa !24
  %cmp897 = fcmp ogt double %524, 3.276700e+04
  br i1 %cmp897, label %cond.true899, label %cond.false900

cond.true899:                                     ; preds = %cond.end895
  br label %cond.end901

cond.false900:                                    ; preds = %cond.end895
  %525 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end901

cond.end901:                                      ; preds = %cond.false900, %cond.true899
  %cond902 = phi double [ 3.276700e+04, %cond.true899 ], [ %525, %cond.false900 ]
  store double %cond902, ptr %t, align 8, !tbaa !24
  %526 = load double, ptr %t, align 8, !tbaa !24
  %cmp903 = fcmp olt double %526, -3.276800e+04
  br i1 %cmp903, label %cond.true905, label %cond.false906

cond.true905:                                     ; preds = %cond.end901
  br label %cond.end907

cond.false906:                                    ; preds = %cond.end901
  %527 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end907

cond.end907:                                      ; preds = %cond.false906, %cond.true905
  %cond908 = phi double [ -3.276800e+04, %cond.true905 ], [ %527, %cond.false906 ]
  store double %cond908, ptr %t, align 8, !tbaa !24
  %528 = load double, ptr %t, align 8, !tbaa !24
  %conv909 = fptosi double %528 to i16
  %529 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv909, ptr %529, align 2, !tbaa !25
  br label %sw.epilog986

sw.bb910:                                         ; preds = %if.end757
  %530 = load double, ptr %t, align 8, !tbaa !24
  %cmp911 = fcmp ogt double %530, 0.000000e+00
  br i1 %cmp911, label %cond.true913, label %cond.false915

cond.true913:                                     ; preds = %sw.bb910
  %531 = load double, ptr %t, align 8, !tbaa !24
  %add914 = fadd double %531, 5.000000e-01
  br label %cond.end917

cond.false915:                                    ; preds = %sw.bb910
  %532 = load double, ptr %t, align 8, !tbaa !24
  %sub916 = fsub double %532, 5.000000e-01
  br label %cond.end917

cond.end917:                                      ; preds = %cond.false915, %cond.true913
  %cond918 = phi double [ %add914, %cond.true913 ], [ %sub916, %cond.false915 ]
  store double %cond918, ptr %t, align 8, !tbaa !24
  %533 = load double, ptr %t, align 8, !tbaa !24
  %cmp919 = fcmp ogt double %533, 0x41DFFFFFFFC00000
  br i1 %cmp919, label %cond.true921, label %cond.false922

cond.true921:                                     ; preds = %cond.end917
  br label %cond.end923

cond.false922:                                    ; preds = %cond.end917
  %534 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end923

cond.end923:                                      ; preds = %cond.false922, %cond.true921
  %cond924 = phi double [ 0x41DFFFFFFFC00000, %cond.true921 ], [ %534, %cond.false922 ]
  store double %cond924, ptr %t, align 8, !tbaa !24
  %535 = load double, ptr %t, align 8, !tbaa !24
  %cmp925 = fcmp olt double %535, 0xC1E0000000000000
  br i1 %cmp925, label %cond.true927, label %cond.false928

cond.true927:                                     ; preds = %cond.end923
  br label %cond.end929

cond.false928:                                    ; preds = %cond.end923
  %536 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end929

cond.end929:                                      ; preds = %cond.false928, %cond.true927
  %cond930 = phi double [ 0xC1E0000000000000, %cond.true927 ], [ %536, %cond.false928 ]
  store double %cond930, ptr %t, align 8, !tbaa !24
  %537 = load double, ptr %t, align 8, !tbaa !24
  %conv931 = fptosi double %537 to i32
  %538 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv931, ptr %538, align 4, !tbaa !8
  br label %sw.epilog986

sw.bb932:                                         ; preds = %if.end757
  %539 = load double, ptr %t, align 8, !tbaa !24
  %cmp933 = fcmp ogt double %539, 0.000000e+00
  br i1 %cmp933, label %cond.true935, label %cond.false937

cond.true935:                                     ; preds = %sw.bb932
  %540 = load double, ptr %t, align 8, !tbaa !24
  %add936 = fadd double %540, 5.000000e-01
  br label %cond.end939

cond.false937:                                    ; preds = %sw.bb932
  %541 = load double, ptr %t, align 8, !tbaa !24
  %sub938 = fsub double %541, 5.000000e-01
  br label %cond.end939

cond.end939:                                      ; preds = %cond.false937, %cond.true935
  %cond940 = phi double [ %add936, %cond.true935 ], [ %sub938, %cond.false937 ]
  store double %cond940, ptr %t, align 8, !tbaa !24
  %542 = load double, ptr %t, align 8, !tbaa !24
  %cmp941 = fcmp ogt double %542, 0x43E0000000000000
  br i1 %cmp941, label %cond.true943, label %cond.false944

cond.true943:                                     ; preds = %cond.end939
  br label %cond.end945

cond.false944:                                    ; preds = %cond.end939
  %543 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end945

cond.end945:                                      ; preds = %cond.false944, %cond.true943
  %cond946 = phi double [ 0x43E0000000000000, %cond.true943 ], [ %543, %cond.false944 ]
  store double %cond946, ptr %t, align 8, !tbaa !24
  %544 = load double, ptr %t, align 8, !tbaa !24
  %cmp947 = fcmp olt double %544, 0xC3E0000000000000
  br i1 %cmp947, label %cond.true949, label %cond.false950

cond.true949:                                     ; preds = %cond.end945
  br label %cond.end951

cond.false950:                                    ; preds = %cond.end945
  %545 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end951

cond.end951:                                      ; preds = %cond.false950, %cond.true949
  %cond952 = phi double [ 0xC3E0000000000000, %cond.true949 ], [ %545, %cond.false950 ]
  store double %cond952, ptr %t, align 8, !tbaa !24
  %546 = load double, ptr %t, align 8, !tbaa !24
  %conv953 = fptosi double %546 to i64
  %547 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv953, ptr %547, align 8, !tbaa !11
  br label %sw.epilog986

sw.bb954:                                         ; preds = %if.end757
  %548 = load double, ptr %t, align 8, !tbaa !24
  %cmp955 = fcmp ogt double %548, 0.000000e+00
  br i1 %cmp955, label %cond.true957, label %cond.false959

cond.true957:                                     ; preds = %sw.bb954
  %549 = load double, ptr %t, align 8, !tbaa !24
  %add958 = fadd double %549, 5.000000e-01
  br label %cond.end961

cond.false959:                                    ; preds = %sw.bb954
  %550 = load double, ptr %t, align 8, !tbaa !24
  %sub960 = fsub double %550, 5.000000e-01
  br label %cond.end961

cond.end961:                                      ; preds = %cond.false959, %cond.true957
  %cond962 = phi double [ %add958, %cond.true957 ], [ %sub960, %cond.false959 ]
  store double %cond962, ptr %t, align 8, !tbaa !24
  %551 = load double, ptr %t, align 8, !tbaa !24
  %cmp963 = fcmp ogt double %551, 0x43E0000000000000
  br i1 %cmp963, label %cond.true965, label %cond.false966

cond.true965:                                     ; preds = %cond.end961
  br label %cond.end967

cond.false966:                                    ; preds = %cond.end961
  %552 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end967

cond.end967:                                      ; preds = %cond.false966, %cond.true965
  %cond968 = phi double [ 0x43E0000000000000, %cond.true965 ], [ %552, %cond.false966 ]
  store double %cond968, ptr %t, align 8, !tbaa !24
  %553 = load double, ptr %t, align 8, !tbaa !24
  %cmp969 = fcmp olt double %553, 0xC3E0000000000000
  br i1 %cmp969, label %cond.true971, label %cond.false972

cond.true971:                                     ; preds = %cond.end967
  br label %cond.end973

cond.false972:                                    ; preds = %cond.end967
  %554 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end973

cond.end973:                                      ; preds = %cond.false972, %cond.true971
  %cond974 = phi double [ 0xC3E0000000000000, %cond.true971 ], [ %554, %cond.false972 ]
  store double %cond974, ptr %t, align 8, !tbaa !24
  %555 = load double, ptr %t, align 8, !tbaa !24
  %conv975 = fptosi double %555 to i64
  %556 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv975, ptr %556, align 8, !tbaa !27
  br label %sw.epilog986

sw.bb976:                                         ; preds = %if.end757
  %557 = load double, ptr %t, align 8, !tbaa !24
  %conv977 = fptrunc double %557 to float
  %558 = load ptr, ptr %po, align 8, !tbaa !4
  store float %conv977, ptr %558, align 4, !tbaa !29
  br label %sw.epilog986

sw.bb978:                                         ; preds = %if.end757
  %559 = load double, ptr %t, align 8, !tbaa !24
  %560 = load ptr, ptr %po, align 8, !tbaa !4
  store double %559, ptr %560, align 8, !tbaa !24
  br label %sw.epilog986

sw.default979:                                    ; preds = %if.end757
  br label %do.body980

do.body980:                                       ; preds = %sw.default979
  %561 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool981 = icmp ne ptr %561, null
  br i1 %tobool981, label %if.then982, label %if.end983

if.then982:                                       ; preds = %do.body980
  %562 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %562)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end983

if.end983:                                        ; preds = %if.then982, %do.body980
  br label %do.cond984

do.cond984:                                       ; preds = %if.end983
  br label %do.end985

do.end985:                                        ; preds = %do.cond984
  %563 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %563, ptr noundef @.str.2)
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup1066

sw.epilog986:                                     ; preds = %sw.bb978, %sw.bb976, %cond.end973, %cond.end951, %cond.end929, %cond.end907, %cond.end885, %cond.end863, %cond.end842, %cond.end821, %cond.end800, %cond.end779, %sw.bb759
  %564 = load ptr, ptr %coordinates.addr, align 8, !tbaa !4
  %tobool987 = icmp ne ptr %564, null
  br i1 %tobool987, label %if.then988, label %if.else1028

if.then988:                                       ; preds = %sw.epilog986
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ii) #7
  %rank_m1 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 0
  %565 = load i32, ptr %rank_m1, align 8, !tbaa !31
  store i32 %565, ptr %_ii, align 4, !tbaa !8
  br label %for.cond989

for.cond989:                                      ; preds = %for.inc1025, %if.then988
  %566 = load i32, ptr %_ii, align 4, !tbaa !8
  %cmp990 = icmp sge i32 %566, 0
  br i1 %cmp990, label %for.body992, label %for.end1027

for.body992:                                      ; preds = %for.cond989
  %coordinates993 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %567 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom = sext i32 %567 to i64
  %arrayidx994 = getelementptr inbounds [32 x i64], ptr %coordinates993, i64 0, i64 %idxprom
  %568 = load i64, ptr %arrayidx994, align 8, !tbaa !11
  %dimensions = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 1
  %569 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom995 = sext i32 %569 to i64
  %arrayidx996 = getelementptr inbounds [32 x i64], ptr %dimensions, i64 0, i64 %idxprom995
  %570 = load i64, ptr %arrayidx996, align 8, !tbaa !11
  %cmp997 = icmp slt i64 %568, %570
  br i1 %cmp997, label %if.then999, label %if.else1012

if.then999:                                       ; preds = %for.body992
  %coordinates1000 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %571 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom1001 = sext i32 %571 to i64
  %arrayidx1002 = getelementptr inbounds [32 x i64], ptr %coordinates1000, i64 0, i64 %idxprom1001
  %572 = load i64, ptr %arrayidx1002, align 8, !tbaa !11
  %inc1003 = add nsw i64 %572, 1
  store i64 %inc1003, ptr %arrayidx1002, align 8, !tbaa !11
  %strides1004 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 3
  %573 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom1005 = sext i32 %573 to i64
  %arrayidx1006 = getelementptr inbounds [32 x i64], ptr %strides1004, i64 0, i64 %idxprom1005
  %574 = load i64, ptr %arrayidx1006, align 8, !tbaa !11
  %575 = load ptr, ptr %po, align 8, !tbaa !4
  %add.ptr1007 = getelementptr inbounds i8, ptr %575, i64 %574
  store ptr %add.ptr1007, ptr %po, align 8, !tbaa !4
  %strides1008 = getelementptr inbounds %struct.NI_Iterator, ptr %ic, i32 0, i32 3
  %576 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom1009 = sext i32 %576 to i64
  %arrayidx1010 = getelementptr inbounds [32 x i64], ptr %strides1008, i64 0, i64 %idxprom1009
  %577 = load i64, ptr %arrayidx1010, align 8, !tbaa !11
  %578 = load ptr, ptr %pc, align 8, !tbaa !4
  %add.ptr1011 = getelementptr inbounds i8, ptr %578, i64 %577
  store ptr %add.ptr1011, ptr %pc, align 8, !tbaa !4
  br label %for.end1027

if.else1012:                                      ; preds = %for.body992
  %coordinates1013 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %579 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom1014 = sext i32 %579 to i64
  %arrayidx1015 = getelementptr inbounds [32 x i64], ptr %coordinates1013, i64 0, i64 %idxprom1014
  store i64 0, ptr %arrayidx1015, align 8, !tbaa !11
  %backstrides = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 4
  %580 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom1016 = sext i32 %580 to i64
  %arrayidx1017 = getelementptr inbounds [32 x i64], ptr %backstrides, i64 0, i64 %idxprom1016
  %581 = load i64, ptr %arrayidx1017, align 8, !tbaa !11
  %582 = load ptr, ptr %po, align 8, !tbaa !4
  %idx.neg = sub i64 0, %581
  %add.ptr1018 = getelementptr inbounds i8, ptr %582, i64 %idx.neg
  store ptr %add.ptr1018, ptr %po, align 8, !tbaa !4
  %backstrides1019 = getelementptr inbounds %struct.NI_Iterator, ptr %ic, i32 0, i32 4
  %583 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom1020 = sext i32 %583 to i64
  %arrayidx1021 = getelementptr inbounds [32 x i64], ptr %backstrides1019, i64 0, i64 %idxprom1020
  %584 = load i64, ptr %arrayidx1021, align 8, !tbaa !11
  %585 = load ptr, ptr %pc, align 8, !tbaa !4
  %idx.neg1022 = sub i64 0, %584
  %add.ptr1023 = getelementptr inbounds i8, ptr %585, i64 %idx.neg1022
  store ptr %add.ptr1023, ptr %pc, align 8, !tbaa !4
  br label %if.end1024

if.end1024:                                       ; preds = %if.else1012
  br label %for.inc1025

for.inc1025:                                      ; preds = %if.end1024
  %586 = load i32, ptr %_ii, align 4, !tbaa !8
  %dec1026 = add nsw i32 %586, -1
  store i32 %dec1026, ptr %_ii, align 4, !tbaa !8
  br label %for.cond989

for.end1027:                                      ; preds = %if.then999, %for.cond989
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ii) #7
  br label %if.end1065

if.else1028:                                      ; preds = %sw.epilog986
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ii1029) #7
  %rank_m11030 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 0
  %587 = load i32, ptr %rank_m11030, align 8, !tbaa !31
  store i32 %587, ptr %_ii1029, align 4, !tbaa !8
  br label %for.cond1031

for.cond1031:                                     ; preds = %for.inc1062, %if.else1028
  %588 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %cmp1032 = icmp sge i32 %588, 0
  br i1 %cmp1032, label %for.body1034, label %for.end1064

for.body1034:                                     ; preds = %for.cond1031
  %coordinates1035 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %589 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %idxprom1036 = sext i32 %589 to i64
  %arrayidx1037 = getelementptr inbounds [32 x i64], ptr %coordinates1035, i64 0, i64 %idxprom1036
  %590 = load i64, ptr %arrayidx1037, align 8, !tbaa !11
  %dimensions1038 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 1
  %591 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %idxprom1039 = sext i32 %591 to i64
  %arrayidx1040 = getelementptr inbounds [32 x i64], ptr %dimensions1038, i64 0, i64 %idxprom1039
  %592 = load i64, ptr %arrayidx1040, align 8, !tbaa !11
  %cmp1041 = icmp slt i64 %590, %592
  br i1 %cmp1041, label %if.then1043, label %if.else1052

if.then1043:                                      ; preds = %for.body1034
  %coordinates1044 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %593 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %idxprom1045 = sext i32 %593 to i64
  %arrayidx1046 = getelementptr inbounds [32 x i64], ptr %coordinates1044, i64 0, i64 %idxprom1045
  %594 = load i64, ptr %arrayidx1046, align 8, !tbaa !11
  %inc1047 = add nsw i64 %594, 1
  store i64 %inc1047, ptr %arrayidx1046, align 8, !tbaa !11
  %strides1048 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 3
  %595 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %idxprom1049 = sext i32 %595 to i64
  %arrayidx1050 = getelementptr inbounds [32 x i64], ptr %strides1048, i64 0, i64 %idxprom1049
  %596 = load i64, ptr %arrayidx1050, align 8, !tbaa !11
  %597 = load ptr, ptr %po, align 8, !tbaa !4
  %add.ptr1051 = getelementptr inbounds i8, ptr %597, i64 %596
  store ptr %add.ptr1051, ptr %po, align 8, !tbaa !4
  br label %for.end1064

if.else1052:                                      ; preds = %for.body1034
  %coordinates1053 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %598 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %idxprom1054 = sext i32 %598 to i64
  %arrayidx1055 = getelementptr inbounds [32 x i64], ptr %coordinates1053, i64 0, i64 %idxprom1054
  store i64 0, ptr %arrayidx1055, align 8, !tbaa !11
  %backstrides1056 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 4
  %599 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %idxprom1057 = sext i32 %599 to i64
  %arrayidx1058 = getelementptr inbounds [32 x i64], ptr %backstrides1056, i64 0, i64 %idxprom1057
  %600 = load i64, ptr %arrayidx1058, align 8, !tbaa !11
  %601 = load ptr, ptr %po, align 8, !tbaa !4
  %idx.neg1059 = sub i64 0, %600
  %add.ptr1060 = getelementptr inbounds i8, ptr %601, i64 %idx.neg1059
  store ptr %add.ptr1060, ptr %po, align 8, !tbaa !4
  br label %if.end1061

if.end1061:                                       ; preds = %if.else1052
  br label %for.inc1062

for.inc1062:                                      ; preds = %if.end1061
  %602 = load i32, ptr %_ii1029, align 4, !tbaa !8
  %dec1063 = add nsw i32 %602, -1
  store i32 %dec1063, ptr %_ii1029, align 4, !tbaa !8
  br label %for.cond1031

for.end1064:                                      ; preds = %if.then1043, %for.cond1031
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ii1029) #7
  br label %if.end1065

if.end1065:                                       ; preds = %for.end1064, %for.end1027
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup1066

cleanup1066:                                      ; preds = %do.end985, %if.end306, %if.end1065, %cleanup752, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %edge) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %constant) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7
  %cleanup.dest1070 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest1070, label %cleanup1120 [
    i32 0, label %cleanup.cont1071
    i32 7, label %exit
  ]

cleanup.cont1071:                                 ; preds = %cleanup1066
  br label %for.inc1072

for.inc1072:                                      ; preds = %cleanup.cont1071
  %603 = load i64, ptr %kk, align 8, !tbaa !11
  %inc1073 = add nsw i64 %603, 1
  store i64 %inc1073, ptr %kk, align 8, !tbaa !11
  br label %for.cond264

for.end1074:                                      ; preds = %for.cond264
  br label %exit

exit:                                             ; preds = %for.end1074, %cleanup1066, %do.end204, %if.then185, %do.end166, %do.end136, %do.end120, %do.end86, %do.end57, %do.end41, %if.then24, %if.then20
  br label %do.body1075

do.body1075:                                      ; preds = %exit
  %604 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool1076 = icmp ne ptr %604, null
  br i1 %tobool1076, label %if.then1077, label %if.end1078

if.then1077:                                      ; preds = %do.body1075
  %605 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %605)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end1078

if.end1078:                                       ; preds = %if.then1077, %do.body1075
  br label %do.cond1079

do.cond1079:                                      ; preds = %if.end1078
  br label %do.end1080

do.end1080:                                       ; preds = %do.cond1079
  %606 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  call void @free(ptr noundef %606) #7
  %607 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %tobool1081 = icmp ne ptr %607, null
  br i1 %tobool1081, label %if.then1082, label %if.end1092

if.then1082:                                      ; preds = %do.end1080
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1083

for.cond1083:                                     ; preds = %for.inc1089, %if.then1082
  %608 = load i64, ptr %jj, align 8, !tbaa !11
  %609 = load i32, ptr %irank, align 4, !tbaa !8
  %conv1084 = sext i32 %609 to i64
  %cmp1085 = icmp slt i64 %608, %conv1084
  br i1 %cmp1085, label %for.body1087, label %for.end1091

for.body1087:                                     ; preds = %for.cond1083
  %610 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %611 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1088 = getelementptr inbounds ptr, ptr %610, i64 %611
  %612 = load ptr, ptr %arrayidx1088, align 8, !tbaa !4
  call void @free(ptr noundef %612) #7
  br label %for.inc1089

for.inc1089:                                      ; preds = %for.body1087
  %613 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1090 = add nsw i64 %613, 1
  store i64 %inc1090, ptr %jj, align 8, !tbaa !11
  br label %for.cond1083

for.end1091:                                      ; preds = %for.cond1083
  %614 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  call void @free(ptr noundef %614) #7
  br label %if.end1092

if.end1092:                                       ; preds = %for.end1091, %do.end1080
  %615 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  %tobool1093 = icmp ne ptr %615, null
  br i1 %tobool1093, label %if.then1094, label %if.end1104

if.then1094:                                      ; preds = %if.end1092
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1095

for.cond1095:                                     ; preds = %for.inc1101, %if.then1094
  %616 = load i64, ptr %jj, align 8, !tbaa !11
  %617 = load i32, ptr %irank, align 4, !tbaa !8
  %conv1096 = sext i32 %617 to i64
  %cmp1097 = icmp slt i64 %616, %conv1096
  br i1 %cmp1097, label %for.body1099, label %for.end1103

for.body1099:                                     ; preds = %for.cond1095
  %618 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  %619 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1100 = getelementptr inbounds ptr, ptr %618, i64 %619
  %620 = load ptr, ptr %arrayidx1100, align 8, !tbaa !4
  call void @free(ptr noundef %620) #7
  br label %for.inc1101

for.inc1101:                                      ; preds = %for.body1099
  %621 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1102 = add nsw i64 %621, 1
  store i64 %inc1102, ptr %jj, align 8, !tbaa !11
  br label %for.cond1095

for.end1103:                                      ; preds = %for.cond1095
  %622 = load ptr, ptr %data_offsets, align 8, !tbaa !4
  call void @free(ptr noundef %622) #7
  br label %if.end1104

if.end1104:                                       ; preds = %for.end1103, %if.end1092
  %623 = load ptr, ptr %splvals, align 8, !tbaa !4
  %tobool1105 = icmp ne ptr %623, null
  br i1 %tobool1105, label %if.then1106, label %if.end1116

if.then1106:                                      ; preds = %if.end1104
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1107

for.cond1107:                                     ; preds = %for.inc1113, %if.then1106
  %624 = load i64, ptr %jj, align 8, !tbaa !11
  %625 = load i32, ptr %irank, align 4, !tbaa !8
  %conv1108 = sext i32 %625 to i64
  %cmp1109 = icmp slt i64 %624, %conv1108
  br i1 %cmp1109, label %for.body1111, label %for.end1115

for.body1111:                                     ; preds = %for.cond1107
  %626 = load ptr, ptr %splvals, align 8, !tbaa !4
  %627 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1112 = getelementptr inbounds ptr, ptr %626, i64 %627
  %628 = load ptr, ptr %arrayidx1112, align 8, !tbaa !4
  call void @free(ptr noundef %628) #7
  br label %for.inc1113

for.inc1113:                                      ; preds = %for.body1111
  %629 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1114 = add nsw i64 %629, 1
  store i64 %inc1114, ptr %jj, align 8, !tbaa !11
  br label %for.cond1107

for.end1115:                                      ; preds = %for.cond1107
  %630 = load ptr, ptr %splvals, align 8, !tbaa !4
  call void @free(ptr noundef %630) #7
  br label %if.end1116

if.end1116:                                       ; preds = %for.end1115, %if.end1104
  %631 = load ptr, ptr %foffsets, align 8, !tbaa !4
  call void @free(ptr noundef %631) #7
  %632 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  call void @free(ptr noundef %632) #7
  %call1117 = call ptr @PyErr_Occurred()
  %tobool1118 = icmp ne ptr %call1117, null
  %633 = zext i1 %tobool1118 to i64
  %cond1119 = select i1 %tobool1118, i32 0, i32 1
  store i32 %cond1119, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1120

cleanup1120:                                      ; preds = %if.end1116, %cleanup1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %spline_mode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %orank) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %irank) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %shift) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %matrix) #7
  call void @llvm.lifetime.end.p0(i64 1032, ptr %ic) #7
  call void @llvm.lifetime.end.p0(i64 1032, ptr %io) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %istrides) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %idimensions) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %icoor) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %splvals) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ll) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hh) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cstride) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %foffsets) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcoordinates) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %ftmp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %edge_grid_const) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %filter_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_offsets) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %edge_offsets) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %po) #7
  %634 = load i32, ptr %retval, align 4
  ret i32 %634

unreachable:                                      ; preds = %cleanup617
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @PyArray_DATA(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %data, align 8, !tbaa !32
  ret ptr %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @PyArray_STRIDE(ptr noundef %arr, i32 noundef %istride) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  %istride.addr = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  store i32 %istride, ptr %istride.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %strides = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %strides, align 8, !tbaa !33
  %2 = load i32, ptr %istride.addr, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8, !tbaa !11
  ret i64 %3
}

declare i32 @NI_InitPointIterator(ptr noundef, ptr noundef) #3

declare i32 @NI_LineIterator(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare ptr @PyErr_NoMemory() #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @PyArray_DIMS(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %dimensions = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %dimensions, align 8, !tbaa !23
  ret ptr %1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @PyArray_TYPE(ptr noundef %arr) #2 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arr.addr, align 8, !tbaa !4
  %descr = getelementptr inbounds %struct.tagPyArrayObject_fields, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %descr, align 8, !tbaa !34
  %type_num = getelementptr inbounds %struct._PyArray_Descr, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %type_num, align 4, !tbaa !35
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal double @map_coordinate(double noundef %in, i64 noundef %len, i32 noundef %mode) #0 {
entry:
  %in.addr = alloca double, align 8
  %len.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %sz2 = alloca i64, align 8
  %sz218 = alloca i64, align 8
  %sz = alloca i64, align 8
  %sz294 = alloca i64, align 8
  %sz2116 = alloca i64, align 8
  %sz138 = alloca i64, align 8
  store double %in, ptr %in.addr, align 8, !tbaa !24
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  %0 = load double, ptr %in.addr, align 8, !tbaa !24
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else83

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %mode.addr, align 4, !tbaa !8
  switch i32 %1, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb13
    i32 1, label %sw.bb52
    i32 5, label %sw.bb67
    i32 0, label %sw.bb81
    i32 4, label %sw.bb82
  ]

sw.bb:                                            ; preds = %if.then
  %2 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp1 = icmp sle i64 %2, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz2) #7
  %3 = load i64, ptr %len.addr, align 8, !tbaa !11
  %mul = mul nsw i64 2, %3
  %sub = sub nsw i64 %mul, 2
  store i64 %sub, ptr %sz2, align 8, !tbaa !11
  %4 = load i64, ptr %sz2, align 8, !tbaa !11
  %5 = load double, ptr %in.addr, align 8, !tbaa !24
  %fneg = fneg double %5
  %6 = load i64, ptr %sz2, align 8, !tbaa !11
  %conv = sitofp i64 %6 to double
  %div = fdiv double %fneg, %conv
  %conv3 = fptosi double %div to i64
  %mul4 = mul nsw i64 %4, %conv3
  %conv5 = sitofp i64 %mul4 to double
  %7 = load double, ptr %in.addr, align 8, !tbaa !24
  %add = fadd double %conv5, %7
  store double %add, ptr %in.addr, align 8, !tbaa !24
  %8 = load double, ptr %in.addr, align 8, !tbaa !24
  %9 = load i64, ptr %len.addr, align 8, !tbaa !11
  %sub6 = sub nsw i64 1, %9
  %conv7 = sitofp i64 %sub6 to double
  %cmp8 = fcmp ole double %8, %conv7
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load double, ptr %in.addr, align 8, !tbaa !24
  %11 = load i64, ptr %sz2, align 8, !tbaa !11
  %conv10 = sitofp i64 %11 to double
  %add11 = fadd double %10, %conv10
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %12 = load double, ptr %in.addr, align 8, !tbaa !24
  %fneg12 = fneg double %12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %add11, %cond.true ], [ %fneg12, %cond.false ]
  store double %cond, ptr %in.addr, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz2) #7
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then2
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  %13 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp14 = icmp sle i64 %13, 1
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %sw.bb13
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end51

if.else17:                                        ; preds = %sw.bb13
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz218) #7
  %14 = load i64, ptr %len.addr, align 8, !tbaa !11
  %mul19 = mul nsw i64 2, %14
  store i64 %mul19, ptr %sz218, align 8, !tbaa !11
  %15 = load double, ptr %in.addr, align 8, !tbaa !24
  %16 = load i64, ptr %sz218, align 8, !tbaa !11
  %sub20 = sub nsw i64 0, %16
  %conv21 = sitofp i64 %sub20 to double
  %cmp22 = fcmp olt double %15, %conv21
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.else17
  %17 = load i64, ptr %sz218, align 8, !tbaa !11
  %18 = load double, ptr %in.addr, align 8, !tbaa !24
  %fneg25 = fneg double %18
  %19 = load i64, ptr %sz218, align 8, !tbaa !11
  %conv26 = sitofp i64 %19 to double
  %div27 = fdiv double %fneg25, %conv26
  %conv28 = fptosi double %div27 to i64
  %mul29 = mul nsw i64 %17, %conv28
  %conv30 = sitofp i64 %mul29 to double
  %20 = load double, ptr %in.addr, align 8, !tbaa !24
  %add31 = fadd double %conv30, %20
  store double %add31, ptr %in.addr, align 8, !tbaa !24
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.else17
  %21 = load double, ptr %in.addr, align 8, !tbaa !24
  %22 = load i64, ptr %len.addr, align 8, !tbaa !11
  %sub33 = sub nsw i64 0, %22
  %conv34 = sitofp i64 %sub33 to double
  %cmp35 = fcmp olt double %21, %conv34
  br i1 %cmp35, label %cond.true37, label %cond.false40

cond.true37:                                      ; preds = %if.end32
  %23 = load double, ptr %in.addr, align 8, !tbaa !24
  %24 = load i64, ptr %sz218, align 8, !tbaa !11
  %conv38 = sitofp i64 %24 to double
  %add39 = fadd double %23, %conv38
  br label %cond.end49

cond.false40:                                     ; preds = %if.end32
  %25 = load double, ptr %in.addr, align 8, !tbaa !24
  %cmp41 = fcmp ogt double %25, -1.000000e-15
  br i1 %cmp41, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.false40
  br label %cond.end46

cond.false44:                                     ; preds = %cond.false40
  %26 = load double, ptr %in.addr, align 8, !tbaa !24
  %fneg45 = fneg double %26
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false44, %cond.true43
  %cond47 = phi double [ 1.000000e-15, %cond.true43 ], [ %fneg45, %cond.false44 ]
  %sub48 = fsub double %cond47, 1.000000e+00
  br label %cond.end49

cond.end49:                                       ; preds = %cond.end46, %cond.true37
  %cond50 = phi double [ %add39, %cond.true37 ], [ %sub48, %cond.end46 ]
  store double %cond50, ptr %in.addr, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz218) #7
  br label %if.end51

if.end51:                                         ; preds = %cond.end49, %if.then16
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.then
  %27 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp53 = icmp sle i64 %27, 1
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %sw.bb52
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end66

if.else56:                                        ; preds = %sw.bb52
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz) #7
  %28 = load i64, ptr %len.addr, align 8, !tbaa !11
  %sub57 = sub nsw i64 %28, 1
  store i64 %sub57, ptr %sz, align 8, !tbaa !11
  %29 = load i64, ptr %sz, align 8, !tbaa !11
  %30 = load double, ptr %in.addr, align 8, !tbaa !24
  %fneg58 = fneg double %30
  %31 = load i64, ptr %sz, align 8, !tbaa !11
  %conv59 = sitofp i64 %31 to double
  %div60 = fdiv double %fneg58, %conv59
  %conv61 = fptosi double %div60 to i64
  %add62 = add nsw i64 %conv61, 1
  %mul63 = mul nsw i64 %29, %add62
  %conv64 = sitofp i64 %mul63 to double
  %32 = load double, ptr %in.addr, align 8, !tbaa !24
  %add65 = fadd double %32, %conv64
  store double %add65, ptr %in.addr, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz) #7
  br label %if.end66

if.end66:                                         ; preds = %if.else56, %if.then55
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then
  %33 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp68 = icmp sle i64 %33, 1
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %sw.bb67
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end80

if.else71:                                        ; preds = %sw.bb67
  %34 = load i64, ptr %len.addr, align 8, !tbaa !11
  %35 = load double, ptr %in.addr, align 8, !tbaa !24
  %sub72 = fsub double -1.000000e+00, %35
  %36 = load i64, ptr %len.addr, align 8, !tbaa !11
  %conv73 = sitofp i64 %36 to double
  %div74 = fdiv double %sub72, %conv73
  %conv75 = fptosi double %div74 to i64
  %add76 = add nsw i64 %conv75, 1
  %mul77 = mul nsw i64 %34, %add76
  %conv78 = sitofp i64 %mul77 to double
  %37 = load double, ptr %in.addr, align 8, !tbaa !24
  %add79 = fadd double %37, %conv78
  store double %add79, ptr %in.addr, align 8, !tbaa !24
  br label %if.end80

if.end80:                                         ; preds = %if.else71, %if.then70
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.then
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.then
  store double -1.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb82, %sw.bb81, %if.end80, %if.end66, %if.end51, %if.end
  br label %if.end165

if.else83:                                        ; preds = %entry
  %38 = load double, ptr %in.addr, align 8, !tbaa !24
  %39 = load i64, ptr %len.addr, align 8, !tbaa !11
  %sub84 = sub nsw i64 %39, 1
  %conv85 = sitofp i64 %sub84 to double
  %cmp86 = fcmp ogt double %38, %conv85
  br i1 %cmp86, label %if.then88, label %if.end164

if.then88:                                        ; preds = %if.else83
  %40 = load i32, ptr %mode.addr, align 4, !tbaa !8
  switch i32 %40, label %sw.epilog163 [
    i32 3, label %sw.bb89
    i32 2, label %sw.bb111
    i32 1, label %sw.bb133
    i32 5, label %sw.bb147
    i32 0, label %sw.bb159
    i32 4, label %sw.bb162
  ]

sw.bb89:                                          ; preds = %if.then88
  %41 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp90 = icmp sle i64 %41, 1
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %sw.bb89
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end110

if.else93:                                        ; preds = %sw.bb89
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz294) #7
  %42 = load i64, ptr %len.addr, align 8, !tbaa !11
  %mul95 = mul nsw i64 2, %42
  %sub96 = sub nsw i64 %mul95, 2
  store i64 %sub96, ptr %sz294, align 8, !tbaa !11
  %43 = load i64, ptr %sz294, align 8, !tbaa !11
  %44 = load double, ptr %in.addr, align 8, !tbaa !24
  %45 = load i64, ptr %sz294, align 8, !tbaa !11
  %conv97 = sitofp i64 %45 to double
  %div98 = fdiv double %44, %conv97
  %conv99 = fptosi double %div98 to i64
  %mul100 = mul nsw i64 %43, %conv99
  %conv101 = sitofp i64 %mul100 to double
  %46 = load double, ptr %in.addr, align 8, !tbaa !24
  %sub102 = fsub double %46, %conv101
  store double %sub102, ptr %in.addr, align 8, !tbaa !24
  %47 = load double, ptr %in.addr, align 8, !tbaa !24
  %48 = load i64, ptr %len.addr, align 8, !tbaa !11
  %conv103 = sitofp i64 %48 to double
  %cmp104 = fcmp oge double %47, %conv103
  br i1 %cmp104, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.else93
  %49 = load i64, ptr %sz294, align 8, !tbaa !11
  %conv107 = sitofp i64 %49 to double
  %50 = load double, ptr %in.addr, align 8, !tbaa !24
  %sub108 = fsub double %conv107, %50
  store double %sub108, ptr %in.addr, align 8, !tbaa !24
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.else93
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz294) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then92
  br label %sw.epilog163

sw.bb111:                                         ; preds = %if.then88
  %51 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp112 = icmp sle i64 %51, 1
  br i1 %cmp112, label %if.then114, label %if.else115

if.then114:                                       ; preds = %sw.bb111
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end132

if.else115:                                       ; preds = %sw.bb111
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz2116) #7
  %52 = load i64, ptr %len.addr, align 8, !tbaa !11
  %mul117 = mul nsw i64 2, %52
  store i64 %mul117, ptr %sz2116, align 8, !tbaa !11
  %53 = load i64, ptr %sz2116, align 8, !tbaa !11
  %54 = load double, ptr %in.addr, align 8, !tbaa !24
  %55 = load i64, ptr %sz2116, align 8, !tbaa !11
  %conv118 = sitofp i64 %55 to double
  %div119 = fdiv double %54, %conv118
  %conv120 = fptosi double %div119 to i64
  %mul121 = mul nsw i64 %53, %conv120
  %conv122 = sitofp i64 %mul121 to double
  %56 = load double, ptr %in.addr, align 8, !tbaa !24
  %sub123 = fsub double %56, %conv122
  store double %sub123, ptr %in.addr, align 8, !tbaa !24
  %57 = load double, ptr %in.addr, align 8, !tbaa !24
  %58 = load i64, ptr %len.addr, align 8, !tbaa !11
  %conv124 = sitofp i64 %58 to double
  %cmp125 = fcmp oge double %57, %conv124
  br i1 %cmp125, label %if.then127, label %if.end131

if.then127:                                       ; preds = %if.else115
  %59 = load i64, ptr %sz2116, align 8, !tbaa !11
  %conv128 = sitofp i64 %59 to double
  %60 = load double, ptr %in.addr, align 8, !tbaa !24
  %sub129 = fsub double %conv128, %60
  %sub130 = fsub double %sub129, 1.000000e+00
  store double %sub130, ptr %in.addr, align 8, !tbaa !24
  br label %if.end131

if.end131:                                        ; preds = %if.then127, %if.else115
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz2116) #7
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then114
  br label %sw.epilog163

sw.bb133:                                         ; preds = %if.then88
  %61 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp134 = icmp sle i64 %61, 1
  br i1 %cmp134, label %if.then136, label %if.else137

if.then136:                                       ; preds = %sw.bb133
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end146

if.else137:                                       ; preds = %sw.bb133
  call void @llvm.lifetime.start.p0(i64 8, ptr %sz138) #7
  %62 = load i64, ptr %len.addr, align 8, !tbaa !11
  %sub139 = sub nsw i64 %62, 1
  store i64 %sub139, ptr %sz138, align 8, !tbaa !11
  %63 = load i64, ptr %sz138, align 8, !tbaa !11
  %64 = load double, ptr %in.addr, align 8, !tbaa !24
  %65 = load i64, ptr %sz138, align 8, !tbaa !11
  %conv140 = sitofp i64 %65 to double
  %div141 = fdiv double %64, %conv140
  %conv142 = fptosi double %div141 to i64
  %mul143 = mul nsw i64 %63, %conv142
  %conv144 = sitofp i64 %mul143 to double
  %66 = load double, ptr %in.addr, align 8, !tbaa !24
  %sub145 = fsub double %66, %conv144
  store double %sub145, ptr %in.addr, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr %sz138) #7
  br label %if.end146

if.end146:                                        ; preds = %if.else137, %if.then136
  br label %sw.epilog163

sw.bb147:                                         ; preds = %if.then88
  %67 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp148 = icmp sle i64 %67, 1
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %sw.bb147
  store double 0.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %if.end158

if.else151:                                       ; preds = %sw.bb147
  %68 = load i64, ptr %len.addr, align 8, !tbaa !11
  %69 = load double, ptr %in.addr, align 8, !tbaa !24
  %70 = load i64, ptr %len.addr, align 8, !tbaa !11
  %conv152 = sitofp i64 %70 to double
  %div153 = fdiv double %69, %conv152
  %conv154 = fptosi double %div153 to i64
  %mul155 = mul nsw i64 %68, %conv154
  %conv156 = sitofp i64 %mul155 to double
  %71 = load double, ptr %in.addr, align 8, !tbaa !24
  %sub157 = fsub double %71, %conv156
  store double %sub157, ptr %in.addr, align 8, !tbaa !24
  br label %if.end158

if.end158:                                        ; preds = %if.else151, %if.then150
  br label %sw.epilog163

sw.bb159:                                         ; preds = %if.then88
  %72 = load i64, ptr %len.addr, align 8, !tbaa !11
  %sub160 = sub nsw i64 %72, 1
  %conv161 = sitofp i64 %sub160 to double
  store double %conv161, ptr %in.addr, align 8, !tbaa !24
  br label %sw.epilog163

sw.bb162:                                         ; preds = %if.then88
  store double -1.000000e+00, ptr %in.addr, align 8, !tbaa !24
  br label %sw.epilog163

sw.epilog163:                                     ; preds = %if.then88, %sw.bb162, %sw.bb159, %if.end158, %if.end146, %if.end132, %if.end110
  br label %if.end164

if.end164:                                        ; preds = %sw.epilog163, %if.else83
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %sw.epilog
  %73 = load double, ptr %in.addr, align 8, !tbaa !24
  ret double %73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

declare i32 @get_spline_interpolation_weights(double noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden i32 @NI_ZoomShift(ptr noundef %input, ptr noundef %zoom_ar, ptr noundef %shift_ar, ptr noundef %output, i32 noundef %order, i32 noundef %mode, double noundef %cval, i32 noundef %nprepad, i32 noundef %grid_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca ptr, align 8
  %zoom_ar.addr = alloca ptr, align 8
  %shift_ar.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %order.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %cval.addr = alloca double, align 8
  %nprepad.addr = alloca i32, align 4
  %grid_mode.addr = alloca i32, align 4
  %po = alloca ptr, align 8
  %pi = alloca ptr, align 8
  %zeros = alloca ptr, align 8
  %offsets = alloca ptr, align 8
  %edge_offsets = alloca ptr, align 8
  %ftmp = alloca [32 x i64], align 16
  %fcoordinates = alloca ptr, align 8
  %foffsets = alloca ptr, align 8
  %jj = alloca i64, align 8
  %hh = alloca i64, align 8
  %kk = alloca i64, align 8
  %filter_size = alloca i64, align 8
  %odimensions = alloca [32 x i64], align 16
  %idimensions = alloca [32 x i64], align 16
  %istrides = alloca [32 x i64], align 16
  %size = alloca i64, align 8
  %edge_grid_const = alloca ptr, align 8
  %splvals = alloca ptr, align 8
  %io = alloca %struct.NI_Iterator, align 8
  %zooms = alloca ptr, align 8
  %shifts = alloca ptr, align 8
  %rank = alloca i32, align 4
  %_save = alloca ptr, align 8
  %spline_mode = alloca i32, align 4
  %shift = alloca double, align 8
  %zoom = alloca double, align 8
  %cc = alloca double, align 8
  %start = alloca i64, align 8
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca double, align 8
  %edge = alloca i64, align 8
  %oo = alloca i64, align 8
  %zero = alloca i64, align 8
  %ff = alloca ptr, align 8
  %type_num = alloca i32, align 4
  %idx595 = alloca i64, align 8
  %coeff = alloca double, align 8
  %is_cval = alloca i32, align 4
  %_ii = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store ptr %zoom_ar, ptr %zoom_ar.addr, align 8, !tbaa !4
  store ptr %shift_ar, ptr %shift_ar.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i32 %order, ptr %order.addr, align 4, !tbaa !8
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !8
  store double %cval, ptr %cval.addr, align 8, !tbaa !24
  store i32 %nprepad, ptr %nprepad.addr, align 4, !tbaa !8
  store i32 %grid_mode, ptr %grid_mode.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %po) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeros) #7
  store ptr null, ptr %zeros, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %offsets) #7
  store ptr null, ptr %offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %edge_offsets) #7
  store ptr null, ptr %edge_offsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 256, ptr %ftmp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fcoordinates) #7
  store ptr null, ptr %fcoordinates, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %foffsets) #7
  store ptr null, ptr %foffsets, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %jj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hh) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %filter_size) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %odimensions) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %idimensions) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %istrides) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %edge_grid_const) #7
  store ptr null, ptr %edge_grid_const, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %splvals) #7
  store ptr null, ptr %splvals, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1032, ptr %io) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %zooms) #7
  %0 = load ptr, ptr %zoom_ar.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %zoom_ar.addr, align 8, !tbaa !4
  %call = call ptr @PyArray_DATA(ptr noundef %1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %zooms, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %shifts) #7
  %2 = load ptr, ptr %shift_ar.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %cond.true2, label %cond.false4

cond.true2:                                       ; preds = %cond.end
  %3 = load ptr, ptr %shift_ar.addr, align 8, !tbaa !4
  %call3 = call ptr @PyArray_DATA(ptr noundef %3)
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi ptr [ %call3, %cond.true2 ], [ null, %cond.false4 ]
  store ptr %cond6, ptr %shifts, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #7
  store i32 0, ptr %rank, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_save) #7
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %cond.end5
  %call7 = call ptr @PyEval_SaveThread()
  store ptr %call7, ptr %_save, align 8, !tbaa !4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i64 0, ptr %kk, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i64, ptr %kk, align 8, !tbaa !11
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call8 = call i32 @PyArray_NDIM(ptr noundef %5)
  %conv = sext i32 %call8 to i64
  %cmp = icmp slt i64 %4, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %7 = load i64, ptr %kk, align 8, !tbaa !11
  %conv10 = trunc i64 %7 to i32
  %call11 = call i64 @PyArray_DIM(ptr noundef %6, i32 noundef %conv10)
  %8 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %8
  store i64 %call11, ptr %arrayidx, align 8, !tbaa !11
  %9 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %10 = load i64, ptr %kk, align 8, !tbaa !11
  %conv12 = trunc i64 %10 to i32
  %call13 = call i64 @PyArray_STRIDE(ptr noundef %9, i32 noundef %conv12)
  %11 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx14 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %11
  store i64 %call13, ptr %arrayidx14, align 8, !tbaa !11
  %12 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %13 = load i64, ptr %kk, align 8, !tbaa !11
  %conv15 = trunc i64 %13 to i32
  %call16 = call i64 @PyArray_DIM(ptr noundef %12, i32 noundef %conv15)
  %14 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx17 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %14
  store i64 %call16, ptr %arrayidx17, align 8, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, ptr %kk, align 8, !tbaa !11
  %inc = add nsw i64 %15, 1
  store i64 %inc, ptr %kk, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call18 = call i32 @PyArray_NDIM(ptr noundef %16)
  store i32 %call18, ptr %rank, align 4, !tbaa !8
  %17 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp19 = icmp eq i32 %17, 4
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %18 = load i32, ptr %rank, align 4, !tbaa !8
  %conv21 = sext i32 %18 to i64
  %mul = mul i64 %conv21, 8
  %call22 = call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call22, ptr %zeros, align 8, !tbaa !4
  %19 = load ptr, ptr %zeros, align 8, !tbaa !4
  %tobool23 = icmp ne ptr %19, null
  br i1 %tobool23, label %if.end31, label %if.then24

if.then24:                                        ; preds = %if.then
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %20 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool26 = icmp ne ptr %20, null
  br i1 %tobool26, label %if.then27, label %if.end

if.then27:                                        ; preds = %do.body25
  %21 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %21)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then27, %do.body25
  br label %do.cond28

do.cond28:                                        ; preds = %if.end
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  %call30 = call ptr @PyErr_NoMemory()
  br label %exit

if.end31:                                         ; preds = %if.then
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc38, %if.end31
  %22 = load i64, ptr %jj, align 8, !tbaa !11
  %23 = load i32, ptr %rank, align 4, !tbaa !8
  %conv33 = sext i32 %23 to i64
  %cmp34 = icmp slt i64 %22, %conv33
  br i1 %cmp34, label %for.body36, label %for.end40

for.body36:                                       ; preds = %for.cond32
  %24 = load ptr, ptr %zeros, align 8, !tbaa !4
  %25 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx37 = getelementptr inbounds ptr, ptr %24, i64 %25
  store ptr null, ptr %arrayidx37, align 8, !tbaa !4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body36
  %26 = load i64, ptr %jj, align 8, !tbaa !11
  %inc39 = add nsw i64 %26, 1
  store i64 %inc39, ptr %jj, align 8, !tbaa !11
  br label %for.cond32

for.end40:                                        ; preds = %for.cond32
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc61, %for.end40
  %27 = load i64, ptr %jj, align 8, !tbaa !11
  %28 = load i32, ptr %rank, align 4, !tbaa !8
  %conv42 = sext i32 %28 to i64
  %cmp43 = icmp slt i64 %27, %conv42
  br i1 %cmp43, label %for.body45, label %for.end63

for.body45:                                       ; preds = %for.cond41
  %29 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx46 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %29
  %30 = load i64, ptr %arrayidx46, align 8, !tbaa !11
  %mul47 = mul i64 %30, 8
  %call48 = call noalias ptr @malloc(i64 noundef %mul47) #8
  %31 = load ptr, ptr %zeros, align 8, !tbaa !4
  %32 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx49 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %call48, ptr %arrayidx49, align 8, !tbaa !4
  %33 = load ptr, ptr %zeros, align 8, !tbaa !4
  %34 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx50 = getelementptr inbounds ptr, ptr %33, i64 %34
  %35 = load ptr, ptr %arrayidx50, align 8, !tbaa !4
  %tobool51 = icmp ne ptr %35, null
  br i1 %tobool51, label %if.end60, label %if.then52

if.then52:                                        ; preds = %for.body45
  br label %do.body53

do.body53:                                        ; preds = %if.then52
  %36 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool54 = icmp ne ptr %36, null
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body53
  %37 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %37)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %do.body53
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %call59 = call ptr @PyErr_NoMemory()
  br label %exit

if.end60:                                         ; preds = %for.body45
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %38 = load i64, ptr %jj, align 8, !tbaa !11
  %inc62 = add nsw i64 %38, 1
  store i64 %inc62, ptr %jj, align 8, !tbaa !11
  br label %for.cond41

for.end63:                                        ; preds = %for.cond41
  br label %if.end123

if.else:                                          ; preds = %for.end
  %39 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp64 = icmp eq i32 %39, 6
  br i1 %cmp64, label %if.then66, label %if.end122

if.then66:                                        ; preds = %if.else
  %40 = load i32, ptr %rank, align 4, !tbaa !8
  %conv67 = sext i32 %40 to i64
  %mul68 = mul i64 %conv67, 8
  %call69 = call noalias ptr @malloc(i64 noundef %mul68) #8
  store ptr %call69, ptr %edge_grid_const, align 8, !tbaa !4
  %41 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %tobool70 = icmp ne ptr %41, null
  br i1 %tobool70, label %if.end79, label %if.then71

if.then71:                                        ; preds = %if.then66
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  %42 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool73 = icmp ne ptr %42, null
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body72
  %43 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %43)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %do.body72
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call ptr @PyErr_NoMemory()
  br label %exit

if.end79:                                         ; preds = %if.then66
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc86, %if.end79
  %44 = load i64, ptr %jj, align 8, !tbaa !11
  %45 = load i32, ptr %rank, align 4, !tbaa !8
  %conv81 = sext i32 %45 to i64
  %cmp82 = icmp slt i64 %44, %conv81
  br i1 %cmp82, label %for.body84, label %for.end88

for.body84:                                       ; preds = %for.cond80
  %46 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %47 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx85 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %arrayidx85, align 8, !tbaa !4
  br label %for.inc86

for.inc86:                                        ; preds = %for.body84
  %48 = load i64, ptr %jj, align 8, !tbaa !11
  %inc87 = add nsw i64 %48, 1
  store i64 %inc87, ptr %jj, align 8, !tbaa !11
  br label %for.cond80

for.end88:                                        ; preds = %for.cond80
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc119, %for.end88
  %49 = load i64, ptr %jj, align 8, !tbaa !11
  %50 = load i32, ptr %rank, align 4, !tbaa !8
  %conv90 = sext i32 %50 to i64
  %cmp91 = icmp slt i64 %49, %conv90
  br i1 %cmp91, label %for.body93, label %for.end121

for.body93:                                       ; preds = %for.cond89
  %51 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx94 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %51
  %52 = load i64, ptr %arrayidx94, align 8, !tbaa !11
  %mul95 = mul i64 %52, 8
  %call96 = call noalias ptr @malloc(i64 noundef %mul95) #8
  %53 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %54 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx97 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %call96, ptr %arrayidx97, align 8, !tbaa !4
  %55 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %56 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx98 = getelementptr inbounds ptr, ptr %55, i64 %56
  %57 = load ptr, ptr %arrayidx98, align 8, !tbaa !4
  %tobool99 = icmp ne ptr %57, null
  br i1 %tobool99, label %if.end108, label %if.then100

if.then100:                                       ; preds = %for.body93
  br label %do.body101

do.body101:                                       ; preds = %if.then100
  %58 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool102 = icmp ne ptr %58, null
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %do.body101
  %59 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %59)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %do.body101
  br label %do.cond105

do.cond105:                                       ; preds = %if.end104
  br label %do.end106

do.end106:                                        ; preds = %do.cond105
  %call107 = call ptr @PyErr_NoMemory()
  br label %exit

if.end108:                                        ; preds = %for.body93
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc116, %if.end108
  %60 = load i64, ptr %hh, align 8, !tbaa !11
  %61 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx110 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %61
  %62 = load i64, ptr %arrayidx110, align 8, !tbaa !11
  %cmp111 = icmp slt i64 %60, %62
  br i1 %cmp111, label %for.body113, label %for.end118

for.body113:                                      ; preds = %for.cond109
  %63 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %64 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx114 = getelementptr inbounds ptr, ptr %63, i64 %64
  %65 = load ptr, ptr %arrayidx114, align 8, !tbaa !4
  %66 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx115 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr null, ptr %arrayidx115, align 8, !tbaa !4
  br label %for.inc116

for.inc116:                                       ; preds = %for.body113
  %67 = load i64, ptr %hh, align 8, !tbaa !11
  %inc117 = add nsw i64 %67, 1
  store i64 %inc117, ptr %hh, align 8, !tbaa !11
  br label %for.cond109

for.end118:                                       ; preds = %for.cond109
  br label %for.inc119

for.inc119:                                       ; preds = %for.end118
  %68 = load i64, ptr %jj, align 8, !tbaa !11
  %inc120 = add nsw i64 %68, 1
  store i64 %inc120, ptr %jj, align 8, !tbaa !11
  br label %for.cond89

for.end121:                                       ; preds = %for.cond89
  br label %if.end122

if.end122:                                        ; preds = %for.end121, %if.else
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %for.end63
  %69 = load i32, ptr %rank, align 4, !tbaa !8
  %conv124 = sext i32 %69 to i64
  %mul125 = mul i64 %conv124, 8
  %call126 = call noalias ptr @malloc(i64 noundef %mul125) #8
  store ptr %call126, ptr %offsets, align 8, !tbaa !4
  %70 = load i32, ptr %rank, align 4, !tbaa !8
  %conv127 = sext i32 %70 to i64
  %mul128 = mul i64 %conv127, 8
  %call129 = call noalias ptr @malloc(i64 noundef %mul128) #8
  store ptr %call129, ptr %splvals, align 8, !tbaa !4
  %71 = load ptr, ptr %offsets, align 8, !tbaa !4
  %tobool130 = icmp ne ptr %71, null
  br i1 %tobool130, label %lor.lhs.false, label %if.then132

lor.lhs.false:                                    ; preds = %if.end123
  %72 = load ptr, ptr %splvals, align 8, !tbaa !4
  %tobool131 = icmp ne ptr %72, null
  br i1 %tobool131, label %if.end140, label %if.then132

if.then132:                                       ; preds = %lor.lhs.false, %if.end123
  br label %do.body133

do.body133:                                       ; preds = %if.then132
  %73 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool134 = icmp ne ptr %73, null
  br i1 %tobool134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %do.body133
  %74 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %74)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %do.body133
  br label %do.cond137

do.cond137:                                       ; preds = %if.end136
  br label %do.end138

do.end138:                                        ; preds = %do.cond137
  %call139 = call ptr @PyErr_NoMemory()
  br label %exit

if.end140:                                        ; preds = %lor.lhs.false
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc148, %if.end140
  %75 = load i64, ptr %jj, align 8, !tbaa !11
  %76 = load i32, ptr %rank, align 4, !tbaa !8
  %conv142 = sext i32 %76 to i64
  %cmp143 = icmp slt i64 %75, %conv142
  br i1 %cmp143, label %for.body145, label %for.end150

for.body145:                                      ; preds = %for.cond141
  %77 = load ptr, ptr %offsets, align 8, !tbaa !4
  %78 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx146 = getelementptr inbounds ptr, ptr %77, i64 %78
  store ptr null, ptr %arrayidx146, align 8, !tbaa !4
  %79 = load ptr, ptr %splvals, align 8, !tbaa !4
  %80 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx147 = getelementptr inbounds ptr, ptr %79, i64 %80
  store ptr null, ptr %arrayidx147, align 8, !tbaa !4
  br label %for.inc148

for.inc148:                                       ; preds = %for.body145
  %81 = load i64, ptr %jj, align 8, !tbaa !11
  %inc149 = add nsw i64 %81, 1
  store i64 %inc149, ptr %jj, align 8, !tbaa !11
  br label %for.cond141

for.end150:                                       ; preds = %for.cond141
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc188, %for.end150
  %82 = load i64, ptr %jj, align 8, !tbaa !11
  %83 = load i32, ptr %rank, align 4, !tbaa !8
  %conv152 = sext i32 %83 to i64
  %cmp153 = icmp slt i64 %82, %conv152
  br i1 %cmp153, label %for.body155, label %for.end190

for.body155:                                      ; preds = %for.cond151
  %84 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx156 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %84
  %85 = load i64, ptr %arrayidx156, align 8, !tbaa !11
  %mul157 = mul i64 %85, 8
  %call158 = call noalias ptr @malloc(i64 noundef %mul157) #8
  %86 = load ptr, ptr %offsets, align 8, !tbaa !4
  %87 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx159 = getelementptr inbounds ptr, ptr %86, i64 %87
  store ptr %call158, ptr %arrayidx159, align 8, !tbaa !4
  %88 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx160 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %88
  %89 = load i64, ptr %arrayidx160, align 8, !tbaa !11
  %mul161 = mul i64 %89, 8
  %call162 = call noalias ptr @malloc(i64 noundef %mul161) #8
  %90 = load ptr, ptr %splvals, align 8, !tbaa !4
  %91 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx163 = getelementptr inbounds ptr, ptr %90, i64 %91
  store ptr %call162, ptr %arrayidx163, align 8, !tbaa !4
  %92 = load ptr, ptr %offsets, align 8, !tbaa !4
  %93 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx164 = getelementptr inbounds ptr, ptr %92, i64 %93
  %94 = load ptr, ptr %arrayidx164, align 8, !tbaa !4
  %tobool165 = icmp ne ptr %94, null
  br i1 %tobool165, label %lor.lhs.false166, label %if.then169

lor.lhs.false166:                                 ; preds = %for.body155
  %95 = load ptr, ptr %splvals, align 8, !tbaa !4
  %96 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx167 = getelementptr inbounds ptr, ptr %95, i64 %96
  %97 = load ptr, ptr %arrayidx167, align 8, !tbaa !4
  %tobool168 = icmp ne ptr %97, null
  br i1 %tobool168, label %if.end177, label %if.then169

if.then169:                                       ; preds = %lor.lhs.false166, %for.body155
  br label %do.body170

do.body170:                                       ; preds = %if.then169
  %98 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool171 = icmp ne ptr %98, null
  br i1 %tobool171, label %if.then172, label %if.end173

if.then172:                                       ; preds = %do.body170
  %99 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %99)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end173

if.end173:                                        ; preds = %if.then172, %do.body170
  br label %do.cond174

do.cond174:                                       ; preds = %if.end173
  br label %do.end175

do.end175:                                        ; preds = %do.cond174
  %call176 = call ptr @PyErr_NoMemory()
  br label %exit

if.end177:                                        ; preds = %lor.lhs.false166
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc185, %if.end177
  %100 = load i64, ptr %hh, align 8, !tbaa !11
  %101 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx179 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %101
  %102 = load i64, ptr %arrayidx179, align 8, !tbaa !11
  %cmp180 = icmp slt i64 %100, %102
  br i1 %cmp180, label %for.body182, label %for.end187

for.body182:                                      ; preds = %for.cond178
  %103 = load ptr, ptr %splvals, align 8, !tbaa !4
  %104 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx183 = getelementptr inbounds ptr, ptr %103, i64 %104
  %105 = load ptr, ptr %arrayidx183, align 8, !tbaa !4
  %106 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx184 = getelementptr inbounds ptr, ptr %105, i64 %106
  store ptr null, ptr %arrayidx184, align 8, !tbaa !4
  br label %for.inc185

for.inc185:                                       ; preds = %for.body182
  %107 = load i64, ptr %hh, align 8, !tbaa !11
  %inc186 = add nsw i64 %107, 1
  store i64 %inc186, ptr %hh, align 8, !tbaa !11
  br label %for.cond178

for.end187:                                       ; preds = %for.cond178
  br label %for.inc188

for.inc188:                                       ; preds = %for.end187
  %108 = load i64, ptr %jj, align 8, !tbaa !11
  %inc189 = add nsw i64 %108, 1
  store i64 %inc189, ptr %jj, align 8, !tbaa !11
  br label %for.cond151

for.end190:                                       ; preds = %for.cond151
  %109 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp191 = icmp ne i32 %109, 6
  br i1 %cmp191, label %if.then193, label %if.end249

if.then193:                                       ; preds = %for.end190
  %110 = load i32, ptr %rank, align 4, !tbaa !8
  %conv194 = sext i32 %110 to i64
  %mul195 = mul i64 %conv194, 8
  %call196 = call noalias ptr @malloc(i64 noundef %mul195) #8
  store ptr %call196, ptr %edge_offsets, align 8, !tbaa !4
  %111 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %tobool197 = icmp ne ptr %111, null
  br i1 %tobool197, label %if.end206, label %if.then198

if.then198:                                       ; preds = %if.then193
  br label %do.body199

do.body199:                                       ; preds = %if.then198
  %112 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool200 = icmp ne ptr %112, null
  br i1 %tobool200, label %if.then201, label %if.end202

if.then201:                                       ; preds = %do.body199
  %113 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %113)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %do.body199
  br label %do.cond203

do.cond203:                                       ; preds = %if.end202
  br label %do.end204

do.end204:                                        ; preds = %do.cond203
  %call205 = call ptr @PyErr_NoMemory()
  br label %exit

if.end206:                                        ; preds = %if.then193
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc213, %if.end206
  %114 = load i64, ptr %jj, align 8, !tbaa !11
  %115 = load i32, ptr %rank, align 4, !tbaa !8
  %conv208 = sext i32 %115 to i64
  %cmp209 = icmp slt i64 %114, %conv208
  br i1 %cmp209, label %for.body211, label %for.end215

for.body211:                                      ; preds = %for.cond207
  %116 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %117 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx212 = getelementptr inbounds ptr, ptr %116, i64 %117
  store ptr null, ptr %arrayidx212, align 8, !tbaa !4
  br label %for.inc213

for.inc213:                                       ; preds = %for.body211
  %118 = load i64, ptr %jj, align 8, !tbaa !11
  %inc214 = add nsw i64 %118, 1
  store i64 %inc214, ptr %jj, align 8, !tbaa !11
  br label %for.cond207

for.end215:                                       ; preds = %for.cond207
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc246, %for.end215
  %119 = load i64, ptr %jj, align 8, !tbaa !11
  %120 = load i32, ptr %rank, align 4, !tbaa !8
  %conv217 = sext i32 %120 to i64
  %cmp218 = icmp slt i64 %119, %conv217
  br i1 %cmp218, label %for.body220, label %for.end248

for.body220:                                      ; preds = %for.cond216
  %121 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx221 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %121
  %122 = load i64, ptr %arrayidx221, align 8, !tbaa !11
  %mul222 = mul i64 %122, 8
  %call223 = call noalias ptr @malloc(i64 noundef %mul222) #8
  %123 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %124 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx224 = getelementptr inbounds ptr, ptr %123, i64 %124
  store ptr %call223, ptr %arrayidx224, align 8, !tbaa !4
  %125 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %126 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx225 = getelementptr inbounds ptr, ptr %125, i64 %126
  %127 = load ptr, ptr %arrayidx225, align 8, !tbaa !4
  %tobool226 = icmp ne ptr %127, null
  br i1 %tobool226, label %if.end235, label %if.then227

if.then227:                                       ; preds = %for.body220
  br label %do.body228

do.body228:                                       ; preds = %if.then227
  %128 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool229 = icmp ne ptr %128, null
  br i1 %tobool229, label %if.then230, label %if.end231

if.then230:                                       ; preds = %do.body228
  %129 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %129)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end231

if.end231:                                        ; preds = %if.then230, %do.body228
  br label %do.cond232

do.cond232:                                       ; preds = %if.end231
  br label %do.end233

do.end233:                                        ; preds = %do.cond232
  %call234 = call ptr @PyErr_NoMemory()
  br label %exit

if.end235:                                        ; preds = %for.body220
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc243, %if.end235
  %130 = load i64, ptr %hh, align 8, !tbaa !11
  %131 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx237 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %131
  %132 = load i64, ptr %arrayidx237, align 8, !tbaa !11
  %cmp238 = icmp slt i64 %130, %132
  br i1 %cmp238, label %for.body240, label %for.end245

for.body240:                                      ; preds = %for.cond236
  %133 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %134 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx241 = getelementptr inbounds ptr, ptr %133, i64 %134
  %135 = load ptr, ptr %arrayidx241, align 8, !tbaa !4
  %136 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx242 = getelementptr inbounds ptr, ptr %135, i64 %136
  store ptr null, ptr %arrayidx242, align 8, !tbaa !4
  br label %for.inc243

for.inc243:                                       ; preds = %for.body240
  %137 = load i64, ptr %hh, align 8, !tbaa !11
  %inc244 = add nsw i64 %137, 1
  store i64 %inc244, ptr %hh, align 8, !tbaa !11
  br label %for.cond236

for.end245:                                       ; preds = %for.cond236
  br label %for.inc246

for.inc246:                                       ; preds = %for.end245
  %138 = load i64, ptr %jj, align 8, !tbaa !11
  %inc247 = add nsw i64 %138, 1
  store i64 %inc247, ptr %jj, align 8, !tbaa !11
  br label %for.cond216

for.end248:                                       ; preds = %for.cond216
  br label %if.end249

if.end249:                                        ; preds = %for.end248, %for.end190
  %139 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %call250 = call i32 @_get_spline_boundary_mode(i32 noundef %139)
  store i32 %call250, ptr %spline_mode, align 4, !tbaa !8
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond251

for.cond251:                                      ; preds = %for.inc456, %if.end249
  %140 = load i64, ptr %jj, align 8, !tbaa !11
  %141 = load i32, ptr %rank, align 4, !tbaa !8
  %conv252 = sext i32 %141 to i64
  %cmp253 = icmp slt i64 %140, %conv252
  br i1 %cmp253, label %for.body255, label %for.end458

for.body255:                                      ; preds = %for.cond251
  call void @llvm.lifetime.start.p0(i64 8, ptr %shift) #7
  store double 0.000000e+00, ptr %shift, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %zoom) #7
  store double 0.000000e+00, ptr %zoom, align 8, !tbaa !24
  %142 = load ptr, ptr %shifts, align 8, !tbaa !4
  %tobool256 = icmp ne ptr %142, null
  br i1 %tobool256, label %if.then257, label %if.end259

if.then257:                                       ; preds = %for.body255
  %143 = load ptr, ptr %shifts, align 8, !tbaa !4
  %144 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx258 = getelementptr inbounds double, ptr %143, i64 %144
  %145 = load double, ptr %arrayidx258, align 8, !tbaa !24
  store double %145, ptr %shift, align 8, !tbaa !24
  br label %if.end259

if.end259:                                        ; preds = %if.then257, %for.body255
  %146 = load ptr, ptr %zooms, align 8, !tbaa !4
  %tobool260 = icmp ne ptr %146, null
  br i1 %tobool260, label %if.then261, label %if.end263

if.then261:                                       ; preds = %if.end259
  %147 = load ptr, ptr %zooms, align 8, !tbaa !4
  %148 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx262 = getelementptr inbounds double, ptr %147, i64 %148
  %149 = load double, ptr %arrayidx262, align 8, !tbaa !24
  store double %149, ptr %zoom, align 8, !tbaa !24
  br label %if.end263

if.end263:                                        ; preds = %if.then261, %if.end259
  store i64 0, ptr %kk, align 8, !tbaa !11
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc449, %if.end263
  %150 = load i64, ptr %kk, align 8, !tbaa !11
  %151 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx265 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %151
  %152 = load i64, ptr %arrayidx265, align 8, !tbaa !11
  %cmp266 = icmp slt i64 %150, %152
  br i1 %cmp266, label %for.body268, label %for.end451

for.body268:                                      ; preds = %for.cond264
  call void @llvm.lifetime.start.p0(i64 8, ptr %cc) #7
  %153 = load i64, ptr %kk, align 8, !tbaa !11
  %conv269 = sitofp i64 %153 to double
  store double %conv269, ptr %cc, align 8, !tbaa !24
  %154 = load ptr, ptr %shifts, align 8, !tbaa !4
  %tobool270 = icmp ne ptr %154, null
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %for.body268
  %155 = load double, ptr %shift, align 8, !tbaa !24
  %156 = load double, ptr %cc, align 8, !tbaa !24
  %add = fadd double %156, %155
  store double %add, ptr %cc, align 8, !tbaa !24
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %for.body268
  %157 = load ptr, ptr %zooms, align 8, !tbaa !4
  %tobool273 = icmp ne ptr %157, null
  br i1 %tobool273, label %if.then274, label %if.end282

if.then274:                                       ; preds = %if.end272
  %158 = load i32, ptr %grid_mode.addr, align 4, !tbaa !8
  %tobool275 = icmp ne i32 %158, 0
  br i1 %tobool275, label %if.then276, label %if.else279

if.then276:                                       ; preds = %if.then274
  %159 = load double, ptr %cc, align 8, !tbaa !24
  %add277 = fadd double %159, 5.000000e-01
  store double %add277, ptr %cc, align 8, !tbaa !24
  %160 = load double, ptr %zoom, align 8, !tbaa !24
  %161 = load double, ptr %cc, align 8, !tbaa !24
  %mul278 = fmul double %161, %160
  store double %mul278, ptr %cc, align 8, !tbaa !24
  %162 = load double, ptr %cc, align 8, !tbaa !24
  %sub = fsub double %162, 5.000000e-01
  store double %sub, ptr %cc, align 8, !tbaa !24
  br label %if.end281

if.else279:                                       ; preds = %if.then274
  %163 = load double, ptr %zoom, align 8, !tbaa !24
  %164 = load double, ptr %cc, align 8, !tbaa !24
  %mul280 = fmul double %164, %163
  store double %mul280, ptr %cc, align 8, !tbaa !24
  br label %if.end281

if.end281:                                        ; preds = %if.else279, %if.then276
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.end272
  %165 = load i32, ptr %nprepad.addr, align 4, !tbaa !8
  %conv283 = sitofp i32 %165 to double
  %166 = load double, ptr %cc, align 8, !tbaa !24
  %add284 = fadd double %166, %conv283
  store double %add284, ptr %cc, align 8, !tbaa !24
  %167 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp285 = icmp ne i32 %167, 6
  br i1 %cmp285, label %land.lhs.true, label %if.end292

land.lhs.true:                                    ; preds = %if.end282
  %168 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp287 = icmp ne i32 %168, 0
  br i1 %cmp287, label %if.then289, label %if.end292

if.then289:                                       ; preds = %land.lhs.true
  %169 = load double, ptr %cc, align 8, !tbaa !24
  %170 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx290 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %170
  %171 = load i64, ptr %arrayidx290, align 8, !tbaa !11
  %172 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %call291 = call double @map_coordinate(double noundef %169, i64 noundef %171, i32 noundef %172)
  store double %call291, ptr %cc, align 8, !tbaa !24
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %land.lhs.true, %if.end282
  %173 = load double, ptr %cc, align 8, !tbaa !24
  %cmp293 = fcmp ogt double %173, -1.000000e+00
  br i1 %cmp293, label %if.then301, label %lor.lhs.false295

lor.lhs.false295:                                 ; preds = %if.end292
  %174 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp296 = icmp eq i32 %174, 6
  br i1 %cmp296, label %if.then301, label %lor.lhs.false298

lor.lhs.false298:                                 ; preds = %lor.lhs.false295
  %175 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp299 = icmp eq i32 %175, 0
  br i1 %cmp299, label %if.then301, label %if.else442

if.then301:                                       ; preds = %lor.lhs.false298, %lor.lhs.false295, %if.end292
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7
  %176 = load ptr, ptr %zeros, align 8, !tbaa !4
  %tobool302 = icmp ne ptr %176, null
  br i1 %tobool302, label %land.lhs.true303, label %if.end309

land.lhs.true303:                                 ; preds = %if.then301
  %177 = load ptr, ptr %zeros, align 8, !tbaa !4
  %178 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx304 = getelementptr inbounds ptr, ptr %177, i64 %178
  %179 = load ptr, ptr %arrayidx304, align 8, !tbaa !4
  %tobool305 = icmp ne ptr %179, null
  br i1 %tobool305, label %if.then306, label %if.end309

if.then306:                                       ; preds = %land.lhs.true303
  %180 = load ptr, ptr %zeros, align 8, !tbaa !4
  %181 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx307 = getelementptr inbounds ptr, ptr %180, i64 %181
  %182 = load ptr, ptr %arrayidx307, align 8, !tbaa !4
  %183 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx308 = getelementptr inbounds i64, ptr %182, i64 %183
  store i64 0, ptr %arrayidx308, align 8, !tbaa !11
  br label %if.end309

if.end309:                                        ; preds = %if.then306, %land.lhs.true303, %if.then301
  %184 = load i32, ptr %order.addr, align 4, !tbaa !8
  %and = and i32 %184, 1
  %tobool310 = icmp ne i32 %and, 0
  br i1 %tobool310, label %if.then311, label %if.else315

if.then311:                                       ; preds = %if.end309
  %185 = load double, ptr %cc, align 8, !tbaa !24
  %186 = call double @llvm.floor.f64(double %185)
  %conv312 = fptosi double %186 to i64
  %187 = load i32, ptr %order.addr, align 4, !tbaa !8
  %div = sdiv i32 %187, 2
  %conv313 = sext i32 %div to i64
  %sub314 = sub nsw i64 %conv312, %conv313
  store i64 %sub314, ptr %start, align 8, !tbaa !11
  br label %if.end321

if.else315:                                       ; preds = %if.end309
  %188 = load double, ptr %cc, align 8, !tbaa !24
  %add316 = fadd double %188, 5.000000e-01
  %189 = call double @llvm.floor.f64(double %add316)
  %conv317 = fptosi double %189 to i64
  %190 = load i32, ptr %order.addr, align 4, !tbaa !8
  %div318 = sdiv i32 %190, 2
  %conv319 = sext i32 %div318 to i64
  %sub320 = sub nsw i64 %conv317, %conv319
  store i64 %sub320, ptr %start, align 8, !tbaa !11
  br label %if.end321

if.end321:                                        ; preds = %if.else315, %if.then311
  %191 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx322 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %191
  %192 = load i64, ptr %arrayidx322, align 8, !tbaa !11
  %193 = load i64, ptr %start, align 8, !tbaa !11
  %mul323 = mul nsw i64 %192, %193
  %194 = load ptr, ptr %offsets, align 8, !tbaa !4
  %195 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx324 = getelementptr inbounds ptr, ptr %194, i64 %195
  %196 = load ptr, ptr %arrayidx324, align 8, !tbaa !4
  %197 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx325 = getelementptr inbounds i64, ptr %196, i64 %197
  store i64 %mul323, ptr %arrayidx325, align 8, !tbaa !11
  %198 = load i64, ptr %start, align 8, !tbaa !11
  %cmp326 = icmp slt i64 %198, 0
  br i1 %cmp326, label %if.then334, label %lor.lhs.false328

lor.lhs.false328:                                 ; preds = %if.end321
  %199 = load i64, ptr %start, align 8, !tbaa !11
  %200 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv329 = sext i32 %200 to i64
  %add330 = add nsw i64 %199, %conv329
  %201 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx331 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %201
  %202 = load i64, ptr %arrayidx331, align 8, !tbaa !11
  %cmp332 = icmp sge i64 %add330, %202
  br i1 %cmp332, label %if.then334, label %if.end413

if.then334:                                       ; preds = %lor.lhs.false328, %if.end321
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #7
  store i64 0, ptr %idx, align 8, !tbaa !11
  %203 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp335 = icmp eq i32 %203, 6
  br i1 %cmp335, label %if.then337, label %if.else374

if.then337:                                       ; preds = %if.then334
  %204 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add338 = add nsw i32 %204, 1
  %conv339 = sext i32 %add338 to i64
  %mul340 = mul i64 %conv339, 1
  %call341 = call noalias ptr @malloc(i64 noundef %mul340) #8
  %205 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %206 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx342 = getelementptr inbounds ptr, ptr %205, i64 %206
  %207 = load ptr, ptr %arrayidx342, align 8, !tbaa !4
  %208 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx343 = getelementptr inbounds ptr, ptr %207, i64 %208
  store ptr %call341, ptr %arrayidx343, align 8, !tbaa !4
  %209 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %210 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx344 = getelementptr inbounds ptr, ptr %209, i64 %210
  %211 = load ptr, ptr %arrayidx344, align 8, !tbaa !4
  %212 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx345 = getelementptr inbounds ptr, ptr %211, i64 %212
  %213 = load ptr, ptr %arrayidx345, align 8, !tbaa !4
  %tobool346 = icmp ne ptr %213, null
  br i1 %tobool346, label %if.end355, label %if.then347

if.then347:                                       ; preds = %if.then337
  br label %do.body348

do.body348:                                       ; preds = %if.then347
  %214 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool349 = icmp ne ptr %214, null
  br i1 %tobool349, label %if.then350, label %if.end351

if.then350:                                       ; preds = %do.body348
  %215 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %215)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end351

if.end351:                                        ; preds = %if.then350, %do.body348
  br label %do.cond352

do.cond352:                                       ; preds = %if.end351
  br label %do.end353

do.end353:                                        ; preds = %do.cond352
  %call354 = call ptr @PyErr_NoMemory()
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end355:                                        ; preds = %if.then337
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond356

for.cond356:                                      ; preds = %for.inc371, %if.end355
  %216 = load i64, ptr %hh, align 8, !tbaa !11
  %217 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv357 = sext i32 %217 to i64
  %cmp358 = icmp sle i64 %216, %conv357
  br i1 %cmp358, label %for.body360, label %for.end373

for.body360:                                      ; preds = %for.cond356
  %218 = load i64, ptr %start, align 8, !tbaa !11
  %219 = load i64, ptr %hh, align 8, !tbaa !11
  %add361 = add nsw i64 %218, %219
  store i64 %add361, ptr %idx, align 8, !tbaa !11
  %220 = load i64, ptr %idx, align 8, !tbaa !11
  %cmp362 = icmp slt i64 %220, 0
  br i1 %cmp362, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body360
  %221 = load i64, ptr %idx, align 8, !tbaa !11
  %222 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx364 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %222
  %223 = load i64, ptr %arrayidx364, align 8, !tbaa !11
  %cmp365 = icmp sge i64 %221, %223
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body360
  %224 = phi i1 [ true, %for.body360 ], [ %cmp365, %lor.rhs ]
  %lor.ext = zext i1 %224 to i32
  %conv367 = trunc i32 %lor.ext to i8
  %225 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %226 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx368 = getelementptr inbounds ptr, ptr %225, i64 %226
  %227 = load ptr, ptr %arrayidx368, align 8, !tbaa !4
  %228 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx369 = getelementptr inbounds ptr, ptr %227, i64 %228
  %229 = load ptr, ptr %arrayidx369, align 8, !tbaa !4
  %230 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx370 = getelementptr inbounds i8, ptr %229, i64 %230
  store i8 %conv367, ptr %arrayidx370, align 1, !tbaa !10
  br label %for.inc371

for.inc371:                                       ; preds = %lor.end
  %231 = load i64, ptr %hh, align 8, !tbaa !11
  %inc372 = add nsw i64 %231, 1
  store i64 %inc372, ptr %hh, align 8, !tbaa !11
  br label %for.cond356

for.end373:                                       ; preds = %for.cond356
  br label %if.end412

if.else374:                                       ; preds = %if.then334
  %232 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add375 = add nsw i32 %232, 1
  %conv376 = sext i32 %add375 to i64
  %mul377 = mul i64 %conv376, 8
  %call378 = call noalias ptr @malloc(i64 noundef %mul377) #8
  %233 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %234 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx379 = getelementptr inbounds ptr, ptr %233, i64 %234
  %235 = load ptr, ptr %arrayidx379, align 8, !tbaa !4
  %236 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx380 = getelementptr inbounds ptr, ptr %235, i64 %236
  store ptr %call378, ptr %arrayidx380, align 8, !tbaa !4
  %237 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %238 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx381 = getelementptr inbounds ptr, ptr %237, i64 %238
  %239 = load ptr, ptr %arrayidx381, align 8, !tbaa !4
  %240 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx382 = getelementptr inbounds ptr, ptr %239, i64 %240
  %241 = load ptr, ptr %arrayidx382, align 8, !tbaa !4
  %tobool383 = icmp ne ptr %241, null
  br i1 %tobool383, label %if.end392, label %if.then384

if.then384:                                       ; preds = %if.else374
  br label %do.body385

do.body385:                                       ; preds = %if.then384
  %242 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool386 = icmp ne ptr %242, null
  br i1 %tobool386, label %if.then387, label %if.end388

if.then387:                                       ; preds = %do.body385
  %243 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %243)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end388

if.end388:                                        ; preds = %if.then387, %do.body385
  br label %do.cond389

do.cond389:                                       ; preds = %if.end388
  br label %do.end390

do.end390:                                        ; preds = %do.cond389
  %call391 = call ptr @PyErr_NoMemory()
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end392:                                        ; preds = %if.else374
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond393

for.cond393:                                      ; preds = %for.inc409, %if.end392
  %244 = load i64, ptr %hh, align 8, !tbaa !11
  %245 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv394 = sext i32 %245 to i64
  %cmp395 = icmp sle i64 %244, %conv394
  br i1 %cmp395, label %for.body397, label %for.end411

for.body397:                                      ; preds = %for.cond393
  %246 = load i64, ptr %start, align 8, !tbaa !11
  %247 = load i64, ptr %hh, align 8, !tbaa !11
  %add398 = add nsw i64 %246, %247
  store i64 %add398, ptr %idx, align 8, !tbaa !11
  %248 = load i64, ptr %idx, align 8, !tbaa !11
  %conv399 = sitofp i64 %248 to double
  %249 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx400 = getelementptr inbounds [32 x i64], ptr %idimensions, i64 0, i64 %249
  %250 = load i64, ptr %arrayidx400, align 8, !tbaa !11
  %251 = load i32, ptr %spline_mode, align 4, !tbaa !8
  %call401 = call double @map_coordinate(double noundef %conv399, i64 noundef %250, i32 noundef %251)
  %conv402 = fptosi double %call401 to i64
  store i64 %conv402, ptr %idx, align 8, !tbaa !11
  %252 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx403 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %252
  %253 = load i64, ptr %arrayidx403, align 8, !tbaa !11
  %254 = load i64, ptr %idx, align 8, !tbaa !11
  %255 = load i64, ptr %start, align 8, !tbaa !11
  %sub404 = sub nsw i64 %254, %255
  %mul405 = mul nsw i64 %253, %sub404
  %256 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %257 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx406 = getelementptr inbounds ptr, ptr %256, i64 %257
  %258 = load ptr, ptr %arrayidx406, align 8, !tbaa !4
  %259 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx407 = getelementptr inbounds ptr, ptr %258, i64 %259
  %260 = load ptr, ptr %arrayidx407, align 8, !tbaa !4
  %261 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx408 = getelementptr inbounds i64, ptr %260, i64 %261
  store i64 %mul405, ptr %arrayidx408, align 8, !tbaa !11
  br label %for.inc409

for.inc409:                                       ; preds = %for.body397
  %262 = load i64, ptr %hh, align 8, !tbaa !11
  %inc410 = add nsw i64 %262, 1
  store i64 %inc410, ptr %hh, align 8, !tbaa !11
  br label %for.cond393

for.end411:                                       ; preds = %for.cond393
  br label %if.end412

if.end412:                                        ; preds = %for.end411, %for.end373
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end390, %do.end353, %if.end412
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup439 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end413

if.end413:                                        ; preds = %cleanup.cont, %lor.lhs.false328
  %263 = load i32, ptr %order.addr, align 4, !tbaa !8
  %cmp414 = icmp sgt i32 %263, 0
  br i1 %cmp414, label %if.then416, label %if.end438

if.then416:                                       ; preds = %if.end413
  %264 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add417 = add nsw i32 %264, 1
  %conv418 = sext i32 %add417 to i64
  %mul419 = mul i64 %conv418, 8
  %call420 = call noalias ptr @malloc(i64 noundef %mul419) #8
  %265 = load ptr, ptr %splvals, align 8, !tbaa !4
  %266 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx421 = getelementptr inbounds ptr, ptr %265, i64 %266
  %267 = load ptr, ptr %arrayidx421, align 8, !tbaa !4
  %268 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx422 = getelementptr inbounds ptr, ptr %267, i64 %268
  store ptr %call420, ptr %arrayidx422, align 8, !tbaa !4
  %269 = load ptr, ptr %splvals, align 8, !tbaa !4
  %270 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx423 = getelementptr inbounds ptr, ptr %269, i64 %270
  %271 = load ptr, ptr %arrayidx423, align 8, !tbaa !4
  %272 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx424 = getelementptr inbounds ptr, ptr %271, i64 %272
  %273 = load ptr, ptr %arrayidx424, align 8, !tbaa !4
  %tobool425 = icmp ne ptr %273, null
  br i1 %tobool425, label %if.end434, label %if.then426

if.then426:                                       ; preds = %if.then416
  br label %do.body427

do.body427:                                       ; preds = %if.then426
  %274 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool428 = icmp ne ptr %274, null
  br i1 %tobool428, label %if.then429, label %if.end430

if.then429:                                       ; preds = %do.body427
  %275 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %275)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end430

if.end430:                                        ; preds = %if.then429, %do.body427
  br label %do.cond431

do.cond431:                                       ; preds = %if.end430
  br label %do.end432

do.end432:                                        ; preds = %do.cond431
  %call433 = call ptr @PyErr_NoMemory()
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup439

if.end434:                                        ; preds = %if.then416
  %276 = load double, ptr %cc, align 8, !tbaa !24
  %277 = load i32, ptr %order.addr, align 4, !tbaa !8
  %278 = load ptr, ptr %splvals, align 8, !tbaa !4
  %279 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx435 = getelementptr inbounds ptr, ptr %278, i64 %279
  %280 = load ptr, ptr %arrayidx435, align 8, !tbaa !4
  %281 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx436 = getelementptr inbounds ptr, ptr %280, i64 %281
  %282 = load ptr, ptr %arrayidx436, align 8, !tbaa !4
  %call437 = call i32 @get_spline_interpolation_weights(double noundef %276, i32 noundef %277, ptr noundef %282)
  br label %if.end438

if.end438:                                        ; preds = %if.end434, %if.end413
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup439

cleanup439:                                       ; preds = %do.end432, %if.end438, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7
  %cleanup.dest440 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest440, label %cleanup446 [
    i32 0, label %cleanup.cont441
  ]

cleanup.cont441:                                  ; preds = %cleanup439
  br label %if.end445

if.else442:                                       ; preds = %lor.lhs.false298
  %283 = load ptr, ptr %zeros, align 8, !tbaa !4
  %284 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx443 = getelementptr inbounds ptr, ptr %283, i64 %284
  %285 = load ptr, ptr %arrayidx443, align 8, !tbaa !4
  %286 = load i64, ptr %kk, align 8, !tbaa !11
  %arrayidx444 = getelementptr inbounds i64, ptr %285, i64 %286
  store i64 1, ptr %arrayidx444, align 8, !tbaa !11
  br label %if.end445

if.end445:                                        ; preds = %if.else442, %cleanup.cont441
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup446

cleanup446:                                       ; preds = %if.end445, %cleanup439
  call void @llvm.lifetime.end.p0(i64 8, ptr %cc) #7
  %cleanup.dest447 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest447, label %cleanup452 [
    i32 0, label %cleanup.cont448
  ]

cleanup.cont448:                                  ; preds = %cleanup446
  br label %for.inc449

for.inc449:                                       ; preds = %cleanup.cont448
  %287 = load i64, ptr %kk, align 8, !tbaa !11
  %inc450 = add nsw i64 %287, 1
  store i64 %inc450, ptr %kk, align 8, !tbaa !11
  br label %for.cond264

for.end451:                                       ; preds = %for.cond264
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup452

cleanup452:                                       ; preds = %for.end451, %cleanup446
  call void @llvm.lifetime.end.p0(i64 8, ptr %zoom) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %shift) #7
  %cleanup.dest454 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest454, label %cleanup1118 [
    i32 0, label %cleanup.cont455
    i32 9, label %exit
  ]

cleanup.cont455:                                  ; preds = %cleanup452
  br label %for.inc456

for.inc456:                                       ; preds = %cleanup.cont455
  %288 = load i64, ptr %jj, align 8, !tbaa !11
  %inc457 = add nsw i64 %288, 1
  store i64 %inc457, ptr %jj, align 8, !tbaa !11
  br label %for.cond251

for.end458:                                       ; preds = %for.cond251
  store i64 1, ptr %filter_size, align 8, !tbaa !11
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond459

for.cond459:                                      ; preds = %for.inc467, %for.end458
  %289 = load i64, ptr %jj, align 8, !tbaa !11
  %290 = load i32, ptr %rank, align 4, !tbaa !8
  %conv460 = sext i32 %290 to i64
  %cmp461 = icmp slt i64 %289, %conv460
  br i1 %cmp461, label %for.body463, label %for.end469

for.body463:                                      ; preds = %for.cond459
  %291 = load i32, ptr %order.addr, align 4, !tbaa !8
  %add464 = add nsw i32 %291, 1
  %conv465 = sext i32 %add464 to i64
  %292 = load i64, ptr %filter_size, align 8, !tbaa !11
  %mul466 = mul nsw i64 %292, %conv465
  store i64 %mul466, ptr %filter_size, align 8, !tbaa !11
  br label %for.inc467

for.inc467:                                       ; preds = %for.body463
  %293 = load i64, ptr %jj, align 8, !tbaa !11
  %inc468 = add nsw i64 %293, 1
  store i64 %inc468, ptr %jj, align 8, !tbaa !11
  br label %for.cond459

for.end469:                                       ; preds = %for.cond459
  %294 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call470 = call i32 @NI_InitPointIterator(ptr noundef %294, ptr noundef %io)
  %tobool471 = icmp ne i32 %call470, 0
  br i1 %tobool471, label %if.end473, label %if.then472

if.then472:                                       ; preds = %for.end469
  br label %exit

if.end473:                                        ; preds = %for.end469
  %295 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call474 = call ptr @PyArray_DATA(ptr noundef %295)
  store ptr %call474, ptr %pi, align 8, !tbaa !4
  %296 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call475 = call ptr @PyArray_DATA(ptr noundef %296)
  store ptr %call475, ptr %po, align 8, !tbaa !4
  %297 = load i32, ptr %rank, align 4, !tbaa !8
  %conv476 = sext i32 %297 to i64
  %298 = load i64, ptr %filter_size, align 8, !tbaa !11
  %mul477 = mul nsw i64 %conv476, %298
  %mul478 = mul i64 %mul477, 8
  %call479 = call noalias ptr @malloc(i64 noundef %mul478) #8
  store ptr %call479, ptr %fcoordinates, align 8, !tbaa !4
  %299 = load i64, ptr %filter_size, align 8, !tbaa !11
  %mul480 = mul i64 %299, 8
  %call481 = call noalias ptr @malloc(i64 noundef %mul480) #8
  store ptr %call481, ptr %foffsets, align 8, !tbaa !4
  %300 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  %tobool482 = icmp ne ptr %300, null
  br i1 %tobool482, label %lor.lhs.false483, label %if.then485

lor.lhs.false483:                                 ; preds = %if.end473
  %301 = load ptr, ptr %foffsets, align 8, !tbaa !4
  %tobool484 = icmp ne ptr %301, null
  br i1 %tobool484, label %if.end493, label %if.then485

if.then485:                                       ; preds = %lor.lhs.false483, %if.end473
  br label %do.body486

do.body486:                                       ; preds = %if.then485
  %302 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool487 = icmp ne ptr %302, null
  br i1 %tobool487, label %if.then488, label %if.end489

if.then488:                                       ; preds = %do.body486
  %303 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %303)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end489

if.end489:                                        ; preds = %if.then488, %do.body486
  br label %do.cond490

do.cond490:                                       ; preds = %if.end489
  br label %do.end491

do.end491:                                        ; preds = %do.cond490
  %call492 = call ptr @PyErr_NoMemory()
  br label %exit

if.end493:                                        ; preds = %lor.lhs.false483
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond494

for.cond494:                                      ; preds = %for.inc500, %if.end493
  %304 = load i64, ptr %jj, align 8, !tbaa !11
  %305 = load i32, ptr %rank, align 4, !tbaa !8
  %conv495 = sext i32 %305 to i64
  %cmp496 = icmp slt i64 %304, %conv495
  br i1 %cmp496, label %for.body498, label %for.end502

for.body498:                                      ; preds = %for.cond494
  %306 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx499 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %306
  store i64 0, ptr %arrayidx499, align 8, !tbaa !11
  br label %for.inc500

for.inc500:                                       ; preds = %for.body498
  %307 = load i64, ptr %jj, align 8, !tbaa !11
  %inc501 = add nsw i64 %307, 1
  store i64 %inc501, ptr %jj, align 8, !tbaa !11
  br label %for.cond494

for.end502:                                       ; preds = %for.cond494
  store i64 0, ptr %kk, align 8, !tbaa !11
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond503

for.cond503:                                      ; preds = %for.inc545, %for.end502
  %308 = load i64, ptr %hh, align 8, !tbaa !11
  %309 = load i64, ptr %filter_size, align 8, !tbaa !11
  %cmp504 = icmp slt i64 %308, %309
  br i1 %cmp504, label %for.body506, label %for.end547

for.body506:                                      ; preds = %for.cond503
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond507

for.cond507:                                      ; preds = %for.inc517, %for.body506
  %310 = load i64, ptr %jj, align 8, !tbaa !11
  %311 = load i32, ptr %rank, align 4, !tbaa !8
  %conv508 = sext i32 %311 to i64
  %cmp509 = icmp slt i64 %310, %conv508
  br i1 %cmp509, label %for.body511, label %for.end519

for.body511:                                      ; preds = %for.cond507
  %312 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx512 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %312
  %313 = load i64, ptr %arrayidx512, align 8, !tbaa !11
  %314 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  %315 = load i64, ptr %jj, align 8, !tbaa !11
  %316 = load i64, ptr %hh, align 8, !tbaa !11
  %317 = load i32, ptr %rank, align 4, !tbaa !8
  %conv513 = sext i32 %317 to i64
  %mul514 = mul nsw i64 %316, %conv513
  %add515 = add nsw i64 %315, %mul514
  %arrayidx516 = getelementptr inbounds i64, ptr %314, i64 %add515
  store i64 %313, ptr %arrayidx516, align 8, !tbaa !11
  br label %for.inc517

for.inc517:                                       ; preds = %for.body511
  %318 = load i64, ptr %jj, align 8, !tbaa !11
  %inc518 = add nsw i64 %318, 1
  store i64 %inc518, ptr %jj, align 8, !tbaa !11
  br label %for.cond507

for.end519:                                       ; preds = %for.cond507
  %319 = load i64, ptr %kk, align 8, !tbaa !11
  %320 = load ptr, ptr %foffsets, align 8, !tbaa !4
  %321 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx520 = getelementptr inbounds i64, ptr %320, i64 %321
  store i64 %319, ptr %arrayidx520, align 8, !tbaa !11
  %322 = load i32, ptr %rank, align 4, !tbaa !8
  %sub521 = sub nsw i32 %322, 1
  %conv522 = sext i32 %sub521 to i64
  store i64 %conv522, ptr %jj, align 8, !tbaa !11
  br label %for.cond523

for.cond523:                                      ; preds = %for.inc543, %for.end519
  %323 = load i64, ptr %jj, align 8, !tbaa !11
  %cmp524 = icmp sge i64 %323, 0
  br i1 %cmp524, label %for.body526, label %for.end544

for.body526:                                      ; preds = %for.cond523
  %324 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx527 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %324
  %325 = load i64, ptr %arrayidx527, align 8, !tbaa !11
  %326 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv528 = sext i32 %326 to i64
  %cmp529 = icmp slt i64 %325, %conv528
  br i1 %cmp529, label %if.then531, label %if.else536

if.then531:                                       ; preds = %for.body526
  %327 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx532 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %327
  %328 = load i64, ptr %arrayidx532, align 8, !tbaa !11
  %inc533 = add nsw i64 %328, 1
  store i64 %inc533, ptr %arrayidx532, align 8, !tbaa !11
  %329 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx534 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %329
  %330 = load i64, ptr %arrayidx534, align 8, !tbaa !11
  %331 = load i64, ptr %kk, align 8, !tbaa !11
  %add535 = add nsw i64 %331, %330
  store i64 %add535, ptr %kk, align 8, !tbaa !11
  br label %for.end544

if.else536:                                       ; preds = %for.body526
  %332 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx537 = getelementptr inbounds [32 x i64], ptr %ftmp, i64 0, i64 %332
  store i64 0, ptr %arrayidx537, align 8, !tbaa !11
  %333 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx538 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %333
  %334 = load i64, ptr %arrayidx538, align 8, !tbaa !11
  %335 = load i32, ptr %order.addr, align 4, !tbaa !8
  %conv539 = sext i32 %335 to i64
  %mul540 = mul nsw i64 %334, %conv539
  %336 = load i64, ptr %kk, align 8, !tbaa !11
  %sub541 = sub nsw i64 %336, %mul540
  store i64 %sub541, ptr %kk, align 8, !tbaa !11
  br label %if.end542

if.end542:                                        ; preds = %if.else536
  br label %for.inc543

for.inc543:                                       ; preds = %if.end542
  %337 = load i64, ptr %jj, align 8, !tbaa !11
  %dec = add nsw i64 %337, -1
  store i64 %dec, ptr %jj, align 8, !tbaa !11
  br label %for.cond523

for.end544:                                       ; preds = %if.then531, %for.cond523
  br label %for.inc545

for.inc545:                                       ; preds = %for.end544
  %338 = load i64, ptr %hh, align 8, !tbaa !11
  %inc546 = add nsw i64 %338, 1
  store i64 %inc546, ptr %hh, align 8, !tbaa !11
  br label %for.cond503

for.end547:                                       ; preds = %for.cond503
  %339 = load ptr, ptr @_scipy_ndimage_ARRAY_API, align 8, !tbaa !4
  %arrayidx548 = getelementptr inbounds ptr, ptr %339, i64 158
  %340 = load ptr, ptr %arrayidx548, align 8, !tbaa !4
  %341 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call549 = call ptr @PyArray_DIMS(ptr noundef %341)
  %342 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call550 = call i32 @PyArray_NDIM(ptr noundef %342)
  %call551 = call i64 %340(ptr noundef %call549, i32 noundef %call550)
  store i64 %call551, ptr %size, align 8, !tbaa !11
  store i64 0, ptr %kk, align 8, !tbaa !11
  br label %for.cond552

for.cond552:                                      ; preds = %for.inc1004, %for.end547
  %343 = load i64, ptr %kk, align 8, !tbaa !11
  %344 = load i64, ptr %size, align 8, !tbaa !11
  %cmp553 = icmp slt i64 %343, %344
  br i1 %cmp553, label %for.body555, label %for.end1006

for.body555:                                      ; preds = %for.cond552
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7
  store double 0.000000e+00, ptr %t, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %edge) #7
  store i64 0, ptr %edge, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %oo) #7
  store i64 0, ptr %oo, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %zero) #7
  store i64 0, ptr %zero, align 8, !tbaa !11
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond556

for.cond556:                                      ; preds = %for.inc585, %for.body555
  %345 = load i64, ptr %hh, align 8, !tbaa !11
  %346 = load i32, ptr %rank, align 4, !tbaa !8
  %conv557 = sext i32 %346 to i64
  %cmp558 = icmp slt i64 %345, %conv557
  br i1 %cmp558, label %for.body560, label %for.end587

for.body560:                                      ; preds = %for.cond556
  %347 = load ptr, ptr %zeros, align 8, !tbaa !4
  %tobool561 = icmp ne ptr %347, null
  br i1 %tobool561, label %land.lhs.true562, label %if.end568

land.lhs.true562:                                 ; preds = %for.body560
  %348 = load ptr, ptr %zeros, align 8, !tbaa !4
  %349 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx563 = getelementptr inbounds ptr, ptr %348, i64 %349
  %350 = load ptr, ptr %arrayidx563, align 8, !tbaa !4
  %coordinates = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %351 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx564 = getelementptr inbounds [32 x i64], ptr %coordinates, i64 0, i64 %351
  %352 = load i64, ptr %arrayidx564, align 8, !tbaa !11
  %arrayidx565 = getelementptr inbounds i64, ptr %350, i64 %352
  %353 = load i64, ptr %arrayidx565, align 8, !tbaa !11
  %tobool566 = icmp ne i64 %353, 0
  br i1 %tobool566, label %if.then567, label %if.end568

if.then567:                                       ; preds = %land.lhs.true562
  store i64 1, ptr %zero, align 8, !tbaa !11
  br label %for.end587

if.end568:                                        ; preds = %land.lhs.true562, %for.body560
  %354 = load ptr, ptr %offsets, align 8, !tbaa !4
  %355 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx569 = getelementptr inbounds ptr, ptr %354, i64 %355
  %356 = load ptr, ptr %arrayidx569, align 8, !tbaa !4
  %coordinates570 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %357 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx571 = getelementptr inbounds [32 x i64], ptr %coordinates570, i64 0, i64 %357
  %358 = load i64, ptr %arrayidx571, align 8, !tbaa !11
  %arrayidx572 = getelementptr inbounds i64, ptr %356, i64 %358
  %359 = load i64, ptr %arrayidx572, align 8, !tbaa !11
  %360 = load i64, ptr %oo, align 8, !tbaa !11
  %add573 = add nsw i64 %360, %359
  store i64 %add573, ptr %oo, align 8, !tbaa !11
  %361 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp574 = icmp ne i32 %361, 6
  br i1 %cmp574, label %if.then576, label %if.end584

if.then576:                                       ; preds = %if.end568
  %362 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %363 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx577 = getelementptr inbounds ptr, ptr %362, i64 %363
  %364 = load ptr, ptr %arrayidx577, align 8, !tbaa !4
  %coordinates578 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %365 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx579 = getelementptr inbounds [32 x i64], ptr %coordinates578, i64 0, i64 %365
  %366 = load i64, ptr %arrayidx579, align 8, !tbaa !11
  %arrayidx580 = getelementptr inbounds ptr, ptr %364, i64 %366
  %367 = load ptr, ptr %arrayidx580, align 8, !tbaa !4
  %tobool581 = icmp ne ptr %367, null
  br i1 %tobool581, label %if.then582, label %if.end583

if.then582:                                       ; preds = %if.then576
  store i64 1, ptr %edge, align 8, !tbaa !11
  br label %if.end583

if.end583:                                        ; preds = %if.then582, %if.then576
  br label %if.end584

if.end584:                                        ; preds = %if.end583, %if.end568
  br label %for.inc585

for.inc585:                                       ; preds = %if.end584
  %368 = load i64, ptr %hh, align 8, !tbaa !11
  %inc586 = add nsw i64 %368, 1
  store i64 %inc586, ptr %hh, align 8, !tbaa !11
  br label %for.cond556

for.end587:                                       ; preds = %if.then567, %for.cond556
  %369 = load i64, ptr %zero, align 8, !tbaa !11
  %tobool588 = icmp ne i64 %369, 0
  br i1 %tobool588, label %if.else738, label %if.then589

if.then589:                                       ; preds = %for.end587
  call void @llvm.lifetime.start.p0(i64 8, ptr %ff) #7
  %370 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  store ptr %370, ptr %ff, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %type_num) #7
  %371 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %call590 = call i32 @PyArray_TYPE(ptr noundef %371)
  store i32 %call590, ptr %type_num, align 4, !tbaa !8
  store double 0.000000e+00, ptr %t, align 8, !tbaa !24
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond591

for.cond591:                                      ; preds = %for.inc731, %if.then589
  %372 = load i64, ptr %hh, align 8, !tbaa !11
  %373 = load i64, ptr %filter_size, align 8, !tbaa !11
  %cmp592 = icmp slt i64 %372, %373
  br i1 %cmp592, label %for.body594, label %for.end733

for.body594:                                      ; preds = %for.cond591
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx595) #7
  store i64 0, ptr %idx595, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %coeff) #7
  store double 0.000000e+00, ptr %coeff, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_cval) #7
  store i32 0, ptr %is_cval, align 4, !tbaa !8
  %374 = load i32, ptr %mode.addr, align 4, !tbaa !8
  %cmp596 = icmp eq i32 %374, 6
  br i1 %cmp596, label %if.then598, label %if.end623

if.then598:                                       ; preds = %for.body594
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond599

for.cond599:                                      ; preds = %for.inc620, %if.then598
  %375 = load i64, ptr %jj, align 8, !tbaa !11
  %376 = load i32, ptr %rank, align 4, !tbaa !8
  %conv600 = sext i32 %376 to i64
  %cmp601 = icmp slt i64 %375, %conv600
  br i1 %cmp601, label %for.body603, label %for.end622

for.body603:                                      ; preds = %for.cond599
  %377 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %378 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx604 = getelementptr inbounds ptr, ptr %377, i64 %378
  %379 = load ptr, ptr %arrayidx604, align 8, !tbaa !4
  %coordinates605 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %380 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx606 = getelementptr inbounds [32 x i64], ptr %coordinates605, i64 0, i64 %380
  %381 = load i64, ptr %arrayidx606, align 8, !tbaa !11
  %arrayidx607 = getelementptr inbounds ptr, ptr %379, i64 %381
  %382 = load ptr, ptr %arrayidx607, align 8, !tbaa !4
  %tobool608 = icmp ne ptr %382, null
  br i1 %tobool608, label %if.then609, label %if.end619

if.then609:                                       ; preds = %for.body603
  %383 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %384 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx610 = getelementptr inbounds ptr, ptr %383, i64 %384
  %385 = load ptr, ptr %arrayidx610, align 8, !tbaa !4
  %coordinates611 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %386 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx612 = getelementptr inbounds [32 x i64], ptr %coordinates611, i64 0, i64 %386
  %387 = load i64, ptr %arrayidx612, align 8, !tbaa !11
  %arrayidx613 = getelementptr inbounds ptr, ptr %385, i64 %387
  %388 = load ptr, ptr %arrayidx613, align 8, !tbaa !4
  %389 = load ptr, ptr %ff, align 8, !tbaa !4
  %390 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx614 = getelementptr inbounds i64, ptr %389, i64 %390
  %391 = load i64, ptr %arrayidx614, align 8, !tbaa !11
  %arrayidx615 = getelementptr inbounds i8, ptr %388, i64 %391
  %392 = load i8, ptr %arrayidx615, align 1, !tbaa !10
  %tobool616 = icmp ne i8 %392, 0
  br i1 %tobool616, label %if.then617, label %if.end618

if.then617:                                       ; preds = %if.then609
  store i32 1, ptr %is_cval, align 4, !tbaa !8
  br label %if.end618

if.end618:                                        ; preds = %if.then617, %if.then609
  br label %if.end619

if.end619:                                        ; preds = %if.end618, %for.body603
  br label %for.inc620

for.inc620:                                       ; preds = %if.end619
  %393 = load i64, ptr %jj, align 8, !tbaa !11
  %inc621 = add nsw i64 %393, 1
  store i64 %inc621, ptr %jj, align 8, !tbaa !11
  br label %for.cond599

for.end622:                                       ; preds = %for.cond599
  br label %if.end623

if.end623:                                        ; preds = %for.end622, %for.body594
  %394 = load i32, ptr %is_cval, align 4, !tbaa !8
  %tobool624 = icmp ne i32 %394, 0
  br i1 %tobool624, label %if.then625, label %if.else626

if.then625:                                       ; preds = %if.end623
  %395 = load double, ptr %cval.addr, align 8, !tbaa !24
  store double %395, ptr %coeff, align 8, !tbaa !24
  br label %if.end704

if.else626:                                       ; preds = %if.end623
  %396 = load i64, ptr %edge, align 8, !tbaa !11
  %tobool627 = icmp ne i64 %396, 0
  br i1 %tobool627, label %if.then628, label %if.else657

if.then628:                                       ; preds = %if.else626
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond629

for.cond629:                                      ; preds = %for.inc653, %if.then628
  %397 = load i64, ptr %jj, align 8, !tbaa !11
  %398 = load i32, ptr %rank, align 4, !tbaa !8
  %conv630 = sext i32 %398 to i64
  %cmp631 = icmp slt i64 %397, %conv630
  br i1 %cmp631, label %for.body633, label %for.end655

for.body633:                                      ; preds = %for.cond629
  %399 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %400 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx634 = getelementptr inbounds ptr, ptr %399, i64 %400
  %401 = load ptr, ptr %arrayidx634, align 8, !tbaa !4
  %coordinates635 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %402 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx636 = getelementptr inbounds [32 x i64], ptr %coordinates635, i64 0, i64 %402
  %403 = load i64, ptr %arrayidx636, align 8, !tbaa !11
  %arrayidx637 = getelementptr inbounds ptr, ptr %401, i64 %403
  %404 = load ptr, ptr %arrayidx637, align 8, !tbaa !4
  %tobool638 = icmp ne ptr %404, null
  br i1 %tobool638, label %if.then639, label %if.else647

if.then639:                                       ; preds = %for.body633
  %405 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %406 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx640 = getelementptr inbounds ptr, ptr %405, i64 %406
  %407 = load ptr, ptr %arrayidx640, align 8, !tbaa !4
  %coordinates641 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %408 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx642 = getelementptr inbounds [32 x i64], ptr %coordinates641, i64 0, i64 %408
  %409 = load i64, ptr %arrayidx642, align 8, !tbaa !11
  %arrayidx643 = getelementptr inbounds ptr, ptr %407, i64 %409
  %410 = load ptr, ptr %arrayidx643, align 8, !tbaa !4
  %411 = load ptr, ptr %ff, align 8, !tbaa !4
  %412 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx644 = getelementptr inbounds i64, ptr %411, i64 %412
  %413 = load i64, ptr %arrayidx644, align 8, !tbaa !11
  %arrayidx645 = getelementptr inbounds i64, ptr %410, i64 %413
  %414 = load i64, ptr %arrayidx645, align 8, !tbaa !11
  %415 = load i64, ptr %idx595, align 8, !tbaa !11
  %add646 = add nsw i64 %415, %414
  store i64 %add646, ptr %idx595, align 8, !tbaa !11
  br label %if.end652

if.else647:                                       ; preds = %for.body633
  %416 = load ptr, ptr %ff, align 8, !tbaa !4
  %417 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx648 = getelementptr inbounds i64, ptr %416, i64 %417
  %418 = load i64, ptr %arrayidx648, align 8, !tbaa !11
  %419 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx649 = getelementptr inbounds [32 x i64], ptr %istrides, i64 0, i64 %419
  %420 = load i64, ptr %arrayidx649, align 8, !tbaa !11
  %mul650 = mul nsw i64 %418, %420
  %421 = load i64, ptr %idx595, align 8, !tbaa !11
  %add651 = add nsw i64 %421, %mul650
  store i64 %add651, ptr %idx595, align 8, !tbaa !11
  br label %if.end652

if.end652:                                        ; preds = %if.else647, %if.then639
  br label %for.inc653

for.inc653:                                       ; preds = %if.end652
  %422 = load i64, ptr %jj, align 8, !tbaa !11
  %inc654 = add nsw i64 %422, 1
  store i64 %inc654, ptr %jj, align 8, !tbaa !11
  br label %for.cond629

for.end655:                                       ; preds = %for.cond629
  %423 = load i64, ptr %oo, align 8, !tbaa !11
  %424 = load i64, ptr %idx595, align 8, !tbaa !11
  %add656 = add nsw i64 %424, %423
  store i64 %add656, ptr %idx595, align 8, !tbaa !11
  br label %if.end661

if.else657:                                       ; preds = %if.else626
  %425 = load i64, ptr %oo, align 8, !tbaa !11
  %426 = load ptr, ptr %foffsets, align 8, !tbaa !4
  %427 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx658 = getelementptr inbounds i64, ptr %426, i64 %427
  %428 = load i64, ptr %arrayidx658, align 8, !tbaa !11
  %add659 = add nsw i64 %425, %428
  %429 = load i64, ptr %idx595, align 8, !tbaa !11
  %add660 = add nsw i64 %429, %add659
  store i64 %add660, ptr %idx595, align 8, !tbaa !11
  br label %if.end661

if.end661:                                        ; preds = %if.else657, %for.end655
  %430 = load i32, ptr %type_num, align 4, !tbaa !8
  switch i32 %430, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb663
    i32 4, label %sw.bb666
    i32 6, label %sw.bb669
    i32 8, label %sw.bb672
    i32 10, label %sw.bb675
    i32 1, label %sw.bb678
    i32 3, label %sw.bb681
    i32 5, label %sw.bb684
    i32 7, label %sw.bb687
    i32 9, label %sw.bb690
    i32 11, label %sw.bb693
    i32 12, label %sw.bb696
  ]

sw.bb:                                            ; preds = %if.end661
  %431 = load ptr, ptr %pi, align 8, !tbaa !4
  %432 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds i8, ptr %431, i64 %432
  %433 = load i8, ptr %add.ptr, align 1, !tbaa !10
  %conv662 = uitofp i8 %433 to double
  store double %conv662, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb663:                                         ; preds = %if.end661
  %434 = load ptr, ptr %pi, align 8, !tbaa !4
  %435 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr664 = getelementptr inbounds i8, ptr %434, i64 %435
  %436 = load i8, ptr %add.ptr664, align 1, !tbaa !10
  %conv665 = uitofp i8 %436 to double
  store double %conv665, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb666:                                         ; preds = %if.end661
  %437 = load ptr, ptr %pi, align 8, !tbaa !4
  %438 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr667 = getelementptr inbounds i8, ptr %437, i64 %438
  %439 = load i16, ptr %add.ptr667, align 2, !tbaa !25
  %conv668 = uitofp i16 %439 to double
  store double %conv668, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb669:                                         ; preds = %if.end661
  %440 = load ptr, ptr %pi, align 8, !tbaa !4
  %441 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr670 = getelementptr inbounds i8, ptr %440, i64 %441
  %442 = load i32, ptr %add.ptr670, align 4, !tbaa !8
  %conv671 = uitofp i32 %442 to double
  store double %conv671, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb672:                                         ; preds = %if.end661
  %443 = load ptr, ptr %pi, align 8, !tbaa !4
  %444 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr673 = getelementptr inbounds i8, ptr %443, i64 %444
  %445 = load i64, ptr %add.ptr673, align 8, !tbaa !11
  %conv674 = uitofp i64 %445 to double
  store double %conv674, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb675:                                         ; preds = %if.end661
  %446 = load ptr, ptr %pi, align 8, !tbaa !4
  %447 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr676 = getelementptr inbounds i8, ptr %446, i64 %447
  %448 = load i64, ptr %add.ptr676, align 8, !tbaa !27
  %conv677 = uitofp i64 %448 to double
  store double %conv677, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb678:                                         ; preds = %if.end661
  %449 = load ptr, ptr %pi, align 8, !tbaa !4
  %450 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr679 = getelementptr inbounds i8, ptr %449, i64 %450
  %451 = load i8, ptr %add.ptr679, align 1, !tbaa !10
  %conv680 = sitofp i8 %451 to double
  store double %conv680, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb681:                                         ; preds = %if.end661
  %452 = load ptr, ptr %pi, align 8, !tbaa !4
  %453 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr682 = getelementptr inbounds i8, ptr %452, i64 %453
  %454 = load i16, ptr %add.ptr682, align 2, !tbaa !25
  %conv683 = sitofp i16 %454 to double
  store double %conv683, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb684:                                         ; preds = %if.end661
  %455 = load ptr, ptr %pi, align 8, !tbaa !4
  %456 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr685 = getelementptr inbounds i8, ptr %455, i64 %456
  %457 = load i32, ptr %add.ptr685, align 4, !tbaa !8
  %conv686 = sitofp i32 %457 to double
  store double %conv686, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb687:                                         ; preds = %if.end661
  %458 = load ptr, ptr %pi, align 8, !tbaa !4
  %459 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr688 = getelementptr inbounds i8, ptr %458, i64 %459
  %460 = load i64, ptr %add.ptr688, align 8, !tbaa !11
  %conv689 = sitofp i64 %460 to double
  store double %conv689, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb690:                                         ; preds = %if.end661
  %461 = load ptr, ptr %pi, align 8, !tbaa !4
  %462 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr691 = getelementptr inbounds i8, ptr %461, i64 %462
  %463 = load i64, ptr %add.ptr691, align 8, !tbaa !27
  %conv692 = sitofp i64 %463 to double
  store double %conv692, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb693:                                         ; preds = %if.end661
  %464 = load ptr, ptr %pi, align 8, !tbaa !4
  %465 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr694 = getelementptr inbounds i8, ptr %464, i64 %465
  %466 = load float, ptr %add.ptr694, align 4, !tbaa !29
  %conv695 = fpext float %466 to double
  store double %conv695, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.bb696:                                         ; preds = %if.end661
  %467 = load ptr, ptr %pi, align 8, !tbaa !4
  %468 = load i64, ptr %idx595, align 8, !tbaa !11
  %add.ptr697 = getelementptr inbounds i8, ptr %467, i64 %468
  %469 = load double, ptr %add.ptr697, align 8, !tbaa !24
  store double %469, ptr %coeff, align 8, !tbaa !24
  br label %sw.epilog

sw.default:                                       ; preds = %if.end661
  br label %do.body698

do.body698:                                       ; preds = %sw.default
  %470 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool699 = icmp ne ptr %470, null
  br i1 %tobool699, label %if.then700, label %if.end701

if.then700:                                       ; preds = %do.body698
  %471 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %471)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end701

if.end701:                                        ; preds = %if.then700, %do.body698
  br label %do.cond702

do.cond702:                                       ; preds = %if.end701
  br label %do.end703

do.end703:                                        ; preds = %do.cond702
  %472 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %472, ptr noundef @.str.2)
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup726

sw.epilog:                                        ; preds = %sw.bb696, %sw.bb693, %sw.bb690, %sw.bb687, %sw.bb684, %sw.bb681, %sw.bb678, %sw.bb675, %sw.bb672, %sw.bb669, %sw.bb666, %sw.bb663, %sw.bb
  br label %if.end704

if.end704:                                        ; preds = %sw.epilog, %if.then625
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond705

for.cond705:                                      ; preds = %for.inc721, %if.end704
  %473 = load i64, ptr %jj, align 8, !tbaa !11
  %474 = load i32, ptr %rank, align 4, !tbaa !8
  %conv706 = sext i32 %474 to i64
  %cmp707 = icmp slt i64 %473, %conv706
  br i1 %cmp707, label %for.body709, label %for.end723

for.body709:                                      ; preds = %for.cond705
  %475 = load i32, ptr %order.addr, align 4, !tbaa !8
  %cmp710 = icmp sgt i32 %475, 0
  br i1 %cmp710, label %if.then712, label %if.end720

if.then712:                                       ; preds = %for.body709
  %476 = load ptr, ptr %splvals, align 8, !tbaa !4
  %477 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx713 = getelementptr inbounds ptr, ptr %476, i64 %477
  %478 = load ptr, ptr %arrayidx713, align 8, !tbaa !4
  %coordinates714 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %479 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx715 = getelementptr inbounds [32 x i64], ptr %coordinates714, i64 0, i64 %479
  %480 = load i64, ptr %arrayidx715, align 8, !tbaa !11
  %arrayidx716 = getelementptr inbounds ptr, ptr %478, i64 %480
  %481 = load ptr, ptr %arrayidx716, align 8, !tbaa !4
  %482 = load ptr, ptr %ff, align 8, !tbaa !4
  %483 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx717 = getelementptr inbounds i64, ptr %482, i64 %483
  %484 = load i64, ptr %arrayidx717, align 8, !tbaa !11
  %arrayidx718 = getelementptr inbounds double, ptr %481, i64 %484
  %485 = load double, ptr %arrayidx718, align 8, !tbaa !24
  %486 = load double, ptr %coeff, align 8, !tbaa !24
  %mul719 = fmul double %486, %485
  store double %mul719, ptr %coeff, align 8, !tbaa !24
  br label %if.end720

if.end720:                                        ; preds = %if.then712, %for.body709
  br label %for.inc721

for.inc721:                                       ; preds = %if.end720
  %487 = load i64, ptr %jj, align 8, !tbaa !11
  %inc722 = add nsw i64 %487, 1
  store i64 %inc722, ptr %jj, align 8, !tbaa !11
  br label %for.cond705

for.end723:                                       ; preds = %for.cond705
  %488 = load double, ptr %coeff, align 8, !tbaa !24
  %489 = load double, ptr %t, align 8, !tbaa !24
  %add724 = fadd double %489, %488
  store double %add724, ptr %t, align 8, !tbaa !24
  %490 = load i32, ptr %rank, align 4, !tbaa !8
  %491 = load ptr, ptr %ff, align 8, !tbaa !4
  %idx.ext = sext i32 %490 to i64
  %add.ptr725 = getelementptr inbounds i64, ptr %491, i64 %idx.ext
  store ptr %add.ptr725, ptr %ff, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup726

cleanup726:                                       ; preds = %do.end703, %for.end723
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_cval) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %coeff) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx595) #7
  %cleanup.dest729 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest729, label %cleanup734 [
    i32 0, label %cleanup.cont730
  ]

cleanup.cont730:                                  ; preds = %cleanup726
  br label %for.inc731

for.inc731:                                       ; preds = %cleanup.cont730
  %492 = load i64, ptr %hh, align 8, !tbaa !11
  %inc732 = add nsw i64 %492, 1
  store i64 %inc732, ptr %hh, align 8, !tbaa !11
  br label %for.cond591

for.end733:                                       ; preds = %for.cond591
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup734

cleanup734:                                       ; preds = %for.end733, %cleanup726
  call void @llvm.lifetime.end.p0(i64 4, ptr %type_num) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ff) #7
  %cleanup.dest736 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest736, label %cleanup998 [
    i32 0, label %cleanup.cont737
  ]

cleanup.cont737:                                  ; preds = %cleanup734
  br label %if.end739

if.else738:                                       ; preds = %for.end587
  %493 = load double, ptr %cval.addr, align 8, !tbaa !24
  store double %493, ptr %t, align 8, !tbaa !24
  br label %if.end739

if.end739:                                        ; preds = %if.else738, %cleanup.cont737
  %494 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %call740 = call i32 @PyArray_TYPE(ptr noundef %494)
  switch i32 %call740, label %sw.default961 [
    i32 0, label %sw.bb741
    i32 2, label %sw.bb743
    i32 4, label %sw.bb764
    i32 6, label %sw.bb785
    i32 8, label %sw.bb806
    i32 10, label %sw.bb827
    i32 1, label %sw.bb848
    i32 3, label %sw.bb870
    i32 5, label %sw.bb892
    i32 7, label %sw.bb914
    i32 9, label %sw.bb936
    i32 11, label %sw.bb958
    i32 12, label %sw.bb960
  ]

sw.bb741:                                         ; preds = %if.end739
  %495 = load double, ptr %t, align 8, !tbaa !24
  %conv742 = fptoui double %495 to i8
  %496 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv742, ptr %496, align 1, !tbaa !10
  br label %sw.epilog968

sw.bb743:                                         ; preds = %if.end739
  %497 = load double, ptr %t, align 8, !tbaa !24
  %cmp744 = fcmp ogt double %497, 0.000000e+00
  br i1 %cmp744, label %cond.true746, label %cond.false748

cond.true746:                                     ; preds = %sw.bb743
  %498 = load double, ptr %t, align 8, !tbaa !24
  %add747 = fadd double %498, 5.000000e-01
  br label %cond.end749

cond.false748:                                    ; preds = %sw.bb743
  br label %cond.end749

cond.end749:                                      ; preds = %cond.false748, %cond.true746
  %cond750 = phi double [ %add747, %cond.true746 ], [ 0.000000e+00, %cond.false748 ]
  store double %cond750, ptr %t, align 8, !tbaa !24
  %499 = load double, ptr %t, align 8, !tbaa !24
  %cmp751 = fcmp ogt double %499, 2.550000e+02
  br i1 %cmp751, label %cond.true753, label %cond.false754

cond.true753:                                     ; preds = %cond.end749
  br label %cond.end755

cond.false754:                                    ; preds = %cond.end749
  %500 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end755

cond.end755:                                      ; preds = %cond.false754, %cond.true753
  %cond756 = phi double [ 2.550000e+02, %cond.true753 ], [ %500, %cond.false754 ]
  store double %cond756, ptr %t, align 8, !tbaa !24
  %501 = load double, ptr %t, align 8, !tbaa !24
  %cmp757 = fcmp olt double %501, 0.000000e+00
  br i1 %cmp757, label %cond.true759, label %cond.false760

cond.true759:                                     ; preds = %cond.end755
  br label %cond.end761

cond.false760:                                    ; preds = %cond.end755
  %502 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end761

cond.end761:                                      ; preds = %cond.false760, %cond.true759
  %cond762 = phi double [ 0.000000e+00, %cond.true759 ], [ %502, %cond.false760 ]
  store double %cond762, ptr %t, align 8, !tbaa !24
  %503 = load double, ptr %t, align 8, !tbaa !24
  %conv763 = fptoui double %503 to i8
  %504 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv763, ptr %504, align 1, !tbaa !10
  br label %sw.epilog968

sw.bb764:                                         ; preds = %if.end739
  %505 = load double, ptr %t, align 8, !tbaa !24
  %cmp765 = fcmp ogt double %505, 0.000000e+00
  br i1 %cmp765, label %cond.true767, label %cond.false769

cond.true767:                                     ; preds = %sw.bb764
  %506 = load double, ptr %t, align 8, !tbaa !24
  %add768 = fadd double %506, 5.000000e-01
  br label %cond.end770

cond.false769:                                    ; preds = %sw.bb764
  br label %cond.end770

cond.end770:                                      ; preds = %cond.false769, %cond.true767
  %cond771 = phi double [ %add768, %cond.true767 ], [ 0.000000e+00, %cond.false769 ]
  store double %cond771, ptr %t, align 8, !tbaa !24
  %507 = load double, ptr %t, align 8, !tbaa !24
  %cmp772 = fcmp ogt double %507, 6.553500e+04
  br i1 %cmp772, label %cond.true774, label %cond.false775

cond.true774:                                     ; preds = %cond.end770
  br label %cond.end776

cond.false775:                                    ; preds = %cond.end770
  %508 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end776

cond.end776:                                      ; preds = %cond.false775, %cond.true774
  %cond777 = phi double [ 6.553500e+04, %cond.true774 ], [ %508, %cond.false775 ]
  store double %cond777, ptr %t, align 8, !tbaa !24
  %509 = load double, ptr %t, align 8, !tbaa !24
  %cmp778 = fcmp olt double %509, 0.000000e+00
  br i1 %cmp778, label %cond.true780, label %cond.false781

cond.true780:                                     ; preds = %cond.end776
  br label %cond.end782

cond.false781:                                    ; preds = %cond.end776
  %510 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end782

cond.end782:                                      ; preds = %cond.false781, %cond.true780
  %cond783 = phi double [ 0.000000e+00, %cond.true780 ], [ %510, %cond.false781 ]
  store double %cond783, ptr %t, align 8, !tbaa !24
  %511 = load double, ptr %t, align 8, !tbaa !24
  %conv784 = fptoui double %511 to i16
  %512 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv784, ptr %512, align 2, !tbaa !25
  br label %sw.epilog968

sw.bb785:                                         ; preds = %if.end739
  %513 = load double, ptr %t, align 8, !tbaa !24
  %cmp786 = fcmp ogt double %513, 0.000000e+00
  br i1 %cmp786, label %cond.true788, label %cond.false790

cond.true788:                                     ; preds = %sw.bb785
  %514 = load double, ptr %t, align 8, !tbaa !24
  %add789 = fadd double %514, 5.000000e-01
  br label %cond.end791

cond.false790:                                    ; preds = %sw.bb785
  br label %cond.end791

cond.end791:                                      ; preds = %cond.false790, %cond.true788
  %cond792 = phi double [ %add789, %cond.true788 ], [ 0.000000e+00, %cond.false790 ]
  store double %cond792, ptr %t, align 8, !tbaa !24
  %515 = load double, ptr %t, align 8, !tbaa !24
  %cmp793 = fcmp ogt double %515, 0x41EFFFFFFFE00000
  br i1 %cmp793, label %cond.true795, label %cond.false796

cond.true795:                                     ; preds = %cond.end791
  br label %cond.end797

cond.false796:                                    ; preds = %cond.end791
  %516 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end797

cond.end797:                                      ; preds = %cond.false796, %cond.true795
  %cond798 = phi double [ 0x41EFFFFFFFE00000, %cond.true795 ], [ %516, %cond.false796 ]
  store double %cond798, ptr %t, align 8, !tbaa !24
  %517 = load double, ptr %t, align 8, !tbaa !24
  %cmp799 = fcmp olt double %517, 0.000000e+00
  br i1 %cmp799, label %cond.true801, label %cond.false802

cond.true801:                                     ; preds = %cond.end797
  br label %cond.end803

cond.false802:                                    ; preds = %cond.end797
  %518 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end803

cond.end803:                                      ; preds = %cond.false802, %cond.true801
  %cond804 = phi double [ 0.000000e+00, %cond.true801 ], [ %518, %cond.false802 ]
  store double %cond804, ptr %t, align 8, !tbaa !24
  %519 = load double, ptr %t, align 8, !tbaa !24
  %conv805 = fptoui double %519 to i32
  %520 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv805, ptr %520, align 4, !tbaa !8
  br label %sw.epilog968

sw.bb806:                                         ; preds = %if.end739
  %521 = load double, ptr %t, align 8, !tbaa !24
  %cmp807 = fcmp ogt double %521, 0.000000e+00
  br i1 %cmp807, label %cond.true809, label %cond.false811

cond.true809:                                     ; preds = %sw.bb806
  %522 = load double, ptr %t, align 8, !tbaa !24
  %add810 = fadd double %522, 5.000000e-01
  br label %cond.end812

cond.false811:                                    ; preds = %sw.bb806
  br label %cond.end812

cond.end812:                                      ; preds = %cond.false811, %cond.true809
  %cond813 = phi double [ %add810, %cond.true809 ], [ 0.000000e+00, %cond.false811 ]
  store double %cond813, ptr %t, align 8, !tbaa !24
  %523 = load double, ptr %t, align 8, !tbaa !24
  %cmp814 = fcmp ogt double %523, 0x43F0000000000000
  br i1 %cmp814, label %cond.true816, label %cond.false817

cond.true816:                                     ; preds = %cond.end812
  br label %cond.end818

cond.false817:                                    ; preds = %cond.end812
  %524 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end818

cond.end818:                                      ; preds = %cond.false817, %cond.true816
  %cond819 = phi double [ 0x43F0000000000000, %cond.true816 ], [ %524, %cond.false817 ]
  store double %cond819, ptr %t, align 8, !tbaa !24
  %525 = load double, ptr %t, align 8, !tbaa !24
  %cmp820 = fcmp olt double %525, 0.000000e+00
  br i1 %cmp820, label %cond.true822, label %cond.false823

cond.true822:                                     ; preds = %cond.end818
  br label %cond.end824

cond.false823:                                    ; preds = %cond.end818
  %526 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end824

cond.end824:                                      ; preds = %cond.false823, %cond.true822
  %cond825 = phi double [ 0.000000e+00, %cond.true822 ], [ %526, %cond.false823 ]
  store double %cond825, ptr %t, align 8, !tbaa !24
  %527 = load double, ptr %t, align 8, !tbaa !24
  %conv826 = fptoui double %527 to i64
  %528 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv826, ptr %528, align 8, !tbaa !11
  br label %sw.epilog968

sw.bb827:                                         ; preds = %if.end739
  %529 = load double, ptr %t, align 8, !tbaa !24
  %cmp828 = fcmp ogt double %529, 0.000000e+00
  br i1 %cmp828, label %cond.true830, label %cond.false832

cond.true830:                                     ; preds = %sw.bb827
  %530 = load double, ptr %t, align 8, !tbaa !24
  %add831 = fadd double %530, 5.000000e-01
  br label %cond.end833

cond.false832:                                    ; preds = %sw.bb827
  br label %cond.end833

cond.end833:                                      ; preds = %cond.false832, %cond.true830
  %cond834 = phi double [ %add831, %cond.true830 ], [ 0.000000e+00, %cond.false832 ]
  store double %cond834, ptr %t, align 8, !tbaa !24
  %531 = load double, ptr %t, align 8, !tbaa !24
  %cmp835 = fcmp ogt double %531, 0x43F0000000000000
  br i1 %cmp835, label %cond.true837, label %cond.false838

cond.true837:                                     ; preds = %cond.end833
  br label %cond.end839

cond.false838:                                    ; preds = %cond.end833
  %532 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end839

cond.end839:                                      ; preds = %cond.false838, %cond.true837
  %cond840 = phi double [ 0x43F0000000000000, %cond.true837 ], [ %532, %cond.false838 ]
  store double %cond840, ptr %t, align 8, !tbaa !24
  %533 = load double, ptr %t, align 8, !tbaa !24
  %cmp841 = fcmp olt double %533, 0.000000e+00
  br i1 %cmp841, label %cond.true843, label %cond.false844

cond.true843:                                     ; preds = %cond.end839
  br label %cond.end845

cond.false844:                                    ; preds = %cond.end839
  %534 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end845

cond.end845:                                      ; preds = %cond.false844, %cond.true843
  %cond846 = phi double [ 0.000000e+00, %cond.true843 ], [ %534, %cond.false844 ]
  store double %cond846, ptr %t, align 8, !tbaa !24
  %535 = load double, ptr %t, align 8, !tbaa !24
  %conv847 = fptoui double %535 to i64
  %536 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv847, ptr %536, align 8, !tbaa !27
  br label %sw.epilog968

sw.bb848:                                         ; preds = %if.end739
  %537 = load double, ptr %t, align 8, !tbaa !24
  %cmp849 = fcmp ogt double %537, 0.000000e+00
  br i1 %cmp849, label %cond.true851, label %cond.false853

cond.true851:                                     ; preds = %sw.bb848
  %538 = load double, ptr %t, align 8, !tbaa !24
  %add852 = fadd double %538, 5.000000e-01
  br label %cond.end855

cond.false853:                                    ; preds = %sw.bb848
  %539 = load double, ptr %t, align 8, !tbaa !24
  %sub854 = fsub double %539, 5.000000e-01
  br label %cond.end855

cond.end855:                                      ; preds = %cond.false853, %cond.true851
  %cond856 = phi double [ %add852, %cond.true851 ], [ %sub854, %cond.false853 ]
  store double %cond856, ptr %t, align 8, !tbaa !24
  %540 = load double, ptr %t, align 8, !tbaa !24
  %cmp857 = fcmp ogt double %540, 1.270000e+02
  br i1 %cmp857, label %cond.true859, label %cond.false860

cond.true859:                                     ; preds = %cond.end855
  br label %cond.end861

cond.false860:                                    ; preds = %cond.end855
  %541 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end861

cond.end861:                                      ; preds = %cond.false860, %cond.true859
  %cond862 = phi double [ 1.270000e+02, %cond.true859 ], [ %541, %cond.false860 ]
  store double %cond862, ptr %t, align 8, !tbaa !24
  %542 = load double, ptr %t, align 8, !tbaa !24
  %cmp863 = fcmp olt double %542, -1.280000e+02
  br i1 %cmp863, label %cond.true865, label %cond.false866

cond.true865:                                     ; preds = %cond.end861
  br label %cond.end867

cond.false866:                                    ; preds = %cond.end861
  %543 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end867

cond.end867:                                      ; preds = %cond.false866, %cond.true865
  %cond868 = phi double [ -1.280000e+02, %cond.true865 ], [ %543, %cond.false866 ]
  store double %cond868, ptr %t, align 8, !tbaa !24
  %544 = load double, ptr %t, align 8, !tbaa !24
  %conv869 = fptosi double %544 to i8
  %545 = load ptr, ptr %po, align 8, !tbaa !4
  store i8 %conv869, ptr %545, align 1, !tbaa !10
  br label %sw.epilog968

sw.bb870:                                         ; preds = %if.end739
  %546 = load double, ptr %t, align 8, !tbaa !24
  %cmp871 = fcmp ogt double %546, 0.000000e+00
  br i1 %cmp871, label %cond.true873, label %cond.false875

cond.true873:                                     ; preds = %sw.bb870
  %547 = load double, ptr %t, align 8, !tbaa !24
  %add874 = fadd double %547, 5.000000e-01
  br label %cond.end877

cond.false875:                                    ; preds = %sw.bb870
  %548 = load double, ptr %t, align 8, !tbaa !24
  %sub876 = fsub double %548, 5.000000e-01
  br label %cond.end877

cond.end877:                                      ; preds = %cond.false875, %cond.true873
  %cond878 = phi double [ %add874, %cond.true873 ], [ %sub876, %cond.false875 ]
  store double %cond878, ptr %t, align 8, !tbaa !24
  %549 = load double, ptr %t, align 8, !tbaa !24
  %cmp879 = fcmp ogt double %549, 3.276700e+04
  br i1 %cmp879, label %cond.true881, label %cond.false882

cond.true881:                                     ; preds = %cond.end877
  br label %cond.end883

cond.false882:                                    ; preds = %cond.end877
  %550 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end883

cond.end883:                                      ; preds = %cond.false882, %cond.true881
  %cond884 = phi double [ 3.276700e+04, %cond.true881 ], [ %550, %cond.false882 ]
  store double %cond884, ptr %t, align 8, !tbaa !24
  %551 = load double, ptr %t, align 8, !tbaa !24
  %cmp885 = fcmp olt double %551, -3.276800e+04
  br i1 %cmp885, label %cond.true887, label %cond.false888

cond.true887:                                     ; preds = %cond.end883
  br label %cond.end889

cond.false888:                                    ; preds = %cond.end883
  %552 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end889

cond.end889:                                      ; preds = %cond.false888, %cond.true887
  %cond890 = phi double [ -3.276800e+04, %cond.true887 ], [ %552, %cond.false888 ]
  store double %cond890, ptr %t, align 8, !tbaa !24
  %553 = load double, ptr %t, align 8, !tbaa !24
  %conv891 = fptosi double %553 to i16
  %554 = load ptr, ptr %po, align 8, !tbaa !4
  store i16 %conv891, ptr %554, align 2, !tbaa !25
  br label %sw.epilog968

sw.bb892:                                         ; preds = %if.end739
  %555 = load double, ptr %t, align 8, !tbaa !24
  %cmp893 = fcmp ogt double %555, 0.000000e+00
  br i1 %cmp893, label %cond.true895, label %cond.false897

cond.true895:                                     ; preds = %sw.bb892
  %556 = load double, ptr %t, align 8, !tbaa !24
  %add896 = fadd double %556, 5.000000e-01
  br label %cond.end899

cond.false897:                                    ; preds = %sw.bb892
  %557 = load double, ptr %t, align 8, !tbaa !24
  %sub898 = fsub double %557, 5.000000e-01
  br label %cond.end899

cond.end899:                                      ; preds = %cond.false897, %cond.true895
  %cond900 = phi double [ %add896, %cond.true895 ], [ %sub898, %cond.false897 ]
  store double %cond900, ptr %t, align 8, !tbaa !24
  %558 = load double, ptr %t, align 8, !tbaa !24
  %cmp901 = fcmp ogt double %558, 0x41DFFFFFFFC00000
  br i1 %cmp901, label %cond.true903, label %cond.false904

cond.true903:                                     ; preds = %cond.end899
  br label %cond.end905

cond.false904:                                    ; preds = %cond.end899
  %559 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end905

cond.end905:                                      ; preds = %cond.false904, %cond.true903
  %cond906 = phi double [ 0x41DFFFFFFFC00000, %cond.true903 ], [ %559, %cond.false904 ]
  store double %cond906, ptr %t, align 8, !tbaa !24
  %560 = load double, ptr %t, align 8, !tbaa !24
  %cmp907 = fcmp olt double %560, 0xC1E0000000000000
  br i1 %cmp907, label %cond.true909, label %cond.false910

cond.true909:                                     ; preds = %cond.end905
  br label %cond.end911

cond.false910:                                    ; preds = %cond.end905
  %561 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end911

cond.end911:                                      ; preds = %cond.false910, %cond.true909
  %cond912 = phi double [ 0xC1E0000000000000, %cond.true909 ], [ %561, %cond.false910 ]
  store double %cond912, ptr %t, align 8, !tbaa !24
  %562 = load double, ptr %t, align 8, !tbaa !24
  %conv913 = fptosi double %562 to i32
  %563 = load ptr, ptr %po, align 8, !tbaa !4
  store i32 %conv913, ptr %563, align 4, !tbaa !8
  br label %sw.epilog968

sw.bb914:                                         ; preds = %if.end739
  %564 = load double, ptr %t, align 8, !tbaa !24
  %cmp915 = fcmp ogt double %564, 0.000000e+00
  br i1 %cmp915, label %cond.true917, label %cond.false919

cond.true917:                                     ; preds = %sw.bb914
  %565 = load double, ptr %t, align 8, !tbaa !24
  %add918 = fadd double %565, 5.000000e-01
  br label %cond.end921

cond.false919:                                    ; preds = %sw.bb914
  %566 = load double, ptr %t, align 8, !tbaa !24
  %sub920 = fsub double %566, 5.000000e-01
  br label %cond.end921

cond.end921:                                      ; preds = %cond.false919, %cond.true917
  %cond922 = phi double [ %add918, %cond.true917 ], [ %sub920, %cond.false919 ]
  store double %cond922, ptr %t, align 8, !tbaa !24
  %567 = load double, ptr %t, align 8, !tbaa !24
  %cmp923 = fcmp ogt double %567, 0x43E0000000000000
  br i1 %cmp923, label %cond.true925, label %cond.false926

cond.true925:                                     ; preds = %cond.end921
  br label %cond.end927

cond.false926:                                    ; preds = %cond.end921
  %568 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end927

cond.end927:                                      ; preds = %cond.false926, %cond.true925
  %cond928 = phi double [ 0x43E0000000000000, %cond.true925 ], [ %568, %cond.false926 ]
  store double %cond928, ptr %t, align 8, !tbaa !24
  %569 = load double, ptr %t, align 8, !tbaa !24
  %cmp929 = fcmp olt double %569, 0xC3E0000000000000
  br i1 %cmp929, label %cond.true931, label %cond.false932

cond.true931:                                     ; preds = %cond.end927
  br label %cond.end933

cond.false932:                                    ; preds = %cond.end927
  %570 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end933

cond.end933:                                      ; preds = %cond.false932, %cond.true931
  %cond934 = phi double [ 0xC3E0000000000000, %cond.true931 ], [ %570, %cond.false932 ]
  store double %cond934, ptr %t, align 8, !tbaa !24
  %571 = load double, ptr %t, align 8, !tbaa !24
  %conv935 = fptosi double %571 to i64
  %572 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv935, ptr %572, align 8, !tbaa !11
  br label %sw.epilog968

sw.bb936:                                         ; preds = %if.end739
  %573 = load double, ptr %t, align 8, !tbaa !24
  %cmp937 = fcmp ogt double %573, 0.000000e+00
  br i1 %cmp937, label %cond.true939, label %cond.false941

cond.true939:                                     ; preds = %sw.bb936
  %574 = load double, ptr %t, align 8, !tbaa !24
  %add940 = fadd double %574, 5.000000e-01
  br label %cond.end943

cond.false941:                                    ; preds = %sw.bb936
  %575 = load double, ptr %t, align 8, !tbaa !24
  %sub942 = fsub double %575, 5.000000e-01
  br label %cond.end943

cond.end943:                                      ; preds = %cond.false941, %cond.true939
  %cond944 = phi double [ %add940, %cond.true939 ], [ %sub942, %cond.false941 ]
  store double %cond944, ptr %t, align 8, !tbaa !24
  %576 = load double, ptr %t, align 8, !tbaa !24
  %cmp945 = fcmp ogt double %576, 0x43E0000000000000
  br i1 %cmp945, label %cond.true947, label %cond.false948

cond.true947:                                     ; preds = %cond.end943
  br label %cond.end949

cond.false948:                                    ; preds = %cond.end943
  %577 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end949

cond.end949:                                      ; preds = %cond.false948, %cond.true947
  %cond950 = phi double [ 0x43E0000000000000, %cond.true947 ], [ %577, %cond.false948 ]
  store double %cond950, ptr %t, align 8, !tbaa !24
  %578 = load double, ptr %t, align 8, !tbaa !24
  %cmp951 = fcmp olt double %578, 0xC3E0000000000000
  br i1 %cmp951, label %cond.true953, label %cond.false954

cond.true953:                                     ; preds = %cond.end949
  br label %cond.end955

cond.false954:                                    ; preds = %cond.end949
  %579 = load double, ptr %t, align 8, !tbaa !24
  br label %cond.end955

cond.end955:                                      ; preds = %cond.false954, %cond.true953
  %cond956 = phi double [ 0xC3E0000000000000, %cond.true953 ], [ %579, %cond.false954 ]
  store double %cond956, ptr %t, align 8, !tbaa !24
  %580 = load double, ptr %t, align 8, !tbaa !24
  %conv957 = fptosi double %580 to i64
  %581 = load ptr, ptr %po, align 8, !tbaa !4
  store i64 %conv957, ptr %581, align 8, !tbaa !27
  br label %sw.epilog968

sw.bb958:                                         ; preds = %if.end739
  %582 = load double, ptr %t, align 8, !tbaa !24
  %conv959 = fptrunc double %582 to float
  %583 = load ptr, ptr %po, align 8, !tbaa !4
  store float %conv959, ptr %583, align 4, !tbaa !29
  br label %sw.epilog968

sw.bb960:                                         ; preds = %if.end739
  %584 = load double, ptr %t, align 8, !tbaa !24
  %585 = load ptr, ptr %po, align 8, !tbaa !4
  store double %584, ptr %585, align 8, !tbaa !24
  br label %sw.epilog968

sw.default961:                                    ; preds = %if.end739
  br label %do.body962

do.body962:                                       ; preds = %sw.default961
  %586 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool963 = icmp ne ptr %586, null
  br i1 %tobool963, label %if.then964, label %if.end965

if.then964:                                       ; preds = %do.body962
  %587 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %587)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end965

if.end965:                                        ; preds = %if.then964, %do.body962
  br label %do.cond966

do.cond966:                                       ; preds = %if.end965
  br label %do.end967

do.end967:                                        ; preds = %do.cond966
  %588 = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !4
  call void @PyErr_SetString(ptr noundef %588, ptr noundef @.str.2)
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup998

sw.epilog968:                                     ; preds = %sw.bb960, %sw.bb958, %cond.end955, %cond.end933, %cond.end911, %cond.end889, %cond.end867, %cond.end845, %cond.end824, %cond.end803, %cond.end782, %cond.end761, %sw.bb741
  call void @llvm.lifetime.start.p0(i64 4, ptr %_ii) #7
  %rank_m1 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 0
  %589 = load i32, ptr %rank_m1, align 8, !tbaa !31
  store i32 %589, ptr %_ii, align 4, !tbaa !8
  br label %for.cond969

for.cond969:                                      ; preds = %for.inc995, %sw.epilog968
  %590 = load i32, ptr %_ii, align 4, !tbaa !8
  %cmp970 = icmp sge i32 %590, 0
  br i1 %cmp970, label %for.body972, label %for.end997

for.body972:                                      ; preds = %for.cond969
  %coordinates973 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %591 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom = sext i32 %591 to i64
  %arrayidx974 = getelementptr inbounds [32 x i64], ptr %coordinates973, i64 0, i64 %idxprom
  %592 = load i64, ptr %arrayidx974, align 8, !tbaa !11
  %dimensions = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 1
  %593 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom975 = sext i32 %593 to i64
  %arrayidx976 = getelementptr inbounds [32 x i64], ptr %dimensions, i64 0, i64 %idxprom975
  %594 = load i64, ptr %arrayidx976, align 8, !tbaa !11
  %cmp977 = icmp slt i64 %592, %594
  br i1 %cmp977, label %if.then979, label %if.else987

if.then979:                                       ; preds = %for.body972
  %coordinates980 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %595 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom981 = sext i32 %595 to i64
  %arrayidx982 = getelementptr inbounds [32 x i64], ptr %coordinates980, i64 0, i64 %idxprom981
  %596 = load i64, ptr %arrayidx982, align 8, !tbaa !11
  %inc983 = add nsw i64 %596, 1
  store i64 %inc983, ptr %arrayidx982, align 8, !tbaa !11
  %strides = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 3
  %597 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom984 = sext i32 %597 to i64
  %arrayidx985 = getelementptr inbounds [32 x i64], ptr %strides, i64 0, i64 %idxprom984
  %598 = load i64, ptr %arrayidx985, align 8, !tbaa !11
  %599 = load ptr, ptr %po, align 8, !tbaa !4
  %add.ptr986 = getelementptr inbounds i8, ptr %599, i64 %598
  store ptr %add.ptr986, ptr %po, align 8, !tbaa !4
  br label %for.end997

if.else987:                                       ; preds = %for.body972
  %coordinates988 = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 2
  %600 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom989 = sext i32 %600 to i64
  %arrayidx990 = getelementptr inbounds [32 x i64], ptr %coordinates988, i64 0, i64 %idxprom989
  store i64 0, ptr %arrayidx990, align 8, !tbaa !11
  %backstrides = getelementptr inbounds %struct.NI_Iterator, ptr %io, i32 0, i32 4
  %601 = load i32, ptr %_ii, align 4, !tbaa !8
  %idxprom991 = sext i32 %601 to i64
  %arrayidx992 = getelementptr inbounds [32 x i64], ptr %backstrides, i64 0, i64 %idxprom991
  %602 = load i64, ptr %arrayidx992, align 8, !tbaa !11
  %603 = load ptr, ptr %po, align 8, !tbaa !4
  %idx.neg = sub i64 0, %602
  %add.ptr993 = getelementptr inbounds i8, ptr %603, i64 %idx.neg
  store ptr %add.ptr993, ptr %po, align 8, !tbaa !4
  br label %if.end994

if.end994:                                        ; preds = %if.else987
  br label %for.inc995

for.inc995:                                       ; preds = %if.end994
  %604 = load i32, ptr %_ii, align 4, !tbaa !8
  %dec996 = add nsw i32 %604, -1
  store i32 %dec996, ptr %_ii, align 4, !tbaa !8
  br label %for.cond969

for.end997:                                       ; preds = %if.then979, %for.cond969
  call void @llvm.lifetime.end.p0(i64 4, ptr %_ii) #7
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup998

cleanup998:                                       ; preds = %do.end967, %for.end997, %cleanup734
  call void @llvm.lifetime.end.p0(i64 8, ptr %zero) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %oo) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %edge) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7
  %cleanup.dest1002 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest1002, label %cleanup1118 [
    i32 0, label %cleanup.cont1003
    i32 9, label %exit
  ]

cleanup.cont1003:                                 ; preds = %cleanup998
  br label %for.inc1004

for.inc1004:                                      ; preds = %cleanup.cont1003
  %605 = load i64, ptr %kk, align 8, !tbaa !11
  %inc1005 = add nsw i64 %605, 1
  store i64 %inc1005, ptr %kk, align 8, !tbaa !11
  br label %for.cond552

for.end1006:                                      ; preds = %for.cond552
  br label %exit

exit:                                             ; preds = %for.end1006, %cleanup998, %cleanup452, %do.end491, %if.then472, %do.end233, %do.end204, %do.end175, %do.end138, %do.end106, %do.end77, %do.end58, %do.end29
  br label %do.body1007

do.body1007:                                      ; preds = %exit
  %606 = load ptr, ptr %_save, align 8, !tbaa !4
  %tobool1008 = icmp ne ptr %606, null
  br i1 %tobool1008, label %if.then1009, label %if.end1010

if.then1009:                                      ; preds = %do.body1007
  %607 = load ptr, ptr %_save, align 8, !tbaa !4
  call void @PyEval_RestoreThread(ptr noundef %607)
  store ptr null, ptr %_save, align 8, !tbaa !4
  br label %if.end1010

if.end1010:                                       ; preds = %if.then1009, %do.body1007
  br label %do.cond1011

do.cond1011:                                      ; preds = %if.end1010
  br label %do.end1012

do.end1012:                                       ; preds = %do.cond1011
  %608 = load ptr, ptr %zeros, align 8, !tbaa !4
  %tobool1013 = icmp ne ptr %608, null
  br i1 %tobool1013, label %if.then1014, label %if.end1024

if.then1014:                                      ; preds = %do.end1012
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1015

for.cond1015:                                     ; preds = %for.inc1021, %if.then1014
  %609 = load i64, ptr %jj, align 8, !tbaa !11
  %610 = load i32, ptr %rank, align 4, !tbaa !8
  %conv1016 = sext i32 %610 to i64
  %cmp1017 = icmp slt i64 %609, %conv1016
  br i1 %cmp1017, label %for.body1019, label %for.end1023

for.body1019:                                     ; preds = %for.cond1015
  %611 = load ptr, ptr %zeros, align 8, !tbaa !4
  %612 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1020 = getelementptr inbounds ptr, ptr %611, i64 %612
  %613 = load ptr, ptr %arrayidx1020, align 8, !tbaa !4
  call void @free(ptr noundef %613) #7
  br label %for.inc1021

for.inc1021:                                      ; preds = %for.body1019
  %614 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1022 = add nsw i64 %614, 1
  store i64 %inc1022, ptr %jj, align 8, !tbaa !11
  br label %for.cond1015

for.end1023:                                      ; preds = %for.cond1015
  %615 = load ptr, ptr %zeros, align 8, !tbaa !4
  call void @free(ptr noundef %615) #7
  br label %if.end1024

if.end1024:                                       ; preds = %for.end1023, %do.end1012
  %616 = load ptr, ptr %offsets, align 8, !tbaa !4
  %tobool1025 = icmp ne ptr %616, null
  br i1 %tobool1025, label %if.then1026, label %if.end1036

if.then1026:                                      ; preds = %if.end1024
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1027

for.cond1027:                                     ; preds = %for.inc1033, %if.then1026
  %617 = load i64, ptr %jj, align 8, !tbaa !11
  %618 = load i32, ptr %rank, align 4, !tbaa !8
  %conv1028 = sext i32 %618 to i64
  %cmp1029 = icmp slt i64 %617, %conv1028
  br i1 %cmp1029, label %for.body1031, label %for.end1035

for.body1031:                                     ; preds = %for.cond1027
  %619 = load ptr, ptr %offsets, align 8, !tbaa !4
  %620 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1032 = getelementptr inbounds ptr, ptr %619, i64 %620
  %621 = load ptr, ptr %arrayidx1032, align 8, !tbaa !4
  call void @free(ptr noundef %621) #7
  br label %for.inc1033

for.inc1033:                                      ; preds = %for.body1031
  %622 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1034 = add nsw i64 %622, 1
  store i64 %inc1034, ptr %jj, align 8, !tbaa !11
  br label %for.cond1027

for.end1035:                                      ; preds = %for.cond1027
  %623 = load ptr, ptr %offsets, align 8, !tbaa !4
  call void @free(ptr noundef %623) #7
  br label %if.end1036

if.end1036:                                       ; preds = %for.end1035, %if.end1024
  %624 = load ptr, ptr %splvals, align 8, !tbaa !4
  %tobool1037 = icmp ne ptr %624, null
  br i1 %tobool1037, label %if.then1038, label %if.end1062

if.then1038:                                      ; preds = %if.end1036
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1039

for.cond1039:                                     ; preds = %for.inc1059, %if.then1038
  %625 = load i64, ptr %jj, align 8, !tbaa !11
  %626 = load i32, ptr %rank, align 4, !tbaa !8
  %conv1040 = sext i32 %626 to i64
  %cmp1041 = icmp slt i64 %625, %conv1040
  br i1 %cmp1041, label %for.body1043, label %for.end1061

for.body1043:                                     ; preds = %for.cond1039
  %627 = load ptr, ptr %splvals, align 8, !tbaa !4
  %628 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1044 = getelementptr inbounds ptr, ptr %627, i64 %628
  %629 = load ptr, ptr %arrayidx1044, align 8, !tbaa !4
  %tobool1045 = icmp ne ptr %629, null
  br i1 %tobool1045, label %if.then1046, label %if.end1058

if.then1046:                                      ; preds = %for.body1043
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond1047

for.cond1047:                                     ; preds = %for.inc1054, %if.then1046
  %630 = load i64, ptr %hh, align 8, !tbaa !11
  %631 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1048 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %631
  %632 = load i64, ptr %arrayidx1048, align 8, !tbaa !11
  %cmp1049 = icmp slt i64 %630, %632
  br i1 %cmp1049, label %for.body1051, label %for.end1056

for.body1051:                                     ; preds = %for.cond1047
  %633 = load ptr, ptr %splvals, align 8, !tbaa !4
  %634 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1052 = getelementptr inbounds ptr, ptr %633, i64 %634
  %635 = load ptr, ptr %arrayidx1052, align 8, !tbaa !4
  %636 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx1053 = getelementptr inbounds ptr, ptr %635, i64 %636
  %637 = load ptr, ptr %arrayidx1053, align 8, !tbaa !4
  call void @free(ptr noundef %637) #7
  br label %for.inc1054

for.inc1054:                                      ; preds = %for.body1051
  %638 = load i64, ptr %hh, align 8, !tbaa !11
  %inc1055 = add nsw i64 %638, 1
  store i64 %inc1055, ptr %hh, align 8, !tbaa !11
  br label %for.cond1047

for.end1056:                                      ; preds = %for.cond1047
  %639 = load ptr, ptr %splvals, align 8, !tbaa !4
  %640 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1057 = getelementptr inbounds ptr, ptr %639, i64 %640
  %641 = load ptr, ptr %arrayidx1057, align 8, !tbaa !4
  call void @free(ptr noundef %641) #7
  br label %if.end1058

if.end1058:                                       ; preds = %for.end1056, %for.body1043
  br label %for.inc1059

for.inc1059:                                      ; preds = %if.end1058
  %642 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1060 = add nsw i64 %642, 1
  store i64 %inc1060, ptr %jj, align 8, !tbaa !11
  br label %for.cond1039

for.end1061:                                      ; preds = %for.cond1039
  %643 = load ptr, ptr %splvals, align 8, !tbaa !4
  call void @free(ptr noundef %643) #7
  br label %if.end1062

if.end1062:                                       ; preds = %for.end1061, %if.end1036
  %644 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %tobool1063 = icmp ne ptr %644, null
  br i1 %tobool1063, label %if.then1064, label %if.end1088

if.then1064:                                      ; preds = %if.end1062
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1065

for.cond1065:                                     ; preds = %for.inc1085, %if.then1064
  %645 = load i64, ptr %jj, align 8, !tbaa !11
  %646 = load i32, ptr %rank, align 4, !tbaa !8
  %conv1066 = sext i32 %646 to i64
  %cmp1067 = icmp slt i64 %645, %conv1066
  br i1 %cmp1067, label %for.body1069, label %for.end1087

for.body1069:                                     ; preds = %for.cond1065
  %647 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %648 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1070 = getelementptr inbounds ptr, ptr %647, i64 %648
  %649 = load ptr, ptr %arrayidx1070, align 8, !tbaa !4
  %tobool1071 = icmp ne ptr %649, null
  br i1 %tobool1071, label %if.then1072, label %if.end1084

if.then1072:                                      ; preds = %for.body1069
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond1073

for.cond1073:                                     ; preds = %for.inc1080, %if.then1072
  %650 = load i64, ptr %hh, align 8, !tbaa !11
  %651 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1074 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %651
  %652 = load i64, ptr %arrayidx1074, align 8, !tbaa !11
  %cmp1075 = icmp slt i64 %650, %652
  br i1 %cmp1075, label %for.body1077, label %for.end1082

for.body1077:                                     ; preds = %for.cond1073
  %653 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %654 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1078 = getelementptr inbounds ptr, ptr %653, i64 %654
  %655 = load ptr, ptr %arrayidx1078, align 8, !tbaa !4
  %656 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx1079 = getelementptr inbounds ptr, ptr %655, i64 %656
  %657 = load ptr, ptr %arrayidx1079, align 8, !tbaa !4
  call void @free(ptr noundef %657) #7
  br label %for.inc1080

for.inc1080:                                      ; preds = %for.body1077
  %658 = load i64, ptr %hh, align 8, !tbaa !11
  %inc1081 = add nsw i64 %658, 1
  store i64 %inc1081, ptr %hh, align 8, !tbaa !11
  br label %for.cond1073

for.end1082:                                      ; preds = %for.cond1073
  %659 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  %660 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1083 = getelementptr inbounds ptr, ptr %659, i64 %660
  %661 = load ptr, ptr %arrayidx1083, align 8, !tbaa !4
  call void @free(ptr noundef %661) #7
  br label %if.end1084

if.end1084:                                       ; preds = %for.end1082, %for.body1069
  br label %for.inc1085

for.inc1085:                                      ; preds = %if.end1084
  %662 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1086 = add nsw i64 %662, 1
  store i64 %inc1086, ptr %jj, align 8, !tbaa !11
  br label %for.cond1065

for.end1087:                                      ; preds = %for.cond1065
  %663 = load ptr, ptr %edge_offsets, align 8, !tbaa !4
  call void @free(ptr noundef %663) #7
  br label %if.end1088

if.end1088:                                       ; preds = %for.end1087, %if.end1062
  %664 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %tobool1089 = icmp ne ptr %664, null
  br i1 %tobool1089, label %if.then1090, label %if.end1114

if.then1090:                                      ; preds = %if.end1088
  store i64 0, ptr %jj, align 8, !tbaa !11
  br label %for.cond1091

for.cond1091:                                     ; preds = %for.inc1111, %if.then1090
  %665 = load i64, ptr %jj, align 8, !tbaa !11
  %666 = load i32, ptr %rank, align 4, !tbaa !8
  %conv1092 = sext i32 %666 to i64
  %cmp1093 = icmp slt i64 %665, %conv1092
  br i1 %cmp1093, label %for.body1095, label %for.end1113

for.body1095:                                     ; preds = %for.cond1091
  %667 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %668 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1096 = getelementptr inbounds ptr, ptr %667, i64 %668
  %669 = load ptr, ptr %arrayidx1096, align 8, !tbaa !4
  %tobool1097 = icmp ne ptr %669, null
  br i1 %tobool1097, label %if.then1098, label %if.end1110

if.then1098:                                      ; preds = %for.body1095
  store i64 0, ptr %hh, align 8, !tbaa !11
  br label %for.cond1099

for.cond1099:                                     ; preds = %for.inc1106, %if.then1098
  %670 = load i64, ptr %hh, align 8, !tbaa !11
  %671 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1100 = getelementptr inbounds [32 x i64], ptr %odimensions, i64 0, i64 %671
  %672 = load i64, ptr %arrayidx1100, align 8, !tbaa !11
  %cmp1101 = icmp slt i64 %670, %672
  br i1 %cmp1101, label %for.body1103, label %for.end1108

for.body1103:                                     ; preds = %for.cond1099
  %673 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %674 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1104 = getelementptr inbounds ptr, ptr %673, i64 %674
  %675 = load ptr, ptr %arrayidx1104, align 8, !tbaa !4
  %676 = load i64, ptr %hh, align 8, !tbaa !11
  %arrayidx1105 = getelementptr inbounds ptr, ptr %675, i64 %676
  %677 = load ptr, ptr %arrayidx1105, align 8, !tbaa !4
  call void @free(ptr noundef %677) #7
  br label %for.inc1106

for.inc1106:                                      ; preds = %for.body1103
  %678 = load i64, ptr %hh, align 8, !tbaa !11
  %inc1107 = add nsw i64 %678, 1
  store i64 %inc1107, ptr %hh, align 8, !tbaa !11
  br label %for.cond1099

for.end1108:                                      ; preds = %for.cond1099
  %679 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  %680 = load i64, ptr %jj, align 8, !tbaa !11
  %arrayidx1109 = getelementptr inbounds ptr, ptr %679, i64 %680
  %681 = load ptr, ptr %arrayidx1109, align 8, !tbaa !4
  call void @free(ptr noundef %681) #7
  br label %if.end1110

if.end1110:                                       ; preds = %for.end1108, %for.body1095
  br label %for.inc1111

for.inc1111:                                      ; preds = %if.end1110
  %682 = load i64, ptr %jj, align 8, !tbaa !11
  %inc1112 = add nsw i64 %682, 1
  store i64 %inc1112, ptr %jj, align 8, !tbaa !11
  br label %for.cond1091

for.end1113:                                      ; preds = %for.cond1091
  %683 = load ptr, ptr %edge_grid_const, align 8, !tbaa !4
  call void @free(ptr noundef %683) #7
  br label %if.end1114

if.end1114:                                       ; preds = %for.end1113, %if.end1088
  %684 = load ptr, ptr %foffsets, align 8, !tbaa !4
  call void @free(ptr noundef %684) #7
  %685 = load ptr, ptr %fcoordinates, align 8, !tbaa !4
  call void @free(ptr noundef %685) #7
  %call1115 = call ptr @PyErr_Occurred()
  %tobool1116 = icmp ne ptr %call1115, null
  %686 = zext i1 %tobool1116 to i64
  %cond1117 = select i1 %tobool1116, i32 0, i32 1
  store i32 %cond1117, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup1118

cleanup1118:                                      ; preds = %if.end1114, %cleanup998, %cleanup452
  call void @llvm.lifetime.end.p0(i64 8, ptr %_save) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %shifts) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %zooms) #7
  call void @llvm.lifetime.end.p0(i64 1032, ptr %io) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %splvals) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %edge_grid_const) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %istrides) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %idimensions) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %odimensions) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %filter_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %kk) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hh) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %foffsets) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fcoordinates) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr %ftmp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %edge_offsets) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %offsets) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeros) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %po) #7
  %687 = load i32, ptr %retval, align 4
  ret i32 %687
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
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
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"", !5, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !15, i64 64, !5, i64 1096, !6, i64 1104, !6, i64 1108, !16, i64 1112}
!15 = !{!"", !9, i64 0, !6, i64 8, !6, i64 264, !6, i64 520, !6, i64 776}
!16 = !{!"double", !6, i64 0}
!17 = !{!14, !12, i64 16}
!18 = !{!14, !12, i64 32}
!19 = !{!14, !12, i64 40}
!20 = !{!21, !9, i64 24}
!21 = !{!"tagPyArrayObject_fields", !22, i64 0, !5, i64 16, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !9, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!22 = !{!"_object", !12, i64 0, !5, i64 8}
!23 = !{!21, !5, i64 32}
!24 = !{!16, !16, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"long long", !6, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !6, i64 0}
!31 = !{!15, !9, i64 0}
!32 = !{!21, !5, i64 16}
!33 = !{!21, !5, i64 40}
!34 = !{!21, !5, i64 56}
!35 = !{!36, !9, i64 28}
!36 = !{!"_PyArray_Descr", !22, i64 0, !5, i64 16, !6, i64 24, !6, i64 25, !6, i64 26, !6, i64 27, !9, i64 28, !9, i64 32, !9, i64 36, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !12, i64 88}
