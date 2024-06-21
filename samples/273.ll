; ModuleID = 'samples/273.bc'
source_filename = "../spack-src/externals/cgns/hdf5/H5HFhuge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.H5B2_class_t = type { i32, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.H5HF_hdr_t = type { %struct.H5C_cache_entry_t, i32, i32, i8, i8, i8, i8, %struct.H5HF_dtable_t, i64, i64, i32, i64, i64, %struct.H5O_pline_t, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, i64, i8, i8, i8, ptr, i32, ptr, %struct.H5HF_block_iter_t, ptr, i64, i8, i8, i64, i8, i8, i8, i8 }
%struct.H5C_cache_entry_t = type { i32, ptr, i64, i64, ptr, i8, ptr, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, i64, ptr, i64, i64, i32, i8, i32, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.H5HF_dtable_t = type { %struct.H5HF_dtable_cparam_t, i64, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr }
%struct.H5HF_dtable_cparam_t = type { i32, i64, i64, i32, i32 }
%struct.H5O_pline_t = type { %struct.H5O_shared_t, i32, i64, i64, ptr }
%struct.H5O_shared_t = type { i32, ptr, i32, %union.anon }
%union.anon = type { %struct.H5O_mesg_loc_t }
%struct.H5O_mesg_loc_t = type { i32, i64 }
%struct.H5HF_block_iter_t = type { i8, ptr }
%struct.H5Z_cb_t = type { ptr, ptr }
%struct.H5HF_huge_bt2_filt_dir_rec_t = type { i64, i64, i32, i64 }
%struct.H5HF_huge_bt2_dir_rec_t = type { i64, i64 }
%struct.H5HF_huge_bt2_filt_indir_rec_t = type { i64, i64, i32, i64, i64 }
%struct.H5HF_huge_bt2_indir_rec_t = type { i64, i64, i64 }
%struct.H5B2_create_t = type { ptr, i32, i32, i8, i8 }
%struct.H5HF_huge_remove_ud_t = type { ptr, i64 }

@H5HF__huge_init.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_init = private unnamed_addr constant [16 x i8] c"H5HF__huge_init\00", align 1
@.str = private unnamed_addr constant [155 x i8] c"Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in H5private.h (this is usually due to an incorrect number of underscores)\00", align 1
@.str.1 = private unnamed_addr constant [1089 x i8] c"(((((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[1])))] & (unsigned short int) _ISupper)) && '_' == __func__[2] && '_' == __func__[3] && ((*__ctype_b_loc ())[(int) (((int)(__func__[4])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[2])))] & (unsigned short int) _ISupper)) && '_' == __func__[3] && '_' == __func__[4] && ((*__ctype_b_loc ())[(int) (((int)(__func__[5])))] & (unsigned short int) _ISlower)) || ((((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISdigit) || ((*__ctype_b_loc ())[(int) (((int)(__func__[3])))] & (unsigned short int) _ISupper)) && '_' == __func__[4] && '_' == __func__[5] && ((*__ctype_b_loc ())[(int) (((int)(__func__[6])))] & (unsigned short int) _ISlower))) && \22Function naming conventions are incorrect - check H5_IS_API|PUB|PRIV|PKG macros in \22 \22H5private.h (this is usually due to an incorrect number of underscores)\22\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"../spack-src/externals/cgns/hdf5/H5HFhuge.c\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_init = private unnamed_addr constant [37 x i8] c"herr_t H5HF__huge_init(H5HF_hdr_t *)\00", align 1
@H5HF_init_g = external global i8, align 1
@H5_libterm_g = external global i8, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"hdr\00", align 1
@H5HF__huge_insert.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_insert = private unnamed_addr constant [18 x i8] c"H5HF__huge_insert\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_insert = private unnamed_addr constant [63 x i8] c"herr_t H5HF__huge_insert(H5HF_hdr_t *, size_t, void *, void *)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"obj_size > hdr->max_man_size\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@H5E_ERR_CLS_g = external global i64, align 8
@H5E_HEAP_g = external global i64, align 8
@H5E_CANTCREATE_g = external global i64, align 8
@.str.7 = private unnamed_addr constant [56 x i8] c"can't create v2 B-tree for tracking 'huge' heap objects\00", align 1
@H5E_CANTOPENOBJ_g = external global i64, align 8
@.str.8 = private unnamed_addr constant [58 x i8] c"unable to open v2 B-tree for tracking 'huge' heap objects\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"hdr->huge_bt2\00", align 1
@H5E_NOSPACE_g = external global i64, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"memory allocation failed for pipeline buffer\00", align 1
@H5E_CANTFILTER_g = external global i64, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"output pipeline failed\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"file allocation failed for fractal heap huge object\00", align 1
@H5E_WRITEERROR_g = external global i64, align 8
@.str.13 = private unnamed_addr constant [37 x i8] c"writing 'huge' object to file failed\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"hdr->filter_len > 0\00", align 1
@H5E_CANTINSERT_g = external global i64, align 8
@.str.15 = private unnamed_addr constant [52 x i8] c"couldn't insert object tracking record in v2 B-tree\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\22bad sizeof size\22 && 0\00", align 1
@H5E_CANTINIT_g = external global i64, align 8
@.str.17 = private unnamed_addr constant [33 x i8] c"can't generate new ID for object\00", align 1
@H5E_CANTDIRTY_g = external global i64, align 8
@.str.18 = private unnamed_addr constant [32 x i8] c"can't mark heap header as dirty\00", align 1
@H5HF__huge_get_obj_len.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_get_obj_len = private unnamed_addr constant [23 x i8] c"H5HF__huge_get_obj_len\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_get_obj_len = private unnamed_addr constant [71 x i8] c"herr_t H5HF__huge_get_obj_len(H5HF_hdr_t *, const uint8_t *, size_t *)\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"((hdr->huge_bt2_addr)!=(9223372036854775807L *2UL+1UL))\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"obj_len_p\00", align 1
@H5E_NOTFOUND_g = external global i64, align 8
@.str.21 = private unnamed_addr constant [28 x i8] c"can't find object in B-tree\00", align 1
@H5HF__huge_get_obj_off.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_get_obj_off = private unnamed_addr constant [23 x i8] c"H5HF__huge_get_obj_off\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_get_obj_off = private unnamed_addr constant [72 x i8] c"herr_t H5HF__huge_get_obj_off(H5HF_hdr_t *, const uint8_t *, hsize_t *)\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"obj_off_p\00", align 1
@H5HF__huge_write.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_write = private unnamed_addr constant [17 x i8] c"H5HF__huge_write\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_write = private unnamed_addr constant [69 x i8] c"herr_t H5HF__huge_write(H5HF_hdr_t *, const uint8_t *, const void *)\00", align 1
@H5E_UNSUPPORTED_g = external global i64, align 8
@.str.23 = private unnamed_addr constant [55 x i8] c"modifying 'huge' object with filters not supported yet\00", align 1
@H5HF__huge_read.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_read = private unnamed_addr constant [16 x i8] c"H5HF__huge_read\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_read = private unnamed_addr constant [62 x i8] c"herr_t H5HF__huge_read(H5HF_hdr_t *, const uint8_t *, void *)\00", align 1
@H5E_CANTOPERATE_g = external global i64, align 8
@.str.24 = private unnamed_addr constant [33 x i8] c"unable to operate on heap object\00", align 1
@H5HF__huge_op.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_op = private unnamed_addr constant [14 x i8] c"H5HF__huge_op\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_op = private unnamed_addr constant [77 x i8] c"herr_t H5HF__huge_op(H5HF_hdr_t *, const uint8_t *, H5HF_operator_t, void *)\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@H5HF__huge_remove.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_remove = private unnamed_addr constant [18 x i8] c"H5HF__huge_remove\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_remove = private unnamed_addr constant [56 x i8] c"herr_t H5HF__huge_remove(H5HF_hdr_t *, const uint8_t *)\00", align 1
@H5E_CANTREMOVE_g = external global i64, align 8
@.str.26 = private unnamed_addr constant [32 x i8] c"can't remove object from B-tree\00", align 1
@H5HF__huge_term.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_term = private unnamed_addr constant [16 x i8] c"H5HF__huge_term\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_term = private unnamed_addr constant [37 x i8] c"herr_t H5HF__huge_term(H5HF_hdr_t *)\00", align 1
@H5E_CANTCLOSEOBJ_g = external global i64, align 8
@.str.27 = private unnamed_addr constant [22 x i8] c"can't close v2 B-tree\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"hdr->huge_size == 0\00", align 1
@H5E_CANTDELETE_g = external global i64, align 8
@.str.29 = private unnamed_addr constant [23 x i8] c"can't delete v2 B-tree\00", align 1
@H5HF__huge_delete.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_delete = private unnamed_addr constant [18 x i8] c"H5HF__huge_delete\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_delete = private unnamed_addr constant [39 x i8] c"herr_t H5HF__huge_delete(H5HF_hdr_t *)\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"hdr->huge_nobjs\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"hdr->huge_size\00", align 1
@H5HF__huge_bt2_create.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_bt2_create = private unnamed_addr constant [22 x i8] c"H5HF__huge_bt2_create\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_bt2_create = private unnamed_addr constant [43 x i8] c"herr_t H5HF__huge_bt2_create(H5HF_hdr_t *)\00", align 1
@H5HF_HUGE_BT2_FILT_DIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5HF_HUGE_BT2_DIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5HF_HUGE_BT2_FILT_INDIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5HF_HUGE_BT2_INDIR = external constant [1 x %struct.H5B2_class_t], align 16
@H5E_CANTGET_g = external global i64, align 8
@.str.32 = private unnamed_addr constant [61 x i8] c"can't get v2 B-tree address for tracking 'huge' heap objects\00", align 1
@H5HF__huge_new_id.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_new_id = private unnamed_addr constant [18 x i8] c"H5HF__huge_new_id\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_new_id = private unnamed_addr constant [40 x i8] c"hsize_t H5HF__huge_new_id(H5HF_hdr_t *)\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"wrapping 'huge' object IDs not supported yet\00", align 1
@H5HF__huge_op_real.func_check = internal global i8 0, align 1
@__func__.H5HF__huge_op_real = private unnamed_addr constant [19 x i8] c"H5HF__huge_op_real\00", align 1
@__PRETTY_FUNCTION__.H5HF__huge_op_real = private unnamed_addr constant [91 x i8] c"herr_t H5HF__huge_op_real(H5HF_hdr_t *, const uint8_t *, hbool_t, H5HF_operator_t, void *)\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"is_read || op\00", align 1
@H5E_READERROR_g = external global i64, align 8
@.str.35 = private unnamed_addr constant [46 x i8] c"can't read 'huge' object's data from the file\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"input filter failed\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"application's callback failed\00", align 1

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_init(ptr noundef %hdr) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  %0 = load i8, ptr @H5HF__huge_init.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_init, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 177, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_init) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_init.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end153, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 182, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_init) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp86 = icmp ugt i32 %37, 0
  br i1 %cmp86, label %if.then88, label %if.else109

if.then88:                                        ; preds = %cond.end85
  %38 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %id_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %id_len, align 8, !tbaa !26
  %sub = sub i32 %39, 1
  %40 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %40, i32 0, i32 32
  %41 = load i8, ptr %sizeof_addr, align 2, !tbaa !27
  %conv89 = zext i8 %41 to i32
  %42 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %42, i32 0, i32 31
  %43 = load i8, ptr %sizeof_size, align 1, !tbaa !28
  %conv90 = zext i8 %43 to i32
  %add = add nsw i32 %conv89, %conv90
  %add91 = add nsw i32 %add, 4
  %44 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size92 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %44, i32 0, i32 31
  %45 = load i8, ptr %sizeof_size92, align 1, !tbaa !28
  %conv93 = zext i8 %45 to i32
  %add94 = add nsw i32 %add91, %conv93
  %cmp95 = icmp uge i32 %sub, %add94
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.then88
  %46 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %46, i32 0, i32 40
  store i8 1, ptr %huge_ids_direct, align 1, !tbaa !29
  %47 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr98 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %47, i32 0, i32 32
  %48 = load i8, ptr %sizeof_addr98, align 2, !tbaa !27
  %conv99 = zext i8 %48 to i32
  %49 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size100 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %49, i32 0, i32 31
  %50 = load i8, ptr %sizeof_size100, align 1, !tbaa !28
  %conv101 = zext i8 %50 to i32
  %add102 = add nsw i32 %conv99, %conv101
  %51 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size103 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %51, i32 0, i32 31
  %52 = load i8, ptr %sizeof_size103, align 1, !tbaa !28
  %conv104 = zext i8 %52 to i32
  %add105 = add nsw i32 %add102, %conv104
  %conv106 = trunc i32 %add105 to i8
  %53 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %53, i32 0, i32 39
  store i8 %conv106, ptr %huge_id_size, align 8, !tbaa !30
  br label %if.end108

if.else:                                          ; preds = %if.then88
  %54 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct107 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %54, i32 0, i32 40
  store i8 0, ptr %huge_ids_direct107, align 1, !tbaa !29
  br label %if.end108

if.end108:                                        ; preds = %if.else, %if.then97
  br label %if.end131

if.else109:                                       ; preds = %cond.end85
  %55 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr110 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %55, i32 0, i32 32
  %56 = load i8, ptr %sizeof_addr110, align 2, !tbaa !27
  %conv111 = zext i8 %56 to i32
  %57 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size112 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %57, i32 0, i32 31
  %58 = load i8, ptr %sizeof_size112, align 1, !tbaa !28
  %conv113 = zext i8 %58 to i32
  %add114 = add nsw i32 %conv111, %conv113
  %59 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %id_len115 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %id_len115, align 8, !tbaa !26
  %sub116 = sub i32 %60, 1
  %cmp117 = icmp ule i32 %add114, %sub116
  br i1 %cmp117, label %if.then119, label %if.else128

if.then119:                                       ; preds = %if.else109
  %61 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct120 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %61, i32 0, i32 40
  store i8 1, ptr %huge_ids_direct120, align 1, !tbaa !29
  %62 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr121 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %62, i32 0, i32 32
  %63 = load i8, ptr %sizeof_addr121, align 2, !tbaa !27
  %conv122 = zext i8 %63 to i32
  %64 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size123 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %64, i32 0, i32 31
  %65 = load i8, ptr %sizeof_size123, align 1, !tbaa !28
  %conv124 = zext i8 %65 to i32
  %add125 = add nsw i32 %conv122, %conv124
  %conv126 = trunc i32 %add125 to i8
  %66 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size127 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %66, i32 0, i32 39
  store i8 %conv126, ptr %huge_id_size127, align 8, !tbaa !30
  br label %if.end130

if.else128:                                       ; preds = %if.else109
  %67 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct129 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %67, i32 0, i32 40
  store i8 0, ptr %huge_ids_direct129, align 1, !tbaa !29
  br label %if.end130

if.end130:                                        ; preds = %if.else128, %if.then119
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end108
  %68 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct132 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %68, i32 0, i32 40
  %69 = load i8, ptr %huge_ids_direct132, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool133 = trunc i8 %69 to i1
  br i1 %tobool133, label %if.end152, label %if.then134

if.then134:                                       ; preds = %if.end131
  %70 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %id_len135 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %id_len135, align 8, !tbaa !26
  %sub136 = sub i32 %71, 1
  %conv137 = zext i32 %sub136 to i64
  %cmp138 = icmp ult i64 %conv137, 8
  br i1 %cmp138, label %if.then140, label %if.else148

if.then140:                                       ; preds = %if.then134
  %72 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %id_len141 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %id_len141, align 8, !tbaa !26
  %sub142 = sub i32 %73, 1
  %conv143 = trunc i32 %sub142 to i8
  %74 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size144 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %74, i32 0, i32 39
  store i8 %conv143, ptr %huge_id_size144, align 8, !tbaa !30
  %75 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size145 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %75, i32 0, i32 39
  %76 = load i8, ptr %huge_id_size145, align 8, !tbaa !30
  %conv146 = zext i8 %76 to i32
  %mul = mul nsw i32 %conv146, 8
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 1, %sh_prom
  %sub147 = sub i64 %shl, 1
  %77 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_max_id = getelementptr inbounds %struct.H5HF_hdr_t, ptr %77, i32 0, i32 38
  store i64 %sub147, ptr %huge_max_id, align 8, !tbaa !31
  br label %if.end151

if.else148:                                       ; preds = %if.then134
  %78 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size149 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %78, i32 0, i32 39
  store i8 8, ptr %huge_id_size149, align 8, !tbaa !30
  %79 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_max_id150 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %79, i32 0, i32 38
  store i64 -1, ptr %huge_max_id150, align 8, !tbaa !31
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %if.then140
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end131
  %80 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %80, i32 0, i32 37
  store ptr null, ptr %huge_bt2, align 8, !tbaa !32
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %lor.lhs.false79
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_insert(ptr noundef %hdr, i64 noundef %obj_size, ptr noundef %obj, ptr noundef %_id) #0 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %obj_size.addr = alloca i64, align 8
  %obj.addr = alloca ptr, align 8
  %_id.addr = alloca ptr, align 8
  %id = alloca ptr, align 8
  %obj_addr = alloca i64, align 8
  %write_buf = alloca ptr, align 8
  %write_size = alloca i64, align 8
  %filter_mask = alloca i32, align 4
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %filter_cb = alloca %struct.H5Z_cb_t, align 8
  %nbytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %obj_rec = alloca %struct.H5HF_huge_bt2_filt_dir_rec_t, align 8
  %_n = alloca i64, align 8
  %_i = alloca i64, align 8
  %_p = alloca ptr, align 8
  %_n278 = alloca i64, align 8
  %_i279 = alloca i64, align 8
  %_p280 = alloca ptr, align 8
  %obj_rec317 = alloca %struct.H5HF_huge_bt2_dir_rec_t, align 8
  %_n351 = alloca i64, align 8
  %_i352 = alloca i64, align 8
  %_p353 = alloca ptr, align 8
  %filt_indir_rec = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %indir_rec = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %ins_rec = alloca ptr, align 8
  %new_id = alloca i64, align 8
  %_n423 = alloca i64, align 8
  %_i424 = alloca i64, align 8
  %_p425 = alloca ptr, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store i64 %obj_size, ptr %obj_size.addr, align 8, !tbaa !33
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  store ptr %_id, ptr %_id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #7
  %0 = load ptr, ptr %_id.addr, align 8, !tbaa !4
  store ptr %0, ptr %id, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_addr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %write_buf) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %write_size) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %filter_mask) #7
  store i32 0, ptr %filter_mask, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %1 = load i8, ptr @H5HF__huge_insert.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %2 = load ptr, ptr %call, align 8, !tbaa !4
  %3 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %5 = load ptr, ptr %call3, align 8, !tbaa !4
  %6 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %6 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %5, i64 %idxprom5
  %7 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %7 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %8 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %8 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %9 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %10 = load ptr, ptr %call17, align 8, !tbaa !4
  %11 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %11 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %10, i64 %idxprom19
  %12 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %12 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %13 = load ptr, ptr %call25, align 8, !tbaa !4
  %14 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %14 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %13, i64 %idxprom27
  %15 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %15 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %16 = load ptr, ptr %call33, align 8, !tbaa !4
  %17 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %17 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %16, i64 %idxprom35
  %18 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %18 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %19 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %19 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %20 = load ptr, ptr %call45, align 8, !tbaa !4
  %21 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %21 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %20, i64 %idxprom47
  %22 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %22 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %23 = load ptr, ptr %call53, align 8, !tbaa !4
  %24 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %24 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %23, i64 %idxprom55
  %25 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %25 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %26 = load ptr, ptr %call61, align 8, !tbaa !4
  %27 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %27 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %26, i64 %idxprom63
  %28 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %28 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %29 = load ptr, ptr %call69, align 8, !tbaa !4
  %30 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_insert, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %30 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %29, i64 %idxprom71
  %31 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %31 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 299, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

32:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %32, %cond.true
  store i8 1, ptr @H5HF__huge_insert.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %33 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %33 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %34 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %34 to i1
  br i1 %tobool80, label %if.end457, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %35 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %35, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 304, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

36:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %36, %cond.true83
  %37 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %38 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %max_man_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %38, i32 0, i32 10
  %39 = load i32, ptr %max_man_size, align 8, !tbaa !35
  %conv86 = zext i32 %39 to i64
  %cmp87 = icmp ugt i64 %37, %conv86
  br i1 %cmp87, label %cond.true89, label %cond.false90

cond.true89:                                      ; preds = %cond.end85
  br label %cond.end91

cond.false90:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 305, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

40:                                               ; No predecessors!
  br label %cond.end91

cond.end91:                                       ; preds = %40, %cond.true89
  %41 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %tobool92 = icmp ne ptr %41, null
  br i1 %tobool92, label %cond.true93, label %cond.false94

cond.true93:                                      ; preds = %cond.end91
  br label %cond.end95

cond.false94:                                     ; preds = %cond.end91
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 306, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

42:                                               ; No predecessors!
  br label %cond.end95

cond.end95:                                       ; preds = %42, %cond.true93
  %43 = load ptr, ptr %id, align 8, !tbaa !4
  %tobool96 = icmp ne ptr %43, null
  br i1 %tobool96, label %cond.true97, label %cond.false98

cond.true97:                                      ; preds = %cond.end95
  br label %cond.end99

cond.false98:                                     ; preds = %cond.end95
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 307, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

44:                                               ; No predecessors!
  br label %cond.end99

cond.end99:                                       ; preds = %44, %cond.true97
  %45 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %45, i32 0, i32 12
  %46 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp100 = icmp ne i64 %46, -1
  br i1 %cmp100, label %if.else, label %if.then102

if.then102:                                       ; preds = %cond.end99
  %47 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %call103 = call i32 @H5HF__huge_bt2_create(ptr noundef %47)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.then102
  %48 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %49 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %50 = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !33
  %call107 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 314, i64 noundef %48, i64 noundef %49, i64 noundef %50, ptr noundef @.str.7)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %51 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool108 = trunc i8 %51 to i1
  %frombool = zext i1 %tobool108 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end109:                                        ; preds = %if.then102
  br label %if.end125

if.else:                                          ; preds = %cond.end99
  %52 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %52, i32 0, i32 37
  %53 = load ptr, ptr %huge_bt2, align 8, !tbaa !32
  %cmp110 = icmp eq ptr null, %53
  br i1 %cmp110, label %if.then112, label %if.end124

if.then112:                                       ; preds = %if.else
  %54 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %54, i32 0, i32 28
  %55 = load ptr, ptr %f, align 8, !tbaa !37
  %56 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr113 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %56, i32 0, i32 12
  %57 = load i64, ptr %huge_bt2_addr113, align 8, !tbaa !36
  %58 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f114 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %58, i32 0, i32 28
  %59 = load ptr, ptr %f114, align 8, !tbaa !37
  %call115 = call ptr @H5B2_open(ptr noundef %55, i64 noundef %57, ptr noundef %59)
  %60 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2116 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %60, i32 0, i32 37
  store ptr %call115, ptr %huge_bt2116, align 8, !tbaa !32
  %cmp117 = icmp eq ptr null, %call115
  br i1 %cmp117, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.then112
  %61 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %62 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %63 = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !33
  %call120 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 322, i64 noundef %61, i64 noundef %62, i64 noundef %63, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %64 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool121 = trunc i8 %64 to i1
  %frombool122 = zext i1 %tobool121 to i8
  store i8 %frombool122, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end123:                                        ; preds = %if.then112
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.else
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end109
  %65 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2126 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %65, i32 0, i32 37
  %66 = load ptr, ptr %huge_bt2126, align 8, !tbaa !32
  %tobool127 = icmp ne ptr %66, null
  br i1 %tobool127, label %cond.true128, label %cond.false129

