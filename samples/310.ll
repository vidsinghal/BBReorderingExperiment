; ModuleID = 'samples/310.bc'
source_filename = "../spack-src/externals/cgns/hdf5/H5Groot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.H5FL_reg_head_t = type { i8, i32, i32, ptr, i64, ptr }
%struct.H5F_t = type { ptr, ptr, ptr, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.H5F_shared_t = type { ptr, ptr, ptr, i8, i32, i32, %struct.H5F_mtab_t, ptr, i8, i8, i64, i32, i32, i64, i64, ptr, ptr, %struct.H5AC_cache_config_t, %struct.H5AC_cache_image_config_t, i8, i8, ptr, i64, i32, i8, i64, i64, double, i64, i64, i64, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, i8, i8, i64, ptr, ptr, i32, i64, i8, i32, i8, i64, i8, [13 x i32], [13 x i64], [13 x ptr], i8, i64, i64, [7 x i32], [7 x i32], %struct.H5F_blk_aggr_t, %struct.H5F_blk_aggr_t, i64, i64, %struct.H5F_meta_accum_t, i32, i32, [30 x ptr], %struct.H5F_object_flush_t, i8, ptr }
%struct.H5F_mtab_t = type { i32, i32, ptr }
%struct.H5AC_cache_config_t = type { i32, i8, i8, i8, [1025 x i8], i8, i8, i64, double, i64, i64, i64, i32, double, double, i8, i64, i32, double, double, i32, double, double, i8, i64, i32, i8, double, i64, i32 }
%struct.H5AC_cache_image_config_t = type { i32, i8, i8, i32 }
%struct.H5F_blk_aggr_t = type { i64, i64, i64, i64, i64 }
%struct.H5F_meta_accum_t = type { ptr, i64, i64, i64, i64, i64, i8 }
%struct.H5F_object_flush_t = type { ptr, ptr }
%struct.H5G_t = type { ptr, %struct.H5O_loc_t, %struct.H5G_name_t }
%struct.H5O_loc_t = type { ptr, i64, i8 }
%struct.H5G_name_t = type { ptr, ptr, i32 }
%struct.H5G_loc_t = type { ptr, ptr }
%struct.H5G_obj_create_t = type { i64, i32, %union.H5G_cache_t }
%union.H5G_cache_t = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.H5O_stab_t = type { i64, i64 }
%struct.H5F_super_t = type { %struct.H5C_cache_entry_t, i32, i8, i8, i8, i32, [2 x i32], i64, i64, i64, i64, ptr }
%struct.H5C_cache_entry_t = type { i32, ptr, i64, i64, ptr, i8, ptr, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, i64, ptr, i64, i64, i32, i8, i32, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.H5G_entry_t = type { i32, %union.H5G_cache_t, i64, i64 }
%struct.H5G_shared_t = type { i32, i8 }

@H5G_rootof.func_check = internal global i8 0, align 1
@H5G_init_g = external global i8, align 1
@H5_libterm_g = external global i8, align 1
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"../spack-src/externals/cgns/hdf5/H5Groot.c\00", align 1
@__PRETTY_FUNCTION__.H5G_rootof = private unnamed_addr constant [27 x i8] c"H5G_t *H5G_rootof(H5F_t *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"f->shared\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"f->shared->root_grp\00", align 1
@H5G_mkroot.func_check = internal global i8 0, align 1
@__func__.H5G_mkroot = private unnamed_addr constant [11 x i8] c"H5G_mkroot\00", align 1
@H5E_ERR_CLS_g = external global i64, align 8
@H5E_FUNC_g = external global i64, align 8
@H5E_CANTINIT_g = external global i64, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"interface initialization failed\00", align 1
@__PRETTY_FUNCTION__.H5G_mkroot = private unnamed_addr constant [36 x i8] c"herr_t H5G_mkroot(H5F_t *, hbool_t)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"f->shared->sblock\00", align 1
@H5E_SYM_g = external global i64, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"unable to create group node info\00", align 1
@H5_H5G_t_reg_free_list = external global %struct.H5FL_reg_head_t, align 8
@H5E_RESOURCE_g = external global i64, align 8
@H5E_NOSPACE_g = external global i64, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@H5_H5G_shared_t_reg_free_list = external global %struct.H5FL_reg_head_t, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"unable to create group entry\00", align 1
@H5E_LINKCOUNT_g = external global i64, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"internal error (wrong link count)\00", align 1
@H5E_CANTDEC_g = external global i64, align 8
@.str.10 = private unnamed_addr constant [59 x i8] c"unable to decrement refcount on root group's object header\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"!f->shared->sblock->root_ent\00", align 1
@H5E_CANTALLOC_g = external global i64, align 8
@.str.12 = private unnamed_addr constant [44 x i8] c"can't allocate space for symbol table entry\00", align 1
@H5E_CANTOPENOBJ_g = external global i64, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"unable to open root group\00", align 1
@H5E_CANTGET_g = external global i64, align 8
@.str.14 = private unnamed_addr constant [43 x i8] c"can't check if symbol table message exists\00", align 1
@H5E_NOTFOUND_g = external global i64, align 8
@.str.15 = private unnamed_addr constant [30 x i8] c"unable to verify symbol table\00", align 1
@H5E_BADMESG_g = external global i64, align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"unable to read symbol table message\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [111 x i8] c"(1 == f->nopen_objs) || (2 == f->nopen_objs && (9223372036854775807L *2UL+1UL) != f->shared->sblock->ext_addr)\00", align 1
@H5E_FILE_g = external global i64, align 8
@H5E_CANTMARKDIRTY_g = external global i64, align 8
@.str.19 = private unnamed_addr constant [35 x i8] c"unable to mark superblock as dirty\00", align 1
@H5G_root_free.func_check = internal global i8 0, align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"grp && grp->shared\00", align 1
@__PRETTY_FUNCTION__.H5G_root_free = private unnamed_addr constant [30 x i8] c"herr_t H5G_root_free(H5G_t *)\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"grp->shared->fo_count > 0\00", align 1
@H5G_root_loc.func_check = internal global i8 0, align 1
@__func__.H5G_root_loc = private unnamed_addr constant [13 x i8] c"H5G_root_loc\00", align 1
@__PRETTY_FUNCTION__.H5G_root_loc = private unnamed_addr constant [42 x i8] c"herr_t H5G_root_loc(H5F_t *, H5G_loc_t *)\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"root_grp\00", align 1
@H5E_ARGS_g = external global i64, align 8
@H5E_BADVALUE_g = external global i64, align 8
@.str.24 = private unnamed_addr constant [45 x i8] c"unable to get object location for root group\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"unable to get path for root group\00", align 1

; Function Attrs: nounwind uwtable
define ptr @H5G_rootof(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  %0 = load i8, ptr @H5G_rootof.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5G_rootof.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end33, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 95, ptr noundef @__PRETTY_FUNCTION__.H5G_rootof) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared = getelementptr inbounds %struct.H5F_t, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %shared, align 8, !tbaa !12
  %tobool5 = icmp ne ptr %6, null
  br i1 %tobool5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 96, ptr noundef @__PRETTY_FUNCTION__.H5G_rootof) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end8

cond.end8:                                        ; preds = %7, %cond.true6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end8
  %8 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %parent = getelementptr inbounds %struct.H5F_t, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %parent, align 8, !tbaa !15
  %tobool9 = icmp ne ptr %9, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %parent10 = getelementptr inbounds %struct.H5F_t, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %parent10, align 8, !tbaa !15
  store ptr %11, ptr %f.addr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %tobool11 = icmp ne ptr %12, null
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %while.end
  br label %cond.end14

cond.false13:                                     ; preds = %while.end
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 103, ptr noundef @__PRETTY_FUNCTION__.H5G_rootof) #5
  unreachable

13:                                               ; No predecessors!
  br label %cond.end14

cond.end14:                                       ; preds = %13, %cond.true12
  %14 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared15 = getelementptr inbounds %struct.H5F_t, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %shared15, align 8, !tbaa !12
  %tobool16 = icmp ne ptr %15, null
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end14
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end14
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 104, ptr noundef @__PRETTY_FUNCTION__.H5G_rootof) #5
  unreachable

16:                                               ; No predecessors!
  br label %cond.end19

cond.end19:                                       ; preds = %16, %cond.true17
  %17 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared20 = getelementptr inbounds %struct.H5F_t, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %shared20, align 8, !tbaa !12
  %root_grp = getelementptr inbounds %struct.H5F_shared_t, ptr %18, i32 0, i32 37
  %19 = load ptr, ptr %root_grp, align 8, !tbaa !16
  %tobool21 = icmp ne ptr %19, null
  br i1 %tobool21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.end19
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end19
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 105, ptr noundef @__PRETTY_FUNCTION__.H5G_rootof) #5
  unreachable

