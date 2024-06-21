; ModuleID = 'samples/339.bc'
source_filename = "derror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nc_libvers = internal constant [32 x i8] c"4.9.2 of Jan 13 2024 04:59:28 $\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"Unknown Error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NetCDF: Not a valid ID\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"NetCDF: Too many files open\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"NetCDF: File exists && NC_NOCLOBBER\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"NetCDF: Invalid argument\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"NetCDF: Write to read only\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"NetCDF: Operation not allowed in data mode\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"NetCDF: Operation not allowed in define mode\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"NetCDF: Index exceeds dimension bound\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"NetCDF: NC_MAX_DIMS exceeded\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"NetCDF: String match to name in use\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"NetCDF: Attribute not found\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"NetCDF: NC_MAX_ATTRS exceeded\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"NetCDF: Not a valid data type or _FillValue type mismatch\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"NetCDF: Invalid dimension ID or name\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"NetCDF: NC_UNLIMITED in the wrong index\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"NetCDF: NC_MAX_VARS exceeded\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"NetCDF: Variable not found\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"NetCDF: Action prohibited on NC_GLOBAL varid\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"NetCDF: Unknown file format\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"NetCDF: In Fortran, string too short\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"NetCDF: NC_MAX_NAME exceeded\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"NetCDF: NC_UNLIMITED size already in use\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"NetCDF: nc_rec op when there are no record vars\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"NetCDF: Attempt to convert between text & numbers\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"NetCDF: Start+count exceeds dimension bound\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"NetCDF: Illegal stride\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"NetCDF: Name contains illegal characters\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"NetCDF: Numeric conversion not representable\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"NetCDF: Memory allocation (malloc) failure\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"NetCDF: One or more variable sizes violate format constraints\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"NetCDF: Invalid dimension size\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"NetCDF: File likely truncated or possibly corrupted\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"NetCDF: Illegal axis type\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"NetCDF: DAP failure\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"NetCDF: libcurl failure\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"NetCDF: I/O failure\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"NetCDF: Variable has no data\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"NetCDF: DAP server error\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"NetCDF: Malformed or inaccessible DAP DAS\00", align 1
@.str.41 = private unnamed_addr constant [64 x i8] c"NetCDF: Malformed or inaccessible DAP2 DDS or DAP4 DMR response\00", align 1
@.str.42 = private unnamed_addr constant [68 x i8] c"NetCDF: Malformed or inaccessible DAP2 DATADDS or DAP4 DAP response\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"NetCDF: Malformed URL\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"NetCDF: Malformed or unexpected Constraint\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"NetCDF: Untranslatable construct\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"NetCDF: Access failure\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"NetCDF: Authorization failure\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"NetCDF: file not found\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"NetCDF: cannot delete file\00", align 1
@.str.50 = private unnamed_addr constant [63 x i8] c"NetCDF: internal library error; Please contact Unidata support\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"NetCDF: PnetCDF error\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"NetCDF: HDF error\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"NetCDF: Can't read file\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"NetCDF: Can't write file\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"NetCDF: Can't create file\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"NetCDF: Can't add HDF5 file metadata\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"NetCDF: Can't define dimensional metadata\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"NetCDF: Can't open HDF5 attribute\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"NetCDF: Problem with variable metadata.\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"NetCDF: Can't create HDF5 compound type\00", align 1
@.str.61 = private unnamed_addr constant [56 x i8] c"NetCDF: Attempt to create attribute that already exists\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"NetCDF: Attempting netcdf-4 operation on netcdf-3 file\00", align 1
@.str.63 = private unnamed_addr constant [66 x i8] c"NetCDF: Attempting netcdf-4 operation on strict nc3 netcdf-4 file\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"NetCDF: Attempting netcdf-3 operation on netcdf-4 file\00", align 1
@.str.65 = private unnamed_addr constant [66 x i8] c"NetCDF: Parallel operation on file opened for non-parallel access\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c"NetCDF: Error initializing for parallel access\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"NetCDF: Bad group ID\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"NetCDF: Bad type ID\00", align 1
@.str.69 = private unnamed_addr constant [60 x i8] c"NetCDF: Type has already been defined and may not be edited\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"NetCDF: Bad field ID\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"NetCDF: Bad class\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"NetCDF: Mapped access for atomic types only\00", align 1
@.str.73 = private unnamed_addr constant [63 x i8] c"NetCDF: Attempt to define fill value when data already exists.\00", align 1
@.str.74 = private unnamed_addr constant [70 x i8] c"NetCDF: Attempt to define var properties, like deflate, after enddef.\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"NetCDF: Problem with HDF5 dimscales.\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"NetCDF: No group found.\00", align 1
@.str.77 = private unnamed_addr constant [53 x i8] c"NetCDF: Cannot specify both contiguous and chunking.\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"NetCDF: Bad chunk sizes.\00", align 1
@.str.79 = private unnamed_addr constant [77 x i8] c"NetCDF: Attempt to use feature that was not turned on when netCDF was built.\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"NetCDF: Error in using diskless access\00", align 1
@.str.81 = private unnamed_addr constant [63 x i8] c"NetCDF: Filter error: bad id or parameters or duplicate filter\00", align 1
@.str.82 = private unnamed_addr constant [51 x i8] c"NetCDF: Filter error: undefined filter encountered\00", align 1
@.str.83 = private unnamed_addr constant [146 x i8] c"NetCDF: Attempt to extend dataset during NC_INDEPENDENT I/O operation. Use nc_var_par_access to set mode NC_COLLECTIVE before extending variable.\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"NetCDF: MPI operation failed.\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"NetCDF: RC File Failure.\00", align 1
@.str.86 = private unnamed_addr constant [50 x i8] c"NetCDF: File fails strict Null-Byte Header check.\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"NetCDF: In-memory File operation failed.\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"NetCDF: NCZarr error\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"NetCDF: AWS S3 error\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"NetCDF: Attempt to read empty NCZarr map key\00", align 1
@.str.91 = private unnamed_addr constant [46 x i8] c"NetCDF: Some object exists when it should not\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"NetCDF: Some object not found\00", align 1
@.str.93 = private unnamed_addr constant [70 x i8] c"NetCDF: Unclassified failure in accessing a dynamically loaded plugin\00", align 1