cond.true128:                                     ; preds = %if.end125
  br label %cond.end130

cond.false129:                                    ; preds = %if.end125
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 325, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

67:                                               ; No predecessors!
  br label %cond.end130

cond.end130:                                      ; preds = %67, %cond.true128
  %68 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp131 = icmp ugt i32 %69, 0
  br i1 %cmp131, label %if.then133, label %if.else152

if.then133:                                       ; preds = %cond.end130
  call void @llvm.lifetime.start.p0(i64 16, ptr %filter_cb) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbytes) #7
  %op_data = getelementptr inbounds %struct.H5Z_cb_t, ptr %filter_cb, i32 0, i32 1
  store ptr null, ptr %op_data, align 8, !tbaa !38
  %func = getelementptr inbounds %struct.H5Z_cb_t, ptr %filter_cb, i32 0, i32 0
  store ptr null, ptr %func, align 8, !tbaa !40
  %70 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  store i64 %70, ptr %write_size, align 8, !tbaa !33
  %71 = load i64, ptr %write_size, align 8, !tbaa !33
  %call134 = call ptr @H5MM_malloc(i64 noundef %71)
  store ptr %call134, ptr %write_buf, align 8, !tbaa !4
  %cmp135 = icmp eq ptr null, %call134
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %if.then133
  %72 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %73 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %74 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %call138 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 339, i64 noundef %72, i64 noundef %73, i64 noundef %74, ptr noundef @.str.10)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %75 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool139 = trunc i8 %75 to i1
  %frombool140 = zext i1 %tobool139 to i8
  store i8 %frombool140, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end141:                                        ; preds = %if.then133
  %76 = load ptr, ptr %write_buf, align 8, !tbaa !4
  %77 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %78 = load i64, ptr %write_size, align 8, !tbaa !33
  %call142 = call ptr @H5MM_memcpy(ptr noundef %76, ptr noundef %77, i64 noundef %78)
  %79 = load i64, ptr %write_size, align 8, !tbaa !33
  store i64 %79, ptr %nbytes, align 8, !tbaa !33
  %80 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %pline = getelementptr inbounds %struct.H5HF_hdr_t, ptr %80, i32 0, i32 13
  %81 = getelementptr inbounds { ptr, ptr }, ptr %filter_cb, i32 0, i32 0
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds { ptr, ptr }, ptr %filter_cb, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8
  %call143 = call i32 @H5Z_pipeline(ptr noundef %pline, i32 noundef 0, ptr noundef %filter_mask, i32 noundef 2, ptr %82, ptr %84, ptr noundef %nbytes, ptr noundef %write_size, ptr noundef %write_buf)
  %cmp144 = icmp slt i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end150

if.then146:                                       ; preds = %if.end141
  %85 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %86 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %87 = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !33
  %call147 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 346, i64 noundef %85, i64 noundef %86, i64 noundef %87, ptr noundef @.str.11)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %88 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool148 = trunc i8 %88 to i1
  %frombool149 = zext i1 %tobool148 to i8
  store i8 %frombool149, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end150:                                        ; preds = %if.end141
  %89 = load i64, ptr %nbytes, align 8, !tbaa !33
  store i64 %89, ptr %write_size, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %if.then137, %if.end150
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbytes) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %filter_cb) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup458 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end153

if.else152:                                       ; preds = %cond.end130
  %90 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  store ptr %90, ptr %write_buf, align 8, !tbaa !4
  %91 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  store i64 %91, ptr %write_size, align 8, !tbaa !33
  br label %if.end153

if.end153:                                        ; preds = %if.else152, %cleanup.cont
  %92 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f154 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %92, i32 0, i32 28
  %93 = load ptr, ptr %f154, align 8, !tbaa !37
  %94 = load i64, ptr %write_size, align 8, !tbaa !33
  %call155 = call i64 @H5MF_alloc(ptr noundef %93, i32 noundef 3, i64 noundef %94)
  store i64 %call155, ptr %obj_addr, align 8, !tbaa !33
  %cmp156 = icmp eq i64 -1, %call155
  br i1 %cmp156, label %if.then158, label %if.end162

if.then158:                                       ; preds = %if.end153
  %95 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %96 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %97 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %call159 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 358, i64 noundef %95, i64 noundef %96, i64 noundef %97, ptr noundef @.str.12)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %98 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool160 = trunc i8 %98 to i1
  %frombool161 = zext i1 %tobool160 to i8
  store i8 %frombool161, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end162:                                        ; preds = %if.end153
  %99 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f163 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %99, i32 0, i32 28
  %100 = load ptr, ptr %f163, align 8, !tbaa !37
  %101 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %102 = load i64, ptr %write_size, align 8, !tbaa !33
  %103 = load ptr, ptr %write_buf, align 8, !tbaa !4
  %call164 = call i32 @H5F_block_write(ptr noundef %100, i32 noundef 3, i64 noundef %101, i64 noundef %102, ptr noundef %103)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.end171

if.then167:                                       ; preds = %if.end162
  %104 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %105 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %106 = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !33
  %call168 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 362, i64 noundef %104, i64 noundef %105, i64 noundef %106, ptr noundef @.str.13)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %107 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool169 = trunc i8 %107 to i1
  %frombool170 = zext i1 %tobool169 to i8
  store i8 %frombool170, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end171:                                        ; preds = %if.end162
  %108 = load ptr, ptr %write_buf, align 8, !tbaa !4
  %109 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %cmp172 = icmp ne ptr %108, %109
  br i1 %cmp172, label %if.then174, label %if.end182

if.then174:                                       ; preds = %if.end171
  %110 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len175 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %filter_len175, align 4, !tbaa !15
  %cmp176 = icmp ugt i32 %111, 0
  br i1 %cmp176, label %cond.true178, label %cond.false179

cond.true178:                                     ; preds = %if.then174
  br label %cond.end180

cond.false179:                                    ; preds = %if.then174
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.2, i32 noundef 366, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

112:                                              ; No predecessors!
  br label %cond.end180

cond.end180:                                      ; preds = %112, %cond.true178
  %113 = load ptr, ptr %write_buf, align 8, !tbaa !4
  %call181 = call ptr @H5MM_xfree(ptr noundef %113)
  br label %if.end182

if.end182:                                        ; preds = %cond.end180, %if.end171
  %114 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %114, i32 0, i32 40
  %115 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool183 = trunc i8 %115 to i1
  br i1 %tobool183, label %if.then184, label %if.else390

if.then184:                                       ; preds = %if.end182
  %116 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len185 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %116, i32 0, i32 2
  %117 = load i32, ptr %filter_len185, align 4, !tbaa !15
  %cmp186 = icmp ugt i32 %117, 0
  br i1 %cmp186, label %if.then188, label %if.else316

if.then188:                                       ; preds = %if.then184
  call void @llvm.lifetime.start.p0(i64 32, ptr %obj_rec) #7
  %118 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %addr = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %obj_rec, i32 0, i32 0
  store i64 %118, ptr %addr, align 8, !tbaa !41
  %119 = load i64, ptr %write_size, align 8, !tbaa !33
  %len = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %obj_rec, i32 0, i32 1
  store i64 %119, ptr %len, align 8, !tbaa !43
  %120 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %filter_mask189 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %obj_rec, i32 0, i32 2
  store i32 %120, ptr %filter_mask189, align 8, !tbaa !44
  %121 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %obj_size190 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %obj_rec, i32 0, i32 3
  store i64 %121, ptr %obj_size190, align 8, !tbaa !45
  %122 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2191 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %122, i32 0, i32 37
  %123 = load ptr, ptr %huge_bt2191, align 8, !tbaa !32
  %call192 = call i32 @H5B2_insert(ptr noundef %123, ptr noundef %obj_rec)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %if.then195, label %if.end199

if.then195:                                       ; preds = %if.then188
  %124 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %125 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %126 = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !33
  %call196 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 384, i64 noundef %124, i64 noundef %125, i64 noundef %126, ptr noundef @.str.15)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %127 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool197 = trunc i8 %127 to i1
  %frombool198 = zext i1 %tobool197 to i8
  store i8 %frombool198, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup313

if.end199:                                        ; preds = %if.then188
  %128 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %128, i32 1
  store ptr %incdec.ptr, ptr %id, align 8, !tbaa !4
  store i8 16, ptr %128, align 1, !tbaa !12
  %129 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f200 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %129, i32 0, i32 28
  %130 = load ptr, ptr %f200, align 8, !tbaa !37
  %131 = load i64, ptr %obj_addr, align 8, !tbaa !33
  call void @H5F_addr_encode(ptr noundef %130, ptr noundef %id, i64 noundef %131)
  %132 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f201 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %132, i32 0, i32 28
  %133 = load ptr, ptr %f201, align 8, !tbaa !37
  %call202 = call zeroext i8 @H5F_sizeof_size(ptr noundef %133)
  %conv203 = zext i8 %call202 to i32
  switch i32 %conv203, label %sw.default [
    i32 4, label %sw.bb
    i32 8, label %sw.bb218
    i32 2, label %sw.bb233
  ]

sw.bb:                                            ; preds = %if.end199
  %134 = load i64, ptr %write_size, align 8, !tbaa !33
  %and204 = and i64 %134, 255
  %conv205 = trunc i64 %and204 to i8
  %135 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv205, ptr %135, align 1, !tbaa !12
  %136 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr206 = getelementptr inbounds i8, ptr %136, i32 1
  store ptr %incdec.ptr206, ptr %id, align 8, !tbaa !4
  %137 = load i64, ptr %write_size, align 8, !tbaa !33
  %shr = lshr i64 %137, 8
  %and207 = and i64 %shr, 255
  %conv208 = trunc i64 %and207 to i8
  %138 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv208, ptr %138, align 1, !tbaa !12
  %139 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr209 = getelementptr inbounds i8, ptr %139, i32 1
  store ptr %incdec.ptr209, ptr %id, align 8, !tbaa !4
  %140 = load i64, ptr %write_size, align 8, !tbaa !33
  %shr210 = lshr i64 %140, 16
  %and211 = and i64 %shr210, 255
  %conv212 = trunc i64 %and211 to i8
  %141 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv212, ptr %141, align 1, !tbaa !12
  %142 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr213 = getelementptr inbounds i8, ptr %142, i32 1
  store ptr %incdec.ptr213, ptr %id, align 8, !tbaa !4
  %143 = load i64, ptr %write_size, align 8, !tbaa !33
  %shr214 = lshr i64 %143, 24
  %and215 = and i64 %shr214, 255
  %conv216 = trunc i64 %and215 to i8
  %144 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv216, ptr %144, align 1, !tbaa !12
  %145 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr217 = getelementptr inbounds i8, ptr %145, i32 1
  store ptr %incdec.ptr217, ptr %id, align 8, !tbaa !4
  br label %sw.epilog

sw.bb218:                                         ; preds = %if.end199
  call void @llvm.lifetime.start.p0(i64 8, ptr %_n) #7
  %146 = load i64, ptr %write_size, align 8, !tbaa !33
  store i64 %146, ptr %_n, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_p) #7
  %147 = load ptr, ptr %id, align 8, !tbaa !4
  store ptr %147, ptr %_p, align 8, !tbaa !4
  store i64 0, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb218
  %148 = load i64, ptr %_i, align 8, !tbaa !33
  %cmp219 = icmp ult i64 %148, 8
  br i1 %cmp219, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %149 = load i64, ptr %_n, align 8, !tbaa !33
  %and221 = and i64 %149, 255
  %conv222 = trunc i64 %and221 to i8
  %150 = load ptr, ptr %_p, align 8, !tbaa !4
  %incdec.ptr223 = getelementptr inbounds i8, ptr %150, i32 1
  store ptr %incdec.ptr223, ptr %_p, align 8, !tbaa !4
  store i8 %conv222, ptr %150, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %151 = load i64, ptr %_i, align 8, !tbaa !33
  %inc = add i64 %151, 1
  store i64 %inc, ptr %_i, align 8, !tbaa !33
  %152 = load i64, ptr %_n, align 8, !tbaa !33
  %shr224 = lshr i64 %152, 8
  store i64 %shr224, ptr %_n, align 8, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc230, %for.end
  %153 = load i64, ptr %_i, align 8, !tbaa !33
  %cmp226 = icmp ult i64 %153, 8
  br i1 %cmp226, label %for.body228, label %for.end232

for.body228:                                      ; preds = %for.cond225
  %154 = load ptr, ptr %_p, align 8, !tbaa !4
  %incdec.ptr229 = getelementptr inbounds i8, ptr %154, i32 1
  store ptr %incdec.ptr229, ptr %_p, align 8, !tbaa !4
  store i8 0, ptr %154, align 1, !tbaa !12
  br label %for.inc230

for.inc230:                                       ; preds = %for.body228
  %155 = load i64, ptr %_i, align 8, !tbaa !33
  %inc231 = add i64 %155, 1
  store i64 %inc231, ptr %_i, align 8, !tbaa !33
  br label %for.cond225

for.end232:                                       ; preds = %for.cond225
  %156 = load ptr, ptr %id, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %156, i64 8
  store ptr %add.ptr, ptr %id, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_p) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_n) #7
  br label %sw.epilog

sw.bb233:                                         ; preds = %if.end199
  %157 = load i64, ptr %write_size, align 8, !tbaa !33
  %conv234 = trunc i64 %157 to i32
  %and235 = and i32 %conv234, 255
  %conv236 = trunc i32 %and235 to i8
  %158 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv236, ptr %158, align 1, !tbaa !12
  %159 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr237 = getelementptr inbounds i8, ptr %159, i32 1
  store ptr %incdec.ptr237, ptr %id, align 8, !tbaa !4
  %160 = load i64, ptr %write_size, align 8, !tbaa !33
  %conv238 = trunc i64 %160 to i32
  %shr239 = lshr i32 %conv238, 8
  %and240 = and i32 %shr239, 255
  %conv241 = trunc i32 %and240 to i8
  %161 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv241, ptr %161, align 1, !tbaa !12
  %162 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr242 = getelementptr inbounds i8, ptr %162, i32 1
  store ptr %incdec.ptr242, ptr %id, align 8, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end199
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 389, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb233, %for.end232, %sw.bb
  %163 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %and243 = and i32 %163, 255
  %conv244 = trunc i32 %and243 to i8
  %164 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv244, ptr %164, align 1, !tbaa !12
  %165 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr245 = getelementptr inbounds i8, ptr %165, i32 1
  store ptr %incdec.ptr245, ptr %id, align 8, !tbaa !4
  %166 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %shr246 = lshr i32 %166, 8
  %and247 = and i32 %shr246, 255
  %conv248 = trunc i32 %and247 to i8
  %167 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv248, ptr %167, align 1, !tbaa !12
  %168 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr249 = getelementptr inbounds i8, ptr %168, i32 1
  store ptr %incdec.ptr249, ptr %id, align 8, !tbaa !4
  %169 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %shr250 = lshr i32 %169, 16
  %and251 = and i32 %shr250, 255
  %conv252 = trunc i32 %and251 to i8
  %170 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv252, ptr %170, align 1, !tbaa !12
  %171 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr253 = getelementptr inbounds i8, ptr %171, i32 1
  store ptr %incdec.ptr253, ptr %id, align 8, !tbaa !4
  %172 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %shr254 = lshr i32 %172, 24
  %and255 = and i32 %shr254, 255
  %conv256 = trunc i32 %and255 to i8
  %173 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv256, ptr %173, align 1, !tbaa !12
  %174 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr257 = getelementptr inbounds i8, ptr %174, i32 1
  store ptr %incdec.ptr257, ptr %id, align 8, !tbaa !4
  %175 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f258 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %175, i32 0, i32 28
  %176 = load ptr, ptr %f258, align 8, !tbaa !37
  %call259 = call zeroext i8 @H5F_sizeof_size(ptr noundef %176)
  %conv260 = zext i8 %call259 to i32
  switch i32 %conv260, label %sw.default311 [
    i32 4, label %sw.bb261
    i32 8, label %sw.bb277
    i32 2, label %sw.bb301
  ]

sw.bb261:                                         ; preds = %sw.epilog
  %177 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %and262 = and i64 %177, 255
  %conv263 = trunc i64 %and262 to i8
  %178 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv263, ptr %178, align 1, !tbaa !12
  %179 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr264 = getelementptr inbounds i8, ptr %179, i32 1
  store ptr %incdec.ptr264, ptr %id, align 8, !tbaa !4
  %180 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %shr265 = lshr i64 %180, 8
  %and266 = and i64 %shr265, 255
  %conv267 = trunc i64 %and266 to i8
  %181 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv267, ptr %181, align 1, !tbaa !12
  %182 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr268 = getelementptr inbounds i8, ptr %182, i32 1
  store ptr %incdec.ptr268, ptr %id, align 8, !tbaa !4
  %183 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %shr269 = lshr i64 %183, 16
  %and270 = and i64 %shr269, 255
  %conv271 = trunc i64 %and270 to i8
  %184 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv271, ptr %184, align 1, !tbaa !12
  %185 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr272 = getelementptr inbounds i8, ptr %185, i32 1
  store ptr %incdec.ptr272, ptr %id, align 8, !tbaa !4
  %186 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %shr273 = lshr i64 %186, 24
  %and274 = and i64 %shr273, 255
  %conv275 = trunc i64 %and274 to i8
  %187 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv275, ptr %187, align 1, !tbaa !12
  %188 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr276 = getelementptr inbounds i8, ptr %188, i32 1
  store ptr %incdec.ptr276, ptr %id, align 8, !tbaa !4
  br label %sw.epilog312

sw.bb277:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %_n278) #7
  %189 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  store i64 %189, ptr %_n278, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i279) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_p280) #7
  %190 = load ptr, ptr %id, align 8, !tbaa !4
  store ptr %190, ptr %_p280, align 8, !tbaa !4
  store i64 0, ptr %_i279, align 8, !tbaa !33
  br label %for.cond281

for.cond281:                                      ; preds = %for.inc288, %sw.bb277
  %191 = load i64, ptr %_i279, align 8, !tbaa !33
  %cmp282 = icmp ult i64 %191, 8
  br i1 %cmp282, label %for.body284, label %for.end291

for.body284:                                      ; preds = %for.cond281
  %192 = load i64, ptr %_n278, align 8, !tbaa !33
  %and285 = and i64 %192, 255
  %conv286 = trunc i64 %and285 to i8
  %193 = load ptr, ptr %_p280, align 8, !tbaa !4
  %incdec.ptr287 = getelementptr inbounds i8, ptr %193, i32 1
  store ptr %incdec.ptr287, ptr %_p280, align 8, !tbaa !4
  store i8 %conv286, ptr %193, align 1, !tbaa !12
  br label %for.inc288

for.inc288:                                       ; preds = %for.body284
  %194 = load i64, ptr %_i279, align 8, !tbaa !33
  %inc289 = add i64 %194, 1
  store i64 %inc289, ptr %_i279, align 8, !tbaa !33
  %195 = load i64, ptr %_n278, align 8, !tbaa !33
  %shr290 = lshr i64 %195, 8
  store i64 %shr290, ptr %_n278, align 8, !tbaa !33
  br label %for.cond281

for.end291:                                       ; preds = %for.cond281
  br label %for.cond292

for.cond292:                                      ; preds = %for.inc297, %for.end291
  %196 = load i64, ptr %_i279, align 8, !tbaa !33
  %cmp293 = icmp ult i64 %196, 8
  br i1 %cmp293, label %for.body295, label %for.end299

for.body295:                                      ; preds = %for.cond292
  %197 = load ptr, ptr %_p280, align 8, !tbaa !4
  %incdec.ptr296 = getelementptr inbounds i8, ptr %197, i32 1
  store ptr %incdec.ptr296, ptr %_p280, align 8, !tbaa !4
  store i8 0, ptr %197, align 1, !tbaa !12
  br label %for.inc297

for.inc297:                                       ; preds = %for.body295
  %198 = load i64, ptr %_i279, align 8, !tbaa !33
  %inc298 = add i64 %198, 1
  store i64 %inc298, ptr %_i279, align 8, !tbaa !33
  br label %for.cond292

for.end299:                                       ; preds = %for.cond292
  %199 = load ptr, ptr %id, align 8, !tbaa !4
  %add.ptr300 = getelementptr inbounds i8, ptr %199, i64 8
  store ptr %add.ptr300, ptr %id, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_p280) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i279) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_n278) #7
  br label %sw.epilog312

sw.bb301:                                         ; preds = %sw.epilog
  %200 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %conv302 = trunc i64 %200 to i32
  %and303 = and i32 %conv302, 255
  %conv304 = trunc i32 %and303 to i8
  %201 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv304, ptr %201, align 1, !tbaa !12
  %202 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr305 = getelementptr inbounds i8, ptr %202, i32 1
  store ptr %incdec.ptr305, ptr %id, align 8, !tbaa !4
  %203 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %conv306 = trunc i64 %203 to i32
  %shr307 = lshr i32 %conv306, 8
  %and308 = and i32 %shr307, 255
  %conv309 = trunc i32 %and308 to i8
  %204 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv309, ptr %204, align 1, !tbaa !12
  %205 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr310 = getelementptr inbounds i8, ptr %205, i32 1
  store ptr %incdec.ptr310, ptr %id, align 8, !tbaa !4
  br label %sw.epilog312

sw.default311:                                    ; preds = %sw.epilog
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 391, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

sw.epilog312:                                     ; preds = %sw.bb301, %for.end299, %sw.bb261
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup313

cleanup313:                                       ; preds = %if.then195, %sw.epilog312
  call void @llvm.lifetime.end.p0(i64 32, ptr %obj_rec) #7
  %cleanup.dest314 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest314, label %cleanup458 [
    i32 0, label %cleanup.cont315
    i32 2, label %done
  ]

cleanup.cont315:                                  ; preds = %cleanup313
  br label %if.end389

if.else316:                                       ; preds = %if.then184
  call void @llvm.lifetime.start.p0(i64 16, ptr %obj_rec317) #7
  %206 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %addr318 = getelementptr inbounds %struct.H5HF_huge_bt2_dir_rec_t, ptr %obj_rec317, i32 0, i32 0
  store i64 %206, ptr %addr318, align 8, !tbaa !46
  %207 = load i64, ptr %write_size, align 8, !tbaa !33
  %len319 = getelementptr inbounds %struct.H5HF_huge_bt2_dir_rec_t, ptr %obj_rec317, i32 0, i32 1
  store i64 %207, ptr %len319, align 8, !tbaa !48
  %208 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2320 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %208, i32 0, i32 37
  %209 = load ptr, ptr %huge_bt2320, align 8, !tbaa !32
  %call321 = call i32 @H5B2_insert(ptr noundef %209, ptr noundef %obj_rec317)
  %cmp322 = icmp slt i32 %call321, 0
  br i1 %cmp322, label %if.then324, label %if.end328