20:                                               ; No predecessors!
  br label %cond.end24

cond.end24:                                       ; preds = %20, %cond.true22
  %21 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared25 = getelementptr inbounds %struct.H5F_t, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %shared25, align 8, !tbaa !12
  %root_grp26 = getelementptr inbounds %struct.H5F_shared_t, ptr %22, i32 0, i32 37
  %23 = load ptr, ptr %root_grp26, align 8, !tbaa !16
  %oloc = getelementptr inbounds %struct.H5G_t, ptr %23, i32 0, i32 1
  %file = getelementptr inbounds %struct.H5O_loc_t, ptr %oloc, i32 0, i32 0
  %24 = load ptr, ptr %file, align 8, !tbaa !27
  %25 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %24, %25
  br i1 %cmp, label %if.then27, label %if.end32

if.then27:                                        ; preds = %cond.end24
  %26 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared28 = getelementptr inbounds %struct.H5F_t, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %shared28, align 8, !tbaa !12
  %root_grp29 = getelementptr inbounds %struct.H5F_shared_t, ptr %28, i32 0, i32 37
  %29 = load ptr, ptr %root_grp29, align 8, !tbaa !16
  %oloc30 = getelementptr inbounds %struct.H5G_t, ptr %29, i32 0, i32 1
  %file31 = getelementptr inbounds %struct.H5O_loc_t, ptr %oloc30, i32 0, i32 0
  store ptr %26, ptr %file31, align 8, !tbaa !27
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %cond.end24
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %lor.lhs.false
  %30 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared34 = getelementptr inbounds %struct.H5F_t, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %shared34, align 8, !tbaa !12
  %root_grp35 = getelementptr inbounds %struct.H5F_shared_t, ptr %31, i32 0, i32 37
  %32 = load ptr, ptr %root_grp35, align 8, !tbaa !16
  ret ptr %32
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @H5G_mkroot(ptr noundef %f, i1 noundef zeroext %create_root) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  %create_root.addr = alloca i8, align 1
  %root_loc = alloca %struct.H5G_loc_t, align 8
  %gcrt_info = alloca %struct.H5G_obj_create_t, align 8
  %stab_exists = alloca i32, align 4
  %sblock_dirty = alloca i8, align 1
  %path_init = alloca i8, align 1
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %cached_stab = alloca %struct.H5O_stab_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %stab = alloca %struct.H5O_stab_t, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  %frombool = zext i1 %create_root to i8
  store i8 %frombool, ptr %create_root.addr, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %root_loc) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr %gcrt_info) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %stab_exists) #6
  store i32 -1, ptr %stab_exists, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr %sblock_dirty) #6
  store i8 0, ptr %sblock_dirty, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %path_init) #6
  store i8 0, ptr %path_init, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5G_mkroot.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5G_mkroot.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end9, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5G_init_g, align 1, !tbaa !8
  %call = call i32 @H5G__init_package()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.then3
  store i8 0, ptr @H5G_init_g, align 1, !tbaa !8
  %3 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %4 = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !32
  %5 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !32
  %call5 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 143, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef @.str.4)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %6 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool6 = trunc i8 %6 to i1
  %frombool7 = zext i1 %tobool6 to i8
  store i8 %frombool7, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end8:                                          ; preds = %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %land.lhs.true, %if.end
  %7 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool10 = trunc i8 %7 to i1
  br i1 %tobool10, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %8 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool11 = trunc i8 %8 to i1
  br i1 %tobool11, label %if.end326, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false, %if.end9
  %9 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %9, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 146, ptr noundef @__PRETTY_FUNCTION__.H5G_mkroot) #5
  unreachable

10:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared = getelementptr inbounds %struct.H5F_t, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %shared, align 8, !tbaa !12
  %tobool14 = icmp ne ptr %12, null
  br i1 %tobool14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.end
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 147, ptr noundef @__PRETTY_FUNCTION__.H5G_mkroot) #5
  unreachable

13:                                               ; No predecessors!
  br label %cond.end17

cond.end17:                                       ; preds = %13, %cond.true15
  %14 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared18 = getelementptr inbounds %struct.H5F_t, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %shared18, align 8, !tbaa !12
  %sblock = getelementptr inbounds %struct.H5F_shared_t, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %sblock, align 8, !tbaa !33
  %tobool19 = icmp ne ptr %16, null
  br i1 %tobool19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %cond.end17
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end17
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 148, ptr noundef @__PRETTY_FUNCTION__.H5G_mkroot) #5
  unreachable

17:                                               ; No predecessors!
  br label %cond.end22

cond.end22:                                       ; preds = %17, %cond.true20
  %18 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared23 = getelementptr inbounds %struct.H5F_t, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %shared23, align 8, !tbaa !12
  %root_grp = getelementptr inbounds %struct.H5F_shared_t, ptr %19, i32 0, i32 37
  %20 = load ptr, ptr %root_grp, align 8, !tbaa !16
  %tobool24 = icmp ne ptr %20, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %cond.end22
  store i32 0, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end26:                                         ; preds = %cond.end22
  %21 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call27 = call i32 @H5G__node_init(ptr noundef %21)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end26
  %22 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %23 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %24 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !32
  %call30 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 156, i64 noundef %22, i64 noundef %23, i64 noundef %24, ptr noundef @.str.6)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %25 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool31 = trunc i8 %25 to i1
  %frombool32 = zext i1 %tobool31 to i8
  store i8 %frombool32, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end33:                                         ; preds = %if.end26
  %call34 = call ptr @H5FL_reg_calloc(ptr noundef @H5_H5G_t_reg_free_list)
  %26 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared35 = getelementptr inbounds %struct.H5F_t, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %shared35, align 8, !tbaa !12
  %root_grp36 = getelementptr inbounds %struct.H5F_shared_t, ptr %27, i32 0, i32 37
  store ptr %call34, ptr %root_grp36, align 8, !tbaa !16
  %cmp37 = icmp eq ptr null, %call34
  br i1 %cmp37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.end33
  %28 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %29 = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !32
  %30 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !32
  %call39 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 162, i64 noundef %28, i64 noundef %29, i64 noundef %30, ptr noundef @.str.7)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %31 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool40 = trunc i8 %31 to i1
  %frombool41 = zext i1 %tobool40 to i8
  store i8 %frombool41, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end42:                                         ; preds = %if.end33
  %call43 = call ptr @H5FL_reg_calloc(ptr noundef @H5_H5G_shared_t_reg_free_list)
  %32 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared44 = getelementptr inbounds %struct.H5F_t, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %shared44, align 8, !tbaa !12
  %root_grp45 = getelementptr inbounds %struct.H5F_shared_t, ptr %33, i32 0, i32 37
  %34 = load ptr, ptr %root_grp45, align 8, !tbaa !16
  %shared46 = getelementptr inbounds %struct.H5G_t, ptr %34, i32 0, i32 0
  store ptr %call43, ptr %shared46, align 8, !tbaa !34
  %cmp47 = icmp eq ptr null, %call43
  br i1 %cmp47, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.end42
  %35 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared49 = getelementptr inbounds %struct.H5F_t, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %shared49, align 8, !tbaa !12
  %root_grp50 = getelementptr inbounds %struct.H5F_shared_t, ptr %36, i32 0, i32 37
  %37 = load ptr, ptr %root_grp50, align 8, !tbaa !16
  %call51 = call ptr @H5FL_reg_free(ptr noundef @H5_H5G_t_reg_free_list, ptr noundef %37)
  %38 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared52 = getelementptr inbounds %struct.H5F_t, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %shared52, align 8, !tbaa !12
  %root_grp53 = getelementptr inbounds %struct.H5F_shared_t, ptr %39, i32 0, i32 37
  store ptr %call51, ptr %root_grp53, align 8, !tbaa !16
  %40 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %41 = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !32
  %42 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !32
  %call54 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 165, i64 noundef %40, i64 noundef %41, i64 noundef %42, ptr noundef @.str.7)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %43 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool55 = trunc i8 %43 to i1
  %frombool56 = zext i1 %tobool55 to i8
  store i8 %frombool56, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end57:                                         ; preds = %if.end42
  %44 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared58 = getelementptr inbounds %struct.H5F_t, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %shared58, align 8, !tbaa !12
  %root_grp59 = getelementptr inbounds %struct.H5F_shared_t, ptr %45, i32 0, i32 37
  %46 = load ptr, ptr %root_grp59, align 8, !tbaa !16
  %oloc = getelementptr inbounds %struct.H5G_t, ptr %46, i32 0, i32 1
  %oloc60 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  store ptr %oloc, ptr %oloc60, align 8, !tbaa !35
  %47 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared61 = getelementptr inbounds %struct.H5F_t, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %shared61, align 8, !tbaa !12
  %root_grp62 = getelementptr inbounds %struct.H5F_shared_t, ptr %48, i32 0, i32 37
  %49 = load ptr, ptr %root_grp62, align 8, !tbaa !16
  %path = getelementptr inbounds %struct.H5G_t, ptr %49, i32 0, i32 2
  %path63 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 1
  store ptr %path, ptr %path63, align 8, !tbaa !37
  %call64 = call i32 @H5G_loc_reset(ptr noundef %root_loc)
  %50 = load i8, ptr %create_root.addr, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool65 = trunc i8 %50 to i1
  br i1 %tobool65, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end57
  %51 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared67 = getelementptr inbounds %struct.H5F_t, ptr %51, i32 0, i32 2
  %52 = load ptr, ptr %shared67, align 8, !tbaa !12
  %fcpl_id = getelementptr inbounds %struct.H5F_shared_t, ptr %52, i32 0, i32 22
  %53 = load i64, ptr %fcpl_id, align 8, !tbaa !38
  %gcpl_id = getelementptr inbounds %struct.H5G_obj_create_t, ptr %gcrt_info, i32 0, i32 0
  store i64 %53, ptr %gcpl_id, align 8, !tbaa !39
  %cache_type = getelementptr inbounds %struct.H5G_obj_create_t, ptr %gcrt_info, i32 0, i32 1
  store i32 0, ptr %cache_type, align 8, !tbaa !41
  %54 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %oloc68 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %55 = load ptr, ptr %oloc68, align 8, !tbaa !35
  %call69 = call i32 @H5G__obj_create(ptr noundef %54, ptr noundef %gcrt_info, ptr noundef %55)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end75

