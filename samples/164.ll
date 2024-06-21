; ModuleID = 'samples/164.bc'
source_filename = "../spack-src/externals/cgns/hdf5/H5Glink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.H5O_link_t = type { i32, i8, i64, i32, ptr, %union.anon }
%union.anon = type { %struct.H5O_link_ud_t }
%struct.H5O_link_ud_t = type { ptr, i64 }
%struct.H5G_entry_t = type { i32, %union.H5G_cache_t, i64, i64 }
%union.H5G_cache_t = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.anon.0 = type { i64 }
%struct.H5O_link_soft_t = type { ptr }
%struct.H5O_link_hard_t = type { i64 }
%struct.H5L_info2_t = type { i32, i8, i64, i32, %union.anon.1 }
%union.anon.1 = type { i64, [8 x i8] }
%struct.H5O_loc_t = type { ptr, i64, i8 }
%struct.H5L_class_t = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.H5G_loc_t = type { ptr, ptr }
%struct.H5G_link_table_t = type { i64, ptr }

@H5G__ent_to_link.func_check = internal global i8 0, align 1
@__func__.H5G__ent_to_link = private unnamed_addr constant [17 x i8] c"H5G__ent_to_link\00", align 1
@.str = private unnamed_addr constant [155 x i8] c"Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in H5private.h (this is usually due to an incorrect number of underscores)\00", align 1
@.str.1 = private unnamed_addr constant [1089 x i8] c"(((((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISupper)) && '_' == __func__[2] && '_' == __func__[3] && ((*__ctype_b_loc ())[(int) (((int)(__func__[4])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISupper)) && '_' == __func__[3] && '_' == __func__[4] && ((*__ctype_b_loc ())[(int) (((int)(__func__[5])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISupper)) && '_' == __func__[4] && '_' == __func__[5] && ((*__ctype_b_loc ())[(int) (((int)(__func__[6])))] & (unsigned short int) _ISlower))) && \22Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in \22 \22H5private.h (this is usually due to an incorrect number of underscores)\22\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"../spack-src/externals/cgns/hdf5/H5Glink.c\00", align 1
@__PRETTY_FUNCTION__.H5G__ent_to_link = private unnamed_addr constant [89 x i8] c"herr_t H5G__ent_to_link(H5O_link_t *, const H5HL_t *, const H5G_entry_t *, const char *)\00", align 1
@H5G_init_g = external global i8, align 1
@H5_libterm_g = external global i8, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lnk\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@H5E_ERR_CLS_g = external global i64, align 8
@H5E_LINK_g = external global i64, align 8
@H5E_CANTGET_g = external global i64, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"unable to duplicate link name\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"unable to get symbolic link name\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"unable to duplicate symbolic link name\00", align 1
@H5G_link_to_info.func_check = internal global i8 0, align 1
@__func__.H5G_link_to_info = private unnamed_addr constant [17 x i8] c"H5G_link_to_info\00", align 1
@H5E_FUNC_g = external global i64, align 8
@H5E_CANTINIT_g = external global i64, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"interface initialization failed\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"link_loc\00", align 1
@__PRETTY_FUNCTION__.H5G_link_to_info = private unnamed_addr constant [78 x i8] c"herr_t H5G_link_to_info(const H5O_loc_t *, const H5O_link_t *, H5L_info2_t *)\00", align 1
@H5E_CANTSERIALIZE_g = external global i64, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"can't serialize address into object token\00", align 1
@H5E_BADTYPE_g = external global i64, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"unknown link class\00", align 1
@H5E_CALLBACK_g = external global i64, align 8
@.str.14 = private unnamed_addr constant [44 x i8] c"query buffer size callback returned failure\00", align 1
@H5G__link_to_loc.func_check = internal global i8 0, align 1
@__func__.H5G__link_to_loc = private unnamed_addr constant [17 x i8] c"H5G__link_to_loc\00", align 1
@__PRETTY_FUNCTION__.H5G__link_to_loc = private unnamed_addr constant [76 x i8] c"herr_t H5G__link_to_loc(const H5G_loc_t *, const H5O_link_t *, H5G_loc_t *)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"grp_loc\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"obj_loc\00", align 1
@H5E_SYM_g = external global i64, align 8
@H5E_UNSUPPORTED_g = external global i64, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"unknown link type\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"cannot set name\00", align 1
@H5G__link_sort_table.func_check = internal global i8 0, align 1
@__func__.H5G__link_sort_table = private unnamed_addr constant [21 x i8] c"H5G__link_sort_table\00", align 1
@__PRETTY_FUNCTION__.H5G__link_sort_table = private unnamed_addr constant [77 x i8] c"herr_t H5G__link_sort_table(H5G_link_table_t *, H5_index_t, H5_iter_order_t)\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ltable\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"ltable->lnks\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"order == H5_ITER_NATIVE\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"idx_type == H5_INDEX_CRT_ORDER\00", align 1
@H5G__link_iterate_table.func_check = internal global i8 0, align 1
@__func__.H5G__link_iterate_table = private unnamed_addr constant [24 x i8] c"H5G__link_iterate_table\00", align 1
@__PRETTY_FUNCTION__.H5G__link_iterate_table = private unnamed_addr constant [110 x i8] c"herr_t H5G__link_iterate_table(const H5G_link_table_t *, hsize_t, hsize_t *, const H5G_lib_iterate_t, void *)\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@H5E_CANTNEXT_g = external global i64, align 8
@.str.24 = private unnamed_addr constant [26 x i8] c"iteration operator failed\00", align 1
@H5G__link_release_table.func_check = internal global i8 0, align 1
@__func__.H5G__link_release_table = private unnamed_addr constant [24 x i8] c"H5G__link_release_table\00", align 1
@__PRETTY_FUNCTION__.H5G__link_release_table = private unnamed_addr constant [51 x i8] c"herr_t H5G__link_release_table(H5G_link_table_t *)\00", align 1
@H5E_CANTFREE_g = external global i64, align 8
@.str.25 = private unnamed_addr constant [31 x i8] c"unable to release link message\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"ltable->lnks == ((void*)0)\00", align 1
@H5G__link_name_replace.func_check = internal global i8 0, align 1
@__func__.H5G__link_name_replace = private unnamed_addr constant [23 x i8] c"H5G__link_name_replace\00", align 1
@__PRETTY_FUNCTION__.H5G__link_name_replace = private unnamed_addr constant [73 x i8] c"herr_t H5G__link_name_replace(H5F_t *, H5RS_str_t *, const H5O_link_t *)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@H5E_CANTDELETE_g = external global i64, align 8
@.str.28 = private unnamed_addr constant [23 x i8] c"unable to replace name\00", align 1
@H5G__link_cmp_name_inc.func_check = internal global i8 0, align 1
@__func__.H5G__link_cmp_name_inc = private unnamed_addr constant [23 x i8] c"H5G__link_cmp_name_inc\00", align 1
@__PRETTY_FUNCTION__.H5G__link_cmp_name_inc = private unnamed_addr constant [55 x i8] c"int H5G__link_cmp_name_inc(const void *, const void *)\00", align 1
@H5G__link_cmp_name_dec.func_check = internal global i8 0, align 1
@__func__.H5G__link_cmp_name_dec = private unnamed_addr constant [23 x i8] c"H5G__link_cmp_name_dec\00", align 1
@__PRETTY_FUNCTION__.H5G__link_cmp_name_dec = private unnamed_addr constant [55 x i8] c"int H5G__link_cmp_name_dec(const void *, const void *)\00", align 1
@H5G__link_cmp_corder_inc.func_check = internal global i8 0, align 1
@__func__.H5G__link_cmp_corder_inc = private unnamed_addr constant [25 x i8] c"H5G__link_cmp_corder_inc\00", align 1
@__PRETTY_FUNCTION__.H5G__link_cmp_corder_inc = private unnamed_addr constant [57 x i8] c"int H5G__link_cmp_corder_inc(const void *, const void *)\00", align 1
@H5G__link_cmp_corder_dec.func_check = internal global i8 0, align 1
@__func__.H5G__link_cmp_corder_dec = private unnamed_addr constant [25 x i8] c"H5G__link_cmp_corder_dec\00", align 1
@__PRETTY_FUNCTION__.H5G__link_cmp_corder_dec = private unnamed_addr constant [57 x i8] c"int H5G__link_cmp_corder_dec(const void *, const void *)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @H5G__ent_to_link(ptr noundef %lnk, ptr noundef %heap, ptr noundef %ent, ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %lnk.addr = alloca ptr, align 8
  %heap.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %dup_soft = alloca i8, align 1
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lnk, ptr %lnk.addr, align 8, !tbaa !4
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %ent, ptr %ent.addr, align 8, !tbaa !4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %dup_soft) #6
  store i8 0, ptr %dup_soft, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5G__ent_to_link.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__ent_to_link, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 212, ptr noundef @__PRETTY_FUNCTION__.H5G__ent_to_link) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__ent_to_link.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end147, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 215, ptr noundef @__PRETTY_FUNCTION__.H5G__ent_to_link) #8
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %35, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 216, ptr noundef @__PRETTY_FUNCTION__.H5G__ent_to_link) #8
  unreachable

36:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %36, %cond.true83
  %37 = load ptr, ptr %ent.addr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %37, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 217, ptr noundef @__PRETTY_FUNCTION__.H5G__ent_to_link) #8
  unreachable

38:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %38, %cond.true87
  %39 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %tobool90 = icmp ne ptr %39, null
  br i1 %tobool90, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %cond.end89
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end89
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 218, ptr noundef @__PRETTY_FUNCTION__.H5G__ent_to_link) #8
  unreachable

40:                                               ; No predecessors!
  br label %cond.end93

cond.end93:                                       ; preds = %40, %cond.true91
  %41 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %cset = getelementptr inbounds %struct.H5O_link_t, ptr %41, i32 0, i32 3
  store i32 0, ptr %cset, align 8, !tbaa !17
  %42 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %corder = getelementptr inbounds %struct.H5O_link_t, ptr %42, i32 0, i32 2
  store i64 0, ptr %corder, align 8, !tbaa !20
  %43 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %corder_valid = getelementptr inbounds %struct.H5O_link_t, ptr %43, i32 0, i32 1
  store i8 0, ptr %corder_valid, align 4, !tbaa !21
  %44 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call94 = call ptr @H5MM_xstrdup(ptr noundef %44)
  %45 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %name95 = getelementptr inbounds %struct.H5O_link_t, ptr %45, i32 0, i32 4
  store ptr %call94, ptr %name95, align 8, !tbaa !22
  %cmp96 = icmp eq ptr %call94, null
  br i1 %cmp96, label %if.then98, label %if.end101

if.then98:                                        ; preds = %cond.end93
  %46 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %47 = load i64, ptr @H5E_LINK_g, align 8, !tbaa !23
  %48 = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !23
  %call99 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__ent_to_link, i32 noundef 225, i64 noundef %46, i64 noundef %47, i64 noundef %48, ptr noundef @.str.7)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %49 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool100 = trunc i8 %49 to i1
  %frombool = zext i1 %tobool100 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end101:                                        ; preds = %cond.end93
  %50 = load ptr, ptr %ent.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.H5G_entry_t, ptr %50, i32 0, i32 0
  %51 = load i32, ptr %type, align 8, !tbaa !24
  %cmp102 = icmp eq i32 %51, 2
  br i1 %cmp102, label %if.then104, label %if.else

if.then104:                                       ; preds = %if.end101
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  %52 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %ent.addr, align 8, !tbaa !4
  %cache = getelementptr inbounds %struct.H5G_entry_t, ptr %53, i32 0, i32 1
  %lval_offset = getelementptr inbounds %struct.anon.0, ptr %cache, i32 0, i32 0
  %54 = load i64, ptr %lval_offset, align 8, !tbaa !14
  %call105 = call ptr @H5HL_offset_into(ptr noundef %52, i64 noundef %54)
  store ptr %call105, ptr %s, align 8, !tbaa !4
  %cmp106 = icmp eq ptr %call105, null
  br i1 %cmp106, label %if.then108, label %if.end112

if.then108:                                       ; preds = %if.then104
  %55 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %56 = load i64, ptr @H5E_LINK_g, align 8, !tbaa !23
  %57 = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !23
  %call109 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__ent_to_link, i32 noundef 232, i64 noundef %55, i64 noundef %56, i64 noundef %57, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %58 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool110 = trunc i8 %58 to i1
  %frombool111 = zext i1 %tobool110 to i8
  store i8 %frombool111, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end112:                                        ; preds = %if.then104
  %59 = load ptr, ptr %s, align 8, !tbaa !4
  %call113 = call ptr @H5MM_xstrdup(ptr noundef %59)
  %60 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.H5O_link_t, ptr %60, i32 0, i32 5
  %name114 = getelementptr inbounds %struct.H5O_link_soft_t, ptr %u, i32 0, i32 0
  store ptr %call113, ptr %name114, align 8, !tbaa !14
  %cmp115 = icmp eq ptr %call113, null
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %if.end112
  %61 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %62 = load i64, ptr @H5E_LINK_g, align 8, !tbaa !23
  %63 = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !23
  %call118 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__ent_to_link, i32 noundef 236, i64 noundef %61, i64 noundef %62, i64 noundef %63, ptr noundef @.str.9)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %64 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool119 = trunc i8 %64 to i1
  %frombool120 = zext i1 %tobool119 to i8
  store i8 %frombool120, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end121:                                        ; preds = %if.end112
  store i8 1, ptr %dup_soft, align 1, !tbaa !8
  %65 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type122 = getelementptr inbounds %struct.H5O_link_t, ptr %65, i32 0, i32 0
  store i32 1, ptr %type122, align 8, !tbaa !26
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.then108, %if.end121
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup148 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end125

if.else:                                          ; preds = %if.end101
  %66 = load ptr, ptr %ent.addr, align 8, !tbaa !4
  %header = getelementptr inbounds %struct.H5G_entry_t, ptr %66, i32 0, i32 3
  %67 = load i64, ptr %header, align 8, !tbaa !27
  %68 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u123 = getelementptr inbounds %struct.H5O_link_t, ptr %68, i32 0, i32 5
  %addr = getelementptr inbounds %struct.H5O_link_hard_t, ptr %u123, i32 0, i32 0
  store i64 %67, ptr %addr, align 8, !tbaa !14
  %69 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type124 = getelementptr inbounds %struct.H5O_link_t, ptr %69, i32 0, i32 0
  store i32 0, ptr %type124, align 8, !tbaa !26
  br label %if.end125

if.end125:                                        ; preds = %if.else, %cleanup.cont
  br label %done

done:                                             ; preds = %if.end125, %cleanup, %if.then98
  %70 = load i32, ptr %ret_value, align 4, !tbaa !10
  %cmp126 = icmp slt i32 %70, 0
  br i1 %cmp126, label %if.then128, label %if.end146

