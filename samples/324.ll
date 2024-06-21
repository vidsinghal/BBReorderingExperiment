; ModuleID = 'samples/324.bc'
source_filename = "../spack-src/externals/cgns/hdf5/H5Fefc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.H5FL_reg_head_t = type { i8, i32, i32, ptr, i64, ptr }
%struct.H5F_efc_t = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.H5VL_connector_prop_t = type { i64, ptr }
%struct.H5F_t = type { ptr, ptr, ptr, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.H5F_shared_t = type { ptr, ptr, ptr, i8, i32, i32, %struct.H5F_mtab_t, ptr, i8, i8, i64, i32, i32, i64, i64, ptr, ptr, %struct.H5AC_cache_config_t, %struct.H5AC_cache_image_config_t, i8, i8, ptr, i64, i32, i8, i64, i64, double, i64, i64, i64, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, i8, i8, i64, ptr, ptr, i32, i64, i8, i32, i8, i64, i8, [13 x i32], [13 x i64], [13 x ptr], i8, i64, i64, [7 x i32], [7 x i32], %struct.H5F_blk_aggr_t, %struct.H5F_blk_aggr_t, i64, i64, %struct.H5F_meta_accum_t, i32, i32, [30 x ptr], %struct.H5F_object_flush_t, i8, ptr }
%struct.H5F_mtab_t = type { i32, i32, ptr }
%struct.H5AC_cache_config_t = type { i32, i8, i8, i8, [1025 x i8], i8, i8, i64, double, i64, i64, i64, i32, double, double, i8, i64, i32, double, double, i32, double, double, i8, i64, i32, i8, double, i64, i32 }
%struct.H5AC_cache_image_config_t = type { i32, i8, i8, i32 }
%struct.H5F_blk_aggr_t = type { i64, i64, i64, i64, i64 }
%struct.H5F_meta_accum_t = type { ptr, i64, i64, i64, i64, i64, i8 }
%struct.H5F_object_flush_t = type { ptr, ptr }
%struct.H5F_efc_ent_t = type { ptr, ptr, ptr, ptr, i32 }

@H5F__efc_create.func_check = internal global i8 0, align 1
@__func__.H5F__efc_create = private unnamed_addr constant [16 x i8] c"H5F__efc_create\00", align 1
@.str = private unnamed_addr constant [155 x i8] c"Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in H5private.h (this is usually due to an incorrect number of underscores)\00", align 1
@.str.1 = private unnamed_addr constant [1089 x i8] c"(((((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISupper)) && '_' == __func__[2] && '_' == __func__[3] && ((*__ctype_b_loc ())[(int) (((int)(__func__[4])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISupper)) && '_' == __func__[3] && '_' == __func__[4] && ((*__ctype_b_loc ())[(int) (((int)(__func__[5])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISupper)) && '_' == __func__[4] && '_' == __func__[5] && ((*__ctype_b_loc ())[(int) (((int)(__func__[6])))] & (unsigned short int) _ISlower))) && \22Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in \22 \22H5private.h (this is usually due to an incorrect number of underscores)\22\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"../spack-src/externals/cgns/hdf5/H5Fefc.c\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_create = private unnamed_addr constant [41 x i8] c"H5F_efc_t *H5F__efc_create(unsigned int)\00", align 1
@H5F_init_g = external global i8, align 1
@H5_libterm_g = external global i8, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"max_nfiles > 0\00", align 1
@H5_H5F_efc_t_reg_free_list = internal global %struct.H5FL_reg_head_t { i8 0, i32 0, i32 0, ptr @.str.50, i64 48, ptr null }, align 8
@H5E_ERR_CLS_g = external global i64, align 8
@H5E_RESOURCE_g = external global i64, align 8
@H5E_NOSPACE_g = external global i64, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@H5F__efc_open.func_check = internal global i8 0, align 1
@__func__.H5F__efc_open = private unnamed_addr constant [14 x i8] c"H5F__efc_open\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_open = private unnamed_addr constant [72 x i8] c"H5F_t *H5F__efc_open(H5F_t *, const char *, unsigned int, hid_t, hid_t)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"parent->shared\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@H5E_FILE_g = external global i64, align 8
@H5E_BADTYPE_g = external global i64, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"not a file access property list\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"vol_connector_info\00", align 1
@H5E_CANTGET_g = external global i64, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"can't get VOL connector info\00", align 1
@H5E_CANTSET_g = external global i64, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"can't set VOL connector info in API context\00", align 1
@H5E_CANTOPENFILE_g = external global i64, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"can't open file\00", align 1
@H5E_CANTINIT_g = external global i64, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"can't finish opening file\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"efc->nfiles == 0\00", align 1
@H5E_CANTCREATE_g = external global i64, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"can't create skip list\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"efc->LRU_head\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"efc->LRU_tail\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"efc->LRU_head != ent\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"efc->LRU_tail == ent\00", align 1
@H5E_CANTREMOVE_g = external global i64, align 8
@.str.20 = private unnamed_addr constant [44 x i8] c"can't remove entry from external file cache\00", align 1
@H5_H5F_efc_ent_t_reg_free_list = internal global %struct.H5FL_reg_head_t { i8 0, i32 0, i32 0, ptr @.str.51, i64 40, ptr null }, align 8
@H5E_CANTINSERT_g = external global i64, align 8
@.str.21 = private unnamed_addr constant [34 x i8] c"can't insert entry into skip list\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"!ent->LRU_next\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ent->file\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ent->name\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"ent->nopen\00", align 1
@H5E_CANTCLOSEFILE_g = external global i64, align 8
@.str.27 = private unnamed_addr constant [26 x i8] c"can't close external file\00", align 1
@H5F_efc_close.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5F_efc_close = private unnamed_addr constant [39 x i8] c"herr_t H5F_efc_close(H5F_t *, H5F_t *)\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"file->shared\00", align 1
@__func__.H5F_efc_close = private unnamed_addr constant [14 x i8] c"H5F_efc_close\00", align 1
@H5F__efc_max_nfiles.func_check = internal global i8 0, align 1
@__func__.H5F__efc_max_nfiles = private unnamed_addr constant [20 x i8] c"H5F__efc_max_nfiles\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_max_nfiles = private unnamed_addr constant [46 x i8] c"unsigned int H5F__efc_max_nfiles(H5F_efc_t *)\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"efc\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"efc->max_nfiles > 0\00", align 1
@H5F__efc_release.func_check = internal global i8 0, align 1
@__func__.H5F__efc_release = private unnamed_addr constant [17 x i8] c"H5F__efc_release\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_release = private unnamed_addr constant [37 x i8] c"herr_t H5F__efc_release(H5F_efc_t *)\00", align 1
@H5E_CANTRELEASE_g = external global i64, align 8
@H5F__efc_destroy.func_check = internal global i8 0, align 1
@__func__.H5F__efc_destroy = private unnamed_addr constant [17 x i8] c"H5F__efc_destroy\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_destroy = private unnamed_addr constant [37 x i8] c"herr_t H5F__efc_destroy(H5F_efc_t *)\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"can't release external file cache\00", align 1
@H5E_CANTFREE_g = external global i64, align 8
@.str.33 = private unnamed_addr constant [43 x i8] c"can't destroy EFC after incomplete release\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"efc->LRU_head == ((void*)0)\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"efc->LRU_tail == ((void*)0)\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"can't close skip list\00", align 1
@H5F__efc_try_close.func_check = internal global i8 0, align 1
@__func__.H5F__efc_try_close = private unnamed_addr constant [19 x i8] c"H5F__efc_try_close\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_try_close = private unnamed_addr constant [35 x i8] c"herr_t H5F__efc_try_close(H5F_t *)\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"f->shared\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"f->shared->efc\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"f->shared->nrefs > f->shared->efc->nrefs\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"f->shared->nrefs > 1\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"f->shared->efc->tag < 0\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"f->shared->efc->nfiles == 0\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"f->shared->efc->tag == -1\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"f->shared->efc->tmp_next == ((void*)0)\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"sf->efc->tag >= 0\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"f->shared->nrefs == 1\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"sf->efc->tag == -4\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"H5F_efc_t\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"H5F_efc_ent_t\00", align 1
@H5F__efc_release_real.func_check = internal global i8 0, align 1
@__func__.H5F__efc_release_real = private unnamed_addr constant [22 x i8] c"H5F__efc_release_real\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_release_real = private unnamed_addr constant [42 x i8] c"herr_t H5F__efc_release_real(H5F_efc_t *)\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"(efc->tag == -1) || (efc->tag == -3)\00", align 1
@H5F__efc_remove_ent.func_check = internal global i8 0, align 1
@__func__.H5F__efc_remove_ent = private unnamed_addr constant [20 x i8] c"H5F__efc_remove_ent\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_remove_ent = private unnamed_addr constant [57 x i8] c"herr_t H5F__efc_remove_ent(H5F_efc_t *, H5F_efc_ent_t *)\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"efc->slist\00", align 1
@H5E_CANTDELETE_g = external global i64, align 8
@.str.54 = private unnamed_addr constant [34 x i8] c"can't delete entry from skip list\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"efc->LRU_head == ent\00", align 1
@H5F__efc_try_close_tag1.func_check = internal global i8 0, align 1
@__func__.H5F__efc_try_close_tag1 = private unnamed_addr constant [24 x i8] c"H5F__efc_try_close_tag1\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_try_close_tag1 = private unnamed_addr constant [62 x i8] c"void H5F__efc_try_close_tag1(H5F_shared_t *, H5F_shared_t **)\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"sf->efc\00", align 1
@.str.58 = private unnamed_addr constant [52 x i8] c"(sf->efc->tag > 0) || (sf->nrefs == sf->efc->nrefs)\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"sf->efc->tag != -2\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"*tail\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"esf->efc->tag != 0\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"esf->efc->tmp_next == ((void*)0)\00", align 1
@H5F__efc_try_close_tag2.func_check = internal global i8 0, align 1
@__func__.H5F__efc_try_close_tag2 = private unnamed_addr constant [24 x i8] c"H5F__efc_try_close_tag2\00", align 1
@__PRETTY_FUNCTION__.H5F__efc_try_close_tag2 = private unnamed_addr constant [62 x i8] c"void H5F__efc_try_close_tag2(H5F_shared_t *, H5F_shared_t **)\00", align 1
@.str.63 = private unnamed_addr constant [94 x i8] c"((esf->nrefs > 1) && ((esf->efc->tag == -3))) || ((esf->nrefs == 1) && (esf->efc->tag == -1))\00", align 1

; Function Attrs: nounwind uwtable
define ptr @H5F__efc_create(i32 noundef %max_nfiles) #0 {
entry:
  %max_nfiles.addr = alloca i32, align 4
  %efc = alloca ptr, align 8
  %ret_value = alloca ptr, align 8
  %err_occurred = alloca i8, align 1
  store i32 %max_nfiles, ptr %max_nfiles.addr, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %efc) #5
  store ptr null, ptr %efc, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_value) #5
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F__efc_create.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5F__efc_create, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 96, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_create) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_create.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end98, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load i32, ptr %max_nfiles.addr, align 4, !tbaa !4
  %cmp78 = icmp ugt i32 %33, 0
  br i1 %cmp78, label %cond.true80, label %cond.false81

cond.true80:                                      ; preds = %if.then77
  br label %cond.end82

cond.false81:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 99, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_create) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end82

cond.end82:                                       ; preds = %34, %cond.true80
  %call83 = call ptr @H5FL_reg_calloc(ptr noundef @H5_H5F_efc_t_reg_free_list)
  store ptr %call83, ptr %efc, align 8, !tbaa !8
  %cmp84 = icmp eq ptr null, %call83
  br i1 %cmp84, label %if.then86, label %if.end89

if.then86:                                        ; preds = %cond.end82
  %35 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %36 = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !17
  %37 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !17
  %call87 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_create, i32 noundef 103, i64 noundef %35, i64 noundef %36, i64 noundef %37, ptr noundef @.str.4)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %38 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool88 = trunc i8 %38 to i1
  %frombool = zext i1 %tobool88 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end89:                                         ; preds = %cond.end82
  %39 = load i32, ptr %max_nfiles.addr, align 4, !tbaa !4
  %40 = load ptr, ptr %efc, align 8, !tbaa !8
  %max_nfiles90 = getelementptr inbounds %struct.H5F_efc_t, ptr %40, i32 0, i32 4
  store i32 %39, ptr %max_nfiles90, align 4, !tbaa !19
  %41 = load ptr, ptr %efc, align 8, !tbaa !8
  %tag = getelementptr inbounds %struct.H5F_efc_t, ptr %41, i32 0, i32 6
  store i32 -1, ptr %tag, align 4, !tbaa !21
  %42 = load ptr, ptr %efc, align 8, !tbaa !8
  store ptr %42, ptr %ret_value, align 8, !tbaa !8
  br label %done

done:                                             ; preds = %if.end89, %if.then86
  %43 = load ptr, ptr %ret_value, align 8, !tbaa !8
  %cmp91 = icmp eq ptr %43, null
  br i1 %cmp91, label %land.lhs.true93, label %if.end97

land.lhs.true93:                                  ; preds = %done
  %44 = load ptr, ptr %efc, align 8, !tbaa !8
  %tobool94 = icmp ne ptr %44, null
  br i1 %tobool94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %land.lhs.true93
  %45 = load ptr, ptr %efc, align 8, !tbaa !8
  %call96 = call ptr @H5FL_reg_free(ptr noundef @H5_H5F_efc_t_reg_free_list, ptr noundef %45)
  store ptr %call96, ptr %efc, align 8, !tbaa !8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %land.lhs.true93, %done
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %lor.lhs.false75
  %46 = load ptr, ptr %ret_value, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %efc) #5
  ret ptr %46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @H5FL_reg_calloc(ptr noundef) #4

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) #4

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @H5F__efc_open(ptr noundef %parent, ptr noundef %name, i32 noundef %flags, i64 noundef %fcpl_id, i64 noundef %fapl_id) #0 {
entry:
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %fcpl_id.addr = alloca i64, align 8
  %fapl_id.addr = alloca i64, align 8
  %efc = alloca ptr, align 8
  %ent = alloca ptr, align 8
  %open_file = alloca i8, align 1
  %plist = alloca ptr, align 8
  %connector_prop = alloca %struct.H5VL_connector_prop_t, align 8
  %ret_value = alloca ptr, align 8
  %err_occurred = alloca i8, align 1
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !8
  store ptr %name, ptr %name.addr, align 8, !tbaa !8
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !4
  store i64 %fcpl_id, ptr %fcpl_id.addr, align 8, !tbaa !17
  store i64 %fapl_id, ptr %fapl_id.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %efc) #5
  store ptr null, ptr %efc, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #5
  store ptr null, ptr %ent, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %open_file) #5
  store i8 0, ptr %open_file, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %plist) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr %connector_prop) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_value) #5
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F__efc_open.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5F__efc_open, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 150, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_open.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end369, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %parent.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 153, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %parent.addr, align 8, !tbaa !8
  %shared = getelementptr inbounds %struct.H5F_t, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %shared, align 8, !tbaa !22
  %tobool82 = icmp ne ptr %36, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 154, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

37:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %37, %cond.true83
  %38 = load ptr, ptr %name.addr, align 8, !tbaa !8
  %tobool86 = icmp ne ptr %38, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 155, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

39:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %39, %cond.true87
  %40 = load i64, ptr %fapl_id.addr, align 8, !tbaa !17
  %call90 = call ptr @H5I_object(i64 noundef %40)
  store ptr %call90, ptr %plist, align 8, !tbaa !8
  %cmp91 = icmp eq ptr null, %call90
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %cond.end89
  %41 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %42 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %43 = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !17
  %call94 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 159, i64 noundef %41, i64 noundef %42, i64 noundef %43, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %44 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool95 = trunc i8 %44 to i1
  %frombool = zext i1 %tobool95 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end96:                                         ; preds = %cond.end89
  %45 = load ptr, ptr %plist, align 8, !tbaa !8
  %call97 = call i32 @H5P_peek(ptr noundef %45, ptr noundef @.str.9, ptr noundef %connector_prop)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then100, label %if.end104

if.then100:                                       ; preds = %if.end96
  %46 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %47 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %48 = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !17
  %call101 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 161, i64 noundef %46, i64 noundef %47, i64 noundef %48, ptr noundef @.str.10)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %49 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool102 = trunc i8 %49 to i1
  %frombool103 = zext i1 %tobool102 to i8
  store i8 %frombool103, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end104:                                        ; preds = %if.end96
  %call105 = call i32 @H5CX_set_vol_connector_prop(ptr noundef %connector_prop)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.end112

