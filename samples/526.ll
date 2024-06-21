; ModuleID = 'samples/526.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/sol/lyap/h/flamec/FLA_Lyap_h_opt_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }
%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Lyap_h_opt_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %isgn, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_AC = alloca i32, align 4
  %rs_A = alloca i32, align 4
  %cs_A = alloca i32, align 4
  %rs_W = alloca i32, align 4
  %cs_W = alloca i32, align 4
  %rs_C = alloca i32, align 4
  %cs_C = alloca i32, align 4
  %W = alloca %struct.FLA_Obj_view, align 8
  %buff_A = alloca ptr, align 8
  %buff_W = alloca ptr, align 8
  %buff_C = alloca ptr, align 8
  %buff_sgn = alloca ptr, align 8
  %buff_A96 = alloca ptr, align 8
  %buff_W120 = alloca ptr, align 8
  %buff_C144 = alloca ptr, align 8
  %buff_sgn168 = alloca ptr, align 8
  %buff_A194 = alloca ptr, align 8
  %buff_W218 = alloca ptr, align 8
  %buff_C242 = alloca ptr, align 8
  %buff_sgn266 = alloca ptr, align 8
  %buff_A292 = alloca ptr, align 8
  %buff_W316 = alloca ptr, align 8
  %buff_C340 = alloca ptr, align 8
  %buff_sgn364 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_AC) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_W) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_W) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rs_C) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cs_C) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr %W) #4
  %call = call i32 @FLA_Obj_create_conf_to(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %W)
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call1, ptr %datatype, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %m_AC, align 4, !tbaa !4
  %call3 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, ptr %rs_A, align 4, !tbaa !4
  %call5 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, ptr %cs_A, align 4, !tbaa !4
  %call7 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %W)
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr %rs_W, align 4, !tbaa !4
  %call9 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %W)
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %cs_W, align 4, !tbaa !4
  %call11 = call i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %rs_C, align 4, !tbaa !4
  %call13 = call i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, ptr %cs_C, align 4, !tbaa !4
  %0 = load i32, ptr %datatype, align 4, !tbaa !4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb95
    i32 102, label %sw.bb193
    i32 103, label %sw.bb291
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A) #4
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8, !tbaa !8
  %datatype15 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype15, align 8, !tbaa !12
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base17 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %3 = load ptr, ptr %base17, align 8, !tbaa !8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base18 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %5 = load ptr, ptr %base18, align 8, !tbaa !8
  %buffer19 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer19, align 8, !tbaa !14
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8, !tbaa !15
  %base20 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %8 = load ptr, ptr %base20, align 8, !tbaa !8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8, !tbaa !16
  %mul = mul i64 %7, %9
  %add.ptr21 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8, !tbaa !17
  %base22 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %11 = load ptr, ptr %base22, align 8, !tbaa !8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8, !tbaa !18
  %mul23 = mul i64 %10, %12
  %add.ptr24 = getelementptr inbounds float, ptr %add.ptr21, i64 %mul23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr24, %cond.false ]
  store ptr %cond, ptr %buff_A, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_W) #4
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %13 = load ptr, ptr %base25, align 8, !tbaa !8
  %datatype26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype26, align 8, !tbaa !12
  %cmp27 = icmp eq i32 %14, 105
  br i1 %cmp27, label %cond.true29, label %cond.false33

cond.true29:                                      ; preds = %cond.end
  %base30 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %15 = load ptr, ptr %base30, align 8, !tbaa !8
  %buffer31 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer31, align 8, !tbaa !14
  %add.ptr32 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end46

cond.false33:                                     ; preds = %cond.end
  %base34 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %17 = load ptr, ptr %base34, align 8, !tbaa !8
  %buffer35 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer35, align 8, !tbaa !14
  %offn36 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 1
  %19 = load i64, ptr %offn36, align 8, !tbaa !15
  %base37 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %20 = load ptr, ptr %base37, align 8, !tbaa !8
  %cs38 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs38, align 8, !tbaa !16
  %mul39 = mul i64 %19, %21
  %add.ptr40 = getelementptr inbounds float, ptr %18, i64 %mul39
  %offm41 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 0
  %22 = load i64, ptr %offm41, align 8, !tbaa !17
  %base42 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %23 = load ptr, ptr %base42, align 8, !tbaa !8
  %rs43 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs43, align 8, !tbaa !18
  %mul44 = mul i64 %22, %24
  %add.ptr45 = getelementptr inbounds float, ptr %add.ptr40, i64 %mul44
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false33, %cond.true29
  %cond47 = phi ptr [ %add.ptr32, %cond.true29 ], [ %add.ptr45, %cond.false33 ]
  store ptr %cond47, ptr %buff_W, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_C) #4
  %base48 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %25 = load ptr, ptr %base48, align 8, !tbaa !8
  %datatype49 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype49, align 8, !tbaa !12
  %cmp50 = icmp eq i32 %26, 105
  br i1 %cmp50, label %cond.true52, label %cond.false56

cond.true52:                                      ; preds = %cond.end46
  %base53 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %27 = load ptr, ptr %base53, align 8, !tbaa !8
  %buffer54 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer54, align 8, !tbaa !14
  %add.ptr55 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end69

cond.false56:                                     ; preds = %cond.end46
  %base57 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %29 = load ptr, ptr %base57, align 8, !tbaa !8
  %buffer58 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer58, align 8, !tbaa !14
  %offn59 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 1
  %31 = load i64, ptr %offn59, align 8, !tbaa !15
  %base60 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %32 = load ptr, ptr %base60, align 8, !tbaa !8
  %cs61 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs61, align 8, !tbaa !16
  %mul62 = mul i64 %31, %33
  %add.ptr63 = getelementptr inbounds float, ptr %30, i64 %mul62
  %offm64 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 0
  %34 = load i64, ptr %offm64, align 8, !tbaa !17
  %base65 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %35 = load ptr, ptr %base65, align 8, !tbaa !8
  %rs66 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs66, align 8, !tbaa !18
  %mul67 = mul i64 %34, %36
  %add.ptr68 = getelementptr inbounds float, ptr %add.ptr63, i64 %mul67
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false56, %cond.true52
  %cond70 = phi ptr [ %add.ptr55, %cond.true52 ], [ %add.ptr68, %cond.false56 ]
  store ptr %cond70, ptr %buff_C, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_sgn) #4
  %base71 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %37 = load ptr, ptr %base71, align 8, !tbaa !8
  %datatype72 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %datatype72, align 8, !tbaa !12
  %cmp73 = icmp eq i32 %38, 105
  br i1 %cmp73, label %cond.true75, label %cond.false79

cond.true75:                                      ; preds = %cond.end69
  %base76 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %39 = load ptr, ptr %base76, align 8, !tbaa !8
  %buffer77 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %buffer77, align 8, !tbaa !14
  %add.ptr78 = getelementptr inbounds i8, ptr %40, i64 8
  br label %cond.end92

cond.false79:                                     ; preds = %cond.end69
  %base80 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %41 = load ptr, ptr %base80, align 8, !tbaa !8
  %buffer81 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %buffer81, align 8, !tbaa !14
  %offn82 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 1
  %43 = load i64, ptr %offn82, align 8, !tbaa !15
  %base83 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %44 = load ptr, ptr %base83, align 8, !tbaa !8
  %cs84 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %44, i32 0, i32 5
  %45 = load i64, ptr %cs84, align 8, !tbaa !16
  %mul85 = mul i64 %43, %45
  %add.ptr86 = getelementptr inbounds float, ptr %42, i64 %mul85
  %offm87 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 0
  %46 = load i64, ptr %offm87, align 8, !tbaa !17
  %base88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %47 = load ptr, ptr %base88, align 8, !tbaa !8
  %rs89 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %rs89, align 8, !tbaa !18
  %mul90 = mul i64 %46, %48
  %add.ptr91 = getelementptr inbounds float, ptr %add.ptr86, i64 %mul90
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false79, %cond.true75
  %cond93 = phi ptr [ %add.ptr78, %cond.true75 ], [ %add.ptr91, %cond.false79 ]
  store ptr %cond93, ptr %buff_sgn, align 8, !tbaa !19
  %49 = load i32, ptr %m_AC, align 4, !tbaa !4
  %50 = load ptr, ptr %buff_sgn, align 8, !tbaa !19
  %51 = load ptr, ptr %buff_A, align 8, !tbaa !19
  %52 = load i32, ptr %rs_A, align 4, !tbaa !4
  %53 = load i32, ptr %cs_A, align 4, !tbaa !4
  %54 = load ptr, ptr %buff_W, align 8, !tbaa !19
  %55 = load i32, ptr %rs_W, align 4, !tbaa !4
  %56 = load i32, ptr %cs_W, align 4, !tbaa !4
  %57 = load ptr, ptr %buff_C, align 8, !tbaa !19
  %58 = load i32, ptr %rs_C, align 4, !tbaa !4
  %59 = load i32, ptr %cs_C, align 4, !tbaa !4
  %call94 = call i32 @FLA_Lyap_h_ops_var2(i32 noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef %53, ptr noundef %54, i32 noundef %55, i32 noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef %59)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_sgn) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_C) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_W) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A) #4
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A96) #4
  %base97 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %60 = load ptr, ptr %base97, align 8, !tbaa !8
  %datatype98 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %60, i32 0, i32 0
  %61 = load i32, ptr %datatype98, align 8, !tbaa !12
  %cmp99 = icmp eq i32 %61, 105
  br i1 %cmp99, label %cond.true101, label %cond.false105

cond.true101:                                     ; preds = %sw.bb95
  %base102 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %62 = load ptr, ptr %base102, align 8, !tbaa !8
  %buffer103 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %62, i32 0, i32 12
  %63 = load ptr, ptr %buffer103, align 8, !tbaa !14
  %add.ptr104 = getelementptr inbounds i8, ptr %63, i64 16
  br label %cond.end118

cond.false105:                                    ; preds = %sw.bb95
  %base106 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %64 = load ptr, ptr %base106, align 8, !tbaa !8
  %buffer107 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %64, i32 0, i32 12
  %65 = load ptr, ptr %buffer107, align 8, !tbaa !14
  %offn108 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %66 = load i64, ptr %offn108, align 8, !tbaa !15
  %base109 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %67 = load ptr, ptr %base109, align 8, !tbaa !8
  %cs110 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %67, i32 0, i32 5
  %68 = load i64, ptr %cs110, align 8, !tbaa !16
  %mul111 = mul i64 %66, %68
  %add.ptr112 = getelementptr inbounds double, ptr %65, i64 %mul111
  %offm113 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %69 = load i64, ptr %offm113, align 8, !tbaa !17
  %base114 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %70 = load ptr, ptr %base114, align 8, !tbaa !8
  %rs115 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %70, i32 0, i32 4
  %71 = load i64, ptr %rs115, align 8, !tbaa !18
  %mul116 = mul i64 %69, %71
  %add.ptr117 = getelementptr inbounds double, ptr %add.ptr112, i64 %mul116
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false105, %cond.true101
  %cond119 = phi ptr [ %add.ptr104, %cond.true101 ], [ %add.ptr117, %cond.false105 ]
  store ptr %cond119, ptr %buff_A96, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_W120) #4
  %base121 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %72 = load ptr, ptr %base121, align 8, !tbaa !8
  %datatype122 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %72, i32 0, i32 0
  %73 = load i32, ptr %datatype122, align 8, !tbaa !12
  %cmp123 = icmp eq i32 %73, 105
  br i1 %cmp123, label %cond.true125, label %cond.false129

