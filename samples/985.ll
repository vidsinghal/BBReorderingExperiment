; ModuleID = 'samples/985.bc'
source_filename = "/local-ssd/phist-dllhq4sgzwa5oksrtyhlo23ot2hlx2jn-build/aidengro/spack-stage-phist-1.12.0-dllhq4sgzwa5oksrtyhlo23ot2hlx2jn/spack-src/drivers/matfuncs/scamac/scamac_matrix_Anderson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scamac_string_st = type { i32, i32, ptr }
%struct.scamac_matrix_Anderson_params_st = type { i32, i32, i32, double, double, i32, i64, i32 }
%struct.scamac_info_st = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.scamac_matrix_Anderson_work_st = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"Lx < 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Ly < 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Lz < 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ranpot < 0\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @scamac_matrix_Anderson_check(ptr noundef %par, ptr noundef %desc) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %desc.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %str = alloca %struct.scamac_string_st, align 8
  store ptr %par, ptr %par.addr, align 8, !tbaa !5
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #5
  store i32 0, ptr %err, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %str) #5
  %1 = load ptr, ptr %desc.addr, align 8, !tbaa !5
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @scamac_string_empty(ptr noundef %str)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end3
  %2 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %Lx, align 8, !tbaa !10
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %do.body
  store i32 7, ptr %err, align 4, !tbaa !9
  %4 = load ptr, ptr %desc.addr, align 8, !tbaa !5
  %tobool5 = icmp ne ptr %4, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @scamac_string_append(ptr noundef %str, ptr noundef @.str)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body9

do.body9:                                         ; preds = %do.end
  %5 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %Ly, align 4, !tbaa !15
  %cmp10 = icmp slt i32 %6, 1
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %do.body9
  store i32 7, ptr %err, align 4, !tbaa !9
  %7 = load ptr, ptr %desc.addr, align 8, !tbaa !5
  %tobool12 = icmp ne ptr %7, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  call void @scamac_string_append(ptr noundef %str, ptr noundef @.str.1)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.body9
  br label %do.cond16

do.cond16:                                        ; preds = %if.end15
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  br label %do.body18

do.body18:                                        ; preds = %do.end17
  %8 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %Lz, align 8, !tbaa !16
  %cmp19 = icmp slt i32 %9, 1
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %do.body18
  store i32 7, ptr %err, align 4, !tbaa !9
  %10 = load ptr, ptr %desc.addr, align 8, !tbaa !5
  %tobool21 = icmp ne ptr %10, null
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  call void @scamac_string_append(ptr noundef %str, ptr noundef @.str.2)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then20
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %do.body18
  br label %do.cond25

do.cond25:                                        ; preds = %if.end24
  br label %do.end26

do.end26:                                         ; preds = %do.cond25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %11 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %ranpot = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %11, i32 0, i32 4
  %12 = load double, ptr %ranpot, align 8, !tbaa !17
  %cmp28 = fcmp nnan ninf nsz olt double %12, 0.000000e+00
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %do.body27
  store i32 7, ptr %err, align 4, !tbaa !9
  %13 = load ptr, ptr %desc.addr, align 8, !tbaa !5
  %tobool30 = icmp ne ptr %13, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then29
  call void @scamac_string_append(ptr noundef %str, ptr noundef @.str.3)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %14 = load ptr, ptr %desc.addr, align 8, !tbaa !5
  %tobool36 = icmp ne ptr %14, null
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.end35
  %call = call ptr @scamac_string_get(ptr noundef %str)
  %15 = load ptr, ptr %desc.addr, align 8, !tbaa !5
  store ptr %call, ptr %15, align 8, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end35
  %16 = load i32, ptr %err, align 4, !tbaa !9
  store i32 %16, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #5
  br label %return

return:                                           ; preds = %if.end38, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @scamac_string_empty(ptr noundef) #2

declare void @scamac_string_append(ptr noundef, ptr noundef) #2