; Function Attrs: nounwind uwtable
define ptr @nc_inq_libvers() #0 {
entry:
  ret ptr @nc_libvers
}

; Function Attrs: nounwind uwtable
define ptr @nc_strerror(i32 noundef %ncerr1) #0 {
entry:
  %retval = alloca ptr, align 8
  %ncerr1.addr = alloca i32, align 4
  %cp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ncerr1, ptr %ncerr1.addr, align 4
  %0 = load i32, ptr %ncerr1.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #3
  %1 = load i32, ptr %ncerr1.addr, align 4
  %call = call ptr @strerror(i32 noundef %1) #3
  store ptr %call, ptr %cp, align 8
  %2 = load ptr, ptr %cp, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store ptr @.str, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %cp, align 8
  store ptr %3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #3
  br label %return

if.end3:                                          ; preds = %entry
  %4 = load i32, ptr %ncerr1.addr, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 -33, label %sw.bb4
    i32 -34, label %sw.bb5
    i32 -35, label %sw.bb6
    i32 -36, label %sw.bb7
    i32 -37, label %sw.bb8
    i32 -38, label %sw.bb9
    i32 -39, label %sw.bb10
    i32 -40, label %sw.bb11
    i32 -41, label %sw.bb12
    i32 -42, label %sw.bb13
    i32 -43, label %sw.bb14
    i32 -44, label %sw.bb15
    i32 -45, label %sw.bb16
    i32 -46, label %sw.bb17
    i32 -47, label %sw.bb18
    i32 -48, label %sw.bb19
    i32 -49, label %sw.bb20
    i32 -50, label %sw.bb21
    i32 -51, label %sw.bb22
    i32 -52, label %sw.bb23
    i32 -53, label %sw.bb24
    i32 -54, label %sw.bb25
    i32 -55, label %sw.bb26
    i32 -56, label %sw.bb27
    i32 -57, label %sw.bb28
    i32 -58, label %sw.bb29
    i32 -59, label %sw.bb30
    i32 -60, label %sw.bb31
    i32 -61, label %sw.bb32
    i32 -62, label %sw.bb33
    i32 -63, label %sw.bb34
    i32 -64, label %sw.bb35
    i32 -65, label %sw.bb36
    i32 -66, label %sw.bb37
    i32 -67, label %sw.bb38
    i32 -68, label %sw.bb39
    i32 -69, label %sw.bb40
    i32 -70, label %sw.bb41
    i32 -71, label %sw.bb42
    i32 -72, label %sw.bb43
    i32 -73, label %sw.bb44
    i32 -74, label %sw.bb45
    i32 -75, label %sw.bb46
    i32 -76, label %sw.bb47
    i32 -77, label %sw.bb48
    i32 -78, label %sw.bb49
    i32 -90, label %sw.bb50
    i32 -91, label %sw.bb51
    i32 -92, label %sw.bb52
    i32 -93, label %sw.bb53
    i32 -101, label %sw.bb54
    i32 -102, label %sw.bb55
    i32 -103, label %sw.bb56
    i32 -104, label %sw.bb57
    i32 -105, label %sw.bb58
    i32 -106, label %sw.bb59
    i32 -107, label %sw.bb60
    i32 -108, label %sw.bb61
    i32 -109, label %sw.bb62
    i32 -110, label %sw.bb63
    i32 -111, label %sw.bb64
    i32 -112, label %sw.bb65
    i32 -113, label %sw.bb66
    i32 -114, label %sw.bb67
    i32 -115, label %sw.bb68
    i32 -116, label %sw.bb69
    i32 -117, label %sw.bb70
    i32 -118, label %sw.bb71
    i32 -119, label %sw.bb72
    i32 -120, label %sw.bb73
    i32 -121, label %sw.bb74
    i32 -122, label %sw.bb75
    i32 -123, label %sw.bb76
    i32 -124, label %sw.bb77
    i32 -125, label %sw.bb78
    i32 -126, label %sw.bb79
    i32 -127, label %sw.bb80
    i32 -128, label %sw.bb81
    i32 -129, label %sw.bb82
    i32 -132, label %sw.bb83
    i32 -136, label %sw.bb84
    i32 -130, label %sw.bb85
    i32 -131, label %sw.bb86
    i32 -133, label %sw.bb87
    i32 -134, label %sw.bb88
    i32 -135, label %sw.bb89
    i32 -137, label %sw.bb90
    i32 -138, label %sw.bb91
    i32 -139, label %sw.bb92
    i32 -140, label %sw.bb93
    i32 -141, label %sw.bb94
    i32 -142, label %sw.bb95
  ]

