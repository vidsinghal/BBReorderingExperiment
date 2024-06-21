; ModuleID = 'samples/437.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/red/bidiagut/u/flamec/FLA_Bidiag_UT_u_fus_var3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Bidiag_UT_u_ofu_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TU, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TV) #0 {
entry:
  %call = call i32 @FLA_Bidiag_UT_u_step_ofu_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TU, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TV)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Bidiag_UT_u_step_ofu_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %S) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_A = alloca i32, align 4
  %m_TS = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %rs_T = alloca i32, align 4
  %cs_T = alloca i32, align 4
  %rs_S = alloca i32, align 4
  %cs_S = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_T = alloca ptr, align 8
  %buff_S = alloca ptr, align 8
  %buff_A76 = alloca ptr, align 8
  %buff_T100 = alloca ptr, align 8
  %buff_S124 = alloca ptr, align 8
  %buff_A150 = alloca ptr, align 8
  %buff_T174 = alloca ptr, align 8
  %buff_S198 = alloca ptr, align 8
  %buff_A224 = alloca ptr, align 8
  %buff_T248 = alloca ptr, align 8
  %buff_S272 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_TS) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_T) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_T) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_S) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_S) #5
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n_A, align 4, !tbaa !4
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %m_TS, align 4, !tbaa !4
  %call6 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %rs_A, align 4, !tbaa !4
  %call8 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %cs_A, align 4, !tbaa !4
  %call10 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr %rs_T, align 4, !tbaa !4
  %call12 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %cs_T, align 4, !tbaa !4
  %call14 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %S)
  %conv15 = trunc i64 %call14 to i32
  store i32 %conv15, ptr %rs_S, align 4, !tbaa !4
  %call16 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %S)
  %conv17 = trunc i64 %call16 to i32
  store i32 %conv17, ptr %cs_S, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb75
    i32 102, label %sw.bb149
    i32 103, label %sw.bb223
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #5
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype18 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype18, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base20, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base21, align 8, !tbaa !8
  %buffer22 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer22, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base23 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base23, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr24 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base25, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul26 = mul i64 %10, %12
  %add.ptr27 = getelementptr inbounds float, ptr %add.ptr24, i64 %mul26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr27, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T) #5
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %13 = load ptr, ptr %base28, align 8, !tbaa !8
  %datatype29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype29, align 8, !tbaa !12
  %cmp30 = icmp eq i32 %14, 105
  br i1 %cmp30, label %cond.true32, label %cond.false36

cond.true32:                                      ; preds = %cond.end
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %15 = load ptr, ptr %base33, align 8, !tbaa !8
  %buffer34 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer34, align 8, !tbaa !14
  %add.ptr35 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end49

cond.false36:                                     ; preds = %cond.end
  %base37 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %17 = load ptr, ptr %base37, align 8, !tbaa !8
  %buffer38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer38, align 8, !tbaa !14
  %offn39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %19 = load i64, ptr %offn39, align 8, !tbaa !15
  %base40 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %20 = load ptr, ptr %base40, align 8, !tbaa !8
  %cs41 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs41, align 8, !tbaa !16
  %mul42 = mul i64 %19, %21
  %add.ptr43 = getelementptr inbounds float, ptr %18, i64 %mul42
  %offm44 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %22 = load i64, ptr %offm44, align 8, !tbaa !17
  %base45 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %23 = load ptr, ptr %base45, align 8, !tbaa !8
  %rs46 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs46, align 8, !tbaa !18
  %mul47 = mul i64 %22, %24
  %add.ptr48 = getelementptr inbounds float, ptr %add.ptr43, i64 %mul47
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false36, %cond.true32
  %cond50 = phi ptr [ %add.ptr35, %cond.true32 ], [ %add.ptr48, %cond.false36 ]
  store ptr %cond50, ptr %buff_T, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_S) #5
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %25 = load ptr, ptr %base51, align 8, !tbaa !8
  %datatype52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype52, align 8, !tbaa !12
  %cmp53 = icmp eq i32 %26, 105
  br i1 %cmp53, label %cond.true55, label %cond.false59

cond.true55:                                      ; preds = %cond.end49
  %base56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %27 = load ptr, ptr %base56, align 8, !tbaa !8
  %buffer57 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer57, align 8, !tbaa !14
  %add.ptr58 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end72

cond.false59:                                     ; preds = %cond.end49
  %base60 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %29 = load ptr, ptr %base60, align 8, !tbaa !8
  %buffer61 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer61, align 8, !tbaa !14
  %offn62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %31 = load i64, ptr %offn62, align 8, !tbaa !15
  %base63 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %32 = load ptr, ptr %base63, align 8, !tbaa !8
  %cs64 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs64, align 8, !tbaa !16
  %mul65 = mul i64 %31, %33
  %add.ptr66 = getelementptr inbounds float, ptr %30, i64 %mul65
  %offm67 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %34 = load i64, ptr %offm67, align 8, !tbaa !17
  %base68 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %35 = load ptr, ptr %base68, align 8, !tbaa !8
  %rs69 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs69, align 8, !tbaa !18
  %mul70 = mul i64 %34, %36
  %add.ptr71 = getelementptr inbounds float, ptr %add.ptr66, i64 %mul70
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false59, %cond.true55
  %cond73 = phi ptr [ %add.ptr58, %cond.true55 ], [ %add.ptr71, %cond.false59 ]
  store ptr %cond73, ptr %buff_S, align 8, !tbaa !19
  %37 = load i32, ptr %m_A, align 4, !tbaa !4
  %38 = load i32, ptr %n_A, align 4, !tbaa !4
  %39 = load i32, ptr %m_TS, align 4, !tbaa !4
  %40 = load ptr, ptr %buff_A, align 8, !tbaa !19
  %41 = load i32, ptr %rs_A, align 4, !tbaa !4
  %42 = load i32, ptr %cs_A, align 4, !tbaa !4
  %43 = load ptr, ptr %buff_T, align 8, !tbaa !19
  %44 = load i32, ptr %rs_T, align 4, !tbaa !4
  %45 = load i32, ptr %cs_T, align 4, !tbaa !4
  %46 = load ptr, ptr %buff_S, align 8, !tbaa !19
  %47 = load i32, ptr %rs_S, align 4, !tbaa !4
  %48 = load i32, ptr %cs_S, align 4, !tbaa !4
  %call74 = call i32 @FLA_Bidiag_UT_u_step_ofs_var3(i32 noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %40, i32 noundef %41, i32 noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_S) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #5
  br label %sw.epilog

sw.bb75:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A76) #5
  %base77 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %49 = load ptr, ptr %base77, align 8, !tbaa !8
  %datatype78 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %datatype78, align 8, !tbaa !12
  %cmp79 = icmp eq i32 %50, 105
  br i1 %cmp79, label %cond.true81, label %cond.false85

cond.true81:                                      ; preds = %sw.bb75
  %base82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %51 = load ptr, ptr %base82, align 8, !tbaa !8
  %buffer83 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %buffer83, align 8, !tbaa !14
  %add.ptr84 = getelementptr inbounds i8, ptr %52, i64 16
  br label %cond.end98

cond.false85:                                     ; preds = %sw.bb75
  %base86 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %53 = load ptr, ptr %base86, align 8, !tbaa !8
  %buffer87 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %buffer87, align 8, !tbaa !14
  %offn88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %55 = load i64, ptr %offn88, align 8, !tbaa !15
  %base89 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %56 = load ptr, ptr %base89, align 8, !tbaa !8
  %cs90 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %cs90, align 8, !tbaa !16
  %mul91 = mul i64 %55, %57
  %add.ptr92 = getelementptr inbounds double, ptr %54, i64 %mul91
  %offm93 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %58 = load i64, ptr %offm93, align 8, !tbaa !17
  %base94 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %59 = load ptr, ptr %base94, align 8, !tbaa !8
  %rs95 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %rs95, align 8, !tbaa !18
  %mul96 = mul i64 %58, %60
  %add.ptr97 = getelementptr inbounds double, ptr %add.ptr92, i64 %mul96
  br label %cond.end98

cond.end98:                                       ; preds = %cond.false85, %cond.true81
  %cond99 = phi ptr [ %add.ptr84, %cond.true81 ], [ %add.ptr97, %cond.false85 ]
  store ptr %cond99, ptr %buff_A76, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T100) #5
  %base101 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %61 = load ptr, ptr %base101, align 8, !tbaa !8
  %datatype102 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %datatype102, align 8, !tbaa !12
  %cmp103 = icmp eq i32 %62, 105
  br i1 %cmp103, label %cond.true105, label %cond.false109

cond.true105:                                     ; preds = %cond.end98
  %base106 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %63 = load ptr, ptr %base106, align 8, !tbaa !8
  %buffer107 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %buffer107, align 8, !tbaa !14
  %add.ptr108 = getelementptr inbounds i8, ptr %64, i64 16
  br label %cond.end122

cond.false109:                                    ; preds = %cond.end98
  %base110 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %65 = load ptr, ptr %base110, align 8, !tbaa !8
  %buffer111 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 12
  %66 = load ptr, ptr %buffer111, align 8, !tbaa !14
  %offn112 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %67 = load i64, ptr %offn112, align 8, !tbaa !15
  %base113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %68 = load ptr, ptr %base113, align 8, !tbaa !8
  %cs114 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %68, i32 0, i32 5
  %69 = load i64, ptr %cs114, align 8, !tbaa !16
  %mul115 = mul i64 %67, %69
  %add.ptr116 = getelementptr inbounds double, ptr %66, i64 %mul115
  %offm117 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %70 = load i64, ptr %offm117, align 8, !tbaa !17
  %base118 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %71 = load ptr, ptr %base118, align 8, !tbaa !8
  %rs119 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 4
  %72 = load i64, ptr %rs119, align 8, !tbaa !18
  %mul120 = mul i64 %70, %72
  %add.ptr121 = getelementptr inbounds double, ptr %add.ptr116, i64 %mul120
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false109, %cond.true105
  %cond123 = phi ptr [ %add.ptr108, %cond.true105 ], [ %add.ptr121, %cond.false109 ]
  store ptr %cond123, ptr %buff_T100, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_S124) #5
  %base125 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %73 = load ptr, ptr %base125, align 8, !tbaa !8
  %datatype126 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %datatype126, align 8, !tbaa !12
  %cmp127 = icmp eq i32 %74, 105
  br i1 %cmp127, label %cond.true129, label %cond.false133

cond.true129:                                     ; preds = %cond.end122
  %base130 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %75 = load ptr, ptr %base130, align 8, !tbaa !8
  %buffer131 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %buffer131, align 8, !tbaa !14
  %add.ptr132 = getelementptr inbounds i8, ptr %76, i64 16
  br label %cond.end146

cond.false133:                                    ; preds = %cond.end122
  %base134 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %77 = load ptr, ptr %base134, align 8, !tbaa !8
  %buffer135 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %buffer135, align 8, !tbaa !14
  %offn136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %79 = load i64, ptr %offn136, align 8, !tbaa !15
  %base137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %80 = load ptr, ptr %base137, align 8, !tbaa !8
  %cs138 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %80, i32 0, i32 5
  %81 = load i64, ptr %cs138, align 8, !tbaa !16
  %mul139 = mul i64 %79, %81
  %add.ptr140 = getelementptr inbounds double, ptr %78, i64 %mul139
  %offm141 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %82 = load i64, ptr %offm141, align 8, !tbaa !17
  %base142 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %83 = load ptr, ptr %base142, align 8, !tbaa !8
  %rs143 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %83, i32 0, i32 4
  %84 = load i64, ptr %rs143, align 8, !tbaa !18
  %mul144 = mul i64 %82, %84
  %add.ptr145 = getelementptr inbounds double, ptr %add.ptr140, i64 %mul144
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false133, %cond.true129
  %cond147 = phi ptr [ %add.ptr132, %cond.true129 ], [ %add.ptr145, %cond.false133 ]
  store ptr %cond147, ptr %buff_S124, align 8, !tbaa !19
  %85 = load i32, ptr %m_A, align 4, !tbaa !4
  %86 = load i32, ptr %n_A, align 4, !tbaa !4
  %87 = load i32, ptr %m_TS, align 4, !tbaa !4
  %88 = load ptr, ptr %buff_A76, align 8, !tbaa !19
  %89 = load i32, ptr %rs_A, align 4, !tbaa !4
  %90 = load i32, ptr %cs_A, align 4, !tbaa !4
  %91 = load ptr, ptr %buff_T100, align 8, !tbaa !19
  %92 = load i32, ptr %rs_T, align 4, !tbaa !4
  %93 = load i32, ptr %cs_T, align 4, !tbaa !4
  %94 = load ptr, ptr %buff_S124, align 8, !tbaa !19
  %95 = load i32, ptr %rs_S, align 4, !tbaa !4
  %96 = load i32, ptr %cs_S, align 4, !tbaa !4
  %call148 = call i32 @FLA_Bidiag_UT_u_step_ofd_var3(i32 noundef %85, i32 noundef %86, i32 noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90, ptr noundef %91, i32 noundef %92, i32 noundef %93, ptr noundef %94, i32 noundef %95, i32 noundef %96)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_S124) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T100) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A76) #5
  br label %sw.epilog

sw.bb149:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A150) #5
  %base151 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %97 = load ptr, ptr %base151, align 8, !tbaa !8
  %datatype152 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %97, i32 0, i32 0
  %98 = load i32, ptr %datatype152, align 8, !tbaa !12
  %cmp153 = icmp eq i32 %98, 105
  br i1 %cmp153, label %cond.true155, label %cond.false159

cond.true155:                                     ; preds = %sw.bb149
  %base156 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %99 = load ptr, ptr %base156, align 8, !tbaa !8
  %buffer157 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %99, i32 0, i32 12
  %100 = load ptr, ptr %buffer157, align 8, !tbaa !14
  %add.ptr158 = getelementptr inbounds i8, ptr %100, i64 24
  br label %cond.end172

cond.false159:                                    ; preds = %sw.bb149
  %base160 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %101 = load ptr, ptr %base160, align 8, !tbaa !8
  %buffer161 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %101, i32 0, i32 12
  %102 = load ptr, ptr %buffer161, align 8, !tbaa !14
  %offn162 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %103 = load i64, ptr %offn162, align 8, !tbaa !15
  %base163 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %104 = load ptr, ptr %base163, align 8, !tbaa !8
  %cs164 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %104, i32 0, i32 5
  %105 = load i64, ptr %cs164, align 8, !tbaa !16
  %mul165 = mul i64 %103, %105
  %add.ptr166 = getelementptr inbounds %struct.scomplex, ptr %102, i64 %mul165
  %offm167 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %106 = load i64, ptr %offm167, align 8, !tbaa !17
  %base168 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %107 = load ptr, ptr %base168, align 8, !tbaa !8
  %rs169 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %107, i32 0, i32 4
  %108 = load i64, ptr %rs169, align 8, !tbaa !18
  %mul170 = mul i64 %106, %108
  %add.ptr171 = getelementptr inbounds %struct.scomplex, ptr %add.ptr166, i64 %mul170
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false159, %cond.true155
  %cond173 = phi ptr [ %add.ptr158, %cond.true155 ], [ %add.ptr171, %cond.false159 ]
  store ptr %cond173, ptr %buff_A150, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T174) #5
  %base175 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %109 = load ptr, ptr %base175, align 8, !tbaa !8
  %datatype176 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %109, i32 0, i32 0
  %110 = load i32, ptr %datatype176, align 8, !tbaa !12
  %cmp177 = icmp eq i32 %110, 105
  br i1 %cmp177, label %cond.true179, label %cond.false183

cond.true179:                                     ; preds = %cond.end172
  %base180 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %111 = load ptr, ptr %base180, align 8, !tbaa !8
  %buffer181 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %111, i32 0, i32 12
  %112 = load ptr, ptr %buffer181, align 8, !tbaa !14
  %add.ptr182 = getelementptr inbounds i8, ptr %112, i64 24
  br label %cond.end196

cond.false183:                                    ; preds = %cond.end172
  %base184 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %113 = load ptr, ptr %base184, align 8, !tbaa !8
  %buffer185 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 12
  %114 = load ptr, ptr %buffer185, align 8, !tbaa !14
  %offn186 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %115 = load i64, ptr %offn186, align 8, !tbaa !15
  %base187 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %116 = load ptr, ptr %base187, align 8, !tbaa !8
  %cs188 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %116, i32 0, i32 5
  %117 = load i64, ptr %cs188, align 8, !tbaa !16
  %mul189 = mul i64 %115, %117
  %add.ptr190 = getelementptr inbounds %struct.scomplex, ptr %114, i64 %mul189
  %offm191 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %118 = load i64, ptr %offm191, align 8, !tbaa !17
  %base192 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %119 = load ptr, ptr %base192, align 8, !tbaa !8
  %rs193 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 4
  %120 = load i64, ptr %rs193, align 8, !tbaa !18
  %mul194 = mul i64 %118, %120
  %add.ptr195 = getelementptr inbounds %struct.scomplex, ptr %add.ptr190, i64 %mul194
  br label %cond.end196

cond.end196:                                      ; preds = %cond.false183, %cond.true179
  %cond197 = phi ptr [ %add.ptr182, %cond.true179 ], [ %add.ptr195, %cond.false183 ]
  store ptr %cond197, ptr %buff_T174, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_S198) #5
  %base199 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %121 = load ptr, ptr %base199, align 8, !tbaa !8
  %datatype200 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %121, i32 0, i32 0
  %122 = load i32, ptr %datatype200, align 8, !tbaa !12
  %cmp201 = icmp eq i32 %122, 105
  br i1 %cmp201, label %cond.true203, label %cond.false207

cond.true203:                                     ; preds = %cond.end196
  %base204 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %123 = load ptr, ptr %base204, align 8, !tbaa !8
  %buffer205 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %buffer205, align 8, !tbaa !14
  %add.ptr206 = getelementptr inbounds i8, ptr %124, i64 24
  br label %cond.end220

cond.false207:                                    ; preds = %cond.end196
  %base208 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %125 = load ptr, ptr %base208, align 8, !tbaa !8
  %buffer209 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %125, i32 0, i32 12
  %126 = load ptr, ptr %buffer209, align 8, !tbaa !14
  %offn210 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %127 = load i64, ptr %offn210, align 8, !tbaa !15
  %base211 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %128 = load ptr, ptr %base211, align 8, !tbaa !8
  %cs212 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %128, i32 0, i32 5
  %129 = load i64, ptr %cs212, align 8, !tbaa !16
  %mul213 = mul i64 %127, %129
  %add.ptr214 = getelementptr inbounds %struct.scomplex, ptr %126, i64 %mul213
  %offm215 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %130 = load i64, ptr %offm215, align 8, !tbaa !17
  %base216 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %131 = load ptr, ptr %base216, align 8, !tbaa !8
  %rs217 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %131, i32 0, i32 4
  %132 = load i64, ptr %rs217, align 8, !tbaa !18
  %mul218 = mul i64 %130, %132
  %add.ptr219 = getelementptr inbounds %struct.scomplex, ptr %add.ptr214, i64 %mul218
  br label %cond.end220

cond.end220:                                      ; preds = %cond.false207, %cond.true203
  %cond221 = phi ptr [ %add.ptr206, %cond.true203 ], [ %add.ptr219, %cond.false207 ]
  store ptr %cond221, ptr %buff_S198, align 8, !tbaa !19
  %133 = load i32, ptr %m_A, align 4, !tbaa !4
  %134 = load i32, ptr %n_A, align 4, !tbaa !4
  %135 = load i32, ptr %m_TS, align 4, !tbaa !4
  %136 = load ptr, ptr %buff_A150, align 8, !tbaa !19
  %137 = load i32, ptr %rs_A, align 4, !tbaa !4
  %138 = load i32, ptr %cs_A, align 4, !tbaa !4
  %139 = load ptr, ptr %buff_T174, align 8, !tbaa !19
  %140 = load i32, ptr %rs_T, align 4, !tbaa !4
  %141 = load i32, ptr %cs_T, align 4, !tbaa !4
  %142 = load ptr, ptr %buff_S198, align 8, !tbaa !19
  %143 = load i32, ptr %rs_S, align 4, !tbaa !4
  %144 = load i32, ptr %cs_S, align 4, !tbaa !4
  %call222 = call i32 @FLA_Bidiag_UT_u_step_ofc_var3(i32 noundef %133, i32 noundef %134, i32 noundef %135, ptr noundef %136, i32 noundef %137, i32 noundef %138, ptr noundef %139, i32 noundef %140, i32 noundef %141, ptr noundef %142, i32 noundef %143, i32 noundef %144)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_S198) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T174) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A150) #5
  br label %sw.epilog

sw.bb223:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A224) #5
  %base225 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %145 = load ptr, ptr %base225, align 8, !tbaa !8
  %datatype226 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %145, i32 0, i32 0
  %146 = load i32, ptr %datatype226, align 8, !tbaa !12
  %cmp227 = icmp eq i32 %146, 105
  br i1 %cmp227, label %cond.true229, label %cond.false233

cond.true229:                                     ; preds = %sw.bb223
  %base230 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %147 = load ptr, ptr %base230, align 8, !tbaa !8
  %buffer231 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %147, i32 0, i32 12
  %148 = load ptr, ptr %buffer231, align 8, !tbaa !14
  %add.ptr232 = getelementptr inbounds i8, ptr %148, i64 32
  br label %cond.end246

cond.false233:                                    ; preds = %sw.bb223
  %base234 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %149 = load ptr, ptr %base234, align 8, !tbaa !8
  %buffer235 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %149, i32 0, i32 12
  %150 = load ptr, ptr %buffer235, align 8, !tbaa !14
  %offn236 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %151 = load i64, ptr %offn236, align 8, !tbaa !15
  %base237 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %152 = load ptr, ptr %base237, align 8, !tbaa !8
  %cs238 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %152, i32 0, i32 5
  %153 = load i64, ptr %cs238, align 8, !tbaa !16
  %mul239 = mul i64 %151, %153
  %add.ptr240 = getelementptr inbounds %struct.dcomplex, ptr %150, i64 %mul239
  %offm241 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %154 = load i64, ptr %offm241, align 8, !tbaa !17
  %base242 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %155 = load ptr, ptr %base242, align 8, !tbaa !8
  %rs243 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %155, i32 0, i32 4
  %156 = load i64, ptr %rs243, align 8, !tbaa !18
  %mul244 = mul i64 %154, %156
  %add.ptr245 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr240, i64 %mul244
  br label %cond.end246

cond.end246:                                      ; preds = %cond.false233, %cond.true229
  %cond247 = phi ptr [ %add.ptr232, %cond.true229 ], [ %add.ptr245, %cond.false233 ]
  store ptr %cond247, ptr %buff_A224, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_T248) #5
  %base249 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %157 = load ptr, ptr %base249, align 8, !tbaa !8
  %datatype250 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %157, i32 0, i32 0
  %158 = load i32, ptr %datatype250, align 8, !tbaa !12
  %cmp251 = icmp eq i32 %158, 105
  br i1 %cmp251, label %cond.true253, label %cond.false257

cond.true253:                                     ; preds = %cond.end246
  %base254 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %159 = load ptr, ptr %base254, align 8, !tbaa !8
  %buffer255 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %159, i32 0, i32 12
  %160 = load ptr, ptr %buffer255, align 8, !tbaa !14
  %add.ptr256 = getelementptr inbounds i8, ptr %160, i64 32
  br label %cond.end270

cond.false257:                                    ; preds = %cond.end246
  %base258 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %161 = load ptr, ptr %base258, align 8, !tbaa !8
  %buffer259 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %161, i32 0, i32 12
  %162 = load ptr, ptr %buffer259, align 8, !tbaa !14
  %offn260 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 1
  %163 = load i64, ptr %offn260, align 8, !tbaa !15
  %base261 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %164 = load ptr, ptr %base261, align 8, !tbaa !8
  %cs262 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %164, i32 0, i32 5
  %165 = load i64, ptr %cs262, align 8, !tbaa !16
  %mul263 = mul i64 %163, %165
  %add.ptr264 = getelementptr inbounds %struct.dcomplex, ptr %162, i64 %mul263
  %offm265 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 0
  %166 = load i64, ptr %offm265, align 8, !tbaa !17
  %base266 = getelementptr inbounds %struct.FLA_Obj_view, ptr %T, i32 0, i32 6
  %167 = load ptr, ptr %base266, align 8, !tbaa !8
  %rs267 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %167, i32 0, i32 4
  %168 = load i64, ptr %rs267, align 8, !tbaa !18
  %mul268 = mul i64 %166, %168
  %add.ptr269 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr264, i64 %mul268
  br label %cond.end270

cond.end270:                                      ; preds = %cond.false257, %cond.true253
  %cond271 = phi ptr [ %add.ptr256, %cond.true253 ], [ %add.ptr269, %cond.false257 ]
  store ptr %cond271, ptr %buff_T248, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_S272) #5
  %base273 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %169 = load ptr, ptr %base273, align 8, !tbaa !8
  %datatype274 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %169, i32 0, i32 0
  %170 = load i32, ptr %datatype274, align 8, !tbaa !12
  %cmp275 = icmp eq i32 %170, 105
  br i1 %cmp275, label %cond.true277, label %cond.false281

cond.true277:                                     ; preds = %cond.end270
  %base278 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %171 = load ptr, ptr %base278, align 8, !tbaa !8
  %buffer279 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %171, i32 0, i32 12
  %172 = load ptr, ptr %buffer279, align 8, !tbaa !14
  %add.ptr280 = getelementptr inbounds i8, ptr %172, i64 32
  br label %cond.end294