if.then128:                                       ; preds = %done
  %71 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %name129 = getelementptr inbounds %struct.H5O_link_t, ptr %71, i32 0, i32 4
  %72 = load ptr, ptr %name129, align 8, !tbaa !22
  %tobool130 = icmp ne ptr %72, null
  br i1 %tobool130, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.then128
  %73 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %name132 = getelementptr inbounds %struct.H5O_link_t, ptr %73, i32 0, i32 4
  %74 = load ptr, ptr %name132, align 8, !tbaa !22
  %call133 = call ptr @H5MM_xfree(ptr noundef %74)
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.then128
  %75 = load ptr, ptr %ent.addr, align 8, !tbaa !4
  %type135 = getelementptr inbounds %struct.H5G_entry_t, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %type135, align 8, !tbaa !24
  %cmp136 = icmp eq i32 %76, 2
  br i1 %cmp136, label %land.lhs.true138, label %if.end145

land.lhs.true138:                                 ; preds = %if.end134
  %77 = load i8, ptr %dup_soft, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool139 = trunc i8 %77 to i1
  br i1 %tobool139, label %if.then141, label %if.end145

if.then141:                                       ; preds = %land.lhs.true138
  %78 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u142 = getelementptr inbounds %struct.H5O_link_t, ptr %78, i32 0, i32 5
  %name143 = getelementptr inbounds %struct.H5O_link_soft_t, ptr %u142, i32 0, i32 0
  %79 = load ptr, ptr %name143, align 8, !tbaa !14
  %call144 = call ptr @H5MM_xfree(ptr noundef %79)
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %land.lhs.true138, %if.end134
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %done
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %lor.lhs.false75
  %80 = load i32, ptr %ret_value, align 4, !tbaa !10
  store i32 %80, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148

cleanup148:                                       ; preds = %if.end147, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %dup_soft) #6
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @H5MM_xstrdup(ptr noundef) #4

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) #4

declare ptr @H5HL_offset_into(ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @H5MM_xfree(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5G_link_to_info(ptr noundef %link_loc, ptr noundef %lnk, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %link_loc.addr = alloca ptr, align 8
  %lnk.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %link_class = alloca ptr, align 8
  %cb_ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %link_loc, ptr %link_loc.addr, align 8, !tbaa !4
  store ptr %lnk, ptr %lnk.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5G_link_to_info.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5G_link_to_info.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5G_init_g, align 1, !tbaa !8
  %call = call i32 @H5G__init_package()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then3
  store i8 0, ptr @H5G_init_g, align 1, !tbaa !8
  %3 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %4 = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !23
  %5 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %call5 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G_link_to_info, i32 noundef 278, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef @.str.10)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %6 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool6 = trunc i8 %6 to i1
  %frombool = zext i1 %tobool6 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end7:                                          ; preds = %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %if.end
  %7 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool9 = trunc i8 %7 to i1
  br i1 %tobool9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %8 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool10 = trunc i8 %8 to i1
  br i1 %tobool10, label %if.end73, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %if.end8
  %9 = load ptr, ptr %link_loc.addr, align 8, !tbaa !4
  %tobool12 = icmp ne ptr %9, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then11
  br label %cond.end

cond.false:                                       ; preds = %if.then11
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.2, i32 noundef 281, ptr noundef @__PRETTY_FUNCTION__.H5G_link_to_info) #8
  unreachable

10:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %10, %cond.true
  %11 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %11, null
  br i1 %tobool13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 282, ptr noundef @__PRETTY_FUNCTION__.H5G_link_to_info) #8
  unreachable

12:                                               ; No predecessors!
  br label %cond.end16

cond.end16:                                       ; preds = %12, %cond.true14
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %tobool17 = icmp ne ptr %13, null
  br i1 %tobool17, label %if.then18, label %if.end72

if.then18:                                        ; preds = %cond.end16
  %14 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %cset = getelementptr inbounds %struct.H5O_link_t, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %cset, align 8, !tbaa !17
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %cset19 = getelementptr inbounds %struct.H5L_info2_t, ptr %16, i32 0, i32 3
  store i32 %15, ptr %cset19, align 8, !tbaa !28
  %17 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %corder = getelementptr inbounds %struct.H5O_link_t, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %corder, align 8, !tbaa !20
  %19 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %corder20 = getelementptr inbounds %struct.H5L_info2_t, ptr %19, i32 0, i32 2
  store i64 %18, ptr %corder20, align 8, !tbaa !30
  %20 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %corder_valid = getelementptr inbounds %struct.H5O_link_t, ptr %20, i32 0, i32 1
  %21 = load i8, ptr %corder_valid, align 4, !tbaa !21, !range !12, !noundef !13
  %tobool21 = trunc i8 %21 to i1
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %corder_valid22 = getelementptr inbounds %struct.H5L_info2_t, ptr %22, i32 0, i32 1
  %frombool23 = zext i1 %tobool21 to i8
  store i8 %frombool23, ptr %corder_valid22, align 4, !tbaa !31
  %23 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.H5O_link_t, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %type, align 8, !tbaa !26
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %type24 = getelementptr inbounds %struct.H5L_info2_t, ptr %25, i32 0, i32 0
  store i32 %24, ptr %type24, align 8, !tbaa !32
  %26 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type25 = getelementptr inbounds %struct.H5O_link_t, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %type25, align 8, !tbaa !26
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 -1, label %sw.bb38
    i32 64, label %sw.bb38
    i32 255, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.then18
  %28 = load ptr, ptr %link_loc.addr, align 8, !tbaa !4
  %file = getelementptr inbounds %struct.H5O_loc_t, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %file, align 8, !tbaa !33
  %30 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.H5O_link_t, ptr %30, i32 0, i32 5
  %addr = getelementptr inbounds %struct.H5O_link_hard_t, ptr %u, i32 0, i32 0
  %31 = load i64, ptr %addr, align 8, !tbaa !14
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %u26 = getelementptr inbounds %struct.H5L_info2_t, ptr %32, i32 0, i32 4
  %call27 = call i32 @H5VL_native_addr_to_token(ptr noundef %29, i32 noundef 1, i64 noundef %31, ptr noundef %u26)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %sw.bb
  %33 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %34 = load i64, ptr @H5E_LINK_g, align 8, !tbaa !23
  %35 = load i64, ptr @H5E_CANTSERIALIZE_g, align 8, !tbaa !23
  %call30 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G_link_to_info, i32 noundef 296, i64 noundef %33, i64 noundef %34, i64 noundef %35, ptr noundef @.str.12)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %36 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool31 = trunc i8 %36 to i1
  %frombool32 = zext i1 %tobool31 to i8
  store i8 %frombool32, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end33:                                         ; preds = %sw.bb
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then18
  %37 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u35 = getelementptr inbounds %struct.H5O_link_t, ptr %37, i32 0, i32 5
  %name = getelementptr inbounds %struct.H5O_link_soft_t, ptr %u35, i32 0, i32 0
  %38 = load ptr, ptr %name, align 8, !tbaa !14
  %call36 = call i64 @strlen(ptr noundef %38) #9
  %add = add i64 %call36, 1
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %u37 = getelementptr inbounds %struct.H5L_info2_t, ptr %39, i32 0, i32 4
  store i64 %add, ptr %u37, align 8, !tbaa !14
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then18, %if.then18, %if.then18
  br label %sw.default