if.then71:                                        ; preds = %if.then66
  %56 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %57 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %58 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !32
  %call72 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 184, i64 noundef %56, i64 noundef %57, i64 noundef %58, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %59 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool73 = trunc i8 %59 to i1
  %frombool74 = zext i1 %tobool73 to i8
  store i8 %frombool74, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end75:                                         ; preds = %if.then66
  %oloc76 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %60 = load ptr, ptr %oloc76, align 8, !tbaa !35
  %call77 = call i32 @H5O_link(ptr noundef %60, i32 noundef 1)
  %cmp78 = icmp ne i32 1, %call77
  br i1 %cmp78, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end75
  %61 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %62 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %63 = load i64, ptr @H5E_LINKCOUNT_g, align 8, !tbaa !32
  %call80 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 186, i64 noundef %61, i64 noundef %62, i64 noundef %63, ptr noundef @.str.9)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %64 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool81 = trunc i8 %64 to i1
  %frombool82 = zext i1 %tobool81 to i8
  store i8 %frombool82, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end83:                                         ; preds = %if.end75
  %oloc84 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %65 = load ptr, ptr %oloc84, align 8, !tbaa !35
  %call85 = call i32 @H5O_dec_rc_by_loc(ptr noundef %65)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then87, label %if.end91

if.then87:                                        ; preds = %if.end83
  %66 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %67 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %68 = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !32
  %call88 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 191, i64 noundef %66, i64 noundef %67, i64 noundef %68, ptr noundef @.str.10)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %69 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool89 = trunc i8 %69 to i1
  %frombool90 = zext i1 %tobool89 to i8
  store i8 %frombool90, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end91:                                         ; preds = %if.end83
  store i8 1, ptr %sblock_dirty, align 1, !tbaa !8
  %70 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared92 = getelementptr inbounds %struct.H5F_t, ptr %70, i32 0, i32 2
  %71 = load ptr, ptr %shared92, align 8, !tbaa !12
  %sblock93 = getelementptr inbounds %struct.H5F_shared_t, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %sblock93, align 8, !tbaa !33
  %root_ent = getelementptr inbounds %struct.H5F_super_t, ptr %72, i32 0, i32 11
  %73 = load ptr, ptr %root_ent, align 8, !tbaa !42
  %tobool94 = icmp ne ptr %73, null
  br i1 %tobool94, label %cond.false96, label %cond.true95

cond.true95:                                      ; preds = %if.end91
  br label %cond.end97

cond.false96:                                     ; preds = %if.end91
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.1, i32 noundef 197, ptr noundef @__PRETTY_FUNCTION__.H5G_mkroot) #5
  unreachable

74:                                               ; No predecessors!
  br label %cond.end97

cond.end97:                                       ; preds = %74, %cond.true95
  %75 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared98 = getelementptr inbounds %struct.H5F_t, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %shared98, align 8, !tbaa !12
  %sblock99 = getelementptr inbounds %struct.H5F_shared_t, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %sblock99, align 8, !tbaa !33
  %super_vers = getelementptr inbounds %struct.H5F_super_t, ptr %77, i32 0, i32 1
  %78 = load i32, ptr %super_vers, align 8, !tbaa !45
  %cmp100 = icmp ult i32 %78, 2
  br i1 %cmp100, label %if.then101, label %if.end131

if.then101:                                       ; preds = %cond.end97
  %call102 = call ptr @H5MM_calloc(i64 noundef 40)
  %79 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared103 = getelementptr inbounds %struct.H5F_t, ptr %79, i32 0, i32 2
  %80 = load ptr, ptr %shared103, align 8, !tbaa !12
  %sblock104 = getelementptr inbounds %struct.H5F_shared_t, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %sblock104, align 8, !tbaa !33
  %root_ent105 = getelementptr inbounds %struct.H5F_super_t, ptr %81, i32 0, i32 11
  store ptr %call102, ptr %root_ent105, align 8, !tbaa !42
  %cmp106 = icmp eq ptr null, %call102
  br i1 %cmp106, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.then101
  %82 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %83 = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !32
  %84 = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !32
  %call108 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 201, i64 noundef %82, i64 noundef %83, i64 noundef %84, ptr noundef @.str.12)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %85 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool109 = trunc i8 %85 to i1
  %frombool110 = zext i1 %tobool109 to i8
  store i8 %frombool110, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end111:                                        ; preds = %if.then101
  %cache_type112 = getelementptr inbounds %struct.H5G_obj_create_t, ptr %gcrt_info, i32 0, i32 1
  %86 = load i32, ptr %cache_type112, align 8, !tbaa !41
  %87 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared113 = getelementptr inbounds %struct.H5F_t, ptr %87, i32 0, i32 2
  %88 = load ptr, ptr %shared113, align 8, !tbaa !12
  %sblock114 = getelementptr inbounds %struct.H5F_shared_t, ptr %88, i32 0, i32 1
  %89 = load ptr, ptr %sblock114, align 8, !tbaa !33
  %root_ent115 = getelementptr inbounds %struct.H5F_super_t, ptr %89, i32 0, i32 11
  %90 = load ptr, ptr %root_ent115, align 8, !tbaa !42
  %type = getelementptr inbounds %struct.H5G_entry_t, ptr %90, i32 0, i32 0
  store i32 %86, ptr %type, align 8, !tbaa !46
  %cache_type116 = getelementptr inbounds %struct.H5G_obj_create_t, ptr %gcrt_info, i32 0, i32 1
  %91 = load i32, ptr %cache_type116, align 8, !tbaa !41
  %cmp117 = icmp ne i32 %91, 0
  br i1 %cmp117, label %if.then118, label %if.end123

if.then118:                                       ; preds = %if.end111
  %92 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared119 = getelementptr inbounds %struct.H5F_t, ptr %92, i32 0, i32 2
  %93 = load ptr, ptr %shared119, align 8, !tbaa !12
  %sblock120 = getelementptr inbounds %struct.H5F_shared_t, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %sblock120, align 8, !tbaa !33
  %root_ent121 = getelementptr inbounds %struct.H5F_super_t, ptr %94, i32 0, i32 11
  %95 = load ptr, ptr %root_ent121, align 8, !tbaa !42
  %cache = getelementptr inbounds %struct.H5G_entry_t, ptr %95, i32 0, i32 1
  %cache122 = getelementptr inbounds %struct.H5G_obj_create_t, ptr %gcrt_info, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cache, ptr align 8 %cache122, i64 16, i1 false), !tbaa.struct !48
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %if.end111
  %96 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared124 = getelementptr inbounds %struct.H5F_t, ptr %96, i32 0, i32 2
  %97 = load ptr, ptr %shared124, align 8, !tbaa !12
  %sblock125 = getelementptr inbounds %struct.H5F_shared_t, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %sblock125, align 8, !tbaa !33
  %root_ent126 = getelementptr inbounds %struct.H5F_super_t, ptr %98, i32 0, i32 11
  %99 = load ptr, ptr %root_ent126, align 8, !tbaa !42
  %name_off = getelementptr inbounds %struct.H5G_entry_t, ptr %99, i32 0, i32 2
  store i64 0, ptr %name_off, align 8, !tbaa !49
  %oloc127 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %100 = load ptr, ptr %oloc127, align 8, !tbaa !35
  %addr = getelementptr inbounds %struct.H5O_loc_t, ptr %100, i32 0, i32 1
  %101 = load i64, ptr %addr, align 8, !tbaa !50
  %102 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared128 = getelementptr inbounds %struct.H5F_t, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %shared128, align 8, !tbaa !12
  %sblock129 = getelementptr inbounds %struct.H5F_shared_t, ptr %103, i32 0, i32 1
  %104 = load ptr, ptr %sblock129, align 8, !tbaa !33
  %root_ent130 = getelementptr inbounds %struct.H5F_super_t, ptr %104, i32 0, i32 11
  %105 = load ptr, ptr %root_ent130, align 8, !tbaa !42
  %header = getelementptr inbounds %struct.H5G_entry_t, ptr %105, i32 0, i32 3
  store i64 %101, ptr %header, align 8, !tbaa !51
  br label %if.end131