if.then324:                                       ; preds = %if.else316
  %210 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %211 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %212 = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !33
  %call325 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 403, i64 noundef %210, i64 noundef %211, i64 noundef %212, ptr noundef @.str.15)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %213 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool326 = trunc i8 %213 to i1
  %frombool327 = zext i1 %tobool326 to i8
  store i8 %frombool327, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup386

if.end328:                                        ; preds = %if.else316
  %214 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr329 = getelementptr inbounds i8, ptr %214, i32 1
  store ptr %incdec.ptr329, ptr %id, align 8, !tbaa !4
  store i8 16, ptr %214, align 1, !tbaa !12
  %215 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f330 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %215, i32 0, i32 28
  %216 = load ptr, ptr %f330, align 8, !tbaa !37
  %217 = load i64, ptr %obj_addr, align 8, !tbaa !33
  call void @H5F_addr_encode(ptr noundef %216, ptr noundef %id, i64 noundef %217)
  %218 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f331 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %218, i32 0, i32 28
  %219 = load ptr, ptr %f331, align 8, !tbaa !37
  %call332 = call zeroext i8 @H5F_sizeof_size(ptr noundef %219)
  %conv333 = zext i8 %call332 to i32
  switch i32 %conv333, label %sw.default384 [
    i32 4, label %sw.bb334
    i32 8, label %sw.bb350
    i32 2, label %sw.bb374
  ]

sw.bb334:                                         ; preds = %if.end328
  %220 = load i64, ptr %write_size, align 8, !tbaa !33
  %and335 = and i64 %220, 255
  %conv336 = trunc i64 %and335 to i8
  %221 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv336, ptr %221, align 1, !tbaa !12
  %222 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr337 = getelementptr inbounds i8, ptr %222, i32 1
  store ptr %incdec.ptr337, ptr %id, align 8, !tbaa !4
  %223 = load i64, ptr %write_size, align 8, !tbaa !33
  %shr338 = lshr i64 %223, 8
  %and339 = and i64 %shr338, 255
  %conv340 = trunc i64 %and339 to i8
  %224 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv340, ptr %224, align 1, !tbaa !12
  %225 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr341 = getelementptr inbounds i8, ptr %225, i32 1
  store ptr %incdec.ptr341, ptr %id, align 8, !tbaa !4
  %226 = load i64, ptr %write_size, align 8, !tbaa !33
  %shr342 = lshr i64 %226, 16
  %and343 = and i64 %shr342, 255
  %conv344 = trunc i64 %and343 to i8
  %227 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv344, ptr %227, align 1, !tbaa !12
  %228 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr345 = getelementptr inbounds i8, ptr %228, i32 1
  store ptr %incdec.ptr345, ptr %id, align 8, !tbaa !4
  %229 = load i64, ptr %write_size, align 8, !tbaa !33
  %shr346 = lshr i64 %229, 24
  %and347 = and i64 %shr346, 255
  %conv348 = trunc i64 %and347 to i8
  %230 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv348, ptr %230, align 1, !tbaa !12
  %231 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr349 = getelementptr inbounds i8, ptr %231, i32 1
  store ptr %incdec.ptr349, ptr %id, align 8, !tbaa !4
  br label %sw.epilog385

sw.bb350:                                         ; preds = %if.end328
  call void @llvm.lifetime.start.p0(i64 8, ptr %_n351) #7
  %232 = load i64, ptr %write_size, align 8, !tbaa !33
  store i64 %232, ptr %_n351, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i352) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_p353) #7
  %233 = load ptr, ptr %id, align 8, !tbaa !4
  store ptr %233, ptr %_p353, align 8, !tbaa !4
  store i64 0, ptr %_i352, align 8, !tbaa !33
  br label %for.cond354

for.cond354:                                      ; preds = %for.inc361, %sw.bb350
  %234 = load i64, ptr %_i352, align 8, !tbaa !33
  %cmp355 = icmp ult i64 %234, 8
  br i1 %cmp355, label %for.body357, label %for.end364

for.body357:                                      ; preds = %for.cond354
  %235 = load i64, ptr %_n351, align 8, !tbaa !33
  %and358 = and i64 %235, 255
  %conv359 = trunc i64 %and358 to i8
  %236 = load ptr, ptr %_p353, align 8, !tbaa !4
  %incdec.ptr360 = getelementptr inbounds i8, ptr %236, i32 1
  store ptr %incdec.ptr360, ptr %_p353, align 8, !tbaa !4
  store i8 %conv359, ptr %236, align 1, !tbaa !12
  br label %for.inc361

for.inc361:                                       ; preds = %for.body357
  %237 = load i64, ptr %_i352, align 8, !tbaa !33
  %inc362 = add i64 %237, 1
  store i64 %inc362, ptr %_i352, align 8, !tbaa !33
  %238 = load i64, ptr %_n351, align 8, !tbaa !33
  %shr363 = lshr i64 %238, 8
  store i64 %shr363, ptr %_n351, align 8, !tbaa !33
  br label %for.cond354

for.end364:                                       ; preds = %for.cond354
  br label %for.cond365

for.cond365:                                      ; preds = %for.inc370, %for.end364
  %239 = load i64, ptr %_i352, align 8, !tbaa !33
  %cmp366 = icmp ult i64 %239, 8
  br i1 %cmp366, label %for.body368, label %for.end372

for.body368:                                      ; preds = %for.cond365
  %240 = load ptr, ptr %_p353, align 8, !tbaa !4
  %incdec.ptr369 = getelementptr inbounds i8, ptr %240, i32 1
  store ptr %incdec.ptr369, ptr %_p353, align 8, !tbaa !4
  store i8 0, ptr %240, align 1, !tbaa !12
  br label %for.inc370

for.inc370:                                       ; preds = %for.body368
  %241 = load i64, ptr %_i352, align 8, !tbaa !33
  %inc371 = add i64 %241, 1
  store i64 %inc371, ptr %_i352, align 8, !tbaa !33
  br label %for.cond365

for.end372:                                       ; preds = %for.cond365
  %242 = load ptr, ptr %id, align 8, !tbaa !4
  %add.ptr373 = getelementptr inbounds i8, ptr %242, i64 8
  store ptr %add.ptr373, ptr %id, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_p353) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i352) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_n351) #7
  br label %sw.epilog385

sw.bb374:                                         ; preds = %if.end328
  %243 = load i64, ptr %write_size, align 8, !tbaa !33
  %conv375 = trunc i64 %243 to i32
  %and376 = and i32 %conv375, 255
  %conv377 = trunc i32 %and376 to i8
  %244 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv377, ptr %244, align 1, !tbaa !12
  %245 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr378 = getelementptr inbounds i8, ptr %245, i32 1
  store ptr %incdec.ptr378, ptr %id, align 8, !tbaa !4
  %246 = load i64, ptr %write_size, align 8, !tbaa !33
  %conv379 = trunc i64 %246 to i32
  %shr380 = lshr i32 %conv379, 8
  %and381 = and i32 %shr380, 255
  %conv382 = trunc i32 %and381 to i8
  %247 = load ptr, ptr %id, align 8, !tbaa !4
  store i8 %conv382, ptr %247, align 1, !tbaa !12
  %248 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr383 = getelementptr inbounds i8, ptr %248, i32 1
  store ptr %incdec.ptr383, ptr %id, align 8, !tbaa !4
  br label %sw.epilog385

sw.default384:                                    ; preds = %if.end328
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.2, i32 noundef 408, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_insert) #6
  unreachable

sw.epilog385:                                     ; preds = %sw.bb374, %for.end372, %sw.bb334
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup386

cleanup386:                                       ; preds = %if.then324, %sw.epilog385
  call void @llvm.lifetime.end.p0(i64 16, ptr %obj_rec317) #7
  %cleanup.dest387 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest387, label %cleanup458 [
    i32 0, label %cleanup.cont388
    i32 2, label %done
  ]

cleanup.cont388:                                  ; preds = %cleanup386
  br label %if.end389

if.end389:                                        ; preds = %cleanup.cont388, %cleanup.cont315
  br label %if.end447

if.else390:                                       ; preds = %if.end182
  call void @llvm.lifetime.start.p0(i64 40, ptr %filt_indir_rec) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %indir_rec) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ins_rec) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_id) #7
  %249 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %call391 = call i64 @H5HF__huge_new_id(ptr noundef %249)
  store i64 %call391, ptr %new_id, align 8, !tbaa !49
  %cmp392 = icmp eq i64 0, %call391
  br i1 %cmp392, label %if.then394, label %if.end398

if.then394:                                       ; preds = %if.else390
  %250 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %251 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %252 = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !33
  %call395 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 419, i64 noundef %250, i64 noundef %251, i64 noundef %252, ptr noundef @.str.17)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %253 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool396 = trunc i8 %253 to i1
  %frombool397 = zext i1 %tobool396 to i8
  store i8 %frombool397, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup441

if.end398:                                        ; preds = %if.else390
  %254 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len399 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %254, i32 0, i32 2
  %255 = load i32, ptr %filter_len399, align 4, !tbaa !15
  %cmp400 = icmp ugt i32 %255, 0
  br i1 %cmp400, label %if.then402, label %if.else408

if.then402:                                       ; preds = %if.end398
  %256 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %addr403 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %filt_indir_rec, i32 0, i32 0
  store i64 %256, ptr %addr403, align 8, !tbaa !50
  %257 = load i64, ptr %write_size, align 8, !tbaa !33
  %len404 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %filt_indir_rec, i32 0, i32 1
  store i64 %257, ptr %len404, align 8, !tbaa !52
  %258 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %filter_mask405 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %filt_indir_rec, i32 0, i32 2
  store i32 %258, ptr %filter_mask405, align 8, !tbaa !53
  %259 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %obj_size406 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %filt_indir_rec, i32 0, i32 3
  store i64 %259, ptr %obj_size406, align 8, !tbaa !54
  %260 = load i64, ptr %new_id, align 8, !tbaa !49
  %id407 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %filt_indir_rec, i32 0, i32 4
  store i64 %260, ptr %id407, align 8, !tbaa !55
  store ptr %filt_indir_rec, ptr %ins_rec, align 8, !tbaa !4
  br label %if.end412

if.else408:                                       ; preds = %if.end398
  %261 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %addr409 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %indir_rec, i32 0, i32 0
  store i64 %261, ptr %addr409, align 8, !tbaa !56
  %262 = load i64, ptr %write_size, align 8, !tbaa !33
  %len410 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %indir_rec, i32 0, i32 1
  store i64 %262, ptr %len410, align 8, !tbaa !58
  %263 = load i64, ptr %new_id, align 8, !tbaa !49
  %id411 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %indir_rec, i32 0, i32 2
  store i64 %263, ptr %id411, align 8, !tbaa !59
  store ptr %indir_rec, ptr %ins_rec, align 8, !tbaa !4
  br label %if.end412

if.end412:                                        ; preds = %if.else408, %if.then402
  %264 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2413 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %264, i32 0, i32 37
  %265 = load ptr, ptr %huge_bt2413, align 8, !tbaa !32
  %266 = load ptr, ptr %ins_rec, align 8, !tbaa !4
  %call414 = call i32 @H5B2_insert(ptr noundef %265, ptr noundef %266)
  %cmp415 = icmp slt i32 %call414, 0
  br i1 %cmp415, label %if.then417, label %if.end421

if.then417:                                       ; preds = %if.end412
  %267 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %268 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %269 = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !33
  %call418 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 444, i64 noundef %267, i64 noundef %268, i64 noundef %269, ptr noundef @.str.15)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %270 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool419 = trunc i8 %270 to i1
  %frombool420 = zext i1 %tobool419 to i8
  store i8 %frombool420, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup441

if.end421:                                        ; preds = %if.end412
  %271 = load ptr, ptr %id, align 8, !tbaa !4
  %incdec.ptr422 = getelementptr inbounds i8, ptr %271, i32 1
  store ptr %incdec.ptr422, ptr %id, align 8, !tbaa !4
  store i8 16, ptr %271, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %_n423) #7
  %272 = load i64, ptr %new_id, align 8, !tbaa !49
  store i64 %272, ptr %_n423, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i424) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_p425) #7
  %273 = load ptr, ptr %id, align 8, !tbaa !4
  store ptr %273, ptr %_p425, align 8, !tbaa !4
  store i64 0, ptr %_i424, align 8, !tbaa !33
  br label %for.cond426

for.cond426:                                      ; preds = %for.inc434, %if.end421
  %274 = load i64, ptr %_i424, align 8, !tbaa !33
  %275 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %275, i32 0, i32 39
  %276 = load i8, ptr %huge_id_size, align 8, !tbaa !30
  %conv427 = zext i8 %276 to i64
  %cmp428 = icmp ult i64 %274, %conv427
  br i1 %cmp428, label %for.body430, label %for.end437

for.body430:                                      ; preds = %for.cond426
  %277 = load i64, ptr %_n423, align 8, !tbaa !33
  %and431 = and i64 %277, 255
  %conv432 = trunc i64 %and431 to i8
  %278 = load ptr, ptr %_p425, align 8, !tbaa !4
  %incdec.ptr433 = getelementptr inbounds i8, ptr %278, i32 1
  store ptr %incdec.ptr433, ptr %_p425, align 8, !tbaa !4
  store i8 %conv432, ptr %278, align 1, !tbaa !12
  br label %for.inc434

for.inc434:                                       ; preds = %for.body430
  %279 = load i64, ptr %_i424, align 8, !tbaa !33
  %inc435 = add i64 %279, 1
  store i64 %inc435, ptr %_i424, align 8, !tbaa !33
  %280 = load i64, ptr %_n423, align 8, !tbaa !33
  %shr436 = lshr i64 %280, 8
  store i64 %shr436, ptr %_n423, align 8, !tbaa !33
  br label %for.cond426

for.end437:                                       ; preds = %for.cond426
  %281 = load ptr, ptr %id, align 8, !tbaa !4
  %282 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size438 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %282, i32 0, i32 39
  %283 = load i8, ptr %huge_id_size438, align 8, !tbaa !30
  %conv439 = zext i8 %283 to i32
  %idx.ext = sext i32 %conv439 to i64
  %add.ptr440 = getelementptr inbounds i8, ptr %281, i64 %idx.ext
  store ptr %add.ptr440, ptr %id, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_p425) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i424) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %_n423) #7
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup441

cleanup441:                                       ; preds = %if.then417, %if.then394, %for.end437
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_id) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ins_rec) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %indir_rec) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %filt_indir_rec) #7
  %cleanup.dest445 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest445, label %cleanup458 [
    i32 0, label %cleanup.cont446
    i32 2, label %done
  ]

cleanup.cont446:                                  ; preds = %cleanup441
  br label %if.end447

if.end447:                                        ; preds = %cleanup.cont446, %if.end389
  %284 = load i64, ptr %obj_size.addr, align 8, !tbaa !33
  %285 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %285, i32 0, i32 20
  %286 = load i64, ptr %huge_size, align 8, !tbaa !60
  %add = add i64 %286, %284
  store i64 %add, ptr %huge_size, align 8, !tbaa !60
  %287 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_nobjs = getelementptr inbounds %struct.H5HF_hdr_t, ptr %287, i32 0, i32 21
  %288 = load i64, ptr %huge_nobjs, align 8, !tbaa !61
  %inc448 = add i64 %288, 1
  store i64 %inc448, ptr %huge_nobjs, align 8, !tbaa !61
  %289 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %call449 = call i32 @H5HF__hdr_dirty(ptr noundef %289)
  %cmp450 = icmp slt i32 %call449, 0
  br i1 %cmp450, label %if.then452, label %if.end456

if.then452:                                       ; preds = %if.end447
  %290 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %291 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %292 = load i64, ptr @H5E_CANTDIRTY_g, align 8, !tbaa !33
  %call453 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_insert, i32 noundef 457, i64 noundef %290, i64 noundef %291, i64 noundef %292, ptr noundef @.str.18)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %293 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool454 = trunc i8 %293 to i1
  %frombool455 = zext i1 %tobool454 to i8
  store i8 %frombool455, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end456:                                        ; preds = %if.end447
  br label %done

done:                                             ; preds = %if.end456, %cleanup441, %cleanup386, %cleanup313, %cleanup, %if.then452, %if.then167, %if.then158, %if.then119, %if.then106
  br label %if.end457

if.end457:                                        ; preds = %done, %lor.lhs.false79
  %294 = load i32, ptr %ret_value, align 4, !tbaa !34
  store i32 %294, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup458

cleanup458:                                       ; preds = %if.end457, %cleanup441, %cleanup386, %cleanup313, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %filter_mask) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %write_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %write_buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_addr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #7
  %295 = load i32, ptr %retval, align 4
  ret i32 %295
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @H5HF__huge_bt2_create(ptr noundef %hdr) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  %bt2_cparam = alloca %struct.H5B2_create_t, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %bt2_cparam) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_bt2_create.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([22 x i8], ptr @__func__.H5HF__huge_bt2_create, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 99, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_bt2_create) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_bt2_create.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end154, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 104, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_bt2_create) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 40
  %37 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool86 = trunc i8 %37 to i1
  br i1 %tobool86, label %if.then87, label %if.else105

if.then87:                                        ; preds = %cond.end85
  %38 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp88 = icmp ugt i32 %39, 0
  br i1 %cmp88, label %if.then90, label %if.else

if.then90:                                        ; preds = %if.then87
  %40 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %40, i32 0, i32 32
  %41 = load i8, ptr %sizeof_addr, align 2, !tbaa !27
  %conv91 = zext i8 %41 to i32
  %42 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %42, i32 0, i32 31
  %43 = load i8, ptr %sizeof_size, align 1, !tbaa !28
  %conv92 = zext i8 %43 to i32
  %add = add i32 %conv91, %conv92
  %add93 = add i32 %add, 4
  %44 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size94 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %44, i32 0, i32 31
  %45 = load i8, ptr %sizeof_size94, align 1, !tbaa !28
  %conv95 = zext i8 %45 to i32
  %add96 = add i32 %add93, %conv95
  %rrec_size = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 2
  store i32 %add96, ptr %rrec_size, align 4, !tbaa !62
  %cls = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 0
  store ptr @H5HF_HUGE_BT2_FILT_DIR, ptr %cls, align 8, !tbaa !64
  br label %if.end104

if.else:                                          ; preds = %if.then87
  %46 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr97 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %46, i32 0, i32 32
  %47 = load i8, ptr %sizeof_addr97, align 2, !tbaa !27
  %conv98 = zext i8 %47 to i32
  %48 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size99 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %48, i32 0, i32 31
  %49 = load i8, ptr %sizeof_size99, align 1, !tbaa !28
  %conv100 = zext i8 %49 to i32
  %add101 = add i32 %conv98, %conv100
  %rrec_size102 = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 2
  store i32 %add101, ptr %rrec_size102, align 4, !tbaa !62
  %cls103 = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 0
  store ptr @H5HF_HUGE_BT2_DIR, ptr %cls103, align 8, !tbaa !64
  br label %if.end104

if.end104:                                        ; preds = %if.else, %if.then90
  br label %if.end136

if.else105:                                       ; preds = %cond.end85
  %50 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len106 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %filter_len106, align 4, !tbaa !15
  %cmp107 = icmp ugt i32 %51, 0
  br i1 %cmp107, label %if.then109, label %if.else124

if.then109:                                       ; preds = %if.else105
  %52 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr110 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %52, i32 0, i32 32
  %53 = load i8, ptr %sizeof_addr110, align 2, !tbaa !27
  %conv111 = zext i8 %53 to i32
  %54 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size112 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %54, i32 0, i32 31
  %55 = load i8, ptr %sizeof_size112, align 1, !tbaa !28
  %conv113 = zext i8 %55 to i32
  %add114 = add i32 %conv111, %conv113
  %add115 = add i32 %add114, 4
  %56 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size116 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %56, i32 0, i32 31
  %57 = load i8, ptr %sizeof_size116, align 1, !tbaa !28
  %conv117 = zext i8 %57 to i32
  %add118 = add i32 %add115, %conv117
  %58 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size119 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %58, i32 0, i32 31
  %59 = load i8, ptr %sizeof_size119, align 1, !tbaa !28
  %conv120 = zext i8 %59 to i32
  %add121 = add i32 %add118, %conv120
  %rrec_size122 = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 2
  store i32 %add121, ptr %rrec_size122, align 4, !tbaa !62
  %cls123 = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 0
  store ptr @H5HF_HUGE_BT2_FILT_INDIR, ptr %cls123, align 8, !tbaa !64
  br label %if.end135

if.else124:                                       ; preds = %if.else105
  %60 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr125 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %60, i32 0, i32 32
  %61 = load i8, ptr %sizeof_addr125, align 2, !tbaa !27
  %conv126 = zext i8 %61 to i32
  %62 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size127 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %62, i32 0, i32 31
  %63 = load i8, ptr %sizeof_size127, align 1, !tbaa !28
  %conv128 = zext i8 %63 to i32
  %add129 = add i32 %conv126, %conv128
  %64 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size130 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %64, i32 0, i32 31
  %65 = load i8, ptr %sizeof_size130, align 1, !tbaa !28
  %conv131 = zext i8 %65 to i32
  %add132 = add i32 %add129, %conv131
  %rrec_size133 = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 2
  store i32 %add132, ptr %rrec_size133, align 4, !tbaa !62
  %cls134 = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 0
  store ptr @H5HF_HUGE_BT2_INDIR, ptr %cls134, align 8, !tbaa !64
  br label %if.end135

if.end135:                                        ; preds = %if.else124, %if.then109
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end104
  %node_size = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 1
  store i32 512, ptr %node_size, align 8, !tbaa !65
  %split_percent = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 3
  store i8 100, ptr %split_percent, align 8, !tbaa !66
  %merge_percent = getelementptr inbounds %struct.H5B2_create_t, ptr %bt2_cparam, i32 0, i32 4
  store i8 40, ptr %merge_percent, align 1, !tbaa !67
  %66 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %66, i32 0, i32 28
  %67 = load ptr, ptr %f, align 8, !tbaa !37
  %68 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f137 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %68, i32 0, i32 28
  %69 = load ptr, ptr %f137, align 8, !tbaa !37
  %call138 = call ptr @H5B2_create(ptr noundef %67, ptr noundef %bt2_cparam, ptr noundef %69)
  %70 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %70, i32 0, i32 37
  store ptr %call138, ptr %huge_bt2, align 8, !tbaa !32
  %cmp139 = icmp eq ptr null, %call138
  br i1 %cmp139, label %if.then141, label %if.end144

if.then141:                                       ; preds = %if.end136
  %71 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %72 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %73 = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !33
  %call142 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_bt2_create, i32 noundef 151, i64 noundef %71, i64 noundef %72, i64 noundef %73, ptr noundef @.str.7)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %74 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool143 = trunc i8 %74 to i1
  %frombool = zext i1 %tobool143 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end144:                                        ; preds = %if.end136
  %75 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2145 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %75, i32 0, i32 37
  %76 = load ptr, ptr %huge_bt2145, align 8, !tbaa !32
  %77 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %77, i32 0, i32 12
  %call146 = call i32 @H5B2_get_addr(ptr noundef %76, ptr noundef %huge_bt2_addr)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then149, label %if.end153