sw.default:                                       ; preds = %if.then18, %sw.bb38
  call void @llvm.lifetime.start.p0(i64 8, ptr %link_class) #6
  %40 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type39 = getelementptr inbounds %struct.H5O_link_t, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %type39, align 8, !tbaa !26
  %cmp40 = icmp slt i32 %41, 64
  br i1 %cmp40, label %if.then44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %sw.default
  %42 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type42 = getelementptr inbounds %struct.H5O_link_t, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %type42, align 8, !tbaa !26
  %cmp43 = icmp sgt i32 %43, 255
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %lor.lhs.false41, %sw.default
  %44 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %45 = load i64, ptr @H5E_LINK_g, align 8, !tbaa !23
  %46 = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !23
  %call45 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G_link_to_info, i32 noundef 310, i64 noundef %44, i64 noundef %45, i64 noundef %46, ptr noundef @.str.13)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %47 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool46 = trunc i8 %47 to i1
  %frombool47 = zext i1 %tobool46 to i8
  store i8 %frombool47, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

if.end48:                                         ; preds = %lor.lhs.false41
  %48 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type49 = getelementptr inbounds %struct.H5O_link_t, ptr %48, i32 0, i32 0
  %49 = load i32, ptr %type49, align 8, !tbaa !26
  %call50 = call ptr @H5L_find_class(i32 noundef %49)
  store ptr %call50, ptr %link_class, align 8, !tbaa !4
  %50 = load ptr, ptr %link_class, align 8, !tbaa !4
  %cmp51 = icmp ne ptr %50, null
  br i1 %cmp51, label %land.lhs.true52, label %if.else

land.lhs.true52:                                  ; preds = %if.end48
  %51 = load ptr, ptr %link_class, align 8, !tbaa !4
  %query_func = getelementptr inbounds %struct.H5L_class_t, ptr %51, i32 0, i32 8
  %52 = load ptr, ptr %query_func, align 8, !tbaa !35
  %cmp53 = icmp ne ptr %52, null
  br i1 %cmp53, label %if.then54, label %if.else

if.then54:                                        ; preds = %land.lhs.true52
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb_ret) #6
  %53 = load ptr, ptr %link_class, align 8, !tbaa !4
  %query_func55 = getelementptr inbounds %struct.H5L_class_t, ptr %53, i32 0, i32 8
  %54 = load ptr, ptr %query_func55, align 8, !tbaa !35
  %55 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %name56 = getelementptr inbounds %struct.H5O_link_t, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %name56, align 8, !tbaa !22
  %57 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u57 = getelementptr inbounds %struct.H5O_link_t, ptr %57, i32 0, i32 5
  %udata = getelementptr inbounds %struct.H5O_link_ud_t, ptr %u57, i32 0, i32 0
  %58 = load ptr, ptr %udata, align 8, !tbaa !14
  %59 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u58 = getelementptr inbounds %struct.H5O_link_t, ptr %59, i32 0, i32 5
  %size = getelementptr inbounds %struct.H5O_link_ud_t, ptr %u58, i32 0, i32 1
  %60 = load i64, ptr %size, align 8, !tbaa !14
  %call59 = call i64 %54(ptr noundef %56, ptr noundef %58, i64 noundef %60, ptr noundef null, i64 noundef 0)
  store i64 %call59, ptr %cb_ret, align 8, !tbaa !23
  %cmp60 = icmp slt i64 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.then54
  %61 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %62 = load i64, ptr @H5E_LINK_g, align 8, !tbaa !23
  %63 = load i64, ptr @H5E_CALLBACK_g, align 8, !tbaa !23
  %call62 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G_link_to_info, i32 noundef 328, i64 noundef %61, i64 noundef %62, i64 noundef %63, ptr noundef @.str.14)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %64 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool63 = trunc i8 %64 to i1
  %frombool64 = zext i1 %tobool63 to i8
  store i8 %frombool64, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.then54
  %65 = load i64, ptr %cb_ret, align 8, !tbaa !23
  %66 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %u66 = getelementptr inbounds %struct.H5L_info2_t, ptr %66, i32 0, i32 4
  store i64 %65, ptr %u66, align 8, !tbaa !14
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end65
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb_ret) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end68

if.else:                                          ; preds = %land.lhs.true52, %if.end48
  %67 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %u67 = getelementptr inbounds %struct.H5L_info2_t, ptr %67, i32 0, i32 4
  store i64 0, ptr %u67, align 8, !tbaa !14
  br label %if.end68

if.end68:                                         ; preds = %if.else, %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %if.then44, %if.end68, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %link_class) #6
  %cleanup.dest70 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest70, label %cleanup74 [
    i32 0, label %cleanup.cont71
    i32 2, label %done
  ]

cleanup.cont71:                                   ; preds = %cleanup69
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.cont71, %sw.bb34, %if.end33
  br label %if.end72

if.end72:                                         ; preds = %sw.epilog, %cond.end16
  br label %done

done:                                             ; preds = %if.end72, %cleanup69, %if.then29, %if.then4
  br label %if.end73

if.end73:                                         ; preds = %done, %lor.lhs.false
  %68 = load i32, ptr %ret_value, align 4, !tbaa !10
  store i32 %68, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74

cleanup74:                                        ; preds = %if.end73, %cleanup69
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

declare i32 @H5G__init_package() #4

declare i32 @H5VL_native_addr_to_token(ptr noundef, i32 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare ptr @H5L_find_class(i32 noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5G__link_to_loc(ptr noundef %grp_loc, ptr noundef %lnk, ptr noundef %obj_loc) #0 {
entry:
  %grp_loc.addr = alloca ptr, align 8
  %lnk.addr = alloca ptr, align 8
  %obj_loc.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %grp_loc, ptr %grp_loc.addr, align 8, !tbaa !4
  store ptr %lnk, ptr %lnk.addr, align 8, !tbaa !4
  store ptr %obj_loc, ptr %obj_loc.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5G__link_to_loc.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5G__link_to_loc, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 359, ptr noundef @__PRETTY_FUNCTION__.H5G__link_to_loc) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_to_loc.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end119, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %grp_loc.addr, align 8, !tbaa !4
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.2, i32 noundef 362, ptr noundef @__PRETTY_FUNCTION__.H5G__link_to_loc) #8
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %35, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 363, ptr noundef @__PRETTY_FUNCTION__.H5G__link_to_loc) #8
  unreachable

36:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %36, %cond.true83
  %37 = load ptr, ptr %obj_loc.addr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %37, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 364, ptr noundef @__PRETTY_FUNCTION__.H5G__link_to_loc) #8
  unreachable

38:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %38, %cond.true87
  %39 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.H5O_link_t, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %type, align 8, !tbaa !26
  %cmp90 = icmp sgt i32 %40, 1
  br i1 %cmp90, label %land.lhs.true92, label %if.end99

land.lhs.true92:                                  ; preds = %cond.end89
  %41 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type93 = getelementptr inbounds %struct.H5O_link_t, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %type93, align 8, !tbaa !26
  %cmp94 = icmp slt i32 %42, 64
  br i1 %cmp94, label %if.then96, label %if.end99

