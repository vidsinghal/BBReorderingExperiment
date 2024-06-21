; ModuleID = 'samples/538.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/lu/piv/vars/flamec/FLA_LU_piv_opt_var4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@fzero = external constant float, align 4
@dzero = external constant double, align 8
@czero = external constant %struct.scomplex, align 4
@zzero = external constant %struct.dcomplex, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_LU_piv_opt_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p) #0 {
entry:
  %r_val = alloca i32, align 4
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %n_A = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %inc_p = alloca i32, align 4
  %buff_A = alloca ptr, align 8
  %buff_p = alloca ptr, align 8
  %buff_A45 = alloca ptr, align 8
  %buff_p69 = alloca ptr, align 8
  %buff_A95 = alloca ptr, align 8
  %buff_p119 = alloca ptr, align 8
  %buff_A145 = alloca ptr, align 8
  %buff_p169 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #4
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_p) #4
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call, ptr %datatype, align 4, !tbaa !4
  %call1 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n_A, align 4, !tbaa !4
  %call4 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %rs_A, align 4, !tbaa !4
  %call6 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv7 = trunc i64 %call6 to i32
  store i32 %conv7, ptr %cs_A, align 4, !tbaa !4
  %call8 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %p)
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %inc_p, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb44
    i32 102, label %sw.bb94
    i32 103, label %sw.bb144
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype10 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype10, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base12 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base12, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base13, align 8, !tbaa !8
  %buffer14 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer14, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base15 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base15, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr16 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base17, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul18 = mul i64 %10, %12
  %add.ptr19 = getelementptr inbounds float, ptr %add.ptr16, i64 %mul18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr19, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_p) #4
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %13 = load ptr, ptr %base20, align 8, !tbaa !8
  %datatype21 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype21, align 8, !tbaa !12
  %cmp22 = icmp eq i32 %14, 105
  br i1 %cmp22, label %cond.true24, label %cond.false28

cond.true24:                                      ; preds = %cond.end
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %15 = load ptr, ptr %base25, align 8, !tbaa !8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer26, align 8, !tbaa !14
  %add.ptr27 = getelementptr inbounds i8, ptr %16, i64 0
  br label %cond.end41

cond.false28:                                     ; preds = %cond.end
  %base29 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %17 = load ptr, ptr %base29, align 8, !tbaa !8
  %buffer30 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer30, align 8, !tbaa !14
  %offn31 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 1
  %19 = load i64, ptr %offn31, align 8, !tbaa !15
  %base32 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %20 = load ptr, ptr %base32, align 8, !tbaa !8
  %cs33 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs33, align 8, !tbaa !16
  %mul34 = mul i64 %19, %21
  %add.ptr35 = getelementptr inbounds i32, ptr %18, i64 %mul34
  %offm36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 0
  %22 = load i64, ptr %offm36, align 8, !tbaa !17
  %base37 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %23 = load ptr, ptr %base37, align 8, !tbaa !8
  %rs38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs38, align 8, !tbaa !18
  %mul39 = mul i64 %22, %24
  %add.ptr40 = getelementptr inbounds i32, ptr %add.ptr35, i64 %mul39
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false28, %cond.true24
  %cond42 = phi ptr [ %add.ptr27, %cond.true24 ], [ %add.ptr40, %cond.false28 ]
  store ptr %cond42, ptr %buff_p, align 8, !tbaa !19
  %25 = load i32, ptr %m_A, align 4, !tbaa !4
  %26 = load i32, ptr %n_A, align 4, !tbaa !4
  %27 = load ptr, ptr %buff_A, align 8, !tbaa !19
  %28 = load i32, ptr %rs_A, align 4, !tbaa !4
  %29 = load i32, ptr %cs_A, align 4, !tbaa !4
  %30 = load ptr, ptr %buff_p, align 8, !tbaa !19
  %31 = load i32, ptr %inc_p, align 4, !tbaa !4
  %call43 = call i32 @FLA_LU_piv_ops_var4(i32 noundef %25, i32 noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %30, i32 noundef %31)
  store i32 %call43, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #4
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A45) #4
  %base46 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %32 = load ptr, ptr %base46, align 8, !tbaa !8
  %datatype47 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %datatype47, align 8, !tbaa !12
  %cmp48 = icmp eq i32 %33, 105
  br i1 %cmp48, label %cond.true50, label %cond.false54

cond.true50:                                      ; preds = %sw.bb44
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %34 = load ptr, ptr %base51, align 8, !tbaa !8
  %buffer52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %buffer52, align 8, !tbaa !14
  %add.ptr53 = getelementptr inbounds i8, ptr %35, i64 16
  br label %cond.end67

cond.false54:                                     ; preds = %sw.bb44
  %base55 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %36 = load ptr, ptr %base55, align 8, !tbaa !8
  %buffer56 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %buffer56, align 8, !tbaa !14
  %offn57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %38 = load i64, ptr %offn57, align 8, !tbaa !15
  %base58 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %39 = load ptr, ptr %base58, align 8, !tbaa !8
  %cs59 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 5
  %40 = load i64, ptr %cs59, align 8, !tbaa !16
  %mul60 = mul i64 %38, %40
  %add.ptr61 = getelementptr inbounds double, ptr %37, i64 %mul60
  %offm62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %41 = load i64, ptr %offm62, align 8, !tbaa !17
  %base63 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %42 = load ptr, ptr %base63, align 8, !tbaa !8
  %rs64 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %42, i32 0, i32 4
  %43 = load i64, ptr %rs64, align 8, !tbaa !18
  %mul65 = mul i64 %41, %43
  %add.ptr66 = getelementptr inbounds double, ptr %add.ptr61, i64 %mul65
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false54, %cond.true50
  %cond68 = phi ptr [ %add.ptr53, %cond.true50 ], [ %add.ptr66, %cond.false54 ]
  store ptr %cond68, ptr %buff_A45, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_p69) #4
  %base70 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %44 = load ptr, ptr %base70, align 8, !tbaa !8
  %datatype71 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %datatype71, align 8, !tbaa !12
  %cmp72 = icmp eq i32 %45, 105
  br i1 %cmp72, label %cond.true74, label %cond.false78

cond.true74:                                      ; preds = %cond.end67
  %base75 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %46 = load ptr, ptr %base75, align 8, !tbaa !8
  %buffer76 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %buffer76, align 8, !tbaa !14
  %add.ptr77 = getelementptr inbounds i8, ptr %47, i64 0
  br label %cond.end91