cond.true125:                                     ; preds = %cond.end118
  %base126 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %74 = load ptr, ptr %base126, align 8, !tbaa !8
  %buffer127 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %buffer127, align 8, !tbaa !14
  %add.ptr128 = getelementptr inbounds i8, ptr %75, i64 16
  br label %cond.end142

cond.false129:                                    ; preds = %cond.end118
  %base130 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %76 = load ptr, ptr %base130, align 8, !tbaa !8
  %buffer131 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %76, i32 0, i32 12
  %77 = load ptr, ptr %buffer131, align 8, !tbaa !14
  %offn132 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 1
  %78 = load i64, ptr %offn132, align 8, !tbaa !15
  %base133 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %79 = load ptr, ptr %base133, align 8, !tbaa !8
  %cs134 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 5
  %80 = load i64, ptr %cs134, align 8, !tbaa !16
  %mul135 = mul i64 %78, %80
  %add.ptr136 = getelementptr inbounds double, ptr %77, i64 %mul135
  %offm137 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 0
  %81 = load i64, ptr %offm137, align 8, !tbaa !17
  %base138 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %82 = load ptr, ptr %base138, align 8, !tbaa !8
  %rs139 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %82, i32 0, i32 4
  %83 = load i64, ptr %rs139, align 8, !tbaa !18
  %mul140 = mul i64 %81, %83
  %add.ptr141 = getelementptr inbounds double, ptr %add.ptr136, i64 %mul140
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false129, %cond.true125
  %cond143 = phi ptr [ %add.ptr128, %cond.true125 ], [ %add.ptr141, %cond.false129 ]
  store ptr %cond143, ptr %buff_W120, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_C144) #4
  %base145 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %84 = load ptr, ptr %base145, align 8, !tbaa !8
  %datatype146 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %84, i32 0, i32 0
  %85 = load i32, ptr %datatype146, align 8, !tbaa !12
  %cmp147 = icmp eq i32 %85, 105
  br i1 %cmp147, label %cond.true149, label %cond.false153

cond.true149:                                     ; preds = %cond.end142
  %base150 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %86 = load ptr, ptr %base150, align 8, !tbaa !8
  %buffer151 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %86, i32 0, i32 12
  %87 = load ptr, ptr %buffer151, align 8, !tbaa !14
  %add.ptr152 = getelementptr inbounds i8, ptr %87, i64 16
  br label %cond.end166

cond.false153:                                    ; preds = %cond.end142
  %base154 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %88 = load ptr, ptr %base154, align 8, !tbaa !8
  %buffer155 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %88, i32 0, i32 12
  %89 = load ptr, ptr %buffer155, align 8, !tbaa !14
  %offn156 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 1
  %90 = load i64, ptr %offn156, align 8, !tbaa !15
  %base157 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %91 = load ptr, ptr %base157, align 8, !tbaa !8
  %cs158 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %91, i32 0, i32 5
  %92 = load i64, ptr %cs158, align 8, !tbaa !16
  %mul159 = mul i64 %90, %92
  %add.ptr160 = getelementptr inbounds double, ptr %89, i64 %mul159
  %offm161 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 0
  %93 = load i64, ptr %offm161, align 8, !tbaa !17
  %base162 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %94 = load ptr, ptr %base162, align 8, !tbaa !8
  %rs163 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %94, i32 0, i32 4
  %95 = load i64, ptr %rs163, align 8, !tbaa !18
  %mul164 = mul i64 %93, %95
  %add.ptr165 = getelementptr inbounds double, ptr %add.ptr160, i64 %mul164
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false153, %cond.true149
  %cond167 = phi ptr [ %add.ptr152, %cond.true149 ], [ %add.ptr165, %cond.false153 ]
  store ptr %cond167, ptr %buff_C144, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_sgn168) #4
  %base169 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %96 = load ptr, ptr %base169, align 8, !tbaa !8
  %datatype170 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %96, i32 0, i32 0
  %97 = load i32, ptr %datatype170, align 8, !tbaa !12
  %cmp171 = icmp eq i32 %97, 105
  br i1 %cmp171, label %cond.true173, label %cond.false177

cond.true173:                                     ; preds = %cond.end166
  %base174 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %98 = load ptr, ptr %base174, align 8, !tbaa !8
  %buffer175 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %98, i32 0, i32 12
  %99 = load ptr, ptr %buffer175, align 8, !tbaa !14
  %add.ptr176 = getelementptr inbounds i8, ptr %99, i64 16
  br label %cond.end190

cond.false177:                                    ; preds = %cond.end166
  %base178 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %100 = load ptr, ptr %base178, align 8, !tbaa !8
  %buffer179 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %100, i32 0, i32 12
  %101 = load ptr, ptr %buffer179, align 8, !tbaa !14
  %offn180 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 1
  %102 = load i64, ptr %offn180, align 8, !tbaa !15
  %base181 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %103 = load ptr, ptr %base181, align 8, !tbaa !8
  %cs182 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 5
  %104 = load i64, ptr %cs182, align 8, !tbaa !16
  %mul183 = mul i64 %102, %104
  %add.ptr184 = getelementptr inbounds double, ptr %101, i64 %mul183
  %offm185 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 0
  %105 = load i64, ptr %offm185, align 8, !tbaa !17
  %base186 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %106 = load ptr, ptr %base186, align 8, !tbaa !8
  %rs187 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %106, i32 0, i32 4
  %107 = load i64, ptr %rs187, align 8, !tbaa !18
  %mul188 = mul i64 %105, %107
  %add.ptr189 = getelementptr inbounds double, ptr %add.ptr184, i64 %mul188
  br label %cond.end190

cond.end190:                                      ; preds = %cond.false177, %cond.true173
  %cond191 = phi ptr [ %add.ptr176, %cond.true173 ], [ %add.ptr189, %cond.false177 ]
  store ptr %cond191, ptr %buff_sgn168, align 8, !tbaa !19
  %108 = load i32, ptr %m_AC, align 4, !tbaa !4
  %109 = load ptr, ptr %buff_sgn168, align 8, !tbaa !19
  %110 = load ptr, ptr %buff_A96, align 8, !tbaa !19
  %111 = load i32, ptr %rs_A, align 4, !tbaa !4
  %112 = load i32, ptr %cs_A, align 4, !tbaa !4
  %113 = load ptr, ptr %buff_W120, align 8, !tbaa !19
  %114 = load i32, ptr %rs_W, align 4, !tbaa !4
  %115 = load i32, ptr %cs_W, align 4, !tbaa !4
  %116 = load ptr, ptr %buff_C144, align 8, !tbaa !19
  %117 = load i32, ptr %rs_C, align 4, !tbaa !4
  %118 = load i32, ptr %cs_C, align 4, !tbaa !4
  %call192 = call i32 @FLA_Lyap_h_opd_var2(i32 noundef %108, ptr noundef %109, ptr noundef %110, i32 noundef %111, i32 noundef %112, ptr noundef %113, i32 noundef %114, i32 noundef %115, ptr noundef %116, i32 noundef %117, i32 noundef %118)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_sgn168) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_C144) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_W120) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A96) #4
  br label %sw.epilog

sw.bb193:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A194) #4
  %base195 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %119 = load ptr, ptr %base195, align 8, !tbaa !8
  %datatype196 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %119, i32 0, i32 0
  %120 = load i32, ptr %datatype196, align 8, !tbaa !12
  %cmp197 = icmp eq i32 %120, 105
  br i1 %cmp197, label %cond.true199, label %cond.false203

cond.true199:                                     ; preds = %sw.bb193
  %base200 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %121 = load ptr, ptr %base200, align 8, !tbaa !8
  %buffer201 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %121, i32 0, i32 12
  %122 = load ptr, ptr %buffer201, align 8, !tbaa !14
  %add.ptr202 = getelementptr inbounds i8, ptr %122, i64 24
  br label %cond.end216

cond.false203:                                    ; preds = %sw.bb193
  %base204 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %123 = load ptr, ptr %base204, align 8, !tbaa !8
  %buffer205 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %buffer205, align 8, !tbaa !14
  %offn206 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %125 = load i64, ptr %offn206, align 8, !tbaa !15
  %base207 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %126 = load ptr, ptr %base207, align 8, !tbaa !8
  %cs208 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %126, i32 0, i32 5
  %127 = load i64, ptr %cs208, align 8, !tbaa !16
  %mul209 = mul i64 %125, %127
  %add.ptr210 = getelementptr inbounds %struct.scomplex, ptr %124, i64 %mul209
  %offm211 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %128 = load i64, ptr %offm211, align 8, !tbaa !17
  %base212 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %129 = load ptr, ptr %base212, align 8, !tbaa !8
  %rs213 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %129, i32 0, i32 4
  %130 = load i64, ptr %rs213, align 8, !tbaa !18
  %mul214 = mul i64 %128, %130
  %add.ptr215 = getelementptr inbounds %struct.scomplex, ptr %add.ptr210, i64 %mul214
  br label %cond.end216

cond.end216:                                      ; preds = %cond.false203, %cond.true199
  %cond217 = phi ptr [ %add.ptr202, %cond.true199 ], [ %add.ptr215, %cond.false203 ]
  store ptr %cond217, ptr %buff_A194, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_W218) #4
  %base219 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %131 = load ptr, ptr %base219, align 8, !tbaa !8
  %datatype220 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %131, i32 0, i32 0
  %132 = load i32, ptr %datatype220, align 8, !tbaa !12
  %cmp221 = icmp eq i32 %132, 105
  br i1 %cmp221, label %cond.true223, label %cond.false227

cond.true223:                                     ; preds = %cond.end216
  %base224 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %133 = load ptr, ptr %base224, align 8, !tbaa !8
  %buffer225 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %133, i32 0, i32 12
  %134 = load ptr, ptr %buffer225, align 8, !tbaa !14
  %add.ptr226 = getelementptr inbounds i8, ptr %134, i64 24
  br label %cond.end240

cond.false227:                                    ; preds = %cond.end216
  %base228 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %135 = load ptr, ptr %base228, align 8, !tbaa !8
  %buffer229 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %135, i32 0, i32 12
  %136 = load ptr, ptr %buffer229, align 8, !tbaa !14
  %offn230 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 1
  %137 = load i64, ptr %offn230, align 8, !tbaa !15
  %base231 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %138 = load ptr, ptr %base231, align 8, !tbaa !8
  %cs232 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %138, i32 0, i32 5
  %139 = load i64, ptr %cs232, align 8, !tbaa !16
  %mul233 = mul i64 %137, %139
  %add.ptr234 = getelementptr inbounds %struct.scomplex, ptr %136, i64 %mul233
  %offm235 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 0
  %140 = load i64, ptr %offm235, align 8, !tbaa !17
  %base236 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %141 = load ptr, ptr %base236, align 8, !tbaa !8
  %rs237 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %141, i32 0, i32 4
  %142 = load i64, ptr %rs237, align 8, !tbaa !18
  %mul238 = mul i64 %140, %142
  %add.ptr239 = getelementptr inbounds %struct.scomplex, ptr %add.ptr234, i64 %mul238
  br label %cond.end240

cond.end240:                                      ; preds = %cond.false227, %cond.true223
  %cond241 = phi ptr [ %add.ptr226, %cond.true223 ], [ %add.ptr239, %cond.false227 ]
  store ptr %cond241, ptr %buff_W218, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_C242) #4
  %base243 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %143 = load ptr, ptr %base243, align 8, !tbaa !8
  %datatype244 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %143, i32 0, i32 0
  %144 = load i32, ptr %datatype244, align 8, !tbaa !12
  %cmp245 = icmp eq i32 %144, 105
  br i1 %cmp245, label %cond.true247, label %cond.false251