if.end131:                                        ; preds = %if.end123, %cond.end97
  br label %if.end195

if.else:                                          ; preds = %if.end57
  %106 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared132 = getelementptr inbounds %struct.H5F_t, ptr %106, i32 0, i32 2
  %107 = load ptr, ptr %shared132, align 8, !tbaa !12
  %sblock133 = getelementptr inbounds %struct.H5F_shared_t, ptr %107, i32 0, i32 1
  %108 = load ptr, ptr %sblock133, align 8, !tbaa !33
  %root_addr = getelementptr inbounds %struct.H5F_super_t, ptr %108, i32 0, i32 10
  %109 = load i64, ptr %root_addr, align 8, !tbaa !52
  %oloc134 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %110 = load ptr, ptr %oloc134, align 8, !tbaa !35
  %addr135 = getelementptr inbounds %struct.H5O_loc_t, ptr %110, i32 0, i32 1
  store i64 %109, ptr %addr135, align 8, !tbaa !50
  %111 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %oloc136 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %112 = load ptr, ptr %oloc136, align 8, !tbaa !35
  %file = getelementptr inbounds %struct.H5O_loc_t, ptr %112, i32 0, i32 0
  store ptr %111, ptr %file, align 8, !tbaa !53
  %oloc137 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %113 = load ptr, ptr %oloc137, align 8, !tbaa !35
  %call138 = call i32 @H5O_open(ptr noundef %113)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then140, label %if.end144

if.then140:                                       ; preds = %if.else
  %114 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %115 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %116 = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !32
  %call141 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 220, i64 noundef %114, i64 noundef %115, i64 noundef %116, ptr noundef @.str.13)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %117 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool142 = trunc i8 %117 to i1
  %frombool143 = zext i1 %tobool142 to i8
  store i8 %frombool143, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end144:                                        ; preds = %if.else
  %118 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared145 = getelementptr inbounds %struct.H5F_t, ptr %118, i32 0, i32 2
  %119 = load ptr, ptr %shared145, align 8, !tbaa !12
  %sblock146 = getelementptr inbounds %struct.H5F_shared_t, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %sblock146, align 8, !tbaa !33
  %root_ent147 = getelementptr inbounds %struct.H5F_super_t, ptr %120, i32 0, i32 11
  %121 = load ptr, ptr %root_ent147, align 8, !tbaa !42
  %tobool148 = icmp ne ptr %121, null
  br i1 %tobool148, label %land.lhs.true149, label %if.end194

land.lhs.true149:                                 ; preds = %if.end144
  %122 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared150 = getelementptr inbounds %struct.H5F_t, ptr %122, i32 0, i32 2
  %123 = load ptr, ptr %shared150, align 8, !tbaa !12
  %sblock151 = getelementptr inbounds %struct.H5F_shared_t, ptr %123, i32 0, i32 1
  %124 = load ptr, ptr %sblock151, align 8, !tbaa !33
  %root_ent152 = getelementptr inbounds %struct.H5F_super_t, ptr %124, i32 0, i32 11
  %125 = load ptr, ptr %root_ent152, align 8, !tbaa !42
  %type153 = getelementptr inbounds %struct.H5G_entry_t, ptr %125, i32 0, i32 0
  %126 = load i32, ptr %type153, align 8, !tbaa !46
  %cmp154 = icmp eq i32 %126, 1
  br i1 %cmp154, label %if.then155, label %if.end194

if.then155:                                       ; preds = %land.lhs.true149
  %oloc156 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %127 = load ptr, ptr %oloc156, align 8, !tbaa !35
  %call157 = call i32 @H5O_msg_exists(ptr noundef %127, i32 noundef 17)
  store i32 %call157, ptr %stab_exists, align 4, !tbaa !31
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %if.then159, label %if.end163

if.then159:                                       ; preds = %if.then155
  %128 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %129 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %130 = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !32
  %call160 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 228, i64 noundef %128, i64 noundef %129, i64 noundef %130, ptr noundef @.str.14)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %131 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool161 = trunc i8 %131 to i1
  %frombool162 = zext i1 %tobool161 to i8
  store i8 %frombool162, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end163:                                        ; preds = %if.then155
  %132 = load i32, ptr %stab_exists, align 4, !tbaa !31
  %tobool164 = icmp ne i32 %132, 0
  br i1 %tobool164, label %if.else170, label %if.then165

if.then165:                                       ; preds = %if.end163
  %133 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared166 = getelementptr inbounds %struct.H5F_t, ptr %133, i32 0, i32 2
  %134 = load ptr, ptr %shared166, align 8, !tbaa !12
  %sblock167 = getelementptr inbounds %struct.H5F_shared_t, ptr %134, i32 0, i32 1
  %135 = load ptr, ptr %sblock167, align 8, !tbaa !33
  %root_ent168 = getelementptr inbounds %struct.H5F_super_t, ptr %135, i32 0, i32 11
  %136 = load ptr, ptr %root_ent168, align 8, !tbaa !42
  %type169 = getelementptr inbounds %struct.H5G_entry_t, ptr %136, i32 0, i32 0
  store i32 0, ptr %type169, align 8, !tbaa !46
  br label %if.end193

if.else170:                                       ; preds = %if.end163
  %137 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call171 = call i32 @H5F_get_intent(ptr noundef %137)
  %and = and i32 %call171, 1
  %tobool172 = icmp ne i32 %and, 0
  br i1 %tobool172, label %if.then173, label %if.end192

if.then173:                                       ; preds = %if.else170
  call void @llvm.lifetime.start.p0(i64 16, ptr %cached_stab) #6
  %138 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared174 = getelementptr inbounds %struct.H5F_t, ptr %138, i32 0, i32 2
  %139 = load ptr, ptr %shared174, align 8, !tbaa !12
  %sblock175 = getelementptr inbounds %struct.H5F_shared_t, ptr %139, i32 0, i32 1
  %140 = load ptr, ptr %sblock175, align 8, !tbaa !33
  %root_ent176 = getelementptr inbounds %struct.H5F_super_t, ptr %140, i32 0, i32 11
  %141 = load ptr, ptr %root_ent176, align 8, !tbaa !42
  %cache177 = getelementptr inbounds %struct.H5G_entry_t, ptr %141, i32 0, i32 1
  %btree_addr = getelementptr inbounds %struct.anon, ptr %cache177, i32 0, i32 0
  %142 = load i64, ptr %btree_addr, align 8, !tbaa !54
  %btree_addr178 = getelementptr inbounds %struct.H5O_stab_t, ptr %cached_stab, i32 0, i32 0
  store i64 %142, ptr %btree_addr178, align 8, !tbaa !55
  %143 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared179 = getelementptr inbounds %struct.H5F_t, ptr %143, i32 0, i32 2
  %144 = load ptr, ptr %shared179, align 8, !tbaa !12
  %sblock180 = getelementptr inbounds %struct.H5F_shared_t, ptr %144, i32 0, i32 1
  %145 = load ptr, ptr %sblock180, align 8, !tbaa !33
  %root_ent181 = getelementptr inbounds %struct.H5F_super_t, ptr %145, i32 0, i32 11
  %146 = load ptr, ptr %root_ent181, align 8, !tbaa !42
  %cache182 = getelementptr inbounds %struct.H5G_entry_t, ptr %146, i32 0, i32 1
  %heap_addr = getelementptr inbounds %struct.anon, ptr %cache182, i32 0, i32 1
  %147 = load i64, ptr %heap_addr, align 8, !tbaa !54
  %heap_addr183 = getelementptr inbounds %struct.H5O_stab_t, ptr %cached_stab, i32 0, i32 1
  store i64 %147, ptr %heap_addr183, align 8, !tbaa !57
  %oloc184 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %148 = load ptr, ptr %oloc184, align 8, !tbaa !35
  %call185 = call i32 @H5G__stab_valid(ptr noundef %148, ptr noundef %cached_stab)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.then187, label %if.end191