cond.false78:                                     ; preds = %cond.end67
  %base79 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %48 = load ptr, ptr %base79, align 8, !tbaa !8
  %buffer80 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %48, i32 0, i32 12
  %49 = load ptr, ptr %buffer80, align 8, !tbaa !14
  %offn81 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 1
  %50 = load i64, ptr %offn81, align 8, !tbaa !15
  %base82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %51 = load ptr, ptr %base82, align 8, !tbaa !8
  %cs83 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %51, i32 0, i32 5
  %52 = load i64, ptr %cs83, align 8, !tbaa !16
  %mul84 = mul i64 %50, %52
  %add.ptr85 = getelementptr inbounds i32, ptr %49, i64 %mul84
  %offm86 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 0
  %53 = load i64, ptr %offm86, align 8, !tbaa !17
  %base87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %54 = load ptr, ptr %base87, align 8, !tbaa !8
  %rs88 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %54, i32 0, i32 4
  %55 = load i64, ptr %rs88, align 8, !tbaa !18
  %mul89 = mul i64 %53, %55
  %add.ptr90 = getelementptr inbounds i32, ptr %add.ptr85, i64 %mul89
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false78, %cond.true74
  %cond92 = phi ptr [ %add.ptr77, %cond.true74 ], [ %add.ptr90, %cond.false78 ]
  store ptr %cond92, ptr %buff_p69, align 8, !tbaa !19
  %56 = load i32, ptr %m_A, align 4, !tbaa !4
  %57 = load i32, ptr %n_A, align 4, !tbaa !4
  %58 = load ptr, ptr %buff_A45, align 8, !tbaa !19
  %59 = load i32, ptr %rs_A, align 4, !tbaa !4
  %60 = load i32, ptr %cs_A, align 4, !tbaa !4
  %61 = load ptr, ptr %buff_p69, align 8, !tbaa !19
  %62 = load i32, ptr %inc_p, align 4, !tbaa !4
  %call93 = call i32 @FLA_LU_piv_opd_var4(i32 noundef %56, i32 noundef %57, ptr noundef %58, i32 noundef %59, i32 noundef %60, ptr noundef %61, i32 noundef %62)
  store i32 %call93, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_p69) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A45) #4
  br label %sw.epilog

sw.bb94:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A95) #4
  %base96 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %63 = load ptr, ptr %base96, align 8, !tbaa !8
  %datatype97 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %63, i32 0, i32 0
  %64 = load i32, ptr %datatype97, align 8, !tbaa !12
  %cmp98 = icmp eq i32 %64, 105
  br i1 %cmp98, label %cond.true100, label %cond.false104

cond.true100:                                     ; preds = %sw.bb94
  %base101 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %65 = load ptr, ptr %base101, align 8, !tbaa !8
  %buffer102 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %65, i32 0, i32 12
  %66 = load ptr, ptr %buffer102, align 8, !tbaa !14
  %add.ptr103 = getelementptr inbounds i8, ptr %66, i64 24
  br label %cond.end117

cond.false104:                                    ; preds = %sw.bb94
  %base105 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %67 = load ptr, ptr %base105, align 8, !tbaa !8
  %buffer106 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %buffer106, align 8, !tbaa !14
  %offn107 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %69 = load i64, ptr %offn107, align 8, !tbaa !15
  %base108 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %70 = load ptr, ptr %base108, align 8, !tbaa !8
  %cs109 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %70, i32 0, i32 5
  %71 = load i64, ptr %cs109, align 8, !tbaa !16
  %mul110 = mul i64 %69, %71
  %add.ptr111 = getelementptr inbounds %struct.scomplex, ptr %68, i64 %mul110
  %offm112 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %72 = load i64, ptr %offm112, align 8, !tbaa !17
  %base113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %73 = load ptr, ptr %base113, align 8, !tbaa !8
  %rs114 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 4
  %74 = load i64, ptr %rs114, align 8, !tbaa !18
  %mul115 = mul i64 %72, %74
  %add.ptr116 = getelementptr inbounds %struct.scomplex, ptr %add.ptr111, i64 %mul115
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false104, %cond.true100
  %cond118 = phi ptr [ %add.ptr103, %cond.true100 ], [ %add.ptr116, %cond.false104 ]
  store ptr %cond118, ptr %buff_A95, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_p119) #4
  %base120 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %75 = load ptr, ptr %base120, align 8, !tbaa !8
  %datatype121 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %datatype121, align 8, !tbaa !12
  %cmp122 = icmp eq i32 %76, 105
  br i1 %cmp122, label %cond.true124, label %cond.false128

cond.true124:                                     ; preds = %cond.end117
  %base125 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %77 = load ptr, ptr %base125, align 8, !tbaa !8
  %buffer126 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %buffer126, align 8, !tbaa !14
  %add.ptr127 = getelementptr inbounds i8, ptr %78, i64 0
  br label %cond.end141

cond.false128:                                    ; preds = %cond.end117
  %base129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %79 = load ptr, ptr %base129, align 8, !tbaa !8
  %buffer130 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 12
  %80 = load ptr, ptr %buffer130, align 8, !tbaa !14
  %offn131 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 1
  %81 = load i64, ptr %offn131, align 8, !tbaa !15
  %base132 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %82 = load ptr, ptr %base132, align 8, !tbaa !8
  %cs133 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %82, i32 0, i32 5
  %83 = load i64, ptr %cs133, align 8, !tbaa !16
  %mul134 = mul i64 %81, %83
  %add.ptr135 = getelementptr inbounds i32, ptr %80, i64 %mul134
  %offm136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 0
  %84 = load i64, ptr %offm136, align 8, !tbaa !17
  %base137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %85 = load ptr, ptr %base137, align 8, !tbaa !8
  %rs138 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %85, i32 0, i32 4
  %86 = load i64, ptr %rs138, align 8, !tbaa !18
  %mul139 = mul i64 %84, %86
  %add.ptr140 = getelementptr inbounds i32, ptr %add.ptr135, i64 %mul139
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false128, %cond.true124
  %cond142 = phi ptr [ %add.ptr127, %cond.true124 ], [ %add.ptr140, %cond.false128 ]
  store ptr %cond142, ptr %buff_p119, align 8, !tbaa !19
  %87 = load i32, ptr %m_A, align 4, !tbaa !4
  %88 = load i32, ptr %n_A, align 4, !tbaa !4
  %89 = load ptr, ptr %buff_A95, align 8, !tbaa !19
  %90 = load i32, ptr %rs_A, align 4, !tbaa !4
  %91 = load i32, ptr %cs_A, align 4, !tbaa !4
  %92 = load ptr, ptr %buff_p119, align 8, !tbaa !19
  %93 = load i32, ptr %inc_p, align 4, !tbaa !4
  %call143 = call i32 @FLA_LU_piv_opc_var4(i32 noundef %87, i32 noundef %88, ptr noundef %89, i32 noundef %90, i32 noundef %91, ptr noundef %92, i32 noundef %93)
  store i32 %call143, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_p119) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A95) #4
  br label %sw.epilog

sw.bb144:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A145) #4
  %base146 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %94 = load ptr, ptr %base146, align 8, !tbaa !8
  %datatype147 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %94, i32 0, i32 0
  %95 = load i32, ptr %datatype147, align 8, !tbaa !12
  %cmp148 = icmp eq i32 %95, 105
  br i1 %cmp148, label %cond.true150, label %cond.false154

cond.true150:                                     ; preds = %sw.bb144
  %base151 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %96 = load ptr, ptr %base151, align 8, !tbaa !8
  %buffer152 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %96, i32 0, i32 12
  %97 = load ptr, ptr %buffer152, align 8, !tbaa !14
  %add.ptr153 = getelementptr inbounds i8, ptr %97, i64 32
  br label %cond.end167