declare ptr @scamac_string_get(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @scamac_matrix_Anderson_tables_create(ptr noundef %par, ptr noundef %tab, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %tab.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  store ptr %par, ptr %par.addr, align 8, !tbaa !5
  store ptr %tab, ptr %tab.addr, align 8, !tbaa !5
  store ptr %info, ptr %info.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tab.addr, align 8, !tbaa !5
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %tab.addr, align 8, !tbaa !5
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %if.then5, label %if.end32

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %Lx, align 8, !tbaa !10
  %conv = sext i32 %5 to i64
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow = getelementptr inbounds %struct.scamac_info_st, ptr %6, i32 0, i32 0
  store i64 %conv, ptr %nrow, align 8, !tbaa !18
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow6 = getelementptr inbounds %struct.scamac_info_st, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %nrow6, align 8, !tbaa !18
  %9 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %Ly, align 4, !tbaa !15
  %conv7 = sext i32 %10 to i64
  %call = call i64 @scamac_safe_mult(i64 noundef %8, i64 noundef %conv7)
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow8 = getelementptr inbounds %struct.scamac_info_st, ptr %11, i32 0, i32 0
  store i64 %call, ptr %nrow8, align 8, !tbaa !18
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow9 = getelementptr inbounds %struct.scamac_info_st, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %nrow9, align 8, !tbaa !18
  %cmp = icmp slt i64 %13, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then5
  store i32 8, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then5
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow13 = getelementptr inbounds %struct.scamac_info_st, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %nrow13, align 8, !tbaa !18
  %16 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %Lz, align 8, !tbaa !16
  %conv14 = sext i32 %17 to i64
  %call15 = call i64 @scamac_safe_mult(i64 noundef %15, i64 noundef %conv14)
  %18 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow16 = getelementptr inbounds %struct.scamac_info_st, ptr %18, i32 0, i32 0
  store i64 %call15, ptr %nrow16, align 8, !tbaa !18
  %19 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow17 = getelementptr inbounds %struct.scamac_info_st, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %nrow17, align 8, !tbaa !18
  %cmp18 = icmp slt i64 %20, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end12
  store i32 8, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end12
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow22 = getelementptr inbounds %struct.scamac_info_st, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %nrow22, align 8, !tbaa !18
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %ncol = getelementptr inbounds %struct.scamac_info_st, ptr %23, i32 0, i32 1
  store i64 %22, ptr %ncol, align 8, !tbaa !20
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %maxnzrow = getelementptr inbounds %struct.scamac_info_st, ptr %24, i32 0, i32 2
  store i64 7, ptr %maxnzrow, align 8, !tbaa !21
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %maxnzrow23 = getelementptr inbounds %struct.scamac_info_st, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %maxnzrow23, align 8, !tbaa !21
  %27 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %maxnzcol = getelementptr inbounds %struct.scamac_info_st, ptr %27, i32 0, i32 3
  store i64 %26, ptr %maxnzcol, align 8, !tbaa !22
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %nrow24 = getelementptr inbounds %struct.scamac_info_st, ptr %28, i32 0, i32 0
  %29 = load i64, ptr %nrow24, align 8, !tbaa !18
  %30 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %maxnzrow25 = getelementptr inbounds %struct.scamac_info_st, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %maxnzrow25, align 8, !tbaa !21
  %call26 = call i64 @scamac_safe_mult(i64 noundef %29, i64 noundef %31)
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %maxnz = getelementptr inbounds %struct.scamac_info_st, ptr %32, i32 0, i32 4
  store i64 %call26, ptr %maxnz, align 8, !tbaa !23
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %maxnz27 = getelementptr inbounds %struct.scamac_info_st, ptr %33, i32 0, i32 4
  %34 = load i64, ptr %maxnz27, align 8, !tbaa !23
  %cmp28 = icmp slt i64 %34, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end21
  store i32 8, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end21
  %35 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %valtype = getelementptr inbounds %struct.scamac_info_st, ptr %35, i32 0, i32 5
  store i32 1, ptr %valtype, align 8, !tbaa !24
  %36 = load ptr, ptr %info.addr, align 8, !tbaa !5
  %symmetry = getelementptr inbounds %struct.scamac_info_st, ptr %36, i32 0, i32 6
  store i32 2, ptr %symmetry, align 4, !tbaa !25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then30, %if.then20, %if.then11, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

declare i64 @scamac_safe_mult(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @scamac_matrix_Anderson_work_alloc(ptr noundef %par, ptr noundef %tab, ptr noundef %ws) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %tab.addr = alloca ptr, align 8
  %ws.addr = alloca ptr, align 8
  %my_ws = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %par, ptr %par.addr, align 8, !tbaa !5
  store ptr %tab, ptr %tab.addr, align 8, !tbaa !5
  store ptr %ws, ptr %ws.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %ws.addr, align 8, !tbaa !5
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %my_ws) #5
  %call = call noalias ptr @malloc(i64 noundef 8) #6
  store ptr %call, ptr %my_ws, align 8, !tbaa !5
  %2 = load ptr, ptr %my_ws, align 8, !tbaa !5
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #5
  %3 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %seed = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %3, i32 0, i32 6
  %4 = load i64, ptr %seed, align 8, !tbaa !26
  %5 = load ptr, ptr %my_ws, align 8, !tbaa !5
  %rng = getelementptr inbounds %struct.scamac_matrix_Anderson_work_st, ptr %5, i32 0, i32 0
  %call5 = call i32 @scamac_ransrc_alloc(i64 noundef %4, ptr noundef %rng)
  store i32 %call5, ptr %err, align 4, !tbaa !9
  %6 = load i32, ptr %err, align 4, !tbaa !9
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %7 = load ptr, ptr %my_ws, align 8, !tbaa !5
  call void @free(ptr noundef %7) #5
  %8 = load i32, ptr %err, align 4, !tbaa !9
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %my_ws, align 8, !tbaa !5
  %10 = load ptr, ptr %ws.addr, align 8, !tbaa !5
  store ptr %9, ptr %10, align 8, !tbaa !5
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #5
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %my_ws) #5
  br label %return

return:                                           ; preds = %cleanup9, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

declare i32 @scamac_ransrc_alloc(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @scamac_matrix_Anderson_work_free(ptr noundef %ws) #0 {
entry:
  %ws.addr = alloca ptr, align 8
  store ptr %ws, ptr %ws.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %ws.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ws.addr, align 8, !tbaa !5
  %rng = getelementptr inbounds %struct.scamac_matrix_Anderson_work_st, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %rng, align 8, !tbaa !27
  %call = call i32 @scamac_ransrc_free(ptr noundef %2)
  %3 = load ptr, ptr %ws.addr, align 8, !tbaa !5
  call void @free(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @scamac_ransrc_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @scamac_matrix_Anderson_generate_row(ptr noundef %par, ptr noundef %tab, ptr noundef %ws, i64 noundef %irow, i32 noundef %flag, ptr noundef %row) #0 {
entry:
  %retval = alloca i32, align 4
  %par.addr = alloca ptr, align 8
  %tab.addr = alloca ptr, align 8
  %ws.addr = alloca ptr, align 8
  %irow.addr = alloca i64, align 8
  %flag.addr = alloca i32, align 4
  %row.addr = alloca ptr, align 8
  %fl_keepzeros = alloca i8, align 1
  %ns = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dx = alloca i64, align 8
  %dy = alloca i64, align 8
  %dz = alloca i64, align 8
  %xo = alloca i64, align 8
  %yo = alloca i64, align 8
  %zo = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %z = alloca i64, align 8
  %val = alloca double, align 8
  %xx = alloca i64, align 8
  %idx = alloca i64, align 8
  %yy = alloca i64, align 8
  %idx128 = alloca i64, align 8
  %zz = alloca i64, align 8
  %idx192 = alloca i64, align 8
  store ptr %par, ptr %par.addr, align 8, !tbaa !5
  store ptr %tab, ptr %tab.addr, align 8, !tbaa !5
  store ptr %ws, ptr %ws.addr, align 8, !tbaa !5
  store i64 %irow, ptr %irow.addr, align 8, !tbaa !29
  store i32 %flag, ptr %flag.addr, align 4, !tbaa !30
  store ptr %row, ptr %row.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %ws.addr, align 8, !tbaa !5
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %tobool3 = icmp ne ptr %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i32, ptr %flag.addr, align 4, !tbaa !30
  %and = and i32 %3, -2
  %and4 = and i32 %and, -3
  %and5 = and i32 %and4, -5
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %fl_keepzeros) #5
  %4 = load i32, ptr %flag.addr, align 4, !tbaa !30
  %and9 = and i32 %4, 4
  %cmp = icmp ne i32 %and9, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, ptr %fl_keepzeros, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #5
  %5 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %Lx, align 8, !tbaa !10
  %7 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %Ly, align 4, !tbaa !15
  %mul = mul nsw i32 %6, %8
  %9 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %Lz, align 8, !tbaa !16
  %mul10 = mul nsw i32 %mul, %10
  %conv = sext i32 %mul10 to i64
  store i64 %conv, ptr %ns, align 8, !tbaa !29
  %11 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %cmp11 = icmp slt i64 %11, 0
  br i1 %cmp11, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end8
  %12 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %13 = load i64, ptr %ns, align 8, !tbaa !29
  %cmp14 = icmp sge i64 %12, %13
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false13, %if.end8
  store i32 4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false13
  call void @llvm.lifetime.start.p0(i64 8, ptr %dx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dz) #5
  store i64 1, ptr %dx, align 8, !tbaa !29
  %14 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx18 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %Lx18, align 8, !tbaa !10
  %conv19 = sext i32 %15 to i64
  store i64 %conv19, ptr %dy, align 8, !tbaa !29
  %16 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx20 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %Lx20, align 8, !tbaa !10
  %18 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly21 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %Ly21, align 4, !tbaa !15
  %mul22 = mul nsw i32 %17, %19
  %conv23 = sext i32 %mul22 to i64
  store i64 %conv23, ptr %dz, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %xo) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %yo) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %zo) #5
  %20 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %21 = load i64, ptr %dz, align 8, !tbaa !29
  %div = sdiv i64 %20, %21
  store i64 %div, ptr %zo, align 8, !tbaa !29
  %22 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %23 = load i64, ptr %zo, align 8, !tbaa !29
  %24 = load i64, ptr %dz, align 8, !tbaa !29
  %mul24 = mul nsw i64 %23, %24
  %sub = sub nsw i64 %22, %mul24
  %25 = load i64, ptr %dy, align 8, !tbaa !29
  %div25 = sdiv i64 %sub, %25
  store i64 %div25, ptr %yo, align 8, !tbaa !29
  %26 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %27 = load i64, ptr %zo, align 8, !tbaa !29
  %28 = load i64, ptr %dz, align 8, !tbaa !29
  %mul26 = mul nsw i64 %27, %28
  %sub27 = sub nsw i64 %26, %mul26
  %29 = load i64, ptr %yo, align 8, !tbaa !29
  %30 = load i64, ptr %dy, align 8, !tbaa !29
  %mul28 = mul nsw i64 %29, %30
  %sub29 = sub nsw i64 %sub27, %mul28
  %31 = load i64, ptr %dx, align 8, !tbaa !29
  %div30 = sdiv i64 %sub29, %31
  store i64 %div30, ptr %xo, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #5
  %32 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %sweep = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %32, i32 0, i32 7
  %33 = load i32, ptr %sweep, align 8, !tbaa !33
  %cmp31 = icmp eq i32 %33, 1
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end17
  %34 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx34 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %Lx34, align 8, !tbaa !10
  %conv35 = sext i32 %35 to i64
  %36 = load i64, ptr %xo, align 8, !tbaa !29
  %call = call i64 @back(i64 noundef %conv35, i64 noundef %36)
  store i64 %call, ptr %x, align 8, !tbaa !29
  %37 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly36 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %Ly36, align 4, !tbaa !15
  %conv37 = sext i32 %38 to i64
  %39 = load i64, ptr %yo, align 8, !tbaa !29
  %call38 = call i64 @back(i64 noundef %conv37, i64 noundef %39)
  store i64 %call38, ptr %y, align 8, !tbaa !29
  %40 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz39 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %Lz39, align 8, !tbaa !16
  %conv40 = sext i32 %41 to i64
  %42 = load i64, ptr %zo, align 8, !tbaa !29
  %call41 = call i64 @back(i64 noundef %conv40, i64 noundef %42)
  store i64 %call41, ptr %z, align 8, !tbaa !29
  br label %if.end42