if.then96:                                        ; preds = %land.lhs.true92
  %43 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %44 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !23
  %45 = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !23
  %call97 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__link_to_loc, i32 noundef 372, i64 noundef %43, i64 noundef %44, i64 noundef %45, ptr noundef @.str.17)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %46 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool98 = trunc i8 %46 to i1
  %frombool = zext i1 %tobool98 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end99:                                         ; preds = %land.lhs.true92, %cond.end89
  %47 = load ptr, ptr %grp_loc.addr, align 8, !tbaa !4
  %path = getelementptr inbounds %struct.H5G_loc_t, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %path, align 8, !tbaa !37
  %49 = load ptr, ptr %obj_loc.addr, align 8, !tbaa !4
  %path100 = getelementptr inbounds %struct.H5G_loc_t, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %path100, align 8, !tbaa !37
  %51 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.H5O_link_t, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %name, align 8, !tbaa !22
  %call101 = call i32 @H5G_name_set(ptr noundef %48, ptr noundef %50, ptr noundef %52)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then104, label %if.end108

if.then104:                                       ; preds = %if.end99
  %53 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %54 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !23
  %55 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %call105 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__link_to_loc, i32 noundef 376, i64 noundef %53, i64 noundef %54, i64 noundef %55, ptr noundef @.str.18)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %56 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool106 = trunc i8 %56 to i1
  %frombool107 = zext i1 %tobool106 to i8
  store i8 %frombool107, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end108:                                        ; preds = %if.end99
  %57 = load ptr, ptr %grp_loc.addr, align 8, !tbaa !4
  %oloc = getelementptr inbounds %struct.H5G_loc_t, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %oloc, align 8, !tbaa !39
  %file = getelementptr inbounds %struct.H5O_loc_t, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %file, align 8, !tbaa !33
  %60 = load ptr, ptr %obj_loc.addr, align 8, !tbaa !4
  %oloc109 = getelementptr inbounds %struct.H5G_loc_t, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %oloc109, align 8, !tbaa !39
  %file110 = getelementptr inbounds %struct.H5O_loc_t, ptr %61, i32 0, i32 0
  store ptr %59, ptr %file110, align 8, !tbaa !33
  %62 = load ptr, ptr %obj_loc.addr, align 8, !tbaa !4
  %oloc111 = getelementptr inbounds %struct.H5G_loc_t, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %oloc111, align 8, !tbaa !39
  %holding_file = getelementptr inbounds %struct.H5O_loc_t, ptr %63, i32 0, i32 2
  store i8 0, ptr %holding_file, align 8, !tbaa !40
  %64 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %type112 = getelementptr inbounds %struct.H5O_link_t, ptr %64, i32 0, i32 0
  %65 = load i32, ptr %type112, align 8, !tbaa !26
  %cmp113 = icmp eq i32 %65, 0
  br i1 %cmp113, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.end108
  %66 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.H5O_link_t, ptr %66, i32 0, i32 5
  %addr = getelementptr inbounds %struct.H5O_link_hard_t, ptr %u, i32 0, i32 0
  %67 = load i64, ptr %addr, align 8, !tbaa !14
  %68 = load ptr, ptr %obj_loc.addr, align 8, !tbaa !4
  %oloc116 = getelementptr inbounds %struct.H5G_loc_t, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %oloc116, align 8, !tbaa !39
  %addr117 = getelementptr inbounds %struct.H5O_loc_t, ptr %69, i32 0, i32 1
  store i64 %67, ptr %addr117, align 8, !tbaa !41
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end108
  br label %done

done:                                             ; preds = %if.end118, %if.then104, %if.then96
  br label %if.end119

if.end119:                                        ; preds = %done, %lor.lhs.false75
  %70 = load i32, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  ret i32 %70
}

declare i32 @H5G_name_set(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5G__link_sort_table(ptr noundef %ltable, i32 noundef %idx_type, i32 noundef %order) #0 {
entry:
  %ltable.addr = alloca ptr, align 8
  %idx_type.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %ret_value = alloca i32, align 4
  store ptr %ltable, ptr %ltable.addr, align 8, !tbaa !4
  store i32 %idx_type, ptr %idx_type.addr, align 4, !tbaa !14
  store i32 %order, ptr %order.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  %0 = load i8, ptr @H5G__link_sort_table.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([21 x i8], ptr @__func__.H5G__link_sort_table, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 405, ptr noundef @__PRETTY_FUNCTION__.H5G__link_sort_table) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_sort_table.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end137, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 408, ptr noundef @__PRETTY_FUNCTION__.H5G__link_sort_table) #8
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks = getelementptr inbounds %struct.H5G_link_table_t, ptr %35, i32 0, i32 0
  %36 = load i64, ptr %nlinks, align 8, !tbaa !42
  %cmp82 = icmp eq i64 0, %36
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %cond.end81
  %37 = load i32, ptr %ret_value, align 4, !tbaa !10
  store i32 %37, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end85:                                         ; preds = %cond.end81
  %38 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks = getelementptr inbounds %struct.H5G_link_table_t, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %lnks, align 8, !tbaa !44
  %tobool86 = icmp ne ptr %39, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %if.end85
  br label %cond.end89

cond.false88:                                     ; preds = %if.end85
  call void @__assert_fail(ptr noundef @.str.20, ptr noundef @.str.2, i32 noundef 415, ptr noundef @__PRETTY_FUNCTION__.H5G__link_sort_table) #8
  unreachable

40:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %40, %cond.true87
  %41 = load i32, ptr %idx_type.addr, align 4, !tbaa !14
  %cmp90 = icmp eq i32 %41, 0
  br i1 %cmp90, label %if.then92, label %if.else111

if.then92:                                        ; preds = %cond.end89
  %42 = load i32, ptr %order.addr, align 4, !tbaa !14
  %cmp93 = icmp eq i32 %42, 0
  br i1 %cmp93, label %if.then95, label %if.else

if.then95:                                        ; preds = %if.then92
  %43 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks96 = getelementptr inbounds %struct.H5G_link_table_t, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %lnks96, align 8, !tbaa !44
  %45 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks97 = getelementptr inbounds %struct.H5G_link_table_t, ptr %45, i32 0, i32 0
  %46 = load i64, ptr %nlinks97, align 8, !tbaa !42
  call void @qsort(ptr noundef %44, i64 noundef %46, i64 noundef 48, ptr noundef @H5G__link_cmp_name_inc)
  br label %if.end110

if.else:                                          ; preds = %if.then92
  %47 = load i32, ptr %order.addr, align 4, !tbaa !14
  %cmp98 = icmp eq i32 %47, 1
  br i1 %cmp98, label %if.then100, label %if.else103

if.then100:                                       ; preds = %if.else
  %48 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks101 = getelementptr inbounds %struct.H5G_link_table_t, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %lnks101, align 8, !tbaa !44
  %50 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks102 = getelementptr inbounds %struct.H5G_link_table_t, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %nlinks102, align 8, !tbaa !42
  call void @qsort(ptr noundef %49, i64 noundef %51, i64 noundef 48, ptr noundef @H5G__link_cmp_name_dec)
  br label %if.end109

if.else103:                                       ; preds = %if.else
  %52 = load i32, ptr %order.addr, align 4, !tbaa !14
  %cmp104 = icmp eq i32 %52, 2
  br i1 %cmp104, label %cond.true106, label %cond.false107

cond.true106:                                     ; preds = %if.else103
  br label %cond.end108

cond.false107:                                    ; preds = %if.else103
  call void @__assert_fail(ptr noundef @.str.21, ptr noundef @.str.2, i32 noundef 424, ptr noundef @__PRETTY_FUNCTION__.H5G__link_sort_table) #8
  unreachable

53:                                               ; No predecessors!
  br label %cond.end108

cond.end108:                                      ; preds = %53, %cond.true106
  br label %if.end109