if.then108:                                       ; preds = %if.end104
  %50 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %51 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %52 = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !17
  %call109 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 167, i64 noundef %50, i64 noundef %51, i64 noundef %52, ptr noundef @.str.11)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %53 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool110 = trunc i8 %53 to i1
  %frombool111 = zext i1 %tobool110 to i8
  store i8 %frombool111, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end112:                                        ; preds = %if.end104
  %54 = load ptr, ptr %parent.addr, align 8, !tbaa !8
  %shared113 = getelementptr inbounds %struct.H5F_t, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %shared113, align 8, !tbaa !22
  %efc114 = getelementptr inbounds %struct.H5F_shared_t, ptr %55, i32 0, i32 7
  %56 = load ptr, ptr %efc114, align 8, !tbaa !24
  store ptr %56, ptr %efc, align 8, !tbaa !8
  %57 = load ptr, ptr %efc, align 8, !tbaa !8
  %tobool115 = icmp ne ptr %57, null
  br i1 %tobool115, label %if.end133, label %if.then116

if.then116:                                       ; preds = %if.end112
  %58 = load ptr, ptr %name.addr, align 8, !tbaa !8
  %59 = load i32, ptr %flags.addr, align 4, !tbaa !4
  %60 = load i64, ptr %fcpl_id.addr, align 8, !tbaa !17
  %61 = load i64, ptr %fapl_id.addr, align 8, !tbaa !17
  %call117 = call ptr @H5F_open(ptr noundef %58, i32 noundef %59, i64 noundef %60, i64 noundef %61)
  store ptr %call117, ptr %ret_value, align 8, !tbaa !8
  %cmp118 = icmp eq ptr null, %call117
  br i1 %cmp118, label %if.then120, label %if.end124

if.then120:                                       ; preds = %if.then116
  %62 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %63 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %64 = load i64, ptr @H5E_CANTOPENFILE_g, align 8, !tbaa !17
  %call121 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 177, i64 noundef %62, i64 noundef %63, i64 noundef %64, ptr noundef @.str.12)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %65 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool122 = trunc i8 %65 to i1
  %frombool123 = zext i1 %tobool122 to i8
  store i8 %frombool123, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end124:                                        ; preds = %if.then116
  %66 = load ptr, ptr %ret_value, align 8, !tbaa !8
  %call125 = call i32 @H5F__post_open(ptr noundef %66)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end132

if.then128:                                       ; preds = %if.end124
  %67 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %68 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %69 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %call129 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 181, i64 noundef %67, i64 noundef %68, i64 noundef %69, ptr noundef @.str.13)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %70 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool130 = trunc i8 %70 to i1
  %frombool131 = zext i1 %tobool130 to i8
  store i8 %frombool131, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end132:                                        ; preds = %if.end124
  %71 = load ptr, ptr %ret_value, align 8, !tbaa !8
  %nopen_objs = getelementptr inbounds %struct.H5F_t, ptr %71, i32 0, i32 4
  %72 = load i32, ptr %nopen_objs, align 8, !tbaa !34
  %inc = add i32 %72, 1
  store i32 %inc, ptr %nopen_objs, align 8, !tbaa !34
  %73 = load ptr, ptr %ret_value, align 8, !tbaa !8
  store ptr %73, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end133:                                        ; preds = %if.end112
  %74 = load ptr, ptr %efc, align 8, !tbaa !8
  %slist = getelementptr inbounds %struct.H5F_efc_t, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %slist, align 8, !tbaa !35
  %tobool134 = icmp ne ptr %75, null
  br i1 %tobool134, label %if.then135, label %if.else

if.then135:                                       ; preds = %if.end133
  %76 = load ptr, ptr %efc, align 8, !tbaa !8
  %nfiles = getelementptr inbounds %struct.H5F_efc_t, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %nfiles, align 8, !tbaa !36
  %cmp136 = icmp ugt i32 %77, 0
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.then135
  %78 = load ptr, ptr %efc, align 8, !tbaa !8
  %slist139 = getelementptr inbounds %struct.H5F_efc_t, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %slist139, align 8, !tbaa !35
  %80 = load ptr, ptr %name.addr, align 8, !tbaa !8
  %call140 = call ptr @H5SL_search(ptr noundef %79, ptr noundef %80)
  store ptr %call140, ptr %ent, align 8, !tbaa !8
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.then135
  br label %if.end157

if.else:                                          ; preds = %if.end133
  %81 = load ptr, ptr %efc, align 8, !tbaa !8
  %nfiles142 = getelementptr inbounds %struct.H5F_efc_t, ptr %81, i32 0, i32 3
  %82 = load i32, ptr %nfiles142, align 8, !tbaa !36
  %cmp143 = icmp eq i32 %82, 0
  br i1 %cmp143, label %cond.true145, label %cond.false146

cond.true145:                                     ; preds = %if.else
  br label %cond.end147

cond.false146:                                    ; preds = %if.else
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.2, i32 noundef 199, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

83:                                               ; No predecessors!
  br label %cond.end147

cond.end147:                                      ; preds = %83, %cond.true145
  %call148 = call ptr @H5SL_create(i32 noundef 2, ptr noundef null)
  %84 = load ptr, ptr %efc, align 8, !tbaa !8
  %slist149 = getelementptr inbounds %struct.H5F_efc_t, ptr %84, i32 0, i32 0
  store ptr %call148, ptr %slist149, align 8, !tbaa !35
  %cmp150 = icmp eq ptr null, %call148
  br i1 %cmp150, label %if.then152, label %if.end156

if.then152:                                       ; preds = %cond.end147
  %85 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %86 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %87 = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !17
  %call153 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 201, i64 noundef %85, i64 noundef %86, i64 noundef %87, ptr noundef @.str.15)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %88 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool154 = trunc i8 %88 to i1
  %frombool155 = zext i1 %tobool154 to i8
  store i8 %frombool155, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end156:                                        ; preds = %cond.end147
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end141
  %89 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool158 = icmp ne ptr %89, null
  br i1 %tobool158, label %if.then159, label %if.else202

if.then159:                                       ; preds = %if.end157
  %90 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_head = getelementptr inbounds %struct.H5F_efc_t, ptr %90, i32 0, i32 1
  %91 = load ptr, ptr %LRU_head, align 8, !tbaa !37
  %tobool160 = icmp ne ptr %91, null
  br i1 %tobool160, label %cond.true161, label %cond.false162

cond.true161:                                     ; preds = %if.then159
  br label %cond.end163

cond.false162:                                    ; preds = %if.then159
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 207, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

92:                                               ; No predecessors!
  br label %cond.end163

cond.end163:                                      ; preds = %92, %cond.true161
  %93 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_tail = getelementptr inbounds %struct.H5F_efc_t, ptr %93, i32 0, i32 2
  %94 = load ptr, ptr %LRU_tail, align 8, !tbaa !38
  %tobool164 = icmp ne ptr %94, null
  br i1 %tobool164, label %cond.true165, label %cond.false166

cond.true165:                                     ; preds = %cond.end163
  br label %cond.end167

cond.false166:                                    ; preds = %cond.end163
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.2, i32 noundef 208, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

95:                                               ; No predecessors!
  br label %cond.end167

cond.end167:                                      ; preds = %95, %cond.true165
  %96 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_prev = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %96, i32 0, i32 3
  %97 = load ptr, ptr %LRU_prev, align 8, !tbaa !39
  %tobool168 = icmp ne ptr %97, null
  br i1 %tobool168, label %if.then169, label %if.end200

if.then169:                                       ; preds = %cond.end167
  %98 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_head170 = getelementptr inbounds %struct.H5F_efc_t, ptr %98, i32 0, i32 1
  %99 = load ptr, ptr %LRU_head170, align 8, !tbaa !37
  %100 = load ptr, ptr %ent, align 8, !tbaa !8
  %cmp171 = icmp ne ptr %99, %100
  br i1 %cmp171, label %cond.true173, label %cond.false174

cond.true173:                                     ; preds = %if.then169
  br label %cond.end175

cond.false174:                                    ; preds = %if.then169
  call void @__assert_fail(ptr noundef @.str.18, ptr noundef @.str.2, i32 noundef 212, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

101:                                              ; No predecessors!
  br label %cond.end175

cond.end175:                                      ; preds = %101, %cond.true173
  %102 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %LRU_next, align 8, !tbaa !41
  %tobool176 = icmp ne ptr %103, null
  br i1 %tobool176, label %if.then177, label %if.else181

if.then177:                                       ; preds = %cond.end175
  %104 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_prev178 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %104, i32 0, i32 3
  %105 = load ptr, ptr %LRU_prev178, align 8, !tbaa !39
  %106 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next179 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %106, i32 0, i32 2
  %107 = load ptr, ptr %LRU_next179, align 8, !tbaa !41
  %LRU_prev180 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %107, i32 0, i32 3
  store ptr %105, ptr %LRU_prev180, align 8, !tbaa !39
  br label %if.end190

if.else181:                                       ; preds = %cond.end175
  %108 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_tail182 = getelementptr inbounds %struct.H5F_efc_t, ptr %108, i32 0, i32 2
  %109 = load ptr, ptr %LRU_tail182, align 8, !tbaa !38
  %110 = load ptr, ptr %ent, align 8, !tbaa !8
  %cmp183 = icmp eq ptr %109, %110
  br i1 %cmp183, label %cond.true185, label %cond.false186

cond.true185:                                     ; preds = %if.else181
  br label %cond.end187

cond.false186:                                    ; preds = %if.else181
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 221, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

111:                                              ; No predecessors!
  br label %cond.end187

cond.end187:                                      ; preds = %111, %cond.true185
  %112 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_prev188 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %112, i32 0, i32 3
  %113 = load ptr, ptr %LRU_prev188, align 8, !tbaa !39
  %114 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_tail189 = getelementptr inbounds %struct.H5F_efc_t, ptr %114, i32 0, i32 2
  store ptr %113, ptr %LRU_tail189, align 8, !tbaa !38
  br label %if.end190

if.end190:                                        ; preds = %cond.end187, %if.then177
  %115 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next191 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %115, i32 0, i32 2
  %116 = load ptr, ptr %LRU_next191, align 8, !tbaa !41
  %117 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_prev192 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %117, i32 0, i32 3
  %118 = load ptr, ptr %LRU_prev192, align 8, !tbaa !39
  %LRU_next193 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %118, i32 0, i32 2
  store ptr %116, ptr %LRU_next193, align 8, !tbaa !41
  %119 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_head194 = getelementptr inbounds %struct.H5F_efc_t, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %LRU_head194, align 8, !tbaa !37
  %121 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next195 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %121, i32 0, i32 2
  store ptr %120, ptr %LRU_next195, align 8, !tbaa !41
  %122 = load ptr, ptr %ent, align 8, !tbaa !8
  %123 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next196 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %123, i32 0, i32 2
  %124 = load ptr, ptr %LRU_next196, align 8, !tbaa !41
  %LRU_prev197 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %124, i32 0, i32 3
  store ptr %122, ptr %LRU_prev197, align 8, !tbaa !39
  %125 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_prev198 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %125, i32 0, i32 3
  store ptr null, ptr %LRU_prev198, align 8, !tbaa !39
  %126 = load ptr, ptr %ent, align 8, !tbaa !8
  %127 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_head199 = getelementptr inbounds %struct.H5F_efc_t, ptr %127, i32 0, i32 1
  store ptr %126, ptr %LRU_head199, align 8, !tbaa !37
  br label %if.end200

if.end200:                                        ; preds = %if.end190, %cond.end167
  %128 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %128, i32 0, i32 4
  %129 = load i32, ptr %nopen, align 8, !tbaa !42
  %inc201 = add i32 %129, 1
  store i32 %inc201, ptr %nopen, align 8, !tbaa !42
  br label %if.end324

if.else202:                                       ; preds = %if.end157
  %130 = load ptr, ptr %efc, align 8, !tbaa !8
  %nfiles203 = getelementptr inbounds %struct.H5F_efc_t, ptr %130, i32 0, i32 3
  %131 = load i32, ptr %nfiles203, align 8, !tbaa !36
  %132 = load ptr, ptr %efc, align 8, !tbaa !8
  %max_nfiles = getelementptr inbounds %struct.H5F_efc_t, ptr %132, i32 0, i32 4
  %133 = load i32, ptr %max_nfiles, align 4, !tbaa !19
  %cmp204 = icmp eq i32 %131, %133
  br i1 %cmp204, label %if.then206, label %if.else242

if.then206:                                       ; preds = %if.else202
  %134 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_tail207 = getelementptr inbounds %struct.H5F_efc_t, ptr %134, i32 0, i32 2
  %135 = load ptr, ptr %LRU_tail207, align 8, !tbaa !38
  store ptr %135, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then206
  %136 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool208 = icmp ne ptr %136, null
  br i1 %tobool208, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %137 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen209 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %137, i32 0, i32 4
  %138 = load i32, ptr %nopen209, align 8, !tbaa !42
  %tobool210 = icmp ne i32 %138, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %139 = phi i1 [ false, %for.cond ], [ %tobool210, %land.rhs ]
  br i1 %139, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %140 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_prev211 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %140, i32 0, i32 3
  %141 = load ptr, ptr %LRU_prev211, align 8, !tbaa !39
  store ptr %141, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %142 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool212 = icmp ne ptr %142, null
  br i1 %tobool212, label %if.then213, label %if.else222

if.then213:                                       ; preds = %for.end
  %143 = load ptr, ptr %efc, align 8, !tbaa !8
  %144 = load ptr, ptr %ent, align 8, !tbaa !8
  %call214 = call i32 @H5F__efc_remove_ent(ptr noundef %143, ptr noundef %144)
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %if.then217, label %if.end221

if.then217:                                       ; preds = %if.then213
  %145 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %146 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %147 = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !17
  %call218 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 247, i64 noundef %145, i64 noundef %146, i64 noundef %147, ptr noundef @.str.20)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %148 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool219 = trunc i8 %148 to i1
  %frombool220 = zext i1 %tobool219 to i8
  store i8 %frombool220, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end221:                                        ; preds = %if.then213
  br label %if.end241

if.else222:                                       ; preds = %for.end
  %149 = load ptr, ptr %name.addr, align 8, !tbaa !8
  %150 = load i32, ptr %flags.addr, align 4, !tbaa !4
  %151 = load i64, ptr %fcpl_id.addr, align 8, !tbaa !17
  %152 = load i64, ptr %fapl_id.addr, align 8, !tbaa !17
  %call223 = call ptr @H5F_open(ptr noundef %149, i32 noundef %150, i64 noundef %151, i64 noundef %152)
  store ptr %call223, ptr %ret_value, align 8, !tbaa !8
  %cmp224 = icmp eq ptr null, %call223
  br i1 %cmp224, label %if.then226, label %if.end230

if.then226:                                       ; preds = %if.else222
  %153 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %154 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %155 = load i64, ptr @H5E_CANTOPENFILE_g, align 8, !tbaa !17
  %call227 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 254, i64 noundef %153, i64 noundef %154, i64 noundef %155, ptr noundef @.str.12)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %156 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool228 = trunc i8 %156 to i1
  %frombool229 = zext i1 %tobool228 to i8
  store i8 %frombool229, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end230:                                        ; preds = %if.else222
  %157 = load ptr, ptr %ret_value, align 8, !tbaa !8
  %call231 = call i32 @H5F__post_open(ptr noundef %157)
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.then234, label %if.end238

if.then234:                                       ; preds = %if.end230
  %158 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %159 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %160 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %call235 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 258, i64 noundef %158, i64 noundef %159, i64 noundef %160, ptr noundef @.str.13)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %161 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool236 = trunc i8 %161 to i1
  %frombool237 = zext i1 %tobool236 to i8
  store i8 %frombool237, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end238:                                        ; preds = %if.end230
  %162 = load ptr, ptr %ret_value, align 8, !tbaa !8
  %nopen_objs239 = getelementptr inbounds %struct.H5F_t, ptr %162, i32 0, i32 4
  %163 = load i32, ptr %nopen_objs239, align 8, !tbaa !34
  %inc240 = add i32 %163, 1
  store i32 %inc240, ptr %nopen_objs239, align 8, !tbaa !34
  %164 = load ptr, ptr %ret_value, align 8, !tbaa !8
  store ptr %164, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end241:                                        ; preds = %if.end221
  br label %if.end251

if.else242:                                       ; preds = %if.else202
  %call243 = call ptr @H5FL_reg_malloc(ptr noundef @H5_H5F_efc_ent_t_reg_free_list)
  store ptr %call243, ptr %ent, align 8, !tbaa !8
  %cmp244 = icmp eq ptr null, %call243
  br i1 %cmp244, label %if.then246, label %if.end250

if.then246:                                       ; preds = %if.else242
  %165 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %166 = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !17
  %167 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !17
  %call247 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 271, i64 noundef %165, i64 noundef %166, i64 noundef %167, ptr noundef @.str.4)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %168 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool248 = trunc i8 %168 to i1
  %frombool249 = zext i1 %tobool248 to i8
  store i8 %frombool249, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end250:                                        ; preds = %if.else242
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end241
  %169 = load ptr, ptr %name.addr, align 8, !tbaa !8
  %call252 = call ptr @H5MM_strdup(ptr noundef %169)
  %170 = load ptr, ptr %ent, align 8, !tbaa !8
  %name253 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %170, i32 0, i32 0
  store ptr %call252, ptr %name253, align 8, !tbaa !43
  %cmp254 = icmp eq ptr null, %call252
  br i1 %cmp254, label %if.then256, label %if.end260

