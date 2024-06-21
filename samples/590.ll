; ModuleID = 'samples/590.bc'
source_filename = "nc4hdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NC_GRP_INFO = type { %struct.NC_OBJ, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.NC_OBJ = type { i32, ptr, i64 }
%struct.NCindex = type { ptr, ptr }
%struct.NClist = type { i64, i64, ptr }
%struct.NC_VAR_INFO = type { %struct.NC_OBJ, ptr, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, %struct.ChunkCache, i32, i32, ptr, ptr }
%struct.ChunkCache = type { i64, i64, float }
%struct.NC_HDF5_VAR_INFO = type { i64, ptr, i32, ptr, i32 }
%struct.NC_HDF5_GRP_INFO = type { i64 }
%struct.NC_TYPE_INFO = type { %struct.NC_OBJ, ptr, i32, i32, i64, i32, i32, ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.NC_HDF5_TYPE_INFO = type { i64, i64 }
%struct.NC_FILE_INFO = type { %struct.NC_OBJ, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.NC4_Provenance, %struct.NC4_Memio }
%struct.NC4_Provenance = type { ptr, i32, i32 }
%struct.NC4_Memio = type { %struct.NC_memio, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.NC_memio = type { i64, ptr, i32 }
%struct.NC_DIM_INFO = type { %struct.NC_OBJ, ptr, i64, i32, i32, i32, ptr, ptr }
%struct.NC_HDF5_DIM_INFO = type { i64, %struct.hdf5_objid }
%struct.hdf5_objid = type { i64, %struct.H5O_token_t }
%struct.H5O_token_t = type { [16 x i8] }
%struct.NC_ATT_INFO = type { %struct.NC_OBJ, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.Fields = type { ptr, i32 }
%struct.NC_FIELD_INFO = type { %struct.NC_OBJ, i32, i64, i32, ptr, ptr }
%struct.anon.0 = type { i32 }
%struct.NC_ENUM_MEMBER_INFO = type { ptr, ptr }
%struct.NC_HDF5_FILE_INFO = type { i64 }
%struct.H5G_stat_t = type { [2 x i64], [2 x i64], i32, i32, i64, i64, %struct.H5O_stat_t }
%struct.H5O_stat_t = type { i64, i64, i32, i32 }
%struct.NC_HDF5_Filter = type { i32, i32, i64, ptr }

@.str = private unnamed_addr constant [54 x i8] c"grp && grp->hdr.name && dimid >= 0 && dimscaleid >= 0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"nc4hdf.c\00", align 1
@__PRETTY_FUNCTION__.rec_reattach_scales = private unnamed_addr constant [53 x i8] c"int rec_reattach_scales(NC_GRP_INFO_T *, int, hid_t)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"child_grp\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"var && var->format_var_info\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"hdf5_var != NULL\00", align 1
@__PRETTY_FUNCTION__.rec_detach_scales = private unnamed_addr constant [51 x i8] c"int rec_detach_scales(NC_GRP_INFO_T *, int, hid_t)\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"grp && grp->format_grp_info && dataset\00", align 1
@__PRETTY_FUNCTION__.nc4_open_var_grp2 = private unnamed_addr constant [53 x i8] c"int nc4_open_var_grp2(NC_GRP_INFO_T *, int, hid_t *)\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"var && var->hdr.id == varid && var->format_var_info\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hdf_typeid && h5\00", align 1
@__PRETTY_FUNCTION__.nc4_get_hdf_typeid = private unnamed_addr constant [64 x i8] c"int nc4_get_hdf_typeid(NC_FILE_INFO_T *, nc_type, hid_t *, int)\00", align 1
@H5T_C_S1_g = external global i64, align 8
@H5T_STD_I8LE_g = external global i64, align 8
@H5T_STD_I8BE_g = external global i64, align 8
@H5T_NATIVE_SCHAR_g = external global i64, align 8
@H5T_STD_I16LE_g = external global i64, align 8
@H5T_STD_I16BE_g = external global i64, align 8
@H5T_NATIVE_SHORT_g = external global i64, align 8
@H5T_STD_I32LE_g = external global i64, align 8
@H5T_STD_I32BE_g = external global i64, align 8
@H5T_NATIVE_INT_g = external global i64, align 8
@H5T_STD_U8LE_g = external global i64, align 8
@H5T_STD_U8BE_g = external global i64, align 8
@H5T_NATIVE_UCHAR_g = external global i64, align 8
@H5T_STD_U16LE_g = external global i64, align 8
@H5T_STD_U16BE_g = external global i64, align 8
@H5T_NATIVE_USHORT_g = external global i64, align 8
@H5T_STD_U32LE_g = external global i64, align 8
@H5T_STD_U32BE_g = external global i64, align 8
@H5T_NATIVE_UINT_g = external global i64, align 8
@H5T_STD_I64LE_g = external global i64, align 8
@H5T_STD_I64BE_g = external global i64, align 8
@H5T_NATIVE_LLONG_g = external global i64, align 8
@H5T_STD_U64LE_g = external global i64, align 8
@H5T_STD_U64BE_g = external global i64, align 8
@H5T_NATIVE_ULLONG_g = external global i64, align 8
@H5T_IEEE_F32LE_g = external global i64, align 8
@H5T_IEEE_F32BE_g = external global i64, align 8
@H5T_NATIVE_FLOAT_g = external global i64, align 8
@H5T_IEEE_F64LE_g = external global i64, align 8
@H5T_IEEE_F64BE_g = external global i64, align 8
@H5T_NATIVE_DOUBLE_g = external global i64, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"*hdf_typeid != -1\00", align 1
@__const.nc4_create_dim_wo_var.chunk_dims = private unnamed_addr constant [1 x i64] [i64 1], align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"!dim->coord_var\00", align 1
@__PRETTY_FUNCTION__.nc4_create_dim_wo_var = private unnamed_addr constant [43 x i8] c"int nc4_create_dim_wo_var(NC_DIM_INFO_T *)\00", align 1
@H5P_CLS_DATASET_CREATE_ID_g = external global i64, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"%s%10d\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"This is a netCDF dimension but not a netCDF variable.\00", align 1
@.str.13 = private unnamed_addr constant [82 x i8] c"grp && grp->hdr.name && ((NC_HDF5_GRP_INFO_T *)(grp->format_grp_info))->hdf_grpid\00", align 1
@__PRETTY_FUNCTION__.nc4_rec_write_metadata = private unnamed_addr constant [55 x i8] c"int nc4_rec_write_metadata(NC_GRP_INFO_T *, nc_bool_t)\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"grp && grp->hdr.name && grp->format_grp_info\00", align 1
@__PRETTY_FUNCTION__.nc4_rec_write_groups_types = private unnamed_addr constant [48 x i8] c"int nc4_rec_write_groups_types(NC_GRP_INFO_T *)\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"grp && grp->hdr.name\00", align 1
@__PRETTY_FUNCTION__.nc4_rec_match_dimscales = private unnamed_addr constant [45 x i8] c"int nc4_rec_match_dimscales(NC_GRP_INFO_T *)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"dim && dim->format_dim_info\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"phony_dim_%d\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Dataset\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"Datatype\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Attribute\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@stderr = external global ptr, align 8
@.str.26 = private unnamed_addr constant [26 x i8] c"Type = %s(%lld) name='%s'\00", align 1
@__const.reportopenobjects.OTYPES = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16], align 16
@.str.27 = private unnamed_addr constant [27 x i8] c"h5 && h5->format_file_info\00", align 1
@__PRETTY_FUNCTION__.showopenobjects5 = private unnamed_addr constant [40 x i8] c"void showopenobjects5(NC_FILE_INFO_T *)\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"===== begin showopenobjects =====\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"===== end showopenobjects =====\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@__PRETTY_FUNCTION__.NC4_hdf5get_superblock = private unnamed_addr constant [57 x i8] c"int NC4_hdf5get_superblock(struct NC_FILE_INFO *, int *)\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"_Netcdf4Dimid\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"att\00", align 1
@__PRETTY_FUNCTION__.write_attlist = private unnamed_addr constant [51 x i8] c"int write_attlist(NCindex *, int, NC_GRP_INFO_T *)\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"att->hdr.name && grp && grp->format_grp_info\00", align 1
@__PRETTY_FUNCTION__.put_att_grpa = private unnamed_addr constant [56 x i8] c"int put_att_grpa(NC_GRP_INFO_T *, int, NC_ATT_INFO_T *)\00", align 1
@.str.35 = private unnamed_addr constant [59 x i8] c"dim && dim->format_dim_info && grp && grp->format_grp_info\00", align 1
@__PRETTY_FUNCTION__.write_dim = private unnamed_addr constant [59 x i8] c"int write_dim(NC_DIM_INFO_T *, NC_GRP_INFO_T *, nc_bool_t)\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"dim->unlimited\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"v1->dim[d1] && v1->dim[d1]->hdr.id == v1->dimids[d1]\00", align 1
@.str.38 = private unnamed_addr constant [59 x i8] c"var && var->format_var_info && grp && grp->format_grp_info\00", align 1
@__PRETTY_FUNCTION__.write_var = private unnamed_addr constant [59 x i8] c"int write_var(NC_VAR_INFO_T *, NC_GRP_INFO_T *, nc_bool_t)\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"d1->format_dim_info && d1->hdr.name\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"dsid > 0\00", align 1
@.str.41 = private unnamed_addr constant [85 x i8] c"var->dim[d] && var->dim[d]->hdr.id == var->dimids[d] && var->dim[d]->format_dim_info\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"grp && grp->format_grp_info && var && var->format_var_info\00", align 1
@__PRETTY_FUNCTION__.var_create_dataset = private unnamed_addr constant [68 x i8] c"int var_create_dataset(NC_GRP_INFO_T *, NC_VAR_INFO_T *, nc_bool_t)\00", align 1
@H5P_CLS_DATASET_ACCESS_ID_g = external global i64, align 8
@.str.45 = private unnamed_addr constant [37 x i8] c"dim && dim->hdr.id == var->dimids[d]\00", align 1
@__PRETTY_FUNCTION__.write_coord_dimids = private unnamed_addr constant [40 x i8] c"int write_coord_dimids(NC_VAR_INFO_T *)\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"_Netcdf4Coordinates\00", align 1
@__PRETTY_FUNCTION__.write_quantize_att = private unnamed_addr constant [40 x i8] c"int write_quantize_att(NC_VAR_INFO_T *)\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"_QuantizeBitGroomNumberOfSignificantDigits\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"_QuantizeGranularBitRoundNumberOfSignificantDigits\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"_QuantizeBitRoundNumberOfSignificantBits\00", align 1
@__PRETTY_FUNCTION__.attach_dimscales = private unnamed_addr constant [38 x i8] c"int attach_dimscales(NC_GRP_INFO_T *)\00", align 1
@.str.51 = private unnamed_addr constant [75 x i8] c"grp && grp->format_grp_info && grp->parent && grp->parent->format_grp_info\00", align 1
@__PRETTY_FUNCTION__.create_group = private unnamed_addr constant [34 x i8] c"int create_group(NC_GRP_INFO_T *)\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"parent_hdf5_grp->hdf_grpid\00", align 1
@H5P_CLS_GROUP_CREATE_ID_g = external global i64, align 8
@.str.53 = private unnamed_addr constant [12 x i8] c"_nc3_strict\00", align 1
@.str.54 = private unnamed_addr constant [62 x i8] c"grp && grp->format_grp_info && type && type->format_type_info\00", align 1
@__PRETTY_FUNCTION__.commit_type = private unnamed_addr constant [51 x i8] c"int commit_type(NC_GRP_INFO_T *, NC_TYPE_INFO_T *)\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@stdout = external global ptr, align 8
@.str.56 = private unnamed_addr constant [31 x i8] c"\0AReport: open objects on %lld\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"phony_dim\00", align 1

; Function Attrs: nounwind uwtable
define i32 @rec_reattach_scales(ptr noundef %grp, i32 noundef %dimid, i64 noundef %dimscaleid) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %dimid.addr = alloca i32, align 4
  %dimscaleid.addr = alloca i64, align 8
  %var = alloca ptr, align 8
  %child_grp = alloca ptr, align 8
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %hdf5_var = alloca ptr, align 8
  store ptr %grp, ptr %grp.addr, align 8
  store i32 %dimid, ptr %dimid.addr, align 4
  store i64 %dimscaleid, ptr %dimscaleid.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_grp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %2 = load ptr, ptr %name, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %dimid.addr, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %4 = load i64, ptr %dimscaleid.addr, align 8
  %cmp5 = icmp sge i64 %4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 84, ptr noundef @__PRETTY_FUNCTION__.rec_reattach_scales) #11
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %conv = sext i32 %5 to i64
  %6 = load ptr, ptr %grp.addr, align 8
  %children = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %children, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end15

cond.false:                                       ; preds = %for.cond
  %8 = load ptr, ptr %grp.addr, align 8
  %children8 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %children8, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %list, align 8
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false
  br label %cond.end

cond.false12:                                     ; preds = %cond.false
  %11 = load ptr, ptr %grp.addr, align 8
  %children13 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %children13, align 8
  %list14 = getelementptr inbounds %struct.NCindex, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %list14, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false12, %cond.true11
  %cond = phi i64 [ 0, %cond.true11 ], [ %14, %cond.false12 ]
  br label %cond.end15

cond.end15:                                       ; preds = %cond.end, %cond.true
  %cond16 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp17 = icmp ult i64 %conv, %cond16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end15
  %15 = load ptr, ptr %grp.addr, align 8
  %children19 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %children19, align 8
  %17 = load i32, ptr %i, align 4
  %conv20 = sext i32 %17 to i64
  %call = call ptr @ncindexith(ptr noundef %16, i64 noundef %conv20)
  store ptr %call, ptr %child_grp, align 8
  %18 = load ptr, ptr %child_grp, align 8
  %tobool21 = icmp ne ptr %18, null
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %for.body
  br label %if.end24

if.else23:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 91, ptr noundef @__PRETTY_FUNCTION__.rec_reattach_scales) #11
  unreachable

if.end24:                                         ; preds = %if.then22
  %19 = load ptr, ptr %child_grp, align 8
  %20 = load i32, ptr %dimid.addr, align 4
  %21 = load i64, ptr %dimscaleid.addr, align 8
  %call25 = call i32 @rec_reattach_scales(ptr noundef %19, i32 noundef %20, i64 noundef %21)
  store i32 %call25, ptr %retval1, align 4
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %22 = load i32, ptr %retval1, align 4
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93

if.end28:                                         ; preds = %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %cond.end15
  store i32 0, ptr %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc90, %for.end
  %24 = load i32, ptr %i, align 4
  %conv30 = sext i32 %24 to i64
  %25 = load ptr, ptr %grp.addr, align 8
  %vars = getelementptr inbounds %struct.NC_GRP_INFO, ptr %25, i32 0, i32 9
  %26 = load ptr, ptr %vars, align 8
  %cmp31 = icmp eq ptr %26, null
  br i1 %cmp31, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %for.cond29
  br label %cond.end46

cond.false34:                                     ; preds = %for.cond29
  %27 = load ptr, ptr %grp.addr, align 8
  %vars35 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %vars35, align 8
  %list36 = getelementptr inbounds %struct.NCindex, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %list36, align 8
  %cmp37 = icmp eq ptr %29, null
  br i1 %cmp37, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.false34
  br label %cond.end44

cond.false40:                                     ; preds = %cond.false34
  %30 = load ptr, ptr %grp.addr, align 8
  %vars41 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %30, i32 0, i32 9
  %31 = load ptr, ptr %vars41, align 8
  %list42 = getelementptr inbounds %struct.NCindex, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %list42, align 8
  %length43 = getelementptr inbounds %struct.NClist, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %length43, align 8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false40, %cond.true39
  %cond45 = phi i64 [ 0, %cond.true39 ], [ %33, %cond.false40 ]
  br label %cond.end46

cond.end46:                                       ; preds = %cond.end44, %cond.true33
  %cond47 = phi i64 [ 0, %cond.true33 ], [ %cond45, %cond.end44 ]
  %cmp48 = icmp ult i64 %conv30, %cond47
  br i1 %cmp48, label %for.body50, label %for.end92

for.body50:                                       ; preds = %cond.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  %34 = load ptr, ptr %grp.addr, align 8
  %vars51 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %vars51, align 8
  %36 = load i32, ptr %i, align 4
  %conv52 = sext i32 %36 to i64
  %call53 = call ptr @ncindexith(ptr noundef %35, i64 noundef %conv52)
  store ptr %call53, ptr %var, align 8
  %37 = load ptr, ptr %var, align 8
  %tobool54 = icmp ne ptr %37, null
  br i1 %tobool54, label %land.lhs.true55, label %if.else58

land.lhs.true55:                                  ; preds = %for.body50
  %38 = load ptr, ptr %var, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %38, i32 0, i32 27
  %39 = load ptr, ptr %format_var_info, align 8
  %tobool56 = icmp ne ptr %39, null
  br i1 %tobool56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %land.lhs.true55
  br label %if.end59

if.else58:                                        ; preds = %land.lhs.true55, %for.body50
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 102, ptr noundef @__PRETTY_FUNCTION__.rec_reattach_scales) #11
  unreachable

if.end59:                                         ; preds = %if.then57
  %40 = load ptr, ptr %var, align 8
  %format_var_info60 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %40, i32 0, i32 27
  %41 = load ptr, ptr %format_var_info60, align 8
  store ptr %41, ptr %hdf5_var, align 8
  %42 = load ptr, ptr %hdf5_var, align 8
  %cmp61 = icmp ne ptr %42, null
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.end59
  br label %if.end65

if.else64:                                        ; preds = %if.end59
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 105, ptr noundef @__PRETTY_FUNCTION__.rec_reattach_scales) #11
  unreachable

if.end65:                                         ; preds = %if.then63
  store i32 0, ptr %d, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc87, %if.end65
  %43 = load i32, ptr %d, align 4
  %conv67 = sext i32 %43 to i64
  %44 = load ptr, ptr %var, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %44, i32 0, i32 3
  %45 = load i64, ptr %ndims, align 8
  %cmp68 = icmp ult i64 %conv67, %45
  br i1 %cmp68, label %for.body70, label %for.end89

for.body70:                                       ; preds = %for.cond66
  %46 = load ptr, ptr %var, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %dimids, align 8
  %48 = load i32, ptr %d, align 4
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds i32, ptr %47, i64 %idxprom
  %49 = load i32, ptr %arrayidx, align 4
  %50 = load i32, ptr %dimid.addr, align 4
  %cmp71 = icmp eq i32 %49, %50
  br i1 %cmp71, label %land.lhs.true73, label %if.end86

land.lhs.true73:                                  ; preds = %for.body70
  %51 = load ptr, ptr %hdf5_var, align 8
  %dimscale = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %dimscale, align 8
  %tobool74 = icmp ne i32 %52, 0
  br i1 %tobool74, label %if.end86, label %if.then75

if.then75:                                        ; preds = %land.lhs.true73
  %53 = load ptr, ptr %var, align 8
  %created = getelementptr inbounds %struct.NC_VAR_INFO, ptr %53, i32 0, i32 11
  %54 = load i32, ptr %created, align 4
  %tobool76 = icmp ne i32 %54, 0
  br i1 %tobool76, label %if.then77, label %if.end85

if.then77:                                        ; preds = %if.then75
  %55 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %55, i32 0, i32 0
  %56 = load i64, ptr %hdf_datasetid, align 8
  %57 = load i64, ptr %dimscaleid.addr, align 8
  %58 = load i32, ptr %d, align 4
  %call78 = call i32 @H5DSattach_scale(i64 noundef %56, i64 noundef %57, i32 noundef %58)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then77
  store i32 -124, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %if.then77
  %59 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %dimscale_attached, align 8
  %61 = load i32, ptr %d, align 4
  %idxprom83 = sext i32 %61 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %60, i64 %idxprom83
  store i32 1, ptr %arrayidx84, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end82, %if.then75
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %land.lhs.true73, %for.body70
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86
  %62 = load i32, ptr %d, align 4
  %inc88 = add nsw i32 %62, 1
  store i32 %inc88, ptr %d, align 4
  br label %for.cond66, !llvm.loop !6

for.end89:                                        ; preds = %for.cond66
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end89, %if.then81
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup93 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc90

for.inc90:                                        ; preds = %cleanup.cont
  %63 = load i32, ptr %i, align 4
  %inc91 = add nsw i32 %63, 1
  store i32 %inc91, ptr %i, align 4
  br label %for.cond29, !llvm.loop !7

for.end92:                                        ; preds = %cond.end46
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup93

cleanup93:                                        ; preds = %for.end92, %cleanup, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_grp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #10
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @ncindexith(ptr noundef, i64 noundef) #3

declare i32 @H5DSattach_scale(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @rec_detach_scales(ptr noundef %grp, i32 noundef %dimid, i64 noundef %dimscaleid) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %dimid.addr = alloca i32, align 4
  %dimscaleid.addr = alloca i64, align 8
  %var = alloca ptr, align 8
  %child_grp = alloca ptr, align 8
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %hdf5_var = alloca ptr, align 8
  store ptr %grp, ptr %grp.addr, align 8
  store i32 %dimid, ptr %dimid.addr, align 4
  store i64 %dimscaleid, ptr %dimscaleid.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_grp) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %2 = load ptr, ptr %name, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %dimid.addr, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true3
  %4 = load i64, ptr %dimscaleid.addr, align 8
  %cmp5 = icmp sge i64 %4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 149, ptr noundef @__PRETTY_FUNCTION__.rec_detach_scales) #11
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %conv = sext i32 %5 to i64
  %6 = load ptr, ptr %grp.addr, align 8
  %children = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %children, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end15

cond.false:                                       ; preds = %for.cond
  %8 = load ptr, ptr %grp.addr, align 8
  %children8 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %children8, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %list, align 8
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false
  br label %cond.end

cond.false12:                                     ; preds = %cond.false
  %11 = load ptr, ptr %grp.addr, align 8
  %children13 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %children13, align 8
  %list14 = getelementptr inbounds %struct.NCindex, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %list14, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false12, %cond.true11
  %cond = phi i64 [ 0, %cond.true11 ], [ %14, %cond.false12 ]
  br label %cond.end15

cond.end15:                                       ; preds = %cond.end, %cond.true
  %cond16 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp17 = icmp ult i64 %conv, %cond16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end15
  %15 = load ptr, ptr %grp.addr, align 8
  %children19 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %children19, align 8
  %17 = load i32, ptr %i, align 4
  %conv20 = sext i32 %17 to i64
  %call = call ptr @ncindexith(ptr noundef %16, i64 noundef %conv20)
  store ptr %call, ptr %child_grp, align 8
  %18 = load ptr, ptr %child_grp, align 8
  %cmp21 = icmp eq ptr %18, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %19 = load ptr, ptr %child_grp, align 8
  %20 = load i32, ptr %dimid.addr, align 4
  %21 = load i64, ptr %dimscaleid.addr, align 8
  %call25 = call i32 @rec_detach_scales(ptr noundef %19, i32 noundef %20, i64 noundef %21)
  store i32 %call25, ptr %retval1, align 4
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  %22 = load i32, ptr %retval1, align 4
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97

if.end28:                                         ; preds = %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.then23
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %cond.end15
  store i32 0, ptr %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc94, %for.end
  %24 = load i32, ptr %i, align 4
  %conv30 = sext i32 %24 to i64
  %25 = load ptr, ptr %grp.addr, align 8
  %vars = getelementptr inbounds %struct.NC_GRP_INFO, ptr %25, i32 0, i32 9
  %26 = load ptr, ptr %vars, align 8
  %cmp31 = icmp eq ptr %26, null
  br i1 %cmp31, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %for.cond29
  br label %cond.end46

cond.false34:                                     ; preds = %for.cond29
  %27 = load ptr, ptr %grp.addr, align 8
  %vars35 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %vars35, align 8
  %list36 = getelementptr inbounds %struct.NCindex, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %list36, align 8
  %cmp37 = icmp eq ptr %29, null
  br i1 %cmp37, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.false34
  br label %cond.end44

cond.false40:                                     ; preds = %cond.false34
  %30 = load ptr, ptr %grp.addr, align 8
  %vars41 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %30, i32 0, i32 9
  %31 = load ptr, ptr %vars41, align 8
  %list42 = getelementptr inbounds %struct.NCindex, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %list42, align 8
  %length43 = getelementptr inbounds %struct.NClist, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %length43, align 8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false40, %cond.true39
  %cond45 = phi i64 [ 0, %cond.true39 ], [ %33, %cond.false40 ]
  br label %cond.end46

cond.end46:                                       ; preds = %cond.end44, %cond.true33
  %cond47 = phi i64 [ 0, %cond.true33 ], [ %cond45, %cond.end44 ]
  %cmp48 = icmp ult i64 %conv30, %cond47
  br i1 %cmp48, label %for.body50, label %for.end96

for.body50:                                       ; preds = %cond.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  %34 = load ptr, ptr %grp.addr, align 8
  %vars51 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %vars51, align 8
  %36 = load i32, ptr %i, align 4
  %conv52 = sext i32 %36 to i64
  %call53 = call ptr @ncindexith(ptr noundef %35, i64 noundef %conv52)
  store ptr %call53, ptr %var, align 8
  %37 = load ptr, ptr %var, align 8
  %tobool54 = icmp ne ptr %37, null
  br i1 %tobool54, label %land.lhs.true55, label %if.else58

land.lhs.true55:                                  ; preds = %for.body50
  %38 = load ptr, ptr %var, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %38, i32 0, i32 27
  %39 = load ptr, ptr %format_var_info, align 8
  %tobool56 = icmp ne ptr %39, null
  br i1 %tobool56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %land.lhs.true55
  br label %if.end59

if.else58:                                        ; preds = %land.lhs.true55, %for.body50
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 165, ptr noundef @__PRETTY_FUNCTION__.rec_detach_scales) #11
  unreachable

if.end59:                                         ; preds = %if.then57
  %40 = load ptr, ptr %var, align 8
  %format_var_info60 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %40, i32 0, i32 27
  %41 = load ptr, ptr %format_var_info60, align 8
  store ptr %41, ptr %hdf5_var, align 8
  store i32 0, ptr %d, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc91, %if.end59
  %42 = load i32, ptr %d, align 4
  %conv62 = sext i32 %42 to i64
  %43 = load ptr, ptr %var, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %43, i32 0, i32 3
  %44 = load i64, ptr %ndims, align 8
  %cmp63 = icmp ult i64 %conv62, %44
  br i1 %cmp63, label %for.body65, label %for.end93

for.body65:                                       ; preds = %for.cond61
  %45 = load ptr, ptr %var, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %dimids, align 8
  %47 = load i32, ptr %d, align 4
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds i32, ptr %46, i64 %idxprom
  %48 = load i32, ptr %arrayidx, align 4
  %49 = load i32, ptr %dimid.addr, align 4
  %cmp66 = icmp eq i32 %48, %49
  br i1 %cmp66, label %land.lhs.true68, label %if.end90

land.lhs.true68:                                  ; preds = %for.body65
  %50 = load ptr, ptr %hdf5_var, align 8
  %dimscale = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %50, i32 0, i32 2
  %51 = load i32, ptr %dimscale, align 8
  %tobool69 = icmp ne i32 %51, 0
  br i1 %tobool69, label %if.end90, label %if.then70

if.then70:                                        ; preds = %land.lhs.true68
  %52 = load ptr, ptr %var, align 8
  %created = getelementptr inbounds %struct.NC_VAR_INFO, ptr %52, i32 0, i32 11
  %53 = load i32, ptr %created, align 4
  %tobool71 = icmp ne i32 %53, 0
  br i1 %tobool71, label %if.then72, label %if.end89

if.then72:                                        ; preds = %if.then70
  %54 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %dimscale_attached, align 8
  %tobool73 = icmp ne ptr %55, null
  br i1 %tobool73, label %land.lhs.true74, label %if.end88

land.lhs.true74:                                  ; preds = %if.then72
  %56 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached75 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %dimscale_attached75, align 8
  %58 = load i32, ptr %d, align 4
  %idxprom76 = sext i32 %58 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %57, i64 %idxprom76
  %59 = load i32, ptr %arrayidx77, align 4
  %tobool78 = icmp ne i32 %59, 0
  br i1 %tobool78, label %if.then79, label %if.end88

if.then79:                                        ; preds = %land.lhs.true74
  %60 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %60, i32 0, i32 0
  %61 = load i64, ptr %hdf_datasetid, align 8
  %62 = load i64, ptr %dimscaleid.addr, align 8
  %63 = load i32, ptr %d, align 4
  %call80 = call i32 @H5DSdetach_scale(i64 noundef %61, i64 noundef %62, i32 noundef %63)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then79
  store i32 -124, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end84:                                         ; preds = %if.then79
  %64 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached85 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %dimscale_attached85, align 8
  %66 = load i32, ptr %d, align 4
  %idxprom86 = sext i32 %66 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %65, i64 %idxprom86
  store i32 0, ptr %arrayidx87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end84, %land.lhs.true74, %if.then72
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then70
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %land.lhs.true68, %for.body65
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %67 = load i32, ptr %d, align 4
  %inc92 = add nsw i32 %67, 1
  store i32 %inc92, ptr %d, align 4
  br label %for.cond61, !llvm.loop !9

for.end93:                                        ; preds = %for.cond61
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end93, %if.then83
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup97 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc94

for.inc94:                                        ; preds = %cleanup.cont
  %68 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %68, 1
  store i32 %inc95, ptr %i, align 4
  br label %for.cond29, !llvm.loop !10

for.end96:                                        ; preds = %cond.end46
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97

cleanup97:                                        ; preds = %for.end96, %cleanup, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_grp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #10
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

declare i32 @H5DSdetach_scale(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @nc4_open_var_grp2(ptr noundef %grp, i32 noundef %varid, ptr noundef %dataset) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %varid.addr = alloca i32, align 4
  %dataset.addr = alloca ptr, align 8
  %var = alloca ptr, align 8
  %hdf5_var = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hdf5_grp = alloca ptr, align 8
  store ptr %grp, ptr %grp.addr, align 8
  store i32 %varid, ptr %varid.addr, align 4
  store ptr %dataset, ptr %dataset.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %format_grp_info, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %dataset.addr, align 8
  %tobool3 = icmp ne ptr %3, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 207, ptr noundef @__PRETTY_FUNCTION__.nc4_open_var_grp2) #11
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %grp.addr, align 8
  %vars = getelementptr inbounds %struct.NC_GRP_INFO, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %vars, align 8
  %6 = load i32, ptr %varid.addr, align 4
  %conv = sext i32 %6 to i64
  %call = call ptr @ncindexith(ptr noundef %5, i64 noundef %conv)
  store ptr %call, ptr %var, align 8
  %tobool4 = icmp ne ptr %call, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i32 -49, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %var, align 8
  %tobool7 = icmp ne ptr %7, null
  br i1 %tobool7, label %land.lhs.true8, label %if.else14

land.lhs.true8:                                   ; preds = %if.end6
  %8 = load ptr, ptr %var, align 8
  %hdr = getelementptr inbounds %struct.NC_VAR_INFO, ptr %8, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 2
  %9 = load i64, ptr %id, align 8
  %10 = load i32, ptr %varid.addr, align 4
  %conv9 = sext i32 %10 to i64
  %cmp = icmp eq i64 %9, %conv9
  br i1 %cmp, label %land.lhs.true11, label %if.else14

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %11 = load ptr, ptr %var, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %11, i32 0, i32 27
  %12 = load ptr, ptr %format_var_info, align 8
  %tobool12 = icmp ne ptr %12, null
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %land.lhs.true11
  br label %if.end15

if.else14:                                        ; preds = %land.lhs.true11, %land.lhs.true8, %if.end6
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.1, i32 noundef 212, ptr noundef @__PRETTY_FUNCTION__.nc4_open_var_grp2) #11
  unreachable

if.end15:                                         ; preds = %if.then13
  %13 = load ptr, ptr %var, align 8
  %format_var_info16 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %13, i32 0, i32 27
  %14 = load ptr, ptr %format_var_info16, align 8
  store ptr %14, ptr %hdf5_var, align 8
  %15 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %hdf_datasetid, align 8
  %tobool17 = icmp ne i64 %16, 0
  br i1 %tobool17, label %if.end27, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  %17 = load ptr, ptr %grp.addr, align 8
  %format_grp_info19 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %format_grp_info19, align 8
  store ptr %18, ptr %hdf5_grp, align 8
  %19 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %hdf_grpid, align 8
  %21 = load ptr, ptr %var, align 8
  %hdr20 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %21, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr20, i32 0, i32 1
  %22 = load ptr, ptr %name, align 8
  %call21 = call i64 @H5Dopen2(i64 noundef %20, ptr noundef %22, i64 noundef 0)
  %23 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid22 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %23, i32 0, i32 0
  store i64 %call21, ptr %hdf_datasetid22, align 8
  %cmp23 = icmp slt i64 %call21, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then18
  store i32 -49, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.then18
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end27

if.end27:                                         ; preds = %cleanup.cont, %if.end15
  %24 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid28 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %24, i32 0, i32 0
  %25 = load i64, ptr %hdf_datasetid28, align 8
  %26 = load ptr, ptr %dataset.addr, align 8
  store i64 %25, ptr %26, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.end27, %cleanup, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #10
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare i64 @H5Dopen2(i64 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @nc4_get_hdf_typeid(ptr noundef %h5, i32 noundef %xtype, ptr noundef %hdf_typeid, i32 noundef %endianness) #0 {
entry:
  %retval = alloca i32, align 4
  %h5.addr = alloca ptr, align 8
  %xtype.addr = alloca i32, align 4
  %hdf_typeid.addr = alloca ptr, align 8
  %endianness.addr = alloca i32, align 4
  %type = alloca ptr, align 8
  %typeid = alloca i64, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h5, ptr %h5.addr, align 8
  store i32 %xtype, ptr %xtype.addr, align 4
  store ptr %hdf_typeid, ptr %hdf_typeid.addr, align 8
  store i32 %endianness, ptr %endianness.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %typeid) #10
  store i64 0, ptr %typeid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %0 = load ptr, ptr %hdf_typeid.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %h5.addr, align 8
  %tobool2 = icmp ne ptr %1, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 256, ptr noundef @__PRETTY_FUNCTION__.nc4_get_hdf_typeid) #11
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %hdf_typeid.addr, align 8
  store i64 -1, ptr %2, align 8
  %3 = load i32, ptr %xtype.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  store i32 -45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else4:                                         ; preds = %if.end
  %4 = load i32, ptr %xtype.addr, align 4
  %cmp5 = icmp eq i32 %4, 2
  br i1 %cmp5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else4
  %5 = load i32, ptr %xtype.addr, align 4
  %cmp6 = icmp eq i32 %5, 12
  br i1 %cmp6, label %if.then7, label %if.else58

if.then7:                                         ; preds = %lor.lhs.false, %if.else4
  %6 = load i32, ptr %xtype.addr, align 4
  %cmp8 = icmp eq i32 %6, 2
  br i1 %cmp8, label %if.then9, label %if.else31

if.then9:                                         ; preds = %if.then7
  %call = call i32 @H5open()
  %7 = load i64, ptr @H5T_C_S1_g, align 8
  %call10 = call i64 @H5Tcopy(i64 noundef %7)
  store i64 %call10, ptr %typeid, align 8
  %cmp11 = icmp slt i64 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %8 = load i64, ptr %typeid, align 8
  %call14 = call i32 @H5Tset_strpad(i64 noundef %8, i32 noundef 0)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  br label %do.body

do.body:                                          ; preds = %if.then16
  br label %do.body17

do.body17:                                        ; preds = %do.body
  store i32 -108, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body17
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond18:                                        ; No predecessors!
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end13
  %9 = load i64, ptr %typeid, align 8
  %call21 = call i32 @H5Tset_cset(i64 noundef %9, i32 noundef 0)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  br label %do.body24

do.body24:                                        ; preds = %if.then23
  br label %do.body25

do.body25:                                        ; preds = %do.body24
  store i32 -108, ptr %retval1, align 4
  br label %do.cond26

do.cond26:                                        ; preds = %do.body25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %exit

do.cond28:                                        ; No predecessors!
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %if.end20
  %10 = load i64, ptr %typeid, align 8
  %11 = load ptr, ptr %hdf_typeid.addr, align 8
  store i64 %10, ptr %11, align 8
  store i64 0, ptr %typeid, align 8
  br label %if.end57

if.else31:                                        ; preds = %if.then7
  %call32 = call i32 @H5open()
  %12 = load i64, ptr @H5T_C_S1_g, align 8
  %call33 = call i64 @H5Tcopy(i64 noundef %12)
  store i64 %call33, ptr %typeid, align 8
  %cmp34 = icmp slt i64 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else31
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.else31
  %13 = load i64, ptr %typeid, align 8
  %call37 = call i32 @H5Tset_size(i64 noundef %13, i64 noundef -1)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end36
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  br label %do.body41

do.body41:                                        ; preds = %do.body40
  store i32 -108, ptr %retval1, align 4
  br label %do.cond42

do.cond42:                                        ; preds = %do.body41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %exit

do.cond44:                                        ; No predecessors!
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %if.end36
  %14 = load i64, ptr %typeid, align 8
  %call47 = call i32 @H5Tset_cset(i64 noundef %14, i32 noundef 1)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end46
  br label %do.body50

do.body50:                                        ; preds = %if.then49
  br label %do.body51

do.body51:                                        ; preds = %do.body50
  store i32 -108, ptr %retval1, align 4
  br label %do.cond52

do.cond52:                                        ; preds = %do.body51
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  br label %exit

do.cond54:                                        ; No predecessors!
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %if.end46
  %15 = load i64, ptr %typeid, align 8
  %16 = load ptr, ptr %hdf_typeid.addr, align 8
  store i64 %15, ptr %16, align 8
  store i64 0, ptr %typeid, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end30
  br label %if.end194

if.else58:                                        ; preds = %lor.lhs.false
  %17 = load i32, ptr %xtype.addr, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb70
    i32 4, label %sw.bb82
    i32 7, label %sw.bb94
    i32 8, label %sw.bb106
    i32 9, label %sw.bb118
    i32 10, label %sw.bb130
    i32 11, label %sw.bb142
    i32 5, label %sw.bb154
    i32 6, label %sw.bb166
  ]

sw.bb:                                            ; preds = %if.else58
  %18 = load i32, ptr %endianness.addr, align 4
  %cmp59 = icmp eq i32 %18, 1
  br i1 %cmp59, label %if.then60, label %if.else62

if.then60:                                        ; preds = %sw.bb
  %call61 = call i32 @H5open()
  %19 = load i64, ptr @H5T_STD_I8LE_g, align 8
  store i64 %19, ptr %typeid, align 8
  br label %if.end69

if.else62:                                        ; preds = %sw.bb
  %20 = load i32, ptr %endianness.addr, align 4
  %cmp63 = icmp eq i32 %20, 2
  br i1 %cmp63, label %if.then64, label %if.else66

if.then64:                                        ; preds = %if.else62
  %call65 = call i32 @H5open()
  %21 = load i64, ptr @H5T_STD_I8BE_g, align 8
  store i64 %21, ptr %typeid, align 8
  br label %if.end68

if.else66:                                        ; preds = %if.else62
  %call67 = call i32 @H5open()
  %22 = load i64, ptr @H5T_NATIVE_SCHAR_g, align 8
  store i64 %22, ptr %typeid, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then60
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.else58
  %23 = load i32, ptr %endianness.addr, align 4
  %cmp71 = icmp eq i32 %23, 1
  br i1 %cmp71, label %if.then72, label %if.else74

if.then72:                                        ; preds = %sw.bb70
  %call73 = call i32 @H5open()
  %24 = load i64, ptr @H5T_STD_I16LE_g, align 8
  store i64 %24, ptr %typeid, align 8
  br label %if.end81

if.else74:                                        ; preds = %sw.bb70
  %25 = load i32, ptr %endianness.addr, align 4
  %cmp75 = icmp eq i32 %25, 2
  br i1 %cmp75, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else74
  %call77 = call i32 @H5open()
  %26 = load i64, ptr @H5T_STD_I16BE_g, align 8
  store i64 %26, ptr %typeid, align 8
  br label %if.end80

if.else78:                                        ; preds = %if.else74
  %call79 = call i32 @H5open()
  %27 = load i64, ptr @H5T_NATIVE_SHORT_g, align 8
  store i64 %27, ptr %typeid, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then76
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then72
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.else58
  %28 = load i32, ptr %endianness.addr, align 4
  %cmp83 = icmp eq i32 %28, 1
  br i1 %cmp83, label %if.then84, label %if.else86

if.then84:                                        ; preds = %sw.bb82
  %call85 = call i32 @H5open()
  %29 = load i64, ptr @H5T_STD_I32LE_g, align 8
  store i64 %29, ptr %typeid, align 8
  br label %if.end93

if.else86:                                        ; preds = %sw.bb82
  %30 = load i32, ptr %endianness.addr, align 4
  %cmp87 = icmp eq i32 %30, 2
  br i1 %cmp87, label %if.then88, label %if.else90

if.then88:                                        ; preds = %if.else86
  %call89 = call i32 @H5open()
  %31 = load i64, ptr @H5T_STD_I32BE_g, align 8
  store i64 %31, ptr %typeid, align 8
  br label %if.end92

if.else90:                                        ; preds = %if.else86
  %call91 = call i32 @H5open()
  %32 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  store i64 %32, ptr %typeid, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.else90, %if.then88
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then84
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.else58
  %33 = load i32, ptr %endianness.addr, align 4
  %cmp95 = icmp eq i32 %33, 1
  br i1 %cmp95, label %if.then96, label %if.else98

if.then96:                                        ; preds = %sw.bb94
  %call97 = call i32 @H5open()
  %34 = load i64, ptr @H5T_STD_U8LE_g, align 8
  store i64 %34, ptr %typeid, align 8
  br label %if.end105

if.else98:                                        ; preds = %sw.bb94
  %35 = load i32, ptr %endianness.addr, align 4
  %cmp99 = icmp eq i32 %35, 2
  br i1 %cmp99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.else98
  %call101 = call i32 @H5open()
  %36 = load i64, ptr @H5T_STD_U8BE_g, align 8
  store i64 %36, ptr %typeid, align 8
  br label %if.end104

if.else102:                                       ; preds = %if.else98
  %call103 = call i32 @H5open()
  %37 = load i64, ptr @H5T_NATIVE_UCHAR_g, align 8
  store i64 %37, ptr %typeid, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.else102, %if.then100
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then96
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.else58
  %38 = load i32, ptr %endianness.addr, align 4
  %cmp107 = icmp eq i32 %38, 1
  br i1 %cmp107, label %if.then108, label %if.else110

if.then108:                                       ; preds = %sw.bb106
  %call109 = call i32 @H5open()
  %39 = load i64, ptr @H5T_STD_U16LE_g, align 8
  store i64 %39, ptr %typeid, align 8
  br label %if.end117

if.else110:                                       ; preds = %sw.bb106
  %40 = load i32, ptr %endianness.addr, align 4
  %cmp111 = icmp eq i32 %40, 2
  br i1 %cmp111, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.else110
  %call113 = call i32 @H5open()
  %41 = load i64, ptr @H5T_STD_U16BE_g, align 8
  store i64 %41, ptr %typeid, align 8
  br label %if.end116

if.else114:                                       ; preds = %if.else110
  %call115 = call i32 @H5open()
  %42 = load i64, ptr @H5T_NATIVE_USHORT_g, align 8
  store i64 %42, ptr %typeid, align 8
  br label %if.end116

if.end116:                                        ; preds = %if.else114, %if.then112
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then108
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.else58
  %43 = load i32, ptr %endianness.addr, align 4
  %cmp119 = icmp eq i32 %43, 1
  br i1 %cmp119, label %if.then120, label %if.else122

if.then120:                                       ; preds = %sw.bb118
  %call121 = call i32 @H5open()
  %44 = load i64, ptr @H5T_STD_U32LE_g, align 8
  store i64 %44, ptr %typeid, align 8
  br label %if.end129

if.else122:                                       ; preds = %sw.bb118
  %45 = load i32, ptr %endianness.addr, align 4
  %cmp123 = icmp eq i32 %45, 2
  br i1 %cmp123, label %if.then124, label %if.else126

if.then124:                                       ; preds = %if.else122
  %call125 = call i32 @H5open()
  %46 = load i64, ptr @H5T_STD_U32BE_g, align 8
  store i64 %46, ptr %typeid, align 8
  br label %if.end128

if.else126:                                       ; preds = %if.else122
  %call127 = call i32 @H5open()
  %47 = load i64, ptr @H5T_NATIVE_UINT_g, align 8
  store i64 %47, ptr %typeid, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.else126, %if.then124
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then120
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.else58
  %48 = load i32, ptr %endianness.addr, align 4
  %cmp131 = icmp eq i32 %48, 1
  br i1 %cmp131, label %if.then132, label %if.else134

if.then132:                                       ; preds = %sw.bb130
  %call133 = call i32 @H5open()
  %49 = load i64, ptr @H5T_STD_I64LE_g, align 8
  store i64 %49, ptr %typeid, align 8
  br label %if.end141

if.else134:                                       ; preds = %sw.bb130
  %50 = load i32, ptr %endianness.addr, align 4
  %cmp135 = icmp eq i32 %50, 2
  br i1 %cmp135, label %if.then136, label %if.else138

if.then136:                                       ; preds = %if.else134
  %call137 = call i32 @H5open()
  %51 = load i64, ptr @H5T_STD_I64BE_g, align 8
  store i64 %51, ptr %typeid, align 8
  br label %if.end140

if.else138:                                       ; preds = %if.else134
  %call139 = call i32 @H5open()
  %52 = load i64, ptr @H5T_NATIVE_LLONG_g, align 8
  store i64 %52, ptr %typeid, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.else138, %if.then136
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.then132
  br label %sw.epilog

sw.bb142:                                         ; preds = %if.else58
  %53 = load i32, ptr %endianness.addr, align 4
  %cmp143 = icmp eq i32 %53, 1
  br i1 %cmp143, label %if.then144, label %if.else146

if.then144:                                       ; preds = %sw.bb142
  %call145 = call i32 @H5open()
  %54 = load i64, ptr @H5T_STD_U64LE_g, align 8
  store i64 %54, ptr %typeid, align 8
  br label %if.end153

if.else146:                                       ; preds = %sw.bb142
  %55 = load i32, ptr %endianness.addr, align 4
  %cmp147 = icmp eq i32 %55, 2
  br i1 %cmp147, label %if.then148, label %if.else150

if.then148:                                       ; preds = %if.else146
  %call149 = call i32 @H5open()
  %56 = load i64, ptr @H5T_STD_U64BE_g, align 8
  store i64 %56, ptr %typeid, align 8
  br label %if.end152

if.else150:                                       ; preds = %if.else146
  %call151 = call i32 @H5open()
  %57 = load i64, ptr @H5T_NATIVE_ULLONG_g, align 8
  store i64 %57, ptr %typeid, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.else150, %if.then148
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then144
  br label %sw.epilog

sw.bb154:                                         ; preds = %if.else58
  %58 = load i32, ptr %endianness.addr, align 4
  %cmp155 = icmp eq i32 %58, 1
  br i1 %cmp155, label %if.then156, label %if.else158

if.then156:                                       ; preds = %sw.bb154
  %call157 = call i32 @H5open()
  %59 = load i64, ptr @H5T_IEEE_F32LE_g, align 8
  store i64 %59, ptr %typeid, align 8
  br label %if.end165

if.else158:                                       ; preds = %sw.bb154
  %60 = load i32, ptr %endianness.addr, align 4
  %cmp159 = icmp eq i32 %60, 2
  br i1 %cmp159, label %if.then160, label %if.else162

if.then160:                                       ; preds = %if.else158
  %call161 = call i32 @H5open()
  %61 = load i64, ptr @H5T_IEEE_F32BE_g, align 8
  store i64 %61, ptr %typeid, align 8
  br label %if.end164

if.else162:                                       ; preds = %if.else158
  %call163 = call i32 @H5open()
  %62 = load i64, ptr @H5T_NATIVE_FLOAT_g, align 8
  store i64 %62, ptr %typeid, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.else162, %if.then160
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.then156
  br label %sw.epilog

sw.bb166:                                         ; preds = %if.else58
  %63 = load i32, ptr %endianness.addr, align 4
  %cmp167 = icmp eq i32 %63, 1
  br i1 %cmp167, label %if.then168, label %if.else170

if.then168:                                       ; preds = %sw.bb166
  %call169 = call i32 @H5open()
  %64 = load i64, ptr @H5T_IEEE_F64LE_g, align 8
  store i64 %64, ptr %typeid, align 8
  br label %if.end177

if.else170:                                       ; preds = %sw.bb166
  %65 = load i32, ptr %endianness.addr, align 4
  %cmp171 = icmp eq i32 %65, 2
  br i1 %cmp171, label %if.then172, label %if.else174

if.then172:                                       ; preds = %if.else170
  %call173 = call i32 @H5open()
  %66 = load i64, ptr @H5T_IEEE_F64BE_g, align 8
  store i64 %66, ptr %typeid, align 8
  br label %if.end176

if.else174:                                       ; preds = %if.else170
  %call175 = call i32 @H5open()
  %67 = load i64, ptr @H5T_NATIVE_DOUBLE_g, align 8
  store i64 %67, ptr %typeid, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.else174, %if.then172
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.then168
  br label %sw.epilog

sw.default:                                       ; preds = %if.else58
  %68 = load ptr, ptr %h5.addr, align 8
  %69 = load i32, ptr %xtype.addr, align 4
  %call178 = call i32 @nc4_find_type(ptr noundef %68, i32 noundef %69, ptr noundef %type)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then180, label %if.end181

if.then180:                                       ; preds = %sw.default
  store i32 -45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end181:                                        ; preds = %sw.default
  %70 = load ptr, ptr %type, align 8
  %tobool182 = icmp ne ptr %70, null
  br i1 %tobool182, label %if.end184, label %if.then183

if.then183:                                       ; preds = %if.end181
  store i32 -45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end184:                                        ; preds = %if.end181
  %71 = load ptr, ptr %type, align 8
  %format_type_info = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %71, i32 0, i32 7
  %72 = load ptr, ptr %format_type_info, align 8
  %hdf_typeid185 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %72, i32 0, i32 0
  %73 = load i64, ptr %hdf_typeid185, align 8
  store i64 %73, ptr %typeid, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end184, %if.end177, %if.end165, %if.end153, %if.end141, %if.end129, %if.end117, %if.end105, %if.end93, %if.end81, %if.end69
  %74 = load i64, ptr %typeid, align 8
  %tobool186 = icmp ne i64 %74, 0
  br i1 %tobool186, label %if.then187, label %if.else188

if.then187:                                       ; preds = %sw.epilog
  br label %if.end189

if.else188:                                       ; preds = %sw.epilog
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.1, i32 noundef 397, ptr noundef @__PRETTY_FUNCTION__.nc4_get_hdf_typeid) #11
  unreachable

if.end189:                                        ; preds = %if.then187
  %75 = load i64, ptr %typeid, align 8
  %call190 = call i64 @H5Tcopy(i64 noundef %75)
  %76 = load ptr, ptr %hdf_typeid.addr, align 8
  store i64 %call190, ptr %76, align 8
  %cmp191 = icmp slt i64 %call190, 0
  br i1 %cmp191, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end189
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end193:                                        ; preds = %if.end189
  store i64 0, ptr %typeid, align 8
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end57
  br label %if.end195

if.end195:                                        ; preds = %if.end194
  %77 = load ptr, ptr %hdf_typeid.addr, align 8
  %78 = load i64, ptr %77, align 8
  %cmp196 = icmp ne i64 %78, -1
  br i1 %cmp196, label %if.then197, label %if.else198

if.then197:                                       ; preds = %if.end195
  br label %if.end199

if.else198:                                       ; preds = %if.end195
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.1, i32 noundef 404, ptr noundef @__PRETTY_FUNCTION__.nc4_get_hdf_typeid) #11
  unreachable

if.end199:                                        ; preds = %if.then197
  br label %exit

exit:                                             ; preds = %if.end199, %do.end53, %do.end43, %do.end27, %do.end
  %79 = load i64, ptr %typeid, align 8
  %cmp200 = icmp sgt i64 %79, 0
  br i1 %cmp200, label %land.lhs.true201, label %if.end208

land.lhs.true201:                                 ; preds = %exit
  %80 = load i64, ptr %typeid, align 8
  %call202 = call i32 @H5Tclose(i64 noundef %80)
  %cmp203 = icmp slt i32 %call202, 0
  br i1 %cmp203, label %if.then204, label %if.end208

if.then204:                                       ; preds = %land.lhs.true201
  br label %do.body205

do.body205:                                       ; preds = %if.then204
  store i32 -101, ptr %retval1, align 4
  br label %do.cond206

do.cond206:                                       ; preds = %do.body205
  br label %do.end207

do.end207:                                        ; preds = %do.cond206
  br label %if.end208

if.end208:                                        ; preds = %do.end207, %land.lhs.true201, %exit
  %81 = load i32, ptr %retval1, align 4
  store i32 %81, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %if.then192, %if.then183, %if.then180, %if.then35, %if.then12, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %typeid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #10
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

declare i64 @H5Tcopy(i64 noundef) #3

declare i32 @H5open() #3

declare i32 @H5Tset_strpad(i64 noundef, i32 noundef) #3

declare i32 @H5Tset_cset(i64 noundef, i32 noundef) #3

declare i32 @H5Tset_size(i64 noundef, i64 noundef) #3

declare i32 @nc4_find_type(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @H5Tclose(i64 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @nc4_adjust_var_cache(ptr noundef %grp, ptr noundef %var) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %chunk_size_bytes = alloca i64, align 8
  %d = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %grp, ptr %grp.addr, align 8
  store ptr %var, ptr %var.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_size_bytes) #10
  store i64 1, ptr %chunk_size_bytes, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  %0 = load ptr, ptr %var.addr, align 8
  %storage = getelementptr inbounds %struct.NC_VAR_INFO, ptr %0, i32 0, i32 21
  %1 = load i32, ptr %storage, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %nc4_info, align 8
  %parallel = getelementptr inbounds %struct.NC_FILE_INFO, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %parallel, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %5 = load i32, ptr %d, align 4
  %conv = sext i32 %5 to i64
  %6 = load ptr, ptr %var.addr, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %ndims, align 8
  %cmp4 = icmp ult i64 %conv, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %var.addr, align 8
  %chunksizes = getelementptr inbounds %struct.NC_VAR_INFO, ptr %8, i32 0, i32 20
  %9 = load ptr, ptr %chunksizes, align 8
  %10 = load i32, ptr %d, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i64, ptr %9, i64 %idxprom
  %11 = load i64, ptr %arrayidx, align 8
  %12 = load i64, ptr %chunk_size_bytes, align 8
  %mul = mul i64 %12, %11
  store i64 %mul, ptr %chunk_size_bytes, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %d, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %d, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %var.addr, align 8
  %type_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %type_info, align 8
  %size = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %15, i32 0, i32 4
  %16 = load i64, ptr %size, align 8
  %tobool6 = icmp ne i64 %16, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.end
  %17 = load ptr, ptr %var.addr, align 8
  %type_info8 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %type_info8, align 8
  %size9 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %18, i32 0, i32 4
  %19 = load i64, ptr %size9, align 8
  %20 = load i64, ptr %chunk_size_bytes, align 8
  %mul10 = mul i64 %20, %19
  store i64 %mul10, ptr %chunk_size_bytes, align 8
  br label %if.end12

if.else:                                          ; preds = %for.end
  %21 = load i64, ptr %chunk_size_bytes, align 8
  %mul11 = mul i64 %21, 8
  store i64 %mul11, ptr %chunk_size_bytes, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %22 = load ptr, ptr %var.addr, align 8
  %chunkcache = getelementptr inbounds %struct.NC_VAR_INFO, ptr %22, i32 0, i32 24
  %size13 = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache, i32 0, i32 0
  %23 = load i64, ptr %size13, align 8
  %cmp14 = icmp eq i64 %23, 16777216
  br i1 %cmp14, label %if.then16, label %if.end37

if.then16:                                        ; preds = %if.end12
  %24 = load i64, ptr %chunk_size_bytes, align 8
  %25 = load ptr, ptr %var.addr, align 8
  %chunkcache17 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %25, i32 0, i32 24
  %size18 = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache17, i32 0, i32 0
  %26 = load i64, ptr %size18, align 8
  %cmp19 = icmp ugt i64 %24, %26
  br i1 %cmp19, label %if.then21, label %if.end36

if.then21:                                        ; preds = %if.then16
  %27 = load i64, ptr %chunk_size_bytes, align 8
  %mul22 = mul i64 %27, 10
  %28 = load ptr, ptr %var.addr, align 8
  %chunkcache23 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %28, i32 0, i32 24
  %size24 = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache23, i32 0, i32 0
  store i64 %mul22, ptr %size24, align 8
  %29 = load ptr, ptr %var.addr, align 8
  %chunkcache25 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %29, i32 0, i32 24
  %size26 = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache25, i32 0, i32 0
  %30 = load i64, ptr %size26, align 8
  %cmp27 = icmp ugt i64 %30, 67108864
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.then21
  %31 = load ptr, ptr %var.addr, align 8
  %chunkcache30 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %31, i32 0, i32 24
  %size31 = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache30, i32 0, i32 0
  store i64 67108864, ptr %size31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then21
  %32 = load ptr, ptr %grp.addr, align 8
  %33 = load ptr, ptr %var.addr, align 8
  %call = call i32 @nc4_reopen_dataset(ptr noundef %32, ptr noundef %33)
  store i32 %call, ptr %retval1, align 4
  %tobool33 = icmp ne i32 %call, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  %34 = load i32, ptr %retval1, align 4
  store i32 %34, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end32
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then16
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then34, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_size_bytes) #10
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

declare i32 @nc4_reopen_dataset(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @nc4_create_dim_wo_var(ptr noundef %dim) #0 {
entry:
  %dim.addr = alloca ptr, align 8
  %hdf5_dim = alloca ptr, align 8
  %hdf5_grp = alloca ptr, align 8
  %spaceid = alloca i64, align 8
  %create_propid = alloca i64, align 8
  %dims = alloca [1 x i64], align 8
  %max_dims = alloca [1 x i64], align 8
  %chunk_dims = alloca [1 x i64], align 8
  %dimscale_wo_var = alloca [256 x i8], align 16
  %retval1 = alloca i32, align 4
  store ptr %dim, ptr %dim.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_dim) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %spaceid) #10
  store i64 -1, ptr %spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %create_propid) #10
  store i64 -1, ptr %create_propid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dims) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_dims) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk_dims) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %chunk_dims, ptr align 8 @__const.nc4_create_dim_wo_var.chunk_dims, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr %dimscale_wo_var) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %0 = load ptr, ptr %dim.addr, align 8
  %coord_var = getelementptr inbounds %struct.NC_DIM_INFO, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %coord_var, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.1, i32 noundef 1794, ptr noundef @__PRETTY_FUNCTION__.nc4_create_dim_wo_var) #11
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %dim.addr, align 8
  %container = getelementptr inbounds %struct.NC_DIM_INFO, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %container, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %format_grp_info, align 8
  store ptr %4, ptr %hdf5_grp, align 8
  %5 = load ptr, ptr %dim.addr, align 8
  %format_dim_info = getelementptr inbounds %struct.NC_DIM_INFO, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %format_dim_info, align 8
  store ptr %6, ptr %hdf5_dim, align 8
  %call = call i32 @H5open()
  %7 = load i64, ptr @H5P_CLS_DATASET_CREATE_ID_g, align 8
  %call2 = call i64 @H5Pcreate(i64 noundef %7)
  store i64 %call2, ptr %create_propid, align 8
  %cmp = icmp slt i64 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then3
  br label %do.body4

do.body4:                                         ; preds = %do.body
  store i32 -101, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond5:                                         ; No predecessors!
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  br label %if.end7

if.end7:                                          ; preds = %do.end6, %if.end
  %8 = load i64, ptr %create_propid, align 8
  %call8 = call i32 @H5Pset_obj_track_times(i64 noundef %8, i1 noundef zeroext false)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end7
  br label %do.body11

do.body11:                                        ; preds = %if.then10
  br label %do.body12

do.body12:                                        ; preds = %do.body11
  store i32 -101, ptr %retval1, align 4
  br label %do.cond13

do.cond13:                                        ; preds = %do.body12
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %exit

do.cond15:                                        ; No predecessors!
  br label %do.end16

do.end16:                                         ; preds = %do.cond15
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %if.end7
  %9 = load ptr, ptr %dim.addr, align 8
  %len = getelementptr inbounds %struct.NC_DIM_INFO, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %len, align 8
  %arrayidx = getelementptr inbounds [1 x i64], ptr %dims, i64 0, i64 0
  store i64 %10, ptr %arrayidx, align 8
  %11 = load ptr, ptr %dim.addr, align 8
  %len18 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %len18, align 8
  %arrayidx19 = getelementptr inbounds [1 x i64], ptr %max_dims, i64 0, i64 0
  store i64 %12, ptr %arrayidx19, align 8
  %13 = load ptr, ptr %dim.addr, align 8
  %unlimited = getelementptr inbounds %struct.NC_DIM_INFO, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %unlimited, align 8
  %tobool20 = icmp ne i32 %14, 0
  br i1 %tobool20, label %if.then21, label %if.end33

if.then21:                                        ; preds = %if.end17
  %arrayidx22 = getelementptr inbounds [1 x i64], ptr %max_dims, i64 0, i64 0
  store i64 -1, ptr %arrayidx22, align 8
  %15 = load i64, ptr %create_propid, align 8
  %arraydecay = getelementptr inbounds [1 x i64], ptr %chunk_dims, i64 0, i64 0
  %call23 = call i32 @H5Pset_chunk(i64 noundef %15, i32 noundef 1, ptr noundef %arraydecay)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.then21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  br label %do.body27

do.body27:                                        ; preds = %do.body26
  store i32 -101, ptr %retval1, align 4
  br label %do.cond28

do.cond28:                                        ; preds = %do.body27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %exit

do.cond30:                                        ; No predecessors!
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %if.then21
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end17
  %arraydecay34 = getelementptr inbounds [1 x i64], ptr %dims, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [1 x i64], ptr %max_dims, i64 0, i64 0
  %call36 = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef %arraydecay34, ptr noundef %arraydecay35)
  store i64 %call36, ptr %spaceid, align 8
  %cmp37 = icmp slt i64 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end45

if.then38:                                        ; preds = %if.end33
  br label %do.body39

do.body39:                                        ; preds = %if.then38
  br label %do.body40

do.body40:                                        ; preds = %do.body39
  store i32 -101, ptr %retval1, align 4
  br label %do.cond41

do.cond41:                                        ; preds = %do.body40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %exit

do.cond43:                                        ; No predecessors!
  br label %do.end44

do.end44:                                         ; preds = %do.cond43
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %if.end33
  %16 = load ptr, ptr %dim.addr, align 8
  %container46 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %container46, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %nc4_info, align 8
  %no_attr_create_order = getelementptr inbounds %struct.NC_FILE_INFO, ptr %18, i32 0, i32 8
  %19 = load i32, ptr %no_attr_create_order, align 8
  %tobool47 = icmp ne i32 %19, 0
  br i1 %tobool47, label %if.end59, label %if.then48

if.then48:                                        ; preds = %if.end45
  %20 = load i64, ptr %create_propid, align 8
  %call49 = call i32 @H5Pset_attr_creation_order(i64 noundef %20, i32 noundef 3)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.then48
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  br label %do.body53

do.body53:                                        ; preds = %do.body52
  store i32 -101, ptr %retval1, align 4
  br label %do.cond54

do.cond54:                                        ; preds = %do.body53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  br label %exit

do.cond56:                                        ; No predecessors!
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.then48
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end45
  %21 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %hdf_grpid, align 8
  %23 = load ptr, ptr %dim.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_DIM_INFO, ptr %23, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %24 = load ptr, ptr %name, align 8
  %call60 = call i32 @H5open()
  %25 = load i64, ptr @H5T_IEEE_F32BE_g, align 8
  %26 = load i64, ptr %spaceid, align 8
  %27 = load i64, ptr %create_propid, align 8
  %call61 = call i64 @H5Dcreate2(i64 noundef %22, ptr noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef 0, i64 noundef %27, i64 noundef 0)
  %28 = load ptr, ptr %hdf5_dim, align 8
  %hdf_dimscaleid = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %28, i32 0, i32 0
  store i64 %call61, ptr %hdf_dimscaleid, align 8
  %cmp62 = icmp slt i64 %call61, 0
  br i1 %cmp62, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.end59
  br label %do.body64

do.body64:                                        ; preds = %if.then63
  br label %do.body65

do.body65:                                        ; preds = %do.body64
  store i32 -101, ptr %retval1, align 4
  br label %do.cond66

do.cond66:                                        ; preds = %do.body65
  br label %do.end67

do.end67:                                         ; preds = %do.cond66
  br label %exit

do.cond68:                                        ; No predecessors!
  br label %do.end69

do.end69:                                         ; preds = %do.cond68
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.end59
  %arraydecay71 = getelementptr inbounds [256 x i8], ptr %dimscale_wo_var, i64 0, i64 0
  %29 = load ptr, ptr %dim.addr, align 8
  %len72 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %29, i32 0, i32 2
  %30 = load i64, ptr %len72, align 8
  %conv = trunc i64 %30 to i32
  %call73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay71, ptr noundef @.str.11, ptr noundef @.str.12, i32 noundef %conv) #10
  %31 = load ptr, ptr %hdf5_dim, align 8
  %hdf_dimscaleid74 = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %hdf_dimscaleid74, align 8
  %arraydecay75 = getelementptr inbounds [256 x i8], ptr %dimscale_wo_var, i64 0, i64 0
  %call76 = call i32 @H5DSset_scale(i64 noundef %32, ptr noundef %arraydecay75)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.end70
  br label %do.body80

do.body80:                                        ; preds = %if.then79
  br label %do.body81

do.body81:                                        ; preds = %do.body80
  store i32 -101, ptr %retval1, align 4
  br label %do.cond82

do.cond82:                                        ; preds = %do.body81
  br label %do.end83

do.end83:                                         ; preds = %do.cond82
  br label %exit

do.cond84:                                        ; No predecessors!
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %if.end70
  %33 = load ptr, ptr %hdf5_dim, align 8
  %hdf_dimscaleid87 = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %33, i32 0, i32 0
  %34 = load i64, ptr %hdf_dimscaleid87, align 8
  %35 = load ptr, ptr %dim.addr, align 8
  %hdr88 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %35, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr88, i32 0, i32 2
  %36 = load i64, ptr %id, align 8
  %conv89 = trunc i64 %36 to i32
  %call90 = call i32 @write_netcdf4_dimid(i64 noundef %34, i32 noundef %conv89)
  store i32 %call90, ptr %retval1, align 4
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then92, label %if.end99

if.then92:                                        ; preds = %if.end86
  br label %do.body93

do.body93:                                        ; preds = %if.then92
  br label %do.body94

do.body94:                                        ; preds = %do.body93
  %37 = load i32, ptr %retval1, align 4
  store i32 %37, ptr %retval1, align 4
  br label %do.cond95

do.cond95:                                        ; preds = %do.body94
  br label %do.end96

do.end96:                                         ; preds = %do.cond95
  br label %exit

do.cond97:                                        ; No predecessors!
  br label %do.end98

do.end98:                                         ; preds = %do.cond97
  br label %if.end99

if.end99:                                         ; preds = %do.end98, %if.end86
  br label %exit

exit:                                             ; preds = %if.end99, %do.end96, %do.end83, %do.end67, %do.end55, %do.end42, %do.end29, %do.end14, %do.end
  %38 = load i64, ptr %spaceid, align 8
  %cmp100 = icmp sgt i64 %38, 0
  br i1 %cmp100, label %land.lhs.true, label %if.end109

land.lhs.true:                                    ; preds = %exit
  %39 = load i64, ptr %spaceid, align 8
  %call102 = call i32 @H5Sclose(i64 noundef %39)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then105, label %if.end109

if.then105:                                       ; preds = %land.lhs.true
  br label %do.body106

do.body106:                                       ; preds = %if.then105
  store i32 -101, ptr %retval1, align 4
  br label %do.cond107

do.cond107:                                       ; preds = %do.body106
  br label %do.end108

do.end108:                                        ; preds = %do.cond107
  br label %if.end109

if.end109:                                        ; preds = %do.end108, %land.lhs.true, %exit
  %40 = load i64, ptr %create_propid, align 8
  %cmp110 = icmp sgt i64 %40, 0
  br i1 %cmp110, label %land.lhs.true112, label %if.end120

land.lhs.true112:                                 ; preds = %if.end109
  %41 = load i64, ptr %create_propid, align 8
  %call113 = call i32 @H5Pclose(i64 noundef %41)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.end120

if.then116:                                       ; preds = %land.lhs.true112
  br label %do.body117

do.body117:                                       ; preds = %if.then116
  store i32 -101, ptr %retval1, align 4
  br label %do.cond118

do.cond118:                                       ; preds = %do.body117
  br label %do.end119

do.end119:                                        ; preds = %do.cond118
  br label %if.end120

if.end120:                                        ; preds = %do.end119, %land.lhs.true112, %if.end109
  %42 = load i32, ptr %retval1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr %dimscale_wo_var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk_dims) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_dims) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dims) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %create_propid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %spaceid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_dim) #10
  ret i32 %42
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i64 @H5Pcreate(i64 noundef) #3

declare i32 @H5Pset_obj_track_times(i64 noundef, i1 noundef zeroext) #3

declare i32 @H5Pset_chunk(i64 noundef, i32 noundef, ptr noundef) #3

declare i64 @H5Screate_simple(i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @H5Pset_attr_creation_order(i64 noundef, i32 noundef) #3

declare i64 @H5Dcreate2(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

declare i32 @H5DSset_scale(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @write_netcdf4_dimid(i64 noundef %datasetid, i32 noundef %dimid) #0 {
entry:
  %datasetid.addr = alloca i64, align 8
  %dimid.addr = alloca i32, align 4
  %dimid_spaceid = alloca i64, align 8
  %dimid_attid = alloca i64, align 8
  %attr_exists = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i64 %datasetid, ptr %datasetid.addr, align 8
  store i32 %dimid, ptr %dimid.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dimid_spaceid) #10
  store i64 -1, ptr %dimid_spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dimid_attid) #10
  store i64 -1, ptr %dimid_attid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr_exists) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %call = call i64 @H5Screate(i32 noundef 0)
  store i64 %call, ptr %dimid_spaceid, align 8
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.body2

do.body2:                                         ; preds = %do.body
  store i32 -101, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body2
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond3:                                         ; No predecessors!
  br label %do.end4

do.end4:                                          ; preds = %do.cond3
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry
  %0 = load i64, ptr %datasetid.addr, align 8
  %call5 = call i32 @H5Aexists(i64 noundef %0, ptr noundef @.str.31)
  store i32 %call5, ptr %attr_exists, align 4
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  br label %do.body8

do.body8:                                         ; preds = %if.then7
  br label %do.body9

do.body9:                                         ; preds = %do.body8
  store i32 -101, ptr %retval1, align 4
  br label %do.cond10

do.cond10:                                        ; preds = %do.body9
  br label %do.end11

do.end11:                                         ; preds = %do.cond10
  br label %exit

do.cond12:                                        ; No predecessors!
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %if.end
  %1 = load i32, ptr %attr_exists, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end14
  %2 = load i64, ptr %datasetid.addr, align 8
  %call16 = call i64 @H5Aopen_by_name(i64 noundef %2, ptr noundef @.str.32, ptr noundef @.str.31, i64 noundef 0, i64 noundef 0)
  store i64 %call16, ptr %dimid_attid, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end14
  %3 = load i64, ptr %datasetid.addr, align 8
  %call17 = call i32 @H5open()
  %4 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %5 = load i64, ptr %dimid_spaceid, align 8
  %call18 = call i64 @H5Acreate1(i64 noundef %3, ptr noundef @.str.31, i64 noundef %4, i64 noundef %5, i64 noundef 0)
  store i64 %call18, ptr %dimid_attid, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %6 = load i64, ptr %dimid_attid, align 8
  %cmp20 = icmp slt i64 %6, 0
  br i1 %cmp20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end19
  br label %do.body22

do.body22:                                        ; preds = %if.then21
  br label %do.body23

do.body23:                                        ; preds = %do.body22
  store i32 -101, ptr %retval1, align 4
  br label %do.cond24

do.cond24:                                        ; preds = %do.body23
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  br label %exit

do.cond26:                                        ; No predecessors!
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %if.end19
  %7 = load i64, ptr %dimid_attid, align 8
  %call29 = call i32 @H5open()
  %8 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %call30 = call i32 @H5Awrite(i64 noundef %7, i64 noundef %8, ptr noundef %dimid.addr)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end28
  br label %do.body33

do.body33:                                        ; preds = %if.then32
  br label %do.body34

do.body34:                                        ; preds = %do.body33
  store i32 -101, ptr %retval1, align 4
  br label %do.cond35

do.cond35:                                        ; preds = %do.body34
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  br label %exit

do.cond37:                                        ; No predecessors!
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.end28
  br label %exit

exit:                                             ; preds = %if.end39, %do.end36, %do.end25, %do.end11, %do.end
  %9 = load i64, ptr %dimid_spaceid, align 8
  %cmp40 = icmp sge i64 %9, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %exit
  %10 = load i64, ptr %dimid_spaceid, align 8
  %call41 = call i32 @H5Sclose(i64 noundef %10)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %land.lhs.true
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  store i32 -101, ptr %retval1, align 4
  br label %do.cond45

do.cond45:                                        ; preds = %do.body44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %land.lhs.true, %exit
  %11 = load i64, ptr %dimid_attid, align 8
  %cmp48 = icmp sge i64 %11, 0
  br i1 %cmp48, label %land.lhs.true49, label %if.end56

land.lhs.true49:                                  ; preds = %if.end47
  %12 = load i64, ptr %dimid_attid, align 8
  %call50 = call i32 @H5Aclose(i64 noundef %12)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %land.lhs.true49
  br label %do.body53

do.body53:                                        ; preds = %if.then52
  store i32 -101, ptr %retval1, align 4
  br label %do.cond54

do.cond54:                                        ; preds = %do.body53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %land.lhs.true49, %if.end47
  %13 = load i32, ptr %retval1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr_exists) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dimid_attid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dimid_spaceid) #10
  ret i32 %13
}

declare i32 @H5Sclose(i64 noundef) #3

declare i32 @H5Pclose(i64 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @nc4_rec_write_metadata(ptr noundef %grp, i32 noundef %bad_coord_order) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %bad_coord_order.addr = alloca i32, align 4
  %dim = alloca ptr, align 8
  %var = alloca ptr, align 8
  %child_grp = alloca ptr, align 8
  %coord_varid = alloca i32, align 4
  %var_index = alloca i32, align 4
  %dim_index = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %found_coord = alloca i32, align 4
  %wrote_coord = alloca i32, align 4
  store ptr %grp, ptr %grp.addr, align 8
  store i32 %bad_coord_order, ptr %bad_coord_order.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dim) #10
  store ptr null, ptr %dim, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #10
  store ptr null, ptr %var, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_grp) #10
  store ptr null, ptr %child_grp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %coord_varid) #10
  store i32 -1, ptr %coord_varid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %var_index) #10
  store i32 0, ptr %var_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dim_index) #10
  store i32 0, ptr %dim_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %2 = load ptr, ptr %name, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %format_grp_info, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %hdf_grpid, align 8
  %tobool4 = icmp ne i64 %5, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.1, i32 noundef 1963, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_write_metadata) #11
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %grp.addr, align 8
  %att = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 7
  %7 = load ptr, ptr %att, align 8
  %8 = load ptr, ptr %grp.addr, align 8
  %call = call i32 @write_attlist(ptr noundef %7, i32 noundef -1, ptr noundef %8)
  store i32 %call, ptr %retval1, align 4
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %9 = load i32, ptr %retval1, align 4
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %grp.addr, align 8
  %dim8 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %dim8, align 8
  %12 = load i32, ptr %dim_index, align 4
  %conv = sext i32 %12 to i64
  %call9 = call ptr @ncindexith(ptr noundef %11, i64 noundef %conv)
  store ptr %call9, ptr %dim, align 8
  %13 = load ptr, ptr %grp.addr, align 8
  %vars = getelementptr inbounds %struct.NC_GRP_INFO, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %vars, align 8
  %15 = load i32, ptr %var_index, align 4
  %conv10 = sext i32 %15 to i64
  %call11 = call ptr @ncindexith(ptr noundef %14, i64 noundef %conv10)
  store ptr %call11, ptr %var, align 8
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end7
  %16 = load ptr, ptr %dim, align 8
  %tobool12 = icmp ne ptr %16, null
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %17 = load ptr, ptr %var, align 8
  %tobool13 = icmp ne ptr %17, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %18 = phi i1 [ true, %while.cond ], [ %tobool13, %lor.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %found_coord) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %wrote_coord) #10
  store i32 0, ptr %found_coord, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end26, %while.body
  %19 = load ptr, ptr %dim, align 8
  %tobool14 = icmp ne ptr %19, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i32, ptr %found_coord, align 4
  %tobool15 = icmp ne i32 %20, 0
  %lnot = xor i1 %tobool15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load ptr, ptr %dim, align 8
  %coord_var = getelementptr inbounds %struct.NC_DIM_INFO, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %coord_var, align 8
  %tobool16 = icmp ne ptr %23, null
  br i1 %tobool16, label %if.else22, label %if.then17

if.then17:                                        ; preds = %for.body
  %24 = load ptr, ptr %dim, align 8
  %25 = load ptr, ptr %grp.addr, align 8
  %26 = load i32, ptr %bad_coord_order.addr, align 4
  %call18 = call i32 @write_dim(ptr noundef %24, ptr noundef %25, i32 noundef %26)
  store i32 %call18, ptr %retval1, align 4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  %27 = load i32, ptr %retval1, align 4
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  br label %if.end26

if.else22:                                        ; preds = %for.body
  %28 = load ptr, ptr %dim, align 8
  %coord_var23 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %28, i32 0, i32 7
  %29 = load ptr, ptr %coord_var23, align 8
  %hdr24 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %29, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr24, i32 0, i32 2
  %30 = load i64, ptr %id, align 8
  %conv25 = trunc i64 %30 to i32
  store i32 %conv25, ptr %coord_varid, align 4
  store i32 1, ptr %found_coord, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.end21
  %31 = load ptr, ptr %grp.addr, align 8
  %dim27 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %dim27, align 8
  %33 = load i32, ptr %dim_index, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %dim_index, align 4
  %conv28 = sext i32 %inc to i64
  %call29 = call ptr @ncindexith(ptr noundef %32, i64 noundef %conv28)
  store ptr %call29, ptr %dim, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %land.end
  store i32 0, ptr %wrote_coord, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %if.end48, %for.end
  %34 = load ptr, ptr %var, align 8
  %tobool31 = icmp ne ptr %34, null
  br i1 %tobool31, label %land.rhs32, label %land.end35

land.rhs32:                                       ; preds = %for.cond30
  %35 = load i32, ptr %wrote_coord, align 4
  %tobool33 = icmp ne i32 %35, 0
  %lnot34 = xor i1 %tobool33, true
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %for.cond30
  %36 = phi i1 [ false, %for.cond30 ], [ %lnot34, %land.rhs32 ]
  br i1 %36, label %for.body36, label %for.end53

for.body36:                                       ; preds = %land.end35
  %37 = load ptr, ptr %var, align 8
  %38 = load ptr, ptr %grp.addr, align 8
  %39 = load i32, ptr %bad_coord_order.addr, align 4
  %call37 = call i32 @write_var(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  store i32 %call37, ptr %retval1, align 4
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body36
  %40 = load i32, ptr %retval1, align 4
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end40:                                         ; preds = %for.body36
  %41 = load i32, ptr %found_coord, align 4
  %tobool41 = icmp ne i32 %41, 0
  br i1 %tobool41, label %land.lhs.true42, label %if.end48

land.lhs.true42:                                  ; preds = %if.end40
  %42 = load ptr, ptr %var, align 8
  %hdr43 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %42, i32 0, i32 0
  %id44 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr43, i32 0, i32 2
  %43 = load i64, ptr %id44, align 8
  %44 = load i32, ptr %coord_varid, align 4
  %conv45 = sext i32 %44 to i64
  %cmp = icmp eq i64 %43, %conv45
  br i1 %cmp, label %if.then47, label %if.end48

if.then47:                                        ; preds = %land.lhs.true42
  store i32 1, ptr %wrote_coord, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %land.lhs.true42, %if.end40
  %45 = load ptr, ptr %grp.addr, align 8
  %vars49 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %45, i32 0, i32 9
  %46 = load ptr, ptr %vars49, align 8
  %47 = load i32, ptr %var_index, align 4
  %inc50 = add nsw i32 %47, 1
  store i32 %inc50, ptr %var_index, align 4
  %conv51 = sext i32 %inc50 to i64
  %call52 = call ptr @ncindexith(ptr noundef %46, i64 noundef %conv51)
  store ptr %call52, ptr %var, align 8
  br label %for.cond30, !llvm.loop !13

for.end53:                                        ; preds = %land.end35
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end53, %if.then39, %if.then20
  call void @llvm.lifetime.end.p0(i64 4, ptr %wrote_coord) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %found_coord) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup91 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %lor.end
  %48 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %nc4_info, align 8
  %no_dimscale_attach = getelementptr inbounds %struct.NC_FILE_INFO, ptr %49, i32 0, i32 9
  %50 = load i32, ptr %no_dimscale_attach, align 4
  %tobool55 = icmp ne i32 %50, 0
  br i1 %tobool55, label %if.end61, label %if.then56

if.then56:                                        ; preds = %while.end
  %51 = load ptr, ptr %grp.addr, align 8
  %call57 = call i32 @attach_dimscales(ptr noundef %51)
  store i32 %call57, ptr %retval1, align 4
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then56
  %52 = load i32, ptr %retval1, align 4
  store i32 %52, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

if.end60:                                         ; preds = %if.then56
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %while.end
  store i32 0, ptr %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc, %if.end61
  %53 = load i32, ptr %i, align 4
  %conv63 = sext i32 %53 to i64
  %54 = load ptr, ptr %grp.addr, align 8
  %children = getelementptr inbounds %struct.NC_GRP_INFO, ptr %54, i32 0, i32 5
  %55 = load ptr, ptr %children, align 8
  %cmp64 = icmp eq ptr %55, null
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond62
  br label %cond.end73

cond.false:                                       ; preds = %for.cond62
  %56 = load ptr, ptr %grp.addr, align 8
  %children66 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %56, i32 0, i32 5
  %57 = load ptr, ptr %children66, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %list, align 8
  %cmp67 = icmp eq ptr %58, null
  br i1 %cmp67, label %cond.true69, label %cond.false70

cond.true69:                                      ; preds = %cond.false
  br label %cond.end

cond.false70:                                     ; preds = %cond.false
  %59 = load ptr, ptr %grp.addr, align 8
  %children71 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %59, i32 0, i32 5
  %60 = load ptr, ptr %children71, align 8
  %list72 = getelementptr inbounds %struct.NCindex, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %list72, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false70, %cond.true69
  %cond = phi i64 [ 0, %cond.true69 ], [ %62, %cond.false70 ]
  br label %cond.end73

cond.end73:                                       ; preds = %cond.end, %cond.true
  %cond74 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp75 = icmp ult i64 %conv63, %cond74
  br i1 %cmp75, label %for.body77, label %for.end90

for.body77:                                       ; preds = %cond.end73
  %63 = load ptr, ptr %grp.addr, align 8
  %children78 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %63, i32 0, i32 5
  %64 = load ptr, ptr %children78, align 8
  %65 = load i32, ptr %i, align 4
  %conv79 = sext i32 %65 to i64
  %call80 = call ptr @ncindexith(ptr noundef %64, i64 noundef %conv79)
  store ptr %call80, ptr %child_grp, align 8
  %66 = load ptr, ptr %child_grp, align 8
  %tobool81 = icmp ne ptr %66, null
  br i1 %tobool81, label %if.then82, label %if.else83

if.then82:                                        ; preds = %for.body77
  br label %if.end84

if.else83:                                        ; preds = %for.body77
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 2022, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_write_metadata) #11
  unreachable

if.end84:                                         ; preds = %if.then82
  %67 = load ptr, ptr %child_grp, align 8
  %68 = load i32, ptr %bad_coord_order.addr, align 4
  %call85 = call i32 @nc4_rec_write_metadata(ptr noundef %67, i32 noundef %68)
  store i32 %call85, ptr %retval1, align 4
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  %69 = load i32, ptr %retval1, align 4
  store i32 %69, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

if.end88:                                         ; preds = %if.end84
  br label %for.inc

for.inc:                                          ; preds = %if.end88
  %70 = load i32, ptr %i, align 4
  %inc89 = add nsw i32 %70, 1
  store i32 %inc89, ptr %i, align 4
  br label %for.cond62, !llvm.loop !15

for.end90:                                        ; preds = %cond.end73
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup91

cleanup91:                                        ; preds = %for.end90, %if.then87, %if.then59, %cleanup, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %dim_index) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %var_index) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %coord_varid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_grp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dim) #10
  %71 = load i32, ptr %retval, align 4
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define internal i32 @write_attlist(ptr noundef %attlist, i32 noundef %varid, ptr noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %attlist.addr = alloca ptr, align 8
  %varid.addr = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %att = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %attlist, ptr %attlist.addr, align 8
  store i32 %varid, ptr %varid.addr, align 4
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %att) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %attlist.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end8

cond.false:                                       ; preds = %for.cond
  %2 = load ptr, ptr %attlist.addr, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %list, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %4 = load ptr, ptr %attlist.addr, align 8
  %list7 = getelementptr inbounds %struct.NCindex, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %list7, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i64 [ 0, %cond.true5 ], [ %6, %cond.false6 ]
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp10 = icmp ult i64 %conv, %cond9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end8
  %7 = load ptr, ptr %attlist.addr, align 8
  %8 = load i32, ptr %i, align 4
  %conv12 = sext i32 %8 to i64
  %call = call ptr @ncindexith(ptr noundef %7, i64 noundef %conv12)
  store ptr %call, ptr %att, align 8
  %9 = load ptr, ptr %att, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.33, ptr noundef @.str.1, i32 noundef 622, ptr noundef @__PRETTY_FUNCTION__.write_attlist) #11
  unreachable

if.end:                                           ; preds = %if.then
  %10 = load ptr, ptr %att, align 8
  %dirty = getelementptr inbounds %struct.NC_ATT_INFO, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %dirty, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end
  %12 = load ptr, ptr %grp.addr, align 8
  %13 = load i32, ptr %varid.addr, align 4
  %14 = load ptr, ptr %att, align 8
  %call15 = call i32 @put_att_grpa(ptr noundef %12, i32 noundef %13, ptr noundef %14)
  store i32 %call15, ptr %retval1, align 4
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  %15 = load i32, ptr %retval1, align 4
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %16 = load ptr, ptr %att, align 8
  %dirty19 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %16, i32 0, i32 3
  store i32 0, ptr %dirty19, align 4
  %17 = load ptr, ptr %att, align 8
  %created = getelementptr inbounds %struct.NC_ATT_INFO, ptr %17, i32 0, i32 4
  store i32 1, ptr %created, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %cond.end8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %att) #10
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @write_dim(ptr noundef %dim, ptr noundef %grp, i32 noundef %write_dimid) #0 {
entry:
  %retval = alloca i32, align 4
  %dim.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %write_dimid.addr = alloca i32, align 4
  %hdf5_dim = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %v1 = alloca ptr, align 8
  %hdf5_v1 = alloca ptr, align 8
  %new_size = alloca ptr, align 8
  %d1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dim, ptr %dim.addr, align 8
  store ptr %grp, ptr %grp.addr, align 8
  store i32 %write_dimid, ptr %write_dimid.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_dim) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %0 = load ptr, ptr %dim.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %dim.addr, align 8
  %format_dim_info = getelementptr inbounds %struct.NC_DIM_INFO, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %format_dim_info, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %grp.addr, align 8
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %4 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %format_grp_info, align 8
  %tobool6 = icmp ne ptr %5, null
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.35, ptr noundef @.str.1, i32 noundef 1879, ptr noundef @__PRETTY_FUNCTION__.write_dim) #11
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %dim.addr, align 8
  %format_dim_info7 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %format_dim_info7, align 8
  store ptr %7, ptr %hdf5_dim, align 8
  %8 = load ptr, ptr %hdf5_dim, align 8
  %hdf_dimscaleid = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %hdf_dimscaleid, align 8
  %tobool8 = icmp ne i64 %9, 0
  br i1 %tobool8, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end
  %10 = load ptr, ptr %dim.addr, align 8
  %call = call i32 @nc4_create_dim_wo_var(ptr noundef %10)
  store i32 %call, ptr %retval1, align 4
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.then9
  br label %do.body

do.body:                                          ; preds = %if.then11
  br label %do.body12

do.body12:                                        ; preds = %do.body
  %11 = load i32, ptr %retval1, align 4
  store i32 %11, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond13:                                        ; No predecessors!
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %12 = load ptr, ptr %dim.addr, align 8
  %extended = getelementptr inbounds %struct.NC_DIM_INFO, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %extended, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.then18, label %if.end73

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #10
  store ptr null, ptr %v1, align 8
  %14 = load ptr, ptr %dim.addr, align 8
  %unlimited = getelementptr inbounds %struct.NC_DIM_INFO, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %unlimited, align 8
  %tobool19 = icmp ne i32 %15, 0
  br i1 %tobool19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.then18
  br label %if.end22

if.else21:                                        ; preds = %if.then18
  call void @__assert_fail(ptr noundef @.str.36, ptr noundef @.str.1, i32 noundef 1897, ptr noundef @__PRETTY_FUNCTION__.write_dim) #11
  unreachable

if.end22:                                         ; preds = %if.then20
  %16 = load ptr, ptr %dim.addr, align 8
  %coord_var = getelementptr inbounds %struct.NC_DIM_INFO, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %coord_var, align 8
  store ptr %17, ptr %v1, align 8
  %18 = load ptr, ptr %v1, align 8
  %tobool23 = icmp ne ptr %18, null
  br i1 %tobool23, label %if.then24, label %if.end69

if.then24:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_v1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_size) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d1) #10
  %19 = load ptr, ptr %v1, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %19, i32 0, i32 27
  %20 = load ptr, ptr %format_var_info, align 8
  store ptr %20, ptr %hdf5_v1, align 8
  %21 = load ptr, ptr %v1, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %21, i32 0, i32 3
  %22 = load i64, ptr %ndims, align 8
  %mul = mul i64 %22, 8
  %call25 = call noalias ptr @malloc(i64 noundef %mul) #12
  store ptr %call25, ptr %new_size, align 8
  %tobool26 = icmp ne ptr %call25, null
  br i1 %tobool26, label %if.end34, label %if.then27

if.then27:                                        ; preds = %if.then24
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  br label %do.body29

do.body29:                                        ; preds = %do.body28
  store i32 -61, ptr %retval1, align 4
  br label %do.cond30

do.cond30:                                        ; preds = %do.body29
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond32:                                        ; No predecessors!
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.then24
  store i32 0, ptr %d1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end34
  %23 = load i32, ptr %d1, align 4
  %conv = sext i32 %23 to i64
  %24 = load ptr, ptr %v1, align 8
  %ndims35 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %ndims35, align 8
  %cmp = icmp ult i64 %conv, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %v1, align 8
  %dim37 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %dim37, align 8
  %28 = load i32, ptr %d1, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %27, i64 %idxprom
  %29 = load ptr, ptr %arrayidx, align 8
  %tobool38 = icmp ne ptr %29, null
  br i1 %tobool38, label %land.lhs.true39, label %if.else49

land.lhs.true39:                                  ; preds = %for.body
  %30 = load ptr, ptr %v1, align 8
  %dim40 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %dim40, align 8
  %32 = load i32, ptr %d1, align 4
  %idxprom41 = sext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %31, i64 %idxprom41
  %33 = load ptr, ptr %arrayidx42, align 8
  %hdr = getelementptr inbounds %struct.NC_DIM_INFO, ptr %33, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 2
  %34 = load i64, ptr %id, align 8
  %35 = load ptr, ptr %v1, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %dimids, align 8
  %37 = load i32, ptr %d1, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %36, i64 %idxprom43
  %38 = load i32, ptr %arrayidx44, align 4
  %conv45 = sext i32 %38 to i64
  %cmp46 = icmp eq i64 %34, %conv45
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %land.lhs.true39
  br label %if.end50

if.else49:                                        ; preds = %land.lhs.true39, %for.body
  call void @__assert_fail(ptr noundef @.str.37, ptr noundef @.str.1, i32 noundef 1916, ptr noundef @__PRETTY_FUNCTION__.write_dim) #11
  unreachable

if.end50:                                         ; preds = %if.then48
  %39 = load ptr, ptr %v1, align 8
  %dim51 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %dim51, align 8
  %41 = load i32, ptr %d1, align 4
  %idxprom52 = sext i32 %41 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %40, i64 %idxprom52
  %42 = load ptr, ptr %arrayidx53, align 8
  %len = getelementptr inbounds %struct.NC_DIM_INFO, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %len, align 8
  %44 = load ptr, ptr %new_size, align 8
  %45 = load i32, ptr %d1, align 4
  %idxprom54 = sext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds i64, ptr %44, i64 %idxprom54
  store i64 %43, ptr %arrayidx55, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end50
  %46 = load i32, ptr %d1, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %d1, align 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %47 = load ptr, ptr %hdf5_v1, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %47, i32 0, i32 0
  %48 = load i64, ptr %hdf_datasetid, align 8
  %49 = load ptr, ptr %new_size, align 8
  %call56 = call i32 @H5Dset_extent(i64 noundef %48, ptr noundef %49)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %for.end
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  br label %do.body61

do.body61:                                        ; preds = %do.body60
  store i32 -101, ptr %retval1, align 4
  br label %do.cond62

do.cond62:                                        ; preds = %do.body61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond64:                                        ; No predecessors!
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %for.end
  %50 = load ptr, ptr %new_size, align 8
  call void @free(ptr noundef %50) #10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %do.end31, %if.end66
  call void @llvm.lifetime.end.p0(i64 4, ptr %d1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_size) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_v1) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup70 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end69

if.end69:                                         ; preds = %cleanup.cont, %if.end22
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %if.end69, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #10
  %cleanup.dest71 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest71, label %cleanup94 [
    i32 0, label %cleanup.cont72
    i32 6, label %exit
  ]

cleanup.cont72:                                   ; preds = %cleanup70
  br label %if.end73

if.end73:                                         ; preds = %cleanup.cont72, %if.end16
  %51 = load i32, ptr %write_dimid.addr, align 4
  %tobool74 = icmp ne i32 %51, 0
  br i1 %tobool74, label %land.lhs.true75, label %if.end93

land.lhs.true75:                                  ; preds = %if.end73
  %52 = load ptr, ptr %hdf5_dim, align 8
  %hdf_dimscaleid76 = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %52, i32 0, i32 0
  %53 = load i64, ptr %hdf_dimscaleid76, align 8
  %tobool77 = icmp ne i64 %53, 0
  br i1 %tobool77, label %if.then78, label %if.end93

if.then78:                                        ; preds = %land.lhs.true75
  %54 = load ptr, ptr %hdf5_dim, align 8
  %hdf_dimscaleid79 = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %54, i32 0, i32 0
  %55 = load i64, ptr %hdf_dimscaleid79, align 8
  %56 = load ptr, ptr %dim.addr, align 8
  %hdr80 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %56, i32 0, i32 0
  %id81 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr80, i32 0, i32 2
  %57 = load i64, ptr %id81, align 8
  %conv82 = trunc i64 %57 to i32
  %call83 = call i32 @write_netcdf4_dimid(i64 noundef %55, i32 noundef %conv82)
  store i32 %call83, ptr %retval1, align 4
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.end92

if.then85:                                        ; preds = %if.then78
  br label %do.body86

do.body86:                                        ; preds = %if.then85
  br label %do.body87

do.body87:                                        ; preds = %do.body86
  %58 = load i32, ptr %retval1, align 4
  store i32 %58, ptr %retval1, align 4
  br label %do.cond88

do.cond88:                                        ; preds = %do.body87
  br label %do.end89

do.end89:                                         ; preds = %do.cond88
  br label %exit

do.cond90:                                        ; No predecessors!
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  br label %if.end92

if.end92:                                         ; preds = %do.end91, %if.then78
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %land.lhs.true75, %if.end73
  br label %exit

exit:                                             ; preds = %if.end93, %cleanup70, %do.end89, %do.end
  %59 = load i32, ptr %retval1, align 4
  store i32 %59, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %exit, %cleanup70
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_dim) #10
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @write_var(ptr noundef %var, ptr noundef %grp, i32 noundef %write_dimid) #0 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %write_dimid.addr = alloca i32, align 4
  %hdf5_grp = alloca ptr, align 8
  %hdf5_var = alloca ptr, align 8
  %replace_existing_var = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %exists = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %d1 = alloca ptr, align 8
  %exists41 = alloca i32, align 4
  %dsid = alloca i64, align 8
  %d = alloca i32, align 4
  %dsid104 = alloca i64, align 8
  store ptr %var, ptr %var.addr, align 8
  store ptr %grp, ptr %grp.addr, align 8
  store i32 %write_dimid, ptr %write_dimid.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %replace_existing_var) #10
  store i32 0, ptr %replace_existing_var, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  %0 = load ptr, ptr %var.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %var.addr, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %1, i32 0, i32 27
  %2 = load ptr, ptr %format_var_info, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %grp.addr, align 8
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %4 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %format_grp_info, align 8
  %tobool6 = icmp ne ptr %5, null
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.38, ptr noundef @.str.1, i32 noundef 1591, ptr noundef @__PRETTY_FUNCTION__.write_var) #11
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %grp.addr, align 8
  %format_grp_info7 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %format_grp_info7, align 8
  store ptr %7, ptr %hdf5_grp, align 8
  %8 = load ptr, ptr %var.addr, align 8
  %format_var_info8 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %8, i32 0, i32 27
  %9 = load ptr, ptr %format_var_info8, align 8
  store ptr %9, ptr %hdf5_var, align 8
  %10 = load ptr, ptr %var.addr, align 8
  %created = getelementptr inbounds %struct.NC_VAR_INFO, ptr %10, i32 0, i32 11
  %11 = load i32, ptr %created, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %land.lhs.true10, label %if.end14

land.lhs.true10:                                  ; preds = %if.end
  %12 = load ptr, ptr %var.addr, align 8
  %fill_val_changed = getelementptr inbounds %struct.NC_VAR_INFO, ptr %12, i32 0, i32 9
  %13 = load i32, ptr %fill_val_changed, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true10
  store i32 1, ptr %replace_existing_var, align 4
  %14 = load ptr, ptr %var.addr, align 8
  %fill_val_changed13 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %14, i32 0, i32 9
  store i32 0, ptr %fill_val_changed13, align 4
  %15 = load ptr, ptr %var.addr, align 8
  %att = getelementptr inbounds %struct.NC_VAR_INFO, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %att, align 8
  %call = call i32 @flag_atts_dirty(ptr noundef %16)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true10, %if.end
  %17 = load ptr, ptr %var.addr, align 8
  %became_coord_var = getelementptr inbounds %struct.NC_VAR_INFO, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %became_coord_var, align 8
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then16, label %if.end32

if.then16:                                        ; preds = %if.end14
  %19 = load ptr, ptr %grp.addr, align 8
  %dim = getelementptr inbounds %struct.NC_GRP_INFO, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %dim, align 8
  %21 = load ptr, ptr %var.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_VAR_INFO, ptr %21, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %22 = load ptr, ptr %name, align 8
  %call17 = call ptr @ncindexlookup(ptr noundef %20, ptr noundef %22)
  %tobool18 = icmp ne ptr %call17, null
  br i1 %tobool18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.then16
  call void @llvm.lifetime.start.p0(i64 4, ptr %exists) #10
  %23 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %23, i32 0, i32 0
  %24 = load i64, ptr %hdf_grpid, align 8
  %25 = load ptr, ptr %var.addr, align 8
  %hdr20 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %25, i32 0, i32 0
  %name21 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr20, i32 0, i32 1
  %26 = load ptr, ptr %name21, align 8
  %call22 = call i32 @var_exists(i64 noundef %24, ptr noundef %26, ptr noundef %exists)
  store i32 %call22, ptr %retval1, align 4
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then19
  %27 = load i32, ptr %retval1, align 4
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.then19
  %28 = load i32, ptr %exists, align 4
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  store i32 1, ptr %replace_existing_var, align 4
  %29 = load ptr, ptr %var.addr, align 8
  %att28 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %29, i32 0, i32 17
  %30 = load ptr, ptr %att28, align 8
  %call29 = call i32 @flag_atts_dirty(ptr noundef %30)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %exists) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup249 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end31

if.end31:                                         ; preds = %cleanup.cont, %if.then16
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end14
  %31 = load i32, ptr %replace_existing_var, align 4
  %tobool33 = icmp ne i32 %31, 0
  br i1 %tobool33, label %if.then34, label %if.end84

if.then34:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #10
  %32 = load ptr, ptr %grp.addr, align 8
  %dim35 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %dim35, align 8
  %34 = load ptr, ptr %var.addr, align 8
  %hdr36 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %34, i32 0, i32 0
  %name37 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr36, i32 0, i32 1
  %35 = load ptr, ptr %name37, align 8
  %call38 = call ptr @ncindexlookup(ptr noundef %33, ptr noundef %35)
  store ptr %call38, ptr %d1, align 8
  %tobool39 = icmp ne ptr %call38, null
  br i1 %tobool39, label %if.then40, label %if.end80

if.then40:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 4, ptr %exists41) #10
  %36 = load ptr, ptr %d1, align 8
  %format_dim_info = getelementptr inbounds %struct.NC_DIM_INFO, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %format_dim_info, align 8
  %tobool42 = icmp ne ptr %37, null
  br i1 %tobool42, label %land.lhs.true43, label %if.else48

land.lhs.true43:                                  ; preds = %if.then40
  %38 = load ptr, ptr %d1, align 8
  %hdr44 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %38, i32 0, i32 0
  %name45 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr44, i32 0, i32 1
  %39 = load ptr, ptr %name45, align 8
  %tobool46 = icmp ne ptr %39, null
  br i1 %tobool46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %land.lhs.true43
  br label %if.end49

if.else48:                                        ; preds = %land.lhs.true43, %if.then40
  call void @__assert_fail(ptr noundef @.str.39, ptr noundef @.str.1, i32 noundef 1645, ptr noundef @__PRETTY_FUNCTION__.write_var) #11
  unreachable

if.end49:                                         ; preds = %if.then47
  %40 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid50 = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %40, i32 0, i32 0
  %41 = load i64, ptr %hdf_grpid50, align 8
  %42 = load ptr, ptr %var.addr, align 8
  %hdr51 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %42, i32 0, i32 0
  %name52 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr51, i32 0, i32 1
  %43 = load ptr, ptr %name52, align 8
  %call53 = call i32 @var_exists(i64 noundef %41, ptr noundef %43, ptr noundef %exists41)
  store i32 %call53, ptr %retval1, align 4
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end49
  %44 = load i32, ptr %retval1, align 4
  store i32 %44, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup77

if.end56:                                         ; preds = %if.end49
  %45 = load i32, ptr %exists41, align 4
  %tobool57 = icmp ne i32 %45, 0
  br i1 %tobool57, label %if.then58, label %if.end76

if.then58:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsid) #10
  %46 = load ptr, ptr %d1, align 8
  %coord_var = getelementptr inbounds %struct.NC_DIM_INFO, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %coord_var, align 8
  %tobool59 = icmp ne ptr %47, null
  br i1 %tobool59, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.then58
  %48 = load ptr, ptr %d1, align 8
  %coord_var61 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %48, i32 0, i32 7
  %49 = load ptr, ptr %coord_var61, align 8
  %format_var_info62 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %49, i32 0, i32 27
  %50 = load ptr, ptr %format_var_info62, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %hdf_datasetid, align 8
  store i64 %51, ptr %dsid, align 8
  br label %if.end65

if.else63:                                        ; preds = %if.then58
  %52 = load ptr, ptr %d1, align 8
  %format_dim_info64 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %format_dim_info64, align 8
  %hdf_dimscaleid = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %53, i32 0, i32 0
  %54 = load i64, ptr %hdf_dimscaleid, align 8
  store i64 %54, ptr %dsid, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then60
  %55 = load i64, ptr %dsid, align 8
  %cmp = icmp sgt i64 %55, 0
  br i1 %cmp, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end65
  br label %if.end68

if.else67:                                        ; preds = %if.end65
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.1, i32 noundef 1658, ptr noundef @__PRETTY_FUNCTION__.write_var) #11
  unreachable

if.end68:                                         ; preds = %if.then66
  %56 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %nc4_info, align 8
  %root_grp = getelementptr inbounds %struct.NC_FILE_INFO, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %root_grp, align 8
  %59 = load ptr, ptr %var.addr, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %dimids, align 8
  %arrayidx = getelementptr inbounds i32, ptr %60, i64 0
  %61 = load i32, ptr %arrayidx, align 4
  %62 = load i64, ptr %dsid, align 8
  %call69 = call i32 @rec_detach_scales(ptr noundef %58, i32 noundef %61, i64 noundef %62)
  store i32 %call69, ptr %retval1, align 4
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end68
  %63 = load i32, ptr %retval1, align 4
  store i32 %63, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

if.end72:                                         ; preds = %if.end68
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %if.end72, %if.then71
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsid) #10
  %cleanup.dest74 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest74, label %cleanup77 [
    i32 0, label %cleanup.cont75
  ]

cleanup.cont75:                                   ; preds = %cleanup73
  br label %if.end76

if.end76:                                         ; preds = %cleanup.cont75, %if.end56
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup77

cleanup77:                                        ; preds = %if.end76, %cleanup73, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr %exists41) #10
  %cleanup.dest78 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest78, label %cleanup81 [
    i32 0, label %cleanup.cont79
  ]

cleanup.cont79:                                   ; preds = %cleanup77
  br label %if.end80

if.end80:                                         ; preds = %cleanup.cont79, %if.then34
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %if.end80, %cleanup77
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #10
  %cleanup.dest82 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest82, label %cleanup249 [
    i32 0, label %cleanup.cont83
  ]

cleanup.cont83:                                   ; preds = %cleanup81
  br label %if.end84

if.end84:                                         ; preds = %cleanup.cont83, %if.end32
  %64 = load ptr, ptr %var.addr, align 8
  %was_coord_var = getelementptr inbounds %struct.NC_VAR_INFO, ptr %64, i32 0, i32 7
  %65 = load i32, ptr %was_coord_var, align 4
  %tobool85 = icmp ne i32 %65, 0
  br i1 %tobool85, label %land.lhs.true86, label %if.end169

land.lhs.true86:                                  ; preds = %if.end84
  %66 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %dimscale_attached, align 8
  %tobool87 = icmp ne ptr %67, null
  br i1 %tobool87, label %if.then88, label %if.end169

if.then88:                                        ; preds = %land.lhs.true86
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  %68 = load ptr, ptr %var.addr, align 8
  %created89 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %68, i32 0, i32 11
  %69 = load i32, ptr %created89, align 4
  %tobool90 = icmp ne i32 %69, 0
  br i1 %tobool90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %if.then88
  %70 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid92 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %70, i32 0, i32 0
  %71 = load i64, ptr %hdf_datasetid92, align 8
  %call93 = call i32 @remove_coord_atts(i64 noundef %71)
  store i32 %call93, ptr %retval1, align 4
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.then91
  %72 = load i32, ptr %retval1, align 4
  store i32 %72, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup166

if.end96:                                         ; preds = %if.then91
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then88
  store i32 0, ptr %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end97
  %73 = load i32, ptr %d, align 4
  %conv = sext i32 %73 to i64
  %74 = load ptr, ptr %var.addr, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %74, i32 0, i32 3
  %75 = load i64, ptr %ndims, align 8
  %cmp98 = icmp ult i64 %conv, %75
  br i1 %cmp98, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached100 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %76, i32 0, i32 3
  %77 = load ptr, ptr %dimscale_attached100, align 8
  %78 = load i32, ptr %d, align 4
  %idxprom = sext i32 %78 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %77, i64 %idxprom
  %79 = load i32, ptr %arrayidx101, align 4
  %tobool102 = icmp ne i32 %79, 0
  br i1 %tobool102, label %if.then103, label %if.end165

if.then103:                                       ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsid104) #10
  %80 = load ptr, ptr %var.addr, align 8
  %dim105 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %80, i32 0, i32 5
  %81 = load ptr, ptr %dim105, align 8
  %82 = load i32, ptr %d, align 4
  %idxprom106 = sext i32 %82 to i64
  %arrayidx107 = getelementptr inbounds ptr, ptr %81, i64 %idxprom106
  %83 = load ptr, ptr %arrayidx107, align 8
  %tobool108 = icmp ne ptr %83, null
  br i1 %tobool108, label %land.lhs.true109, label %if.else127

land.lhs.true109:                                 ; preds = %if.then103
  %84 = load ptr, ptr %var.addr, align 8
  %dim110 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %84, i32 0, i32 5
  %85 = load ptr, ptr %dim110, align 8
  %86 = load i32, ptr %d, align 4
  %idxprom111 = sext i32 %86 to i64
  %arrayidx112 = getelementptr inbounds ptr, ptr %85, i64 %idxprom111
  %87 = load ptr, ptr %arrayidx112, align 8
  %hdr113 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %87, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr113, i32 0, i32 2
  %88 = load i64, ptr %id, align 8
  %89 = load ptr, ptr %var.addr, align 8
  %dimids114 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %89, i32 0, i32 4
  %90 = load ptr, ptr %dimids114, align 8
  %91 = load i32, ptr %d, align 4
  %idxprom115 = sext i32 %91 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %90, i64 %idxprom115
  %92 = load i32, ptr %arrayidx116, align 4
  %conv117 = sext i32 %92 to i64
  %cmp118 = icmp eq i64 %88, %conv117
  br i1 %cmp118, label %land.lhs.true120, label %if.else127

land.lhs.true120:                                 ; preds = %land.lhs.true109
  %93 = load ptr, ptr %var.addr, align 8
  %dim121 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %93, i32 0, i32 5
  %94 = load ptr, ptr %dim121, align 8
  %95 = load i32, ptr %d, align 4
  %idxprom122 = sext i32 %95 to i64
  %arrayidx123 = getelementptr inbounds ptr, ptr %94, i64 %idxprom122
  %96 = load ptr, ptr %arrayidx123, align 8
  %format_dim_info124 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %96, i32 0, i32 6
  %97 = load ptr, ptr %format_dim_info124, align 8
  %tobool125 = icmp ne ptr %97, null
  br i1 %tobool125, label %if.then126, label %if.else127

if.then126:                                       ; preds = %land.lhs.true120
  br label %if.end128

if.else127:                                       ; preds = %land.lhs.true120, %land.lhs.true109, %if.then103
  call void @__assert_fail(ptr noundef @.str.41, ptr noundef @.str.1, i32 noundef 1689, ptr noundef @__PRETTY_FUNCTION__.write_var) #11
  unreachable

if.end128:                                        ; preds = %if.then126
  %98 = load ptr, ptr %var.addr, align 8
  %dim129 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %98, i32 0, i32 5
  %99 = load ptr, ptr %dim129, align 8
  %100 = load i32, ptr %d, align 4
  %idxprom130 = sext i32 %100 to i64
  %arrayidx131 = getelementptr inbounds ptr, ptr %99, i64 %idxprom130
  %101 = load ptr, ptr %arrayidx131, align 8
  %coord_var132 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %101, i32 0, i32 7
  %102 = load ptr, ptr %coord_var132, align 8
  %tobool133 = icmp ne ptr %102, null
  br i1 %tobool133, label %if.then134, label %if.else141

if.then134:                                       ; preds = %if.end128
  %103 = load ptr, ptr %var.addr, align 8
  %dim135 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %103, i32 0, i32 5
  %104 = load ptr, ptr %dim135, align 8
  %105 = load i32, ptr %d, align 4
  %idxprom136 = sext i32 %105 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %104, i64 %idxprom136
  %106 = load ptr, ptr %arrayidx137, align 8
  %coord_var138 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %106, i32 0, i32 7
  %107 = load ptr, ptr %coord_var138, align 8
  %format_var_info139 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %107, i32 0, i32 27
  %108 = load ptr, ptr %format_var_info139, align 8
  %hdf_datasetid140 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %108, i32 0, i32 0
  %109 = load i64, ptr %hdf_datasetid140, align 8
  store i64 %109, ptr %dsid104, align 8
  br label %if.end147

if.else141:                                       ; preds = %if.end128
  %110 = load ptr, ptr %var.addr, align 8
  %dim142 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %110, i32 0, i32 5
  %111 = load ptr, ptr %dim142, align 8
  %112 = load i32, ptr %d, align 4
  %idxprom143 = sext i32 %112 to i64
  %arrayidx144 = getelementptr inbounds ptr, ptr %111, i64 %idxprom143
  %113 = load ptr, ptr %arrayidx144, align 8
  %format_dim_info145 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %113, i32 0, i32 6
  %114 = load ptr, ptr %format_dim_info145, align 8
  %hdf_dimscaleid146 = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %114, i32 0, i32 0
  %115 = load i64, ptr %hdf_dimscaleid146, align 8
  store i64 %115, ptr %dsid104, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.else141, %if.then134
  %116 = load i64, ptr %dsid104, align 8
  %cmp148 = icmp sgt i64 %116, 0
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %if.end147
  br label %if.end152

if.else151:                                       ; preds = %if.end147
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.1, i32 noundef 1696, ptr noundef @__PRETTY_FUNCTION__.write_var) #11
  unreachable

if.end152:                                        ; preds = %if.then150
  %117 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid153 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %117, i32 0, i32 0
  %118 = load i64, ptr %hdf_datasetid153, align 8
  %119 = load i64, ptr %dsid104, align 8
  %120 = load i32, ptr %d, align 4
  %call154 = call i32 @H5DSdetach_scale(i64 noundef %118, i64 noundef %119, i32 noundef %120)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.end152
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup162

if.end158:                                        ; preds = %if.end152
  %121 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached159 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %121, i32 0, i32 3
  %122 = load ptr, ptr %dimscale_attached159, align 8
  %123 = load i32, ptr %d, align 4
  %idxprom160 = sext i32 %123 to i64
  %arrayidx161 = getelementptr inbounds i32, ptr %122, i64 %idxprom160
  store i32 0, ptr %arrayidx161, align 4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup162

cleanup162:                                       ; preds = %if.end158, %if.then157
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsid104) #10
  %cleanup.dest163 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest163, label %cleanup166 [
    i32 0, label %cleanup.cont164
  ]

cleanup.cont164:                                  ; preds = %cleanup162
  br label %if.end165

if.end165:                                        ; preds = %cleanup.cont164, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end165
  %124 = load i32, ptr %d, align 4
  %inc = add nsw i32 %124, 1
  store i32 %inc, ptr %d, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup166

cleanup166:                                       ; preds = %for.end, %cleanup162, %if.then95
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  %cleanup.dest167 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest167, label %cleanup249 [
    i32 0, label %cleanup.cont168
  ]

cleanup.cont168:                                  ; preds = %cleanup166
  br label %if.end169

if.end169:                                        ; preds = %cleanup.cont168, %land.lhs.true86, %if.end84
  %125 = load i32, ptr %replace_existing_var, align 4
  %tobool170 = icmp ne i32 %125, 0
  br i1 %tobool170, label %if.then171, label %if.end190

if.then171:                                       ; preds = %if.end169
  %126 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid172 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %126, i32 0, i32 0
  %127 = load i64, ptr %hdf_datasetid172, align 8
  %tobool173 = icmp ne i64 %127, 0
  br i1 %tobool173, label %land.lhs.true174, label %if.end180

land.lhs.true174:                                 ; preds = %if.then171
  %128 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid175 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %128, i32 0, i32 0
  %129 = load i64, ptr %hdf_datasetid175, align 8
  %call176 = call i32 @H5Dclose(i64 noundef %129)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %land.lhs.true174
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

if.end180:                                        ; preds = %land.lhs.true174, %if.then171
  %130 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid181 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %130, i32 0, i32 0
  store i64 0, ptr %hdf_datasetid181, align 8
  %131 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid182 = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %131, i32 0, i32 0
  %132 = load i64, ptr %hdf_grpid182, align 8
  %133 = load ptr, ptr %var.addr, align 8
  %hdr183 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %133, i32 0, i32 0
  %name184 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr183, i32 0, i32 1
  %134 = load ptr, ptr %name184, align 8
  %call185 = call i32 @H5Gunlink(i64 noundef %132, ptr noundef %134)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %if.end180
  store i32 -106, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

if.end189:                                        ; preds = %if.end180
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end169
  %135 = load ptr, ptr %var.addr, align 8
  %is_new_var = getelementptr inbounds %struct.NC_VAR_INFO, ptr %135, i32 0, i32 6
  %136 = load i32, ptr %is_new_var, align 8
  %tobool191 = icmp ne i32 %136, 0
  br i1 %tobool191, label %if.then193, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end190
  %137 = load i32, ptr %replace_existing_var, align 4
  %tobool192 = icmp ne i32 %137, 0
  br i1 %tobool192, label %if.then193, label %if.else198

if.then193:                                       ; preds = %lor.lhs.false, %if.end190
  %138 = load ptr, ptr %grp.addr, align 8
  %139 = load ptr, ptr %var.addr, align 8
  %140 = load i32, ptr %write_dimid.addr, align 4
  %call194 = call i32 @var_create_dataset(ptr noundef %138, ptr noundef %139, i32 noundef %140)
  store i32 %call194, ptr %retval1, align 4
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.then193
  %141 = load i32, ptr %retval1, align 4
  store i32 %141, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

if.end197:                                        ; preds = %if.then193
  br label %if.end212

if.else198:                                       ; preds = %lor.lhs.false
  %142 = load i32, ptr %write_dimid.addr, align 4
  %tobool199 = icmp ne i32 %142, 0
  br i1 %tobool199, label %land.lhs.true200, label %if.end211

land.lhs.true200:                                 ; preds = %if.else198
  %143 = load ptr, ptr %var.addr, align 8
  %ndims201 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %143, i32 0, i32 3
  %144 = load i64, ptr %ndims201, align 8
  %tobool202 = icmp ne i64 %144, 0
  br i1 %tobool202, label %if.then203, label %if.end211

if.then203:                                       ; preds = %land.lhs.true200
  %145 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid204 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %145, i32 0, i32 0
  %146 = load i64, ptr %hdf_datasetid204, align 8
  %147 = load ptr, ptr %var.addr, align 8
  %dimids205 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %147, i32 0, i32 4
  %148 = load ptr, ptr %dimids205, align 8
  %arrayidx206 = getelementptr inbounds i32, ptr %148, i64 0
  %149 = load i32, ptr %arrayidx206, align 4
  %call207 = call i32 @write_netcdf4_dimid(i64 noundef %146, i32 noundef %149)
  store i32 %call207, ptr %retval1, align 4
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.then203
  %150 = load i32, ptr %retval1, align 4
  store i32 %150, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

if.end210:                                        ; preds = %if.then203
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %land.lhs.true200, %if.else198
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.end197
  %151 = load i32, ptr %replace_existing_var, align 4
  %tobool213 = icmp ne i32 %151, 0
  br i1 %tobool213, label %if.then214, label %if.end234

if.then214:                                       ; preds = %if.end212
  %152 = load ptr, ptr %hdf5_var, align 8
  %dimscale = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %152, i32 0, i32 2
  %153 = load i32, ptr %dimscale, align 8
  %tobool215 = icmp ne i32 %153, 0
  br i1 %tobool215, label %if.then216, label %if.else226

if.then216:                                       ; preds = %if.then214
  %154 = load ptr, ptr %grp.addr, align 8
  %nc4_info217 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %154, i32 0, i32 2
  %155 = load ptr, ptr %nc4_info217, align 8
  %root_grp218 = getelementptr inbounds %struct.NC_FILE_INFO, ptr %155, i32 0, i32 12
  %156 = load ptr, ptr %root_grp218, align 8
  %157 = load ptr, ptr %var.addr, align 8
  %dimids219 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %157, i32 0, i32 4
  %158 = load ptr, ptr %dimids219, align 8
  %arrayidx220 = getelementptr inbounds i32, ptr %158, i64 0
  %159 = load i32, ptr %arrayidx220, align 4
  %160 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid221 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %160, i32 0, i32 0
  %161 = load i64, ptr %hdf_datasetid221, align 8
  %call222 = call i32 @rec_reattach_scales(ptr noundef %156, i32 noundef %159, i64 noundef %161)
  store i32 %call222, ptr %retval1, align 4
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.then216
  %162 = load i32, ptr %retval1, align 4
  store i32 %162, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

if.end225:                                        ; preds = %if.then216
  br label %if.end233

if.else226:                                       ; preds = %if.then214
  %163 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached227 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %163, i32 0, i32 3
  %164 = load ptr, ptr %dimscale_attached227, align 8
  %tobool228 = icmp ne ptr %164, null
  br i1 %tobool228, label %if.then229, label %if.end232

if.then229:                                       ; preds = %if.else226
  %165 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached230 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %165, i32 0, i32 3
  %166 = load ptr, ptr %dimscale_attached230, align 8
  %167 = load ptr, ptr %var.addr, align 8
  %ndims231 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %167, i32 0, i32 3
  %168 = load i64, ptr %ndims231, align 8
  %mul = mul i64 4, %168
  call void @llvm.memset.p0.i64(ptr align 4 %166, i8 0, i64 %mul, i1 false)
  br label %if.end232

if.end232:                                        ; preds = %if.then229, %if.else226
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %if.end225
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.end212
  %169 = load ptr, ptr %var.addr, align 8
  %was_coord_var235 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %169, i32 0, i32 7
  store i32 0, ptr %was_coord_var235, align 4
  %170 = load ptr, ptr %var.addr, align 8
  %became_coord_var236 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %170, i32 0, i32 8
  store i32 0, ptr %became_coord_var236, align 8
  %171 = load ptr, ptr %var.addr, align 8
  %attr_dirty = getelementptr inbounds %struct.NC_VAR_INFO, ptr %171, i32 0, i32 10
  %172 = load i32, ptr %attr_dirty, align 8
  %tobool237 = icmp ne i32 %172, 0
  br i1 %tobool237, label %if.then238, label %if.end248

if.then238:                                       ; preds = %if.end234
  %173 = load ptr, ptr %var.addr, align 8
  %att239 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %173, i32 0, i32 17
  %174 = load ptr, ptr %att239, align 8
  %175 = load ptr, ptr %var.addr, align 8
  %hdr240 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %175, i32 0, i32 0
  %id241 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr240, i32 0, i32 2
  %176 = load i64, ptr %id241, align 8
  %conv242 = trunc i64 %176 to i32
  %177 = load ptr, ptr %grp.addr, align 8
  %call243 = call i32 @write_attlist(ptr noundef %174, i32 noundef %conv242, ptr noundef %177)
  store i32 %call243, ptr %retval1, align 4
  %tobool244 = icmp ne i32 %call243, 0
  br i1 %tobool244, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.then238
  %178 = load i32, ptr %retval1, align 4
  store i32 %178, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

if.end246:                                        ; preds = %if.then238
  %179 = load ptr, ptr %var.addr, align 8
  %attr_dirty247 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %179, i32 0, i32 10
  store i32 0, ptr %attr_dirty247, align 8
  br label %if.end248

if.end248:                                        ; preds = %if.end246, %if.end234
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup249

cleanup249:                                       ; preds = %if.end248, %if.then245, %if.then224, %if.then209, %if.then196, %if.then188, %if.then179, %cleanup166, %cleanup81, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %replace_existing_var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  %180 = load i32, ptr %retval, align 4
  ret i32 %180
}

; Function Attrs: nounwind uwtable
define internal i32 @attach_dimscales(ptr noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %var = alloca ptr, align 8
  %hdf5_var = alloca ptr, align 8
  %d = alloca i32, align 4
  %v = alloca i32, align 4
  %dsid = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #10
  store i32 0, ptr %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc82, %entry
  %0 = load i32, ptr %v, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %grp.addr, align 8
  %vars = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 9
  %2 = load ptr, ptr %vars, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end9

cond.false:                                       ; preds = %for.cond
  %3 = load ptr, ptr %grp.addr, align 8
  %vars2 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %vars2, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %list, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %6 = load ptr, ptr %grp.addr, align 8
  %vars7 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %vars7, align 8
  %list8 = getelementptr inbounds %struct.NCindex, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %list8, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i64 [ 0, %cond.true5 ], [ %9, %cond.false6 ]
  br label %cond.end9

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp11 = icmp ult i64 %conv, %cond10
  br i1 %cmp11, label %for.body, label %for.end84

for.body:                                         ; preds = %cond.end9
  %10 = load ptr, ptr %grp.addr, align 8
  %vars13 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %vars13, align 8
  %12 = load i32, ptr %v, align 4
  %conv14 = sext i32 %12 to i64
  %call = call ptr @ncindexith(ptr noundef %11, i64 noundef %conv14)
  store ptr %call, ptr %var, align 8
  %13 = load ptr, ptr %var, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %var, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %14, i32 0, i32 27
  %15 = load ptr, ptr %format_var_info, align 8
  %tobool15 = icmp ne ptr %15, null
  br i1 %tobool15, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 1441, ptr noundef @__PRETTY_FUNCTION__.attach_dimscales) #11
  unreachable

if.end:                                           ; preds = %if.then
  %16 = load ptr, ptr %var, align 8
  %format_var_info16 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %16, i32 0, i32 27
  %17 = load ptr, ptr %format_var_info16, align 8
  store ptr %17, ptr %hdf5_var, align 8
  %18 = load ptr, ptr %hdf5_var, align 8
  %dimscale = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %dimscale, align 8
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  br label %for.inc82

if.end19:                                         ; preds = %if.end
  store i32 0, ptr %d, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %if.end19
  %20 = load i32, ptr %d, align 4
  %conv21 = sext i32 %20 to i64
  %21 = load ptr, ptr %var, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %21, i32 0, i32 3
  %22 = load i64, ptr %ndims, align 8
  %cmp22 = icmp ult i64 %conv21, %22
  br i1 %cmp22, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.cond20
  %23 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %dimscale_attached, align 8
  %tobool25 = icmp ne ptr %24, null
  br i1 %tobool25, label %if.then26, label %if.end81

if.then26:                                        ; preds = %for.body24
  %25 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached27 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %dimscale_attached27, align 8
  %27 = load i32, ptr %d, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds i32, ptr %26, i64 %idxprom
  %28 = load i32, ptr %arrayidx, align 4
  %tobool28 = icmp ne i32 %28, 0
  br i1 %tobool28, label %if.end80, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsid) #10
  %29 = load ptr, ptr %var, align 8
  %dim = getelementptr inbounds %struct.NC_VAR_INFO, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %dim, align 8
  %31 = load i32, ptr %d, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %30, i64 %idxprom30
  %32 = load ptr, ptr %arrayidx31, align 8
  %tobool32 = icmp ne ptr %32, null
  br i1 %tobool32, label %land.lhs.true33, label %if.else48

land.lhs.true33:                                  ; preds = %if.then29
  %33 = load ptr, ptr %var, align 8
  %dim34 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %dim34, align 8
  %35 = load i32, ptr %d, align 4
  %idxprom35 = sext i32 %35 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %34, i64 %idxprom35
  %36 = load ptr, ptr %arrayidx36, align 8
  %hdr = getelementptr inbounds %struct.NC_DIM_INFO, ptr %36, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 2
  %37 = load i64, ptr %id, align 8
  %38 = load ptr, ptr %var, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %dimids, align 8
  %40 = load i32, ptr %d, align 4
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %39, i64 %idxprom37
  %41 = load i32, ptr %arrayidx38, align 4
  %conv39 = sext i32 %41 to i64
  %cmp40 = icmp eq i64 %37, %conv39
  br i1 %cmp40, label %land.lhs.true42, label %if.else48

land.lhs.true42:                                  ; preds = %land.lhs.true33
  %42 = load ptr, ptr %var, align 8
  %dim43 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %dim43, align 8
  %44 = load i32, ptr %d, align 4
  %idxprom44 = sext i32 %44 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %43, i64 %idxprom44
  %45 = load ptr, ptr %arrayidx45, align 8
  %format_dim_info = getelementptr inbounds %struct.NC_DIM_INFO, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %format_dim_info, align 8
  %tobool46 = icmp ne ptr %46, null
  br i1 %tobool46, label %if.then47, label %if.else48

if.then47:                                        ; preds = %land.lhs.true42
  br label %if.end49

if.else48:                                        ; preds = %land.lhs.true42, %land.lhs.true33, %if.then29
  call void @__assert_fail(ptr noundef @.str.41, ptr noundef @.str.1, i32 noundef 1459, ptr noundef @__PRETTY_FUNCTION__.attach_dimscales) #11
  unreachable

if.end49:                                         ; preds = %if.then47
  %47 = load ptr, ptr %var, align 8
  %dim50 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %dim50, align 8
  %49 = load i32, ptr %d, align 4
  %idxprom51 = sext i32 %49 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %48, i64 %idxprom51
  %50 = load ptr, ptr %arrayidx52, align 8
  %coord_var = getelementptr inbounds %struct.NC_DIM_INFO, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %coord_var, align 8
  %tobool53 = icmp ne ptr %51, null
  br i1 %tobool53, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.end49
  %52 = load ptr, ptr %var, align 8
  %dim55 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %52, i32 0, i32 5
  %53 = load ptr, ptr %dim55, align 8
  %54 = load i32, ptr %d, align 4
  %idxprom56 = sext i32 %54 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %53, i64 %idxprom56
  %55 = load ptr, ptr %arrayidx57, align 8
  %coord_var58 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %55, i32 0, i32 7
  %56 = load ptr, ptr %coord_var58, align 8
  %format_var_info59 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %56, i32 0, i32 27
  %57 = load ptr, ptr %format_var_info59, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %57, i32 0, i32 0
  %58 = load i64, ptr %hdf_datasetid, align 8
  store i64 %58, ptr %dsid, align 8
  br label %if.end65

if.else60:                                        ; preds = %if.end49
  %59 = load ptr, ptr %var, align 8
  %dim61 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %59, i32 0, i32 5
  %60 = load ptr, ptr %dim61, align 8
  %61 = load i32, ptr %d, align 4
  %idxprom62 = sext i32 %61 to i64
  %arrayidx63 = getelementptr inbounds ptr, ptr %60, i64 %idxprom62
  %62 = load ptr, ptr %arrayidx63, align 8
  %format_dim_info64 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %format_dim_info64, align 8
  %hdf_dimscaleid = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %63, i32 0, i32 0
  %64 = load i64, ptr %hdf_dimscaleid, align 8
  store i64 %64, ptr %dsid, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.then54
  %65 = load i64, ptr %dsid, align 8
  %cmp66 = icmp sgt i64 %65, 0
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.end65
  br label %if.end70

if.else69:                                        ; preds = %if.end65
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.1, i32 noundef 1469, ptr noundef @__PRETTY_FUNCTION__.attach_dimscales) #11
  unreachable

if.end70:                                         ; preds = %if.then68
  %66 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid71 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %66, i32 0, i32 0
  %67 = load i64, ptr %hdf_datasetid71, align 8
  %68 = load i64, ptr %dsid, align 8
  %69 = load i32, ptr %d, align 4
  %call72 = call i32 @H5DSattach_scale(i64 noundef %67, i64 noundef %68, i32 noundef %69)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end70
  store i32 -124, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end76:                                         ; preds = %if.end70
  %70 = load ptr, ptr %hdf5_var, align 8
  %dimscale_attached77 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %70, i32 0, i32 3
  %71 = load ptr, ptr %dimscale_attached77, align 8
  %72 = load i32, ptr %d, align 4
  %idxprom78 = sext i32 %72 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %71, i64 %idxprom78
  store i32 1, ptr %arrayidx79, align 4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then75
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsid) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end80

if.end80:                                         ; preds = %cleanup.cont, %if.then26
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %for.body24
  br label %for.inc

for.inc:                                          ; preds = %if.end81
  %73 = load i32, ptr %d, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %d, align 4
  br label %for.cond20, !llvm.loop !19

for.end:                                          ; preds = %for.cond20
  br label %for.inc82

for.inc82:                                        ; preds = %for.end, %if.then18
  %74 = load i32, ptr %v, align 4
  %inc83 = add nsw i32 %74, 1
  store i32 %inc83, ptr %v, align 4
  br label %for.cond, !llvm.loop !20

for.end84:                                        ; preds = %cond.end9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %for.end84, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #10
  %75 = load i32, ptr %retval, align 4
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define i32 @nc4_rec_write_groups_types(ptr noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %child_grp = alloca ptr, align 8
  %hdf5_grp = alloca ptr, align 8
  %type = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %2 = load ptr, ptr %name, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %format_grp_info, align 8
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef 2047, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_write_groups_types) #11
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %grp.addr, align 8
  %format_grp_info5 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %format_grp_info5, align 8
  store ptr %6, ptr %hdf5_grp, align 8
  %7 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %hdf_grpid, align 8
  %tobool6 = icmp ne i64 %8, 0
  br i1 %tobool6, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end
  %9 = load ptr, ptr %grp.addr, align 8
  %call = call i32 @create_group(ptr noundef %9)
  store i32 %call, ptr %retval1, align 4
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  %10 = load i32, ptr %retval1, align 4
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %11 = load ptr, ptr %grp.addr, align 8
  %parent = getelementptr inbounds %struct.NC_GRP_INFO, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %parent, align 8
  %tobool12 = icmp ne ptr %12, null
  br i1 %tobool12, label %if.end21, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end11
  %13 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %nc4_info, align 8
  %cmode = getelementptr inbounds %struct.NC_FILE_INFO, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %cmode, align 8
  %and = and i32 %15, 256
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %land.lhs.true13
  %16 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid16 = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %hdf_grpid16, align 8
  %call17 = call i32 @write_nc3_strict_att(i64 noundef %17)
  store i32 %call17, ptr %retval1, align 4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then15
  %18 = load i32, ptr %retval1, align 4
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true13, %if.end11
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %19 = load i32, ptr %i, align 4
  %conv = sext i32 %19 to i64
  %20 = load ptr, ptr %grp.addr, align 8
  %type22 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %type22, align 8
  %cmp = icmp eq ptr %21, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end31

cond.false:                                       ; preds = %for.cond
  %22 = load ptr, ptr %grp.addr, align 8
  %type24 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %22, i32 0, i32 8
  %23 = load ptr, ptr %type24, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %list, align 8
  %cmp25 = icmp eq ptr %24, null
  br i1 %cmp25, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.false
  br label %cond.end

cond.false28:                                     ; preds = %cond.false
  %25 = load ptr, ptr %grp.addr, align 8
  %type29 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %25, i32 0, i32 8
  %26 = load ptr, ptr %type29, align 8
  %list30 = getelementptr inbounds %struct.NCindex, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %list30, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false28, %cond.true27
  %cond = phi i64 [ 0, %cond.true27 ], [ %28, %cond.false28 ]
  br label %cond.end31

cond.end31:                                       ; preds = %cond.end, %cond.true
  %cond32 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp33 = icmp ult i64 %conv, %cond32
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end31
  %29 = load ptr, ptr %grp.addr, align 8
  %type35 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %type35, align 8
  %31 = load i32, ptr %i, align 4
  %conv36 = sext i32 %31 to i64
  %call37 = call ptr @ncindexith(ptr noundef %30, i64 noundef %conv36)
  store ptr %call37, ptr %type, align 8
  %32 = load ptr, ptr %type, align 8
  %tobool38 = icmp ne ptr %32, null
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %for.body
  br label %if.end41

if.else40:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.15, ptr noundef @.str.1, i32 noundef 2067, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_write_groups_types) #11
  unreachable

if.end41:                                         ; preds = %if.then39
  %33 = load ptr, ptr %grp.addr, align 8
  %34 = load ptr, ptr %type, align 8
  %call42 = call i32 @commit_type(ptr noundef %33, ptr noundef %34)
  store i32 %call42, ptr %retval1, align 4
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  %35 = load i32, ptr %retval1, align 4
  store i32 %35, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %36 = load i32, ptr %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %cond.end31
  store i32 0, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc79, %for.end
  %37 = load i32, ptr %i, align 4
  %conv47 = sext i32 %37 to i64
  %38 = load ptr, ptr %grp.addr, align 8
  %children = getelementptr inbounds %struct.NC_GRP_INFO, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %children, align 8
  %cmp48 = icmp eq ptr %39, null
  br i1 %cmp48, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %for.cond46
  br label %cond.end63

cond.false51:                                     ; preds = %for.cond46
  %40 = load ptr, ptr %grp.addr, align 8
  %children52 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %children52, align 8
  %list53 = getelementptr inbounds %struct.NCindex, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %list53, align 8
  %cmp54 = icmp eq ptr %42, null
  br i1 %cmp54, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %cond.false51
  br label %cond.end61

cond.false57:                                     ; preds = %cond.false51
  %43 = load ptr, ptr %grp.addr, align 8
  %children58 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %children58, align 8
  %list59 = getelementptr inbounds %struct.NCindex, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %list59, align 8
  %length60 = getelementptr inbounds %struct.NClist, ptr %45, i32 0, i32 1
  %46 = load i64, ptr %length60, align 8
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false57, %cond.true56
  %cond62 = phi i64 [ 0, %cond.true56 ], [ %46, %cond.false57 ]
  br label %cond.end63

cond.end63:                                       ; preds = %cond.end61, %cond.true50
  %cond64 = phi i64 [ 0, %cond.true50 ], [ %cond62, %cond.end61 ]
  %cmp65 = icmp ult i64 %conv47, %cond64
  br i1 %cmp65, label %for.body67, label %for.end81

for.body67:                                       ; preds = %cond.end63
  %47 = load ptr, ptr %grp.addr, align 8
  %children68 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %children68, align 8
  %49 = load i32, ptr %i, align 4
  %conv69 = sext i32 %49 to i64
  %call70 = call ptr @ncindexith(ptr noundef %48, i64 noundef %conv69)
  store ptr %call70, ptr %child_grp, align 8
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body67
  br label %for.inc79

if.end74:                                         ; preds = %for.body67
  %50 = load ptr, ptr %child_grp, align 8
  %call75 = call i32 @nc4_rec_write_groups_types(ptr noundef %50)
  store i32 %call75, ptr %retval1, align 4
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end74
  %51 = load i32, ptr %retval1, align 4
  store i32 %51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78, %if.then73
  %52 = load i32, ptr %i, align 4
  %inc80 = add nsw i32 %52, 1
  store i32 %inc80, ptr %i, align 4
  br label %for.cond46, !llvm.loop !22

for.end81:                                        ; preds = %cond.end63
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end81, %if.then77, %if.then44, %if.then19, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_grp) #10
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @create_group(ptr noundef %grp) #0 {
entry:
  %grp.addr = alloca ptr, align 8
  %hdf5_grp = alloca ptr, align 8
  %parent_hdf5_grp = alloca ptr, align 8
  %gcpl_id = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %gcpl_id) #10
  store i64 -1, ptr %gcpl_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %format_grp_info, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %grp.addr, align 8
  %parent = getelementptr inbounds %struct.NC_GRP_INFO, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %parent, align 8
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %5 = load ptr, ptr %grp.addr, align 8
  %parent6 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %parent6, align 8
  %format_grp_info7 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %format_grp_info7, align 8
  %tobool8 = icmp ne ptr %7, null
  br i1 %tobool8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.51, ptr noundef @.str.1, i32 noundef 1377, ptr noundef @__PRETTY_FUNCTION__.create_group) #11
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %grp.addr, align 8
  %format_grp_info9 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %format_grp_info9, align 8
  store ptr %9, ptr %hdf5_grp, align 8
  %10 = load ptr, ptr %grp.addr, align 8
  %parent10 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %parent10, align 8
  %format_grp_info11 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %format_grp_info11, align 8
  store ptr %12, ptr %parent_hdf5_grp, align 8
  %13 = load ptr, ptr %parent_hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %hdf_grpid, align 8
  %tobool12 = icmp ne i64 %14, 0
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end
  br label %if.end15

if.else14:                                        ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.52, ptr noundef @.str.1, i32 noundef 1382, ptr noundef @__PRETTY_FUNCTION__.create_group) #11
  unreachable

if.end15:                                         ; preds = %if.then13
  %call = call i32 @H5open()
  %15 = load i64, ptr @H5P_CLS_GROUP_CREATE_ID_g, align 8
  %call16 = call i64 @H5Pcreate(i64 noundef %15)
  store i64 %call16, ptr %gcpl_id, align 8
  %cmp = icmp slt i64 %call16, 0
  br i1 %cmp, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end15
  br label %do.body

do.body:                                          ; preds = %if.then17
  br label %do.body18

do.body18:                                        ; preds = %do.body
  store i32 -101, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body18
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond19:                                        ; No predecessors!
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end15
  %16 = load i64, ptr %gcpl_id, align 8
  %call22 = call i32 @H5Pset_obj_track_times(i64 noundef %16, i1 noundef zeroext false)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end21
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  br label %do.body26

do.body26:                                        ; preds = %do.body25
  store i32 -101, ptr %retval1, align 4
  br label %do.cond27

do.cond27:                                        ; preds = %do.body26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %exit

do.cond29:                                        ; No predecessors!
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %if.end21
  %17 = load i64, ptr %gcpl_id, align 8
  %call32 = call i32 @H5Pset_link_creation_order(i64 noundef %17, i32 noundef 3)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end31
  br label %do.body35

do.body35:                                        ; preds = %if.then34
  br label %do.body36

do.body36:                                        ; preds = %do.body35
  store i32 -101, ptr %retval1, align 4
  br label %do.cond37

do.cond37:                                        ; preds = %do.body36
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  br label %exit

do.cond39:                                        ; No predecessors!
  br label %do.end40

do.end40:                                         ; preds = %do.cond39
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %if.end31
  %18 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %nc4_info, align 8
  %no_attr_create_order = getelementptr inbounds %struct.NC_FILE_INFO, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %no_attr_create_order, align 8
  %tobool42 = icmp ne i32 %20, 0
  br i1 %tobool42, label %if.end54, label %if.then43

if.then43:                                        ; preds = %if.end41
  %21 = load i64, ptr %gcpl_id, align 8
  %call44 = call i32 @H5Pset_attr_creation_order(i64 noundef %21, i32 noundef 3)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end53

if.then46:                                        ; preds = %if.then43
  br label %do.body47

do.body47:                                        ; preds = %if.then46
  br label %do.body48

do.body48:                                        ; preds = %do.body47
  store i32 -101, ptr %retval1, align 4
  br label %do.cond49

do.cond49:                                        ; preds = %do.body48
  br label %do.end50

do.end50:                                         ; preds = %do.cond49
  br label %exit

do.cond51:                                        ; No predecessors!
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  br label %if.end53

if.end53:                                         ; preds = %do.end52, %if.then43
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end41
  %22 = load ptr, ptr %parent_hdf5_grp, align 8
  %hdf_grpid55 = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %22, i32 0, i32 0
  %23 = load i64, ptr %hdf_grpid55, align 8
  %24 = load ptr, ptr %grp.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_GRP_INFO, ptr %24, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %25 = load ptr, ptr %name, align 8
  %26 = load i64, ptr %gcpl_id, align 8
  %call56 = call i64 @H5Gcreate2(i64 noundef %23, ptr noundef %25, i64 noundef 0, i64 noundef %26, i64 noundef 0)
  %27 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid57 = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %27, i32 0, i32 0
  store i64 %call56, ptr %hdf_grpid57, align 8
  %cmp58 = icmp slt i64 %call56, 0
  br i1 %cmp58, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end54
  br label %do.body60

do.body60:                                        ; preds = %if.then59
  br label %do.body61

do.body61:                                        ; preds = %do.body60
  store i32 -101, ptr %retval1, align 4
  br label %do.cond62

do.cond62:                                        ; preds = %do.body61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  br label %exit

do.cond64:                                        ; No predecessors!
  br label %do.end65

do.end65:                                         ; preds = %do.cond64
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %if.end54
  br label %exit

exit:                                             ; preds = %if.end66, %do.end63, %do.end50, %do.end38, %do.end28, %do.end
  %28 = load i64, ptr %gcpl_id, align 8
  %cmp67 = icmp sgt i64 %28, -1
  br i1 %cmp67, label %land.lhs.true68, label %if.end75

land.lhs.true68:                                  ; preds = %exit
  %29 = load i64, ptr %gcpl_id, align 8
  %call69 = call i32 @H5Pclose(i64 noundef %29)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end75

if.then71:                                        ; preds = %land.lhs.true68
  br label %do.body72

do.body72:                                        ; preds = %if.then71
  store i32 -101, ptr %retval1, align 4
  br label %do.cond73

do.cond73:                                        ; preds = %do.body72
  br label %do.end74

do.end74:                                         ; preds = %do.cond73
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %land.lhs.true68, %exit
  %30 = load i32, ptr %retval1, align 4
  %tobool76 = icmp ne i32 %30, 0
  br i1 %tobool76, label %if.then77, label %if.end89

if.then77:                                        ; preds = %if.end75
  %31 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid78 = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %hdf_grpid78, align 8
  %cmp79 = icmp sgt i64 %32, 0
  br i1 %cmp79, label %land.lhs.true80, label %if.end88

land.lhs.true80:                                  ; preds = %if.then77
  %33 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid81 = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %33, i32 0, i32 0
  %34 = load i64, ptr %hdf_grpid81, align 8
  %call82 = call i32 @H5Gclose(i64 noundef %34)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.end88

if.then84:                                        ; preds = %land.lhs.true80
  br label %do.body85

do.body85:                                        ; preds = %if.then84
  store i32 -101, ptr %retval1, align 4
  br label %do.cond86

do.cond86:                                        ; preds = %do.body85
  br label %do.end87

do.end87:                                         ; preds = %do.cond86
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %land.lhs.true80, %if.then77
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end75
  %35 = load i32, ptr %retval1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %gcpl_id) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_hdf5_grp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @write_nc3_strict_att(i64 noundef %hdf_grpid) #0 {
entry:
  %retval = alloca i32, align 4
  %hdf_grpid.addr = alloca i64, align 8
  %attid = alloca i64, align 8
  %spaceid = alloca i64, align 8
  %one = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %attr_exists = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %hdf_grpid, ptr %hdf_grpid.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %attid) #10
  store i64 0, ptr %attid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %spaceid) #10
  store i64 0, ptr %spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %one) #10
  store i32 1, ptr %one, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr_exists) #10
  %0 = load i64, ptr %hdf_grpid.addr, align 8
  %call = call i32 @H5Aexists(i64 noundef %0, ptr noundef @.str.53)
  store i32 %call, ptr %attr_exists, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %attr_exists, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i64 @H5Screate(i32 noundef 0)
  store i64 %call4, ptr %spaceid, align 8
  %cmp5 = icmp slt i64 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end3
  br label %do.body

do.body:                                          ; preds = %if.then6
  br label %do.body7

do.body7:                                         ; preds = %do.body
  store i32 -105, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body7
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond8:                                         ; No predecessors!
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.end3
  %2 = load i64, ptr %hdf_grpid.addr, align 8
  %call11 = call i32 @H5open()
  %3 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %4 = load i64, ptr %spaceid, align 8
  %call12 = call i64 @H5Acreate1(i64 noundef %2, ptr noundef @.str.53, i64 noundef %3, i64 noundef %4, i64 noundef 0)
  store i64 %call12, ptr %attid, align 8
  %cmp13 = icmp slt i64 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end10
  br label %do.body15

do.body15:                                        ; preds = %if.then14
  br label %do.body16

do.body16:                                        ; preds = %do.body15
  store i32 -105, ptr %retval1, align 4
  br label %do.cond17

do.cond17:                                        ; preds = %do.body16
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  br label %exit

do.cond19:                                        ; No predecessors!
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end10
  %5 = load i64, ptr %attid, align 8
  %call22 = call i32 @H5open()
  %6 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %call23 = call i32 @H5Awrite(i64 noundef %5, i64 noundef %6, ptr noundef %one)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end21
  br label %do.body26

do.body26:                                        ; preds = %if.then25
  br label %do.body27

do.body27:                                        ; preds = %do.body26
  store i32 -105, ptr %retval1, align 4
  br label %do.cond28

do.cond28:                                        ; preds = %do.body27
  br label %do.end29

do.end29:                                         ; preds = %do.cond28
  br label %exit

do.cond30:                                        ; No predecessors!
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  br label %if.end32

if.end32:                                         ; preds = %do.end31, %if.end21
  br label %exit

exit:                                             ; preds = %if.end32, %do.end29, %do.end18, %do.end
  %7 = load i64, ptr %spaceid, align 8
  %cmp33 = icmp sgt i64 %7, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %exit
  %8 = load i64, ptr %spaceid, align 8
  %call34 = call i32 @H5Sclose(i64 noundef %8)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %land.lhs.true
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  store i32 -105, ptr %retval1, align 4
  br label %do.cond38

do.cond38:                                        ; preds = %do.body37
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %land.lhs.true, %exit
  %9 = load i64, ptr %attid, align 8
  %cmp41 = icmp sgt i64 %9, 0
  br i1 %cmp41, label %land.lhs.true42, label %if.end49

land.lhs.true42:                                  ; preds = %if.end40
  %10 = load i64, ptr %attid, align 8
  %call43 = call i32 @H5Aclose(i64 noundef %10)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end49

if.then45:                                        ; preds = %land.lhs.true42
  br label %do.body46

do.body46:                                        ; preds = %if.then45
  store i32 -105, ptr %retval1, align 4
  br label %do.cond47

do.cond47:                                        ; preds = %do.body46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %land.lhs.true42, %if.end40
  %11 = load i32, ptr %retval1, align 4
  store i32 %11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr_exists) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %one) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %spaceid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %attid) #10
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @commit_type(ptr noundef %grp, ptr noundef %type) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %hdf5_grp = alloca ptr, align 8
  %hdf5_type = alloca ptr, align 8
  %base_hdf_typeid = alloca i64, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %field = alloca ptr, align 8
  %hdf_base_typeid = alloca i64, align 8
  %hdf_typeid = alloca i64, align 8
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %dims = alloca [1024 x i64], align 16
  %enum_m = alloca ptr, align 8
  %i120 = alloca i32, align 4
  store ptr %grp, ptr %grp.addr, align 8
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_type) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %base_hdf_typeid) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %format_grp_info, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %type.addr, align 8
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %4 = load ptr, ptr %type.addr, align 8
  %format_type_info = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %format_type_info, align 8
  %tobool6 = icmp ne ptr %5, null
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.54, ptr noundef @.str.1, i32 noundef 1191, ptr noundef @__PRETTY_FUNCTION__.commit_type) #11
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %grp.addr, align 8
  %format_grp_info7 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %format_grp_info7, align 8
  store ptr %7, ptr %hdf5_grp, align 8
  %8 = load ptr, ptr %type.addr, align 8
  %format_type_info8 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %8, i32 0, i32 7
  %9 = load ptr, ptr %format_type_info8, align 8
  store ptr %9, ptr %hdf5_type, align 8
  %10 = load ptr, ptr %type.addr, align 8
  %committed = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %committed, align 8
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end11:                                         ; preds = %if.end
  %12 = load ptr, ptr %type.addr, align 8
  %nc_type_class = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %12, i32 0, i32 6
  %13 = load i32, ptr %nc_type_class, align 4
  %cmp = icmp eq i32 %13, 16
  br i1 %cmp, label %if.then12, label %if.else85

if.then12:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %field) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf_base_typeid) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf_typeid) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %14 = load ptr, ptr %type.addr, align 8
  %size = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %14, i32 0, i32 4
  %15 = load i64, ptr %size, align 8
  %call = call i64 @H5Tcreate(i32 noundef 6, i64 noundef %15)
  %16 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid13 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %16, i32 0, i32 0
  store i64 %call, ptr %hdf_typeid13, align 8
  %cmp14 = icmp slt i64 %call, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

if.end16:                                         ; preds = %if.then12
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc76, %if.end16
  %17 = load i32, ptr %i, align 4
  %conv = sext i32 %17 to i64
  %18 = load ptr, ptr %type.addr, align 8
  %u = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %18, i32 0, i32 8
  %field17 = getelementptr inbounds %struct.Fields, ptr %u, i32 0, i32 0
  %19 = load ptr, ptr %field17, align 8
  %cmp18 = icmp eq ptr %19, null
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %20 = load ptr, ptr %type.addr, align 8
  %u20 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %20, i32 0, i32 8
  %field21 = getelementptr inbounds %struct.Fields, ptr %u20, i32 0, i32 0
  %21 = load ptr, ptr %field21, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %22, %cond.false ]
  %cmp22 = icmp ult i64 %conv, %cond
  br i1 %cmp22, label %for.body, label %for.end78

for.body:                                         ; preds = %cond.end
  %23 = load ptr, ptr %type.addr, align 8
  %u24 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %23, i32 0, i32 8
  %field25 = getelementptr inbounds %struct.Fields, ptr %u24, i32 0, i32 0
  %24 = load ptr, ptr %field25, align 8
  %25 = load i32, ptr %i, align 4
  %conv26 = sext i32 %25 to i64
  %call27 = call ptr @nclistget(ptr noundef %24, i64 noundef %conv26)
  store ptr %call27, ptr %field, align 8
  %26 = load ptr, ptr %field, align 8
  %tobool28 = icmp ne ptr %26, null
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %for.body
  br label %if.end31

if.else30:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.55, ptr noundef @.str.1, i32 noundef 1216, ptr noundef @__PRETTY_FUNCTION__.commit_type) #11
  unreachable

if.end31:                                         ; preds = %if.then29
  %27 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %nc4_info, align 8
  %29 = load ptr, ptr %field, align 8
  %nc_typeid = getelementptr inbounds %struct.NC_FIELD_INFO, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %nc_typeid, align 8
  %31 = load ptr, ptr %type.addr, align 8
  %endianness = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %endianness, align 4
  %call32 = call i32 @nc4_get_hdf_typeid(ptr noundef %28, i32 noundef %30, ptr noundef %hdf_base_typeid, i32 noundef %32)
  store i32 %call32, ptr %retval1, align 4
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  %33 = load i32, ptr %retval1, align 4
  store i32 %33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

if.end35:                                         ; preds = %if.end31
  %34 = load ptr, ptr %field, align 8
  %ndims = getelementptr inbounds %struct.NC_FIELD_INFO, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %ndims, align 8
  %tobool36 = icmp ne i32 %35, 0
  br i1 %tobool36, label %if.then37, label %if.else63

if.then37:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 8192, ptr %dims) #10
  store i32 0, ptr %d, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %if.then37
  %36 = load i32, ptr %d, align 4
  %37 = load ptr, ptr %field, align 8
  %ndims39 = getelementptr inbounds %struct.NC_FIELD_INFO, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %ndims39, align 8
  %cmp40 = icmp slt i32 %36, %38
  br i1 %cmp40, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond38
  %39 = load ptr, ptr %field, align 8
  %dim_size = getelementptr inbounds %struct.NC_FIELD_INFO, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %dim_size, align 8
  %41 = load i32, ptr %d, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds i32, ptr %40, i64 %idxprom
  %42 = load i32, ptr %arrayidx, align 4
  %conv43 = sext i32 %42 to i64
  %43 = load i32, ptr %d, align 4
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds [1024 x i64], ptr %dims, i64 0, i64 %idxprom44
  store i64 %conv43, ptr %arrayidx45, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body42
  %44 = load i32, ptr %d, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %d, align 4
  br label %for.cond38, !llvm.loop !23

for.end:                                          ; preds = %for.cond38
  %45 = load i64, ptr %hdf_base_typeid, align 8
  %46 = load ptr, ptr %field, align 8
  %ndims46 = getelementptr inbounds %struct.NC_FIELD_INFO, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %ndims46, align 8
  %arraydecay = getelementptr inbounds [1024 x i64], ptr %dims, i64 0, i64 0
  %call47 = call i64 @H5Tarray_create1(i64 noundef %45, i32 noundef %47, ptr noundef %arraydecay, ptr noundef null)
  store i64 %call47, ptr %hdf_typeid, align 8
  %cmp48 = icmp slt i64 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %for.end
  %48 = load i64, ptr %hdf_base_typeid, align 8
  %call51 = call i32 @H5Tclose(i64 noundef %48)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then50
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.then50
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %for.end
  %49 = load i64, ptr %hdf_base_typeid, align 8
  %call57 = call i32 @H5Tclose(i64 noundef %49)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then60, %if.end55, %if.then54
  call void @llvm.lifetime.end.p0(i64 8192, ptr %dims) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end64

if.else63:                                        ; preds = %if.end35
  %50 = load i64, ptr %hdf_base_typeid, align 8
  store i64 %50, ptr %hdf_typeid, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %cleanup.cont
  %51 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid65 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %51, i32 0, i32 0
  %52 = load i64, ptr %hdf_typeid65, align 8
  %53 = load ptr, ptr %field, align 8
  %hdr = getelementptr inbounds %struct.NC_FIELD_INFO, ptr %53, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %54 = load ptr, ptr %name, align 8
  %55 = load ptr, ptr %field, align 8
  %offset = getelementptr inbounds %struct.NC_FIELD_INFO, ptr %55, i32 0, i32 2
  %56 = load i64, ptr %offset, align 8
  %57 = load i64, ptr %hdf_typeid, align 8
  %call66 = call i32 @H5Tinsert(i64 noundef %52, ptr noundef %54, i64 noundef %56, i64 noundef %57)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end64
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

if.end70:                                         ; preds = %if.end64
  %58 = load i64, ptr %hdf_typeid, align 8
  %call71 = call i32 @H5Tclose(i64 noundef %58)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end70
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

if.end75:                                         ; preds = %if.end70
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %59 = load i32, ptr %i, align 4
  %inc77 = add nsw i32 %59, 1
  store i32 %inc77, ptr %i, align 4
  br label %for.cond, !llvm.loop !24

for.end78:                                        ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

cleanup79:                                        ; preds = %for.end78, %if.then74, %if.then69, %cleanup, %if.then34, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf_typeid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf_base_typeid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %field) #10
  %cleanup.dest83 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest83, label %cleanup203 [
    i32 0, label %cleanup.cont84
  ]

cleanup.cont84:                                   ; preds = %cleanup79
  br label %if.end187

if.else85:                                        ; preds = %if.end11
  %60 = load ptr, ptr %type.addr, align 8
  %nc_type_class86 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %60, i32 0, i32 6
  %61 = load i32, ptr %nc_type_class86, align 4
  %cmp87 = icmp eq i32 %61, 13
  br i1 %cmp87, label %if.then89, label %if.else103

if.then89:                                        ; preds = %if.else85
  %62 = load ptr, ptr %grp.addr, align 8
  %nc4_info90 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %nc4_info90, align 8
  %64 = load ptr, ptr %type.addr, align 8
  %u91 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %64, i32 0, i32 8
  %base_nc_typeid = getelementptr inbounds %struct.anon.0, ptr %u91, i32 0, i32 0
  %65 = load i32, ptr %base_nc_typeid, align 8
  %66 = load ptr, ptr %type.addr, align 8
  %endianness92 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %66, i32 0, i32 3
  %67 = load i32, ptr %endianness92, align 4
  %call93 = call i32 @nc4_get_hdf_typeid(ptr noundef %63, i32 noundef %65, ptr noundef %base_hdf_typeid, i32 noundef %67)
  store i32 %call93, ptr %retval1, align 4
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.then89
  %68 = load i32, ptr %retval1, align 4
  store i32 %68, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end96:                                         ; preds = %if.then89
  %69 = load i64, ptr %base_hdf_typeid, align 8
  %call97 = call i64 @H5Tvlen_create(i64 noundef %69)
  %70 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid98 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %70, i32 0, i32 0
  store i64 %call97, ptr %hdf_typeid98, align 8
  %cmp99 = icmp slt i64 %call97, 0
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end96
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end102:                                        ; preds = %if.end96
  br label %if.end186

if.else103:                                       ; preds = %if.else85
  %71 = load ptr, ptr %type.addr, align 8
  %nc_type_class104 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %71, i32 0, i32 6
  %72 = load i32, ptr %nc_type_class104, align 4
  %cmp105 = icmp eq i32 %72, 14
  br i1 %cmp105, label %if.then107, label %if.else115

if.then107:                                       ; preds = %if.else103
  %73 = load ptr, ptr %type.addr, align 8
  %size108 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %73, i32 0, i32 4
  %74 = load i64, ptr %size108, align 8
  %call109 = call i64 @H5Tcreate(i32 noundef 5, i64 noundef %74)
  %75 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid110 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %75, i32 0, i32 0
  store i64 %call109, ptr %hdf_typeid110, align 8
  %cmp111 = icmp slt i64 %call109, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.then107
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end114:                                        ; preds = %if.then107
  br label %if.end185

if.else115:                                       ; preds = %if.else103
  %76 = load ptr, ptr %type.addr, align 8
  %nc_type_class116 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %76, i32 0, i32 6
  %77 = load i32, ptr %nc_type_class116, align 4
  %cmp117 = icmp eq i32 %77, 15
  br i1 %cmp117, label %if.then119, label %if.else183

if.then119:                                       ; preds = %if.else115
  call void @llvm.lifetime.start.p0(i64 8, ptr %enum_m) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i120) #10
  %78 = load ptr, ptr %type.addr, align 8
  %u121 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %78, i32 0, i32 8
  %enum_member = getelementptr inbounds %struct.anon, ptr %u121, i32 0, i32 0
  %79 = load ptr, ptr %enum_member, align 8
  %cmp122 = icmp eq ptr %79, null
  br i1 %cmp122, label %cond.true124, label %cond.false125

cond.true124:                                     ; preds = %if.then119
  br label %cond.end129

cond.false125:                                    ; preds = %if.then119
  %80 = load ptr, ptr %type.addr, align 8
  %u126 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %80, i32 0, i32 8
  %enum_member127 = getelementptr inbounds %struct.anon, ptr %u126, i32 0, i32 0
  %81 = load ptr, ptr %enum_member127, align 8
  %length128 = getelementptr inbounds %struct.NClist, ptr %81, i32 0, i32 1
  %82 = load i64, ptr %length128, align 8
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false125, %cond.true124
  %cond130 = phi i64 [ 0, %cond.true124 ], [ %82, %cond.false125 ]
  %cmp131 = icmp eq i64 %cond130, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %cond.end129
  store i32 -36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

if.end134:                                        ; preds = %cond.end129
  %83 = load ptr, ptr %grp.addr, align 8
  %nc4_info135 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %83, i32 0, i32 2
  %84 = load ptr, ptr %nc4_info135, align 8
  %85 = load ptr, ptr %type.addr, align 8
  %u136 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %85, i32 0, i32 8
  %base_nc_typeid137 = getelementptr inbounds %struct.anon, ptr %u136, i32 0, i32 1
  %86 = load i32, ptr %base_nc_typeid137, align 8
  %87 = load ptr, ptr %type.addr, align 8
  %endianness138 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %87, i32 0, i32 3
  %88 = load i32, ptr %endianness138, align 4
  %call139 = call i32 @nc4_get_hdf_typeid(ptr noundef %84, i32 noundef %86, ptr noundef %base_hdf_typeid, i32 noundef %88)
  store i32 %call139, ptr %retval1, align 4
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end134
  %89 = load i32, ptr %retval1, align 4
  store i32 %89, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

if.end142:                                        ; preds = %if.end134
  %90 = load i64, ptr %base_hdf_typeid, align 8
  %call143 = call i64 @H5Tenum_create(i64 noundef %90)
  %91 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid144 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %91, i32 0, i32 0
  store i64 %call143, ptr %hdf_typeid144, align 8
  %cmp145 = icmp slt i64 %call143, 0
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end142
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

if.end148:                                        ; preds = %if.end142
  store i32 0, ptr %i120, align 4
  br label %for.cond149

for.cond149:                                      ; preds = %for.inc176, %if.end148
  %92 = load i32, ptr %i120, align 4
  %conv150 = sext i32 %92 to i64
  %93 = load ptr, ptr %type.addr, align 8
  %u151 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %93, i32 0, i32 8
  %enum_member152 = getelementptr inbounds %struct.anon, ptr %u151, i32 0, i32 0
  %94 = load ptr, ptr %enum_member152, align 8
  %cmp153 = icmp eq ptr %94, null
  br i1 %cmp153, label %cond.true155, label %cond.false156

cond.true155:                                     ; preds = %for.cond149
  br label %cond.end160

cond.false156:                                    ; preds = %for.cond149
  %95 = load ptr, ptr %type.addr, align 8
  %u157 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %95, i32 0, i32 8
  %enum_member158 = getelementptr inbounds %struct.anon, ptr %u157, i32 0, i32 0
  %96 = load ptr, ptr %enum_member158, align 8
  %length159 = getelementptr inbounds %struct.NClist, ptr %96, i32 0, i32 1
  %97 = load i64, ptr %length159, align 8
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false156, %cond.true155
  %cond161 = phi i64 [ 0, %cond.true155 ], [ %97, %cond.false156 ]
  %cmp162 = icmp ult i64 %conv150, %cond161
  br i1 %cmp162, label %for.body164, label %for.end178

for.body164:                                      ; preds = %cond.end160
  %98 = load ptr, ptr %type.addr, align 8
  %u165 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %98, i32 0, i32 8
  %enum_member166 = getelementptr inbounds %struct.anon, ptr %u165, i32 0, i32 0
  %99 = load ptr, ptr %enum_member166, align 8
  %100 = load i32, ptr %i120, align 4
  %conv167 = sext i32 %100 to i64
  %call168 = call ptr @nclistget(ptr noundef %99, i64 noundef %conv167)
  store ptr %call168, ptr %enum_m, align 8
  %101 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid169 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %101, i32 0, i32 0
  %102 = load i64, ptr %hdf_typeid169, align 8
  %103 = load ptr, ptr %enum_m, align 8
  %name170 = getelementptr inbounds %struct.NC_ENUM_MEMBER_INFO, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %name170, align 8
  %105 = load ptr, ptr %enum_m, align 8
  %value = getelementptr inbounds %struct.NC_ENUM_MEMBER_INFO, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %value, align 8
  %call171 = call i32 @H5Tenum_insert(i64 noundef %102, ptr noundef %104, ptr noundef %106)
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %for.body164
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

if.end175:                                        ; preds = %for.body164
  br label %for.inc176

for.inc176:                                       ; preds = %if.end175
  %107 = load i32, ptr %i120, align 4
  %inc177 = add nsw i32 %107, 1
  store i32 %inc177, ptr %i120, align 4
  br label %for.cond149, !llvm.loop !25

for.end178:                                       ; preds = %cond.end160
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %for.end178, %if.then174, %if.then147, %if.then141, %if.then133
  call void @llvm.lifetime.end.p0(i64 4, ptr %i120) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %enum_m) #10
  %cleanup.dest181 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest181, label %cleanup203 [
    i32 0, label %cleanup.cont182
  ]

cleanup.cont182:                                  ; preds = %cleanup179
  br label %if.end184

if.else183:                                       ; preds = %if.else115
  store i32 -45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end184:                                        ; preds = %cleanup.cont182
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end114
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end102
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %cleanup.cont84
  %108 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %108, i32 0, i32 0
  %109 = load i64, ptr %hdf_grpid, align 8
  %110 = load ptr, ptr %type.addr, align 8
  %hdr188 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %110, i32 0, i32 0
  %name189 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr188, i32 0, i32 1
  %111 = load ptr, ptr %name189, align 8
  %112 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid190 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %112, i32 0, i32 0
  %113 = load i64, ptr %hdf_typeid190, align 8
  %call191 = call i32 @H5Tcommit1(i64 noundef %109, ptr noundef %111, i64 noundef %113)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.end195

if.then194:                                       ; preds = %if.end187
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end195:                                        ; preds = %if.end187
  %114 = load ptr, ptr %type.addr, align 8
  %committed196 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %114, i32 0, i32 5
  store i32 1, ptr %committed196, align 8
  %115 = load ptr, ptr %hdf5_type, align 8
  %hdf_typeid197 = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %115, i32 0, i32 0
  %116 = load i64, ptr %hdf_typeid197, align 8
  %call198 = call i64 @H5Tget_native_type(i64 noundef %116, i32 noundef 0)
  %117 = load ptr, ptr %hdf5_type, align 8
  %native_hdf_typeid = getelementptr inbounds %struct.NC_HDF5_TYPE_INFO, ptr %117, i32 0, i32 1
  store i64 %call198, ptr %native_hdf_typeid, align 8
  %cmp199 = icmp slt i64 %call198, 0
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end195
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

if.end202:                                        ; preds = %if.end195
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup203

cleanup203:                                       ; preds = %if.end202, %if.then201, %if.then194, %if.else183, %cleanup179, %if.then113, %if.then101, %if.then95, %cleanup79, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %base_hdf_typeid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_type) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  %118 = load i32, ptr %retval, align 4
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define i32 @nc4_rec_match_dimscales(ptr noundef %grp) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %g = alloca ptr, align 8
  %var = alloca ptr, align 8
  %dim = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %hdf5_var = alloca ptr, align 8
  %ndims = alloca i32, align 4
  %d = alloca i32, align 4
  %d79 = alloca i32, align 4
  %j = alloca i32, align 4
  %finished = alloca i32, align 4
  %hdf5_dim = alloca ptr, align 8
  %token_cmp = alloca i32, align 4
  %spaceid = alloca i64, align 8
  %h5dimlen = alloca ptr, align 8
  %h5dimlenmax = alloca ptr, align 8
  %dataset_ndims = alloca i32, align 4
  %k = alloca i32, align 4
  %match = alloca i32, align 4
  %phony_dim_name = alloca [257 x i8], align 16
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dim) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %2 = load ptr, ptr %name, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.16, ptr noundef @.str.1, i32 noundef 2103, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_match_dimscales) #11
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %conv = sext i32 %3 to i64
  %4 = load ptr, ptr %grp.addr, align 8
  %children = getelementptr inbounds %struct.NC_GRP_INFO, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %children, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end11

cond.false:                                       ; preds = %for.cond
  %6 = load ptr, ptr %grp.addr, align 8
  %children4 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %children4, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %list, align 8
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.false
  br label %cond.end

cond.false8:                                      ; preds = %cond.false
  %9 = load ptr, ptr %grp.addr, align 8
  %children9 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %children9, align 8
  %list10 = getelementptr inbounds %struct.NCindex, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %list10, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %11, i32 0, i32 1
  %12 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false8, %cond.true7
  %cond = phi i64 [ 0, %cond.true7 ], [ %12, %cond.false8 ]
  br label %cond.end11

cond.end11:                                       ; preds = %cond.end, %cond.true
  %cond12 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp13 = icmp ult i64 %conv, %cond12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end11
  %13 = load ptr, ptr %grp.addr, align 8
  %children15 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %children15, align 8
  %15 = load i32, ptr %i, align 4
  %conv16 = sext i32 %15 to i64
  %call = call ptr @ncindexith(ptr noundef %14, i64 noundef %conv16)
  store ptr %call, ptr %g, align 8
  %16 = load ptr, ptr %g, align 8
  %tobool17 = icmp ne ptr %16, null
  br i1 %tobool17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %for.body
  br label %if.end20

if.else19:                                        ; preds = %for.body
  call void @__assert_fail(ptr noundef @.str.17, ptr noundef @.str.1, i32 noundef 2110, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_match_dimscales) #11
  unreachable

if.end20:                                         ; preds = %if.then18
  %17 = load ptr, ptr %g, align 8
  %call21 = call i32 @nc4_rec_match_dimscales(ptr noundef %17)
  store i32 %call21, ptr %retval1, align 4
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  %18 = load i32, ptr %retval1, align 4
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332

if.end24:                                         ; preds = %if.end20
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %cond.end11
  store i32 0, ptr %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc329, %for.end
  %20 = load i32, ptr %i, align 4
  %conv26 = sext i32 %20 to i64
  %21 = load ptr, ptr %grp.addr, align 8
  %vars = getelementptr inbounds %struct.NC_GRP_INFO, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %vars, align 8
  %cmp27 = icmp eq ptr %22, null
  br i1 %cmp27, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %for.cond25
  br label %cond.end42

cond.false30:                                     ; preds = %for.cond25
  %23 = load ptr, ptr %grp.addr, align 8
  %vars31 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %vars31, align 8
  %list32 = getelementptr inbounds %struct.NCindex, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %list32, align 8
  %cmp33 = icmp eq ptr %25, null
  br i1 %cmp33, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %cond.false30
  br label %cond.end40

cond.false36:                                     ; preds = %cond.false30
  %26 = load ptr, ptr %grp.addr, align 8
  %vars37 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %vars37, align 8
  %list38 = getelementptr inbounds %struct.NCindex, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %list38, align 8
  %length39 = getelementptr inbounds %struct.NClist, ptr %28, i32 0, i32 1
  %29 = load i64, ptr %length39, align 8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false36, %cond.true35
  %cond41 = phi i64 [ 0, %cond.true35 ], [ %29, %cond.false36 ]
  br label %cond.end42

cond.end42:                                       ; preds = %cond.end40, %cond.true29
  %cond43 = phi i64 [ 0, %cond.true29 ], [ %cond41, %cond.end40 ]
  %cmp44 = icmp ult i64 %conv26, %cond43
  br i1 %cmp44, label %for.body46, label %for.end331

for.body46:                                       ; preds = %cond.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndims) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  %30 = load ptr, ptr %grp.addr, align 8
  %vars47 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %30, i32 0, i32 9
  %31 = load ptr, ptr %vars47, align 8
  %32 = load i32, ptr %i, align 4
  %conv48 = sext i32 %32 to i64
  %call49 = call ptr @ncindexith(ptr noundef %31, i64 noundef %conv48)
  store ptr %call49, ptr %var, align 8
  %33 = load ptr, ptr %var, align 8
  %tobool50 = icmp ne ptr %33, null
  br i1 %tobool50, label %land.lhs.true51, label %if.else54

land.lhs.true51:                                  ; preds = %for.body46
  %34 = load ptr, ptr %var, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %34, i32 0, i32 27
  %35 = load ptr, ptr %format_var_info, align 8
  %tobool52 = icmp ne ptr %35, null
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %land.lhs.true51
  br label %if.end55

if.else54:                                        ; preds = %land.lhs.true51, %for.body46
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 2125, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_match_dimscales) #11
  unreachable

if.end55:                                         ; preds = %if.then53
  %36 = load ptr, ptr %var, align 8
  %format_var_info56 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %36, i32 0, i32 27
  %37 = load ptr, ptr %format_var_info56, align 8
  store ptr %37, ptr %hdf5_var, align 8
  %38 = load ptr, ptr %var, align 8
  %ndims57 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %38, i32 0, i32 3
  %39 = load i64, ptr %ndims57, align 8
  %conv58 = trunc i64 %39 to i32
  store i32 %conv58, ptr %ndims, align 4
  store i32 0, ptr %d, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc74, %if.end55
  %40 = load i32, ptr %d, align 4
  %41 = load i32, ptr %ndims, align 4
  %cmp60 = icmp slt i32 %40, %41
  br i1 %cmp60, label %for.body62, label %for.end76

for.body62:                                       ; preds = %for.cond59
  %42 = load ptr, ptr %var, align 8
  %dim63 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %dim63, align 8
  %44 = load i32, ptr %d, align 4
  %idxprom = sext i32 %44 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %43, i64 %idxprom
  %45 = load ptr, ptr %arrayidx, align 8
  %cmp64 = icmp eq ptr %45, null
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %for.body62
  %46 = load ptr, ptr %grp.addr, align 8
  %47 = load ptr, ptr %var, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %dimids, align 8
  %49 = load i32, ptr %d, align 4
  %idxprom67 = sext i32 %49 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %48, i64 %idxprom67
  %50 = load i32, ptr %arrayidx68, align 4
  %51 = load ptr, ptr %var, align 8
  %dim69 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %51, i32 0, i32 5
  %52 = load ptr, ptr %dim69, align 8
  %53 = load i32, ptr %d, align 4
  %idxprom70 = sext i32 %53 to i64
  %arrayidx71 = getelementptr inbounds ptr, ptr %52, i64 %idxprom70
  %call72 = call i32 @nc4_find_dim(ptr noundef %46, i32 noundef %50, ptr noundef %arrayidx71, ptr noundef null)
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %for.body62
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %54 = load i32, ptr %d, align 4
  %inc75 = add nsw i32 %54, 1
  store i32 %inc75, ptr %d, align 4
  br label %for.cond59, !llvm.loop !27

for.end76:                                        ; preds = %for.cond59
  %55 = load ptr, ptr %hdf5_var, align 8
  %dimscale = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %55, i32 0, i32 2
  %56 = load i32, ptr %dimscale, align 8
  %tobool77 = icmp ne i32 %56, 0
  br i1 %tobool77, label %if.end323, label %if.then78

if.then78:                                        ; preds = %for.end76
  call void @llvm.lifetime.start.p0(i64 4, ptr %d79) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  %57 = load ptr, ptr %hdf5_var, align 8
  %dimscale_hdf5_objids = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %dimscale_hdf5_objids, align 8
  %tobool80 = icmp ne ptr %58, null
  br i1 %tobool80, label %if.then81, label %if.else166

if.then81:                                        ; preds = %if.then78
  store i32 0, ptr %d79, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc163, %if.then81
  %59 = load i32, ptr %d79, align 4
  %conv83 = sext i32 %59 to i64
  %60 = load ptr, ptr %var, align 8
  %ndims84 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %60, i32 0, i32 3
  %61 = load i64, ptr %ndims84, align 8
  %cmp85 = icmp ult i64 %conv83, %61
  br i1 %cmp85, label %for.body87, label %for.end165

for.body87:                                       ; preds = %for.cond82
  call void @llvm.lifetime.start.p0(i64 4, ptr %finished) #10
  store i32 0, ptr %finished, align 4
  %62 = load ptr, ptr %grp.addr, align 8
  store ptr %62, ptr %g, align 8
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc158, %for.body87
  %63 = load ptr, ptr %g, align 8
  %tobool89 = icmp ne ptr %63, null
  br i1 %tobool89, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond88
  %64 = load i32, ptr %finished, align 4
  %tobool90 = icmp ne i32 %64, 0
  %lnot = xor i1 %tobool90, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond88
  %65 = phi i1 [ false, %for.cond88 ], [ %lnot, %land.rhs ]
  br i1 %65, label %for.body91, label %for.end159

for.body91:                                       ; preds = %land.end
  store i32 0, ptr %j, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc155, %for.body91
  %66 = load i32, ptr %j, align 4
  %conv93 = sext i32 %66 to i64
  %67 = load ptr, ptr %g, align 8
  %dim94 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %67, i32 0, i32 6
  %68 = load ptr, ptr %dim94, align 8
  %cmp95 = icmp eq ptr %68, null
  br i1 %cmp95, label %cond.true97, label %cond.false98

cond.true97:                                      ; preds = %for.cond92
  br label %cond.end110

cond.false98:                                     ; preds = %for.cond92
  %69 = load ptr, ptr %g, align 8
  %dim99 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %69, i32 0, i32 6
  %70 = load ptr, ptr %dim99, align 8
  %list100 = getelementptr inbounds %struct.NCindex, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %list100, align 8
  %cmp101 = icmp eq ptr %71, null
  br i1 %cmp101, label %cond.true103, label %cond.false104

cond.true103:                                     ; preds = %cond.false98
  br label %cond.end108

cond.false104:                                    ; preds = %cond.false98
  %72 = load ptr, ptr %g, align 8
  %dim105 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %72, i32 0, i32 6
  %73 = load ptr, ptr %dim105, align 8
  %list106 = getelementptr inbounds %struct.NCindex, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %list106, align 8
  %length107 = getelementptr inbounds %struct.NClist, ptr %74, i32 0, i32 1
  %75 = load i64, ptr %length107, align 8
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false104, %cond.true103
  %cond109 = phi i64 [ 0, %cond.true103 ], [ %75, %cond.false104 ]
  br label %cond.end110

cond.end110:                                      ; preds = %cond.end108, %cond.true97
  %cond111 = phi i64 [ 0, %cond.true97 ], [ %cond109, %cond.end108 ]
  %cmp112 = icmp ult i64 %conv93, %cond111
  br i1 %cmp112, label %for.body114, label %for.end157

for.body114:                                      ; preds = %cond.end110
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_dim) #10
  %76 = load ptr, ptr %g, align 8
  %dim115 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %76, i32 0, i32 6
  %77 = load ptr, ptr %dim115, align 8
  %78 = load i32, ptr %j, align 4
  %conv116 = sext i32 %78 to i64
  %call117 = call ptr @ncindexith(ptr noundef %77, i64 noundef %conv116)
  store ptr %call117, ptr %dim, align 8
  %79 = load ptr, ptr %dim, align 8
  %tobool118 = icmp ne ptr %79, null
  br i1 %tobool118, label %land.lhs.true119, label %if.else122

land.lhs.true119:                                 ; preds = %for.body114
  %80 = load ptr, ptr %dim, align 8
  %format_dim_info = getelementptr inbounds %struct.NC_DIM_INFO, ptr %80, i32 0, i32 6
  %81 = load ptr, ptr %format_dim_info, align 8
  %tobool120 = icmp ne ptr %81, null
  br i1 %tobool120, label %if.then121, label %if.else122

if.then121:                                       ; preds = %land.lhs.true119
  br label %if.end123

if.else122:                                       ; preds = %land.lhs.true119, %for.body114
  call void @__assert_fail(ptr noundef @.str.18, ptr noundef @.str.1, i32 noundef 2175, ptr noundef @__PRETTY_FUNCTION__.nc4_rec_match_dimscales) #11
  unreachable

if.end123:                                        ; preds = %if.then121
  %82 = load ptr, ptr %dim, align 8
  %format_dim_info124 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %82, i32 0, i32 6
  %83 = load ptr, ptr %format_dim_info124, align 8
  store ptr %83, ptr %hdf5_dim, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %token_cmp) #10
  %84 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %84, i32 0, i32 0
  %85 = load i64, ptr %hdf_datasetid, align 8
  %86 = load ptr, ptr %hdf5_var, align 8
  %dimscale_hdf5_objids125 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %86, i32 0, i32 1
  %87 = load ptr, ptr %dimscale_hdf5_objids125, align 8
  %88 = load i32, ptr %d79, align 4
  %idxprom126 = sext i32 %88 to i64
  %arrayidx127 = getelementptr inbounds %struct.hdf5_objid, ptr %87, i64 %idxprom126
  %token = getelementptr inbounds %struct.hdf5_objid, ptr %arrayidx127, i32 0, i32 1
  %89 = load ptr, ptr %hdf5_dim, align 8
  %hdf5_objid = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %89, i32 0, i32 1
  %token128 = getelementptr inbounds %struct.hdf5_objid, ptr %hdf5_objid, i32 0, i32 1
  %call129 = call i32 @H5Otoken_cmp(i64 noundef %85, ptr noundef %token, ptr noundef %token128, ptr noundef %token_cmp)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end123
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end133:                                        ; preds = %if.end123
  %90 = load ptr, ptr %hdf5_var, align 8
  %dimscale_hdf5_objids134 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %90, i32 0, i32 1
  %91 = load ptr, ptr %dimscale_hdf5_objids134, align 8
  %92 = load i32, ptr %d79, align 4
  %idxprom135 = sext i32 %92 to i64
  %arrayidx136 = getelementptr inbounds %struct.hdf5_objid, ptr %91, i64 %idxprom135
  %fileno = getelementptr inbounds %struct.hdf5_objid, ptr %arrayidx136, i32 0, i32 0
  %93 = load i64, ptr %fileno, align 8
  %94 = load ptr, ptr %hdf5_dim, align 8
  %hdf5_objid137 = getelementptr inbounds %struct.NC_HDF5_DIM_INFO, ptr %94, i32 0, i32 1
  %fileno138 = getelementptr inbounds %struct.hdf5_objid, ptr %hdf5_objid137, i32 0, i32 0
  %95 = load i64, ptr %fileno138, align 8
  %cmp139 = icmp eq i64 %93, %95
  br i1 %cmp139, label %land.lhs.true141, label %if.end153

land.lhs.true141:                                 ; preds = %if.end133
  %96 = load i32, ptr %token_cmp, align 4
  %cmp142 = icmp eq i32 %96, 0
  br i1 %cmp142, label %if.then144, label %if.end153

if.then144:                                       ; preds = %land.lhs.true141
  %97 = load ptr, ptr %dim, align 8
  %hdr145 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %97, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr145, i32 0, i32 2
  %98 = load i64, ptr %id, align 8
  %conv146 = trunc i64 %98 to i32
  %99 = load ptr, ptr %var, align 8
  %dimids147 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %99, i32 0, i32 4
  %100 = load ptr, ptr %dimids147, align 8
  %101 = load i32, ptr %d79, align 4
  %idxprom148 = sext i32 %101 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %100, i64 %idxprom148
  store i32 %conv146, ptr %arrayidx149, align 4
  %102 = load ptr, ptr %dim, align 8
  %103 = load ptr, ptr %var, align 8
  %dim150 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %103, i32 0, i32 5
  %104 = load ptr, ptr %dim150, align 8
  %105 = load i32, ptr %d79, align 4
  %idxprom151 = sext i32 %105 to i64
  %arrayidx152 = getelementptr inbounds ptr, ptr %104, i64 %idxprom151
  store ptr %102, ptr %arrayidx152, align 8
  store i32 1, ptr %finished, align 4
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end153:                                        ; preds = %land.lhs.true141, %if.end133
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %if.then144, %if.then132
  call void @llvm.lifetime.end.p0(i64 4, ptr %token_cmp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_dim) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup160 [
    i32 0, label %cleanup.cont
    i32 17, label %for.end157
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc155

for.inc155:                                       ; preds = %cleanup.cont
  %106 = load i32, ptr %j, align 4
  %inc156 = add nsw i32 %106, 1
  store i32 %inc156, ptr %j, align 4
  br label %for.cond92, !llvm.loop !28

for.end157:                                       ; preds = %cleanup, %cond.end110
  br label %for.inc158

for.inc158:                                       ; preds = %for.end157
  %107 = load ptr, ptr %g, align 8
  %parent = getelementptr inbounds %struct.NC_GRP_INFO, ptr %107, i32 0, i32 3
  %108 = load ptr, ptr %parent, align 8
  store ptr %108, ptr %g, align 8
  br label %for.cond88, !llvm.loop !29

for.end159:                                       ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup160

cleanup160:                                       ; preds = %for.end159, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %finished) #10
  %cleanup.dest161 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest161, label %cleanup319 [
    i32 0, label %cleanup.cont162
  ]

cleanup.cont162:                                  ; preds = %cleanup160
  br label %for.inc163

for.inc163:                                       ; preds = %cleanup.cont162
  %109 = load i32, ptr %d79, align 4
  %inc164 = add nsw i32 %109, 1
  store i32 %inc164, ptr %d79, align 4
  br label %for.cond82, !llvm.loop !30

for.end165:                                       ; preds = %for.cond82
  br label %if.end318

if.else166:                                       ; preds = %if.then78
  call void @llvm.lifetime.start.p0(i64 8, ptr %spaceid) #10
  store i64 0, ptr %spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %h5dimlen) #10
  store ptr null, ptr %h5dimlen, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %h5dimlenmax) #10
  store ptr null, ptr %h5dimlenmax, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %dataset_ndims) #10
  %110 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid167 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %110, i32 0, i32 0
  %111 = load i64, ptr %hdf_datasetid167, align 8
  %call168 = call i64 @H5Dget_space(i64 noundef %111)
  store i64 %call168, ptr %spaceid, align 8
  %cmp169 = icmp slt i64 %call168, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %if.else166
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

if.end172:                                        ; preds = %if.else166
  %112 = load ptr, ptr %var, align 8
  %ndims173 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %112, i32 0, i32 3
  %113 = load i64, ptr %ndims173, align 8
  %tobool174 = icmp ne i64 %113, 0
  br i1 %tobool174, label %if.then175, label %if.else198

if.then175:                                       ; preds = %if.end172
  %114 = load ptr, ptr %var, align 8
  %ndims176 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %114, i32 0, i32 3
  %115 = load i64, ptr %ndims176, align 8
  %mul = mul i64 %115, 8
  %call177 = call noalias ptr @malloc(i64 noundef %mul) #12
  store ptr %call177, ptr %h5dimlen, align 8
  %tobool178 = icmp ne ptr %call177, null
  br i1 %tobool178, label %if.end180, label %if.then179

if.then179:                                       ; preds = %if.then175
  store i32 -61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

if.end180:                                        ; preds = %if.then175
  %116 = load ptr, ptr %var, align 8
  %ndims181 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %116, i32 0, i32 3
  %117 = load i64, ptr %ndims181, align 8
  %mul182 = mul i64 %117, 8
  %call183 = call noalias ptr @malloc(i64 noundef %mul182) #12
  store ptr %call183, ptr %h5dimlenmax, align 8
  %tobool184 = icmp ne ptr %call183, null
  br i1 %tobool184, label %if.end186, label %if.then185

if.then185:                                       ; preds = %if.end180
  %118 = load ptr, ptr %h5dimlen, align 8
  call void @free(ptr noundef %118) #10
  store i32 -61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

if.end186:                                        ; preds = %if.end180
  %119 = load i64, ptr %spaceid, align 8
  %120 = load ptr, ptr %h5dimlen, align 8
  %121 = load ptr, ptr %h5dimlenmax, align 8
  %call187 = call i32 @H5Sget_simple_extent_dims(i64 noundef %119, ptr noundef %120, ptr noundef %121)
  store i32 %call187, ptr %dataset_ndims, align 4
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.end186
  %122 = load ptr, ptr %h5dimlenmax, align 8
  call void @free(ptr noundef %122) #10
  %123 = load ptr, ptr %h5dimlen, align 8
  call void @free(ptr noundef %123) #10
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

if.end191:                                        ; preds = %if.end186
  %124 = load i32, ptr %dataset_ndims, align 4
  %conv192 = sext i32 %124 to i64
  %125 = load ptr, ptr %var, align 8
  %ndims193 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %125, i32 0, i32 3
  %126 = load i64, ptr %ndims193, align 8
  %cmp194 = icmp ne i64 %conv192, %126
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end191
  %127 = load ptr, ptr %h5dimlenmax, align 8
  call void @free(ptr noundef %127) #10
  %128 = load ptr, ptr %h5dimlen, align 8
  call void @free(ptr noundef %128) #10
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

if.end197:                                        ; preds = %if.end191
  br label %if.end204

if.else198:                                       ; preds = %if.end172
  %129 = load i64, ptr %spaceid, align 8
  %call199 = call i32 @H5Sget_simple_extent_type(i64 noundef %129)
  %cmp200 = icmp ne i32 %call199, 0
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.else198
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

if.end203:                                        ; preds = %if.else198
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.end197
  %130 = load i64, ptr %spaceid, align 8
  %call205 = call i32 @H5Sclose(i64 noundef %130)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.end204
  %131 = load ptr, ptr %h5dimlen, align 8
  call void @free(ptr noundef %131) #10
  %132 = load ptr, ptr %h5dimlenmax, align 8
  call void @free(ptr noundef %132) #10
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

if.end209:                                        ; preds = %if.end204
  store i32 0, ptr %d79, align 4
  br label %for.cond210

for.cond210:                                      ; preds = %for.inc309, %if.end209
  %133 = load i32, ptr %d79, align 4
  %conv211 = sext i32 %133 to i64
  %134 = load ptr, ptr %var, align 8
  %ndims212 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %134, i32 0, i32 3
  %135 = load i64, ptr %ndims212, align 8
  %cmp213 = icmp ult i64 %conv211, %135
  br i1 %cmp213, label %for.body215, label %for.end311

for.body215:                                      ; preds = %for.cond210
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %match) #10
  store i32 -1, ptr %match, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc266, %for.body215
  %136 = load i32, ptr %k, align 4
  %conv217 = sext i32 %136 to i64
  %137 = load ptr, ptr %grp.addr, align 8
  %dim218 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %137, i32 0, i32 6
  %138 = load ptr, ptr %dim218, align 8
  %cmp219 = icmp eq ptr %138, null
  br i1 %cmp219, label %cond.true221, label %cond.false222

cond.true221:                                     ; preds = %for.cond216
  br label %cond.end234

cond.false222:                                    ; preds = %for.cond216
  %139 = load ptr, ptr %grp.addr, align 8
  %dim223 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %139, i32 0, i32 6
  %140 = load ptr, ptr %dim223, align 8
  %list224 = getelementptr inbounds %struct.NCindex, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %list224, align 8
  %cmp225 = icmp eq ptr %141, null
  br i1 %cmp225, label %cond.true227, label %cond.false228

cond.true227:                                     ; preds = %cond.false222
  br label %cond.end232

cond.false228:                                    ; preds = %cond.false222
  %142 = load ptr, ptr %grp.addr, align 8
  %dim229 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %142, i32 0, i32 6
  %143 = load ptr, ptr %dim229, align 8
  %list230 = getelementptr inbounds %struct.NCindex, ptr %143, i32 0, i32 0
  %144 = load ptr, ptr %list230, align 8
  %length231 = getelementptr inbounds %struct.NClist, ptr %144, i32 0, i32 1
  %145 = load i64, ptr %length231, align 8
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false228, %cond.true227
  %cond233 = phi i64 [ 0, %cond.true227 ], [ %145, %cond.false228 ]
  br label %cond.end234

cond.end234:                                      ; preds = %cond.end232, %cond.true221
  %cond235 = phi i64 [ 0, %cond.true221 ], [ %cond233, %cond.end232 ]
  %cmp236 = icmp ult i64 %conv217, %cond235
  br i1 %cmp236, label %for.body238, label %for.end268

for.body238:                                      ; preds = %cond.end234
  %146 = load ptr, ptr %grp.addr, align 8
  %dim239 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %146, i32 0, i32 6
  %147 = load ptr, ptr %dim239, align 8
  %148 = load i32, ptr %k, align 4
  %conv240 = sext i32 %148 to i64
  %call241 = call ptr @ncindexith(ptr noundef %147, i64 noundef %conv240)
  store ptr %call241, ptr %dim, align 8
  %cmp242 = icmp eq ptr %call241, null
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %for.body238
  br label %for.inc266

if.end245:                                        ; preds = %for.body238
  %149 = load ptr, ptr %dim, align 8
  %len = getelementptr inbounds %struct.NC_DIM_INFO, ptr %149, i32 0, i32 2
  %150 = load i64, ptr %len, align 8
  %151 = load ptr, ptr %h5dimlen, align 8
  %152 = load i32, ptr %d79, align 4
  %idxprom246 = sext i32 %152 to i64
  %arrayidx247 = getelementptr inbounds i64, ptr %151, i64 %idxprom246
  %153 = load i64, ptr %arrayidx247, align 8
  %cmp248 = icmp eq i64 %150, %153
  br i1 %cmp248, label %land.lhs.true250, label %if.end265

land.lhs.true250:                                 ; preds = %if.end245
  %154 = load ptr, ptr %h5dimlenmax, align 8
  %155 = load i32, ptr %d79, align 4
  %idxprom251 = sext i32 %155 to i64
  %arrayidx252 = getelementptr inbounds i64, ptr %154, i64 %idxprom251
  %156 = load i64, ptr %arrayidx252, align 8
  %cmp253 = icmp eq i64 %156, -1
  br i1 %cmp253, label %land.lhs.true255, label %lor.lhs.false

land.lhs.true255:                                 ; preds = %land.lhs.true250
  %157 = load ptr, ptr %dim, align 8
  %unlimited = getelementptr inbounds %struct.NC_DIM_INFO, ptr %157, i32 0, i32 3
  %158 = load i32, ptr %unlimited, align 8
  %tobool256 = icmp ne i32 %158, 0
  br i1 %tobool256, label %if.then264, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true255, %land.lhs.true250
  %159 = load ptr, ptr %h5dimlenmax, align 8
  %160 = load i32, ptr %d79, align 4
  %idxprom257 = sext i32 %160 to i64
  %arrayidx258 = getelementptr inbounds i64, ptr %159, i64 %idxprom257
  %161 = load i64, ptr %arrayidx258, align 8
  %cmp259 = icmp ne i64 %161, -1
  br i1 %cmp259, label %land.lhs.true261, label %if.end265

land.lhs.true261:                                 ; preds = %lor.lhs.false
  %162 = load ptr, ptr %dim, align 8
  %unlimited262 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %162, i32 0, i32 3
  %163 = load i32, ptr %unlimited262, align 8
  %tobool263 = icmp ne i32 %163, 0
  br i1 %tobool263, label %if.end265, label %if.then264

if.then264:                                       ; preds = %land.lhs.true261, %land.lhs.true255
  %164 = load i32, ptr %k, align 4
  store i32 %164, ptr %match, align 4
  br label %for.end268

if.end265:                                        ; preds = %land.lhs.true261, %lor.lhs.false, %if.end245
  br label %for.inc266

for.inc266:                                       ; preds = %if.end265, %if.then244
  %165 = load i32, ptr %k, align 4
  %inc267 = add nsw i32 %165, 1
  store i32 %inc267, ptr %k, align 4
  br label %for.cond216, !llvm.loop !31

for.end268:                                       ; preds = %if.then264, %cond.end234
  %166 = load i32, ptr %match, align 4
  %cmp269 = icmp slt i32 %166, 0
  br i1 %cmp269, label %if.then271, label %if.end295

if.then271:                                       ; preds = %for.end268
  call void @llvm.lifetime.start.p0(i64 257, ptr %phony_dim_name) #10
  %arraydecay = getelementptr inbounds [257 x i8], ptr %phony_dim_name, i64 0, i64 0
  %167 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %167, i32 0, i32 2
  %168 = load ptr, ptr %nc4_info, align 8
  %next_dimid = getelementptr inbounds %struct.NC_FILE_INFO, ptr %168, i32 0, i32 15
  %169 = load i32, ptr %next_dimid, align 8
  %call272 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.19, i32 noundef %169) #10
  %170 = load ptr, ptr %grp.addr, align 8
  %arraydecay273 = getelementptr inbounds [257 x i8], ptr %phony_dim_name, i64 0, i64 0
  %171 = load ptr, ptr %h5dimlen, align 8
  %172 = load i32, ptr %d79, align 4
  %idxprom274 = sext i32 %172 to i64
  %arrayidx275 = getelementptr inbounds i64, ptr %171, i64 %idxprom274
  %173 = load i64, ptr %arrayidx275, align 8
  %call276 = call i32 @nc4_dim_list_add(ptr noundef %170, ptr noundef %arraydecay273, i64 noundef %173, i32 noundef -1, ptr noundef %dim)
  store i32 %call276, ptr %retval1, align 4
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.then278, label %if.end279

if.then278:                                       ; preds = %if.then271
  %174 = load ptr, ptr %h5dimlenmax, align 8
  call void @free(ptr noundef %174) #10
  %175 = load ptr, ptr %h5dimlen, align 8
  call void @free(ptr noundef %175) #10
  %176 = load i32, ptr %retval1, align 4
  store i32 %176, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.end279:                                        ; preds = %if.then271
  %call280 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  %177 = load ptr, ptr %dim, align 8
  %format_dim_info281 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %177, i32 0, i32 6
  store ptr %call280, ptr %format_dim_info281, align 8
  %tobool282 = icmp ne ptr %call280, null
  br i1 %tobool282, label %if.end284, label %if.then283

if.then283:                                       ; preds = %if.end279
  store i32 -61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

if.end284:                                        ; preds = %if.end279
  %178 = load ptr, ptr %h5dimlenmax, align 8
  %179 = load i32, ptr %d79, align 4
  %idxprom285 = sext i32 %179 to i64
  %arrayidx286 = getelementptr inbounds i64, ptr %178, i64 %idxprom285
  %180 = load i64, ptr %arrayidx286, align 8
  %cmp287 = icmp eq i64 %180, -1
  br i1 %cmp287, label %if.then289, label %if.end291

if.then289:                                       ; preds = %if.end284
  %181 = load ptr, ptr %dim, align 8
  %unlimited290 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %181, i32 0, i32 3
  store i32 1, ptr %unlimited290, align 8
  br label %if.end291

if.end291:                                        ; preds = %if.then289, %if.end284
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup292

cleanup292:                                       ; preds = %if.end291, %if.then283, %if.then278
  call void @llvm.lifetime.end.p0(i64 257, ptr %phony_dim_name) #10
  %cleanup.dest293 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest293, label %cleanup305 [
    i32 0, label %cleanup.cont294
  ]

cleanup.cont294:                                  ; preds = %cleanup292
  br label %if.end295

if.end295:                                        ; preds = %cleanup.cont294, %for.end268
  %182 = load ptr, ptr %dim, align 8
  %hdr296 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %182, i32 0, i32 0
  %id297 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr296, i32 0, i32 2
  %183 = load i64, ptr %id297, align 8
  %conv298 = trunc i64 %183 to i32
  %184 = load ptr, ptr %var, align 8
  %dimids299 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %184, i32 0, i32 4
  %185 = load ptr, ptr %dimids299, align 8
  %186 = load i32, ptr %d79, align 4
  %idxprom300 = sext i32 %186 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %185, i64 %idxprom300
  store i32 %conv298, ptr %arrayidx301, align 4
  %187 = load ptr, ptr %dim, align 8
  %188 = load ptr, ptr %var, align 8
  %dim302 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %188, i32 0, i32 5
  %189 = load ptr, ptr %dim302, align 8
  %190 = load i32, ptr %d79, align 4
  %idxprom303 = sext i32 %190 to i64
  %arrayidx304 = getelementptr inbounds ptr, ptr %189, i64 %idxprom303
  store ptr %187, ptr %arrayidx304, align 8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup305

cleanup305:                                       ; preds = %if.end295, %cleanup292
  call void @llvm.lifetime.end.p0(i64 4, ptr %match) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  %cleanup.dest307 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest307, label %cleanup312 [
    i32 0, label %cleanup.cont308
  ]

cleanup.cont308:                                  ; preds = %cleanup305
  br label %for.inc309

for.inc309:                                       ; preds = %cleanup.cont308
  %191 = load i32, ptr %d79, align 4
  %inc310 = add nsw i32 %191, 1
  store i32 %inc310, ptr %d79, align 4
  br label %for.cond210, !llvm.loop !32

for.end311:                                       ; preds = %for.cond210
  %192 = load ptr, ptr %h5dimlen, align 8
  call void @free(ptr noundef %192) #10
  %193 = load ptr, ptr %h5dimlenmax, align 8
  call void @free(ptr noundef %193) #10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup312

cleanup312:                                       ; preds = %for.end311, %cleanup305, %if.then208, %if.then202, %if.then196, %if.then190, %if.then185, %if.then179, %if.then171
  call void @llvm.lifetime.end.p0(i64 4, ptr %dataset_ndims) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %h5dimlenmax) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %h5dimlen) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %spaceid) #10
  %cleanup.dest316 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest316, label %cleanup319 [
    i32 0, label %cleanup.cont317
  ]

cleanup.cont317:                                  ; preds = %cleanup312
  br label %if.end318

if.end318:                                        ; preds = %cleanup.cont317, %for.end165
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup319

cleanup319:                                       ; preds = %if.end318, %cleanup312, %cleanup160
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d79) #10
  %cleanup.dest321 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest321, label %cleanup324 [
    i32 0, label %cleanup.cont322
  ]

cleanup.cont322:                                  ; preds = %cleanup319
  br label %if.end323

if.end323:                                        ; preds = %cleanup.cont322, %for.end76
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup324

cleanup324:                                       ; preds = %if.end323, %cleanup319
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndims) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  %cleanup.dest327 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest327, label %cleanup332 [
    i32 0, label %cleanup.cont328
  ]

cleanup.cont328:                                  ; preds = %cleanup324
  br label %for.inc329

for.inc329:                                       ; preds = %cleanup.cont328
  %194 = load i32, ptr %i, align 4
  %inc330 = add nsw i32 %194, 1
  store i32 %inc330, ptr %i, align 4
  br label %for.cond25, !llvm.loop !33

for.end331:                                       ; preds = %cond.end42
  %195 = load i32, ptr %retval1, align 4
  store i32 %195, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup332

cleanup332:                                       ; preds = %for.end331, %cleanup324, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dim) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #10
  %196 = load i32, ptr %retval, align 4
  ret i32 %196
}

declare i32 @nc4_find_dim(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @H5Otoken_cmp(i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @H5Dget_space(i64 noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

declare i32 @H5Sget_simple_extent_dims(i64 noundef, ptr noundef, ptr noundef) #3

declare i32 @H5Sget_simple_extent_type(i64 noundef) #3

declare i32 @nc4_dim_list_add(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define void @reportobject(i32 noundef %uselog, i64 noundef %id, i32 noundef %type) #0 {
entry:
  %uselog.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %name = alloca [1024 x i8], align 16
  %len = alloca i64, align 8
  %typename = alloca ptr, align 8
  %printid = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %uselog, ptr %uselog.addr, align 4
  store i64 %id, ptr %id.addr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %name) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %typename) #10
  store ptr null, ptr %typename, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %printid) #10
  %0 = load i64, ptr %id.addr, align 8
  store i64 %0, ptr %printid, align 8
  %1 = load i64, ptr %id.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call = call i64 @H5Iget_name(i64 noundef %1, ptr noundef %arraydecay, i64 noundef 1024)
  store i64 %call, ptr %len, align 8
  %2 = load i64, ptr %len, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %len, align 8
  %arrayidx = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 %3
  store i8 0, ptr %arrayidx, align 1
  %4 = load i32, ptr %type.addr, align 4
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
    i32 16, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  store ptr @.str.20, ptr %typename, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  store ptr @.str.21, ptr %typename, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  store ptr @.str.22, ptr %typename, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  store ptr @.str.23, ptr %typename, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  store ptr @.str.24, ptr %typename, align 8
  %5 = load i64, ptr %id.addr, align 8
  %arraydecay5 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call6 = call i64 @H5Aget_name(i64 noundef %5, i64 noundef 1024, ptr noundef %arraydecay5)
  store i64 %call6, ptr %len, align 8
  %6 = load i64, ptr %len, align 8
  %cmp7 = icmp slt i64 %6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb4
  store i64 0, ptr %len, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.bb4
  %7 = load i64, ptr %len, align 8
  %arrayidx10 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 %7
  store i8 0, ptr %arrayidx10, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store ptr @.str.25, ptr %typename, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end9, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %8 = load ptr, ptr @stderr, align 8
  %9 = load ptr, ptr %typename, align 8
  %10 = load i64, ptr %printid, align 8
  %arraydecay11 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.26, ptr noundef %9, i64 noundef %10, ptr noundef %arraydecay11)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %printid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %typename) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr %name) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i64 @H5Iget_name(i64 noundef, ptr noundef, i64 noundef) #3

declare i64 @H5Aget_name(i64 noundef, i64 noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define void @reportopenobjects(i32 noundef %uselog, i64 noundef %fid) #0 {
entry:
  %uselog.addr = alloca i32, align 4
  %fid.addr = alloca i64, align 8
  %OTYPES = alloca [5 x i32], align 16
  store i32 %uselog, ptr %uselog.addr, align 4
  store i64 %fid, ptr %fid.addr, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr %OTYPES) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %OTYPES, ptr align 16 @__const.reportopenobjects.OTYPES, i64 20, i1 false)
  %0 = load i32, ptr %uselog.addr, align 4
  %1 = load i64, ptr %fid.addr, align 8
  %arraydecay = getelementptr inbounds [5 x i32], ptr %OTYPES, i64 0, i64 0
  call void @reportopenobjectsT(i32 noundef %0, i64 noundef %1, i32 noundef 5, ptr noundef %arraydecay)
  call void @llvm.lifetime.end.p0(i64 20, ptr %OTYPES) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reportopenobjectsT(i32 noundef %uselog, i64 noundef %fid, i32 noundef %ntypes, ptr noundef %otypes) #0 {
entry:
  %uselog.addr = alloca i32, align 4
  %fid.addr = alloca i64, align 8
  %ntypes.addr = alloca i32, align 4
  %otypes.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  %ocount = alloca i64, align 8
  %maxobjs = alloca i64, align 8
  %idlist = alloca ptr, align 8
  %ot = alloca i32, align 4
  %o = alloca i64, align 8
  store i32 %uselog, ptr %uselog.addr, align 4
  store i64 %fid, ptr %fid.addr, align 8
  store i32 %ntypes, ptr %ntypes.addr, align 4
  store ptr %otypes, ptr %otypes.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %ocount) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxobjs) #10
  store i64 -1, ptr %maxobjs, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %idlist) #10
  store ptr null, ptr %idlist, align 8
  %0 = load ptr, ptr @stdout, align 8
  %1 = load i64, ptr %fid.addr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.56, i64 noundef %1)
  %2 = load i64, ptr %fid.addr, align 8
  %call1 = call i64 @H5Fget_obj_count(i64 noundef %2, i32 noundef 31)
  store i64 %call1, ptr %maxobjs, align 8
  %3 = load ptr, ptr %idlist, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %idlist, align 8
  call void @free(ptr noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %maxobjs, align 8
  %mul = mul i64 8, %5
  %call2 = call noalias ptr @malloc(i64 noundef %mul) #12
  store ptr %call2, ptr %idlist, align 8
  store i32 0, ptr %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.end
  %6 = load i32, ptr %t, align 4
  %7 = load i32, ptr %ntypes.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ot) #10
  %8 = load ptr, ptr %otypes.addr, align 8
  %9 = load i32, ptr %t, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  store i32 %10, ptr %ot, align 4
  %11 = load i64, ptr %fid.addr, align 8
  %12 = load i32, ptr %ot, align 4
  %13 = load i64, ptr %maxobjs, align 8
  %14 = load ptr, ptr %idlist, align 8
  %call4 = call i64 @H5Fget_obj_ids(i64 noundef %11, i32 noundef %12, i64 noundef %13, ptr noundef %14)
  store i64 %call4, ptr %ocount, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %15 = load i32, ptr %i, align 4
  %conv = sext i32 %15 to i64
  %16 = load i64, ptr %ocount, align 8
  %cmp6 = icmp slt i64 %conv, %16
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #10
  %17 = load ptr, ptr %idlist, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i64, ptr %17, i64 %idxprom9
  %19 = load i64, ptr %arrayidx10, align 8
  store i64 %19, ptr %o, align 8
  %20 = load i32, ptr %uselog.addr, align 4
  %21 = load i64, ptr %o, align 8
  %22 = load i32, ptr %ot, align 4
  call void @reportobject(i32 noundef %20, i64 noundef %21, i32 noundef %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond5, !llvm.loop !34

for.end:                                          ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ot) #10
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %24 = load i32, ptr %t, align 4
  %inc12 = add nsw i32 %24, 1
  store i32 %inc12, ptr %t, align 4
  br label %for.cond, !llvm.loop !35

for.end13:                                        ; preds = %for.cond
  %25 = load ptr, ptr %idlist, align 8
  %cmp14 = icmp ne ptr %25, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end13
  %26 = load ptr, ptr %idlist, align 8
  call void @free(ptr noundef %26) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %idlist) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxobjs) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ocount) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #10
  ret void
}

; Function Attrs: nounwind uwtable
define void @showopenobjects5(ptr noundef %h5) #0 {
entry:
  %h5.addr = alloca ptr, align 8
  %hdf5_info = alloca ptr, align 8
  store ptr %h5, ptr %h5.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_info) #10
  %0 = load ptr, ptr %h5.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %h5.addr, align 8
  %format_file_info = getelementptr inbounds %struct.NC_FILE_INFO, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %format_file_info, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.1, i32 noundef 2419, ptr noundef @__PRETTY_FUNCTION__.showopenobjects5) #11
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %h5.addr, align 8
  %format_file_info2 = getelementptr inbounds %struct.NC_FILE_INFO, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %format_file_info2, align 8
  store ptr %4, ptr %hdf5_info, align 8
  %5 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.28)
  %6 = load ptr, ptr %hdf5_info, align 8
  %hdfid = getelementptr inbounds %struct.NC_HDF5_FILE_INFO, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %hdfid, align 8
  call void @reportopenobjects(i32 noundef 0, i64 noundef %7)
  %8 = load ptr, ptr @stderr, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.29)
  %9 = load ptr, ptr @stderr, align 8
  %call4 = call i32 @fflush(ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_info) #10
  ret void
}

declare i32 @fflush(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @showopenobjects(i32 noundef %ncid) #0 {
entry:
  %ncid.addr = alloca i32, align 4
  %h5 = alloca ptr, align 8
  store i32 %ncid, ptr %ncid.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %h5) #10
  store ptr null, ptr %h5, align 8
  %0 = load i32, ptr %ncid.addr, align 4
  %call = call i32 @nc4_find_nc_grp_h5(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %h5)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.30)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %h5, align 8
  call void @showopenobjects5(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr @stderr, align 8
  %call2 = call i32 @fflush(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %h5) #10
  ret void
}

declare i32 @nc4_find_nc_grp_h5(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @NC4_hdf5get_libversion(ptr noundef %major, ptr noundef %minor, ptr noundef %release) #0 {
entry:
  %retval = alloca i32, align 4
  %major.addr = alloca ptr, align 8
  %minor.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %major, ptr %major.addr, align 8
  store ptr %minor, ptr %minor.addr, align 8
  store ptr %release, ptr %release.addr, align 8
  %0 = load ptr, ptr %major.addr, align 8
  %1 = load ptr, ptr %minor.addr, align 8
  %2 = load ptr, ptr %release.addr, align 8
  %call = call i32 @H5get_libversion(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -101, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @H5get_libversion(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @NC4_hdf5get_superblock(ptr noundef %h5, ptr noundef %idp) #0 {
entry:
  %h5.addr = alloca ptr, align 8
  %idp.addr = alloca ptr, align 8
  %hdf5_info = alloca ptr, align 8
  %stat = alloca i32, align 4
  %super = alloca i32, align 4
  %plist = alloca i64, align 8
  store ptr %h5, ptr %h5.addr, align 8
  store ptr %idp, ptr %idp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_info) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #10
  store i32 0, ptr %stat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %super) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %plist) #10
  store i64 -1, ptr %plist, align 8
  %0 = load ptr, ptr %h5.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %h5.addr, align 8
  %format_file_info = getelementptr inbounds %struct.NC_FILE_INFO, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %format_file_info, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.1, i32 noundef 2486, ptr noundef @__PRETTY_FUNCTION__.NC4_hdf5get_superblock) #11
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %h5.addr, align 8
  %format_file_info2 = getelementptr inbounds %struct.NC_FILE_INFO, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %format_file_info2, align 8
  store ptr %4, ptr %hdf5_info, align 8
  %5 = load ptr, ptr %hdf5_info, align 8
  %hdfid = getelementptr inbounds %struct.NC_HDF5_FILE_INFO, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %hdfid, align 8
  %call = call i64 @H5Fget_create_plist(i64 noundef %6)
  store i64 %call, ptr %plist, align 8
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -101, ptr %stat, align 4
  br label %done

if.end4:                                          ; preds = %if.end
  %7 = load i64, ptr %plist, align 8
  %call5 = call i32 @H5Pget_version(i64 noundef %7, ptr noundef %super, ptr noundef null, ptr noundef null, ptr noundef null)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -101, ptr %stat, align 4
  br label %done

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %idp.addr, align 8
  %tobool9 = icmp ne ptr %8, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %9 = load i32, ptr %super, align 4
  %10 = load ptr, ptr %idp.addr, align 8
  store i32 %9, ptr %10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  br label %done

done:                                             ; preds = %if.end11, %if.then7, %if.then3
  %11 = load i64, ptr %plist, align 8
  %cmp12 = icmp sge i64 %11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %done
  %12 = load i64, ptr %plist, align 8
  %call14 = call i32 @H5Pclose(i64 noundef %12)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %done
  %13 = load i32, ptr %stat, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %plist) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %super) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_info) #10
  ret i32 %13
}

declare i64 @H5Fget_create_plist(i64 noundef) #3

declare i32 @H5Pget_version(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @NC4_isnetcdf4(ptr noundef %h5) #0 {
entry:
  %h5.addr = alloca ptr, align 8
  %stat = alloca i32, align 4
  %isnc4 = alloca i32, align 4
  %exists = alloca i32, align 4
  %count = alloca i32, align 4
  store ptr %h5, ptr %h5.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %isnc4) #10
  store i32 0, ptr %isnc4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %exists) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #10
  %0 = load ptr, ptr %h5.addr, align 8
  %call = call i32 @NC4_strict_att_exists(ptr noundef %0)
  store i32 %call, ptr %exists, align 4
  %1 = load i32, ptr %exists, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %done

if.end:                                           ; preds = %entry
  store i32 0, ptr %count, align 4
  %2 = load ptr, ptr %h5.addr, align 8
  %root_grp = getelementptr inbounds %struct.NC_FILE_INFO, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %root_grp, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %format_grp_info, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %hdf_grpid, align 8
  %call1 = call i32 @NC4_walk(i64 noundef %5, ptr noundef %count)
  store i32 %call1, ptr %stat, align 4
  %6 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %isnc4, align 4
  br label %if.end4

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %count, align 4
  %cmp3 = icmp sge i32 %7, 2
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, ptr %isnc4, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  br label %done

done:                                             ; preds = %if.end4, %if.then
  %8 = load i32, ptr %isnc4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %exists) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %isnc4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #10
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @NC4_strict_att_exists(ptr noundef %h5) #0 {
entry:
  %retval = alloca i32, align 4
  %h5.addr = alloca ptr, align 8
  %grpid = alloca i64, align 8
  %attr_exists = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h5, ptr %h5.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %grpid) #10
  store i64 -1, ptr %grpid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr_exists) #10
  %0 = load ptr, ptr %h5.addr, align 8
  %root_grp = getelementptr inbounds %struct.NC_FILE_INFO, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %root_grp, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %format_grp_info, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %hdf_grpid, align 8
  store i64 %3, ptr %grpid, align 8
  %4 = load i64, ptr %grpid, align 8
  %call = call i32 @H5Aexists(i64 noundef %4, ptr noundef @.str.53)
  store i32 %call, ptr %attr_exists, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %attr_exists, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr_exists) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %grpid) #10
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @NC4_walk(i64 noundef %gid, ptr noundef %countp) #0 {
entry:
  %retval = alloca i32, align 4
  %gid.addr = alloca i64, align 8
  %countp.addr = alloca ptr, align 8
  %ncstat = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %na = alloca i32, align 4
  %len = alloca i64, align 8
  %nobj = alloca i64, align 8
  %err = alloca i32, align 4
  %otype = alloca i32, align 4
  %grpid = alloca i64, align 8
  %dsid = alloca i64, align 8
  %name = alloca [1024 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %aid = alloca i64, align 8
  %ra = alloca ptr, align 8
  %len34 = alloca i64, align 8
  store i64 %gid, ptr %gid.addr, align 8
  store ptr %countp, ptr %countp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ncstat) #10
  store i32 0, ptr %ncstat, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %na) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %nobj) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %otype) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %grpid) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %dsid) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr %name) #10
  %0 = load i64, ptr %gid.addr, align 8
  %call = call i32 @H5Gget_num_objs(i64 noundef %0, ptr noundef %nobj)
  store i32 %call, ptr %err, align 4
  %1 = load i32, ptr %err, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc56, %if.end
  %3 = load i32, ptr %i, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, ptr %nobj, align 8
  %cmp1 = icmp ult i64 %conv, %4
  br i1 %cmp1, label %for.body, label %for.end58

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %gid.addr, align 8
  %6 = load i32, ptr %i, align 4
  %conv3 = sext i32 %6 to i64
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call4 = call i64 @H5Gget_objname_by_idx(i64 noundef %5, i64 noundef %conv3, ptr noundef %arraydecay, i64 noundef 1024)
  store i64 %call4, ptr %len, align 8
  %7 = load i64, ptr %len, align 8
  %cmp5 = icmp slt i64 %7, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  %8 = load i64, ptr %len, align 8
  %conv8 = trunc i64 %8 to i32
  store i32 %conv8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59

if.end9:                                          ; preds = %for.body
  %9 = load i64, ptr %gid.addr, align 8
  %10 = load i32, ptr %i, align 4
  %conv10 = sext i32 %10 to i64
  %call11 = call i32 @H5Gget_objtype_by_idx(i64 noundef %9, i64 noundef %conv10)
  store i32 %call11, ptr %otype, align 4
  %11 = load i32, ptr %otype, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end9
  %12 = load i64, ptr %gid.addr, align 8
  %arraydecay12 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call13 = call i64 @H5Gopen1(i64 noundef %12, ptr noundef %arraydecay12)
  store i64 %call13, ptr %grpid, align 8
  %13 = load i64, ptr %grpid, align 8
  %14 = load ptr, ptr %countp.addr, align 8
  %call14 = call i32 @NC4_walk(i64 noundef %13, ptr noundef %14)
  %15 = load i64, ptr %grpid, align 8
  %call15 = call i32 @H5Gclose(i64 noundef %15)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end9
  %arraydecay17 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call18 = call i32 @strcmp(ptr noundef %arraydecay17, ptr noundef @.str.57) #14
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb16
  %16 = load ptr, ptr %countp.addr, align 8
  %17 = load i32, ptr %16, align 4
  %add = add nsw i32 %17, 1
  %18 = load ptr, ptr %countp.addr, align 8
  store i32 %add, ptr %18, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %sw.bb16
  %19 = load i64, ptr %gid.addr, align 8
  %arraydecay23 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call24 = call i64 @H5Dopen1(i64 noundef %19, ptr noundef %arraydecay23)
  store i64 %call24, ptr %dsid, align 8
  %20 = load i64, ptr %dsid, align 8
  %call25 = call i32 @H5Aget_num_attrs(i64 noundef %20)
  store i32 %call25, ptr %na, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.end22
  %21 = load i32, ptr %j, align 4
  %22 = load i32, ptr %na, align 4
  %cmp27 = icmp slt i32 %21, %22
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %aid) #10
  %23 = load i64, ptr %dsid, align 8
  %24 = load i32, ptr %j, align 4
  %call30 = call i64 @H5Aopen_idx(i64 noundef %23, i32 noundef %24)
  store i64 %call30, ptr %aid, align 8
  %25 = load i64, ptr %aid, align 8
  %cmp31 = icmp sge i64 %25, 0
  br i1 %cmp31, label %if.then33, label %if.end50

if.then33:                                        ; preds = %for.body29
  call void @llvm.lifetime.start.p0(i64 8, ptr %ra) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %len34) #10
  %26 = load i64, ptr %aid, align 8
  %arraydecay35 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call36 = call i64 @H5Aget_name(i64 noundef %26, i64 noundef 1024, ptr noundef %arraydecay35)
  store i64 %call36, ptr %len34, align 8
  %27 = load i64, ptr %len34, align 8
  %cmp37 = icmp slt i64 %27, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then33
  %28 = load i64, ptr %len34, align 8
  %conv40 = trunc i64 %28 to i32
  store i32 %conv40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.then33
  %arraydecay42 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call43 = call ptr @NC_findreserved(ptr noundef %arraydecay42)
  store ptr %call43, ptr %ra, align 8
  %29 = load ptr, ptr %ra, align 8
  %cmp44 = icmp ne ptr %29, null
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end41
  %30 = load ptr, ptr %countp.addr, align 8
  %31 = load i32, ptr %30, align 4
  %add47 = add nsw i32 %31, 1
  %32 = load ptr, ptr %countp.addr, align 8
  store i32 %add47, ptr %32, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end41
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then39
  call void @llvm.lifetime.end.p0(i64 8, ptr %len34) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ra) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end50

if.end50:                                         ; preds = %cleanup.cont, %for.body29
  %33 = load i64, ptr %aid, align 8
  %call51 = call i32 @H5Aclose(i64 noundef %33)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %if.end50, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %aid) #10
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %cleanup59 [
    i32 0, label %cleanup.cont54
  ]

cleanup.cont54:                                   ; preds = %cleanup52
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont54
  %34 = load i32, ptr %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond26, !llvm.loop !36

for.end:                                          ; preds = %for.cond26
  %35 = load i64, ptr %dsid, align 8
  %call55 = call i32 @H5Dclose(i64 noundef %35)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %sw.bb
  br label %for.inc56

for.inc56:                                        ; preds = %sw.epilog
  %36 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %36, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond, !llvm.loop !37

for.end58:                                        ; preds = %for.cond
  %37 = load i32, ptr %ncstat, align 4
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %for.end58, %cleanup52, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1024, ptr %name) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dsid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %grpid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %otype) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %nobj) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %na) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %ncstat) #10
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

declare i64 @H5Screate(i32 noundef) #3

declare i32 @H5Aexists(i64 noundef, ptr noundef) #3

declare i64 @H5Aopen_by_name(i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i64 @H5Acreate1(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) #3

declare i32 @H5Awrite(i64 noundef, i64 noundef, ptr noundef) #3

declare i32 @H5Aclose(i64 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @put_att_grpa(ptr noundef %grp, i32 noundef %varid, ptr noundef %att) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %varid.addr = alloca i32, align 4
  %att.addr = alloca ptr, align 8
  %hdf5_grp = alloca ptr, align 8
  %datasetid = alloca i64, align 8
  %locid = alloca i64, align 8
  %attid = alloca i64, align 8
  %spaceid = alloca i64, align 8
  %file_typeid = alloca i64, align 8
  %existing_att_typeid = alloca i64, align 8
  %existing_attid = alloca i64, align 8
  %existing_spaceid = alloca i64, align 8
  %dims = alloca [1 x i64], align 8
  %attr_exists = alloca i32, align 4
  %data = alloca ptr, align 8
  %phoney_data = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %string_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %npoints = alloca i64, align 8
  store ptr %grp, ptr %grp.addr, align 8
  store i32 %varid, ptr %varid.addr, align 4
  store ptr %att, ptr %att.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %datasetid) #10
  store i64 0, ptr %datasetid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %locid) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %attid) #10
  store i64 0, ptr %attid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %spaceid) #10
  store i64 0, ptr %spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %file_typeid) #10
  store i64 0, ptr %file_typeid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %existing_att_typeid) #10
  store i64 0, ptr %existing_att_typeid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %existing_attid) #10
  store i64 0, ptr %existing_attid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %existing_spaceid) #10
  store i64 0, ptr %existing_spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dims) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr_exists) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %phoney_data) #10
  store i32 99, ptr %phoney_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %0 = load ptr, ptr %att.addr, align 8
  %hdr = getelementptr inbounds %struct.NC_ATT_INFO, ptr %0, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 1
  %1 = load ptr, ptr %name, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %grp.addr, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %format_grp_info, align 8
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.34, ptr noundef @.str.1, i32 noundef 439, ptr noundef @__PRETTY_FUNCTION__.put_att_grpa) #11
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %grp.addr, align 8
  %format_grp_info5 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %format_grp_info5, align 8
  store ptr %6, ptr %hdf5_grp, align 8
  %7 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %nc4_info, align 8
  %no_write = getelementptr inbounds %struct.NC_FILE_INFO, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %no_write, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then7
  br label %do.body8

do.body8:                                         ; preds = %do.body
  store i32 -37, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body8
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond9:                                         ; No predecessors!
  br label %do.end10

do.end10:                                         ; preds = %do.cond9
  br label %if.end11

if.end11:                                         ; preds = %do.end10, %if.end
  %10 = load i32, ptr %varid.addr, align 4
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end11
  %11 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %hdf_grpid, align 8
  store i64 %12, ptr %locid, align 8
  br label %if.end23

if.else13:                                        ; preds = %if.end11
  %13 = load ptr, ptr %grp.addr, align 8
  %14 = load i32, ptr %varid.addr, align 4
  %call = call i32 @nc4_open_var_grp2(ptr noundef %13, i32 noundef %14, ptr noundef %datasetid)
  store i32 %call, ptr %retval1, align 4
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.else13
  br label %do.body16

do.body16:                                        ; preds = %if.then15
  br label %do.body17

do.body17:                                        ; preds = %do.body16
  %15 = load i32, ptr %retval1, align 4
  store i32 %15, ptr %retval1, align 4
  br label %do.cond18

do.cond18:                                        ; preds = %do.body17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %exit

do.cond20:                                        ; No predecessors!
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %if.else13
  %16 = load i64, ptr %datasetid, align 8
  store i64 %16, ptr %locid, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then12
  %17 = load ptr, ptr %att.addr, align 8
  %len = getelementptr inbounds %struct.NC_ATT_INFO, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %len, align 8
  %conv = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [1 x i64], ptr %dims, i64 0, i64 0
  store i64 %conv, ptr %arrayidx, align 8
  %19 = load ptr, ptr %grp.addr, align 8
  %nc4_info24 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %nc4_info24, align 8
  %21 = load ptr, ptr %att.addr, align 8
  %nc_typeid = getelementptr inbounds %struct.NC_ATT_INFO, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %nc_typeid, align 4
  %call25 = call i32 @nc4_get_hdf_typeid(ptr noundef %20, i32 noundef %22, ptr noundef %file_typeid, i32 noundef 0)
  store i32 %call25, ptr %retval1, align 4
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end23
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  br label %do.body29

do.body29:                                        ; preds = %do.body28
  %23 = load i32, ptr %retval1, align 4
  store i32 %23, ptr %retval1, align 4
  br label %do.cond30

do.cond30:                                        ; preds = %do.body29
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  br label %exit

do.cond32:                                        ; No predecessors!
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %if.end23
  %arrayidx35 = getelementptr inbounds [1 x i64], ptr %dims, i64 0, i64 0
  %24 = load i64, ptr %arrayidx35, align 8
  %tobool36 = icmp ne i64 %24, 0
  br i1 %tobool36, label %if.else38, label %if.then37

if.then37:                                        ; preds = %if.end34
  store ptr %phoney_data, ptr %data, align 8
  br label %if.end40

if.else38:                                        ; preds = %if.end34
  %25 = load ptr, ptr %att.addr, align 8
  %data39 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %data39, align 8
  store ptr %26, ptr %data, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.then37
  %27 = load ptr, ptr %att.addr, align 8
  %nc_typeid41 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %27, i32 0, i32 5
  %28 = load i32, ptr %nc_typeid41, align 4
  %cmp42 = icmp eq i32 %28, 2
  br i1 %cmp42, label %if.then44, label %if.else94

if.then44:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr %string_size) #10
  %arrayidx45 = getelementptr inbounds [1 x i64], ptr %dims, i64 0, i64 0
  %29 = load i64, ptr %arrayidx45, align 8
  store i64 %29, ptr %string_size, align 8
  %30 = load i64, ptr %string_size, align 8
  %tobool46 = icmp ne i64 %30, 0
  br i1 %tobool46, label %if.else59, label %if.then47

if.then47:                                        ; preds = %if.then44
  store i64 1, ptr %string_size, align 8
  %call48 = call i64 @H5Screate(i32 noundef 2)
  store i64 %call48, ptr %spaceid, align 8
  %cmp49 = icmp slt i64 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.then47
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  br label %do.body53

do.body53:                                        ; preds = %do.body52
  store i32 -107, ptr %retval1, align 4
  br label %do.cond54

do.cond54:                                        ; preds = %do.body53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond56:                                        ; No predecessors!
  br label %do.end57

do.end57:                                         ; preds = %do.cond56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %if.then47
  br label %if.end71

if.else59:                                        ; preds = %if.then44
  %call60 = call i64 @H5Screate(i32 noundef 0)
  store i64 %call60, ptr %spaceid, align 8
  %cmp61 = icmp slt i64 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.else59
  br label %do.body64

do.body64:                                        ; preds = %if.then63
  br label %do.body65

do.body65:                                        ; preds = %do.body64
  store i32 -107, ptr %retval1, align 4
  br label %do.cond66

do.cond66:                                        ; preds = %do.body65
  br label %do.end67

do.end67:                                         ; preds = %do.cond66
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond68:                                        ; No predecessors!
  br label %do.end69

do.end69:                                         ; preds = %do.cond68
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.else59
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end58
  %31 = load i64, ptr %file_typeid, align 8
  %32 = load i64, ptr %string_size, align 8
  %call72 = call i32 @H5Tset_size(i64 noundef %31, i64 noundef %32)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end82

if.then75:                                        ; preds = %if.end71
  br label %do.body76

do.body76:                                        ; preds = %if.then75
  br label %do.body77

do.body77:                                        ; preds = %do.body76
  store i32 -107, ptr %retval1, align 4
  br label %do.cond78

do.cond78:                                        ; preds = %do.body77
  br label %do.end79

do.end79:                                         ; preds = %do.cond78
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond80:                                        ; No predecessors!
  br label %do.end81

do.end81:                                         ; preds = %do.cond80
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.end71
  %33 = load i64, ptr %file_typeid, align 8
  %call83 = call i32 @H5Tset_strpad(i64 noundef %33, i32 noundef 0)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then86, label %if.end93

if.then86:                                        ; preds = %if.end82
  br label %do.body87

do.body87:                                        ; preds = %if.then86
  br label %do.body88

do.body88:                                        ; preds = %do.body87
  store i32 -107, ptr %retval1, align 4
  br label %do.cond89

do.cond89:                                        ; preds = %do.body88
  br label %do.end90

do.end90:                                         ; preds = %do.cond89
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond91:                                        ; No predecessors!
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  br label %if.end93

if.end93:                                         ; preds = %do.end92, %if.end82
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %do.end79, %do.end67, %do.end55, %if.end93
  call void @llvm.lifetime.end.p0(i64 8, ptr %string_size) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup336 [
    i32 0, label %cleanup.cont
    i32 6, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end122

if.else94:                                        ; preds = %if.end40
  %34 = load ptr, ptr %att.addr, align 8
  %len95 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %len95, align 8
  %tobool96 = icmp ne i32 %35, 0
  br i1 %tobool96, label %if.else109, label %if.then97

if.then97:                                        ; preds = %if.else94
  %call98 = call i64 @H5Screate(i32 noundef 2)
  store i64 %call98, ptr %spaceid, align 8
  %cmp99 = icmp slt i64 %call98, 0
  br i1 %cmp99, label %if.then101, label %if.end108

if.then101:                                       ; preds = %if.then97
  br label %do.body102

do.body102:                                       ; preds = %if.then101
  br label %do.body103

do.body103:                                       ; preds = %do.body102
  store i32 -107, ptr %retval1, align 4
  br label %do.cond104

do.cond104:                                       ; preds = %do.body103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  br label %exit

do.cond106:                                       ; No predecessors!
  br label %do.end107

do.end107:                                        ; preds = %do.cond106
  br label %if.end108

if.end108:                                        ; preds = %do.end107, %if.then97
  br label %if.end121

if.else109:                                       ; preds = %if.else94
  %arraydecay = getelementptr inbounds [1 x i64], ptr %dims, i64 0, i64 0
  %call110 = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef %arraydecay, ptr noundef null)
  store i64 %call110, ptr %spaceid, align 8
  %cmp111 = icmp slt i64 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.end120

if.then113:                                       ; preds = %if.else109
  br label %do.body114

do.body114:                                       ; preds = %if.then113
  br label %do.body115

do.body115:                                       ; preds = %do.body114
  store i32 -107, ptr %retval1, align 4
  br label %do.cond116

do.cond116:                                       ; preds = %do.body115
  br label %do.end117

do.end117:                                        ; preds = %do.cond116
  br label %exit

do.cond118:                                       ; No predecessors!
  br label %do.end119

do.end119:                                        ; preds = %do.cond118
  br label %if.end120

if.end120:                                        ; preds = %do.end119, %if.else109
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end108
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %cleanup.cont
  %36 = load i64, ptr %locid, align 8
  %37 = load ptr, ptr %att.addr, align 8
  %hdr123 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %37, i32 0, i32 0
  %name124 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr123, i32 0, i32 1
  %38 = load ptr, ptr %name124, align 8
  %call125 = call i32 @H5Aexists(i64 noundef %36, ptr noundef %38)
  store i32 %call125, ptr %attr_exists, align 4
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end135

if.then128:                                       ; preds = %if.end122
  br label %do.body129

do.body129:                                       ; preds = %if.then128
  br label %do.body130

do.body130:                                       ; preds = %do.body129
  store i32 -101, ptr %retval1, align 4
  br label %do.cond131

do.cond131:                                       ; preds = %do.body130
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  br label %exit

do.cond133:                                       ; No predecessors!
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %if.end122
  %39 = load i32, ptr %attr_exists, align 4
  %tobool136 = icmp ne i32 %39, 0
  br i1 %tobool136, label %if.then137, label %if.else248

if.then137:                                       ; preds = %if.end135
  call void @llvm.lifetime.start.p0(i64 8, ptr %npoints) #10
  %40 = load i64, ptr %locid, align 8
  %41 = load ptr, ptr %att.addr, align 8
  %hdr138 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %41, i32 0, i32 0
  %name139 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr138, i32 0, i32 1
  %42 = load ptr, ptr %name139, align 8
  %call140 = call i64 @H5Aopen(i64 noundef %40, ptr noundef %42, i64 noundef 0)
  store i64 %call140, ptr %existing_attid, align 8
  %cmp141 = icmp slt i64 %call140, 0
  br i1 %cmp141, label %if.then143, label %if.end150

if.then143:                                       ; preds = %if.then137
  br label %do.body144

do.body144:                                       ; preds = %if.then143
  br label %do.body145

do.body145:                                       ; preds = %do.body144
  store i32 -107, ptr %retval1, align 4
  br label %do.cond146

do.cond146:                                       ; preds = %do.body145
  br label %do.end147

do.end147:                                        ; preds = %do.cond146
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond148:                                       ; No predecessors!
  br label %do.end149

do.end149:                                        ; preds = %do.cond148
  br label %if.end150

if.end150:                                        ; preds = %do.end149, %if.then137
  %43 = load i64, ptr %existing_attid, align 8
  %call151 = call i64 @H5Aget_type(i64 noundef %43)
  store i64 %call151, ptr %existing_att_typeid, align 8
  %cmp152 = icmp slt i64 %call151, 0
  br i1 %cmp152, label %if.then154, label %if.end161

if.then154:                                       ; preds = %if.end150
  br label %do.body155

do.body155:                                       ; preds = %if.then154
  br label %do.body156

do.body156:                                       ; preds = %do.body155
  store i32 -107, ptr %retval1, align 4
  br label %do.cond157

do.cond157:                                       ; preds = %do.body156
  br label %do.end158

do.end158:                                        ; preds = %do.cond157
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond159:                                       ; No predecessors!
  br label %do.end160

do.end160:                                        ; preds = %do.cond159
  br label %if.end161

if.end161:                                        ; preds = %do.end160, %if.end150
  %44 = load i64, ptr %existing_attid, align 8
  %call162 = call i64 @H5Aget_space(i64 noundef %44)
  store i64 %call162, ptr %existing_spaceid, align 8
  %cmp163 = icmp slt i64 %call162, 0
  br i1 %cmp163, label %if.then165, label %if.end172

if.then165:                                       ; preds = %if.end161
  br label %do.body166

do.body166:                                       ; preds = %if.then165
  br label %do.body167

do.body167:                                       ; preds = %do.body166
  store i32 -107, ptr %retval1, align 4
  br label %do.cond168

do.cond168:                                       ; preds = %do.body167
  br label %do.end169

do.end169:                                        ; preds = %do.cond168
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond170:                                       ; No predecessors!
  br label %do.end171

do.end171:                                        ; preds = %do.cond170
  br label %if.end172

if.end172:                                        ; preds = %do.end171, %if.end161
  %45 = load i64, ptr %existing_spaceid, align 8
  %call173 = call i64 @H5Sget_simple_extent_npoints(i64 noundef %45)
  store i64 %call173, ptr %npoints, align 8
  %cmp174 = icmp slt i64 %call173, 0
  br i1 %cmp174, label %if.then176, label %if.end183

if.then176:                                       ; preds = %if.end172
  br label %do.body177

do.body177:                                       ; preds = %if.then176
  br label %do.body178

do.body178:                                       ; preds = %do.body177
  store i32 -107, ptr %retval1, align 4
  br label %do.cond179

do.cond179:                                       ; preds = %do.body178
  br label %do.end180

do.end180:                                        ; preds = %do.cond179
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond181:                                       ; No predecessors!
  br label %do.end182

do.end182:                                        ; preds = %do.cond181
  br label %if.end183

if.end183:                                        ; preds = %do.end182, %if.end172
  %46 = load i64, ptr %file_typeid, align 8
  %47 = load i64, ptr %existing_att_typeid, align 8
  %call184 = call i32 @H5Tequal(i64 noundef %46, i64 noundef %47)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %lor.lhs.false, label %if.then194

lor.lhs.false:                                    ; preds = %if.end183
  %48 = load ptr, ptr %att.addr, align 8
  %nc_typeid186 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %nc_typeid186, align 4
  %cmp187 = icmp ne i32 %49, 2
  br i1 %cmp187, label %land.lhs.true189, label %if.else232

land.lhs.true189:                                 ; preds = %lor.lhs.false
  %50 = load i64, ptr %npoints, align 8
  %51 = load ptr, ptr %att.addr, align 8
  %len190 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %len190, align 8
  %conv191 = sext i32 %52 to i64
  %cmp192 = icmp ne i64 %50, %conv191
  br i1 %cmp192, label %if.then194, label %if.else232

if.then194:                                       ; preds = %land.lhs.true189, %if.end183
  %53 = load i64, ptr %locid, align 8
  %54 = load ptr, ptr %att.addr, align 8
  %hdr195 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %54, i32 0, i32 0
  %name196 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr195, i32 0, i32 1
  %55 = load ptr, ptr %name196, align 8
  %call197 = call i32 @H5Adelete(i64 noundef %53, ptr noundef %55)
  %cmp198 = icmp slt i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.end207

if.then200:                                       ; preds = %if.then194
  br label %do.body201

do.body201:                                       ; preds = %if.then200
  br label %do.body202

do.body202:                                       ; preds = %do.body201
  store i32 -101, ptr %retval1, align 4
  br label %do.cond203

do.cond203:                                       ; preds = %do.body202
  br label %do.end204

do.end204:                                        ; preds = %do.cond203
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond205:                                       ; No predecessors!
  br label %do.end206

do.end206:                                        ; preds = %do.cond205
  br label %if.end207

if.end207:                                        ; preds = %do.end206, %if.then194
  %56 = load i64, ptr %locid, align 8
  %57 = load ptr, ptr %att.addr, align 8
  %hdr208 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %57, i32 0, i32 0
  %name209 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr208, i32 0, i32 1
  %58 = load ptr, ptr %name209, align 8
  %59 = load i64, ptr %file_typeid, align 8
  %60 = load i64, ptr %spaceid, align 8
  %call210 = call i64 @H5Acreate1(i64 noundef %56, ptr noundef %58, i64 noundef %59, i64 noundef %60, i64 noundef 0)
  store i64 %call210, ptr %attid, align 8
  %cmp211 = icmp slt i64 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.end220

if.then213:                                       ; preds = %if.end207
  br label %do.body214

do.body214:                                       ; preds = %if.then213
  br label %do.body215

do.body215:                                       ; preds = %do.body214
  store i32 -107, ptr %retval1, align 4
  br label %do.cond216

do.cond216:                                       ; preds = %do.body215
  br label %do.end217

do.end217:                                        ; preds = %do.cond216
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond218:                                       ; No predecessors!
  br label %do.end219

do.end219:                                        ; preds = %do.cond218
  br label %if.end220

if.end220:                                        ; preds = %do.end219, %if.end207
  %61 = load i64, ptr %attid, align 8
  %62 = load i64, ptr %file_typeid, align 8
  %63 = load ptr, ptr %data, align 8
  %call221 = call i32 @H5Awrite(i64 noundef %61, i64 noundef %62, ptr noundef %63)
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.then224, label %if.end231

if.then224:                                       ; preds = %if.end220
  br label %do.body225

do.body225:                                       ; preds = %if.then224
  br label %do.body226

do.body226:                                       ; preds = %do.body225
  store i32 -107, ptr %retval1, align 4
  br label %do.cond227

do.cond227:                                       ; preds = %do.body226
  br label %do.end228

do.end228:                                        ; preds = %do.cond227
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond229:                                       ; No predecessors!
  br label %do.end230

do.end230:                                        ; preds = %do.cond229
  br label %if.end231

if.end231:                                        ; preds = %do.end230, %if.end220
  br label %if.end244

if.else232:                                       ; preds = %land.lhs.true189, %lor.lhs.false
  %64 = load i64, ptr %existing_attid, align 8
  %65 = load i64, ptr %file_typeid, align 8
  %66 = load ptr, ptr %data, align 8
  %call233 = call i32 @H5Awrite(i64 noundef %64, i64 noundef %65, ptr noundef %66)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.then236, label %if.end243

if.then236:                                       ; preds = %if.else232
  br label %do.body237

do.body237:                                       ; preds = %if.then236
  br label %do.body238

do.body238:                                       ; preds = %do.body237
  store i32 -107, ptr %retval1, align 4
  br label %do.cond239

do.cond239:                                       ; preds = %do.body238
  br label %do.end240

do.end240:                                        ; preds = %do.cond239
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

do.cond241:                                       ; No predecessors!
  br label %do.end242

do.end242:                                        ; preds = %do.cond241
  br label %if.end243

if.end243:                                        ; preds = %do.end242, %if.else232
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.end231
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup245

cleanup245:                                       ; preds = %do.end240, %do.end228, %do.end217, %do.end204, %do.end180, %do.end169, %do.end158, %do.end147, %if.end244
  call void @llvm.lifetime.end.p0(i64 8, ptr %npoints) #10
  %cleanup.dest246 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest246, label %cleanup336 [
    i32 0, label %cleanup.cont247
    i32 6, label %exit
  ]

cleanup.cont247:                                  ; preds = %cleanup245
  br label %if.end273

if.else248:                                       ; preds = %if.end135
  %67 = load i64, ptr %locid, align 8
  %68 = load ptr, ptr %att.addr, align 8
  %hdr249 = getelementptr inbounds %struct.NC_ATT_INFO, ptr %68, i32 0, i32 0
  %name250 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr249, i32 0, i32 1
  %69 = load ptr, ptr %name250, align 8
  %70 = load i64, ptr %file_typeid, align 8
  %71 = load i64, ptr %spaceid, align 8
  %call251 = call i64 @H5Acreate1(i64 noundef %67, ptr noundef %69, i64 noundef %70, i64 noundef %71, i64 noundef 0)
  store i64 %call251, ptr %attid, align 8
  %cmp252 = icmp slt i64 %call251, 0
  br i1 %cmp252, label %if.then254, label %if.end261

if.then254:                                       ; preds = %if.else248
  br label %do.body255

do.body255:                                       ; preds = %if.then254
  br label %do.body256

do.body256:                                       ; preds = %do.body255
  store i32 -107, ptr %retval1, align 4
  br label %do.cond257

do.cond257:                                       ; preds = %do.body256
  br label %do.end258

do.end258:                                        ; preds = %do.cond257
  br label %exit

do.cond259:                                       ; No predecessors!
  br label %do.end260

do.end260:                                        ; preds = %do.cond259
  br label %if.end261

if.end261:                                        ; preds = %do.end260, %if.else248
  %72 = load i64, ptr %attid, align 8
  %73 = load i64, ptr %file_typeid, align 8
  %74 = load ptr, ptr %data, align 8
  %call262 = call i32 @H5Awrite(i64 noundef %72, i64 noundef %73, ptr noundef %74)
  %cmp263 = icmp slt i32 %call262, 0
  br i1 %cmp263, label %if.then265, label %if.end272

if.then265:                                       ; preds = %if.end261
  br label %do.body266

do.body266:                                       ; preds = %if.then265
  br label %do.body267

do.body267:                                       ; preds = %do.body266
  store i32 -107, ptr %retval1, align 4
  br label %do.cond268

do.cond268:                                       ; preds = %do.body267
  br label %do.end269

do.end269:                                        ; preds = %do.cond268
  br label %exit

do.cond270:                                       ; No predecessors!
  br label %do.end271

do.end271:                                        ; preds = %do.cond270
  br label %if.end272

if.end272:                                        ; preds = %do.end271, %if.end261
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %cleanup.cont247
  br label %exit

exit:                                             ; preds = %if.end273, %cleanup245, %cleanup, %do.end269, %do.end258, %do.end132, %do.end117, %do.end105, %do.end31, %do.end19, %do.end
  %75 = load i64, ptr %file_typeid, align 8
  %tobool274 = icmp ne i64 %75, 0
  br i1 %tobool274, label %land.lhs.true275, label %if.end282

land.lhs.true275:                                 ; preds = %exit
  %76 = load i64, ptr %file_typeid, align 8
  %call276 = call i32 @H5Tclose(i64 noundef %76)
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.then278, label %if.end282

if.then278:                                       ; preds = %land.lhs.true275
  br label %do.body279

do.body279:                                       ; preds = %if.then278
  store i32 -101, ptr %retval1, align 4
  br label %do.cond280

do.cond280:                                       ; preds = %do.body279
  br label %do.end281

do.end281:                                        ; preds = %do.cond280
  br label %if.end282

if.end282:                                        ; preds = %do.end281, %land.lhs.true275, %exit
  %77 = load i64, ptr %attid, align 8
  %cmp283 = icmp sgt i64 %77, 0
  br i1 %cmp283, label %land.lhs.true285, label %if.end293

land.lhs.true285:                                 ; preds = %if.end282
  %78 = load i64, ptr %attid, align 8
  %call286 = call i32 @H5Aclose(i64 noundef %78)
  %cmp287 = icmp slt i32 %call286, 0
  br i1 %cmp287, label %if.then289, label %if.end293

if.then289:                                       ; preds = %land.lhs.true285
  br label %do.body290

do.body290:                                       ; preds = %if.then289
  store i32 -101, ptr %retval1, align 4
  br label %do.cond291

do.cond291:                                       ; preds = %do.body290
  br label %do.end292

do.end292:                                        ; preds = %do.cond291
  br label %if.end293

if.end293:                                        ; preds = %do.end292, %land.lhs.true285, %if.end282
  %79 = load i64, ptr %existing_att_typeid, align 8
  %tobool294 = icmp ne i64 %79, 0
  br i1 %tobool294, label %land.lhs.true295, label %if.end302

land.lhs.true295:                                 ; preds = %if.end293
  %80 = load i64, ptr %existing_att_typeid, align 8
  %call296 = call i32 @H5Tclose(i64 noundef %80)
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.then298, label %if.end302

if.then298:                                       ; preds = %land.lhs.true295
  br label %do.body299

do.body299:                                       ; preds = %if.then298
  store i32 -101, ptr %retval1, align 4
  br label %do.cond300

do.cond300:                                       ; preds = %do.body299
  br label %do.end301

do.end301:                                        ; preds = %do.cond300
  br label %if.end302

if.end302:                                        ; preds = %do.end301, %land.lhs.true295, %if.end293
  %81 = load i64, ptr %existing_attid, align 8
  %cmp303 = icmp sgt i64 %81, 0
  br i1 %cmp303, label %land.lhs.true305, label %if.end313

land.lhs.true305:                                 ; preds = %if.end302
  %82 = load i64, ptr %existing_attid, align 8
  %call306 = call i32 @H5Aclose(i64 noundef %82)
  %cmp307 = icmp slt i32 %call306, 0
  br i1 %cmp307, label %if.then309, label %if.end313

if.then309:                                       ; preds = %land.lhs.true305
  br label %do.body310

do.body310:                                       ; preds = %if.then309
  store i32 -101, ptr %retval1, align 4
  br label %do.cond311

do.cond311:                                       ; preds = %do.body310
  br label %do.end312

do.end312:                                        ; preds = %do.cond311
  br label %if.end313

if.end313:                                        ; preds = %do.end312, %land.lhs.true305, %if.end302
  %83 = load i64, ptr %spaceid, align 8
  %cmp314 = icmp sgt i64 %83, 0
  br i1 %cmp314, label %land.lhs.true316, label %if.end324

land.lhs.true316:                                 ; preds = %if.end313
  %84 = load i64, ptr %spaceid, align 8
  %call317 = call i32 @H5Sclose(i64 noundef %84)
  %cmp318 = icmp slt i32 %call317, 0
  br i1 %cmp318, label %if.then320, label %if.end324

if.then320:                                       ; preds = %land.lhs.true316
  br label %do.body321

do.body321:                                       ; preds = %if.then320
  store i32 -101, ptr %retval1, align 4
  br label %do.cond322

do.cond322:                                       ; preds = %do.body321
  br label %do.end323

do.end323:                                        ; preds = %do.cond322
  br label %if.end324

if.end324:                                        ; preds = %do.end323, %land.lhs.true316, %if.end313
  %85 = load i64, ptr %existing_spaceid, align 8
  %cmp325 = icmp sgt i64 %85, 0
  br i1 %cmp325, label %land.lhs.true327, label %if.end335

land.lhs.true327:                                 ; preds = %if.end324
  %86 = load i64, ptr %existing_spaceid, align 8
  %call328 = call i32 @H5Sclose(i64 noundef %86)
  %cmp329 = icmp slt i32 %call328, 0
  br i1 %cmp329, label %if.then331, label %if.end335

if.then331:                                       ; preds = %land.lhs.true327
  br label %do.body332

do.body332:                                       ; preds = %if.then331
  store i32 -101, ptr %retval1, align 4
  br label %do.cond333

do.cond333:                                       ; preds = %do.body332
  br label %do.end334

do.end334:                                        ; preds = %do.cond333
  br label %if.end335

if.end335:                                        ; preds = %do.end334, %land.lhs.true327, %if.end324
  %87 = load i32, ptr %retval1, align 4
  store i32 %87, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup336

cleanup336:                                       ; preds = %if.end335, %cleanup245, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %phoney_data) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr_exists) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dims) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %existing_spaceid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %existing_attid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %existing_att_typeid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %file_typeid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %spaceid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %attid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %locid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %datasetid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  %88 = load i32, ptr %retval, align 4
  ret i32 %88
}

declare i64 @H5Aopen(i64 noundef, ptr noundef, i64 noundef) #3

declare i64 @H5Aget_type(i64 noundef) #3

declare i64 @H5Aget_space(i64 noundef) #3

declare i64 @H5Sget_simple_extent_npoints(i64 noundef) #3

declare i32 @H5Tequal(i64 noundef, i64 noundef) #3

declare i32 @H5Adelete(i64 noundef, ptr noundef) #3

declare i32 @H5Dset_extent(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @flag_atts_dirty(ptr noundef %attlist) #0 {
entry:
  %retval = alloca i32, align 4
  %attlist.addr = alloca ptr, align 8
  %att = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %attlist, ptr %attlist.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %att) #10
  store ptr null, ptr %att, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %0 = load ptr, ptr %attlist.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %attlist.addr, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end8

cond.false:                                       ; preds = %for.cond
  %3 = load ptr, ptr %attlist.addr, align 8
  %list = getelementptr inbounds %struct.NCindex, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %list, align 8
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.false
  br label %cond.end

cond.false6:                                      ; preds = %cond.false
  %5 = load ptr, ptr %attlist.addr, align 8
  %list7 = getelementptr inbounds %struct.NCindex, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %list7, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i64 [ 0, %cond.true5 ], [ %7, %cond.false6 ]
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ 0, %cond.true ], [ %cond, %cond.end ]
  %cmp10 = icmp ult i64 %conv, %cond9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end8
  %8 = load ptr, ptr %attlist.addr, align 8
  %9 = load i32, ptr %i, align 4
  %conv12 = sext i32 %9 to i64
  %call = call ptr @ncindexith(ptr noundef %8, i64 noundef %conv12)
  store ptr %call, ptr %att, align 8
  %10 = load ptr, ptr %att, align 8
  %cmp13 = icmp eq ptr %10, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %11 = load ptr, ptr %att, align 8
  %dirty = getelementptr inbounds %struct.NC_ATT_INFO, ptr %11, i32 0, i32 3
  store i32 1, ptr %dirty, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.then15
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %cond.end8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %att) #10
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare ptr @ncindexlookup(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @var_exists(i64 noundef %grpid, ptr noundef %name, ptr noundef %exists) #0 {
entry:
  %retval = alloca i32, align 4
  %grpid.addr = alloca i64, align 8
  %name.addr = alloca ptr, align 8
  %exists.addr = alloca ptr, align 8
  %link_exists = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %statbuf = alloca %struct.H5G_stat_t, align 8
  store i64 %grpid, ptr %grpid.addr, align 8
  store ptr %name, ptr %name.addr, align 8
  store ptr %exists, ptr %exists.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %link_exists) #10
  %0 = load ptr, ptr %exists.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load i64, ptr %grpid.addr, align 8
  %2 = load ptr, ptr %name.addr, align 8
  %call = call i32 @H5Lexists(i64 noundef %1, ptr noundef %2, i64 noundef 0)
  store i32 %call, ptr %link_exists, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %link_exists, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 80, ptr %statbuf) #10
  %4 = load i64, ptr %grpid.addr, align 8
  %5 = load ptr, ptr %name.addr, align 8
  %call2 = call i32 @H5Gget_objinfo(i64 noundef %4, ptr noundef %5, i1 noundef zeroext true, ptr noundef %statbuf)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then1
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  %type = getelementptr inbounds %struct.H5G_stat_t, ptr %statbuf, i32 0, i32 3
  %6 = load i32, ptr %type, align 4
  %cmp6 = icmp eq i32 1, %6
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr %exists.addr, align 8
  store i32 1, ptr %7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4
  call void @llvm.lifetime.end.p0(i64 80, ptr %statbuf) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9

if.end9:                                          ; preds = %cleanup.cont, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.end9, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %link_exists) #10
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @remove_coord_atts(i64 noundef %hdf_datasetid) #0 {
entry:
  %retval = alloca i32, align 4
  %hdf_datasetid.addr = alloca i64, align 8
  %attr_exists = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %hdf_datasetid, ptr %hdf_datasetid.addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr_exists) #10
  %0 = load i64, ptr %hdf_datasetid.addr, align 8
  %call = call i32 @H5Aexists(i64 noundef %0, ptr noundef @.str.31)
  store i32 %call, ptr %attr_exists, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %attr_exists, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %2 = load i64, ptr %hdf_datasetid.addr, align 8
  %call2 = call i32 @H5Adelete(i64 noundef %2, ptr noundef @.str.31)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then1
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then1
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %3 = load i64, ptr %hdf_datasetid.addr, align 8
  %call7 = call i32 @H5Aexists(i64 noundef %3, ptr noundef @.str.42)
  store i32 %call7, ptr %attr_exists, align 4
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %4 = load i32, ptr %attr_exists, align 4
  %tobool11 = icmp ne i32 %4, 0
  br i1 %tobool11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end10
  %5 = load i64, ptr %hdf_datasetid.addr, align 8
  %call13 = call i32 @H5Adelete(i64 noundef %5, ptr noundef @.str.42)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end10
  %6 = load i64, ptr %hdf_datasetid.addr, align 8
  %call18 = call i32 @H5Aexists(i64 noundef %6, ptr noundef @.str.43)
  store i32 %call18, ptr %attr_exists, align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %7 = load i32, ptr %attr_exists, align 4
  %tobool22 = icmp ne i32 %7, 0
  br i1 %tobool22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end21
  %8 = load i64, ptr %hdf_datasetid.addr, align 8
  %call24 = call i32 @H5Adelete(i64 noundef %8, ptr noundef @.str.43)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  store i32 -101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.then23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then20, %if.then15, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr_exists) #10
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @H5Dclose(i64 noundef) #3

declare i32 @H5Gunlink(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @var_create_dataset(ptr noundef %grp, ptr noundef %var, i32 noundef %write_dimid) #0 {
entry:
  %retval = alloca i32, align 4
  %grp.addr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %write_dimid.addr = alloca i32, align 4
  %hdf5_grp = alloca ptr, align 8
  %hdf5_var = alloca ptr, align 8
  %plistid = alloca i64, align 8
  %access_plistid = alloca i64, align 8
  %typeid = alloca i64, align 8
  %spaceid = alloca i64, align 8
  %chunksize = alloca [32 x i64], align 16
  %dimsize = alloca [32 x i64], align 16
  %maxdimsize = alloca [32 x i64], align 16
  %d = alloca i32, align 4
  %fillp = alloca ptr, align 8
  %dim = alloca ptr, align 8
  %name_to_use = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %params = alloca ptr, align 8
  %fill_typeid = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %filters144 = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %level = alloca i32, align 4
  %options_mask = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %code = alloca i32, align 4
  %unlimdim = alloca i32, align 4
  %type_size = alloca i64, align 8
  store ptr %grp, ptr %grp.addr, align 8
  store ptr %var, ptr %var.addr, align 8
  store i32 %write_dimid, ptr %write_dimid.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_grp) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %plistid) #10
  store i64 0, ptr %plistid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %access_plistid) #10
  store i64 0, ptr %access_plistid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %typeid) #10
  store i64 0, ptr %typeid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %spaceid) #10
  store i64 0, ptr %spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr %chunksize) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr %dimsize) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr %maxdimsize) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %fillp) #10
  store ptr null, ptr %fillp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dim) #10
  store ptr null, ptr %dim, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_to_use) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %params) #10
  store ptr null, ptr %params, align 8
  %0 = load ptr, ptr %grp.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %grp.addr, align 8
  %format_grp_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %format_grp_info, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %var.addr, align 8
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %4 = load ptr, ptr %var.addr, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %4, i32 0, i32 27
  %5 = load ptr, ptr %format_var_info, align 8
  %tobool6 = icmp ne ptr %5, null
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.44, ptr noundef @.str.1, i32 noundef 824, ptr noundef @__PRETTY_FUNCTION__.var_create_dataset) #11
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %grp.addr, align 8
  %format_grp_info7 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %format_grp_info7, align 8
  store ptr %7, ptr %hdf5_grp, align 8
  %8 = load ptr, ptr %var.addr, align 8
  %format_var_info8 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %8, i32 0, i32 27
  %9 = load ptr, ptr %format_var_info8, align 8
  store ptr %9, ptr %hdf5_var, align 8
  %call = call i32 @H5open()
  %10 = load i64, ptr @H5P_CLS_DATASET_CREATE_ID_g, align 8
  %call9 = call i64 @H5Pcreate(i64 noundef %10)
  store i64 %call9, ptr %plistid, align 8
  %cmp = icmp slt i64 %call9, 0
  br i1 %cmp, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then10
  br label %do.body11

do.body11:                                        ; preds = %do.body
  store i32 -101, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body11
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond12:                                        ; No predecessors!
  br label %do.end13

do.end13:                                         ; preds = %do.cond12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %if.end
  %call15 = call i32 @H5open()
  %11 = load i64, ptr @H5P_CLS_DATASET_ACCESS_ID_g, align 8
  %call16 = call i64 @H5Pcreate(i64 noundef %11)
  store i64 %call16, ptr %access_plistid, align 8
  %cmp17 = icmp slt i64 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end14
  br label %do.body19

do.body19:                                        ; preds = %if.then18
  br label %do.body20

do.body20:                                        ; preds = %do.body19
  store i32 -101, ptr %retval1, align 4
  br label %do.cond21

do.cond21:                                        ; preds = %do.body20
  br label %do.end22

do.end22:                                         ; preds = %do.cond21
  br label %exit

do.cond23:                                        ; No predecessors!
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.end14
  %12 = load i64, ptr %plistid, align 8
  %call26 = call i32 @H5Pset_obj_track_times(i64 noundef %12, i1 noundef zeroext false)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end35

if.then28:                                        ; preds = %if.end25
  br label %do.body29

do.body29:                                        ; preds = %if.then28
  br label %do.body30

do.body30:                                        ; preds = %do.body29
  store i32 -101, ptr %retval1, align 4
  br label %do.cond31

do.cond31:                                        ; preds = %do.body30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  br label %exit

do.cond33:                                        ; No predecessors!
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.end25
  %13 = load ptr, ptr %grp.addr, align 8
  %nc4_info = getelementptr inbounds %struct.NC_GRP_INFO, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %nc4_info, align 8
  %15 = load ptr, ptr %var.addr, align 8
  %type_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %15, i32 0, i32 13
  %16 = load ptr, ptr %type_info, align 8
  %hdr = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %16, i32 0, i32 0
  %id = getelementptr inbounds %struct.NC_OBJ, ptr %hdr, i32 0, i32 2
  %17 = load i64, ptr %id, align 8
  %conv = trunc i64 %17 to i32
  %18 = load ptr, ptr %var.addr, align 8
  %type_info36 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %18, i32 0, i32 13
  %19 = load ptr, ptr %type_info36, align 8
  %endianness = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %endianness, align 4
  %call37 = call i32 @nc4_get_hdf_typeid(ptr noundef %14, i32 noundef %conv, ptr noundef %typeid, i32 noundef %20)
  store i32 %call37, ptr %retval1, align 4
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end35
  br label %do.body40

do.body40:                                        ; preds = %if.then39
  br label %do.body41

do.body41:                                        ; preds = %do.body40
  %21 = load i32, ptr %retval1, align 4
  store i32 %21, ptr %retval1, align 4
  br label %do.cond42

do.cond42:                                        ; preds = %do.body41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %exit

do.cond44:                                        ; No predecessors!
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %if.end35
  %22 = load ptr, ptr %var.addr, align 8
  %no_fill = getelementptr inbounds %struct.NC_VAR_INFO, ptr %22, i32 0, i32 18
  %23 = load i32, ptr %no_fill, align 8
  %tobool47 = icmp ne i32 %23, 0
  br i1 %tobool47, label %if.then48, label %if.else60

if.then48:                                        ; preds = %if.end46
  %24 = load i64, ptr %plistid, align 8
  %call49 = call i32 @H5Pset_fill_time(i64 noundef %24, i32 noundef 1)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then52, label %if.end59

if.then52:                                        ; preds = %if.then48
  br label %do.body53

do.body53:                                        ; preds = %if.then52
  br label %do.body54

do.body54:                                        ; preds = %do.body53
  store i32 -101, ptr %retval1, align 4
  br label %do.cond55

do.cond55:                                        ; preds = %do.body54
  br label %do.end56

do.end56:                                         ; preds = %do.cond55
  br label %exit

do.cond57:                                        ; No predecessors!
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  br label %if.end59

if.end59:                                         ; preds = %do.end58, %if.then48
  br label %if.end140

if.else60:                                        ; preds = %if.end46
  %25 = load ptr, ptr %grp.addr, align 8
  %nc4_info61 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %nc4_info61, align 8
  %27 = load ptr, ptr %var.addr, align 8
  %call62 = call i32 @nc4_get_fill_value(ptr noundef %26, ptr noundef %27, ptr noundef %fillp)
  store i32 %call62, ptr %retval1, align 4
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.end71

if.then64:                                        ; preds = %if.else60
  br label %do.body65

do.body65:                                        ; preds = %if.then64
  br label %do.body66

do.body66:                                        ; preds = %do.body65
  %28 = load i32, ptr %retval1, align 4
  store i32 %28, ptr %retval1, align 4
  br label %do.cond67

do.cond67:                                        ; preds = %do.body66
  br label %do.end68

do.end68:                                         ; preds = %do.cond67
  br label %exit

do.cond69:                                        ; No predecessors!
  br label %do.end70

do.end70:                                         ; preds = %do.cond69
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %if.else60
  %29 = load ptr, ptr %fillp, align 8
  %tobool72 = icmp ne ptr %29, null
  br i1 %tobool72, label %if.then73, label %if.end139

if.then73:                                        ; preds = %if.end71
  %30 = load ptr, ptr %var.addr, align 8
  %type_info74 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %30, i32 0, i32 13
  %31 = load ptr, ptr %type_info74, align 8
  %nc_type_class = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %nc_type_class, align 4
  %cmp75 = icmp eq i32 %32, 12
  br i1 %cmp75, label %if.then77, label %if.else89

if.then77:                                        ; preds = %if.then73
  %33 = load i64, ptr %plistid, align 8
  %34 = load i64, ptr %typeid, align 8
  %35 = load ptr, ptr %fillp, align 8
  %call78 = call i32 @H5Pset_fill_value(i64 noundef %33, i64 noundef %34, ptr noundef %35)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end88

if.then81:                                        ; preds = %if.then77
  br label %do.body82

do.body82:                                        ; preds = %if.then81
  br label %do.body83

do.body83:                                        ; preds = %do.body82
  store i32 -101, ptr %retval1, align 4
  br label %do.cond84

do.cond84:                                        ; preds = %do.body83
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  br label %exit

do.cond86:                                        ; No predecessors!
  br label %do.end87

do.end87:                                         ; preds = %do.cond86
  br label %if.end88

if.end88:                                         ; preds = %do.end87, %if.then77
  br label %if.end138

if.else89:                                        ; preds = %if.then73
  call void @llvm.lifetime.start.p0(i64 8, ptr %fill_typeid) #10
  store i64 0, ptr %fill_typeid, align 8
  %36 = load ptr, ptr %grp.addr, align 8
  %nc4_info90 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %nc4_info90, align 8
  %38 = load ptr, ptr %var.addr, align 8
  %type_info91 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %38, i32 0, i32 13
  %39 = load ptr, ptr %type_info91, align 8
  %hdr92 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %39, i32 0, i32 0
  %id93 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr92, i32 0, i32 2
  %40 = load i64, ptr %id93, align 8
  %conv94 = trunc i64 %40 to i32
  %call95 = call i32 @nc4_get_hdf_typeid(ptr noundef %37, i32 noundef %conv94, ptr noundef %fill_typeid, i32 noundef 0)
  store i32 %call95, ptr %retval1, align 4
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end104

if.then97:                                        ; preds = %if.else89
  br label %do.body98

do.body98:                                        ; preds = %if.then97
  br label %do.body99

do.body99:                                        ; preds = %do.body98
  %41 = load i32, ptr %retval1, align 4
  store i32 %41, ptr %retval1, align 4
  br label %do.cond100

do.cond100:                                       ; preds = %do.body99
  br label %do.end101

do.end101:                                        ; preds = %do.cond100
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond102:                                       ; No predecessors!
  br label %do.end103

do.end103:                                        ; preds = %do.cond102
  br label %if.end104

if.end104:                                        ; preds = %do.end103, %if.else89
  %42 = load i64, ptr %plistid, align 8
  %43 = load i64, ptr %fill_typeid, align 8
  %44 = load ptr, ptr %fillp, align 8
  %call105 = call i32 @H5Pset_fill_value(i64 noundef %42, i64 noundef %43, ptr noundef %44)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.end126

if.then108:                                       ; preds = %if.end104
  %45 = load i64, ptr %fill_typeid, align 8
  %call109 = call i32 @H5Tclose(i64 noundef %45)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.end119

if.then112:                                       ; preds = %if.then108
  br label %do.body113

do.body113:                                       ; preds = %if.then112
  br label %do.body114

do.body114:                                       ; preds = %do.body113
  store i32 -101, ptr %retval1, align 4
  br label %do.cond115

do.cond115:                                       ; preds = %do.body114
  br label %do.end116

do.end116:                                        ; preds = %do.cond115
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond117:                                       ; No predecessors!
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %if.then108
  br label %do.body120

do.body120:                                       ; preds = %if.end119
  br label %do.body121

do.body121:                                       ; preds = %do.body120
  store i32 -101, ptr %retval1, align 4
  br label %do.cond122

do.cond122:                                       ; preds = %do.body121
  br label %do.end123

do.end123:                                        ; preds = %do.cond122
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond124:                                       ; No predecessors!
  br label %do.end125

do.end125:                                        ; preds = %do.cond124
  br label %if.end126

if.end126:                                        ; preds = %do.end125, %if.end104
  %46 = load i64, ptr %fill_typeid, align 8
  %call127 = call i32 @H5Tclose(i64 noundef %46)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then130, label %if.end137

if.then130:                                       ; preds = %if.end126
  br label %do.body131

do.body131:                                       ; preds = %if.then130
  br label %do.body132

do.body132:                                       ; preds = %do.body131
  store i32 -101, ptr %retval1, align 4
  br label %do.cond133

do.cond133:                                       ; preds = %do.body132
  br label %do.end134

do.end134:                                        ; preds = %do.cond133
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

do.cond135:                                       ; No predecessors!
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  br label %if.end137

if.end137:                                        ; preds = %do.end136, %if.end126
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end134, %do.end123, %do.end116, %do.end101, %if.end137
  call void @llvm.lifetime.end.p0(i64 8, ptr %fill_typeid) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup709 [
    i32 0, label %cleanup.cont
    i32 6, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end138

if.end138:                                        ; preds = %cleanup.cont, %if.end88
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end71
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end59
  %47 = load ptr, ptr %var.addr, align 8
  %filters = getelementptr inbounds %struct.NC_VAR_INFO, ptr %47, i32 0, i32 28
  %48 = load ptr, ptr %filters, align 8
  %cmp141 = icmp ne ptr %48, null
  br i1 %cmp141, label %if.then143, label %if.end277

if.then143:                                       ; preds = %if.end140
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %filters144) #10
  %49 = load ptr, ptr %var.addr, align 8
  %filters145 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %49, i32 0, i32 28
  %50 = load ptr, ptr %filters145, align 8
  store ptr %50, ptr %filters144, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then143
  %51 = load i32, ptr %j, align 4
  %conv146 = sext i32 %51 to i64
  %52 = load ptr, ptr %filters144, align 8
  %cmp147 = icmp eq ptr %52, null
  br i1 %cmp147, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %53 = load ptr, ptr %filters144, align 8
  %length = getelementptr inbounds %struct.NClist, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %length, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %54, %cond.false ]
  %cmp149 = icmp ult i64 %conv146, %cond
  br i1 %cmp149, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #10
  %55 = load ptr, ptr %filters144, align 8
  %56 = load i32, ptr %j, align 4
  %conv151 = sext i32 %56 to i64
  %call152 = call ptr @nclistget(ptr noundef %55, i64 noundef %conv151)
  store ptr %call152, ptr %fi, align 8
  %57 = load ptr, ptr %fi, align 8
  %filterid = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %filterid, align 4
  %cmp153 = icmp eq i32 %58, 3
  br i1 %cmp153, label %if.then155, label %if.else167

if.then155:                                       ; preds = %for.body
  %59 = load i64, ptr %plistid, align 8
  %call156 = call i32 @H5Pset_fletcher32(i64 noundef %59)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then159, label %if.end166

if.then159:                                       ; preds = %if.then155
  br label %do.body160

do.body160:                                       ; preds = %if.then159
  br label %do.body161

do.body161:                                       ; preds = %do.body160
  store i32 -101, ptr %retval1, align 4
  br label %do.cond162

do.cond162:                                       ; preds = %do.body161
  br label %do.end163

do.end163:                                        ; preds = %do.cond162
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup270

do.cond164:                                       ; No predecessors!
  br label %do.end165

do.end165:                                        ; preds = %do.cond164
  br label %if.end166

if.end166:                                        ; preds = %do.end165, %if.then155
  br label %if.end269

if.else167:                                       ; preds = %for.body
  %60 = load ptr, ptr %fi, align 8
  %filterid168 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %filterid168, align 4
  %cmp169 = icmp eq i32 %61, 2
  br i1 %cmp169, label %if.then171, label %if.else183

if.then171:                                       ; preds = %if.else167
  %62 = load i64, ptr %plistid, align 8
  %call172 = call i32 @H5Pset_shuffle(i64 noundef %62)
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.end182

if.then175:                                       ; preds = %if.then171
  br label %do.body176

do.body176:                                       ; preds = %if.then175
  br label %do.body177

do.body177:                                       ; preds = %do.body176
  store i32 -101, ptr %retval1, align 4
  br label %do.cond178

do.cond178:                                       ; preds = %do.body177
  br label %do.end179

do.end179:                                        ; preds = %do.cond178
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup270

do.cond180:                                       ; No predecessors!
  br label %do.end181

do.end181:                                        ; preds = %do.cond180
  br label %if.end182

if.end182:                                        ; preds = %do.end181, %if.then171
  br label %if.end268

if.else183:                                       ; preds = %if.else167
  %63 = load ptr, ptr %fi, align 8
  %filterid184 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %filterid184, align 4
  %cmp185 = icmp eq i32 %64, 1
  br i1 %cmp185, label %if.then187, label %if.else213

if.then187:                                       ; preds = %if.else183
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #10
  %65 = load ptr, ptr %fi, align 8
  %nparams = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %65, i32 0, i32 2
  %66 = load i64, ptr %nparams, align 8
  %cmp188 = icmp ne i64 %66, 1
  br i1 %cmp188, label %if.then190, label %if.end197

if.then190:                                       ; preds = %if.then187
  br label %do.body191

do.body191:                                       ; preds = %if.then190
  br label %do.body192

do.body192:                                       ; preds = %do.body191
  store i32 -132, ptr %retval1, align 4
  br label %do.cond193

do.cond193:                                       ; preds = %do.body192
  br label %do.end194

do.end194:                                        ; preds = %do.cond193
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup210

do.cond195:                                       ; No predecessors!
  br label %do.end196

do.end196:                                        ; preds = %do.cond195
  br label %if.end197

if.end197:                                        ; preds = %do.end196, %if.then187
  %67 = load ptr, ptr %fi, align 8
  %params198 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %67, i32 0, i32 3
  %68 = load ptr, ptr %params198, align 8
  %arrayidx = getelementptr inbounds i32, ptr %68, i64 0
  %69 = load i32, ptr %arrayidx, align 4
  store i32 %69, ptr %level, align 4
  %70 = load i64, ptr %plistid, align 8
  %71 = load i32, ptr %level, align 4
  %call199 = call i32 @H5Pset_deflate(i64 noundef %70, i32 noundef %71)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %if.then202, label %if.end209

if.then202:                                       ; preds = %if.end197
  br label %do.body203

do.body203:                                       ; preds = %if.then202
  br label %do.body204

do.body204:                                       ; preds = %do.body203
  store i32 -132, ptr %retval1, align 4
  br label %do.cond205

do.cond205:                                       ; preds = %do.body204
  br label %do.end206

do.end206:                                        ; preds = %do.cond205
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup210

do.cond207:                                       ; No predecessors!
  br label %do.end208

do.end208:                                        ; preds = %do.cond207
  br label %if.end209

if.end209:                                        ; preds = %do.end208, %if.end197
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup210

cleanup210:                                       ; preds = %do.end206, %do.end194, %if.end209
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #10
  %cleanup.dest211 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest211, label %cleanup270 [
    i32 0, label %cleanup.cont212
  ]

cleanup.cont212:                                  ; preds = %cleanup210
  br label %if.end267

if.else213:                                       ; preds = %if.else183
  %72 = load ptr, ptr %fi, align 8
  %filterid214 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %filterid214, align 4
  %cmp215 = icmp eq i32 %73, 4
  br i1 %cmp215, label %if.then217, label %if.else248

if.then217:                                       ; preds = %if.else213
  call void @llvm.lifetime.start.p0(i64 4, ptr %options_mask) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits_per_pixel) #10
  %74 = load ptr, ptr %fi, align 8
  %nparams218 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %74, i32 0, i32 2
  %75 = load i64, ptr %nparams218, align 8
  %cmp219 = icmp ne i64 %75, 2
  br i1 %cmp219, label %if.then221, label %if.end228

if.then221:                                       ; preds = %if.then217
  br label %do.body222

do.body222:                                       ; preds = %if.then221
  br label %do.body223

do.body223:                                       ; preds = %do.body222
  store i32 -132, ptr %retval1, align 4
  br label %do.cond224

do.cond224:                                       ; preds = %do.body223
  br label %do.end225

do.end225:                                        ; preds = %do.cond224
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

do.cond226:                                       ; No predecessors!
  br label %do.end227

do.end227:                                        ; preds = %do.cond226
  br label %if.end228

if.end228:                                        ; preds = %do.end227, %if.then217
  %76 = load ptr, ptr %fi, align 8
  %params229 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %76, i32 0, i32 3
  %77 = load ptr, ptr %params229, align 8
  %arrayidx230 = getelementptr inbounds i32, ptr %77, i64 0
  %78 = load i32, ptr %arrayidx230, align 4
  store i32 %78, ptr %options_mask, align 4
  %79 = load ptr, ptr %fi, align 8
  %params231 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %79, i32 0, i32 3
  %80 = load ptr, ptr %params231, align 8
  %arrayidx232 = getelementptr inbounds i32, ptr %80, i64 1
  %81 = load i32, ptr %arrayidx232, align 4
  store i32 %81, ptr %bits_per_pixel, align 4
  %82 = load i64, ptr %plistid, align 8
  %83 = load i32, ptr %options_mask, align 4
  %84 = load i32, ptr %bits_per_pixel, align 4
  %call233 = call i32 @H5Pset_szip(i64 noundef %82, i32 noundef %83, i32 noundef %84)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.then236, label %if.end243

if.then236:                                       ; preds = %if.end228
  br label %do.body237

do.body237:                                       ; preds = %if.then236
  br label %do.body238

do.body238:                                       ; preds = %do.body237
  store i32 -132, ptr %retval1, align 4
  br label %do.cond239

do.cond239:                                       ; preds = %do.body238
  br label %do.end240

do.end240:                                        ; preds = %do.cond239
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

do.cond241:                                       ; No predecessors!
  br label %do.end242

do.end242:                                        ; preds = %do.cond241
  br label %if.end243

if.end243:                                        ; preds = %do.end242, %if.end228
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup244

cleanup244:                                       ; preds = %do.end240, %do.end225, %if.end243
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits_per_pixel) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %options_mask) #10
  %cleanup.dest246 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest246, label %cleanup270 [
    i32 0, label %cleanup.cont247
  ]

cleanup.cont247:                                  ; preds = %cleanup244
  br label %if.end266

if.else248:                                       ; preds = %if.else213
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #10
  %85 = load i64, ptr %plistid, align 8
  %86 = load ptr, ptr %fi, align 8
  %filterid249 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %86, i32 0, i32 1
  %87 = load i32, ptr %filterid249, align 4
  %88 = load ptr, ptr %fi, align 8
  %nparams250 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %88, i32 0, i32 2
  %89 = load i64, ptr %nparams250, align 8
  %90 = load ptr, ptr %fi, align 8
  %params251 = getelementptr inbounds %struct.NC_HDF5_Filter, ptr %90, i32 0, i32 3
  %91 = load ptr, ptr %params251, align 8
  %call252 = call i32 @H5Pset_filter(i64 noundef %85, i32 noundef %87, i32 noundef 0, i64 noundef %89, ptr noundef %91)
  store i32 %call252, ptr %code, align 4
  %92 = load i32, ptr %code, align 4
  %cmp253 = icmp slt i32 %92, 0
  br i1 %cmp253, label %if.then255, label %if.end262

if.then255:                                       ; preds = %if.else248
  br label %do.body256

do.body256:                                       ; preds = %if.then255
  br label %do.body257

do.body257:                                       ; preds = %do.body256
  store i32 -132, ptr %retval1, align 4
  br label %do.cond258

do.cond258:                                       ; preds = %do.body257
  br label %do.end259

do.end259:                                        ; preds = %do.cond258
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup263

do.cond260:                                       ; No predecessors!
  br label %do.end261

do.end261:                                        ; preds = %do.cond260
  br label %if.end262

if.end262:                                        ; preds = %do.end261, %if.else248
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup263

cleanup263:                                       ; preds = %do.end259, %if.end262
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #10
  %cleanup.dest264 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest264, label %cleanup270 [
    i32 0, label %cleanup.cont265
  ]

cleanup.cont265:                                  ; preds = %cleanup263
  br label %if.end266

if.end266:                                        ; preds = %cleanup.cont265, %cleanup.cont247
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %cleanup.cont212
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.end182
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.end166
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup270

cleanup270:                                       ; preds = %do.end179, %do.end163, %if.end269, %cleanup263, %cleanup244, %cleanup210
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #10
  %cleanup.dest271 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest271, label %cleanup273 [
    i32 0, label %cleanup.cont272
  ]

cleanup.cont272:                                  ; preds = %cleanup270
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont272
  %93 = load i32, ptr %j, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %cond.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup273

cleanup273:                                       ; preds = %for.end, %cleanup270
  call void @llvm.lifetime.end.p0(i64 8, ptr %filters144) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  %cleanup.dest275 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest275, label %cleanup709 [
    i32 0, label %cleanup.cont276
    i32 6, label %exit
  ]

cleanup.cont276:                                  ; preds = %cleanup273
  br label %if.end277

if.end277:                                        ; preds = %cleanup.cont276, %if.end140
  %94 = load ptr, ptr %var.addr, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %94, i32 0, i32 3
  %95 = load i64, ptr %ndims, align 8
  %tobool278 = icmp ne i64 %95, 0
  br i1 %tobool278, label %if.then279, label %if.else446

if.then279:                                       ; preds = %if.end277
  call void @llvm.lifetime.start.p0(i64 4, ptr %unlimdim) #10
  store i32 0, ptr %unlimdim, align 4
  store i32 0, ptr %d, align 4
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc304, %if.then279
  %96 = load i32, ptr %d, align 4
  %conv281 = sext i32 %96 to i64
  %97 = load ptr, ptr %var.addr, align 8
  %ndims282 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %97, i32 0, i32 3
  %98 = load i64, ptr %ndims282, align 8
  %cmp283 = icmp ult i64 %conv281, %98
  br i1 %cmp283, label %for.body285, label %for.end306

for.body285:                                      ; preds = %for.cond280
  %99 = load ptr, ptr %var.addr, align 8
  %dim286 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %99, i32 0, i32 5
  %100 = load ptr, ptr %dim286, align 8
  %101 = load i32, ptr %d, align 4
  %idxprom = sext i32 %101 to i64
  %arrayidx287 = getelementptr inbounds ptr, ptr %100, i64 %idxprom
  %102 = load ptr, ptr %arrayidx287, align 8
  store ptr %102, ptr %dim, align 8
  %103 = load ptr, ptr %dim, align 8
  %tobool288 = icmp ne ptr %103, null
  br i1 %tobool288, label %land.lhs.true289, label %if.else298

land.lhs.true289:                                 ; preds = %for.body285
  %104 = load ptr, ptr %dim, align 8
  %hdr290 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %104, i32 0, i32 0
  %id291 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr290, i32 0, i32 2
  %105 = load i64, ptr %id291, align 8
  %106 = load ptr, ptr %var.addr, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %106, i32 0, i32 4
  %107 = load ptr, ptr %dimids, align 8
  %108 = load i32, ptr %d, align 4
  %idxprom292 = sext i32 %108 to i64
  %arrayidx293 = getelementptr inbounds i32, ptr %107, i64 %idxprom292
  %109 = load i32, ptr %arrayidx293, align 4
  %conv294 = sext i32 %109 to i64
  %cmp295 = icmp eq i64 %105, %conv294
  br i1 %cmp295, label %if.then297, label %if.else298

if.then297:                                       ; preds = %land.lhs.true289
  br label %if.end299

if.else298:                                       ; preds = %land.lhs.true289, %for.body285
  call void @__assert_fail(ptr noundef @.str.45, ptr noundef @.str.1, i32 noundef 948, ptr noundef @__PRETTY_FUNCTION__.var_create_dataset) #11
  unreachable

if.end299:                                        ; preds = %if.then297
  %110 = load ptr, ptr %dim, align 8
  %unlimited = getelementptr inbounds %struct.NC_DIM_INFO, ptr %110, i32 0, i32 3
  %111 = load i32, ptr %unlimited, align 8
  %tobool300 = icmp ne i32 %111, 0
  br i1 %tobool300, label %if.then301, label %if.end303

if.then301:                                       ; preds = %if.end299
  %112 = load i32, ptr %unlimdim, align 4
  %inc302 = add nsw i32 %112, 1
  store i32 %inc302, ptr %unlimdim, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.then301, %if.end299
  br label %for.inc304

for.inc304:                                       ; preds = %if.end303
  %113 = load i32, ptr %d, align 4
  %inc305 = add nsw i32 %113, 1
  store i32 %inc305, ptr %d, align 4
  br label %for.cond280, !llvm.loop !40

for.end306:                                       ; preds = %for.cond280
  %114 = load ptr, ptr %var.addr, align 8
  %filters307 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %114, i32 0, i32 28
  %115 = load ptr, ptr %filters307, align 8
  %cmp308 = icmp eq ptr %115, null
  br i1 %cmp308, label %cond.true310, label %cond.false311

cond.true310:                                     ; preds = %for.end306
  br label %cond.end314

cond.false311:                                    ; preds = %for.end306
  %116 = load ptr, ptr %var.addr, align 8
  %filters312 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %116, i32 0, i32 28
  %117 = load ptr, ptr %filters312, align 8
  %length313 = getelementptr inbounds %struct.NClist, ptr %117, i32 0, i32 1
  %118 = load i64, ptr %length313, align 8
  br label %cond.end314

cond.end314:                                      ; preds = %cond.false311, %cond.true310
  %cond315 = phi i64 [ 0, %cond.true310 ], [ %118, %cond.false311 ]
  %cmp316 = icmp eq i64 %cond315, 0
  br i1 %cmp316, label %land.lhs.true318, label %if.end327

land.lhs.true318:                                 ; preds = %cond.end314
  %119 = load ptr, ptr %var.addr, align 8
  %chunksizes = getelementptr inbounds %struct.NC_VAR_INFO, ptr %119, i32 0, i32 20
  %120 = load ptr, ptr %chunksizes, align 8
  %cmp319 = icmp eq ptr %120, null
  br i1 %cmp319, label %land.lhs.true324, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true318
  %121 = load ptr, ptr %var.addr, align 8
  %chunksizes321 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %121, i32 0, i32 20
  %122 = load ptr, ptr %chunksizes321, align 8
  %arrayidx322 = getelementptr inbounds i64, ptr %122, i64 0
  %123 = load i64, ptr %arrayidx322, align 8
  %tobool323 = icmp ne i64 %123, 0
  br i1 %tobool323, label %if.end327, label %land.lhs.true324

land.lhs.true324:                                 ; preds = %lor.lhs.false, %land.lhs.true318
  %124 = load i32, ptr %unlimdim, align 4
  %tobool325 = icmp ne i32 %124, 0
  br i1 %tobool325, label %if.end327, label %if.then326

if.then326:                                       ; preds = %land.lhs.true324
  %125 = load ptr, ptr %var.addr, align 8
  %storage = getelementptr inbounds %struct.NC_VAR_INFO, ptr %125, i32 0, i32 21
  store i32 1, ptr %storage, align 8
  br label %if.end327

if.end327:                                        ; preds = %if.then326, %land.lhs.true324, %lor.lhs.false, %cond.end314
  store i32 0, ptr %d, align 4
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc426, %if.end327
  %126 = load i32, ptr %d, align 4
  %conv329 = sext i32 %126 to i64
  %127 = load ptr, ptr %var.addr, align 8
  %ndims330 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %127, i32 0, i32 3
  %128 = load i64, ptr %ndims330, align 8
  %cmp331 = icmp ult i64 %conv329, %128
  br i1 %cmp331, label %for.body333, label %for.end428

for.body333:                                      ; preds = %for.cond328
  %129 = load ptr, ptr %var.addr, align 8
  %dim334 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %129, i32 0, i32 5
  %130 = load ptr, ptr %dim334, align 8
  %131 = load i32, ptr %d, align 4
  %idxprom335 = sext i32 %131 to i64
  %arrayidx336 = getelementptr inbounds ptr, ptr %130, i64 %idxprom335
  %132 = load ptr, ptr %arrayidx336, align 8
  store ptr %132, ptr %dim, align 8
  %133 = load ptr, ptr %dim, align 8
  %tobool337 = icmp ne ptr %133, null
  br i1 %tobool337, label %land.lhs.true338, label %if.else348

land.lhs.true338:                                 ; preds = %for.body333
  %134 = load ptr, ptr %dim, align 8
  %hdr339 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %134, i32 0, i32 0
  %id340 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr339, i32 0, i32 2
  %135 = load i64, ptr %id340, align 8
  %136 = load ptr, ptr %var.addr, align 8
  %dimids341 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %136, i32 0, i32 4
  %137 = load ptr, ptr %dimids341, align 8
  %138 = load i32, ptr %d, align 4
  %idxprom342 = sext i32 %138 to i64
  %arrayidx343 = getelementptr inbounds i32, ptr %137, i64 %idxprom342
  %139 = load i32, ptr %arrayidx343, align 4
  %conv344 = sext i32 %139 to i64
  %cmp345 = icmp eq i64 %135, %conv344
  br i1 %cmp345, label %if.then347, label %if.else348

if.then347:                                       ; preds = %land.lhs.true338
  br label %if.end349

if.else348:                                       ; preds = %land.lhs.true338, %for.body333
  call void @__assert_fail(ptr noundef @.str.45, ptr noundef @.str.1, i32 noundef 965, ptr noundef @__PRETTY_FUNCTION__.var_create_dataset) #11
  unreachable

if.end349:                                        ; preds = %if.then347
  %140 = load ptr, ptr %dim, align 8
  %unlimited350 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %140, i32 0, i32 3
  %141 = load i32, ptr %unlimited350, align 8
  %tobool351 = icmp ne i32 %141, 0
  br i1 %tobool351, label %cond.true352, label %cond.false353

cond.true352:                                     ; preds = %if.end349
  br label %cond.end354

cond.false353:                                    ; preds = %if.end349
  %142 = load ptr, ptr %dim, align 8
  %len = getelementptr inbounds %struct.NC_DIM_INFO, ptr %142, i32 0, i32 2
  %143 = load i64, ptr %len, align 8
  br label %cond.end354

cond.end354:                                      ; preds = %cond.false353, %cond.true352
  %cond355 = phi i64 [ 0, %cond.true352 ], [ %143, %cond.false353 ]
  %144 = load i32, ptr %d, align 4
  %idxprom356 = sext i32 %144 to i64
  %arrayidx357 = getelementptr inbounds [32 x i64], ptr %dimsize, i64 0, i64 %idxprom356
  store i64 %cond355, ptr %arrayidx357, align 8
  %145 = load ptr, ptr %dim, align 8
  %unlimited358 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %145, i32 0, i32 3
  %146 = load i32, ptr %unlimited358, align 8
  %tobool359 = icmp ne i32 %146, 0
  br i1 %tobool359, label %cond.true360, label %cond.false361

cond.true360:                                     ; preds = %cond.end354
  br label %cond.end363

cond.false361:                                    ; preds = %cond.end354
  %147 = load ptr, ptr %dim, align 8
  %len362 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %147, i32 0, i32 2
  %148 = load i64, ptr %len362, align 8
  br label %cond.end363

cond.end363:                                      ; preds = %cond.false361, %cond.true360
  %cond364 = phi i64 [ -1, %cond.true360 ], [ %148, %cond.false361 ]
  %149 = load i32, ptr %d, align 4
  %idxprom365 = sext i32 %149 to i64
  %arrayidx366 = getelementptr inbounds [32 x i64], ptr %maxdimsize, i64 0, i64 %idxprom365
  store i64 %cond364, ptr %arrayidx366, align 8
  %150 = load ptr, ptr %var.addr, align 8
  %storage367 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %150, i32 0, i32 21
  %151 = load i32, ptr %storage367, align 8
  %cmp368 = icmp eq i32 %151, 0
  br i1 %cmp368, label %if.then370, label %if.end425

if.then370:                                       ; preds = %cond.end363
  %152 = load ptr, ptr %var.addr, align 8
  %chunksizes371 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %152, i32 0, i32 20
  %153 = load ptr, ptr %chunksizes371, align 8
  %154 = load i32, ptr %d, align 4
  %idxprom372 = sext i32 %154 to i64
  %arrayidx373 = getelementptr inbounds i64, ptr %153, i64 %idxprom372
  %155 = load i64, ptr %arrayidx373, align 8
  %tobool374 = icmp ne i64 %155, 0
  br i1 %tobool374, label %if.then375, label %if.else381

if.then375:                                       ; preds = %if.then370
  %156 = load ptr, ptr %var.addr, align 8
  %chunksizes376 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %156, i32 0, i32 20
  %157 = load ptr, ptr %chunksizes376, align 8
  %158 = load i32, ptr %d, align 4
  %idxprom377 = sext i32 %158 to i64
  %arrayidx378 = getelementptr inbounds i64, ptr %157, i64 %idxprom377
  %159 = load i64, ptr %arrayidx378, align 8
  %160 = load i32, ptr %d, align 4
  %idxprom379 = sext i32 %160 to i64
  %arrayidx380 = getelementptr inbounds [32 x i64], ptr %chunksize, i64 0, i64 %idxprom379
  store i64 %159, ptr %arrayidx380, align 8
  br label %if.end424

if.else381:                                       ; preds = %if.then370
  call void @llvm.lifetime.start.p0(i64 8, ptr %type_size) #10
  %161 = load ptr, ptr %var.addr, align 8
  %type_info382 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %161, i32 0, i32 13
  %162 = load ptr, ptr %type_info382, align 8
  %nc_type_class383 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %162, i32 0, i32 6
  %163 = load i32, ptr %nc_type_class383, align 4
  %cmp384 = icmp eq i32 %163, 12
  br i1 %cmp384, label %if.then386, label %if.else387

if.then386:                                       ; preds = %if.else381
  store i64 8, ptr %type_size, align 8
  br label %if.end389

if.else387:                                       ; preds = %if.else381
  %164 = load ptr, ptr %var.addr, align 8
  %type_info388 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %164, i32 0, i32 13
  %165 = load ptr, ptr %type_info388, align 8
  %size = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %165, i32 0, i32 4
  %166 = load i64, ptr %size, align 8
  store i64 %166, ptr %type_size, align 8
  br label %if.end389

if.end389:                                        ; preds = %if.else387, %if.then386
  %167 = load ptr, ptr %dim, align 8
  %unlimited390 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %167, i32 0, i32 3
  %168 = load i32, ptr %unlimited390, align 8
  %tobool391 = icmp ne i32 %168, 0
  br i1 %tobool391, label %if.then392, label %if.else395

if.then392:                                       ; preds = %if.end389
  %169 = load i32, ptr %d, align 4
  %idxprom393 = sext i32 %169 to i64
  %arrayidx394 = getelementptr inbounds [32 x i64], ptr %chunksize, i64 0, i64 %idxprom393
  store i64 1, ptr %arrayidx394, align 8
  br label %if.end405

if.else395:                                       ; preds = %if.end389
  %170 = load i64, ptr %type_size, align 8
  %conv396 = uitofp i64 %170 to double
  %div = fdiv double 0x4150000000000000, %conv396
  %171 = load ptr, ptr %var.addr, align 8
  %ndims397 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %171, i32 0, i32 3
  %172 = load i64, ptr %ndims397, align 8
  %173 = load i32, ptr %unlimdim, align 4
  %conv398 = sext i32 %173 to i64
  %sub = sub i64 %172, %conv398
  %conv399 = uitofp i64 %sub to double
  %div400 = fdiv double 1.000000e+00, %conv399
  %call401 = call double @pow(double noundef %div, double noundef %div400) #10
  %conv402 = fptoui double %call401 to i64
  %174 = load i32, ptr %d, align 4
  %idxprom403 = sext i32 %174 to i64
  %arrayidx404 = getelementptr inbounds [32 x i64], ptr %chunksize, i64 0, i64 %idxprom403
  store i64 %conv402, ptr %arrayidx404, align 8
  br label %if.end405

if.end405:                                        ; preds = %if.else395, %if.then392
  %175 = load ptr, ptr %dim, align 8
  %unlimited406 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %175, i32 0, i32 3
  %176 = load i32, ptr %unlimited406, align 8
  %tobool407 = icmp ne i32 %176, 0
  br i1 %tobool407, label %if.end418, label %land.lhs.true408

land.lhs.true408:                                 ; preds = %if.end405
  %177 = load i32, ptr %d, align 4
  %idxprom409 = sext i32 %177 to i64
  %arrayidx410 = getelementptr inbounds [32 x i64], ptr %chunksize, i64 0, i64 %idxprom409
  %178 = load i64, ptr %arrayidx410, align 8
  %179 = load ptr, ptr %dim, align 8
  %len411 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %179, i32 0, i32 2
  %180 = load i64, ptr %len411, align 8
  %cmp412 = icmp ugt i64 %178, %180
  br i1 %cmp412, label %if.then414, label %if.end418

if.then414:                                       ; preds = %land.lhs.true408
  %181 = load ptr, ptr %dim, align 8
  %len415 = getelementptr inbounds %struct.NC_DIM_INFO, ptr %181, i32 0, i32 2
  %182 = load i64, ptr %len415, align 8
  %183 = load i32, ptr %d, align 4
  %idxprom416 = sext i32 %183 to i64
  %arrayidx417 = getelementptr inbounds [32 x i64], ptr %chunksize, i64 0, i64 %idxprom416
  store i64 %182, ptr %arrayidx417, align 8
  br label %if.end418

if.end418:                                        ; preds = %if.then414, %land.lhs.true408, %if.end405
  %184 = load i32, ptr %d, align 4
  %idxprom419 = sext i32 %184 to i64
  %arrayidx420 = getelementptr inbounds [32 x i64], ptr %chunksize, i64 0, i64 %idxprom419
  %185 = load i64, ptr %arrayidx420, align 8
  %186 = load ptr, ptr %var.addr, align 8
  %chunksizes421 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %186, i32 0, i32 20
  %187 = load ptr, ptr %chunksizes421, align 8
  %188 = load i32, ptr %d, align 4
  %idxprom422 = sext i32 %188 to i64
  %arrayidx423 = getelementptr inbounds i64, ptr %187, i64 %idxprom422
  store i64 %185, ptr %arrayidx423, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %type_size) #10
  br label %if.end424

if.end424:                                        ; preds = %if.end418, %if.then375
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %cond.end363
  br label %for.inc426

for.inc426:                                       ; preds = %if.end425
  %189 = load i32, ptr %d, align 4
  %inc427 = add nsw i32 %189, 1
  store i32 %inc427, ptr %d, align 4
  br label %for.cond328, !llvm.loop !41

for.end428:                                       ; preds = %for.cond328
  %190 = load ptr, ptr %var.addr, align 8
  %ndims429 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %190, i32 0, i32 3
  %191 = load i64, ptr %ndims429, align 8
  %conv430 = trunc i64 %191 to i32
  %arraydecay = getelementptr inbounds [32 x i64], ptr %dimsize, i64 0, i64 0
  %arraydecay431 = getelementptr inbounds [32 x i64], ptr %maxdimsize, i64 0, i64 0
  %call432 = call i64 @H5Screate_simple(i32 noundef %conv430, ptr noundef %arraydecay, ptr noundef %arraydecay431)
  store i64 %call432, ptr %spaceid, align 8
  %cmp433 = icmp slt i64 %call432, 0
  br i1 %cmp433, label %if.then435, label %if.end442

if.then435:                                       ; preds = %for.end428
  br label %do.body436

do.body436:                                       ; preds = %if.then435
  br label %do.body437

do.body437:                                       ; preds = %do.body436
  store i32 -101, ptr %retval1, align 4
  br label %do.cond438

do.cond438:                                       ; preds = %do.body437
  br label %do.end439

do.end439:                                        ; preds = %do.cond438
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup443

do.cond440:                                       ; No predecessors!
  br label %do.end441

do.end441:                                        ; preds = %do.cond440
  br label %if.end442

if.end442:                                        ; preds = %do.end441, %for.end428
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup443

cleanup443:                                       ; preds = %do.end439, %if.end442
  call void @llvm.lifetime.end.p0(i64 4, ptr %unlimdim) #10
  %cleanup.dest444 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest444, label %cleanup709 [
    i32 0, label %cleanup.cont445
    i32 6, label %exit
  ]

cleanup.cont445:                                  ; preds = %cleanup443
  br label %if.end458

if.else446:                                       ; preds = %if.end277
  %call447 = call i64 @H5Screate(i32 noundef 0)
  store i64 %call447, ptr %spaceid, align 8
  %cmp448 = icmp slt i64 %call447, 0
  br i1 %cmp448, label %if.then450, label %if.end457

if.then450:                                       ; preds = %if.else446
  br label %do.body451

do.body451:                                       ; preds = %if.then450
  br label %do.body452

do.body452:                                       ; preds = %do.body451
  store i32 -101, ptr %retval1, align 4
  br label %do.cond453

do.cond453:                                       ; preds = %do.body452
  br label %do.end454

do.end454:                                        ; preds = %do.cond453
  br label %exit

do.cond455:                                       ; No predecessors!
  br label %do.end456

do.end456:                                        ; preds = %do.cond455
  br label %if.end457

if.end457:                                        ; preds = %do.end456, %if.else446
  br label %if.end458

if.end458:                                        ; preds = %if.end457, %cleanup.cont445
  %192 = load ptr, ptr %var.addr, align 8
  %storage459 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %192, i32 0, i32 21
  %193 = load i32, ptr %storage459, align 8
  %cmp460 = icmp eq i32 %193, 1
  br i1 %cmp460, label %if.then462, label %if.else474

if.then462:                                       ; preds = %if.end458
  %194 = load i64, ptr %plistid, align 8
  %call463 = call i32 @H5Pset_layout(i64 noundef %194, i32 noundef 1)
  %cmp464 = icmp slt i32 %call463, 0
  br i1 %cmp464, label %if.then466, label %if.end473

if.then466:                                       ; preds = %if.then462
  br label %do.body467

do.body467:                                       ; preds = %if.then466
  br label %do.body468

do.body468:                                       ; preds = %do.body467
  store i32 -101, ptr %retval1, align 4
  br label %do.cond469

do.cond469:                                       ; preds = %do.body468
  br label %do.end470

do.end470:                                        ; preds = %do.cond469
  br label %exit

do.cond471:                                       ; No predecessors!
  br label %do.end472

do.end472:                                        ; preds = %do.cond471
  br label %if.end473

if.end473:                                        ; preds = %do.end472, %if.then462
  br label %if.end510

if.else474:                                       ; preds = %if.end458
  %195 = load ptr, ptr %var.addr, align 8
  %storage475 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %195, i32 0, i32 21
  %196 = load i32, ptr %storage475, align 8
  %cmp476 = icmp eq i32 %196, 2
  br i1 %cmp476, label %if.then478, label %if.else490

if.then478:                                       ; preds = %if.else474
  %197 = load i64, ptr %plistid, align 8
  %call479 = call i32 @H5Pset_layout(i64 noundef %197, i32 noundef 0)
  %cmp480 = icmp slt i32 %call479, 0
  br i1 %cmp480, label %if.then482, label %if.end489

if.then482:                                       ; preds = %if.then478
  br label %do.body483

do.body483:                                       ; preds = %if.then482
  br label %do.body484

do.body484:                                       ; preds = %do.body483
  store i32 -101, ptr %retval1, align 4
  br label %do.cond485

do.cond485:                                       ; preds = %do.body484
  br label %do.end486

do.end486:                                        ; preds = %do.cond485
  br label %exit

do.cond487:                                       ; No predecessors!
  br label %do.end488

do.end488:                                        ; preds = %do.cond487
  br label %if.end489

if.end489:                                        ; preds = %do.end488, %if.then478
  br label %if.end509

if.else490:                                       ; preds = %if.else474
  %198 = load ptr, ptr %var.addr, align 8
  %ndims491 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %198, i32 0, i32 3
  %199 = load i64, ptr %ndims491, align 8
  %tobool492 = icmp ne i64 %199, 0
  br i1 %tobool492, label %if.then493, label %if.end508

if.then493:                                       ; preds = %if.else490
  %200 = load i64, ptr %plistid, align 8
  %201 = load ptr, ptr %var.addr, align 8
  %ndims494 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %201, i32 0, i32 3
  %202 = load i64, ptr %ndims494, align 8
  %conv495 = trunc i64 %202 to i32
  %arraydecay496 = getelementptr inbounds [32 x i64], ptr %chunksize, i64 0, i64 0
  %call497 = call i32 @H5Pset_chunk(i64 noundef %200, i32 noundef %conv495, ptr noundef %arraydecay496)
  %cmp498 = icmp slt i32 %call497, 0
  br i1 %cmp498, label %if.then500, label %if.end507

if.then500:                                       ; preds = %if.then493
  br label %do.body501

do.body501:                                       ; preds = %if.then500
  br label %do.body502

do.body502:                                       ; preds = %do.body501
  store i32 -101, ptr %retval1, align 4
  br label %do.cond503

do.cond503:                                       ; preds = %do.body502
  br label %do.end504

do.end504:                                        ; preds = %do.cond503
  br label %exit

do.cond505:                                       ; No predecessors!
  br label %do.end506

do.end506:                                        ; preds = %do.cond505
  br label %if.end507

if.end507:                                        ; preds = %do.end506, %if.then493
  br label %if.end508

if.end508:                                        ; preds = %if.end507, %if.else490
  br label %if.end509

if.end509:                                        ; preds = %if.end508, %if.end489
  br label %if.end510

if.end510:                                        ; preds = %if.end509, %if.end473
  %203 = load ptr, ptr %grp.addr, align 8
  %nc4_info511 = getelementptr inbounds %struct.NC_GRP_INFO, ptr %203, i32 0, i32 2
  %204 = load ptr, ptr %nc4_info511, align 8
  %no_attr_create_order = getelementptr inbounds %struct.NC_FILE_INFO, ptr %204, i32 0, i32 8
  %205 = load i32, ptr %no_attr_create_order, align 8
  %tobool512 = icmp ne i32 %205, 0
  br i1 %tobool512, label %if.end525, label %if.then513

if.then513:                                       ; preds = %if.end510
  %206 = load i64, ptr %plistid, align 8
  %call514 = call i32 @H5Pset_attr_creation_order(i64 noundef %206, i32 noundef 3)
  %cmp515 = icmp slt i32 %call514, 0
  br i1 %cmp515, label %if.then517, label %if.end524

if.then517:                                       ; preds = %if.then513
  br label %do.body518

do.body518:                                       ; preds = %if.then517
  br label %do.body519

do.body519:                                       ; preds = %do.body518
  store i32 -101, ptr %retval1, align 4
  br label %do.cond520

do.cond520:                                       ; preds = %do.body519
  br label %do.end521

do.end521:                                        ; preds = %do.cond520
  br label %exit

do.cond522:                                       ; No predecessors!
  br label %do.end523

do.end523:                                        ; preds = %do.cond522
  br label %if.end524

if.end524:                                        ; preds = %do.end523, %if.then513
  br label %if.end525

if.end525:                                        ; preds = %if.end524, %if.end510
  %207 = load ptr, ptr %var.addr, align 8
  %storage526 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %207, i32 0, i32 21
  %208 = load i32, ptr %storage526, align 8
  %cmp527 = icmp eq i32 %208, 0
  br i1 %cmp527, label %land.lhs.true529, label %if.end549

land.lhs.true529:                                 ; preds = %if.end525
  %209 = load ptr, ptr %var.addr, align 8
  %chunkcache = getelementptr inbounds %struct.NC_VAR_INFO, ptr %209, i32 0, i32 24
  %size530 = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache, i32 0, i32 0
  %210 = load i64, ptr %size530, align 8
  %tobool531 = icmp ne i64 %210, 0
  br i1 %tobool531, label %if.then532, label %if.end549

if.then532:                                       ; preds = %land.lhs.true529
  %211 = load i64, ptr %access_plistid, align 8
  %212 = load ptr, ptr %var.addr, align 8
  %chunkcache533 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %212, i32 0, i32 24
  %nelems = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache533, i32 0, i32 1
  %213 = load i64, ptr %nelems, align 8
  %214 = load ptr, ptr %var.addr, align 8
  %chunkcache534 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %214, i32 0, i32 24
  %size535 = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache534, i32 0, i32 0
  %215 = load i64, ptr %size535, align 8
  %216 = load ptr, ptr %var.addr, align 8
  %chunkcache536 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %216, i32 0, i32 24
  %preemption = getelementptr inbounds %struct.ChunkCache, ptr %chunkcache536, i32 0, i32 2
  %217 = load float, ptr %preemption, align 8
  %conv537 = fpext float %217 to double
  %call538 = call i32 @H5Pset_chunk_cache(i64 noundef %211, i64 noundef %213, i64 noundef %215, double noundef %conv537)
  %cmp539 = icmp slt i32 %call538, 0
  br i1 %cmp539, label %if.then541, label %if.end548

if.then541:                                       ; preds = %if.then532
  br label %do.body542

do.body542:                                       ; preds = %if.then541
  br label %do.body543

do.body543:                                       ; preds = %do.body542
  store i32 -101, ptr %retval1, align 4
  br label %do.cond544

do.cond544:                                       ; preds = %do.body543
  br label %do.end545

do.end545:                                        ; preds = %do.cond544
  br label %exit

do.cond546:                                       ; No predecessors!
  br label %do.end547

do.end547:                                        ; preds = %do.cond546
  br label %if.end548

if.end548:                                        ; preds = %do.end547, %if.then532
  br label %if.end549

if.end549:                                        ; preds = %if.end548, %land.lhs.true529, %if.end525
  %218 = load ptr, ptr %var.addr, align 8
  %alt_name = getelementptr inbounds %struct.NC_VAR_INFO, ptr %218, i32 0, i32 1
  %219 = load ptr, ptr %alt_name, align 8
  %tobool550 = icmp ne ptr %219, null
  br i1 %tobool550, label %cond.true551, label %cond.false553

cond.true551:                                     ; preds = %if.end549
  %220 = load ptr, ptr %var.addr, align 8
  %alt_name552 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %220, i32 0, i32 1
  %221 = load ptr, ptr %alt_name552, align 8
  br label %cond.end555

cond.false553:                                    ; preds = %if.end549
  %222 = load ptr, ptr %var.addr, align 8
  %hdr554 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %222, i32 0, i32 0
  %name = getelementptr inbounds %struct.NC_OBJ, ptr %hdr554, i32 0, i32 1
  %223 = load ptr, ptr %name, align 8
  br label %cond.end555

cond.end555:                                      ; preds = %cond.false553, %cond.true551
  %cond556 = phi ptr [ %221, %cond.true551 ], [ %223, %cond.false553 ]
  store ptr %cond556, ptr %name_to_use, align 8
  %224 = load ptr, ptr %hdf5_grp, align 8
  %hdf_grpid = getelementptr inbounds %struct.NC_HDF5_GRP_INFO, ptr %224, i32 0, i32 0
  %225 = load i64, ptr %hdf_grpid, align 8
  %226 = load ptr, ptr %name_to_use, align 8
  %227 = load i64, ptr %typeid, align 8
  %228 = load i64, ptr %spaceid, align 8
  %229 = load i64, ptr %plistid, align 8
  %230 = load i64, ptr %access_plistid, align 8
  %call557 = call i64 @H5Dcreate2(i64 noundef %225, ptr noundef %226, i64 noundef %227, i64 noundef %228, i64 noundef 0, i64 noundef %229, i64 noundef %230)
  %231 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %231, i32 0, i32 0
  store i64 %call557, ptr %hdf_datasetid, align 8
  %cmp558 = icmp slt i64 %call557, 0
  br i1 %cmp558, label %if.then560, label %if.end567

if.then560:                                       ; preds = %cond.end555
  br label %do.body561

do.body561:                                       ; preds = %if.then560
  br label %do.body562

do.body562:                                       ; preds = %do.body561
  store i32 -101, ptr %retval1, align 4
  br label %do.cond563

do.cond563:                                       ; preds = %do.body562
  br label %do.end564

do.end564:                                        ; preds = %do.cond563
  br label %exit

do.cond565:                                       ; No predecessors!
  br label %do.end566

do.end566:                                        ; preds = %do.cond565
  br label %if.end567

if.end567:                                        ; preds = %do.end566, %cond.end555
  %232 = load ptr, ptr %var.addr, align 8
  %created = getelementptr inbounds %struct.NC_VAR_INFO, ptr %232, i32 0, i32 11
  store i32 1, ptr %created, align 4
  %233 = load ptr, ptr %var.addr, align 8
  %is_new_var = getelementptr inbounds %struct.NC_VAR_INFO, ptr %233, i32 0, i32 6
  store i32 0, ptr %is_new_var, align 8
  %234 = load ptr, ptr %var.addr, align 8
  %ndims568 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %234, i32 0, i32 3
  %235 = load i64, ptr %ndims568, align 8
  %tobool569 = icmp ne i64 %235, 0
  br i1 %tobool569, label %if.then570, label %if.end581

if.then570:                                       ; preds = %if.end567
  %236 = load ptr, ptr %var.addr, align 8
  %call571 = call i32 @write_coord_dimids(ptr noundef %236)
  store i32 %call571, ptr %retval1, align 4
  %tobool572 = icmp ne i32 %call571, 0
  br i1 %tobool572, label %if.then573, label %if.end580

if.then573:                                       ; preds = %if.then570
  br label %do.body574

do.body574:                                       ; preds = %if.then573
  br label %do.body575

do.body575:                                       ; preds = %do.body574
  %237 = load i32, ptr %retval1, align 4
  store i32 %237, ptr %retval1, align 4
  br label %do.cond576

do.cond576:                                       ; preds = %do.body575
  br label %do.end577

do.end577:                                        ; preds = %do.cond576
  br label %exit

do.cond578:                                       ; No predecessors!
  br label %do.end579

do.end579:                                        ; preds = %do.cond578
  br label %if.end580

if.end580:                                        ; preds = %do.end579, %if.then570
  br label %if.end581

if.end581:                                        ; preds = %if.end580, %if.end567
  %238 = load ptr, ptr %hdf5_var, align 8
  %dimscale = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %238, i32 0, i32 2
  %239 = load i32, ptr %dimscale, align 8
  %tobool582 = icmp ne i32 %239, 0
  br i1 %tobool582, label %if.then583, label %if.end614

if.then583:                                       ; preds = %if.end581
  %240 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid584 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %240, i32 0, i32 0
  %241 = load i64, ptr %hdf_datasetid584, align 8
  %242 = load ptr, ptr %var.addr, align 8
  %hdr585 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %242, i32 0, i32 0
  %name586 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr585, i32 0, i32 1
  %243 = load ptr, ptr %name586, align 8
  %call587 = call i32 @H5DSset_scale(i64 noundef %241, ptr noundef %243)
  %cmp588 = icmp slt i32 %call587, 0
  br i1 %cmp588, label %if.then590, label %if.end597

if.then590:                                       ; preds = %if.then583
  br label %do.body591

do.body591:                                       ; preds = %if.then590
  br label %do.body592

do.body592:                                       ; preds = %do.body591
  store i32 -101, ptr %retval1, align 4
  br label %do.cond593

do.cond593:                                       ; preds = %do.body592
  br label %do.end594

do.end594:                                        ; preds = %do.cond593
  br label %exit

do.cond595:                                       ; No predecessors!
  br label %do.end596

do.end596:                                        ; preds = %do.cond595
  br label %if.end597

if.end597:                                        ; preds = %do.end596, %if.then583
  %244 = load i32, ptr %write_dimid.addr, align 4
  %tobool598 = icmp ne i32 %244, 0
  br i1 %tobool598, label %if.then599, label %if.end613

if.then599:                                       ; preds = %if.end597
  %245 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid600 = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %245, i32 0, i32 0
  %246 = load i64, ptr %hdf_datasetid600, align 8
  %247 = load ptr, ptr %var.addr, align 8
  %dimids601 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %247, i32 0, i32 4
  %248 = load ptr, ptr %dimids601, align 8
  %arrayidx602 = getelementptr inbounds i32, ptr %248, i64 0
  %249 = load i32, ptr %arrayidx602, align 4
  %call603 = call i32 @write_netcdf4_dimid(i64 noundef %246, i32 noundef %249)
  store i32 %call603, ptr %retval1, align 4
  %tobool604 = icmp ne i32 %call603, 0
  br i1 %tobool604, label %if.then605, label %if.end612

if.then605:                                       ; preds = %if.then599
  br label %do.body606

do.body606:                                       ; preds = %if.then605
  br label %do.body607

do.body607:                                       ; preds = %do.body606
  %250 = load i32, ptr %retval1, align 4
  store i32 %250, ptr %retval1, align 4
  br label %do.cond608

do.cond608:                                       ; preds = %do.body607
  br label %do.end609

do.end609:                                        ; preds = %do.cond608
  br label %exit

do.cond610:                                       ; No predecessors!
  br label %do.end611

do.end611:                                        ; preds = %do.cond610
  br label %if.end612

if.end612:                                        ; preds = %do.end611, %if.then599
  br label %if.end613

if.end613:                                        ; preds = %if.end612, %if.end597
  br label %if.end614

if.end614:                                        ; preds = %if.end613, %if.end581
  %251 = load ptr, ptr %var.addr, align 8
  %quantize_mode = getelementptr inbounds %struct.NC_VAR_INFO, ptr %251, i32 0, i32 25
  %252 = load i32, ptr %quantize_mode, align 8
  %tobool615 = icmp ne i32 %252, 0
  br i1 %tobool615, label %if.then616, label %if.end627

if.then616:                                       ; preds = %if.end614
  %253 = load ptr, ptr %var.addr, align 8
  %call617 = call i32 @write_quantize_att(ptr noundef %253)
  store i32 %call617, ptr %retval1, align 4
  %tobool618 = icmp ne i32 %call617, 0
  br i1 %tobool618, label %if.then619, label %if.end626

if.then619:                                       ; preds = %if.then616
  br label %do.body620

do.body620:                                       ; preds = %if.then619
  br label %do.body621

do.body621:                                       ; preds = %do.body620
  %254 = load i32, ptr %retval1, align 4
  store i32 %254, ptr %retval1, align 4
  br label %do.cond622

do.cond622:                                       ; preds = %do.body621
  br label %do.end623

do.end623:                                        ; preds = %do.cond622
  br label %exit

do.cond624:                                       ; No predecessors!
  br label %do.end625

do.end625:                                        ; preds = %do.cond624
  br label %if.end626

if.end626:                                        ; preds = %do.end625, %if.then616
  br label %if.end627

if.end627:                                        ; preds = %if.end626, %if.end614
  %255 = load ptr, ptr %var.addr, align 8
  %att = getelementptr inbounds %struct.NC_VAR_INFO, ptr %255, i32 0, i32 17
  %256 = load ptr, ptr %att, align 8
  %257 = load ptr, ptr %var.addr, align 8
  %hdr628 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %257, i32 0, i32 0
  %id629 = getelementptr inbounds %struct.NC_OBJ, ptr %hdr628, i32 0, i32 2
  %258 = load i64, ptr %id629, align 8
  %conv630 = trunc i64 %258 to i32
  %259 = load ptr, ptr %grp.addr, align 8
  %call631 = call i32 @write_attlist(ptr noundef %256, i32 noundef %conv630, ptr noundef %259)
  store i32 %call631, ptr %retval1, align 4
  %tobool632 = icmp ne i32 %call631, 0
  br i1 %tobool632, label %if.then633, label %if.end640

if.then633:                                       ; preds = %if.end627
  br label %do.body634

do.body634:                                       ; preds = %if.then633
  br label %do.body635

do.body635:                                       ; preds = %do.body634
  %260 = load i32, ptr %retval1, align 4
  store i32 %260, ptr %retval1, align 4
  br label %do.cond636

do.cond636:                                       ; preds = %do.body635
  br label %do.end637

do.end637:                                        ; preds = %do.cond636
  br label %exit

do.cond638:                                       ; No predecessors!
  br label %do.end639

do.end639:                                        ; preds = %do.cond638
  br label %if.end640

if.end640:                                        ; preds = %do.end639, %if.end627
  %261 = load ptr, ptr %var.addr, align 8
  %attr_dirty = getelementptr inbounds %struct.NC_VAR_INFO, ptr %261, i32 0, i32 10
  store i32 0, ptr %attr_dirty, align 8
  br label %exit

exit:                                             ; preds = %if.end640, %cleanup443, %cleanup273, %cleanup, %do.end637, %do.end623, %do.end609, %do.end594, %do.end577, %do.end564, %do.end545, %do.end521, %do.end504, %do.end486, %do.end470, %do.end454, %do.end85, %do.end68, %do.end56, %do.end43, %do.end32, %do.end22, %do.end
  %262 = load ptr, ptr %params, align 8
  %cmp641 = icmp ne ptr %262, null
  br i1 %cmp641, label %if.then643, label %if.else644

if.then643:                                       ; preds = %exit
  %263 = load ptr, ptr %params, align 8
  call void @free(ptr noundef %263) #10
  br label %if.end645

if.else644:                                       ; preds = %exit
  br label %if.end645

if.end645:                                        ; preds = %if.else644, %if.then643
  %264 = load i64, ptr %typeid, align 8
  %cmp646 = icmp sgt i64 %264, 0
  br i1 %cmp646, label %land.lhs.true648, label %if.end656

land.lhs.true648:                                 ; preds = %if.end645
  %265 = load i64, ptr %typeid, align 8
  %call649 = call i32 @H5Tclose(i64 noundef %265)
  %cmp650 = icmp slt i32 %call649, 0
  br i1 %cmp650, label %if.then652, label %if.end656

if.then652:                                       ; preds = %land.lhs.true648
  br label %do.body653

do.body653:                                       ; preds = %if.then652
  store i32 -101, ptr %retval1, align 4
  br label %do.cond654

do.cond654:                                       ; preds = %do.body653
  br label %do.end655

do.end655:                                        ; preds = %do.cond654
  br label %if.end656

if.end656:                                        ; preds = %do.end655, %land.lhs.true648, %if.end645
  %266 = load i64, ptr %plistid, align 8
  %cmp657 = icmp sgt i64 %266, 0
  br i1 %cmp657, label %land.lhs.true659, label %if.end667

land.lhs.true659:                                 ; preds = %if.end656
  %267 = load i64, ptr %plistid, align 8
  %call660 = call i32 @H5Pclose(i64 noundef %267)
  %cmp661 = icmp slt i32 %call660, 0
  br i1 %cmp661, label %if.then663, label %if.end667

if.then663:                                       ; preds = %land.lhs.true659
  br label %do.body664

do.body664:                                       ; preds = %if.then663
  store i32 -101, ptr %retval1, align 4
  br label %do.cond665

do.cond665:                                       ; preds = %do.body664
  br label %do.end666

do.end666:                                        ; preds = %do.cond665
  br label %if.end667

if.end667:                                        ; preds = %do.end666, %land.lhs.true659, %if.end656
  %268 = load i64, ptr %access_plistid, align 8
  %cmp668 = icmp sgt i64 %268, 0
  br i1 %cmp668, label %land.lhs.true670, label %if.end678

land.lhs.true670:                                 ; preds = %if.end667
  %269 = load i64, ptr %access_plistid, align 8
  %call671 = call i32 @H5Pclose(i64 noundef %269)
  %cmp672 = icmp slt i32 %call671, 0
  br i1 %cmp672, label %if.then674, label %if.end678

if.then674:                                       ; preds = %land.lhs.true670
  br label %do.body675

do.body675:                                       ; preds = %if.then674
  store i32 -101, ptr %retval1, align 4
  br label %do.cond676

do.cond676:                                       ; preds = %do.body675
  br label %do.end677

do.end677:                                        ; preds = %do.cond676
  br label %if.end678

if.end678:                                        ; preds = %do.end677, %land.lhs.true670, %if.end667
  %270 = load i64, ptr %spaceid, align 8
  %cmp679 = icmp sgt i64 %270, 0
  br i1 %cmp679, label %land.lhs.true681, label %if.end689

land.lhs.true681:                                 ; preds = %if.end678
  %271 = load i64, ptr %spaceid, align 8
  %call682 = call i32 @H5Sclose(i64 noundef %271)
  %cmp683 = icmp slt i32 %call682, 0
  br i1 %cmp683, label %if.then685, label %if.end689

if.then685:                                       ; preds = %land.lhs.true681
  br label %do.body686

do.body686:                                       ; preds = %if.then685
  store i32 -101, ptr %retval1, align 4
  br label %do.cond687

do.cond687:                                       ; preds = %do.body686
  br label %do.end688

do.end688:                                        ; preds = %do.cond687
  br label %if.end689

if.end689:                                        ; preds = %do.end688, %land.lhs.true681, %if.end678
  %272 = load ptr, ptr %fillp, align 8
  %tobool690 = icmp ne ptr %272, null
  br i1 %tobool690, label %if.then691, label %if.end708

if.then691:                                       ; preds = %if.end689
  %273 = load ptr, ptr %var.addr, align 8
  %type_info692 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %273, i32 0, i32 13
  %274 = load ptr, ptr %type_info692, align 8
  %nc_type_class693 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %274, i32 0, i32 6
  %275 = load i32, ptr %nc_type_class693, align 4
  %cmp694 = icmp eq i32 %275, 13
  br i1 %cmp694, label %if.then696, label %if.else698

if.then696:                                       ; preds = %if.then691
  %276 = load ptr, ptr %fillp, align 8
  %call697 = call i32 @nc_free_vlen(ptr noundef %276)
  br label %if.end707

if.else698:                                       ; preds = %if.then691
  %277 = load ptr, ptr %var.addr, align 8
  %type_info699 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %277, i32 0, i32 13
  %278 = load ptr, ptr %type_info699, align 8
  %nc_type_class700 = getelementptr inbounds %struct.NC_TYPE_INFO, ptr %278, i32 0, i32 6
  %279 = load i32, ptr %nc_type_class700, align 4
  %cmp701 = icmp eq i32 %279, 12
  br i1 %cmp701, label %land.lhs.true703, label %if.end706

land.lhs.true703:                                 ; preds = %if.else698
  %280 = load ptr, ptr %fillp, align 8
  %281 = load ptr, ptr %280, align 8
  %tobool704 = icmp ne ptr %281, null
  br i1 %tobool704, label %if.then705, label %if.end706

if.then705:                                       ; preds = %land.lhs.true703
  %282 = load ptr, ptr %fillp, align 8
  %283 = load ptr, ptr %282, align 8
  call void @free(ptr noundef %283) #10
  br label %if.end706

if.end706:                                        ; preds = %if.then705, %land.lhs.true703, %if.else698
  br label %if.end707

if.end707:                                        ; preds = %if.end706, %if.then696
  %284 = load ptr, ptr %fillp, align 8
  call void @free(ptr noundef %284) #10
  br label %if.end708

if.end708:                                        ; preds = %if.end707, %if.end689
  %285 = load i32, ptr %retval1, align 4
  store i32 %285, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup709

cleanup709:                                       ; preds = %if.end708, %cleanup443, %cleanup273, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %params) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_to_use) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %dim) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %fillp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr %maxdimsize) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr %dimsize) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr %chunksize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %spaceid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %typeid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %access_plistid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %plistid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_grp) #10
  %286 = load i32, ptr %retval, align 4
  ret i32 %286
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare i32 @H5Lexists(i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @H5Gget_objinfo(i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #3

declare i32 @H5Pset_fill_time(i64 noundef, i32 noundef) #3

declare i32 @nc4_get_fill_value(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @H5Pset_fill_value(i64 noundef, i64 noundef, ptr noundef) #3

declare ptr @nclistget(ptr noundef, i64 noundef) #3

declare i32 @H5Pset_fletcher32(i64 noundef) #3

declare i32 @H5Pset_shuffle(i64 noundef) #3

declare i32 @H5Pset_deflate(i64 noundef, i32 noundef) #3

declare i32 @H5Pset_szip(i64 noundef, i32 noundef, i32 noundef) #3

declare i32 @H5Pset_filter(i64 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #5

declare i32 @H5Pset_layout(i64 noundef, i32 noundef) #3

declare i32 @H5Pset_chunk_cache(i64 noundef, i64 noundef, i64 noundef, double noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @write_coord_dimids(ptr noundef %var) #0 {
entry:
  %var.addr = alloca ptr, align 8
  %hdf5_var = alloca ptr, align 8
  %coords_len = alloca [1 x i64], align 8
  %c_spaceid = alloca i64, align 8
  %c_attid = alloca i64, align 8
  %retval1 = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %coords_len) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_spaceid) #10
  store i64 -1, ptr %c_spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_attid) #10
  store i64 -1, ptr %c_attid, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %0 = load ptr, ptr %var.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %var.addr, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %1, i32 0, i32 27
  %2 = load ptr, ptr %format_var_info, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 656, ptr noundef @__PRETTY_FUNCTION__.write_coord_dimids) #11
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %var.addr, align 8
  %format_var_info3 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %format_var_info3, align 8
  store ptr %4, ptr %hdf5_var, align 8
  %5 = load ptr, ptr %var.addr, align 8
  %ndims = getelementptr inbounds %struct.NC_VAR_INFO, ptr %5, i32 0, i32 3
  %6 = load i64, ptr %ndims, align 8
  %arrayidx = getelementptr inbounds [1 x i64], ptr %coords_len, i64 0, i64 0
  store i64 %6, ptr %arrayidx, align 8
  %arraydecay = getelementptr inbounds [1 x i64], ptr %coords_len, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %coords_len, i64 0, i64 0
  %call = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef %arraydecay, ptr noundef %arraydecay4)
  store i64 %call, ptr %c_spaceid, align 8
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then5
  br label %do.body6

do.body6:                                         ; preds = %do.body
  store i32 -101, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond7:                                         ; No predecessors!
  br label %do.end8

do.end8:                                          ; preds = %do.cond7
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %if.end
  %7 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %hdf_datasetid, align 8
  %call10 = call i32 @H5open()
  %9 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %10 = load i64, ptr %c_spaceid, align 8
  %call11 = call i64 @H5Acreate1(i64 noundef %8, ptr noundef @.str.46, i64 noundef %9, i64 noundef %10, i64 noundef 0)
  store i64 %call11, ptr %c_attid, align 8
  %cmp12 = icmp slt i64 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end9
  br label %do.body14

do.body14:                                        ; preds = %if.then13
  br label %do.body15

do.body15:                                        ; preds = %do.body14
  store i32 -101, ptr %retval1, align 4
  br label %do.cond16

do.cond16:                                        ; preds = %do.body15
  br label %do.end17

do.end17:                                         ; preds = %do.cond16
  br label %exit

do.cond18:                                        ; No predecessors!
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %if.end9
  %11 = load i64, ptr %c_attid, align 8
  %call21 = call i32 @H5open()
  %12 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %13 = load ptr, ptr %var.addr, align 8
  %dimids = getelementptr inbounds %struct.NC_VAR_INFO, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %dimids, align 8
  %call22 = call i32 @H5Awrite(i64 noundef %11, i64 noundef %12, ptr noundef %14)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  br label %do.body26

do.body26:                                        ; preds = %do.body25
  store i32 -101, ptr %retval1, align 4
  br label %do.cond27

do.cond27:                                        ; preds = %do.body26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  br label %exit

do.cond29:                                        ; No predecessors!
  br label %do.end30

do.end30:                                         ; preds = %do.cond29
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %if.end20
  br label %exit

exit:                                             ; preds = %if.end31, %do.end28, %do.end17, %do.end
  %15 = load i64, ptr %c_spaceid, align 8
  %cmp32 = icmp sge i64 %15, 0
  br i1 %cmp32, label %land.lhs.true33, label %if.end40

land.lhs.true33:                                  ; preds = %exit
  %16 = load i64, ptr %c_spaceid, align 8
  %call34 = call i32 @H5Sclose(i64 noundef %16)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %land.lhs.true33
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  store i32 -101, ptr %retval1, align 4
  br label %do.cond38

do.cond38:                                        ; preds = %do.body37
  br label %do.end39

do.end39:                                         ; preds = %do.cond38
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %land.lhs.true33, %exit
  %17 = load i64, ptr %c_attid, align 8
  %cmp41 = icmp sge i64 %17, 0
  br i1 %cmp41, label %land.lhs.true42, label %if.end49

land.lhs.true42:                                  ; preds = %if.end40
  %18 = load i64, ptr %c_attid, align 8
  %call43 = call i32 @H5Aclose(i64 noundef %18)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %if.end49

if.then45:                                        ; preds = %land.lhs.true42
  br label %do.body46

do.body46:                                        ; preds = %if.then45
  store i32 -101, ptr %retval1, align 4
  br label %do.cond47

do.cond47:                                        ; preds = %do.body46
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %land.lhs.true42, %if.end40
  %19 = load i32, ptr %retval1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_attid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_spaceid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %coords_len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @write_quantize_att(ptr noundef %var) #0 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca ptr, align 8
  %hdf5_var = alloca ptr, align 8
  %len = alloca i64, align 8
  %c_spaceid = alloca i64, align 8
  %c_attid = alloca i64, align 8
  %att_name = alloca [257 x i8], align 16
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %var, ptr %var.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hdf5_var) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10
  store i64 1, ptr %len, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_spaceid) #10
  store i64 -1, ptr %c_spaceid, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_attid) #10
  store i64 -1, ptr %c_attid, align 8
  call void @llvm.lifetime.start.p0(i64 257, ptr %att_name) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4
  %0 = load ptr, ptr %var.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %var.addr, align 8
  %format_var_info = getelementptr inbounds %struct.NC_VAR_INFO, ptr %1, i32 0, i32 27
  %2 = load ptr, ptr %format_var_info, align 8
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 704, ptr noundef @__PRETTY_FUNCTION__.write_quantize_att) #11
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %var.addr, align 8
  %format_var_info3 = getelementptr inbounds %struct.NC_VAR_INFO, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %format_var_info3, align 8
  store ptr %4, ptr %hdf5_var, align 8
  %5 = load ptr, ptr %var.addr, align 8
  %quantize_mode = getelementptr inbounds %struct.NC_VAR_INFO, ptr %5, i32 0, i32 25
  %6 = load i32, ptr %quantize_mode, align 8
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay = getelementptr inbounds [257 x i8], ptr %att_name, i64 0, i64 0
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.47, ptr noundef @.str.48) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [257 x i8], ptr %att_name, i64 0, i64 0
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay5, ptr noundef @.str.47, ptr noundef @.str.49) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [257 x i8], ptr %att_name, i64 0, i64 0
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay8, ptr noundef @.str.47, ptr noundef @.str.50) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -36, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb4, %sw.bb
  %call10 = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef %len, ptr noundef %len)
  store i64 %call10, ptr %c_spaceid, align 8
  %cmp = icmp slt i64 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end15

if.then11:                                        ; preds = %sw.epilog
  br label %do.body

do.body:                                          ; preds = %if.then11
  br label %do.body12

do.body12:                                        ; preds = %do.body
  store i32 -101, ptr %retval1, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %exit

do.cond13:                                        ; No predecessors!
  br label %do.end14

do.end14:                                         ; preds = %do.cond13
  br label %if.end15

if.end15:                                         ; preds = %do.end14, %sw.epilog
  %7 = load ptr, ptr %hdf5_var, align 8
  %hdf_datasetid = getelementptr inbounds %struct.NC_HDF5_VAR_INFO, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %hdf_datasetid, align 8
  %arraydecay16 = getelementptr inbounds [257 x i8], ptr %att_name, i64 0, i64 0
  %call17 = call i32 @H5open()
  %9 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %10 = load i64, ptr %c_spaceid, align 8
  %call18 = call i64 @H5Acreate1(i64 noundef %8, ptr noundef %arraydecay16, i64 noundef %9, i64 noundef %10, i64 noundef 0)
  store i64 %call18, ptr %c_attid, align 8
  %cmp19 = icmp slt i64 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end15
  br label %do.body21

do.body21:                                        ; preds = %if.then20
  br label %do.body22

do.body22:                                        ; preds = %do.body21
  store i32 -101, ptr %retval1, align 4
  br label %do.cond23

do.cond23:                                        ; preds = %do.body22
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  br label %exit

do.cond25:                                        ; No predecessors!
  br label %do.end26

do.end26:                                         ; preds = %do.cond25
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %if.end15
  %11 = load i64, ptr %c_attid, align 8
  %call28 = call i32 @H5open()
  %12 = load i64, ptr @H5T_NATIVE_INT_g, align 8
  %13 = load ptr, ptr %var.addr, align 8
  %nsd = getelementptr inbounds %struct.NC_VAR_INFO, ptr %13, i32 0, i32 26
  %call29 = call i32 @H5Awrite(i64 noundef %11, i64 noundef %12, ptr noundef %nsd)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end27
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  br label %do.body33

do.body33:                                        ; preds = %do.body32
  store i32 -101, ptr %retval1, align 4
  br label %do.cond34

do.cond34:                                        ; preds = %do.body33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  br label %exit

do.cond36:                                        ; No predecessors!
  br label %do.end37

do.end37:                                         ; preds = %do.cond36
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %if.end27
  br label %exit

exit:                                             ; preds = %if.end38, %do.end35, %do.end24, %do.end
  %14 = load i64, ptr %c_spaceid, align 8
  %cmp39 = icmp sge i64 %14, 0
  br i1 %cmp39, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %exit
  %15 = load i64, ptr %c_spaceid, align 8
  %call41 = call i32 @H5Sclose(i64 noundef %15)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %land.lhs.true40
  br label %do.body44

do.body44:                                        ; preds = %if.then43
  store i32 -101, ptr %retval1, align 4
  br label %do.cond45

do.cond45:                                        ; preds = %do.body44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %land.lhs.true40, %exit
  %16 = load i64, ptr %c_attid, align 8
  %cmp48 = icmp sge i64 %16, 0
  br i1 %cmp48, label %land.lhs.true49, label %if.end56

land.lhs.true49:                                  ; preds = %if.end47
  %17 = load i64, ptr %c_attid, align 8
  %call50 = call i32 @H5Aclose(i64 noundef %17)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %land.lhs.true49
  br label %do.body53

do.body53:                                        ; preds = %if.then52
  store i32 -101, ptr %retval1, align 4
  br label %do.cond54

do.cond54:                                        ; preds = %do.body53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  br label %if.end56

if.end56:                                         ; preds = %do.end55, %land.lhs.true49, %if.end47
  %18 = load i32, ptr %retval1, align 4
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  call void @llvm.lifetime.end.p0(i64 257, ptr %att_name) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_attid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_spaceid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %hdf5_var) #10
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i32 @nc_free_vlen(ptr noundef) #3

declare i32 @H5Pset_link_creation_order(i64 noundef, i32 noundef) #3

declare i64 @H5Gcreate2(i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) #3

declare i32 @H5Gclose(i64 noundef) #3

declare i64 @H5Tcreate(i32 noundef, i64 noundef) #3

declare i64 @H5Tarray_create1(i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @H5Tinsert(i64 noundef, ptr noundef, i64 noundef, i64 noundef) #3

declare i64 @H5Tvlen_create(i64 noundef) #3

declare i64 @H5Tenum_create(i64 noundef) #3

declare i32 @H5Tenum_insert(i64 noundef, ptr noundef, ptr noundef) #3

declare i32 @H5Tcommit1(i64 noundef, ptr noundef, i64 noundef) #3

declare i64 @H5Tget_native_type(i64 noundef, i32 noundef) #3

declare i64 @H5Fget_obj_count(i64 noundef, i32 noundef) #3

declare i64 @H5Fget_obj_ids(i64 noundef, i32 noundef, i64 noundef, ptr noundef) #3

declare i32 @H5Gget_num_objs(i64 noundef, ptr noundef) #3

declare i64 @H5Gget_objname_by_idx(i64 noundef, i64 noundef, ptr noundef, i64 noundef) #3

declare i32 @H5Gget_objtype_by_idx(i64 noundef, i64 noundef) #3

declare i64 @H5Gopen1(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #9

declare i64 @H5Dopen1(i64 noundef, ptr noundef) #3

declare i32 @H5Aget_num_attrs(i64 noundef) #3

declare i64 @H5Aopen_idx(i64 noundef, i32 noundef) #3

declare ptr @NC_findreserved(ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