if.then149:                                       ; preds = %if.end144
  %78 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %79 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %80 = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !33
  %call150 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_bt2_create, i32 noundef 156, i64 noundef %78, i64 noundef %79, i64 noundef %80, ptr noundef @.str.32)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %81 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool151 = trunc i8 %81 to i1
  %frombool152 = zext i1 %tobool151 to i8
  store i8 %frombool152, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end153:                                        ; preds = %if.end144
  br label %done

done:                                             ; preds = %if.end153, %if.then149, %if.then141
  br label %if.end154

if.end154:                                        ; preds = %done, %lor.lhs.false79
  %82 = load i32, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %bt2_cparam) #7
  ret i32 %82
}

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) #4

declare ptr @H5B2_open(ptr noundef, i64 noundef, ptr noundef) #4

declare ptr @H5MM_malloc(i64 noundef) #4

declare ptr @H5MM_memcpy(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @H5Z_pipeline(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr, ptr, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i64 @H5MF_alloc(ptr noundef, i32 noundef, i64 noundef) #4

declare i32 @H5F_block_write(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #4

declare ptr @H5MM_xfree(ptr noundef) #4

declare i32 @H5B2_insert(ptr noundef, ptr noundef) #4

declare void @H5F_addr_encode(ptr noundef, ptr noundef, i64 noundef) #4

declare zeroext i8 @H5F_sizeof_size(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i64 @H5HF__huge_new_id(ptr noundef %hdr) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  %new_id = alloca i64, align 8
  %ret_value = alloca i64, align 8
  %err_occurred = alloca i8, align 1
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_id) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_value) #7
  store i64 0, ptr %ret_value, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_new_id.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_new_id, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 249, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_new_id) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_new_id.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end97, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 254, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_new_id) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_wrapped = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 5
  %37 = load i8, ptr %huge_ids_wrapped, align 2, !tbaa !68, !range !10, !noundef !11
  %tobool86 = trunc i8 %37 to i1
  br i1 %tobool86, label %if.then87, label %if.else

if.then87:                                        ; preds = %cond.end85
  %38 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %39 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %40 = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !33
  %call88 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_new_id, i32 noundef 259, i64 noundef %38, i64 noundef %39, i64 noundef %40, ptr noundef @.str.33)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %41 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool89 = trunc i8 %41 to i1
  %frombool = zext i1 %tobool89 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i64 0, ptr %ret_value, align 8, !tbaa !49
  br label %done

if.else:                                          ; preds = %cond.end85
  %42 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_next_id = getelementptr inbounds %struct.H5HF_hdr_t, ptr %42, i32 0, i32 11
  %43 = load i64, ptr %huge_next_id, align 8, !tbaa !69
  %inc = add i64 %43, 1
  store i64 %inc, ptr %huge_next_id, align 8, !tbaa !69
  store i64 %inc, ptr %new_id, align 8, !tbaa !49
  %44 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_next_id90 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %44, i32 0, i32 11
  %45 = load i64, ptr %huge_next_id90, align 8, !tbaa !69
  %46 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_max_id = getelementptr inbounds %struct.H5HF_hdr_t, ptr %46, i32 0, i32 38
  %47 = load i64, ptr %huge_max_id, align 8, !tbaa !31
  %cmp91 = icmp eq i64 %45, %47
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.else
  %48 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_wrapped94 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %48, i32 0, i32 5
  store i8 1, ptr %huge_ids_wrapped94, align 2, !tbaa !68
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.else
  br label %if.end96

if.end96:                                         ; preds = %if.end95
  %49 = load i64, ptr %new_id, align 8, !tbaa !49
  store i64 %49, ptr %ret_value, align 8, !tbaa !49
  br label %done

done:                                             ; preds = %if.end96, %if.then87
  br label %if.end97

if.end97:                                         ; preds = %done, %lor.lhs.false79
  %50 = load i64, ptr %ret_value, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_id) #7
  ret i64 %50
}

declare i32 @H5HF__hdr_dirty(ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_get_obj_len(ptr noundef %hdr, ptr noundef %id, ptr noundef %obj_len_p) #0 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %obj_len_p.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %_i = alloca i64, align 8
  %_i127 = alloca i64, align 8
  %found_rec = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %search_rec = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %_i173 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %found_rec208 = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %search_rec209 = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %_i210 = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store ptr %obj_len_p, ptr %obj_len_p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_get_obj_len.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_len, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 480, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_len) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_get_obj_len.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end250, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 485, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_len) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 12
  %37 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp86 = icmp ne i64 %37, -1
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end85
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 486, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_len) #6
  unreachable

38:                                               ; No predecessors!
  br label %cond.end90

cond.end90:                                       ; preds = %38, %cond.true88
  %39 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %tobool91 = icmp ne ptr %39, null
  br i1 %tobool91, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %cond.end90
  br label %cond.end94

cond.false93:                                     ; preds = %cond.end90
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 487, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_len) #6
  unreachable

40:                                               ; No predecessors!
  br label %cond.end94

cond.end94:                                       ; preds = %40, %cond.true92
  %41 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  %tobool95 = icmp ne ptr %41, null
  br i1 %tobool95, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.end94
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end94
  call void @__assert_fail(ptr noundef @.str.20, ptr noundef @.str.2, i32 noundef 488, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_len) #6
  unreachable

42:                                               ; No predecessors!
  br label %cond.end98

cond.end98:                                       ; preds = %42, %cond.true96
  %43 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %id.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %44, i32 0, i32 40
  %45 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool99 = trunc i8 %45 to i1
  br i1 %tobool99, label %if.then100, label %if.else153

if.then100:                                       ; preds = %cond.end98
  %46 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp101 = icmp ugt i32 %47, 0
  br i1 %cmp101, label %if.then103, label %if.else

if.then103:                                       ; preds = %if.then100
  %48 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %48, i32 0, i32 32
  %49 = load i8, ptr %sizeof_addr, align 2, !tbaa !27
  %conv104 = zext i8 %49 to i32
  %50 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %50, i32 0, i32 31
  %51 = load i8, ptr %sizeof_size, align 1, !tbaa !28
  %conv105 = zext i8 %51 to i32
  %add = add nsw i32 %conv104, %conv105
  %add106 = add nsw i32 %add, 4
  %52 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %add106 to i64
  %add.ptr = getelementptr inbounds i8, ptr %52, i64 %idx.ext
  store ptr %add.ptr, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #7
  %53 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  store i64 0, ptr %53, align 8, !tbaa !33
  %54 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %54, i32 0, i32 28
  %55 = load ptr, ptr %f, align 8, !tbaa !37
  %call107 = call zeroext i8 @H5F_sizeof_size(ptr noundef %55)
  %conv108 = zext i8 %call107 to i32
  %56 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext109 = sext i32 %conv108 to i64
  %add.ptr110 = getelementptr inbounds i8, ptr %56, i64 %idx.ext109
  store ptr %add.ptr110, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then103
  %57 = load i64, ptr %_i, align 8, !tbaa !33
  %58 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f111 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %58, i32 0, i32 28
  %59 = load ptr, ptr %f111, align 8, !tbaa !37
  %call112 = call zeroext i8 @H5F_sizeof_size(ptr noundef %59)
  %conv113 = zext i8 %call112 to i64
  %cmp114 = icmp ult i64 %57, %conv113
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  %61 = load i64, ptr %60, align 8, !tbaa !33
  %shl = shl i64 %61, 8
  %62 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr116 = getelementptr inbounds i8, ptr %62, i32 -1
  store ptr %incdec.ptr116, ptr %id.addr, align 8, !tbaa !4
  %63 = load i8, ptr %incdec.ptr116, align 1, !tbaa !12
  %conv117 = zext i8 %63 to i64
  %or = or i64 %shl, %conv117
  %64 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  store i64 %or, ptr %64, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i64, ptr %_i, align 8, !tbaa !33
  %inc = add i64 %65, 1
  store i64 %inc, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f118 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %66, i32 0, i32 28
  %67 = load ptr, ptr %f118, align 8, !tbaa !37
  %call119 = call zeroext i8 @H5F_sizeof_size(ptr noundef %67)
  %conv120 = zext i8 %call119 to i32
  %68 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext121 = sext i32 %conv120 to i64
  %add.ptr122 = getelementptr inbounds i8, ptr %68, i64 %idx.ext121
  store ptr %add.ptr122, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #7
  br label %if.end152

if.else:                                          ; preds = %if.then100
  %69 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %sizeof_addr123 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %69, i32 0, i32 32
  %70 = load i8, ptr %sizeof_addr123, align 2, !tbaa !27
  %conv124 = zext i8 %70 to i32
  %71 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext125 = sext i32 %conv124 to i64
  %add.ptr126 = getelementptr inbounds i8, ptr %71, i64 %idx.ext125
  store ptr %add.ptr126, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i127) #7
  %72 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  store i64 0, ptr %72, align 8, !tbaa !33
  %73 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f128 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %73, i32 0, i32 28
  %74 = load ptr, ptr %f128, align 8, !tbaa !37
  %call129 = call zeroext i8 @H5F_sizeof_size(ptr noundef %74)
  %conv130 = zext i8 %call129 to i32
  %75 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext131 = sext i32 %conv130 to i64
  %add.ptr132 = getelementptr inbounds i8, ptr %75, i64 %idx.ext131
  store ptr %add.ptr132, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i127, align 8, !tbaa !33
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc144, %if.else
  %76 = load i64, ptr %_i127, align 8, !tbaa !33
  %77 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f134 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %77, i32 0, i32 28
  %78 = load ptr, ptr %f134, align 8, !tbaa !37
  %call135 = call zeroext i8 @H5F_sizeof_size(ptr noundef %78)
  %conv136 = zext i8 %call135 to i64
  %cmp137 = icmp ult i64 %76, %conv136
  br i1 %cmp137, label %for.body139, label %for.end146

for.body139:                                      ; preds = %for.cond133
  %79 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  %80 = load i64, ptr %79, align 8, !tbaa !33
  %shl140 = shl i64 %80, 8
  %81 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr141 = getelementptr inbounds i8, ptr %81, i32 -1
  store ptr %incdec.ptr141, ptr %id.addr, align 8, !tbaa !4
  %82 = load i8, ptr %incdec.ptr141, align 1, !tbaa !12
  %conv142 = zext i8 %82 to i64
  %or143 = or i64 %shl140, %conv142
  %83 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  store i64 %or143, ptr %83, align 8, !tbaa !33
  br label %for.inc144

for.inc144:                                       ; preds = %for.body139
  %84 = load i64, ptr %_i127, align 8, !tbaa !33
  %inc145 = add i64 %84, 1
  store i64 %inc145, ptr %_i127, align 8, !tbaa !33
  br label %for.cond133

for.end146:                                       ; preds = %for.cond133
  %85 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f147 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %85, i32 0, i32 28
  %86 = load ptr, ptr %f147, align 8, !tbaa !37
  %call148 = call zeroext i8 @H5F_sizeof_size(ptr noundef %86)
  %conv149 = zext i8 %call148 to i32
  %87 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext150 = sext i32 %conv149 to i64
  %add.ptr151 = getelementptr inbounds i8, ptr %87, i64 %idx.ext150
  store ptr %add.ptr151, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i127) #7
  br label %if.end152

if.end152:                                        ; preds = %for.end146, %for.end
  br label %if.end249

if.else153:                                       ; preds = %cond.end98
  %88 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %88, i32 0, i32 37
  %89 = load ptr, ptr %huge_bt2, align 8, !tbaa !32
  %cmp154 = icmp eq ptr null, %89
  br i1 %cmp154, label %if.then156, label %if.end168

if.then156:                                       ; preds = %if.else153
  %90 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f157 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %90, i32 0, i32 28
  %91 = load ptr, ptr %f157, align 8, !tbaa !37
  %92 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr158 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %92, i32 0, i32 12
  %93 = load i64, ptr %huge_bt2_addr158, align 8, !tbaa !36
  %94 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f159 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %94, i32 0, i32 28
  %95 = load ptr, ptr %f159, align 8, !tbaa !37
  %call160 = call ptr @H5B2_open(ptr noundef %91, i64 noundef %93, ptr noundef %95)
  %96 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2161 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %96, i32 0, i32 37
  store ptr %call160, ptr %huge_bt2161, align 8, !tbaa !32
  %cmp162 = icmp eq ptr null, %call160
  br i1 %cmp162, label %if.then164, label %if.end167

if.then164:                                       ; preds = %if.then156
  %97 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %98 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %99 = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !33
  %call165 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_get_obj_len, i32 noundef 516, i64 noundef %97, i64 noundef %98, i64 noundef %99, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %100 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool166 = trunc i8 %100 to i1
  %frombool = zext i1 %tobool166 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end167:                                        ; preds = %if.then156
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.else153
  %101 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len169 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %101, i32 0, i32 2
  %102 = load i32, ptr %filter_len169, align 4, !tbaa !15
  %cmp170 = icmp ugt i32 %102, 0
  br i1 %cmp170, label %if.then172, label %if.else207

if.then172:                                       ; preds = %if.end168
  call void @llvm.lifetime.start.p0(i64 40, ptr %found_rec) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %search_rec) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i173) #7
  %id174 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  store i64 0, ptr %id174, align 8, !tbaa !55
  %103 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %103, i32 0, i32 39
  %104 = load i8, ptr %huge_id_size, align 8, !tbaa !30
  %conv175 = zext i8 %104 to i32
  %105 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext176 = sext i32 %conv175 to i64
  %add.ptr177 = getelementptr inbounds i8, ptr %105, i64 %idx.ext176
  store ptr %add.ptr177, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i173, align 8, !tbaa !33
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc190, %if.then172
  %106 = load i64, ptr %_i173, align 8, !tbaa !33
  %107 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size179 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %107, i32 0, i32 39
  %108 = load i8, ptr %huge_id_size179, align 8, !tbaa !30
  %conv180 = zext i8 %108 to i64
  %cmp181 = icmp ult i64 %106, %conv180
  br i1 %cmp181, label %for.body183, label %for.end192

for.body183:                                      ; preds = %for.cond178
  %id184 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  %109 = load i64, ptr %id184, align 8, !tbaa !55
  %shl185 = shl i64 %109, 8
  %110 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr186 = getelementptr inbounds i8, ptr %110, i32 -1
  store ptr %incdec.ptr186, ptr %id.addr, align 8, !tbaa !4
  %111 = load i8, ptr %incdec.ptr186, align 1, !tbaa !12
  %conv187 = zext i8 %111 to i64
  %or188 = or i64 %shl185, %conv187
  %id189 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  store i64 %or188, ptr %id189, align 8, !tbaa !55
  br label %for.inc190

for.inc190:                                       ; preds = %for.body183
  %112 = load i64, ptr %_i173, align 8, !tbaa !33
  %inc191 = add i64 %112, 1
  store i64 %inc191, ptr %_i173, align 8, !tbaa !33
  br label %for.cond178

for.end192:                                       ; preds = %for.cond178
  %113 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size193 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %113, i32 0, i32 39
  %114 = load i8, ptr %huge_id_size193, align 8, !tbaa !30
  %conv194 = zext i8 %114 to i32
  %115 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext195 = sext i32 %conv194 to i64
  %add.ptr196 = getelementptr inbounds i8, ptr %115, i64 %idx.ext195
  store ptr %add.ptr196, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i173) #7
  %116 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2197 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %116, i32 0, i32 37
  %117 = load ptr, ptr %huge_bt2197, align 8, !tbaa !32
  %call198 = call i32 @H5B2_find(ptr noundef %117, ptr noundef %search_rec, ptr noundef @H5HF__huge_bt2_filt_indir_found, ptr noundef %found_rec)
  %cmp199 = icmp ne i32 %call198, 1
  br i1 %cmp199, label %if.then201, label %if.end205

if.then201:                                       ; preds = %for.end192
  %118 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %119 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %120 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !33
  %call202 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_get_obj_len, i32 noundef 528, i64 noundef %118, i64 noundef %119, i64 noundef %120, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %121 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool203 = trunc i8 %121 to i1
  %frombool204 = zext i1 %tobool203 to i8
  store i8 %frombool204, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end205:                                        ; preds = %for.end192
  %obj_size = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %found_rec, i32 0, i32 3
  %122 = load i64, ptr %obj_size, align 8, !tbaa !54
  %123 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  store i64 %122, ptr %123, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then201, %if.end205
  call void @llvm.lifetime.end.p0(i64 40, ptr %search_rec) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %found_rec) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup251 [
    i32 0, label %cleanup.cont
    i32 8, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end248

if.else207:                                       ; preds = %if.end168
  call void @llvm.lifetime.start.p0(i64 24, ptr %found_rec208) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %search_rec209) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i210) #7
  %id211 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec209, i32 0, i32 2
  store i64 0, ptr %id211, align 8, !tbaa !59
  %124 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size212 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %124, i32 0, i32 39
  %125 = load i8, ptr %huge_id_size212, align 8, !tbaa !30
  %conv213 = zext i8 %125 to i32
  %126 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext214 = sext i32 %conv213 to i64
  %add.ptr215 = getelementptr inbounds i8, ptr %126, i64 %idx.ext214
  store ptr %add.ptr215, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i210, align 8, !tbaa !33
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc228, %if.else207
  %127 = load i64, ptr %_i210, align 8, !tbaa !33
  %128 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size217 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %128, i32 0, i32 39
  %129 = load i8, ptr %huge_id_size217, align 8, !tbaa !30
  %conv218 = zext i8 %129 to i64
  %cmp219 = icmp ult i64 %127, %conv218
  br i1 %cmp219, label %for.body221, label %for.end230

for.body221:                                      ; preds = %for.cond216
  %id222 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec209, i32 0, i32 2
  %130 = load i64, ptr %id222, align 8, !tbaa !59
  %shl223 = shl i64 %130, 8
  %131 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr224 = getelementptr inbounds i8, ptr %131, i32 -1
  store ptr %incdec.ptr224, ptr %id.addr, align 8, !tbaa !4
  %132 = load i8, ptr %incdec.ptr224, align 1, !tbaa !12
  %conv225 = zext i8 %132 to i64
  %or226 = or i64 %shl223, %conv225
  %id227 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec209, i32 0, i32 2
  store i64 %or226, ptr %id227, align 8, !tbaa !59
  br label %for.inc228

for.inc228:                                       ; preds = %for.body221
  %133 = load i64, ptr %_i210, align 8, !tbaa !33
  %inc229 = add i64 %133, 1
  store i64 %inc229, ptr %_i210, align 8, !tbaa !33
  br label %for.cond216

for.end230:                                       ; preds = %for.cond216
  %134 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size231 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %134, i32 0, i32 39
  %135 = load i8, ptr %huge_id_size231, align 8, !tbaa !30
  %conv232 = zext i8 %135 to i32
  %136 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext233 = sext i32 %conv232 to i64
  %add.ptr234 = getelementptr inbounds i8, ptr %136, i64 %idx.ext233
  store ptr %add.ptr234, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i210) #7
  %137 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2235 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %137, i32 0, i32 37
  %138 = load ptr, ptr %huge_bt2235, align 8, !tbaa !32
  %call236 = call i32 @H5B2_find(ptr noundef %138, ptr noundef %search_rec209, ptr noundef @H5HF__huge_bt2_indir_found, ptr noundef %found_rec208)
  %cmp237 = icmp ne i32 %call236, 1
  br i1 %cmp237, label %if.then239, label %if.end243

if.then239:                                       ; preds = %for.end230
  %139 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %140 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %141 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !33
  %call240 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_get_obj_len, i32 noundef 542, i64 noundef %139, i64 noundef %140, i64 noundef %141, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %142 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool241 = trunc i8 %142 to i1
  %frombool242 = zext i1 %tobool241 to i8
  store i8 %frombool242, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

if.end243:                                        ; preds = %for.end230
  %len = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %found_rec208, i32 0, i32 1
  %143 = load i64, ptr %len, align 8, !tbaa !58
  %144 = load ptr, ptr %obj_len_p.addr, align 8, !tbaa !4
  store i64 %143, ptr %144, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

cleanup244:                                       ; preds = %if.then239, %if.end243
  call void @llvm.lifetime.end.p0(i64 24, ptr %search_rec209) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %found_rec208) #7
  %cleanup.dest246 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest246, label %cleanup251 [
    i32 0, label %cleanup.cont247
    i32 8, label %done
  ]

cleanup.cont247:                                  ; preds = %cleanup244
  br label %if.end248

if.end248:                                        ; preds = %cleanup.cont247, %cleanup.cont
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end152
  br label %done

done:                                             ; preds = %if.end249, %cleanup244, %cleanup, %if.then164
  br label %if.end250

if.end250:                                        ; preds = %done, %lor.lhs.false79
  %145 = load i32, ptr %ret_value, align 4, !tbaa !34
  store i32 %145, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup251

cleanup251:                                       ; preds = %if.end250, %cleanup244, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  %146 = load i32, ptr %retval, align 4
  ret i32 %146
}

declare i32 @H5B2_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @H5HF__huge_bt2_filt_indir_found(ptr noundef, ptr noundef) #4

declare i32 @H5HF__huge_bt2_indir_found(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_get_obj_off(ptr noundef %hdr, ptr noundef %id, ptr noundef %obj_off_p) #0 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %obj_off_p.addr = alloca ptr, align 8
  %obj_addr = alloca i64, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %found_rec = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %search_rec = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %_i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %found_rec150 = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %search_rec151 = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %_i152 = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store ptr %obj_off_p, ptr %obj_off_p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_addr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_get_obj_off.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([23 x i8], ptr @__func__.H5HF__huge_get_obj_off, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 571, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_off) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_get_obj_off.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end193, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 576, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_off) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 12
  %37 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp86 = icmp ne i64 %37, -1
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end85
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 577, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_off) #6
  unreachable

38:                                               ; No predecessors!
  br label %cond.end90

cond.end90:                                       ; preds = %38, %cond.true88
  %39 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %tobool91 = icmp ne ptr %39, null
  br i1 %tobool91, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %cond.end90
  br label %cond.end94

cond.false93:                                     ; preds = %cond.end90
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 578, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_off) #6
  unreachable

40:                                               ; No predecessors!
  br label %cond.end94

cond.end94:                                       ; preds = %40, %cond.true92
  %41 = load ptr, ptr %obj_off_p.addr, align 8, !tbaa !4
  %tobool95 = icmp ne ptr %41, null
  br i1 %tobool95, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.end94
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end94
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.2, i32 noundef 579, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_off) #6
  unreachable

42:                                               ; No predecessors!
  br label %cond.end98

cond.end98:                                       ; preds = %42, %cond.true96
  %43 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %id.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %44, i32 0, i32 40
  %45 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool99 = trunc i8 %45 to i1
  br i1 %tobool99, label %if.then100, label %if.else

if.then100:                                       ; preds = %cond.end98
  %46 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %46, i32 0, i32 28
  %47 = load ptr, ptr %f, align 8, !tbaa !37
  call void @H5F_addr_decode(ptr noundef %47, ptr noundef %id.addr, ptr noundef %obj_addr)
  br label %if.end192

if.else:                                          ; preds = %cond.end98
  %48 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr101 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %48, i32 0, i32 12
  %49 = load i64, ptr %huge_bt2_addr101, align 8, !tbaa !36
  %cmp102 = icmp ne i64 %49, -1
  br i1 %cmp102, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %if.else
  br label %cond.end106