sw.bb:                                            ; preds = %if.end3
  store ptr @.str.1, ptr %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %if.end3
  store ptr @.str.2, ptr %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %if.end3
  store ptr @.str.3, ptr %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %if.end3
  store ptr @.str.4, ptr %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %if.end3
  store ptr @.str.5, ptr %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %if.end3
  store ptr @.str.6, ptr %retval, align 8
  br label %return

sw.bb9:                                           ; preds = %if.end3
  store ptr @.str.7, ptr %retval, align 8
  br label %return

sw.bb10:                                          ; preds = %if.end3
  store ptr @.str.8, ptr %retval, align 8
  br label %return

sw.bb11:                                          ; preds = %if.end3
  store ptr @.str.9, ptr %retval, align 8
  br label %return

sw.bb12:                                          ; preds = %if.end3
  store ptr @.str.10, ptr %retval, align 8
  br label %return

sw.bb13:                                          ; preds = %if.end3
  store ptr @.str.11, ptr %retval, align 8
  br label %return

sw.bb14:                                          ; preds = %if.end3
  store ptr @.str.12, ptr %retval, align 8
  br label %return

sw.bb15:                                          ; preds = %if.end3
  store ptr @.str.13, ptr %retval, align 8
  br label %return

sw.bb16:                                          ; preds = %if.end3
  store ptr @.str.14, ptr %retval, align 8
  br label %return

sw.bb17:                                          ; preds = %if.end3
  store ptr @.str.15, ptr %retval, align 8
  br label %return

sw.bb18:                                          ; preds = %if.end3
  store ptr @.str.16, ptr %retval, align 8
  br label %return

sw.bb19:                                          ; preds = %if.end3
  store ptr @.str.17, ptr %retval, align 8
  br label %return

sw.bb20:                                          ; preds = %if.end3
  store ptr @.str.18, ptr %retval, align 8
  br label %return

sw.bb21:                                          ; preds = %if.end3
  store ptr @.str.19, ptr %retval, align 8
  br label %return

sw.bb22:                                          ; preds = %if.end3
  store ptr @.str.20, ptr %retval, align 8
  br label %return

sw.bb23:                                          ; preds = %if.end3
  store ptr @.str.21, ptr %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %if.end3
  store ptr @.str.22, ptr %retval, align 8
  br label %return

sw.bb25:                                          ; preds = %if.end3
  store ptr @.str.23, ptr %retval, align 8
  br label %return