cond.false281:                                    ; preds = %cond.end270
  %base282 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %173 = load ptr, ptr %base282, align 8, !tbaa !8
  %buffer283 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %173, i32 0, i32 12
  %174 = load ptr, ptr %buffer283, align 8, !tbaa !14
  %offn284 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 1
  %175 = load i64, ptr %offn284, align 8, !tbaa !15
  %base285 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %176 = load ptr, ptr %base285, align 8, !tbaa !8
  %cs286 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %176, i32 0, i32 5
  %177 = load i64, ptr %cs286, align 8, !tbaa !16
  %mul287 = mul i64 %175, %177
  %add.ptr288 = getelementptr inbounds %struct.dcomplex, ptr %174, i64 %mul287
  %offm289 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 0
  %178 = load i64, ptr %offm289, align 8, !tbaa !17
  %base290 = getelementptr inbounds %struct.FLA_Obj_view, ptr %S, i32 0, i32 6
  %179 = load ptr, ptr %base290, align 8, !tbaa !8
  %rs291 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %179, i32 0, i32 4
  %180 = load i64, ptr %rs291, align 8, !tbaa !18
  %mul292 = mul i64 %178, %180
  %add.ptr293 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr288, i64 %mul292
  br label %cond.end294

cond.end294:                                      ; preds = %cond.false281, %cond.true277
  %cond295 = phi ptr [ %add.ptr280, %cond.true277 ], [ %add.ptr293, %cond.false281 ]
  store ptr %cond295, ptr %buff_S272, align 8, !tbaa !19
  %181 = load i32, ptr %m_A, align 4, !tbaa !4
  %182 = load i32, ptr %n_A, align 4, !tbaa !4
  %183 = load i32, ptr %m_TS, align 4, !tbaa !4
  %184 = load ptr, ptr %buff_A224, align 8, !tbaa !19
  %185 = load i32, ptr %rs_A, align 4, !tbaa !4
  %186 = load i32, ptr %cs_A, align 4, !tbaa !4
  %187 = load ptr, ptr %buff_T248, align 8, !tbaa !19
  %188 = load i32, ptr %rs_T, align 4, !tbaa !4
  %189 = load i32, ptr %cs_T, align 4, !tbaa !4
  %190 = load ptr, ptr %buff_S272, align 8, !tbaa !19
  %191 = load i32, ptr %rs_S, align 4, !tbaa !4
  %192 = load i32, ptr %cs_S, align 4, !tbaa !4
  %call296 = call i32 @FLA_Bidiag_UT_u_step_ofz_var3(i32 noundef %181, i32 noundef %182, i32 noundef %183, ptr noundef %184, i32 noundef %185, i32 noundef %186, ptr noundef %187, i32 noundef %188, i32 noundef %189, ptr noundef %190, i32 noundef %191, i32 noundef %192)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_S272) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_T248) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A224) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end294, %cond.end220, %cond.end146, %cond.end72
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_S) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_S) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_T) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_T) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_TS) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_A) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #5
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Bidiag_UT_u_step_ofs_var3(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %alpha12 = alloca float, align 4
  %minus_conj_alpha12 = alloca float, align 4
  %psi11_minus_alpha12 = alloca float, align 4
  %minus_inv_tau11 = alloca float, align 4
  %minus_upsilon11 = alloca float, align 4
  %minus_conj_nu11 = alloca float, align 4
  %minus_conj_psi11 = alloca float, align 4
  %minus_zeta11 = alloca float, align 4
  %beta = alloca float, align 4
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_w = alloca ptr, align 8
  %buff_ap = alloca ptr, align 8
  %buff_u = alloca ptr, align 8
  %buff_up = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_y = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %inc_w = alloca i32, align 4
  %inc_ap = alloca i32, align 4
  %inc_u = alloca i32, align 4
  %inc_up = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a12p = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %u21p = alloca ptr, align 8
  %nu11 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %psi11 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %a12p_t = alloca ptr, align 8
  %a12p_b = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %A22_l = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %m_TS, ptr %m_TS.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  store ptr %buff_S, ptr %buff_S.addr, align 8, !tbaa !19
  store i32 %rs_S, ptr %rs_S.addr, align 4, !tbaa !4
  store i32 %cs_S, ptr %cs_S.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds float, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds float, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 8
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds float, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 8
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds float, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %36 = load i32, ptr %m_TS.addr, align 4, !tbaa !4
  store i32 %36, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %37 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 4
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_ap) #5
  %38 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 4
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_ap, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %39 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 4
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_up) #5
  %40 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 4
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_up, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_v) #5
  %41 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 4
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y) #5
  %42 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 4
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %43 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %43 to i64
  %mul52 = mul i64 %conv51, 4
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_ap) #5
  store i32 1, ptr %inc_ap, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_up) #5
  store i32 1, ptr %inc_up, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_v) #5
  store i32 1, ptr %inc_v, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_y) #5
  store i32 1, ptr %inc_y, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %44 = load i32, ptr %i, align 4, !tbaa !4
  %45 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #5
  %46 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %47
  %idx.ext = sext i32 %mul56 to i64
  %add.ptr57 = getelementptr inbounds float, ptr %46, i64 %idx.ext
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul58 = mul nsw i32 %48, %49
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds float, ptr %add.ptr57, i64 %idx.ext59
  store ptr %add.ptr60, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 0, %51
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds float, ptr %50, i64 %idx.ext62
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %52, 1
  %53 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add, %53
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds float, ptr %add.ptr63, i64 %idx.ext65
  store ptr %add.ptr66, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %54 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %55, %56
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds float, ptr %54, i64 %idx.ext68
  %57 = load i32, ptr %i, align 4, !tbaa !4
  %58 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %57, %58
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds float, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %59 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul73 = mul nsw i32 %60, %61
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds float, ptr %59, i64 %idx.ext74
  %62 = load i32, ptr %i, align 4, !tbaa !4
  %add76 = add nsw i32 %62, 1
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 %add76, %63
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds float, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #5
  %64 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %add80 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul81 = mul nsw i32 %add80, %66
  %idx.ext82 = sext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds float, ptr %64, i64 %idx.ext82
  %67 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul84 = mul nsw i32 0, %67
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds float, ptr %add.ptr83, i64 %idx.ext85
  store ptr %add.ptr86, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #5
  %68 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %add87 = add nsw i32 %69, 1
  %70 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 %add87, %70
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds float, ptr %68, i64 %idx.ext89
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %72 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %71, %72
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds float, ptr %add.ptr90, i64 %idx.ext92
  store ptr %add.ptr93, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %73 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %add94 = add nsw i32 %74, 1
  %75 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul95 = mul nsw i32 %add94, %75
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds float, ptr %73, i64 %idx.ext96
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %add98 = add nsw i32 %76, 1
  %77 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul99 = mul nsw i32 %add98, %77
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds float, ptr %add.ptr97, i64 %idx.ext100
  store ptr %add.ptr101, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %78 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %79 = load i32, ptr %i, align 4, !tbaa !4
  %80 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul102 = mul nsw i32 %79, %80
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds float, ptr %78, i64 %idx.ext103
  %81 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul105 = mul nsw i32 0, %81
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds float, ptr %add.ptr104, i64 %idx.ext106
  store ptr %add.ptr107, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %82 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %83 = load i32, ptr %i, align 4, !tbaa !4
  %84 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul108 = mul nsw i32 %83, %84
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds float, ptr %82, i64 %idx.ext109
  %85 = load i32, ptr %i, align 4, !tbaa !4
  %86 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul111 = mul nsw i32 %85, %86
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds float, ptr %add.ptr110, i64 %idx.ext112
  store ptr %add.ptr113, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %s01) #5
  %87 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %88 = load i32, ptr %i, align 4, !tbaa !4
  %89 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul114 = mul nsw i32 %88, %89
  %idx.ext115 = sext i32 %mul114 to i64
  %add.ptr116 = getelementptr inbounds float, ptr %87, i64 %idx.ext115
  %90 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul117 = mul nsw i32 0, %90
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds float, ptr %add.ptr116, i64 %idx.ext118
  store ptr %add.ptr119, ptr %s01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %sigma11) #5
  %91 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %92 = load i32, ptr %i, align 4, !tbaa !4
  %93 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul120 = mul nsw i32 %92, %93
  %idx.ext121 = sext i32 %mul120 to i64
  %add.ptr122 = getelementptr inbounds float, ptr %91, i64 %idx.ext121
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %95 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul123 = mul nsw i32 %94, %95
  %idx.ext124 = sext i32 %mul123 to i64
  %add.ptr125 = getelementptr inbounds float, ptr %add.ptr122, i64 %idx.ext124
  store ptr %add.ptr125, ptr %sigma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %96 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %97 = load i32, ptr %i, align 4, !tbaa !4
  %add126 = add nsw i32 %97, 1
  %98 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul127 = mul nsw i32 %add126, %98
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds float, ptr %96, i64 %idx.ext128
  store ptr %add.ptr129, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p) #5
  %99 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  %100 = load i32, ptr %i, align 4, !tbaa !4
  %add130 = add nsw i32 %100, 1
  %101 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul131 = mul nsw i32 %add130, %101
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds float, ptr %99, i64 %idx.ext132
  store ptr %add.ptr133, ptr %a12p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %102 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %103 = load i32, ptr %i, align 4, !tbaa !4
  %104 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul134 = mul nsw i32 %103, %104
  %idx.ext135 = sext i32 %mul134 to i64
  %add.ptr136 = getelementptr inbounds float, ptr %102, i64 %idx.ext135
  store ptr %add.ptr136, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %105 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %106 = load i32, ptr %i, align 4, !tbaa !4
  %add137 = add nsw i32 %106, 1
  %107 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul138 = mul nsw i32 %add137, %107
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds float, ptr %105, i64 %idx.ext139
  store ptr %add.ptr140, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21p) #5
  %108 = load ptr, ptr %buff_up, align 8, !tbaa !19
  %109 = load i32, ptr %i, align 4, !tbaa !4
  %add141 = add nsw i32 %109, 1
  %110 = load i32, ptr %inc_up, align 4, !tbaa !4
  %mul142 = mul nsw i32 %add141, %110
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds float, ptr %108, i64 %idx.ext143
  store ptr %add.ptr144, ptr %u21p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %nu11) #5
  %111 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %112 = load i32, ptr %i, align 4, !tbaa !4
  %113 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul145 = mul nsw i32 %112, %113
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds float, ptr %111, i64 %idx.ext146
  store ptr %add.ptr147, ptr %nu11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21) #5
  %114 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %115 = load i32, ptr %i, align 4, !tbaa !4
  %add148 = add nsw i32 %115, 1
  %116 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul149 = mul nsw i32 %add148, %116
  %idx.ext150 = sext i32 %mul149 to i64
  %add.ptr151 = getelementptr inbounds float, ptr %114, i64 %idx.ext150
  store ptr %add.ptr151, ptr %v21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi11) #5
  %117 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %118 = load i32, ptr %i, align 4, !tbaa !4
  %119 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul152 = mul nsw i32 %118, %119
  %idx.ext153 = sext i32 %mul152 to i64
  %add.ptr154 = getelementptr inbounds float, ptr %117, i64 %idx.ext153
  store ptr %add.ptr154, ptr %psi11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y21) #5
  %120 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %121 = load i32, ptr %i, align 4, !tbaa !4
  %add155 = add nsw i32 %121, 1
  %122 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul156 = mul nsw i32 %add155, %122
  %idx.ext157 = sext i32 %mul156 to i64
  %add.ptr158 = getelementptr inbounds float, ptr %120, i64 %idx.ext157
  store ptr %add.ptr158, ptr %y21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %123 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %124 = load i32, ptr %i, align 4, !tbaa !4
  %125 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul159 = mul nsw i32 %124, %125
  %idx.ext160 = sext i32 %mul159 to i64
  %add.ptr161 = getelementptr inbounds float, ptr %123, i64 %idx.ext160
  store ptr %add.ptr161, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %126 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %127 = load i32, ptr %i, align 4, !tbaa !4
  %add162 = add nsw i32 %127, 1
  %128 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul163 = mul nsw i32 %add162, %128
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds float, ptr %126, i64 %idx.ext164
  store ptr %add.ptr165, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_t) #5
  %129 = load ptr, ptr %a12p, align 8, !tbaa !19
  %130 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul166 = mul nsw i32 0, %130
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds float, ptr %129, i64 %idx.ext167
  store ptr %add.ptr168, ptr %a12p_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_b) #5
  %131 = load ptr, ptr %a12p, align 8, !tbaa !19
  %132 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul169 = mul nsw i32 1, %132
  %idx.ext170 = sext i32 %mul169 to i64
  %add.ptr171 = getelementptr inbounds float, ptr %131, i64 %idx.ext170
  store ptr %add.ptr171, ptr %a12p_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_t) #5
  %133 = load ptr, ptr %v21, align 8, !tbaa !19
  %134 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul172 = mul nsw i32 0, %134
  %idx.ext173 = sext i32 %mul172 to i64
  %add.ptr174 = getelementptr inbounds float, ptr %133, i64 %idx.ext173
  store ptr %add.ptr174, ptr %v21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_b) #5
  %135 = load ptr, ptr %v21, align 8, !tbaa !19
  %136 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul175 = mul nsw i32 1, %136
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds float, ptr %135, i64 %idx.ext176
  store ptr %add.ptr177, ptr %v21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_l) #5
  %137 = load ptr, ptr %a12t, align 8, !tbaa !19
  %138 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul178 = mul nsw i32 0, %138
  %idx.ext179 = sext i32 %mul178 to i64
  %add.ptr180 = getelementptr inbounds float, ptr %137, i64 %idx.ext179
  %139 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul181 = mul nsw i32 0, %139
  %idx.ext182 = sext i32 %mul181 to i64
  %add.ptr183 = getelementptr inbounds float, ptr %add.ptr180, i64 %idx.ext182
  store ptr %add.ptr183, ptr %a12t_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_r) #5
  %140 = load ptr, ptr %a12t, align 8, !tbaa !19
  %141 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul184 = mul nsw i32 1, %141
  %idx.ext185 = sext i32 %mul184 to i64
  %add.ptr186 = getelementptr inbounds float, ptr %140, i64 %idx.ext185
  %142 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul187 = mul nsw i32 0, %142
  %idx.ext188 = sext i32 %mul187 to i64
  %add.ptr189 = getelementptr inbounds float, ptr %add.ptr186, i64 %idx.ext188
  store ptr %add.ptr189, ptr %a12t_r, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22_l) #5
  %143 = load ptr, ptr %A22, align 8, !tbaa !19
  %144 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul190 = mul nsw i32 0, %144
  %idx.ext191 = sext i32 %mul190 to i64
  %add.ptr192 = getelementptr inbounds float, ptr %143, i64 %idx.ext191
  %145 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul193 = mul nsw i32 0, %145
  %idx.ext194 = sext i32 %mul193 to i64
  %add.ptr195 = getelementptr inbounds float, ptr %add.ptr192, i64 %idx.ext194
  store ptr %add.ptr195, ptr %A22_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %146 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %146, %147
  %sub196 = sub nsw i32 %sub, 1
  store i32 %sub196, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #5
  %148 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %149 = load i32, ptr %i, align 4, !tbaa !4
  %sub197 = sub nsw i32 %148, %149
  %sub198 = sub nsw i32 %sub197, 1
  store i32 %sub198, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %150 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %150, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %151 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %151, ptr %n_behind, align 4, !tbaa !4
  %152 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp199 = icmp sgt i32 %152, 0
  br i1 %cmp199, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %153 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %154 = load float, ptr %153, align 4, !tbaa !20
  %155 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %156 = load float, ptr %155, align 4, !tbaa !20
  %mul201 = fmul float %154, %156
  store float %mul201, ptr %minus_upsilon11, align 4, !tbaa !20
  %157 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %158 = load float, ptr %157, align 4, !tbaa !20
  %159 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %160 = load float, ptr %159, align 4, !tbaa !20
  %mul202 = fmul float %158, %160
  store float %mul202, ptr %minus_zeta11, align 4, !tbaa !20
  %161 = load ptr, ptr %psi11, align 8, !tbaa !19
  %162 = load float, ptr %161, align 4, !tbaa !20
  store float %162, ptr %minus_conj_psi11, align 4, !tbaa !20
  %163 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %164 = load float, ptr %163, align 4, !tbaa !20
  %165 = load float, ptr %minus_conj_psi11, align 4, !tbaa !20
  %mul203 = fmul float %164, %165
  store float %mul203, ptr %minus_conj_psi11, align 4, !tbaa !20
  %166 = load ptr, ptr %nu11, align 8, !tbaa !19
  %167 = load float, ptr %166, align 4, !tbaa !20
  store float %167, ptr %minus_conj_nu11, align 4, !tbaa !20
  %168 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %169 = load float, ptr %168, align 4, !tbaa !20
  %170 = load float, ptr %minus_conj_nu11, align 4, !tbaa !20
  %mul204 = fmul float %169, %170
  store float %mul204, ptr %minus_conj_nu11, align 4, !tbaa !20
  %171 = load ptr, ptr %psi11, align 8, !tbaa !19
  %172 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_upsilon11, ptr noundef %171, i32 noundef 1, ptr noundef %172, i32 noundef 1)
  %173 = load ptr, ptr %nu11, align 8, !tbaa !19
  %174 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_zeta11, ptr noundef %173, i32 noundef 1, ptr noundef %174, i32 noundef 1)
  %175 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %176 = load ptr, ptr %u21, align 8, !tbaa !19
  %177 = load i32, ptr %inc_u, align 4, !tbaa !4
  %178 = load ptr, ptr %a21, align 8, !tbaa !19
  %179 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %175, ptr noundef %minus_conj_psi11, ptr noundef %176, i32 noundef %177, ptr noundef %178, i32 noundef %179)
  %180 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %181 = load ptr, ptr %z21, align 8, !tbaa !19
  %182 = load i32, ptr %inc_z, align 4, !tbaa !4
  %183 = load ptr, ptr %a21, align 8, !tbaa !19
  %184 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %180, ptr noundef %minus_conj_nu11, ptr noundef %181, i32 noundef %182, ptr noundef %183, i32 noundef %184)
  %185 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %186 = load ptr, ptr %y21, align 8, !tbaa !19
  %187 = load i32, ptr %inc_y, align 4, !tbaa !4
  %188 = load ptr, ptr %a12t, align 8, !tbaa !19
  %189 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %185, ptr noundef %minus_upsilon11, ptr noundef %186, i32 noundef %187, ptr noundef %188, i32 noundef %189)
  %190 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %191 = load ptr, ptr %v21, align 8, !tbaa !19
  %192 = load i32, ptr %inc_v, align 4, !tbaa !4
  %193 = load ptr, ptr %a12t, align 8, !tbaa !19
  %194 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %190, ptr noundef %minus_zeta11, ptr noundef %191, i32 noundef %192, ptr noundef %193, i32 noundef %194)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %195 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %196 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %197 = load ptr, ptr %a21, align 8, !tbaa !19
  %198 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %199 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call205 = call i32 @FLA_Househ2_UT_l_ops(i32 noundef %195, ptr noundef %196, ptr noundef %197, i32 noundef %198, ptr noundef %199)
  %200 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %201 = load ptr, ptr %a21, align 8, !tbaa !19
  %202 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %203 = load ptr, ptr %u21p, align 8, !tbaa !19
  %204 = load i32, ptr %inc_up, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %200, ptr noundef %201, i32 noundef %202, ptr noundef %203, i32 noundef %204)
  %205 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp206 = icmp sgt i32 %205, 0
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.end
  %206 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %207 = load float, ptr %206, align 4, !tbaa !20
  %208 = load ptr, ptr %tau11, align 8, !tbaa !19
  %209 = load float, ptr %208, align 4, !tbaa !20
  %div = fdiv float %207, %209
  store float %div, ptr %minus_inv_tau11, align 4, !tbaa !20
  %210 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %211 = load ptr, ptr %a12t, align 8, !tbaa !19
  %212 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %213 = load ptr, ptr %a12p, align 8, !tbaa !19
  %214 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %210, ptr noundef %211, i32 noundef %212, ptr noundef %213, i32 noundef %214)
  %215 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %216 = load ptr, ptr %a12t, align 8, !tbaa !19
  %217 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %218 = load ptr, ptr %a12p, align 8, !tbaa !19
  %219 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %215, ptr noundef %minus_inv_tau11, ptr noundef %216, i32 noundef %217, ptr noundef %218, i32 noundef %219)
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %if.end
  %220 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp210 = icmp sgt i32 %220, 0
  br i1 %cmp210, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end209
  %221 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp212 = icmp sgt i32 %221, 0
  br i1 %cmp212, label %if.then214, label %if.else

if.then214:                                       ; preds = %land.lhs.true
  %222 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %223 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %224 = load ptr, ptr %tau11, align 8, !tbaa !19
  %225 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %226 = load ptr, ptr %u21, align 8, !tbaa !19
  %227 = load i32, ptr %inc_u, align 4, !tbaa !4
  %228 = load ptr, ptr %y21, align 8, !tbaa !19
  %229 = load i32, ptr %inc_y, align 4, !tbaa !4
  %230 = load ptr, ptr %z21, align 8, !tbaa !19
  %231 = load i32, ptr %inc_z, align 4, !tbaa !4
  %232 = load ptr, ptr %v21, align 8, !tbaa !19
  %233 = load i32, ptr %inc_v, align 4, !tbaa !4
  %234 = load ptr, ptr %A22, align 8, !tbaa !19
  %235 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %236 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %237 = load ptr, ptr %u21p, align 8, !tbaa !19
  %238 = load i32, ptr %inc_up, align 4, !tbaa !4
  %239 = load ptr, ptr %a12p, align 8, !tbaa !19
  %240 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %241 = load ptr, ptr %w21, align 8, !tbaa !19
  %242 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call215 = call i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_ops_var1(i32 noundef %222, i32 noundef %223, ptr noundef %224, ptr noundef %225, ptr noundef %226, i32 noundef %227, ptr noundef %228, i32 noundef %229, ptr noundef %230, i32 noundef %231, ptr noundef %232, i32 noundef %233, ptr noundef %234, i32 noundef %235, i32 noundef %236, ptr noundef %237, i32 noundef %238, ptr noundef %239, i32 noundef %240, ptr noundef %241, i32 noundef %242)
  br label %if.end221

if.else:                                          ; preds = %land.lhs.true, %if.end209
  %243 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp216 = icmp sgt i32 %243, 0
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %if.else
  %244 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %245 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %246 = load ptr, ptr %tau11, align 8, !tbaa !19
  %247 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %248 = load ptr, ptr %A22, align 8, !tbaa !19
  %249 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %250 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %251 = load ptr, ptr %u21p, align 8, !tbaa !19
  %252 = load i32, ptr %inc_up, align 4, !tbaa !4
  %253 = load ptr, ptr %a12p, align 8, !tbaa !19
  %254 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %255 = load ptr, ptr %y21, align 8, !tbaa !19
  %256 = load i32, ptr %inc_y, align 4, !tbaa !4
  %257 = load ptr, ptr %w21, align 8, !tbaa !19
  %258 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call219 = call i32 @FLA_Fused_Ahx_Axpy_Ax_ops_var1(i32 noundef %244, i32 noundef %245, ptr noundef %246, ptr noundef %247, ptr noundef %248, i32 noundef %249, i32 noundef %250, ptr noundef %251, i32 noundef %252, ptr noundef %253, i32 noundef %254, ptr noundef %255, i32 noundef %256, ptr noundef %257, i32 noundef %258)
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %if.else
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then214
  %259 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp222 = icmp sgt i32 %259, 0
  br i1 %cmp222, label %if.then224, label %if.end229

if.then224:                                       ; preds = %if.end221
  %260 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %261 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %262 = load ptr, ptr %a12t, align 8, !tbaa !19
  %263 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %264 = load ptr, ptr %y21, align 8, !tbaa !19
  %265 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %260, ptr noundef %261, ptr noundef %262, i32 noundef %263, ptr noundef %264, i32 noundef %265)
  %266 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub225 = sub nsw i32 %266, 1
  %267 = load ptr, ptr %a12p_t, align 8, !tbaa !19
  %268 = load ptr, ptr %a12p_b, align 8, !tbaa !19
  %269 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %270 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %call226 = call i32 @FLA_Househ2s_UT_r_ops(i32 noundef %sub225, ptr noundef %267, ptr noundef %268, i32 noundef %269, ptr noundef %alpha12, ptr noundef %psi11_minus_alpha12, ptr noundef %270)
  %271 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %272 = load ptr, ptr %a12p, align 8, !tbaa !19
  %273 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %274 = load ptr, ptr %v21, align 8, !tbaa !19
  %275 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %271, ptr noundef %272, i32 noundef %273, ptr noundef %274, i32 noundef %275)
  %276 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %277 = load float, ptr %276, align 4, !tbaa !20
  %278 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %279 = load float, ptr %278, align 4, !tbaa !20
  %280 = load float, ptr %alpha12, align 4, !tbaa !20
  %281 = call float @llvm.fmuladd.f32(float %279, float %280, float %277)
  %282 = load ptr, ptr %v21_t, align 8, !tbaa !19
  store float %281, ptr %282, align 4, !tbaa !20
  %283 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %284 = load ptr, ptr %v21, align 8, !tbaa !19
  %285 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %283, ptr noundef %psi11_minus_alpha12, ptr noundef %284, i32 noundef %285)
  %286 = load float, ptr %alpha12, align 4, !tbaa !20
  %287 = load ptr, ptr %a12t_l, align 8, !tbaa !19
  store float %286, ptr %287, align 4, !tbaa !20
  %288 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub228 = sub nsw i32 %288, 1
  %289 = load ptr, ptr %v21_b, align 8, !tbaa !19
  %290 = load i32, ptr %inc_v, align 4, !tbaa !4
  %291 = load ptr, ptr %a12t_r, align 8, !tbaa !19
  %292 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %sub228, ptr noundef %289, i32 noundef %290, ptr noundef %291, i32 noundef %292)
  br label %if.end229