if.then256:                                       ; preds = %if.end251
  %171 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %172 = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !17
  %173 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !17
  %call257 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 275, i64 noundef %171, i64 noundef %172, i64 noundef %173, ptr noundef @.str.4)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %174 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool258 = trunc i8 %174 to i1
  %frombool259 = zext i1 %tobool258 to i8
  store i8 %frombool259, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end260:                                        ; preds = %if.end251
  %175 = load ptr, ptr %name.addr, align 8, !tbaa !8
  %176 = load i32, ptr %flags.addr, align 4, !tbaa !4
  %177 = load i64, ptr %fcpl_id.addr, align 8, !tbaa !17
  %178 = load i64, ptr %fapl_id.addr, align 8, !tbaa !17
  %call261 = call ptr @H5F_open(ptr noundef %175, i32 noundef %176, i64 noundef %177, i64 noundef %178)
  %179 = load ptr, ptr %ent, align 8, !tbaa !8
  %file = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %179, i32 0, i32 1
  store ptr %call261, ptr %file, align 8, !tbaa !44
  %cmp262 = icmp eq ptr null, %call261
  br i1 %cmp262, label %if.then264, label %if.end268

if.then264:                                       ; preds = %if.end260
  %180 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %181 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %182 = load i64, ptr @H5E_CANTOPENFILE_g, align 8, !tbaa !17
  %call265 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 279, i64 noundef %180, i64 noundef %181, i64 noundef %182, ptr noundef @.str.12)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %183 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool266 = trunc i8 %183 to i1
  %frombool267 = zext i1 %tobool266 to i8
  store i8 %frombool267, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end268:                                        ; preds = %if.end260
  store i8 1, ptr %open_file, align 1, !tbaa !10
  %184 = load ptr, ptr %ent, align 8, !tbaa !8
  %file269 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %184, i32 0, i32 1
  %185 = load ptr, ptr %file269, align 8, !tbaa !44
  %call270 = call i32 @H5F__post_open(ptr noundef %185)
  %cmp271 = icmp slt i32 %call270, 0
  br i1 %cmp271, label %if.then273, label %if.end277

if.then273:                                       ; preds = %if.end268
  %186 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %187 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %188 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %call274 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 284, i64 noundef %186, i64 noundef %187, i64 noundef %188, ptr noundef @.str.13)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %189 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool275 = trunc i8 %189 to i1
  %frombool276 = zext i1 %tobool275 to i8
  store i8 %frombool276, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end277:                                        ; preds = %if.end268
  %190 = load ptr, ptr %ent, align 8, !tbaa !8
  %file278 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %190, i32 0, i32 1
  %191 = load ptr, ptr %file278, align 8, !tbaa !44
  %nopen_objs279 = getelementptr inbounds %struct.H5F_t, ptr %191, i32 0, i32 4
  %192 = load i32, ptr %nopen_objs279, align 8, !tbaa !34
  %inc280 = add i32 %192, 1
  store i32 %inc280, ptr %nopen_objs279, align 8, !tbaa !34
  %193 = load ptr, ptr %efc, align 8, !tbaa !8
  %slist281 = getelementptr inbounds %struct.H5F_efc_t, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %slist281, align 8, !tbaa !35
  %195 = load ptr, ptr %ent, align 8, !tbaa !8
  %196 = load ptr, ptr %ent, align 8, !tbaa !8
  %name282 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %196, i32 0, i32 0
  %197 = load ptr, ptr %name282, align 8, !tbaa !43
  %call283 = call i32 @H5SL_insert(ptr noundef %194, ptr noundef %195, ptr noundef %197)
  %cmp284 = icmp slt i32 %call283, 0
  br i1 %cmp284, label %if.then286, label %if.end290

if.then286:                                       ; preds = %if.end277
  %198 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %199 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %200 = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !17
  %call287 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 293, i64 noundef %198, i64 noundef %199, i64 noundef %200, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %201 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool288 = trunc i8 %201 to i1
  %frombool289 = zext i1 %tobool288 to i8
  store i8 %frombool289, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %done

if.end290:                                        ; preds = %if.end277
  %202 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_head291 = getelementptr inbounds %struct.H5F_efc_t, ptr %202, i32 0, i32 1
  %203 = load ptr, ptr %LRU_head291, align 8, !tbaa !37
  %204 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next292 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %204, i32 0, i32 2
  store ptr %203, ptr %LRU_next292, align 8, !tbaa !41
  %205 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next293 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %205, i32 0, i32 2
  %206 = load ptr, ptr %LRU_next293, align 8, !tbaa !41
  %tobool294 = icmp ne ptr %206, null
  br i1 %tobool294, label %if.then295, label %if.end298

if.then295:                                       ; preds = %if.end290
  %207 = load ptr, ptr %ent, align 8, !tbaa !8
  %208 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next296 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %208, i32 0, i32 2
  %209 = load ptr, ptr %LRU_next296, align 8, !tbaa !41
  %LRU_prev297 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %209, i32 0, i32 3
  store ptr %207, ptr %LRU_prev297, align 8, !tbaa !39
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %if.end290
  %210 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_prev299 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %210, i32 0, i32 3
  store ptr null, ptr %LRU_prev299, align 8, !tbaa !39
  %211 = load ptr, ptr %ent, align 8, !tbaa !8
  %212 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_head300 = getelementptr inbounds %struct.H5F_efc_t, ptr %212, i32 0, i32 1
  store ptr %211, ptr %LRU_head300, align 8, !tbaa !37
  %213 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_tail301 = getelementptr inbounds %struct.H5F_efc_t, ptr %213, i32 0, i32 2
  %214 = load ptr, ptr %LRU_tail301, align 8, !tbaa !38
  %tobool302 = icmp ne ptr %214, null
  br i1 %tobool302, label %if.end310, label %if.then303

if.then303:                                       ; preds = %if.end298
  %215 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next304 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %215, i32 0, i32 2
  %216 = load ptr, ptr %LRU_next304, align 8, !tbaa !41
  %tobool305 = icmp ne ptr %216, null
  br i1 %tobool305, label %cond.false307, label %cond.true306

cond.true306:                                     ; preds = %if.then303
  br label %cond.end308

cond.false307:                                    ; preds = %if.then303
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.2, i32 noundef 302, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

217:                                              ; No predecessors!
  br label %cond.end308

cond.end308:                                      ; preds = %217, %cond.true306
  %218 = load ptr, ptr %ent, align 8, !tbaa !8
  %219 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_tail309 = getelementptr inbounds %struct.H5F_efc_t, ptr %219, i32 0, i32 2
  store ptr %218, ptr %LRU_tail309, align 8, !tbaa !38
  br label %if.end310

if.end310:                                        ; preds = %cond.end308, %if.end298
  %220 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen311 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %220, i32 0, i32 4
  store i32 1, ptr %nopen311, align 8, !tbaa !42
  %221 = load ptr, ptr %efc, align 8, !tbaa !8
  %nfiles312 = getelementptr inbounds %struct.H5F_efc_t, ptr %221, i32 0, i32 3
  %222 = load i32, ptr %nfiles312, align 8, !tbaa !36
  %inc313 = add i32 %222, 1
  store i32 %inc313, ptr %nfiles312, align 8, !tbaa !36
  %223 = load ptr, ptr %ent, align 8, !tbaa !8
  %file314 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %223, i32 0, i32 1
  %224 = load ptr, ptr %file314, align 8, !tbaa !44
  %shared315 = getelementptr inbounds %struct.H5F_t, ptr %224, i32 0, i32 2
  %225 = load ptr, ptr %shared315, align 8, !tbaa !22
  %efc316 = getelementptr inbounds %struct.H5F_shared_t, ptr %225, i32 0, i32 7
  %226 = load ptr, ptr %efc316, align 8, !tbaa !24
  %tobool317 = icmp ne ptr %226, null
  br i1 %tobool317, label %if.then318, label %if.end323

if.then318:                                       ; preds = %if.end310
  %227 = load ptr, ptr %ent, align 8, !tbaa !8
  %file319 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %227, i32 0, i32 1
  %228 = load ptr, ptr %file319, align 8, !tbaa !44
  %shared320 = getelementptr inbounds %struct.H5F_t, ptr %228, i32 0, i32 2
  %229 = load ptr, ptr %shared320, align 8, !tbaa !22
  %efc321 = getelementptr inbounds %struct.H5F_shared_t, ptr %229, i32 0, i32 7
  %230 = load ptr, ptr %efc321, align 8, !tbaa !24
  %nrefs = getelementptr inbounds %struct.H5F_efc_t, ptr %230, i32 0, i32 5
  %231 = load i32, ptr %nrefs, align 8, !tbaa !45
  %inc322 = add i32 %231, 1
  store i32 %inc322, ptr %nrefs, align 8, !tbaa !45
  br label %if.end323

if.end323:                                        ; preds = %if.then318, %if.end310
  br label %if.end324

if.end324:                                        ; preds = %if.end323, %if.end200
  %232 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool325 = icmp ne ptr %232, null
  br i1 %tobool325, label %cond.true326, label %cond.false327

cond.true326:                                     ; preds = %if.end324
  br label %cond.end328

cond.false327:                                    ; preds = %if.end324
  call void @__assert_fail(ptr noundef @.str.23, ptr noundef @.str.2, i32 noundef 315, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

233:                                              ; No predecessors!
  br label %cond.end328

cond.end328:                                      ; preds = %233, %cond.true326
  %234 = load ptr, ptr %ent, align 8, !tbaa !8
  %file329 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %234, i32 0, i32 1
  %235 = load ptr, ptr %file329, align 8, !tbaa !44
  %tobool330 = icmp ne ptr %235, null
  br i1 %tobool330, label %cond.true331, label %cond.false332

cond.true331:                                     ; preds = %cond.end328
  br label %cond.end333

cond.false332:                                    ; preds = %cond.end328
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.2, i32 noundef 316, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

236:                                              ; No predecessors!
  br label %cond.end333

cond.end333:                                      ; preds = %236, %cond.true331
  %237 = load ptr, ptr %ent, align 8, !tbaa !8
  %name334 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %237, i32 0, i32 0
  %238 = load ptr, ptr %name334, align 8, !tbaa !43
  %tobool335 = icmp ne ptr %238, null
  br i1 %tobool335, label %cond.true336, label %cond.false337

cond.true336:                                     ; preds = %cond.end333
  br label %cond.end338

cond.false337:                                    ; preds = %cond.end333
  call void @__assert_fail(ptr noundef @.str.25, ptr noundef @.str.2, i32 noundef 317, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

239:                                              ; No predecessors!
  br label %cond.end338

cond.end338:                                      ; preds = %239, %cond.true336
  %240 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen339 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %240, i32 0, i32 4
  %241 = load i32, ptr %nopen339, align 8, !tbaa !42
  %tobool340 = icmp ne i32 %241, 0
  br i1 %tobool340, label %cond.true341, label %cond.false342

cond.true341:                                     ; preds = %cond.end338
  br label %cond.end343

cond.false342:                                    ; preds = %cond.end338
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.2, i32 noundef 318, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_open) #7
  unreachable

242:                                              ; No predecessors!
  br label %cond.end343

cond.end343:                                      ; preds = %242, %cond.true341
  %243 = load ptr, ptr %ent, align 8, !tbaa !8
  %file344 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %243, i32 0, i32 1
  %244 = load ptr, ptr %file344, align 8, !tbaa !44
  store ptr %244, ptr %ret_value, align 8, !tbaa !8
  br label %done

done:                                             ; preds = %cond.end343, %if.then286, %if.then273, %if.then264, %if.then256, %if.then246, %if.end238, %if.then234, %if.then226, %if.then217, %if.then152, %if.end132, %if.then128, %if.then120, %if.then108, %if.then100, %if.then93
  %245 = load ptr, ptr %ret_value, align 8, !tbaa !8
  %tobool345 = icmp ne ptr %245, null
  br i1 %tobool345, label %if.end368, label %if.then346

if.then346:                                       ; preds = %done
  %246 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool347 = icmp ne ptr %246, null
  br i1 %tobool347, label %if.then348, label %if.end367

if.then348:                                       ; preds = %if.then346
  %247 = load i8, ptr %open_file, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool349 = trunc i8 %247 to i1
  br i1 %tobool349, label %if.then350, label %if.end362

if.then350:                                       ; preds = %if.then348
  %248 = load ptr, ptr %ent, align 8, !tbaa !8
  %file351 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %248, i32 0, i32 1
  %249 = load ptr, ptr %file351, align 8, !tbaa !44
  %nopen_objs352 = getelementptr inbounds %struct.H5F_t, ptr %249, i32 0, i32 4
  %250 = load i32, ptr %nopen_objs352, align 8, !tbaa !34
  %dec = add i32 %250, -1
  store i32 %dec, ptr %nopen_objs352, align 8, !tbaa !34
  %251 = load ptr, ptr %ent, align 8, !tbaa !8
  %file353 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %251, i32 0, i32 1
  %252 = load ptr, ptr %file353, align 8, !tbaa !44
  %call354 = call i32 @H5F_try_close(ptr noundef %252, ptr noundef null)
  %cmp355 = icmp slt i32 %call354, 0
  br i1 %cmp355, label %if.then357, label %if.end361

if.then357:                                       ; preds = %if.then350
  %253 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %254 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %255 = load i64, ptr @H5E_CANTCLOSEFILE_g, align 8, !tbaa !17
  %call358 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_open, i32 noundef 329, i64 noundef %253, i64 noundef %254, i64 noundef %255, ptr noundef @.str.27)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %256 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool359 = trunc i8 %256 to i1
  %frombool360 = zext i1 %tobool359 to i8
  store i8 %frombool360, ptr %err_occurred, align 1, !tbaa !10
  store ptr null, ptr %ret_value, align 8, !tbaa !8
  br label %if.end361

if.end361:                                        ; preds = %if.then357, %if.then350
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %if.then348
  %257 = load ptr, ptr %ent, align 8, !tbaa !8
  %name363 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %257, i32 0, i32 0
  %258 = load ptr, ptr %name363, align 8, !tbaa !43
  %call364 = call ptr @H5MM_xfree(ptr noundef %258)
  %259 = load ptr, ptr %ent, align 8, !tbaa !8
  %name365 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %259, i32 0, i32 0
  store ptr %call364, ptr %name365, align 8, !tbaa !43
  %260 = load ptr, ptr %ent, align 8, !tbaa !8
  %call366 = call ptr @H5FL_reg_free(ptr noundef @H5_H5F_efc_ent_t_reg_free_list, ptr noundef %260)
  store ptr %call366, ptr %ent, align 8, !tbaa !8
  br label %if.end367

if.end367:                                        ; preds = %if.end362, %if.then346
  br label %if.end368

if.end368:                                        ; preds = %if.end367, %done
  br label %if.end369

if.end369:                                        ; preds = %if.end368, %lor.lhs.false75
  %261 = load ptr, ptr %ret_value, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_value) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr %connector_prop) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %plist) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %open_file) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %efc) #5
  ret ptr %261
}

declare ptr @H5I_object(i64 noundef) #4

declare i32 @H5P_peek(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @H5CX_set_vol_connector_prop(ptr noundef) #4

declare ptr @H5F_open(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

declare i32 @H5F__post_open(ptr noundef) #4

declare ptr @H5SL_search(ptr noundef, ptr noundef) #4

declare ptr @H5SL_create(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @H5F__efc_remove_ent(ptr noundef %efc, ptr noundef %ent) #0 {
entry:
  %efc.addr = alloca ptr, align 8
  %ent.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %efc, ptr %efc.addr, align 8, !tbaa !8
  store ptr %ent, ptr %ent.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F__efc_remove_ent.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_remove_ent, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 589, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_remove_ent) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_remove_ent.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end148, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.30, ptr noundef @.str.2, i32 noundef 592, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_remove_ent) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %slist = getelementptr inbounds %struct.H5F_efc_t, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %slist, align 8, !tbaa !35
  %tobool82 = icmp ne ptr %36, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.2, i32 noundef 593, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_remove_ent) #7
  unreachable

37:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %37, %cond.true83
  %38 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %tobool86 = icmp ne ptr %38, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.23, ptr noundef @.str.2, i32 noundef 594, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_remove_ent) #7
  unreachable

39:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %39, %cond.true87
  %40 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %41 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %slist90 = getelementptr inbounds %struct.H5F_efc_t, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %slist90, align 8, !tbaa !35
  %43 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %name = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %name, align 8, !tbaa !43
  %call91 = call ptr @H5SL_remove(ptr noundef %42, ptr noundef %44)
  %cmp92 = icmp ne ptr %40, %call91
  br i1 %cmp92, label %if.then94, label %if.end97