if.else:                                          ; preds = %if.end17
  %43 = load i64, ptr %xo, align 8, !tbaa !29
  store i64 %43, ptr %x, align 8, !tbaa !29
  %44 = load i64, ptr %yo, align 8, !tbaa !29
  store i64 %44, ptr %y, align 8, !tbaa !29
  %45 = load i64, ptr %zo, align 8, !tbaa !29
  store i64 %45, ptr %z, align 8, !tbaa !29
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then33
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #5
  store double 0.000000e+00, ptr %val, align 8, !tbaa !34
  %46 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %ranpot = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %46, i32 0, i32 4
  %47 = load double, ptr %ranpot, align 8, !tbaa !17
  %cmp43 = fcmp nnan ninf nsz une double %47, 0.000000e+00
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.end42
  %48 = load ptr, ptr %ws.addr, align 8, !tbaa !5
  %rng = getelementptr inbounds %struct.scamac_matrix_Anderson_work_st, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %rng, align 8, !tbaa !27
  %50 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %ranpot46 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %50, i32 0, i32 4
  %51 = load double, ptr %ranpot46, align 8, !tbaa !17
  %fneg = fneg nnan ninf nsz double %51
  %52 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %ranpot47 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %52, i32 0, i32 4
  %53 = load double, ptr %ranpot47, align 8, !tbaa !17
  %54 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %call48 = call nnan ninf nsz nofpclass(nan inf) double @scamac_ransrc_double(ptr noundef %49, double noundef nofpclass(nan inf) %fneg, double noundef nofpclass(nan inf) %53, i64 noundef %54)
  store double %call48, ptr %val, align 8, !tbaa !34
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end42
  %55 = load double, ptr %val, align 8, !tbaa !34
  %cmp50 = fcmp nnan ninf nsz une double %55, 0.000000e+00
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end49
  %56 = load i8, ptr %fl_keepzeros, align 1, !tbaa !31, !range !35, !noundef !36
  %tobool53 = trunc i8 %56 to i1
  br i1 %tobool53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %lor.lhs.false52, %if.end49
  %57 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %58 = load double, ptr %val, align 8, !tbaa !34
  %59 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %call56 = call i32 @scamac_sparserow_real_add(ptr noundef %57, double noundef nofpclass(nan inf) %58, i64 noundef %59)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %lor.lhs.false52
  %60 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %t = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %60, i32 0, i32 3
  %61 = load double, ptr %t, align 8, !tbaa !37
  %cmp58 = fcmp nnan ninf nsz une double %61, 0.000000e+00
  br i1 %cmp58, label %if.then63, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %if.end57
  %62 = load i8, ptr %fl_keepzeros, align 1, !tbaa !31, !range !35, !noundef !36
  %tobool61 = trunc i8 %62 to i1
  br i1 %tobool61, label %if.then63, label %if.end252