if.end229:                                        ; preds = %if.then224, %if.end221
  %293 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %294 = load ptr, ptr %u21p, align 8, !tbaa !19
  %295 = load i32, ptr %inc_up, align 4, !tbaa !4
  %296 = load ptr, ptr %u21, align 8, !tbaa !19
  %297 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %293, ptr noundef %294, i32 noundef %295, ptr noundef %296, i32 noundef %297)
  %298 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp230 = icmp sgt i32 %298, 0
  br i1 %cmp230, label %if.then232, label %if.end235

if.then232:                                       ; preds = %if.end229
  %299 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %300 = load ptr, ptr %y21, align 8, !tbaa !19
  %301 = load i32, ptr %inc_y, align 4, !tbaa !4
  %302 = load ptr, ptr %v21, align 8, !tbaa !19
  %303 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_sdot(i32 noundef 501, i32 noundef %299, ptr noundef %300, i32 noundef %301, ptr noundef %302, i32 noundef %303, ptr noundef %beta)
  %304 = load float, ptr %minus_inv_tau11, align 4, !tbaa !20
  %305 = load float, ptr %beta, align 4, !tbaa !20
  %mul233 = fmul float %304, %305
  store float %mul233, ptr %beta, align 4, !tbaa !20
  %306 = load float, ptr %alpha12, align 4, !tbaa !20
  store float %306, ptr %minus_conj_alpha12, align 4, !tbaa !20
  %307 = load float, ptr %minus_conj_alpha12, align 4, !tbaa !20
  %mul234 = fmul float %307, -1.000000e+00
  store float %mul234, ptr %minus_conj_alpha12, align 4, !tbaa !20
  %308 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %309 = load ptr, ptr %w21, align 8, !tbaa !19
  %310 = load i32, ptr %inc_w, align 4, !tbaa !4
  %311 = load ptr, ptr %z21, align 8, !tbaa !19
  %312 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 500, i32 noundef %308, ptr noundef %309, i32 noundef %310, ptr noundef %311, i32 noundef %312)
  %313 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %314 = load ptr, ptr %A22_l, align 8, !tbaa !19
  %315 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %316 = load ptr, ptr %z21, align 8, !tbaa !19
  %317 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %313, ptr noundef %minus_conj_alpha12, ptr noundef %314, i32 noundef %315, ptr noundef %316, i32 noundef %317)
  %318 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %319 = load ptr, ptr %z21, align 8, !tbaa !19
  %320 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_sinvscalv(i32 noundef 501, i32 noundef %318, ptr noundef %psi11_minus_alpha12, ptr noundef %319, i32 noundef %320)
  %321 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %322 = load ptr, ptr %u21, align 8, !tbaa !19
  %323 = load i32, ptr %inc_u, align 4, !tbaa !4
  %324 = load ptr, ptr %z21, align 8, !tbaa !19
  %325 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_saxpyv(i32 noundef 500, i32 noundef %321, ptr noundef %beta, ptr noundef %322, i32 noundef %323, ptr noundef %324, i32 noundef %325)
  %326 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %327 = load ptr, ptr %tau11, align 8, !tbaa !19
  %328 = load ptr, ptr %y21, align 8, !tbaa !19
  %329 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_sinvscalv(i32 noundef 501, i32 noundef %326, ptr noundef %327, ptr noundef %328, i32 noundef %329)
  %330 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %331 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %332 = load ptr, ptr %z21, align 8, !tbaa !19
  %333 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %330, ptr noundef %331, ptr noundef %332, i32 noundef %333)
  %334 = load i32, ptr %m_behind, align 4, !tbaa !4
  %335 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %336 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %337 = load ptr, ptr %A02, align 8, !tbaa !19
  %338 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %339 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %340 = load ptr, ptr %v21, align 8, !tbaa !19
  %341 = load i32, ptr %inc_v, align 4, !tbaa !4
  %342 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %343 = load ptr, ptr %s01, align 8, !tbaa !19
  %344 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 501, i32 noundef %334, i32 noundef %335, ptr noundef %336, ptr noundef %337, i32 noundef %338, i32 noundef %339, ptr noundef %340, i32 noundef %341, ptr noundef %342, ptr noundef %343, i32 noundef %344)
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.end229
  %345 = load i32, ptr %n_behind, align 4, !tbaa !4
  %346 = load ptr, ptr %a10t, align 8, !tbaa !19
  %347 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %348 = load ptr, ptr %t01, align 8, !tbaa !19
  %349 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_scopyv(i32 noundef 501, i32 noundef %345, ptr noundef %346, i32 noundef %347, ptr noundef %348, i32 noundef %349)
  %350 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %351 = load i32, ptr %n_behind, align 4, !tbaa !4
  %352 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %353 = load ptr, ptr %A20, align 8, !tbaa !19
  %354 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %355 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %356 = load ptr, ptr %u21, align 8, !tbaa !19
  %357 = load i32, ptr %inc_u, align 4, !tbaa !4
  %358 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %359 = load ptr, ptr %t01, align 8, !tbaa !19
  %360 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_sgemv(i32 noundef 103, i32 noundef 500, i32 noundef %350, i32 noundef %351, ptr noundef %352, ptr noundef %353, i32 noundef %354, i32 noundef %355, ptr noundef %356, i32 noundef %357, ptr noundef %358, ptr noundef %359, i32 noundef %360)
  %361 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add236 = add nsw i32 %361, 1
  %362 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp237 = icmp eq i32 %add236, %362
  br i1 %cmp237, label %land.lhs.true239, label %if.end243

land.lhs.true239:                                 ; preds = %if.end235
  %363 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp240 = icmp sgt i32 %363, 0
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %land.lhs.true239
  %364 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %365 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %366 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %367 = load ptr, ptr %u21, align 8, !tbaa !19
  %368 = load i32, ptr %inc_u, align 4, !tbaa !4
  %369 = load ptr, ptr %y21, align 8, !tbaa !19
  %370 = load i32, ptr %inc_y, align 4, !tbaa !4
  %371 = load ptr, ptr %A22, align 8, !tbaa !19
  %372 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %373 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_sger(i32 noundef 500, i32 noundef 500, i32 noundef %364, i32 noundef %365, ptr noundef %366, ptr noundef %367, i32 noundef %368, ptr noundef %369, i32 noundef %370, ptr noundef %371, i32 noundef %372, i32 noundef %373)
  %374 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %375 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %376 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %377 = load ptr, ptr %z21, align 8, !tbaa !19
  %378 = load i32, ptr %inc_z, align 4, !tbaa !4
  %379 = load ptr, ptr %v21, align 8, !tbaa !19
  %380 = load i32, ptr %inc_v, align 4, !tbaa !4
  %381 = load ptr, ptr %A22, align 8, !tbaa !19
  %382 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %383 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_sger(i32 noundef 500, i32 noundef 500, i32 noundef %374, i32 noundef %375, ptr noundef %376, ptr noundef %377, i32 noundef %378, ptr noundef %379, i32 noundef %380, ptr noundef %381, i32 noundef %382, i32 noundef %383)
  br label %if.end243

if.end243:                                        ; preds = %if.then242, %land.lhs.true239, %if.end235
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nu11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sigma11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end243
  %384 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %384, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %385 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %385)
  %386 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %386)
  %387 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %387)
  %388 = load ptr, ptr %buff_up, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %388)
  %389 = load ptr, ptr %buff_v, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %389)
  %390 = load ptr, ptr %buff_y, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %390)
  %391 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %391)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_up) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_ap) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_v) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_up) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_ap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Bidiag_UT_u_step_ofd_var3(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %alpha12 = alloca double, align 8
  %minus_conj_alpha12 = alloca double, align 8
  %psi11_minus_alpha12 = alloca double, align 8
  %minus_inv_tau11 = alloca double, align 8
  %minus_upsilon11 = alloca double, align 8
  %minus_conj_nu11 = alloca double, align 8
  %minus_conj_psi11 = alloca double, align 8
  %minus_zeta11 = alloca double, align 8
  %beta = alloca double, align 8
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_w = alloca ptr, align 8
  %buff_ap = alloca ptr, align 8
  %buff_u = alloca ptr, align 8
  %buff_up = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_y = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %inc_w = alloca i32, align 4
  %inc_ap = alloca i32, align 4
  %inc_u = alloca i32, align 4
  %inc_up = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a12p = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %u21p = alloca ptr, align 8
  %nu11 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %psi11 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %a12p_t = alloca ptr, align 8
  %a12p_b = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %A22_l = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %m_TS, ptr %m_TS.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  store ptr %buff_S, ptr %buff_S.addr, align 8, !tbaa !19
  store i32 %rs_S, ptr %rs_S.addr, align 4, !tbaa !4
  store i32 %cs_S, ptr %cs_S.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds double, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds double, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 16
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds double, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 16
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds double, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds double, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %36 = load i32, ptr %m_TS.addr, align 4, !tbaa !4
  store i32 %36, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %37 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 8
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_ap) #5
  %38 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 8
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_ap, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %39 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 8
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_up) #5
  %40 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 8
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_up, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_v) #5
  %41 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 8
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y) #5
  %42 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 8
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %43 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %43 to i64
  %mul52 = mul i64 %conv51, 8
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_ap) #5
  store i32 1, ptr %inc_ap, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_up) #5
  store i32 1, ptr %inc_up, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_v) #5
  store i32 1, ptr %inc_v, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_y) #5
  store i32 1, ptr %inc_y, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %44 = load i32, ptr %i, align 4, !tbaa !4
  %45 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #5
  %46 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %47
  %idx.ext = sext i32 %mul56 to i64
  %add.ptr57 = getelementptr inbounds double, ptr %46, i64 %idx.ext
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul58 = mul nsw i32 %48, %49
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds double, ptr %add.ptr57, i64 %idx.ext59
  store ptr %add.ptr60, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 0, %51
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds double, ptr %50, i64 %idx.ext62
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %52, 1
  %53 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add, %53
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds double, ptr %add.ptr63, i64 %idx.ext65
  store ptr %add.ptr66, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %54 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %55, %56
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds double, ptr %54, i64 %idx.ext68
  %57 = load i32, ptr %i, align 4, !tbaa !4
  %58 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %57, %58
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds double, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %59 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul73 = mul nsw i32 %60, %61
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds double, ptr %59, i64 %idx.ext74
  %62 = load i32, ptr %i, align 4, !tbaa !4
  %add76 = add nsw i32 %62, 1
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 %add76, %63
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds double, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #5
  %64 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %add80 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul81 = mul nsw i32 %add80, %66
  %idx.ext82 = sext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds double, ptr %64, i64 %idx.ext82
  %67 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul84 = mul nsw i32 0, %67
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds double, ptr %add.ptr83, i64 %idx.ext85
  store ptr %add.ptr86, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #5
  %68 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %add87 = add nsw i32 %69, 1
  %70 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 %add87, %70
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds double, ptr %68, i64 %idx.ext89
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %72 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %71, %72
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds double, ptr %add.ptr90, i64 %idx.ext92
  store ptr %add.ptr93, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %73 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %add94 = add nsw i32 %74, 1
  %75 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul95 = mul nsw i32 %add94, %75
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds double, ptr %73, i64 %idx.ext96
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %add98 = add nsw i32 %76, 1
  %77 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul99 = mul nsw i32 %add98, %77
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds double, ptr %add.ptr97, i64 %idx.ext100
  store ptr %add.ptr101, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %78 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %79 = load i32, ptr %i, align 4, !tbaa !4
  %80 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul102 = mul nsw i32 %79, %80
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds double, ptr %78, i64 %idx.ext103
  %81 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul105 = mul nsw i32 0, %81
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds double, ptr %add.ptr104, i64 %idx.ext106
  store ptr %add.ptr107, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %82 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %83 = load i32, ptr %i, align 4, !tbaa !4
  %84 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul108 = mul nsw i32 %83, %84
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds double, ptr %82, i64 %idx.ext109
  %85 = load i32, ptr %i, align 4, !tbaa !4
  %86 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul111 = mul nsw i32 %85, %86
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds double, ptr %add.ptr110, i64 %idx.ext112
  store ptr %add.ptr113, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %s01) #5
  %87 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %88 = load i32, ptr %i, align 4, !tbaa !4
  %89 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul114 = mul nsw i32 %88, %89
  %idx.ext115 = sext i32 %mul114 to i64
  %add.ptr116 = getelementptr inbounds double, ptr %87, i64 %idx.ext115
  %90 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul117 = mul nsw i32 0, %90
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds double, ptr %add.ptr116, i64 %idx.ext118
  store ptr %add.ptr119, ptr %s01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %sigma11) #5
  %91 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %92 = load i32, ptr %i, align 4, !tbaa !4
  %93 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul120 = mul nsw i32 %92, %93
  %idx.ext121 = sext i32 %mul120 to i64
  %add.ptr122 = getelementptr inbounds double, ptr %91, i64 %idx.ext121
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %95 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul123 = mul nsw i32 %94, %95
  %idx.ext124 = sext i32 %mul123 to i64
  %add.ptr125 = getelementptr inbounds double, ptr %add.ptr122, i64 %idx.ext124
  store ptr %add.ptr125, ptr %sigma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %96 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %97 = load i32, ptr %i, align 4, !tbaa !4
  %add126 = add nsw i32 %97, 1
  %98 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul127 = mul nsw i32 %add126, %98
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds double, ptr %96, i64 %idx.ext128
  store ptr %add.ptr129, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p) #5
  %99 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  %100 = load i32, ptr %i, align 4, !tbaa !4
  %add130 = add nsw i32 %100, 1
  %101 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul131 = mul nsw i32 %add130, %101
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds double, ptr %99, i64 %idx.ext132
  store ptr %add.ptr133, ptr %a12p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %102 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %103 = load i32, ptr %i, align 4, !tbaa !4
  %104 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul134 = mul nsw i32 %103, %104
  %idx.ext135 = sext i32 %mul134 to i64
  %add.ptr136 = getelementptr inbounds double, ptr %102, i64 %idx.ext135
  store ptr %add.ptr136, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %105 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %106 = load i32, ptr %i, align 4, !tbaa !4
  %add137 = add nsw i32 %106, 1
  %107 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul138 = mul nsw i32 %add137, %107
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds double, ptr %105, i64 %idx.ext139
  store ptr %add.ptr140, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21p) #5
  %108 = load ptr, ptr %buff_up, align 8, !tbaa !19
  %109 = load i32, ptr %i, align 4, !tbaa !4
  %add141 = add nsw i32 %109, 1
  %110 = load i32, ptr %inc_up, align 4, !tbaa !4
  %mul142 = mul nsw i32 %add141, %110
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds double, ptr %108, i64 %idx.ext143
  store ptr %add.ptr144, ptr %u21p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %nu11) #5
  %111 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %112 = load i32, ptr %i, align 4, !tbaa !4
  %113 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul145 = mul nsw i32 %112, %113
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds double, ptr %111, i64 %idx.ext146
  store ptr %add.ptr147, ptr %nu11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21) #5
  %114 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %115 = load i32, ptr %i, align 4, !tbaa !4
  %add148 = add nsw i32 %115, 1
  %116 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul149 = mul nsw i32 %add148, %116
  %idx.ext150 = sext i32 %mul149 to i64
  %add.ptr151 = getelementptr inbounds double, ptr %114, i64 %idx.ext150
  store ptr %add.ptr151, ptr %v21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi11) #5
  %117 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %118 = load i32, ptr %i, align 4, !tbaa !4
  %119 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul152 = mul nsw i32 %118, %119
  %idx.ext153 = sext i32 %mul152 to i64
  %add.ptr154 = getelementptr inbounds double, ptr %117, i64 %idx.ext153
  store ptr %add.ptr154, ptr %psi11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y21) #5
  %120 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %121 = load i32, ptr %i, align 4, !tbaa !4
  %add155 = add nsw i32 %121, 1
  %122 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul156 = mul nsw i32 %add155, %122
  %idx.ext157 = sext i32 %mul156 to i64
  %add.ptr158 = getelementptr inbounds double, ptr %120, i64 %idx.ext157
  store ptr %add.ptr158, ptr %y21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %123 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %124 = load i32, ptr %i, align 4, !tbaa !4
  %125 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul159 = mul nsw i32 %124, %125
  %idx.ext160 = sext i32 %mul159 to i64
  %add.ptr161 = getelementptr inbounds double, ptr %123, i64 %idx.ext160
  store ptr %add.ptr161, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %126 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %127 = load i32, ptr %i, align 4, !tbaa !4
  %add162 = add nsw i32 %127, 1
  %128 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul163 = mul nsw i32 %add162, %128
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds double, ptr %126, i64 %idx.ext164
  store ptr %add.ptr165, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_t) #5
  %129 = load ptr, ptr %a12p, align 8, !tbaa !19
  %130 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul166 = mul nsw i32 0, %130
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds double, ptr %129, i64 %idx.ext167
  store ptr %add.ptr168, ptr %a12p_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_b) #5
  %131 = load ptr, ptr %a12p, align 8, !tbaa !19
  %132 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul169 = mul nsw i32 1, %132
  %idx.ext170 = sext i32 %mul169 to i64
  %add.ptr171 = getelementptr inbounds double, ptr %131, i64 %idx.ext170
  store ptr %add.ptr171, ptr %a12p_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_t) #5
  %133 = load ptr, ptr %v21, align 8, !tbaa !19
  %134 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul172 = mul nsw i32 0, %134
  %idx.ext173 = sext i32 %mul172 to i64
  %add.ptr174 = getelementptr inbounds double, ptr %133, i64 %idx.ext173
  store ptr %add.ptr174, ptr %v21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_b) #5
  %135 = load ptr, ptr %v21, align 8, !tbaa !19
  %136 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul175 = mul nsw i32 1, %136
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds double, ptr %135, i64 %idx.ext176
  store ptr %add.ptr177, ptr %v21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_l) #5
  %137 = load ptr, ptr %a12t, align 8, !tbaa !19
  %138 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul178 = mul nsw i32 0, %138
  %idx.ext179 = sext i32 %mul178 to i64
  %add.ptr180 = getelementptr inbounds double, ptr %137, i64 %idx.ext179
  %139 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul181 = mul nsw i32 0, %139
  %idx.ext182 = sext i32 %mul181 to i64
  %add.ptr183 = getelementptr inbounds double, ptr %add.ptr180, i64 %idx.ext182
  store ptr %add.ptr183, ptr %a12t_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_r) #5
  %140 = load ptr, ptr %a12t, align 8, !tbaa !19
  %141 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul184 = mul nsw i32 1, %141
  %idx.ext185 = sext i32 %mul184 to i64
  %add.ptr186 = getelementptr inbounds double, ptr %140, i64 %idx.ext185
  %142 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul187 = mul nsw i32 0, %142
  %idx.ext188 = sext i32 %mul187 to i64
  %add.ptr189 = getelementptr inbounds double, ptr %add.ptr186, i64 %idx.ext188
  store ptr %add.ptr189, ptr %a12t_r, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22_l) #5
  %143 = load ptr, ptr %A22, align 8, !tbaa !19
  %144 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul190 = mul nsw i32 0, %144
  %idx.ext191 = sext i32 %mul190 to i64
  %add.ptr192 = getelementptr inbounds double, ptr %143, i64 %idx.ext191
  %145 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul193 = mul nsw i32 0, %145
  %idx.ext194 = sext i32 %mul193 to i64
  %add.ptr195 = getelementptr inbounds double, ptr %add.ptr192, i64 %idx.ext194
  store ptr %add.ptr195, ptr %A22_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %146 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %146, %147
  %sub196 = sub nsw i32 %sub, 1
  store i32 %sub196, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #5
  %148 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %149 = load i32, ptr %i, align 4, !tbaa !4
  %sub197 = sub nsw i32 %148, %149
  %sub198 = sub nsw i32 %sub197, 1
  store i32 %sub198, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %150 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %150, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %151 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %151, ptr %n_behind, align 4, !tbaa !4
  %152 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp199 = icmp sgt i32 %152, 0
  br i1 %cmp199, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %153 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %154 = load double, ptr %153, align 8, !tbaa !24
  %155 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %156 = load double, ptr %155, align 8, !tbaa !24
  %mul201 = fmul double %154, %156
  store double %mul201, ptr %minus_upsilon11, align 8, !tbaa !24
  %157 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %158 = load double, ptr %157, align 8, !tbaa !24
  %159 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %160 = load double, ptr %159, align 8, !tbaa !24
  %mul202 = fmul double %158, %160
  store double %mul202, ptr %minus_zeta11, align 8, !tbaa !24
  %161 = load ptr, ptr %psi11, align 8, !tbaa !19
  %162 = load double, ptr %161, align 8, !tbaa !24
  store double %162, ptr %minus_conj_psi11, align 8, !tbaa !24
  %163 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %164 = load double, ptr %163, align 8, !tbaa !24
  %165 = load double, ptr %minus_conj_psi11, align 8, !tbaa !24
  %mul203 = fmul double %164, %165
  store double %mul203, ptr %minus_conj_psi11, align 8, !tbaa !24
  %166 = load ptr, ptr %nu11, align 8, !tbaa !19
  %167 = load double, ptr %166, align 8, !tbaa !24
  store double %167, ptr %minus_conj_nu11, align 8, !tbaa !24
  %168 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %169 = load double, ptr %168, align 8, !tbaa !24
  %170 = load double, ptr %minus_conj_nu11, align 8, !tbaa !24
  %mul204 = fmul double %169, %170
  store double %mul204, ptr %minus_conj_nu11, align 8, !tbaa !24
  %171 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %172 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_conj_psi11, ptr noundef %171, i32 noundef 1, ptr noundef %172, i32 noundef 1)
  %173 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %174 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_conj_nu11, ptr noundef %173, i32 noundef 1, ptr noundef %174, i32 noundef 1)
  %175 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %176 = load ptr, ptr %u21, align 8, !tbaa !19
  %177 = load i32, ptr %inc_u, align 4, !tbaa !4
  %178 = load ptr, ptr %a21, align 8, !tbaa !19
  %179 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %175, ptr noundef %minus_conj_psi11, ptr noundef %176, i32 noundef %177, ptr noundef %178, i32 noundef %179)
  %180 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %181 = load ptr, ptr %z21, align 8, !tbaa !19
  %182 = load i32, ptr %inc_z, align 4, !tbaa !4
  %183 = load ptr, ptr %a21, align 8, !tbaa !19
  %184 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %180, ptr noundef %minus_conj_nu11, ptr noundef %181, i32 noundef %182, ptr noundef %183, i32 noundef %184)
  %185 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %186 = load ptr, ptr %y21, align 8, !tbaa !19
  %187 = load i32, ptr %inc_y, align 4, !tbaa !4
  %188 = load ptr, ptr %a12t, align 8, !tbaa !19
  %189 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 501, i32 noundef %185, ptr noundef %minus_upsilon11, ptr noundef %186, i32 noundef %187, ptr noundef %188, i32 noundef %189)
  %190 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %191 = load ptr, ptr %v21, align 8, !tbaa !19
  %192 = load i32, ptr %inc_v, align 4, !tbaa !4
  %193 = load ptr, ptr %a12t, align 8, !tbaa !19
  %194 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 501, i32 noundef %190, ptr noundef %minus_zeta11, ptr noundef %191, i32 noundef %192, ptr noundef %193, i32 noundef %194)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %195 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %196 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %197 = load ptr, ptr %a21, align 8, !tbaa !19
  %198 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %199 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call205 = call i32 @FLA_Househ2_UT_l_opd(i32 noundef %195, ptr noundef %196, ptr noundef %197, i32 noundef %198, ptr noundef %199)
  %200 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %201 = load ptr, ptr %a21, align 8, !tbaa !19
  %202 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %203 = load ptr, ptr %u21p, align 8, !tbaa !19
  %204 = load i32, ptr %inc_up, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %200, ptr noundef %201, i32 noundef %202, ptr noundef %203, i32 noundef %204)
  %205 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp206 = icmp sgt i32 %205, 0
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.end
  %206 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %207 = load double, ptr %206, align 8, !tbaa !24
  %208 = load ptr, ptr %tau11, align 8, !tbaa !19
  %209 = load double, ptr %208, align 8, !tbaa !24
  %div = fdiv double %207, %209
  store double %div, ptr %minus_inv_tau11, align 8, !tbaa !24
  %210 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %211 = load ptr, ptr %a12t, align 8, !tbaa !19
  %212 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %213 = load ptr, ptr %a12p, align 8, !tbaa !19
  %214 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %210, ptr noundef %211, i32 noundef %212, ptr noundef %213, i32 noundef %214)
  %215 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %216 = load ptr, ptr %a12t, align 8, !tbaa !19
  %217 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %218 = load ptr, ptr %a12p, align 8, !tbaa !19
  %219 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %215, ptr noundef %minus_inv_tau11, ptr noundef %216, i32 noundef %217, ptr noundef %218, i32 noundef %219)
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %if.end
  %220 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp210 = icmp sgt i32 %220, 0
  br i1 %cmp210, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end209
  %221 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp212 = icmp sgt i32 %221, 0
  br i1 %cmp212, label %if.then214, label %if.else