if.then94:                                        ; preds = %cond.end89
  %45 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %46 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %47 = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !17
  %call95 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_remove_ent, i32 noundef 598, i64 noundef %45, i64 noundef %46, i64 noundef %47, ptr noundef @.str.54)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %48 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool96 = trunc i8 %48 to i1
  %frombool = zext i1 %tobool96 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end97:                                         ; preds = %cond.end89
  %49 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_next = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %LRU_next, align 8, !tbaa !41
  %tobool98 = icmp ne ptr %50, null
  br i1 %tobool98, label %if.then99, label %if.else

if.then99:                                        ; preds = %if.end97
  %51 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_prev = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %LRU_prev, align 8, !tbaa !39
  %53 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_next100 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %LRU_next100, align 8, !tbaa !41
  %LRU_prev101 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %54, i32 0, i32 3
  store ptr %52, ptr %LRU_prev101, align 8, !tbaa !39
  br label %if.end109

if.else:                                          ; preds = %if.end97
  %55 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %LRU_tail = getelementptr inbounds %struct.H5F_efc_t, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %LRU_tail, align 8, !tbaa !38
  %57 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %cmp102 = icmp eq ptr %56, %57
  br i1 %cmp102, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %if.else
  br label %cond.end106

cond.false105:                                    ; preds = %if.else
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 604, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_remove_ent) #7
  unreachable

58:                                               ; No predecessors!
  br label %cond.end106

cond.end106:                                      ; preds = %58, %cond.true104
  %59 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_prev107 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %LRU_prev107, align 8, !tbaa !39
  %61 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %LRU_tail108 = getelementptr inbounds %struct.H5F_efc_t, ptr %61, i32 0, i32 2
  store ptr %60, ptr %LRU_tail108, align 8, !tbaa !38
  br label %if.end109

if.end109:                                        ; preds = %cond.end106, %if.then99
  %62 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_prev110 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %LRU_prev110, align 8, !tbaa !39
  %tobool111 = icmp ne ptr %63, null
  br i1 %tobool111, label %if.then112, label %if.else116

if.then112:                                       ; preds = %if.end109
  %64 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_next113 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %LRU_next113, align 8, !tbaa !41
  %66 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_prev114 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %LRU_prev114, align 8, !tbaa !39
  %LRU_next115 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %67, i32 0, i32 2
  store ptr %65, ptr %LRU_next115, align 8, !tbaa !41
  br label %if.end124

if.else116:                                       ; preds = %if.end109
  %68 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %LRU_head = getelementptr inbounds %struct.H5F_efc_t, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %LRU_head, align 8, !tbaa !37
  %70 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %cmp117 = icmp eq ptr %69, %70
  br i1 %cmp117, label %cond.true119, label %cond.false120

cond.true119:                                     ; preds = %if.else116
  br label %cond.end121

cond.false120:                                    ; preds = %if.else116
  call void @__assert_fail(ptr noundef @.str.55, ptr noundef @.str.2, i32 noundef 610, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_remove_ent) #7
  unreachable

71:                                               ; No predecessors!
  br label %cond.end121

cond.end121:                                      ; preds = %71, %cond.true119
  %72 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %LRU_next122 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %LRU_next122, align 8, !tbaa !41
  %74 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %LRU_head123 = getelementptr inbounds %struct.H5F_efc_t, ptr %74, i32 0, i32 1
  store ptr %73, ptr %LRU_head123, align 8, !tbaa !37
  br label %if.end124

if.end124:                                        ; preds = %cond.end121, %if.then112
  %75 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %nfiles = getelementptr inbounds %struct.H5F_efc_t, ptr %75, i32 0, i32 3
  %76 = load i32, ptr %nfiles, align 8, !tbaa !36
  %dec = add i32 %76, -1
  store i32 %dec, ptr %nfiles, align 8, !tbaa !36
  %77 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %file = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %file, align 8, !tbaa !44
  %shared = getelementptr inbounds %struct.H5F_t, ptr %78, i32 0, i32 2
  %79 = load ptr, ptr %shared, align 8, !tbaa !22
  %efc125 = getelementptr inbounds %struct.H5F_shared_t, ptr %79, i32 0, i32 7
  %80 = load ptr, ptr %efc125, align 8, !tbaa !24
  %tobool126 = icmp ne ptr %80, null
  br i1 %tobool126, label %if.then127, label %if.end132

if.then127:                                       ; preds = %if.end124
  %81 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %file128 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %file128, align 8, !tbaa !44
  %shared129 = getelementptr inbounds %struct.H5F_t, ptr %82, i32 0, i32 2
  %83 = load ptr, ptr %shared129, align 8, !tbaa !22
  %efc130 = getelementptr inbounds %struct.H5F_shared_t, ptr %83, i32 0, i32 7
  %84 = load ptr, ptr %efc130, align 8, !tbaa !24
  %nrefs = getelementptr inbounds %struct.H5F_efc_t, ptr %84, i32 0, i32 5
  %85 = load i32, ptr %nrefs, align 8, !tbaa !45
  %dec131 = add i32 %85, -1
  store i32 %dec131, ptr %nrefs, align 8, !tbaa !45
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.end124
  %86 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %name133 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %name133, align 8, !tbaa !43
  %call134 = call ptr @H5MM_xfree(ptr noundef %87)
  %88 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %name135 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %88, i32 0, i32 0
  store ptr %call134, ptr %name135, align 8, !tbaa !43
  %89 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %file136 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %89, i32 0, i32 1
  %90 = load ptr, ptr %file136, align 8, !tbaa !44
  %nopen_objs = getelementptr inbounds %struct.H5F_t, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %nopen_objs, align 8, !tbaa !34
  %dec137 = add i32 %91, -1
  store i32 %dec137, ptr %nopen_objs, align 8, !tbaa !34
  %92 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %file138 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %file138, align 8, !tbaa !44
  %call139 = call i32 @H5F_try_close(ptr noundef %93, ptr noundef null)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.end146

if.then142:                                       ; preds = %if.end132
  %94 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %95 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %96 = load i64, ptr @H5E_CANTCLOSEFILE_g, align 8, !tbaa !17
  %call143 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_remove_ent, i32 noundef 628, i64 noundef %94, i64 noundef %95, i64 noundef %96, ptr noundef @.str.27)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %97 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool144 = trunc i8 %97 to i1
  %frombool145 = zext i1 %tobool144 to i8
  store i8 %frombool145, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end146:                                        ; preds = %if.end132
  %98 = load ptr, ptr %ent.addr, align 8, !tbaa !8
  %file147 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %98, i32 0, i32 1
  store ptr null, ptr %file147, align 8, !tbaa !44
  br label %done

done:                                             ; preds = %if.end146, %if.then142, %if.then94
  br label %if.end148

if.end148:                                        ; preds = %done, %lor.lhs.false75
  %99 = load i32, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  ret i32 %99
}

declare ptr @H5FL_reg_malloc(ptr noundef) #4

declare ptr @H5MM_strdup(ptr noundef) #4

declare i32 @H5SL_insert(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @H5F_try_close(ptr noundef, ptr noundef) #4

declare ptr @H5MM_xfree(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5F_efc_close(ptr noundef %parent, ptr noundef %file) #0 {
entry:
  %parent.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %efc = alloca ptr, align 8
  %ent = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !8
  store ptr %file, ptr %file.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %efc) #5
  store ptr null, ptr %efc, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #5
  store ptr null, ptr %ent, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F_efc_close.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5F_efc_close.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end43, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %parent.addr, align 8, !tbaa !8
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 363, ptr noundef @__PRETTY_FUNCTION__.H5F_efc_close) #7
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load ptr, ptr %parent.addr, align 8, !tbaa !8
  %shared = getelementptr inbounds %struct.H5F_t, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %shared, align 8, !tbaa !22
  %tobool5 = icmp ne ptr %6, null
  br i1 %tobool5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 364, ptr noundef @__PRETTY_FUNCTION__.H5F_efc_close) #7
  unreachable

7:                                                ; No predecessors!
  br label %cond.end8

cond.end8:                                        ; preds = %7, %cond.true6
  %8 = load ptr, ptr %file.addr, align 8, !tbaa !8
  %tobool9 = icmp ne ptr %8, null
  br i1 %tobool9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end8
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end8
  call void @__assert_fail(ptr noundef @.str.28, ptr noundef @.str.2, i32 noundef 365, ptr noundef @__PRETTY_FUNCTION__.H5F_efc_close) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end12

cond.end12:                                       ; preds = %9, %cond.true10
  %10 = load ptr, ptr %file.addr, align 8, !tbaa !8
  %shared13 = getelementptr inbounds %struct.H5F_t, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %shared13, align 8, !tbaa !22
  %tobool14 = icmp ne ptr %11, null
  br i1 %tobool14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.end12
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end12
  call void @__assert_fail(ptr noundef @.str.29, ptr noundef @.str.2, i32 noundef 366, ptr noundef @__PRETTY_FUNCTION__.H5F_efc_close) #7
  unreachable

12:                                               ; No predecessors!
  br label %cond.end17

cond.end17:                                       ; preds = %12, %cond.true15
  %13 = load ptr, ptr %parent.addr, align 8, !tbaa !8
  %shared18 = getelementptr inbounds %struct.H5F_t, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %shared18, align 8, !tbaa !22
  %efc19 = getelementptr inbounds %struct.H5F_shared_t, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %efc19, align 8, !tbaa !24
  store ptr %15, ptr %efc, align 8, !tbaa !8
  %16 = load ptr, ptr %efc, align 8, !tbaa !8
  %tobool20 = icmp ne ptr %16, null
  br i1 %tobool20, label %if.end26, label %if.then21

if.then21:                                        ; preds = %cond.end17
  %17 = load ptr, ptr %file.addr, align 8, !tbaa !8
  %nopen_objs = getelementptr inbounds %struct.H5F_t, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %nopen_objs, align 8, !tbaa !34
  %dec = add i32 %18, -1
  store i32 %dec, ptr %nopen_objs, align 8, !tbaa !34
  %19 = load ptr, ptr %file.addr, align 8, !tbaa !8
  %call = call i32 @H5F_try_close(ptr noundef %19, ptr noundef null)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.then21
  %20 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %21 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %22 = load i64, ptr @H5E_CANTCLOSEFILE_g, align 8, !tbaa !17
  %call23 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F_efc_close, i32 noundef 377, i64 noundef %20, i64 noundef %21, i64 noundef %22, ptr noundef @.str.27)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %23 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool24 = trunc i8 %23 to i1
  %frombool = zext i1 %tobool24 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end25:                                         ; preds = %if.then21
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end26:                                         ; preds = %cond.end17
  %24 = load ptr, ptr %efc, align 8, !tbaa !8
  %LRU_head = getelementptr inbounds %struct.H5F_efc_t, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %LRU_head, align 8, !tbaa !37
  store ptr %25, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %26 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool27 = icmp ne ptr %26, null
  br i1 %tobool27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %27 = load ptr, ptr %ent, align 8, !tbaa !8
  %file28 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %file28, align 8, !tbaa !44
  %29 = load ptr, ptr %file.addr, align 8, !tbaa !8
  %cmp29 = icmp ne ptr %28, %29
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %30 = phi i1 [ false, %for.cond ], [ %cmp29, %land.rhs ]
  br i1 %30, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %LRU_next, align 8, !tbaa !41
  store ptr %32, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %33 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool30 = icmp ne ptr %33, null
  br i1 %tobool30, label %if.else, label %if.then31

if.then31:                                        ; preds = %for.end
  %34 = load ptr, ptr %file.addr, align 8, !tbaa !8
  %nopen_objs32 = getelementptr inbounds %struct.H5F_t, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %nopen_objs32, align 8, !tbaa !34
  %dec33 = add i32 %35, -1
  store i32 %dec33, ptr %nopen_objs32, align 8, !tbaa !34
  %36 = load ptr, ptr %file.addr, align 8, !tbaa !8
  %call34 = call i32 @H5F_try_close(ptr noundef %36, ptr noundef null)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.then31
  %37 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %38 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %39 = load i64, ptr @H5E_CANTCLOSEFILE_g, align 8, !tbaa !17
  %call37 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F_efc_close, i32 noundef 392, i64 noundef %37, i64 noundef %38, i64 noundef %39, ptr noundef @.str.27)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %40 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool38 = trunc i8 %40 to i1
  %frombool39 = zext i1 %tobool38 to i8
  store i8 %frombool39, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end40:                                         ; preds = %if.then31
  br label %if.end42

if.else:                                          ; preds = %for.end
  %41 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %41, i32 0, i32 4
  %42 = load i32, ptr %nopen, align 8, !tbaa !42
  %dec41 = add i32 %42, -1
  store i32 %dec41, ptr %nopen, align 8, !tbaa !42
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end40
  br label %done

done:                                             ; preds = %if.end42, %if.then36, %if.end25, %if.then22
  br label %if.end43

if.end43:                                         ; preds = %done, %lor.lhs.false
  %43 = load i32, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %efc) #5
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @H5F__efc_max_nfiles(ptr noundef %efc) #0 {
entry:
  %efc.addr = alloca ptr, align 8
  store ptr %efc, ptr %efc.addr, align 8, !tbaa !8
  %0 = load i8, ptr @H5F__efc_max_nfiles.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([20 x i8], ptr @__func__.H5F__efc_max_nfiles, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 418, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_max_nfiles) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_max_nfiles.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end87, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.30, ptr noundef @.str.2, i32 noundef 420, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_max_nfiles) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %max_nfiles = getelementptr inbounds %struct.H5F_efc_t, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %max_nfiles, align 4, !tbaa !19
  %cmp82 = icmp ugt i32 %36, 0
  br i1 %cmp82, label %cond.true84, label %cond.false85

cond.true84:                                      ; preds = %cond.end81
  br label %cond.end86

cond.false85:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.31, ptr noundef @.str.2, i32 noundef 421, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_max_nfiles) #7
  unreachable

37:                                               ; No predecessors!
  br label %cond.end86

cond.end86:                                       ; preds = %37, %cond.true84
  br label %if.end87

if.end87:                                         ; preds = %cond.end86, %lor.lhs.false75
  %38 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %max_nfiles88 = getelementptr inbounds %struct.H5F_efc_t, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %max_nfiles88, align 4, !tbaa !19
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @H5F__efc_release(ptr noundef %efc) #0 {
entry:
  %efc.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %efc, ptr %efc.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F__efc_release.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_release, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 506, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_release) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_release.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end89, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.30, ptr noundef @.str.2, i32 noundef 509, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_release) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %call82 = call i32 @H5F__efc_release_real(ptr noundef %35)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then85, label %if.end88

if.then85:                                        ; preds = %cond.end81
  %36 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %37 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %38 = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !17
  %call86 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_release, i32 noundef 513, i64 noundef %36, i64 noundef %37, i64 noundef %38, ptr noundef @.str.20)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %39 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool87 = trunc i8 %39 to i1
  %frombool = zext i1 %tobool87 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end88:                                         ; preds = %cond.end81
  br label %done

done:                                             ; preds = %if.end88, %if.then85
  br label %if.end89

if.end89:                                         ; preds = %done, %lor.lhs.false75
  %40 = load i32, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @H5F__efc_release_real(ptr noundef %efc) #0 {
entry:
  %efc.addr = alloca ptr, align 8
  %ent = alloca ptr, align 8
  %prev_ent = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %efc, ptr %efc.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #5
  store ptr null, ptr %ent, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_ent) #5
  store ptr null, ptr %prev_ent, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F__efc_release_real.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5F__efc_release_real, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 448, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_release_real) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_release_real.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end106, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.30, ptr noundef @.str.2, i32 noundef 451, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_release_real) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tag = getelementptr inbounds %struct.H5F_efc_t, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %tag, align 4, !tbaa !21
  %cmp82 = icmp eq i32 %36, -1
  br i1 %cmp82, label %cond.true88, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %cond.end81
  %37 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tag85 = getelementptr inbounds %struct.H5F_efc_t, ptr %37, i32 0, i32 6
  %38 = load i32, ptr %tag85, align 4, !tbaa !21
  %cmp86 = icmp eq i32 %38, -3
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %lor.lhs.false84, %cond.end81
  br label %cond.end90

cond.false89:                                     ; preds = %lor.lhs.false84
  call void @__assert_fail(ptr noundef @.str.52, ptr noundef @.str.2, i32 noundef 458, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_release_real) #7
  unreachable

39:                                               ; No predecessors!
  br label %cond.end90