cond.true247:                                     ; preds = %cond.end240
  %base248 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %145 = load ptr, ptr %base248, align 8, !tbaa !8
  %buffer249 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %145, i32 0, i32 12
  %146 = load ptr, ptr %buffer249, align 8, !tbaa !14
  %add.ptr250 = getelementptr inbounds i8, ptr %146, i64 24
  br label %cond.end264

cond.false251:                                    ; preds = %cond.end240
  %base252 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %147 = load ptr, ptr %base252, align 8, !tbaa !8
  %buffer253 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %147, i32 0, i32 12
  %148 = load ptr, ptr %buffer253, align 8, !tbaa !14
  %offn254 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 1
  %149 = load i64, ptr %offn254, align 8, !tbaa !15
  %base255 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %150 = load ptr, ptr %base255, align 8, !tbaa !8
  %cs256 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %150, i32 0, i32 5
  %151 = load i64, ptr %cs256, align 8, !tbaa !16
  %mul257 = mul i64 %149, %151
  %add.ptr258 = getelementptr inbounds %struct.scomplex, ptr %148, i64 %mul257
  %offm259 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 0
  %152 = load i64, ptr %offm259, align 8, !tbaa !17
  %base260 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %153 = load ptr, ptr %base260, align 8, !tbaa !8
  %rs261 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %153, i32 0, i32 4
  %154 = load i64, ptr %rs261, align 8, !tbaa !18
  %mul262 = mul i64 %152, %154
  %add.ptr263 = getelementptr inbounds %struct.scomplex, ptr %add.ptr258, i64 %mul262
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false251, %cond.true247
  %cond265 = phi ptr [ %add.ptr250, %cond.true247 ], [ %add.ptr263, %cond.false251 ]
  store ptr %cond265, ptr %buff_C242, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_sgn266) #4
  %base267 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %155 = load ptr, ptr %base267, align 8, !tbaa !8
  %datatype268 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %155, i32 0, i32 0
  %156 = load i32, ptr %datatype268, align 8, !tbaa !12
  %cmp269 = icmp eq i32 %156, 105
  br i1 %cmp269, label %cond.true271, label %cond.false275

cond.true271:                                     ; preds = %cond.end264
  %base272 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %157 = load ptr, ptr %base272, align 8, !tbaa !8
  %buffer273 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %157, i32 0, i32 12
  %158 = load ptr, ptr %buffer273, align 8, !tbaa !14
  %add.ptr274 = getelementptr inbounds i8, ptr %158, i64 24
  br label %cond.end288

cond.false275:                                    ; preds = %cond.end264
  %base276 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %159 = load ptr, ptr %base276, align 8, !tbaa !8
  %buffer277 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %159, i32 0, i32 12
  %160 = load ptr, ptr %buffer277, align 8, !tbaa !14
  %offn278 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 1
  %161 = load i64, ptr %offn278, align 8, !tbaa !15
  %base279 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %162 = load ptr, ptr %base279, align 8, !tbaa !8
  %cs280 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %162, i32 0, i32 5
  %163 = load i64, ptr %cs280, align 8, !tbaa !16
  %mul281 = mul i64 %161, %163
  %add.ptr282 = getelementptr inbounds %struct.scomplex, ptr %160, i64 %mul281
  %offm283 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 0
  %164 = load i64, ptr %offm283, align 8, !tbaa !17
  %base284 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %165 = load ptr, ptr %base284, align 8, !tbaa !8
  %rs285 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %165, i32 0, i32 4
  %166 = load i64, ptr %rs285, align 8, !tbaa !18
  %mul286 = mul i64 %164, %166
  %add.ptr287 = getelementptr inbounds %struct.scomplex, ptr %add.ptr282, i64 %mul286
  br label %cond.end288

cond.end288:                                      ; preds = %cond.false275, %cond.true271
  %cond289 = phi ptr [ %add.ptr274, %cond.true271 ], [ %add.ptr287, %cond.false275 ]
  store ptr %cond289, ptr %buff_sgn266, align 8, !tbaa !19
  %167 = load i32, ptr %m_AC, align 4, !tbaa !4
  %168 = load ptr, ptr %buff_sgn266, align 8, !tbaa !19
  %169 = load ptr, ptr %buff_A194, align 8, !tbaa !19
  %170 = load i32, ptr %rs_A, align 4, !tbaa !4
  %171 = load i32, ptr %cs_A, align 4, !tbaa !4
  %172 = load ptr, ptr %buff_W218, align 8, !tbaa !19
  %173 = load i32, ptr %rs_W, align 4, !tbaa !4
  %174 = load i32, ptr %cs_W, align 4, !tbaa !4
  %175 = load ptr, ptr %buff_C242, align 8, !tbaa !19
  %176 = load i32, ptr %rs_C, align 4, !tbaa !4
  %177 = load i32, ptr %cs_C, align 4, !tbaa !4
  %call290 = call i32 @FLA_Lyap_h_opc_var2(i32 noundef %167, ptr noundef %168, ptr noundef %169, i32 noundef %170, i32 noundef %171, ptr noundef %172, i32 noundef %173, i32 noundef %174, ptr noundef %175, i32 noundef %176, i32 noundef %177)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_sgn266) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_C242) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_W218) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A194) #4
  br label %sw.epilog

sw.bb291:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_A292) #4
  %base293 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %178 = load ptr, ptr %base293, align 8, !tbaa !8
  %datatype294 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %178, i32 0, i32 0
  %179 = load i32, ptr %datatype294, align 8, !tbaa !12
  %cmp295 = icmp eq i32 %179, 105
  br i1 %cmp295, label %cond.true297, label %cond.false301

cond.true297:                                     ; preds = %sw.bb291
  %base298 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %180 = load ptr, ptr %base298, align 8, !tbaa !8
  %buffer299 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %180, i32 0, i32 12
  %181 = load ptr, ptr %buffer299, align 8, !tbaa !14
  %add.ptr300 = getelementptr inbounds i8, ptr %181, i64 32
  br label %cond.end314

cond.false301:                                    ; preds = %sw.bb291
  %base302 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %182 = load ptr, ptr %base302, align 8, !tbaa !8
  %buffer303 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %182, i32 0, i32 12
  %183 = load ptr, ptr %buffer303, align 8, !tbaa !14
  %offn304 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 1
  %184 = load i64, ptr %offn304, align 8, !tbaa !15
  %base305 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %185 = load ptr, ptr %base305, align 8, !tbaa !8
  %cs306 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %185, i32 0, i32 5
  %186 = load i64, ptr %cs306, align 8, !tbaa !16
  %mul307 = mul i64 %184, %186
  %add.ptr308 = getelementptr inbounds %struct.dcomplex, ptr %183, i64 %mul307
  %offm309 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 0
  %187 = load i64, ptr %offm309, align 8, !tbaa !17
  %base310 = getelementptr inbounds %struct.FLA_Obj_view, ptr %A, i32 0, i32 6
  %188 = load ptr, ptr %base310, align 8, !tbaa !8
  %rs311 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %188, i32 0, i32 4
  %189 = load i64, ptr %rs311, align 8, !tbaa !18
  %mul312 = mul i64 %187, %189
  %add.ptr313 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr308, i64 %mul312
  br label %cond.end314

cond.end314:                                      ; preds = %cond.false301, %cond.true297
  %cond315 = phi ptr [ %add.ptr300, %cond.true297 ], [ %add.ptr313, %cond.false301 ]
  store ptr %cond315, ptr %buff_A292, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_W316) #4
  %base317 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %190 = load ptr, ptr %base317, align 8, !tbaa !8
  %datatype318 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %190, i32 0, i32 0
  %191 = load i32, ptr %datatype318, align 8, !tbaa !12
  %cmp319 = icmp eq i32 %191, 105
  br i1 %cmp319, label %cond.true321, label %cond.false325

cond.true321:                                     ; preds = %cond.end314
  %base322 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %192 = load ptr, ptr %base322, align 8, !tbaa !8
  %buffer323 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %192, i32 0, i32 12
  %193 = load ptr, ptr %buffer323, align 8, !tbaa !14
  %add.ptr324 = getelementptr inbounds i8, ptr %193, i64 32
  br label %cond.end338

cond.false325:                                    ; preds = %cond.end314
  %base326 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %194 = load ptr, ptr %base326, align 8, !tbaa !8
  %buffer327 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %194, i32 0, i32 12
  %195 = load ptr, ptr %buffer327, align 8, !tbaa !14
  %offn328 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 1
  %196 = load i64, ptr %offn328, align 8, !tbaa !15
  %base329 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %197 = load ptr, ptr %base329, align 8, !tbaa !8
  %cs330 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %197, i32 0, i32 5
  %198 = load i64, ptr %cs330, align 8, !tbaa !16
  %mul331 = mul i64 %196, %198
  %add.ptr332 = getelementptr inbounds %struct.dcomplex, ptr %195, i64 %mul331
  %offm333 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 0
  %199 = load i64, ptr %offm333, align 8, !tbaa !17
  %base334 = getelementptr inbounds %struct.FLA_Obj_view, ptr %W, i32 0, i32 6
  %200 = load ptr, ptr %base334, align 8, !tbaa !8
  %rs335 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %200, i32 0, i32 4
  %201 = load i64, ptr %rs335, align 8, !tbaa !18
  %mul336 = mul i64 %199, %201
  %add.ptr337 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr332, i64 %mul336
  br label %cond.end338

cond.end338:                                      ; preds = %cond.false325, %cond.true321
  %cond339 = phi ptr [ %add.ptr324, %cond.true321 ], [ %add.ptr337, %cond.false325 ]
  store ptr %cond339, ptr %buff_W316, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_C340) #4
  %base341 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %202 = load ptr, ptr %base341, align 8, !tbaa !8
  %datatype342 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %202, i32 0, i32 0
  %203 = load i32, ptr %datatype342, align 8, !tbaa !12
  %cmp343 = icmp eq i32 %203, 105
  br i1 %cmp343, label %cond.true345, label %cond.false349

cond.true345:                                     ; preds = %cond.end338
  %base346 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %204 = load ptr, ptr %base346, align 8, !tbaa !8
  %buffer347 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %204, i32 0, i32 12
  %205 = load ptr, ptr %buffer347, align 8, !tbaa !14
  %add.ptr348 = getelementptr inbounds i8, ptr %205, i64 32
  br label %cond.end362

cond.false349:                                    ; preds = %cond.end338
  %base350 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %206 = load ptr, ptr %base350, align 8, !tbaa !8
  %buffer351 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %206, i32 0, i32 12
  %207 = load ptr, ptr %buffer351, align 8, !tbaa !14
  %offn352 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 1
  %208 = load i64, ptr %offn352, align 8, !tbaa !15
  %base353 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %209 = load ptr, ptr %base353, align 8, !tbaa !8
  %cs354 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %209, i32 0, i32 5
  %210 = load i64, ptr %cs354, align 8, !tbaa !16
  %mul355 = mul i64 %208, %210
  %add.ptr356 = getelementptr inbounds %struct.dcomplex, ptr %207, i64 %mul355
  %offm357 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 0
  %211 = load i64, ptr %offm357, align 8, !tbaa !17
  %base358 = getelementptr inbounds %struct.FLA_Obj_view, ptr %C, i32 0, i32 6
  %212 = load ptr, ptr %base358, align 8, !tbaa !8
  %rs359 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %212, i32 0, i32 4
  %213 = load i64, ptr %rs359, align 8, !tbaa !18
  %mul360 = mul i64 %211, %213
  %add.ptr361 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr356, i64 %mul360
  br label %cond.end362