if.then214:                                       ; preds = %land.lhs.true
  %222 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %223 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %224 = load ptr, ptr %tau11, align 8, !tbaa !19
  %225 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %226 = load ptr, ptr %u21, align 8, !tbaa !19
  %227 = load i32, ptr %inc_u, align 4, !tbaa !4
  %228 = load ptr, ptr %y21, align 8, !tbaa !19
  %229 = load i32, ptr %inc_y, align 4, !tbaa !4
  %230 = load ptr, ptr %z21, align 8, !tbaa !19
  %231 = load i32, ptr %inc_z, align 4, !tbaa !4
  %232 = load ptr, ptr %v21, align 8, !tbaa !19
  %233 = load i32, ptr %inc_v, align 4, !tbaa !4
  %234 = load ptr, ptr %A22, align 8, !tbaa !19
  %235 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %236 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %237 = load ptr, ptr %u21p, align 8, !tbaa !19
  %238 = load i32, ptr %inc_up, align 4, !tbaa !4
  %239 = load ptr, ptr %a12p, align 8, !tbaa !19
  %240 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %241 = load ptr, ptr %w21, align 8, !tbaa !19
  %242 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call215 = call i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_opd_var1(i32 noundef %222, i32 noundef %223, ptr noundef %224, ptr noundef %225, ptr noundef %226, i32 noundef %227, ptr noundef %228, i32 noundef %229, ptr noundef %230, i32 noundef %231, ptr noundef %232, i32 noundef %233, ptr noundef %234, i32 noundef %235, i32 noundef %236, ptr noundef %237, i32 noundef %238, ptr noundef %239, i32 noundef %240, ptr noundef %241, i32 noundef %242)
  br label %if.end221

if.else:                                          ; preds = %land.lhs.true, %if.end209
  %243 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp216 = icmp sgt i32 %243, 0
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %if.else
  %244 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %245 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %246 = load ptr, ptr %tau11, align 8, !tbaa !19
  %247 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %248 = load ptr, ptr %A22, align 8, !tbaa !19
  %249 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %250 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %251 = load ptr, ptr %u21p, align 8, !tbaa !19
  %252 = load i32, ptr %inc_up, align 4, !tbaa !4
  %253 = load ptr, ptr %a12p, align 8, !tbaa !19
  %254 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %255 = load ptr, ptr %y21, align 8, !tbaa !19
  %256 = load i32, ptr %inc_y, align 4, !tbaa !4
  %257 = load ptr, ptr %w21, align 8, !tbaa !19
  %258 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call219 = call i32 @FLA_Fused_Ahx_Axpy_Ax_opd_var1(i32 noundef %244, i32 noundef %245, ptr noundef %246, ptr noundef %247, ptr noundef %248, i32 noundef %249, i32 noundef %250, ptr noundef %251, i32 noundef %252, ptr noundef %253, i32 noundef %254, ptr noundef %255, i32 noundef %256, ptr noundef %257, i32 noundef %258)
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %if.else
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then214
  %259 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp222 = icmp sgt i32 %259, 0
  br i1 %cmp222, label %if.then224, label %if.end230

if.then224:                                       ; preds = %if.end221
  %260 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %261 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %262 = load ptr, ptr %a12t, align 8, !tbaa !19
  %263 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %264 = load ptr, ptr %y21, align 8, !tbaa !19
  %265 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 501, i32 noundef %260, ptr noundef %261, ptr noundef %262, i32 noundef %263, ptr noundef %264, i32 noundef %265)
  %266 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub225 = sub nsw i32 %266, 1
  %267 = load ptr, ptr %a12p_t, align 8, !tbaa !19
  %268 = load ptr, ptr %a12p_b, align 8, !tbaa !19
  %269 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %270 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %call226 = call i32 @FLA_Househ2s_UT_r_opd(i32 noundef %sub225, ptr noundef %267, ptr noundef %268, i32 noundef %269, ptr noundef %alpha12, ptr noundef %psi11_minus_alpha12, ptr noundef %270)
  %271 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %272 = load ptr, ptr %a12p, align 8, !tbaa !19
  %273 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %274 = load ptr, ptr %v21, align 8, !tbaa !19
  %275 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %271, ptr noundef %272, i32 noundef %273, ptr noundef %274, i32 noundef %275)
  %276 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %277 = load double, ptr %276, align 8, !tbaa !24
  %278 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %279 = load double, ptr %278, align 8, !tbaa !24
  %280 = load double, ptr %alpha12, align 8, !tbaa !24
  %281 = call double @llvm.fmuladd.f64(double %279, double %280, double %277)
  %282 = load ptr, ptr %v21_t, align 8, !tbaa !19
  store double %281, ptr %282, align 8, !tbaa !24
  %283 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %284 = load ptr, ptr %v21, align 8, !tbaa !19
  %285 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %283, ptr noundef %psi11_minus_alpha12, ptr noundef %284, i32 noundef %285)
  %286 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub228 = sub nsw i32 %286, 1
  %287 = load ptr, ptr %v21_b, align 8, !tbaa !19
  %288 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_dconjv(i32 noundef %sub228, ptr noundef %287, i32 noundef %288)
  %289 = load double, ptr %alpha12, align 8, !tbaa !24
  %290 = load ptr, ptr %a12t_l, align 8, !tbaa !19
  store double %289, ptr %290, align 8, !tbaa !24
  %291 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub229 = sub nsw i32 %291, 1
  %292 = load ptr, ptr %v21_b, align 8, !tbaa !19
  %293 = load i32, ptr %inc_v, align 4, !tbaa !4
  %294 = load ptr, ptr %a12t_r, align 8, !tbaa !19
  %295 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %sub229, ptr noundef %292, i32 noundef %293, ptr noundef %294, i32 noundef %295)
  br label %if.end230

if.end230:                                        ; preds = %if.then224, %if.end221
  %296 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %297 = load ptr, ptr %u21p, align 8, !tbaa !19
  %298 = load i32, ptr %inc_up, align 4, !tbaa !4
  %299 = load ptr, ptr %u21, align 8, !tbaa !19
  %300 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %296, ptr noundef %297, i32 noundef %298, ptr noundef %299, i32 noundef %300)
  %301 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp231 = icmp sgt i32 %301, 0
  br i1 %cmp231, label %if.then233, label %if.end236

if.then233:                                       ; preds = %if.end230
  %302 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %303 = load ptr, ptr %y21, align 8, !tbaa !19
  %304 = load i32, ptr %inc_y, align 4, !tbaa !4
  %305 = load ptr, ptr %v21, align 8, !tbaa !19
  %306 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_ddot(i32 noundef 501, i32 noundef %302, ptr noundef %303, i32 noundef %304, ptr noundef %305, i32 noundef %306, ptr noundef %beta)
  %307 = load double, ptr %minus_inv_tau11, align 8, !tbaa !24
  %308 = load double, ptr %beta, align 8, !tbaa !24
  %mul234 = fmul double %307, %308
  store double %mul234, ptr %beta, align 8, !tbaa !24
  %309 = load double, ptr %alpha12, align 8, !tbaa !24
  store double %309, ptr %minus_conj_alpha12, align 8, !tbaa !24
  %310 = load double, ptr %minus_conj_alpha12, align 8, !tbaa !24
  %mul235 = fmul double %310, -1.000000e+00
  store double %mul235, ptr %minus_conj_alpha12, align 8, !tbaa !24
  %311 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %312 = load ptr, ptr %w21, align 8, !tbaa !19
  %313 = load i32, ptr %inc_w, align 4, !tbaa !4
  %314 = load ptr, ptr %z21, align 8, !tbaa !19
  %315 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 500, i32 noundef %311, ptr noundef %312, i32 noundef %313, ptr noundef %314, i32 noundef %315)
  %316 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %317 = load ptr, ptr %A22_l, align 8, !tbaa !19
  %318 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %319 = load ptr, ptr %z21, align 8, !tbaa !19
  %320 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %316, ptr noundef %minus_conj_alpha12, ptr noundef %317, i32 noundef %318, ptr noundef %319, i32 noundef %320)
  %321 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %322 = load ptr, ptr %z21, align 8, !tbaa !19
  %323 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_dinvscalv(i32 noundef 501, i32 noundef %321, ptr noundef %psi11_minus_alpha12, ptr noundef %322, i32 noundef %323)
  %324 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %325 = load ptr, ptr %u21, align 8, !tbaa !19
  %326 = load i32, ptr %inc_u, align 4, !tbaa !4
  %327 = load ptr, ptr %z21, align 8, !tbaa !19
  %328 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_daxpyv(i32 noundef 500, i32 noundef %324, ptr noundef %beta, ptr noundef %325, i32 noundef %326, ptr noundef %327, i32 noundef %328)
  %329 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %330 = load ptr, ptr %tau11, align 8, !tbaa !19
  %331 = load ptr, ptr %y21, align 8, !tbaa !19
  %332 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_dinvscalv(i32 noundef 501, i32 noundef %329, ptr noundef %330, ptr noundef %331, i32 noundef %332)
  %333 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %334 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %335 = load ptr, ptr %z21, align 8, !tbaa !19
  %336 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %333, ptr noundef %334, ptr noundef %335, i32 noundef %336)
  %337 = load i32, ptr %m_behind, align 4, !tbaa !4
  %338 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %339 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %340 = load ptr, ptr %A02, align 8, !tbaa !19
  %341 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %342 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %343 = load ptr, ptr %v21, align 8, !tbaa !19
  %344 = load i32, ptr %inc_v, align 4, !tbaa !4
  %345 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %346 = load ptr, ptr %s01, align 8, !tbaa !19
  %347 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  call void @bl1_dgemv(i32 noundef 102, i32 noundef 500, i32 noundef %337, i32 noundef %338, ptr noundef %339, ptr noundef %340, i32 noundef %341, i32 noundef %342, ptr noundef %343, i32 noundef %344, ptr noundef %345, ptr noundef %346, i32 noundef %347)
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %if.end230
  %348 = load i32, ptr %n_behind, align 4, !tbaa !4
  %349 = load ptr, ptr %a10t, align 8, !tbaa !19
  %350 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %351 = load ptr, ptr %t01, align 8, !tbaa !19
  %352 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_dcopyv(i32 noundef 501, i32 noundef %348, ptr noundef %349, i32 noundef %350, ptr noundef %351, i32 noundef %352)
  %353 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %354 = load i32, ptr %n_behind, align 4, !tbaa !4
  %355 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %356 = load ptr, ptr %A20, align 8, !tbaa !19
  %357 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %358 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %359 = load ptr, ptr %u21, align 8, !tbaa !19
  %360 = load i32, ptr %inc_u, align 4, !tbaa !4
  %361 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %362 = load ptr, ptr %t01, align 8, !tbaa !19
  %363 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_dgemv(i32 noundef 103, i32 noundef 500, i32 noundef %353, i32 noundef %354, ptr noundef %355, ptr noundef %356, i32 noundef %357, i32 noundef %358, ptr noundef %359, i32 noundef %360, ptr noundef %361, ptr noundef %362, i32 noundef %363)
  %364 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add237 = add nsw i32 %364, 1
  %365 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp238 = icmp eq i32 %add237, %365
  br i1 %cmp238, label %land.lhs.true240, label %if.end244

land.lhs.true240:                                 ; preds = %if.end236
  %366 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp241 = icmp sgt i32 %366, 0
  br i1 %cmp241, label %if.then243, label %if.end244

if.then243:                                       ; preds = %land.lhs.true240
  %367 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %368 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %369 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %370 = load ptr, ptr %u21, align 8, !tbaa !19
  %371 = load i32, ptr %inc_u, align 4, !tbaa !4
  %372 = load ptr, ptr %y21, align 8, !tbaa !19
  %373 = load i32, ptr %inc_y, align 4, !tbaa !4
  %374 = load ptr, ptr %A22, align 8, !tbaa !19
  %375 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %376 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dger(i32 noundef 500, i32 noundef 501, i32 noundef %367, i32 noundef %368, ptr noundef %369, ptr noundef %370, i32 noundef %371, ptr noundef %372, i32 noundef %373, ptr noundef %374, i32 noundef %375, i32 noundef %376)
  %377 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %378 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %379 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %380 = load ptr, ptr %z21, align 8, !tbaa !19
  %381 = load i32, ptr %inc_z, align 4, !tbaa !4
  %382 = load ptr, ptr %v21, align 8, !tbaa !19
  %383 = load i32, ptr %inc_v, align 4, !tbaa !4
  %384 = load ptr, ptr %A22, align 8, !tbaa !19
  %385 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %386 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dger(i32 noundef 500, i32 noundef 501, i32 noundef %377, i32 noundef %378, ptr noundef %379, ptr noundef %380, i32 noundef %381, ptr noundef %382, i32 noundef %383, ptr noundef %384, i32 noundef %385, i32 noundef %386)
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %land.lhs.true240, %if.end236
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nu11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sigma11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end244
  %387 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %387, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %388 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %388)
  %389 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %389)
  %390 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %390)
  %391 = load ptr, ptr %buff_up, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %391)
  %392 = load ptr, ptr %buff_v, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %392)
  %393 = load ptr, ptr %buff_y, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %393)
  %394 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %394)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_up) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_ap) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_v) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_up) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_ap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Bidiag_UT_u_step_ofc_var3(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %alpha12 = alloca %struct.scomplex, align 4
  %minus_conj_alpha12 = alloca %struct.scomplex, align 4
  %psi11_minus_alpha12 = alloca %struct.scomplex, align 4
  %minus_inv_tau11 = alloca %struct.scomplex, align 4
  %minus_upsilon11 = alloca %struct.scomplex, align 4
  %minus_conj_nu11 = alloca %struct.scomplex, align 4
  %minus_conj_psi11 = alloca %struct.scomplex, align 4
  %minus_zeta11 = alloca %struct.scomplex, align 4
  %beta = alloca %struct.scomplex, align 4
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_w = alloca ptr, align 8
  %buff_ap = alloca ptr, align 8
  %buff_u = alloca ptr, align 8
  %buff_up = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_y = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %inc_w = alloca i32, align 4
  %inc_ap = alloca i32, align 4
  %inc_u = alloca i32, align 4
  %inc_up = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a12p = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %u21p = alloca ptr, align 8
  %nu11 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %psi11 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %a12p_t = alloca ptr, align 8
  %a12p_b = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %A22_l = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  %tempr = alloca float, align 4
  %tempi = alloca float, align 4
  %tempr213 = alloca float, align 4
  %tempi221 = alloca float, align 4
  %tempr235 = alloca float, align 4
  %tempi243 = alloca float, align 4
  %tempr257 = alloca float, align 4
  %tempi265 = alloca float, align 4
  %s = alloca float, align 4
  %ar_s = alloca float, align 4
  %ai_s = alloca float, align 4
  %yrt = alloca float, align 4
  %temp = alloca float, align 4
  %tempr387 = alloca float, align 4
  %tempi395 = alloca float, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %m_TS, ptr %m_TS.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  store ptr %buff_S, ptr %buff_S.addr, align 8, !tbaa !19
  store i32 %rs_S, ptr %rs_S.addr, align 4, !tbaa !4
  store i32 %cs_S, ptr %cs_S.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 24
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.scomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 24
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.scomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.scomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %36 = load i32, ptr %m_TS.addr, align 4, !tbaa !4
  store i32 %36, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %37 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 8
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_ap) #5
  %38 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 8
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_ap, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %39 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 8
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_up) #5
  %40 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 8
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_up, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_v) #5
  %41 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 8
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y) #5
  %42 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 8
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %43 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %43 to i64
  %mul52 = mul i64 %conv51, 8
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_ap) #5
  store i32 1, ptr %inc_ap, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_up) #5
  store i32 1, ptr %inc_up, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_v) #5
  store i32 1, ptr %inc_v, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_y) #5
  store i32 1, ptr %inc_y, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %44 = load i32, ptr %i, align 4, !tbaa !4
  %45 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #5
  %46 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %47
  %idx.ext = sext i32 %mul56 to i64
  %add.ptr57 = getelementptr inbounds %struct.scomplex, ptr %46, i64 %idx.ext
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul58 = mul nsw i32 %48, %49
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds %struct.scomplex, ptr %add.ptr57, i64 %idx.ext59
  store ptr %add.ptr60, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 0, %51
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds %struct.scomplex, ptr %50, i64 %idx.ext62
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %52, 1
  %53 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add, %53
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.scomplex, ptr %add.ptr63, i64 %idx.ext65
  store ptr %add.ptr66, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %54 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %55, %56
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.scomplex, ptr %54, i64 %idx.ext68
  %57 = load i32, ptr %i, align 4, !tbaa !4
  %58 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %57, %58
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.scomplex, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %59 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul73 = mul nsw i32 %60, %61
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds %struct.scomplex, ptr %59, i64 %idx.ext74
  %62 = load i32, ptr %i, align 4, !tbaa !4
  %add76 = add nsw i32 %62, 1
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 %add76, %63
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.scomplex, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #5
  %64 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %add80 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul81 = mul nsw i32 %add80, %66
  %idx.ext82 = sext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds %struct.scomplex, ptr %64, i64 %idx.ext82
  %67 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul84 = mul nsw i32 0, %67
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds %struct.scomplex, ptr %add.ptr83, i64 %idx.ext85
  store ptr %add.ptr86, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #5
  %68 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %add87 = add nsw i32 %69, 1
  %70 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 %add87, %70
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds %struct.scomplex, ptr %68, i64 %idx.ext89
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %72 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %71, %72
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds %struct.scomplex, ptr %add.ptr90, i64 %idx.ext92
  store ptr %add.ptr93, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %73 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %add94 = add nsw i32 %74, 1
  %75 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul95 = mul nsw i32 %add94, %75
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds %struct.scomplex, ptr %73, i64 %idx.ext96
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %add98 = add nsw i32 %76, 1
  %77 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul99 = mul nsw i32 %add98, %77
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds %struct.scomplex, ptr %add.ptr97, i64 %idx.ext100
  store ptr %add.ptr101, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %78 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %79 = load i32, ptr %i, align 4, !tbaa !4
  %80 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul102 = mul nsw i32 %79, %80
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds %struct.scomplex, ptr %78, i64 %idx.ext103
  %81 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul105 = mul nsw i32 0, %81
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds %struct.scomplex, ptr %add.ptr104, i64 %idx.ext106
  store ptr %add.ptr107, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %82 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %83 = load i32, ptr %i, align 4, !tbaa !4
  %84 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul108 = mul nsw i32 %83, %84
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds %struct.scomplex, ptr %82, i64 %idx.ext109
  %85 = load i32, ptr %i, align 4, !tbaa !4
  %86 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul111 = mul nsw i32 %85, %86
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds %struct.scomplex, ptr %add.ptr110, i64 %idx.ext112
  store ptr %add.ptr113, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %s01) #5
  %87 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %88 = load i32, ptr %i, align 4, !tbaa !4
  %89 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul114 = mul nsw i32 %88, %89
  %idx.ext115 = sext i32 %mul114 to i64
  %add.ptr116 = getelementptr inbounds %struct.scomplex, ptr %87, i64 %idx.ext115
  %90 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul117 = mul nsw i32 0, %90
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds %struct.scomplex, ptr %add.ptr116, i64 %idx.ext118
  store ptr %add.ptr119, ptr %s01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %sigma11) #5
  %91 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %92 = load i32, ptr %i, align 4, !tbaa !4
  %93 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul120 = mul nsw i32 %92, %93
  %idx.ext121 = sext i32 %mul120 to i64
  %add.ptr122 = getelementptr inbounds %struct.scomplex, ptr %91, i64 %idx.ext121
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %95 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul123 = mul nsw i32 %94, %95
  %idx.ext124 = sext i32 %mul123 to i64
  %add.ptr125 = getelementptr inbounds %struct.scomplex, ptr %add.ptr122, i64 %idx.ext124
  store ptr %add.ptr125, ptr %sigma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %96 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %97 = load i32, ptr %i, align 4, !tbaa !4
  %add126 = add nsw i32 %97, 1
  %98 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul127 = mul nsw i32 %add126, %98
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds %struct.scomplex, ptr %96, i64 %idx.ext128
  store ptr %add.ptr129, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p) #5
  %99 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  %100 = load i32, ptr %i, align 4, !tbaa !4
  %add130 = add nsw i32 %100, 1
  %101 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul131 = mul nsw i32 %add130, %101
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds %struct.scomplex, ptr %99, i64 %idx.ext132
  store ptr %add.ptr133, ptr %a12p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %102 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %103 = load i32, ptr %i, align 4, !tbaa !4
  %104 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul134 = mul nsw i32 %103, %104
  %idx.ext135 = sext i32 %mul134 to i64
  %add.ptr136 = getelementptr inbounds %struct.scomplex, ptr %102, i64 %idx.ext135
  store ptr %add.ptr136, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %105 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %106 = load i32, ptr %i, align 4, !tbaa !4
  %add137 = add nsw i32 %106, 1
  %107 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul138 = mul nsw i32 %add137, %107
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds %struct.scomplex, ptr %105, i64 %idx.ext139
  store ptr %add.ptr140, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21p) #5
  %108 = load ptr, ptr %buff_up, align 8, !tbaa !19
  %109 = load i32, ptr %i, align 4, !tbaa !4
  %add141 = add nsw i32 %109, 1
  %110 = load i32, ptr %inc_up, align 4, !tbaa !4
  %mul142 = mul nsw i32 %add141, %110
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds %struct.scomplex, ptr %108, i64 %idx.ext143
  store ptr %add.ptr144, ptr %u21p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %nu11) #5
  %111 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %112 = load i32, ptr %i, align 4, !tbaa !4
  %113 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul145 = mul nsw i32 %112, %113
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds %struct.scomplex, ptr %111, i64 %idx.ext146
  store ptr %add.ptr147, ptr %nu11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21) #5
  %114 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %115 = load i32, ptr %i, align 4, !tbaa !4
  %add148 = add nsw i32 %115, 1
  %116 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul149 = mul nsw i32 %add148, %116
  %idx.ext150 = sext i32 %mul149 to i64
  %add.ptr151 = getelementptr inbounds %struct.scomplex, ptr %114, i64 %idx.ext150
  store ptr %add.ptr151, ptr %v21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi11) #5
  %117 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %118 = load i32, ptr %i, align 4, !tbaa !4
  %119 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul152 = mul nsw i32 %118, %119
  %idx.ext153 = sext i32 %mul152 to i64
  %add.ptr154 = getelementptr inbounds %struct.scomplex, ptr %117, i64 %idx.ext153
  store ptr %add.ptr154, ptr %psi11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y21) #5
  %120 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %121 = load i32, ptr %i, align 4, !tbaa !4
  %add155 = add nsw i32 %121, 1
  %122 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul156 = mul nsw i32 %add155, %122
  %idx.ext157 = sext i32 %mul156 to i64
  %add.ptr158 = getelementptr inbounds %struct.scomplex, ptr %120, i64 %idx.ext157
  store ptr %add.ptr158, ptr %y21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %123 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %124 = load i32, ptr %i, align 4, !tbaa !4
  %125 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul159 = mul nsw i32 %124, %125
  %idx.ext160 = sext i32 %mul159 to i64
  %add.ptr161 = getelementptr inbounds %struct.scomplex, ptr %123, i64 %idx.ext160
  store ptr %add.ptr161, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %126 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %127 = load i32, ptr %i, align 4, !tbaa !4
  %add162 = add nsw i32 %127, 1
  %128 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul163 = mul nsw i32 %add162, %128
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds %struct.scomplex, ptr %126, i64 %idx.ext164
  store ptr %add.ptr165, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_t) #5
  %129 = load ptr, ptr %a12p, align 8, !tbaa !19
  %130 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul166 = mul nsw i32 0, %130
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds %struct.scomplex, ptr %129, i64 %idx.ext167
  store ptr %add.ptr168, ptr %a12p_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_b) #5
  %131 = load ptr, ptr %a12p, align 8, !tbaa !19
  %132 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul169 = mul nsw i32 1, %132
  %idx.ext170 = sext i32 %mul169 to i64
  %add.ptr171 = getelementptr inbounds %struct.scomplex, ptr %131, i64 %idx.ext170
  store ptr %add.ptr171, ptr %a12p_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_t) #5
  %133 = load ptr, ptr %v21, align 8, !tbaa !19
  %134 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul172 = mul nsw i32 0, %134
  %idx.ext173 = sext i32 %mul172 to i64
  %add.ptr174 = getelementptr inbounds %struct.scomplex, ptr %133, i64 %idx.ext173
  store ptr %add.ptr174, ptr %v21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_b) #5
  %135 = load ptr, ptr %v21, align 8, !tbaa !19
  %136 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul175 = mul nsw i32 1, %136
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds %struct.scomplex, ptr %135, i64 %idx.ext176
  store ptr %add.ptr177, ptr %v21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_l) #5
  %137 = load ptr, ptr %a12t, align 8, !tbaa !19
  %138 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul178 = mul nsw i32 0, %138
  %idx.ext179 = sext i32 %mul178 to i64
  %add.ptr180 = getelementptr inbounds %struct.scomplex, ptr %137, i64 %idx.ext179
  %139 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul181 = mul nsw i32 0, %139
  %idx.ext182 = sext i32 %mul181 to i64
  %add.ptr183 = getelementptr inbounds %struct.scomplex, ptr %add.ptr180, i64 %idx.ext182
  store ptr %add.ptr183, ptr %a12t_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_r) #5
  %140 = load ptr, ptr %a12t, align 8, !tbaa !19
  %141 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul184 = mul nsw i32 1, %141
  %idx.ext185 = sext i32 %mul184 to i64
  %add.ptr186 = getelementptr inbounds %struct.scomplex, ptr %140, i64 %idx.ext185
  %142 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul187 = mul nsw i32 0, %142
  %idx.ext188 = sext i32 %mul187 to i64
  %add.ptr189 = getelementptr inbounds %struct.scomplex, ptr %add.ptr186, i64 %idx.ext188
  store ptr %add.ptr189, ptr %a12t_r, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22_l) #5
  %143 = load ptr, ptr %A22, align 8, !tbaa !19
  %144 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul190 = mul nsw i32 0, %144
  %idx.ext191 = sext i32 %mul190 to i64
  %add.ptr192 = getelementptr inbounds %struct.scomplex, ptr %143, i64 %idx.ext191
  %145 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul193 = mul nsw i32 0, %145
  %idx.ext194 = sext i32 %mul193 to i64
  %add.ptr195 = getelementptr inbounds %struct.scomplex, ptr %add.ptr192, i64 %idx.ext194
  store ptr %add.ptr195, ptr %A22_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %146 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %146, %147
  %sub196 = sub nsw i32 %sub, 1
  store i32 %sub196, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #5
  %148 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %149 = load i32, ptr %i, align 4, !tbaa !4
  %sub197 = sub nsw i32 %148, %149
  %sub198 = sub nsw i32 %sub197, 1
  store i32 %sub198, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %150 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %150, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %151 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %151, ptr %n_behind, align 4, !tbaa !4
  %152 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp199 = icmp sgt i32 %152, 0
  br i1 %cmp199, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr) #5
  %153 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.scomplex, ptr %153, i32 0, i32 0
  %154 = load float, ptr %real, align 4, !tbaa !27
  %155 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real201 = getelementptr inbounds %struct.scomplex, ptr %155, i32 0, i32 0
  %156 = load float, ptr %real201, align 4, !tbaa !27
  %157 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.scomplex, ptr %157, i32 0, i32 1
  %158 = load float, ptr %imag, align 4, !tbaa !29
  %159 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag203 = getelementptr inbounds %struct.scomplex, ptr %159, i32 0, i32 1
  %160 = load float, ptr %imag203, align 4, !tbaa !29
  %mul204 = fmul float %158, %160
  %neg = fneg float %mul204
  %161 = call float @llvm.fmuladd.f32(float %154, float %156, float %neg)
  store float %161, ptr %tempr, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi) #5
  %162 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag205 = getelementptr inbounds %struct.scomplex, ptr %162, i32 0, i32 1
  %163 = load float, ptr %imag205, align 4, !tbaa !29
  %164 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real206 = getelementptr inbounds %struct.scomplex, ptr %164, i32 0, i32 0
  %165 = load float, ptr %real206, align 4, !tbaa !27
  %166 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real208 = getelementptr inbounds %struct.scomplex, ptr %166, i32 0, i32 0
  %167 = load float, ptr %real208, align 4, !tbaa !27
  %168 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag209 = getelementptr inbounds %struct.scomplex, ptr %168, i32 0, i32 1
  %169 = load float, ptr %imag209, align 4, !tbaa !29
  %mul210 = fmul float %167, %169
  %170 = call float @llvm.fmuladd.f32(float %163, float %165, float %mul210)
  store float %170, ptr %tempi, align 4, !tbaa !20
  %171 = load float, ptr %tempr, align 4, !tbaa !20
  %real211 = getelementptr inbounds %struct.scomplex, ptr %minus_upsilon11, i32 0, i32 0
  store float %171, ptr %real211, align 4, !tbaa !27
  %172 = load float, ptr %tempi, align 4, !tbaa !20
  %imag212 = getelementptr inbounds %struct.scomplex, ptr %minus_upsilon11, i32 0, i32 1
  store float %172, ptr %imag212, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr213) #5
  %173 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real214 = getelementptr inbounds %struct.scomplex, ptr %173, i32 0, i32 0
  %174 = load float, ptr %real214, align 4, !tbaa !27
  %175 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real215 = getelementptr inbounds %struct.scomplex, ptr %175, i32 0, i32 0
  %176 = load float, ptr %real215, align 4, !tbaa !27
  %177 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag217 = getelementptr inbounds %struct.scomplex, ptr %177, i32 0, i32 1
  %178 = load float, ptr %imag217, align 4, !tbaa !29
  %179 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag218 = getelementptr inbounds %struct.scomplex, ptr %179, i32 0, i32 1
  %180 = load float, ptr %imag218, align 4, !tbaa !29
  %mul219 = fmul float %178, %180
  %neg220 = fneg float %mul219
  %181 = call float @llvm.fmuladd.f32(float %174, float %176, float %neg220)
  store float %181, ptr %tempr213, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi221) #5
  %182 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag222 = getelementptr inbounds %struct.scomplex, ptr %182, i32 0, i32 1
  %183 = load float, ptr %imag222, align 4, !tbaa !29
  %184 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real223 = getelementptr inbounds %struct.scomplex, ptr %184, i32 0, i32 0
  %185 = load float, ptr %real223, align 4, !tbaa !27
  %186 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real225 = getelementptr inbounds %struct.scomplex, ptr %186, i32 0, i32 0
  %187 = load float, ptr %real225, align 4, !tbaa !27
  %188 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag226 = getelementptr inbounds %struct.scomplex, ptr %188, i32 0, i32 1
  %189 = load float, ptr %imag226, align 4, !tbaa !29
  %mul227 = fmul float %187, %189
  %190 = call float @llvm.fmuladd.f32(float %183, float %185, float %mul227)
  store float %190, ptr %tempi221, align 4, !tbaa !20
  %191 = load float, ptr %tempr213, align 4, !tbaa !20
  %real228 = getelementptr inbounds %struct.scomplex, ptr %minus_zeta11, i32 0, i32 0
  store float %191, ptr %real228, align 4, !tbaa !27
  %192 = load float, ptr %tempi221, align 4, !tbaa !20
  %imag229 = getelementptr inbounds %struct.scomplex, ptr %minus_zeta11, i32 0, i32 1
  store float %192, ptr %imag229, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi221) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr213) #5
  %193 = load ptr, ptr %psi11, align 8, !tbaa !19
  %real230 = getelementptr inbounds %struct.scomplex, ptr %193, i32 0, i32 0
  %194 = load float, ptr %real230, align 4, !tbaa !27
  %real231 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 0
  store float %194, ptr %real231, align 4, !tbaa !27
  %195 = load ptr, ptr %psi11, align 8, !tbaa !19
  %imag232 = getelementptr inbounds %struct.scomplex, ptr %195, i32 0, i32 1
  %196 = load float, ptr %imag232, align 4, !tbaa !29
  %mul233 = fmul float -1.000000e+00, %196
  %imag234 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 1
  store float %mul233, ptr %imag234, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr235) #5
  %197 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real236 = getelementptr inbounds %struct.scomplex, ptr %197, i32 0, i32 0
  %198 = load float, ptr %real236, align 4, !tbaa !27
  %real237 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 0
  %199 = load float, ptr %real237, align 4, !tbaa !27
  %200 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag239 = getelementptr inbounds %struct.scomplex, ptr %200, i32 0, i32 1
  %201 = load float, ptr %imag239, align 4, !tbaa !29
  %imag240 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 1
  %202 = load float, ptr %imag240, align 4, !tbaa !29
  %mul241 = fmul float %201, %202
  %neg242 = fneg float %mul241
  %203 = call float @llvm.fmuladd.f32(float %198, float %199, float %neg242)
  store float %203, ptr %tempr235, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi243) #5
  %204 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag244 = getelementptr inbounds %struct.scomplex, ptr %204, i32 0, i32 1
  %205 = load float, ptr %imag244, align 4, !tbaa !29
  %real245 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 0
  %206 = load float, ptr %real245, align 4, !tbaa !27
  %207 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real247 = getelementptr inbounds %struct.scomplex, ptr %207, i32 0, i32 0
  %208 = load float, ptr %real247, align 4, !tbaa !27
  %imag248 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 1
  %209 = load float, ptr %imag248, align 4, !tbaa !29
  %mul249 = fmul float %208, %209
  %210 = call float @llvm.fmuladd.f32(float %205, float %206, float %mul249)
  store float %210, ptr %tempi243, align 4, !tbaa !20
  %211 = load float, ptr %tempr235, align 4, !tbaa !20
  %real250 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 0
  store float %211, ptr %real250, align 4, !tbaa !27
  %212 = load float, ptr %tempi243, align 4, !tbaa !20
  %imag251 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_psi11, i32 0, i32 1
  store float %212, ptr %imag251, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi243) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr235) #5
  %213 = load ptr, ptr %nu11, align 8, !tbaa !19
  %real252 = getelementptr inbounds %struct.scomplex, ptr %213, i32 0, i32 0
  %214 = load float, ptr %real252, align 4, !tbaa !27
  %real253 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 0
  store float %214, ptr %real253, align 4, !tbaa !27
  %215 = load ptr, ptr %nu11, align 8, !tbaa !19
  %imag254 = getelementptr inbounds %struct.scomplex, ptr %215, i32 0, i32 1
  %216 = load float, ptr %imag254, align 4, !tbaa !29
  %mul255 = fmul float -1.000000e+00, %216
  %imag256 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 1
  store float %mul255, ptr %imag256, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr257) #5
  %217 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real258 = getelementptr inbounds %struct.scomplex, ptr %217, i32 0, i32 0
  %218 = load float, ptr %real258, align 4, !tbaa !27
  %real259 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 0
  %219 = load float, ptr %real259, align 4, !tbaa !27
  %220 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag261 = getelementptr inbounds %struct.scomplex, ptr %220, i32 0, i32 1
  %221 = load float, ptr %imag261, align 4, !tbaa !29
  %imag262 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 1
  %222 = load float, ptr %imag262, align 4, !tbaa !29
  %mul263 = fmul float %221, %222
  %neg264 = fneg float %mul263
  %223 = call float @llvm.fmuladd.f32(float %218, float %219, float %neg264)
  store float %223, ptr %tempr257, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi265) #5
  %224 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag266 = getelementptr inbounds %struct.scomplex, ptr %224, i32 0, i32 1
  %225 = load float, ptr %imag266, align 4, !tbaa !29
  %real267 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 0
  %226 = load float, ptr %real267, align 4, !tbaa !27
  %227 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real269 = getelementptr inbounds %struct.scomplex, ptr %227, i32 0, i32 0
  %228 = load float, ptr %real269, align 4, !tbaa !27
  %imag270 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 1
  %229 = load float, ptr %imag270, align 4, !tbaa !29
  %mul271 = fmul float %228, %229
  %230 = call float @llvm.fmuladd.f32(float %225, float %226, float %mul271)
  store float %230, ptr %tempi265, align 4, !tbaa !20
  %231 = load float, ptr %tempr257, align 4, !tbaa !20
  %real272 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 0
  store float %231, ptr %real272, align 4, !tbaa !27
  %232 = load float, ptr %tempi265, align 4, !tbaa !20
  %imag273 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_nu11, i32 0, i32 1
  store float %232, ptr %imag273, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi265) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr257) #5
  %233 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %234 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_conj_psi11, ptr noundef %233, i32 noundef 1, ptr noundef %234, i32 noundef 1)
  %235 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %236 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_conj_nu11, ptr noundef %235, i32 noundef 1, ptr noundef %236, i32 noundef 1)
  %237 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %238 = load ptr, ptr %u21, align 8, !tbaa !19
  %239 = load i32, ptr %inc_u, align 4, !tbaa !4
  %240 = load ptr, ptr %a21, align 8, !tbaa !19
  %241 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %237, ptr noundef %minus_conj_psi11, ptr noundef %238, i32 noundef %239, ptr noundef %240, i32 noundef %241)
  %242 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %243 = load ptr, ptr %z21, align 8, !tbaa !19
  %244 = load i32, ptr %inc_z, align 4, !tbaa !4
  %245 = load ptr, ptr %a21, align 8, !tbaa !19
  %246 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %242, ptr noundef %minus_conj_nu11, ptr noundef %243, i32 noundef %244, ptr noundef %245, i32 noundef %246)
  %247 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %248 = load ptr, ptr %y21, align 8, !tbaa !19
  %249 = load i32, ptr %inc_y, align 4, !tbaa !4
  %250 = load ptr, ptr %a12t, align 8, !tbaa !19
  %251 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 501, i32 noundef %247, ptr noundef %minus_upsilon11, ptr noundef %248, i32 noundef %249, ptr noundef %250, i32 noundef %251)
  %252 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %253 = load ptr, ptr %v21, align 8, !tbaa !19
  %254 = load i32, ptr %inc_v, align 4, !tbaa !4
  %255 = load ptr, ptr %a12t, align 8, !tbaa !19
  %256 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 501, i32 noundef %252, ptr noundef %minus_zeta11, ptr noundef %253, i32 noundef %254, ptr noundef %255, i32 noundef %256)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %257 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %258 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %259 = load ptr, ptr %a21, align 8, !tbaa !19
  %260 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %261 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call274 = call i32 @FLA_Househ2_UT_l_opc(i32 noundef %257, ptr noundef %258, ptr noundef %259, i32 noundef %260, ptr noundef %261)
  %262 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %263 = load ptr, ptr %a21, align 8, !tbaa !19
  %264 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %265 = load ptr, ptr %u21p, align 8, !tbaa !19
  %266 = load i32, ptr %inc_up, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %262, ptr noundef %263, i32 noundef %264, ptr noundef %265, i32 noundef %266)
  %267 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp275 = icmp sgt i32 %267, 0
  br i1 %cmp275, label %if.then277, label %if.end346