cond.false105:                                    ; preds = %if.else
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 591, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_get_obj_off) #6
  unreachable

50:                                               ; No predecessors!
  br label %cond.end106

cond.end106:                                      ; preds = %50, %cond.true104
  %51 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %51, i32 0, i32 37
  %52 = load ptr, ptr %huge_bt2, align 8, !tbaa !32
  %cmp107 = icmp eq ptr null, %52
  br i1 %cmp107, label %if.then109, label %if.end121

if.then109:                                       ; preds = %cond.end106
  %53 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f110 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %53, i32 0, i32 28
  %54 = load ptr, ptr %f110, align 8, !tbaa !37
  %55 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr111 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %55, i32 0, i32 12
  %56 = load i64, ptr %huge_bt2_addr111, align 8, !tbaa !36
  %57 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f112 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %57, i32 0, i32 28
  %58 = load ptr, ptr %f112, align 8, !tbaa !37
  %call113 = call ptr @H5B2_open(ptr noundef %54, i64 noundef %56, ptr noundef %58)
  %59 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2114 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %59, i32 0, i32 37
  store ptr %call113, ptr %huge_bt2114, align 8, !tbaa !32
  %cmp115 = icmp eq ptr null, %call113
  br i1 %cmp115, label %if.then117, label %if.end120

if.then117:                                       ; preds = %if.then109
  %60 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %61 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %62 = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !33
  %call118 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_get_obj_off, i32 noundef 598, i64 noundef %60, i64 noundef %61, i64 noundef %62, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %63 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool119 = trunc i8 %63 to i1
  %frombool = zext i1 %tobool119 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end120:                                        ; preds = %if.then109
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %cond.end106
  %64 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp122 = icmp ugt i32 %65, 0
  br i1 %cmp122, label %if.then124, label %if.else149

if.then124:                                       ; preds = %if.end121
  call void @llvm.lifetime.start.p0(i64 40, ptr %found_rec) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %search_rec) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #7
  %id125 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  store i64 0, ptr %id125, align 8, !tbaa !55
  %66 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %66, i32 0, i32 39
  %67 = load i8, ptr %huge_id_size, align 8, !tbaa !30
  %conv126 = zext i8 %67 to i32
  %68 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %conv126 to i64
  %add.ptr = getelementptr inbounds i8, ptr %68, i64 %idx.ext
  store ptr %add.ptr, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then124
  %69 = load i64, ptr %_i, align 8, !tbaa !33
  %70 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size127 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %70, i32 0, i32 39
  %71 = load i8, ptr %huge_id_size127, align 8, !tbaa !30
  %conv128 = zext i8 %71 to i64
  %cmp129 = icmp ult i64 %69, %conv128
  br i1 %cmp129, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %id131 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  %72 = load i64, ptr %id131, align 8, !tbaa !55
  %shl = shl i64 %72, 8
  %73 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr132 = getelementptr inbounds i8, ptr %73, i32 -1
  store ptr %incdec.ptr132, ptr %id.addr, align 8, !tbaa !4
  %74 = load i8, ptr %incdec.ptr132, align 1, !tbaa !12
  %conv133 = zext i8 %74 to i64
  %or = or i64 %shl, %conv133
  %id134 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  store i64 %or, ptr %id134, align 8, !tbaa !55
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %75 = load i64, ptr %_i, align 8, !tbaa !33
  %inc = add i64 %75, 1
  store i64 %inc, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size135 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %76, i32 0, i32 39
  %77 = load i8, ptr %huge_id_size135, align 8, !tbaa !30
  %conv136 = zext i8 %77 to i32
  %78 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext137 = sext i32 %conv136 to i64
  %add.ptr138 = getelementptr inbounds i8, ptr %78, i64 %idx.ext137
  store ptr %add.ptr138, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #7
  %79 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2139 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %79, i32 0, i32 37
  %80 = load ptr, ptr %huge_bt2139, align 8, !tbaa !32
  %call140 = call i32 @H5B2_find(ptr noundef %80, ptr noundef %search_rec, ptr noundef @H5HF__huge_bt2_filt_indir_found, ptr noundef %found_rec)
  %cmp141 = icmp ne i32 %call140, 1
  br i1 %cmp141, label %if.then143, label %if.end147

if.then143:                                       ; preds = %for.end
  %81 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %82 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %83 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !33
  %call144 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_get_obj_off, i32 noundef 610, i64 noundef %81, i64 noundef %82, i64 noundef %83, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %84 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool145 = trunc i8 %84 to i1
  %frombool146 = zext i1 %tobool145 to i8
  store i8 %frombool146, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end147:                                        ; preds = %for.end
  %addr = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %found_rec, i32 0, i32 0
  %85 = load i64, ptr %addr, align 8, !tbaa !50
  store i64 %85, ptr %obj_addr, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then143, %if.end147
  call void @llvm.lifetime.end.p0(i64 40, ptr %search_rec) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %found_rec) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup194 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end191

if.else149:                                       ; preds = %if.end121
  call void @llvm.lifetime.start.p0(i64 24, ptr %found_rec150) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %search_rec151) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i152) #7
  %id153 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec151, i32 0, i32 2
  store i64 0, ptr %id153, align 8, !tbaa !59
  %86 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size154 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %86, i32 0, i32 39
  %87 = load i8, ptr %huge_id_size154, align 8, !tbaa !30
  %conv155 = zext i8 %87 to i32
  %88 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext156 = sext i32 %conv155 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %88, i64 %idx.ext156
  store ptr %add.ptr157, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i152, align 8, !tbaa !33
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc170, %if.else149
  %89 = load i64, ptr %_i152, align 8, !tbaa !33
  %90 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size159 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %90, i32 0, i32 39
  %91 = load i8, ptr %huge_id_size159, align 8, !tbaa !30
  %conv160 = zext i8 %91 to i64
  %cmp161 = icmp ult i64 %89, %conv160
  br i1 %cmp161, label %for.body163, label %for.end172

for.body163:                                      ; preds = %for.cond158
  %id164 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec151, i32 0, i32 2
  %92 = load i64, ptr %id164, align 8, !tbaa !59
  %shl165 = shl i64 %92, 8
  %93 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr166 = getelementptr inbounds i8, ptr %93, i32 -1
  store ptr %incdec.ptr166, ptr %id.addr, align 8, !tbaa !4
  %94 = load i8, ptr %incdec.ptr166, align 1, !tbaa !12
  %conv167 = zext i8 %94 to i64
  %or168 = or i64 %shl165, %conv167
  %id169 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec151, i32 0, i32 2
  store i64 %or168, ptr %id169, align 8, !tbaa !59
  br label %for.inc170

for.inc170:                                       ; preds = %for.body163
  %95 = load i64, ptr %_i152, align 8, !tbaa !33
  %inc171 = add i64 %95, 1
  store i64 %inc171, ptr %_i152, align 8, !tbaa !33
  br label %for.cond158

for.end172:                                       ; preds = %for.cond158
  %96 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size173 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %96, i32 0, i32 39
  %97 = load i8, ptr %huge_id_size173, align 8, !tbaa !30
  %conv174 = zext i8 %97 to i32
  %98 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext175 = sext i32 %conv174 to i64
  %add.ptr176 = getelementptr inbounds i8, ptr %98, i64 %idx.ext175
  store ptr %add.ptr176, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i152) #7
  %99 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2177 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %99, i32 0, i32 37
  %100 = load ptr, ptr %huge_bt2177, align 8, !tbaa !32
  %call178 = call i32 @H5B2_find(ptr noundef %100, ptr noundef %search_rec151, ptr noundef @H5HF__huge_bt2_indir_found, ptr noundef %found_rec150)
  %cmp179 = icmp ne i32 %call178, 1
  br i1 %cmp179, label %if.then181, label %if.end185

if.then181:                                       ; preds = %for.end172
  %101 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %102 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %103 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !33
  %call182 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_get_obj_off, i32 noundef 624, i64 noundef %101, i64 noundef %102, i64 noundef %103, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %104 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool183 = trunc i8 %104 to i1
  %frombool184 = zext i1 %tobool183 to i8
  store i8 %frombool184, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup187

if.end185:                                        ; preds = %for.end172
  %addr186 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %found_rec150, i32 0, i32 0
  %105 = load i64, ptr %addr186, align 8, !tbaa !56
  store i64 %105, ptr %obj_addr, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup187

cleanup187:                                       ; preds = %if.then181, %if.end185
  call void @llvm.lifetime.end.p0(i64 24, ptr %search_rec151) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %found_rec150) #7
  %cleanup.dest189 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest189, label %cleanup194 [
    i32 0, label %cleanup.cont190
    i32 2, label %done
  ]

cleanup.cont190:                                  ; preds = %cleanup187
  br label %if.end191

if.end191:                                        ; preds = %cleanup.cont190, %cleanup.cont
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then100
  %106 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %107 = load ptr, ptr %obj_off_p.addr, align 8, !tbaa !4
  store i64 %106, ptr %107, align 8, !tbaa !49
  br label %done

done:                                             ; preds = %if.end192, %cleanup187, %cleanup, %if.then117
  br label %if.end193

if.end193:                                        ; preds = %done, %lor.lhs.false79
  %108 = load i32, ptr %ret_value, align 4, !tbaa !34
  store i32 %108, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup194

cleanup194:                                       ; preds = %if.end193, %cleanup187, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_addr) #7
  %109 = load i32, ptr %retval, align 4
  ret i32 %109
}

declare void @H5F_addr_decode(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_write(ptr noundef %hdr, ptr noundef %id, ptr noundef %obj) #0 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %obj_addr = alloca i64, align 8
  %obj_size = alloca i64, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %_i = alloca i64, align 8
  %found_rec = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %search_rec = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %_i138 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_addr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_size) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_write.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @__func__.H5HF__huge_write, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 807, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_write) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_write.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end182, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 812, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_write) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %36, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 813, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_write) #6
  unreachable

37:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %37, %cond.true87
  %38 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %tobool90 = icmp ne ptr %38, null
  br i1 %tobool90, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %cond.end89
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end89
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 814, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_write) #6
  unreachable

39:                                               ; No predecessors!
  br label %cond.end93

cond.end93:                                       ; preds = %39, %cond.true91
  %40 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp94 = icmp ugt i32 %41, 0
  br i1 %cmp94, label %if.then96, label %if.end99

if.then96:                                        ; preds = %cond.end93
  %42 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %43 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %44 = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !33
  %call97 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_write, i32 noundef 818, i64 noundef %42, i64 noundef %43, i64 noundef %44, ptr noundef @.str.23)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %45 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool98 = trunc i8 %45 to i1
  %frombool = zext i1 %tobool98 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end99:                                         ; preds = %cond.end93
  %46 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %id.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %47, i32 0, i32 40
  %48 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool100 = trunc i8 %48 to i1
  br i1 %tobool100, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.end99
  %49 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %49, i32 0, i32 28
  %50 = load ptr, ptr %f, align 8, !tbaa !37
  call void @H5F_addr_decode(ptr noundef %50, ptr noundef %id.addr, ptr noundef %obj_addr)
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #7
  store i64 0, ptr %obj_size, align 8, !tbaa !33
  %51 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f102 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %51, i32 0, i32 28
  %52 = load ptr, ptr %f102, align 8, !tbaa !37
  %call103 = call zeroext i8 @H5F_sizeof_size(ptr noundef %52)
  %conv104 = zext i8 %call103 to i32
  %53 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %conv104 to i64
  %add.ptr = getelementptr inbounds i8, ptr %53, i64 %idx.ext
  store ptr %add.ptr, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then101
  %54 = load i64, ptr %_i, align 8, !tbaa !33
  %55 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f105 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %55, i32 0, i32 28
  %56 = load ptr, ptr %f105, align 8, !tbaa !37
  %call106 = call zeroext i8 @H5F_sizeof_size(ptr noundef %56)
  %conv107 = zext i8 %call106 to i64
  %cmp108 = icmp ult i64 %54, %conv107
  br i1 %cmp108, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i64, ptr %obj_size, align 8, !tbaa !33
  %shl = shl i64 %57, 8
  %58 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr110 = getelementptr inbounds i8, ptr %58, i32 -1
  store ptr %incdec.ptr110, ptr %id.addr, align 8, !tbaa !4
  %59 = load i8, ptr %incdec.ptr110, align 1, !tbaa !12
  %conv111 = zext i8 %59 to i64
  %or = or i64 %shl, %conv111
  store i64 %or, ptr %obj_size, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i64, ptr %_i, align 8, !tbaa !33
  %inc = add i64 %60, 1
  store i64 %inc, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f112 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %61, i32 0, i32 28
  %62 = load ptr, ptr %f112, align 8, !tbaa !37
  %call113 = call zeroext i8 @H5F_sizeof_size(ptr noundef %62)
  %conv114 = zext i8 %call113 to i32
  %63 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext115 = sext i32 %conv114 to i64
  %add.ptr116 = getelementptr inbounds i8, ptr %63, i64 %idx.ext115
  store ptr %add.ptr116, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #7
  br label %if.end172

if.else:                                          ; preds = %if.end99
  call void @llvm.lifetime.start.p0(i64 24, ptr %found_rec) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %search_rec) #7
  %64 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %64, i32 0, i32 12
  %65 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp117 = icmp ne i64 %65, -1
  br i1 %cmp117, label %cond.true119, label %cond.false120

cond.true119:                                     ; preds = %if.else
  br label %cond.end121

cond.false120:                                    ; preds = %if.else
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 834, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_write) #6
  unreachable

66:                                               ; No predecessors!
  br label %cond.end121

cond.end121:                                      ; preds = %66, %cond.true119
  %67 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %67, i32 0, i32 37
  %68 = load ptr, ptr %huge_bt2, align 8, !tbaa !32
  %cmp122 = icmp eq ptr null, %68
  br i1 %cmp122, label %if.then124, label %if.end137

if.then124:                                       ; preds = %cond.end121
  %69 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f125 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %69, i32 0, i32 28
  %70 = load ptr, ptr %f125, align 8, !tbaa !37
  %71 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr126 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %71, i32 0, i32 12
  %72 = load i64, ptr %huge_bt2_addr126, align 8, !tbaa !36
  %73 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f127 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %73, i32 0, i32 28
  %74 = load ptr, ptr %f127, align 8, !tbaa !37
  %call128 = call ptr @H5B2_open(ptr noundef %70, i64 noundef %72, ptr noundef %74)
  %75 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2129 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %75, i32 0, i32 37
  store ptr %call128, ptr %huge_bt2129, align 8, !tbaa !32
  %cmp130 = icmp eq ptr null, %call128
  br i1 %cmp130, label %if.then132, label %if.end136

if.then132:                                       ; preds = %if.then124
  %76 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %77 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %78 = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !33
  %call133 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_write, i32 noundef 841, i64 noundef %76, i64 noundef %77, i64 noundef %78, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %79 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool134 = trunc i8 %79 to i1
  %frombool135 = zext i1 %tobool134 to i8
  store i8 %frombool135, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end136:                                        ; preds = %if.then124
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %cond.end121
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i138) #7
  %id139 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec, i32 0, i32 2
  store i64 0, ptr %id139, align 8, !tbaa !59
  %80 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %80, i32 0, i32 39
  %81 = load i8, ptr %huge_id_size, align 8, !tbaa !30
  %conv140 = zext i8 %81 to i32
  %82 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext141 = sext i32 %conv140 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %82, i64 %idx.ext141
  store ptr %add.ptr142, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i138, align 8, !tbaa !33
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc155, %if.end137
  %83 = load i64, ptr %_i138, align 8, !tbaa !33
  %84 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size144 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %84, i32 0, i32 39
  %85 = load i8, ptr %huge_id_size144, align 8, !tbaa !30
  %conv145 = zext i8 %85 to i64
  %cmp146 = icmp ult i64 %83, %conv145
  br i1 %cmp146, label %for.body148, label %for.end157

for.body148:                                      ; preds = %for.cond143
  %id149 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec, i32 0, i32 2
  %86 = load i64, ptr %id149, align 8, !tbaa !59
  %shl150 = shl i64 %86, 8
  %87 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr151 = getelementptr inbounds i8, ptr %87, i32 -1
  store ptr %incdec.ptr151, ptr %id.addr, align 8, !tbaa !4
  %88 = load i8, ptr %incdec.ptr151, align 1, !tbaa !12
  %conv152 = zext i8 %88 to i64
  %or153 = or i64 %shl150, %conv152
  %id154 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec, i32 0, i32 2
  store i64 %or153, ptr %id154, align 8, !tbaa !59
  br label %for.inc155

for.inc155:                                       ; preds = %for.body148
  %89 = load i64, ptr %_i138, align 8, !tbaa !33
  %inc156 = add i64 %89, 1
  store i64 %inc156, ptr %_i138, align 8, !tbaa !33
  br label %for.cond143

for.end157:                                       ; preds = %for.cond143
  %90 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size158 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %90, i32 0, i32 39
  %91 = load i8, ptr %huge_id_size158, align 8, !tbaa !30
  %conv159 = zext i8 %91 to i32
  %92 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext160 = sext i32 %conv159 to i64
  %add.ptr161 = getelementptr inbounds i8, ptr %92, i64 %idx.ext160
  store ptr %add.ptr161, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i138) #7
  %93 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2162 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %93, i32 0, i32 37
  %94 = load ptr, ptr %huge_bt2162, align 8, !tbaa !32
  %call163 = call i32 @H5B2_find(ptr noundef %94, ptr noundef %search_rec, ptr noundef @H5HF__huge_bt2_indir_found, ptr noundef %found_rec)
  %cmp164 = icmp ne i32 %call163, 1
  br i1 %cmp164, label %if.then166, label %if.end170

if.then166:                                       ; preds = %for.end157
  %95 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %96 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %97 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !33
  %call167 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_write, i32 noundef 849, i64 noundef %95, i64 noundef %96, i64 noundef %97, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %98 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool168 = trunc i8 %98 to i1
  %frombool169 = zext i1 %tobool168 to i8
  store i8 %frombool169, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end170:                                        ; preds = %for.end157
  %addr = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %found_rec, i32 0, i32 0
  %99 = load i64, ptr %addr, align 8, !tbaa !56
  store i64 %99, ptr %obj_addr, align 8, !tbaa !33
  %len = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %found_rec, i32 0, i32 1
  %100 = load i64, ptr %len, align 8, !tbaa !58
  store i64 %100, ptr %obj_size, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then166, %if.then132, %if.end170
  call void @llvm.lifetime.end.p0(i64 24, ptr %search_rec) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %found_rec) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup183 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end172

if.end172:                                        ; preds = %cleanup.cont, %for.end
  %101 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f173 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %101, i32 0, i32 28
  %102 = load ptr, ptr %f173, align 8, !tbaa !37
  %103 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %104 = load i64, ptr %obj_size, align 8, !tbaa !33
  %105 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call174 = call i32 @H5F_block_write(ptr noundef %102, i32 noundef 3, i64 noundef %103, i64 noundef %104, ptr noundef %105)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.then177, label %if.end181

if.then177:                                       ; preds = %if.end172
  %106 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %107 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %108 = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !33
  %call178 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_write, i32 noundef 859, i64 noundef %106, i64 noundef %107, i64 noundef %108, ptr noundef @.str.13)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %109 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool179 = trunc i8 %109 to i1
  %frombool180 = zext i1 %tobool179 to i8
  store i8 %frombool180, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end181:                                        ; preds = %if.end172
  br label %done

done:                                             ; preds = %if.end181, %cleanup, %if.then177, %if.then96
  br label %if.end182

if.end182:                                        ; preds = %done, %lor.lhs.false79
  %110 = load i32, ptr %ret_value, align 4, !tbaa !34
  store i32 %110, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup183

cleanup183:                                       ; preds = %if.end182, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_addr) #7
  %111 = load i32, ptr %retval, align 4
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_read(ptr noundef %hdr, ptr noundef %id, ptr noundef %obj) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_read.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_read, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 882, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_read) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_read.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end101, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 887, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_read) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %36, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 888, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_read) #6
  unreachable

37:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %37, %cond.true87
  %38 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %tobool90 = icmp ne ptr %38, null
  br i1 %tobool90, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %cond.end89
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end89
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 889, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_read) #6
  unreachable

39:                                               ; No predecessors!
  br label %cond.end93

cond.end93:                                       ; preds = %39, %cond.true91
  %40 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %obj.addr, align 8, !tbaa !4
  %call94 = call i32 @H5HF__huge_op_real(ptr noundef %40, ptr noundef %41, i1 noundef zeroext true, ptr noundef null, ptr noundef %42)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %cond.end93
  %43 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %44 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %45 = load i64, ptr @H5E_CANTOPERATE_g, align 8, !tbaa !33
  %call98 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_read, i32 noundef 893, i64 noundef %43, i64 noundef %44, i64 noundef %45, ptr noundef @.str.24)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %46 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool99 = trunc i8 %46 to i1
  %frombool = zext i1 %tobool99 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end100:                                        ; preds = %cond.end93
  br label %done

done:                                             ; preds = %if.end100, %if.then97
  br label %if.end101

if.end101:                                        ; preds = %done, %lor.lhs.false79
  %47 = load i32, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @H5HF__huge_op_real(ptr noundef %hdr, ptr noundef %id, i1 noundef zeroext %is_read, ptr noundef %op, ptr noundef %op_data) #0 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %is_read.addr = alloca i8, align 1
  %op.addr = alloca ptr, align 8
  %op_data.addr = alloca ptr, align 8
  %read_buf = alloca ptr, align 8
  %obj_addr = alloca i64, align 8
  %obj_size = alloca i64, align 8
  %filter_mask = alloca i32, align 4
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %_i = alloca i64, align 8
  %found_rec = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %search_rec = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %_i161 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %found_rec197 = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %search_rec198 = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %_i199 = alloca i64, align 8
  %filter_cb = alloca %struct.H5Z_cb_t, align 8
  %read_size = alloca i64, align 8
  %nbytes = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  %frombool = zext i1 %is_read to i8
  store i8 %frombool, ptr %is_read.addr, align 1, !tbaa !8
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %op_data, ptr %op_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_buf) #7
  store ptr null, ptr %read_buf, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_addr) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_size) #7
  store i64 0, ptr %obj_size, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 4, ptr %filter_mask) #7
  store i32 0, ptr %filter_mask, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_op_real.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([19 x i8], ptr @__func__.H5HF__huge_op_real, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 659, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op_real) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_op_real.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end311, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 664, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op_real) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %36, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 665, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op_real) #6
  unreachable

37:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %37, %cond.true87
  %38 = load i8, ptr %is_read.addr, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool90 = trunc i8 %38 to i1
  br i1 %tobool90, label %cond.true94, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %cond.end89
  %39 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %tobool93 = icmp ne ptr %39, null
  br i1 %tobool93, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %lor.lhs.false92, %cond.end89
  br label %cond.end96

cond.false95:                                     ; preds = %lor.lhs.false92
  call void @__assert_fail(ptr noundef @.str.34, ptr noundef @.str.2, i32 noundef 666, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op_real) #6
  unreachable

40:                                               ; No predecessors!
  br label %cond.end96

cond.end96:                                       ; preds = %40, %cond.true94
  %41 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %id.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %42, i32 0, i32 40
  %43 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool97 = trunc i8 %43 to i1
  br i1 %tobool97, label %if.then98, label %if.else