if.then63:                                        ; preds = %lor.lhs.false60, %if.end57
  %63 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx64 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %63, i32 0, i32 0
  %64 = load i32, ptr %Lx64, align 8, !tbaa !10
  %cmp65 = icmp sgt i32 %64, 1
  br i1 %cmp65, label %if.then67, label %if.end123

if.then67:                                        ; preds = %if.then63
  call void @llvm.lifetime.start.p0(i64 8, ptr %xx) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #5
  %65 = load i64, ptr %x, align 8, !tbaa !29
  %66 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx68 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %66, i32 0, i32 0
  %67 = load i32, ptr %Lx68, align 8, !tbaa !10
  %sub69 = sub nsw i32 %67, 1
  %conv70 = sext i32 %sub69 to i64
  %cmp71 = icmp slt i64 %65, %conv70
  br i1 %cmp71, label %if.then76, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %if.then67
  %68 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %boundary_conditions = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %68, i32 0, i32 5
  %69 = load i32, ptr %boundary_conditions, align 8, !tbaa !38
  %cmp74 = icmp eq i32 %69, 1
  br i1 %cmp74, label %if.then76, label %if.end93

if.then76:                                        ; preds = %lor.lhs.false73, %if.then67
  %70 = load i64, ptr %x, align 8, !tbaa !29
  %add = add nsw i64 %70, 1
  %71 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx77 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %71, i32 0, i32 0
  %72 = load i32, ptr %Lx77, align 8, !tbaa !10
  %conv78 = sext i32 %72 to i64
  %rem = srem i64 %add, %conv78
  store i64 %rem, ptr %xx, align 8, !tbaa !29
  %73 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %sweep79 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %73, i32 0, i32 7
  %74 = load i32, ptr %sweep79, align 8, !tbaa !33
  %cmp80 = icmp eq i32 %74, 1
  br i1 %cmp80, label %if.then82, label %if.end86