cond.end90:                                       ; preds = %39, %cond.true88
  %40 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tag91 = getelementptr inbounds %struct.H5F_efc_t, ptr %40, i32 0, i32 6
  store i32 -2, ptr %tag91, align 4, !tbaa !21
  %41 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %LRU_head = getelementptr inbounds %struct.H5F_efc_t, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %LRU_head, align 8, !tbaa !37
  store ptr %42, ptr %ent, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end104, %cond.end90
  %43 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool92 = icmp ne ptr %43, null
  br i1 %tobool92, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %44, i32 0, i32 4
  %45 = load i32, ptr %nopen, align 8, !tbaa !42
  %tobool93 = icmp ne i32 %45, 0
  br i1 %tobool93, label %if.else, label %if.then94

if.then94:                                        ; preds = %while.body
  %46 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %47 = load ptr, ptr %ent, align 8, !tbaa !8
  %call95 = call i32 @H5F__efc_remove_ent(ptr noundef %46, ptr noundef %47)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then98, label %if.end101

if.then98:                                        ; preds = %if.then94
  %48 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %49 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %50 = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !17
  %call99 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_release_real, i32 noundef 467, i64 noundef %48, i64 noundef %49, i64 noundef %50, ptr noundef @.str.20)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %51 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool100 = trunc i8 %51 to i1
  %frombool = zext i1 %tobool100 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end101:                                        ; preds = %if.then94
  %52 = load ptr, ptr %ent, align 8, !tbaa !8
  store ptr %52, ptr %prev_ent, align 8, !tbaa !8
  %53 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %LRU_next, align 8, !tbaa !41
  store ptr %54, ptr %ent, align 8, !tbaa !8
  %55 = load ptr, ptr %prev_ent, align 8, !tbaa !8
  %call102 = call ptr @H5FL_reg_free(ptr noundef @H5_H5F_efc_ent_t_reg_free_list, ptr noundef %55)
  store ptr %call102, ptr %prev_ent, align 8, !tbaa !8
  br label %if.end104

if.else:                                          ; preds = %while.body
  %56 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next103 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %LRU_next103, align 8, !tbaa !41
  store ptr %57, ptr %ent, align 8, !tbaa !8
  br label %if.end104

if.end104:                                        ; preds = %if.else, %if.end101
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %58 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tag105 = getelementptr inbounds %struct.H5F_efc_t, ptr %58, i32 0, i32 6
  store i32 -1, ptr %tag105, align 4, !tbaa !21
  br label %done

done:                                             ; preds = %while.end, %if.then98
  br label %if.end106

if.end106:                                        ; preds = %done, %lor.lhs.false75
  %59 = load i32, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_ent) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #5
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @H5F__efc_destroy(ptr noundef %efc) #0 {
entry:
  %efc.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %efc, ptr %efc.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F__efc_destroy.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5F__efc_destroy, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 539, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_destroy) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_destroy.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end130, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.30, ptr noundef @.str.2, i32 noundef 542, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_destroy) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %nfiles = getelementptr inbounds %struct.H5F_efc_t, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %nfiles, align 8, !tbaa !36
  %cmp82 = icmp ugt i32 %36, 0
  br i1 %cmp82, label %if.then84, label %if.end100

if.then84:                                        ; preds = %cond.end81
  %37 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %call85 = call i32 @H5F__efc_release_real(ptr noundef %37)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.then84
  %38 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %39 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %40 = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !17
  %call89 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_destroy, i32 noundef 547, i64 noundef %38, i64 noundef %39, i64 noundef %40, ptr noundef @.str.32)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %41 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool90 = trunc i8 %41 to i1
  %frombool = zext i1 %tobool90 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end91:                                         ; preds = %if.then84
  %42 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %nfiles92 = getelementptr inbounds %struct.H5F_efc_t, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %nfiles92, align 8, !tbaa !36
  %cmp93 = icmp ugt i32 %43, 0
  br i1 %cmp93, label %if.then95, label %if.end99

if.then95:                                        ; preds = %if.end91
  %44 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %45 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %46 = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !17
  %call96 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_destroy, i32 noundef 551, i64 noundef %44, i64 noundef %45, i64 noundef %46, ptr noundef @.str.33)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %47 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool97 = trunc i8 %47 to i1
  %frombool98 = zext i1 %tobool97 to i8
  store i8 %frombool98, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end99:                                         ; preds = %if.end91
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %cond.end81
  %48 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %nfiles101 = getelementptr inbounds %struct.H5F_efc_t, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %nfiles101, align 8, !tbaa !36
  %cmp102 = icmp eq i32 %49, 0
  br i1 %cmp102, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %if.end100
  br label %cond.end106

cond.false105:                                    ; preds = %if.end100
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.2, i32 noundef 554, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_destroy) #7
  unreachable

50:                                               ; No predecessors!
  br label %cond.end106

cond.end106:                                      ; preds = %50, %cond.true104
  %51 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %LRU_head = getelementptr inbounds %struct.H5F_efc_t, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %LRU_head, align 8, !tbaa !37
  %cmp107 = icmp eq ptr %52, null
  br i1 %cmp107, label %cond.true109, label %cond.false110

cond.true109:                                     ; preds = %cond.end106
  br label %cond.end111

cond.false110:                                    ; preds = %cond.end106
  call void @__assert_fail(ptr noundef @.str.34, ptr noundef @.str.2, i32 noundef 555, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_destroy) #7
  unreachable

53:                                               ; No predecessors!
  br label %cond.end111

cond.end111:                                      ; preds = %53, %cond.true109
  %54 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %LRU_tail = getelementptr inbounds %struct.H5F_efc_t, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %LRU_tail, align 8, !tbaa !38
  %cmp112 = icmp eq ptr %55, null
  br i1 %cmp112, label %cond.true114, label %cond.false115

cond.true114:                                     ; preds = %cond.end111
  br label %cond.end116

cond.false115:                                    ; preds = %cond.end111
  call void @__assert_fail(ptr noundef @.str.35, ptr noundef @.str.2, i32 noundef 556, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_destroy) #7
  unreachable

56:                                               ; No predecessors!
  br label %cond.end116

cond.end116:                                      ; preds = %56, %cond.true114
  %57 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %slist = getelementptr inbounds %struct.H5F_efc_t, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %slist, align 8, !tbaa !35
  %tobool117 = icmp ne ptr %58, null
  br i1 %tobool117, label %if.then118, label %if.end128

if.then118:                                       ; preds = %cond.end116
  %59 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %slist119 = getelementptr inbounds %struct.H5F_efc_t, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %slist119, align 8, !tbaa !35
  %call120 = call i32 @H5SL_close(ptr noundef %60)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.then118
  %61 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %62 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %63 = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !17
  %call124 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_destroy, i32 noundef 561, i64 noundef %61, i64 noundef %62, i64 noundef %63, ptr noundef @.str.36)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %64 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool125 = trunc i8 %64 to i1
  %frombool126 = zext i1 %tobool125 to i8
  store i8 %frombool126, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end127:                                        ; preds = %if.then118
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %cond.end116
  %65 = load ptr, ptr %efc.addr, align 8, !tbaa !8
  %call129 = call ptr @H5FL_reg_free(ptr noundef @H5_H5F_efc_t_reg_free_list, ptr noundef %65)
  br label %done

done:                                             ; preds = %if.end128, %if.then123, %if.then95, %if.then88
  br label %if.end130

if.end130:                                        ; preds = %done, %lor.lhs.false75
  %66 = load i32, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  ret i32 %66
}

declare i32 @H5SL_close(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5F__efc_try_close(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %tail = alloca ptr, align 8
  %uncloseable_head = alloca ptr, align 8
  %uncloseable_tail = alloca ptr, align 8
  %sf = alloca ptr, align 8
  %next = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %f, ptr %f.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %uncloseable_head) #5
  store ptr null, ptr %uncloseable_head, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %uncloseable_tail) #5
  store ptr null, ptr %uncloseable_tail, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sf) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #5
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #5
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5F__efc_try_close.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5F__efc_try_close, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 838, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_try_close.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end296, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.37, ptr noundef @.str.2, i32 noundef 841, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared = getelementptr inbounds %struct.H5F_t, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %shared, align 8, !tbaa !22
  %tobool82 = icmp ne ptr %36, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.38, ptr noundef @.str.2, i32 noundef 842, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

37:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %37, %cond.true83
  %38 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared86 = getelementptr inbounds %struct.H5F_t, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %shared86, align 8, !tbaa !22
  %efc = getelementptr inbounds %struct.H5F_shared_t, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %efc, align 8, !tbaa !24
  %tobool87 = icmp ne ptr %40, null
  br i1 %tobool87, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end85
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.39, ptr noundef @.str.2, i32 noundef 843, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

41:                                               ; No predecessors!
  br label %cond.end90

cond.end90:                                       ; preds = %41, %cond.true88
  %42 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared91 = getelementptr inbounds %struct.H5F_t, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %shared91, align 8, !tbaa !22
  %nrefs = getelementptr inbounds %struct.H5F_shared_t, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %nrefs, align 4, !tbaa !46
  %45 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared92 = getelementptr inbounds %struct.H5F_t, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %shared92, align 8, !tbaa !22
  %efc93 = getelementptr inbounds %struct.H5F_shared_t, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %efc93, align 8, !tbaa !24
  %nrefs94 = getelementptr inbounds %struct.H5F_efc_t, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %nrefs94, align 8, !tbaa !45
  %cmp95 = icmp ugt i32 %44, %48
  br i1 %cmp95, label %cond.true97, label %cond.false98

cond.true97:                                      ; preds = %cond.end90
  br label %cond.end99

cond.false98:                                     ; preds = %cond.end90
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.2, i32 noundef 844, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

49:                                               ; No predecessors!
  br label %cond.end99

cond.end99:                                       ; preds = %49, %cond.true97
  %50 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared100 = getelementptr inbounds %struct.H5F_t, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %shared100, align 8, !tbaa !22
  %nrefs101 = getelementptr inbounds %struct.H5F_shared_t, ptr %51, i32 0, i32 4
  %52 = load i32, ptr %nrefs101, align 4, !tbaa !46
  %cmp102 = icmp ugt i32 %52, 1
  br i1 %cmp102, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %cond.end99
  br label %cond.end106