cond.end362:                                      ; preds = %cond.false349, %cond.true345
  %cond363 = phi ptr [ %add.ptr348, %cond.true345 ], [ %add.ptr361, %cond.false349 ]
  store ptr %cond363, ptr %buff_C340, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %buff_sgn364) #4
  %base365 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %214 = load ptr, ptr %base365, align 8, !tbaa !8
  %datatype366 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %214, i32 0, i32 0
  %215 = load i32, ptr %datatype366, align 8, !tbaa !12
  %cmp367 = icmp eq i32 %215, 105
  br i1 %cmp367, label %cond.true369, label %cond.false373

cond.true369:                                     ; preds = %cond.end362
  %base370 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %216 = load ptr, ptr %base370, align 8, !tbaa !8
  %buffer371 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %216, i32 0, i32 12
  %217 = load ptr, ptr %buffer371, align 8, !tbaa !14
  %add.ptr372 = getelementptr inbounds i8, ptr %217, i64 32
  br label %cond.end386

cond.false373:                                    ; preds = %cond.end362
  %base374 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %218 = load ptr, ptr %base374, align 8, !tbaa !8
  %buffer375 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %218, i32 0, i32 12
  %219 = load ptr, ptr %buffer375, align 8, !tbaa !14
  %offn376 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 1
  %220 = load i64, ptr %offn376, align 8, !tbaa !15
  %base377 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %221 = load ptr, ptr %base377, align 8, !tbaa !8
  %cs378 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %221, i32 0, i32 5
  %222 = load i64, ptr %cs378, align 8, !tbaa !16
  %mul379 = mul i64 %220, %222
  %add.ptr380 = getelementptr inbounds %struct.dcomplex, ptr %219, i64 %mul379
  %offm381 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 0
  %223 = load i64, ptr %offm381, align 8, !tbaa !17
  %base382 = getelementptr inbounds %struct.FLA_Obj_view, ptr %isgn, i32 0, i32 6
  %224 = load ptr, ptr %base382, align 8, !tbaa !8
  %rs383 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %224, i32 0, i32 4
  %225 = load i64, ptr %rs383, align 8, !tbaa !18
  %mul384 = mul i64 %223, %225
  %add.ptr385 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr380, i64 %mul384
  br label %cond.end386

cond.end386:                                      ; preds = %cond.false373, %cond.true369
  %cond387 = phi ptr [ %add.ptr372, %cond.true369 ], [ %add.ptr385, %cond.false373 ]
  store ptr %cond387, ptr %buff_sgn364, align 8, !tbaa !19
  %226 = load i32, ptr %m_AC, align 4, !tbaa !4
  %227 = load ptr, ptr %buff_sgn364, align 8, !tbaa !19
  %228 = load ptr, ptr %buff_A292, align 8, !tbaa !19
  %229 = load i32, ptr %rs_A, align 4, !tbaa !4
  %230 = load i32, ptr %cs_A, align 4, !tbaa !4
  %231 = load ptr, ptr %buff_W316, align 8, !tbaa !19
  %232 = load i32, ptr %rs_W, align 4, !tbaa !4
  %233 = load i32, ptr %cs_W, align 4, !tbaa !4
  %234 = load ptr, ptr %buff_C340, align 8, !tbaa !19
  %235 = load i32, ptr %rs_C, align 4, !tbaa !4
  %236 = load i32, ptr %cs_C, align 4, !tbaa !4
  %call388 = call i32 @FLA_Lyap_h_opz_var2(i32 noundef %226, ptr noundef %227, ptr noundef %228, i32 noundef %229, i32 noundef %230, ptr noundef %231, i32 noundef %232, i32 noundef %233, ptr noundef %234, i32 noundef %235, i32 noundef %236)
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_sgn364) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_C340) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_W316) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_A292) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end386, %cond.end288, %cond.end190, %cond.end92
  %call389 = call i32 @FLA_Obj_free(ptr noundef %W)
  call void @llvm.lifetime.end.p0(i64 56, ptr %W) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_C) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_C) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_W) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_W) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cs_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rs_A) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_AC) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_create_conf_to(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_row_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_col_stride(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Lyap_h_ops_var2(i32 noundef %m_AC, ptr noundef %buff_sgn, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_W, i32 noundef %rs_W, i32 noundef %cs_W, ptr noundef %buff_C, i32 noundef %rs_C, i32 noundef %cs_C) #0 {
entry:
  %m_AC.addr = alloca i32, align 4
  %buff_sgn.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_W.addr = alloca ptr, align 8
  %rs_W.addr = alloca i32, align 4
  %cs_W.addr = alloca i32, align 4
  %buff_C.addr = alloca ptr, align 8
  %rs_C.addr = alloca i32, align 4
  %cs_C.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %c01 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %C02 = alloca ptr, align 8
  %c12t = alloca ptr, align 8
  %W00 = alloca ptr, align 8
  %omega = alloca float, align 4
  %m_behind = alloca i32, align 4
  %m_ahead = alloca i32, align 4
  store i32 %m_AC, ptr %m_AC.addr, align 4, !tbaa !4
  store ptr %buff_sgn, ptr %buff_sgn.addr, align 8, !tbaa !19
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_W, ptr %buff_W.addr, align 8, !tbaa !19
  store i32 %rs_W, ptr %rs_W.addr, align 4, !tbaa !4
  store i32 %cs_W, ptr %cs_W.addr, align 4, !tbaa !4
  store ptr %buff_C, ptr %buff_C.addr, align 8, !tbaa !19
  store i32 %rs_C, ptr %rs_C.addr, align 4, !tbaa !4
  store i32 %cs_C, ptr %cs_C.addr, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %24 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %25 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %26 = load ptr, ptr %buff_sgn.addr, align 8, !tbaa !19
  %27 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %28 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %29 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_sscalm(i32 noundef 500, i32 noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29)
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end18
  %30 = load i32, ptr %i, align 4, !tbaa !4
  %31 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %32 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %33 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul21 = mul nsw i32 0, %33
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr22 = getelementptr inbounds float, ptr %32, i64 %idx.ext
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul23 = mul nsw i32 0, %34
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds float, ptr %add.ptr22, i64 %idx.ext24
  store ptr %add.ptr25, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 %36, %37
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds float, ptr %35, i64 %idx.ext27
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 0, %38
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds float, ptr %add.ptr28, i64 %idx.ext30
  store ptr %add.ptr31, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 %40, %41
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds float, ptr %39, i64 %idx.ext33
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %42, %43
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds float, ptr %add.ptr34, i64 %idx.ext36
  store ptr %add.ptr37, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul38 = mul nsw i32 %add, %46
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds float, ptr %44, i64 %idx.ext39
  %47 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul41 = mul nsw i32 0, %47
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds float, ptr %add.ptr40, i64 %idx.ext42
  store ptr %add.ptr43, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %48 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %49 = load i32, ptr %i, align 4, !tbaa !4
  %add44 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul45 = mul nsw i32 %add44, %50
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds float, ptr %48, i64 %idx.ext46
  %51 = load i32, ptr %i, align 4, !tbaa !4
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul48 = mul nsw i32 %51, %52
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds float, ptr %add.ptr47, i64 %idx.ext49
  store ptr %add.ptr50, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c01) #4
  %53 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %55 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 %54, %55
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds float, ptr %53, i64 %idx.ext52
  %56 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul54 = mul nsw i32 0, %56
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds float, ptr %add.ptr53, i64 %idx.ext55
  store ptr %add.ptr56, ptr %c01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #4
  %57 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %58, %59
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds float, ptr %57, i64 %idx.ext58
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 %60, %61
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds float, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %gamma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %C02) #4
  %62 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %63, 1
  %64 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %64
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds float, ptr %62, i64 %idx.ext65
  %65 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 0, %65
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds float, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %C02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c12t) #4
  %66 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %67 = load i32, ptr %i, align 4, !tbaa !4
  %add70 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 %add70, %68
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds float, ptr %66, i64 %idx.ext72
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %69, %70
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds float, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %c12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %W00) #4
  %71 = load ptr, ptr %buff_W.addr, align 8, !tbaa !19
  %72 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %72
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds float, ptr %71, i64 %idx.ext78
  %73 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 0, %73
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds float, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %W00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr %omega) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %74 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %74, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %75 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %75, %76
  %sub83 = sub nsw i32 %sub, 1
  store i32 %sub83, ptr %m_ahead, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %W00, align 8, !tbaa !19
  %83 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %84 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_scopymrt(i32 noundef 201, i32 noundef 100, i32 noundef %77, i32 noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84)
  %85 = load i32, ptr %m_behind, align 4, !tbaa !4
  %86 = load i32, ptr %m_behind, align 4, !tbaa !4
  %87 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %88 = load ptr, ptr %W00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_sshiftdiag(i32 noundef 501, i32 noundef 0, i32 noundef %85, i32 noundef %86, ptr noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90)
  %91 = load i32, ptr %m_behind, align 4, !tbaa !4
  %92 = load ptr, ptr %W00, align 8, !tbaa !19
  %93 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %94 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %95 = load ptr, ptr %c01, align 8, !tbaa !19
  %96 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  call void @bl1_strsv(i32 noundef 201, i32 noundef 103, i32 noundef 400, i32 noundef %91, ptr noundef %92, i32 noundef %93, i32 noundef %94, ptr noundef %95, i32 noundef %96)
  %97 = load i32, ptr %m_behind, align 4, !tbaa !4
  %98 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %99 = load ptr, ptr %a01, align 8, !tbaa !19
  %100 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %101 = load ptr, ptr %c01, align 8, !tbaa !19
  %102 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %104 = load ptr, ptr %gamma11, align 8, !tbaa !19
  call void @bl1_sdot2s(i32 noundef 501, i32 noundef %97, ptr noundef %98, ptr noundef %99, i32 noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %106 = load float, ptr %105, align 4, !tbaa !20
  store float %106, ptr %omega, align 4, !tbaa !20
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %108 = load float, ptr %107, align 4, !tbaa !20
  %109 = load float, ptr %omega, align 4, !tbaa !20
  %add84 = fadd float %108, %109
  store float %add84, ptr %omega, align 4, !tbaa !20
  %110 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %111 = load float, ptr %110, align 4, !tbaa !20
  %112 = load float, ptr %omega, align 4, !tbaa !20
  %div = fdiv float %111, %112
  %113 = load ptr, ptr %gamma11, align 8, !tbaa !19
  store float %div, ptr %113, align 4, !tbaa !20
  %114 = load i32, ptr %m_behind, align 4, !tbaa !4
  %115 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %116 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %117 = load ptr, ptr %c01, align 8, !tbaa !19
  %118 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %119 = load ptr, ptr %a12t, align 8, !tbaa !19
  %120 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %121 = load ptr, ptr %C02, align 8, !tbaa !19
  %122 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %123 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_sger(i32 noundef 500, i32 noundef 500, i32 noundef %114, i32 noundef %115, ptr noundef %116, ptr noundef %117, i32 noundef %118, ptr noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %122, i32 noundef %123)
  %124 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %125 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %126 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %127 = load ptr, ptr %a12t, align 8, !tbaa !19
  %128 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %129 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %130 = load ptr, ptr %c12t, align 8, !tbaa !19
  %131 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_saxpysv(i32 noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %128, ptr noundef %129, ptr noundef %130, i32 noundef %131)
  %132 = load i32, ptr %m_behind, align 4, !tbaa !4
  %133 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %134 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %135 = load ptr, ptr %A02, align 8, !tbaa !19
  %136 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %137 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %138 = load ptr, ptr %c01, align 8, !tbaa !19
  %139 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %140 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %141 = load ptr, ptr %c12t, align 8, !tbaa !19
  %142 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_sgemv(i32 noundef 101, i32 noundef 501, i32 noundef %132, i32 noundef %133, ptr noundef %134, ptr noundef %135, i32 noundef %136, i32 noundef %137, ptr noundef %138, i32 noundef %139, ptr noundef %140, ptr noundef %141, i32 noundef %142)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %omega) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %W00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %C02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %143 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %143, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @FLA_Lyap_h_opd_var2(i32 noundef %m_AC, ptr noundef %buff_sgn, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_W, i32 noundef %rs_W, i32 noundef %cs_W, ptr noundef %buff_C, i32 noundef %rs_C, i32 noundef %cs_C) #0 {