cond.false154:                                    ; preds = %sw.bb144
  %base155 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %98 = load ptr, ptr %base155, align 8, !tbaa !8
  %buffer156 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %98, i32 0, i32 12
  %99 = load ptr, ptr %buffer156, align 8, !tbaa !14
  %offn157 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %100 = load i64, ptr %offn157, align 8, !tbaa !15
  %base158 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %101 = load ptr, ptr %base158, align 8, !tbaa !8
  %cs159 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %101, i32 0, i32 5
  %102 = load i64, ptr %cs159, align 8, !tbaa !16
  %mul160 = mul i64 %100, %102
  %add.ptr161 = getelementptr inbounds %struct.dcomplex, ptr %99, i64 %mul160
  %offm162 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %103 = load i64, ptr %offm162, align 8, !tbaa !17
  %base163 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %104 = load ptr, ptr %base163, align 8, !tbaa !8
  %rs164 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %104, i32 0, i32 4
  %105 = load i64, ptr %rs164, align 8, !tbaa !18
  %mul165 = mul i64 %103, %105
  %add.ptr166 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr161, i64 %mul165
  br label %cond.end167

cond.end167:                                      ; preds = %cond.false154, %cond.true150
  %cond168 = phi ptr [ %add.ptr153, %cond.true150 ], [ %add.ptr166, %cond.false154 ]
  store ptr %cond168, ptr %buff_A145, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_p169) #4
  %base170 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %106 = load ptr, ptr %base170, align 8, !tbaa !8
  %datatype171 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %106, i32 0, i32 0
  %107 = load i32, ptr %datatype171, align 8, !tbaa !12
  %cmp172 = icmp eq i32 %107, 105
  br i1 %cmp172, label %cond.true174, label %cond.false178

cond.true174:                                     ; preds = %cond.end167
  %base175 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %108 = load ptr, ptr %base175, align 8, !tbaa !8
  %buffer176 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %108, i32 0, i32 12
  %109 = load ptr, ptr %buffer176, align 8, !tbaa !14
  %add.ptr177 = getelementptr inbounds i8, ptr %109, i64 0
  br label %cond.end191

cond.false178:                                    ; preds = %cond.end167
  %base179 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %110 = load ptr, ptr %base179, align 8, !tbaa !8
  %buffer180 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %110, i32 0, i32 12
  %111 = load ptr, ptr %buffer180, align 8, !tbaa !14
  %offn181 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 1
  %112 = load i64, ptr %offn181, align 8, !tbaa !15
  %base182 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %113 = load ptr, ptr %base182, align 8, !tbaa !8
  %cs183 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %113, i32 0, i32 5
  %114 = load i64, ptr %cs183, align 8, !tbaa !16
  %mul184 = mul i64 %112, %114
  %add.ptr185 = getelementptr inbounds i32, ptr %111, i64 %mul184
  %offm186 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 0
  %115 = load i64, ptr %offm186, align 8, !tbaa !17
  %base187 = getelementptr inbounds %struct.FLA_Obj_view, ptr %p, i32 0, i32 6
  %116 = load ptr, ptr %base187, align 8, !tbaa !8
  %rs188 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %116, i32 0, i32 4
  %117 = load i64, ptr %rs188, align 8, !tbaa !18
  %mul189 = mul i64 %115, %117
  %add.ptr190 = getelementptr inbounds i32, ptr %add.ptr185, i64 %mul189
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false178, %cond.true174
  %cond192 = phi ptr [ %add.ptr177, %cond.true174 ], [ %add.ptr190, %cond.false178 ]
  store ptr %cond192, ptr %buff_p169, align 8, !tbaa !19
  %118 = load i32, ptr %m_A, align 4, !tbaa !4
  %119 = load i32, ptr %n_A, align 4, !tbaa !4
  %120 = load ptr, ptr %buff_A145, align 8, !tbaa !19
  %121 = load i32, ptr %rs_A, align 4, !tbaa !4
  %122 = load i32, ptr %cs_A, align 4, !tbaa !4
  %123 = load ptr, ptr %buff_p169, align 8, !tbaa !19
  %124 = load i32, ptr %inc_p, align 4, !tbaa !4
  %call193 = call i32 @FLA_LU_piv_opz_var4(i32 noundef %118, i32 noundef %119, ptr noundef %120, i32 noundef %121, i32 noundef %122, ptr noundef %123, i32 noundef %124)
  store i32 %call193, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_p169) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A145) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end191, %cond.end141, %cond.end91, %cond.end41
  %125 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #4
  ret i32 %125
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_LU_piv_ops_var4(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_p, i32 noundef %inc_p) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_p.addr = alloca ptr, align 8
  %inc_p.addr = alloca i32, align 4
  %r_val = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %is_null_pivot = alloca i32, align 4
  %pivot_val = alloca float, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %pi1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_p, ptr %buff_p.addr, align 8, !tbaa !19
  store i32 %inc_p, ptr %inc_p.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #4
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 8
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds float, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds float, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  %24 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %24, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %25 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %25, ptr %_y, align 4, !tbaa !4
  %26 = load i32, ptr %_x, align 4, !tbaa !4
  %27 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end18
  %28 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end18
  %29 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i32 [ %28, %cond.true21 ], [ %29, %cond.false22 ]
  store i32 %cond24, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %30 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %30, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_null_pivot) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end23
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot_val) #4
  %33 = load float, ptr @fzero, align 4, !tbaa !20
  store float %33, ptr %pivot_val, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %34 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %35 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 0, %35
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr27 = getelementptr inbounds float, ptr %34, i64 %idx.ext
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %37 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul28 = mul nsw i32 %36, %37
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds float, ptr %add.ptr27, i64 %idx.ext29
  store ptr %add.ptr30, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #4
  %38 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %39 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 0, %39
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds float, ptr %38, i64 %idx.ext32
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %40, 1
  %41 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul34 = mul nsw i32 %add, %41
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds float, ptr %add.ptr33, i64 %idx.ext35
  store ptr %add.ptr36, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %42 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %43 = load i32, ptr %i, align 4, !tbaa !4
  %44 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul37 = mul nsw i32 %43, %44
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds float, ptr %42, i64 %idx.ext38
  %45 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul40 = mul nsw i32 0, %45
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds float, ptr %add.ptr39, i64 %idx.ext41
  store ptr %add.ptr42, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %46 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %47 = load i32, ptr %i, align 4, !tbaa !4
  %48 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %47, %48
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds float, ptr %46, i64 %idx.ext44
  %49 = load i32, ptr %i, align 4, !tbaa !4
  %50 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul46 = mul nsw i32 %49, %50
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds float, ptr %add.ptr45, i64 %idx.ext47
  store ptr %add.ptr48, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #4
  %51 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %53 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul49 = mul nsw i32 %52, %53
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds float, ptr %51, i64 %idx.ext50
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %add52 = add nsw i32 %54, 1
  %55 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %add52, %55
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds float, ptr %add.ptr51, i64 %idx.ext54
  store ptr %add.ptr55, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %56 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %57 = load i32, ptr %i, align 4, !tbaa !4
  %add56 = add nsw i32 %57, 1
  %58 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %add56, %58
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds float, ptr %56, i64 %idx.ext58
  %59 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 0, %59
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds float, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %60 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %61, 1
  %62 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %62
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds float, ptr %60, i64 %idx.ext65
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %64 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %63, %64
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds float, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi1) #4
  %65 = load ptr, ptr %buff_p.addr, align 8, !tbaa !19
  %66 = load i32, ptr %i, align 4, !tbaa !4
  %67 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %66, %67
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i32, ptr %65, i64 %idx.ext71
  store ptr %add.ptr72, ptr %pi1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %68 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %68, %69
  %sub73 = sub nsw i32 %sub, 1
  store i32 %sub73, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #4
  %70 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %sub74 = sub nsw i32 %70, %71
  %sub75 = sub nsw i32 %sub74, 1
  store i32 %sub75, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #4
  %72 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %72, ptr %mn_behind, align 4, !tbaa !4
  %73 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %74 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %75 = load ptr, ptr %a10t, align 8, !tbaa !19
  %76 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %77 = load ptr, ptr %a01, align 8, !tbaa !19
  %78 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %79 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %80 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_sdots(i32 noundef 500, i32 noundef %73, ptr noundef %74, ptr noundef %75, i32 noundef %76, ptr noundef %77, i32 noundef %78, ptr noundef %79, ptr noundef %80)
  %81 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %82 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %83 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %84 = load ptr, ptr %A20, align 8, !tbaa !19
  %85 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %86 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %87 = load ptr, ptr %a01, align 8, !tbaa !19
  %88 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %89 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %90 = load ptr, ptr %a21, align 8, !tbaa !19
  %91 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_sgemv(i32 noundef 100, i32 noundef 500, i32 noundef %81, i32 noundef %82, ptr noundef %83, ptr noundef %84, i32 noundef %85, i32 noundef %86, ptr noundef %87, i32 noundef %88, ptr noundef %89, ptr noundef %90, i32 noundef %91)
  %92 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %add76 = add nsw i32 %92, 1
  %93 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %94 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %95 = load ptr, ptr %pi1, align 8, !tbaa !19
  call void @bl1_samax(i32 noundef %add76, ptr noundef %93, i32 noundef %94, ptr noundef %95)
  %96 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %97 = load ptr, ptr %pi1, align 8, !tbaa !19
  %98 = load i32, ptr %97, align 4, !tbaa !4
  %idx.ext77 = sext i32 %98 to i64
  %add.ptr78 = getelementptr inbounds float, ptr %96, i64 %idx.ext77
  %99 = load float, ptr %add.ptr78, align 4, !tbaa !20
  store float %99, ptr %pivot_val, align 4, !tbaa !20
  %100 = load float, ptr %pivot_val, align 4, !tbaa !20
  %101 = load float, ptr @fzero, align 4, !tbaa !20
  %cmp79 = fcmp oeq float %100, %101
  %conv = zext i1 %cmp79 to i32
  store i32 %conv, ptr %is_null_pivot, align 4, !tbaa !4
  %102 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool = icmp ne i32 %102, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %103 = load i32, ptr %r_val, align 4, !tbaa !4
  %cmp80 = icmp eq i32 %103, -1
  br i1 %cmp80, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %if.then
  %104 = load i32, ptr %i, align 4, !tbaa !4
  br label %cond.end84

