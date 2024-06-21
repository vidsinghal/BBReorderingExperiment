; ModuleID = 'samples/998.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/dec/bsvd/v/flamec/FLA_Bsvd_find_converged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.FLA_Obj_struct = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bsvd_find_converged(ptr noundef byval(%struct.FLA_Obj_view) align 8 %tol, ptr noundef byval(%struct.FLA_Obj_view) align 8 %d, ptr noundef byval(%struct.FLA_Obj_view) align 8 %e, ptr noundef byval(%struct.FLA_Obj_view) align 8 %sminl) #0 {
entry:
  %datatype = alloca i32, align 4
  %m_A = alloca i32, align 4
  %inc_d = alloca i32, align 4
  %inc_e = alloca i32, align 4
  %buff_tol = alloca ptr, align 8
  %buff_d = alloca ptr, align 8
  %buff_e = alloca ptr, align 8
  %buff_sminl = alloca ptr, align 8
  %buff_tol87 = alloca ptr, align 8
  %buff_d111 = alloca ptr, align 8
  %buff_e135 = alloca ptr, align 8
  %buff_sminl159 = alloca ptr, align 8
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  store i32 %call, ptr %datatype, align 4
  %call1 = call i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %m_A, align 4
  %call2 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %d)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %inc_d, align 4
  %call4 = call i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8 %e)
  %conv5 = trunc i64 %call4 to i32
  store i32 %conv5, ptr %inc_e, align 4
  %0 = load i32, ptr %datatype, align 4
  switch i32 %0, label %sw.epilog [
    i32 100, label %sw.bb
    i32 101, label %sw.bb86
  ]

sw.bb:                                            ; preds = %entry
  %base = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %1 = load ptr, ptr %base, align 8
  %datatype6 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %datatype6, align 8
  %cmp = icmp eq i32 %2, 105
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %base8 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %3 = load ptr, ptr %base8, align 8
  %buffer = getelementptr inbounds %struct.FLA_Obj_struct, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %base9 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %5 = load ptr, ptr %base9, align 8
  %buffer10 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %buffer10, align 8
  %offn = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 1
  %7 = load i64, ptr %offn, align 8
  %base11 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %8 = load ptr, ptr %base11, align 8
  %cs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %8, i32 0, i32 5
  %9 = load i64, ptr %cs, align 8
  %mul = mul i64 %7, %9
  %add.ptr12 = getelementptr inbounds float, ptr %6, i64 %mul
  %offm = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 0
  %10 = load i64, ptr %offm, align 8
  %base13 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %11 = load ptr, ptr %base13, align 8
  %rs = getelementptr inbounds %struct.FLA_Obj_struct, ptr %11, i32 0, i32 4
  %12 = load i64, ptr %rs, align 8
  %mul14 = mul i64 %10, %12
  %add.ptr15 = getelementptr inbounds float, ptr %add.ptr12, i64 %mul14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr15, %cond.false ]
  store ptr %cond, ptr %buff_tol, align 8
  %base16 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %13 = load ptr, ptr %base16, align 8
  %datatype17 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %datatype17, align 8
  %cmp18 = icmp eq i32 %14, 105
  br i1 %cmp18, label %cond.true20, label %cond.false24

cond.true20:                                      ; preds = %cond.end
  %base21 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %15 = load ptr, ptr %base21, align 8
  %buffer22 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %buffer22, align 8
  %add.ptr23 = getelementptr inbounds i8, ptr %16, i64 8
  br label %cond.end37