cond.false105:                                    ; preds = %cond.end99
  call void @__assert_fail(ptr noundef @.str.41, ptr noundef @.str.2, i32 noundef 845, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

53:                                               ; No predecessors!
  br label %cond.end106

cond.end106:                                      ; preds = %53, %cond.true104
  %54 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared107 = getelementptr inbounds %struct.H5F_t, ptr %54, i32 0, i32 2
  %55 = load ptr, ptr %shared107, align 8, !tbaa !22
  %efc108 = getelementptr inbounds %struct.H5F_shared_t, ptr %55, i32 0, i32 7
  %56 = load ptr, ptr %efc108, align 8, !tbaa !24
  %tag = getelementptr inbounds %struct.H5F_efc_t, ptr %56, i32 0, i32 6
  %57 = load i32, ptr %tag, align 4, !tbaa !21
  %cmp109 = icmp slt i32 %57, 0
  br i1 %cmp109, label %cond.true111, label %cond.false112

cond.true111:                                     ; preds = %cond.end106
  br label %cond.end113

cond.false112:                                    ; preds = %cond.end106
  call void @__assert_fail(ptr noundef @.str.42, ptr noundef @.str.2, i32 noundef 846, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

58:                                               ; No predecessors!
  br label %cond.end113

cond.end113:                                      ; preds = %58, %cond.true111
  %59 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared114 = getelementptr inbounds %struct.H5F_t, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %shared114, align 8, !tbaa !22
  %efc115 = getelementptr inbounds %struct.H5F_shared_t, ptr %60, i32 0, i32 7
  %61 = load ptr, ptr %efc115, align 8, !tbaa !24
  %tag116 = getelementptr inbounds %struct.H5F_efc_t, ptr %61, i32 0, i32 6
  %62 = load i32, ptr %tag116, align 4, !tbaa !21
  %cmp117 = icmp eq i32 %62, -3
  br i1 %cmp117, label %if.then119, label %if.end136

if.then119:                                       ; preds = %cond.end113
  %63 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared120 = getelementptr inbounds %struct.H5F_t, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %shared120, align 8, !tbaa !22
  %efc121 = getelementptr inbounds %struct.H5F_shared_t, ptr %64, i32 0, i32 7
  %65 = load ptr, ptr %efc121, align 8, !tbaa !24
  %call122 = call i32 @H5F__efc_release_real(ptr noundef %65)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %if.end128

if.then125:                                       ; preds = %if.then119
  %66 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %67 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %68 = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !17
  %call126 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_try_close, i32 noundef 854, i64 noundef %66, i64 noundef %67, i64 noundef %68, ptr noundef @.str.32)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %69 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool127 = trunc i8 %69 to i1
  %frombool = zext i1 %tobool127 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end128:                                        ; preds = %if.then119
  %70 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared129 = getelementptr inbounds %struct.H5F_t, ptr %70, i32 0, i32 2
  %71 = load ptr, ptr %shared129, align 8, !tbaa !22
  %efc130 = getelementptr inbounds %struct.H5F_shared_t, ptr %71, i32 0, i32 7
  %72 = load ptr, ptr %efc130, align 8, !tbaa !24
  %nfiles = getelementptr inbounds %struct.H5F_efc_t, ptr %72, i32 0, i32 3
  %73 = load i32, ptr %nfiles, align 8, !tbaa !36
  %cmp131 = icmp eq i32 %73, 0
  br i1 %cmp131, label %cond.true133, label %cond.false134

cond.true133:                                     ; preds = %if.end128
  br label %cond.end135

cond.false134:                                    ; preds = %if.end128
  call void @__assert_fail(ptr noundef @.str.43, ptr noundef @.str.2, i32 noundef 862, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

74:                                               ; No predecessors!
  br label %cond.end135

cond.end135:                                      ; preds = %74, %cond.true133
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end136:                                        ; preds = %cond.end113
  %75 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared137 = getelementptr inbounds %struct.H5F_t, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %shared137, align 8, !tbaa !22
  %nrefs138 = getelementptr inbounds %struct.H5F_shared_t, ptr %76, i32 0, i32 4
  %77 = load i32, ptr %nrefs138, align 4, !tbaa !46
  %78 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared139 = getelementptr inbounds %struct.H5F_t, ptr %78, i32 0, i32 2
  %79 = load ptr, ptr %shared139, align 8, !tbaa !22
  %efc140 = getelementptr inbounds %struct.H5F_shared_t, ptr %79, i32 0, i32 7
  %80 = load ptr, ptr %efc140, align 8, !tbaa !24
  %nrefs141 = getelementptr inbounds %struct.H5F_efc_t, ptr %80, i32 0, i32 5
  %81 = load i32, ptr %nrefs141, align 8, !tbaa !45
  %add = add i32 %81, 1
  %cmp142 = icmp ne i32 %77, %add
  br i1 %cmp142, label %if.then156, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %if.end136
  %82 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared145 = getelementptr inbounds %struct.H5F_t, ptr %82, i32 0, i32 2
  %83 = load ptr, ptr %shared145, align 8, !tbaa !22
  %efc146 = getelementptr inbounds %struct.H5F_shared_t, ptr %83, i32 0, i32 7
  %84 = load ptr, ptr %efc146, align 8, !tbaa !24
  %tag147 = getelementptr inbounds %struct.H5F_efc_t, ptr %84, i32 0, i32 6
  %85 = load i32, ptr %tag147, align 4, !tbaa !21
  %cmp148 = icmp eq i32 %85, -4
  br i1 %cmp148, label %if.then156, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %86 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared151 = getelementptr inbounds %struct.H5F_t, ptr %86, i32 0, i32 2
  %87 = load ptr, ptr %shared151, align 8, !tbaa !22
  %efc152 = getelementptr inbounds %struct.H5F_shared_t, ptr %87, i32 0, i32 7
  %88 = load ptr, ptr %efc152, align 8, !tbaa !24
  %nfiles153 = getelementptr inbounds %struct.H5F_efc_t, ptr %88, i32 0, i32 3
  %89 = load i32, ptr %nfiles153, align 8, !tbaa !36
  %cmp154 = icmp eq i32 %89, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %lor.lhs.false150, %lor.lhs.false144, %if.end136
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end157:                                        ; preds = %lor.lhs.false150
  %90 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared158 = getelementptr inbounds %struct.H5F_t, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %shared158, align 8, !tbaa !22
  %efc159 = getelementptr inbounds %struct.H5F_shared_t, ptr %91, i32 0, i32 7
  %92 = load ptr, ptr %efc159, align 8, !tbaa !24
  %tag160 = getelementptr inbounds %struct.H5F_efc_t, ptr %92, i32 0, i32 6
  %93 = load i32, ptr %tag160, align 4, !tbaa !21
  %cmp161 = icmp eq i32 %93, -1
  br i1 %cmp161, label %cond.true163, label %cond.false164

cond.true163:                                     ; preds = %if.end157
  br label %cond.end165

cond.false164:                                    ; preds = %if.end157
  call void @__assert_fail(ptr noundef @.str.44, ptr noundef @.str.2, i32 noundef 890, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

94:                                               ; No predecessors!
  br label %cond.end165

cond.end165:                                      ; preds = %94, %cond.true163
  %95 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared166 = getelementptr inbounds %struct.H5F_t, ptr %95, i32 0, i32 2
  %96 = load ptr, ptr %shared166, align 8, !tbaa !22
  %efc167 = getelementptr inbounds %struct.H5F_shared_t, ptr %96, i32 0, i32 7
  %97 = load ptr, ptr %efc167, align 8, !tbaa !24
  %tmp_next = getelementptr inbounds %struct.H5F_efc_t, ptr %97, i32 0, i32 7
  %98 = load ptr, ptr %tmp_next, align 8, !tbaa !47
  %cmp168 = icmp eq ptr %98, null
  br i1 %cmp168, label %cond.true170, label %cond.false171

cond.true170:                                     ; preds = %cond.end165
  br label %cond.end172

cond.false171:                                    ; preds = %cond.end165
  call void @__assert_fail(ptr noundef @.str.45, ptr noundef @.str.2, i32 noundef 891, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

99:                                               ; No predecessors!
  br label %cond.end172

cond.end172:                                      ; preds = %99, %cond.true170
  %100 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared173 = getelementptr inbounds %struct.H5F_t, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %shared173, align 8, !tbaa !22
  store ptr %101, ptr %tail, align 8, !tbaa !8
  %102 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared174 = getelementptr inbounds %struct.H5F_t, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %shared174, align 8, !tbaa !22
  %efc175 = getelementptr inbounds %struct.H5F_shared_t, ptr %103, i32 0, i32 7
  %104 = load ptr, ptr %efc175, align 8, !tbaa !24
  %nrefs176 = getelementptr inbounds %struct.H5F_efc_t, ptr %104, i32 0, i32 5
  %105 = load i32, ptr %nrefs176, align 8, !tbaa !45
  %106 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared177 = getelementptr inbounds %struct.H5F_t, ptr %106, i32 0, i32 2
  %107 = load ptr, ptr %shared177, align 8, !tbaa !22
  %efc178 = getelementptr inbounds %struct.H5F_shared_t, ptr %107, i32 0, i32 7
  %108 = load ptr, ptr %efc178, align 8, !tbaa !24
  %tag179 = getelementptr inbounds %struct.H5F_efc_t, ptr %108, i32 0, i32 6
  store i32 %105, ptr %tag179, align 4, !tbaa !21
  %109 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared180 = getelementptr inbounds %struct.H5F_t, ptr %109, i32 0, i32 2
  %110 = load ptr, ptr %shared180, align 8, !tbaa !22
  call void @H5F__efc_try_close_tag1(ptr noundef %110, ptr noundef %tail)
  %111 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared181 = getelementptr inbounds %struct.H5F_t, ptr %111, i32 0, i32 2
  %112 = load ptr, ptr %shared181, align 8, !tbaa !22
  %efc182 = getelementptr inbounds %struct.H5F_shared_t, ptr %112, i32 0, i32 7
  %113 = load ptr, ptr %efc182, align 8, !tbaa !24
  %tag183 = getelementptr inbounds %struct.H5F_efc_t, ptr %113, i32 0, i32 6
  %114 = load i32, ptr %tag183, align 4, !tbaa !21
  %cmp184 = icmp sgt i32 %114, 0
  br i1 %cmp184, label %if.then186, label %if.end195

if.then186:                                       ; preds = %cond.end172
  %115 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared187 = getelementptr inbounds %struct.H5F_t, ptr %115, i32 0, i32 2
  %116 = load ptr, ptr %shared187, align 8, !tbaa !22
  store ptr %116, ptr %sf, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then186
  %117 = load ptr, ptr %sf, align 8, !tbaa !8
  %tobool188 = icmp ne ptr %117, null
  br i1 %tobool188, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %118 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc189 = getelementptr inbounds %struct.H5F_shared_t, ptr %118, i32 0, i32 7
  %119 = load ptr, ptr %efc189, align 8, !tbaa !24
  %tmp_next190 = getelementptr inbounds %struct.H5F_efc_t, ptr %119, i32 0, i32 7
  %120 = load ptr, ptr %tmp_next190, align 8, !tbaa !47
  store ptr %120, ptr %next, align 8, !tbaa !8
  %121 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc191 = getelementptr inbounds %struct.H5F_shared_t, ptr %121, i32 0, i32 7
  %122 = load ptr, ptr %efc191, align 8, !tbaa !24
  %tag192 = getelementptr inbounds %struct.H5F_efc_t, ptr %122, i32 0, i32 6
  store i32 -1, ptr %tag192, align 4, !tbaa !21
  %123 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc193 = getelementptr inbounds %struct.H5F_shared_t, ptr %123, i32 0, i32 7
  %124 = load ptr, ptr %efc193, align 8, !tbaa !24
  %tmp_next194 = getelementptr inbounds %struct.H5F_efc_t, ptr %124, i32 0, i32 7
  store ptr null, ptr %tmp_next194, align 8, !tbaa !47
  %125 = load ptr, ptr %next, align 8, !tbaa !8
  store ptr %125, ptr %sf, align 8, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end195:                                        ; preds = %cond.end172
  %126 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared196 = getelementptr inbounds %struct.H5F_t, ptr %126, i32 0, i32 2
  %127 = load ptr, ptr %shared196, align 8, !tbaa !22
  store ptr %127, ptr %sf, align 8, !tbaa !8
  store ptr null, ptr %tail, align 8, !tbaa !8
  br label %while.cond197

while.cond197:                                    ; preds = %if.end234, %if.end195
  %128 = load ptr, ptr %sf, align 8, !tbaa !8
  %tobool198 = icmp ne ptr %128, null
  br i1 %tobool198, label %while.body199, label %while.end235

while.body199:                                    ; preds = %while.cond197
  %129 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc200 = getelementptr inbounds %struct.H5F_shared_t, ptr %129, i32 0, i32 7
  %130 = load ptr, ptr %efc200, align 8, !tbaa !24
  %tag201 = getelementptr inbounds %struct.H5F_efc_t, ptr %130, i32 0, i32 6
  %131 = load i32, ptr %tag201, align 4, !tbaa !21
  %cmp202 = icmp sge i32 %131, 0
  br i1 %cmp202, label %cond.true204, label %cond.false205

cond.true204:                                     ; preds = %while.body199
  br label %cond.end206

cond.false205:                                    ; preds = %while.body199
  call void @__assert_fail(ptr noundef @.str.46, ptr noundef @.str.2, i32 noundef 925, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

132:                                              ; No predecessors!
  br label %cond.end206

cond.end206:                                      ; preds = %132, %cond.true204
  %133 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc207 = getelementptr inbounds %struct.H5F_shared_t, ptr %133, i32 0, i32 7
  %134 = load ptr, ptr %efc207, align 8, !tbaa !24
  %tmp_next208 = getelementptr inbounds %struct.H5F_efc_t, ptr %134, i32 0, i32 7
  %135 = load ptr, ptr %tmp_next208, align 8, !tbaa !47
  store ptr %135, ptr %next, align 8, !tbaa !8
  %136 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc209 = getelementptr inbounds %struct.H5F_shared_t, ptr %136, i32 0, i32 7
  %137 = load ptr, ptr %efc209, align 8, !tbaa !24
  %tag210 = getelementptr inbounds %struct.H5F_efc_t, ptr %137, i32 0, i32 6
  %138 = load i32, ptr %tag210, align 4, !tbaa !21
  %cmp211 = icmp sgt i32 %138, 0
  br i1 %cmp211, label %if.then213, label %if.else231

if.then213:                                       ; preds = %cond.end206
  %139 = load ptr, ptr %tail, align 8, !tbaa !8
  %tobool214 = icmp ne ptr %139, null
  br i1 %tobool214, label %cond.true215, label %cond.false216

cond.true215:                                     ; preds = %if.then213
  br label %cond.end217

cond.false216:                                    ; preds = %if.then213
  call void @__assert_fail(ptr noundef @.str.47, ptr noundef @.str.2, i32 noundef 929, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

140:                                              ; No predecessors!
  br label %cond.end217

cond.end217:                                      ; preds = %140, %cond.true215
  %141 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc218 = getelementptr inbounds %struct.H5F_shared_t, ptr %141, i32 0, i32 7
  %142 = load ptr, ptr %efc218, align 8, !tbaa !24
  %tmp_next219 = getelementptr inbounds %struct.H5F_efc_t, ptr %142, i32 0, i32 7
  %143 = load ptr, ptr %tmp_next219, align 8, !tbaa !47
  %144 = load ptr, ptr %tail, align 8, !tbaa !8
  %efc220 = getelementptr inbounds %struct.H5F_shared_t, ptr %144, i32 0, i32 7
  %145 = load ptr, ptr %efc220, align 8, !tbaa !24
  %tmp_next221 = getelementptr inbounds %struct.H5F_efc_t, ptr %145, i32 0, i32 7
  store ptr %143, ptr %tmp_next221, align 8, !tbaa !47
  %146 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc222 = getelementptr inbounds %struct.H5F_shared_t, ptr %146, i32 0, i32 7
  %147 = load ptr, ptr %efc222, align 8, !tbaa !24
  %tmp_next223 = getelementptr inbounds %struct.H5F_efc_t, ptr %147, i32 0, i32 7
  store ptr null, ptr %tmp_next223, align 8, !tbaa !47
  %148 = load ptr, ptr %uncloseable_head, align 8, !tbaa !8
  %tobool224 = icmp ne ptr %148, null
  br i1 %tobool224, label %if.else, label %if.then225

if.then225:                                       ; preds = %cond.end217
  %149 = load ptr, ptr %sf, align 8, !tbaa !8
  store ptr %149, ptr %uncloseable_head, align 8, !tbaa !8
  br label %if.end228

if.else:                                          ; preds = %cond.end217
  %150 = load ptr, ptr %sf, align 8, !tbaa !8
  %151 = load ptr, ptr %uncloseable_tail, align 8, !tbaa !8
  %efc226 = getelementptr inbounds %struct.H5F_shared_t, ptr %151, i32 0, i32 7
  %152 = load ptr, ptr %efc226, align 8, !tbaa !24
  %tmp_next227 = getelementptr inbounds %struct.H5F_efc_t, ptr %152, i32 0, i32 7
  store ptr %150, ptr %tmp_next227, align 8, !tbaa !47
  br label %if.end228

if.end228:                                        ; preds = %if.else, %if.then225
  %153 = load ptr, ptr %sf, align 8, !tbaa !8
  store ptr %153, ptr %uncloseable_tail, align 8, !tbaa !8
  %154 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc229 = getelementptr inbounds %struct.H5F_shared_t, ptr %154, i32 0, i32 7
  %155 = load ptr, ptr %efc229, align 8, !tbaa !24
  %tag230 = getelementptr inbounds %struct.H5F_efc_t, ptr %155, i32 0, i32 6
  store i32 -4, ptr %tag230, align 4, !tbaa !21
  br label %if.end234

if.else231:                                       ; preds = %cond.end206
  %156 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc232 = getelementptr inbounds %struct.H5F_shared_t, ptr %156, i32 0, i32 7
  %157 = load ptr, ptr %efc232, align 8, !tbaa !24
  %tag233 = getelementptr inbounds %struct.H5F_efc_t, ptr %157, i32 0, i32 6
  store i32 -3, ptr %tag233, align 4, !tbaa !21
  %158 = load ptr, ptr %sf, align 8, !tbaa !8
  store ptr %158, ptr %tail, align 8, !tbaa !8
  br label %if.end234

if.end234:                                        ; preds = %if.else231, %if.end228
  %159 = load ptr, ptr %next, align 8, !tbaa !8
  store ptr %159, ptr %sf, align 8, !tbaa !8
  br label %while.cond197

while.end235:                                     ; preds = %while.cond197
  %160 = load ptr, ptr %uncloseable_head, align 8, !tbaa !8
  store ptr %160, ptr %sf, align 8, !tbaa !8
  %161 = load ptr, ptr %sf, align 8, !tbaa !8
  %tobool236 = icmp ne ptr %161, null
  br i1 %tobool236, label %if.then237, label %if.end251

if.then237:                                       ; preds = %while.end235
  %162 = load ptr, ptr %uncloseable_tail, align 8, !tbaa !8
  store ptr %162, ptr %tail, align 8, !tbaa !8
  %163 = load ptr, ptr %tail, align 8, !tbaa !8
  %tobool238 = icmp ne ptr %163, null
  br i1 %tobool238, label %cond.true239, label %cond.false240

cond.true239:                                     ; preds = %if.then237
  br label %cond.end241

cond.false240:                                    ; preds = %if.then237
  call void @__assert_fail(ptr noundef @.str.47, ptr noundef @.str.2, i32 noundef 960, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

164:                                              ; No predecessors!
  br label %cond.end241

cond.end241:                                      ; preds = %164, %cond.true239
  br label %while.cond242

while.cond242:                                    ; preds = %while.body247, %cond.end241
  %165 = load ptr, ptr %sf, align 8, !tbaa !8
  %166 = load ptr, ptr %tail, align 8, !tbaa !8
  %efc243 = getelementptr inbounds %struct.H5F_shared_t, ptr %166, i32 0, i32 7
  %167 = load ptr, ptr %efc243, align 8, !tbaa !24
  %tmp_next244 = getelementptr inbounds %struct.H5F_efc_t, ptr %167, i32 0, i32 7
  %168 = load ptr, ptr %tmp_next244, align 8, !tbaa !47
  %cmp245 = icmp ne ptr %165, %168
  br i1 %cmp245, label %while.body247, label %while.end250

while.body247:                                    ; preds = %while.cond242
  %169 = load ptr, ptr %sf, align 8, !tbaa !8
  call void @H5F__efc_try_close_tag2(ptr noundef %169, ptr noundef %uncloseable_tail)
  %170 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc248 = getelementptr inbounds %struct.H5F_shared_t, ptr %170, i32 0, i32 7
  %171 = load ptr, ptr %efc248, align 8, !tbaa !24
  %tmp_next249 = getelementptr inbounds %struct.H5F_efc_t, ptr %171, i32 0, i32 7
  %172 = load ptr, ptr %tmp_next249, align 8, !tbaa !47
  store ptr %172, ptr %sf, align 8, !tbaa !8
  br label %while.cond242

while.end250:                                     ; preds = %while.cond242
  br label %if.end251

if.end251:                                        ; preds = %while.end250, %while.end235
  %173 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared252 = getelementptr inbounds %struct.H5F_t, ptr %173, i32 0, i32 2
  %174 = load ptr, ptr %shared252, align 8, !tbaa !22
  %efc253 = getelementptr inbounds %struct.H5F_shared_t, ptr %174, i32 0, i32 7
  %175 = load ptr, ptr %efc253, align 8, !tbaa !24
  %tag254 = getelementptr inbounds %struct.H5F_efc_t, ptr %175, i32 0, i32 6
  %176 = load i32, ptr %tag254, align 4, !tbaa !21
  %cmp255 = icmp eq i32 %176, -3
  br i1 %cmp255, label %if.then257, label %if.end275

if.then257:                                       ; preds = %if.end251
  %177 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared258 = getelementptr inbounds %struct.H5F_t, ptr %177, i32 0, i32 2
  %178 = load ptr, ptr %shared258, align 8, !tbaa !22
  %efc259 = getelementptr inbounds %struct.H5F_shared_t, ptr %178, i32 0, i32 7
  %179 = load ptr, ptr %efc259, align 8, !tbaa !24
  %call260 = call i32 @H5F__efc_release_real(ptr noundef %179)
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %if.then263, label %if.end267

if.then263:                                       ; preds = %if.then257
  %180 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !17
  %181 = load i64, ptr @H5E_FILE_g, align 8, !tbaa !17
  %182 = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !17
  %call264 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5F__efc_try_close, i32 noundef 972, i64 noundef %180, i64 noundef %181, i64 noundef %182, ptr noundef @.str.32)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %183 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool265 = trunc i8 %183 to i1
  %frombool266 = zext i1 %tobool265 to i8
  store i8 %frombool266, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !4
  br label %done

if.end267:                                        ; preds = %if.then257
  %184 = load ptr, ptr %f.addr, align 8, !tbaa !8
  %shared268 = getelementptr inbounds %struct.H5F_t, ptr %184, i32 0, i32 2
  %185 = load ptr, ptr %shared268, align 8, !tbaa !22
  %nrefs269 = getelementptr inbounds %struct.H5F_shared_t, ptr %185, i32 0, i32 4
  %186 = load i32, ptr %nrefs269, align 4, !tbaa !46
  %cmp270 = icmp eq i32 %186, 1
  br i1 %cmp270, label %cond.true272, label %cond.false273

cond.true272:                                     ; preds = %if.end267
  br label %cond.end274

cond.false273:                                    ; preds = %if.end267
  call void @__assert_fail(ptr noundef @.str.48, ptr noundef @.str.2, i32 noundef 976, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

187:                                              ; No predecessors!
  br label %cond.end274

cond.end274:                                      ; preds = %187, %cond.true272
  br label %if.end275

if.end275:                                        ; preds = %cond.end274, %if.end251
  %188 = load ptr, ptr %uncloseable_head, align 8, !tbaa !8
  %tobool276 = icmp ne ptr %188, null
  br i1 %tobool276, label %if.then277, label %if.end295

if.then277:                                       ; preds = %if.end275
  %189 = load ptr, ptr %uncloseable_head, align 8, !tbaa !8
  store ptr %189, ptr %sf, align 8, !tbaa !8
  br label %while.cond278

while.cond278:                                    ; preds = %cond.end289, %if.then277
  %190 = load ptr, ptr %sf, align 8, !tbaa !8
  %tobool279 = icmp ne ptr %190, null
  br i1 %tobool279, label %while.body280, label %while.end294

while.body280:                                    ; preds = %while.cond278
  %191 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc281 = getelementptr inbounds %struct.H5F_shared_t, ptr %191, i32 0, i32 7
  %192 = load ptr, ptr %efc281, align 8, !tbaa !24
  %tmp_next282 = getelementptr inbounds %struct.H5F_efc_t, ptr %192, i32 0, i32 7
  %193 = load ptr, ptr %tmp_next282, align 8, !tbaa !47
  store ptr %193, ptr %next, align 8, !tbaa !8
  %194 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc283 = getelementptr inbounds %struct.H5F_shared_t, ptr %194, i32 0, i32 7
  %195 = load ptr, ptr %efc283, align 8, !tbaa !24
  %tag284 = getelementptr inbounds %struct.H5F_efc_t, ptr %195, i32 0, i32 6
  %196 = load i32, ptr %tag284, align 4, !tbaa !21
  %cmp285 = icmp eq i32 %196, -4
  br i1 %cmp285, label %cond.true287, label %cond.false288

cond.true287:                                     ; preds = %while.body280
  br label %cond.end289

cond.false288:                                    ; preds = %while.body280
  call void @__assert_fail(ptr noundef @.str.49, ptr noundef @.str.2, i32 noundef 985, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close) #7
  unreachable

197:                                              ; No predecessors!
  br label %cond.end289

cond.end289:                                      ; preds = %197, %cond.true287
  %198 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc290 = getelementptr inbounds %struct.H5F_shared_t, ptr %198, i32 0, i32 7
  %199 = load ptr, ptr %efc290, align 8, !tbaa !24
  %tag291 = getelementptr inbounds %struct.H5F_efc_t, ptr %199, i32 0, i32 6
  store i32 -1, ptr %tag291, align 4, !tbaa !21
  %200 = load ptr, ptr %sf, align 8, !tbaa !8
  %efc292 = getelementptr inbounds %struct.H5F_shared_t, ptr %200, i32 0, i32 7
  %201 = load ptr, ptr %efc292, align 8, !tbaa !24
  %tmp_next293 = getelementptr inbounds %struct.H5F_efc_t, ptr %201, i32 0, i32 7
  store ptr null, ptr %tmp_next293, align 8, !tbaa !47
  %202 = load ptr, ptr %next, align 8, !tbaa !8
  store ptr %202, ptr %sf, align 8, !tbaa !8
  br label %while.cond278

while.end294:                                     ; preds = %while.cond278
  br label %if.end295

if.end295:                                        ; preds = %while.end294, %if.end275
  br label %done

done:                                             ; preds = %if.end295, %if.then263, %while.end, %if.then156, %cond.end135, %if.then125
  br label %if.end296

if.end296:                                        ; preds = %done, %lor.lhs.false75
  %203 = load i32, ptr %ret_value, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %uncloseable_tail) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %uncloseable_head) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #5
  ret i32 %203
}

; Function Attrs: nounwind uwtable
define internal void @H5F__efc_try_close_tag1(ptr noundef %sf, ptr noundef %tail) #0 {
entry:
  %sf.addr = alloca ptr, align 8
  %tail.addr = alloca ptr, align 8
  %ent = alloca ptr, align 8
  %esf = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8, !tbaa !8
  store ptr %tail, ptr %tail.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #5
  store ptr null, ptr %ent, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %esf) #5
  %0 = load i8, ptr @H5F__efc_try_close_tag1.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag1, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 655, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_try_close_tag1.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end165, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.56, ptr noundef @.str.2, i32 noundef 658, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %efc = getelementptr inbounds %struct.H5F_shared_t, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %efc, align 8, !tbaa !24
  %tobool82 = icmp ne ptr %36, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.57, ptr noundef @.str.2, i32 noundef 659, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

37:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %37, %cond.true83
  %38 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %efc86 = getelementptr inbounds %struct.H5F_shared_t, ptr %38, i32 0, i32 7
  %39 = load ptr, ptr %efc86, align 8, !tbaa !24
  %tag = getelementptr inbounds %struct.H5F_efc_t, ptr %39, i32 0, i32 6
  %40 = load i32, ptr %tag, align 4, !tbaa !21
  %cmp87 = icmp sgt i32 %40, 0
  br i1 %cmp87, label %cond.true94, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %cond.end85
  %41 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %nrefs = getelementptr inbounds %struct.H5F_shared_t, ptr %41, i32 0, i32 4
  %42 = load i32, ptr %nrefs, align 4, !tbaa !46
  %43 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %efc90 = getelementptr inbounds %struct.H5F_shared_t, ptr %43, i32 0, i32 7
  %44 = load ptr, ptr %efc90, align 8, !tbaa !24
  %nrefs91 = getelementptr inbounds %struct.H5F_efc_t, ptr %44, i32 0, i32 5
  %45 = load i32, ptr %nrefs91, align 8, !tbaa !45
  %cmp92 = icmp eq i32 %42, %45
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %lor.lhs.false89, %cond.end85
  br label %cond.end96

cond.false95:                                     ; preds = %lor.lhs.false89
  call void @__assert_fail(ptr noundef @.str.58, ptr noundef @.str.2, i32 noundef 660, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

46:                                               ; No predecessors!
  br label %cond.end96

cond.end96:                                       ; preds = %46, %cond.true94
  %47 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %efc97 = getelementptr inbounds %struct.H5F_shared_t, ptr %47, i32 0, i32 7
  %48 = load ptr, ptr %efc97, align 8, !tbaa !24
  %tag98 = getelementptr inbounds %struct.H5F_efc_t, ptr %48, i32 0, i32 6
  %49 = load i32, ptr %tag98, align 4, !tbaa !21
  %cmp99 = icmp ne i32 %49, -2
  br i1 %cmp99, label %cond.true101, label %cond.false102

cond.true101:                                     ; preds = %cond.end96
  br label %cond.end103

cond.false102:                                    ; preds = %cond.end96
  call void @__assert_fail(ptr noundef @.str.59, ptr noundef @.str.2, i32 noundef 661, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

50:                                               ; No predecessors!
  br label %cond.end103

cond.end103:                                      ; preds = %50, %cond.true101
  %51 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  %tobool104 = icmp ne ptr %51, null
  br i1 %tobool104, label %cond.true105, label %cond.false106

cond.true105:                                     ; preds = %cond.end103
  br label %cond.end107

cond.false106:                                    ; preds = %cond.end103
  call void @__assert_fail(ptr noundef @.str.47, ptr noundef @.str.2, i32 noundef 662, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

52:                                               ; No predecessors!
  br label %cond.end107

cond.end107:                                      ; preds = %52, %cond.true105
  %53 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  %54 = load ptr, ptr %53, align 8, !tbaa !8
  %tobool108 = icmp ne ptr %54, null
  br i1 %tobool108, label %cond.true109, label %cond.false110

cond.true109:                                     ; preds = %cond.end107
  br label %cond.end111

cond.false110:                                    ; preds = %cond.end107
  call void @__assert_fail(ptr noundef @.str.60, ptr noundef @.str.2, i32 noundef 663, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

55:                                               ; No predecessors!
  br label %cond.end111

cond.end111:                                      ; preds = %55, %cond.true109
  %56 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %efc112 = getelementptr inbounds %struct.H5F_shared_t, ptr %56, i32 0, i32 7
  %57 = load ptr, ptr %efc112, align 8, !tbaa !24
  %LRU_head = getelementptr inbounds %struct.H5F_efc_t, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %LRU_head, align 8, !tbaa !37
  store ptr %58, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end111
  %59 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool113 = icmp ne ptr %59, null
  br i1 %tobool113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load ptr, ptr %ent, align 8, !tbaa !8
  %file = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %file, align 8, !tbaa !44
  %shared = getelementptr inbounds %struct.H5F_t, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %shared, align 8, !tbaa !22
  store ptr %62, ptr %esf, align 8, !tbaa !8
  %63 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc114 = getelementptr inbounds %struct.H5F_shared_t, ptr %63, i32 0, i32 7
  %64 = load ptr, ptr %efc114, align 8, !tbaa !24
  %tobool115 = icmp ne ptr %64, null
  br i1 %tobool115, label %if.then116, label %if.end164

if.then116:                                       ; preds = %for.body
  %65 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc117 = getelementptr inbounds %struct.H5F_shared_t, ptr %65, i32 0, i32 7
  %66 = load ptr, ptr %efc117, align 8, !tbaa !24
  %tag118 = getelementptr inbounds %struct.H5F_efc_t, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %tag118, align 4, !tbaa !21
  %cmp119 = icmp ne i32 %67, 0
  br i1 %cmp119, label %cond.true121, label %cond.false122

cond.true121:                                     ; preds = %if.then116
  br label %cond.end123

cond.false122:                                    ; preds = %if.then116
  call void @__assert_fail(ptr noundef @.str.61, ptr noundef @.str.2, i32 noundef 672, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

68:                                               ; No predecessors!
  br label %cond.end123

cond.end123:                                      ; preds = %68, %cond.true121
  %69 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc124 = getelementptr inbounds %struct.H5F_shared_t, ptr %69, i32 0, i32 7
  %70 = load ptr, ptr %efc124, align 8, !tbaa !24
  %tag125 = getelementptr inbounds %struct.H5F_efc_t, ptr %70, i32 0, i32 6
  %71 = load i32, ptr %tag125, align 4, !tbaa !21
  %cmp126 = icmp sgt i32 %71, 0
  br i1 %cmp126, label %if.then128, label %if.else

if.then128:                                       ; preds = %cond.end123
  %72 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc129 = getelementptr inbounds %struct.H5F_shared_t, ptr %72, i32 0, i32 7
  %73 = load ptr, ptr %efc129, align 8, !tbaa !24
  %tag130 = getelementptr inbounds %struct.H5F_efc_t, ptr %73, i32 0, i32 6
  %74 = load i32, ptr %tag130, align 4, !tbaa !21
  %dec = add nsw i32 %74, -1
  store i32 %dec, ptr %tag130, align 4, !tbaa !21
  br label %if.end163

if.else:                                          ; preds = %cond.end123
  %75 = load ptr, ptr %esf, align 8, !tbaa !8
  %nrefs131 = getelementptr inbounds %struct.H5F_shared_t, ptr %75, i32 0, i32 4
  %76 = load i32, ptr %nrefs131, align 4, !tbaa !46
  %77 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc132 = getelementptr inbounds %struct.H5F_shared_t, ptr %77, i32 0, i32 7
  %78 = load ptr, ptr %efc132, align 8, !tbaa !24
  %nrefs133 = getelementptr inbounds %struct.H5F_efc_t, ptr %78, i32 0, i32 5
  %79 = load i32, ptr %nrefs133, align 8, !tbaa !45
  %cmp134 = icmp eq i32 %76, %79
  br i1 %cmp134, label %land.lhs.true136, label %if.end162

land.lhs.true136:                                 ; preds = %if.else
  %80 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc137 = getelementptr inbounds %struct.H5F_shared_t, ptr %80, i32 0, i32 7
  %81 = load ptr, ptr %efc137, align 8, !tbaa !24
  %tag138 = getelementptr inbounds %struct.H5F_efc_t, ptr %81, i32 0, i32 6
  %82 = load i32, ptr %tag138, align 4, !tbaa !21
  %cmp139 = icmp ne i32 %82, -2
  br i1 %cmp139, label %land.lhs.true141, label %if.end162

land.lhs.true141:                                 ; preds = %land.lhs.true136
  %83 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %83, i32 0, i32 4
  %84 = load i32, ptr %nopen, align 8, !tbaa !42
  %tobool142 = icmp ne i32 %84, 0
  br i1 %tobool142, label %if.end162, label %if.then143

if.then143:                                       ; preds = %land.lhs.true141
  %85 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc144 = getelementptr inbounds %struct.H5F_shared_t, ptr %85, i32 0, i32 7
  %86 = load ptr, ptr %efc144, align 8, !tbaa !24
  %tmp_next = getelementptr inbounds %struct.H5F_efc_t, ptr %86, i32 0, i32 7
  %87 = load ptr, ptr %tmp_next, align 8, !tbaa !47
  %cmp145 = icmp eq ptr %87, null
  br i1 %cmp145, label %cond.true147, label %cond.false148

cond.true147:                                     ; preds = %if.then143
  br label %cond.end149

cond.false148:                                    ; preds = %if.then143
  call void @__assert_fail(ptr noundef @.str.62, ptr noundef @.str.2, i32 noundef 688, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag1) #7
  unreachable

88:                                               ; No predecessors!
  br label %cond.end149

cond.end149:                                      ; preds = %88, %cond.true147
  %89 = load ptr, ptr %esf, align 8, !tbaa !8
  %nrefs150 = getelementptr inbounds %struct.H5F_shared_t, ptr %89, i32 0, i32 4
  %90 = load i32, ptr %nrefs150, align 4, !tbaa !46
  %cmp151 = icmp ugt i32 %90, 1
  br i1 %cmp151, label %if.then153, label %if.end159

if.then153:                                       ; preds = %cond.end149
  %91 = load ptr, ptr %esf, align 8, !tbaa !8
  %92 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  %93 = load ptr, ptr %92, align 8, !tbaa !8
  %efc154 = getelementptr inbounds %struct.H5F_shared_t, ptr %93, i32 0, i32 7
  %94 = load ptr, ptr %efc154, align 8, !tbaa !24
  %tmp_next155 = getelementptr inbounds %struct.H5F_efc_t, ptr %94, i32 0, i32 7
  store ptr %91, ptr %tmp_next155, align 8, !tbaa !47
  %95 = load ptr, ptr %esf, align 8, !tbaa !8
  %96 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  store ptr %95, ptr %96, align 8, !tbaa !8
  %97 = load ptr, ptr %esf, align 8, !tbaa !8
  %nrefs156 = getelementptr inbounds %struct.H5F_shared_t, ptr %97, i32 0, i32 4
  %98 = load i32, ptr %nrefs156, align 4, !tbaa !46
  %sub = sub nsw i32 %98, 1
  %99 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc157 = getelementptr inbounds %struct.H5F_shared_t, ptr %99, i32 0, i32 7
  %100 = load ptr, ptr %efc157, align 8, !tbaa !24
  %tag158 = getelementptr inbounds %struct.H5F_efc_t, ptr %100, i32 0, i32 6
  store i32 %sub, ptr %tag158, align 4, !tbaa !21
  br label %if.end159

if.end159:                                        ; preds = %if.then153, %cond.end149
  %101 = load ptr, ptr %ent, align 8, !tbaa !8
  %file160 = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %file160, align 8, !tbaa !44
  %shared161 = getelementptr inbounds %struct.H5F_t, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %shared161, align 8, !tbaa !22
  %104 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  call void @H5F__efc_try_close_tag1(ptr noundef %103, ptr noundef %104)
  br label %if.end162

if.end162:                                        ; preds = %if.end159, %land.lhs.true141, %land.lhs.true136, %if.else
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then128
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end164
  %105 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %105, i32 0, i32 2
  %106 = load ptr, ptr %LRU_next, align 8, !tbaa !41
  store ptr %106, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end165

if.end165:                                        ; preds = %for.end, %lor.lhs.false75
  call void @llvm.lifetime.end.p0(i64 8, ptr %esf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @H5F__efc_try_close_tag2(ptr noundef %sf, ptr noundef %tail) #0 {
entry:
  %sf.addr = alloca ptr, align 8
  %tail.addr = alloca ptr, align 8
  %ent = alloca ptr, align 8
  %esf = alloca ptr, align 8
  store ptr %sf, ptr %sf.addr, align 8, !tbaa !8
  store ptr %tail, ptr %tail.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ent) #5
  store ptr null, ptr %ent, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %esf) #5
  %0 = load i8, ptr @H5F__efc_try_close_tag2.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #6
  %1 = load ptr, ptr %call, align 8, !tbaa !8
  %2 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 1), align 1, !tbaa !14
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !15
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #6
  %4 = load ptr, ptr %call3, align 8, !tbaa !8
  %5 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 1), align 1, !tbaa !14
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !15
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 2), align 1, !tbaa !14
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %call13 = call ptr @__ctype_b_loc() #6
  %8 = load ptr, ptr %call13, align 8, !tbaa !8
  %9 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 4), align 1, !tbaa !14
  %conv14 = sext i8 %9 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %8, i64 %idxprom15
  %10 = load i16, ptr %arrayidx16, align 2, !tbaa !15
  %conv17 = zext i16 %10 to i32
  %and18 = and i32 %conv17, 512
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true72, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call21 = call ptr @__ctype_b_loc() #6
  %11 = load ptr, ptr %call21, align 8, !tbaa !8
  %12 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 2), align 1, !tbaa !14
  %conv22 = sext i8 %12 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %11, i64 %idxprom23
  %13 = load i16, ptr %arrayidx24, align 2, !tbaa !15
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 2048
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true36, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = call ptr @__ctype_b_loc() #6
  %14 = load ptr, ptr %call29, align 8, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 2), align 1, !tbaa !14
  %conv30 = sext i8 %15 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %14, i64 %idxprom31
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !15
  %conv33 = zext i16 %16 to i32
  %and34 = and i32 %conv33, 256
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %land.lhs.true36, label %lor.lhs.false44

land.lhs.true36:                                  ; preds = %lor.lhs.false28, %lor.lhs.false20
  %call37 = call ptr @__ctype_b_loc() #6
  %17 = load ptr, ptr %call37, align 8, !tbaa !8
  %18 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 5), align 1, !tbaa !14
  %conv38 = sext i8 %18 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %17, i64 %idxprom39
  %19 = load i16, ptr %arrayidx40, align 2, !tbaa !15
  %conv41 = zext i16 %19 to i32
  %and42 = and i32 %conv41, 512
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true72, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true36, %lor.lhs.false28
  %call45 = call ptr @__ctype_b_loc() #6
  %20 = load ptr, ptr %call45, align 8, !tbaa !8
  %21 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 3), align 1, !tbaa !14
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !15
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 2048
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true60, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false44
  %call53 = call ptr @__ctype_b_loc() #6
  %23 = load ptr, ptr %call53, align 8, !tbaa !8
  %24 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 3), align 1, !tbaa !14
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !15
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 256
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true60, label %cond.false