if.then277:                                       ; preds = %if.end
  %268 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %minus_inv_tau11, ptr align 4 %268, i64 8, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  %269 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real278 = getelementptr inbounds %struct.scomplex, ptr %269, i32 0, i32 0
  %270 = load float, ptr %real278, align 4, !tbaa !27
  %conv279 = fpext float %270 to double
  %cmp280 = fcmp ole double %conv279, 0.000000e+00
  br i1 %cmp280, label %cond.true282, label %cond.false284

cond.true282:                                     ; preds = %if.then277
  %271 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real283 = getelementptr inbounds %struct.scomplex, ptr %271, i32 0, i32 0
  %272 = load float, ptr %real283, align 4, !tbaa !27
  %fneg = fneg float %272
  br label %cond.end286

cond.false284:                                    ; preds = %if.then277
  %273 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real285 = getelementptr inbounds %struct.scomplex, ptr %273, i32 0, i32 0
  %274 = load float, ptr %real285, align 4, !tbaa !27
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false284, %cond.true282
  %cond287 = phi float [ %fneg, %cond.true282 ], [ %274, %cond.false284 ]
  %275 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag288 = getelementptr inbounds %struct.scomplex, ptr %275, i32 0, i32 1
  %276 = load float, ptr %imag288, align 4, !tbaa !29
  %conv289 = fpext float %276 to double
  %cmp290 = fcmp ole double %conv289, 0.000000e+00
  br i1 %cmp290, label %cond.true292, label %cond.false295

cond.true292:                                     ; preds = %cond.end286
  %277 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag293 = getelementptr inbounds %struct.scomplex, ptr %277, i32 0, i32 1
  %278 = load float, ptr %imag293, align 4, !tbaa !29
  %fneg294 = fneg float %278
  br label %cond.end297

cond.false295:                                    ; preds = %cond.end286
  %279 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag296 = getelementptr inbounds %struct.scomplex, ptr %279, i32 0, i32 1
  %280 = load float, ptr %imag296, align 4, !tbaa !29
  br label %cond.end297

cond.end297:                                      ; preds = %cond.false295, %cond.true292
  %cond298 = phi float [ %fneg294, %cond.true292 ], [ %280, %cond.false295 ]
  %cmp299 = fcmp ogt float %cond287, %cond298
  br i1 %cmp299, label %cond.true301, label %cond.false313

cond.true301:                                     ; preds = %cond.end297
  %281 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real302 = getelementptr inbounds %struct.scomplex, ptr %281, i32 0, i32 0
  %282 = load float, ptr %real302, align 4, !tbaa !27
  %conv303 = fpext float %282 to double
  %cmp304 = fcmp ole double %conv303, 0.000000e+00
  br i1 %cmp304, label %cond.true306, label %cond.false309

cond.true306:                                     ; preds = %cond.true301
  %283 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real307 = getelementptr inbounds %struct.scomplex, ptr %283, i32 0, i32 0
  %284 = load float, ptr %real307, align 4, !tbaa !27
  %fneg308 = fneg float %284
  br label %cond.end311

cond.false309:                                    ; preds = %cond.true301
  %285 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real310 = getelementptr inbounds %struct.scomplex, ptr %285, i32 0, i32 0
  %286 = load float, ptr %real310, align 4, !tbaa !27
  br label %cond.end311

cond.end311:                                      ; preds = %cond.false309, %cond.true306
  %cond312 = phi float [ %fneg308, %cond.true306 ], [ %286, %cond.false309 ]
  br label %cond.end325

cond.false313:                                    ; preds = %cond.end297
  %287 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag314 = getelementptr inbounds %struct.scomplex, ptr %287, i32 0, i32 1
  %288 = load float, ptr %imag314, align 4, !tbaa !29
  %conv315 = fpext float %288 to double
  %cmp316 = fcmp ole double %conv315, 0.000000e+00
  br i1 %cmp316, label %cond.true318, label %cond.false321

cond.true318:                                     ; preds = %cond.false313
  %289 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag319 = getelementptr inbounds %struct.scomplex, ptr %289, i32 0, i32 1
  %290 = load float, ptr %imag319, align 4, !tbaa !29
  %fneg320 = fneg float %290
  br label %cond.end323

cond.false321:                                    ; preds = %cond.false313
  %291 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag322 = getelementptr inbounds %struct.scomplex, ptr %291, i32 0, i32 1
  %292 = load float, ptr %imag322, align 4, !tbaa !29
  br label %cond.end323

cond.end323:                                      ; preds = %cond.false321, %cond.true318
  %cond324 = phi float [ %fneg320, %cond.true318 ], [ %292, %cond.false321 ]
  br label %cond.end325

cond.end325:                                      ; preds = %cond.end323, %cond.end311
  %cond326 = phi float [ %cond312, %cond.end311 ], [ %cond324, %cond.end323 ]
  store float %cond326, ptr %s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ar_s) #5
  %293 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real327 = getelementptr inbounds %struct.scomplex, ptr %293, i32 0, i32 0
  %294 = load float, ptr %real327, align 4, !tbaa !27
  %295 = load float, ptr %s, align 4, !tbaa !20
  %div = fdiv float %294, %295
  store float %div, ptr %ar_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ai_s) #5
  %296 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag328 = getelementptr inbounds %struct.scomplex, ptr %296, i32 0, i32 1
  %297 = load float, ptr %imag328, align 4, !tbaa !29
  %298 = load float, ptr %s, align 4, !tbaa !20
  %div329 = fdiv float %297, %298
  store float %div329, ptr %ai_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yrt) #5
  %real330 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %299 = load float, ptr %real330, align 4, !tbaa !27
  store float %299, ptr %yrt, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #5
  %300 = load float, ptr %ar_s, align 4, !tbaa !20
  %301 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real331 = getelementptr inbounds %struct.scomplex, ptr %301, i32 0, i32 0
  %302 = load float, ptr %real331, align 4, !tbaa !27
  %303 = load float, ptr %ai_s, align 4, !tbaa !20
  %304 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag333 = getelementptr inbounds %struct.scomplex, ptr %304, i32 0, i32 1
  %305 = load float, ptr %imag333, align 4, !tbaa !29
  %mul334 = fmul float %303, %305
  %306 = call float @llvm.fmuladd.f32(float %300, float %302, float %mul334)
  store float %306, ptr %temp, align 4, !tbaa !20
  %307 = load float, ptr %yrt, align 4, !tbaa !20
  %308 = load float, ptr %ar_s, align 4, !tbaa !20
  %imag336 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %309 = load float, ptr %imag336, align 4, !tbaa !29
  %310 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul337 = fmul float %309, %310
  %311 = call float @llvm.fmuladd.f32(float %307, float %308, float %mul337)
  %312 = load float, ptr %temp, align 4, !tbaa !20
  %div338 = fdiv float %311, %312
  %real339 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 0
  store float %div338, ptr %real339, align 4, !tbaa !27
  %imag340 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %313 = load float, ptr %imag340, align 4, !tbaa !29
  %314 = load float, ptr %ar_s, align 4, !tbaa !20
  %315 = load float, ptr %yrt, align 4, !tbaa !20
  %316 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul342 = fmul float %315, %316
  %neg343 = fneg float %mul342
  %317 = call float @llvm.fmuladd.f32(float %313, float %314, float %neg343)
  %318 = load float, ptr %temp, align 4, !tbaa !20
  %div344 = fdiv float %317, %318
  %imag345 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  store float %div344, ptr %imag345, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %yrt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ai_s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ar_s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  %319 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %320 = load ptr, ptr %a12t, align 8, !tbaa !19
  %321 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %322 = load ptr, ptr %a12p, align 8, !tbaa !19
  %323 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %319, ptr noundef %320, i32 noundef %321, ptr noundef %322, i32 noundef %323)
  %324 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %325 = load ptr, ptr %a12t, align 8, !tbaa !19
  %326 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %327 = load ptr, ptr %a12p, align 8, !tbaa !19
  %328 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %324, ptr noundef %minus_inv_tau11, ptr noundef %325, i32 noundef %326, ptr noundef %327, i32 noundef %328)
  br label %if.end346

if.end346:                                        ; preds = %cond.end325, %if.end
  %329 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp347 = icmp sgt i32 %329, 0
  br i1 %cmp347, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end346
  %330 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp349 = icmp sgt i32 %330, 0
  br i1 %cmp349, label %if.then351, label %if.else

if.then351:                                       ; preds = %land.lhs.true
  %331 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %332 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %333 = load ptr, ptr %tau11, align 8, !tbaa !19
  %334 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %335 = load ptr, ptr %u21, align 8, !tbaa !19
  %336 = load i32, ptr %inc_u, align 4, !tbaa !4
  %337 = load ptr, ptr %y21, align 8, !tbaa !19
  %338 = load i32, ptr %inc_y, align 4, !tbaa !4
  %339 = load ptr, ptr %z21, align 8, !tbaa !19
  %340 = load i32, ptr %inc_z, align 4, !tbaa !4
  %341 = load ptr, ptr %v21, align 8, !tbaa !19
  %342 = load i32, ptr %inc_v, align 4, !tbaa !4
  %343 = load ptr, ptr %A22, align 8, !tbaa !19
  %344 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %345 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %346 = load ptr, ptr %u21p, align 8, !tbaa !19
  %347 = load i32, ptr %inc_up, align 4, !tbaa !4
  %348 = load ptr, ptr %a12p, align 8, !tbaa !19
  %349 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %350 = load ptr, ptr %w21, align 8, !tbaa !19
  %351 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call352 = call i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_opc_var1(i32 noundef %331, i32 noundef %332, ptr noundef %333, ptr noundef %334, ptr noundef %335, i32 noundef %336, ptr noundef %337, i32 noundef %338, ptr noundef %339, i32 noundef %340, ptr noundef %341, i32 noundef %342, ptr noundef %343, i32 noundef %344, i32 noundef %345, ptr noundef %346, i32 noundef %347, ptr noundef %348, i32 noundef %349, ptr noundef %350, i32 noundef %351)
  br label %if.end358

if.else:                                          ; preds = %land.lhs.true, %if.end346
  %352 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp353 = icmp sgt i32 %352, 0
  br i1 %cmp353, label %if.then355, label %if.end357

if.then355:                                       ; preds = %if.else
  %353 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %354 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %355 = load ptr, ptr %tau11, align 8, !tbaa !19
  %356 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %357 = load ptr, ptr %A22, align 8, !tbaa !19
  %358 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %359 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %360 = load ptr, ptr %u21p, align 8, !tbaa !19
  %361 = load i32, ptr %inc_up, align 4, !tbaa !4
  %362 = load ptr, ptr %a12p, align 8, !tbaa !19
  %363 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %364 = load ptr, ptr %y21, align 8, !tbaa !19
  %365 = load i32, ptr %inc_y, align 4, !tbaa !4
  %366 = load ptr, ptr %w21, align 8, !tbaa !19
  %367 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call356 = call i32 @FLA_Fused_Ahx_Axpy_Ax_opc_var1(i32 noundef %353, i32 noundef %354, ptr noundef %355, ptr noundef %356, ptr noundef %357, i32 noundef %358, i32 noundef %359, ptr noundef %360, i32 noundef %361, ptr noundef %362, i32 noundef %363, ptr noundef %364, i32 noundef %365, ptr noundef %366, i32 noundef %367)
  br label %if.end357

if.end357:                                        ; preds = %if.then355, %if.else
  br label %if.end358

if.end358:                                        ; preds = %if.end357, %if.then351
  %368 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp359 = icmp sgt i32 %368, 0
  br i1 %cmp359, label %if.then361, label %if.end383