if.then98:                                        ; preds = %cond.end96
  %44 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %44, i32 0, i32 28
  %45 = load ptr, ptr %f, align 8, !tbaa !37
  call void @H5F_addr_decode(ptr noundef %45, ptr noundef %id.addr, ptr noundef %obj_addr)
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #7
  store i64 0, ptr %obj_size, align 8, !tbaa !33
  %46 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f99 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %46, i32 0, i32 28
  %47 = load ptr, ptr %f99, align 8, !tbaa !37
  %call100 = call zeroext i8 @H5F_sizeof_size(ptr noundef %47)
  %conv101 = zext i8 %call100 to i32
  %48 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %conv101 to i64
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 %idx.ext
  store ptr %add.ptr, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then98
  %49 = load i64, ptr %_i, align 8, !tbaa !33
  %50 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f102 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %50, i32 0, i32 28
  %51 = load ptr, ptr %f102, align 8, !tbaa !37
  %call103 = call zeroext i8 @H5F_sizeof_size(ptr noundef %51)
  %conv104 = zext i8 %call103 to i64
  %cmp105 = icmp ult i64 %49, %conv104
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load i64, ptr %obj_size, align 8, !tbaa !33
  %shl = shl i64 %52, 8
  %53 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr107 = getelementptr inbounds i8, ptr %53, i32 -1
  store ptr %incdec.ptr107, ptr %id.addr, align 8, !tbaa !4
  %54 = load i8, ptr %incdec.ptr107, align 1, !tbaa !12
  %conv108 = zext i8 %54 to i64
  %or = or i64 %shl, %conv108
  store i64 %or, ptr %obj_size, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load i64, ptr %_i, align 8, !tbaa !33
  %inc = add i64 %55, 1
  store i64 %inc, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f109 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %56, i32 0, i32 28
  %57 = load ptr, ptr %f109, align 8, !tbaa !37
  %call110 = call zeroext i8 @H5F_sizeof_size(ptr noundef %57)
  %conv111 = zext i8 %call110 to i32
  %58 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext112 = sext i32 %conv111 to i64
  %add.ptr113 = getelementptr inbounds i8, ptr %58, i64 %idx.ext112
  store ptr %add.ptr113, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #7
  %59 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %59, i32 0, i32 2
  %60 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp114 = icmp ugt i32 %60, 0
  br i1 %cmp114, label %if.then116, label %if.end135

if.then116:                                       ; preds = %for.end
  %61 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %62 = load i8, ptr %61, align 1, !tbaa !12
  %conv117 = zext i8 %62 to i32
  %and118 = and i32 %conv117, 255
  store i32 %and118, ptr %filter_mask, align 4, !tbaa !34
  %63 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr119 = getelementptr inbounds i8, ptr %63, i32 1
  store ptr %incdec.ptr119, ptr %id.addr, align 8, !tbaa !4
  %64 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %65 = load i8, ptr %64, align 1, !tbaa !12
  %conv120 = zext i8 %65 to i32
  %and121 = and i32 %conv120, 255
  %shl122 = shl i32 %and121, 8
  %66 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %or123 = or i32 %66, %shl122
  store i32 %or123, ptr %filter_mask, align 4, !tbaa !34
  %67 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr124 = getelementptr inbounds i8, ptr %67, i32 1
  store ptr %incdec.ptr124, ptr %id.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %69 = load i8, ptr %68, align 1, !tbaa !12
  %conv125 = zext i8 %69 to i32
  %and126 = and i32 %conv125, 255
  %shl127 = shl i32 %and126, 16
  %70 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %or128 = or i32 %70, %shl127
  store i32 %or128, ptr %filter_mask, align 4, !tbaa !34
  %71 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr129 = getelementptr inbounds i8, ptr %71, i32 1
  store ptr %incdec.ptr129, ptr %id.addr, align 8, !tbaa !4
  %72 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %73 = load i8, ptr %72, align 1, !tbaa !12
  %conv130 = zext i8 %73 to i32
  %and131 = and i32 %conv130, 255
  %shl132 = shl i32 %and131, 24
  %74 = load i32, ptr %filter_mask, align 4, !tbaa !34
  %or133 = or i32 %74, %shl132
  store i32 %or133, ptr %filter_mask, align 4, !tbaa !34
  %75 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr134 = getelementptr inbounds i8, ptr %75, i32 1
  store ptr %incdec.ptr134, ptr %id.addr, align 8, !tbaa !4
  br label %if.end135

if.end135:                                        ; preds = %if.then116, %for.end
  br label %if.end240

if.else:                                          ; preds = %cond.end96
  %76 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %76, i32 0, i32 12
  %77 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp136 = icmp ne i64 %77, -1
  br i1 %cmp136, label %cond.true138, label %cond.false139

cond.true138:                                     ; preds = %if.else
  br label %cond.end140

cond.false139:                                    ; preds = %if.else
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 683, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op_real) #6
  unreachable

78:                                               ; No predecessors!
  br label %cond.end140

cond.end140:                                      ; preds = %78, %cond.true138
  %79 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %79, i32 0, i32 37
  %80 = load ptr, ptr %huge_bt2, align 8, !tbaa !32
  %cmp141 = icmp eq ptr null, %80
  br i1 %cmp141, label %if.then143, label %if.end156

if.then143:                                       ; preds = %cond.end140
  %81 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f144 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %81, i32 0, i32 28
  %82 = load ptr, ptr %f144, align 8, !tbaa !37
  %83 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr145 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %83, i32 0, i32 12
  %84 = load i64, ptr %huge_bt2_addr145, align 8, !tbaa !36
  %85 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f146 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %85, i32 0, i32 28
  %86 = load ptr, ptr %f146, align 8, !tbaa !37
  %call147 = call ptr @H5B2_open(ptr noundef %82, i64 noundef %84, ptr noundef %86)
  %87 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2148 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %87, i32 0, i32 37
  store ptr %call147, ptr %huge_bt2148, align 8, !tbaa !32
  %cmp149 = icmp eq ptr null, %call147
  br i1 %cmp149, label %if.then151, label %if.end155

if.then151:                                       ; preds = %if.then143
  %88 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %89 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %90 = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !33
  %call152 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op_real, i32 noundef 690, i64 noundef %88, i64 noundef %89, i64 noundef %90, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %91 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool153 = trunc i8 %91 to i1
  %frombool154 = zext i1 %tobool153 to i8
  store i8 %frombool154, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end155:                                        ; preds = %if.then143
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %cond.end140
  %92 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len157 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %92, i32 0, i32 2
  %93 = load i32, ptr %filter_len157, align 4, !tbaa !15
  %cmp158 = icmp ugt i32 %93, 0
  br i1 %cmp158, label %if.then160, label %if.else196

if.then160:                                       ; preds = %if.end156
  call void @llvm.lifetime.start.p0(i64 40, ptr %found_rec) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %search_rec) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i161) #7
  %id162 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  store i64 0, ptr %id162, align 8, !tbaa !55
  %94 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %94, i32 0, i32 39
  %95 = load i8, ptr %huge_id_size, align 8, !tbaa !30
  %conv163 = zext i8 %95 to i32
  %96 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext164 = sext i32 %conv163 to i64
  %add.ptr165 = getelementptr inbounds i8, ptr %96, i64 %idx.ext164
  store ptr %add.ptr165, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i161, align 8, !tbaa !33
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc178, %if.then160
  %97 = load i64, ptr %_i161, align 8, !tbaa !33
  %98 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size167 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %98, i32 0, i32 39
  %99 = load i8, ptr %huge_id_size167, align 8, !tbaa !30
  %conv168 = zext i8 %99 to i64
  %cmp169 = icmp ult i64 %97, %conv168
  br i1 %cmp169, label %for.body171, label %for.end180

for.body171:                                      ; preds = %for.cond166
  %id172 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  %100 = load i64, ptr %id172, align 8, !tbaa !55
  %shl173 = shl i64 %100, 8
  %101 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr174 = getelementptr inbounds i8, ptr %101, i32 -1
  store ptr %incdec.ptr174, ptr %id.addr, align 8, !tbaa !4
  %102 = load i8, ptr %incdec.ptr174, align 1, !tbaa !12
  %conv175 = zext i8 %102 to i64
  %or176 = or i64 %shl173, %conv175
  %id177 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec, i32 0, i32 4
  store i64 %or176, ptr %id177, align 8, !tbaa !55
  br label %for.inc178

for.inc178:                                       ; preds = %for.body171
  %103 = load i64, ptr %_i161, align 8, !tbaa !33
  %inc179 = add i64 %103, 1
  store i64 %inc179, ptr %_i161, align 8, !tbaa !33
  br label %for.cond166

for.end180:                                       ; preds = %for.cond166
  %104 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size181 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %104, i32 0, i32 39
  %105 = load i8, ptr %huge_id_size181, align 8, !tbaa !30
  %conv182 = zext i8 %105 to i32
  %106 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext183 = sext i32 %conv182 to i64
  %add.ptr184 = getelementptr inbounds i8, ptr %106, i64 %idx.ext183
  store ptr %add.ptr184, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i161) #7
  %107 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2185 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %107, i32 0, i32 37
  %108 = load ptr, ptr %huge_bt2185, align 8, !tbaa !32
  %call186 = call i32 @H5B2_find(ptr noundef %108, ptr noundef %search_rec, ptr noundef @H5HF__huge_bt2_filt_indir_found, ptr noundef %found_rec)
  %cmp187 = icmp ne i32 %call186, 1
  br i1 %cmp187, label %if.then189, label %if.end193

if.then189:                                       ; preds = %for.end180
  %109 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %110 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %111 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !33
  %call190 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op_real, i32 noundef 702, i64 noundef %109, i64 noundef %110, i64 noundef %111, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %112 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool191 = trunc i8 %112 to i1
  %frombool192 = zext i1 %tobool191 to i8
  store i8 %frombool192, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end193:                                        ; preds = %for.end180
  %addr = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %found_rec, i32 0, i32 0
  %113 = load i64, ptr %addr, align 8, !tbaa !50
  store i64 %113, ptr %obj_addr, align 8, !tbaa !33
  %len = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %found_rec, i32 0, i32 1
  %114 = load i64, ptr %len, align 8, !tbaa !52
  store i64 %114, ptr %obj_size, align 8, !tbaa !33
  %filter_mask194 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %found_rec, i32 0, i32 2
  %115 = load i32, ptr %filter_mask194, align 8, !tbaa !53
  store i32 %115, ptr %filter_mask, align 4, !tbaa !34
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then189, %if.end193
  call void @llvm.lifetime.end.p0(i64 40, ptr %search_rec) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %found_rec) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup312 [
    i32 0, label %cleanup.cont
    i32 5, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end239

if.else196:                                       ; preds = %if.end156
  call void @llvm.lifetime.start.p0(i64 24, ptr %found_rec197) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %search_rec198) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i199) #7
  %id200 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec198, i32 0, i32 2
  store i64 0, ptr %id200, align 8, !tbaa !59
  %116 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size201 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %116, i32 0, i32 39
  %117 = load i8, ptr %huge_id_size201, align 8, !tbaa !30
  %conv202 = zext i8 %117 to i32
  %118 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext203 = sext i32 %conv202 to i64
  %add.ptr204 = getelementptr inbounds i8, ptr %118, i64 %idx.ext203
  store ptr %add.ptr204, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i199, align 8, !tbaa !33
  br label %for.cond205

for.cond205:                                      ; preds = %for.inc217, %if.else196
  %119 = load i64, ptr %_i199, align 8, !tbaa !33
  %120 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size206 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %120, i32 0, i32 39
  %121 = load i8, ptr %huge_id_size206, align 8, !tbaa !30
  %conv207 = zext i8 %121 to i64
  %cmp208 = icmp ult i64 %119, %conv207
  br i1 %cmp208, label %for.body210, label %for.end219

for.body210:                                      ; preds = %for.cond205
  %id211 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec198, i32 0, i32 2
  %122 = load i64, ptr %id211, align 8, !tbaa !59
  %shl212 = shl i64 %122, 8
  %123 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr213 = getelementptr inbounds i8, ptr %123, i32 -1
  store ptr %incdec.ptr213, ptr %id.addr, align 8, !tbaa !4
  %124 = load i8, ptr %incdec.ptr213, align 1, !tbaa !12
  %conv214 = zext i8 %124 to i64
  %or215 = or i64 %shl212, %conv214
  %id216 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec198, i32 0, i32 2
  store i64 %or215, ptr %id216, align 8, !tbaa !59
  br label %for.inc217

for.inc217:                                       ; preds = %for.body210
  %125 = load i64, ptr %_i199, align 8, !tbaa !33
  %inc218 = add i64 %125, 1
  store i64 %inc218, ptr %_i199, align 8, !tbaa !33
  br label %for.cond205

for.end219:                                       ; preds = %for.cond205
  %126 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size220 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %126, i32 0, i32 39
  %127 = load i8, ptr %huge_id_size220, align 8, !tbaa !30
  %conv221 = zext i8 %127 to i32
  %128 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext222 = sext i32 %conv221 to i64
  %add.ptr223 = getelementptr inbounds i8, ptr %128, i64 %idx.ext222
  store ptr %add.ptr223, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i199) #7
  %129 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2224 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %129, i32 0, i32 37
  %130 = load ptr, ptr %huge_bt2224, align 8, !tbaa !32
  %call225 = call i32 @H5B2_find(ptr noundef %130, ptr noundef %search_rec198, ptr noundef @H5HF__huge_bt2_indir_found, ptr noundef %found_rec197)
  %cmp226 = icmp ne i32 %call225, 1
  br i1 %cmp226, label %if.then228, label %if.end232

if.then228:                                       ; preds = %for.end219
  %131 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %132 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %133 = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !33
  %call229 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op_real, i32 noundef 718, i64 noundef %131, i64 noundef %132, i64 noundef %133, ptr noundef @.str.21)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %134 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool230 = trunc i8 %134 to i1
  %frombool231 = zext i1 %tobool230 to i8
  store i8 %frombool231, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup235

if.end232:                                        ; preds = %for.end219
  %addr233 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %found_rec197, i32 0, i32 0
  %135 = load i64, ptr %addr233, align 8, !tbaa !56
  store i64 %135, ptr %obj_addr, align 8, !tbaa !33
  %len234 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %found_rec197, i32 0, i32 1
  %136 = load i64, ptr %len234, align 8, !tbaa !58
  store i64 %136, ptr %obj_size, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup235

cleanup235:                                       ; preds = %if.then228, %if.end232
  call void @llvm.lifetime.end.p0(i64 24, ptr %search_rec198) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %found_rec197) #7
  %cleanup.dest237 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest237, label %cleanup312 [
    i32 0, label %cleanup.cont238
    i32 5, label %done
  ]

cleanup.cont238:                                  ; preds = %cleanup235
  br label %if.end239

if.end239:                                        ; preds = %cleanup.cont238, %cleanup.cont
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.end135
  %137 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len241 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %137, i32 0, i32 2
  %138 = load i32, ptr %filter_len241, align 4, !tbaa !15
  %cmp242 = icmp ugt i32 %138, 0
  br i1 %cmp242, label %if.then246, label %lor.lhs.false244

lor.lhs.false244:                                 ; preds = %if.end240
  %139 = load i8, ptr %is_read.addr, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool245 = trunc i8 %139 to i1
  br i1 %tobool245, label %if.else255, label %if.then246

if.then246:                                       ; preds = %lor.lhs.false244, %if.end240
  %140 = load i64, ptr %obj_size, align 8, !tbaa !33
  %call247 = call ptr @H5MM_malloc(i64 noundef %140)
  store ptr %call247, ptr %read_buf, align 8, !tbaa !4
  %cmp248 = icmp eq ptr null, %call247
  br i1 %cmp248, label %if.then250, label %if.end254

if.then250:                                       ; preds = %if.then246
  %141 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %142 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %143 = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !33
  %call251 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op_real, i32 noundef 729, i64 noundef %141, i64 noundef %142, i64 noundef %143, ptr noundef @.str.10)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %144 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool252 = trunc i8 %144 to i1
  %frombool253 = zext i1 %tobool252 to i8
  store i8 %frombool253, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end254:                                        ; preds = %if.then246
  br label %if.end256

if.else255:                                       ; preds = %lor.lhs.false244
  %145 = load ptr, ptr %op_data.addr, align 8, !tbaa !4
  store ptr %145, ptr %read_buf, align 8, !tbaa !4
  br label %if.end256

if.end256:                                        ; preds = %if.else255, %if.end254
  %146 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f257 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %146, i32 0, i32 28
  %147 = load ptr, ptr %f257, align 8, !tbaa !37
  %148 = load i64, ptr %obj_addr, align 8, !tbaa !33
  %149 = load i64, ptr %obj_size, align 8, !tbaa !33
  %150 = load ptr, ptr %read_buf, align 8, !tbaa !4
  %call258 = call i32 @H5F_block_read(ptr noundef %147, i32 noundef 3, i64 noundef %148, i64 noundef %149, ptr noundef %150)
  %cmp259 = icmp slt i32 %call258, 0
  br i1 %cmp259, label %if.then261, label %if.end265

if.then261:                                       ; preds = %if.end256
  %151 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %152 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %153 = load i64, ptr @H5E_READERROR_g, align 8, !tbaa !33
  %call262 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op_real, i32 noundef 737, i64 noundef %151, i64 noundef %152, i64 noundef %153, ptr noundef @.str.35)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %154 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool263 = trunc i8 %154 to i1
  %frombool264 = zext i1 %tobool263 to i8
  store i8 %frombool264, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end265:                                        ; preds = %if.end256
  %155 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len266 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %155, i32 0, i32 2
  %156 = load i32, ptr %filter_len266, align 4, !tbaa !15
  %cmp267 = icmp ugt i32 %156, 0
  br i1 %cmp267, label %if.then269, label %if.end284

if.then269:                                       ; preds = %if.end265
  call void @llvm.lifetime.start.p0(i64 16, ptr %filter_cb) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_size) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbytes) #7
  %op_data270 = getelementptr inbounds %struct.H5Z_cb_t, ptr %filter_cb, i32 0, i32 1
  store ptr null, ptr %op_data270, align 8, !tbaa !38
  %func = getelementptr inbounds %struct.H5Z_cb_t, ptr %filter_cb, i32 0, i32 0
  store ptr null, ptr %func, align 8, !tbaa !40
  %157 = load i64, ptr %obj_size, align 8, !tbaa !33
  store i64 %157, ptr %nbytes, align 8, !tbaa !33
  store i64 %157, ptr %read_size, align 8, !tbaa !33
  %158 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %pline = getelementptr inbounds %struct.H5HF_hdr_t, ptr %158, i32 0, i32 13
  %159 = getelementptr inbounds { ptr, ptr }, ptr %filter_cb, i32 0, i32 0
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds { ptr, ptr }, ptr %filter_cb, i32 0, i32 1
  %162 = load ptr, ptr %161, align 8
  %call271 = call i32 @H5Z_pipeline(ptr noundef %pline, i32 noundef 256, ptr noundef %filter_mask, i32 noundef 2, ptr %160, ptr %162, ptr noundef %nbytes, ptr noundef %read_size, ptr noundef %read_buf)
  %cmp272 = icmp slt i32 %call271, 0
  br i1 %cmp272, label %if.then274, label %if.end278

if.then274:                                       ; preds = %if.then269
  %163 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %164 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %165 = load i64, ptr @H5E_CANTFILTER_g, align 8, !tbaa !33
  %call275 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op_real, i32 noundef 753, i64 noundef %163, i64 noundef %164, i64 noundef %165, ptr noundef @.str.36)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %166 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool276 = trunc i8 %166 to i1
  %frombool277 = zext i1 %tobool276 to i8
  store i8 %frombool277, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup279

if.end278:                                        ; preds = %if.then269
  %167 = load i64, ptr %nbytes, align 8, !tbaa !33
  store i64 %167, ptr %obj_size, align 8, !tbaa !33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup279

cleanup279:                                       ; preds = %if.then274, %if.end278
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbytes) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_size) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %filter_cb) #7
  %cleanup.dest282 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest282, label %cleanup312 [
    i32 0, label %cleanup.cont283
    i32 5, label %done
  ]

cleanup.cont283:                                  ; preds = %cleanup279
  br label %if.end284

if.end284:                                        ; preds = %cleanup.cont283, %if.end265
  %168 = load i8, ptr %is_read.addr, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool285 = trunc i8 %168 to i1
  br i1 %tobool285, label %if.then286, label %if.else293

if.then286:                                       ; preds = %if.end284
  %169 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len287 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %169, i32 0, i32 2
  %170 = load i32, ptr %filter_len287, align 4, !tbaa !15
  %cmp288 = icmp ugt i32 %170, 0
  br i1 %cmp288, label %if.then290, label %if.end292

if.then290:                                       ; preds = %if.then286
  %171 = load ptr, ptr %op_data.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %read_buf, align 8, !tbaa !4
  %173 = load i64, ptr %obj_size, align 8, !tbaa !33
  %call291 = call ptr @H5MM_memcpy(ptr noundef %171, ptr noundef %172, i64 noundef %173)
  br label %if.end292

if.end292:                                        ; preds = %if.then290, %if.then286
  br label %if.end303

if.else293:                                       ; preds = %if.end284
  %174 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %175 = load ptr, ptr %read_buf, align 8, !tbaa !4
  %176 = load i64, ptr %obj_size, align 8, !tbaa !33
  %177 = load ptr, ptr %op_data.addr, align 8, !tbaa !4
  %call294 = call i32 %174(ptr noundef %175, i64 noundef %176, ptr noundef %177)
  %cmp295 = icmp slt i32 %call294, 0
  br i1 %cmp295, label %if.then297, label %if.end302

if.then297:                                       ; preds = %if.else293
  %178 = load ptr, ptr %read_buf, align 8, !tbaa !4
  %call298 = call ptr @H5MM_xfree(ptr noundef %178)
  store ptr %call298, ptr %read_buf, align 8, !tbaa !4
  %179 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %180 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %181 = load i64, ptr @H5E_CANTOPERATE_g, align 8, !tbaa !33
  %call299 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op_real, i32 noundef 771, i64 noundef %179, i64 noundef %180, i64 noundef %181, ptr noundef @.str.37)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %182 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool300 = trunc i8 %182 to i1
  %frombool301 = zext i1 %tobool300 to i8
  store i8 %frombool301, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end302:                                        ; preds = %if.else293
  br label %if.end303

if.end303:                                        ; preds = %if.end302, %if.end292
  br label %done

done:                                             ; preds = %if.end303, %cleanup279, %cleanup235, %cleanup, %if.then297, %if.then261, %if.then250, %if.then151
  %183 = load ptr, ptr %read_buf, align 8, !tbaa !4
  %tobool304 = icmp ne ptr %183, null
  br i1 %tobool304, label %land.lhs.true305, label %if.end310

land.lhs.true305:                                 ; preds = %done
  %184 = load ptr, ptr %read_buf, align 8, !tbaa !4
  %185 = load ptr, ptr %op_data.addr, align 8, !tbaa !4
  %cmp306 = icmp ne ptr %184, %185
  br i1 %cmp306, label %if.then308, label %if.end310