if.then187:                                       ; preds = %if.then173
  %149 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %150 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %151 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !32
  %call188 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 246, i64 noundef %149, i64 noundef %150, i64 noundef %151, ptr noundef @.str.15)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %152 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool189 = trunc i8 %152 to i1
  %frombool190 = zext i1 %tobool189 to i8
  store i8 %frombool190, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end191:                                        ; preds = %if.then173
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then187, %if.end191
  call void @llvm.lifetime.end.p0(i64 16, ptr %cached_stab) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup327 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end192

if.end192:                                        ; preds = %cleanup.cont, %if.else170
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then165
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %land.lhs.true149, %if.end144
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.end131
  %153 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call196 = call i32 @H5F_get_intent(ptr noundef %153)
  %and197 = and i32 %call196, 1
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %land.lhs.true199, label %if.end253

land.lhs.true199:                                 ; preds = %if.end195
  %154 = load i32, ptr %stab_exists, align 4, !tbaa !31
  %cmp200 = icmp ne i32 %154, 0
  br i1 %cmp200, label %land.lhs.true201, label %if.end253

land.lhs.true201:                                 ; preds = %land.lhs.true199
  %155 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared202 = getelementptr inbounds %struct.H5F_t, ptr %155, i32 0, i32 2
  %156 = load ptr, ptr %shared202, align 8, !tbaa !12
  %sblock203 = getelementptr inbounds %struct.H5F_shared_t, ptr %156, i32 0, i32 1
  %157 = load ptr, ptr %sblock203, align 8, !tbaa !33
  %root_ent204 = getelementptr inbounds %struct.H5F_super_t, ptr %157, i32 0, i32 11
  %158 = load ptr, ptr %root_ent204, align 8, !tbaa !42
  %tobool205 = icmp ne ptr %158, null
  br i1 %tobool205, label %land.lhs.true206, label %if.end253

land.lhs.true206:                                 ; preds = %land.lhs.true201
  %159 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared207 = getelementptr inbounds %struct.H5F_t, ptr %159, i32 0, i32 2
  %160 = load ptr, ptr %shared207, align 8, !tbaa !12
  %sblock208 = getelementptr inbounds %struct.H5F_shared_t, ptr %160, i32 0, i32 1
  %161 = load ptr, ptr %sblock208, align 8, !tbaa !33
  %root_ent209 = getelementptr inbounds %struct.H5F_super_t, ptr %161, i32 0, i32 11
  %162 = load ptr, ptr %root_ent209, align 8, !tbaa !42
  %type210 = getelementptr inbounds %struct.H5G_entry_t, ptr %162, i32 0, i32 0
  %163 = load i32, ptr %type210, align 8, !tbaa !46
  %cmp211 = icmp ne i32 %163, 1
  br i1 %cmp211, label %if.then212, label %if.end253

if.then212:                                       ; preds = %land.lhs.true206
  call void @llvm.lifetime.start.p0(i64 16, ptr %stab) #6
  %164 = load i32, ptr %stab_exists, align 4, !tbaa !31
  %cmp213 = icmp eq i32 %164, -1
  br i1 %cmp213, label %land.lhs.true214, label %if.end222

land.lhs.true214:                                 ; preds = %if.then212
  %oloc215 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %165 = load ptr, ptr %oloc215, align 8, !tbaa !35
  %call216 = call i32 @H5O_msg_exists(ptr noundef %165, i32 noundef 17)
  store i32 %call216, ptr %stab_exists, align 4, !tbaa !31
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then218, label %if.end222

if.then218:                                       ; preds = %land.lhs.true214
  %166 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %167 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %168 = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !32
  %call219 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 265, i64 noundef %166, i64 noundef %167, i64 noundef %168, ptr noundef @.str.14)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %169 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool220 = trunc i8 %169 to i1
  %frombool221 = zext i1 %tobool220 to i8
  store i8 %frombool221, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup250

if.end222:                                        ; preds = %land.lhs.true214, %if.then212
  %170 = load i32, ptr %stab_exists, align 4, !tbaa !31
  %tobool223 = icmp ne i32 %170, 0
  br i1 %tobool223, label %if.then224, label %if.end249

if.then224:                                       ; preds = %if.end222
  %oloc225 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 0
  %171 = load ptr, ptr %oloc225, align 8, !tbaa !35
  %call226 = call ptr @H5O_msg_read(ptr noundef %171, i32 noundef 17, ptr noundef %stab)
  %cmp227 = icmp eq ptr null, %call226
  br i1 %cmp227, label %if.then228, label %if.end232

if.then228:                                       ; preds = %if.then224
  %172 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %173 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !32
  %174 = load i64, ptr @H5E_BADMESG_g, align 8, !tbaa !32
  %call229 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 270, i64 noundef %172, i64 noundef %173, i64 noundef %174, ptr noundef @.str.16)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %175 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool230 = trunc i8 %175 to i1
  %frombool231 = zext i1 %tobool230 to i8
  store i8 %frombool231, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup250

if.end232:                                        ; preds = %if.then224
  %176 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared233 = getelementptr inbounds %struct.H5F_t, ptr %176, i32 0, i32 2
  %177 = load ptr, ptr %shared233, align 8, !tbaa !12
  %sblock234 = getelementptr inbounds %struct.H5F_shared_t, ptr %177, i32 0, i32 1
  %178 = load ptr, ptr %sblock234, align 8, !tbaa !33
  %root_ent235 = getelementptr inbounds %struct.H5F_super_t, ptr %178, i32 0, i32 11
  %179 = load ptr, ptr %root_ent235, align 8, !tbaa !42
  %type236 = getelementptr inbounds %struct.H5G_entry_t, ptr %179, i32 0, i32 0
  store i32 1, ptr %type236, align 8, !tbaa !46
  %btree_addr237 = getelementptr inbounds %struct.H5O_stab_t, ptr %stab, i32 0, i32 0
  %180 = load i64, ptr %btree_addr237, align 8, !tbaa !55
  %181 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared238 = getelementptr inbounds %struct.H5F_t, ptr %181, i32 0, i32 2
  %182 = load ptr, ptr %shared238, align 8, !tbaa !12
  %sblock239 = getelementptr inbounds %struct.H5F_shared_t, ptr %182, i32 0, i32 1
  %183 = load ptr, ptr %sblock239, align 8, !tbaa !33
  %root_ent240 = getelementptr inbounds %struct.H5F_super_t, ptr %183, i32 0, i32 11
  %184 = load ptr, ptr %root_ent240, align 8, !tbaa !42
  %cache241 = getelementptr inbounds %struct.H5G_entry_t, ptr %184, i32 0, i32 1
  %btree_addr242 = getelementptr inbounds %struct.anon, ptr %cache241, i32 0, i32 0
  store i64 %180, ptr %btree_addr242, align 8, !tbaa !54
  %heap_addr243 = getelementptr inbounds %struct.H5O_stab_t, ptr %stab, i32 0, i32 1
  %185 = load i64, ptr %heap_addr243, align 8, !tbaa !57
  %186 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared244 = getelementptr inbounds %struct.H5F_t, ptr %186, i32 0, i32 2
  %187 = load ptr, ptr %shared244, align 8, !tbaa !12
  %sblock245 = getelementptr inbounds %struct.H5F_shared_t, ptr %187, i32 0, i32 1
  %188 = load ptr, ptr %sblock245, align 8, !tbaa !33
  %root_ent246 = getelementptr inbounds %struct.H5F_super_t, ptr %188, i32 0, i32 11
  %189 = load ptr, ptr %root_ent246, align 8, !tbaa !42
  %cache247 = getelementptr inbounds %struct.H5G_entry_t, ptr %189, i32 0, i32 1
  %heap_addr248 = getelementptr inbounds %struct.anon, ptr %cache247, i32 0, i32 1
  store i64 %185, ptr %heap_addr248, align 8, !tbaa !54
  store i8 1, ptr %sblock_dirty, align 1, !tbaa !8
  br label %if.end249

if.end249:                                        ; preds = %if.end232, %if.end222
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup250

cleanup250:                                       ; preds = %if.then228, %if.then218, %if.end249
  call void @llvm.lifetime.end.p0(i64 16, ptr %stab) #6
  %cleanup.dest251 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest251, label %cleanup327 [
    i32 0, label %cleanup.cont252
    i32 2, label %done
  ]

cleanup.cont252:                                  ; preds = %cleanup250
  br label %if.end253