if.end109:                                        ; preds = %cond.end108, %if.then100
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then95
  br label %if.end136

if.else111:                                       ; preds = %cond.end89
  %54 = load i32, ptr %idx_type.addr, align 4, !tbaa !14
  %cmp112 = icmp eq i32 %54, 1
  br i1 %cmp112, label %cond.true114, label %cond.false115

cond.true114:                                     ; preds = %if.else111
  br label %cond.end116

cond.false115:                                    ; preds = %if.else111
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.2, i32 noundef 427, ptr noundef @__PRETTY_FUNCTION__.H5G__link_sort_table) #8
  unreachable

55:                                               ; No predecessors!
  br label %cond.end116

cond.end116:                                      ; preds = %55, %cond.true114
  %56 = load i32, ptr %order.addr, align 4, !tbaa !14
  %cmp117 = icmp eq i32 %56, 0
  br i1 %cmp117, label %if.then119, label %if.else122

if.then119:                                       ; preds = %cond.end116
  %57 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks120 = getelementptr inbounds %struct.H5G_link_table_t, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %lnks120, align 8, !tbaa !44
  %59 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks121 = getelementptr inbounds %struct.H5G_link_table_t, ptr %59, i32 0, i32 0
  %60 = load i64, ptr %nlinks121, align 8, !tbaa !42
  call void @qsort(ptr noundef %58, i64 noundef %60, i64 noundef 48, ptr noundef @H5G__link_cmp_corder_inc)
  br label %if.end135

if.else122:                                       ; preds = %cond.end116
  %61 = load i32, ptr %order.addr, align 4, !tbaa !14
  %cmp123 = icmp eq i32 %61, 1
  br i1 %cmp123, label %if.then125, label %if.else128

if.then125:                                       ; preds = %if.else122
  %62 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks126 = getelementptr inbounds %struct.H5G_link_table_t, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %lnks126, align 8, !tbaa !44
  %64 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks127 = getelementptr inbounds %struct.H5G_link_table_t, ptr %64, i32 0, i32 0
  %65 = load i64, ptr %nlinks127, align 8, !tbaa !42
  call void @qsort(ptr noundef %63, i64 noundef %65, i64 noundef 48, ptr noundef @H5G__link_cmp_corder_dec)
  br label %if.end134

if.else128:                                       ; preds = %if.else122
  %66 = load i32, ptr %order.addr, align 4, !tbaa !14
  %cmp129 = icmp eq i32 %66, 2
  br i1 %cmp129, label %cond.true131, label %cond.false132

cond.true131:                                     ; preds = %if.else128
  br label %cond.end133

cond.false132:                                    ; preds = %if.else128
  call void @__assert_fail(ptr noundef @.str.21, ptr noundef @.str.2, i32 noundef 433, ptr noundef @__PRETTY_FUNCTION__.H5G__link_sort_table) #8
  unreachable

67:                                               ; No predecessors!
  br label %cond.end133

cond.end133:                                      ; preds = %67, %cond.true131
  br label %if.end134

if.end134:                                        ; preds = %cond.end133, %if.then125
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then119
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end110
  br label %done

done:                                             ; preds = %if.end136, %if.then84
  br label %if.end137

if.end137:                                        ; preds = %done, %lor.lhs.false75
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  ret i32 0
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @H5G__link_cmp_name_inc(ptr noundef %lnk1, ptr noundef %lnk2) #0 {
entry:
  %lnk1.addr = alloca ptr, align 8
  %lnk2.addr = alloca ptr, align 8
  store ptr %lnk1, ptr %lnk1.addr, align 8, !tbaa !4
  store ptr %lnk2, ptr %lnk2.addr, align 8, !tbaa !4
  %0 = load i8, ptr @H5G__link_cmp_name_inc.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_inc, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 98, ptr noundef @__PRETTY_FUNCTION__.H5G__link_cmp_name_inc) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_cmp_name_inc.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %lor.lhs.false75
  %33 = load ptr, ptr %lnk1.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.H5O_link_t, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %name, align 8, !tbaa !22
  %35 = load ptr, ptr %lnk2.addr, align 8, !tbaa !4
  %name79 = getelementptr inbounds %struct.H5O_link_t, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %name79, align 8, !tbaa !22
  %call80 = call i32 @strcmp(ptr noundef %34, ptr noundef %36) #9
  ret i32 %call80
}

; Function Attrs: nounwind uwtable
define internal i32 @H5G__link_cmp_name_dec(ptr noundef %lnk1, ptr noundef %lnk2) #0 {
entry:
  %lnk1.addr = alloca ptr, align 8
  %lnk2.addr = alloca ptr, align 8
  store ptr %lnk1, ptr %lnk1.addr, align 8, !tbaa !4
  store ptr %lnk2, ptr %lnk2.addr, align 8, !tbaa !4
  %0 = load i8, ptr @H5G__link_cmp_name_dec.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_cmp_name_dec, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 123, ptr noundef @__PRETTY_FUNCTION__.H5G__link_cmp_name_dec) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_cmp_name_dec.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %lor.lhs.false75
  %33 = load ptr, ptr %lnk2.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.H5O_link_t, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %name, align 8, !tbaa !22
  %35 = load ptr, ptr %lnk1.addr, align 8, !tbaa !4
  %name79 = getelementptr inbounds %struct.H5O_link_t, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %name79, align 8, !tbaa !22
  %call80 = call i32 @strcmp(ptr noundef %34, ptr noundef %36) #9
  ret i32 %call80
}

; Function Attrs: nounwind uwtable
define internal i32 @H5G__link_cmp_corder_inc(ptr noundef %lnk1, ptr noundef %lnk2) #0 {
entry:
  %lnk1.addr = alloca ptr, align 8
  %lnk2.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  store ptr %lnk1, ptr %lnk1.addr, align 8, !tbaa !4
  store ptr %lnk2, ptr %lnk2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  %0 = load i8, ptr @H5G__link_cmp_corder_inc.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_inc, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 149, ptr noundef @__PRETTY_FUNCTION__.H5G__link_cmp_corder_inc) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_cmp_corder_inc.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end90, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %lnk1.addr, align 8, !tbaa !4
  %corder = getelementptr inbounds %struct.H5O_link_t, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %corder, align 8, !tbaa !20
  %35 = load ptr, ptr %lnk2.addr, align 8, !tbaa !4
  %corder78 = getelementptr inbounds %struct.H5O_link_t, ptr %35, i32 0, i32 2
  %36 = load i64, ptr %corder78, align 8, !tbaa !20
  %cmp79 = icmp slt i64 %34, %36
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.then77
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %if.end89

if.else:                                          ; preds = %if.then77
  %37 = load ptr, ptr %lnk1.addr, align 8, !tbaa !4
  %corder82 = getelementptr inbounds %struct.H5O_link_t, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %corder82, align 8, !tbaa !20
  %39 = load ptr, ptr %lnk2.addr, align 8, !tbaa !4
  %corder83 = getelementptr inbounds %struct.H5O_link_t, ptr %39, i32 0, i32 2
  %40 = load i64, ptr %corder83, align 8, !tbaa !20
  %cmp84 = icmp sgt i64 %38, %40
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.else
  store i32 1, ptr %ret_value, align 4, !tbaa !10
  br label %if.end88

if.else87:                                        ; preds = %if.else
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then86
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then81
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %lor.lhs.false75
  %41 = load i32, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @H5G__link_cmp_corder_dec(ptr noundef %lnk1, ptr noundef %lnk2) #0 {