entry:
  %m_AC.addr = alloca i32, align 4
  %buff_sgn.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_W.addr = alloca ptr, align 8
  %rs_W.addr = alloca i32, align 4
  %cs_W.addr = alloca i32, align 4
  %buff_C.addr = alloca ptr, align 8
  %rs_C.addr = alloca i32, align 4
  %cs_C.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %c01 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %C02 = alloca ptr, align 8
  %c12t = alloca ptr, align 8
  %W00 = alloca ptr, align 8
  %omega = alloca double, align 8
  %m_behind = alloca i32, align 4
  %m_ahead = alloca i32, align 4
  store i32 %m_AC, ptr %m_AC.addr, align 4, !tbaa !4
  store ptr %buff_sgn, ptr %buff_sgn.addr, align 8, !tbaa !19
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_W, ptr %buff_W.addr, align 8, !tbaa !19
  store i32 %rs_W, ptr %rs_W.addr, align 4, !tbaa !4
  store i32 %cs_W, ptr %cs_W.addr, align 4, !tbaa !4
  store ptr %buff_C, ptr %buff_C.addr, align 8, !tbaa !19
  store i32 %rs_C, ptr %rs_C.addr, align 4, !tbaa !4
  store i32 %cs_C, ptr %cs_C.addr, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %24 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %25 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %26 = load ptr, ptr %buff_sgn.addr, align 8, !tbaa !19
  %27 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %28 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %29 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_dscalm(i32 noundef 500, i32 noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29)
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end18
  %30 = load i32, ptr %i, align 4, !tbaa !4
  %31 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %32 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %33 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul21 = mul nsw i32 0, %33
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr22 = getelementptr inbounds double, ptr %32, i64 %idx.ext
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul23 = mul nsw i32 0, %34
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds double, ptr %add.ptr22, i64 %idx.ext24
  store ptr %add.ptr25, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 %36, %37
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds double, ptr %35, i64 %idx.ext27
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 0, %38
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds double, ptr %add.ptr28, i64 %idx.ext30
  store ptr %add.ptr31, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 %40, %41
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds double, ptr %39, i64 %idx.ext33
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %42, %43
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds double, ptr %add.ptr34, i64 %idx.ext36
  store ptr %add.ptr37, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul38 = mul nsw i32 %add, %46
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds double, ptr %44, i64 %idx.ext39
  %47 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul41 = mul nsw i32 0, %47
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds double, ptr %add.ptr40, i64 %idx.ext42
  store ptr %add.ptr43, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %48 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %49 = load i32, ptr %i, align 4, !tbaa !4
  %add44 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul45 = mul nsw i32 %add44, %50
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds double, ptr %48, i64 %idx.ext46
  %51 = load i32, ptr %i, align 4, !tbaa !4
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul48 = mul nsw i32 %51, %52
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds double, ptr %add.ptr47, i64 %idx.ext49
  store ptr %add.ptr50, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c01) #4
  %53 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %55 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 %54, %55
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds double, ptr %53, i64 %idx.ext52
  %56 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul54 = mul nsw i32 0, %56
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds double, ptr %add.ptr53, i64 %idx.ext55
  store ptr %add.ptr56, ptr %c01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #4
  %57 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %58, %59
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds double, ptr %57, i64 %idx.ext58
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 %60, %61
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds double, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %gamma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %C02) #4
  %62 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %63, 1
  %64 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %64
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds double, ptr %62, i64 %idx.ext65
  %65 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 0, %65
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds double, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %C02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c12t) #4
  %66 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %67 = load i32, ptr %i, align 4, !tbaa !4
  %add70 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 %add70, %68
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds double, ptr %66, i64 %idx.ext72
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %69, %70
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds double, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %c12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %W00) #4
  %71 = load ptr, ptr %buff_W.addr, align 8, !tbaa !19
  %72 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %72
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds double, ptr %71, i64 %idx.ext78
  %73 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 0, %73
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds double, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %W00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %omega) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %74 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %74, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %75 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %75, %76
  %sub83 = sub nsw i32 %sub, 1
  store i32 %sub83, ptr %m_ahead, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %W00, align 8, !tbaa !19
  %83 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %84 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_dcopymrt(i32 noundef 201, i32 noundef 100, i32 noundef %77, i32 noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84)
  %85 = load i32, ptr %m_behind, align 4, !tbaa !4
  %86 = load i32, ptr %m_behind, align 4, !tbaa !4
  %87 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %88 = load ptr, ptr %W00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_dshiftdiag(i32 noundef 501, i32 noundef 0, i32 noundef %85, i32 noundef %86, ptr noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90)
  %91 = load i32, ptr %m_behind, align 4, !tbaa !4
  %92 = load ptr, ptr %W00, align 8, !tbaa !19
  %93 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %94 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %95 = load ptr, ptr %c01, align 8, !tbaa !19
  %96 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  call void @bl1_dtrsv(i32 noundef 201, i32 noundef 103, i32 noundef 400, i32 noundef %91, ptr noundef %92, i32 noundef %93, i32 noundef %94, ptr noundef %95, i32 noundef %96)
  %97 = load i32, ptr %m_behind, align 4, !tbaa !4
  %98 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %99 = load ptr, ptr %a01, align 8, !tbaa !19
  %100 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %101 = load ptr, ptr %c01, align 8, !tbaa !19
  %102 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %104 = load ptr, ptr %gamma11, align 8, !tbaa !19
  call void @bl1_ddot2s(i32 noundef 501, i32 noundef %97, ptr noundef %98, ptr noundef %99, i32 noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %106 = load double, ptr %105, align 8, !tbaa !24
  store double %106, ptr %omega, align 8, !tbaa !24
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %108 = load double, ptr %107, align 8, !tbaa !24
  %109 = load double, ptr %omega, align 8, !tbaa !24
  %add84 = fadd double %108, %109
  store double %add84, ptr %omega, align 8, !tbaa !24
  %110 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %111 = load double, ptr %110, align 8, !tbaa !24
  %112 = load double, ptr %omega, align 8, !tbaa !24
  %div = fdiv double %111, %112
  %113 = load ptr, ptr %gamma11, align 8, !tbaa !19
  store double %div, ptr %113, align 8, !tbaa !24
  %114 = load i32, ptr %m_behind, align 4, !tbaa !4
  %115 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %116 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %117 = load ptr, ptr %c01, align 8, !tbaa !19
  %118 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %119 = load ptr, ptr %a12t, align 8, !tbaa !19
  %120 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %121 = load ptr, ptr %C02, align 8, !tbaa !19
  %122 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %123 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_dger(i32 noundef 500, i32 noundef 500, i32 noundef %114, i32 noundef %115, ptr noundef %116, ptr noundef %117, i32 noundef %118, ptr noundef %119, i32 noundef %120, ptr noundef %121, i32 noundef %122, i32 noundef %123)
  %124 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %125 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %126 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %127 = load ptr, ptr %a12t, align 8, !tbaa !19
  %128 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %129 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %130 = load ptr, ptr %c12t, align 8, !tbaa !19
  %131 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_daxpysv(i32 noundef %124, ptr noundef %125, ptr noundef %126, ptr noundef %127, i32 noundef %128, ptr noundef %129, ptr noundef %130, i32 noundef %131)
  %132 = load i32, ptr %m_behind, align 4, !tbaa !4
  %133 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %134 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %135 = load ptr, ptr %A02, align 8, !tbaa !19
  %136 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %137 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %138 = load ptr, ptr %c01, align 8, !tbaa !19
  %139 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %140 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %141 = load ptr, ptr %c12t, align 8, !tbaa !19
  %142 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_dgemv(i32 noundef 101, i32 noundef 501, i32 noundef %132, i32 noundef %133, ptr noundef %134, ptr noundef %135, i32 noundef %136, i32 noundef %137, ptr noundef %138, i32 noundef %139, ptr noundef %140, ptr noundef %141, i32 noundef %142)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %omega) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %W00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %C02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %143 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %143, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Lyap_h_opc_var2(i32 noundef %m_AC, ptr noundef %buff_sgn, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_W, i32 noundef %rs_W, i32 noundef %cs_W, ptr noundef %buff_C, i32 noundef %rs_C, i32 noundef %cs_C) #0 {