sw.bb26:                                          ; preds = %if.end3
  store ptr @.str.24, ptr %retval, align 8
  br label %return

sw.bb27:                                          ; preds = %if.end3
  store ptr @.str.25, ptr %retval, align 8
  br label %return

sw.bb28:                                          ; preds = %if.end3
  store ptr @.str.26, ptr %retval, align 8
  br label %return

sw.bb29:                                          ; preds = %if.end3
  store ptr @.str.27, ptr %retval, align 8
  br label %return

sw.bb30:                                          ; preds = %if.end3
  store ptr @.str.28, ptr %retval, align 8
  br label %return

sw.bb31:                                          ; preds = %if.end3
  store ptr @.str.29, ptr %retval, align 8
  br label %return

sw.bb32:                                          ; preds = %if.end3
  store ptr @.str.30, ptr %retval, align 8
  br label %return

sw.bb33:                                          ; preds = %if.end3
  store ptr @.str.31, ptr %retval, align 8
  br label %return

sw.bb34:                                          ; preds = %if.end3
  store ptr @.str.32, ptr %retval, align 8
  br label %return

sw.bb35:                                          ; preds = %if.end3
  store ptr @.str.33, ptr %retval, align 8
  br label %return

sw.bb36:                                          ; preds = %if.end3
  store ptr @.str.34, ptr %retval, align 8
  br label %return

sw.bb37:                                          ; preds = %if.end3
  store ptr @.str.35, ptr %retval, align 8
  br label %return

sw.bb38:                                          ; preds = %if.end3
  store ptr @.str.36, ptr %retval, align 8
  br label %return

sw.bb39:                                          ; preds = %if.end3
  store ptr @.str.37, ptr %retval, align 8
  br label %return

sw.bb40:                                          ; preds = %if.end3
  store ptr @.str.38, ptr %retval, align 8
  br label %return

sw.bb41:                                          ; preds = %if.end3
  store ptr @.str.39, ptr %retval, align 8
  br label %return

sw.bb42:                                          ; preds = %if.end3
  store ptr @.str.40, ptr %retval, align 8
  br label %return

sw.bb43:                                          ; preds = %if.end3
  store ptr @.str.41, ptr %retval, align 8
  br label %return

sw.bb44:                                          ; preds = %if.end3
  store ptr @.str.42, ptr %retval, align 8
  br label %return

sw.bb45:                                          ; preds = %if.end3
  store ptr @.str.43, ptr %retval, align 8
  br label %return

sw.bb46:                                          ; preds = %if.end3
  store ptr @.str.44, ptr %retval, align 8
  br label %return

sw.bb47:                                          ; preds = %if.end3
  store ptr @.str.45, ptr %retval, align 8
  br label %return

sw.bb48:                                          ; preds = %if.end3
  store ptr @.str.46, ptr %retval, align 8
  br label %return

sw.bb49:                                          ; preds = %if.end3
  store ptr @.str.47, ptr %retval, align 8
  br label %return

sw.bb50:                                          ; preds = %if.end3
  store ptr @.str.48, ptr %retval, align 8
  br label %return

sw.bb51:                                          ; preds = %if.end3
  store ptr @.str.49, ptr %retval, align 8
  br label %return

sw.bb52:                                          ; preds = %if.end3
  store ptr @.str.50, ptr %retval, align 8
  br label %return

sw.bb53:                                          ; preds = %if.end3
  store ptr @.str.51, ptr %retval, align 8
  br label %return

sw.bb54:                                          ; preds = %if.end3
  store ptr @.str.52, ptr %retval, align 8
  br label %return

sw.bb55:                                          ; preds = %if.end3
  store ptr @.str.53, ptr %retval, align 8
  br label %return

sw.bb56:                                          ; preds = %if.end3
  store ptr @.str.54, ptr %retval, align 8
  br label %return

sw.bb57:                                          ; preds = %if.end3
  store ptr @.str.55, ptr %retval, align 8
  br label %return

sw.bb58:                                          ; preds = %if.end3
  store ptr @.str.56, ptr %retval, align 8
  br label %return

sw.bb59:                                          ; preds = %if.end3
  store ptr @.str.57, ptr %retval, align 8
  br label %return

sw.bb60:                                          ; preds = %if.end3
  store ptr @.str.58, ptr %retval, align 8
  br label %return

sw.bb61:                                          ; preds = %if.end3
  store ptr @.str.59, ptr %retval, align 8
  br label %return