if.then82:                                        ; preds = %if.then76
  %75 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx83 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %Lx83, align 8, !tbaa !10
  %conv84 = sext i32 %76 to i64
  %77 = load i64, ptr %xx, align 8, !tbaa !29
  %call85 = call i64 @forth(i64 noundef %conv84, i64 noundef %77)
  store i64 %call85, ptr %xx, align 8, !tbaa !29
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.then76
  %78 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %79 = load i64, ptr %xx, align 8, !tbaa !29
  %80 = load i64, ptr %xo, align 8, !tbaa !29
  %sub87 = sub nsw i64 %79, %80
  %81 = load i64, ptr %dx, align 8, !tbaa !29
  %mul88 = mul nsw i64 %sub87, %81
  %add89 = add nsw i64 %78, %mul88
  store i64 %add89, ptr %idx, align 8, !tbaa !29
  %82 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %83 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %t90 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %83, i32 0, i32 3
  %84 = load double, ptr %t90, align 8, !tbaa !37
  %fneg91 = fneg nnan ninf nsz double %84
  %85 = load i64, ptr %idx, align 8, !tbaa !29
  %call92 = call i32 @scamac_sparserow_real_add(ptr noundef %82, double noundef nofpclass(nan inf) %fneg91, i64 noundef %85)
  br label %if.end93

if.end93:                                         ; preds = %if.end86, %lor.lhs.false73
  %86 = load i64, ptr %x, align 8, !tbaa !29
  %cmp94 = icmp sgt i64 %86, 0
  br i1 %cmp94, label %if.then100, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.end93
  %87 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %boundary_conditions97 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %87, i32 0, i32 5
  %88 = load i32, ptr %boundary_conditions97, align 8, !tbaa !38
  %cmp98 = icmp eq i32 %88, 1
  br i1 %cmp98, label %if.then100, label %if.end122

if.then100:                                       ; preds = %lor.lhs.false96, %if.end93
  %89 = load i64, ptr %x, align 8, !tbaa !29
  %sub101 = sub nsw i64 %89, 1
  %90 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx102 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %90, i32 0, i32 0
  %91 = load i32, ptr %Lx102, align 8, !tbaa !10
  %conv103 = sext i32 %91 to i64
  %add104 = add nsw i64 %sub101, %conv103
  %92 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx105 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %92, i32 0, i32 0
  %93 = load i32, ptr %Lx105, align 8, !tbaa !10
  %conv106 = sext i32 %93 to i64
  %rem107 = srem i64 %add104, %conv106
  store i64 %rem107, ptr %xx, align 8, !tbaa !29
  %94 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %sweep108 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %94, i32 0, i32 7
  %95 = load i32, ptr %sweep108, align 8, !tbaa !33
  %cmp109 = icmp eq i32 %95, 1
  br i1 %cmp109, label %if.then111, label %if.end115

if.then111:                                       ; preds = %if.then100
  %96 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lx112 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %96, i32 0, i32 0
  %97 = load i32, ptr %Lx112, align 8, !tbaa !10
  %conv113 = sext i32 %97 to i64
  %98 = load i64, ptr %xx, align 8, !tbaa !29
  %call114 = call i64 @forth(i64 noundef %conv113, i64 noundef %98)
  store i64 %call114, ptr %xx, align 8, !tbaa !29
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %if.then100
  %99 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %100 = load i64, ptr %xx, align 8, !tbaa !29
  %101 = load i64, ptr %xo, align 8, !tbaa !29
  %sub116 = sub nsw i64 %100, %101
  %102 = load i64, ptr %dx, align 8, !tbaa !29
  %mul117 = mul nsw i64 %sub116, %102
  %add118 = add nsw i64 %99, %mul117
  store i64 %add118, ptr %idx, align 8, !tbaa !29
  %103 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %104 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %t119 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %104, i32 0, i32 3
  %105 = load double, ptr %t119, align 8, !tbaa !37
  %fneg120 = fneg nnan ninf nsz double %105
  %106 = load i64, ptr %idx, align 8, !tbaa !29
  %call121 = call i32 @scamac_sparserow_real_add(ptr noundef %103, double noundef nofpclass(nan inf) %fneg120, i64 noundef %106)
  br label %if.end122

if.end122:                                        ; preds = %if.end115, %lor.lhs.false96
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xx) #5
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then63
  %107 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly124 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %Ly124, align 4, !tbaa !15
  %cmp125 = icmp sgt i32 %108, 1
  br i1 %cmp125, label %if.then127, label %if.end187

if.then127:                                       ; preds = %if.end123
  call void @llvm.lifetime.start.p0(i64 8, ptr %yy) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx128) #5
  %109 = load i64, ptr %y, align 8, !tbaa !29
  %110 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly129 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %110, i32 0, i32 1
  %111 = load i32, ptr %Ly129, align 4, !tbaa !15
  %sub130 = sub nsw i32 %111, 1
  %conv131 = sext i32 %sub130 to i64
  %cmp132 = icmp slt i64 %109, %conv131
  br i1 %cmp132, label %if.then138, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %if.then127
  %112 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %boundary_conditions135 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %112, i32 0, i32 5
  %113 = load i32, ptr %boundary_conditions135, align 8, !tbaa !38
  %cmp136 = icmp eq i32 %113, 1
  br i1 %cmp136, label %if.then138, label %if.end157