entry:
  %m_AC.addr = alloca i32, align 4
  %buff_sgn.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_W.addr = alloca ptr, align 8
  %rs_W.addr = alloca i32, align 4
  %cs_W.addr = alloca i32, align 4
  %buff_C.addr = alloca ptr, align 8
  %rs_C.addr = alloca i32, align 4
  %cs_C.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %c01 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %C02 = alloca ptr, align 8
  %c12t = alloca ptr, align 8
  %W00 = alloca ptr, align 8
  %omega = alloca %struct.scomplex, align 4
  %m_behind = alloca i32, align 4
  %m_ahead = alloca i32, align 4
  %s = alloca float, align 4
  %ar_s = alloca float, align 4
  %ai_s = alloca float, align 4
  %yrt = alloca float, align 4
  %temp = alloca float, align 4
  store i32 %m_AC, ptr %m_AC.addr, align 4, !tbaa !4
  store ptr %buff_sgn, ptr %buff_sgn.addr, align 8, !tbaa !19
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_W, ptr %buff_W.addr, align 8, !tbaa !19
  store i32 %rs_W, ptr %rs_W.addr, align 4, !tbaa !4
  store i32 %cs_W, ptr %cs_W.addr, align 4, !tbaa !4
  store ptr %buff_C, ptr %buff_C.addr, align 8, !tbaa !19
  store i32 %rs_C, ptr %rs_C.addr, align 4, !tbaa !4
  store i32 %cs_C, ptr %cs_C.addr, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %24 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %25 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %26 = load ptr, ptr %buff_sgn.addr, align 8, !tbaa !19
  %27 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %28 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %29 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_cscalm(i32 noundef 500, i32 noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29)
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end18
  %30 = load i32, ptr %i, align 4, !tbaa !4
  %31 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %32 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %33 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul21 = mul nsw i32 0, %33
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr22 = getelementptr inbounds %struct.scomplex, ptr %32, i64 %idx.ext
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul23 = mul nsw i32 0, %34
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds %struct.scomplex, ptr %add.ptr22, i64 %idx.ext24
  store ptr %add.ptr25, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 %36, %37
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds %struct.scomplex, ptr %35, i64 %idx.ext27
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 0, %38
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds %struct.scomplex, ptr %add.ptr28, i64 %idx.ext30
  store ptr %add.ptr31, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 %40, %41
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds %struct.scomplex, ptr %39, i64 %idx.ext33
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %42, %43
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds %struct.scomplex, ptr %add.ptr34, i64 %idx.ext36
  store ptr %add.ptr37, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul38 = mul nsw i32 %add, %46
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds %struct.scomplex, ptr %44, i64 %idx.ext39
  %47 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul41 = mul nsw i32 0, %47
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds %struct.scomplex, ptr %add.ptr40, i64 %idx.ext42
  store ptr %add.ptr43, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %48 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %49 = load i32, ptr %i, align 4, !tbaa !4
  %add44 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul45 = mul nsw i32 %add44, %50
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds %struct.scomplex, ptr %48, i64 %idx.ext46
  %51 = load i32, ptr %i, align 4, !tbaa !4
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul48 = mul nsw i32 %51, %52
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %add.ptr47, i64 %idx.ext49
  store ptr %add.ptr50, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c01) #4
  %53 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %55 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 %54, %55
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds %struct.scomplex, ptr %53, i64 %idx.ext52
  %56 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul54 = mul nsw i32 0, %56
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds %struct.scomplex, ptr %add.ptr53, i64 %idx.ext55
  store ptr %add.ptr56, ptr %c01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #4
  %57 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %58, %59
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds %struct.scomplex, ptr %57, i64 %idx.ext58
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 %60, %61
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds %struct.scomplex, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %gamma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %C02) #4
  %62 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %63, 1
  %64 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %64
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.scomplex, ptr %62, i64 %idx.ext65
  %65 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 0, %65
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.scomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %C02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c12t) #4
  %66 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %67 = load i32, ptr %i, align 4, !tbaa !4
  %add70 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 %add70, %68
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds %struct.scomplex, ptr %66, i64 %idx.ext72
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %69, %70
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.scomplex, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %c12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %W00) #4
  %71 = load ptr, ptr %buff_W.addr, align 8, !tbaa !19
  %72 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %72
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.scomplex, ptr %71, i64 %idx.ext78
  %73 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 0, %73
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.scomplex, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %W00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %omega) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %74 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %74, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %75 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %75, %76
  %sub83 = sub nsw i32 %sub, 1
  store i32 %sub83, ptr %m_ahead, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %W00, align 8, !tbaa !19
  %83 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %84 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_ccopymrt(i32 noundef 201, i32 noundef 100, i32 noundef %77, i32 noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84)
  %85 = load i32, ptr %m_behind, align 4, !tbaa !4
  %86 = load i32, ptr %m_behind, align 4, !tbaa !4
  %87 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %88 = load ptr, ptr %W00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_cshiftdiag(i32 noundef 501, i32 noundef 0, i32 noundef %85, i32 noundef %86, ptr noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90)
  %91 = load i32, ptr %m_behind, align 4, !tbaa !4
  %92 = load ptr, ptr %W00, align 8, !tbaa !19
  %93 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %94 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %95 = load ptr, ptr %c01, align 8, !tbaa !19
  %96 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  call void @bl1_ctrsv(i32 noundef 201, i32 noundef 103, i32 noundef 400, i32 noundef %91, ptr noundef %92, i32 noundef %93, i32 noundef %94, ptr noundef %95, i32 noundef %96)
  %97 = load i32, ptr %m_behind, align 4, !tbaa !4
  %98 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %99 = load ptr, ptr %a01, align 8, !tbaa !19
  %100 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %101 = load ptr, ptr %c01, align 8, !tbaa !19
  %102 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %104 = load ptr, ptr %gamma11, align 8, !tbaa !19
  call void @bl1_cdot2s(i32 noundef 501, i32 noundef %97, ptr noundef %98, ptr noundef %99, i32 noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.scomplex, ptr %105, i32 0, i32 0
  %106 = load float, ptr %real, align 4, !tbaa !27
  %real84 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  store float %106, ptr %real84, align 4, !tbaa !27
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.scomplex, ptr %107, i32 0, i32 1
  %108 = load float, ptr %imag, align 4, !tbaa !29
  %mul85 = fmul float -1.000000e+00, %108
  %imag86 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  store float %mul85, ptr %imag86, align 4, !tbaa !29
  %109 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real87 = getelementptr inbounds %struct.scomplex, ptr %109, i32 0, i32 0
  %110 = load float, ptr %real87, align 4, !tbaa !27
  %real88 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %111 = load float, ptr %real88, align 4, !tbaa !27
  %add89 = fadd float %110, %111
  %real90 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  store float %add89, ptr %real90, align 4, !tbaa !27
  %112 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag91 = getelementptr inbounds %struct.scomplex, ptr %112, i32 0, i32 1
  %113 = load float, ptr %imag91, align 4, !tbaa !29
  %imag92 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %114 = load float, ptr %imag92, align 4, !tbaa !29
  %add93 = fadd float %113, %114
  %imag94 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  store float %add93, ptr %imag94, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  %real95 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %115 = load float, ptr %real95, align 4, !tbaa !27
  %conv = fpext float %115 to double
  %cmp96 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp96, label %cond.true98, label %cond.false100

cond.true98:                                      ; preds = %for.body
  %real99 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %116 = load float, ptr %real99, align 4, !tbaa !27
  %fneg = fneg float %116
  br label %cond.end102

cond.false100:                                    ; preds = %for.body
  %real101 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %117 = load float, ptr %real101, align 4, !tbaa !27
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false100, %cond.true98
  %cond103 = phi float [ %fneg, %cond.true98 ], [ %117, %cond.false100 ]
  %imag104 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %118 = load float, ptr %imag104, align 4, !tbaa !29
  %conv105 = fpext float %118 to double
  %cmp106 = fcmp ole double %conv105, 0.000000e+00
  br i1 %cmp106, label %cond.true108, label %cond.false111

cond.true108:                                     ; preds = %cond.end102
  %imag109 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %119 = load float, ptr %imag109, align 4, !tbaa !29
  %fneg110 = fneg float %119
  br label %cond.end113

cond.false111:                                    ; preds = %cond.end102
  %imag112 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %120 = load float, ptr %imag112, align 4, !tbaa !29
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true108
  %cond114 = phi float [ %fneg110, %cond.true108 ], [ %120, %cond.false111 ]
  %cmp115 = fcmp ogt float %cond103, %cond114
  br i1 %cmp115, label %cond.true117, label %cond.false129

cond.true117:                                     ; preds = %cond.end113
  %real118 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %121 = load float, ptr %real118, align 4, !tbaa !27
  %conv119 = fpext float %121 to double
  %cmp120 = fcmp ole double %conv119, 0.000000e+00
  br i1 %cmp120, label %cond.true122, label %cond.false125

cond.true122:                                     ; preds = %cond.true117
  %real123 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %122 = load float, ptr %real123, align 4, !tbaa !27
  %fneg124 = fneg float %122
  br label %cond.end127

cond.false125:                                    ; preds = %cond.true117
  %real126 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %123 = load float, ptr %real126, align 4, !tbaa !27
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false125, %cond.true122
  %cond128 = phi float [ %fneg124, %cond.true122 ], [ %123, %cond.false125 ]
  br label %cond.end141

cond.false129:                                    ; preds = %cond.end113
  %imag130 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %124 = load float, ptr %imag130, align 4, !tbaa !29
  %conv131 = fpext float %124 to double
  %cmp132 = fcmp ole double %conv131, 0.000000e+00
  br i1 %cmp132, label %cond.true134, label %cond.false137

cond.true134:                                     ; preds = %cond.false129
  %imag135 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %125 = load float, ptr %imag135, align 4, !tbaa !29
  %fneg136 = fneg float %125
  br label %cond.end139

cond.false137:                                    ; preds = %cond.false129
  %imag138 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %126 = load float, ptr %imag138, align 4, !tbaa !29
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false137, %cond.true134
  %cond140 = phi float [ %fneg136, %cond.true134 ], [ %126, %cond.false137 ]
  br label %cond.end141

cond.end141:                                      ; preds = %cond.end139, %cond.end127
  %cond142 = phi float [ %cond128, %cond.end127 ], [ %cond140, %cond.end139 ]
  store float %cond142, ptr %s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ar_s) #4
  %real143 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %127 = load float, ptr %real143, align 4, !tbaa !27
  %128 = load float, ptr %s, align 4, !tbaa !20
  %div = fdiv float %127, %128
  store float %div, ptr %ar_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ai_s) #4
  %imag144 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %129 = load float, ptr %imag144, align 4, !tbaa !29
  %130 = load float, ptr %s, align 4, !tbaa !20
  %div145 = fdiv float %129, %130
  store float %div145, ptr %ai_s, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %yrt) #4
  %131 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %real146 = getelementptr inbounds %struct.scomplex, ptr %131, i32 0, i32 0
  %132 = load float, ptr %real146, align 4, !tbaa !27
  store float %132, ptr %yrt, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #4
  %133 = load float, ptr %ar_s, align 4, !tbaa !20
  %real147 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 0
  %134 = load float, ptr %real147, align 4, !tbaa !27
  %135 = load float, ptr %ai_s, align 4, !tbaa !20
  %imag149 = getelementptr inbounds %struct.scomplex, ptr %omega, i32 0, i32 1
  %136 = load float, ptr %imag149, align 4, !tbaa !29
  %mul150 = fmul float %135, %136
  %137 = call float @llvm.fmuladd.f32(float %133, float %134, float %mul150)
  store float %137, ptr %temp, align 4, !tbaa !20
  %138 = load float, ptr %yrt, align 4, !tbaa !20
  %139 = load float, ptr %ar_s, align 4, !tbaa !20
  %140 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %imag152 = getelementptr inbounds %struct.scomplex, ptr %140, i32 0, i32 1
  %141 = load float, ptr %imag152, align 4, !tbaa !29
  %142 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul153 = fmul float %141, %142
  %143 = call float @llvm.fmuladd.f32(float %138, float %139, float %mul153)
  %144 = load float, ptr %temp, align 4, !tbaa !20
  %div154 = fdiv float %143, %144
  %145 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %real155 = getelementptr inbounds %struct.scomplex, ptr %145, i32 0, i32 0
  store float %div154, ptr %real155, align 4, !tbaa !27
  %146 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %imag156 = getelementptr inbounds %struct.scomplex, ptr %146, i32 0, i32 1
  %147 = load float, ptr %imag156, align 4, !tbaa !29
  %148 = load float, ptr %ar_s, align 4, !tbaa !20
  %149 = load float, ptr %yrt, align 4, !tbaa !20
  %150 = load float, ptr %ai_s, align 4, !tbaa !20
  %mul158 = fmul float %149, %150
  %neg = fneg float %mul158
  %151 = call float @llvm.fmuladd.f32(float %147, float %148, float %neg)
  %152 = load float, ptr %temp, align 4, !tbaa !20
  %div159 = fdiv float %151, %152
  %153 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %imag160 = getelementptr inbounds %struct.scomplex, ptr %153, i32 0, i32 1
  store float %div159, ptr %imag160, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %yrt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ai_s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ar_s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  %154 = load i32, ptr %m_behind, align 4, !tbaa !4
  %155 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %156 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %157 = load ptr, ptr %c01, align 8, !tbaa !19
  %158 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %159 = load ptr, ptr %a12t, align 8, !tbaa !19
  %160 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %161 = load ptr, ptr %C02, align 8, !tbaa !19
  %162 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %163 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_cger(i32 noundef 500, i32 noundef 500, i32 noundef %154, i32 noundef %155, ptr noundef %156, ptr noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef %160, ptr noundef %161, i32 noundef %162, i32 noundef %163)
  %164 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %165 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %166 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %167 = load ptr, ptr %a12t, align 8, !tbaa !19
  %168 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %169 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %170 = load ptr, ptr %c12t, align 8, !tbaa !19
  %171 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_caxpysv(i32 noundef %164, ptr noundef %165, ptr noundef %166, ptr noundef %167, i32 noundef %168, ptr noundef %169, ptr noundef %170, i32 noundef %171)
  %172 = load i32, ptr %m_behind, align 4, !tbaa !4
  %173 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %174 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %175 = load ptr, ptr %A02, align 8, !tbaa !19
  %176 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %177 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %178 = load ptr, ptr %c01, align 8, !tbaa !19
  %179 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %180 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %181 = load ptr, ptr %c12t, align 8, !tbaa !19
  %182 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_cgemv(i32 noundef 101, i32 noundef 501, i32 noundef %172, i32 noundef %173, ptr noundef %174, ptr noundef %175, i32 noundef %176, i32 noundef %177, ptr noundef %178, i32 noundef %179, ptr noundef %180, ptr noundef %181, i32 noundef %182)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %omega) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %W00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %C02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end141
  %183 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %183, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @FLA_Lyap_h_opz_var2(i32 noundef %m_AC, ptr noundef %buff_sgn, ptr noundef %buff_A, i32 noundef %rs_A, i32 noundef %cs_A, ptr noundef %buff_W, i32 noundef %rs_W, i32 noundef %cs_W, ptr noundef %buff_C, i32 noundef %rs_C, i32 noundef %cs_C) #0 {