if.then361:                                       ; preds = %if.end358
  %369 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %370 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %371 = load ptr, ptr %a12t, align 8, !tbaa !19
  %372 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %373 = load ptr, ptr %y21, align 8, !tbaa !19
  %374 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 501, i32 noundef %369, ptr noundef %370, ptr noundef %371, i32 noundef %372, ptr noundef %373, i32 noundef %374)
  %375 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub362 = sub nsw i32 %375, 1
  %376 = load ptr, ptr %a12p_t, align 8, !tbaa !19
  %377 = load ptr, ptr %a12p_b, align 8, !tbaa !19
  %378 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %379 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %call363 = call i32 @FLA_Househ2s_UT_r_opc(i32 noundef %sub362, ptr noundef %376, ptr noundef %377, i32 noundef %378, ptr noundef %alpha12, ptr noundef %psi11_minus_alpha12, ptr noundef %379)
  %380 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %381 = load ptr, ptr %a12p, align 8, !tbaa !19
  %382 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %383 = load ptr, ptr %v21, align 8, !tbaa !19
  %384 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %380, ptr noundef %381, i32 noundef %382, ptr noundef %383, i32 noundef %384)
  %385 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %real364 = getelementptr inbounds %struct.scomplex, ptr %385, i32 0, i32 0
  %386 = load float, ptr %real364, align 4, !tbaa !27
  %387 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real365 = getelementptr inbounds %struct.scomplex, ptr %387, i32 0, i32 0
  %388 = load float, ptr %real365, align 4, !tbaa !27
  %real366 = getelementptr inbounds %struct.scomplex, ptr %alpha12, i32 0, i32 0
  %389 = load float, ptr %real366, align 4, !tbaa !27
  %390 = call float @llvm.fmuladd.f32(float %388, float %389, float %386)
  %391 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag368 = getelementptr inbounds %struct.scomplex, ptr %391, i32 0, i32 1
  %392 = load float, ptr %imag368, align 4, !tbaa !29
  %imag369 = getelementptr inbounds %struct.scomplex, ptr %alpha12, i32 0, i32 1
  %393 = load float, ptr %imag369, align 4, !tbaa !29
  %neg371 = fneg float %392
  %394 = call float @llvm.fmuladd.f32(float %neg371, float %393, float %390)
  %395 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %real372 = getelementptr inbounds %struct.scomplex, ptr %395, i32 0, i32 0
  store float %394, ptr %real372, align 4, !tbaa !27
  %396 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %imag373 = getelementptr inbounds %struct.scomplex, ptr %396, i32 0, i32 1
  %397 = load float, ptr %imag373, align 4, !tbaa !29
  %398 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag374 = getelementptr inbounds %struct.scomplex, ptr %398, i32 0, i32 1
  %399 = load float, ptr %imag374, align 4, !tbaa !29
  %real375 = getelementptr inbounds %struct.scomplex, ptr %alpha12, i32 0, i32 0
  %400 = load float, ptr %real375, align 4, !tbaa !27
  %401 = call float @llvm.fmuladd.f32(float %399, float %400, float %397)
  %402 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real377 = getelementptr inbounds %struct.scomplex, ptr %402, i32 0, i32 0
  %403 = load float, ptr %real377, align 4, !tbaa !27
  %imag378 = getelementptr inbounds %struct.scomplex, ptr %alpha12, i32 0, i32 1
  %404 = load float, ptr %imag378, align 4, !tbaa !29
  %405 = call float @llvm.fmuladd.f32(float %403, float %404, float %401)
  %406 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %imag380 = getelementptr inbounds %struct.scomplex, ptr %406, i32 0, i32 1
  store float %405, ptr %imag380, align 4, !tbaa !29
  %407 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %408 = load ptr, ptr %v21, align 8, !tbaa !19
  %409 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %407, ptr noundef %psi11_minus_alpha12, ptr noundef %408, i32 noundef %409)
  %410 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub381 = sub nsw i32 %410, 1
  %411 = load ptr, ptr %v21_b, align 8, !tbaa !19
  %412 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_cconjv(i32 noundef %sub381, ptr noundef %411, i32 noundef %412)
  %413 = load ptr, ptr %a12t_l, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %413, ptr align 4 %alpha12, i64 8, i1 false), !tbaa.struct !30
  %414 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub382 = sub nsw i32 %414, 1
  %415 = load ptr, ptr %v21_b, align 8, !tbaa !19
  %416 = load i32, ptr %inc_v, align 4, !tbaa !4
  %417 = load ptr, ptr %a12t_r, align 8, !tbaa !19
  %418 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %sub382, ptr noundef %415, i32 noundef %416, ptr noundef %417, i32 noundef %418)
  br label %if.end383

if.end383:                                        ; preds = %if.then361, %if.end358
  %419 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %420 = load ptr, ptr %u21p, align 8, !tbaa !19
  %421 = load i32, ptr %inc_up, align 4, !tbaa !4
  %422 = load ptr, ptr %u21, align 8, !tbaa !19
  %423 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %419, ptr noundef %420, i32 noundef %421, ptr noundef %422, i32 noundef %423)
  %424 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp384 = icmp sgt i32 %424, 0
  br i1 %cmp384, label %if.then386, label %if.end413

if.then386:                                       ; preds = %if.end383
  %425 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %426 = load ptr, ptr %y21, align 8, !tbaa !19
  %427 = load i32, ptr %inc_y, align 4, !tbaa !4
  %428 = load ptr, ptr %v21, align 8, !tbaa !19
  %429 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_cdot(i32 noundef 501, i32 noundef %425, ptr noundef %426, i32 noundef %427, ptr noundef %428, i32 noundef %429, ptr noundef %beta)
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempr387) #5
  %real388 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %430 = load float, ptr %real388, align 4, !tbaa !27
  %real389 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %431 = load float, ptr %real389, align 4, !tbaa !27
  %imag391 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %432 = load float, ptr %imag391, align 4, !tbaa !29
  %imag392 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %433 = load float, ptr %imag392, align 4, !tbaa !29
  %mul393 = fmul float %432, %433
  %neg394 = fneg float %mul393
  %434 = call float @llvm.fmuladd.f32(float %430, float %431, float %neg394)
  store float %434, ptr %tempr387, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tempi395) #5
  %imag396 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %435 = load float, ptr %imag396, align 4, !tbaa !29
  %real397 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  %436 = load float, ptr %real397, align 4, !tbaa !27
  %real399 = getelementptr inbounds %struct.scomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %437 = load float, ptr %real399, align 4, !tbaa !27
  %imag400 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  %438 = load float, ptr %imag400, align 4, !tbaa !29
  %mul401 = fmul float %437, %438
  %439 = call float @llvm.fmuladd.f32(float %435, float %436, float %mul401)
  store float %439, ptr %tempi395, align 4, !tbaa !20
  %440 = load float, ptr %tempr387, align 4, !tbaa !20
  %real402 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 0
  store float %440, ptr %real402, align 4, !tbaa !27
  %441 = load float, ptr %tempi395, align 4, !tbaa !20
  %imag403 = getelementptr inbounds %struct.scomplex, ptr %beta, i32 0, i32 1
  store float %441, ptr %imag403, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempi395) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tempr387) #5
  %real404 = getelementptr inbounds %struct.scomplex, ptr %alpha12, i32 0, i32 0
  %442 = load float, ptr %real404, align 4, !tbaa !27
  %real405 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_alpha12, i32 0, i32 0
  store float %442, ptr %real405, align 4, !tbaa !27
  %imag406 = getelementptr inbounds %struct.scomplex, ptr %alpha12, i32 0, i32 1
  %443 = load float, ptr %imag406, align 4, !tbaa !29
  %mul407 = fmul float -1.000000e+00, %443
  %imag408 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_alpha12, i32 0, i32 1
  store float %mul407, ptr %imag408, align 4, !tbaa !29
  %real409 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_alpha12, i32 0, i32 0
  %444 = load float, ptr %real409, align 4, !tbaa !27
  %mul410 = fmul float %444, -1.000000e+00
  store float %mul410, ptr %real409, align 4, !tbaa !27
  %imag411 = getelementptr inbounds %struct.scomplex, ptr %minus_conj_alpha12, i32 0, i32 1
  %445 = load float, ptr %imag411, align 4, !tbaa !29
  %mul412 = fmul float %445, -1.000000e+00
  store float %mul412, ptr %imag411, align 4, !tbaa !29
  %446 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %447 = load ptr, ptr %w21, align 8, !tbaa !19
  %448 = load i32, ptr %inc_w, align 4, !tbaa !4
  %449 = load ptr, ptr %z21, align 8, !tbaa !19
  %450 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 500, i32 noundef %446, ptr noundef %447, i32 noundef %448, ptr noundef %449, i32 noundef %450)
  %451 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %452 = load ptr, ptr %A22_l, align 8, !tbaa !19
  %453 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %454 = load ptr, ptr %z21, align 8, !tbaa !19
  %455 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %451, ptr noundef %minus_conj_alpha12, ptr noundef %452, i32 noundef %453, ptr noundef %454, i32 noundef %455)
  %456 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %457 = load ptr, ptr %z21, align 8, !tbaa !19
  %458 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_cinvscalv(i32 noundef 501, i32 noundef %456, ptr noundef %psi11_minus_alpha12, ptr noundef %457, i32 noundef %458)
  %459 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %460 = load ptr, ptr %u21, align 8, !tbaa !19
  %461 = load i32, ptr %inc_u, align 4, !tbaa !4
  %462 = load ptr, ptr %z21, align 8, !tbaa !19
  %463 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_caxpyv(i32 noundef 500, i32 noundef %459, ptr noundef %beta, ptr noundef %460, i32 noundef %461, ptr noundef %462, i32 noundef %463)
  %464 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %465 = load ptr, ptr %tau11, align 8, !tbaa !19
  %466 = load ptr, ptr %y21, align 8, !tbaa !19
  %467 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_cinvscalv(i32 noundef 501, i32 noundef %464, ptr noundef %465, ptr noundef %466, i32 noundef %467)
  %468 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %469 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %470 = load ptr, ptr %z21, align 8, !tbaa !19
  %471 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %468, ptr noundef %469, ptr noundef %470, i32 noundef %471)
  %472 = load i32, ptr %m_behind, align 4, !tbaa !4
  %473 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %474 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %475 = load ptr, ptr %A02, align 8, !tbaa !19
  %476 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %477 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %478 = load ptr, ptr %v21, align 8, !tbaa !19
  %479 = load i32, ptr %inc_v, align 4, !tbaa !4
  %480 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %481 = load ptr, ptr %s01, align 8, !tbaa !19
  %482 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  call void @bl1_cgemv(i32 noundef 102, i32 noundef 500, i32 noundef %472, i32 noundef %473, ptr noundef %474, ptr noundef %475, i32 noundef %476, i32 noundef %477, ptr noundef %478, i32 noundef %479, ptr noundef %480, ptr noundef %481, i32 noundef %482)
  br label %if.end413

if.end413:                                        ; preds = %if.then386, %if.end383
  %483 = load i32, ptr %n_behind, align 4, !tbaa !4
  %484 = load ptr, ptr %a10t, align 8, !tbaa !19
  %485 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %486 = load ptr, ptr %t01, align 8, !tbaa !19
  %487 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_ccopyv(i32 noundef 501, i32 noundef %483, ptr noundef %484, i32 noundef %485, ptr noundef %486, i32 noundef %487)
  %488 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %489 = load i32, ptr %n_behind, align 4, !tbaa !4
  %490 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %491 = load ptr, ptr %A20, align 8, !tbaa !19
  %492 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %493 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %494 = load ptr, ptr %u21, align 8, !tbaa !19
  %495 = load i32, ptr %inc_u, align 4, !tbaa !4
  %496 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %497 = load ptr, ptr %t01, align 8, !tbaa !19
  %498 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_cgemv(i32 noundef 103, i32 noundef 500, i32 noundef %488, i32 noundef %489, ptr noundef %490, ptr noundef %491, i32 noundef %492, i32 noundef %493, ptr noundef %494, i32 noundef %495, ptr noundef %496, ptr noundef %497, i32 noundef %498)
  %499 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add414 = add nsw i32 %499, 1
  %500 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp415 = icmp eq i32 %add414, %500
  br i1 %cmp415, label %land.lhs.true417, label %if.end421

land.lhs.true417:                                 ; preds = %if.end413
  %501 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp418 = icmp sgt i32 %501, 0
  br i1 %cmp418, label %if.then420, label %if.end421

if.then420:                                       ; preds = %land.lhs.true417
  %502 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %503 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %504 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %505 = load ptr, ptr %u21, align 8, !tbaa !19
  %506 = load i32, ptr %inc_u, align 4, !tbaa !4
  %507 = load ptr, ptr %y21, align 8, !tbaa !19
  %508 = load i32, ptr %inc_y, align 4, !tbaa !4
  %509 = load ptr, ptr %A22, align 8, !tbaa !19
  %510 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %511 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cger(i32 noundef 500, i32 noundef 501, i32 noundef %502, i32 noundef %503, ptr noundef %504, ptr noundef %505, i32 noundef %506, ptr noundef %507, i32 noundef %508, ptr noundef %509, i32 noundef %510, i32 noundef %511)
  %512 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %513 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %514 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %515 = load ptr, ptr %z21, align 8, !tbaa !19
  %516 = load i32, ptr %inc_z, align 4, !tbaa !4
  %517 = load ptr, ptr %v21, align 8, !tbaa !19
  %518 = load i32, ptr %inc_v, align 4, !tbaa !4
  %519 = load ptr, ptr %A22, align 8, !tbaa !19
  %520 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %521 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cger(i32 noundef 500, i32 noundef 501, i32 noundef %512, i32 noundef %513, ptr noundef %514, ptr noundef %515, i32 noundef %516, ptr noundef %517, i32 noundef %518, ptr noundef %519, i32 noundef %520, i32 noundef %521)
  br label %if.end421

if.end421:                                        ; preds = %if.then420, %land.lhs.true417, %if.end413
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nu11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sigma11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end421
  %522 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %522, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %523 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %523)
  %524 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %524)
  %525 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %525)
  %526 = load ptr, ptr %buff_up, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %526)
  %527 = load ptr, ptr %buff_v, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %527)
  %528 = load ptr, ptr %buff_y, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %528)
  %529 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %529)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_up) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_ap) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_v) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_up) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_ap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Bidiag_UT_u_step_ofz_var3(i32 noundef %m_A, i32 noundef %n_A, i32 noundef %m_TS, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_T, i32 noundef %rs_T, i32 noundef %cs_T, ptr noundef %buff_S, i32 noundef %rs_S, i32 noundef %cs_S) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %m_TS.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_T.addr = alloca ptr, align 8
  %rs_T.addr = alloca i32, align 4
  %cs_T.addr = alloca i32, align 4
  %buff_S.addr = alloca ptr, align 8
  %rs_S.addr = alloca i32, align 4
  %cs_S.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_0 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %alpha12 = alloca %struct.dcomplex, align 8
  %minus_conj_alpha12 = alloca %struct.dcomplex, align 8
  %psi11_minus_alpha12 = alloca %struct.dcomplex, align 8
  %minus_inv_tau11 = alloca %struct.dcomplex, align 8
  %minus_upsilon11 = alloca %struct.dcomplex, align 8
  %minus_conj_nu11 = alloca %struct.dcomplex, align 8
  %minus_conj_psi11 = alloca %struct.dcomplex, align 8
  %minus_zeta11 = alloca %struct.dcomplex, align 8
  %beta = alloca %struct.dcomplex, align 8
  %i = alloca i32, align 4
  %b_alg = alloca i32, align 4
  %buff_w = alloca ptr, align 8
  %buff_ap = alloca ptr, align 8
  %buff_u = alloca ptr, align 8
  %buff_up = alloca ptr, align 8
  %buff_v = alloca ptr, align 8
  %buff_y = alloca ptr, align 8
  %buff_z = alloca ptr, align 8
  %inc_w = alloca i32, align 4
  %inc_ap = alloca i32, align 4
  %inc_u = alloca i32, align 4
  %inc_up = alloca i32, align 4
  %inc_v = alloca i32, align 4
  %inc_y = alloca i32, align 4
  %inc_z = alloca i32, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %A22 = alloca ptr, align 8
  %t01 = alloca ptr, align 8
  %tau11 = alloca ptr, align 8
  %s01 = alloca ptr, align 8
  %sigma11 = alloca ptr, align 8
  %w21 = alloca ptr, align 8
  %a12p = alloca ptr, align 8
  %upsilon11 = alloca ptr, align 8
  %u21 = alloca ptr, align 8
  %u21p = alloca ptr, align 8
  %nu11 = alloca ptr, align 8
  %v21 = alloca ptr, align 8
  %psi11 = alloca ptr, align 8
  %y21 = alloca ptr, align 8
  %zeta11 = alloca ptr, align 8
  %z21 = alloca ptr, align 8
  %a12p_t = alloca ptr, align 8
  %a12p_b = alloca ptr, align 8
  %v21_t = alloca ptr, align 8
  %v21_b = alloca ptr, align 8
  %a12t_l = alloca ptr, align 8
  %a12t_r = alloca ptr, align 8
  %A22_l = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %m_behind = alloca i32, align 4
  %n_behind = alloca i32, align 4
  %tempr = alloca double, align 8
  %tempi = alloca double, align 8
  %tempr213 = alloca double, align 8
  %tempi221 = alloca double, align 8
  %tempr235 = alloca double, align 8
  %tempi243 = alloca double, align 8
  %tempr257 = alloca double, align 8
  %tempi265 = alloca double, align 8
  %s = alloca double, align 8
  %ar_s = alloca double, align 8
  %ai_s = alloca double, align 8
  %yrt = alloca double, align 8
  %temp = alloca double, align 8
  %tempr383 = alloca double, align 8
  %tempi391 = alloca double, align 8
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %m_TS, ptr %m_TS.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_T, ptr %buff_T.addr, align 8, !tbaa !19
  store i32 %rs_T, ptr %rs_T.addr, align 4, !tbaa !4
  store i32 %cs_T, ptr %cs_T.addr, align 4, !tbaa !4
  store ptr %buff_S, ptr %buff_S.addr, align 8, !tbaa !19
  store i32 %rs_S, ptr %rs_S.addr, align 4, !tbaa !4
  store i32 %cs_S, ptr %cs_S.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #5
  %0 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype = getelementptr inbounds %struct.FLA_Obj_struct, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %datatype, align 8, !tbaa !12
  %cmp = icmp eq i32 %1, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer1 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %buffer1, align 8, !tbaa !14
  %6 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 1), align 8, !tbaa !15
  %7 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %7, i32 0, i32 5
  %8 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %6, %8
  %add.ptr2 = getelementptr inbounds %struct.dcomplex, ptr %5, i64 %mul
  %9 = load i64, ptr @FLA_ONE, align 8, !tbaa !17
  %10 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %10, i32 0, i32 4
  %11 = load i64, ptr %rs, align 8, !tbaa !18
  %mul3 = mul i64 %9, %11
  %add.ptr4 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr2, i64 %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr4, %cond.false ]
  store ptr %cond, ptr %buff_1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_0) #5
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 32
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_ZERO, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_ZERO, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #5
  %24 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype20 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %datatype20, align 8, !tbaa !12
  %cmp21 = icmp eq i32 %25, 105
  br i1 %cmp21, label %cond.true22, label %cond.false25

cond.true22:                                      ; preds = %cond.end18
  %26 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer23 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %buffer23, align 8, !tbaa !14
  %add.ptr24 = getelementptr inbounds i8, ptr %27, i64 32
  br label %cond.end33