if.then138:                                       ; preds = %lor.lhs.false134, %if.then127
  %114 = load i64, ptr %y, align 8, !tbaa !29
  %add139 = add nsw i64 %114, 1
  %115 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly140 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %115, i32 0, i32 1
  %116 = load i32, ptr %Ly140, align 4, !tbaa !15
  %conv141 = sext i32 %116 to i64
  %rem142 = srem i64 %add139, %conv141
  store i64 %rem142, ptr %yy, align 8, !tbaa !29
  %117 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %sweep143 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %117, i32 0, i32 7
  %118 = load i32, ptr %sweep143, align 8, !tbaa !33
  %cmp144 = icmp eq i32 %118, 1
  br i1 %cmp144, label %if.then146, label %if.end150

if.then146:                                       ; preds = %if.then138
  %119 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly147 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %119, i32 0, i32 1
  %120 = load i32, ptr %Ly147, align 4, !tbaa !15
  %conv148 = sext i32 %120 to i64
  %121 = load i64, ptr %yy, align 8, !tbaa !29
  %call149 = call i64 @forth(i64 noundef %conv148, i64 noundef %121)
  store i64 %call149, ptr %yy, align 8, !tbaa !29
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %if.then138
  %122 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %123 = load i64, ptr %yy, align 8, !tbaa !29
  %124 = load i64, ptr %yo, align 8, !tbaa !29
  %sub151 = sub nsw i64 %123, %124
  %125 = load i64, ptr %dy, align 8, !tbaa !29
  %mul152 = mul nsw i64 %sub151, %125
  %add153 = add nsw i64 %122, %mul152
  store i64 %add153, ptr %idx128, align 8, !tbaa !29
  %126 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %127 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %t154 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %127, i32 0, i32 3
  %128 = load double, ptr %t154, align 8, !tbaa !37
  %fneg155 = fneg nnan ninf nsz double %128
  %129 = load i64, ptr %idx128, align 8, !tbaa !29
  %call156 = call i32 @scamac_sparserow_real_add(ptr noundef %126, double noundef nofpclass(nan inf) %fneg155, i64 noundef %129)
  br label %if.end157

if.end157:                                        ; preds = %if.end150, %lor.lhs.false134
  %130 = load i64, ptr %y, align 8, !tbaa !29
  %cmp158 = icmp sgt i64 %130, 0
  br i1 %cmp158, label %if.then164, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %if.end157
  %131 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %boundary_conditions161 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %131, i32 0, i32 5
  %132 = load i32, ptr %boundary_conditions161, align 8, !tbaa !38
  %cmp162 = icmp eq i32 %132, 1
  br i1 %cmp162, label %if.then164, label %if.end186

if.then164:                                       ; preds = %lor.lhs.false160, %if.end157
  %133 = load i64, ptr %y, align 8, !tbaa !29
  %sub165 = sub nsw i64 %133, 1
  %134 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly166 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %134, i32 0, i32 1
  %135 = load i32, ptr %Ly166, align 4, !tbaa !15
  %conv167 = sext i32 %135 to i64
  %add168 = add nsw i64 %sub165, %conv167
  %136 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly169 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %136, i32 0, i32 1
  %137 = load i32, ptr %Ly169, align 4, !tbaa !15
  %conv170 = sext i32 %137 to i64
  %rem171 = srem i64 %add168, %conv170
  store i64 %rem171, ptr %yy, align 8, !tbaa !29
  %138 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %sweep172 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %138, i32 0, i32 7
  %139 = load i32, ptr %sweep172, align 8, !tbaa !33
  %cmp173 = icmp eq i32 %139, 1
  br i1 %cmp173, label %if.then175, label %if.end179

if.then175:                                       ; preds = %if.then164
  %140 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Ly176 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %140, i32 0, i32 1
  %141 = load i32, ptr %Ly176, align 4, !tbaa !15
  %conv177 = sext i32 %141 to i64
  %142 = load i64, ptr %yy, align 8, !tbaa !29
  %call178 = call i64 @forth(i64 noundef %conv177, i64 noundef %142)
  store i64 %call178, ptr %yy, align 8, !tbaa !29
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %if.then164
  %143 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %144 = load i64, ptr %yy, align 8, !tbaa !29
  %145 = load i64, ptr %yo, align 8, !tbaa !29
  %sub180 = sub nsw i64 %144, %145
  %146 = load i64, ptr %dy, align 8, !tbaa !29
  %mul181 = mul nsw i64 %sub180, %146
  %add182 = add nsw i64 %143, %mul181
  store i64 %add182, ptr %idx128, align 8, !tbaa !29
  %147 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %148 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %t183 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %148, i32 0, i32 3
  %149 = load double, ptr %t183, align 8, !tbaa !37
  %fneg184 = fneg nnan ninf nsz double %149
  %150 = load i64, ptr %idx128, align 8, !tbaa !29
  %call185 = call i32 @scamac_sparserow_real_add(ptr noundef %147, double noundef nofpclass(nan inf) %fneg184, i64 noundef %150)
  br label %if.end186

