; ModuleID = 'samples/612.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/inv/tri/uu/flamec/FLA_Trinv_uu_opt_var4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Trinv_uu_opt_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A) #0 {
entry:
  %datatype = alloca i32, align 4
  %mn_A = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_A18 = alloca ptr, align 8
  %buff_A44 = alloca ptr, align 8
  %buff_A70 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #3
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %mn_A, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %rs_A, align 4, !tbaa !4
  %call4 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %cs_A, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb17
    i32 102, label %sw.bb43
    i32 103, label %sw.bb69
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #3
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype6 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype6, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base8 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base8, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base9 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base9, align 8, !tbaa !8
  %buffer10 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer10, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base11 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base11, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr12 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base13, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul14 = mul i64 %10, %12
  %add.ptr15 = getelementptr inbounds float, ptr %add.ptr12, i64 %mul14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr15, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8, !tbaa !19
  %13 = load i32, ptr %mn_A, align 4, !tbaa !4
  %14 = load ptr, ptr %buff_A, align 8, !tbaa !19
  %15 = load i32, ptr %rs_A, align 4, !tbaa !4
  %16 = load i32, ptr %cs_A, align 4, !tbaa !4
  %call16 = call i32 @FLA_Trinv_uu_ops_var4(i32 noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #3
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A18) #3
  %base19 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %17 = load ptr, ptr %base19, align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %18, 105
  br i1 %cmp21, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %sw.bb17
  %base24 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %19 = load ptr, ptr %base24, align 8, !tbaa !8
  %buffer25 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %buffer25, align 8, !tbaa !14
  %add.ptr26 = getelementptr inbounds i8, ptr %20, i64 16
  br label %cond.end40

cond.false27:                                     ; preds = %sw.bb17
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %21 = load ptr, ptr %base28, align 8, !tbaa !8
  %buffer29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %buffer29, align 8, !tbaa !14
  %offn30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %23 = load i64, ptr %offn30, align 8, !tbaa !15
  %base31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %24 = load ptr, ptr %base31, align 8, !tbaa !8
  %cs32 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 5
  %25 = load i64, ptr %cs32, align 8, !tbaa !16
  %mul33 = mul i64 %23, %25
  %add.ptr34 = getelementptr inbounds double, ptr %22, i64 %mul33
  %offm35 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %26 = load i64, ptr %offm35, align 8, !tbaa !17
  %base36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %27 = load ptr, ptr %base36, align 8, !tbaa !8
  %rs37 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 4
  %28 = load i64, ptr %rs37, align 8, !tbaa !18
  %mul38 = mul i64 %26, %28
  %add.ptr39 = getelementptr inbounds double, ptr %add.ptr34, i64 %mul38
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false27, %cond.true23
  %cond41 = phi ptr [ %add.ptr26, %cond.true23 ], [ %add.ptr39, %cond.false27 ]
  store ptr %cond41, ptr %buff_A18, align 8, !tbaa !19
  %29 = load i32, ptr %mn_A, align 4, !tbaa !4
  %30 = load ptr, ptr %buff_A18, align 8, !tbaa !19
  %31 = load i32, ptr %rs_A, align 4, !tbaa !4
  %32 = load i32, ptr %cs_A, align 4, !tbaa !4
  %call42 = call i32 @FLA_Trinv_uu_opd_var4(i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A18) #3
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A44) #3
  %base45 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %33 = load ptr, ptr %base45, align 8, !tbaa !8
  %datatype46 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %datatype46, align 8, !tbaa !12
  %cmp47 = icmp eq i32 %34, 105
  br i1 %cmp47, label %cond.true49, label %cond.false53

cond.true49:                                      ; preds = %sw.bb43
  %base50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %35 = load ptr, ptr %base50, align 8, !tbaa !8
  %buffer51 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %buffer51, align 8, !tbaa !14
  %add.ptr52 = getelementptr inbounds i8, ptr %36, i64 24
  br label %cond.end66

cond.false53:                                     ; preds = %sw.bb43
  %base54 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %37 = load ptr, ptr %base54, align 8, !tbaa !8
  %buffer55 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %buffer55, align 8, !tbaa !14
  %offn56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %39 = load i64, ptr %offn56, align 8, !tbaa !15
  %base57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %40 = load ptr, ptr %base57, align 8, !tbaa !8
  %cs58 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %cs58, align 8, !tbaa !16
  %mul59 = mul i64 %39, %41
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %38, i64 %mul59
  %offm61 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %42 = load i64, ptr %offm61, align 8, !tbaa !17
  %base62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %43 = load ptr, ptr %base62, align 8, !tbaa !8
  %rs63 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %43, i32 0, i32 4
  %44 = load i64, ptr %rs63, align 8, !tbaa !18
  %mul64 = mul i64 %42, %44
  %add.ptr65 = getelementptr inbounds %struct.scomplex, ptr %add.ptr60, i64 %mul64
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false53, %cond.true49
  %cond67 = phi ptr [ %add.ptr52, %cond.true49 ], [ %add.ptr65, %cond.false53 ]
  store ptr %cond67, ptr %buff_A44, align 8, !tbaa !19
  %45 = load i32, ptr %mn_A, align 4, !tbaa !4
  %46 = load ptr, ptr %buff_A44, align 8, !tbaa !19
  %47 = load i32, ptr %rs_A, align 4, !tbaa !4
  %48 = load i32, ptr %cs_A, align 4, !tbaa !4
  %call68 = call i32 @FLA_Trinv_uu_opc_var4(i32 noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A44) #3
  br label %sw.epilog