if.end253:                                        ; preds = %cleanup.cont252, %land.lhs.true206, %land.lhs.true201, %land.lhs.true199, %if.end195
  %path254 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 1
  %190 = load ptr, ptr %path254, align 8, !tbaa !37
  %call255 = call i32 @H5G__name_init(ptr noundef %190, ptr noundef @.str.17)
  store i8 1, ptr %path_init, align 1, !tbaa !8
  %191 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared256 = getelementptr inbounds %struct.H5F_t, ptr %191, i32 0, i32 2
  %192 = load ptr, ptr %shared256, align 8, !tbaa !12
  %root_grp257 = getelementptr inbounds %struct.H5F_shared_t, ptr %192, i32 0, i32 37
  %193 = load ptr, ptr %root_grp257, align 8, !tbaa !16
  %shared258 = getelementptr inbounds %struct.H5G_t, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %shared258, align 8, !tbaa !34
  %fo_count = getelementptr inbounds %struct.H5G_shared_t, ptr %194, i32 0, i32 0
  store i32 1, ptr %fo_count, align 4, !tbaa !58
  %195 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %nopen_objs = getelementptr inbounds %struct.H5F_t, ptr %195, i32 0, i32 4
  %196 = load i32, ptr %nopen_objs, align 8, !tbaa !60
  %cmp259 = icmp eq i32 1, %196
  br i1 %cmp259, label %cond.true267, label %lor.lhs.false260

lor.lhs.false260:                                 ; preds = %if.end253
  %197 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %nopen_objs261 = getelementptr inbounds %struct.H5F_t, ptr %197, i32 0, i32 4
  %198 = load i32, ptr %nopen_objs261, align 8, !tbaa !60
  %cmp262 = icmp eq i32 2, %198
  br i1 %cmp262, label %land.lhs.true263, label %cond.false268

land.lhs.true263:                                 ; preds = %lor.lhs.false260
  %199 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared264 = getelementptr inbounds %struct.H5F_t, ptr %199, i32 0, i32 2
  %200 = load ptr, ptr %shared264, align 8, !tbaa !12
  %sblock265 = getelementptr inbounds %struct.H5F_shared_t, ptr %200, i32 0, i32 1
  %201 = load ptr, ptr %sblock265, align 8, !tbaa !33
  %ext_addr = getelementptr inbounds %struct.H5F_super_t, ptr %201, i32 0, i32 8
  %202 = load i64, ptr %ext_addr, align 8, !tbaa !61
  %cmp266 = icmp ne i64 -1, %202
  br i1 %cmp266, label %cond.true267, label %cond.false268

cond.true267:                                     ; preds = %land.lhs.true263, %if.end253
  br label %cond.end269

cond.false268:                                    ; preds = %land.lhs.true263, %lor.lhs.false260
  call void @__assert_fail(ptr noundef @.str.18, ptr noundef @.str.1, i32 noundef 291, ptr noundef @__PRETTY_FUNCTION__.H5G_mkroot) #5
  unreachable

203:                                              ; No predecessors!
  br label %cond.end269

cond.end269:                                      ; preds = %203, %cond.true267
  %204 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %nopen_objs270 = getelementptr inbounds %struct.H5F_t, ptr %204, i32 0, i32 4
  %205 = load i32, ptr %nopen_objs270, align 8, !tbaa !60
  %dec = add i32 %205, -1
  store i32 %dec, ptr %nopen_objs270, align 8, !tbaa !60
  br label %done

done:                                             ; preds = %cond.end269, %cleanup250, %cleanup, %if.then159, %if.then140, %if.then107, %if.then87, %if.then79, %if.then71, %if.then48, %if.then38, %if.then29, %if.then25, %if.then4
  %206 = load i32, ptr %ret_value, align 4, !tbaa !31
  %cmp271 = icmp slt i32 %206, 0
  br i1 %cmp271, label %if.then272, label %if.end313

if.then272:                                       ; preds = %done
  %207 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared273 = getelementptr inbounds %struct.H5F_t, ptr %207, i32 0, i32 2
  %208 = load ptr, ptr %shared273, align 8, !tbaa !12
  %root_grp274 = getelementptr inbounds %struct.H5F_shared_t, ptr %208, i32 0, i32 37
  %209 = load ptr, ptr %root_grp274, align 8, !tbaa !16
  %tobool275 = icmp ne ptr %209, null
  br i1 %tobool275, label %if.then276, label %if.end300

if.then276:                                       ; preds = %if.then272
  %210 = load i8, ptr %path_init, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool277 = trunc i8 %210 to i1
  br i1 %tobool277, label %if.then278, label %if.end281

if.then278:                                       ; preds = %if.then276
  %path279 = getelementptr inbounds %struct.H5G_loc_t, ptr %root_loc, i32 0, i32 1
  %211 = load ptr, ptr %path279, align 8, !tbaa !37
  %call280 = call i32 @H5G_name_free(ptr noundef %211)
  br label %if.end281

if.end281:                                        ; preds = %if.then278, %if.then276
  %212 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared282 = getelementptr inbounds %struct.H5F_t, ptr %212, i32 0, i32 2
  %213 = load ptr, ptr %shared282, align 8, !tbaa !12
  %root_grp283 = getelementptr inbounds %struct.H5F_shared_t, ptr %213, i32 0, i32 37
  %214 = load ptr, ptr %root_grp283, align 8, !tbaa !16
  %shared284 = getelementptr inbounds %struct.H5G_t, ptr %214, i32 0, i32 0
  %215 = load ptr, ptr %shared284, align 8, !tbaa !34
  %tobool285 = icmp ne ptr %215, null
  br i1 %tobool285, label %if.then286, label %if.end294

if.then286:                                       ; preds = %if.end281
  %216 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared287 = getelementptr inbounds %struct.H5F_t, ptr %216, i32 0, i32 2
  %217 = load ptr, ptr %shared287, align 8, !tbaa !12
  %root_grp288 = getelementptr inbounds %struct.H5F_shared_t, ptr %217, i32 0, i32 37
  %218 = load ptr, ptr %root_grp288, align 8, !tbaa !16
  %shared289 = getelementptr inbounds %struct.H5G_t, ptr %218, i32 0, i32 0
  %219 = load ptr, ptr %shared289, align 8, !tbaa !34
  %call290 = call ptr @H5FL_reg_free(ptr noundef @H5_H5G_shared_t_reg_free_list, ptr noundef %219)
  %220 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared291 = getelementptr inbounds %struct.H5F_t, ptr %220, i32 0, i32 2
  %221 = load ptr, ptr %shared291, align 8, !tbaa !12
  %root_grp292 = getelementptr inbounds %struct.H5F_shared_t, ptr %221, i32 0, i32 37
  %222 = load ptr, ptr %root_grp292, align 8, !tbaa !16
  %shared293 = getelementptr inbounds %struct.H5G_t, ptr %222, i32 0, i32 0
  store ptr %call290, ptr %shared293, align 8, !tbaa !34
  br label %if.end294

if.end294:                                        ; preds = %if.then286, %if.end281
  %223 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared295 = getelementptr inbounds %struct.H5F_t, ptr %223, i32 0, i32 2
  %224 = load ptr, ptr %shared295, align 8, !tbaa !12
  %root_grp296 = getelementptr inbounds %struct.H5F_shared_t, ptr %224, i32 0, i32 37
  %225 = load ptr, ptr %root_grp296, align 8, !tbaa !16
  %call297 = call ptr @H5FL_reg_free(ptr noundef @H5_H5G_t_reg_free_list, ptr noundef %225)
  %226 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared298 = getelementptr inbounds %struct.H5F_t, ptr %226, i32 0, i32 2
  %227 = load ptr, ptr %shared298, align 8, !tbaa !12
  %root_grp299 = getelementptr inbounds %struct.H5F_shared_t, ptr %227, i32 0, i32 37
  store ptr %call297, ptr %root_grp299, align 8, !tbaa !16
  br label %if.end300

if.end300:                                        ; preds = %if.end294, %if.then272
  %228 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared301 = getelementptr inbounds %struct.H5F_t, ptr %228, i32 0, i32 2
  %229 = load ptr, ptr %shared301, align 8, !tbaa !12
  %sblock302 = getelementptr inbounds %struct.H5F_shared_t, ptr %229, i32 0, i32 1
  %230 = load ptr, ptr %sblock302, align 8, !tbaa !33
  %tobool303 = icmp ne ptr %230, null
  br i1 %tobool303, label %if.then304, label %if.end312