cond.false83:                                     ; preds = %if.then
  %105 = load i32, ptr %r_val, align 4, !tbaa !4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %cond.true82
  %cond85 = phi i32 [ %104, %cond.true82 ], [ %105, %cond.false83 ]
  store i32 %cond85, ptr %r_val, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %for.body
  %106 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %107 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %108 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %109 = load ptr, ptr %pi1, align 8, !tbaa !19
  %110 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call = call i32 @FLA_Apply_pivots_ln_ops_var1(i32 noundef 1, ptr noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef 0, i32 noundef 0, ptr noundef %109, i32 noundef %110)
  %111 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %112 = load ptr, ptr %a10t, align 8, !tbaa !19
  %113 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %114 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %115 = load ptr, ptr %pi1, align 8, !tbaa !19
  %116 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call86 = call i32 @FLA_Apply_pivots_ln_ops_var1(i32 noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef 0, i32 noundef 0, ptr noundef %115, i32 noundef %116)
  %117 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %118 = load ptr, ptr %a12t, align 8, !tbaa !19
  %119 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %120 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %121 = load ptr, ptr %pi1, align 8, !tbaa !19
  %122 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call87 = call i32 @FLA_Apply_pivots_ln_ops_var1(i32 noundef %117, ptr noundef %118, i32 noundef %119, i32 noundef %120, i32 noundef 0, i32 noundef 0, ptr noundef %121, i32 noundef %122)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end84
  %123 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %124 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %125 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %126 = load ptr, ptr %A02, align 8, !tbaa !19
  %127 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %128 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %129 = load ptr, ptr %a10t, align 8, !tbaa !19
  %130 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %131 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %132 = load ptr, ptr %a12t, align 8, !tbaa !19
  %133 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_sgemv(i32 noundef 101, i32 noundef 500, i32 noundef %123, i32 noundef %124, ptr noundef %125, ptr noundef %126, i32 noundef %127, i32 noundef %128, ptr noundef %129, i32 noundef %130, ptr noundef %131, ptr noundef %132, i32 noundef %133)
  %134 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool88 = icmp ne i32 %134, 0
  br i1 %tobool88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end
  %135 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %136 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %137 = load ptr, ptr %a21, align 8, !tbaa !19
  %138 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_sinvscalv(i32 noundef 500, i32 noundef %135, ptr noundef %136, ptr noundef %137, i32 noundef %138)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot_val) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end90
  %139 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %139, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  %140 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_null_pivot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #4
  ret i32 %140
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_LU_piv_opd_var4(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_p, i32 noundef %inc_p) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_p.addr = alloca ptr, align 8
  %inc_p.addr = alloca i32, align 4
  %r_val = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %is_null_pivot = alloca i32, align 4
  %pivot_val = alloca double, align 8
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %pi1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_p, ptr %buff_p.addr, align 8, !tbaa !19
  store i32 %inc_p, ptr %inc_p.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #4
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 16
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds double, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds double, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  %24 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %24, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %25 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %25, ptr %_y, align 4, !tbaa !4
  %26 = load i32, ptr %_x, align 4, !tbaa !4
  %27 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end18
  %28 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end18
  %29 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i32 [ %28, %cond.true21 ], [ %29, %cond.false22 ]
  store i32 %cond24, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %30 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %30, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_null_pivot) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end23
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot_val) #4
  %33 = load double, ptr @dzero, align 8, !tbaa !24
  store double %33, ptr %pivot_val, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %34 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %35 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 0, %35
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr27 = getelementptr inbounds double, ptr %34, i64 %idx.ext
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %37 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul28 = mul nsw i32 %36, %37
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds double, ptr %add.ptr27, i64 %idx.ext29
  store ptr %add.ptr30, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #4
  %38 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %39 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 0, %39
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds double, ptr %38, i64 %idx.ext32
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %40, 1
  %41 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul34 = mul nsw i32 %add, %41
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds double, ptr %add.ptr33, i64 %idx.ext35
  store ptr %add.ptr36, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %42 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %43 = load i32, ptr %i, align 4, !tbaa !4
  %44 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul37 = mul nsw i32 %43, %44
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds double, ptr %42, i64 %idx.ext38
  %45 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul40 = mul nsw i32 0, %45
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds double, ptr %add.ptr39, i64 %idx.ext41
  store ptr %add.ptr42, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %46 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %47 = load i32, ptr %i, align 4, !tbaa !4
  %48 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %47, %48
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds double, ptr %46, i64 %idx.ext44
  %49 = load i32, ptr %i, align 4, !tbaa !4
  %50 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul46 = mul nsw i32 %49, %50
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds double, ptr %add.ptr45, i64 %idx.ext47
  store ptr %add.ptr48, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #4
  %51 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %52 = load i32, ptr %i, align 4, !tbaa !4
  %53 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul49 = mul nsw i32 %52, %53
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds double, ptr %51, i64 %idx.ext50
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %add52 = add nsw i32 %54, 1
  %55 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %add52, %55
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds double, ptr %add.ptr51, i64 %idx.ext54
  store ptr %add.ptr55, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %56 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %57 = load i32, ptr %i, align 4, !tbaa !4
  %add56 = add nsw i32 %57, 1
  %58 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %add56, %58
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds double, ptr %56, i64 %idx.ext58
  %59 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 0, %59
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds double, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %60 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %61 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %61, 1
  %62 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %62
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds double, ptr %60, i64 %idx.ext65
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %64 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %63, %64
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds double, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi1) #4
  %65 = load ptr, ptr %buff_p.addr, align 8, !tbaa !19
  %66 = load i32, ptr %i, align 4, !tbaa !4
  %67 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %66, %67
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i32, ptr %65, i64 %idx.ext71
  store ptr %add.ptr72, ptr %pi1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %68 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %68, %69
  %sub73 = sub nsw i32 %sub, 1
  store i32 %sub73, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #4
  %70 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %71 = load i32, ptr %i, align 4, !tbaa !4
  %sub74 = sub nsw i32 %70, %71
  %sub75 = sub nsw i32 %sub74, 1
  store i32 %sub75, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #4
  %72 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %72, ptr %mn_behind, align 4, !tbaa !4
  %73 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %74 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %75 = load ptr, ptr %a10t, align 8, !tbaa !19
  %76 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %77 = load ptr, ptr %a01, align 8, !tbaa !19
  %78 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %79 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %80 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_ddots(i32 noundef 500, i32 noundef %73, ptr noundef %74, ptr noundef %75, i32 noundef %76, ptr noundef %77, i32 noundef %78, ptr noundef %79, ptr noundef %80)
  %81 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %82 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %83 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %84 = load ptr, ptr %A20, align 8, !tbaa !19
  %85 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %86 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %87 = load ptr, ptr %a01, align 8, !tbaa !19
  %88 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %89 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %90 = load ptr, ptr %a21, align 8, !tbaa !19
  %91 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_dgemv(i32 noundef 100, i32 noundef 500, i32 noundef %81, i32 noundef %82, ptr noundef %83, ptr noundef %84, i32 noundef %85, i32 noundef %86, ptr noundef %87, i32 noundef %88, ptr noundef %89, ptr noundef %90, i32 noundef %91)
  %92 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %add76 = add nsw i32 %92, 1
  %93 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %94 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %95 = load ptr, ptr %pi1, align 8, !tbaa !19
  call void @bl1_damax(i32 noundef %add76, ptr noundef %93, i32 noundef %94, ptr noundef %95)
  %96 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %97 = load ptr, ptr %pi1, align 8, !tbaa !19
  %98 = load i32, ptr %97, align 4, !tbaa !4
  %idx.ext77 = sext i32 %98 to i64
  %add.ptr78 = getelementptr inbounds double, ptr %96, i64 %idx.ext77
  %99 = load double, ptr %add.ptr78, align 8, !tbaa !24
  store double %99, ptr %pivot_val, align 8, !tbaa !24
  %100 = load double, ptr %pivot_val, align 8, !tbaa !24
  %101 = load double, ptr @dzero, align 8, !tbaa !24
  %cmp79 = fcmp oeq double %100, %101
  %conv = zext i1 %cmp79 to i32
  store i32 %conv, ptr %is_null_pivot, align 4, !tbaa !4
  %102 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool = icmp ne i32 %102, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %103 = load i32, ptr %r_val, align 4, !tbaa !4
  %cmp80 = icmp eq i32 %103, -1
  br i1 %cmp80, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %if.then
  %104 = load i32, ptr %i, align 4, !tbaa !4
  br label %cond.end84