land.lhs.true60:                                  ; preds = %lor.lhs.false52, %lor.lhs.false44
  %26 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 5), align 1, !tbaa !14
  %conv61 = sext i8 %26 to i32
  %cmp62 = icmp eq i32 95, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %cond.false

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %call65 = call ptr @__ctype_b_loc() #6
  %27 = load ptr, ptr %call65, align 8, !tbaa !8
  %28 = load i8, ptr getelementptr inbounds ([24 x i8], ptr @__func__.H5F__efc_try_close_tag2, i64 0, i64 6), align 1, !tbaa !14
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
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 728, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag2) #7
  unreachable

30:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  store i8 1, ptr @H5F__efc_try_close_tag2.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %31 = load i8, ptr @H5F_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %31 to i1
  br i1 %tobool73, label %if.then77, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end
  %32 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool76 = trunc i8 %32 to i1
  br i1 %tobool76, label %if.end145, label %if.then77

if.then77:                                        ; preds = %lor.lhs.false75, %if.end
  %33 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %tobool78 = icmp ne ptr %33, null
  br i1 %tobool78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.then77
  br label %cond.end81

cond.false80:                                     ; preds = %if.then77
  call void @__assert_fail(ptr noundef @.str.56, ptr noundef @.str.2, i32 noundef 731, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag2) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end81