if.then308:                                       ; preds = %land.lhs.true305
  %186 = load ptr, ptr %read_buf, align 8, !tbaa !4
  %call309 = call ptr @H5MM_xfree(ptr noundef %186)
  store ptr %call309, ptr %read_buf, align 8, !tbaa !4
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %land.lhs.true305, %done
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %lor.lhs.false79
  %187 = load i32, ptr %ret_value, align 4, !tbaa !34
  store i32 %187, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

cleanup312:                                       ; preds = %if.end311, %cleanup279, %cleanup235, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %filter_mask) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_size) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_addr) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_buf) #7
  %188 = load i32, ptr %retval, align 4
  ret i32 %188
}

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_op(ptr noundef %hdr, ptr noundef %id, ptr noundef %op, ptr noundef %op_data) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %op_data.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  store ptr %op, ptr %op.addr, align 8, !tbaa !4
  store ptr %op_data, ptr %op_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_op.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([14 x i8], ptr @__func__.H5HF__huge_op, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 916, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_op.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end101, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 921, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %36, null
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end85
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 922, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op) #6
  unreachable

37:                                               ; No predecessors!
  br label %cond.end89

cond.end89:                                       ; preds = %37, %cond.true87
  %38 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %tobool90 = icmp ne ptr %38, null
  br i1 %tobool90, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %cond.end89
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end89
  call void @__assert_fail(ptr noundef @.str.25, ptr noundef @.str.2, i32 noundef 923, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_op) #6
  unreachable

39:                                               ; No predecessors!
  br label %cond.end93

cond.end93:                                       ; preds = %39, %cond.true91
  %40 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %op.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %op_data.addr, align 8, !tbaa !4
  %call94 = call i32 @H5HF__huge_op_real(ptr noundef %40, ptr noundef %41, i1 noundef zeroext false, ptr noundef %42, ptr noundef %43)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %cond.end93
  %44 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %45 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %46 = load i64, ptr @H5E_CANTOPERATE_g, align 8, !tbaa !33
  %call98 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_op, i32 noundef 927, i64 noundef %44, i64 noundef %45, i64 noundef %46, ptr noundef @.str.24)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %47 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool99 = trunc i8 %47 to i1
  %frombool = zext i1 %tobool99 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end100:                                        ; preds = %cond.end93
  br label %done

done:                                             ; preds = %if.end100, %if.then97
  br label %if.end101

if.end101:                                        ; preds = %done, %lor.lhs.false79
  %48 = load i32, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_remove(ptr noundef %hdr, ptr noundef %id) #0 {
entry:
  %retval = alloca i32, align 4
  %hdr.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %udata = alloca %struct.H5HF_huge_remove_ud_t, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %search_rec = alloca %struct.H5HF_huge_bt2_filt_dir_rec_t, align 8
  %_i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %search_rec142 = alloca %struct.H5HF_huge_bt2_dir_rec_t, align 8
  %_i145 = alloca i64, align 8
  %search_rec191 = alloca %struct.H5HF_huge_bt2_filt_indir_rec_t, align 8
  %_i192 = alloca i64, align 8
  %search_rec229 = alloca %struct.H5HF_huge_bt2_indir_rec_t, align 8
  %_i230 = alloca i64, align 8
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  store ptr %id, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %udata) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_remove.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_remove, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 951, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_remove) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_remove.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end277, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 956, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_remove) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 12
  %37 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp86 = icmp ne i64 %37, -1
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end85
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 957, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_remove) #6
  unreachable

38:                                               ; No predecessors!
  br label %cond.end90

cond.end90:                                       ; preds = %38, %cond.true88
  %39 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %tobool91 = icmp ne ptr %39, null
  br i1 %tobool91, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %cond.end90
  br label %cond.end94

cond.false93:                                     ; preds = %cond.end90
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 958, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_remove) #6
  unreachable

40:                                               ; No predecessors!
  br label %cond.end94

cond.end94:                                       ; preds = %40, %cond.true92
  %41 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %41, i32 0, i32 37
  %42 = load ptr, ptr %huge_bt2, align 8, !tbaa !32
  %cmp95 = icmp eq ptr null, %42
  br i1 %cmp95, label %if.then97, label %if.end108

if.then97:                                        ; preds = %cond.end94
  %43 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %43, i32 0, i32 28
  %44 = load ptr, ptr %f, align 8, !tbaa !37
  %45 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr98 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %45, i32 0, i32 12
  %46 = load i64, ptr %huge_bt2_addr98, align 8, !tbaa !36
  %47 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f99 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %47, i32 0, i32 28
  %48 = load ptr, ptr %f99, align 8, !tbaa !37
  %call100 = call ptr @H5B2_open(ptr noundef %44, i64 noundef %46, ptr noundef %48)
  %49 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2101 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %49, i32 0, i32 37
  store ptr %call100, ptr %huge_bt2101, align 8, !tbaa !32
  %cmp102 = icmp eq ptr null, %call100
  br i1 %cmp102, label %if.then104, label %if.end107

if.then104:                                       ; preds = %if.then97
  %50 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %51 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %52 = load i64, ptr @H5E_CANTOPENOBJ_g, align 8, !tbaa !33
  %call105 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_remove, i32 noundef 965, i64 noundef %50, i64 noundef %51, i64 noundef %52, ptr noundef @.str.8)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %53 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool106 = trunc i8 %53 to i1
  %frombool = zext i1 %tobool106 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end107:                                        ; preds = %if.then97
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %cond.end94
  %54 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %id.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %hdr109 = getelementptr inbounds %struct.H5HF_huge_remove_ud_t, ptr %udata, i32 0, i32 0
  store ptr %55, ptr %hdr109, align 8, !tbaa !70
  %56 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %56, i32 0, i32 40
  %57 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool110 = trunc i8 %57 to i1
  br i1 %tobool110, label %if.then111, label %if.else186

if.then111:                                       ; preds = %if.end108
  %58 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp112 = icmp ugt i32 %59, 0
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 32, ptr %search_rec) #7
  %60 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f115 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %60, i32 0, i32 28
  %61 = load ptr, ptr %f115, align 8, !tbaa !37
  %addr = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %search_rec, i32 0, i32 0
  call void @H5F_addr_decode(ptr noundef %61, ptr noundef %id.addr, ptr noundef %addr)
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i) #7
  %len = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %search_rec, i32 0, i32 1
  store i64 0, ptr %len, align 8, !tbaa !43
  %62 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f116 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %62, i32 0, i32 28
  %63 = load ptr, ptr %f116, align 8, !tbaa !37
  %call117 = call zeroext i8 @H5F_sizeof_size(ptr noundef %63)
  %conv118 = zext i8 %call117 to i32
  %64 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %conv118 to i64
  %add.ptr = getelementptr inbounds i8, ptr %64, i64 %idx.ext
  store ptr %add.ptr, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then114
  %65 = load i64, ptr %_i, align 8, !tbaa !33
  %66 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f119 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %66, i32 0, i32 28
  %67 = load ptr, ptr %f119, align 8, !tbaa !37
  %call120 = call zeroext i8 @H5F_sizeof_size(ptr noundef %67)
  %conv121 = zext i8 %call120 to i64
  %cmp122 = icmp ult i64 %65, %conv121
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %len124 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %search_rec, i32 0, i32 1
  %68 = load i64, ptr %len124, align 8, !tbaa !43
  %shl = shl i64 %68, 8
  %69 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr125 = getelementptr inbounds i8, ptr %69, i32 -1
  store ptr %incdec.ptr125, ptr %id.addr, align 8, !tbaa !4
  %70 = load i8, ptr %incdec.ptr125, align 1, !tbaa !12
  %conv126 = zext i8 %70 to i64
  %or = or i64 %shl, %conv126
  %len127 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_dir_rec_t, ptr %search_rec, i32 0, i32 1
  store i64 %or, ptr %len127, align 8, !tbaa !43
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i64, ptr %_i, align 8, !tbaa !33
  %inc = add i64 %71, 1
  store i64 %inc, ptr %_i, align 8, !tbaa !33
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f128 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %72, i32 0, i32 28
  %73 = load ptr, ptr %f128, align 8, !tbaa !37
  %call129 = call zeroext i8 @H5F_sizeof_size(ptr noundef %73)
  %conv130 = zext i8 %call129 to i32
  %74 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext131 = sext i32 %conv130 to i64
  %add.ptr132 = getelementptr inbounds i8, ptr %74, i64 %idx.ext131
  store ptr %add.ptr132, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i) #7
  %75 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2133 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %75, i32 0, i32 37
  %76 = load ptr, ptr %huge_bt2133, align 8, !tbaa !32
  %call134 = call i32 @H5B2_remove(ptr noundef %76, ptr noundef %search_rec, ptr noundef @H5HF__huge_bt2_filt_dir_remove, ptr noundef %udata)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %for.end
  %77 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %78 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %79 = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !33
  %call138 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_remove, i32 noundef 987, i64 noundef %77, i64 noundef %78, i64 noundef %79, ptr noundef @.str.26)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %80 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool139 = trunc i8 %80 to i1
  %frombool140 = zext i1 %tobool139 to i8
  store i8 %frombool140, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end141:                                        ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %if.end141
  call void @llvm.lifetime.end.p0(i64 32, ptr %search_rec) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup278 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end185

if.else:                                          ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 16, ptr %search_rec142) #7
  %81 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f143 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %81, i32 0, i32 28
  %82 = load ptr, ptr %f143, align 8, !tbaa !37
  %addr144 = getelementptr inbounds %struct.H5HF_huge_bt2_dir_rec_t, ptr %search_rec142, i32 0, i32 0
  call void @H5F_addr_decode(ptr noundef %82, ptr noundef %id.addr, ptr noundef %addr144)
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i145) #7
  %len146 = getelementptr inbounds %struct.H5HF_huge_bt2_dir_rec_t, ptr %search_rec142, i32 0, i32 1
  store i64 0, ptr %len146, align 8, !tbaa !48
  %83 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f147 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %83, i32 0, i32 28
  %84 = load ptr, ptr %f147, align 8, !tbaa !37
  %call148 = call zeroext i8 @H5F_sizeof_size(ptr noundef %84)
  %conv149 = zext i8 %call148 to i32
  %85 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext150 = sext i32 %conv149 to i64
  %add.ptr151 = getelementptr inbounds i8, ptr %85, i64 %idx.ext150
  store ptr %add.ptr151, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i145, align 8, !tbaa !33
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc165, %if.else
  %86 = load i64, ptr %_i145, align 8, !tbaa !33
  %87 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f153 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %87, i32 0, i32 28
  %88 = load ptr, ptr %f153, align 8, !tbaa !37
  %call154 = call zeroext i8 @H5F_sizeof_size(ptr noundef %88)
  %conv155 = zext i8 %call154 to i64
  %cmp156 = icmp ult i64 %86, %conv155
  br i1 %cmp156, label %for.body158, label %for.end167

for.body158:                                      ; preds = %for.cond152
  %len159 = getelementptr inbounds %struct.H5HF_huge_bt2_dir_rec_t, ptr %search_rec142, i32 0, i32 1
  %89 = load i64, ptr %len159, align 8, !tbaa !48
  %shl160 = shl i64 %89, 8
  %90 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr161 = getelementptr inbounds i8, ptr %90, i32 -1
  store ptr %incdec.ptr161, ptr %id.addr, align 8, !tbaa !4
  %91 = load i8, ptr %incdec.ptr161, align 1, !tbaa !12
  %conv162 = zext i8 %91 to i64
  %or163 = or i64 %shl160, %conv162
  %len164 = getelementptr inbounds %struct.H5HF_huge_bt2_dir_rec_t, ptr %search_rec142, i32 0, i32 1
  store i64 %or163, ptr %len164, align 8, !tbaa !48
  br label %for.inc165

for.inc165:                                       ; preds = %for.body158
  %92 = load i64, ptr %_i145, align 8, !tbaa !33
  %inc166 = add i64 %92, 1
  store i64 %inc166, ptr %_i145, align 8, !tbaa !33
  br label %for.cond152

for.end167:                                       ; preds = %for.cond152
  %93 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f168 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %93, i32 0, i32 28
  %94 = load ptr, ptr %f168, align 8, !tbaa !37
  %call169 = call zeroext i8 @H5F_sizeof_size(ptr noundef %94)
  %conv170 = zext i8 %call169 to i32
  %95 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext171 = sext i32 %conv170 to i64
  %add.ptr172 = getelementptr inbounds i8, ptr %95, i64 %idx.ext171
  store ptr %add.ptr172, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i145) #7
  %96 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2173 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %96, i32 0, i32 37
  %97 = load ptr, ptr %huge_bt2173, align 8, !tbaa !32
  %call174 = call i32 @H5B2_remove(ptr noundef %97, ptr noundef %search_rec142, ptr noundef @H5HF__huge_bt2_dir_remove, ptr noundef %udata)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %if.then177, label %if.end181

if.then177:                                       ; preds = %for.end167
  %98 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %99 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %100 = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !33
  %call178 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_remove, i32 noundef 1000, i64 noundef %98, i64 noundef %99, i64 noundef %100, ptr noundef @.str.26)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %101 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool179 = trunc i8 %101 to i1
  %frombool180 = zext i1 %tobool179 to i8
  store i8 %frombool180, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup182

if.end181:                                        ; preds = %for.end167
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup182

cleanup182:                                       ; preds = %if.then177, %if.end181
  call void @llvm.lifetime.end.p0(i64 16, ptr %search_rec142) #7
  %cleanup.dest183 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest183, label %cleanup278 [
    i32 0, label %cleanup.cont184
    i32 2, label %done
  ]

cleanup.cont184:                                  ; preds = %cleanup182
  br label %if.end185

if.end185:                                        ; preds = %cleanup.cont184, %cleanup.cont
  br label %if.end268

if.else186:                                       ; preds = %if.end108
  %102 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len187 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %102, i32 0, i32 2
  %103 = load i32, ptr %filter_len187, align 4, !tbaa !15
  %cmp188 = icmp ugt i32 %103, 0
  br i1 %cmp188, label %if.then190, label %if.else228

if.then190:                                       ; preds = %if.else186
  call void @llvm.lifetime.start.p0(i64 40, ptr %search_rec191) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i192) #7
  %id193 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec191, i32 0, i32 4
  store i64 0, ptr %id193, align 8, !tbaa !55
  %104 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %104, i32 0, i32 39
  %105 = load i8, ptr %huge_id_size, align 8, !tbaa !30
  %conv194 = zext i8 %105 to i32
  %106 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext195 = sext i32 %conv194 to i64
  %add.ptr196 = getelementptr inbounds i8, ptr %106, i64 %idx.ext195
  store ptr %add.ptr196, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i192, align 8, !tbaa !33
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc209, %if.then190
  %107 = load i64, ptr %_i192, align 8, !tbaa !33
  %108 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size198 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %108, i32 0, i32 39
  %109 = load i8, ptr %huge_id_size198, align 8, !tbaa !30
  %conv199 = zext i8 %109 to i64
  %cmp200 = icmp ult i64 %107, %conv199
  br i1 %cmp200, label %for.body202, label %for.end211

for.body202:                                      ; preds = %for.cond197
  %id203 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec191, i32 0, i32 4
  %110 = load i64, ptr %id203, align 8, !tbaa !55
  %shl204 = shl i64 %110, 8
  %111 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr205 = getelementptr inbounds i8, ptr %111, i32 -1
  store ptr %incdec.ptr205, ptr %id.addr, align 8, !tbaa !4
  %112 = load i8, ptr %incdec.ptr205, align 1, !tbaa !12
  %conv206 = zext i8 %112 to i64
  %or207 = or i64 %shl204, %conv206
  %id208 = getelementptr inbounds %struct.H5HF_huge_bt2_filt_indir_rec_t, ptr %search_rec191, i32 0, i32 4
  store i64 %or207, ptr %id208, align 8, !tbaa !55
  br label %for.inc209

for.inc209:                                       ; preds = %for.body202
  %113 = load i64, ptr %_i192, align 8, !tbaa !33
  %inc210 = add i64 %113, 1
  store i64 %inc210, ptr %_i192, align 8, !tbaa !33
  br label %for.cond197

for.end211:                                       ; preds = %for.cond197
  %114 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size212 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %114, i32 0, i32 39
  %115 = load i8, ptr %huge_id_size212, align 8, !tbaa !30
  %conv213 = zext i8 %115 to i32
  %116 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext214 = sext i32 %conv213 to i64
  %add.ptr215 = getelementptr inbounds i8, ptr %116, i64 %idx.ext214
  store ptr %add.ptr215, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i192) #7
  %117 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2216 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %117, i32 0, i32 37
  %118 = load ptr, ptr %huge_bt2216, align 8, !tbaa !32
  %call217 = call i32 @H5B2_remove(ptr noundef %118, ptr noundef %search_rec191, ptr noundef @H5HF__huge_bt2_filt_indir_remove, ptr noundef %udata)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %if.end224

if.then220:                                       ; preds = %for.end211
  %119 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %120 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %121 = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !33
  %call221 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_remove, i32 noundef 1013, i64 noundef %119, i64 noundef %120, i64 noundef %121, ptr noundef @.str.26)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %122 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool222 = trunc i8 %122 to i1
  %frombool223 = zext i1 %tobool222 to i8
  store i8 %frombool223, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup225

if.end224:                                        ; preds = %for.end211
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup225

cleanup225:                                       ; preds = %if.then220, %if.end224
  call void @llvm.lifetime.end.p0(i64 40, ptr %search_rec191) #7
  %cleanup.dest226 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest226, label %cleanup278 [
    i32 0, label %cleanup.cont227
    i32 2, label %done
  ]

cleanup.cont227:                                  ; preds = %cleanup225
  br label %if.end267

if.else228:                                       ; preds = %if.else186
  call void @llvm.lifetime.start.p0(i64 24, ptr %search_rec229) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %_i230) #7
  %id231 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec229, i32 0, i32 2
  store i64 0, ptr %id231, align 8, !tbaa !59
  %123 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size232 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %123, i32 0, i32 39
  %124 = load i8, ptr %huge_id_size232, align 8, !tbaa !30
  %conv233 = zext i8 %124 to i32
  %125 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext234 = sext i32 %conv233 to i64
  %add.ptr235 = getelementptr inbounds i8, ptr %125, i64 %idx.ext234
  store ptr %add.ptr235, ptr %id.addr, align 8, !tbaa !4
  store i64 0, ptr %_i230, align 8, !tbaa !33
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc248, %if.else228
  %126 = load i64, ptr %_i230, align 8, !tbaa !33
  %127 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size237 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %127, i32 0, i32 39
  %128 = load i8, ptr %huge_id_size237, align 8, !tbaa !30
  %conv238 = zext i8 %128 to i64
  %cmp239 = icmp ult i64 %126, %conv238
  br i1 %cmp239, label %for.body241, label %for.end250

for.body241:                                      ; preds = %for.cond236
  %id242 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec229, i32 0, i32 2
  %129 = load i64, ptr %id242, align 8, !tbaa !59
  %shl243 = shl i64 %129, 8
  %130 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %incdec.ptr244 = getelementptr inbounds i8, ptr %130, i32 -1
  store ptr %incdec.ptr244, ptr %id.addr, align 8, !tbaa !4
  %131 = load i8, ptr %incdec.ptr244, align 1, !tbaa !12
  %conv245 = zext i8 %131 to i64
  %or246 = or i64 %shl243, %conv245
  %id247 = getelementptr inbounds %struct.H5HF_huge_bt2_indir_rec_t, ptr %search_rec229, i32 0, i32 2
  store i64 %or246, ptr %id247, align 8, !tbaa !59
  br label %for.inc248

for.inc248:                                       ; preds = %for.body241
  %132 = load i64, ptr %_i230, align 8, !tbaa !33
  %inc249 = add i64 %132, 1
  store i64 %inc249, ptr %_i230, align 8, !tbaa !33
  br label %for.cond236

for.end250:                                       ; preds = %for.cond236
  %133 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_id_size251 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %133, i32 0, i32 39
  %134 = load i8, ptr %huge_id_size251, align 8, !tbaa !30
  %conv252 = zext i8 %134 to i32
  %135 = load ptr, ptr %id.addr, align 8, !tbaa !4
  %idx.ext253 = sext i32 %conv252 to i64
  %add.ptr254 = getelementptr inbounds i8, ptr %135, i64 %idx.ext253
  store ptr %add.ptr254, ptr %id.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_i230) #7
  %136 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2255 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %136, i32 0, i32 37
  %137 = load ptr, ptr %huge_bt2255, align 8, !tbaa !32
  %call256 = call i32 @H5B2_remove(ptr noundef %137, ptr noundef %search_rec229, ptr noundef @H5HF__huge_bt2_indir_remove, ptr noundef %udata)
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.then259, label %if.end263

if.then259:                                       ; preds = %for.end250
  %138 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %139 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %140 = load i64, ptr @H5E_CANTREMOVE_g, align 8, !tbaa !33
  %call260 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_remove, i32 noundef 1024, i64 noundef %138, i64 noundef %139, i64 noundef %140, ptr noundef @.str.26)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %141 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool261 = trunc i8 %141 to i1
  %frombool262 = zext i1 %tobool261 to i8
  store i8 %frombool262, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup264

if.end263:                                        ; preds = %for.end250
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup264

cleanup264:                                       ; preds = %if.then259, %if.end263
  call void @llvm.lifetime.end.p0(i64 24, ptr %search_rec229) #7
  %cleanup.dest265 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest265, label %cleanup278 [
    i32 0, label %cleanup.cont266
    i32 2, label %done
  ]

cleanup.cont266:                                  ; preds = %cleanup264
  br label %if.end267

if.end267:                                        ; preds = %cleanup.cont266, %cleanup.cont227
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.end185
  %obj_len = getelementptr inbounds %struct.H5HF_huge_remove_ud_t, ptr %udata, i32 0, i32 1
  %142 = load i64, ptr %obj_len, align 8, !tbaa !72
  %143 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %143, i32 0, i32 20
  %144 = load i64, ptr %huge_size, align 8, !tbaa !60
  %sub = sub i64 %144, %142
  store i64 %sub, ptr %huge_size, align 8, !tbaa !60
  %145 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_nobjs = getelementptr inbounds %struct.H5HF_hdr_t, ptr %145, i32 0, i32 21
  %146 = load i64, ptr %huge_nobjs, align 8, !tbaa !61
  %dec = add i64 %146, -1
  store i64 %dec, ptr %huge_nobjs, align 8, !tbaa !61
  %147 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %call269 = call i32 @H5HF__hdr_dirty(ptr noundef %147)
  %cmp270 = icmp slt i32 %call269, 0
  br i1 %cmp270, label %if.then272, label %if.end276

if.then272:                                       ; preds = %if.end268
  %148 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %149 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %150 = load i64, ptr @H5E_CANTDIRTY_g, align 8, !tbaa !33
  %call273 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_remove, i32 noundef 1034, i64 noundef %148, i64 noundef %149, i64 noundef %150, ptr noundef @.str.18)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %151 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool274 = trunc i8 %151 to i1
  %frombool275 = zext i1 %tobool274 to i8
  store i8 %frombool275, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end276:                                        ; preds = %if.end268
  br label %done

done:                                             ; preds = %if.end276, %cleanup264, %cleanup225, %cleanup182, %cleanup, %if.then272, %if.then104
  br label %if.end277