if.then304:                                       ; preds = %if.end300
  %231 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared305 = getelementptr inbounds %struct.H5F_t, ptr %231, i32 0, i32 2
  %232 = load ptr, ptr %shared305, align 8, !tbaa !12
  %sblock306 = getelementptr inbounds %struct.H5F_shared_t, ptr %232, i32 0, i32 1
  %233 = load ptr, ptr %sblock306, align 8, !tbaa !33
  %root_ent307 = getelementptr inbounds %struct.H5F_super_t, ptr %233, i32 0, i32 11
  %234 = load ptr, ptr %root_ent307, align 8, !tbaa !42
  %call308 = call ptr @H5MM_xfree(ptr noundef %234)
  %235 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared309 = getelementptr inbounds %struct.H5F_t, ptr %235, i32 0, i32 2
  %236 = load ptr, ptr %shared309, align 8, !tbaa !12
  %sblock310 = getelementptr inbounds %struct.H5F_shared_t, ptr %236, i32 0, i32 1
  %237 = load ptr, ptr %sblock310, align 8, !tbaa !33
  %root_ent311 = getelementptr inbounds %struct.H5F_super_t, ptr %237, i32 0, i32 11
  store ptr %call308, ptr %root_ent311, align 8, !tbaa !42
  br label %if.end312

if.end312:                                        ; preds = %if.then304, %if.end300
  br label %if.end313

if.end313:                                        ; preds = %if.end312, %done
  %238 = load i8, ptr %sblock_dirty, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool314 = trunc i8 %238 to i1
  br i1 %tobool314, label %if.then315, label %if.end325

if.then315:                                       ; preds = %if.end313
  %239 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %shared316 = getelementptr inbounds %struct.H5F_t, ptr %239, i32 0, i32 2
  %240 = load ptr, ptr %shared316, align 8, !tbaa !12
  %sblock317 = getelementptr inbounds %struct.H5F_shared_t, ptr %240, i32 0, i32 1
  %241 = load ptr, ptr %sblock317, align 8, !tbaa !33
  %call318 = call i32 @H5AC_mark_entry_dirty(ptr noundef %241)
  %cmp319 = icmp slt i32 %call318, 0
  br i1 %cmp319, label %if.then320, label %if.end324

if.then320:                                       ; preds = %if.then315
  %242 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %243 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !32
  %244 = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !32
  %call321 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_mkroot, i32 noundef 312, i64 noundef %242, i64 noundef %243, i64 noundef %244, ptr noundef @.str.19)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %245 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool322 = trunc i8 %245 to i1
  %frombool323 = zext i1 %tobool322 to i8
  store i8 %frombool323, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %if.end324

if.end324:                                        ; preds = %if.then320, %if.then315
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.end313
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %lor.lhs.false
  %246 = load i32, ptr %ret_value, align 4, !tbaa !31
  store i32 %246, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup327

cleanup327:                                       ; preds = %if.end326, %cleanup250, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %path_init) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %sblock_dirty) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %stab_exists) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %gcrt_info) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %root_loc) #6
  %247 = load i32, ptr %retval, align 4
  ret i32 %247
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @H5G__init_package() #3

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) #3

declare i32 @H5G__node_init(ptr noundef) #3

declare ptr @H5FL_reg_calloc(ptr noundef) #3

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) #3

declare i32 @H5G_loc_reset(ptr noundef) #3

declare i32 @H5G__obj_create(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @H5O_link(ptr noundef, i32 noundef) #3

declare i32 @H5O_dec_rc_by_loc(ptr noundef) #3

declare ptr @H5MM_calloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @H5O_open(ptr noundef) #3

declare i32 @H5O_msg_exists(ptr noundef, i32 noundef) #3

declare i32 @H5F_get_intent(ptr noundef) #3

declare i32 @H5G__stab_valid(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @H5O_msg_read(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @H5G__name_init(ptr noundef, ptr noundef) #3

declare i32 @H5G_name_free(ptr noundef) #3

declare ptr @H5MM_xfree(ptr noundef) #3

declare i32 @H5AC_mark_entry_dirty(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @H5G_root_free(ptr noundef %grp) #0 {
entry:
  %grp.addr = alloca ptr, align 8
  store ptr %grp, ptr %grp.addr, align 8, !tbaa !4
  %0 = load i8, ptr @H5G_root_free.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5G_root_free.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end14, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %grp.addr, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then3
  %4 = load ptr, ptr %grp.addr, align 8, !tbaa !4
  %shared = getelementptr inbounds %struct.H5G_t, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %shared, align 8, !tbaa !34
  %tobool5 = icmp ne ptr %5, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then3
  call void @__assert_fail(ptr noundef @.str.20, ptr noundef @.str.1, i32 noundef 338, ptr noundef @__PRETTY_FUNCTION__.H5G_root_free) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %grp.addr, align 8, !tbaa !4
  %shared6 = getelementptr inbounds %struct.H5G_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %shared6, align 8, !tbaa !34
  %fo_count = getelementptr inbounds %struct.H5G_shared_t, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %fo_count, align 4, !tbaa !58
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.21, ptr noundef @.str.1, i32 noundef 339, ptr noundef @__PRETTY_FUNCTION__.H5G_root_free) #5
  unreachable

10:                                               ; No predecessors!
  br label %cond.end9

cond.end9:                                        ; preds = %10, %cond.true7
  %11 = load ptr, ptr %grp.addr, align 8, !tbaa !4
  %path = getelementptr inbounds %struct.H5G_t, ptr %11, i32 0, i32 2
  %call = call i32 @H5G_name_free(ptr noundef %path)
  %12 = load ptr, ptr %grp.addr, align 8, !tbaa !4
  %shared10 = getelementptr inbounds %struct.H5G_t, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %shared10, align 8, !tbaa !34
  %call11 = call ptr @H5FL_reg_free(ptr noundef @H5_H5G_shared_t_reg_free_list, ptr noundef %13)
  %14 = load ptr, ptr %grp.addr, align 8, !tbaa !4
  %shared12 = getelementptr inbounds %struct.H5G_t, ptr %14, i32 0, i32 0
  store ptr %call11, ptr %shared12, align 8, !tbaa !34
  %15 = load ptr, ptr %grp.addr, align 8, !tbaa !4
  %call13 = call ptr @H5FL_reg_free(ptr noundef @H5_H5G_t_reg_free_list, ptr noundef %15)
  store ptr %call13, ptr %grp.addr, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %cond.end9, %lor.lhs.false
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @H5G_root_loc(ptr noundef %f, ptr noundef %loc) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %loc.addr = alloca ptr, align 8
  %root_grp = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %loc, ptr %loc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_grp) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5G_root_loc.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5G_root_loc.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5G_init_g, align 1, !tbaa !8
  %call = call i32 @H5G__init_package()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then3
  store i8 0, ptr @H5G_init_g, align 1, !tbaa !8
  %3 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %4 = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !32
  %5 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !32
  %call5 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_root_loc, i32 noundef 369, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef @.str.4)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %6 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool6 = trunc i8 %6 to i1
  %frombool = zext i1 %tobool6 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end7:                                          ; preds = %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %if.end
  %7 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool9 = trunc i8 %7 to i1
  br i1 %tobool9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %8 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool10 = trunc i8 %8 to i1
  br i1 %tobool10, label %if.end41, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %if.end8
  %9 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %9, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then11
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 371, ptr noundef @__PRETTY_FUNCTION__.H5G_root_loc) #5
  unreachable

10:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load ptr, ptr %loc.addr, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %11, null
  br i1 %tobool13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.1, i32 noundef 372, ptr noundef @__PRETTY_FUNCTION__.H5G_root_loc) #5
  unreachable

12:                                               ; No predecessors!
  br label %cond.end16

cond.end16:                                       ; preds = %12, %cond.true14
  %13 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call17 = call ptr @H5G_rootof(ptr noundef %13)
  store ptr %call17, ptr %root_grp, align 8, !tbaa !4
  %14 = load ptr, ptr %root_grp, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %14, null
  br i1 %tobool18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %cond.end16
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end16
  call void @__assert_fail(ptr noundef @.str.23, ptr noundef @.str.1, i32 noundef 376, ptr noundef @__PRETTY_FUNCTION__.H5G_root_loc) #5
  unreachable

15:                                               ; No predecessors!
  br label %cond.end21