cond.false24:                                     ; preds = %cond.end
  %base25 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %17 = load ptr, ptr %base25, align 8
  %buffer26 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %buffer26, align 8
  %offn27 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 1
  %19 = load i64, ptr %offn27, align 8
  %base28 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %20 = load ptr, ptr %base28, align 8
  %cs29 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %cs29, align 8
  %mul30 = mul i64 %19, %21
  %add.ptr31 = getelementptr inbounds float, ptr %18, i64 %mul30
  %offm32 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 0
  %22 = load i64, ptr %offm32, align 8
  %base33 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %23 = load ptr, ptr %base33, align 8
  %rs34 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %23, i32 0, i32 4
  %24 = load i64, ptr %rs34, align 8
  %mul35 = mul i64 %22, %24
  %add.ptr36 = getelementptr inbounds float, ptr %add.ptr31, i64 %mul35
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false24, %cond.true20
  %cond38 = phi ptr [ %add.ptr23, %cond.true20 ], [ %add.ptr36, %cond.false24 ]
  store ptr %cond38, ptr %buff_d, align 8
  %base39 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %25 = load ptr, ptr %base39, align 8
  %datatype40 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %datatype40, align 8
  %cmp41 = icmp eq i32 %26, 105
  br i1 %cmp41, label %cond.true43, label %cond.false47

cond.true43:                                      ; preds = %cond.end37
  %base44 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %27 = load ptr, ptr %base44, align 8
  %buffer45 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %buffer45, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %28, i64 8
  br label %cond.end60

cond.false47:                                     ; preds = %cond.end37
  %base48 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %29 = load ptr, ptr %base48, align 8
  %buffer49 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %buffer49, align 8
  %offn50 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 1
  %31 = load i64, ptr %offn50, align 8
  %base51 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %32 = load ptr, ptr %base51, align 8
  %cs52 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %32, i32 0, i32 5
  %33 = load i64, ptr %cs52, align 8
  %mul53 = mul i64 %31, %33
  %add.ptr54 = getelementptr inbounds float, ptr %30, i64 %mul53
  %offm55 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 0
  %34 = load i64, ptr %offm55, align 8
  %base56 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %35 = load ptr, ptr %base56, align 8
  %rs57 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %35, i32 0, i32 4
  %36 = load i64, ptr %rs57, align 8
  %mul58 = mul i64 %34, %36
  %add.ptr59 = getelementptr inbounds float, ptr %add.ptr54, i64 %mul58
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false47, %cond.true43
  %cond61 = phi ptr [ %add.ptr46, %cond.true43 ], [ %add.ptr59, %cond.false47 ]
  store ptr %cond61, ptr %buff_e, align 8
  %base62 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %37 = load ptr, ptr %base62, align 8
  %datatype63 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %datatype63, align 8
  %cmp64 = icmp eq i32 %38, 105
  br i1 %cmp64, label %cond.true66, label %cond.false70

cond.true66:                                      ; preds = %cond.end60
  %base67 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %39 = load ptr, ptr %base67, align 8
  %buffer68 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %buffer68, align 8
  %add.ptr69 = getelementptr inbounds i8, ptr %40, i64 8
  br label %cond.end83

cond.false70:                                     ; preds = %cond.end60
  %base71 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %41 = load ptr, ptr %base71, align 8
  %buffer72 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %buffer72, align 8
  %offn73 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 1
  %43 = load i64, ptr %offn73, align 8
  %base74 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %44 = load ptr, ptr %base74, align 8
  %cs75 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %44, i32 0, i32 5
  %45 = load i64, ptr %cs75, align 8
  %mul76 = mul i64 %43, %45
  %add.ptr77 = getelementptr inbounds float, ptr %42, i64 %mul76
  %offm78 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 0
  %46 = load i64, ptr %offm78, align 8
  %base79 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %47 = load ptr, ptr %base79, align 8
  %rs80 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %rs80, align 8
  %mul81 = mul i64 %46, %48
  %add.ptr82 = getelementptr inbounds float, ptr %add.ptr77, i64 %mul81
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false70, %cond.true66
  %cond84 = phi ptr [ %add.ptr69, %cond.true66 ], [ %add.ptr82, %cond.false70 ]
  store ptr %cond84, ptr %buff_sminl, align 8
  %49 = load i32, ptr %m_A, align 4
  %50 = load ptr, ptr %buff_tol, align 8
  %51 = load float, ptr %50, align 4
  %52 = load ptr, ptr %buff_d, align 8
  %53 = load i32, ptr %inc_d, align 4
  %54 = load ptr, ptr %buff_e, align 8
  %55 = load i32, ptr %inc_e, align 4
  %56 = load ptr, ptr %buff_sminl, align 8
  %call85 = call i32 @FLA_Bsvd_find_converged_ops(i32 noundef %49, float noundef %51, ptr noundef %52, i32 noundef %53, ptr noundef %54, i32 noundef %55, ptr noundef %56)
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  %base88 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %57 = load ptr, ptr %base88, align 8
  %datatype89 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %57, i32 0, i32 0
  %58 = load i32, ptr %datatype89, align 8
  %cmp90 = icmp eq i32 %58, 105
  br i1 %cmp90, label %cond.true92, label %cond.false96