cond.false83:                                     ; preds = %if.then
  %105 = load i32, ptr %r_val, align 4, !tbaa !4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %cond.true82
  %cond85 = phi i32 [ %104, %cond.true82 ], [ %105, %cond.false83 ]
  store i32 %cond85, ptr %r_val, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %for.body
  %106 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %107 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %108 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %109 = load ptr, ptr %pi1, align 8, !tbaa !19
  %110 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call = call i32 @FLA_Apply_pivots_ln_opd_var1(i32 noundef 1, ptr noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef 0, i32 noundef 0, ptr noundef %109, i32 noundef %110)
  %111 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %112 = load ptr, ptr %a10t, align 8, !tbaa !19
  %113 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %114 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %115 = load ptr, ptr %pi1, align 8, !tbaa !19
  %116 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call86 = call i32 @FLA_Apply_pivots_ln_opd_var1(i32 noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef 0, i32 noundef 0, ptr noundef %115, i32 noundef %116)
  %117 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %118 = load ptr, ptr %a12t, align 8, !tbaa !19
  %119 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %120 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %121 = load ptr, ptr %pi1, align 8, !tbaa !19
  %122 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call87 = call i32 @FLA_Apply_pivots_ln_opd_var1(i32 noundef %117, ptr noundef %118, i32 noundef %119, i32 noundef %120, i32 noundef 0, i32 noundef 0, ptr noundef %121, i32 noundef %122)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end84
  %123 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %124 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %125 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %126 = load ptr, ptr %A02, align 8, !tbaa !19
  %127 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %128 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %129 = load ptr, ptr %a10t, align 8, !tbaa !19
  %130 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %131 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %132 = load ptr, ptr %a12t, align 8, !tbaa !19
  %133 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_dgemv(i32 noundef 101, i32 noundef 500, i32 noundef %123, i32 noundef %124, ptr noundef %125, ptr noundef %126, i32 noundef %127, i32 noundef %128, ptr noundef %129, i32 noundef %130, ptr noundef %131, ptr noundef %132, i32 noundef %133)
  %134 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool88 = icmp ne i32 %134, 0
  br i1 %tobool88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end
  %135 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %136 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %137 = load ptr, ptr %a21, align 8, !tbaa !19
  %138 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_dinvscalv(i32 noundef 500, i32 noundef %135, ptr noundef %136, ptr noundef %137, i32 noundef %138)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot_val) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end90
  %139 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %139, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %140 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_null_pivot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #4
  ret i32 %140
}