sw.bb69:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A70) #3
  %base71 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %49 = load ptr, ptr %base71, align 8, !tbaa !8
  %datatype72 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %datatype72, align 8, !tbaa !12
  %cmp73 = icmp eq i32 %50, 105
  br i1 %cmp73, label %cond.true75, label %cond.false79

cond.true75:                                      ; preds = %sw.bb69
  %base76 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %51 = load ptr, ptr %base76, align 8, !tbaa !8
  %buffer77 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer77, align 8, !tbaa !14
  %add.ptr78 = getelementptr inbounds i8, ptr %52, i64 32
  br label %cond.end92

cond.false79:                                     ; preds = %sw.bb69
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %53 = load ptr, ptr %base80, align 8, !tbaa !8
  %buffer81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %buffer81, align 8, !tbaa !14
  %offn82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %55 = load i64, ptr %offn82, align 8, !tbaa !15
  %base83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %56 = load ptr, ptr %base83, align 8, !tbaa !8
  %cs84 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %cs84, align 8, !tbaa !16
  %mul85 = mul i64 %55, %57
  %add.ptr86 = getelementptr inbounds %struct.dcomplex, ptr %54, i64 %mul85
  %offm87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %58 = load i64, ptr %offm87, align 8, !tbaa !17
  %base88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %59 = load ptr, ptr %base88, align 8, !tbaa !8
  %rs89 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %rs89, align 8, !tbaa !18
  %mul90 = mul i64 %58, %60
  %add.ptr91 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr86, i64 %mul90
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false79, %cond.true75
  %cond93 = phi ptr [ %add.ptr78, %cond.true75 ], [ %add.ptr91, %cond.false79 ]
  store ptr %cond93, ptr %buff_A70, align 8, !tbaa !19
  %61 = load i32, ptr %mn_A, align 4, !tbaa !4
  %62 = load ptr, ptr %buff_A70, align 8, !tbaa !19
  %63 = load i32, ptr %rs_A, align 4, !tbaa !4
  %64 = load i32, ptr %cs_A, align 4, !tbaa !4
  %call94 = call i32 @FLA_Trinv_uu_opz_var4(i32 noundef %61, ptr noundef %62, i32 noundef %63, i32 noundef %64)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A70) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end92, %cond.end66, %cond.end40, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Trinv_uu_ops_var4(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds float, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %13 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #3
  %14 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %15 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds float, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul8 = mul nsw i32 0, %16
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds float, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %17 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %18 = load i32, ptr %i, align 4, !tbaa !4
  %19 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %18, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds float, ptr %17, i64 %idx.ext12
  %20 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul14 = mul nsw i32 0, %20
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds float, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %22, 1
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul17 = mul nsw i32 %add, %23
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds float, ptr %21, i64 %idx.ext18
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul20 = mul nsw i32 0, %24
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds float, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %add23 = add nsw i32 %26, 1
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul24 = mul nsw i32 %add23, %27
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds float, ptr %25, i64 %idx.ext25
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul27 = mul nsw i32 %28, %29
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr26, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %add30 = add nsw i32 %31, 1
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 %add30, %32
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds float, ptr %30, i64 %idx.ext32
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add34 = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %add34, %34
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds float, ptr %add.ptr33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_ahead) #3
  %35 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %35, %36
  %sub38 = sub nsw i32 %sub, 1
  store i32 %sub38, ptr %mn_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #3
  %37 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %37, ptr %mn_behind, align 4, !tbaa !4
  %38 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %39 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %40 = load ptr, ptr %a12t, align 8, !tbaa !19
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_sscalv(i32 noundef 500, i32 noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %43 = load ptr, ptr %A22, align 8, !tbaa !19
  %44 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %45 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %46 = load ptr, ptr %a12t, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_strsv(i32 noundef 201, i32 noundef 101, i32 noundef 401, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47)
  %48 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %49 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %50 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %51 = load ptr, ptr %a01, align 8, !tbaa !19
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %53 = load ptr, ptr %a12t, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %55 = load ptr, ptr %A02, align 8, !tbaa !19
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_sger(i32 noundef 500, i32 noundef 500, i32 noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef %52, ptr noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56, i32 noundef %57)
  %58 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %59 = load ptr, ptr %A00, align 8, !tbaa !19
  %60 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %62 = load ptr, ptr %a01, align 8, !tbaa !19
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_strmv(i32 noundef 201, i32 noundef 100, i32 noundef 401, i32 noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, i32 noundef %63)
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Trinv_uu_opd_var4(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds double, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds double, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %13 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #3
  %14 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %15 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds double, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul8 = mul nsw i32 0, %16
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds double, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %17 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %18 = load i32, ptr %i, align 4, !tbaa !4
  %19 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %18, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds double, ptr %17, i64 %idx.ext12
  %20 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul14 = mul nsw i32 0, %20
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds double, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %22, 1
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul17 = mul nsw i32 %add, %23
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds double, ptr %21, i64 %idx.ext18
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul20 = mul nsw i32 0, %24
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds double, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %add23 = add nsw i32 %26, 1
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul24 = mul nsw i32 %add23, %27
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds double, ptr %25, i64 %idx.ext25
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul27 = mul nsw i32 %28, %29
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds double, ptr %add.ptr26, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %add30 = add nsw i32 %31, 1
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 %add30, %32
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds double, ptr %30, i64 %idx.ext32
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add34 = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %add34, %34
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds double, ptr %add.ptr33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_ahead) #3
  %35 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %35, %36
  %sub38 = sub nsw i32 %sub, 1
  store i32 %sub38, ptr %mn_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #3
  %37 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %37, ptr %mn_behind, align 4, !tbaa !4
  %38 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %39 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %40 = load ptr, ptr %a12t, align 8, !tbaa !19
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dscalv(i32 noundef 500, i32 noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %43 = load ptr, ptr %A22, align 8, !tbaa !19
  %44 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %45 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %46 = load ptr, ptr %a12t, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dtrsv(i32 noundef 201, i32 noundef 101, i32 noundef 401, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47)
  %48 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %49 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %50 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %51 = load ptr, ptr %a01, align 8, !tbaa !19
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %53 = load ptr, ptr %a12t, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %55 = load ptr, ptr %A02, align 8, !tbaa !19
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dger(i32 noundef 500, i32 noundef 500, i32 noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef %52, ptr noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56, i32 noundef %57)
  %58 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %59 = load ptr, ptr %A00, align 8, !tbaa !19
  %60 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %62 = load ptr, ptr %a01, align 8, !tbaa !19
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_dtrmv(i32 noundef 201, i32 noundef 100, i32 noundef 401, i32 noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, i32 noundef %63)
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #3
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Trinv_uu_opc_var4(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %13 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #3
  %14 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %15 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds %struct.scomplex, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul8 = mul nsw i32 0, %16
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds %struct.scomplex, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %17 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %18 = load i32, ptr %i, align 4, !tbaa !4
  %19 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %18, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %idx.ext12
  %20 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul14 = mul nsw i32 0, %20
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds %struct.scomplex, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %22, 1
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul17 = mul nsw i32 %add, %23
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %idx.ext18
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul20 = mul nsw i32 0, %24
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %add23 = add nsw i32 %26, 1
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul24 = mul nsw i32 %add23, %27
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds %struct.scomplex, ptr %25, i64 %idx.ext25
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul27 = mul nsw i32 %28, %29
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %add.ptr26, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %add30 = add nsw i32 %31, 1
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 %add30, %32
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds %struct.scomplex, ptr %30, i64 %idx.ext32
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add34 = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %add34, %34
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %add.ptr33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_ahead) #3
  %35 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %35, %36
  %sub38 = sub nsw i32 %sub, 1
  store i32 %sub38, ptr %mn_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #3
  %37 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %37, ptr %mn_behind, align 4, !tbaa !4
  %38 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %39 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %40 = load ptr, ptr %a12t, align 8, !tbaa !19
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cscalv(i32 noundef 500, i32 noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %43 = load ptr, ptr %A22, align 8, !tbaa !19
  %44 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %45 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %46 = load ptr, ptr %a12t, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_ctrsv(i32 noundef 201, i32 noundef 101, i32 noundef 401, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47)
  %48 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %49 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %50 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %51 = load ptr, ptr %a01, align 8, !tbaa !19
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %53 = load ptr, ptr %a12t, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %55 = load ptr, ptr %A02, align 8, !tbaa !19
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cger(i32 noundef 500, i32 noundef 500, i32 noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef %52, ptr noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56, i32 noundef %57)
  %58 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %59 = load ptr, ptr %A00, align 8, !tbaa !19
  %60 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %62 = load ptr, ptr %a01, align 8, !tbaa !19
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_ctrmv(i32 noundef 201, i32 noundef 100, i32 noundef 401, i32 noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, i32 noundef %63)
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #3
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Trinv_uu_opz_var4(i32 noundef %mn_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A) #0 {
entry:
  %mn_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %mn_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %mn_A, ptr %mn_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #3
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %i, align 4, !tbaa !4
  %13 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #3
  %14 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %15 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul6 = mul nsw i32 0, %15
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr7 = getelementptr inbounds %struct.dcomplex, ptr %14, i64 %idx.ext
  %16 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul8 = mul nsw i32 0, %16
  %idx.ext9 = sext i32 %mul8 to i64
  %add.ptr10 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr7, i64 %idx.ext9
  store ptr %add.ptr10, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #3
  %17 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %18 = load i32, ptr %i, align 4, !tbaa !4
  %19 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul11 = mul nsw i32 %18, %19
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %idx.ext12
  %20 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul14 = mul nsw i32 0, %20
  %idx.ext15 = sext i32 %mul14 to i64
  %add.ptr16 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr13, i64 %idx.ext15
  store ptr %add.ptr16, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #3
  %21 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %22 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %22, 1
  %23 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul17 = mul nsw i32 %add, %23
  %idx.ext18 = sext i32 %mul17 to i64
  %add.ptr19 = getelementptr inbounds %struct.dcomplex, ptr %21, i64 %idx.ext18
  %24 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul20 = mul nsw i32 0, %24
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr19, i64 %idx.ext21
  store ptr %add.ptr22, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #3
  %25 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %26 = load i32, ptr %i, align 4, !tbaa !4
  %add23 = add nsw i32 %26, 1
  %27 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul24 = mul nsw i32 %add23, %27
  %idx.ext25 = sext i32 %mul24 to i64
  %add.ptr26 = getelementptr inbounds %struct.dcomplex, ptr %25, i64 %idx.ext25
  %28 = load i32, ptr %i, align 4, !tbaa !4
  %29 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul27 = mul nsw i32 %28, %29
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr26, i64 %idx.ext28
  store ptr %add.ptr29, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #3
  %30 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %add30 = add nsw i32 %31, 1
  %32 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 %add30, %32
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds %struct.dcomplex, ptr %30, i64 %idx.ext32
  %33 = load i32, ptr %i, align 4, !tbaa !4
  %add34 = add nsw i32 %33, 1
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %add34, %34
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr33, i64 %idx.ext36
  store ptr %add.ptr37, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_ahead) #3
  %35 = load i32, ptr %mn_A.addr, align 4, !tbaa !4
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %35, %36
  %sub38 = sub nsw i32 %sub, 1
  store i32 %sub38, ptr %mn_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #3
  %37 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %37, ptr %mn_behind, align 4, !tbaa !4
  %38 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %39 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %40 = load ptr, ptr %a12t, align 8, !tbaa !19
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zscalv(i32 noundef 500, i32 noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41)
  %42 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %43 = load ptr, ptr %A22, align 8, !tbaa !19
  %44 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %45 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %46 = load ptr, ptr %a12t, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_ztrsv(i32 noundef 201, i32 noundef 101, i32 noundef 401, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47)
  %48 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %49 = load i32, ptr %mn_ahead, align 4, !tbaa !4
  %50 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %51 = load ptr, ptr %a01, align 8, !tbaa !19
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %53 = load ptr, ptr %a12t, align 8, !tbaa !19
  %54 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %55 = load ptr, ptr %A02, align 8, !tbaa !19
  %56 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zger(i32 noundef 500, i32 noundef 500, i32 noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef %52, ptr noundef %53, i32 noundef %54, ptr noundef %55, i32 noundef %56, i32 noundef %57)
  %58 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %59 = load ptr, ptr %A00, align 8, !tbaa !19
  %60 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %62 = load ptr, ptr %a01, align 8, !tbaa !19
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_ztrmv(i32 noundef 201, i32 noundef 100, i32 noundef 401, i32 noundef %58, ptr noundef %59, i32 noundef %60, i32 noundef %61, ptr noundef %62, i32 noundef %63)
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_ahead) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #3
  ret i32 -1
}

declare void @bl1_sscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_strsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_strmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dtrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_dtrmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ctrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_ctrmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ztrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_ztrmv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 48}
!9 = !{!"FLA_Obj_view", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !11, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"FLA_Obj_struct", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !5, i64 96, !5, i64 100}
!14 = !{!13, !11, i64 88}
!15 = !{!9, !10, i64 8}
!16 = !{!13, !10, i64 32}
!17 = !{!9, !10, i64 0}
!18 = !{!13, !10, i64 24}
!19 = !{!11, !11, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