cond.true92:                                      ; preds = %sw.bb86
  %base93 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %59 = load ptr, ptr %base93, align 8
  %buffer94 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %buffer94, align 8
  %add.ptr95 = getelementptr inbounds i8, ptr %60, i64 16
  br label %cond.end109

cond.false96:                                     ; preds = %sw.bb86
  %base97 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %61 = load ptr, ptr %base97, align 8
  %buffer98 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %buffer98, align 8
  %offn99 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 1
  %63 = load i64, ptr %offn99, align 8
  %base100 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %64 = load ptr, ptr %base100, align 8
  %cs101 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %64, i32 0, i32 5
  %65 = load i64, ptr %cs101, align 8
  %mul102 = mul i64 %63, %65
  %add.ptr103 = getelementptr inbounds double, ptr %62, i64 %mul102
  %offm104 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 0
  %66 = load i64, ptr %offm104, align 8
  %base105 = getelementptr inbounds %struct.FLA_Obj_view, ptr %tol, i32 0, i32 6
  %67 = load ptr, ptr %base105, align 8
  %rs106 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %67, i32 0, i32 4
  %68 = load i64, ptr %rs106, align 8
  %mul107 = mul i64 %66, %68
  %add.ptr108 = getelementptr inbounds double, ptr %add.ptr103, i64 %mul107
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false96, %cond.true92
  %cond110 = phi ptr [ %add.ptr95, %cond.true92 ], [ %add.ptr108, %cond.false96 ]
  store ptr %cond110, ptr %buff_tol87, align 8
  %base112 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %69 = load ptr, ptr %base112, align 8
  %datatype113 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %69, i32 0, i32 0
  %70 = load i32, ptr %datatype113, align 8
  %cmp114 = icmp eq i32 %70, 105
  br i1 %cmp114, label %cond.true116, label %cond.false120

cond.true116:                                     ; preds = %cond.end109
  %base117 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %71 = load ptr, ptr %base117, align 8
  %buffer118 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %buffer118, align 8
  %add.ptr119 = getelementptr inbounds i8, ptr %72, i64 16
  br label %cond.end133

cond.false120:                                    ; preds = %cond.end109
  %base121 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %73 = load ptr, ptr %base121, align 8
  %buffer122 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %buffer122, align 8
  %offn123 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 1
  %75 = load i64, ptr %offn123, align 8
  %base124 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %76 = load ptr, ptr %base124, align 8
  %cs125 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %76, i32 0, i32 5
  %77 = load i64, ptr %cs125, align 8
  %mul126 = mul i64 %75, %77
  %add.ptr127 = getelementptr inbounds double, ptr %74, i64 %mul126
  %offm128 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 0
  %78 = load i64, ptr %offm128, align 8
  %base129 = getelementptr inbounds %struct.FLA_Obj_view, ptr %d, i32 0, i32 6
  %79 = load ptr, ptr %base129, align 8
  %rs130 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %79, i32 0, i32 4
  %80 = load i64, ptr %rs130, align 8
  %mul131 = mul i64 %78, %80
  %add.ptr132 = getelementptr inbounds double, ptr %add.ptr127, i64 %mul131
  br label %cond.end133