sw.bb62:                                          ; preds = %if.end3
  store ptr @.str.60, ptr %retval, align 8
  br label %return

sw.bb63:                                          ; preds = %if.end3
  store ptr @.str.61, ptr %retval, align 8
  br label %return

sw.bb64:                                          ; preds = %if.end3
  store ptr @.str.62, ptr %retval, align 8
  br label %return

sw.bb65:                                          ; preds = %if.end3
  store ptr @.str.63, ptr %retval, align 8
  br label %return

sw.bb66:                                          ; preds = %if.end3
  store ptr @.str.64, ptr %retval, align 8
  br label %return

sw.bb67:                                          ; preds = %if.end3
  store ptr @.str.65, ptr %retval, align 8
  br label %return

sw.bb68:                                          ; preds = %if.end3
  store ptr @.str.66, ptr %retval, align 8
  br label %return

sw.bb69:                                          ; preds = %if.end3
  store ptr @.str.67, ptr %retval, align 8
  br label %return

sw.bb70:                                          ; preds = %if.end3
  store ptr @.str.68, ptr %retval, align 8
  br label %return

sw.bb71:                                          ; preds = %if.end3
  store ptr @.str.69, ptr %retval, align 8
  br label %return

sw.bb72:                                          ; preds = %if.end3
  store ptr @.str.70, ptr %retval, align 8
  br label %return

sw.bb73:                                          ; preds = %if.end3
  store ptr @.str.71, ptr %retval, align 8
  br label %return

sw.bb74:                                          ; preds = %if.end3
  store ptr @.str.72, ptr %retval, align 8
  br label %return

sw.bb75:                                          ; preds = %if.end3
  store ptr @.str.73, ptr %retval, align 8
  br label %return

sw.bb76:                                          ; preds = %if.end3
  store ptr @.str.74, ptr %retval, align 8
  br label %return

sw.bb77:                                          ; preds = %if.end3
  store ptr @.str.75, ptr %retval, align 8
  br label %return

sw.bb78:                                          ; preds = %if.end3
  store ptr @.str.76, ptr %retval, align 8
  br label %return

sw.bb79:                                          ; preds = %if.end3
  store ptr @.str.77, ptr %retval, align 8
  br label %return

sw.bb80:                                          ; preds = %if.end3
  store ptr @.str.78, ptr %retval, align 8
  br label %return

sw.bb81:                                          ; preds = %if.end3
  store ptr @.str.79, ptr %retval, align 8
  br label %return

sw.bb82:                                          ; preds = %if.end3
  store ptr @.str.80, ptr %retval, align 8
  br label %return

sw.bb83:                                          ; preds = %if.end3
  store ptr @.str.81, ptr %retval, align 8
  br label %return

sw.bb84:                                          ; preds = %if.end3
  store ptr @.str.82, ptr %retval, align 8
  br label %return

sw.bb85:                                          ; preds = %if.end3
  store ptr @.str.83, ptr %retval, align 8
  br label %return

sw.bb86:                                          ; preds = %if.end3
  store ptr @.str.84, ptr %retval, align 8
  br label %return

sw.bb87:                                          ; preds = %if.end3
  store ptr @.str.85, ptr %retval, align 8
  br label %return

sw.bb88:                                          ; preds = %if.end3
  store ptr @.str.86, ptr %retval, align 8
  br label %return

sw.bb89:                                          ; preds = %if.end3
  store ptr @.str.87, ptr %retval, align 8
  br label %return

sw.bb90:                                          ; preds = %if.end3
  store ptr @.str.88, ptr %retval, align 8
  br label %return

sw.bb91:                                          ; preds = %if.end3
  store ptr @.str.89, ptr %retval, align 8
  br label %return

sw.bb92:                                          ; preds = %if.end3
  store ptr @.str.90, ptr %retval, align 8
  br label %return

sw.bb93:                                          ; preds = %if.end3
  store ptr @.str.91, ptr %retval, align 8
  br label %return

sw.bb94:                                          ; preds = %if.end3
  store ptr @.str.92, ptr %retval, align 8
  br label %return

sw.bb95:                                          ; preds = %if.end3
  store ptr @.str.93, ptr %retval, align 8
  br label %return

sw.default:                                       ; preds = %if.end3
  store ptr @.str, ptr %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb95, %sw.bb94, %sw.bb93, %sw.bb92, %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb, %cleanup
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