entry:
  %m_AC.addr = alloca i32, align 4
  %buff_sgn.addr = alloca ptr, align 8
  %buff_A.addr = alloca ptr, align 8
  %rs_A.addr = alloca i32, align 4
  %cs_A.addr = alloca i32, align 4
  %buff_W.addr = alloca ptr, align 8
  %rs_W.addr = alloca i32, align 4
  %cs_W.addr = alloca i32, align 4
  %buff_C.addr = alloca ptr, align 8
  %rs_C.addr = alloca i32, align 4
  %cs_C.addr = alloca i32, align 4
  %buff_1 = alloca ptr, align 8
  %buff_m1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %A00 = alloca ptr, align 8
  %a01 = alloca ptr, align 8
  %alpha11 = alloca ptr, align 8
  %A02 = alloca ptr, align 8
  %a12t = alloca ptr, align 8
  %c01 = alloca ptr, align 8
  %gamma11 = alloca ptr, align 8
  %C02 = alloca ptr, align 8
  %c12t = alloca ptr, align 8
  %W00 = alloca ptr, align 8
  %omega = alloca %struct.dcomplex, align 8
  %m_behind = alloca i32, align 4
  %m_ahead = alloca i32, align 4
  %s = alloca double, align 8
  %ar_s = alloca double, align 8
  %ai_s = alloca double, align 8
  %yrt = alloca double, align 8
  %temp = alloca double, align 8
  store i32 %m_AC, ptr %m_AC.addr, align 4, !tbaa !4
  store ptr %buff_sgn, ptr %buff_sgn.addr, align 8, !tbaa !19
  store ptr %buff_A, ptr %buff_A.addr, align 8, !tbaa !19
  store i32 %rs_A, ptr %rs_A.addr, align 4, !tbaa !4
  store i32 %cs_A, ptr %cs_A.addr, align 4, !tbaa !4
  store ptr %buff_W, ptr %buff_W.addr, align 8, !tbaa !19
  store i32 %rs_W, ptr %rs_W.addr, align 4, !tbaa !4
  store i32 %cs_W, ptr %cs_W.addr, align 4, !tbaa !4
  store ptr %buff_C, ptr %buff_C.addr, align 8, !tbaa !19
  store i32 %rs_C, ptr %rs_C.addr, align 4, !tbaa !4
  store i32 %cs_C, ptr %cs_C.addr, align 4, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  %24 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %25 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %26 = load ptr, ptr %buff_sgn.addr, align 8, !tbaa !19
  %27 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %28 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %29 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_zscalm(i32 noundef 500, i32 noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29)
  store i32 0, ptr %i, align 4, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end18
  %30 = load i32, ptr %i, align 4, !tbaa !4
  %31 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %cmp20 = icmp slt i32 %30, %31
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %A00) #4
  %32 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %33 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul21 = mul nsw i32 0, %33
  %idx.ext = sext i32 %mul21 to i64
  %add.ptr22 = getelementptr inbounds %struct.dcomplex, ptr %32, i64 %idx.ext
  %34 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul23 = mul nsw i32 0, %34
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr22, i64 %idx.ext24
  store ptr %add.ptr25, ptr %A00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a01) #4
  %35 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %36 = load i32, ptr %i, align 4, !tbaa !4
  %37 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul26 = mul nsw i32 %36, %37
  %idx.ext27 = sext i32 %mul26 to i64
  %add.ptr28 = getelementptr inbounds %struct.dcomplex, ptr %35, i64 %idx.ext27
  %38 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul29 = mul nsw i32 0, %38
  %idx.ext30 = sext i32 %mul29 to i64
  %add.ptr31 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr28, i64 %idx.ext30
  store ptr %add.ptr31, ptr %a01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha11) #4
  %39 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %40 = load i32, ptr %i, align 4, !tbaa !4
  %41 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul32 = mul nsw i32 %40, %41
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds %struct.dcomplex, ptr %39, i64 %idx.ext33
  %42 = load i32, ptr %i, align 4, !tbaa !4
  %43 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul35 = mul nsw i32 %42, %43
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr34, i64 %idx.ext36
  store ptr %add.ptr37, ptr %alpha11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %A02) #4
  %44 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %45 = load i32, ptr %i, align 4, !tbaa !4
  %add = add nsw i32 %45, 1
  %46 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul38 = mul nsw i32 %add, %46
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds %struct.dcomplex, ptr %44, i64 %idx.ext39
  %47 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul41 = mul nsw i32 0, %47
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr40, i64 %idx.ext42
  store ptr %add.ptr43, ptr %A02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %a12t) #4
  %48 = load ptr, ptr %buff_A.addr, align 8, !tbaa !19
  %49 = load i32, ptr %i, align 4, !tbaa !4
  %add44 = add nsw i32 %49, 1
  %50 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %mul45 = mul nsw i32 %add44, %50
  %idx.ext46 = sext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds %struct.dcomplex, ptr %48, i64 %idx.ext46
  %51 = load i32, ptr %i, align 4, !tbaa !4
  %52 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %mul48 = mul nsw i32 %51, %52
  %idx.ext49 = sext i32 %mul48 to i64
  %add.ptr50 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr47, i64 %idx.ext49
  store ptr %add.ptr50, ptr %a12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c01) #4
  %53 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %54 = load i32, ptr %i, align 4, !tbaa !4
  %55 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul51 = mul nsw i32 %54, %55
  %idx.ext52 = sext i32 %mul51 to i64
  %add.ptr53 = getelementptr inbounds %struct.dcomplex, ptr %53, i64 %idx.ext52
  %56 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul54 = mul nsw i32 0, %56
  %idx.ext55 = sext i32 %mul54 to i64
  %add.ptr56 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr53, i64 %idx.ext55
  store ptr %add.ptr56, ptr %c01, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma11) #4
  %57 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %58 = load i32, ptr %i, align 4, !tbaa !4
  %59 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul57 = mul nsw i32 %58, %59
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds %struct.dcomplex, ptr %57, i64 %idx.ext58
  %60 = load i32, ptr %i, align 4, !tbaa !4
  %61 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul60 = mul nsw i32 %60, %61
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr59, i64 %idx.ext61
  store ptr %add.ptr62, ptr %gamma11, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %C02) #4
  %62 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %63 = load i32, ptr %i, align 4, !tbaa !4
  %add63 = add nsw i32 %63, 1
  %64 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul64 = mul nsw i32 %add63, %64
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds %struct.dcomplex, ptr %62, i64 %idx.ext65
  %65 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul67 = mul nsw i32 0, %65
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr66, i64 %idx.ext68
  store ptr %add.ptr69, ptr %C02, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %c12t) #4
  %66 = load ptr, ptr %buff_C.addr, align 8, !tbaa !19
  %67 = load i32, ptr %i, align 4, !tbaa !4
  %add70 = add nsw i32 %67, 1
  %68 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  %mul71 = mul nsw i32 %add70, %68
  %idx.ext72 = sext i32 %mul71 to i64
  %add.ptr73 = getelementptr inbounds %struct.dcomplex, ptr %66, i64 %idx.ext72
  %69 = load i32, ptr %i, align 4, !tbaa !4
  %70 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %mul74 = mul nsw i32 %69, %70
  %idx.ext75 = sext i32 %mul74 to i64
  %add.ptr76 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr73, i64 %idx.ext75
  store ptr %add.ptr76, ptr %c12t, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %W00) #4
  %71 = load ptr, ptr %buff_W.addr, align 8, !tbaa !19
  %72 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %mul77 = mul nsw i32 0, %72
  %idx.ext78 = sext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds %struct.dcomplex, ptr %71, i64 %idx.ext78
  %73 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %mul80 = mul nsw i32 0, %73
  %idx.ext81 = sext i32 %mul80 to i64
  %add.ptr82 = getelementptr inbounds %struct.dcomplex, ptr %add.ptr79, i64 %idx.ext81
  store ptr %add.ptr82, ptr %W00, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr %omega) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_behind) #4
  %74 = load i32, ptr %i, align 4, !tbaa !4
  store i32 %74, ptr %m_behind, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m_ahead) #4
  %75 = load i32, ptr %m_AC.addr, align 4, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !4
  %sub = sub nsw i32 %75, %76
  %sub83 = sub nsw i32 %sub, 1
  store i32 %sub83, ptr %m_ahead, align 4, !tbaa !4
  %77 = load i32, ptr %m_behind, align 4, !tbaa !4
  %78 = load i32, ptr %m_behind, align 4, !tbaa !4
  %79 = load ptr, ptr %A00, align 8, !tbaa !19
  %80 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %81 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %82 = load ptr, ptr %W00, align 8, !tbaa !19
  %83 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %84 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_zcopymrt(i32 noundef 201, i32 noundef 100, i32 noundef %77, i32 noundef %78, ptr noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83, i32 noundef %84)
  %85 = load i32, ptr %m_behind, align 4, !tbaa !4
  %86 = load i32, ptr %m_behind, align 4, !tbaa !4
  %87 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %88 = load ptr, ptr %W00, align 8, !tbaa !19
  %89 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %90 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  call void @bl1_zshiftdiag(i32 noundef 501, i32 noundef 0, i32 noundef %85, i32 noundef %86, ptr noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90)
  %91 = load i32, ptr %m_behind, align 4, !tbaa !4
  %92 = load ptr, ptr %W00, align 8, !tbaa !19
  %93 = load i32, ptr %rs_W.addr, align 4, !tbaa !4
  %94 = load i32, ptr %cs_W.addr, align 4, !tbaa !4
  %95 = load ptr, ptr %c01, align 8, !tbaa !19
  %96 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  call void @bl1_ztrsv(i32 noundef 201, i32 noundef 103, i32 noundef 400, i32 noundef %91, ptr noundef %92, i32 noundef %93, i32 noundef %94, ptr noundef %95, i32 noundef %96)
  %97 = load i32, ptr %m_behind, align 4, !tbaa !4
  %98 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %99 = load ptr, ptr %a01, align 8, !tbaa !19
  %100 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %101 = load ptr, ptr %c01, align 8, !tbaa !19
  %102 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %103 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %104 = load ptr, ptr %gamma11, align 8, !tbaa !19
  call void @bl1_zdot2s(i32 noundef 501, i32 noundef %97, ptr noundef %98, ptr noundef %99, i32 noundef %100, ptr noundef %101, i32 noundef %102, ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real = getelementptr inbounds %struct.dcomplex, ptr %105, i32 0, i32 0
  %106 = load double, ptr %real, align 8, !tbaa !31
  %real84 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  store double %106, ptr %real84, align 8, !tbaa !31
  %107 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag = getelementptr inbounds %struct.dcomplex, ptr %107, i32 0, i32 1
  %108 = load double, ptr %imag, align 8, !tbaa !33
  %mul85 = fmul double -1.000000e+00, %108
  %imag86 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  store double %mul85, ptr %imag86, align 8, !tbaa !33
  %109 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %real87 = getelementptr inbounds %struct.dcomplex, ptr %109, i32 0, i32 0
  %110 = load double, ptr %real87, align 8, !tbaa !31
  %real88 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %111 = load double, ptr %real88, align 8, !tbaa !31
  %add89 = fadd double %110, %111
  %real90 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  store double %add89, ptr %real90, align 8, !tbaa !31
  %112 = load ptr, ptr %alpha11, align 8, !tbaa !19
  %imag91 = getelementptr inbounds %struct.dcomplex, ptr %112, i32 0, i32 1
  %113 = load double, ptr %imag91, align 8, !tbaa !33
  %imag92 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %114 = load double, ptr %imag92, align 8, !tbaa !33
  %add93 = fadd double %113, %114
  %imag94 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  store double %add93, ptr %imag94, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %real95 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %115 = load double, ptr %real95, align 8, !tbaa !31
  %cmp96 = fcmp ole double %115, 0.000000e+00
  br i1 %cmp96, label %cond.true97, label %cond.false99

cond.true97:                                      ; preds = %for.body
  %real98 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %116 = load double, ptr %real98, align 8, !tbaa !31
  %fneg = fneg double %116
  br label %cond.end101

cond.false99:                                     ; preds = %for.body
  %real100 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %117 = load double, ptr %real100, align 8, !tbaa !31
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false99, %cond.true97
  %cond102 = phi double [ %fneg, %cond.true97 ], [ %117, %cond.false99 ]
  %imag103 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %118 = load double, ptr %imag103, align 8, !tbaa !33
  %cmp104 = fcmp ole double %118, 0.000000e+00
  br i1 %cmp104, label %cond.true105, label %cond.false108

cond.true105:                                     ; preds = %cond.end101
  %imag106 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %119 = load double, ptr %imag106, align 8, !tbaa !33
  %fneg107 = fneg double %119
  br label %cond.end110

cond.false108:                                    ; preds = %cond.end101
  %imag109 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %120 = load double, ptr %imag109, align 8, !tbaa !33
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false108, %cond.true105
  %cond111 = phi double [ %fneg107, %cond.true105 ], [ %120, %cond.false108 ]
  %cmp112 = fcmp ogt double %cond102, %cond111
  br i1 %cmp112, label %cond.true113, label %cond.false123

cond.true113:                                     ; preds = %cond.end110
  %real114 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %121 = load double, ptr %real114, align 8, !tbaa !31
  %cmp115 = fcmp ole double %121, 0.000000e+00
  br i1 %cmp115, label %cond.true116, label %cond.false119

cond.true116:                                     ; preds = %cond.true113
  %real117 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %122 = load double, ptr %real117, align 8, !tbaa !31
  %fneg118 = fneg double %122
  br label %cond.end121

cond.false119:                                    ; preds = %cond.true113
  %real120 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %123 = load double, ptr %real120, align 8, !tbaa !31
  br label %cond.end121

cond.end121:                                      ; preds = %cond.false119, %cond.true116
  %cond122 = phi double [ %fneg118, %cond.true116 ], [ %123, %cond.false119 ]
  br label %cond.end133

cond.false123:                                    ; preds = %cond.end110
  %imag124 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %124 = load double, ptr %imag124, align 8, !tbaa !33
  %cmp125 = fcmp ole double %124, 0.000000e+00
  br i1 %cmp125, label %cond.true126, label %cond.false129

cond.true126:                                     ; preds = %cond.false123
  %imag127 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %125 = load double, ptr %imag127, align 8, !tbaa !33
  %fneg128 = fneg double %125
  br label %cond.end131

cond.false129:                                    ; preds = %cond.false123
  %imag130 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %126 = load double, ptr %imag130, align 8, !tbaa !33
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false129, %cond.true126
  %cond132 = phi double [ %fneg128, %cond.true126 ], [ %126, %cond.false129 ]
  br label %cond.end133

cond.end133:                                      ; preds = %cond.end131, %cond.end121
  %cond134 = phi double [ %cond122, %cond.end121 ], [ %cond132, %cond.end131 ]
  store double %cond134, ptr %s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ar_s) #4
  %real135 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %127 = load double, ptr %real135, align 8, !tbaa !31
  %128 = load double, ptr %s, align 8, !tbaa !24
  %div = fdiv double %127, %128
  store double %div, ptr %ar_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai_s) #4
  %imag136 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %129 = load double, ptr %imag136, align 8, !tbaa !33
  %130 = load double, ptr %s, align 8, !tbaa !24
  %div137 = fdiv double %129, %130
  store double %div137, ptr %ai_s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %yrt) #4
  %131 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %real138 = getelementptr inbounds %struct.dcomplex, ptr %131, i32 0, i32 0
  %132 = load double, ptr %real138, align 8, !tbaa !31
  store double %132, ptr %yrt, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  %133 = load double, ptr %ar_s, align 8, !tbaa !24
  %real139 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 0
  %134 = load double, ptr %real139, align 8, !tbaa !31
  %135 = load double, ptr %ai_s, align 8, !tbaa !24
  %imag141 = getelementptr inbounds %struct.dcomplex, ptr %omega, i32 0, i32 1
  %136 = load double, ptr %imag141, align 8, !tbaa !33
  %mul142 = fmul double %135, %136
  %137 = call double @llvm.fmuladd.f64(double %133, double %134, double %mul142)
  store double %137, ptr %temp, align 8, !tbaa !24
  %138 = load double, ptr %yrt, align 8, !tbaa !24
  %139 = load double, ptr %ar_s, align 8, !tbaa !24
  %140 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %imag144 = getelementptr inbounds %struct.dcomplex, ptr %140, i32 0, i32 1
  %141 = load double, ptr %imag144, align 8, !tbaa !33
  %142 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul145 = fmul double %141, %142
  %143 = call double @llvm.fmuladd.f64(double %138, double %139, double %mul145)
  %144 = load double, ptr %temp, align 8, !tbaa !24
  %div146 = fdiv double %143, %144
  %145 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %real147 = getelementptr inbounds %struct.dcomplex, ptr %145, i32 0, i32 0
  store double %div146, ptr %real147, align 8, !tbaa !31
  %146 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %imag148 = getelementptr inbounds %struct.dcomplex, ptr %146, i32 0, i32 1
  %147 = load double, ptr %imag148, align 8, !tbaa !33
  %148 = load double, ptr %ar_s, align 8, !tbaa !24
  %149 = load double, ptr %yrt, align 8, !tbaa !24
  %150 = load double, ptr %ai_s, align 8, !tbaa !24
  %mul150 = fmul double %149, %150
  %neg = fneg double %mul150
  %151 = call double @llvm.fmuladd.f64(double %147, double %148, double %neg)
  %152 = load double, ptr %temp, align 8, !tbaa !24
  %div151 = fdiv double %151, %152
  %153 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %imag152 = getelementptr inbounds %struct.dcomplex, ptr %153, i32 0, i32 1
  store double %div151, ptr %imag152, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %yrt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai_s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ar_s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  %154 = load i32, ptr %m_behind, align 4, !tbaa !4
  %155 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %156 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %157 = load ptr, ptr %c01, align 8, !tbaa !19
  %158 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %159 = load ptr, ptr %a12t, align 8, !tbaa !19
  %160 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %161 = load ptr, ptr %C02, align 8, !tbaa !19
  %162 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %163 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_zger(i32 noundef 500, i32 noundef 500, i32 noundef %154, i32 noundef %155, ptr noundef %156, ptr noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef %160, ptr noundef %161, i32 noundef %162, i32 noundef %163)
  %164 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %165 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %166 = load ptr, ptr %gamma11, align 8, !tbaa !19
  %167 = load ptr, ptr %a12t, align 8, !tbaa !19
  %168 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %169 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %170 = load ptr, ptr %c12t, align 8, !tbaa !19
  %171 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_zaxpysv(i32 noundef %164, ptr noundef %165, ptr noundef %166, ptr noundef %167, i32 noundef %168, ptr noundef %169, ptr noundef %170, i32 noundef %171)
  %172 = load i32, ptr %m_behind, align 4, !tbaa !4
  %173 = load i32, ptr %m_ahead, align 4, !tbaa !4
  %174 = load ptr, ptr %buff_m1, align 8, !tbaa !19
  %175 = load ptr, ptr %A02, align 8, !tbaa !19
  %176 = load i32, ptr %rs_A.addr, align 4, !tbaa !4
  %177 = load i32, ptr %cs_A.addr, align 4, !tbaa !4
  %178 = load ptr, ptr %c01, align 8, !tbaa !19
  %179 = load i32, ptr %rs_C.addr, align 4, !tbaa !4
  %180 = load ptr, ptr %buff_1, align 8, !tbaa !19
  %181 = load ptr, ptr %c12t, align 8, !tbaa !19
  %182 = load i32, ptr %cs_C.addr, align 4, !tbaa !4
  call void @bl1_zgemv(i32 noundef 101, i32 noundef 501, i32 noundef %172, i32 noundef %173, ptr noundef %174, ptr noundef %175, i32 noundef %176, i32 noundef %177, ptr noundef %178, i32 noundef %179, ptr noundef %180, ptr noundef %181, i32 noundef %182)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_ahead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m_behind) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %omega) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %W00) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %C02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a12t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A02) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha11) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a01) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %A00) #4
  br label %for.inc