if.end186:                                        ; preds = %if.end179, %lor.lhs.false160
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx128) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %yy) #5
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.end123
  %151 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz188 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %151, i32 0, i32 2
  %152 = load i32, ptr %Lz188, align 8, !tbaa !16
  %cmp189 = icmp sgt i32 %152, 1
  br i1 %cmp189, label %if.then191, label %if.end251

if.then191:                                       ; preds = %if.end187
  call void @llvm.lifetime.start.p0(i64 8, ptr %zz) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx192) #5
  %153 = load i64, ptr %z, align 8, !tbaa !29
  %154 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz193 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %154, i32 0, i32 2
  %155 = load i32, ptr %Lz193, align 8, !tbaa !16
  %sub194 = sub nsw i32 %155, 1
  %conv195 = sext i32 %sub194 to i64
  %cmp196 = icmp slt i64 %153, %conv195
  br i1 %cmp196, label %if.then202, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %if.then191
  %156 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %boundary_conditions199 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %156, i32 0, i32 5
  %157 = load i32, ptr %boundary_conditions199, align 8, !tbaa !38
  %cmp200 = icmp eq i32 %157, 1
  br i1 %cmp200, label %if.then202, label %if.end221

if.then202:                                       ; preds = %lor.lhs.false198, %if.then191
  %158 = load i64, ptr %z, align 8, !tbaa !29
  %add203 = add nsw i64 %158, 1
  %159 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz204 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %159, i32 0, i32 2
  %160 = load i32, ptr %Lz204, align 8, !tbaa !16
  %conv205 = sext i32 %160 to i64
  %rem206 = srem i64 %add203, %conv205
  store i64 %rem206, ptr %zz, align 8, !tbaa !29
  %161 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %sweep207 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %161, i32 0, i32 7
  %162 = load i32, ptr %sweep207, align 8, !tbaa !33
  %cmp208 = icmp eq i32 %162, 1
  br i1 %cmp208, label %if.then210, label %if.end214

if.then210:                                       ; preds = %if.then202
  %163 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz211 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %163, i32 0, i32 2
  %164 = load i32, ptr %Lz211, align 8, !tbaa !16
  %conv212 = sext i32 %164 to i64
  %165 = load i64, ptr %zz, align 8, !tbaa !29
  %call213 = call i64 @forth(i64 noundef %conv212, i64 noundef %165)
  store i64 %call213, ptr %zz, align 8, !tbaa !29
  br label %if.end214

if.end214:                                        ; preds = %if.then210, %if.then202
  %166 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %167 = load i64, ptr %zz, align 8, !tbaa !29
  %168 = load i64, ptr %zo, align 8, !tbaa !29
  %sub215 = sub nsw i64 %167, %168
  %169 = load i64, ptr %dz, align 8, !tbaa !29
  %mul216 = mul nsw i64 %sub215, %169
  %add217 = add nsw i64 %166, %mul216
  store i64 %add217, ptr %idx192, align 8, !tbaa !29
  %170 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %171 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %t218 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %171, i32 0, i32 3
  %172 = load double, ptr %t218, align 8, !tbaa !37
  %fneg219 = fneg nnan ninf nsz double %172
  %173 = load i64, ptr %idx192, align 8, !tbaa !29
  %call220 = call i32 @scamac_sparserow_real_add(ptr noundef %170, double noundef nofpclass(nan inf) %fneg219, i64 noundef %173)
  br label %if.end221

if.end221:                                        ; preds = %if.end214, %lor.lhs.false198
  %174 = load i64, ptr %z, align 8, !tbaa !29
  %cmp222 = icmp sgt i64 %174, 0
  br i1 %cmp222, label %if.then228, label %lor.lhs.false224

lor.lhs.false224:                                 ; preds = %if.end221
  %175 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %boundary_conditions225 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %175, i32 0, i32 5
  %176 = load i32, ptr %boundary_conditions225, align 8, !tbaa !38
  %cmp226 = icmp eq i32 %176, 1
  br i1 %cmp226, label %if.then228, label %if.end250

if.then228:                                       ; preds = %lor.lhs.false224, %if.end221
  %177 = load i64, ptr %z, align 8, !tbaa !29
  %sub229 = sub nsw i64 %177, 1
  %178 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz230 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %178, i32 0, i32 2
  %179 = load i32, ptr %Lz230, align 8, !tbaa !16
  %conv231 = sext i32 %179 to i64
  %add232 = add nsw i64 %sub229, %conv231
  %180 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz233 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %180, i32 0, i32 2
  %181 = load i32, ptr %Lz233, align 8, !tbaa !16
  %conv234 = sext i32 %181 to i64
  %rem235 = srem i64 %add232, %conv234
  store i64 %rem235, ptr %zz, align 8, !tbaa !29
  %182 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %sweep236 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %182, i32 0, i32 7
  %183 = load i32, ptr %sweep236, align 8, !tbaa !33
  %cmp237 = icmp eq i32 %183, 1
  br i1 %cmp237, label %if.then239, label %if.end243