cond.end81:                                       ; preds = %34, %cond.true79
  %35 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %efc = getelementptr inbounds %struct.H5F_shared_t, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %efc, align 8, !tbaa !24
  %tobool82 = icmp ne ptr %36, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %cond.end81
  br label %cond.end85

cond.false84:                                     ; preds = %cond.end81
  call void @__assert_fail(ptr noundef @.str.57, ptr noundef @.str.2, i32 noundef 732, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag2) #7
  unreachable

37:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %37, %cond.true83
  %38 = load ptr, ptr %sf.addr, align 8, !tbaa !8
  %efc86 = getelementptr inbounds %struct.H5F_shared_t, ptr %38, i32 0, i32 7
  %39 = load ptr, ptr %efc86, align 8, !tbaa !24
  %LRU_head = getelementptr inbounds %struct.H5F_efc_t, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %LRU_head, align 8, !tbaa !37
  store ptr %40, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end85
  %41 = load ptr, ptr %ent, align 8, !tbaa !8
  %tobool87 = icmp ne ptr %41, null
  br i1 %tobool87, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %ent, align 8, !tbaa !8
  %file = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %file, align 8, !tbaa !44
  %shared = getelementptr inbounds %struct.H5F_t, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %shared, align 8, !tbaa !22
  store ptr %44, ptr %esf, align 8, !tbaa !8
  %45 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc88 = getelementptr inbounds %struct.H5F_shared_t, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %efc88, align 8, !tbaa !24
  %tobool89 = icmp ne ptr %46, null
  br i1 %tobool89, label %land.lhs.true90, label %if.end144

land.lhs.true90:                                  ; preds = %for.body
  %47 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc91 = getelementptr inbounds %struct.H5F_shared_t, ptr %47, i32 0, i32 7
  %48 = load ptr, ptr %efc91, align 8, !tbaa !24
  %tag = getelementptr inbounds %struct.H5F_efc_t, ptr %48, i32 0, i32 6
  %49 = load i32, ptr %tag, align 4, !tbaa !21
  %cmp92 = icmp eq i32 %49, -3
  br i1 %cmp92, label %if.then106, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %land.lhs.true90
  %50 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc95 = getelementptr inbounds %struct.H5F_shared_t, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %efc95, align 8, !tbaa !24
  %tag96 = getelementptr inbounds %struct.H5F_efc_t, ptr %51, i32 0, i32 6
  %52 = load i32, ptr %tag96, align 4, !tbaa !21
  %cmp97 = icmp eq i32 %52, -1
  br i1 %cmp97, label %land.lhs.true99, label %if.end144

land.lhs.true99:                                  ; preds = %lor.lhs.false94
  %53 = load ptr, ptr %esf, align 8, !tbaa !8
  %nrefs = getelementptr inbounds %struct.H5F_shared_t, ptr %53, i32 0, i32 4
  %54 = load i32, ptr %nrefs, align 4, !tbaa !46
  %55 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc100 = getelementptr inbounds %struct.H5F_shared_t, ptr %55, i32 0, i32 7
  %56 = load ptr, ptr %efc100, align 8, !tbaa !24
  %nrefs101 = getelementptr inbounds %struct.H5F_efc_t, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %nrefs101, align 8, !tbaa !45
  %cmp102 = icmp eq i32 %54, %57
  br i1 %cmp102, label %land.lhs.true104, label %if.end144

land.lhs.true104:                                 ; preds = %land.lhs.true99
  %58 = load ptr, ptr %ent, align 8, !tbaa !8
  %nopen = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %58, i32 0, i32 4
  %59 = load i32, ptr %nopen, align 8, !tbaa !42
  %tobool105 = icmp ne i32 %59, 0
  br i1 %tobool105, label %if.end144, label %if.then106

if.then106:                                       ; preds = %land.lhs.true104, %land.lhs.true90
  %60 = load ptr, ptr %esf, align 8, !tbaa !8
  %nrefs107 = getelementptr inbounds %struct.H5F_shared_t, ptr %60, i32 0, i32 4
  %61 = load i32, ptr %nrefs107, align 4, !tbaa !46
  %cmp108 = icmp ugt i32 %61, 1
  br i1 %cmp108, label %land.lhs.true110, label %lor.lhs.false115

land.lhs.true110:                                 ; preds = %if.then106
  %62 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc111 = getelementptr inbounds %struct.H5F_shared_t, ptr %62, i32 0, i32 7
  %63 = load ptr, ptr %efc111, align 8, !tbaa !24
  %tag112 = getelementptr inbounds %struct.H5F_efc_t, ptr %63, i32 0, i32 6
  %64 = load i32, ptr %tag112, align 4, !tbaa !21
  %cmp113 = icmp eq i32 %64, -3
  br i1 %cmp113, label %cond.true124, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %land.lhs.true110, %if.then106
  %65 = load ptr, ptr %esf, align 8, !tbaa !8
  %nrefs116 = getelementptr inbounds %struct.H5F_shared_t, ptr %65, i32 0, i32 4
  %66 = load i32, ptr %nrefs116, align 4, !tbaa !46
  %cmp117 = icmp eq i32 %66, 1
  br i1 %cmp117, label %land.lhs.true119, label %cond.false125

land.lhs.true119:                                 ; preds = %lor.lhs.false115
  %67 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc120 = getelementptr inbounds %struct.H5F_shared_t, ptr %67, i32 0, i32 7
  %68 = load ptr, ptr %efc120, align 8, !tbaa !24
  %tag121 = getelementptr inbounds %struct.H5F_efc_t, ptr %68, i32 0, i32 6
  %69 = load i32, ptr %tag121, align 4, !tbaa !21
  %cmp122 = icmp eq i32 %69, -1
  br i1 %cmp122, label %cond.true124, label %cond.false125

cond.true124:                                     ; preds = %land.lhs.true119, %land.lhs.true110
  br label %cond.end126

cond.false125:                                    ; preds = %land.lhs.true119, %lor.lhs.false115
  call void @__assert_fail(ptr noundef @.str.63, ptr noundef @.str.2, i32 noundef 752, ptr noundef @__PRETTY_FUNCTION__.H5F__efc_try_close_tag2) #7
  unreachable

70:                                               ; No predecessors!
  br label %cond.end126

cond.end126:                                      ; preds = %70, %cond.true124
  %71 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc127 = getelementptr inbounds %struct.H5F_shared_t, ptr %71, i32 0, i32 7
  %72 = load ptr, ptr %efc127, align 8, !tbaa !24
  %tag128 = getelementptr inbounds %struct.H5F_efc_t, ptr %72, i32 0, i32 6
  %73 = load i32, ptr %tag128, align 4, !tbaa !21
  %cmp129 = icmp ne i32 %73, -4
  br i1 %cmp129, label %if.then131, label %if.end143

if.then131:                                       ; preds = %cond.end126
  %74 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc132 = getelementptr inbounds %struct.H5F_shared_t, ptr %74, i32 0, i32 7
  %75 = load ptr, ptr %efc132, align 8, !tbaa !24
  %tag133 = getelementptr inbounds %struct.H5F_efc_t, ptr %75, i32 0, i32 6
  %76 = load i32, ptr %tag133, align 4, !tbaa !21
  %cmp134 = icmp eq i32 %76, -3
  br i1 %cmp134, label %if.then136, label %if.end142

if.then136:                                       ; preds = %if.then131
  %77 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc137 = getelementptr inbounds %struct.H5F_shared_t, ptr %77, i32 0, i32 7
  %78 = load ptr, ptr %efc137, align 8, !tbaa !24
  %tag138 = getelementptr inbounds %struct.H5F_efc_t, ptr %78, i32 0, i32 6
  store i32 -4, ptr %tag138, align 4, !tbaa !21
  %79 = load ptr, ptr %esf, align 8, !tbaa !8
  %efc139 = getelementptr inbounds %struct.H5F_shared_t, ptr %79, i32 0, i32 7
  %80 = load ptr, ptr %efc139, align 8, !tbaa !24
  %tmp_next = getelementptr inbounds %struct.H5F_efc_t, ptr %80, i32 0, i32 7
  store ptr null, ptr %tmp_next, align 8, !tbaa !47
  %81 = load ptr, ptr %esf, align 8, !tbaa !8
  %82 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  %83 = load ptr, ptr %82, align 8, !tbaa !8
  %efc140 = getelementptr inbounds %struct.H5F_shared_t, ptr %83, i32 0, i32 7
  %84 = load ptr, ptr %efc140, align 8, !tbaa !24
  %tmp_next141 = getelementptr inbounds %struct.H5F_efc_t, ptr %84, i32 0, i32 7
  store ptr %81, ptr %tmp_next141, align 8, !tbaa !47
  %85 = load ptr, ptr %esf, align 8, !tbaa !8
  %86 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  store ptr %85, ptr %86, align 8, !tbaa !8
  br label %if.end142

if.end142:                                        ; preds = %if.then136, %if.then131
  %87 = load ptr, ptr %esf, align 8, !tbaa !8
  %88 = load ptr, ptr %tail.addr, align 8, !tbaa !8
  call void @H5F__efc_try_close_tag2(ptr noundef %87, ptr noundef %88)
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %cond.end126
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %land.lhs.true104, %land.lhs.true99, %lor.lhs.false94, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end144
  %89 = load ptr, ptr %ent, align 8, !tbaa !8
  %LRU_next = getelementptr inbounds %struct.H5F_efc_ent_t, ptr %89, i32 0, i32 2
  %90 = load ptr, ptr %LRU_next, align 8, !tbaa !41
  store ptr %90, ptr %ent, align 8, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end145

if.end145:                                        ; preds = %for.end, %lor.lhs.false75
  call void @llvm.lifetime.end.p0(i64 8, ptr %esf) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ent) #5
  ret void
}

declare ptr @H5SL_remove(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!20, !5, i64 28}
!20 = !{!"H5F_efc_t", !9, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !9, i64 40}
!21 = !{!20, !5, i64 36}
!22 = !{!23, !9, i64 16}
!23 = !{!"H5F_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32, !9, i64 40, !11, i64 48, !11, i64 49, !9, i64 56, !5, i64 64}
!24 = !{!25, !9, i64 56}
!25 = !{!"H5F_shared_t", !9, i64 0, !9, i64 8, !9, i64 16, !11, i64 24, !5, i64 28, !5, i64 32, !26, i64 40, !9, i64 56, !6, i64 64, !6, i64 65, !18, i64 72, !5, i64 80, !5, i64 84, !18, i64 88, !18, i64 96, !9, i64 104, !9, i64 112, !27, i64 120, !29, i64 1336, !11, i64 1348, !11, i64 1349, !9, i64 1352, !18, i64 1360, !6, i64 1368, !11, i64 1372, !18, i64 1376, !18, i64 1384, !28, i64 1392, !18, i64 1400, !30, i64 1408, !30, i64 1416, !5, i64 1424, !6, i64 1428, !6, i64 1432, !11, i64 1436, !5, i64 1440, !9, i64 1448, !9, i64 1456, !9, i64 1464, !9, i64 1472, !11, i64 1480, !11, i64 1481, !18, i64 1488, !9, i64 1496, !9, i64 1504, !6, i64 1512, !30, i64 1520, !11, i64 1528, !5, i64 1532, !11, i64 1536, !18, i64 1544, !11, i64 1552, !6, i64 1556, !6, i64 1608, !6, i64 1712, !11, i64 1816, !18, i64 1824, !18, i64 1832, !6, i64 1840, !6, i64 1868, !31, i64 1896, !31, i64 1936, !30, i64 1976, !18, i64 1984, !32, i64 1992, !5, i64 2048, !5, i64 2052, !6, i64 2056, !33, i64 2296, !11, i64 2312, !9, i64 2320}
!26 = !{!"H5F_mtab_t", !5, i64 0, !5, i64 4, !9, i64 8}
!27 = !{!"H5AC_cache_config_t", !5, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !6, i64 7, !11, i64 1032, !11, i64 1033, !18, i64 1040, !28, i64 1048, !18, i64 1056, !18, i64 1064, !18, i64 1072, !6, i64 1080, !28, i64 1088, !28, i64 1096, !11, i64 1104, !18, i64 1112, !6, i64 1120, !28, i64 1128, !28, i64 1136, !6, i64 1144, !28, i64 1152, !28, i64 1160, !11, i64 1168, !18, i64 1176, !5, i64 1184, !11, i64 1188, !28, i64 1192, !18, i64 1200, !5, i64 1208}
!28 = !{!"double", !6, i64 0}
!29 = !{!"H5AC_cache_image_config_t", !5, i64 0, !11, i64 4, !11, i64 5, !5, i64 8}
!30 = !{!"long long", !6, i64 0}
!31 = !{!"H5F_blk_aggr_t", !18, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !18, i64 32}
!32 = !{!"H5F_meta_accum_t", !9, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !11, i64 48}
!33 = !{!"H5F_object_flush_t", !9, i64 0, !9, i64 8}
!34 = !{!23, !5, i64 32}
!35 = !{!20, !9, i64 0}
!36 = !{!20, !5, i64 24}
!37 = !{!20, !9, i64 8}
!38 = !{!20, !9, i64 16}
!39 = !{!40, !9, i64 24}
!40 = !{!"H5F_efc_ent_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32}
!41 = !{!40, !9, i64 16}
!42 = !{!40, !5, i64 32}
!43 = !{!40, !9, i64 0}
!44 = !{!40, !9, i64 8}
!45 = !{!20, !5, i64 32}
!46 = !{!25, !5, i64 28}
!47 = !{!20, !9, i64 40}