; Function Attrs: nounwind uwtable
define i32 @FLA_LU_piv_opc_var4(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_p, i32 noundef %inc_p) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_p.addr = alloca ptr, align 8
  %inc_p.addr = alloca i32, align 4
  %r_val = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %is_null_pivot = alloca i32, align 4
  %pivot_val = alloca %struct.scomplex, align 4
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %pi1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_p, ptr %buff_p.addr, align 8, !tbaa !19
  store i32 %inc_p, ptr %inc_p.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #4
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 24
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  %24 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %24, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %25 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %25, ptr %_y, align 4, !tbaa !4
  %26 = load i32, ptr %_x, align 4, !tbaa !4
  %27 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end18
  %28 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end18
  %29 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i32 [ %28, %cond.true21 ], [ %29, %cond.false22 ]
  store i32 %cond24, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %30 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %30, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_null_pivot) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end23
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot_val) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pivot_val, ptr align 4 @czero, i64 8, i1 false), !tbaa.struct !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %33 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %34 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 0, %34
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr27 = getelementptr inbounds %struct.scomplex, ptr %33, i64 %idx.ext
  %35 = load i32, ptr %i, align 4, !tbaa !4
  %36 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul28 = mul nsw i32 %35, %36
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds %struct.scomplex, ptr %add.ptr27, i64 %idx.ext29
  store ptr %add.ptr30, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #4
  %37 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %38 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 0, %38
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds %struct.scomplex, ptr %37, i64 %idx.ext32
  %39 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %39, 1
  %40 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul34 = mul nsw i32 %add, %40
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds %struct.scomplex, ptr %add.ptr33, i64 %idx.ext35
  store ptr %add.ptr36, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %41 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul37 = mul nsw i32 %42, %43
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds %struct.scomplex, ptr %41, i64 %idx.ext38
  %44 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul40 = mul nsw i32 0, %44
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds %struct.scomplex, ptr %add.ptr39, i64 %idx.ext41
  store ptr %add.ptr42, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %45 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %46 = load i32, ptr %i, align 4, !tbaa !4
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %46, %47
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds %struct.scomplex, ptr %45, i64 %idx.ext44
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul46 = mul nsw i32 %48, %49
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds %struct.scomplex, ptr %add.ptr45, i64 %idx.ext47
  store ptr %add.ptr48, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #4
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %i, align 4, !tbaa !4
  %52 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul49 = mul nsw i32 %51, %52
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds %struct.scomplex, ptr %50, i64 %idx.ext50
  %53 = load i32, ptr %i, align 4, !tbaa !4
  %add52 = add nsw i32 %53, 1
  %54 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %add52, %54
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds %struct.scomplex, ptr %add.ptr51, i64 %idx.ext54
  store ptr %add.ptr55, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %55 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %56 = load i32, ptr %i, align 4, !tbaa !4
  %add56 = add nsw i32 %56, 1
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %add56, %57
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds %struct.scomplex, ptr %55, i64 %idx.ext58
  %58 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 0, %58
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds %struct.scomplex, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %59 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %60, 1
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %61
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.scomplex, ptr %59, i64 %idx.ext65
  %62 = load i32, ptr %i, align 4, !tbaa !4
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %62, %63
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.scomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi1) #4
  %64 = load ptr, ptr %buff_p.addr, align 8, !tbaa !19
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %66 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %65, %66
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i32, ptr %64, i64 %idx.ext71
  store ptr %add.ptr72, ptr %pi1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %67 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %68 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %67, %68
  %sub73 = sub nsw i32 %sub, 1
  store i32 %sub73, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #4
  %69 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %70 = load i32, ptr %i, align 4, !tbaa !4
  %sub74 = sub nsw i32 %69, %70
  %sub75 = sub nsw i32 %sub74, 1
  store i32 %sub75, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #4
  %71 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %71, ptr %mn_behind, align 4, !tbaa !4
  %72 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %73 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %74 = load ptr, ptr %a10t, align 8, !tbaa !19
  %75 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %76 = load ptr, ptr %a01, align 8, !tbaa !19
  %77 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %78 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %79 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_cdots(i32 noundef 500, i32 noundef %72, ptr noundef %73, ptr noundef %74, i32 noundef %75, ptr noundef %76, i32 noundef %77, ptr noundef %78, ptr noundef %79)
  %80 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %81 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %82 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %83 = load ptr, ptr %A20, align 8, !tbaa !19
  %84 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %85 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %86 = load ptr, ptr %a01, align 8, !tbaa !19
  %87 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %88 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %89 = load ptr, ptr %a21, align 8, !tbaa !19
  %90 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_cgemv(i32 noundef 100, i32 noundef 500, i32 noundef %80, i32 noundef %81, ptr noundef %82, ptr noundef %83, i32 noundef %84, i32 noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90)
  %91 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %add76 = add nsw i32 %91, 1
  %92 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %93 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %94 = load ptr, ptr %pi1, align 8, !tbaa !19
  call void @bl1_camax(i32 noundef %add76, ptr noundef %92, i32 noundef %93, ptr noundef %94)
  %95 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %96 = load ptr, ptr %pi1, align 8, !tbaa !19
  %97 = load i32, ptr %96, align 4, !tbaa !4
  %idx.ext77 = sext i32 %97 to i64
  %add.ptr78 = getelementptr inbounds %struct.scomplex, ptr %95, i64 %idx.ext77
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pivot_val, ptr align 4 %add.ptr78, i64 8, i1 false), !tbaa.struct !27
  %real = getelementptr inbounds %struct.scomplex, ptr %pivot_val, i32 0, i32 0
  %98 = load float, ptr %real, align 4, !tbaa !28
  %99 = load float, ptr @czero, align 4, !tbaa !28
  %cmp79 = fcmp oeq float %98, %99
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %imag = getelementptr inbounds %struct.scomplex, ptr %pivot_val, i32 0, i32 1
  %100 = load float, ptr %imag, align 4, !tbaa !30
  %101 = load float, ptr getelementptr inbounds (%struct.scomplex, ptr @czero, i32 0, i32 1), align 4, !tbaa !30
  %cmp80 = fcmp oeq float %100, %101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %102 = phi i1 [ false, %for.body ], [ %cmp80, %land.rhs ]
  %land.ext = zext i1 %102 to i32
  store i32 %land.ext, ptr %is_null_pivot, align 4, !tbaa !4
  %103 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool = icmp ne i32 %103, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %104 = load i32, ptr %r_val, align 4, !tbaa !4
  %cmp81 = icmp eq i32 %104, -1
  br i1 %cmp81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %if.then
  %105 = load i32, ptr %i, align 4, !tbaa !4
  br label %cond.end84

cond.false83:                                     ; preds = %if.then
  %106 = load i32, ptr %r_val, align 4, !tbaa !4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %cond.true82
  %cond85 = phi i32 [ %105, %cond.true82 ], [ %106, %cond.false83 ]
  store i32 %cond85, ptr %r_val, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %land.end
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %108 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %109 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %110 = load ptr, ptr %pi1, align 8, !tbaa !19
  %111 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call = call i32 @FLA_Apply_pivots_ln_opc_var1(i32 noundef 1, ptr noundef %107, i32 noundef %108, i32 noundef %109, i32 noundef 0, i32 noundef 0, ptr noundef %110, i32 noundef %111)
  %112 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %113 = load ptr, ptr %a10t, align 8, !tbaa !19
  %114 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %115 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %116 = load ptr, ptr %pi1, align 8, !tbaa !19
  %117 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call86 = call i32 @FLA_Apply_pivots_ln_opc_var1(i32 noundef %112, ptr noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef 0, i32 noundef 0, ptr noundef %116, i32 noundef %117)
  %118 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %119 = load ptr, ptr %a12t, align 8, !tbaa !19
  %120 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %121 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %122 = load ptr, ptr %pi1, align 8, !tbaa !19
  %123 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call87 = call i32 @FLA_Apply_pivots_ln_opc_var1(i32 noundef %118, ptr noundef %119, i32 noundef %120, i32 noundef %121, i32 noundef 0, i32 noundef 0, ptr noundef %122, i32 noundef %123)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end84
  %124 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %125 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %126 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %127 = load ptr, ptr %A02, align 8, !tbaa !19
  %128 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %129 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %130 = load ptr, ptr %a10t, align 8, !tbaa !19
  %131 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %132 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %133 = load ptr, ptr %a12t, align 8, !tbaa !19
  %134 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_cgemv(i32 noundef 101, i32 noundef 500, i32 noundef %124, i32 noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %128, i32 noundef %129, ptr noundef %130, i32 noundef %131, ptr noundef %132, ptr noundef %133, i32 noundef %134)
  %135 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool88 = icmp ne i32 %135, 0
  br i1 %tobool88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end
  %136 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %137 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %138 = load ptr, ptr %a21, align 8, !tbaa !19
  %139 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_cinvscalv(i32 noundef 500, i32 noundef %136, ptr noundef %137, ptr noundef %138, i32 noundef %139)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot_val) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end90
  %140 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %140, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %141 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_null_pivot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #4
  ret i32 %141
}