if.then239:                                       ; preds = %if.then228
  %184 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %Lz240 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %184, i32 0, i32 2
  %185 = load i32, ptr %Lz240, align 8, !tbaa !16
  %conv241 = sext i32 %185 to i64
  %186 = load i64, ptr %zz, align 8, !tbaa !29
  %call242 = call i64 @forth(i64 noundef %conv241, i64 noundef %186)
  store i64 %call242, ptr %zz, align 8, !tbaa !29
  br label %if.end243

if.end243:                                        ; preds = %if.then239, %if.then228
  %187 = load i64, ptr %irow.addr, align 8, !tbaa !29
  %188 = load i64, ptr %zz, align 8, !tbaa !29
  %189 = load i64, ptr %zo, align 8, !tbaa !29
  %sub244 = sub nsw i64 %188, %189
  %190 = load i64, ptr %dz, align 8, !tbaa !29
  %mul245 = mul nsw i64 %sub244, %190
  %add246 = add nsw i64 %187, %mul245
  store i64 %add246, ptr %idx192, align 8, !tbaa !29
  %191 = load ptr, ptr %row.addr, align 8, !tbaa !5
  %192 = load ptr, ptr %par.addr, align 8, !tbaa !5
  %t247 = getelementptr inbounds %struct.scamac_matrix_Anderson_params_st, ptr %192, i32 0, i32 3
  %193 = load double, ptr %t247, align 8, !tbaa !37
  %fneg248 = fneg nnan ninf nsz double %193
  %194 = load i64, ptr %idx192, align 8, !tbaa !29
  %call249 = call i32 @scamac_sparserow_real_add(ptr noundef %191, double noundef nofpclass(nan inf) %fneg248, i64 noundef %194)
  br label %if.end250

if.end250:                                        ; preds = %if.end243, %lor.lhs.false224
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx192) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zz) #5
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end187
  br label %if.end252

if.end252:                                        ; preds = %if.end251, %lor.lhs.false60
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %zo) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %yo) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xo) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dz) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end252, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %fl_keepzeros) #5
  br label %return

return:                                           ; preds = %cleanup, %if.then7, %if.then
  %195 = load i32, ptr %retval, align 4
  ret i32 %195
}

; Function Attrs: nounwind uwtable
define internal i64 @back(i64 noundef %L, i64 noundef %i) #0 {
entry:
  %retval = alloca i64, align 8
  %L.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  store i64 %L, ptr %L.addr, align 8, !tbaa !29
  store i64 %i, ptr %i.addr, align 8, !tbaa !29
  %0 = load i64, ptr %i.addr, align 8, !tbaa !29
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %L.addr, align 8, !tbaa !29
  %2 = load i64, ptr %i.addr, align 8, !tbaa !29
  %add = add nsw i64 %2, 1
  %div = sdiv i64 %add, 2
  %sub = sub nsw i64 %1, %div
  store i64 %sub, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %i.addr, align 8, !tbaa !29
  %div1 = sdiv i64 %3, 2
  store i64 %div1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

declare nofpclass(nan inf) double @scamac_ransrc_double(ptr noundef, double noundef nofpclass(nan inf), double noundef nofpclass(nan inf), i64 noundef) #2

declare i32 @scamac_sparserow_real_add(ptr noundef, double noundef nofpclass(nan inf), i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i64 @forth(i64 noundef %L, i64 noundef %i) #0 {
entry:
  %retval = alloca i64, align 8
  %L.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  store i64 %L, ptr %L.addr, align 8, !tbaa !29
  store i64 %i, ptr %i.addr, align 8, !tbaa !29
  %0 = load i64, ptr %i.addr, align 8, !tbaa !29
  %1 = load i64, ptr %L.addr, align 8, !tbaa !29
  %add = add nsw i64 %1, 1
  %div = sdiv i64 %add, 2
  %cmp = icmp slt i64 %0, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %i.addr, align 8, !tbaa !29
  %mul = mul nsw i64 2, %2
  store i64 %mul, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i64, ptr %L.addr, align 8, !tbaa !29
  %4 = load i64, ptr %i.addr, align 8, !tbaa !29
  %sub = sub nsw i64 %3, %4
  %mul1 = mul nsw i64 2, %sub
  %sub2 = sub nsw i64 %mul1, 1
  store i64 %sub2, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %retval, align 8
  ret i64 %5
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { nounwind allocsize(0) "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #4 = { nounwind "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !13, i64 16, !13, i64 24, !7, i64 32, !14, i64 40, !7, i64 48}
!12 = !{!"int", !7, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!11, !12, i64 4}
!16 = !{!11, !12, i64 8}
!17 = !{!11, !13, i64 24}
!18 = !{!19, !14, i64 0}
!19 = !{!"scamac_info_st", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !12, i64 40, !12, i64 44}
!20 = !{!19, !14, i64 8}
!21 = !{!19, !14, i64 16}
!22 = !{!19, !14, i64 24}
!23 = !{!19, !14, i64 32}
!24 = !{!19, !12, i64 40}
!25 = !{!19, !12, i64 44}
!26 = !{!11, !14, i64 40}
!27 = !{!28, !6, i64 0}
!28 = !{!"", !6, i64 0}
!29 = !{!14, !14, i64 0}
!30 = !{!12, !12, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"_Bool", !7, i64 0}
!33 = !{!11, !7, i64 48}
!34 = !{!13, !13, i64 0}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!11, !13, i64 16}
!38 = !{!11, !7, i64 32}