entry:
  %lnk1.addr = alloca ptr, align 8
  %lnk2.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  store ptr %lnk1, ptr %lnk1.addr, align 8, !tbaa !4
  store ptr %lnk2, ptr %lnk2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  %0 = load i8, ptr @H5G__link_cmp_corder_dec.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([25 x i8], ptr @__func__.H5G__link_cmp_corder_dec, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 182, ptr noundef @__PRETTY_FUNCTION__.H5G__link_cmp_corder_dec) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_cmp_corder_dec.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end90, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %lnk1.addr, align 8, !tbaa !4
  %corder = getelementptr inbounds %struct.H5O_link_t, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %corder, align 8, !tbaa !20
  %35 = load ptr, ptr %lnk2.addr, align 8, !tbaa !4
  %corder78 = getelementptr inbounds %struct.H5O_link_t, ptr %35, i32 0, i32 2
  %36 = load i64, ptr %corder78, align 8, !tbaa !20
  %cmp79 = icmp slt i64 %34, %36
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.then77
  store i32 1, ptr %ret_value, align 4, !tbaa !10
  br label %if.end89

if.else:                                          ; preds = %if.then77
  %37 = load ptr, ptr %lnk1.addr, align 8, !tbaa !4
  %corder82 = getelementptr inbounds %struct.H5O_link_t, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %corder82, align 8, !tbaa !20
  %39 = load ptr, ptr %lnk2.addr, align 8, !tbaa !4
  %corder83 = getelementptr inbounds %struct.H5O_link_t, ptr %39, i32 0, i32 2
  %40 = load i64, ptr %corder83, align 8, !tbaa !20
  %cmp84 = icmp sgt i64 %38, %40
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.else
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %if.end88

if.else87:                                        ; preds = %if.else
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then86
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then81
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %lor.lhs.false75
  %41 = load i32, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @H5G__link_iterate_table(ptr noundef %ltable, i64 noundef %skip, ptr noundef %last_lnk, ptr noundef %op, ptr noundef %op_data) #0 {
entry:
  %ltable.addr = alloca ptr, align 8
  %skip.addr = alloca i64, align 8
  %last_lnk.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %op_data.addr = alloca ptr, align 8
  %u = alloca i64, align 8
  %ret_value = alloca i32, align 4
  store ptr %ltable, ptr %ltable.addr, align 8, !tbaa !4
  store i64 %skip, ptr %skip.addr, align 8, !tbaa !45
  store ptr %last_lnk, ptr %last_lnk.addr, align 8, !tbaa !4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %op_data, ptr %op_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  %0 = load i8, ptr @H5G__link_iterate_table.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_iterate_table, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 461, ptr noundef @__PRETTY_FUNCTION__.H5G__link_iterate_table) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_iterate_table.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end103, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 464, ptr noundef @__PRETTY_FUNCTION__.H5G__link_iterate_table) #8
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %35, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.23, ptr noundef @.str.2, i32 noundef 465, ptr noundef @__PRETTY_FUNCTION__.H5G__link_iterate_table) #8
  unreachable

36:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %36, %cond.true83
  %37 = load ptr, ptr %last_lnk.addr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %37, null
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %cond.end85
  %38 = load i64, ptr %skip.addr, align 8, !tbaa !45
  %39 = load ptr, ptr %last_lnk.addr, align 8, !tbaa !4
  %40 = load i64, ptr %39, align 8, !tbaa !45
  %add = add i64 %40, %38
  store i64 %add, ptr %39, align 8, !tbaa !45
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %cond.end85
  %41 = load i64, ptr %skip.addr, align 8, !tbaa !45
  store i64 %41, ptr %u, align 8, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end88
  %42 = load i64, ptr %u, align 8, !tbaa !23
  %43 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks = getelementptr inbounds %struct.H5G_link_table_t, ptr %43, i32 0, i32 0
  %44 = load i64, ptr %nlinks, align 8, !tbaa !42
  %cmp89 = icmp ult i64 %42, %44
  br i1 %cmp89, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %45 = load i32, ptr %ret_value, align 4, !tbaa !10
  %tobool91 = icmp ne i32 %45, 0
  %lnot = xor i1 %tobool91, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %46 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %46, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %47 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks = getelementptr inbounds %struct.H5G_link_table_t, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %lnks, align 8, !tbaa !44
  %50 = load i64, ptr %u, align 8, !tbaa !23
  %arrayidx92 = getelementptr inbounds %struct.H5O_link_t, ptr %49, i64 %50
  %51 = load ptr, ptr %op_data.addr, align 8, !tbaa !4
  %call93 = call i32 %47(ptr noundef %arrayidx92, ptr noundef %51)
  store i32 %call93, ptr %ret_value, align 4, !tbaa !10
  %52 = load ptr, ptr %last_lnk.addr, align 8, !tbaa !4
  %tobool94 = icmp ne ptr %52, null
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %for.body
  %53 = load ptr, ptr %last_lnk.addr, align 8, !tbaa !4
  %54 = load i64, ptr %53, align 8, !tbaa !45
  %inc = add i64 %54, 1
  store i64 %inc, ptr %53, align 8, !tbaa !45
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end96
  %55 = load i64, ptr %u, align 8, !tbaa !23
  %inc97 = add i64 %55, 1
  store i64 %inc97, ptr %u, align 8, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %land.end
  %56 = load i32, ptr %ret_value, align 4, !tbaa !10
  %cmp98 = icmp slt i32 %56, 0
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %for.end
  %57 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %58 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !23
  %59 = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !23
  %call101 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__link_iterate_table, i32 noundef 484, i64 noundef %57, i64 noundef %58, i64 noundef %59, ptr noundef @.str.24)
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %for.end
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %lor.lhs.false75
  %60 = load i32, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #6
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @H5G__link_release_table(ptr noundef %ltable) #0 {
entry:
  %ltable.addr = alloca ptr, align 8
  %u = alloca i64, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %ltable, ptr %ltable.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5G__link_release_table.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5G__link_release_table, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 508, ptr noundef @__PRETTY_FUNCTION__.H5G__link_release_table) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_release_table.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end105, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 511, ptr noundef @__PRETTY_FUNCTION__.H5G__link_release_table) #8
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks = getelementptr inbounds %struct.H5G_link_table_t, ptr %35, i32 0, i32 0
  %36 = load i64, ptr %nlinks, align 8, !tbaa !42
  %cmp82 = icmp ugt i64 %36, 0
  br i1 %cmp82, label %if.then84, label %if.else

if.then84:                                        ; preds = %cond.end81
  store i64 0, ptr %u, align 8, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then84
  %37 = load i64, ptr %u, align 8, !tbaa !23
  %38 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %nlinks85 = getelementptr inbounds %struct.H5G_link_table_t, ptr %38, i32 0, i32 0
  %39 = load i64, ptr %nlinks85, align 8, !tbaa !42
  %cmp86 = icmp ult i64 %37, %39
  br i1 %cmp86, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks = getelementptr inbounds %struct.H5G_link_table_t, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %lnks, align 8, !tbaa !44
  %42 = load i64, ptr %u, align 8, !tbaa !23
  %arrayidx88 = getelementptr inbounds %struct.H5O_link_t, ptr %41, i64 %42
  %call89 = call i32 @H5O_msg_reset(i32 noundef 6, ptr noundef %arrayidx88)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end95