; Function Attrs: nounwind uwtable
define i32 @FLA_LU_piv_opz_var4(i32 noundef %m_A, i32 noundef %n_A, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_p, i32 noundef %inc_p) #0 {
entry:
  %m_A.addr = alloca i32, align 4
  %n_A.addr = alloca i32, align 4
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_p.addr = alloca ptr, align 8
  %inc_p.addr = alloca i32, align 4
  %r_val = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %min_m_n = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %is_null_pivot = alloca i32, align 4
  %pivot_val = alloca %struct.dcomplex, align 8
  %a10t = alloca ptr, align 8
  %A20 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %a21 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %pi1 = alloca ptr, align 8
  %m_ahead = alloca i32, align 4
  %n_ahead = alloca i32, align 4
  %mn_behind = alloca i32, align 4
  store i32 %m_A, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %n_A, ptr %n_A.addr, align 4, !tbaa !4
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_p, ptr %buff_p.addr, align 8, !tbaa !19
  store i32 %inc_p, ptr %inc_p.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #4
  store i32 -1, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_1) #4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_m1) #4
  %12 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %datatype5 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %datatype5, align 8, !tbaa !12
  %cmp6 = icmp eq i32 %13, 105
  br i1 %cmp6, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %14 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer8 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %buffer8, align 8, !tbaa !14
  %add.ptr9 = getelementptr inbounds i8, ptr %15, i64 32
  br label %cond.end18

cond.false10:                                     ; preds = %cond.end
  %16 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %buffer11 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %buffer11, align 8, !tbaa !14
  %18 = load i64, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 1), align 8, !tbaa !15
  %19 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %cs12 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %cs12, align 8, !tbaa !16
  %mul13 = mul i64 %18, %20
  %add.ptr14 = getelementptr inbounds %struct.dcomplex, ptr %17, i64 %mul13
  %21 = load i64, ptr @FLA_MINUS_ONE, align 8, !tbaa !17
  %22 = load ptr, ptr getelementptr inbounds (%struct.FLA_Obj_view, ptr @FLA_MINUS_ONE, i32 0, i32 6), align 8, !tbaa !8
  %rs15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %22, i32 0, i32 4
  %23 = load i64, ptr %rs15, align 8, !tbaa !18
  %mul16 = mul i64 %21, %23
  %add.ptr17 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr14, i64 %mul16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false10, %cond.true7
  %cond19 = phi ptr [ %add.ptr9, %cond.true7 ], [ %add.ptr17, %cond.false10 ]
  store ptr %cond19, ptr %buff_m1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  %24 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  store i32 %24, ptr %_x, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %25 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  store i32 %25, ptr %_y, align 4, !tbaa !4
  %26 = load i32, ptr %_x, align 4, !tbaa !4
  %27 = load i32, ptr %_y, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end18
  %28 = load i32, ptr %_x, align 4, !tbaa !4
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end18
  %29 = load i32, ptr %_y, align 4, !tbaa !4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i32 [ %28, %cond.true21 ], [ %29, %cond.false22 ]
  store i32 %cond24, ptr %tmp, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %30 = load i32, ptr %tmp, align 4, !tbaa !4
  store i32 %30, ptr %min_m_n, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_null_pivot) #4
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end23
  %31 = load i32, ptr %i, align 4, !tbaa !4
  %32 = load i32, ptr %min_m_n, align 4, !tbaa !4
  %cmp25 = icmp slt i32 %31, %32
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %pivot_val) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pivot_val, ptr align 8 @zzero, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %a10t) #4
  %33 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %34 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 0, %34
  %idx.ext = sext i32 %mul26 to i64
  %add.ptr27 = getelementptr inbounds %struct.dcomplex, ptr %33, i64 %idx.ext
  %35 = load i32, ptr %i, align 4, !tbaa !4
  %36 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul28 = mul nsw i32 %35, %36
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr27, i64 %idx.ext29
  store ptr %add.ptr30, ptr %a10t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A20) #4
  %37 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %38 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul31 = mul nsw i32 0, %38
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds %struct.dcomplex, ptr %37, i64 %idx.ext32
  %39 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %39, 1
  %40 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul34 = mul nsw i32 %add, %40
  %idx.ext35 = sext i32 %mul34 to i64
  %add.ptr36 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr33, i64 %idx.ext35
  store ptr %add.ptr36, ptr %A20, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %41 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul37 = mul nsw i32 %42, %43
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds %struct.dcomplex, ptr %41, i64 %idx.ext38
  %44 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul40 = mul nsw i32 0, %44
  %idx.ext41 = sext i32 %mul40 to i64
  %add.ptr42 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr39, i64 %idx.ext41
  store ptr %add.ptr42, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %45 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %46 = load i32, ptr %i, align 4, !tbaa !4
  %47 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul43 = mul nsw i32 %46, %47
  %idx.ext44 = sext i32 %mul43 to i64
  %add.ptr45 = getelementptr inbounds %struct.dcomplex, ptr %45, i64 %idx.ext44
  %48 = load i32, ptr %i, align 4, !tbaa !4
  %49 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul46 = mul nsw i32 %48, %49
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr45, i64 %idx.ext47
  store ptr %add.ptr48, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a21) #4
  %50 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %51 = load i32, ptr %i, align 4, !tbaa !4
  %52 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul49 = mul nsw i32 %51, %52
  %idx.ext50 = sext i32 %mul49 to i64
  %add.ptr51 = getelementptr inbounds %struct.dcomplex, ptr %50, i64 %idx.ext50
  %53 = load i32, ptr %i, align 4, !tbaa !4
  %add52 = add nsw i32 %53, 1
  %54 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul53 = mul nsw i32 %add52, %54
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr51, i64 %idx.ext54
  store ptr %add.ptr55, ptr %a21, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %55 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %56 = load i32, ptr %i, align 4, !tbaa !4
  %add56 = add nsw i32 %56, 1
  %57 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %add56, %57
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds %struct.dcomplex, ptr %55, i64 %idx.ext58
  %58 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 0, %58
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %59 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %60, 1
  %61 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %61
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.dcomplex, ptr %59, i64 %idx.ext65
  %62 = load i32, ptr %i, align 4, !tbaa !4
  %63 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 %62, %63
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %pi1) #4
  %64 = load ptr, ptr %buff_p.addr, align 8, !tbaa !19
  %65 = load i32, ptr %i, align 4, !tbaa !4
  %66 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %mul70 = mul nsw i32 %65, %66
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i32, ptr %64, i64 %idx.ext71
  store ptr %add.ptr72, ptr %pi1, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %67 = load i32, ptr %m_A.addr, align 4, !tbaa !4
  %68 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %67, %68
  %sub73 = sub nsw i32 %sub, 1
  store i32 %sub73, ptr %m_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_ahead) #4
  %69 = load i32, ptr %n_A.addr, align 4, !tbaa !4
  %70 = load i32, ptr %i, align 4, !tbaa !4
  %sub74 = sub nsw i32 %69, %70
  %sub75 = sub nsw i32 %sub74, 1
  store i32 %sub75, ptr %n_ahead, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn_behind) #4
  %71 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %71, ptr %mn_behind, align 4, !tbaa !4
  %72 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %73 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %74 = load ptr, ptr %a10t, align 8, !tbaa !19
  %75 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %76 = load ptr, ptr %a01, align 8, !tbaa !19
  %77 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %78 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %79 = load ptr, ptr %alpha11, align 8, !tbaa !19
  call void @bl1_zdots(i32 noundef 500, i32 noundef %72, ptr noundef %73, ptr noundef %74, i32 noundef %75, ptr noundef %76, i32 noundef %77, ptr noundef %78, ptr noundef %79)
  %80 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %81 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %82 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %83 = load ptr, ptr %A20, align 8, !tbaa !19
  %84 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %85 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %86 = load ptr, ptr %a01, align 8, !tbaa !19
  %87 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %88 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %89 = load ptr, ptr %a21, align 8, !tbaa !19
  %90 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_zgemv(i32 noundef 100, i32 noundef 500, i32 noundef %80, i32 noundef %81, ptr noundef %82, ptr noundef %83, i32 noundef %84, i32 noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef %88, ptr noundef %89, i32 noundef %90)
  %91 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %add76 = add nsw i32 %91, 1
  %92 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %93 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %94 = load ptr, ptr %pi1, align 8, !tbaa !19
  call void @bl1_zamax(i32 noundef %add76, ptr noundef %92, i32 noundef %93, ptr noundef %94)
  %95 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %96 = load ptr, ptr %pi1, align 8, !tbaa !19
  %97 = load i32, ptr %96, align 4, !tbaa !4
  %idx.ext77 = sext i32 %97 to i64
  %add.ptr78 = getelementptr inbounds %struct.dcomplex, ptr %95, i64 %idx.ext77
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pivot_val, ptr align 8 %add.ptr78, i64 16, i1 false), !tbaa.struct !32
  %real = getelementptr inbounds %struct.dcomplex, ptr %pivot_val, i32 0, i32 0
  %98 = load double, ptr %real, align 8, !tbaa !33
  %99 = load double, ptr @zzero, align 8, !tbaa !33
  %cmp79 = fcmp oeq double %98, %99
  br i1 %cmp79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  %imag = getelementptr inbounds %struct.dcomplex, ptr %pivot_val, i32 0, i32 1
  %100 = load double, ptr %imag, align 8, !tbaa !35
  %101 = load double, ptr getelementptr inbounds (%struct.dcomplex, ptr @zzero, i32 0, i32 1), align 8, !tbaa !35
  %cmp80 = fcmp oeq double %100, %101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %102 = phi i1 [ false, %for.body ], [ %cmp80, %land.rhs ]
  %land.ext = zext i1 %102 to i32
  store i32 %land.ext, ptr %is_null_pivot, align 4, !tbaa !4
  %103 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool = icmp ne i32 %103, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %104 = load i32, ptr %r_val, align 4, !tbaa !4
  %cmp81 = icmp eq i32 %104, -1
  br i1 %cmp81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %if.then
  %105 = load i32, ptr %i, align 4, !tbaa !4
  br label %cond.end84