cond.end133:                                      ; preds = %cond.false120, %cond.true116
  %cond134 = phi ptr [ %add.ptr119, %cond.true116 ], [ %add.ptr132, %cond.false120 ]
  store ptr %cond134, ptr %buff_d111, align 8
  %base136 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %81 = load ptr, ptr %base136, align 8
  %datatype137 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %81, i32 0, i32 0
  %82 = load i32, ptr %datatype137, align 8
  %cmp138 = icmp eq i32 %82, 105
  br i1 %cmp138, label %cond.true140, label %cond.false144

cond.true140:                                     ; preds = %cond.end133
  %base141 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %83 = load ptr, ptr %base141, align 8
  %buffer142 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %83, i32 0, i32 12
  %84 = load ptr, ptr %buffer142, align 8
  %add.ptr143 = getelementptr inbounds i8, ptr %84, i64 16
  br label %cond.end157

cond.false144:                                    ; preds = %cond.end133
  %base145 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %85 = load ptr, ptr %base145, align 8
  %buffer146 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %85, i32 0, i32 12
  %86 = load ptr, ptr %buffer146, align 8
  %offn147 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 1
  %87 = load i64, ptr %offn147, align 8
  %base148 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %88 = load ptr, ptr %base148, align 8
  %cs149 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %88, i32 0, i32 5
  %89 = load i64, ptr %cs149, align 8
  %mul150 = mul i64 %87, %89
  %add.ptr151 = getelementptr inbounds double, ptr %86, i64 %mul150
  %offm152 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 0
  %90 = load i64, ptr %offm152, align 8
  %base153 = getelementptr inbounds %struct.FLA_Obj_view, ptr %e, i32 0, i32 6
  %91 = load ptr, ptr %base153, align 8
  %rs154 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %91, i32 0, i32 4
  %92 = load i64, ptr %rs154, align 8
  %mul155 = mul i64 %90, %92
  %add.ptr156 = getelementptr inbounds double, ptr %add.ptr151, i64 %mul155
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false144, %cond.true140
  %cond158 = phi ptr [ %add.ptr143, %cond.true140 ], [ %add.ptr156, %cond.false144 ]
  store ptr %cond158, ptr %buff_e135, align 8
  %base160 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %93 = load ptr, ptr %base160, align 8
  %datatype161 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %93, i32 0, i32 0
  %94 = load i32, ptr %datatype161, align 8
  %cmp162 = icmp eq i32 %94, 105
  br i1 %cmp162, label %cond.true164, label %cond.false168

cond.true164:                                     ; preds = %cond.end157
  %base165 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %95 = load ptr, ptr %base165, align 8
  %buffer166 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %buffer166, align 8
  %add.ptr167 = getelementptr inbounds i8, ptr %96, i64 16
  br label %cond.end181

cond.false168:                                    ; preds = %cond.end157
  %base169 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %97 = load ptr, ptr %base169, align 8
  %buffer170 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %97, i32 0, i32 12
  %98 = load ptr, ptr %buffer170, align 8
  %offn171 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 1
  %99 = load i64, ptr %offn171, align 8
  %base172 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %100 = load ptr, ptr %base172, align 8
  %cs173 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %100, i32 0, i32 5
  %101 = load i64, ptr %cs173, align 8
  %mul174 = mul i64 %99, %101
  %add.ptr175 = getelementptr inbounds double, ptr %98, i64 %mul174
  %offm176 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 0
  %102 = load i64, ptr %offm176, align 8
  %base177 = getelementptr inbounds %struct.FLA_Obj_view, ptr %sminl, i32 0, i32 6
  %103 = load ptr, ptr %base177, align 8
  %rs178 = getelementptr inbounds %struct.FLA_Obj_struct, ptr %103, i32 0, i32 4
  %104 = load i64, ptr %rs178, align 8
  %mul179 = mul i64 %102, %104
  %add.ptr180 = getelementptr inbounds double, ptr %add.ptr175, i64 %mul179
  br label %cond.end181