cond.end21:                                       ; preds = %15, %cond.true19
  %16 = load ptr, ptr %root_grp, align 8, !tbaa !4
  %call22 = call ptr @H5G_oloc(ptr noundef %16)
  %17 = load ptr, ptr %loc.addr, align 8, !tbaa !4
  %oloc = getelementptr inbounds %struct.H5G_loc_t, ptr %17, i32 0, i32 0
  store ptr %call22, ptr %oloc, align 8, !tbaa !35
  %cmp23 = icmp eq ptr null, %call22
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %cond.end21
  %18 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %19 = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !32
  %20 = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !32
  %call25 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_root_loc, i32 noundef 380, i64 noundef %18, i64 noundef %19, i64 noundef %20, ptr noundef @.str.24)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %21 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool26 = trunc i8 %21 to i1
  %frombool27 = zext i1 %tobool26 to i8
  store i8 %frombool27, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end28:                                         ; preds = %cond.end21
  %22 = load ptr, ptr %root_grp, align 8, !tbaa !4
  %call29 = call ptr @H5G_nameof(ptr noundef %22)
  %23 = load ptr, ptr %loc.addr, align 8, !tbaa !4
  %path = getelementptr inbounds %struct.H5G_loc_t, ptr %23, i32 0, i32 1
  store ptr %call29, ptr %path, align 8, !tbaa !37
  %cmp30 = icmp eq ptr null, %call29
  br i1 %cmp30, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end28
  %24 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !32
  %25 = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !32
  %26 = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !32
  %call32 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5G_root_loc, i32 noundef 382, i64 noundef %24, i64 noundef %25, i64 noundef %26, ptr noundef @.str.25)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %27 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool33 = trunc i8 %27 to i1
  %frombool34 = zext i1 %tobool33 to i8
  store i8 %frombool34, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !31
  br label %done

if.end35:                                         ; preds = %if.end28
  %28 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %call36 = call zeroext i1 @H5F_is_mount(ptr noundef %28)
  br i1 %call36, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end35
  %29 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %loc.addr, align 8, !tbaa !4
  %oloc38 = getelementptr inbounds %struct.H5G_loc_t, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %oloc38, align 8, !tbaa !35
  %file = getelementptr inbounds %struct.H5O_loc_t, ptr %31, i32 0, i32 0
  store ptr %29, ptr %file, align 8, !tbaa !53
  %32 = load ptr, ptr %loc.addr, align 8, !tbaa !4
  %oloc39 = getelementptr inbounds %struct.H5G_loc_t, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %oloc39, align 8, !tbaa !35
  %holding_file = getelementptr inbounds %struct.H5O_loc_t, ptr %33, i32 0, i32 2
  store i8 0, ptr %holding_file, align 8, !tbaa !62
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35
  br label %done

done:                                             ; preds = %if.end40, %if.then31, %if.then24, %if.then4
  br label %if.end41

if.end41:                                         ; preds = %done, %lor.lhs.false
  %34 = load i32, ptr %ret_value, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_grp) #6
  ret i32 %34
}

declare ptr @H5G_oloc(ptr noundef) #3

declare ptr @H5G_nameof(ptr noundef) #3

declare zeroext i1 @H5F_is_mount(ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!13, !5, i64 16}
!13 = !{!"H5F_t", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !14, i64 32, !5, i64 40, !9, i64 48, !9, i64 49, !5, i64 56, !14, i64 64}
!14 = !{!"int", !6, i64 0}
!15 = !{!13, !5, i64 56}
!16 = !{!17, !5, i64 1456}
!17 = !{!"H5F_shared_t", !5, i64 0, !5, i64 8, !5, i64 16, !9, i64 24, !14, i64 28, !14, i64 32, !18, i64 40, !5, i64 56, !6, i64 64, !6, i64 65, !19, i64 72, !14, i64 80, !14, i64 84, !19, i64 88, !19, i64 96, !5, i64 104, !5, i64 112, !20, i64 120, !22, i64 1336, !9, i64 1348, !9, i64 1349, !5, i64 1352, !19, i64 1360, !6, i64 1368, !9, i64 1372, !19, i64 1376, !19, i64 1384, !21, i64 1392, !19, i64 1400, !23, i64 1408, !23, i64 1416, !14, i64 1424, !6, i64 1428, !6, i64 1432, !9, i64 1436, !14, i64 1440, !5, i64 1448, !5, i64 1456, !5, i64 1464, !5, i64 1472, !9, i64 1480, !9, i64 1481, !19, i64 1488, !5, i64 1496, !5, i64 1504, !6, i64 1512, !23, i64 1520, !9, i64 1528, !14, i64 1532, !9, i64 1536, !19, i64 1544, !9, i64 1552, !6, i64 1556, !6, i64 1608, !6, i64 1712, !9, i64 1816, !19, i64 1824, !19, i64 1832, !6, i64 1840, !6, i64 1868, !24, i64 1896, !24, i64 1936, !23, i64 1976, !19, i64 1984, !25, i64 1992, !14, i64 2048, !14, i64 2052, !6, i64 2056, !26, i64 2296, !9, i64 2312, !5, i64 2320}
!18 = !{!"H5F_mtab_t", !14, i64 0, !14, i64 4, !5, i64 8}
!19 = !{!"long", !6, i64 0}
!20 = !{!"H5AC_cache_config_t", !14, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !6, i64 7, !9, i64 1032, !9, i64 1033, !19, i64 1040, !21, i64 1048, !19, i64 1056, !19, i64 1064, !19, i64 1072, !6, i64 1080, !21, i64 1088, !21, i64 1096, !9, i64 1104, !19, i64 1112, !6, i64 1120, !21, i64 1128, !21, i64 1136, !6, i64 1144, !21, i64 1152, !21, i64 1160, !9, i64 1168, !19, i64 1176, !14, i64 1184, !9, i64 1188, !21, i64 1192, !19, i64 1200, !14, i64 1208}
!21 = !{!"double", !6, i64 0}
!22 = !{!"H5AC_cache_image_config_t", !14, i64 0, !9, i64 4, !9, i64 5, !14, i64 8}
!23 = !{!"long long", !6, i64 0}
!24 = !{!"H5F_blk_aggr_t", !19, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !19, i64 32}
!25 = !{!"H5F_meta_accum_t", !5, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !9, i64 48}
!26 = !{!"H5F_object_flush_t", !5, i64 0, !5, i64 8}
!27 = !{!28, !5, i64 8}
!28 = !{!"H5G_t", !5, i64 0, !29, i64 8, !30, i64 32}
!29 = !{!"H5O_loc_t", !5, i64 0, !19, i64 8, !9, i64 16}
!30 = !{!"", !5, i64 0, !5, i64 8, !14, i64 16}
!31 = !{!14, !14, i64 0}
!32 = !{!19, !19, i64 0}
!33 = !{!17, !5, i64 8}
!34 = !{!28, !5, i64 0}
!35 = !{!36, !5, i64 0}
!36 = !{!"", !5, i64 0, !5, i64 8}
!37 = !{!36, !5, i64 8}
!38 = !{!17, !19, i64 1360}
!39 = !{!40, !19, i64 0}
!40 = !{!"H5G_obj_create_t", !19, i64 0, !6, i64 8, !6, i64 16}
!41 = !{!40, !6, i64 8}
!42 = !{!43, !5, i64 328}
!43 = !{!"H5F_super_t", !44, i64 0, !14, i64 272, !6, i64 276, !6, i64 277, !6, i64 278, !14, i64 280, !6, i64 284, !19, i64 296, !19, i64 304, !19, i64 312, !19, i64 320, !5, i64 328}
!44 = !{!"H5C_cache_entry_t", !14, i64 0, !5, i64 8, !19, i64 16, !19, i64 24, !5, i64 32, !9, i64 40, !5, i64 48, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !14, i64 60, !9, i64 64, !9, i64 65, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !14, i64 72, !5, i64 80, !14, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !14, i64 104, !9, i64 108, !9, i64 109, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !9, i64 160, !14, i64 164, !9, i64 168, !19, i64 176, !5, i64 184, !19, i64 192, !19, i64 200, !14, i64 208, !9, i64 212, !14, i64 216, !14, i64 220, !9, i64 224, !14, i64 228, !5, i64 232, !5, i64 240, !5, i64 248, !14, i64 256, !14, i64 260, !14, i64 264, !14, i64 268}
!45 = !{!43, !14, i64 272}
!46 = !{!47, !6, i64 0}
!47 = !{!"H5G_entry_t", !6, i64 0, !6, i64 8, !19, i64 24, !19, i64 32}
!48 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 0, i64 8, !32}
!49 = !{!47, !19, i64 24}
!50 = !{!29, !19, i64 8}
!51 = !{!47, !19, i64 32}
!52 = !{!43, !19, i64 320}
!53 = !{!29, !5, i64 0}
!54 = !{!6, !6, i64 0}
!55 = !{!56, !19, i64 0}
!56 = !{!"H5O_stab_t", !19, i64 0, !19, i64 8}
!57 = !{!56, !19, i64 8}
!58 = !{!59, !14, i64 0}
!59 = !{!"H5G_shared_t", !14, i64 0, !9, i64 4}
!60 = !{!13, !14, i64 32}
!61 = !{!43, !19, i64 304}
!62 = !{!29, !9, i64 16}