cond.false83:                                     ; preds = %if.then
  %106 = load i32, ptr %r_val, align 4, !tbaa !4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %cond.true82
  %cond85 = phi i32 [ %105, %cond.true82 ], [ %106, %cond.false83 ]
  store i32 %cond85, ptr %r_val, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %land.end
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %108 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %109 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %110 = load ptr, ptr %pi1, align 8, !tbaa !19
  %111 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call = call i32 @FLA_Apply_pivots_ln_opz_var1(i32 noundef 1, ptr noundef %107, i32 noundef %108, i32 noundef %109, i32 noundef 0, i32 noundef 0, ptr noundef %110, i32 noundef %111)
  %112 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %113 = load ptr, ptr %a10t, align 8, !tbaa !19
  %114 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %115 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %116 = load ptr, ptr %pi1, align 8, !tbaa !19
  %117 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call86 = call i32 @FLA_Apply_pivots_ln_opz_var1(i32 noundef %112, ptr noundef %113, i32 noundef %114, i32 noundef %115, i32 noundef 0, i32 noundef 0, ptr noundef %116, i32 noundef %117)
  %118 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %119 = load ptr, ptr %a12t, align 8, !tbaa !19
  %120 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %121 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %122 = load ptr, ptr %pi1, align 8, !tbaa !19
  %123 = load i32, ptr %inc_p.addr, align 4, !tbaa !4
  %call87 = call i32 @FLA_Apply_pivots_ln_opz_var1(i32 noundef %118, ptr noundef %119, i32 noundef %120, i32 noundef %121, i32 noundef 0, i32 noundef 0, ptr noundef %122, i32 noundef %123)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end84
  %124 = load i32, ptr %mn_behind, align 4, !tbaa !4
  %125 = load i32, ptr %n_ahead, align 4, !tbaa !4
  %126 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %127 = load ptr, ptr %A02, align 8, !tbaa !19
  %128 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %129 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %130 = load ptr, ptr %a10t, align 8, !tbaa !19
  %131 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %132 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %133 = load ptr, ptr %a12t, align 8, !tbaa !19
  %134 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  call void @bl1_zgemv(i32 noundef 101, i32 noundef 500, i32 noundef %124, i32 noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %128, i32 noundef %129, ptr noundef %130, i32 noundef %131, ptr noundef %132, ptr noundef %133, i32 noundef %134)
  %135 = load i32, ptr %is_null_pivot, align 4, !tbaa !4
  %tobool88 = icmp ne i32 %135, 0
  br i1 %tobool88, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.end
  %136 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %137 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %138 = load ptr, ptr %a21, align 8, !tbaa !19
  %139 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  call void @bl1_zinvscalv(i32 noundef 500, i32 noundef %136, ptr noundef %137, ptr noundef %138, i32 noundef %139)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn_behind) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pi1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a21) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A20) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a10t) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %pivot_val) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end90
  %140 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %140, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %141 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_null_pivot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_m_n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #4
  ret i32 %141
}

declare void @bl1_sdots(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_sgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_samax(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_pivots_ln_ops_var1(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ddots(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_dgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_damax(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_pivots_ln_opd_var1(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @bl1_cdots(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_cgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_camax(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_pivots_ln_opc_var1(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zdots(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_zgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zamax(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @FLA_Apply_pivots_ln_opz_var1(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zinvscalv(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!27 = !{i64 0, i64 4, !20, i64 4, i64 4, !20}
!28 = !{!29, !21, i64 0}
!29 = !{!"scomplex", !21, i64 0, !21, i64 4}
!30 = !{!29, !21, i64 4}
!31 = distinct !{!31, !23}
!32 = !{i64 0, i64 8, !24, i64 8, i64 8, !24}
!33 = !{!34, !25, i64 0}
!34 = !{!"dcomplex", !25, i64 0, !25, i64 8}
!35 = !{!34, !25, i64 8}
!36 = distinct !{!36, !23}