for.inc:                                          ; preds = %cond.end133
  %183 = load i32, ptr %i, align 4, !tbaa !4
  %inc = add nsw i32 %183, 1
  store i32 %inc, ptr %i, align 4, !tbaa !4
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_m1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %buff_1) #4
  ret i32 -1
}

declare i32 @FLA_Obj_free(ptr noundef) #2

declare void @bl1_sscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_scopymrt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_sshiftdiag(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_strsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_sger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_saxpysv(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_sgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_dcopymrt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_dshiftdiag(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_dtrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_ddot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @bl1_dger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_daxpysv(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_dgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_ccopymrt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_cshiftdiag(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_ctrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @bl1_cger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_caxpysv(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_cgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zscalm(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_zcopymrt(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_zshiftdiag(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_ztrsv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zdot2s(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @bl1_zger(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare void @bl1_zaxpysv(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @bl1_zgemv(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!27 = !{!28, !21, i64 0}
!28 = !{!"scomplex", !21, i64 0, !21, i64 4}
!29 = !{!28, !21, i64 4}
!30 = distinct !{!30, !23}
!31 = !{!32, !25, i64 0}
!32 = !{!"dcomplex", !25, i64 0, !25, i64 8}
!33 = !{!32, !25, i64 8}
!34 = distinct !{!34, !23}