if.then92:                                        ; preds = %for.body
  %43 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %44 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !23
  %45 = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !23
  %call93 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__link_release_table, i32 noundef 518, i64 noundef %43, i64 noundef %44, i64 noundef %45, ptr noundef @.str.25)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %46 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool94 = trunc i8 %46 to i1
  %frombool = zext i1 %tobool94 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end95:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end95
  %47 = load i64, ptr %u, align 8, !tbaa !23
  %inc = add i64 %47, 1
  store i64 %inc, ptr %u, align 8, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks96 = getelementptr inbounds %struct.H5G_link_table_t, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %lnks96, align 8, !tbaa !44
  %call97 = call ptr @H5MM_xfree(ptr noundef %49)
  br label %if.end104

if.else:                                          ; preds = %cond.end81
  %50 = load ptr, ptr %ltable.addr, align 8, !tbaa !4
  %lnks98 = getelementptr inbounds %struct.H5G_link_table_t, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %lnks98, align 8, !tbaa !44
  %cmp99 = icmp eq ptr %51, null
  br i1 %cmp99, label %cond.true101, label %cond.false102

cond.true101:                                     ; preds = %if.else
  br label %cond.end103

cond.false102:                                    ; preds = %if.else
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.2, i32 noundef 524, ptr noundef @__PRETTY_FUNCTION__.H5G__link_release_table) #8
  unreachable

52:                                               ; No predecessors!
  br label %cond.end103

cond.end103:                                      ; preds = %52, %cond.true101
  br label %if.end104

if.end104:                                        ; preds = %cond.end103, %for.end
  br label %done

done:                                             ; preds = %if.end104, %if.then92
  br label %if.end105

if.end105:                                        ; preds = %done, %lor.lhs.false75
  %53 = load i32, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #6
  ret i32 %53
}

declare i32 @H5O_msg_reset(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5G__link_name_replace(ptr noundef %file, ptr noundef %grp_full_path_r, ptr noundef %lnk) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %grp_full_path_r.addr = alloca ptr, align 8
  %lnk.addr = alloca ptr, align 8
  %obj_path_r = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %file, ptr %file.addr, align 8, !tbaa !4
  store ptr %grp_full_path_r, ptr %grp_full_path_r.addr, align 8, !tbaa !4
  store ptr %lnk, ptr %lnk.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_path_r) #6
  store ptr null, ptr %obj_path_r, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5G__link_name_replace.func_check, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #7
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #7
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #7
  %8 = load ptr, ptr %call13, align 8, !tbaa !4
  %9 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #7
  %11 = load ptr, ptr %call21, align 8, !tbaa !4
  %12 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #7
  %14 = load ptr, ptr %call29, align 8, !tbaa !4
  %15 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #7
  %17 = load ptr, ptr %call37, align 8, !tbaa !4
  %18 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #7
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #7
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #7
  %27 = load ptr, ptr %call65, align 8, !tbaa !4
  %28 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5G__link_name_replace, i64 0, i64 6), align 1, !tbaa !14
  %conv66 = sext i8 %28 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %27, i64 %idxprom67
  %29 = load i16, ptr %arrayidx68, align 2, !tbaa !15
  %conv69 = zext i16 %29 to i32
  %and70 = and i32 %conv69, 512
  %tobool71 = icmp ne i32 %and70, 0
  br i1 %tobool71, label %land.lhs.true72, label %cond.false

land.lhs.true72:                                  ; preds = %land.lhs.true64, %land.lhs.true36, %land.lhs.true12
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true72
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true72, %land.lhs.true64, %land.lhs.true60, %lor.lhs.false52
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 549, ptr noundef @__PRETTY_FUNCTION__.H5G__link_name_replace) #8
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5G__link_name_replace.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5G_init_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end97, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.2, i32 noundef 552, ptr noundef @__PRETTY_FUNCTION__.H5G__link_name_replace) #8
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %grp_full_path_r.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %35, null
  br i1 %tobool82, label %if.then83, label %if.end92

if.then83:                                        ; preds = %cond.end81
  %36 = load ptr, ptr %grp_full_path_r.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.H5O_link_t, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %name, align 8, !tbaa !22
  %call84 = call ptr @H5G_build_fullpath_refstr_str(ptr noundef %36, ptr noundef %38)
  store ptr %call84, ptr %obj_path_r, align 8, !tbaa !4
  %39 = load ptr, ptr %lnk.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %obj_path_r, align 8, !tbaa !4
  %call85 = call i32 @H5G_name_replace(ptr noundef %39, i32 noundef 1, ptr noundef %40, ptr noundef %41, ptr noundef null, ptr noundef null)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.then83
  %42 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !23
  %43 = load i64, ptr @H5E_SYM_g, align 8, !tbaa !23
  %44 = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !23
  %call89 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5G__link_name_replace, i32 noundef 558, i64 noundef %42, i64 noundef %43, i64 noundef %44, ptr noundef @.str.28)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %45 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !12, !noundef !13
  %tobool90 = trunc i8 %45 to i1
  %frombool = zext i1 %tobool90 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !10
  br label %done

if.end91:                                         ; preds = %if.then83
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %cond.end81
  br label %done

done:                                             ; preds = %if.end92, %if.then88
  %46 = load ptr, ptr %obj_path_r, align 8, !tbaa !4
  %tobool93 = icmp ne ptr %46, null
  br i1 %tobool93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %done
  %47 = load ptr, ptr %obj_path_r, align 8, !tbaa !4
  %call95 = call i32 @H5RS_decr(ptr noundef %47)
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %done
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %lor.lhs.false75
  %48 = load i32, ptr %ret_value, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_path_r) #6
  ret i32 %48
}

declare ptr @H5G_build_fullpath_refstr_str(ptr noundef, ptr noundef) #4

declare i32 @H5G_name_replace(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @H5RS_decr(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!18, !6, i64 16}
!18 = !{!"H5O_link_t", !6, i64 0, !9, i64 4, !19, i64 8, !6, i64 16, !5, i64 24, !6, i64 32}
!19 = !{!"long", !6, i64 0}
!20 = !{!18, !19, i64 8}
!21 = !{!18, !9, i64 4}
!22 = !{!18, !5, i64 24}
!23 = !{!19, !19, i64 0}
!24 = !{!25, !6, i64 0}
!25 = !{!"H5G_entry_t", !6, i64 0, !6, i64 8, !19, i64 24, !19, i64 32}
!26 = !{!18, !6, i64 0}
!27 = !{!25, !19, i64 32}
!28 = !{!29, !6, i64 16}
!29 = !{!"", !6, i64 0, !9, i64 4, !19, i64 8, !6, i64 16, !6, i64 24}
!30 = !{!29, !19, i64 8}
!31 = !{!29, !9, i64 4}
!32 = !{!29, !6, i64 0}
!33 = !{!34, !5, i64 0}
!34 = !{!"H5O_loc_t", !5, i64 0, !19, i64 8, !9, i64 16}
!35 = !{!36, !5, i64 56}
!36 = !{!"", !11, i64 0, !6, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56}
!37 = !{!38, !5, i64 8}
!38 = !{!"", !5, i64 0, !5, i64 8}
!39 = !{!38, !5, i64 0}
!40 = !{!34, !9, i64 16}
!41 = !{!34, !19, i64 8}
!42 = !{!43, !19, i64 0}
!43 = !{!"", !19, i64 0, !5, i64 8}
!44 = !{!43, !5, i64 8}
!45 = !{!46, !46, i64 0}
!46 = !{!"long long", !6, i64 0}