cond.false25:                                     ; preds = %cond.end18
  %28 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %30 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs27 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %31, i32 0, i32 5
  %32 = load i64, ptr %cs27, align 8, !tbaa !16
  %mul28 = mul i64 %30, %32
  %add.ptr29 = getelementptr inbounds %struct.dcomplex, ptr %29, i64 %mul28
  %33 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %34 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 4
  %35 = load i64, ptr %rs30, align 8, !tbaa !18
  %mul31 = mul i64 %33, %35
  %add.ptr32 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr29, i64 %mul31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false25, %cond.true22
  %cond34 = phi ptr [ %add.ptr24, %cond.true22 ], [ %add.ptr32, %cond.false25 ]
  store ptr %cond34, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha12) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %minus_zeta11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %beta) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_alg) #5
  %36 = load i32, ptr %m_TS.addr, align 4, !tbaa !4
  store i32 %36, ptr %b_alg, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_w) #5
  %37 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv = sext i32 %37 to i64
  %mul35 = mul i64 %conv, 16
  %call = call ptr @FLA_malloc(i64 noundef %mul35)
  store ptr %call, ptr %buff_w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_ap) #5
  %38 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv36 = sext i32 %38 to i64
  %mul37 = mul i64 %conv36, 16
  %call38 = call ptr @FLA_malloc(i64 noundef %mul37)
  store ptr %call38, ptr %buff_ap, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_u) #5
  %39 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv39 = sext i32 %39 to i64
  %mul40 = mul i64 %conv39, 16
  %call41 = call ptr @FLA_malloc(i64 noundef %mul40)
  store ptr %call41, ptr %buff_u, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_up) #5
  %40 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv42 = sext i32 %40 to i64
  %mul43 = mul i64 %conv42, 16
  %call44 = call ptr @FLA_malloc(i64 noundef %mul43)
  store ptr %call44, ptr %buff_up, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_v) #5
  %41 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv45 = sext i32 %41 to i64
  %mul46 = mul i64 %conv45, 16
  %call47 = call ptr @FLA_malloc(i64 noundef %mul46)
  store ptr %call47, ptr %buff_v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_y) #5
  %42 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %conv48 = sext i32 %42 to i64
  %mul49 = mul i64 %conv48, 16
  %call50 = call ptr @FLA_malloc(i64 noundef %mul49)
  store ptr %call50, ptr %buff_y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_z) #5
  %43 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %conv51 = sext i32 %43 to i64
  %mul52 = mul i64 %conv51, 16
  %call53 = call ptr @FLA_malloc(i64 noundef %mul52)
  store ptr %call53, ptr %buff_z, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_w) #5
  store i32 1, ptr %inc_w, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_ap) #5
  store i32 1, ptr %inc_ap, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_u) #5
  store i32 1, ptr %inc_u, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_up) #5
  store i32 1, ptr %inc_up, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_v) #5
  store i32 1, ptr %inc_v, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_y) #5
  store i32 1, ptr %inc_y, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_z) #5
  store i32 1, ptr %inc_z, align 4, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end33
  %44 = load i32, ptr %i, align 4, !tbaa !4
  %45 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #5
  %46 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul56 = mul nsw i32 0, %47
  %idx.ext = sext i32 %mul56 to i64
  %add.ptr57 = getelementptr inbounds %struct.dcomplex, ptr %46, i64 %idx.ext
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul58 = mul nsw i32 %48, %49
  %idx.ext59 = sext i32 %mul58 to i64
  %add.ptr60 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr57, i64 %idx.ext59
  store ptr %add.ptr60, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #5
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul61 = mul nsw i32 0, %51
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds %struct.dcomplex, ptr %50, i64 %idx.ext62
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %52, 1
  %53 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add, %53
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr63, i64 %idx.ext65
  store ptr %add.ptr66, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #5
  %54 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %55 = load i32, ptr %i, align 4, !tbaa !4
  %56 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %55, %56
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.dcomplex, ptr %54, i64 %idx.ext68
  %57 = load i32, ptr %i, align 4, !tbaa !4
  %58 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %57, %58
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr69, i64 %idx.ext71
  store ptr %add.ptr72, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #5
  %59 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul73 = mul nsw i32 %60, %61
  %idx.ext74 = sext i32 %mul73 to i64
  %add.ptr75 = getelementptr inbounds %struct.dcomplex, ptr %59, i64 %idx.ext74
  %62 = load i32, ptr %i, align 4, !tbaa !4
  %add76 = add nsw i32 %62, 1
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 %add76, %63
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr75, i64 %idx.ext78
  store ptr %add.ptr79, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #5
  %64 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %add80 = add nsw i32 %65, 1
  %66 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul81 = mul nsw i32 %add80, %66
  %idx.ext82 = sext i32 %mul81 to i64
  %add.ptr83 = getelementptr inbounds %struct.dcomplex, ptr %64, i64 %idx.ext82
  %67 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul84 = mul nsw i32 0, %67
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr83, i64 %idx.ext85
  store ptr %add.ptr86, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #5
  %68 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %add87 = add nsw i32 %69, 1
  %70 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul88 = mul nsw i32 %add87, %70
  %idx.ext89 = sext i32 %mul88 to i64
  %add.ptr90 = getelementptr inbounds %struct.dcomplex, ptr %68, i64 %idx.ext89
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %72 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul91 = mul nsw i32 %71, %72
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr90, i64 %idx.ext92
  store ptr %add.ptr93, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22) #5
  %73 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %74 = load i32, ptr %i, align 4, !tbaa !4
  %add94 = add nsw i32 %74, 1
  %75 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul95 = mul nsw i32 %add94, %75
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds %struct.dcomplex, ptr %73, i64 %idx.ext96
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %add98 = add nsw i32 %76, 1
  %77 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul99 = mul nsw i32 %add98, %77
  %idx.ext100 = sext i32 %mul99 to i64
  %add.ptr101 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr97, i64 %idx.ext100
  store ptr %add.ptr101, ptr %A22, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %t01) #5
  %78 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %79 = load i32, ptr %i, align 4, !tbaa !4
  %80 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul102 = mul nsw i32 %79, %80
  %idx.ext103 = sext i32 %mul102 to i64
  %add.ptr104 = getelementptr inbounds %struct.dcomplex, ptr %78, i64 %idx.ext103
  %81 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul105 = mul nsw i32 0, %81
  %idx.ext106 = sext i32 %mul105 to i64
  %add.ptr107 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr104, i64 %idx.ext106
  store ptr %add.ptr107, ptr %t01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tau11) #5
  %82 = load ptr, ptr %buff_T.addr, align 8, !tbaa !19
  %83 = load i32, ptr %i, align 4, !tbaa !4
  %84 = load i32, ptr %cs_T.addr, align 4, !tbaa !4
  %mul108 = mul nsw i32 %83, %84
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds %struct.dcomplex, ptr %82, i64 %idx.ext109
  %85 = load i32, ptr %i, align 4, !tbaa !4
  %86 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  %mul111 = mul nsw i32 %85, %86
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr110, i64 %idx.ext112
  store ptr %add.ptr113, ptr %tau11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %s01) #5
  %87 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %88 = load i32, ptr %i, align 4, !tbaa !4
  %89 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul114 = mul nsw i32 %88, %89
  %idx.ext115 = sext i32 %mul114 to i64
  %add.ptr116 = getelementptr inbounds %struct.dcomplex, ptr %87, i64 %idx.ext115
  %90 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul117 = mul nsw i32 0, %90
  %idx.ext118 = sext i32 %mul117 to i64
  %add.ptr119 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr116, i64 %idx.ext118
  store ptr %add.ptr119, ptr %s01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %sigma11) #5
  %91 = load ptr, ptr %buff_S.addr, align 8, !tbaa !19
  %92 = load i32, ptr %i, align 4, !tbaa !4
  %93 = load i32, ptr %cs_S.addr, align 4, !tbaa !4
  %mul120 = mul nsw i32 %92, %93
  %idx.ext121 = sext i32 %mul120 to i64
  %add.ptr122 = getelementptr inbounds %struct.dcomplex, ptr %91, i64 %idx.ext121
  %94 = load i32, ptr %i, align 4, !tbaa !4
  %95 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  %mul123 = mul nsw i32 %94, %95
  %idx.ext124 = sext i32 %mul123 to i64
  %add.ptr125 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr122, i64 %idx.ext124
  store ptr %add.ptr125, ptr %sigma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %w21) #5
  %96 = load ptr, ptr %buff_w, align 8, !tbaa !19
  %97 = load i32, ptr %i, align 4, !tbaa !4
  %add126 = add nsw i32 %97, 1
  %98 = load i32, ptr %inc_w, align 4, !tbaa !4
  %mul127 = mul nsw i32 %add126, %98
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds %struct.dcomplex, ptr %96, i64 %idx.ext128
  store ptr %add.ptr129, ptr %w21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p) #5
  %99 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  %100 = load i32, ptr %i, align 4, !tbaa !4
  %add130 = add nsw i32 %100, 1
  %101 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul131 = mul nsw i32 %add130, %101
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds %struct.dcomplex, ptr %99, i64 %idx.ext132
  store ptr %add.ptr133, ptr %a12p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %upsilon11) #5
  %102 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %103 = load i32, ptr %i, align 4, !tbaa !4
  %104 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul134 = mul nsw i32 %103, %104
  %idx.ext135 = sext i32 %mul134 to i64
  %add.ptr136 = getelementptr inbounds %struct.dcomplex, ptr %102, i64 %idx.ext135
  store ptr %add.ptr136, ptr %upsilon11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21) #5
  %105 = load ptr, ptr %buff_u, align 8, !tbaa !19
  %106 = load i32, ptr %i, align 4, !tbaa !4
  %add137 = add nsw i32 %106, 1
  %107 = load i32, ptr %inc_u, align 4, !tbaa !4
  %mul138 = mul nsw i32 %add137, %107
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds %struct.dcomplex, ptr %105, i64 %idx.ext139
  store ptr %add.ptr140, ptr %u21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %u21p) #5
  %108 = load ptr, ptr %buff_up, align 8, !tbaa !19
  %109 = load i32, ptr %i, align 4, !tbaa !4
  %add141 = add nsw i32 %109, 1
  %110 = load i32, ptr %inc_up, align 4, !tbaa !4
  %mul142 = mul nsw i32 %add141, %110
  %idx.ext143 = sext i32 %mul142 to i64
  %add.ptr144 = getelementptr inbounds %struct.dcomplex, ptr %108, i64 %idx.ext143
  store ptr %add.ptr144, ptr %u21p, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %nu11) #5
  %111 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %112 = load i32, ptr %i, align 4, !tbaa !4
  %113 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul145 = mul nsw i32 %112, %113
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds %struct.dcomplex, ptr %111, i64 %idx.ext146
  store ptr %add.ptr147, ptr %nu11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21) #5
  %114 = load ptr, ptr %buff_v, align 8, !tbaa !19
  %115 = load i32, ptr %i, align 4, !tbaa !4
  %add148 = add nsw i32 %115, 1
  %116 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul149 = mul nsw i32 %add148, %116
  %idx.ext150 = sext i32 %mul149 to i64
  %add.ptr151 = getelementptr inbounds %struct.dcomplex, ptr %114, i64 %idx.ext150
  store ptr %add.ptr151, ptr %v21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %psi11) #5
  %117 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %118 = load i32, ptr %i, align 4, !tbaa !4
  %119 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul152 = mul nsw i32 %118, %119
  %idx.ext153 = sext i32 %mul152 to i64
  %add.ptr154 = getelementptr inbounds %struct.dcomplex, ptr %117, i64 %idx.ext153
  store ptr %add.ptr154, ptr %psi11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %y21) #5
  %120 = load ptr, ptr %buff_y, align 8, !tbaa !19
  %121 = load i32, ptr %i, align 4, !tbaa !4
  %add155 = add nsw i32 %121, 1
  %122 = load i32, ptr %inc_y, align 4, !tbaa !4
  %mul156 = mul nsw i32 %add155, %122
  %idx.ext157 = sext i32 %mul156 to i64
  %add.ptr158 = getelementptr inbounds %struct.dcomplex, ptr %120, i64 %idx.ext157
  store ptr %add.ptr158, ptr %y21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %zeta11) #5
  %123 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %124 = load i32, ptr %i, align 4, !tbaa !4
  %125 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul159 = mul nsw i32 %124, %125
  %idx.ext160 = sext i32 %mul159 to i64
  %add.ptr161 = getelementptr inbounds %struct.dcomplex, ptr %123, i64 %idx.ext160
  store ptr %add.ptr161, ptr %zeta11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %z21) #5
  %126 = load ptr, ptr %buff_z, align 8, !tbaa !19
  %127 = load i32, ptr %i, align 4, !tbaa !4
  %add162 = add nsw i32 %127, 1
  %128 = load i32, ptr %inc_z, align 4, !tbaa !4
  %mul163 = mul nsw i32 %add162, %128
  %idx.ext164 = sext i32 %mul163 to i64
  %add.ptr165 = getelementptr inbounds %struct.dcomplex, ptr %126, i64 %idx.ext164
  store ptr %add.ptr165, ptr %z21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_t) #5
  %129 = load ptr, ptr %a12p, align 8, !tbaa !19
  %130 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul166 = mul nsw i32 0, %130
  %idx.ext167 = sext i32 %mul166 to i64
  %add.ptr168 = getelementptr inbounds %struct.dcomplex, ptr %129, i64 %idx.ext167
  store ptr %add.ptr168, ptr %a12p_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12p_b) #5
  %131 = load ptr, ptr %a12p, align 8, !tbaa !19
  %132 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %mul169 = mul nsw i32 1, %132
  %idx.ext170 = sext i32 %mul169 to i64
  %add.ptr171 = getelementptr inbounds %struct.dcomplex, ptr %131, i64 %idx.ext170
  store ptr %add.ptr171, ptr %a12p_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_t) #5
  %133 = load ptr, ptr %v21, align 8, !tbaa !19
  %134 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul172 = mul nsw i32 0, %134
  %idx.ext173 = sext i32 %mul172 to i64
  %add.ptr174 = getelementptr inbounds %struct.dcomplex, ptr %133, i64 %idx.ext173
  store ptr %add.ptr174, ptr %v21_t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %v21_b) #5
  %135 = load ptr, ptr %v21, align 8, !tbaa !19
  %136 = load i32, ptr %inc_v, align 4, !tbaa !4
  %mul175 = mul nsw i32 1, %136
  %idx.ext176 = sext i32 %mul175 to i64
  %add.ptr177 = getelementptr inbounds %struct.dcomplex, ptr %135, i64 %idx.ext176
  store ptr %add.ptr177, ptr %v21_b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_l) #5
  %137 = load ptr, ptr %a12t, align 8, !tbaa !19
  %138 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul178 = mul nsw i32 0, %138
  %idx.ext179 = sext i32 %mul178 to i64
  %add.ptr180 = getelementptr inbounds %struct.dcomplex, ptr %137, i64 %idx.ext179
  %139 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul181 = mul nsw i32 0, %139
  %idx.ext182 = sext i32 %mul181 to i64
  %add.ptr183 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr180, i64 %idx.ext182
  store ptr %add.ptr183, ptr %a12t_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t_r) #5
  %140 = load ptr, ptr %a12t, align 8, !tbaa !19
  %141 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul184 = mul nsw i32 1, %141
  %idx.ext185 = sext i32 %mul184 to i64
  %add.ptr186 = getelementptr inbounds %struct.dcomplex, ptr %140, i64 %idx.ext185
  %142 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul187 = mul nsw i32 0, %142
  %idx.ext188 = sext i32 %mul187 to i64
  %add.ptr189 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr186, i64 %idx.ext188
  store ptr %add.ptr189, ptr %a12t_r, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A22_l) #5
  %143 = load ptr, ptr %A22, align 8, !tbaa !19
  %144 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul190 = mul nsw i32 0, %144
  %idx.ext191 = sext i32 %mul190 to i64
  %add.ptr192 = getelementptr inbounds %struct.dcomplex, ptr %143, i64 %idx.ext191
  %145 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul193 = mul nsw i32 0, %145
  %idx.ext194 = sext i32 %mul193 to i64
  %add.ptr195 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr192, i64 %idx.ext194
  store ptr %add.ptr195, ptr %A22_l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #5
  %146 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %146, %147
  %sub196 = sub nsw i32 %sub, 1
  store i32 %sub196, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #5
  %148 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %149 = load i32, ptr %i, align 4, !tbaa !4
  %sub197 = sub nsw i32 %148, %149
  %sub198 = sub nsw i32 %sub197, 1
  store i32 %sub198, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #5
  %150 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %150, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_behind) #5
  %151 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %151, ptr %n_behind, align 4, !tbaa !4
  %152 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp199 = icmp sgt i32 %152, 0
  br i1 %cmp199, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr) #5
  %153 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.dcomplex, ptr %153, i32 0, i32 0
  %154 = load double, ptr %real, align 8, !tbaa !32
  %155 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real201 = getelementptr inbounds %struct.dcomplex, ptr %155, i32 0, i32 0
  %156 = load double, ptr %real201, align 8, !tbaa !32
  %157 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.dcomplex, ptr %157, i32 0, i32 1
  %158 = load double, ptr %imag, align 8, !tbaa !34
  %159 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag203 = getelementptr inbounds %struct.dcomplex, ptr %159, i32 0, i32 1
  %160 = load double, ptr %imag203, align 8, !tbaa !34
  %mul204 = fmul double %158, %160
  %neg = fneg double %mul204
  %161 = call double @llvm.fmuladd.f64(double %154, double %156, double %neg)
  store double %161, ptr %tempr, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi) #5
  %162 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag205 = getelementptr inbounds %struct.dcomplex, ptr %162, i32 0, i32 1
  %163 = load double, ptr %imag205, align 8, !tbaa !34
  %164 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %real206 = getelementptr inbounds %struct.dcomplex, ptr %164, i32 0, i32 0
  %165 = load double, ptr %real206, align 8, !tbaa !32
  %166 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real208 = getelementptr inbounds %struct.dcomplex, ptr %166, i32 0, i32 0
  %167 = load double, ptr %real208, align 8, !tbaa !32
  %168 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %imag209 = getelementptr inbounds %struct.dcomplex, ptr %168, i32 0, i32 1
  %169 = load double, ptr %imag209, align 8, !tbaa !34
  %mul210 = fmul double %167, %169
  %170 = call double @llvm.fmuladd.f64(double %163, double %165, double %mul210)
  store double %170, ptr %tempi, align 8, !tbaa !24
  %171 = load double, ptr %tempr, align 8, !tbaa !24
  %real211 = getelementptr inbounds %struct.dcomplex, ptr %minus_upsilon11, i32 0, i32 0
  store double %171, ptr %real211, align 8, !tbaa !32
  %172 = load double, ptr %tempi, align 8, !tbaa !24
  %imag212 = getelementptr inbounds %struct.dcomplex, ptr %minus_upsilon11, i32 0, i32 1
  store double %172, ptr %imag212, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr213) #5
  %173 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real214 = getelementptr inbounds %struct.dcomplex, ptr %173, i32 0, i32 0
  %174 = load double, ptr %real214, align 8, !tbaa !32
  %175 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real215 = getelementptr inbounds %struct.dcomplex, ptr %175, i32 0, i32 0
  %176 = load double, ptr %real215, align 8, !tbaa !32
  %177 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag217 = getelementptr inbounds %struct.dcomplex, ptr %177, i32 0, i32 1
  %178 = load double, ptr %imag217, align 8, !tbaa !34
  %179 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag218 = getelementptr inbounds %struct.dcomplex, ptr %179, i32 0, i32 1
  %180 = load double, ptr %imag218, align 8, !tbaa !34
  %mul219 = fmul double %178, %180
  %neg220 = fneg double %mul219
  %181 = call double @llvm.fmuladd.f64(double %174, double %176, double %neg220)
  store double %181, ptr %tempr213, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi221) #5
  %182 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag222 = getelementptr inbounds %struct.dcomplex, ptr %182, i32 0, i32 1
  %183 = load double, ptr %imag222, align 8, !tbaa !34
  %184 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %real223 = getelementptr inbounds %struct.dcomplex, ptr %184, i32 0, i32 0
  %185 = load double, ptr %real223, align 8, !tbaa !32
  %186 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real225 = getelementptr inbounds %struct.dcomplex, ptr %186, i32 0, i32 0
  %187 = load double, ptr %real225, align 8, !tbaa !32
  %188 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %imag226 = getelementptr inbounds %struct.dcomplex, ptr %188, i32 0, i32 1
  %189 = load double, ptr %imag226, align 8, !tbaa !34
  %mul227 = fmul double %187, %189
  %190 = call double @llvm.fmuladd.f64(double %183, double %185, double %mul227)
  store double %190, ptr %tempi221, align 8, !tbaa !24
  %191 = load double, ptr %tempr213, align 8, !tbaa !24
  %real228 = getelementptr inbounds %struct.dcomplex, ptr %minus_zeta11, i32 0, i32 0
  store double %191, ptr %real228, align 8, !tbaa !32
  %192 = load double, ptr %tempi221, align 8, !tbaa !24
  %imag229 = getelementptr inbounds %struct.dcomplex, ptr %minus_zeta11, i32 0, i32 1
  store double %192, ptr %imag229, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi221) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr213) #5
  %193 = load ptr, ptr %psi11, align 8, !tbaa !19
  %real230 = getelementptr inbounds %struct.dcomplex, ptr %193, i32 0, i32 0
  %194 = load double, ptr %real230, align 8, !tbaa !32
  %real231 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 0
  store double %194, ptr %real231, align 8, !tbaa !32
  %195 = load ptr, ptr %psi11, align 8, !tbaa !19
  %imag232 = getelementptr inbounds %struct.dcomplex, ptr %195, i32 0, i32 1
  %196 = load double, ptr %imag232, align 8, !tbaa !34
  %mul233 = fmul double -1.000000e+00, %196
  %imag234 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 1
  store double %mul233, ptr %imag234, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr235) #5
  %197 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real236 = getelementptr inbounds %struct.dcomplex, ptr %197, i32 0, i32 0
  %198 = load double, ptr %real236, align 8, !tbaa !32
  %real237 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 0
  %199 = load double, ptr %real237, align 8, !tbaa !32
  %200 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag239 = getelementptr inbounds %struct.dcomplex, ptr %200, i32 0, i32 1
  %201 = load double, ptr %imag239, align 8, !tbaa !34
  %imag240 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 1
  %202 = load double, ptr %imag240, align 8, !tbaa !34
  %mul241 = fmul double %201, %202
  %neg242 = fneg double %mul241
  %203 = call double @llvm.fmuladd.f64(double %198, double %199, double %neg242)
  store double %203, ptr %tempr235, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi243) #5
  %204 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag244 = getelementptr inbounds %struct.dcomplex, ptr %204, i32 0, i32 1
  %205 = load double, ptr %imag244, align 8, !tbaa !34
  %real245 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 0
  %206 = load double, ptr %real245, align 8, !tbaa !32
  %207 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real247 = getelementptr inbounds %struct.dcomplex, ptr %207, i32 0, i32 0
  %208 = load double, ptr %real247, align 8, !tbaa !32
  %imag248 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 1
  %209 = load double, ptr %imag248, align 8, !tbaa !34
  %mul249 = fmul double %208, %209
  %210 = call double @llvm.fmuladd.f64(double %205, double %206, double %mul249)
  store double %210, ptr %tempi243, align 8, !tbaa !24
  %211 = load double, ptr %tempr235, align 8, !tbaa !24
  %real250 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 0
  store double %211, ptr %real250, align 8, !tbaa !32
  %212 = load double, ptr %tempi243, align 8, !tbaa !24
  %imag251 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_psi11, i32 0, i32 1
  store double %212, ptr %imag251, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi243) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr235) #5
  %213 = load ptr, ptr %nu11, align 8, !tbaa !19
  %real252 = getelementptr inbounds %struct.dcomplex, ptr %213, i32 0, i32 0
  %214 = load double, ptr %real252, align 8, !tbaa !32
  %real253 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 0
  store double %214, ptr %real253, align 8, !tbaa !32
  %215 = load ptr, ptr %nu11, align 8, !tbaa !19
  %imag254 = getelementptr inbounds %struct.dcomplex, ptr %215, i32 0, i32 1
  %216 = load double, ptr %imag254, align 8, !tbaa !34
  %mul255 = fmul double -1.000000e+00, %216
  %imag256 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 1
  store double %mul255, ptr %imag256, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr257) #5
  %217 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real258 = getelementptr inbounds %struct.dcomplex, ptr %217, i32 0, i32 0
  %218 = load double, ptr %real258, align 8, !tbaa !32
  %real259 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 0
  %219 = load double, ptr %real259, align 8, !tbaa !32
  %220 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag261 = getelementptr inbounds %struct.dcomplex, ptr %220, i32 0, i32 1
  %221 = load double, ptr %imag261, align 8, !tbaa !34
  %imag262 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 1
  %222 = load double, ptr %imag262, align 8, !tbaa !34
  %mul263 = fmul double %221, %222
  %neg264 = fneg double %mul263
  %223 = call double @llvm.fmuladd.f64(double %218, double %219, double %neg264)
  store double %223, ptr %tempr257, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi265) #5
  %224 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag266 = getelementptr inbounds %struct.dcomplex, ptr %224, i32 0, i32 1
  %225 = load double, ptr %imag266, align 8, !tbaa !34
  %real267 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 0
  %226 = load double, ptr %real267, align 8, !tbaa !32
  %227 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real269 = getelementptr inbounds %struct.dcomplex, ptr %227, i32 0, i32 0
  %228 = load double, ptr %real269, align 8, !tbaa !32
  %imag270 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 1
  %229 = load double, ptr %imag270, align 8, !tbaa !34
  %mul271 = fmul double %228, %229
  %230 = call double @llvm.fmuladd.f64(double %225, double %226, double %mul271)
  store double %230, ptr %tempi265, align 8, !tbaa !24
  %231 = load double, ptr %tempr257, align 8, !tbaa !24
  %real272 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 0
  store double %231, ptr %real272, align 8, !tbaa !32
  %232 = load double, ptr %tempi265, align 8, !tbaa !24
  %imag273 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_nu11, i32 0, i32 1
  store double %232, ptr %imag273, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi265) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr257) #5
  %233 = load ptr, ptr %upsilon11, align 8, !tbaa !19
  %234 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_conj_psi11, ptr noundef %233, i32 noundef 1, ptr noundef %234, i32 noundef 1)
  %235 = load ptr, ptr %zeta11, align 8, !tbaa !19
  %236 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef 1, ptr noundef %minus_conj_nu11, ptr noundef %235, i32 noundef 1, ptr noundef %236, i32 noundef 1)
  %237 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %238 = load ptr, ptr %u21, align 8, !tbaa !19
  %239 = load i32, ptr %inc_u, align 4, !tbaa !4
  %240 = load ptr, ptr %a21, align 8, !tbaa !19
  %241 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %237, ptr noundef %minus_conj_psi11, ptr noundef %238, i32 noundef %239, ptr noundef %240, i32 noundef %241)
  %242 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %243 = load ptr, ptr %z21, align 8, !tbaa !19
  %244 = load i32, ptr %inc_z, align 4, !tbaa !4
  %245 = load ptr, ptr %a21, align 8, !tbaa !19
  %246 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %242, ptr noundef %minus_conj_nu11, ptr noundef %243, i32 noundef %244, ptr noundef %245, i32 noundef %246)
  %247 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %248 = load ptr, ptr %y21, align 8, !tbaa !19
  %249 = load i32, ptr %inc_y, align 4, !tbaa !4
  %250 = load ptr, ptr %a12t, align 8, !tbaa !19
  %251 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 501, i32 noundef %247, ptr noundef %minus_upsilon11, ptr noundef %248, i32 noundef %249, ptr noundef %250, i32 noundef %251)
  %252 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %253 = load ptr, ptr %v21, align 8, !tbaa !19
  %254 = load i32, ptr %inc_v, align 4, !tbaa !4
  %255 = load ptr, ptr %a12t, align 8, !tbaa !19
  %256 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 501, i32 noundef %252, ptr noundef %minus_zeta11, ptr noundef %253, i32 noundef %254, ptr noundef %255, i32 noundef %256)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %257 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %258 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %259 = load ptr, ptr %a21, align 8, !tbaa !19
  %260 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %261 = load ptr, ptr %tau11, align 8, !tbaa !19
  %call274 = call i32 @FLA_Househ2_UT_l_opz(i32 noundef %257, ptr noundef %258, ptr noundef %259, i32 noundef %260, ptr noundef %261)
  %262 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %263 = load ptr, ptr %a21, align 8, !tbaa !19
  %264 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %265 = load ptr, ptr %u21p, align 8, !tbaa !19
  %266 = load i32, ptr %inc_up, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %262, ptr noundef %263, i32 noundef %264, ptr noundef %265, i32 noundef %266)
  %267 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp275 = icmp sgt i32 %267, 0
  br i1 %cmp275, label %if.then277, label %if.end342

if.then277:                                       ; preds = %if.end
  %268 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %minus_inv_tau11, ptr align 8 %268, i64 16, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  %269 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real278 = getelementptr inbounds %struct.dcomplex, ptr %269, i32 0, i32 0
  %270 = load double, ptr %real278, align 8, !tbaa !32
  %cmp279 = fcmp ole double %270, 0.000000e+00
  br i1 %cmp279, label %cond.true281, label %cond.false283

cond.true281:                                     ; preds = %if.then277
  %271 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real282 = getelementptr inbounds %struct.dcomplex, ptr %271, i32 0, i32 0
  %272 = load double, ptr %real282, align 8, !tbaa !32
  %fneg = fneg double %272
  br label %cond.end285

cond.false283:                                    ; preds = %if.then277
  %273 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real284 = getelementptr inbounds %struct.dcomplex, ptr %273, i32 0, i32 0
  %274 = load double, ptr %real284, align 8, !tbaa !32
  br label %cond.end285

cond.end285:                                      ; preds = %cond.false283, %cond.true281
  %cond286 = phi double [ %fneg, %cond.true281 ], [ %274, %cond.false283 ]
  %275 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag287 = getelementptr inbounds %struct.dcomplex, ptr %275, i32 0, i32 1
  %276 = load double, ptr %imag287, align 8, !tbaa !34
  %cmp288 = fcmp ole double %276, 0.000000e+00
  br i1 %cmp288, label %cond.true290, label %cond.false293

cond.true290:                                     ; preds = %cond.end285
  %277 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag291 = getelementptr inbounds %struct.dcomplex, ptr %277, i32 0, i32 1
  %278 = load double, ptr %imag291, align 8, !tbaa !34
  %fneg292 = fneg double %278
  br label %cond.end295

cond.false293:                                    ; preds = %cond.end285
  %279 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag294 = getelementptr inbounds %struct.dcomplex, ptr %279, i32 0, i32 1
  %280 = load double, ptr %imag294, align 8, !tbaa !34
  br label %cond.end295

cond.end295:                                      ; preds = %cond.false293, %cond.true290
  %cond296 = phi double [ %fneg292, %cond.true290 ], [ %280, %cond.false293 ]
  %cmp297 = fcmp ogt double %cond286, %cond296
  br i1 %cmp297, label %cond.true299, label %cond.false310

cond.true299:                                     ; preds = %cond.end295
  %281 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real300 = getelementptr inbounds %struct.dcomplex, ptr %281, i32 0, i32 0
  %282 = load double, ptr %real300, align 8, !tbaa !32
  %cmp301 = fcmp ole double %282, 0.000000e+00
  br i1 %cmp301, label %cond.true303, label %cond.false306

cond.true303:                                     ; preds = %cond.true299
  %283 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real304 = getelementptr inbounds %struct.dcomplex, ptr %283, i32 0, i32 0
  %284 = load double, ptr %real304, align 8, !tbaa !32
  %fneg305 = fneg double %284
  br label %cond.end308

cond.false306:                                    ; preds = %cond.true299
  %285 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real307 = getelementptr inbounds %struct.dcomplex, ptr %285, i32 0, i32 0
  %286 = load double, ptr %real307, align 8, !tbaa !32
  br label %cond.end308