if.end277:                                        ; preds = %done, %lor.lhs.false79
  %152 = load i32, ptr %ret_value, align 4, !tbaa !34
  store i32 %152, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup278

cleanup278:                                       ; preds = %if.end277, %cleanup264, %cleanup225, %cleanup182, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %udata) #7
  %153 = load i32, ptr %retval, align 4
  ret i32 %153
}

declare i32 @H5B2_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @H5HF__huge_bt2_filt_dir_remove(ptr noundef, ptr noundef) #4

declare i32 @H5HF__huge_bt2_dir_remove(ptr noundef, ptr noundef) #4

declare i32 @H5HF__huge_bt2_filt_indir_remove(ptr noundef, ptr noundef) #4

declare i32 @H5HF__huge_bt2_indir_remove(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_term(ptr noundef %hdr) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_term.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @__func__.H5HF__huge_term, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 1057, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_term) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_term.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end135, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 1062, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_term) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 37
  %37 = load ptr, ptr %huge_bt2, align 8, !tbaa !32
  %tobool86 = icmp ne ptr %37, null
  br i1 %tobool86, label %if.then87, label %if.end102

if.then87:                                        ; preds = %cond.end85
  %38 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %38, i32 0, i32 12
  %39 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp88 = icmp ne i64 %39, -1
  br i1 %cmp88, label %cond.true90, label %cond.false91

cond.true90:                                      ; preds = %if.then87
  br label %cond.end92

cond.false91:                                     ; preds = %if.then87
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 1067, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_term) #6
  unreachable

40:                                               ; No predecessors!
  br label %cond.end92

cond.end92:                                       ; preds = %40, %cond.true90
  %41 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt293 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %41, i32 0, i32 37
  %42 = load ptr, ptr %huge_bt293, align 8, !tbaa !32
  %call94 = call i32 @H5B2_close(ptr noundef %42)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %cond.end92
  %43 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %44 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %45 = load i64, ptr @H5E_CANTCLOSEOBJ_g, align 8, !tbaa !33
  %call98 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_term, i32 noundef 1071, i64 noundef %43, i64 noundef %44, i64 noundef %45, ptr noundef @.str.27)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %46 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool99 = trunc i8 %46 to i1
  %frombool = zext i1 %tobool99 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end100:                                        ; preds = %cond.end92
  %47 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2101 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %47, i32 0, i32 37
  store ptr null, ptr %huge_bt2101, align 8, !tbaa !32
  br label %if.end102

if.end102:                                        ; preds = %if.end100, %cond.end85
  %48 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr103 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %48, i32 0, i32 12
  %49 = load i64, ptr %huge_bt2_addr103, align 8, !tbaa !36
  %cmp104 = icmp ne i64 %49, -1
  br i1 %cmp104, label %land.lhs.true106, label %if.end134

land.lhs.true106:                                 ; preds = %if.end102
  %50 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_nobjs = getelementptr inbounds %struct.H5HF_hdr_t, ptr %50, i32 0, i32 21
  %51 = load i64, ptr %huge_nobjs, align 8, !tbaa !61
  %cmp107 = icmp eq i64 %51, 0
  br i1 %cmp107, label %if.then109, label %if.end134

if.then109:                                       ; preds = %land.lhs.true106
  %52 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %52, i32 0, i32 20
  %53 = load i64, ptr %huge_size, align 8, !tbaa !60
  %cmp110 = icmp eq i64 %53, 0
  br i1 %cmp110, label %cond.true112, label %cond.false113

cond.true112:                                     ; preds = %if.then109
  br label %cond.end114

cond.false113:                                    ; preds = %if.then109
  call void @__assert_fail(ptr noundef @.str.28, ptr noundef @.str.2, i32 noundef 1080, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_term) #6
  unreachable

54:                                               ; No predecessors!
  br label %cond.end114

cond.end114:                                      ; preds = %54, %cond.true112
  %55 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %55, i32 0, i32 28
  %56 = load ptr, ptr %f, align 8, !tbaa !37
  %57 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr115 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %57, i32 0, i32 12
  %58 = load i64, ptr %huge_bt2_addr115, align 8, !tbaa !36
  %59 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f116 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %59, i32 0, i32 28
  %60 = load ptr, ptr %f116, align 8, !tbaa !37
  %call117 = call i32 @H5B2_delete(ptr noundef %56, i64 noundef %58, ptr noundef %60, ptr noundef null, ptr noundef null)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then120, label %if.end124

if.then120:                                       ; preds = %cond.end114
  %61 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %62 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %63 = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !33
  %call121 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_term, i32 noundef 1085, i64 noundef %61, i64 noundef %62, i64 noundef %63, ptr noundef @.str.29)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %64 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool122 = trunc i8 %64 to i1
  %frombool123 = zext i1 %tobool122 to i8
  store i8 %frombool123, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end124:                                        ; preds = %cond.end114
  %65 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr125 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %65, i32 0, i32 12
  store i64 -1, ptr %huge_bt2_addr125, align 8, !tbaa !36
  %66 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_next_id = getelementptr inbounds %struct.H5HF_hdr_t, ptr %66, i32 0, i32 11
  store i64 0, ptr %huge_next_id, align 8, !tbaa !69
  %67 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_wrapped = getelementptr inbounds %struct.H5HF_hdr_t, ptr %67, i32 0, i32 5
  store i8 0, ptr %huge_ids_wrapped, align 2, !tbaa !68
  %68 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %call126 = call i32 @H5HF__hdr_dirty(ptr noundef %68)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.end133

if.then129:                                       ; preds = %if.end124
  %69 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %70 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %71 = load i64, ptr @H5E_CANTDIRTY_g, align 8, !tbaa !33
  %call130 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_term, i32 noundef 1094, i64 noundef %69, i64 noundef %70, i64 noundef %71, ptr noundef @.str.18)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %72 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool131 = trunc i8 %72 to i1
  %frombool132 = zext i1 %tobool131 to i8
  store i8 %frombool132, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end133:                                        ; preds = %if.end124
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %land.lhs.true106, %if.end102
  br label %done

done:                                             ; preds = %if.end134, %if.then129, %if.then120, %if.then97
  br label %if.end135

if.end135:                                        ; preds = %done, %lor.lhs.false79
  %73 = load i32, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  ret i32 %73
}

declare i32 @H5B2_close(ptr noundef) #4

declare i32 @H5B2_delete(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define i32 @H5HF__huge_delete(ptr noundef %hdr) #0 {
entry:
  %hdr.addr = alloca ptr, align 8
  %udata = alloca %struct.H5HF_huge_remove_ud_t, align 8
  %op = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %hdr, ptr %hdr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %udata) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #7
  store i32 0, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #7
  store i8 0, ptr %err_occurred, align 1, !tbaa !8
  %0 = load i8, ptr @H5HF__huge_delete.func_check, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @__ctype_b_loc() #5
  %1 = load ptr, ptr %call, align 8, !tbaa !4
  %2 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 1), align 1, !tbaa !12
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !13
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call3 = call ptr @__ctype_b_loc() #5
  %4 = load ptr, ptr %call3, align 8, !tbaa !4
  %5 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 1), align 1, !tbaa !12
  %conv4 = sext i8 %5 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %4, i64 %idxprom5
  %6 = load i16, ptr %arrayidx6, align 2, !tbaa !13
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 256
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %7 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 2), align 1, !tbaa !12
  %conv10 = sext i8 %7 to i32
  %cmp = icmp eq i32 95, %conv10
  br i1 %cmp, label %land.lhs.true12, label %lor.lhs.false24

land.lhs.true12:                                  ; preds = %land.lhs.true
  %8 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 3), align 1, !tbaa !12
  %conv13 = sext i8 %8 to i32
  %cmp14 = icmp eq i32 95, %conv13
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false24

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = call ptr @__ctype_b_loc() #5
  %9 = load ptr, ptr %call17, align 8, !tbaa !4
  %10 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 4), align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  %idxprom19 = sext i32 %conv18 to i64
  %arrayidx20 = getelementptr inbounds i16, ptr %9, i64 %idxprom19
  %11 = load i16, ptr %arrayidx20, align 2, !tbaa !13
  %conv21 = zext i16 %11 to i32
  %and22 = and i32 %conv21, 512
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true76, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %land.lhs.true, %lor.lhs.false
  %call25 = call ptr @__ctype_b_loc() #5
  %12 = load ptr, ptr %call25, align 8, !tbaa !4
  %13 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 2), align 1, !tbaa !12
  %conv26 = sext i8 %13 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %12, i64 %idxprom27
  %14 = load i16, ptr %arrayidx28, align 2, !tbaa !13
  %conv29 = zext i16 %14 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.lhs.true40, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false24
  %call33 = call ptr @__ctype_b_loc() #5
  %15 = load ptr, ptr %call33, align 8, !tbaa !4
  %16 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 2), align 1, !tbaa !12
  %conv34 = sext i8 %16 to i32
  %idxprom35 = sext i32 %conv34 to i64
  %arrayidx36 = getelementptr inbounds i16, ptr %15, i64 %idxprom35
  %17 = load i16, ptr %arrayidx36, align 2, !tbaa !13
  %conv37 = zext i16 %17 to i32
  %and38 = and i32 %conv37, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %lor.lhs.false52

land.lhs.true40:                                  ; preds = %lor.lhs.false32, %lor.lhs.false24
  %18 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 3), align 1, !tbaa !12
  %conv41 = sext i8 %18 to i32
  %cmp42 = icmp eq i32 95, %conv41
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false52

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = call ptr @__ctype_b_loc() #5
  %19 = load ptr, ptr %call45, align 8, !tbaa !4
  %20 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 5), align 1, !tbaa !12
  %conv46 = sext i8 %20 to i32
  %idxprom47 = sext i32 %conv46 to i64
  %arrayidx48 = getelementptr inbounds i16, ptr %19, i64 %idxprom47
  %21 = load i16, ptr %arrayidx48, align 2, !tbaa !13
  %conv49 = zext i16 %21 to i32
  %and50 = and i32 %conv49, 512
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true76, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %land.lhs.true44, %land.lhs.true40, %lor.lhs.false32
  %call53 = call ptr @__ctype_b_loc() #5
  %22 = load ptr, ptr %call53, align 8, !tbaa !4
  %23 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 3), align 1, !tbaa !12
  %conv54 = sext i8 %23 to i32
  %idxprom55 = sext i32 %conv54 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %22, i64 %idxprom55
  %24 = load i16, ptr %arrayidx56, align 2, !tbaa !13
  %conv57 = zext i16 %24 to i32
  %and58 = and i32 %conv57, 2048
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %land.lhs.true68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false52
  %call61 = call ptr @__ctype_b_loc() #5
  %25 = load ptr, ptr %call61, align 8, !tbaa !4
  %26 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 3), align 1, !tbaa !12
  %conv62 = sext i8 %26 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %25, i64 %idxprom63
  %27 = load i16, ptr %arrayidx64, align 2, !tbaa !13
  %conv65 = zext i16 %27 to i32
  %and66 = and i32 %conv65, 256
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true68, label %cond.false

land.lhs.true68:                                  ; preds = %lor.lhs.false60, %lor.lhs.false52
  %call69 = call ptr @__ctype_b_loc() #5
  %28 = load ptr, ptr %call69, align 8, !tbaa !4
  %29 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @__func__.H5HF__huge_delete, i64 0, i64 6), align 1, !tbaa !12
  %conv70 = sext i8 %29 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %28, i64 %idxprom71
  %30 = load i16, ptr %arrayidx72, align 2, !tbaa !13
  %conv73 = zext i16 %30 to i32
  %and74 = and i32 %conv73, 512
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true76, label %cond.false

land.lhs.true76:                                  ; preds = %land.lhs.true68, %land.lhs.true44, %land.lhs.true16
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true76, %land.lhs.true68, %lor.lhs.false60
  call void @__assert_fail(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 1121, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_delete) #6
  unreachable

31:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %31, %cond.true
  store i8 1, ptr @H5HF__huge_delete.func_check, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %32 = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool77 = trunc i8 %32 to i1
  br i1 %tobool77, label %if.then81, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end
  %33 = load i8, ptr @H5_libterm_g, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool80 = trunc i8 %33 to i1
  br i1 %tobool80, label %if.end123, label %if.then81

if.then81:                                        ; preds = %lor.lhs.false79, %if.end
  %34 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %tobool82 = icmp ne ptr %34, null
  br i1 %tobool82, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %if.then81
  br label %cond.end85

cond.false84:                                     ; preds = %if.then81
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 1126, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_delete) #6
  unreachable

35:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %35, %cond.true83
  %36 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr = getelementptr inbounds %struct.H5HF_hdr_t, ptr %36, i32 0, i32 12
  %37 = load i64, ptr %huge_bt2_addr, align 8, !tbaa !36
  %cmp86 = icmp ne i64 %37, -1
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end85
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end85
  call void @__assert_fail(ptr noundef @.str.19, ptr noundef @.str.2, i32 noundef 1127, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_delete) #6
  unreachable

38:                                               ; No predecessors!
  br label %cond.end90

cond.end90:                                       ; preds = %38, %cond.true88
  %39 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_nobjs = getelementptr inbounds %struct.H5HF_hdr_t, ptr %39, i32 0, i32 21
  %40 = load i64, ptr %huge_nobjs, align 8, !tbaa !61
  %tobool91 = icmp ne i64 %40, 0
  br i1 %tobool91, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %cond.end90
  br label %cond.end94

cond.false93:                                     ; preds = %cond.end90
  call void @__assert_fail(ptr noundef @.str.30, ptr noundef @.str.2, i32 noundef 1128, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_delete) #6
  unreachable

41:                                               ; No predecessors!
  br label %cond.end94

cond.end94:                                       ; preds = %41, %cond.true92
  %42 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_size = getelementptr inbounds %struct.H5HF_hdr_t, ptr %42, i32 0, i32 20
  %43 = load i64, ptr %huge_size, align 8, !tbaa !60
  %tobool95 = icmp ne i64 %43, 0
  br i1 %tobool95, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.end94
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end94
  call void @__assert_fail(ptr noundef @.str.31, ptr noundef @.str.2, i32 noundef 1129, ptr noundef @__PRETTY_FUNCTION__.H5HF__huge_delete) #6
  unreachable

44:                                               ; No predecessors!
  br label %cond.end98

cond.end98:                                       ; preds = %44, %cond.true96
  %45 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %hdr99 = getelementptr inbounds %struct.H5HF_huge_remove_ud_t, ptr %udata, i32 0, i32 0
  store ptr %45, ptr %hdr99, align 8, !tbaa !70
  %46 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_ids_direct = getelementptr inbounds %struct.H5HF_hdr_t, ptr %46, i32 0, i32 40
  %47 = load i8, ptr %huge_ids_direct, align 1, !tbaa !29, !range !10, !noundef !11
  %tobool100 = trunc i8 %47 to i1
  br i1 %tobool100, label %if.then101, label %if.else106

if.then101:                                       ; preds = %cond.end98
  %48 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len = getelementptr inbounds %struct.H5HF_hdr_t, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %filter_len, align 4, !tbaa !15
  %cmp102 = icmp ugt i32 %49, 0
  br i1 %cmp102, label %if.then104, label %if.else

if.then104:                                       ; preds = %if.then101
  store ptr @H5HF__huge_bt2_filt_dir_remove, ptr %op, align 8, !tbaa !4
  br label %if.end105

if.else:                                          ; preds = %if.then101
  store ptr @H5HF__huge_bt2_dir_remove, ptr %op, align 8, !tbaa !4
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then104
  br label %if.end113

if.else106:                                       ; preds = %cond.end98
  %50 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %filter_len107 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %filter_len107, align 4, !tbaa !15
  %cmp108 = icmp ugt i32 %51, 0
  br i1 %cmp108, label %if.then110, label %if.else111

if.then110:                                       ; preds = %if.else106
  store ptr @H5HF__huge_bt2_filt_indir_remove, ptr %op, align 8, !tbaa !4
  br label %if.end112

if.else111:                                       ; preds = %if.else106
  store ptr @H5HF__huge_bt2_indir_remove, ptr %op, align 8, !tbaa !4
  br label %if.end112

if.end112:                                        ; preds = %if.else111, %if.then110
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end105
  %52 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f = getelementptr inbounds %struct.H5HF_hdr_t, ptr %52, i32 0, i32 28
  %53 = load ptr, ptr %f, align 8, !tbaa !37
  %54 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %huge_bt2_addr114 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %54, i32 0, i32 12
  %55 = load i64, ptr %huge_bt2_addr114, align 8, !tbaa !36
  %56 = load ptr, ptr %hdr.addr, align 8, !tbaa !4
  %f115 = getelementptr inbounds %struct.H5HF_hdr_t, ptr %56, i32 0, i32 28
  %57 = load ptr, ptr %f115, align 8, !tbaa !37
  %58 = load ptr, ptr %op, align 8, !tbaa !4
  %call116 = call i32 @H5B2_delete(ptr noundef %53, i64 noundef %55, ptr noundef %57, ptr noundef %58, ptr noundef %udata)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.end122

if.then119:                                       ; preds = %if.end113
  %59 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !33
  %60 = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !33
  %61 = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !33
  %call120 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.2, ptr noundef @__func__.H5HF__huge_delete, i32 noundef 1150, i64 noundef %59, i64 noundef %60, i64 noundef %61, ptr noundef @.str.29)
  store i8 1, ptr %err_occurred, align 1, !tbaa !8
  %62 = load i8, ptr %err_occurred, align 1, !tbaa !8, !range !10, !noundef !11
  %tobool121 = trunc i8 %62 to i1
  %frombool = zext i1 %tobool121 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !8
  store i32 -1, ptr %ret_value, align 4, !tbaa !34
  br label %done

if.end122:                                        ; preds = %if.end113
  br label %done

done:                                             ; preds = %if.end122, %if.then119
  br label %if.end123

if.end123:                                        ; preds = %done, %lor.lhs.false79
  %63 = load i32, ptr %ret_value, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %udata) #7
  ret i32 %63
}

declare ptr @H5B2_create(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @H5B2_get_addr(ptr noundef, ptr noundef) #4

declare i32 @H5F_block_read(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
!12 = !{!6, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !18, i64 276}
!16 = !{!"H5HF_hdr_t", !17, i64 0, !18, i64 272, !18, i64 276, !9, i64 280, !9, i64 281, !9, i64 282, !9, i64 283, !20, i64 288, !22, i64 400, !19, i64 408, !18, i64 416, !22, i64 424, !19, i64 432, !23, i64 440, !19, i64 512, !18, i64 520, !22, i64 528, !22, i64 536, !22, i64 544, !22, i64 552, !22, i64 560, !22, i64 568, !22, i64 576, !22, i64 584, !19, i64 592, !19, i64 600, !19, i64 608, !18, i64 616, !5, i64 624, !19, i64 632, !9, i64 640, !6, i64 641, !6, i64 642, !5, i64 648, !18, i64 656, !5, i64 664, !25, i64 672, !5, i64 688, !22, i64 696, !6, i64 704, !9, i64 705, !19, i64 712, !9, i64 720, !6, i64 721, !6, i64 722, !9, i64 723}
!17 = !{!"H5C_cache_entry_t", !18, i64 0, !5, i64 8, !19, i64 16, !19, i64 24, !5, i64 32, !9, i64 40, !5, i64 48, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !18, i64 60, !9, i64 64, !9, i64 65, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !18, i64 72, !5, i64 80, !18, i64 88, !18, i64 92, !18, i64 96, !18, i64 100, !18, i64 104, !9, i64 108, !9, i64 109, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !9, i64 160, !18, i64 164, !9, i64 168, !19, i64 176, !5, i64 184, !19, i64 192, !19, i64 200, !18, i64 208, !9, i64 212, !18, i64 216, !18, i64 220, !9, i64 224, !18, i64 228, !5, i64 232, !5, i64 240, !5, i64 248, !18, i64 256, !18, i64 260, !18, i64 264, !18, i64 268}
!18 = !{!"int", !6, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"H5HF_dtable_t", !21, i64 0, !19, i64 32, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !18, i64 64, !22, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104}
!21 = !{!"H5HF_dtable_cparam_t", !18, i64 0, !19, i64 8, !19, i64 16, !18, i64 24, !18, i64 28}
!22 = !{!"long long", !6, i64 0}
!23 = !{!"H5O_pline_t", !24, i64 0, !18, i64 40, !19, i64 48, !19, i64 56, !5, i64 64}
!24 = !{!"H5O_shared_t", !18, i64 0, !5, i64 8, !18, i64 16, !6, i64 24}
!25 = !{!"H5HF_block_iter_t", !9, i64 0, !5, i64 8}
!26 = !{!16, !18, i64 272}
!27 = !{!16, !6, i64 642}
!28 = !{!16, !6, i64 641}
!29 = !{!16, !9, i64 705}
!30 = !{!16, !6, i64 704}
!31 = !{!16, !22, i64 696}
!32 = !{!16, !5, i64 688}
!33 = !{!19, !19, i64 0}
!34 = !{!18, !18, i64 0}
!35 = !{!16, !18, i64 416}
!36 = !{!16, !19, i64 432}
!37 = !{!16, !5, i64 624}
!38 = !{!39, !5, i64 8}
!39 = !{!"H5Z_cb_t", !5, i64 0, !5, i64 8}
!40 = !{!39, !5, i64 0}
!41 = !{!42, !19, i64 0}
!42 = !{!"H5HF_huge_bt2_filt_dir_rec_t", !19, i64 0, !22, i64 8, !18, i64 16, !22, i64 24}
!43 = !{!42, !22, i64 8}
!44 = !{!42, !18, i64 16}
!45 = !{!42, !22, i64 24}
!46 = !{!47, !19, i64 0}
!47 = !{!"H5HF_huge_bt2_dir_rec_t", !19, i64 0, !22, i64 8}
!48 = !{!47, !22, i64 8}
!49 = !{!22, !22, i64 0}
!50 = !{!51, !19, i64 0}
!51 = !{!"H5HF_huge_bt2_filt_indir_rec_t", !19, i64 0, !22, i64 8, !18, i64 16, !22, i64 24, !22, i64 32}
!52 = !{!51, !22, i64 8}
!53 = !{!51, !18, i64 16}
!54 = !{!51, !22, i64 24}
!55 = !{!51, !22, i64 32}
!56 = !{!57, !19, i64 0}
!57 = !{!"H5HF_huge_bt2_indir_rec_t", !19, i64 0, !22, i64 8, !22, i64 16}
!58 = !{!57, !22, i64 8}
!59 = !{!57, !22, i64 16}
!60 = !{!16, !22, i64 560}
!61 = !{!16, !22, i64 568}
!62 = !{!63, !18, i64 12}
!63 = !{!"H5B2_create_t", !5, i64 0, !18, i64 8, !18, i64 12, !6, i64 16, !6, i64 17}
!64 = !{!63, !5, i64 0}
!65 = !{!63, !18, i64 8}
!66 = !{!63, !6, i64 16}
!67 = !{!63, !6, i64 17}
!68 = !{!16, !9, i64 282}
!69 = !{!16, !22, i64 424}
!70 = !{!71, !5, i64 0}
!71 = !{!"", !5, i64 0, !22, i64 8}
!72 = !{!71, !22, i64 8}