cond.end181:                                      ; preds = %cond.false168, %cond.true164
  %cond182 = phi ptr [ %add.ptr167, %cond.true164 ], [ %add.ptr180, %cond.false168 ]
  store ptr %cond182, ptr %buff_sminl159, align 8
  %105 = load i32, ptr %m_A, align 4
  %106 = load ptr, ptr %buff_tol87, align 8
  %107 = load double, ptr %106, align 8
  %108 = load ptr, ptr %buff_d111, align 8
  %109 = load i32, ptr %inc_d, align 4
  %110 = load ptr, ptr %buff_e135, align 8
  %111 = load i32, ptr %inc_e, align 4
  %112 = load ptr, ptr %buff_sminl159, align 8
  %call183 = call i32 @FLA_Bsvd_find_converged_opd(i32 noundef %105, double noundef %107, ptr noundef %108, i32 noundef %109, ptr noundef %110, i32 noundef %111, ptr noundef %112)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %cond.end181, %cond.end83
  ret i32 -1
}

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_vector_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_vector_inc(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bsvd_find_converged_ops(i32 noundef %m_A, float noundef %tol, ptr noundef %buff_d, i32 noundef %inc_d, ptr noundef %buff_e, i32 noundef %inc_e, ptr noundef %sminl) #0 {
entry:
  %retval = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %tol.addr = alloca float, align 4
  %buff_d.addr = alloca ptr, align 8
  %inc_d.addr = alloca i32, align 4
  %buff_e.addr = alloca ptr, align 8
  %inc_e.addr = alloca i32, align 4
  %sminl.addr = alloca ptr, align 8
  %epsilon_last = alloca ptr, align 8
  %delta_last = alloca ptr, align 8
  %mu = alloca float, align 4
  %i = alloca i32, align 4
  %epsilon1 = alloca ptr, align 8
  %delta2 = alloca ptr, align 8
  store i32 %m_A, ptr %m_A.addr, align 4
  store float %tol, ptr %tol.addr, align 4
  store ptr %buff_d, ptr %buff_d.addr, align 8
  store i32 %inc_d, ptr %inc_d.addr, align 4
  store ptr %buff_e, ptr %buff_e.addr, align 8
  store i32 %inc_e, ptr %inc_e.addr, align 4
  store ptr %sminl, ptr %sminl.addr, align 8
  %0 = load ptr, ptr %buff_e.addr, align 8
  %1 = load i32, ptr %m_A.addr, align 4
  %sub = sub nsw i32 %1, 2
  %2 = load i32, ptr %inc_e.addr, align 4
  %mul = mul nsw i32 %sub, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %epsilon_last, align 8
  %3 = load ptr, ptr %buff_d.addr, align 8
  %4 = load i32, ptr %m_A.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %5 = load i32, ptr %inc_d.addr, align 4
  %mul2 = mul nsw i32 %sub1, %5
  %idx.ext3 = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds float, ptr %3, i64 %idx.ext3
  store ptr %add.ptr4, ptr %delta_last, align 8
  %6 = load ptr, ptr %epsilon_last, align 8
  %7 = load float, ptr %6, align 4
  %8 = call float @llvm.fabs.f32(float %7)
  %9 = load float, ptr %tol.addr, align 4
  %10 = load ptr, ptr %delta_last, align 8
  %11 = load float, ptr %10, align 4
  %mul5 = fmul float %9, %11
  %12 = call float @llvm.fabs.f32(float %mul5)
  %cmp = fcmp ole float %8, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %sminl.addr, align 8
  store float 0.000000e+00, ptr %13, align 4
  %14 = load i32, ptr %m_A.addr, align 4
  %sub6 = sub nsw i32 %14, 2
  store i32 %sub6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %buff_d.addr, align 8
  %16 = load float, ptr %15, align 4
  %17 = call float @llvm.fabs.f32(float %16)
  store float %17, ptr %mu, align 4
  %18 = load float, ptr %mu, align 4
  %19 = load ptr, ptr %sminl.addr, align 8
  store float %18, ptr %19, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %m_A.addr, align 4
  %sub7 = sub nsw i32 %21, 1
  %cmp8 = icmp slt i32 %20, %sub7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %buff_e.addr, align 8
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %inc_e.addr, align 4
  %mul9 = mul nsw i32 %23, %24
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds float, ptr %22, i64 %idx.ext10
  store ptr %add.ptr11, ptr %epsilon1, align 8
  %25 = load ptr, ptr %buff_d.addr, align 8
  %26 = load i32, ptr %i, align 4
  %add = add nsw i32 %26, 1
  %27 = load i32, ptr %inc_d.addr, align 4
  %mul12 = mul nsw i32 %add, %27
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds float, ptr %25, i64 %idx.ext13
  store ptr %add.ptr14, ptr %delta2, align 8
  %28 = load ptr, ptr %epsilon1, align 8
  %29 = load float, ptr %28, align 4
  %30 = call float @llvm.fabs.f32(float %29)
  %31 = load float, ptr %tol.addr, align 4
  %32 = load float, ptr %mu, align 4
  %mul15 = fmul float %31, %32
  %33 = call float @llvm.fabs.f32(float %mul15)
  %cmp16 = fcmp ole float %30, %33
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  %34 = load i32, ptr %i, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %for.body
  %35 = load ptr, ptr %delta2, align 8
  %36 = load float, ptr %35, align 4
  %37 = call float @llvm.fabs.f32(float %36)
  %38 = load float, ptr %mu, align 4
  %39 = load float, ptr %mu, align 4
  %40 = load ptr, ptr %epsilon1, align 8
  %41 = load float, ptr %40, align 4
  %42 = call float @llvm.fabs.f32(float %41)
  %add19 = fadd float %39, %42
  %div = fdiv float %38, %add19
  %mul20 = fmul float %37, %div
  store float %mul20, ptr %mu, align 4
  %43 = load ptr, ptr %sminl.addr, align 8
  %44 = load float, ptr %43, align 4
  %45 = load float, ptr %mu, align 4
  %cmp21 = fcmp olt float %44, %45
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  %46 = load ptr, ptr %sminl.addr, align 8
  %47 = load float, ptr %46, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  %48 = load float, ptr %mu, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %47, %cond.true ], [ %48, %cond.false ]
  %49 = load ptr, ptr %sminl.addr, align 8
  store float %cond, ptr %49, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %50 = load i32, ptr %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then17, %if.then
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Bsvd_find_converged_opd(i32 noundef %m_A, double noundef %tol, ptr noundef %buff_d, i32 noundef %inc_d, ptr noundef %buff_e, i32 noundef %inc_e, ptr noundef %sminl) #0 {
entry:
  %retval = alloca i32, align 4
  %m_A.addr = alloca i32, align 4
  %tol.addr = alloca double, align 8
  %buff_d.addr = alloca ptr, align 8
  %inc_d.addr = alloca i32, align 4
  %buff_e.addr = alloca ptr, align 8
  %inc_e.addr = alloca i32, align 4
  %sminl.addr = alloca ptr, align 8
  %epsilon_last = alloca ptr, align 8
  %delta_last = alloca ptr, align 8
  %mu = alloca double, align 8
  %i = alloca i32, align 4
  %epsilon1 = alloca ptr, align 8
  %delta2 = alloca ptr, align 8
  store i32 %m_A, ptr %m_A.addr, align 4
  store double %tol, ptr %tol.addr, align 8
  store ptr %buff_d, ptr %buff_d.addr, align 8
  store i32 %inc_d, ptr %inc_d.addr, align 4
  store ptr %buff_e, ptr %buff_e.addr, align 8
  store i32 %inc_e, ptr %inc_e.addr, align 4
  store ptr %sminl, ptr %sminl.addr, align 8
  %0 = load ptr, ptr %buff_e.addr, align 8
  %1 = load i32, ptr %m_A.addr, align 4
  %sub = sub nsw i32 %1, 2
  %2 = load i32, ptr %inc_e.addr, align 4
  %mul = mul nsw i32 %sub, %2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds double, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %epsilon_last, align 8
  %3 = load ptr, ptr %buff_d.addr, align 8
  %4 = load i32, ptr %m_A.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %5 = load i32, ptr %inc_d.addr, align 4
  %mul2 = mul nsw i32 %sub1, %5
  %idx.ext3 = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds double, ptr %3, i64 %idx.ext3
  store ptr %add.ptr4, ptr %delta_last, align 8
  %6 = load ptr, ptr %epsilon_last, align 8
  %7 = load double, ptr %6, align 8
  %8 = call double @llvm.fabs.f64(double %7)
  %9 = load double, ptr %tol.addr, align 8
  %10 = load ptr, ptr %delta_last, align 8
  %11 = load double, ptr %10, align 8
  %mul5 = fmul double %9, %11
  %12 = call double @llvm.fabs.f64(double %mul5)
  %cmp = fcmp ole double %8, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %sminl.addr, align 8
  store double 0.000000e+00, ptr %13, align 8
  %14 = load i32, ptr %m_A.addr, align 4
  %sub6 = sub nsw i32 %14, 2
  store i32 %sub6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %buff_d.addr, align 8
  %16 = load double, ptr %15, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  store double %17, ptr %mu, align 8
  %18 = load double, ptr %mu, align 8
  %19 = load ptr, ptr %sminl.addr, align 8
  store double %18, ptr %19, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %m_A.addr, align 4
  %sub7 = sub nsw i32 %21, 1
  %cmp8 = icmp slt i32 %20, %sub7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %buff_e.addr, align 8
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %inc_e.addr, align 4
  %mul9 = mul nsw i32 %23, %24
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds double, ptr %22, i64 %idx.ext10
  store ptr %add.ptr11, ptr %epsilon1, align 8
  %25 = load ptr, ptr %buff_d.addr, align 8
  %26 = load i32, ptr %i, align 4
  %add = add nsw i32 %26, 1
  %27 = load i32, ptr %inc_d.addr, align 4
  %mul12 = mul nsw i32 %add, %27
  %idx.ext13 = sext i32 %mul12 to i64
  %add.ptr14 = getelementptr inbounds double, ptr %25, i64 %idx.ext13
  store ptr %add.ptr14, ptr %delta2, align 8
  %28 = load ptr, ptr %epsilon1, align 8
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = load double, ptr %tol.addr, align 8
  %32 = load double, ptr %mu, align 8
  %mul15 = fmul double %31, %32
  %33 = call double @llvm.fabs.f64(double %mul15)
  %cmp16 = fcmp ole double %30, %33
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  %34 = load i32, ptr %i, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %for.body
  %35 = load ptr, ptr %delta2, align 8
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = load double, ptr %mu, align 8
  %39 = load double, ptr %mu, align 8
  %40 = load ptr, ptr %epsilon1, align 8
  %41 = load double, ptr %40, align 8
  %42 = call double @llvm.fabs.f64(double %41)
  %add19 = fadd double %39, %42
  %div = fdiv double %38, %add19
  %mul20 = fmul double %37, %div
  store double %mul20, ptr %mu, align 8
  %43 = load ptr, ptr %sminl.addr, align 8
  %44 = load double, ptr %43, align 8
  %45 = load double, ptr %mu, align 8
  %cmp21 = fcmp olt double %44, %45
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  %46 = load ptr, ptr %sminl.addr, align 8
  %47 = load double, ptr %46, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  %48 = load double, ptr %mu, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %47, %cond.true ], [ %48, %cond.false ]
  %49 = load ptr, ptr %sminl.addr, align 8
  store double %cond, ptr %49, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %50 = load i32, ptr %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then17, %if.then
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