cond.end308:                                      ; preds = %cond.false306, %cond.true303
  %cond309 = phi double [ %fneg305, %cond.true303 ], [ %286, %cond.false306 ]
  br label %cond.end321

cond.false310:                                    ; preds = %cond.end295
  %287 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag311 = getelementptr inbounds %struct.dcomplex, ptr %287, i32 0, i32 1
  %288 = load double, ptr %imag311, align 8, !tbaa !34
  %cmp312 = fcmp ole double %288, 0.000000e+00
  br i1 %cmp312, label %cond.true314, label %cond.false317

cond.true314:                                     ; preds = %cond.false310
  %289 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag315 = getelementptr inbounds %struct.dcomplex, ptr %289, i32 0, i32 1
  %290 = load double, ptr %imag315, align 8, !tbaa !34
  %fneg316 = fneg double %290
  br label %cond.end319

cond.false317:                                    ; preds = %cond.false310
  %291 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag318 = getelementptr inbounds %struct.dcomplex, ptr %291, i32 0, i32 1
  %292 = load double, ptr %imag318, align 8, !tbaa !34
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false317, %cond.true314
  %cond320 = phi double [ %fneg316, %cond.true314 ], [ %292, %cond.false317 ]
  br label %cond.end321

cond.end321:                                      ; preds = %cond.end319, %cond.end308
  %cond322 = phi double [ %cond309, %cond.end308 ], [ %cond320, %cond.end319 ]
  store double %cond322, ptr %s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar_s) #5
  %293 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real323 = getelementptr inbounds %struct.dcomplex, ptr %293, i32 0, i32 0
  %294 = load double, ptr %real323, align 8, !tbaa !32
  %295 = load double, ptr %s, align 8, !tbaa !24
  %div = fdiv double %294, %295
  store double %div, ptr %ar_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai_s) #5
  %296 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag324 = getelementptr inbounds %struct.dcomplex, ptr %296, i32 0, i32 1
  %297 = load double, ptr %imag324, align 8, !tbaa !34
  %298 = load double, ptr %s, align 8, !tbaa !24
  %div325 = fdiv double %297, %298
  store double %div325, ptr %ai_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yrt) #5
  %real326 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %299 = load double, ptr %real326, align 8, !tbaa !32
  store double %299, ptr %yrt, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #5
  %300 = load double, ptr %ar_s, align 8, !tbaa !24
  %301 = load ptr, ptr %tau11, align 8, !tbaa !19
  %real327 = getelementptr inbounds %struct.dcomplex, ptr %301, i32 0, i32 0
  %302 = load double, ptr %real327, align 8, !tbaa !32
  %303 = load double, ptr %ai_s, align 8, !tbaa !24
  %304 = load ptr, ptr %tau11, align 8, !tbaa !19
  %imag329 = getelementptr inbounds %struct.dcomplex, ptr %304, i32 0, i32 1
  %305 = load double, ptr %imag329, align 8, !tbaa !34
  %mul330 = fmul double %303, %305
  %306 = call double @llvm.fmuladd.f64(double %300, double %302, double %mul330)
  store double %306, ptr %temp, align 8, !tbaa !24
  %307 = load double, ptr %yrt, align 8, !tbaa !24
  %308 = load double, ptr %ar_s, align 8, !tbaa !24
  %imag332 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %309 = load double, ptr %imag332, align 8, !tbaa !34
  %310 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul333 = fmul double %309, %310
  %311 = call double @llvm.fmuladd.f64(double %307, double %308, double %mul333)
  %312 = load double, ptr %temp, align 8, !tbaa !24
  %div334 = fdiv double %311, %312
  %real335 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 0
  store double %div334, ptr %real335, align 8, !tbaa !32
  %imag336 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %313 = load double, ptr %imag336, align 8, !tbaa !34
  %314 = load double, ptr %ar_s, align 8, !tbaa !24
  %315 = load double, ptr %yrt, align 8, !tbaa !24
  %316 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul338 = fmul double %315, %316
  %neg339 = fneg double %mul338
  %317 = call double @llvm.fmuladd.f64(double %313, double %314, double %neg339)
  %318 = load double, ptr %temp, align 8, !tbaa !24
  %div340 = fdiv double %317, %318
  %imag341 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  store double %div340, ptr %imag341, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %yrt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai_s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar_s) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  %319 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %320 = load ptr, ptr %a12t, align 8, !tbaa !19
  %321 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %322 = load ptr, ptr %a12p, align 8, !tbaa !19
  %323 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %319, ptr noundef %320, i32 noundef %321, ptr noundef %322, i32 noundef %323)
  %324 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %325 = load ptr, ptr %a12t, align 8, !tbaa !19
  %326 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %327 = load ptr, ptr %a12p, align 8, !tbaa !19
  %328 = load i32, ptr %inc_ap, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %324, ptr noundef %minus_inv_tau11, ptr noundef %325, i32 noundef %326, ptr noundef %327, i32 noundef %328)
  br label %if.end342

if.end342:                                        ; preds = %cond.end321, %if.end
  %329 = load i32, ptr %m_behind, align 4, !tbaa !4
  %cmp343 = icmp sgt i32 %329, 0
  br i1 %cmp343, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end342
  %330 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp345 = icmp sgt i32 %330, 0
  br i1 %cmp345, label %if.then347, label %if.else

if.then347:                                       ; preds = %land.lhs.true
  %331 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %332 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %333 = load ptr, ptr %tau11, align 8, !tbaa !19
  %334 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %335 = load ptr, ptr %u21, align 8, !tbaa !19
  %336 = load i32, ptr %inc_u, align 4, !tbaa !4
  %337 = load ptr, ptr %y21, align 8, !tbaa !19
  %338 = load i32, ptr %inc_y, align 4, !tbaa !4
  %339 = load ptr, ptr %z21, align 8, !tbaa !19
  %340 = load i32, ptr %inc_z, align 4, !tbaa !4
  %341 = load ptr, ptr %v21, align 8, !tbaa !19
  %342 = load i32, ptr %inc_v, align 4, !tbaa !4
  %343 = load ptr, ptr %A22, align 8, !tbaa !19
  %344 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %345 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %346 = load ptr, ptr %u21p, align 8, !tbaa !19
  %347 = load i32, ptr %inc_up, align 4, !tbaa !4
  %348 = load ptr, ptr %a12p, align 8, !tbaa !19
  %349 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %350 = load ptr, ptr %w21, align 8, !tbaa !19
  %351 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call348 = call i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_opz_var1(i32 noundef %331, i32 noundef %332, ptr noundef %333, ptr noundef %334, ptr noundef %335, i32 noundef %336, ptr noundef %337, i32 noundef %338, ptr noundef %339, i32 noundef %340, ptr noundef %341, i32 noundef %342, ptr noundef %343, i32 noundef %344, i32 noundef %345, ptr noundef %346, i32 noundef %347, ptr noundef %348, i32 noundef %349, ptr noundef %350, i32 noundef %351)
  br label %if.end354

if.else:                                          ; preds = %land.lhs.true, %if.end342
  %352 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp349 = icmp sgt i32 %352, 0
  br i1 %cmp349, label %if.then351, label %if.end353

if.then351:                                       ; preds = %if.else
  %353 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %354 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %355 = load ptr, ptr %tau11, align 8, !tbaa !19
  %356 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %357 = load ptr, ptr %A22, align 8, !tbaa !19
  %358 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %359 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %360 = load ptr, ptr %u21p, align 8, !tbaa !19
  %361 = load i32, ptr %inc_up, align 4, !tbaa !4
  %362 = load ptr, ptr %a12p, align 8, !tbaa !19
  %363 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %364 = load ptr, ptr %y21, align 8, !tbaa !19
  %365 = load i32, ptr %inc_y, align 4, !tbaa !4
  %366 = load ptr, ptr %w21, align 8, !tbaa !19
  %367 = load i32, ptr %inc_w, align 4, !tbaa !4
  %call352 = call i32 @FLA_Fused_Ahx_Axpy_Ax_opz_var1(i32 noundef %353, i32 noundef %354, ptr noundef %355, ptr noundef %356, ptr noundef %357, i32 noundef %358, i32 noundef %359, ptr noundef %360, i32 noundef %361, ptr noundef %362, i32 noundef %363, ptr noundef %364, i32 noundef %365, ptr noundef %366, i32 noundef %367)
  br label %if.end353

if.end353:                                        ; preds = %if.then351, %if.else
  br label %if.end354

if.end354:                                        ; preds = %if.end353, %if.then347
  %368 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp355 = icmp sgt i32 %368, 0
  br i1 %cmp355, label %if.then357, label %if.end379

if.then357:                                       ; preds = %if.end354
  %369 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %370 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %371 = load ptr, ptr %a12t, align 8, !tbaa !19
  %372 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %373 = load ptr, ptr %y21, align 8, !tbaa !19
  %374 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 501, i32 noundef %369, ptr noundef %370, ptr noundef %371, i32 noundef %372, ptr noundef %373, i32 noundef %374)
  %375 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub358 = sub nsw i32 %375, 1
  %376 = load ptr, ptr %a12p_t, align 8, !tbaa !19
  %377 = load ptr, ptr %a12p_b, align 8, !tbaa !19
  %378 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %379 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %call359 = call i32 @FLA_Househ2s_UT_r_opz(i32 noundef %sub358, ptr noundef %376, ptr noundef %377, i32 noundef %378, ptr noundef %alpha12, ptr noundef %psi11_minus_alpha12, ptr noundef %379)
  %380 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %381 = load ptr, ptr %a12p, align 8, !tbaa !19
  %382 = load i32, ptr %inc_ap, align 4, !tbaa !4
  %383 = load ptr, ptr %v21, align 8, !tbaa !19
  %384 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %380, ptr noundef %381, i32 noundef %382, ptr noundef %383, i32 noundef %384)
  %385 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %real360 = getelementptr inbounds %struct.dcomplex, ptr %385, i32 0, i32 0
  %386 = load double, ptr %real360, align 8, !tbaa !32
  %387 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real361 = getelementptr inbounds %struct.dcomplex, ptr %387, i32 0, i32 0
  %388 = load double, ptr %real361, align 8, !tbaa !32
  %real362 = getelementptr inbounds %struct.dcomplex, ptr %alpha12, i32 0, i32 0
  %389 = load double, ptr %real362, align 8, !tbaa !32
  %390 = call double @llvm.fmuladd.f64(double %388, double %389, double %386)
  %391 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag364 = getelementptr inbounds %struct.dcomplex, ptr %391, i32 0, i32 1
  %392 = load double, ptr %imag364, align 8, !tbaa !34
  %imag365 = getelementptr inbounds %struct.dcomplex, ptr %alpha12, i32 0, i32 1
  %393 = load double, ptr %imag365, align 8, !tbaa !34
  %neg367 = fneg double %392
  %394 = call double @llvm.fmuladd.f64(double %neg367, double %393, double %390)
  %395 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %real368 = getelementptr inbounds %struct.dcomplex, ptr %395, i32 0, i32 0
  store double %394, ptr %real368, align 8, !tbaa !32
  %396 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %imag369 = getelementptr inbounds %struct.dcomplex, ptr %396, i32 0, i32 1
  %397 = load double, ptr %imag369, align 8, !tbaa !34
  %398 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %imag370 = getelementptr inbounds %struct.dcomplex, ptr %398, i32 0, i32 1
  %399 = load double, ptr %imag370, align 8, !tbaa !34
  %real371 = getelementptr inbounds %struct.dcomplex, ptr %alpha12, i32 0, i32 0
  %400 = load double, ptr %real371, align 8, !tbaa !32
  %401 = call double @llvm.fmuladd.f64(double %399, double %400, double %397)
  %402 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %real373 = getelementptr inbounds %struct.dcomplex, ptr %402, i32 0, i32 0
  %403 = load double, ptr %real373, align 8, !tbaa !32
  %imag374 = getelementptr inbounds %struct.dcomplex, ptr %alpha12, i32 0, i32 1
  %404 = load double, ptr %imag374, align 8, !tbaa !34
  %405 = call double @llvm.fmuladd.f64(double %403, double %404, double %401)
  %406 = load ptr, ptr %v21_t, align 8, !tbaa !19
  %imag376 = getelementptr inbounds %struct.dcomplex, ptr %406, i32 0, i32 1
  store double %405, ptr %imag376, align 8, !tbaa !34
  %407 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %408 = load ptr, ptr %v21, align 8, !tbaa !19
  %409 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %407, ptr noundef %psi11_minus_alpha12, ptr noundef %408, i32 noundef %409)
  %410 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub377 = sub nsw i32 %410, 1
  %411 = load ptr, ptr %v21_b, align 8, !tbaa !19
  %412 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_zconjv(i32 noundef %sub377, ptr noundef %411, i32 noundef %412)
  %413 = load ptr, ptr %a12t_l, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %413, ptr align 8 %alpha12, i64 16, i1 false), !tbaa.struct !35
  %414 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %sub378 = sub nsw i32 %414, 1
  %415 = load ptr, ptr %v21_b, align 8, !tbaa !19
  %416 = load i32, ptr %inc_v, align 4, !tbaa !4
  %417 = load ptr, ptr %a12t_r, align 8, !tbaa !19
  %418 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %sub378, ptr noundef %415, i32 noundef %416, ptr noundef %417, i32 noundef %418)
  br label %if.end379

if.end379:                                        ; preds = %if.then357, %if.end354
  %419 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %420 = load ptr, ptr %u21p, align 8, !tbaa !19
  %421 = load i32, ptr %inc_up, align 4, !tbaa !4
  %422 = load ptr, ptr %u21, align 8, !tbaa !19
  %423 = load i32, ptr %inc_u, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %419, ptr noundef %420, i32 noundef %421, ptr noundef %422, i32 noundef %423)
  %424 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp380 = icmp sgt i32 %424, 0
  br i1 %cmp380, label %if.then382, label %if.end409

if.then382:                                       ; preds = %if.end379
  %425 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %426 = load ptr, ptr %y21, align 8, !tbaa !19
  %427 = load i32, ptr %inc_y, align 4, !tbaa !4
  %428 = load ptr, ptr %v21, align 8, !tbaa !19
  %429 = load i32, ptr %inc_v, align 4, !tbaa !4
  call void @bl1_zdot(i32 noundef 501, i32 noundef %425, ptr noundef %426, i32 noundef %427, ptr noundef %428, i32 noundef %429, ptr noundef %beta)
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempr383) #5
  %real384 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %430 = load double, ptr %real384, align 8, !tbaa !32
  %real385 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %431 = load double, ptr %real385, align 8, !tbaa !32
  %imag387 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %432 = load double, ptr %imag387, align 8, !tbaa !34
  %imag388 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %433 = load double, ptr %imag388, align 8, !tbaa !34
  %mul389 = fmul double %432, %433
  %neg390 = fneg double %mul389
  %434 = call double @llvm.fmuladd.f64(double %430, double %431, double %neg390)
  store double %434, ptr %tempr383, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %tempi391) #5
  %imag392 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 1
  %435 = load double, ptr %imag392, align 8, !tbaa !34
  %real393 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  %436 = load double, ptr %real393, align 8, !tbaa !32
  %real395 = getelementptr inbounds %struct.dcomplex, ptr %minus_inv_tau11, i32 0, i32 0
  %437 = load double, ptr %real395, align 8, !tbaa !32
  %imag396 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  %438 = load double, ptr %imag396, align 8, !tbaa !34
  %mul397 = fmul double %437, %438
  %439 = call double @llvm.fmuladd.f64(double %435, double %436, double %mul397)
  store double %439, ptr %tempi391, align 8, !tbaa !24
  %440 = load double, ptr %tempr383, align 8, !tbaa !24
  %real398 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 0
  store double %440, ptr %real398, align 8, !tbaa !32
  %441 = load double, ptr %tempi391, align 8, !tbaa !24
  %imag399 = getelementptr inbounds %struct.dcomplex, ptr %beta, i32 0, i32 1
  store double %441, ptr %imag399, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempi391) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tempr383) #5
  %real400 = getelementptr inbounds %struct.dcomplex, ptr %alpha12, i32 0, i32 0
  %442 = load double, ptr %real400, align 8, !tbaa !32
  %real401 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_alpha12, i32 0, i32 0
  store double %442, ptr %real401, align 8, !tbaa !32
  %imag402 = getelementptr inbounds %struct.dcomplex, ptr %alpha12, i32 0, i32 1
  %443 = load double, ptr %imag402, align 8, !tbaa !34
  %mul403 = fmul double -1.000000e+00, %443
  %imag404 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_alpha12, i32 0, i32 1
  store double %mul403, ptr %imag404, align 8, !tbaa !34
  %real405 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_alpha12, i32 0, i32 0
  %444 = load double, ptr %real405, align 8, !tbaa !32
  %mul406 = fmul double %444, -1.000000e+00
  store double %mul406, ptr %real405, align 8, !tbaa !32
  %imag407 = getelementptr inbounds %struct.dcomplex, ptr %minus_conj_alpha12, i32 0, i32 1
  %445 = load double, ptr %imag407, align 8, !tbaa !34
  %mul408 = fmul double %445, -1.000000e+00
  store double %mul408, ptr %imag407, align 8, !tbaa !34
  %446 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %447 = load ptr, ptr %w21, align 8, !tbaa !19
  %448 = load i32, ptr %inc_w, align 4, !tbaa !4
  %449 = load ptr, ptr %z21, align 8, !tbaa !19
  %450 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 500, i32 noundef %446, ptr noundef %447, i32 noundef %448, ptr noundef %449, i32 noundef %450)
  %451 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %452 = load ptr, ptr %A22_l, align 8, !tbaa !19
  %453 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %454 = load ptr, ptr %z21, align 8, !tbaa !19
  %455 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %451, ptr noundef %minus_conj_alpha12, ptr noundef %452, i32 noundef %453, ptr noundef %454, i32 noundef %455)
  %456 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %457 = load ptr, ptr %z21, align 8, !tbaa !19
  %458 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zinvscalv(i32 noundef 501, i32 noundef %456, ptr noundef %psi11_minus_alpha12, ptr noundef %457, i32 noundef %458)
  %459 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %460 = load ptr, ptr %u21, align 8, !tbaa !19
  %461 = load i32, ptr %inc_u, align 4, !tbaa !4
  %462 = load ptr, ptr %z21, align 8, !tbaa !19
  %463 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zaxpyv(i32 noundef 500, i32 noundef %459, ptr noundef %beta, ptr noundef %460, i32 noundef %461, ptr noundef %462, i32 noundef %463)
  %464 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %465 = load ptr, ptr %tau11, align 8, !tbaa !19
  %466 = load ptr, ptr %y21, align 8, !tbaa !19
  %467 = load i32, ptr %inc_y, align 4, !tbaa !4
  call void @bl1_zinvscalv(i32 noundef 501, i32 noundef %464, ptr noundef %465, ptr noundef %466, i32 noundef %467)
  %468 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %469 = load ptr, ptr %sigma11, align 8, !tbaa !19
  %470 = load ptr, ptr %z21, align 8, !tbaa !19
  %471 = load i32, ptr %inc_z, align 4, !tbaa !4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %468, ptr noundef %469, ptr noundef %470, i32 noundef %471)
  %472 = load i32, ptr %m_behind, align 4, !tbaa !4
  %473 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %474 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %475 = load ptr, ptr %A02, align 8, !tbaa !19
  %476 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %477 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %478 = load ptr, ptr %v21, align 8, !tbaa !19
  %479 = load i32, ptr %inc_v, align 4, !tbaa !4
  %480 = load ptr, ptr %buff_0, align 8, !tbaa !19
  %481 = load ptr, ptr %s01, align 8, !tbaa !19
  %482 = load i32, ptr %rs_S.addr, align 4, !tbaa !4
  call void @bl1_zgemv(i32 noundef 102, i32 noundef 500, i32 noundef %472, i32 noundef %473, ptr noundef %474, ptr noundef %475, i32 noundef %476, i32 noundef %477, ptr noundef %478, i32 noundef %479, ptr noundef %480, ptr noundef %481, i32 noundef %482)
  br label %if.end409

if.end409:                                        ; preds = %if.then382, %if.end379
  %483 = load i32, ptr %n_behind, align 4, !tbaa !4
  %484 = load ptr, ptr %a10t, align 8, !tbaa !19
  %485 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %486 = load ptr, ptr %t01, align 8, !tbaa !19
  %487 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_zcopyv(i32 noundef 501, i32 noundef %483, ptr noundef %484, i32 noundef %485, ptr noundef %486, i32 noundef %487)
  %488 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %489 = load i32, ptr %n_behind, align 4, !tbaa !4
  %490 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %491 = load ptr, ptr %A20, align 8, !tbaa !19
  %492 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %493 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %494 = load ptr, ptr %u21, align 8, !tbaa !19
  %495 = load i32, ptr %inc_u, align 4, !tbaa !4
  %496 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %497 = load ptr, ptr %t01, align 8, !tbaa !19
  %498 = load i32, ptr %rs_T.addr, align 4, !tbaa !4
  call void @bl1_zgemv(i32 noundef 103, i32 noundef 500, i32 noundef %488, i32 noundef %489, ptr noundef %490, ptr noundef %491, i32 noundef %492, i32 noundef %493, ptr noundef %494, i32 noundef %495, ptr noundef %496, ptr noundef %497, i32 noundef %498)
  %499 = load i32, ptr %m_behind, align 4, !tbaa !4
  %add410 = add nsw i32 %499, 1
  %500 = load i32, ptr %b_alg, align 4, !tbaa !4
  %cmp411 = icmp eq i32 %add410, %500
  br i1 %cmp411, label %land.lhs.true413, label %if.end417

land.lhs.true413:                                 ; preds = %if.end409
  %501 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %cmp414 = icmp sgt i32 %501, 0
  br i1 %cmp414, label %if.then416, label %if.end417

if.then416:                                       ; preds = %land.lhs.true413
  %502 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %503 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %504 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %505 = load ptr, ptr %u21, align 8, !tbaa !19
  %506 = load i32, ptr %inc_u, align 4, !tbaa !4
  %507 = load ptr, ptr %y21, align 8, !tbaa !19
  %508 = load i32, ptr %inc_y, align 4, !tbaa !4
  %509 = load ptr, ptr %A22, align 8, !tbaa !19
  %510 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %511 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zger(i32 noundef 500, i32 noundef 501, i32 noundef %502, i32 noundef %503, ptr noundef %504, ptr noundef %505, i32 noundef %506, ptr noundef %507, i32 noundef %508, ptr noundef %509, i32 noundef %510, i32 noundef %511)
  %512 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %513 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %514 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %515 = load ptr, ptr %z21, align 8, !tbaa !19
  %516 = load i32, ptr %inc_z, align 4, !tbaa !4
  %517 = load ptr, ptr %v21, align 8, !tbaa !19
  %518 = load i32, ptr %inc_v, align 4, !tbaa !4
  %519 = load ptr, ptr %A22, align 8, !tbaa !19
  %520 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %521 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zger(i32 noundef 500, i32 noundef 501, i32 noundef %512, i32 noundef %513, ptr noundef %514, ptr noundef %515, i32 noundef %516, ptr noundef %517, i32 noundef %518, ptr noundef %519, i32 noundef %520, i32 noundef %521)
  br label %if.end417

if.end417:                                        ; preds = %if.then416, %land.lhs.true413, %if.end409
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t_l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p_t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zeta11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %psi11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %v21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nu11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %u21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %w21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sigma11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tau11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t01) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end417
  %522 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %522, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %523 = load ptr, ptr %buff_w, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %523)
  %524 = load ptr, ptr %buff_ap, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %524)
  %525 = load ptr, ptr %buff_u, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %525)
  %526 = load ptr, ptr %buff_up, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %526)
  %527 = load ptr, ptr %buff_v, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %527)
  %528 = load ptr, ptr %buff_y, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %528)
  %529 = load ptr, ptr %buff_z, align 8, !tbaa !19
  call void @FLA_free(ptr noundef %529)
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_z) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_v) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_up) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_u) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_ap) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_w) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_v) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_up) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_u) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_ap) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_w) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_alg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %beta) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_zeta11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_conj_psi11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_conj_nu11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_upsilon11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_inv_tau11) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %psi11_minus_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %minus_conj_alpha12) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #5
  ret i32 -1
}

declare ptr @FLA_malloc(i64 noundef) #2

declare void @bl1_saxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_ops(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_scopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_ops_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Fused_Ahx_Axpy_Ax_ops_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2s_UT_r_ops(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @bl1_sinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_sgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @FLA_free(ptr noundef) #2

declare void @bl1_daxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_opd(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_dcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_opd_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Fused_Ahx_Axpy_Ax_opd_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2s_UT_r_opd(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @bl1_dinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dconjv(i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ddot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_dgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_caxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_opc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_ccopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_opc_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Fused_Ahx_Axpy_Ax_opc_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2s_UT_r_opc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bl1_cinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cconjv(i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_cgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_zaxpyv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2_UT_l_opz(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_zcopyv(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Fused_Gerc2_Ahx_Axpy_Ax_opz_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Fused_Ahx_Axpy_Ax_opz_var1(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @FLA_Househ2s_UT_r_opz(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bl1_zinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zconjv(i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zdot(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @bl1_zgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = distinct !{!26, !23}
!27 = !{!28, !21, i64 0}
!28 = !{!"scomplex", !21, i64 0, !21, i64 4}
!29 = !{!28, !21, i64 4}
!30 = !{i64 0, i64 4, !20, i64 4, i64 4, !20}
!31 = distinct !{!31, !23}
!32 = !{!33, !25, i64 0}
!33 = !{!"dcomplex", !25, i64 0, !25, i64 8}
!34 = !{!33, !25, i64 8}
!35 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!36 = distinct !{!36, !23}
