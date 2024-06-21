; ModuleID = 'samples/730.bc'
source_filename = "/local-ssd/adios2-oqwmwnnlt5ggw7tvys45na6ehqluzw4g-build/aidengro/spack-stage-adios2-2.9.1-oqwmwnnlt5ggw7tvys45na6ehqluzw4g/spack-src/source/adios2/toolkit/sst/dp/rdma_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct._CP_DP_Interface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._FMformat_list = type { ptr, ptr, i32, ptr }
%struct._FMField = type { ptr, ptr, i32, i32 }
%struct._CP_Services = type { ptr, ptr, ptr, ptr }
%struct._Rdma_RS_Stream = type { ptr, ptr, i32, ptr, i64, i32, ptr, ptr, %struct._RdmaBuffer, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i64, i64, ptr, ptr, ptr }
%struct._RdmaBuffer = type { %struct._RdmaBufferHandle, i64, i64 }
%struct._RdmaBufferHandle = type { ptr, i64 }
%struct._RdmaReaderContactInfo = type { ptr, i64, ptr }
%struct.fabric_state = type { ptr, ptr, i32, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.fi_info = type { ptr, i64, i64, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Rdma_WS_Stream = type { ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr }
%struct._Rdma_WSR_Stream = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x i32] }
%struct._RdmaWriterContactInfo = type { ptr, i64, ptr, %struct._RdmaBufferHandle }
%struct._RdmaStepLogEntry = type { i64, ptr, ptr, i32, i64, i32 }
%struct._RdmaRankReqLog = type { ptr, i32, %union.anon, %union.anon.0, i64, %union.anon.1, ptr }
%union.anon = type { i32 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%struct._RdmaCompletionHandle = type { ptr, ptr, ptr, i64, i32, i32, ptr }
%struct._TimestepEntry = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32 }
%struct._SstData = type { i64, ptr }
%struct.fi_domain_attr = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, i32 }
%struct.fi_ep_attr = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct._SstParams = type { i64, i32, i64, i64, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, ptr }
%struct.fi_fabric_attr = type { ptr, ptr, ptr, i32, i32 }
%struct.fi_av_attr = type { i32, i32, i64, i64, ptr, ptr, i64 }
%struct.fi_cq_attr = type { i64, i64, i32, i32, i32, i32, ptr }
%struct.fid_av = type { %struct.fid, ptr }
%struct.fid = type { i64, ptr, ptr }
%struct.fid_cq = type { %struct.fid, ptr }
%struct.fid_ep = type { %struct.fid, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fi_ops_cm = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fid_fabric = type { %struct.fid, ptr, i32 }
%struct.fi_ops_fabric = type { i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fid_domain = type { %struct.fid, ptr, ptr }
%struct.fi_ops_domain = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fi_ops = type { i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fi_ops_av = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fi_ops_mr = type { i64, ptr, ptr, ptr }
%struct.fid_mr = type { %struct.fid, ptr, i64 }
%struct.fi_cq_data_entry = type { ptr, i64, i64, ptr, i64 }
%struct.fi_ops_rma = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fi_ops_cq = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fi_ops_msg = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@wsr_mutex = global %union.pthread_mutex_t zeroinitializer, align 8
@ts_mutex = global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"rdma\00", align 1
@RdmaDPInterface = internal global %struct._CP_DP_Interface zeroinitializer, align 8
@RdmaReaderContactStructs = internal global [2 x %struct._FMformat_list] [%struct._FMformat_list { ptr @.str.1, ptr @RdmaReaderContactList, i32 24, ptr null }, %struct._FMformat_list zeroinitializer], align 16
@RdmaWriterContactStructs = internal global [3 x %struct._FMformat_list] [%struct._FMformat_list { ptr @.str.7, ptr @RdmaWriterContactList, i32 40, ptr null }, %struct._FMformat_list { ptr @.str.8, ptr @RdmaBufferHandleList, i32 16, ptr null }, %struct._FMformat_list zeroinitializer], align 16
@RdmaBufferHandleStructs = internal global [2 x %struct._FMformat_list] [%struct._FMformat_list { ptr @.str.8, ptr @RdmaBufferHandleList, i32 16, ptr null }, %struct._FMformat_list zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [22 x i8] c"RdmaReaderContactInfo\00", align 1
@RdmaReaderContactList = internal global [4 x %struct._FMField] [%struct._FMField { ptr @.str.2, ptr @.str.3, i32 8, i32 0 }, %struct._FMField { ptr @.str.4, ptr @.str.3, i32 4, i32 8 }, %struct._FMField { ptr @.str.5, ptr @.str.6, i32 1, i32 16 }, %struct._FMField zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"reader_ID\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"integer[Length]\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"RdmaWriterContactInfo\00", align 1
@RdmaWriterContactList = internal global [5 x %struct._FMField] [%struct._FMField { ptr @.str.9, ptr @.str.3, i32 8, i32 0 }, %struct._FMField { ptr @.str.4, ptr @.str.3, i32 4, i32 8 }, %struct._FMField { ptr @.str.5, ptr @.str.6, i32 1, i32 16 }, %struct._FMField { ptr @.str.10, ptr @.str.8, i32 16, i32 24 }, %struct._FMField zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [17 x i8] c"RdmaBufferHandle\00", align 1
@RdmaBufferHandleList = internal global [3 x %struct._FMField] [%struct._FMField { ptr @.str.11, ptr @.str.3, i32 8, i32 0 }, %struct._FMField { ptr @.str.12, ptr @.str.3, i32 8, i32 8 }, %struct._FMField zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [10 x i8] c"writer_ID\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ReaderRollHandle\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Block\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"SST_DP_PRELOAD\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"making preload available in RDMA DP based on environment variable value.\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Could not find a valid transport fabric.\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"FABRIC_IFACE\00", align 1
@fabric_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"no fabrics detected.\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"using interface set by FABRIC_IFACE.\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"verbs\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"gni\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"psm2\00", align 1
@.str.26 = private unnamed_addr constant [75 x i8] c"seeing candidate fabric %s, will use this unless we see something better.\0A\00", align 1
@.str.27 = private unnamed_addr constant [173 x i8] c"ignoring fabric %s because it's not of a supported type. It may work to force this fabric to be used by setting FABRIC_IFACE to %s, but it may not be stable or performant.\0A\00", align 1
@.str.28 = private unnamed_addr constant [283 x i8] c"none of the usable system fabrics are supported high speed interfaces (verbs, gni, psm2.) To use a compatible fabric that is being ignored (probably sockets), set the environment variable FABRIC_IFACE to the interface name. Check the output of fi_info to troubleshoot this message.\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"copying the fabric info failed.\0A\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"Fabric parameters to use at fabric initialization: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"opening fabric access failed with %d (%s). This is fatal.\0A\00", align 1
@.str.32 = private unnamed_addr constant [54 x i8] c"accessing domain failed with %d (%s). This is fatal.\0A\00", align 1
@stderr = external global ptr, align 8
@.str.33 = private unnamed_addr constant [186 x i8] c"SST RDMA Dataplane failure.  fi_domain() has failed, which may mean that libfabric is defaulting to the wrong interface.  Check your FABRIC_IFACE environment variable (or specify one).\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"opening endpoint failed with %d (%s). This is fatal.\0A\00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"could not initialize address vector, failed with %d (%s). This is fatal.\0A\00", align 1
@.str.36 = private unnamed_addr constant [80 x i8] c"could not bind endpoint to address vector, failed with %d (%s). This is fatal.\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"opening completion queue failed with %d (%s). This is fatal.\0A\00", align 1
@.str.38 = private unnamed_addr constant [82 x i8] c"could not bind endpoint to completion queue, failed with %d (%s). This is fatal.\0A\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"enable endpoint, failed with %d (%s). This is fatal.\0A\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"Fabric Parameters:\0A%s\0A\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"Received contact info for RS_Stream %p, WSR Rank %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [53 x i8] c"Received contact info for WS_stream %p, WSR Rank %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Performing remote read of Writer Rank %d at step %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Block address is %p, with a key of %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Timestep info is null\0A\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"rank %d, wrank %d, entry %d, buffer slot %d, bad handle pending value.\0A\00", align 1
@.str.47 = private unnamed_addr constant [82 x i8] c"read patterns are fixed, but new request to rank %d (Offset = %zi, Length = %zi \0A\00", align 1
@.str.48 = private unnamed_addr constant [60 x i8] c"Remote read target is Rank %d (Offset = %zi, Length = %zi)\0A\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"fi_read failed with code %d.\0A\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"Posted RDMA get for Writer Rank %d for handle %p\0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"failure while waiting for completions (%d).\0A\00", align 1
@.str.52 = private unnamed_addr constant [56 x i8] c"got completion for request with handle %p (flags %li).\0A\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Rank %d, %s\0A\00", align 1
@__func__.RdmaWaitForCompletion = private unnamed_addr constant [22 x i8] c"RdmaWaitForCompletion\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"got completion for Rank %d, push request %d.\0A\00", align 1
@.str.55 = private unnamed_addr constant [61 x i8] c"CQEntry.data = %lu, BufferSlot = %d, WRank = %d, WRidx = %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"Got push completion without a known handle...\0A\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"got completion for request with handle %p.\0A\00", align 1
@.str.58 = private unnamed_addr constant [84 x i8] c"received notification that writer peer %d has failed, failing any pending requests\0A\00", align 1
@.str.59 = private unnamed_addr constant [57 x i8] c"Providing timestep data with block %p and access key %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"enabling preload.\0A\00", align 1
@.str.61 = private unnamed_addr constant [61 x i8] c"Sending Data = %lu ; BufferSlot = %d, Rank = %d, Entry = %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"Releasing timestep %ld\0A\00", align 1
@.str.63 = private unnamed_addr constant [43 x i8] c"Failed to release Timestep %ld, not found\0A\00", align 1
@.str.64 = private unnamed_addr constant [66 x i8] c"rank %d, RX preload buffers full, deferring preload of step %li.\0A\00", align 1
@.str.65 = private unnamed_addr constant [62 x i8] c"while completing step %d, saw completion notice for step %d.\0A\00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"received completion for step %d, which we don't know about.\0A\00", align 1
@.str.67 = private unnamed_addr constant [91 x i8] c"while waiting for push to complete, saw an unknown completion. This is probably an error.\0A\00", align 1
@.str.68 = private unnamed_addr constant [87 x i8] c"got unexpected completion while fetching preload patterns. This is probably an error.\0A\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"read pattern is locked\0A\00", align 1
@.str.70 = private unnamed_addr constant [160 x i8] c"RDMA dataplane is ignoring a read pattern lock notification because preloading is disabled. Enable by setting the environment variable SST_DP_PRELOAD to 'yes'\0A\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"write pattern is locked.\0A\00", align 1
@.str.72 = private unnamed_addr constant [161 x i8] c"RDMA dataplane is ignoring a write pattern lock notification because preloading is disabled. Enable by setting the environment variable SST_DP_PRELOAD to 'yes'\0A\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"rank %d: %s\0A\00", align 1
@__func__.PostPreload = private unnamed_addr constant [12 x i8] c"PostPreload\00", align 1
@.str.74 = private unnamed_addr constant [67 x i8] c"trying to post preload data for a timestep with no access history.\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"Rank %d, fi_recv failed.\0A\00", align 1
@.str.76 = private unnamed_addr constant [85 x i8] c"got unexpected completion while posting preload pattern. This is probably an error.\0A\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"%s with Timestep = %li, PreloadMode = %d\0A\00", align 1
@__func__.RdmaTimestepArrived = private unnamed_addr constant [20 x i8] c"RdmaTimestepArrived\00", align 1
@.str.78 = private unnamed_addr constant [82 x i8] c"Reader Rank %d: %li early reads of %li total reads (where preload was possible.)\0A\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"Tearing down RDMA state on reader.\0A\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"could not close ep, failed with %d (%s).\0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"could not close cq, failed with %d (%s).\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"could not close av, failed with %d (%s).\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"could not close domain, failed with %d (%s).\0A\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"could not close fabric, failed with %d (%s).\0A\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"Releasing reader-specific state for remaining readers.\0A\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"Releasing remaining timesteps.\0A\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"Tearing down RDMA state on writer.\0A\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"FI_FORK_UNSAFE\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"FI_FORK_UNSAFE=Yes\00", align 1
@.str.90 = private unnamed_addr constant [51 x i8] c"RDMA Dataplane could not find any viable fabrics.\0A\00", align 1
@.str.91 = private unnamed_addr constant [68 x i8] c"RDMA Dataplane found the requested interface %s, provider type %s.\0A\00", align 1
@.str.92 = private unnamed_addr constant [72 x i8] c"RDMA Dataplane sees interface %s, provider type %s, which should work.\0A\00", align 1
@.str.93 = private unnamed_addr constant [58 x i8] c"RDMA Dataplane could not find an RDMA-compatible fabric.\0A\00", align 1
@.str.94 = private unnamed_addr constant [60 x i8] c"RDMA Dataplane evaluating viability, returning priority %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"RDMA Dataplane unloading\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @LoadRdmaDP() #0 {
entry:
  store ptr @.str, ptr @RdmaDPInterface, align 8, !tbaa !4
  store ptr @RdmaReaderContactStructs, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 1), align 8, !tbaa !9
  store ptr @RdmaWriterContactStructs, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 2), align 8, !tbaa !10
  store ptr @RdmaBufferHandleStructs, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 3), align 8, !tbaa !11
  store ptr @RdmaInitReader, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 4), align 8, !tbaa !12
  store ptr @RdmaInitWriter, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 5), align 8, !tbaa !13
  store ptr @RdmaInitWriterPerReader, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 6), align 8, !tbaa !14
  store ptr @RdmaProvideWriterDataToReader, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 7), align 8, !tbaa !15
  store ptr @RdmaReadRemoteMemory, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 8), align 8, !tbaa !16
  store ptr @RdmaWaitForCompletion, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 9), align 8, !tbaa !17
  store ptr @RdmaNotifyConnFailure, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 10), align 8, !tbaa !18
  store ptr @RdmaProvideTimestep, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 11), align 8, !tbaa !19
  store ptr @RdmaReaderRegisterTimestep, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 12), align 8, !tbaa !20
  store ptr @RdmaReleaseTimestep, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 14), align 8, !tbaa !21
  store ptr @RdmaReleaseTimestepPerReader, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 15), align 8, !tbaa !22
  store ptr @RdmaReadPatternLocked, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 17), align 8, !tbaa !23
  store ptr @RdmaWritePatternLocked, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 18), align 8, !tbaa !24
  store ptr @RdmaReaderReleaseTimestep, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 16), align 8, !tbaa !25
  store ptr @RdmaTimestepArrived, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 13), align 8, !tbaa !26
  store ptr @RdmaDestroyReader, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 19), align 8, !tbaa !27
  store ptr @RdmaDestroyWriter, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 20), align 8, !tbaa !28
  store ptr @RdmaDestroyWriterPerReader, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 21), align 8, !tbaa !29
  store ptr @RdmaGetPriority, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 22), align 8, !tbaa !30
  store ptr @RdmaUnGetPriority, ptr getelementptr inbounds (%struct._CP_DP_Interface, ptr @RdmaDPInterface, i32 0, i32 23), align 8, !tbaa !31
  ret ptr @RdmaDPInterface
}

; Function Attrs: nounwind uwtable
define internal ptr @RdmaInitReader(ptr noundef %Svcs, ptr noundef %CP_Stream, ptr noundef %ReaderContactInfoPtr, ptr noundef %Params, ptr noundef %WriterContact, ptr noundef %Stats) #0 {
entry:
  %retval = alloca ptr, align 8
  %Svcs.addr = alloca ptr, align 8
  %CP_Stream.addr = alloca ptr, align 8
  %ReaderContactInfoPtr.addr = alloca ptr, align 8
  %Params.addr = alloca ptr, align 8
  %WriterContact.addr = alloca ptr, align 8
  %Stats.addr = alloca ptr, align 8
  %Stream = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %ContactInfo = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %PreloadEnv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %CP_Stream, ptr %CP_Stream.addr, align 8, !tbaa !32
  store ptr %ReaderContactInfoPtr, ptr %ReaderContactInfoPtr.addr, align 8, !tbaa !32
  store ptr %Params, ptr %Params.addr, align 8, !tbaa !32
  store ptr %WriterContact, ptr %WriterContact.addr, align 8, !tbaa !32
  store ptr %Stats, ptr %Stats.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %call = call noalias ptr @malloc(i64 noundef 224) #12
  store ptr %call, ptr %Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #11
  %0 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %getMPIComm = getelementptr inbounds %struct._CP_Services, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %getMPIComm, align 8, !tbaa !33
  %2 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %call1 = call ptr %1(ptr noundef %2)
  store ptr %call1, ptr %comm, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ContactInfo) #11
  %call2 = call noalias ptr @malloc(i64 noundef 24) #12
  store ptr %call2, ptr %ContactInfo, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %PreloadEnv) #11
  store ptr null, ptr %PreloadEnv, align 8, !tbaa !32
  %3 = load ptr, ptr %Stream, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 224, i1 false)
  %call3 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 88) #13
  %4 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric4 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %4, i32 0, i32 3
  store ptr %call3, ptr %Fabric4, align 8, !tbaa !35
  %5 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric5 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %Fabric5, align 8, !tbaa !35
  store ptr %6, ptr %Fabric, align 8, !tbaa !32
  %7 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %8 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream6 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %8, i32 0, i32 1
  store ptr %7, ptr %CP_Stream6, align 8, !tbaa !41
  %9 = load ptr, ptr %comm, align 8, !tbaa !32
  %10 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %10, i32 0, i32 2
  %call7 = call i32 @SMPI_Comm_rank(ptr noundef %9, ptr noundef %Rank)
  %11 = load ptr, ptr %ReaderContactInfoPtr.addr, align 8, !tbaa !32
  store ptr null, ptr %11, align 8, !tbaa !32
  %12 = load ptr, ptr %Stream, align 8, !tbaa !32
  %13 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %RS_Stream = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %13, i32 0, i32 0
  store ptr %12, ptr %RS_Stream, align 8, !tbaa !42
  %14 = load ptr, ptr %Params.addr, align 8, !tbaa !32
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call8 = call noalias ptr @malloc(i64 noundef 160) #12
  %15 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Params9 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %15, i32 0, i32 12
  store ptr %call8, ptr %Params9, align 8, !tbaa !44
  %16 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Params10 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %Params10, align 8, !tbaa !44
  %18 = load ptr, ptr %Params.addr, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %18, i64 160, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call ptr @getenv(ptr noundef @.str.13) #11
  store ptr %call11, ptr %PreloadEnv, align 8, !tbaa !32
  %19 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %tobool12 = icmp ne ptr %19, null
  br i1 %tobool12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %20 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call13 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.14) #14
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call14 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str.15) #14
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then22, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %22 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call17 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str.16) #14
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then22, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %23 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call20 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.17) #14
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false, %land.lhs.true
  %24 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %verbose, align 8, !tbaa !45
  %26 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %25(ptr noundef %26, i32 noundef 5, ptr noundef @.str.18)
  %27 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadAvail = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %27, i32 0, i32 11
  store i32 1, ptr %PreloadAvail, align 8, !tbaa !46
  br label %if.end24

if.else:                                          ; preds = %lor.lhs.false19, %if.end
  %28 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadAvail23 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %28, i32 0, i32 11
  store i32 0, ptr %PreloadAvail23, align 8, !tbaa !46
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then22
  %29 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric25 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %Fabric25, align 8, !tbaa !35
  %31 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Params26 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %Params26, align 8, !tbaa !44
  %33 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %34 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void @init_fabric(ptr noundef %30, ptr noundef %32, ptr noundef %33, ptr noundef %34)
  %35 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %info = getelementptr inbounds %struct.fabric_state, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %info, align 8, !tbaa !47
  %tobool27 = icmp ne ptr %36, null
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end24
  %37 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose29 = getelementptr inbounds %struct._CP_Services, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %verbose29, align 8, !tbaa !45
  %39 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %38(ptr noundef %39, i32 noundef 1, ptr noundef @.str.19)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %40 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %info31 = getelementptr inbounds %struct.fabric_state, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %info31, align 8, !tbaa !47
  %src_addrlen = getelementptr inbounds %struct.fi_info, ptr %41, i32 0, i32 4
  %42 = load i64, ptr %src_addrlen, align 8, !tbaa !49
  %43 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Length = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %43, i32 0, i32 1
  store i64 %42, ptr %Length, align 8, !tbaa !51
  %44 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Length32 = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %44, i32 0, i32 1
  %45 = load i64, ptr %Length32, align 8, !tbaa !51
  %call33 = call noalias ptr @malloc(i64 noundef %45) #12
  %46 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Address = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %46, i32 0, i32 2
  store ptr %call33, ptr %Address, align 8, !tbaa !52
  %47 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %47, i32 0, i32 8
  %48 = load ptr, ptr %signal, align 8, !tbaa !53
  %49 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Address34 = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %Address34, align 8, !tbaa !52
  %51 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Length35 = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %51, i32 0, i32 1
  %call36 = call i32 @fi_getname(ptr noundef %48, ptr noundef %50, ptr noundef %Length35)
  %52 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadStep = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %52, i32 0, i32 4
  store i64 -1, ptr %PreloadStep, align 8, !tbaa !54
  %53 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %54 = load ptr, ptr %Stream, align 8, !tbaa !32
  %ContactInfo37 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %54, i32 0, i32 13
  store ptr %53, ptr %ContactInfo37, align 8, !tbaa !55
  %55 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadPosted = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %55, i32 0, i32 5
  store i32 0, ptr %PreloadPosted, align 8, !tbaa !56
  %56 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PendingReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %56, i32 0, i32 19
  store i32 0, ptr %PendingReads, align 8, !tbaa !57
  %57 = load ptr, ptr %Stream, align 8, !tbaa !32
  %RecvCounter = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %57, i32 0, i32 10
  store ptr null, ptr %RecvCounter, align 8, !tbaa !58
  %58 = load ptr, ptr %Stream, align 8, !tbaa !32
  %EarlyReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %58, i32 0, i32 20
  store i64 0, ptr %EarlyReads, align 8, !tbaa !59
  %59 = load ptr, ptr %Stream, align 8, !tbaa !32
  %TotalReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %59, i32 0, i32 21
  store i64 0, ptr %TotalReads, align 8, !tbaa !60
  %60 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %61 = load ptr, ptr %ReaderContactInfoPtr.addr, align 8, !tbaa !32
  store ptr %60, ptr %61, align 8, !tbaa !32
  %62 = load ptr, ptr %Stream, align 8, !tbaa !32
  store ptr %62, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %PreloadEnv) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ContactInfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  %63 = load ptr, ptr %retval, align 8
  ret ptr %63
}

; Function Attrs: nounwind uwtable
define internal ptr @RdmaInitWriter(ptr noundef %Svcs, ptr noundef %CP_Stream, ptr noundef %Params, ptr noundef %DPAttrs, ptr noundef %Stats) #0 {
entry:
  %retval = alloca ptr, align 8
  %Svcs.addr = alloca ptr, align 8
  %CP_Stream.addr = alloca ptr, align 8
  %Params.addr = alloca ptr, align 8
  %DPAttrs.addr = alloca ptr, align 8
  %Stats.addr = alloca ptr, align 8
  %Stream = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %PreloadEnv = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %CP_Stream, ptr %CP_Stream.addr, align 8, !tbaa !32
  store ptr %Params, ptr %Params.addr, align 8, !tbaa !32
  store ptr %DPAttrs, ptr %DPAttrs.addr, align 8, !tbaa !32
  store ptr %Stats, ptr %Stats.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %call = call noalias ptr @malloc(i64 noundef 64) #12
  store ptr %call, ptr %Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #11
  %0 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %getMPIComm = getelementptr inbounds %struct._CP_Services, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %getMPIComm, align 8, !tbaa !33
  %2 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %call1 = call ptr %1(ptr noundef %2)
  store ptr %call1, ptr %comm, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %PreloadEnv) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %3 = load ptr, ptr %Stream, align 8, !tbaa !32
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 64, i1 false)
  %4 = load ptr, ptr %comm, align 8, !tbaa !32
  %5 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %5, i32 0, i32 2
  %call2 = call i32 @SMPI_Comm_rank(ptr noundef %4, ptr noundef %Rank)
  %call3 = call ptr @getenv(ptr noundef @.str.13) #11
  store ptr %call3, ptr %PreloadEnv, align 8, !tbaa !32
  %6 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call4 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str.14) #14
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call5 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.15) #14
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call8 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.16) #14
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %10 = load ptr, ptr %PreloadEnv, align 8, !tbaa !32
  %call11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.17) #14
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false, %land.lhs.true
  %11 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank13 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %Rank13, align 8, !tbaa !61
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %13 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %verbose, align 8, !tbaa !45
  %15 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %14(ptr noundef %15, i32 noundef 2, ptr noundef @.str.18)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  %16 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadAvail = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %16, i32 0, i32 5
  store i32 1, ptr %PreloadAvail, align 4, !tbaa !63
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false10, %entry
  %17 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadAvail16 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %17, i32 0, i32 5
  store i32 0, ptr %PreloadAvail16, align 4, !tbaa !63
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  %call18 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 88) #13
  %18 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric19 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %18, i32 0, i32 3
  store ptr %call18, ptr %Fabric19, align 8, !tbaa !64
  %19 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric20 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %Fabric20, align 8, !tbaa !64
  store ptr %20, ptr %Fabric, align 8, !tbaa !32
  %21 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric21 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %Fabric21, align 8, !tbaa !64
  %23 = load ptr, ptr %Params.addr, align 8, !tbaa !32
  %24 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %25 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void @init_fabric(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric22 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %Fabric22, align 8, !tbaa !64
  store ptr %27, ptr %Fabric, align 8, !tbaa !32
  %28 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %info = getelementptr inbounds %struct.fabric_state, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %info, align 8, !tbaa !47
  %tobool23 = icmp ne ptr %29, null
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end17
  %30 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose25 = getelementptr inbounds %struct._CP_Services, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %verbose25, align 8, !tbaa !45
  %32 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %31(ptr noundef %32, i32 noundef 5, ptr noundef @.str.19)
  br label %err_out

if.end26:                                         ; preds = %if.end17
  %33 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose27 = getelementptr inbounds %struct._CP_Services, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %verbose27, align 8, !tbaa !45
  %35 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %36 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %info28 = getelementptr inbounds %struct.fabric_state, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %info28, align 8, !tbaa !47
  %call29 = call ptr @fi_tostr(ptr noundef %37, i32 noundef 0)
  call void (ptr, i32, ptr, ...) %34(ptr noundef %35, i32 noundef 5, ptr noundef @.str.40, ptr noundef %call29)
  %38 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %39 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream30 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %39, i32 0, i32 1
  store ptr %38, ptr %CP_Stream30, align 8, !tbaa !65
  %40 = load ptr, ptr %Stream, align 8, !tbaa !32
  %DefLocked = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %40, i32 0, i32 4
  store i32 -1, ptr %DefLocked, align 8, !tbaa !66
  %41 = load ptr, ptr %Stream, align 8, !tbaa !32
  store ptr %41, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err_out:                                          ; preds = %if.then24
  %42 = load ptr, ptr %Stream, align 8, !tbaa !32
  %tobool31 = icmp ne ptr %42, null
  br i1 %tobool31, label %if.then32, label %if.end38

if.then32:                                        ; preds = %err_out
  %43 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric33 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %43, i32 0, i32 3
  %44 = load ptr, ptr %Fabric33, align 8, !tbaa !64
  %tobool34 = icmp ne ptr %44, null
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then32
  %45 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric36 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %45, i32 0, i32 3
  %46 = load ptr, ptr %Fabric36, align 8, !tbaa !64
  call void @free(ptr noundef %46) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32
  %47 = load ptr, ptr %Stream, align 8, !tbaa !32
  call void @free(ptr noundef %47) #11
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %err_out
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end26
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %PreloadEnv) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  %48 = load ptr, ptr %retval, align 8
  ret ptr %48
}

; Function Attrs: nounwind uwtable
define internal ptr @RdmaInitWriterPerReader(ptr noundef %Svcs, ptr noundef %WS_Stream_v, i32 noundef %readerCohortSize, ptr noundef %PeerCohort, ptr noundef %providedReaderInfo_v, ptr noundef %WriterContactInfoPtr) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %WS_Stream_v.addr = alloca ptr, align 8
  %readerCohortSize.addr = alloca i32, align 4
  %PeerCohort.addr = alloca ptr, align 8
  %providedReaderInfo_v.addr = alloca ptr, align 8
  %WriterContactInfoPtr.addr = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  %WSR_Stream = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %ContactInfo = alloca ptr, align 8
  %providedReaderInfo = alloca ptr, align 8
  %ReaderRollHandle = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %WS_Stream_v, ptr %WS_Stream_v.addr, align 8, !tbaa !32
  store i32 %readerCohortSize, ptr %readerCohortSize.addr, align 4, !tbaa !67
  store ptr %PeerCohort, ptr %PeerCohort.addr, align 8, !tbaa !32
  store ptr %providedReaderInfo_v, ptr %providedReaderInfo_v.addr, align 8, !tbaa !32
  store ptr %WriterContactInfoPtr, ptr %WriterContactInfoPtr.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %0 = load ptr, ptr %WS_Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WSR_Stream) #11
  %call = call noalias ptr @malloc(i64 noundef 96) #12
  store ptr %call, ptr %WSR_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %1 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Fabric1 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %Fabric1, align 8, !tbaa !64
  store ptr %2, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ContactInfo) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %providedReaderInfo) #11
  %3 = load ptr, ptr %providedReaderInfo_v.addr, align 8, !tbaa !32
  store ptr %3, ptr %providedReaderInfo, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ReaderRollHandle) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  %4 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %5 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WS_Stream2 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %5, i32 0, i32 0
  store ptr %4, ptr %WS_Stream2, align 8, !tbaa !68
  %6 = load ptr, ptr %PeerCohort.addr, align 8, !tbaa !32
  %7 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %PeerCohort3 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %7, i32 0, i32 1
  store ptr %6, ptr %PeerCohort3, align 8, !tbaa !70
  %8 = load i32, ptr %readerCohortSize.addr, align 4, !tbaa !67
  %9 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderCohortSize = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %9, i32 0, i32 2
  store i32 %8, ptr %ReaderCohortSize, align 8, !tbaa !71
  %10 = load i32, ptr %readerCohortSize.addr, align 4, !tbaa !67
  %conv = sext i32 %10 to i64
  %call4 = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #13
  %11 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderAddr = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %11, i32 0, i32 6
  store ptr %call4, ptr %ReaderAddr, align 8, !tbaa !72
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %i, align 4, !tbaa !67
  %13 = load i32, ptr %readerCohortSize.addr, align 4, !tbaa !67
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %av = getelementptr inbounds %struct.fabric_state, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %av, align 8, !tbaa !73
  %16 = load ptr, ptr %providedReaderInfo, align 8, !tbaa !32
  %17 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8, !tbaa !32
  %Address = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %Address, align 8, !tbaa !52
  %20 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderAddr6 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %ReaderAddr6, align 8, !tbaa !72
  %22 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom7 = sext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds i64, ptr %21, i64 %idxprom7
  %call9 = call i32 @fi_av_insert(ptr noundef %15, ptr noundef %19, i64 noundef 1, ptr noundef %arrayidx8, i64 noundef 0, ptr noundef null)
  %23 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %verbose, align 8, !tbaa !45
  %25 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  %27 = load ptr, ptr %providedReaderInfo, align 8, !tbaa !32
  %28 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom10 = sext i32 %28 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %27, i64 %idxprom10
  %29 = load ptr, ptr %arrayidx11, align 8, !tbaa !32
  %RS_Stream = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %RS_Stream, align 8, !tbaa !42
  %31 = load i32, ptr %i, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %24(ptr noundef %26, i32 noundef 5, ptr noundef @.str.41, ptr noundef %30, i32 noundef %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call12 = call i32 @pthread_mutex_lock(ptr noundef @wsr_mutex) #11
  %33 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %33, i32 0, i32 8
  %34 = load ptr, ptr %Readers, align 8, !tbaa !74
  %35 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %35, i32 0, i32 7
  %36 = load i32, ptr %ReaderCount, align 8, !tbaa !75
  %add = add nsw i32 %36, 1
  %conv13 = sext i32 %add to i64
  %mul = mul i64 96, %conv13
  %call14 = call ptr @realloc(ptr noundef %34, i64 noundef %mul) #15
  %37 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers15 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %37, i32 0, i32 8
  store ptr %call14, ptr %Readers15, align 8, !tbaa !74
  %38 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %39 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers16 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %39, i32 0, i32 8
  %40 = load ptr, ptr %Readers16, align 8, !tbaa !74
  %41 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount17 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %41, i32 0, i32 7
  %42 = load i32, ptr %ReaderCount17, align 8, !tbaa !75
  %idxprom18 = sext i32 %42 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %40, i64 %idxprom18
  store ptr %38, ptr %arrayidx19, align 8, !tbaa !32
  %43 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount20 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %43, i32 0, i32 7
  %44 = load i32, ptr %ReaderCount20, align 8, !tbaa !75
  %inc21 = add nsw i32 %44, 1
  store i32 %inc21, ptr %ReaderCount20, align 8, !tbaa !75
  %call22 = call i32 @pthread_mutex_unlock(ptr noundef @wsr_mutex) #11
  %call23 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #13
  store ptr %call23, ptr %ContactInfo, align 8, !tbaa !32
  %45 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %46 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %WS_Stream24 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %46, i32 0, i32 0
  store ptr %45, ptr %WS_Stream24, align 8, !tbaa !76
  %47 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %info = getelementptr inbounds %struct.fabric_state, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %info, align 8, !tbaa !47
  %src_addrlen = getelementptr inbounds %struct.fi_info, ptr %48, i32 0, i32 4
  %49 = load i64, ptr %src_addrlen, align 8, !tbaa !49
  %50 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Length = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %50, i32 0, i32 1
  store i64 %49, ptr %Length, align 8, !tbaa !78
  %51 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Length25 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %51, i32 0, i32 1
  %52 = load i64, ptr %Length25, align 8, !tbaa !78
  %call26 = call noalias ptr @malloc(i64 noundef %52) #12
  %53 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Address27 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %53, i32 0, i32 2
  store ptr %call26, ptr %Address27, align 8, !tbaa !79
  %54 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %54, i32 0, i32 8
  %55 = load ptr, ptr %signal, align 8, !tbaa !53
  %56 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Address28 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %Address28, align 8, !tbaa !79
  %58 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %Length29 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %58, i32 0, i32 1
  %call30 = call i32 @fi_getname(ptr noundef %55, ptr noundef %57, ptr noundef %Length29)
  %59 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %ReaderRollHandle31 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %59, i32 0, i32 3
  store ptr %ReaderRollHandle31, ptr %ReaderRollHandle, align 8, !tbaa !32
  %60 = load i32, ptr %readerCohortSize.addr, align 4, !tbaa !67
  %conv32 = sext i32 %60 to i64
  %call33 = call noalias ptr @calloc(i64 noundef %conv32, i64 noundef 32) #13
  %61 = load ptr, ptr %ReaderRollHandle, align 8, !tbaa !32
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %61, i32 0, i32 0
  store ptr %call33, ptr %Block, align 8, !tbaa !80
  %62 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain = getelementptr inbounds %struct.fabric_state, ptr %62, i32 0, i32 7
  %63 = load ptr, ptr %domain, align 8, !tbaa !81
  %64 = load ptr, ptr %ReaderRollHandle, align 8, !tbaa !32
  %Block34 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %Block34, align 8, !tbaa !80
  %66 = load i32, ptr %readerCohortSize.addr, align 4, !tbaa !67
  %conv35 = sext i32 %66 to i64
  %mul36 = mul i64 %conv35, 32
  %67 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %rrmr = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %67, i32 0, i32 5
  %68 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx = getelementptr inbounds %struct.fabric_state, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %ctx, align 8, !tbaa !82
  %call37 = call i32 @fi_mr_reg(ptr noundef %63, ptr noundef %65, i64 noundef %mul36, i64 noundef 8192, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %rrmr, ptr noundef %69)
  %70 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %rrmr38 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %70, i32 0, i32 5
  %71 = load ptr, ptr %rrmr38, align 8, !tbaa !83
  %call39 = call i64 @fi_mr_key(ptr noundef %71)
  %72 = load ptr, ptr %ReaderRollHandle, align 8, !tbaa !32
  %Key = getelementptr inbounds %struct._RdmaBufferHandle, ptr %72, i32 0, i32 1
  store i64 %call39, ptr %Key, align 8, !tbaa !84
  %73 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %74 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WriterContactInfo = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %74, i32 0, i32 3
  store ptr %73, ptr %WriterContactInfo, align 8, !tbaa !85
  %call40 = call noalias ptr @malloc(i64 noundef 32) #12
  %75 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderRoll = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %75, i32 0, i32 4
  store ptr %call40, ptr %ReaderRoll, align 8, !tbaa !86
  %76 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderRoll41 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %76, i32 0, i32 4
  %77 = load ptr, ptr %ReaderRoll41, align 8, !tbaa !86
  %Handle = getelementptr inbounds %struct._RdmaBuffer, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %ReaderRollHandle, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %Handle, ptr align 8 %78, i64 16, i1 false), !tbaa.struct !87
  %79 = load i32, ptr %readerCohortSize.addr, align 4, !tbaa !67
  %conv42 = sext i32 %79 to i64
  %mul43 = mul i64 %conv42, 32
  %80 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderRoll44 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %80, i32 0, i32 4
  %81 = load ptr, ptr %ReaderRoll44, align 8, !tbaa !86
  %BufferLen = getelementptr inbounds %struct._RdmaBuffer, ptr %81, i32 0, i32 1
  store i64 %mul43, ptr %BufferLen, align 8, !tbaa !89
  %82 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %Preload = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %82, i32 0, i32 8
  store i32 0, ptr %Preload, align 4, !tbaa !90
  %83 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %SelectionPulled = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %83, i32 0, i32 9
  store i32 0, ptr %SelectionPulled, align 8, !tbaa !91
  %84 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %SelectLocked = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %84, i32 0, i32 7
  store i32 -1, ptr %SelectLocked, align 8, !tbaa !92
  %85 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %LastReleased = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %85, i32 0, i32 11
  store ptr null, ptr %LastReleased, align 8, !tbaa !93
  %86 = load ptr, ptr %ContactInfo, align 8, !tbaa !32
  %87 = load ptr, ptr %WriterContactInfoPtr.addr, align 8, !tbaa !32
  store ptr %86, ptr %87, align 8, !tbaa !32
  %88 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ReaderRollHandle) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %providedReaderInfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ContactInfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WSR_Stream) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  ret ptr %88
}

; Function Attrs: nounwind uwtable
define internal void @RdmaProvideWriterDataToReader(ptr noundef %Svcs, ptr noundef %RS_Stream_v, i32 noundef %writerCohortSize, ptr noundef %PeerCohort, ptr noundef %providedWriterInfo_v) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %RS_Stream_v.addr = alloca ptr, align 8
  %writerCohortSize.addr = alloca i32, align 4
  %PeerCohort.addr = alloca ptr, align 8
  %providedWriterInfo_v.addr = alloca ptr, align 8
  %RS_Stream = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %providedWriterInfo = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %RS_Stream_v, ptr %RS_Stream_v.addr, align 8, !tbaa !32
  store i32 %writerCohortSize, ptr %writerCohortSize.addr, align 4, !tbaa !67
  store ptr %PeerCohort, ptr %PeerCohort.addr, align 8, !tbaa !32
  store ptr %providedWriterInfo_v, ptr %providedWriterInfo_v.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RS_Stream) #11
  %0 = load ptr, ptr %RS_Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %RS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %1 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %Fabric1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %Fabric1, align 8, !tbaa !35
  store ptr %2, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %providedWriterInfo) #11
  %3 = load ptr, ptr %providedWriterInfo_v.addr, align 8, !tbaa !32
  store ptr %3, ptr %providedWriterInfo, align 8, !tbaa !32
  %4 = load ptr, ptr %PeerCohort.addr, align 8, !tbaa !32
  %5 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %PeerCohort2 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %5, i32 0, i32 15
  store ptr %4, ptr %PeerCohort2, align 8, !tbaa !94
  %6 = load i32, ptr %writerCohortSize.addr, align 4, !tbaa !67
  %7 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterCohortSize = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %7, i32 0, i32 14
  store i32 %6, ptr %WriterCohortSize, align 8, !tbaa !95
  %8 = load i32, ptr %writerCohortSize.addr, align 4, !tbaa !67
  %conv = sext i32 %8 to i64
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 8) #13
  %9 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterAddr = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %9, i32 0, i32 17
  store ptr %call, ptr %WriterAddr, align 8, !tbaa !96
  %10 = load i32, ptr %writerCohortSize.addr, align 4, !tbaa !67
  %conv3 = sext i32 %10 to i64
  %call4 = call noalias ptr @calloc(i64 noundef %conv3, i64 noundef 16) #13
  %11 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterRoll = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %11, i32 0, i32 18
  store ptr %call4, ptr %WriterRoll, align 8, !tbaa !97
  %12 = load i32, ptr %writerCohortSize.addr, align 4, !tbaa !67
  %conv5 = sext i32 %12 to i64
  %mul = mul i64 40, %conv5
  %call6 = call noalias ptr @malloc(i64 noundef %mul) #12
  %13 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterContactInfo = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %13, i32 0, i32 16
  store ptr %call6, ptr %WriterContactInfo, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, ptr %i, align 4, !tbaa !67
  %15 = load i32, ptr %writerCohortSize.addr, align 4, !tbaa !67
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %providedWriterInfo, align 8, !tbaa !32
  %17 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8, !tbaa !32
  %WS_Stream = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %WS_Stream, align 8, !tbaa !76
  %20 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterContactInfo8 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %20, i32 0, i32 16
  %21 = load ptr, ptr %WriterContactInfo8, align 8, !tbaa !98
  %22 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %21, i64 %idxprom9
  %WS_Stream11 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %arrayidx10, i32 0, i32 0
  store ptr %19, ptr %WS_Stream11, align 8, !tbaa !76
  %23 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %av = getelementptr inbounds %struct.fabric_state, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %av, align 8, !tbaa !73
  %25 = load ptr, ptr %providedWriterInfo, align 8, !tbaa !32
  %26 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %25, i64 %idxprom12
  %27 = load ptr, ptr %arrayidx13, align 8, !tbaa !32
  %Address = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %Address, align 8, !tbaa !79
  %29 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterAddr14 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %29, i32 0, i32 17
  %30 = load ptr, ptr %WriterAddr14, align 8, !tbaa !96
  %31 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom15 = sext i32 %31 to i64
  %arrayidx16 = getelementptr inbounds i64, ptr %30, i64 %idxprom15
  %call17 = call i32 @fi_av_insert(ptr noundef %24, ptr noundef %28, i64 noundef 1, ptr noundef %arrayidx16, i64 noundef 0, ptr noundef null)
  %32 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterRoll18 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %32, i32 0, i32 18
  %33 = load ptr, ptr %WriterRoll18, align 8, !tbaa !97
  %34 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom19 = sext i32 %34 to i64
  %arrayidx20 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %33, i64 %idxprom19
  %35 = load ptr, ptr %providedWriterInfo, align 8, !tbaa !32
  %36 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom21 = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %35, i64 %idxprom21
  %37 = load ptr, ptr %arrayidx22, align 8, !tbaa !32
  %ReaderRollHandle = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %37, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx20, ptr align 8 %ReaderRollHandle, i64 16, i1 false), !tbaa.struct !87
  %38 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %verbose, align 8, !tbaa !45
  %40 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %42 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterContactInfo23 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %42, i32 0, i32 16
  %43 = load ptr, ptr %WriterContactInfo23, align 8, !tbaa !98
  %44 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom24 = sext i32 %44 to i64
  %arrayidx25 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %43, i64 %idxprom24
  %WS_Stream26 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %arrayidx25, i32 0, i32 0
  %45 = load ptr, ptr %WS_Stream26, align 8, !tbaa !76
  %46 = load i32, ptr %i, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %39(ptr noundef %41, i32 noundef 5, ptr noundef @.str.42, ptr noundef %45, i32 noundef %46)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %providedWriterInfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RS_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @RdmaReadRemoteMemory(ptr noundef %Svcs, ptr noundef %Stream_v, i32 noundef %Rank, i64 noundef %Timestep, i64 noundef %Offset, i64 noundef %Length, ptr noundef %Buffer, ptr noundef %DP_TimestepInfo) #0 {
entry:
  %retval = alloca ptr, align 8
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %Rank.addr = alloca i32, align 4
  %Timestep.addr = alloca i64, align 8
  %Offset.addr = alloca i64, align 8
  %Length.addr = alloca i64, align 8
  %Buffer.addr = alloca ptr, align 8
  %DP_TimestepInfo.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %RS_Stream = alloca ptr, align 8
  %Info = alloca ptr, align 8
  %StepLog = alloca ptr, align 8
  %RankLog = alloca ptr, align 8
  %Req = alloca ptr, align 8
  %BufferSlot = alloca i32, align 4
  %WRidx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store i32 %Rank, ptr %Rank.addr, align 4, !tbaa !67
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  store i64 %Offset, ptr %Offset.addr, align 8, !tbaa !88
  store i64 %Length, ptr %Length.addr, align 8, !tbaa !88
  store ptr %Buffer, ptr %Buffer.addr, align 8, !tbaa !32
  store ptr %DP_TimestepInfo, ptr %DP_TimestepInfo.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11
  store ptr null, ptr %ret, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RS_Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %RS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Info) #11
  %1 = load ptr, ptr %DP_TimestepInfo.addr, align 8, !tbaa !32
  store ptr %1, ptr %Info, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %StepLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %RankLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %Req) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %BufferSlot) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %WRidx) #11
  %2 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %verbose, align 8, !tbaa !45
  %4 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %6 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %7 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %3(ptr noundef %5, i32 noundef 5, ptr noundef @.str.43, i32 noundef %6, i64 noundef %7)
  %8 = load ptr, ptr %Info, align 8, !tbaa !32
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose1 = getelementptr inbounds %struct._CP_Services, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %verbose1, align 8, !tbaa !45
  %11 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream2 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %CP_Stream2, align 8, !tbaa !41
  %13 = load ptr, ptr %Info, align 8, !tbaa !32
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %Block, align 8, !tbaa !80
  %15 = load ptr, ptr %Info, align 8, !tbaa !32
  %Key = getelementptr inbounds %struct._RdmaBufferHandle, ptr %15, i32 0, i32 1
  %16 = load i64, ptr %Key, align 8, !tbaa !84
  call void (ptr, i32, ptr, ...) %10(ptr noundef %12, i32 noundef 5, ptr noundef @.str.44, ptr noundef %14, i64 noundef %16)
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose3 = getelementptr inbounds %struct._CP_Services, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %verbose3, align 8, !tbaa !45
  %19 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream4 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %CP_Stream4, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %18(ptr noundef %20, i32 noundef 1, ptr noundef @.str.45)
  %21 = load ptr, ptr %ret, align 8, !tbaa !32
  call void @free(ptr noundef %21) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %22 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %PreloadPosted = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %PreloadPosted, align 8, !tbaa !56
  %tobool5 = icmp ne i32 %23, 0
  br i1 %tobool5, label %if.then6, label %if.else45

if.then6:                                         ; preds = %if.end
  %24 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %TotalReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %24, i32 0, i32 21
  %25 = load i64, ptr %TotalReads, align 8, !tbaa !60
  %inc = add nsw i64 %25, 1
  store i64 %inc, ptr %TotalReads, align 8, !tbaa !60
  %26 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %27 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %PreloadStepLog = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %PreloadStepLog, align 8, !tbaa !99
  %29 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %30 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %31 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %call7 = call ptr @GetRequest(ptr noundef %26, ptr noundef %28, i32 noundef %29, i64 noundef %30, i64 noundef %31)
  store ptr %call7, ptr %Req, align 8, !tbaa !32
  %32 = load ptr, ptr %Req, align 8, !tbaa !32
  %tobool8 = icmp ne ptr %32, null
  br i1 %tobool8, label %if.then9, label %if.else35

if.then9:                                         ; preds = %if.then6
  %33 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %and = and i64 %33, 1
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %BufferSlot, align 4, !tbaa !67
  %34 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %PreloadStepLog10 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %34, i32 0, i32 7
  %35 = load ptr, ptr %PreloadStepLog10, align 8, !tbaa !99
  store ptr %35, ptr %StepLog, align 8, !tbaa !32
  %36 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog11 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %RankLog11, align 8, !tbaa !100
  %38 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaRankReqLog, ptr %37, i64 %idxprom
  store ptr %arrayidx, ptr %RankLog, align 8, !tbaa !32
  %39 = load ptr, ptr %Req, align 8, !tbaa !32
  %40 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %ReqLog = getelementptr inbounds %struct._RdmaRankReqLog, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %ReqLog, align 8, !tbaa !102
  %sub.ptr.lhs.cast = ptrtoint ptr %39 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  %conv12 = trunc i64 %sub.ptr.div to i32
  store i32 %conv12, ptr %WRidx, align 4, !tbaa !67
  %42 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %PreloadHandles = getelementptr inbounds %struct._RdmaRankReqLog, ptr %42, i32 0, i32 6
  %43 = load ptr, ptr %PreloadHandles, align 8, !tbaa !104
  %44 = load i32, ptr %BufferSlot, align 4, !tbaa !67
  %idxprom13 = sext i32 %44 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %43, i64 %idxprom13
  %45 = load ptr, ptr %arrayidx14, align 8, !tbaa !32
  %46 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom15 = sext i32 %46 to i64
  %arrayidx16 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %45, i64 %idxprom15
  store ptr %arrayidx16, ptr %ret, align 8, !tbaa !32
  %47 = load ptr, ptr %Req, align 8, !tbaa !32
  %Handle = getelementptr inbounds %struct._RdmaBuffer, ptr %47, i32 0, i32 0
  %Block17 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle, i32 0, i32 0
  %48 = load ptr, ptr %Block17, align 8, !tbaa !105
  %49 = load i32, ptr %BufferSlot, align 4, !tbaa !67
  %conv18 = sext i32 %49 to i64
  %50 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %BufferSize = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %50, i32 0, i32 4
  %51 = load i64, ptr %BufferSize, align 8, !tbaa !106
  %mul = mul nsw i64 %conv18, %51
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 %mul
  %52 = load ptr, ptr %ret, align 8, !tbaa !32
  %PreloadBuffer = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %52, i32 0, i32 6
  store ptr %add.ptr, ptr %PreloadBuffer, align 8, !tbaa !107
  %53 = load ptr, ptr %ret, align 8, !tbaa !32
  %Pending = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %Pending, align 4, !tbaa !109
  %inc19 = add nsw i32 %54, 1
  store i32 %inc19, ptr %Pending, align 4, !tbaa !109
  %55 = load ptr, ptr %ret, align 8, !tbaa !32
  %Pending20 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %Pending20, align 4, !tbaa !109
  %cmp = icmp eq i32 %56, 0
  br i1 %cmp, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then9
  %57 = load ptr, ptr %Buffer.addr, align 8, !tbaa !32
  %58 = load ptr, ptr %ret, align 8, !tbaa !32
  %PreloadBuffer23 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %58, i32 0, i32 6
  %59 = load ptr, ptr %PreloadBuffer23, align 8, !tbaa !107
  %60 = load i64, ptr %Length.addr, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %59, i64 %60, i1 false)
  %61 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %EarlyReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %61, i32 0, i32 20
  %62 = load i64, ptr %EarlyReads, align 8, !tbaa !59
  %inc24 = add nsw i64 %62, 1
  store i64 %inc24, ptr %EarlyReads, align 8, !tbaa !59
  br label %if.end34

if.else25:                                        ; preds = %if.then9
  %63 = load ptr, ptr %ret, align 8, !tbaa !32
  %Pending26 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %63, i32 0, i32 5
  %64 = load i32, ptr %Pending26, align 4, !tbaa !109
  %cmp27 = icmp ne i32 %64, 1
  br i1 %cmp27, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.else25
  %65 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose30 = getelementptr inbounds %struct._CP_Services, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %verbose30, align 8, !tbaa !45
  %67 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream31 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %CP_Stream31, align 8, !tbaa !41
  %69 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %Rank32 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %Rank32, align 8, !tbaa !110
  %71 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %72 = load i32, ptr %WRidx, align 4, !tbaa !67
  %73 = load i32, ptr %BufferSlot, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %66(ptr noundef %68, i32 noundef 1, ptr noundef @.str.46, i32 noundef %70, i32 noundef %71, i32 noundef %72, i32 noundef %73)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.else25
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end44

if.else35:                                        ; preds = %if.then6
  %74 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose36 = getelementptr inbounds %struct._CP_Services, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %verbose36, align 8, !tbaa !45
  %76 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream37 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %CP_Stream37, align 8, !tbaa !41
  %78 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %79 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %80 = load i64, ptr %Length.addr, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %75(ptr noundef %77, i32 noundef 4, ptr noundef @.str.47, i32 noundef %78, i64 noundef %79, i64 noundef %80)
  %81 = load ptr, ptr %ret, align 8, !tbaa !32
  %PreloadBuffer38 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %81, i32 0, i32 6
  store ptr null, ptr %PreloadBuffer38, align 8, !tbaa !107
  %82 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %83 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %84 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %85 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %86 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %87 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %88 = load ptr, ptr %Buffer.addr, align 8, !tbaa !32
  %89 = load ptr, ptr %Info, align 8, !tbaa !32
  %call39 = call i64 @PostRead(ptr noundef %82, ptr noundef %83, i32 noundef %84, i64 noundef %85, i64 noundef %86, i64 noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %ret)
  %cmp40 = icmp ne i64 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.else35
  %90 = load ptr, ptr %ret, align 8, !tbaa !32
  call void @free(ptr noundef %90) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.else35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end34
  br label %if.end52

if.else45:                                        ; preds = %if.end
  %91 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %92 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %93 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %94 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %95 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %96 = load i64, ptr %Length.addr, align 8, !tbaa !88
  call void @LogRequest(ptr noundef %91, ptr noundef %92, i32 noundef %93, i64 noundef %94, i64 noundef %95, i64 noundef %96)
  %97 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %98 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %99 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %100 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %101 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %102 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %103 = load ptr, ptr %Buffer.addr, align 8, !tbaa !32
  %104 = load ptr, ptr %Info, align 8, !tbaa !32
  %call46 = call i64 @PostRead(ptr noundef %97, ptr noundef %98, i32 noundef %99, i64 noundef %100, i64 noundef %101, i64 noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef %ret)
  %cmp47 = icmp ne i64 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else45
  %105 = load ptr, ptr %ret, align 8, !tbaa !32
  call void @free(ptr noundef %105) #11
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.else45
  %106 = load ptr, ptr %ret, align 8, !tbaa !32
  %PreloadBuffer51 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %106, i32 0, i32 6
  store ptr null, ptr %PreloadBuffer51, align 8, !tbaa !107
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %if.end44
  %call53 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  %107 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %108 = load ptr, ptr %ret, align 8, !tbaa !32
  %CPStream = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %108, i32 0, i32 1
  store ptr %107, ptr %CPStream, align 8, !tbaa !111
  %109 = load ptr, ptr %Buffer.addr, align 8, !tbaa !32
  %110 = load ptr, ptr %ret, align 8, !tbaa !32
  %Buffer54 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %110, i32 0, i32 2
  store ptr %109, ptr %Buffer54, align 8, !tbaa !112
  %111 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %112 = load ptr, ptr %ret, align 8, !tbaa !32
  %Rank55 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %112, i32 0, i32 4
  store i32 %111, ptr %Rank55, align 8, !tbaa !113
  %113 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %114 = load ptr, ptr %ret, align 8, !tbaa !32
  %Length56 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %114, i32 0, i32 3
  store i64 %113, ptr %Length56, align 8, !tbaa !114
  %115 = load ptr, ptr %ret, align 8, !tbaa !32
  store ptr %115, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then49, %if.then42, %if.else
  call void @llvm.lifetime.end.p0(i64 4, ptr %WRidx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %BufferSlot) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Req) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RankLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %StepLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Info) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RS_Stream) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11
  %116 = load ptr, ptr %retval, align 8
  ret ptr %116
}

; Function Attrs: nounwind uwtable
define internal i32 @RdmaWaitForCompletion(ptr noundef %Svcs, ptr noundef %Handle_v) #0 {
entry:
  %retval = alloca i32, align 4
  %Svcs.addr = alloca ptr, align 8
  %Handle_v.addr = alloca ptr, align 8
  %Handle = alloca ptr, align 8
  %Stream = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Handle_v, ptr %Handle_v.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Handle) #11
  %0 = load ptr, ptr %Handle_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Handle, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %1 = load ptr, ptr %Handle, align 8, !tbaa !32
  %CPStream = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %CPStream, align 8, !tbaa !111
  store ptr %2, ptr %Stream, align 8, !tbaa !32
  %3 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %verbose, align 8, !tbaa !45
  %5 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %7 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %Rank, align 8, !tbaa !110
  call void (ptr, i32, ptr, ...) %4(ptr noundef %6, i32 noundef 5, ptr noundef @.str.53, i32 noundef %8, ptr noundef @__func__.RdmaWaitForCompletion)
  %9 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadPosted = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %PreloadPosted, align 8, !tbaa !56
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %Handle, align 8, !tbaa !32
  %PreloadBuffer = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %PreloadBuffer, align 8, !tbaa !107
  %tobool1 = icmp ne ptr %12, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %14 = load ptr, ptr %Stream, align 8, !tbaa !32
  %15 = load ptr, ptr %Handle, align 8, !tbaa !32
  %call = call i32 @DoPushWait(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %17 = load ptr, ptr %Stream, align 8, !tbaa !32
  %18 = load ptr, ptr %Handle, align 8, !tbaa !32
  %call2 = call i32 @DoPullWait(ptr noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %call2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Handle) #11
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal void @RdmaNotifyConnFailure(ptr noundef %Svcs, ptr noundef %Stream_v, i32 noundef %FailedPeerRank) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %FailedPeerRank.addr = alloca i32, align 4
  %Stream = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store i32 %FailedPeerRank, ptr %FailedPeerRank.addr, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Stream, align 8, !tbaa !32
  %1 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %verbose, align 8, !tbaa !45
  %3 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %5 = load i32, ptr %FailedPeerRank.addr, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %2(ptr noundef %4, i32 noundef 5, ptr noundef @.str.58, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaProvideTimestep(ptr noundef %Svcs, ptr noundef %Stream_v, ptr noundef %Data, ptr noundef %LocalMetadata, i64 noundef %Timestep, ptr noundef %TimestepInfoPtr) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %Data.addr = alloca ptr, align 8
  %LocalMetadata.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %TimestepInfoPtr.addr = alloca ptr, align 8
  %Stream = alloca ptr, align 8
  %Entry = alloca ptr, align 8
  %Info = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %Data, ptr %Data.addr, align 8, !tbaa !32
  store ptr %LocalMetadata, ptr %LocalMetadata.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  store ptr %TimestepInfoPtr, ptr %TimestepInfoPtr.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Entry) #11
  %call = call noalias ptr @malloc(i64 noundef 80) #12
  store ptr %call, ptr %Entry, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Info) #11
  %call1 = call noalias ptr @malloc(i64 noundef 16) #12
  store ptr %call1, ptr %Info, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %1 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Fabric2 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %Fabric2, align 8, !tbaa !64
  store ptr %2, ptr %Fabric, align 8, !tbaa !32
  %call3 = call noalias ptr @malloc(i64 noundef 16) #12
  %3 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Data4 = getelementptr inbounds %struct._TimestepEntry, ptr %3, i32 0, i32 1
  store ptr %call3, ptr %Data4, align 8, !tbaa !115
  %4 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Data5 = getelementptr inbounds %struct._TimestepEntry, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %Data5, align 8, !tbaa !115
  %6 = load ptr, ptr %Data.addr, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %6, i64 16, i1 false)
  %7 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %8 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Timestep6 = getelementptr inbounds %struct._TimestepEntry, ptr %8, i32 0, i32 0
  store i64 %7, ptr %Timestep6, align 8, !tbaa !117
  %9 = load ptr, ptr %Info, align 8, !tbaa !32
  %10 = load ptr, ptr %Entry, align 8, !tbaa !32
  %DP_TimestepInfo = getelementptr inbounds %struct._TimestepEntry, ptr %10, i32 0, i32 2
  store ptr %9, ptr %DP_TimestepInfo, align 8, !tbaa !118
  %11 = load ptr, ptr %Entry, align 8, !tbaa !32
  %BufferSlot = getelementptr inbounds %struct._TimestepEntry, ptr %11, i32 0, i32 9
  store i32 -1, ptr %BufferSlot, align 8, !tbaa !119
  %12 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Desc = getelementptr inbounds %struct._TimestepEntry, ptr %12, i32 0, i32 6
  store ptr null, ptr %Desc, align 8, !tbaa !120
  %13 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain = getelementptr inbounds %struct.fabric_state, ptr %13, i32 0, i32 7
  %14 = load ptr, ptr %domain, align 8, !tbaa !81
  %15 = load ptr, ptr %Data.addr, align 8, !tbaa !32
  %block = getelementptr inbounds %struct._SstData, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %block, align 8, !tbaa !121
  %17 = load ptr, ptr %Data.addr, align 8, !tbaa !32
  %DataSize = getelementptr inbounds %struct._SstData, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %DataSize, align 8, !tbaa !123
  %19 = load ptr, ptr %Entry, align 8, !tbaa !32
  %mr = getelementptr inbounds %struct._TimestepEntry, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx = getelementptr inbounds %struct.fabric_state, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %ctx, align 8, !tbaa !82
  %call7 = call i32 @fi_mr_reg(ptr noundef %14, ptr noundef %16, i64 noundef %18, i64 noundef 4608, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %mr, ptr noundef %21)
  %22 = load ptr, ptr %Entry, align 8, !tbaa !32
  %mr8 = getelementptr inbounds %struct._TimestepEntry, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %mr8, align 8, !tbaa !124
  %call9 = call i64 @fi_mr_key(ptr noundef %23)
  %24 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Key = getelementptr inbounds %struct._TimestepEntry, ptr %24, i32 0, i32 7
  store i64 %call9, ptr %Key, align 8, !tbaa !125
  %25 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req = getelementptr inbounds %struct.fabric_state, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %local_mr_req, align 8, !tbaa !126
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load ptr, ptr %Entry, align 8, !tbaa !32
  %mr10 = getelementptr inbounds %struct._TimestepEntry, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %mr10, align 8, !tbaa !124
  %call11 = call ptr @fi_mr_desc(ptr noundef %28)
  %29 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Desc12 = getelementptr inbounds %struct._TimestepEntry, ptr %29, i32 0, i32 6
  store ptr %call11, ptr %Desc12, align 8, !tbaa !120
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call13 = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %30 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Timesteps = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %Timesteps, align 8, !tbaa !127
  %tobool14 = icmp ne ptr %31, null
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end
  %32 = load ptr, ptr %Entry, align 8, !tbaa !32
  %33 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Timesteps16 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %Timesteps16, align 8, !tbaa !127
  %Next = getelementptr inbounds %struct._TimestepEntry, ptr %34, i32 0, i32 4
  store ptr %32, ptr %Next, align 8, !tbaa !128
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end
  %35 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Timesteps18 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %Timesteps18, align 8, !tbaa !127
  %37 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Prev = getelementptr inbounds %struct._TimestepEntry, ptr %37, i32 0, i32 3
  store ptr %36, ptr %Prev, align 8, !tbaa !129
  %38 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Next19 = getelementptr inbounds %struct._TimestepEntry, ptr %38, i32 0, i32 4
  store ptr null, ptr %Next19, align 8, !tbaa !128
  %39 = load ptr, ptr %Entry, align 8, !tbaa !32
  %40 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Timesteps20 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %40, i32 0, i32 6
  store ptr %39, ptr %Timesteps20, align 8, !tbaa !127
  %41 = load ptr, ptr %Entry, align 8, !tbaa !32
  %Key21 = getelementptr inbounds %struct._TimestepEntry, ptr %41, i32 0, i32 7
  %42 = load i64, ptr %Key21, align 8, !tbaa !125
  %43 = load ptr, ptr %Info, align 8, !tbaa !32
  %Key22 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %43, i32 0, i32 1
  store i64 %42, ptr %Key22, align 8, !tbaa !84
  %call23 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  %44 = load ptr, ptr %Data.addr, align 8, !tbaa !32
  %block24 = getelementptr inbounds %struct._SstData, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %block24, align 8, !tbaa !121
  %46 = load ptr, ptr %Info, align 8, !tbaa !32
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %46, i32 0, i32 0
  store ptr %45, ptr %Block, align 8, !tbaa !80
  %47 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %verbose, align 8, !tbaa !45
  %49 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  %51 = load ptr, ptr %Info, align 8, !tbaa !32
  %Block25 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %Block25, align 8, !tbaa !80
  %53 = load ptr, ptr %Info, align 8, !tbaa !32
  %Key26 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %Key26, align 8, !tbaa !84
  call void (ptr, i32, ptr, ...) %48(ptr noundef %50, i32 noundef 5, ptr noundef @.str.59, ptr noundef %52, i64 noundef %54)
  %55 = load ptr, ptr %Info, align 8, !tbaa !32
  %56 = load ptr, ptr %TimestepInfoPtr.addr, align 8, !tbaa !32
  store ptr %55, ptr %56, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Info) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Entry) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaReaderRegisterTimestep(ptr noundef %Svcs, ptr noundef %WSRStream_v, i64 noundef %Timestep, i32 noundef %PreloadMode) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %WSRStream_v.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %PreloadMode.addr = alloca i32, align 4
  %WSR_Stream = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  %Step = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %WSRStream_v, ptr %WSRStream_v.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  store i32 %PreloadMode, ptr %PreloadMode.addr, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %WSR_Stream) #11
  %0 = load ptr, ptr %WSRStream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %WSR_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %1 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WS_Stream1 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %WS_Stream1, align 8, !tbaa !68
  store ptr %2, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Step) #11
  %3 = load i32, ptr %PreloadMode.addr, align 4, !tbaa !130
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %DefLocked = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %DefLocked, align 8, !tbaa !66
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %conv = trunc i64 %6 to i32
  %7 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %DefLocked3 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %7, i32 0, i32 4
  store i32 %conv, ptr %DefLocked3, align 8, !tbaa !66
  %8 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %SelectLocked = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %8, i32 0, i32 7
  %9 = load i32, ptr %SelectLocked, align 8, !tbaa !92
  %cmp4 = icmp sge i32 %9, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %verbose, align 8, !tbaa !45
  %12 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %11(ptr noundef %13, i32 noundef 5, ptr noundef @.str.60)
  %14 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %Preload = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %14, i32 0, i32 8
  store i32 1, ptr %Preload, align 4, !tbaa !90
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %land.lhs.true, %entry
  %15 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %16 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %call = call ptr @GetStep(ptr noundef %15, i64 noundef %16)
  store ptr %call, ptr %Step, align 8, !tbaa !32
  %call8 = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %17 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %SelectionPulled = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %SelectionPulled, align 8, !tbaa !91
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %land.lhs.true9, label %if.end24

land.lhs.true9:                                   ; preds = %if.end7
  %19 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %PreloadUsed = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep10 = getelementptr inbounds %struct._TimestepEntry, ptr %20, i32 0, i32 0
  %21 = load i64, ptr %Timestep10, align 8, !tbaa !117
  %and = and i64 %21, 1
  %arrayidx = getelementptr inbounds [2 x i32], ptr %PreloadUsed, i64 0, i64 %and
  %22 = load i32, ptr %arrayidx, align 4, !tbaa !67
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %if.then13, label %if.end24

if.then13:                                        ; preds = %land.lhs.true9
  %23 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %24 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %25 = load ptr, ptr %Step, align 8, !tbaa !32
  %26 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep14 = getelementptr inbounds %struct._TimestepEntry, ptr %26, i32 0, i32 0
  %27 = load i64, ptr %Timestep14, align 8, !tbaa !117
  %and15 = and i64 %27, 1
  %conv16 = trunc i64 %and15 to i32
  call void @PushData(ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %conv16)
  %28 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %PreloadUsed17 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep18 = getelementptr inbounds %struct._TimestepEntry, ptr %29, i32 0, i32 0
  %30 = load i64, ptr %Timestep18, align 8, !tbaa !117
  %and19 = and i64 %30, 1
  %arrayidx20 = getelementptr inbounds [2 x i32], ptr %PreloadUsed17, i64 0, i64 %and19
  store i32 1, ptr %arrayidx20, align 4, !tbaa !67
  %31 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep21 = getelementptr inbounds %struct._TimestepEntry, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %Timestep21, align 8, !tbaa !117
  %and22 = and i64 %32, 1
  %conv23 = trunc i64 %and22 to i32
  %33 = load ptr, ptr %Step, align 8, !tbaa !32
  %BufferSlot = getelementptr inbounds %struct._TimestepEntry, ptr %33, i32 0, i32 9
  store i32 %conv23, ptr %BufferSlot, align 8, !tbaa !119
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %land.lhs.true9, %if.end7
  %call25 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Step) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WSR_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaReleaseTimestep(ptr noundef %Svcs, ptr noundef %Stream_v, i64 noundef %Timestep) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %Stream = alloca ptr, align 8
  %List = alloca ptr, align 8
  %ReleaseTSL = alloca ptr, align 8
  %Info = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %List) #11
  %1 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Timesteps = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %1, i32 0, i32 6
  store ptr %Timesteps, ptr %List, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ReleaseTSL) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %Info) #11
  %2 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %verbose, align 8, !tbaa !45
  %4 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  %6 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %3(ptr noundef %5, i32 noundef 5, ptr noundef @.str.62, i64 noundef %6)
  %call = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %List, align 8, !tbaa !32
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load ptr, ptr %List, align 8, !tbaa !32
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %Timestep1 = getelementptr inbounds %struct._TimestepEntry, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %Timestep1, align 8, !tbaa !117
  %12 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %cmp = icmp ne i64 %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load ptr, ptr %List, align 8, !tbaa !32
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %Prev = getelementptr inbounds %struct._TimestepEntry, ptr %15, i32 0, i32 3
  store ptr %Prev, ptr %List, align 8, !tbaa !32
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load ptr, ptr %List, align 8, !tbaa !32
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  %cmp2 = icmp eq ptr %17, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %18 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose3 = getelementptr inbounds %struct._CP_Services, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %verbose3, align 8, !tbaa !45
  %20 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream4 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %CP_Stream4, align 8, !tbaa !65
  %22 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %19(ptr noundef %21, i32 noundef 1, ptr noundef @.str.63, i64 noundef %22)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %23 = load ptr, ptr %List, align 8, !tbaa !32
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  store ptr %24, ptr %ReleaseTSL, align 8, !tbaa !32
  %25 = load ptr, ptr %ReleaseTSL, align 8, !tbaa !32
  %Prev5 = getelementptr inbounds %struct._TimestepEntry, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %Prev5, align 8, !tbaa !129
  %27 = load ptr, ptr %List, align 8, !tbaa !32
  store ptr %26, ptr %27, align 8, !tbaa !32
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  %28 = load ptr, ptr %ReleaseTSL, align 8, !tbaa !32
  %mr = getelementptr inbounds %struct._TimestepEntry, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %mr, align 8, !tbaa !124
  %call7 = call i32 @fi_close(ptr noundef %29)
  %30 = load ptr, ptr %ReleaseTSL, align 8, !tbaa !32
  %Data = getelementptr inbounds %struct._TimestepEntry, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %Data, align 8, !tbaa !115
  %tobool8 = icmp ne ptr %31, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %32 = load ptr, ptr %ReleaseTSL, align 8, !tbaa !32
  %Data10 = getelementptr inbounds %struct._TimestepEntry, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %Data10, align 8, !tbaa !115
  call void @free(ptr noundef %33) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %34 = load ptr, ptr %ReleaseTSL, align 8, !tbaa !32
  %DP_TimestepInfo = getelementptr inbounds %struct._TimestepEntry, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %DP_TimestepInfo, align 8, !tbaa !118
  store ptr %35, ptr %Info, align 8, !tbaa !32
  %36 = load ptr, ptr %Info, align 8, !tbaa !32
  %tobool12 = icmp ne ptr %36, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %37 = load ptr, ptr %Info, align 8, !tbaa !32
  call void @free(ptr noundef %37) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %38 = load ptr, ptr %ReleaseTSL, align 8, !tbaa !32
  call void @free(ptr noundef %38) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Info) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ReleaseTSL) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %List) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaReleaseTimestepPerReader(ptr noundef %Svcs, ptr noundef %Stream_v, i64 noundef %Timestep) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %Stream = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  %Step = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %1 = load ptr, ptr %Stream, align 8, !tbaa !32
  %WS_Stream1 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %WS_Stream1, align 8, !tbaa !68
  store ptr %2, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Step) #11
  %3 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %4 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %call = call ptr @GetStep(ptr noundef %3, i64 noundef %4)
  store ptr %call, ptr %Step, align 8, !tbaa !32
  %5 = load ptr, ptr %Step, align 8, !tbaa !32
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Preload = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %Preload, align 4, !tbaa !90
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then3, label %if.end60

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %Stream, align 8, !tbaa !32
  %SelectionPulled = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %8, i32 0, i32 9
  %9 = load i32, ptr %SelectionPulled, align 8, !tbaa !91
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then5, label %if.else31

if.then5:                                         ; preds = %if.then3
  %10 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %11 = load ptr, ptr %Stream, align 8, !tbaa !32
  %12 = load ptr, ptr %Step, align 8, !tbaa !32
  call void @CompletePush(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  %call6 = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %13 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadUsed = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep7 = getelementptr inbounds %struct._TimestepEntry, ptr %14, i32 0, i32 0
  %15 = load i64, ptr %Timestep7, align 8, !tbaa !117
  %and = and i64 %15, 1
  %arrayidx = getelementptr inbounds [2 x i32], ptr %PreloadUsed, i64 0, i64 %and
  store i32 0, ptr %arrayidx, align 4, !tbaa !67
  %16 = load ptr, ptr %Step, align 8, !tbaa !32
  %Next = getelementptr inbounds %struct._TimestepEntry, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %Next, align 8, !tbaa !128
  store ptr %17, ptr %Step, align 8, !tbaa !32
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %18 = load ptr, ptr %Step, align 8, !tbaa !32
  %tobool8 = icmp ne ptr %18, null
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %Step, align 8, !tbaa !32
  %BufferSlot = getelementptr inbounds %struct._TimestepEntry, ptr %19, i32 0, i32 9
  %20 = load i32, ptr %BufferSlot, align 8, !tbaa !119
  %cmp = icmp eq i32 %20, -1
  br i1 %cmp, label %if.then9, label %if.end28

if.then9:                                         ; preds = %for.body
  %21 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadUsed10 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep11 = getelementptr inbounds %struct._TimestepEntry, ptr %22, i32 0, i32 0
  %23 = load i64, ptr %Timestep11, align 8, !tbaa !117
  %and12 = and i64 %23, 1
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %PreloadUsed10, i64 0, i64 %and12
  %24 = load i32, ptr %arrayidx13, align 4, !tbaa !67
  %cmp14 = icmp eq i32 %24, 1
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then9
  %25 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %verbose, align 8, !tbaa !45
  %27 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  %29 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %Rank, align 8, !tbaa !61
  %31 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep16 = getelementptr inbounds %struct._TimestepEntry, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %Timestep16, align 8, !tbaa !117
  call void (ptr, i32, ptr, ...) %26(ptr noundef %28, i32 noundef 3, ptr noundef @.str.64, i32 noundef %30, i64 noundef %32)
  br label %if.end27

if.else:                                          ; preds = %if.then9
  %33 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %34 = load ptr, ptr %Stream, align 8, !tbaa !32
  %35 = load ptr, ptr %Step, align 8, !tbaa !32
  %36 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep17 = getelementptr inbounds %struct._TimestepEntry, ptr %36, i32 0, i32 0
  %37 = load i64, ptr %Timestep17, align 8, !tbaa !117
  %and18 = and i64 %37, 1
  %conv = trunc i64 %and18 to i32
  call void @PushData(ptr noundef %33, ptr noundef %34, ptr noundef %35, i32 noundef %conv)
  %38 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadUsed19 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep20 = getelementptr inbounds %struct._TimestepEntry, ptr %39, i32 0, i32 0
  %40 = load i64, ptr %Timestep20, align 8, !tbaa !117
  %and21 = and i64 %40, 1
  %arrayidx22 = getelementptr inbounds [2 x i32], ptr %PreloadUsed19, i64 0, i64 %and21
  store i32 1, ptr %arrayidx22, align 4, !tbaa !67
  %41 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep23 = getelementptr inbounds %struct._TimestepEntry, ptr %41, i32 0, i32 0
  %42 = load i64, ptr %Timestep23, align 8, !tbaa !117
  %and24 = and i64 %42, 1
  %conv25 = trunc i64 %and24 to i32
  %43 = load ptr, ptr %Step, align 8, !tbaa !32
  %BufferSlot26 = getelementptr inbounds %struct._TimestepEntry, ptr %43, i32 0, i32 9
  store i32 %conv25, ptr %BufferSlot26, align 8, !tbaa !119
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then15
  br label %for.end

if.end28:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %44 = load ptr, ptr %Step, align 8, !tbaa !32
  %Next29 = getelementptr inbounds %struct._TimestepEntry, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %Next29, align 8, !tbaa !128
  store ptr %45, ptr %Step, align 8, !tbaa !32
  br label %for.cond

for.end:                                          ; preds = %if.end27, %for.cond
  %call30 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  br label %if.end59

if.else31:                                        ; preds = %if.then3
  %46 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %47 = load ptr, ptr %Stream, align 8, !tbaa !32
  call void @PullSelection(ptr noundef %46, ptr noundef %47)
  %48 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadUsed32 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %48, i32 0, i32 12
  %arrayidx33 = getelementptr inbounds [2 x i32], ptr %PreloadUsed32, i64 0, i64 1
  store i32 0, ptr %arrayidx33, align 4, !tbaa !67
  %49 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadUsed34 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %49, i32 0, i32 12
  %arrayidx35 = getelementptr inbounds [2 x i32], ptr %PreloadUsed34, i64 0, i64 0
  store i32 0, ptr %arrayidx35, align 8, !tbaa !67
  %50 = load ptr, ptr %Stream, align 8, !tbaa !32
  %SelectionPulled36 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %50, i32 0, i32 9
  store i32 1, ptr %SelectionPulled36, align 8, !tbaa !91
  %call37 = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %51 = load ptr, ptr %Step, align 8, !tbaa !32
  %Next38 = getelementptr inbounds %struct._TimestepEntry, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %Next38, align 8, !tbaa !128
  store ptr %52, ptr %Step, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else31
  %53 = load ptr, ptr %Step, align 8, !tbaa !32
  %tobool39 = icmp ne ptr %53, null
  br i1 %tobool39, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %54 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadUsed40 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep41 = getelementptr inbounds %struct._TimestepEntry, ptr %55, i32 0, i32 0
  %56 = load i64, ptr %Timestep41, align 8, !tbaa !117
  %and42 = and i64 %56, 1
  %arrayidx43 = getelementptr inbounds [2 x i32], ptr %PreloadUsed40, i64 0, i64 %and42
  %57 = load i32, ptr %arrayidx43, align 4, !tbaa !67
  %cmp44 = icmp eq i32 %57, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %58 = phi i1 [ false, %while.cond ], [ %cmp44, %land.rhs ]
  br i1 %58, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %59 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %60 = load ptr, ptr %Stream, align 8, !tbaa !32
  %61 = load ptr, ptr %Step, align 8, !tbaa !32
  %62 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep46 = getelementptr inbounds %struct._TimestepEntry, ptr %62, i32 0, i32 0
  %63 = load i64, ptr %Timestep46, align 8, !tbaa !117
  %and47 = and i64 %63, 1
  %conv48 = trunc i64 %and47 to i32
  call void @PushData(ptr noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %conv48)
  %64 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadUsed49 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %64, i32 0, i32 12
  %65 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep50 = getelementptr inbounds %struct._TimestepEntry, ptr %65, i32 0, i32 0
  %66 = load i64, ptr %Timestep50, align 8, !tbaa !117
  %and51 = and i64 %66, 1
  %arrayidx52 = getelementptr inbounds [2 x i32], ptr %PreloadUsed49, i64 0, i64 %and51
  store i32 1, ptr %arrayidx52, align 4, !tbaa !67
  %67 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep53 = getelementptr inbounds %struct._TimestepEntry, ptr %67, i32 0, i32 0
  %68 = load i64, ptr %Timestep53, align 8, !tbaa !117
  %and54 = and i64 %68, 1
  %conv55 = trunc i64 %and54 to i32
  %69 = load ptr, ptr %Step, align 8, !tbaa !32
  %BufferSlot56 = getelementptr inbounds %struct._TimestepEntry, ptr %69, i32 0, i32 9
  store i32 %conv55, ptr %BufferSlot56, align 8, !tbaa !119
  %70 = load ptr, ptr %Step, align 8, !tbaa !32
  %Next57 = getelementptr inbounds %struct._TimestepEntry, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %Next57, align 8, !tbaa !128
  store ptr %71, ptr %Step, align 8, !tbaa !32
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call58 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  br label %if.end59

if.end59:                                         ; preds = %while.end, %for.end
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Step) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
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

; Function Attrs: nounwind uwtable
define internal void @RdmaReadPatternLocked(ptr noundef %Svcs, ptr noundef %WSRStream_v, i64 noundef %EffectiveTimestep) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %WSRStream_v.addr = alloca ptr, align 8
  %EffectiveTimestep.addr = alloca i64, align 8
  %WSR_Stream = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %WSRStream_v, ptr %WSRStream_v.addr, align 8, !tbaa !32
  store i64 %EffectiveTimestep, ptr %EffectiveTimestep.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %WSR_Stream) #11
  %0 = load ptr, ptr %WSRStream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %WSR_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %1 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WS_Stream1 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %WS_Stream1, align 8, !tbaa !68
  store ptr %2, ptr %WS_Stream, align 8, !tbaa !32
  %3 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %PreloadAvail = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %PreloadAvail, align 4, !tbaa !63
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %Rank, align 8, !tbaa !61
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %verbose, align 8, !tbaa !45
  %9 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %8(ptr noundef %10, i32 noundef 5, ptr noundef @.str.69)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load i64, ptr %EffectiveTimestep.addr, align 8, !tbaa !88
  %conv = trunc i64 %11 to i32
  %12 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %SelectLocked = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %12, i32 0, i32 7
  store i32 %conv, ptr %SelectLocked, align 8, !tbaa !92
  %13 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %Preload = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %13, i32 0, i32 8
  store i32 1, ptr %Preload, align 4, !tbaa !90
  br label %if.end10

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Rank3 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %Rank3, align 8, !tbaa !61
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.else
  %16 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose7 = getelementptr inbounds %struct._CP_Services, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %verbose7, align 8, !tbaa !45
  %18 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream8 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %CP_Stream8, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %17(ptr noundef %19, i32 noundef 2, ptr noundef @.str.70)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WSR_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaWritePatternLocked(ptr noundef %Svcs, ptr noundef %Stream_v, i64 noundef %EffectiveTimestep) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %EffectiveTimestep.addr = alloca i64, align 8
  %Stream = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store i64 %EffectiveTimestep, ptr %EffectiveTimestep.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Stream, align 8, !tbaa !32
  %1 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadAvail = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %1, i32 0, i32 11
  %2 = load i32, ptr %PreloadAvail, align 8, !tbaa !46
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %EffectiveTimestep.addr, align 8, !tbaa !88
  %4 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadStep = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %4, i32 0, i32 4
  store i64 %3, ptr %PreloadStep, align 8, !tbaa !54
  %5 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %Rank, align 8, !tbaa !110
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %7 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %verbose, align 8, !tbaa !45
  %9 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %8(ptr noundef %10, i32 noundef 2, ptr noundef @.str.71)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end8

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank2 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %Rank2, align 8, !tbaa !110
  %cmp3 = icmp eq i32 %12, 0
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.else
  %13 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose5 = getelementptr inbounds %struct._CP_Services, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %verbose5, align 8, !tbaa !45
  %15 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream6 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %CP_Stream6, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %14(ptr noundef %16, i32 noundef 2, ptr noundef @.str.72)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaReaderReleaseTimestep(ptr noundef %Svcs, ptr noundef %Stream_v, i64 noundef %Timestep) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %Stream = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Stream, align 8, !tbaa !32
  %call = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %1 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadStep = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %PreloadStep, align 8, !tbaa !54
  %cmp = icmp sgt i64 %2, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %4 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadStep1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %PreloadStep1, align 8, !tbaa !54
  %cmp2 = icmp sge i64 %3, %5
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadPosted = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %PreloadPosted, align 8, !tbaa !56
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %8 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %9 = load ptr, ptr %Stream, align 8, !tbaa !32
  %10 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  call void @PostPreload(ptr noundef %8, ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadPosted4 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %11, i32 0, i32 5
  store i32 1, ptr %PreloadPosted4, align 8, !tbaa !56
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaTimestepArrived(ptr noundef %Svcs, ptr noundef %Stream_v, i64 noundef %Timestep, i32 noundef %PreloadMode) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream_v.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %PreloadMode.addr = alloca i32, align 4
  %Stream = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream_v, ptr %Stream_v.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  store i32 %PreloadMode, ptr %PreloadMode.addr, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %Stream) #11
  %0 = load ptr, ptr %Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %Stream, align 8, !tbaa !32
  %1 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %verbose, align 8, !tbaa !45
  %3 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %5 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %6 = load i32, ptr %PreloadMode.addr, align 4, !tbaa !130
  call void (ptr, i32, ptr, ...) %2(ptr noundef %4, i32 noundef 5, ptr noundef @.str.77, ptr noundef @__func__.RdmaTimestepArrived, i64 noundef %5, i32 noundef %6)
  %7 = load i32, ptr %PreloadMode.addr, align 4, !tbaa !130
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadStep = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %8, i32 0, i32 4
  %9 = load i64, ptr %PreloadStep, align 8, !tbaa !54
  %cmp1 = icmp eq i64 %9, -1
  br i1 %cmp1, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadAvail = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %10, i32 0, i32 11
  %11 = load i32, ptr %PreloadAvail, align 8, !tbaa !46
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %12 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %13 = load ptr, ptr %Stream, align 8, !tbaa !32
  %PreloadStep3 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %13, i32 0, i32 4
  store i64 %12, ptr %PreloadStep3, align 8, !tbaa !54
  %14 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %Rank, align 8, !tbaa !110
  %cmp4 = icmp eq i32 %15, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %16 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose6 = getelementptr inbounds %struct._CP_Services, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %verbose6, align 8, !tbaa !45
  %18 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream7 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %CP_Stream7, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %17(ptr noundef %19, i32 noundef 2, ptr noundef @.str.71)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  br label %if.end14

if.else:                                          ; preds = %if.then
  %20 = load ptr, ptr %Stream, align 8, !tbaa !32
  %Rank8 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %Rank8, align 8, !tbaa !110
  %cmp9 = icmp eq i32 %21, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.else
  %22 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose11 = getelementptr inbounds %struct._CP_Services, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %verbose11, align 8, !tbaa !45
  %24 = load ptr, ptr %Stream, align 8, !tbaa !32
  %CP_Stream12 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %CP_Stream12, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %23(ptr noundef %25, i32 noundef 2, ptr noundef @.str.72)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaDestroyReader(ptr noundef %Svcs, ptr noundef %RS_Stream_v) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %RS_Stream_v.addr = alloca ptr, align 8
  %RS_Stream = alloca ptr, align 8
  %StepLog = alloca ptr, align 8
  %tStepLog = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %RS_Stream_v, ptr %RS_Stream_v.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RS_Stream) #11
  %0 = load ptr, ptr %RS_Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %RS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %StepLog) #11
  %1 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %StepLog1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %StepLog1, align 8, !tbaa !131
  store ptr %2, ptr %StepLog, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %tStepLog) #11
  %3 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %PreloadStep = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %3, i32 0, i32 4
  %4 = load i64, ptr %PreloadStep, align 8, !tbaa !54
  %cmp = icmp sgt i64 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %verbose, align 8, !tbaa !45
  %7 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %9 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %Rank, align 8, !tbaa !110
  %11 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %EarlyReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %11, i32 0, i32 20
  %12 = load i64, ptr %EarlyReads, align 8, !tbaa !59
  %13 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %TotalReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %13, i32 0, i32 21
  %14 = load i64, ptr %TotalReads, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) %6(ptr noundef %8, i32 noundef 2, ptr noundef @.str.78, i32 noundef %10, i64 noundef %12, i64 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose2 = getelementptr inbounds %struct._CP_Services, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %verbose2, align 8, !tbaa !45
  %17 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream3 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %CP_Stream3, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %16(ptr noundef %18, i32 noundef 5, ptr noundef @.str.79)
  %19 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %Fabric = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %Fabric, align 8, !tbaa !35
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %21 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %Fabric5 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %Fabric5, align 8, !tbaa !35
  %23 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %24 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %CP_Stream6 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %CP_Stream6, align 8, !tbaa !41
  call void @fini_fabric(ptr noundef %22, ptr noundef %23, ptr noundef %25)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end7
  %26 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %tobool8 = icmp ne ptr %26, null
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %28 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %RankLog, align 8, !tbaa !100
  call void @RdmaDestroyRankReqLog(ptr noundef %27, ptr noundef %29)
  %30 = load ptr, ptr %StepLog, align 8, !tbaa !32
  store ptr %30, ptr %tStepLog, align 8, !tbaa !32
  %31 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Next = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %Next, align 8, !tbaa !132
  store ptr %32, ptr %StepLog, align 8, !tbaa !32
  %33 = load ptr, ptr %tStepLog, align 8, !tbaa !32
  call void @free(ptr noundef %33) #11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterContactInfo = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %34, i32 0, i32 16
  %35 = load ptr, ptr %WriterContactInfo, align 8, !tbaa !98
  call void @free(ptr noundef %35) #11
  %36 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterAddr = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %36, i32 0, i32 17
  %37 = load ptr, ptr %WriterAddr, align 8, !tbaa !96
  call void @free(ptr noundef %37) #11
  %38 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %WriterRoll = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %38, i32 0, i32 18
  %39 = load ptr, ptr %WriterRoll, align 8, !tbaa !97
  call void @free(ptr noundef %39) #11
  %40 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %ContactInfo = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %40, i32 0, i32 13
  %41 = load ptr, ptr %ContactInfo, align 8, !tbaa !55
  %tobool9 = icmp ne ptr %41, null
  br i1 %tobool9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %while.end
  %42 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %ContactInfo11 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %42, i32 0, i32 13
  %43 = load ptr, ptr %ContactInfo11, align 8, !tbaa !55
  %Address = getelementptr inbounds %struct._RdmaReaderContactInfo, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %Address, align 8, !tbaa !52
  call void @free(ptr noundef %44) #11
  %45 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  %ContactInfo12 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %45, i32 0, i32 13
  %46 = load ptr, ptr %ContactInfo12, align 8, !tbaa !55
  call void @free(ptr noundef %46) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %while.end
  %47 = load ptr, ptr %RS_Stream, align 8, !tbaa !32
  call void @free(ptr noundef %47) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %tStepLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %StepLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RS_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaDestroyWriter(ptr noundef %Svcs, ptr noundef %WS_Stream_v) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %WS_Stream_v.addr = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  %Timestep = alloca i64, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %WS_Stream_v, ptr %WS_Stream_v.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %0 = load ptr, ptr %WS_Stream_v.addr, align 8, !tbaa !32
  store ptr %0, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Timestep) #11
  %1 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %verbose, align 8, !tbaa !45
  %3 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %2(ptr noundef %4, i32 noundef 5, ptr noundef @.str.85)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %ReaderCount, align 8, !tbaa !75
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %8 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %Readers, align 8, !tbaa !74
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !32
  call void @RdmaDestroyWriterPerReader(ptr noundef %7, ptr noundef %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose1 = getelementptr inbounds %struct._CP_Services, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %verbose1, align 8, !tbaa !45
  %13 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream2 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %CP_Stream2, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %12(ptr noundef %14, i32 noundef 5, ptr noundef @.str.86)
  %call = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  br label %while.cond3

while.cond3:                                      ; preds = %while.body4, %while.end
  %15 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Timesteps = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %Timesteps, align 8, !tbaa !127
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %while.body4, label %while.end9

while.body4:                                      ; preds = %while.cond3
  %17 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Timesteps5 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %Timesteps5, align 8, !tbaa !127
  %Timestep6 = getelementptr inbounds %struct._TimestepEntry, ptr %18, i32 0, i32 0
  %19 = load i64, ptr %Timestep6, align 8, !tbaa !117
  store i64 %19, ptr %Timestep, align 8, !tbaa !88
  %call7 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  %20 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %21 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %22 = load i64, ptr %Timestep, align 8, !tbaa !88
  call void @RdmaReleaseTimestep(ptr noundef %20, ptr noundef %21, i64 noundef %22)
  %call8 = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  br label %while.cond3

while.end9:                                       ; preds = %while.cond3
  %call10 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  %23 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose11 = getelementptr inbounds %struct._CP_Services, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %verbose11, align 8, !tbaa !45
  %25 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream12 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %CP_Stream12, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %24(ptr noundef %26, i32 noundef 5, ptr noundef @.str.87)
  %27 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Fabric = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %Fabric, align 8, !tbaa !64
  %tobool13 = icmp ne ptr %28, null
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end9
  %29 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Fabric14 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %Fabric14, align 8, !tbaa !64
  %31 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %32 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream15 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %CP_Stream15, align 8, !tbaa !65
  call void @fini_fabric(ptr noundef %30, ptr noundef %31, ptr noundef %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end9
  %34 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Fabric16 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %Fabric16, align 8, !tbaa !64
  call void @free(ptr noundef %35) #11
  %36 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  call void @free(ptr noundef %36) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Timestep) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RdmaDestroyWriterPerReader(ptr noundef %Svcs, ptr noundef %WSR_Stream_v) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %WSR_Stream_v.addr = alloca ptr, align 8
  %WSR_Stream = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  %WriterContactInfo = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %WSR_Stream_v, ptr %WSR_Stream_v.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WSR_Stream) #11
  store ptr null, ptr %WSR_Stream, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %WSR_Stream, ptr align 8 %WSR_Stream_v.addr, i64 8, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %0 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WS_Stream1 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %WS_Stream1, align 8, !tbaa !68
  store ptr %1, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WriterContactInfo) #11
  store ptr null, ptr %WriterContactInfo, align 8, !tbaa !32
  %call = call i32 @pthread_mutex_lock(ptr noundef @wsr_mutex) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !67
  %3 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %ReaderCount, align 8, !tbaa !75
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %Readers, align 8, !tbaa !74
  %7 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !32
  %9 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %cmp2 = icmp eq ptr %8, %9
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers3 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %Readers3, align 8, !tbaa !74
  %12 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount4 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %12, i32 0, i32 7
  %13 = load i32, ptr %ReaderCount4, align 8, !tbaa !75
  %sub = sub nsw i32 %13, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %11, i64 %idxprom5
  %14 = load ptr, ptr %arrayidx6, align 8, !tbaa !32
  %15 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers7 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %Readers7, align 8, !tbaa !74
  %17 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %16, i64 %idxprom8
  store ptr %14, ptr %arrayidx9, align 8, !tbaa !32
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  br label %for.end

for.end:                                          ; preds = %cleanup
  %19 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %rrmr = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %rrmr, align 8, !tbaa !83
  %call10 = call i32 @fi_close(ptr noundef %20)
  %21 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderAddr = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %ReaderAddr, align 8, !tbaa !72
  %tobool = icmp ne ptr %22, null
  br i1 %tobool, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.end
  %23 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderAddr12 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %ReaderAddr12, align 8, !tbaa !72
  call void @free(ptr noundef %24) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end
  %25 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers14 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %25, i32 0, i32 8
  %26 = load ptr, ptr %Readers14, align 8, !tbaa !74
  %27 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount15 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %27, i32 0, i32 7
  %28 = load i32, ptr %ReaderCount15, align 8, !tbaa !75
  %sub16 = sub nsw i32 %28, 1
  %conv = sext i32 %sub16 to i64
  %mul = mul i64 96, %conv
  %call17 = call ptr @realloc(ptr noundef %26, i64 noundef %mul) #15
  %29 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Readers18 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %29, i32 0, i32 8
  store ptr %call17, ptr %Readers18, align 8, !tbaa !74
  %30 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %ReaderCount19 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %30, i32 0, i32 7
  %31 = load i32, ptr %ReaderCount19, align 8, !tbaa !75
  %dec = add nsw i32 %31, -1
  store i32 %dec, ptr %ReaderCount19, align 8, !tbaa !75
  %call20 = call i32 @pthread_mutex_unlock(ptr noundef @wsr_mutex) #11
  %32 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WriterContactInfo21 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %WriterContactInfo21, align 8, !tbaa !85
  %tobool22 = icmp ne ptr %33, null
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end13
  %34 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WriterContactInfo24 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %WriterContactInfo24, align 8, !tbaa !85
  store ptr %35, ptr %WriterContactInfo, align 8, !tbaa !32
  %36 = load ptr, ptr %WriterContactInfo, align 8, !tbaa !32
  %Address = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %Address, align 8, !tbaa !79
  call void @free(ptr noundef %37) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  %38 = load ptr, ptr %WriterContactInfo, align 8, !tbaa !32
  %ReaderRollHandle = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %38, i32 0, i32 3
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %ReaderRollHandle, i32 0, i32 0
  %39 = load ptr, ptr %Block, align 8, !tbaa !133
  %tobool26 = icmp ne ptr %39, null
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  %40 = load ptr, ptr %WriterContactInfo, align 8, !tbaa !32
  %ReaderRollHandle28 = getelementptr inbounds %struct._RdmaWriterContactInfo, ptr %40, i32 0, i32 3
  %Block29 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %ReaderRollHandle28, i32 0, i32 0
  %41 = load ptr, ptr %Block29, align 8, !tbaa !133
  call void @free(ptr noundef %41) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25
  %42 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %WriterContactInfo31 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %WriterContactInfo31, align 8, !tbaa !85
  call void @free(ptr noundef %43) #11
  %44 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderRoll = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %ReaderRoll, align 8, !tbaa !86
  %tobool32 = icmp ne ptr %45, null
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end30
  %46 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  %ReaderRoll34 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %ReaderRoll34, align 8, !tbaa !86
  call void @free(ptr noundef %47) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30
  %48 = load ptr, ptr %WSR_Stream, align 8, !tbaa !32
  call void @free(ptr noundef %48) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WriterContactInfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WSR_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @RdmaGetPriority(ptr noundef %Svcs, ptr noundef %CP_Stream, ptr noundef %Params) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %CP_Stream.addr = alloca ptr, align 8
  %Params.addr = alloca ptr, align 8
  %hints = alloca ptr, align 8
  %info = alloca ptr, align 8
  %originfo = alloca ptr, align 8
  %ifname = alloca ptr, align 8
  %forkunsafe = alloca ptr, align 8
  %Ret = alloca i32, align 4
  %prov_name = alloca ptr, align 8
  %domain_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %CP_Stream, ptr %CP_Stream.addr, align 8, !tbaa !32
  store ptr %Params, ptr %Params.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %hints) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %originfo) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ifname) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %forkunsafe) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %Ret) #11
  store i32 -1, ptr %Ret, align 4, !tbaa !67
  %call = call ptr @fi_allocinfo()
  store ptr %call, ptr %hints, align 8, !tbaa !32
  %0 = load ptr, ptr %hints, align 8, !tbaa !32
  %caps = getelementptr inbounds %struct.fi_info, ptr %0, i32 0, i32 1
  store i64 16134, ptr %caps, align 8, !tbaa !134
  %1 = load ptr, ptr %hints, align 8, !tbaa !32
  %mode = getelementptr inbounds %struct.fi_info, ptr %1, i32 0, i32 2
  store i64 1121396307215253504, ptr %mode, align 8, !tbaa !135
  %2 = load ptr, ptr %hints, align 8, !tbaa !32
  %domain_attr = getelementptr inbounds %struct.fi_info, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %domain_attr, align 8, !tbaa !136
  %mr_mode = getelementptr inbounds %struct.fi_domain_attr, ptr %3, i32 0, i32 7
  store i32 1, ptr %mr_mode, align 4, !tbaa !137
  %4 = load ptr, ptr %hints, align 8, !tbaa !32
  %domain_attr1 = getelementptr inbounds %struct.fi_info, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %domain_attr1, align 8, !tbaa !136
  %control_progress = getelementptr inbounds %struct.fi_domain_attr, ptr %5, i32 0, i32 3
  store i32 1, ptr %control_progress, align 4, !tbaa !139
  %6 = load ptr, ptr %hints, align 8, !tbaa !32
  %domain_attr2 = getelementptr inbounds %struct.fi_info, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %domain_attr2, align 8, !tbaa !136
  %data_progress = getelementptr inbounds %struct.fi_domain_attr, ptr %7, i32 0, i32 4
  store i32 1, ptr %data_progress, align 8, !tbaa !140
  %8 = load ptr, ptr %hints, align 8, !tbaa !32
  %ep_attr = getelementptr inbounds %struct.fi_info, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %ep_attr, align 8, !tbaa !141
  %type = getelementptr inbounds %struct.fi_ep_attr, ptr %9, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !142
  %10 = load ptr, ptr %Params.addr, align 8, !tbaa !32
  %DataInterface = getelementptr inbounds %struct._SstParams, ptr %10, i32 0, i32 16
  %11 = load ptr, ptr %DataInterface, align 8, !tbaa !144
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %Params.addr, align 8, !tbaa !32
  %DataInterface3 = getelementptr inbounds %struct._SstParams, ptr %12, i32 0, i32 16
  %13 = load ptr, ptr %DataInterface3, align 8, !tbaa !144
  store ptr %13, ptr %ifname, align 8, !tbaa !32
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call ptr @getenv(ptr noundef @.str.20) #11
  store ptr %call4, ptr %ifname, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call ptr @getenv(ptr noundef @.str.88) #11
  store ptr %call5, ptr %forkunsafe, align 8, !tbaa !32
  %14 = load ptr, ptr %forkunsafe, align 8, !tbaa !32
  %tobool6 = icmp ne ptr %14, null
  br i1 %tobool6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call i32 @putenv(ptr noundef @.str.89) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %call10 = call i32 @pthread_mutex_lock(ptr noundef @fabric_mutex) #11
  %15 = load ptr, ptr %hints, align 8, !tbaa !32
  %call11 = call i32 @fi_getinfo(i32 noundef 65541, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %15, ptr noundef %info)
  %call12 = call i32 @pthread_mutex_unlock(ptr noundef @fabric_mutex) #11
  %16 = load ptr, ptr %hints, align 8, !tbaa !32
  call void @fi_freeinfo(ptr noundef %16)
  %17 = load ptr, ptr %info, align 8, !tbaa !32
  %tobool13 = icmp ne ptr %17, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  %18 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %verbose, align 8, !tbaa !45
  %20 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %19(ptr noundef %20, i32 noundef 5, ptr noundef @.str.90)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end9
  %21 = load ptr, ptr %info, align 8, !tbaa !32
  store ptr %21, ptr %originfo, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end15
  %22 = load ptr, ptr %info, align 8, !tbaa !32
  %tobool16 = icmp ne ptr %22, null
  br i1 %tobool16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %prov_name) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain_name) #11
  %23 = load ptr, ptr %info, align 8, !tbaa !32
  %fabric_attr = getelementptr inbounds %struct.fi_info, ptr %23, i32 0, i32 13
  %24 = load ptr, ptr %fabric_attr, align 8, !tbaa !146
  %prov_name17 = getelementptr inbounds %struct.fi_fabric_attr, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %prov_name17, align 8, !tbaa !147
  store ptr %25, ptr %prov_name, align 8, !tbaa !32
  %26 = load ptr, ptr %info, align 8, !tbaa !32
  %domain_attr18 = getelementptr inbounds %struct.fi_info, ptr %26, i32 0, i32 12
  %27 = load ptr, ptr %domain_attr18, align 8, !tbaa !136
  %name = getelementptr inbounds %struct.fi_domain_attr, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %name, align 8, !tbaa !149
  store ptr %28, ptr %domain_name, align 8, !tbaa !32
  %29 = load ptr, ptr %ifname, align 8, !tbaa !32
  %tobool19 = icmp ne ptr %29, null
  br i1 %tobool19, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %while.body
  %30 = load ptr, ptr %ifname, align 8, !tbaa !32
  %31 = load ptr, ptr %domain_name, align 8, !tbaa !32
  %call20 = call i32 @strcmp(ptr noundef %30, ptr noundef %31) #14
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose22 = getelementptr inbounds %struct._CP_Services, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %verbose22, align 8, !tbaa !45
  %34 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %35 = load ptr, ptr %ifname, align 8, !tbaa !32
  %36 = load ptr, ptr %prov_name, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %33(ptr noundef %34, i32 noundef 3, ptr noundef @.str.91, ptr noundef %35, ptr noundef %36)
  store i32 100, ptr %Ret, align 4, !tbaa !67
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true, %while.body
  %37 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call24 = call ptr @strstr(ptr noundef %37, ptr noundef @.str.23) #14
  %tobool25 = icmp ne ptr %call24, null
  br i1 %tobool25, label %land.lhs.true26, label %lor.lhs.false

land.lhs.true26:                                  ; preds = %if.end23
  %38 = load ptr, ptr %info, align 8, !tbaa !32
  %src_addr = getelementptr inbounds %struct.fi_info, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %src_addr, align 8, !tbaa !150
  %tobool27 = icmp ne ptr %39, null
  br i1 %tobool27, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true26, %if.end23
  %40 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call28 = call ptr @strstr(ptr noundef %40, ptr noundef @.str.24) #14
  %tobool29 = icmp ne ptr %call28, null
  br i1 %tobool29, label %if.then33, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call31 = call ptr @strstr(ptr noundef %41, ptr noundef @.str.25) #14
  %tobool32 = icmp ne ptr %call31, null
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false30, %lor.lhs.false, %land.lhs.true26
  %42 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose34 = getelementptr inbounds %struct._CP_Services, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %verbose34, align 8, !tbaa !45
  %44 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %45 = load ptr, ptr %domain_name, align 8, !tbaa !32
  %46 = load ptr, ptr %prov_name, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %43(ptr noundef %44, i32 noundef 3, ptr noundef @.str.92, ptr noundef %45, ptr noundef %46)
  store i32 10, ptr %Ret, align 4, !tbaa !67
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %lor.lhs.false30
  %47 = load ptr, ptr %info, align 8, !tbaa !32
  %next = getelementptr inbounds %struct.fi_info, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %next, align 8, !tbaa !151
  store ptr %48, ptr %info, align 8, !tbaa !32
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain_name) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %prov_name) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %49 = load i32, ptr %Ret, align 4, !tbaa !67
  %cmp37 = icmp eq i32 %49, -1
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %while.end
  %50 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose39 = getelementptr inbounds %struct._CP_Services, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %verbose39, align 8, !tbaa !45
  %52 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %51(ptr noundef %52, i32 noundef 3, ptr noundef @.str.93)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %while.end
  %53 = load ptr, ptr %originfo, align 8, !tbaa !32
  %tobool41 = icmp ne ptr %53, null
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  %54 = load ptr, ptr %originfo, align 8, !tbaa !32
  call void @fi_freeinfo(ptr noundef %54)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40
  %55 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose44 = getelementptr inbounds %struct._CP_Services, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %verbose44, align 8, !tbaa !45
  %57 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %58 = load i32, ptr %Ret, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %56(ptr noundef %57, i32 noundef 3, ptr noundef @.str.94, i32 noundef %58)
  %59 = load i32, ptr %Ret, align 4, !tbaa !67
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %Ret) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %forkunsafe) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ifname) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %originfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %hints) #11
  ret i32 %59

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @RdmaUnGetPriority(ptr noundef %Svcs, ptr noundef %CP_Stream) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %CP_Stream.addr = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %CP_Stream, ptr %CP_Stream.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %verbose, align 8, !tbaa !45
  %2 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %1(ptr noundef %2, i32 noundef 3, ptr noundef @.str.95)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

declare i32 @SMPI_Comm_rank(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #8

; Function Attrs: nounwind uwtable
define internal void @init_fabric(ptr noundef %fabric, ptr noundef %Params, ptr noundef %Svcs, ptr noundef %CP_Stream) #0 {
entry:
  %fabric.addr = alloca ptr, align 8
  %Params.addr = alloca ptr, align 8
  %Svcs.addr = alloca ptr, align 8
  %CP_Stream.addr = alloca ptr, align 8
  %hints = alloca ptr, align 8
  %info = alloca ptr, align 8
  %originfo = alloca ptr, align 8
  %useinfo = alloca ptr, align 8
  %av_attr = alloca %struct.fi_av_attr, align 8
  %cq_attr = alloca %struct.fi_cq_attr, align 8
  %ifname = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %prov_name = alloca ptr, align 8
  %domain_name = alloca ptr, align 8
  store ptr %fabric, ptr %fabric.addr, align 8, !tbaa !32
  store ptr %Params, ptr %Params.addr, align 8, !tbaa !32
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %CP_Stream, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %hints) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %originfo) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %useinfo) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr %av_attr) #11
  call void @llvm.memset.p0.i64(ptr align 8 %av_attr, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr %cq_attr) #11
  call void @llvm.memset.p0.i64(ptr align 8 %cq_attr, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ifname) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #11
  %call = call ptr @fi_allocinfo()
  store ptr %call, ptr %hints, align 8, !tbaa !32
  %0 = load ptr, ptr %hints, align 8, !tbaa !32
  %caps = getelementptr inbounds %struct.fi_info, ptr %0, i32 0, i32 1
  store i64 16134, ptr %caps, align 8, !tbaa !134
  %1 = load ptr, ptr %hints, align 8, !tbaa !32
  %mode = getelementptr inbounds %struct.fi_info, ptr %1, i32 0, i32 2
  store i64 1121396307215253504, ptr %mode, align 8, !tbaa !135
  %2 = load ptr, ptr %hints, align 8, !tbaa !32
  %domain_attr = getelementptr inbounds %struct.fi_info, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %domain_attr, align 8, !tbaa !136
  %mr_mode = getelementptr inbounds %struct.fi_domain_attr, ptr %3, i32 0, i32 7
  store i32 1, ptr %mr_mode, align 4, !tbaa !137
  %4 = load ptr, ptr %hints, align 8, !tbaa !32
  %domain_attr1 = getelementptr inbounds %struct.fi_info, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %domain_attr1, align 8, !tbaa !136
  %control_progress = getelementptr inbounds %struct.fi_domain_attr, ptr %5, i32 0, i32 3
  store i32 1, ptr %control_progress, align 4, !tbaa !139
  %6 = load ptr, ptr %hints, align 8, !tbaa !32
  %domain_attr2 = getelementptr inbounds %struct.fi_info, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %domain_attr2, align 8, !tbaa !136
  %data_progress = getelementptr inbounds %struct.fi_domain_attr, ptr %7, i32 0, i32 4
  store i32 1, ptr %data_progress, align 8, !tbaa !140
  %8 = load ptr, ptr %hints, align 8, !tbaa !32
  %ep_attr = getelementptr inbounds %struct.fi_info, ptr %8, i32 0, i32 11
  %9 = load ptr, ptr %ep_attr, align 8, !tbaa !141
  %type = getelementptr inbounds %struct.fi_ep_attr, ptr %9, i32 0, i32 0
  store i32 3, ptr %type, align 8, !tbaa !142
  %10 = load ptr, ptr %Params.addr, align 8, !tbaa !32
  %DataInterface = getelementptr inbounds %struct._SstParams, ptr %10, i32 0, i32 16
  %11 = load ptr, ptr %DataInterface, align 8, !tbaa !144
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %Params.addr, align 8, !tbaa !32
  %DataInterface3 = getelementptr inbounds %struct._SstParams, ptr %12, i32 0, i32 16
  %13 = load ptr, ptr %DataInterface3, align 8, !tbaa !144
  store ptr %13, ptr %ifname, align 8, !tbaa !32
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call ptr @getenv(ptr noundef @.str.20) #11
  store ptr %call4, ptr %ifname, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %info5 = getelementptr inbounds %struct.fabric_state, ptr %14, i32 0, i32 1
  store ptr null, ptr %info5, align 8, !tbaa !47
  %call6 = call i32 @pthread_mutex_lock(ptr noundef @fabric_mutex) #11
  %15 = load ptr, ptr %hints, align 8, !tbaa !32
  %call7 = call i32 @fi_getinfo(i32 noundef 65541, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %15, ptr noundef %info)
  %call8 = call i32 @pthread_mutex_unlock(ptr noundef @fabric_mutex) #11
  %16 = load ptr, ptr %info, align 8, !tbaa !32
  %tobool9 = icmp ne ptr %16, null
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %verbose, align 8, !tbaa !45
  %19 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %18(ptr noundef %19, i32 noundef 1, ptr noundef @.str.21)
  %20 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %info11 = getelementptr inbounds %struct.fabric_state, ptr %20, i32 0, i32 1
  store ptr null, ptr %info11, align 8, !tbaa !47
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end12:                                         ; preds = %if.end
  %21 = load ptr, ptr %hints, align 8, !tbaa !32
  call void @fi_freeinfo(ptr noundef %21)
  %22 = load ptr, ptr %info, align 8, !tbaa !32
  store ptr %22, ptr %originfo, align 8, !tbaa !32
  store ptr null, ptr %useinfo, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end12
  %23 = load ptr, ptr %info, align 8, !tbaa !32
  %tobool13 = icmp ne ptr %23, null
  br i1 %tobool13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %prov_name) #11
  %24 = load ptr, ptr %info, align 8, !tbaa !32
  %fabric_attr = getelementptr inbounds %struct.fi_info, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %fabric_attr, align 8, !tbaa !146
  %prov_name14 = getelementptr inbounds %struct.fi_fabric_attr, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %prov_name14, align 8, !tbaa !147
  store ptr %26, ptr %prov_name, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %domain_name) #11
  %27 = load ptr, ptr %info, align 8, !tbaa !32
  %domain_attr15 = getelementptr inbounds %struct.fi_info, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %domain_attr15, align 8, !tbaa !136
  %name = getelementptr inbounds %struct.fi_domain_attr, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %name, align 8, !tbaa !149
  store ptr %29, ptr %domain_name, align 8, !tbaa !32
  %30 = load ptr, ptr %ifname, align 8, !tbaa !32
  %tobool16 = icmp ne ptr %30, null
  br i1 %tobool16, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %while.body
  %31 = load ptr, ptr %ifname, align 8, !tbaa !32
  %32 = load ptr, ptr %domain_name, align 8, !tbaa !32
  %call17 = call i32 @strcmp(ptr noundef %31, ptr noundef %32) #14
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose19 = getelementptr inbounds %struct._CP_Services, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %verbose19, align 8, !tbaa !45
  %35 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %34(ptr noundef %35, i32 noundef 5, ptr noundef @.str.22)
  %36 = load ptr, ptr %info, align 8, !tbaa !32
  store ptr %36, ptr %useinfo, align 8, !tbaa !32
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true, %while.body
  %37 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call21 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str.23) #14
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %land.lhs.true23, label %lor.lhs.false

land.lhs.true23:                                  ; preds = %if.end20
  %38 = load ptr, ptr %info, align 8, !tbaa !32
  %src_addr = getelementptr inbounds %struct.fi_info, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %src_addr, align 8, !tbaa !150
  %tobool24 = icmp ne ptr %39, null
  br i1 %tobool24, label %land.lhs.true30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true23, %if.end20
  %40 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call25 = call i32 @strcmp(ptr noundef %40, ptr noundef @.str.24) #14
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %land.lhs.true30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call28 = call i32 @strcmp(ptr noundef %41, ptr noundef @.str.25) #14
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %land.lhs.true30, label %if.else41

land.lhs.true30:                                  ; preds = %lor.lhs.false27, %lor.lhs.false, %land.lhs.true23
  %42 = load ptr, ptr %useinfo, align 8, !tbaa !32
  %tobool31 = icmp ne ptr %42, null
  br i1 %tobool31, label %lor.lhs.false32, label %if.then39

lor.lhs.false32:                                  ; preds = %land.lhs.true30
  %43 = load ptr, ptr %ifname, align 8, !tbaa !32
  %tobool33 = icmp ne ptr %43, null
  br i1 %tobool33, label %lor.lhs.false34, label %if.then39

lor.lhs.false34:                                  ; preds = %lor.lhs.false32
  %44 = load ptr, ptr %useinfo, align 8, !tbaa !32
  %domain_attr35 = getelementptr inbounds %struct.fi_info, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %domain_attr35, align 8, !tbaa !136
  %name36 = getelementptr inbounds %struct.fi_domain_attr, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %name36, align 8, !tbaa !149
  %47 = load ptr, ptr %ifname, align 8, !tbaa !32
  %call37 = call i32 @strcmp(ptr noundef %46, ptr noundef %47) #14
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %lor.lhs.false34, %lor.lhs.false32, %land.lhs.true30
  %48 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose40 = getelementptr inbounds %struct._CP_Services, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %verbose40, align 8, !tbaa !45
  %50 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %51 = load ptr, ptr %prov_name, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %49(ptr noundef %50, i32 noundef 5, ptr noundef @.str.26, ptr noundef %51)
  %52 = load ptr, ptr %info, align 8, !tbaa !32
  store ptr %52, ptr %useinfo, align 8, !tbaa !32
  br label %if.end60

if.else41:                                        ; preds = %lor.lhs.false34, %lor.lhs.false27
  %53 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call42 = call ptr @strstr(ptr noundef %53, ptr noundef @.str.23) #14
  %tobool43 = icmp ne ptr %call42, null
  br i1 %tobool43, label %land.lhs.true44, label %lor.lhs.false47

land.lhs.true44:                                  ; preds = %if.else41
  %54 = load ptr, ptr %info, align 8, !tbaa !32
  %src_addr45 = getelementptr inbounds %struct.fi_info, ptr %54, i32 0, i32 6
  %55 = load ptr, ptr %src_addr45, align 8, !tbaa !150
  %tobool46 = icmp ne ptr %55, null
  br i1 %tobool46, label %land.lhs.true53, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %land.lhs.true44, %if.else41
  %56 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call48 = call ptr @strstr(ptr noundef %56, ptr noundef @.str.24) #14
  %tobool49 = icmp ne ptr %call48, null
  br i1 %tobool49, label %land.lhs.true53, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %57 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %call51 = call ptr @strstr(ptr noundef %57, ptr noundef @.str.25) #14
  %tobool52 = icmp ne ptr %call51, null
  br i1 %tobool52, label %land.lhs.true53, label %if.else57

land.lhs.true53:                                  ; preds = %lor.lhs.false50, %lor.lhs.false47, %land.lhs.true44
  %58 = load ptr, ptr %useinfo, align 8, !tbaa !32
  %tobool54 = icmp ne ptr %58, null
  br i1 %tobool54, label %if.else57, label %if.then55

if.then55:                                        ; preds = %land.lhs.true53
  %59 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose56 = getelementptr inbounds %struct._CP_Services, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %verbose56, align 8, !tbaa !45
  %61 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %62 = load ptr, ptr %prov_name, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %60(ptr noundef %61, i32 noundef 5, ptr noundef @.str.26, ptr noundef %62)
  %63 = load ptr, ptr %info, align 8, !tbaa !32
  store ptr %63, ptr %useinfo, align 8, !tbaa !32
  br label %if.end59

if.else57:                                        ; preds = %land.lhs.true53, %lor.lhs.false50
  %64 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose58 = getelementptr inbounds %struct._CP_Services, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %verbose58, align 8, !tbaa !45
  %66 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %67 = load ptr, ptr %prov_name, align 8, !tbaa !32
  %68 = load ptr, ptr %domain_name, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %65(ptr noundef %66, i32 noundef 5, ptr noundef @.str.27, ptr noundef %67, ptr noundef %68)
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then39
  %69 = load ptr, ptr %info, align 8, !tbaa !32
  %next = getelementptr inbounds %struct.fi_info, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %next, align 8, !tbaa !151
  store ptr %70, ptr %info, align 8, !tbaa !32
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %domain_name) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %prov_name) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %71 = load ptr, ptr %useinfo, align 8, !tbaa !32
  store ptr %71, ptr %info, align 8, !tbaa !32
  %72 = load ptr, ptr %info, align 8, !tbaa !32
  %tobool62 = icmp ne ptr %72, null
  br i1 %tobool62, label %if.end66, label %if.then63

if.then63:                                        ; preds = %while.end
  %73 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose64 = getelementptr inbounds %struct._CP_Services, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %verbose64, align 8, !tbaa !45
  %75 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %74(ptr noundef %75, i32 noundef 1, ptr noundef @.str.28)
  %76 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %info65 = getelementptr inbounds %struct.fabric_state, ptr %76, i32 0, i32 1
  store ptr null, ptr %info65, align 8, !tbaa !47
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end66:                                         ; preds = %while.end
  %77 = load ptr, ptr %info, align 8, !tbaa !32
  %mode67 = getelementptr inbounds %struct.fi_info, ptr %77, i32 0, i32 2
  %78 = load i64, ptr %mode67, align 8, !tbaa !135
  %and = and i64 %78, 4503599627370496
  %tobool68 = icmp ne i64 %and, 0
  br i1 %tobool68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.end66
  %call70 = call noalias ptr @calloc(i64 noundef 2, i64 noundef 32) #13
  %79 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx = getelementptr inbounds %struct.fabric_state, ptr %79, i32 0, i32 0
  store ptr %call70, ptr %ctx, align 8, !tbaa !82
  br label %if.end81

if.else71:                                        ; preds = %if.end66
  %80 = load ptr, ptr %info, align 8, !tbaa !32
  %mode72 = getelementptr inbounds %struct.fi_info, ptr %80, i32 0, i32 2
  %81 = load i64, ptr %mode72, align 8, !tbaa !135
  %and73 = and i64 %81, 576460752303423488
  %tobool74 = icmp ne i64 %and73, 0
  br i1 %tobool74, label %if.then75, label %if.else78

if.then75:                                        ; preds = %if.else71
  %call76 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  %82 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx77 = getelementptr inbounds %struct.fabric_state, ptr %82, i32 0, i32 0
  store ptr %call76, ptr %ctx77, align 8, !tbaa !82
  br label %if.end80

if.else78:                                        ; preds = %if.else71
  %83 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx79 = getelementptr inbounds %struct.fabric_state, ptr %83, i32 0, i32 0
  store ptr null, ptr %ctx79, align 8, !tbaa !82
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then75
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then69
  %84 = load ptr, ptr %info, align 8, !tbaa !32
  %mode82 = getelementptr inbounds %struct.fi_info, ptr %84, i32 0, i32 2
  %85 = load i64, ptr %mode82, align 8, !tbaa !135
  %and83 = and i64 %85, 36028797018963968
  %tobool84 = icmp ne i64 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end81
  %86 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %local_mr_req = getelementptr inbounds %struct.fabric_state, ptr %86, i32 0, i32 2
  store i32 1, ptr %local_mr_req, align 8, !tbaa !126
  br label %if.end88

if.else86:                                        ; preds = %if.end81
  %87 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %local_mr_req87 = getelementptr inbounds %struct.fabric_state, ptr %87, i32 0, i32 2
  store i32 0, ptr %local_mr_req87, align 8, !tbaa !126
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then85
  %88 = load ptr, ptr %info, align 8, !tbaa !32
  %mode89 = getelementptr inbounds %struct.fi_info, ptr %88, i32 0, i32 2
  %89 = load i64, ptr %mode89, align 8, !tbaa !135
  %and90 = and i64 %89, 288230376151711744
  %tobool91 = icmp ne i64 %and90, 0
  br i1 %tobool91, label %if.then92, label %if.else95

if.then92:                                        ; preds = %if.end88
  %90 = load ptr, ptr %info, align 8, !tbaa !32
  %ep_attr93 = getelementptr inbounds %struct.fi_info, ptr %90, i32 0, i32 11
  %91 = load ptr, ptr %ep_attr93, align 8, !tbaa !141
  %msg_prefix_size = getelementptr inbounds %struct.fi_ep_attr, ptr %91, i32 0, i32 4
  %92 = load i64, ptr %msg_prefix_size, align 8, !tbaa !152
  %93 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %msg_prefix_size94 = getelementptr inbounds %struct.fabric_state, ptr %93, i32 0, i32 5
  store i64 %92, ptr %msg_prefix_size94, align 8, !tbaa !153
  br label %if.end97

if.else95:                                        ; preds = %if.end88
  %94 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %msg_prefix_size96 = getelementptr inbounds %struct.fabric_state, ptr %94, i32 0, i32 5
  store i64 0, ptr %msg_prefix_size96, align 8, !tbaa !153
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.then92
  %95 = load ptr, ptr %info, align 8, !tbaa !32
  %mode98 = getelementptr inbounds %struct.fi_info, ptr %95, i32 0, i32 2
  %96 = load i64, ptr %mode98, align 8, !tbaa !135
  %and99 = and i64 %96, 72057594037927936
  %tobool100 = icmp ne i64 %and99, 0
  br i1 %tobool100, label %if.then101, label %if.else102

if.then101:                                       ; preds = %if.end97
  %97 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %rx_cq_data = getelementptr inbounds %struct.fabric_state, ptr %97, i32 0, i32 3
  store i32 1, ptr %rx_cq_data, align 4, !tbaa !154
  br label %if.end104

if.else102:                                       ; preds = %if.end97
  %98 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %rx_cq_data103 = getelementptr inbounds %struct.fabric_state, ptr %98, i32 0, i32 3
  store i32 0, ptr %rx_cq_data103, align 4, !tbaa !154
  br label %if.end104

if.end104:                                        ; preds = %if.else102, %if.then101
  %99 = load ptr, ptr %info, align 8, !tbaa !32
  %src_addrlen = getelementptr inbounds %struct.fi_info, ptr %99, i32 0, i32 4
  %100 = load i64, ptr %src_addrlen, align 8, !tbaa !49
  %101 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %addr_len = getelementptr inbounds %struct.fabric_state, ptr %101, i32 0, i32 4
  store i64 %100, ptr %addr_len, align 8, !tbaa !155
  %102 = load ptr, ptr %info, align 8, !tbaa !32
  %domain_attr105 = getelementptr inbounds %struct.fi_info, ptr %102, i32 0, i32 12
  %103 = load ptr, ptr %domain_attr105, align 8, !tbaa !136
  %mr_mode106 = getelementptr inbounds %struct.fi_domain_attr, ptr %103, i32 0, i32 7
  store i32 1, ptr %mr_mode106, align 4, !tbaa !137
  %104 = load ptr, ptr %info, align 8, !tbaa !32
  %call107 = call ptr @fi_dupinfo(ptr noundef %104)
  %105 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %info108 = getelementptr inbounds %struct.fabric_state, ptr %105, i32 0, i32 1
  store ptr %call107, ptr %info108, align 8, !tbaa !47
  %106 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %info109 = getelementptr inbounds %struct.fabric_state, ptr %106, i32 0, i32 1
  %107 = load ptr, ptr %info109, align 8, !tbaa !47
  %tobool110 = icmp ne ptr %107, null
  br i1 %tobool110, label %if.end113, label %if.then111

if.then111:                                       ; preds = %if.end104
  %108 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose112 = getelementptr inbounds %struct._CP_Services, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %verbose112, align 8, !tbaa !45
  %110 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %109(ptr noundef %110, i32 noundef 1, ptr noundef @.str.29)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end113:                                        ; preds = %if.end104
  %111 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose114 = getelementptr inbounds %struct._CP_Services, ptr %111, i32 0, i32 0
  %112 = load ptr, ptr %verbose114, align 8, !tbaa !45
  %113 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %114 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %info115 = getelementptr inbounds %struct.fabric_state, ptr %114, i32 0, i32 1
  %115 = load ptr, ptr %info115, align 8, !tbaa !47
  %call116 = call ptr @fi_tostr(ptr noundef %115, i32 noundef 0)
  call void (ptr, i32, ptr, ...) %112(ptr noundef %113, i32 noundef 5, ptr noundef @.str.30, ptr noundef %call116)
  %116 = load ptr, ptr %info, align 8, !tbaa !32
  %fabric_attr117 = getelementptr inbounds %struct.fi_info, ptr %116, i32 0, i32 13
  %117 = load ptr, ptr %fabric_attr117, align 8, !tbaa !146
  %118 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %fabric118 = getelementptr inbounds %struct.fabric_state, ptr %118, i32 0, i32 6
  %119 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx119 = getelementptr inbounds %struct.fabric_state, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %ctx119, align 8, !tbaa !82
  %call120 = call i32 @fi_fabric(ptr noundef %117, ptr noundef %fabric118, ptr noundef %120)
  store i32 %call120, ptr %result, align 4, !tbaa !67
  %121 = load i32, ptr %result, align 4, !tbaa !67
  %cmp121 = icmp ne i32 %121, 0
  br i1 %cmp121, label %if.then122, label %if.end125

if.then122:                                       ; preds = %if.end113
  %122 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose123 = getelementptr inbounds %struct._CP_Services, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %verbose123, align 8, !tbaa !45
  %124 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %125 = load i32, ptr %result, align 4, !tbaa !67
  %126 = load i32, ptr %result, align 4, !tbaa !67
  %call124 = call ptr @fi_strerror(i32 noundef %126)
  call void (ptr, i32, ptr, ...) %123(ptr noundef %124, i32 noundef 1, ptr noundef @.str.31, i32 noundef %125, ptr noundef %call124)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end125:                                        ; preds = %if.end113
  %127 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %fabric126 = getelementptr inbounds %struct.fabric_state, ptr %127, i32 0, i32 6
  %128 = load ptr, ptr %fabric126, align 8, !tbaa !156
  %129 = load ptr, ptr %info, align 8, !tbaa !32
  %130 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %domain = getelementptr inbounds %struct.fabric_state, ptr %130, i32 0, i32 7
  %131 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx127 = getelementptr inbounds %struct.fabric_state, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %ctx127, align 8, !tbaa !82
  %call128 = call i32 @fi_domain(ptr noundef %128, ptr noundef %129, ptr noundef %domain, ptr noundef %132)
  store i32 %call128, ptr %result, align 4, !tbaa !67
  %133 = load i32, ptr %result, align 4, !tbaa !67
  %cmp129 = icmp ne i32 %133, 0
  br i1 %cmp129, label %if.then130, label %if.end134

if.then130:                                       ; preds = %if.end125
  %134 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose131 = getelementptr inbounds %struct._CP_Services, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %verbose131, align 8, !tbaa !45
  %136 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %137 = load i32, ptr %result, align 4, !tbaa !67
  %138 = load i32, ptr %result, align 4, !tbaa !67
  %call132 = call ptr @fi_strerror(i32 noundef %138)
  call void (ptr, i32, ptr, ...) %135(ptr noundef %136, i32 noundef 1, ptr noundef @.str.32, i32 noundef %137, ptr noundef %call132)
  %139 = load ptr, ptr @stderr, align 8, !tbaa !32
  %call133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.33)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end134:                                        ; preds = %if.end125
  %140 = load ptr, ptr %info, align 8, !tbaa !32
  %ep_attr135 = getelementptr inbounds %struct.fi_info, ptr %140, i32 0, i32 11
  %141 = load ptr, ptr %ep_attr135, align 8, !tbaa !141
  %type136 = getelementptr inbounds %struct.fi_ep_attr, ptr %141, i32 0, i32 0
  store i32 3, ptr %type136, align 8, !tbaa !142
  %142 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %domain137 = getelementptr inbounds %struct.fabric_state, ptr %142, i32 0, i32 7
  %143 = load ptr, ptr %domain137, align 8, !tbaa !81
  %144 = load ptr, ptr %info, align 8, !tbaa !32
  %145 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %145, i32 0, i32 8
  %146 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx138 = getelementptr inbounds %struct.fabric_state, ptr %146, i32 0, i32 0
  %147 = load ptr, ptr %ctx138, align 8, !tbaa !82
  %call139 = call i32 @fi_endpoint(ptr noundef %143, ptr noundef %144, ptr noundef %signal, ptr noundef %147)
  store i32 %call139, ptr %result, align 4, !tbaa !67
  %148 = load i32, ptr %result, align 4, !tbaa !67
  %cmp140 = icmp ne i32 %148, 0
  br i1 %cmp140, label %if.then144, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.end134
  %149 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %signal142 = getelementptr inbounds %struct.fabric_state, ptr %149, i32 0, i32 8
  %150 = load ptr, ptr %signal142, align 8, !tbaa !53
  %tobool143 = icmp ne ptr %150, null
  br i1 %tobool143, label %if.end147, label %if.then144

if.then144:                                       ; preds = %lor.lhs.false141, %if.end134
  %151 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose145 = getelementptr inbounds %struct._CP_Services, ptr %151, i32 0, i32 0
  %152 = load ptr, ptr %verbose145, align 8, !tbaa !45
  %153 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %154 = load i32, ptr %result, align 4, !tbaa !67
  %155 = load i32, ptr %result, align 4, !tbaa !67
  %call146 = call ptr @fi_strerror(i32 noundef %155)
  call void (ptr, i32, ptr, ...) %152(ptr noundef %153, i32 noundef 1, ptr noundef @.str.34, i32 noundef %154, ptr noundef %call146)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end147:                                        ; preds = %lor.lhs.false141
  %type148 = getelementptr inbounds %struct.fi_av_attr, ptr %av_attr, i32 0, i32 0
  store i32 1, ptr %type148, align 8, !tbaa !157
  %count = getelementptr inbounds %struct.fi_av_attr, ptr %av_attr, i32 0, i32 2
  store i64 512, ptr %count, align 8, !tbaa !159
  %ep_per_node = getelementptr inbounds %struct.fi_av_attr, ptr %av_attr, i32 0, i32 3
  store i64 0, ptr %ep_per_node, align 8, !tbaa !160
  %156 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %domain149 = getelementptr inbounds %struct.fabric_state, ptr %156, i32 0, i32 7
  %157 = load ptr, ptr %domain149, align 8, !tbaa !81
  %158 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %av = getelementptr inbounds %struct.fabric_state, ptr %158, i32 0, i32 10
  %159 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx150 = getelementptr inbounds %struct.fabric_state, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %ctx150, align 8, !tbaa !82
  %call151 = call i32 @fi_av_open(ptr noundef %157, ptr noundef %av_attr, ptr noundef %av, ptr noundef %160)
  store i32 %call151, ptr %result, align 4, !tbaa !67
  %161 = load i32, ptr %result, align 4, !tbaa !67
  %cmp152 = icmp ne i32 %161, 0
  br i1 %cmp152, label %if.then153, label %if.end156

if.then153:                                       ; preds = %if.end147
  %162 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose154 = getelementptr inbounds %struct._CP_Services, ptr %162, i32 0, i32 0
  %163 = load ptr, ptr %verbose154, align 8, !tbaa !45
  %164 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %165 = load i32, ptr %result, align 4, !tbaa !67
  %166 = load i32, ptr %result, align 4, !tbaa !67
  %call155 = call ptr @fi_strerror(i32 noundef %166)
  call void (ptr, i32, ptr, ...) %163(ptr noundef %164, i32 noundef 1, ptr noundef @.str.35, i32 noundef %165, ptr noundef %call155)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end156:                                        ; preds = %if.end147
  %167 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %signal157 = getelementptr inbounds %struct.fabric_state, ptr %167, i32 0, i32 8
  %168 = load ptr, ptr %signal157, align 8, !tbaa !53
  %169 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %av158 = getelementptr inbounds %struct.fabric_state, ptr %169, i32 0, i32 10
  %170 = load ptr, ptr %av158, align 8, !tbaa !73
  %fid = getelementptr inbounds %struct.fid_av, ptr %170, i32 0, i32 0
  %call159 = call i32 @fi_ep_bind(ptr noundef %168, ptr noundef %fid, i64 noundef 0)
  store i32 %call159, ptr %result, align 4, !tbaa !67
  %171 = load i32, ptr %result, align 4, !tbaa !67
  %cmp160 = icmp ne i32 %171, 0
  br i1 %cmp160, label %if.then161, label %if.end164

if.then161:                                       ; preds = %if.end156
  %172 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose162 = getelementptr inbounds %struct._CP_Services, ptr %172, i32 0, i32 0
  %173 = load ptr, ptr %verbose162, align 8, !tbaa !45
  %174 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %175 = load i32, ptr %result, align 4, !tbaa !67
  %176 = load i32, ptr %result, align 4, !tbaa !67
  %call163 = call ptr @fi_strerror(i32 noundef %176)
  call void (ptr, i32, ptr, ...) %173(ptr noundef %174, i32 noundef 1, ptr noundef @.str.36, i32 noundef %175, ptr noundef %call163)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end164:                                        ; preds = %if.end156
  %size = getelementptr inbounds %struct.fi_cq_attr, ptr %cq_attr, i32 0, i32 0
  store i64 0, ptr %size, align 8, !tbaa !161
  %format = getelementptr inbounds %struct.fi_cq_attr, ptr %cq_attr, i32 0, i32 2
  store i32 3, ptr %format, align 8, !tbaa !163
  %wait_obj = getelementptr inbounds %struct.fi_cq_attr, ptr %cq_attr, i32 0, i32 3
  store i32 1, ptr %wait_obj, align 4, !tbaa !164
  %wait_cond = getelementptr inbounds %struct.fi_cq_attr, ptr %cq_attr, i32 0, i32 5
  store i32 0, ptr %wait_cond, align 4, !tbaa !165
  %177 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %domain165 = getelementptr inbounds %struct.fabric_state, ptr %177, i32 0, i32 7
  %178 = load ptr, ptr %domain165, align 8, !tbaa !81
  %179 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %cq_signal = getelementptr inbounds %struct.fabric_state, ptr %179, i32 0, i32 9
  %180 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx166 = getelementptr inbounds %struct.fabric_state, ptr %180, i32 0, i32 0
  %181 = load ptr, ptr %ctx166, align 8, !tbaa !82
  %call167 = call i32 @fi_cq_open(ptr noundef %178, ptr noundef %cq_attr, ptr noundef %cq_signal, ptr noundef %181)
  store i32 %call167, ptr %result, align 4, !tbaa !67
  %182 = load i32, ptr %result, align 4, !tbaa !67
  %cmp168 = icmp ne i32 %182, 0
  br i1 %cmp168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.end164
  %183 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose170 = getelementptr inbounds %struct._CP_Services, ptr %183, i32 0, i32 0
  %184 = load ptr, ptr %verbose170, align 8, !tbaa !45
  %185 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %186 = load i32, ptr %result, align 4, !tbaa !67
  %187 = load i32, ptr %result, align 4, !tbaa !67
  %call171 = call ptr @fi_strerror(i32 noundef %187)
  call void (ptr, i32, ptr, ...) %184(ptr noundef %185, i32 noundef 1, ptr noundef @.str.37, i32 noundef %186, ptr noundef %call171)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end172:                                        ; preds = %if.end164
  %188 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %signal173 = getelementptr inbounds %struct.fabric_state, ptr %188, i32 0, i32 8
  %189 = load ptr, ptr %signal173, align 8, !tbaa !53
  %190 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %cq_signal174 = getelementptr inbounds %struct.fabric_state, ptr %190, i32 0, i32 9
  %191 = load ptr, ptr %cq_signal174, align 8, !tbaa !166
  %fid175 = getelementptr inbounds %struct.fid_cq, ptr %191, i32 0, i32 0
  %call176 = call i32 @fi_ep_bind(ptr noundef %189, ptr noundef %fid175, i64 noundef 3072)
  store i32 %call176, ptr %result, align 4, !tbaa !67
  %192 = load i32, ptr %result, align 4, !tbaa !67
  %cmp177 = icmp ne i32 %192, 0
  br i1 %cmp177, label %if.then178, label %if.end181

if.then178:                                       ; preds = %if.end172
  %193 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose179 = getelementptr inbounds %struct._CP_Services, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %verbose179, align 8, !tbaa !45
  %195 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %196 = load i32, ptr %result, align 4, !tbaa !67
  %197 = load i32, ptr %result, align 4, !tbaa !67
  %call180 = call ptr @fi_strerror(i32 noundef %197)
  call void (ptr, i32, ptr, ...) %194(ptr noundef %195, i32 noundef 1, ptr noundef @.str.38, i32 noundef %196, ptr noundef %call180)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end181:                                        ; preds = %if.end172
  %198 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %signal182 = getelementptr inbounds %struct.fabric_state, ptr %198, i32 0, i32 8
  %199 = load ptr, ptr %signal182, align 8, !tbaa !53
  %call183 = call i32 @fi_enable(ptr noundef %199)
  store i32 %call183, ptr %result, align 4, !tbaa !67
  %200 = load i32, ptr %result, align 4, !tbaa !67
  %cmp184 = icmp ne i32 %200, 0
  br i1 %cmp184, label %if.then185, label %if.end188

if.then185:                                       ; preds = %if.end181
  %201 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose186 = getelementptr inbounds %struct._CP_Services, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %verbose186, align 8, !tbaa !45
  %203 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %204 = load i32, ptr %result, align 4, !tbaa !67
  %205 = load i32, ptr %result, align 4, !tbaa !67
  %call187 = call ptr @fi_strerror(i32 noundef %205)
  call void (ptr, i32, ptr, ...) %202(ptr noundef %203, i32 noundef 1, ptr noundef @.str.39, i32 noundef %204, ptr noundef %call187)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

if.end188:                                        ; preds = %if.end181
  %206 = load ptr, ptr %originfo, align 8, !tbaa !32
  call void @fi_freeinfo(ptr noundef %206)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup189

cleanup189:                                       ; preds = %if.end188, %if.then185, %if.then178, %if.then169, %if.then161, %if.then153, %if.then144, %if.then130, %if.then122, %if.then111, %if.then63, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ifname) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %cq_attr) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr %av_attr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %useinfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %originfo) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %hints) #11
  %cleanup.dest197 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest197, label %unreachable [
    i32 0, label %cleanup.cont198
    i32 1, label %cleanup.cont198
  ]

cleanup.cont198:                                  ; preds = %cleanup189, %cleanup189
  ret void

unreachable:                                      ; preds = %cleanup189, %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_getname(ptr noundef %fid, ptr noundef %addr, ptr noundef %addrlen) #9 {
entry:
  %fid.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %addrlen.addr = alloca ptr, align 8
  %ep = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8, !tbaa !32
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !32
  store ptr %addrlen, ptr %addrlen.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #11
  %0 = load ptr, ptr %fid.addr, align 8, !tbaa !32
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 0
  store ptr %add.ptr, ptr %ep, align 8, !tbaa !32
  %1 = load ptr, ptr %ep, align 8, !tbaa !32
  %cm = getelementptr inbounds %struct.fid_ep, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %cm, align 8, !tbaa !167
  %getname = getelementptr inbounds %struct.fi_ops_cm, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %getname, align 8, !tbaa !170
  %4 = load ptr, ptr %fid.addr, align 8, !tbaa !32
  %5 = load ptr, ptr %addr.addr, align 8, !tbaa !32
  %6 = load ptr, ptr %addrlen.addr, align 8, !tbaa !32
  %call = call i32 %3(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #11
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @fi_allocinfo() #9 {
entry:
  %call = call ptr @fi_dupinfo(ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #7

declare i32 @fi_getinfo(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #7

declare void @fi_freeinfo(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #8

declare ptr @fi_dupinfo(ptr noundef) #5

declare ptr @fi_tostr(ptr noundef, i32 noundef) #5

declare i32 @fi_fabric(ptr noundef, ptr noundef, ptr noundef) #5

declare ptr @fi_strerror(i32 noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_domain(ptr noundef %fabric, ptr noundef %info, ptr noundef %domain, ptr noundef %context) #9 {
entry:
  %fabric.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %domain.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %fabric, ptr %fabric.addr, align 8, !tbaa !32
  store ptr %info, ptr %info.addr, align 8, !tbaa !32
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !32
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ops = getelementptr inbounds %struct.fid_fabric, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ops, align 8, !tbaa !172
  %domain1 = getelementptr inbounds %struct.fi_ops_fabric, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %domain1, align 8, !tbaa !174
  %3 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !32
  %5 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %6 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_endpoint(ptr noundef %domain, ptr noundef %info, ptr noundef %ep, ptr noundef %context) #9 {
entry:
  %domain.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !32
  store ptr %info, ptr %info.addr, align 8, !tbaa !32
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !32
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %ops = getelementptr inbounds %struct.fid_domain, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ops, align 8, !tbaa !176
  %endpoint = getelementptr inbounds %struct.fi_ops_domain, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %endpoint, align 8, !tbaa !178
  %3 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %info.addr, align 8, !tbaa !32
  %5 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %6 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_av_open(ptr noundef %domain, ptr noundef %attr, ptr noundef %av, ptr noundef %context) #9 {
entry:
  %domain.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %av.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !32
  store ptr %attr, ptr %attr.addr, align 8, !tbaa !32
  store ptr %av, ptr %av.addr, align 8, !tbaa !32
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %ops = getelementptr inbounds %struct.fid_domain, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ops, align 8, !tbaa !176
  %av_open = getelementptr inbounds %struct.fi_ops_domain, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %av_open, align 8, !tbaa !180
  %3 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %attr.addr, align 8, !tbaa !32
  %5 = load ptr, ptr %av.addr, align 8, !tbaa !32
  %6 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_ep_bind(ptr noundef %ep, ptr noundef %bfid, i64 noundef %flags) #9 {
entry:
  %ep.addr = alloca ptr, align 8
  %bfid.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !32
  store ptr %bfid, ptr %bfid.addr, align 8, !tbaa !32
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !88
  %0 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %fid = getelementptr inbounds %struct.fid_ep, ptr %0, i32 0, i32 0
  %ops = getelementptr inbounds %struct.fid, ptr %fid, i32 0, i32 2
  %1 = load ptr, ptr %ops, align 8, !tbaa !181
  %bind = getelementptr inbounds %struct.fi_ops, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %bind, align 8, !tbaa !182
  %3 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %fid1 = getelementptr inbounds %struct.fid_ep, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %bfid.addr, align 8, !tbaa !32
  %5 = load i64, ptr %flags.addr, align 8, !tbaa !88
  %call = call i32 %2(ptr noundef %fid1, ptr noundef %4, i64 noundef %5)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_cq_open(ptr noundef %domain, ptr noundef %attr, ptr noundef %cq, ptr noundef %context) #9 {
entry:
  %domain.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %cq.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !32
  store ptr %attr, ptr %attr.addr, align 8, !tbaa !32
  store ptr %cq, ptr %cq.addr, align 8, !tbaa !32
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %ops = getelementptr inbounds %struct.fid_domain, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ops, align 8, !tbaa !176
  %cq_open = getelementptr inbounds %struct.fi_ops_domain, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %cq_open, align 8, !tbaa !184
  %3 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %attr.addr, align 8, !tbaa !32
  %5 = load ptr, ptr %cq.addr, align 8, !tbaa !32
  %6 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_enable(ptr noundef %ep) #9 {
entry:
  %ep.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %fid = getelementptr inbounds %struct.fid_ep, ptr %0, i32 0, i32 0
  %ops = getelementptr inbounds %struct.fid, ptr %fid, i32 0, i32 2
  %1 = load ptr, ptr %ops, align 8, !tbaa !181
  %control = getelementptr inbounds %struct.fi_ops, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %control, align 8, !tbaa !185
  %3 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %fid1 = getelementptr inbounds %struct.fid_ep, ptr %3, i32 0, i32 0
  %call = call i32 %2(ptr noundef %fid1, i32 noundef 6, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_av_insert(ptr noundef %av, ptr noundef %addr, i64 noundef %count, ptr noundef %fi_addr, i64 noundef %flags, ptr noundef %context) #9 {
entry:
  %av.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %fi_addr.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  store ptr %av, ptr %av.addr, align 8, !tbaa !32
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !32
  store i64 %count, ptr %count.addr, align 8, !tbaa !88
  store ptr %fi_addr, ptr %fi_addr.addr, align 8, !tbaa !32
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !88
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %av.addr, align 8, !tbaa !32
  %ops = getelementptr inbounds %struct.fid_av, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ops, align 8, !tbaa !186
  %insert = getelementptr inbounds %struct.fi_ops_av, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %insert, align 8, !tbaa !188
  %3 = load ptr, ptr %av.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %addr.addr, align 8, !tbaa !32
  %5 = load i64, ptr %count.addr, align 8, !tbaa !88
  %6 = load ptr, ptr %fi_addr.addr, align 8, !tbaa !32
  %7 = load i64, ptr %flags.addr, align 8, !tbaa !88
  %8 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8)
  ret i32 %call
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #10

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_mr_reg(ptr noundef %domain, ptr noundef %buf, i64 noundef %len, i64 noundef %acs, i64 noundef %offset, i64 noundef %requested_key, i64 noundef %flags, ptr noundef %mr, ptr noundef %context) #9 {
entry:
  %domain.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %acs.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %requested_key.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %mr.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store ptr %domain, ptr %domain.addr, align 8, !tbaa !32
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  store i64 %len, ptr %len.addr, align 8, !tbaa !88
  store i64 %acs, ptr %acs.addr, align 8, !tbaa !88
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !88
  store i64 %requested_key, ptr %requested_key.addr, align 8, !tbaa !88
  store i64 %flags, ptr %flags.addr, align 8, !tbaa !88
  store ptr %mr, ptr %mr.addr, align 8, !tbaa !32
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %mr1 = getelementptr inbounds %struct.fid_domain, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %mr1, align 8, !tbaa !190
  %reg = getelementptr inbounds %struct.fi_ops_mr, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %reg, align 8, !tbaa !191
  %3 = load ptr, ptr %domain.addr, align 8, !tbaa !32
  %fid = getelementptr inbounds %struct.fid_domain, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !32
  %5 = load i64, ptr %len.addr, align 8, !tbaa !88
  %6 = load i64, ptr %acs.addr, align 8, !tbaa !88
  %7 = load i64, ptr %offset.addr, align 8, !tbaa !88
  %8 = load i64, ptr %requested_key.addr, align 8, !tbaa !88
  %9 = load i64, ptr %flags.addr, align 8, !tbaa !88
  %10 = load ptr, ptr %mr.addr, align 8, !tbaa !32
  %11 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i32 %2(ptr noundef %fid, ptr noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10, ptr noundef %11)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fi_mr_key(ptr noundef %mr) #9 {
entry:
  %mr.addr = alloca ptr, align 8
  store ptr %mr, ptr %mr.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %mr.addr, align 8, !tbaa !32
  %key = getelementptr inbounds %struct.fid_mr, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %key, align 8, !tbaa !193
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal ptr @GetRequest(ptr noundef %Stream, ptr noundef %StepLog, i32 noundef %Rank, i64 noundef %Offset, i64 noundef %Length) #0 {
entry:
  %retval = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %StepLog.addr = alloca ptr, align 8
  %Rank.addr = alloca i32, align 4
  %Offset.addr = alloca i64, align 8
  %Length.addr = alloca i64, align 8
  %RankLog = alloca ptr, align 8
  %Req = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  store ptr %StepLog, ptr %StepLog.addr, align 8, !tbaa !32
  store i32 %Rank, ptr %Rank.addr, align 4, !tbaa !67
  store i64 %Offset, ptr %Offset.addr, align 8, !tbaa !88
  store i64 %Length, ptr %Length.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %RankLog) #11
  %0 = load ptr, ptr %StepLog.addr, align 8, !tbaa !32
  %RankLog1 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %RankLog1, align 8, !tbaa !100
  %2 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaRankReqLog, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %RankLog, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Req) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !67
  %4 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries = getelementptr inbounds %struct._RdmaRankReqLog, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %Entries, align 8, !tbaa !195
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %ReqLog = getelementptr inbounds %struct._RdmaRankReqLog, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %ReqLog, align 8, !tbaa !102
  %8 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds %struct._RdmaBuffer, ptr %7, i64 %idxprom2
  store ptr %arrayidx3, ptr %Req, align 8, !tbaa !32
  %9 = load ptr, ptr %Req, align 8, !tbaa !32
  %BufferLen = getelementptr inbounds %struct._RdmaBuffer, ptr %9, i32 0, i32 1
  %10 = load i64, ptr %BufferLen, align 8, !tbaa !89
  %11 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %cmp4 = icmp eq i64 %10, %11
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %Req, align 8, !tbaa !32
  %Offset5 = getelementptr inbounds %struct._RdmaBuffer, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %Offset5, align 8, !tbaa !196
  %14 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %cmp6 = icmp eq i64 %13, %14
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %Req, align 8, !tbaa !32
  store ptr %15, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Req) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RankLog) #11
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal i64 @PostRead(ptr noundef %Svcs, ptr noundef %RS_Stream, i32 noundef %Rank, i64 noundef %Timestep, i64 noundef %Offset, i64 noundef %Length, ptr noundef %Buffer, ptr noundef %Info, ptr noundef %ret_v) #0 {
entry:
  %retval = alloca i64, align 8
  %Svcs.addr = alloca ptr, align 8
  %RS_Stream.addr = alloca ptr, align 8
  %Rank.addr = alloca i32, align 4
  %Timestep.addr = alloca i64, align 8
  %Offset.addr = alloca i64, align 8
  %Length.addr = alloca i64, align 8
  %Buffer.addr = alloca ptr, align 8
  %Info.addr = alloca ptr, align 8
  %ret_v.addr = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %SrcAddress = alloca i64, align 8
  %LocalDesc = alloca ptr, align 8
  %Addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %rc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %RS_Stream, ptr %RS_Stream.addr, align 8, !tbaa !32
  store i32 %Rank, ptr %Rank.addr, align 4, !tbaa !67
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  store i64 %Offset, ptr %Offset.addr, align 8, !tbaa !88
  store i64 %Length, ptr %Length.addr, align 8, !tbaa !88
  store ptr %Buffer, ptr %Buffer.addr, align 8, !tbaa !32
  store ptr %Info, ptr %Info.addr, align 8, !tbaa !32
  store ptr %ret_v, ptr %ret_v.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %0 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %Fabric1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %Fabric1, align 8, !tbaa !35
  store ptr %1, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %SrcAddress) #11
  %2 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %WriterAddr = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %2, i32 0, i32 17
  %3 = load ptr, ptr %WriterAddr, align 8, !tbaa !96
  %4 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 %idxprom
  %5 = load i64, ptr %arrayidx, align 8, !tbaa !88
  store i64 %5, ptr %SrcAddress, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %LocalDesc) #11
  store ptr null, ptr %LocalDesc, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Addr) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #11
  %call = call noalias ptr @malloc(i64 noundef 48) #12
  %6 = load ptr, ptr %ret_v.addr, align 8, !tbaa !32
  store ptr %call, ptr %6, align 8, !tbaa !32
  %7 = load ptr, ptr %ret_v.addr, align 8, !tbaa !32
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  store ptr %8, ptr %ret, align 8, !tbaa !32
  %9 = load ptr, ptr %ret, align 8, !tbaa !32
  %Pending = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %9, i32 0, i32 5
  store i32 1, ptr %Pending, align 4, !tbaa !109
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %PendingReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %10, i32 0, i32 19
  %11 = load i32, ptr %PendingReads, align 8, !tbaa !57
  %cmp = icmp sgt i32 %11, 1024
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %13 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %call2 = call i32 @WaitForAnyPull(ptr noundef %12, ptr noundef %13)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req = getelementptr inbounds %struct.fabric_state, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %local_mr_req, align 8, !tbaa !126
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain = getelementptr inbounds %struct.fabric_state, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %domain, align 8, !tbaa !81
  %18 = load ptr, ptr %Buffer.addr, align 8, !tbaa !32
  %19 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %20 = load ptr, ptr %ret, align 8, !tbaa !32
  %LocalMR = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx = getelementptr inbounds %struct.fabric_state, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %ctx, align 8, !tbaa !82
  %call3 = call i32 @fi_mr_reg(ptr noundef %17, ptr noundef %18, i64 noundef %19, i64 noundef 256, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %LocalMR, ptr noundef %22)
  %23 = load ptr, ptr %ret, align 8, !tbaa !32
  %LocalMR4 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %LocalMR4, align 8, !tbaa !197
  %call5 = call ptr @fi_mr_desc(ptr noundef %24)
  store ptr %call5, ptr %LocalDesc, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %25 = load ptr, ptr %Info.addr, align 8, !tbaa !32
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %Block, align 8, !tbaa !80
  %27 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %27
  store ptr %add.ptr, ptr %Addr, align 8, !tbaa !32
  %28 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %verbose, align 8, !tbaa !45
  %30 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %32 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %33 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %34 = load i64, ptr %Length.addr, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %29(ptr noundef %31, i32 noundef 5, ptr noundef @.str.48, i32 noundef %32, i64 noundef %33, i64 noundef %34)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %35 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %35, i32 0, i32 8
  %36 = load ptr, ptr %signal, align 8, !tbaa !53
  %37 = load ptr, ptr %Buffer.addr, align 8, !tbaa !32
  %38 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %39 = load ptr, ptr %LocalDesc, align 8, !tbaa !32
  %40 = load i64, ptr %SrcAddress, align 8, !tbaa !88
  %41 = load ptr, ptr %Addr, align 8, !tbaa !32
  %42 = ptrtoint ptr %41 to i64
  %43 = load ptr, ptr %Info.addr, align 8, !tbaa !32
  %Key = getelementptr inbounds %struct._RdmaBufferHandle, ptr %43, i32 0, i32 1
  %44 = load i64, ptr %Key, align 8, !tbaa !84
  %45 = load ptr, ptr %ret, align 8, !tbaa !32
  %call6 = call i64 @fi_read(ptr noundef %36, ptr noundef %37, i64 noundef %38, ptr noundef %39, i64 noundef %40, i64 noundef %42, i64 noundef %44, ptr noundef %45)
  store i64 %call6, ptr %rc, align 8, !tbaa !88
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %46 = load i64, ptr %rc, align 8, !tbaa !88
  %cmp7 = icmp eq i64 %46, -11
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load i64, ptr %rc, align 8, !tbaa !88
  %cmp8 = icmp ne i64 %47, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end
  %48 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose10 = getelementptr inbounds %struct._CP_Services, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %verbose10, align 8, !tbaa !45
  %50 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %CP_Stream11 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %CP_Stream11, align 8, !tbaa !41
  %52 = load i64, ptr %rc, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %49(ptr noundef %51, i32 noundef 1, ptr noundef @.str.49, i64 noundef %52)
  %53 = load i64, ptr %rc, align 8, !tbaa !88
  store i64 %53, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end
  %54 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose12 = getelementptr inbounds %struct._CP_Services, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %verbose12, align 8, !tbaa !45
  %56 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %CP_Stream13 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %CP_Stream13, align 8, !tbaa !41
  %58 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %59 = load ptr, ptr %ret, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) %55(ptr noundef %57, i32 noundef 5, ptr noundef @.str.50, i32 noundef %58, ptr noundef %59)
  %60 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %PendingReads14 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %60, i32 0, i32 19
  %61 = load i32, ptr %PendingReads14, align 8, !tbaa !57
  %inc = add nsw i32 %61, 1
  store i32 %inc, ptr %PendingReads14, align 8, !tbaa !57
  br label %if.end15

if.end15:                                         ; preds = %if.else
  %62 = load i64, ptr %rc, align 8, !tbaa !88
  store i64 %62, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Addr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %LocalDesc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %SrcAddress) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  %63 = load i64, ptr %retval, align 8
  ret i64 %63
}

; Function Attrs: nounwind uwtable
define internal void @LogRequest(ptr noundef %Svcs, ptr noundef %RS_Stream, i32 noundef %Rank, i64 noundef %Timestep, i64 noundef %Offset, i64 noundef %Length) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %RS_Stream.addr = alloca ptr, align 8
  %Rank.addr = alloca i32, align 4
  %Timestep.addr = alloca i64, align 8
  %Offset.addr = alloca i64, align 8
  %Length.addr = alloca i64, align 8
  %StepLog_p = alloca ptr, align 8
  %StepLog = alloca ptr, align 8
  %LogEntry = alloca ptr, align 8
  %ReqLogSize = alloca i64, align 8
  %LogIdx = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %RS_Stream, ptr %RS_Stream.addr, align 8, !tbaa !32
  store i32 %Rank, ptr %Rank.addr, align 4, !tbaa !67
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  store i64 %Offset, ptr %Offset.addr, align 8, !tbaa !88
  store i64 %Length, ptr %Length.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %StepLog_p) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %StepLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %LogEntry) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ReqLogSize) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %LogIdx) #11
  %0 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %StepLog1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %0, i32 0, i32 6
  store ptr %StepLog1, ptr %StepLog_p, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  %2 = load ptr, ptr %1, align 8, !tbaa !32
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %4 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %Timestep2 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %5, i32 0, i32 0
  %6 = load i64, ptr %Timestep2, align 8, !tbaa !198
  %cmp = icmp slt i64 %3, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %Next = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %9, i32 0, i32 2
  store ptr %Next, ptr %StepLog_p, align 8, !tbaa !32
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.end
  %12 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %Timestep4 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %Timestep4, align 8, !tbaa !198
  %15 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %cmp5 = icmp ne i64 %14, %15
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %call = call noalias ptr @malloc(i64 noundef 48) #12
  store ptr %call, ptr %StepLog, align 8, !tbaa !32
  %16 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %WriterCohortSize = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %16, i32 0, i32 14
  %17 = load i32, ptr %WriterCohortSize, align 8, !tbaa !95
  %conv = sext i32 %17 to i64
  %call6 = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 48) #13
  %18 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %18, i32 0, i32 1
  store ptr %call6, ptr %RankLog, align 8, !tbaa !100
  %19 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %20 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Timestep7 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %20, i32 0, i32 0
  store i64 %19, ptr %Timestep7, align 8, !tbaa !198
  %21 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Next8 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %23, i32 0, i32 2
  store ptr %22, ptr %Next8, align 8, !tbaa !132
  %24 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %BufferSize = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %24, i32 0, i32 4
  store i64 0, ptr %BufferSize, align 8, !tbaa !106
  %25 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %WRanks = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %25, i32 0, i32 5
  store i32 0, ptr %WRanks, align 8, !tbaa !199
  %26 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %27 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  store ptr %26, ptr %27, align 8, !tbaa !32
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %28 = load ptr, ptr %StepLog_p, align 8, !tbaa !32
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  store ptr %29, ptr %StepLog, align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %31 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %BufferSize9 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %31, i32 0, i32 4
  %32 = load i64, ptr %BufferSize9, align 8, !tbaa !106
  %add = add i64 %32, %30
  store i64 %add, ptr %BufferSize9, align 8, !tbaa !106
  %33 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Entries = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %Entries, align 8, !tbaa !200
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %Entries, align 8, !tbaa !200
  %35 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog10 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %RankLog10, align 8, !tbaa !100
  %37 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaRankReqLog, ptr %36, i64 %idxprom
  %ReqLog = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx, i32 0, i32 0
  %38 = load ptr, ptr %ReqLog, align 8, !tbaa !102
  %tobool11 = icmp ne ptr %38, null
  br i1 %tobool11, label %if.end23, label %if.then12

if.then12:                                        ; preds = %if.end
  store i64 392, ptr %ReqLogSize, align 8, !tbaa !88
  %39 = load i64, ptr %ReqLogSize, align 8, !tbaa !88
  %call13 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %39) #13
  %40 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog14 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %RankLog14, align 8, !tbaa !100
  %42 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom15 = sext i32 %42 to i64
  %arrayidx16 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %41, i64 %idxprom15
  %ReqLog17 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx16, i32 0, i32 0
  store ptr %call13, ptr %ReqLog17, align 8, !tbaa !102
  %43 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog18 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %RankLog18, align 8, !tbaa !100
  %45 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom19 = sext i32 %45 to i64
  %arrayidx20 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %44, i64 %idxprom19
  %46 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx20, i32 0, i32 2
  store i32 8, ptr %46, align 4, !tbaa !130
  %47 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %WRanks21 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %WRanks21, align 8, !tbaa !199
  %inc22 = add nsw i32 %48, 1
  store i32 %inc22, ptr %WRanks21, align 8, !tbaa !199
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %if.end
  %49 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog24 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %RankLog24, align 8, !tbaa !100
  %51 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom25 = sext i32 %51 to i64
  %arrayidx26 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %50, i64 %idxprom25
  %52 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx26, i32 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !130
  %54 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog27 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %RankLog27, align 8, !tbaa !100
  %56 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom28 = sext i32 %56 to i64
  %arrayidx29 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %55, i64 %idxprom28
  %Entries30 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx29, i32 0, i32 1
  %57 = load i32, ptr %Entries30, align 8, !tbaa !195
  %cmp31 = icmp eq i32 %53, %57
  br i1 %cmp31, label %if.then33, label %if.end52

if.then33:                                        ; preds = %if.end23
  %58 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog34 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %RankLog34, align 8, !tbaa !100
  %60 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom35 = sext i32 %60 to i64
  %arrayidx36 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %59, i64 %idxprom35
  %61 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx36, i32 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !130
  %mul = mul nsw i32 %62, 2
  store i32 %mul, ptr %61, align 4, !tbaa !130
  %63 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog37 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %RankLog37, align 8, !tbaa !100
  %65 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom38 = sext i32 %65 to i64
  %arrayidx39 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %64, i64 %idxprom38
  %66 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx39, i32 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !130
  %conv40 = sext i32 %67 to i64
  %mul41 = mul i64 %conv40, 48
  %add42 = add i64 %mul41, 8
  store i64 %add42, ptr %ReqLogSize, align 8, !tbaa !88
  %68 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog43 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %RankLog43, align 8, !tbaa !100
  %70 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom44 = sext i32 %70 to i64
  %arrayidx45 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %69, i64 %idxprom44
  %ReqLog46 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx45, i32 0, i32 0
  %71 = load ptr, ptr %ReqLog46, align 8, !tbaa !102
  %72 = load i64, ptr %ReqLogSize, align 8, !tbaa !88
  %call47 = call ptr @realloc(ptr noundef %71, i64 noundef %72) #15
  %73 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog48 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %RankLog48, align 8, !tbaa !100
  %75 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom49 = sext i32 %75 to i64
  %arrayidx50 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %74, i64 %idxprom49
  %ReqLog51 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx50, i32 0, i32 0
  store ptr %call47, ptr %ReqLog51, align 8, !tbaa !102
  br label %if.end52

if.end52:                                         ; preds = %if.then33, %if.end23
  %76 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %77 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog53 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %RankLog53, align 8, !tbaa !100
  %79 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom54 = sext i32 %79 to i64
  %arrayidx55 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %78, i64 %idxprom54
  %BufferSize56 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx55, i32 0, i32 4
  %80 = load i64, ptr %BufferSize56, align 8, !tbaa !201
  %add57 = add i64 %80, %76
  store i64 %add57, ptr %BufferSize56, align 8, !tbaa !201
  %81 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog58 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %RankLog58, align 8, !tbaa !100
  %83 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom59 = sext i32 %83 to i64
  %arrayidx60 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %82, i64 %idxprom59
  %Entries61 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx60, i32 0, i32 1
  %84 = load i32, ptr %Entries61, align 8, !tbaa !195
  %inc62 = add nsw i32 %84, 1
  store i32 %inc62, ptr %Entries61, align 8, !tbaa !195
  store i32 %84, ptr %LogIdx, align 4, !tbaa !67
  %85 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog63 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %85, i32 0, i32 1
  %86 = load ptr, ptr %RankLog63, align 8, !tbaa !100
  %87 = load i32, ptr %Rank.addr, align 4, !tbaa !67
  %idxprom64 = sext i32 %87 to i64
  %arrayidx65 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %86, i64 %idxprom64
  %ReqLog66 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx65, i32 0, i32 0
  %88 = load ptr, ptr %ReqLog66, align 8, !tbaa !102
  %89 = load i32, ptr %LogIdx, align 4, !tbaa !67
  %idxprom67 = sext i32 %89 to i64
  %arrayidx68 = getelementptr inbounds %struct._RdmaBuffer, ptr %88, i64 %idxprom67
  store ptr %arrayidx68, ptr %LogEntry, align 8, !tbaa !32
  %90 = load i64, ptr %Length.addr, align 8, !tbaa !88
  %91 = load ptr, ptr %LogEntry, align 8, !tbaa !32
  %BufferLen = getelementptr inbounds %struct._RdmaBuffer, ptr %91, i32 0, i32 1
  store i64 %90, ptr %BufferLen, align 8, !tbaa !89
  %92 = load i64, ptr %Offset.addr, align 8, !tbaa !88
  %93 = load ptr, ptr %LogEntry, align 8, !tbaa !32
  %Offset69 = getelementptr inbounds %struct._RdmaBuffer, ptr %93, i32 0, i32 2
  store i64 %92, ptr %Offset69, align 8, !tbaa !196
  %94 = load ptr, ptr %LogEntry, align 8, !tbaa !32
  %Handle = getelementptr inbounds %struct._RdmaBuffer, ptr %94, i32 0, i32 0
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle, i32 0, i32 0
  store ptr null, ptr %Block, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 4, ptr %LogIdx) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ReqLogSize) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %LogEntry) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %StepLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %StepLog_p) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @WaitForAnyPull(ptr noundef %Svcs, ptr noundef %Stream) #0 {
entry:
  %retval = alloca i32, align 4
  %Svcs.addr = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %Handle_t = alloca ptr, align 8
  %CQEntry = alloca %struct.fi_cq_data_entry, align 8
  %rc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Fabric1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %Fabric1, align 8, !tbaa !35
  store ptr %1, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Handle_t) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.memset.p0.i64(ptr align 8 %CQEntry, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #11
  %2 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %cq_signal = getelementptr inbounds %struct.fabric_state, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %cq_signal, align 8, !tbaa !166
  %call = call i64 @fi_cq_sread(ptr noundef %3, ptr noundef %CQEntry, i64 noundef 1, ptr noundef null, i32 noundef -1)
  store i64 %call, ptr %rc, align 8, !tbaa !88
  %4 = load i64, ptr %rc, align 8, !tbaa !88
  %cmp = icmp slt i64 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %verbose, align 8, !tbaa !45
  %7 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %9 = load i64, ptr %rc, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %6(ptr noundef %8, i32 noundef 1, ptr noundef @.str.51, i64 noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose2 = getelementptr inbounds %struct._CP_Services, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %verbose2, align 8, !tbaa !45
  %12 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream3 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %CP_Stream3, align 8, !tbaa !41
  %op_context = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 0
  %14 = load ptr, ptr %op_context, align 8, !tbaa !202
  %flags = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 1
  %15 = load i64, ptr %flags, align 8, !tbaa !204
  call void (ptr, i32, ptr, ...) %11(ptr noundef %13, i32 noundef 5, ptr noundef @.str.52, ptr noundef %14, i64 noundef %15)
  %op_context4 = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 0
  %16 = load ptr, ptr %op_context4, align 8, !tbaa !202
  store ptr %16, ptr %Handle_t, align 8, !tbaa !32
  %17 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %Pending = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %Pending, align 4, !tbaa !109
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %Pending, align 4, !tbaa !109
  %19 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PendingReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %19, i32 0, i32 19
  %20 = load i32, ptr %PendingReads, align 8, !tbaa !57
  %dec5 = add nsw i32 %20, -1
  store i32 %dec5, ptr %PendingReads, align 8, !tbaa !57
  %21 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req = getelementptr inbounds %struct.fabric_state, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %local_mr_req, align 8, !tbaa !126
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %23 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %LocalMR = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %LocalMR, align 8, !tbaa !197
  %call7 = call i32 @fi_close(ptr noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Handle_t) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @fi_mr_desc(ptr noundef %mr) #9 {
entry:
  %mr.addr = alloca ptr, align 8
  store ptr %mr, ptr %mr.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %mr.addr, align 8, !tbaa !32
  %mem_desc = getelementptr inbounds %struct.fid_mr, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %mem_desc, align 8, !tbaa !205
  ret ptr %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fi_read(ptr noundef %ep, ptr noundef %buf, i64 noundef %len, ptr noundef %desc, i64 noundef %src_addr, i64 noundef %addr, i64 noundef %key, ptr noundef %context) #9 {
entry:
  %ep.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  %src_addr.addr = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !32
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  store i64 %len, ptr %len.addr, align 8, !tbaa !88
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !32
  store i64 %src_addr, ptr %src_addr.addr, align 8, !tbaa !88
  store i64 %addr, ptr %addr.addr, align 8, !tbaa !88
  store i64 %key, ptr %key.addr, align 8, !tbaa !88
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %rma = getelementptr inbounds %struct.fid_ep, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %rma, align 8, !tbaa !206
  %read = getelementptr inbounds %struct.fi_ops_rma, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %read, align 8, !tbaa !207
  %3 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !32
  %5 = load i64, ptr %len.addr, align 8, !tbaa !88
  %6 = load ptr, ptr %desc.addr, align 8, !tbaa !32
  %7 = load i64, ptr %src_addr.addr, align 8, !tbaa !88
  %8 = load i64, ptr %addr.addr, align 8, !tbaa !88
  %9 = load i64, ptr %key.addr, align 8, !tbaa !88
  %10 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i64 %2(ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fi_cq_sread(ptr noundef %cq, ptr noundef %buf, i64 noundef %count, ptr noundef %cond, i32 noundef %timeout) #9 {
entry:
  %cq.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %cond.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  store ptr %cq, ptr %cq.addr, align 8, !tbaa !32
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  store i64 %count, ptr %count.addr, align 8, !tbaa !88
  store ptr %cond, ptr %cond.addr, align 8, !tbaa !32
  store i32 %timeout, ptr %timeout.addr, align 4, !tbaa !67
  %0 = load ptr, ptr %cq.addr, align 8, !tbaa !32
  %ops = getelementptr inbounds %struct.fid_cq, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %ops, align 8, !tbaa !209
  %sread = getelementptr inbounds %struct.fi_ops_cq, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %sread, align 8, !tbaa !211
  %3 = load ptr, ptr %cq.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !32
  %5 = load i64, ptr %count.addr, align 8, !tbaa !88
  %6 = load ptr, ptr %cond.addr, align 8, !tbaa !32
  %7 = load i32, ptr %timeout.addr, align 4, !tbaa !67
  %call = call i64 %2(ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fi_close(ptr noundef %fid) #9 {
entry:
  %fid.addr = alloca ptr, align 8
  store ptr %fid, ptr %fid.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %fid.addr, align 8, !tbaa !32
  %ops = getelementptr inbounds %struct.fid, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %ops, align 8, !tbaa !213
  %close = getelementptr inbounds %struct.fi_ops, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %close, align 8, !tbaa !214
  %3 = load ptr, ptr %fid.addr, align 8, !tbaa !32
  %call = call i32 %2(ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @DoPushWait(ptr noundef %Svcs, ptr noundef %Stream, ptr noundef %Handle) #0 {
entry:
  %retval = alloca i32, align 4
  %Svcs.addr = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %Handle.addr = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %StepLog = alloca ptr, align 8
  %RankLog = alloca ptr, align 8
  %Handle_t = alloca ptr, align 8
  %CQEntry = alloca %struct.fi_cq_data_entry, align 8
  %WRank = alloca i32, align 4
  %WRidx = alloca i32, align 4
  %BufferSlot = alloca i32, align 4
  %rc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  store ptr %Handle, ptr %Handle.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Fabric1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %Fabric1, align 8, !tbaa !35
  store ptr %1, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %StepLog) #11
  %2 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PreloadStepLog = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %PreloadStepLog, align 8, !tbaa !99
  store ptr %3, ptr %StepLog, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RankLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %Handle_t) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.memset.p0.i64(ptr align 8 %CQEntry, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %WRank) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %WRidx) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %BufferSlot) #11
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %4 = load ptr, ptr %Handle.addr, align 8, !tbaa !32
  %Pending = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %Pending, align 4, !tbaa !109
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc) #11
  %6 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %cq_signal = getelementptr inbounds %struct.fabric_state, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %cq_signal, align 8, !tbaa !166
  %call = call i64 @fi_cq_sread(ptr noundef %7, ptr noundef %CQEntry, i64 noundef 1, ptr noundef null, i32 noundef -1)
  store i64 %call, ptr %rc, align 8, !tbaa !88
  %8 = load i64, ptr %rc, align 8, !tbaa !88
  %cmp2 = icmp slt i64 %8, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %verbose, align 8, !tbaa !45
  %11 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %13 = load i64, ptr %rc, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %10(ptr noundef %12, i32 noundef 1, ptr noundef @.str.51, i64 noundef %13)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %while.body
  %flags = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 1
  %14 = load i64, ptr %flags, align 8, !tbaa !204
  %and = and i64 %14, 131072
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then3, label %if.else44

if.then3:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 4
  %15 = load i64, ptr %data, align 8, !tbaa !215
  %shr = lshr i64 %15, 31
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %BufferSlot, align 4, !tbaa !67
  %data4 = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 4
  %16 = load i64, ptr %data4, align 8, !tbaa !215
  %shr5 = lshr i64 %16, 20
  %and6 = and i64 %shr5, 1023
  %conv7 = trunc i64 %and6 to i32
  store i32 %conv7, ptr %WRidx, align 4, !tbaa !67
  %data8 = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 4
  %17 = load i64, ptr %data8, align 8, !tbaa !215
  %and9 = and i64 %17, 1048575
  %conv10 = trunc i64 %and9 to i32
  store i32 %conv10, ptr %WRank, align 4, !tbaa !67
  %18 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose11 = getelementptr inbounds %struct._CP_Services, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %verbose11, align 8, !tbaa !45
  %20 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream12 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %CP_Stream12, align 8, !tbaa !41
  %22 = load i32, ptr %WRank, align 4, !tbaa !67
  %23 = load i32, ptr %WRidx, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %19(ptr noundef %21, i32 noundef 5, ptr noundef @.str.54, i32 noundef %22, i32 noundef %23)
  %24 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog13 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %RankLog13, align 8, !tbaa !100
  %26 = load i32, ptr %WRank, align 4, !tbaa !67
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaRankReqLog, ptr %25, i64 %idxprom
  store ptr %arrayidx, ptr %RankLog, align 8, !tbaa !32
  %27 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose14 = getelementptr inbounds %struct._CP_Services, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %verbose14, align 8, !tbaa !45
  %29 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream15 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %CP_Stream15, align 8, !tbaa !41
  %data16 = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 4
  %31 = load i64, ptr %data16, align 8, !tbaa !215
  %32 = load i32, ptr %BufferSlot, align 4, !tbaa !67
  %33 = load i32, ptr %WRank, align 4, !tbaa !67
  %34 = load i32, ptr %WRidx, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %28(ptr noundef %30, i32 noundef 5, ptr noundef @.str.55, i64 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  %35 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %PreloadHandles = getelementptr inbounds %struct._RdmaRankReqLog, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %PreloadHandles, align 8, !tbaa !104
  %37 = load i32, ptr %BufferSlot, align 4, !tbaa !67
  %idxprom17 = sext i32 %37 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %36, i64 %idxprom17
  %38 = load ptr, ptr %arrayidx18, align 8, !tbaa !32
  %39 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom19 = sext i32 %39 to i64
  %arrayidx20 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %38, i64 %idxprom19
  store ptr %arrayidx20, ptr %Handle_t, align 8, !tbaa !32
  %40 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %tobool21 = icmp ne ptr %40, null
  br i1 %tobool21, label %if.then22, label %if.else40

if.then22:                                        ; preds = %if.then3
  %call23 = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %41 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %Pending24 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %41, i32 0, i32 5
  %42 = load i32, ptr %Pending24, align 4, !tbaa !109
  %dec = add nsw i32 %42, -1
  store i32 %dec, ptr %Pending24, align 4, !tbaa !109
  %43 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %Pending25 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %Pending25, align 4, !tbaa !109
  %cmp26 = icmp eq i32 %44, 0
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.then22
  %45 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %Buffer = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %Buffer, align 8, !tbaa !112
  %buf = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 3
  %47 = load ptr, ptr %buf, align 8, !tbaa !216
  %len = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 2
  %48 = load i64, ptr %len, align 8, !tbaa !217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %47, i64 %48, i1 false)
  br label %if.end37

if.else29:                                        ; preds = %if.then22
  %49 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %Pending30 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %Pending30, align 4, !tbaa !109
  %cmp31 = icmp ne i32 %50, -1
  br i1 %cmp31, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.else29
  %51 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose34 = getelementptr inbounds %struct._CP_Services, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %verbose34, align 8, !tbaa !45
  %53 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream35 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %CP_Stream35, align 8, !tbaa !41
  %55 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %55, i32 0, i32 2
  %56 = load i32, ptr %Rank, align 8, !tbaa !110
  %57 = load i32, ptr %WRank, align 4, !tbaa !67
  %58 = load i32, ptr %WRidx, align 4, !tbaa !67
  %59 = load i32, ptr %BufferSlot, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %52(ptr noundef %54, i32 noundef 1, ptr noundef @.str.46, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59)
  br label %if.end

if.else36:                                        ; preds = %if.else29
  br label %if.end

if.end:                                           ; preds = %if.else36, %if.then33
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then28
  %call38 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  %60 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PendingReads = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %60, i32 0, i32 19
  %61 = load i32, ptr %PendingReads, align 8, !tbaa !57
  %dec39 = add nsw i32 %61, -1
  store i32 %dec39, ptr %PendingReads, align 8, !tbaa !57
  br label %if.end43

if.else40:                                        ; preds = %if.then3
  %62 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose41 = getelementptr inbounds %struct._CP_Services, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %verbose41, align 8, !tbaa !45
  %64 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream42 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %CP_Stream42, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %63(ptr noundef %65, i32 noundef 1, ptr noundef @.str.56)
  br label %if.end43

if.end43:                                         ; preds = %if.else40, %if.end37
  br label %if.end52

if.else44:                                        ; preds = %if.else
  %66 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose45 = getelementptr inbounds %struct._CP_Services, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %verbose45, align 8, !tbaa !45
  %68 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream46 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %CP_Stream46, align 8, !tbaa !41
  %op_context = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 0
  %70 = load ptr, ptr %op_context, align 8, !tbaa !202
  call void (ptr, i32, ptr, ...) %67(ptr noundef %69, i32 noundef 5, ptr noundef @.str.57, ptr noundef %70)
  %op_context47 = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 0
  %71 = load ptr, ptr %op_context47, align 8, !tbaa !202
  store ptr %71, ptr %Handle_t, align 8, !tbaa !32
  %72 = load ptr, ptr %Handle_t, align 8, !tbaa !32
  %Pending48 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %72, i32 0, i32 5
  %73 = load i32, ptr %Pending48, align 4, !tbaa !109
  %dec49 = add nsw i32 %73, -1
  store i32 %dec49, ptr %Pending48, align 4, !tbaa !109
  %74 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PendingReads50 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %74, i32 0, i32 19
  %75 = load i32, ptr %PendingReads50, align 8, !tbaa !57
  %dec51 = add nsw i32 %75, -1
  store i32 %dec51, ptr %PendingReads50, align 8, !tbaa !57
  br label %if.end52

if.end52:                                         ; preds = %if.else44, %if.end43
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup60 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load ptr, ptr %Handle.addr, align 8, !tbaa !32
  %LocalMR = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %LocalMR, align 8, !tbaa !197
  %tobool54 = icmp ne ptr %77, null
  br i1 %tobool54, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %while.end
  %78 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req = getelementptr inbounds %struct.fabric_state, ptr %78, i32 0, i32 2
  %79 = load i32, ptr %local_mr_req, align 8, !tbaa !126
  %tobool55 = icmp ne i32 %79, 0
  br i1 %tobool55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %land.lhs.true
  %80 = load ptr, ptr %Handle.addr, align 8, !tbaa !32
  %LocalMR57 = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %LocalMR57, align 8, !tbaa !197
  %call58 = call i32 @fi_close(ptr noundef %81)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %land.lhs.true, %while.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60

cleanup60:                                        ; preds = %if.end59, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %BufferSlot) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %WRidx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %WRank) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Handle_t) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RankLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %StepLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @DoPullWait(ptr noundef %Svcs, ptr noundef %Stream, ptr noundef %Handle) #0 {
entry:
  %retval = alloca i32, align 4
  %Svcs.addr = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %Handle.addr = alloca ptr, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  store ptr %Handle, ptr %Handle.addr, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %Handle.addr, align 8, !tbaa !32
  %Pending = getelementptr inbounds %struct._RdmaCompletionHandle, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %Pending, align 4, !tbaa !109
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %3 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %call = call i32 @WaitForAnyPull(ptr noundef %2, ptr noundef %3)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal ptr @GetStep(ptr noundef %Stream, i64 noundef %Timestep) #0 {
entry:
  %Stream.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %Step = alloca ptr, align 8
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %Step) #11
  %call = call i32 @pthread_mutex_lock(ptr noundef @ts_mutex) #11
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Timesteps = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %Timesteps, align 8, !tbaa !127
  store ptr %1, ptr %Step, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %Step, align 8, !tbaa !32
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %Step, align 8, !tbaa !32
  %Timestep1 = getelementptr inbounds %struct._TimestepEntry, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %Timestep1, align 8, !tbaa !117
  %5 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %cmp = icmp ne i64 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %Step, align 8, !tbaa !32
  %Prev = getelementptr inbounds %struct._TimestepEntry, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %Prev, align 8, !tbaa !129
  store ptr %8, ptr %Step, align 8, !tbaa !32
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef @ts_mutex) #11
  %9 = load ptr, ptr %Step, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr %Step) #11
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @PushData(ptr noundef %Svcs, ptr noundef %Stream, ptr noundef %Step, i32 noundef %BufferSlot) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %Step.addr = alloca ptr, align 8
  %BufferSlot.addr = alloca i32, align 4
  %WS_Stream = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %RankReq = alloca ptr, align 8
  %Req = alloca ptr, align 8
  %ReaderRoll = alloca ptr, align 8
  %RollBuffer = alloca ptr, align 8
  %StepBuffer = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %Data4 = alloca i64, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  store ptr %Step, ptr %Step.addr, align 8, !tbaa !32
  store i32 %BufferSlot, ptr %BufferSlot.addr, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %WS_Stream1 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %WS_Stream1, align 8, !tbaa !68
  store ptr %1, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %2 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Fabric2 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %Fabric2, align 8, !tbaa !64
  store ptr %3, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RankReq) #11
  %4 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PreloadReq = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %PreloadReq, align 8, !tbaa !218
  store ptr %5, ptr %RankReq, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Req) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ReaderRoll) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %RollBuffer) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %StepBuffer) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11
  %6 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %Data = getelementptr inbounds %struct._TimestepEntry, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %Data, align 8, !tbaa !115
  %block = getelementptr inbounds %struct._SstData, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %block, align 8, !tbaa !121
  store ptr %8, ptr %StepBuffer, align 8, !tbaa !32
  %9 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %ReaderRoll3 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %ReaderRoll3, align 8, !tbaa !86
  %Handle = getelementptr inbounds %struct._RdmaBuffer, ptr %10, i32 0, i32 0
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle, i32 0, i32 0
  %11 = load ptr, ptr %Block, align 8, !tbaa !105
  store ptr %11, ptr %ReaderRoll, align 8, !tbaa !32
  %12 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %OutstandingWrites = getelementptr inbounds %struct._TimestepEntry, ptr %12, i32 0, i32 8
  store i64 0, ptr %OutstandingWrites, align 8, !tbaa !219
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %13 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %15 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %16 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !130
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaBuffer, ptr %14, i64 %idxprom
  store ptr %arrayidx, ptr %RollBuffer, align 8, !tbaa !32
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %18 = load i32, ptr %i, align 4, !tbaa !67
  %19 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %Entries = getelementptr inbounds %struct._RdmaRankReqLog, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %Entries, align 8, !tbaa !195
  %cmp = icmp slt i32 %18, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %Data4) #11
  %21 = load i32, ptr %i, align 4, !tbaa !67
  %conv = sext i32 %21 to i64
  %shl = shl i64 %conv, 20
  %22 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %Rank, align 8, !tbaa !61
  %conv5 = sext i32 %23 to i64
  %or = or i64 %shl, %conv5
  store i64 %or, ptr %Data4, align 8, !tbaa !88
  %24 = load i32, ptr %BufferSlot.addr, align 4, !tbaa !67
  %shl6 = shl i32 %24, 31
  %conv7 = sext i32 %shl6 to i64
  %25 = load i64, ptr %Data4, align 8, !tbaa !88
  %or8 = or i64 %25, %conv7
  store i64 %or8, ptr %Data4, align 8, !tbaa !88
  %26 = load i64, ptr %Data4, align 8, !tbaa !88
  %and = and i64 %26, 4294967295
  store i64 %and, ptr %Data4, align 8, !tbaa !88
  %27 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %verbose, align 8, !tbaa !45
  %29 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  %31 = load i64, ptr %Data4, align 8, !tbaa !88
  %32 = load i32, ptr %BufferSlot.addr, align 4, !tbaa !67
  %33 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Rank9 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %Rank9, align 8, !tbaa !61
  %35 = load i32, ptr %i, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %28(ptr noundef %30, i32 noundef 5, ptr noundef @.str.61, i64 noundef %31, i32 noundef %32, i32 noundef %34, i32 noundef %35)
  %36 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %ReqLog = getelementptr inbounds %struct._RdmaRankReqLog, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %ReqLog, align 8, !tbaa !102
  %38 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom10 = sext i32 %38 to i64
  %arrayidx11 = getelementptr inbounds %struct._RdmaBuffer, ptr %37, i64 %idxprom10
  store ptr %arrayidx11, ptr %Req, align 8, !tbaa !32
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %39 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %39, i32 0, i32 8
  %40 = load ptr, ptr %signal, align 8, !tbaa !53
  %41 = load ptr, ptr %StepBuffer, align 8, !tbaa !32
  %42 = load ptr, ptr %Req, align 8, !tbaa !32
  %Offset = getelementptr inbounds %struct._RdmaBuffer, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %Offset, align 8, !tbaa !196
  %add.ptr = getelementptr inbounds i8, ptr %41, i64 %43
  %44 = load ptr, ptr %Req, align 8, !tbaa !32
  %BufferLen = getelementptr inbounds %struct._RdmaBuffer, ptr %44, i32 0, i32 1
  %45 = load i64, ptr %BufferLen, align 8, !tbaa !89
  %46 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %Desc = getelementptr inbounds %struct._TimestepEntry, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %Desc, align 8, !tbaa !120
  %48 = load i64, ptr %Data4, align 8, !tbaa !88
  %49 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %ReaderAddr = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %49, i32 0, i32 6
  %50 = load ptr, ptr %ReaderAddr, align 8, !tbaa !72
  %51 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %52 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !130
  %idxprom12 = sext i32 %53 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %50, i64 %idxprom12
  %54 = load i64, ptr %arrayidx13, align 8, !tbaa !88
  %55 = load ptr, ptr %Req, align 8, !tbaa !32
  %Handle14 = getelementptr inbounds %struct._RdmaBuffer, ptr %55, i32 0, i32 0
  %Block15 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle14, i32 0, i32 0
  %56 = load ptr, ptr %Block15, align 8, !tbaa !105
  %57 = ptrtoint ptr %56 to i64
  %58 = load i32, ptr %BufferSlot.addr, align 4, !tbaa !67
  %conv16 = sext i32 %58 to i64
  %59 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %60 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %59, i32 0, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !130
  %mul = mul i64 %conv16, %61
  %add = add i64 %57, %mul
  %62 = load ptr, ptr %RollBuffer, align 8, !tbaa !32
  %Offset17 = getelementptr inbounds %struct._RdmaBuffer, ptr %62, i32 0, i32 2
  %63 = load i64, ptr %Offset17, align 8, !tbaa !196
  %64 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %Timestep = getelementptr inbounds %struct._TimestepEntry, ptr %64, i32 0, i32 0
  %65 = load i64, ptr %Timestep, align 8, !tbaa !117
  %66 = inttoptr i64 %65 to ptr
  %call = call i64 @fi_writedata(ptr noundef %40, ptr noundef %add.ptr, i64 noundef %45, ptr noundef %47, i64 noundef %48, i64 noundef %54, i64 noundef %add, i64 noundef %63, ptr noundef %66)
  %conv18 = trunc i64 %call to i32
  store i32 %conv18, ptr %rc, align 4, !tbaa !67
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %67 = load i32, ptr %rc, align 4, !tbaa !67
  %cmp19 = icmp eq i32 %67, -11
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %68 = load i32, ptr %rc, align 4, !tbaa !67
  %cmp21 = icmp ne i32 %68, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %69 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose23 = getelementptr inbounds %struct._CP_Services, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %verbose23, align 8, !tbaa !45
  %71 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream24 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %CP_Stream24, align 8, !tbaa !65
  %73 = load i32, ptr %rc, align 4, !tbaa !67
  call void (ptr, i32, ptr, ...) %70(ptr noundef %72, i32 noundef 1, ptr noundef @.str.49, i32 noundef %73)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %Data4) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %74 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %74, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %75 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %Entries25 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %Entries25, align 8, !tbaa !195
  %conv26 = sext i32 %76 to i64
  %77 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %OutstandingWrites27 = getelementptr inbounds %struct._TimestepEntry, ptr %77, i32 0, i32 8
  %78 = load i64, ptr %OutstandingWrites27, align 8, !tbaa !219
  %add28 = add i64 %78, %conv26
  store i64 %add28, ptr %OutstandingWrites27, align 8, !tbaa !219
  %79 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %80 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !130
  store ptr %81, ptr %RankReq, align 8, !tbaa !32
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %StepBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RollBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ReaderRoll) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Req) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RankReq) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fi_writedata(ptr noundef %ep, ptr noundef %buf, i64 noundef %len, ptr noundef %desc, i64 noundef %data, i64 noundef %dest_addr, i64 noundef %addr, i64 noundef %key, ptr noundef %context) #9 {
entry:
  %ep.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  %data.addr = alloca i64, align 8
  %dest_addr.addr = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !32
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  store i64 %len, ptr %len.addr, align 8, !tbaa !88
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !32
  store i64 %data, ptr %data.addr, align 8, !tbaa !88
  store i64 %dest_addr, ptr %dest_addr.addr, align 8, !tbaa !88
  store i64 %addr, ptr %addr.addr, align 8, !tbaa !88
  store i64 %key, ptr %key.addr, align 8, !tbaa !88
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %rma = getelementptr inbounds %struct.fid_ep, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %rma, align 8, !tbaa !206
  %writedata = getelementptr inbounds %struct.fi_ops_rma, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %writedata, align 8, !tbaa !220
  %3 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !32
  %5 = load i64, ptr %len.addr, align 8, !tbaa !88
  %6 = load ptr, ptr %desc.addr, align 8, !tbaa !32
  %7 = load i64, ptr %data.addr, align 8, !tbaa !88
  %8 = load i64, ptr %dest_addr.addr, align 8, !tbaa !88
  %9 = load i64, ptr %addr.addr, align 8, !tbaa !88
  %10 = load i64, ptr %key.addr, align 8, !tbaa !88
  %11 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i64 %2(ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, ptr noundef %11)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @CompletePush(ptr noundef %Svcs, ptr noundef %Stream, ptr noundef %Step) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %Step.addr = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %CQStep = alloca ptr, align 8
  %CQEntry = alloca %struct.fi_cq_data_entry, align 8
  %CQTimestep = alloca i64, align 8
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  store ptr %Step, ptr %Step.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %WS_Stream1 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %WS_Stream1, align 8, !tbaa !68
  store ptr %1, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %2 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Fabric2 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %Fabric2, align 8, !tbaa !64
  store ptr %3, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %CQStep) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.memset.p0.i64(ptr align 8 %CQEntry, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %CQTimestep) #11
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %4 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %OutstandingWrites = getelementptr inbounds %struct._TimestepEntry, ptr %4, i32 0, i32 8
  %5 = load i64, ptr %OutstandingWrites, align 8, !tbaa !219
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %cq_signal = getelementptr inbounds %struct.fabric_state, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %cq_signal, align 8, !tbaa !166
  %call = call i64 @fi_cq_sread(ptr noundef %7, ptr noundef %CQEntry, i64 noundef 1, ptr noundef null, i32 noundef -1)
  %flags = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 1
  %8 = load i64, ptr %flags, align 8, !tbaa !204
  %and = and i64 %8, 512
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else13

if.then:                                          ; preds = %while.body
  %op_context = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 0
  %9 = load ptr, ptr %op_context, align 8, !tbaa !202
  %10 = ptrtoint ptr %9 to i64
  store i64 %10, ptr %CQTimestep, align 8, !tbaa !88
  %11 = load i64, ptr %CQTimestep, align 8, !tbaa !88
  %12 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %Timestep = getelementptr inbounds %struct._TimestepEntry, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %Timestep, align 8, !tbaa !117
  %cmp3 = icmp eq i64 %11, %13
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %14 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  store ptr %14, ptr %CQStep, align 8, !tbaa !32
  br label %if.end11

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %verbose, align 8, !tbaa !45
  %17 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  %19 = load ptr, ptr %Step.addr, align 8, !tbaa !32
  %Timestep5 = getelementptr inbounds %struct._TimestepEntry, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %Timestep5, align 8, !tbaa !117
  %21 = load i64, ptr %CQTimestep, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %16(ptr noundef %18, i32 noundef 1, ptr noundef @.str.65, i64 noundef %20, i64 noundef %21)
  %22 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %23 = load i64, ptr %CQTimestep, align 8, !tbaa !88
  %call6 = call ptr @GetStep(ptr noundef %22, i64 noundef %23)
  store ptr %call6, ptr %CQStep, align 8, !tbaa !32
  %24 = load ptr, ptr %CQStep, align 8, !tbaa !32
  %tobool7 = icmp ne ptr %24, null
  br i1 %tobool7, label %if.end, label %if.then8

if.then8:                                         ; preds = %if.else
  %25 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose9 = getelementptr inbounds %struct._CP_Services, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %verbose9, align 8, !tbaa !45
  %27 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream10 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %CP_Stream10, align 8, !tbaa !65
  %29 = load i64, ptr %CQTimestep, align 8, !tbaa !88
  call void (ptr, i32, ptr, ...) %26(ptr noundef %28, i32 noundef 1, ptr noundef @.str.66, i64 noundef %29)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then4
  %30 = load ptr, ptr %CQStep, align 8, !tbaa !32
  %OutstandingWrites12 = getelementptr inbounds %struct._TimestepEntry, ptr %30, i32 0, i32 8
  %31 = load i64, ptr %OutstandingWrites12, align 8, !tbaa !219
  %dec = add i64 %31, -1
  store i64 %dec, ptr %OutstandingWrites12, align 8, !tbaa !219
  br label %if.end16

if.else13:                                        ; preds = %while.body
  %32 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose14 = getelementptr inbounds %struct._CP_Services, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %verbose14, align 8, !tbaa !45
  %34 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream15 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %CP_Stream15, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %33(ptr noundef %35, i32 noundef 1, ptr noundef @.str.67)
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.end11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %CQTimestep) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %CQStep) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PullSelection(ptr noundef %Svcs, ptr noundef %Stream) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %WS_Stream = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %ReaderRoll = alloca ptr, align 8
  %ReqBuffer = alloca %struct._RdmaBuffer, align 8
  %CQEntry = alloca %struct.fi_cq_data_entry, align 8
  %rrmr = alloca ptr, align 8
  %rrdesc = alloca ptr, align 8
  %RankReq_p = alloca ptr, align 8
  %RankReq = alloca ptr, align 8
  %CQRankReq = alloca ptr, align 8
  %CQReqLog = alloca ptr, align 8
  %ReadBuffer = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %WS_Stream) #11
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %WS_Stream1 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %WS_Stream1, align 8, !tbaa !68
  store ptr %1, ptr %WS_Stream, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %2 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %Fabric2 = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %Fabric2, align 8, !tbaa !64
  store ptr %3, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %ReaderRoll) #11
  %4 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %ReaderRoll3 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %ReaderRoll3, align 8, !tbaa !86
  %Handle = getelementptr inbounds %struct._RdmaBuffer, ptr %5, i32 0, i32 0
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle, i32 0, i32 0
  %6 = load ptr, ptr %Block, align 8, !tbaa !105
  store ptr %6, ptr %ReaderRoll, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 32, ptr %ReqBuffer) #11
  call void @llvm.memset.p0.i64(ptr align 8 %ReqBuffer, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.memset.p0.i64(ptr align 8 %CQEntry, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %rrmr) #11
  store ptr null, ptr %rrmr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %rrdesc) #11
  store ptr null, ptr %rrdesc, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RankReq_p) #11
  %7 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PreloadReq = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %7, i32 0, i32 10
  store ptr %PreloadReq, ptr %RankReq_p, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RankReq) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %CQRankReq) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %CQReqLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ReadBuffer) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4, !tbaa !67
  %9 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %ReaderCohortSize = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %ReaderCohortSize, align 8, !tbaa !71
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %12 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaBuffer, ptr %11, i64 %idxprom
  %BufferLen = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx, i32 0, i32 1
  %13 = load i64, ptr %BufferLen, align 8, !tbaa !89
  %cmp4 = icmp ugt i64 %13, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call = call noalias ptr @malloc(i64 noundef 48) #12
  store ptr %call, ptr %RankReq, align 8, !tbaa !32
  %14 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %15 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds %struct._RdmaBuffer, ptr %14, i64 %idxprom5
  %BufferLen7 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx6, i32 0, i32 1
  %16 = load i64, ptr %BufferLen7, align 8, !tbaa !89
  %sub = sub i64 %16, 8
  %div = udiv i64 %sub, 32
  %conv = trunc i64 %div to i32
  %17 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %Entries = getelementptr inbounds %struct._RdmaRankReqLog, ptr %17, i32 0, i32 1
  store i32 %conv, ptr %Entries, align 8, !tbaa !195
  %18 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %19 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds %struct._RdmaBuffer, ptr %18, i64 %idxprom8
  %BufferLen10 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx9, i32 0, i32 1
  %20 = load i64, ptr %BufferLen10, align 8, !tbaa !89
  %call11 = call noalias ptr @malloc(i64 noundef %20) #12
  %21 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %ReqLog = getelementptr inbounds %struct._RdmaRankReqLog, ptr %21, i32 0, i32 0
  store ptr %call11, ptr %ReqLog, align 8, !tbaa !102
  %22 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %23 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds %struct._RdmaBuffer, ptr %22, i64 %idxprom12
  %BufferLen14 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx13, i32 0, i32 1
  %24 = load i64, ptr %BufferLen14, align 8, !tbaa !89
  %25 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %BufferSize = getelementptr inbounds %struct._RdmaRankReqLog, ptr %25, i32 0, i32 4
  store i64 %24, ptr %BufferSize, align 8, !tbaa !201
  %26 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %27 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %26, i32 0, i32 5
  store ptr null, ptr %27, align 8, !tbaa !130
  %28 = load i32, ptr %i, align 4, !tbaa !67
  %29 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %30 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %29, i32 0, i32 2
  store i32 %28, ptr %30, align 4, !tbaa !130
  %31 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %32 = load ptr, ptr %RankReq_p, align 8, !tbaa !32
  store ptr %31, ptr %32, align 8, !tbaa !32
  %33 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %33, i32 0, i32 5
  store ptr %34, ptr %RankReq_p, align 8, !tbaa !32
  %35 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %36 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom15 = sext i32 %36 to i64
  %arrayidx16 = getelementptr inbounds %struct._RdmaBuffer, ptr %35, i64 %idxprom15
  %BufferLen17 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx16, i32 0, i32 1
  %37 = load i64, ptr %BufferLen17, align 8, !tbaa !89
  %BufferLen18 = getelementptr inbounds %struct._RdmaBuffer, ptr %ReqBuffer, i32 0, i32 1
  %38 = load i64, ptr %BufferLen18, align 8, !tbaa !89
  %add = add i64 %38, %37
  store i64 %add, ptr %BufferLen18, align 8, !tbaa !89
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %BufferLen19 = getelementptr inbounds %struct._RdmaBuffer, ptr %ReqBuffer, i32 0, i32 1
  %40 = load i64, ptr %BufferLen19, align 8, !tbaa !89
  %call20 = call noalias ptr @malloc(i64 noundef %40) #12
  store ptr %call20, ptr %ReadBuffer, align 8, !tbaa !32
  %Handle21 = getelementptr inbounds %struct._RdmaBuffer, ptr %ReqBuffer, i32 0, i32 0
  %Block22 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle21, i32 0, i32 0
  store ptr %call20, ptr %Block22, align 8, !tbaa !105
  %41 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req = getelementptr inbounds %struct.fabric_state, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %local_mr_req, align 8, !tbaa !126
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then23, label %if.end29

if.then23:                                        ; preds = %for.end
  %43 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain = getelementptr inbounds %struct.fabric_state, ptr %43, i32 0, i32 7
  %44 = load ptr, ptr %domain, align 8, !tbaa !81
  %Handle24 = getelementptr inbounds %struct._RdmaBuffer, ptr %ReqBuffer, i32 0, i32 0
  %Block25 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle24, i32 0, i32 0
  %45 = load ptr, ptr %Block25, align 8, !tbaa !105
  %BufferLen26 = getelementptr inbounds %struct._RdmaBuffer, ptr %ReqBuffer, i32 0, i32 1
  %46 = load i64, ptr %BufferLen26, align 8, !tbaa !89
  %47 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx = getelementptr inbounds %struct.fabric_state, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %ctx, align 8, !tbaa !82
  %call27 = call i32 @fi_mr_reg(ptr noundef %44, ptr noundef %45, i64 noundef %46, i64 noundef 256, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %rrmr, ptr noundef %48)
  %49 = load ptr, ptr %rrmr, align 8, !tbaa !32
  %call28 = call ptr @fi_mr_desc(ptr noundef %49)
  store ptr %call28, ptr %rrdesc, align 8, !tbaa !32
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %for.end
  %50 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PreloadReq30 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %50, i32 0, i32 10
  %51 = load ptr, ptr %PreloadReq30, align 8, !tbaa !218
  store ptr %51, ptr %RankReq, align 8, !tbaa !32
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc48, %if.end29
  %52 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %tobool32 = icmp ne ptr %52, null
  br i1 %tobool32, label %for.body33, label %for.end49

for.body33:                                       ; preds = %for.cond31
  %53 = load ptr, ptr %ReadBuffer, align 8, !tbaa !32
  %54 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %ReqLog34 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %54, i32 0, i32 0
  store ptr %53, ptr %ReqLog34, align 8, !tbaa !102
  %55 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %55, i32 0, i32 8
  %56 = load ptr, ptr %signal, align 8, !tbaa !53
  %57 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %ReqLog35 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %ReqLog35, align 8, !tbaa !102
  %59 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %BufferSize36 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %59, i32 0, i32 4
  %60 = load i64, ptr %BufferSize36, align 8, !tbaa !201
  %61 = load ptr, ptr %rrdesc, align 8, !tbaa !32
  %62 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %ReaderAddr = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %ReaderAddr, align 8, !tbaa !72
  %64 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %65 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !130
  %idxprom37 = sext i32 %66 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %63, i64 %idxprom37
  %67 = load i64, ptr %arrayidx38, align 8, !tbaa !88
  %68 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %69 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %70 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !130
  %idxprom39 = sext i32 %71 to i64
  %arrayidx40 = getelementptr inbounds %struct._RdmaBuffer, ptr %68, i64 %idxprom39
  %Handle41 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx40, i32 0, i32 0
  %Block42 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle41, i32 0, i32 0
  %72 = load ptr, ptr %Block42, align 8, !tbaa !105
  %73 = ptrtoint ptr %72 to i64
  %74 = load ptr, ptr %ReaderRoll, align 8, !tbaa !32
  %75 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %76 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !130
  %idxprom43 = sext i32 %77 to i64
  %arrayidx44 = getelementptr inbounds %struct._RdmaBuffer, ptr %74, i64 %idxprom43
  %Handle45 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx44, i32 0, i32 0
  %Key = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle45, i32 0, i32 1
  %78 = load i64, ptr %Key, align 8, !tbaa !221
  %79 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %call46 = call i64 @fi_read(ptr noundef %56, ptr noundef %58, i64 noundef %60, ptr noundef %61, i64 noundef %67, i64 noundef %73, i64 noundef %78, ptr noundef %79)
  %80 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %BufferSize47 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %80, i32 0, i32 4
  %81 = load i64, ptr %BufferSize47, align 8, !tbaa !201
  %82 = load ptr, ptr %ReadBuffer, align 8, !tbaa !32
  %add.ptr = getelementptr inbounds i8, ptr %82, i64 %81
  store ptr %add.ptr, ptr %ReadBuffer, align 8, !tbaa !32
  br label %for.inc48

for.inc48:                                        ; preds = %for.body33
  %83 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %84 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !130
  store ptr %85, ptr %RankReq, align 8, !tbaa !32
  br label %for.cond31

for.end49:                                        ; preds = %for.cond31
  %86 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PreloadReq50 = getelementptr inbounds %struct._Rdma_WSR_Stream, ptr %86, i32 0, i32 10
  %87 = load ptr, ptr %PreloadReq50, align 8, !tbaa !218
  store ptr %87, ptr %RankReq, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %if.end59, %for.end49
  %88 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %tobool51 = icmp ne ptr %88, null
  br i1 %tobool51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %89 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %cq_signal = getelementptr inbounds %struct.fabric_state, ptr %89, i32 0, i32 9
  %90 = load ptr, ptr %cq_signal, align 8, !tbaa !166
  %call52 = call i64 @fi_cq_sread(ptr noundef %90, ptr noundef %CQEntry, i64 noundef 1, ptr noundef null, i32 noundef -1)
  %op_context = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 0
  %91 = load ptr, ptr %op_context, align 8, !tbaa !202
  store ptr %91, ptr %CQRankReq, align 8, !tbaa !32
  %flags = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 1
  %92 = load i64, ptr %flags, align 8, !tbaa !204
  %and = and i64 %92, 256
  %tobool53 = icmp ne i64 %and, 0
  br i1 %tobool53, label %if.then54, label %if.else

if.then54:                                        ; preds = %while.body
  %93 = load ptr, ptr %CQRankReq, align 8, !tbaa !32
  %ReqLog55 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %93, i32 0, i32 0
  %94 = load ptr, ptr %ReqLog55, align 8, !tbaa !102
  store ptr %94, ptr %CQReqLog, align 8, !tbaa !32
  %95 = load ptr, ptr %CQReqLog, align 8, !tbaa !32
  %96 = load ptr, ptr %CQRankReq, align 8, !tbaa !32
  %Entries56 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %Entries56, align 8, !tbaa !195
  %idxprom57 = sext i32 %97 to i64
  %arrayidx58 = getelementptr inbounds %struct._RdmaBuffer, ptr %95, i64 %idxprom57
  %98 = load i64, ptr %arrayidx58, align 8, !tbaa !88
  %99 = load ptr, ptr %CQRankReq, align 8, !tbaa !32
  %100 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %99, i32 0, i32 3
  store i64 %98, ptr %100, align 8, !tbaa !130
  %101 = load ptr, ptr %RankReq, align 8, !tbaa !32
  %102 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %101, i32 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !130
  store ptr %103, ptr %RankReq, align 8, !tbaa !32
  br label %if.end59

if.else:                                          ; preds = %while.body
  %104 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %verbose, align 8, !tbaa !45
  %106 = load ptr, ptr %WS_Stream, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_WS_Stream, ptr %106, i32 0, i32 1
  %107 = load ptr, ptr %CP_Stream, align 8, !tbaa !65
  call void (ptr, i32, ptr, ...) %105(ptr noundef %107, i32 noundef 1, ptr noundef @.str.68)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then54
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %108 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req60 = getelementptr inbounds %struct.fabric_state, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %local_mr_req60, align 8, !tbaa !126
  %tobool61 = icmp ne i32 %109, 0
  br i1 %tobool61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %while.end
  %110 = load ptr, ptr %rrmr, align 8, !tbaa !32
  %call63 = call i32 @fi_close(ptr noundef %110)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ReadBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %CQReqLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %CQRankReq) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RankReq) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RankReq_p) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %rrdesc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %rrmr) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr %ReqBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ReaderRoll) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %WS_Stream) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @PostPreload(ptr noundef %Svcs, ptr noundef %Stream, i64 noundef %Timestep) #0 {
entry:
  %Svcs.addr = alloca ptr, align 8
  %Stream.addr = alloca ptr, align 8
  %Timestep.addr = alloca i64, align 8
  %StepLog = alloca ptr, align 8
  %Fabric = alloca ptr, align 8
  %PreloadBuffer = alloca ptr, align 8
  %RankLog = alloca ptr, align 8
  %SendBuffer = alloca ptr, align 8
  %sbmr = alloca ptr, align 8
  %sbdesc = alloca ptr, align 8
  %SBSize = alloca i64, align 8
  %ReqLog = alloca ptr, align 8
  %PreloadKey = alloca i64, align 8
  %RawPLBuffer = alloca ptr, align 8
  %WRidx = alloca i32, align 4
  %RollDest = alloca i64, align 8
  %CQEntry = alloca %struct.fi_cq_data_entry, align 8
  %RecvBuffer = alloca ptr, align 8
  %CQBuffer = alloca ptr, align 8
  %RBLen = alloca i64, align 8
  %BLenHolder = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %Stream, ptr %Stream.addr, align 8, !tbaa !32
  store i64 %Timestep, ptr %Timestep.addr, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %StepLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fabric) #11
  %0 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Fabric1 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %Fabric1, align 8, !tbaa !35
  store ptr %1, ptr %Fabric, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %PreloadBuffer) #11
  %2 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PreloadBuffer2 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %2, i32 0, i32 8
  store ptr %PreloadBuffer2, ptr %PreloadBuffer, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %RankLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %SendBuffer) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbmr) #11
  store ptr null, ptr %sbmr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbdesc) #11
  store ptr null, ptr %sbdesc, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %SBSize) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %ReqLog) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %PreloadKey) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %RawPLBuffer) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %WRidx) #11
  store i32 0, ptr %WRidx, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %RollDest) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.memset.p0.i64(ptr align 8 %CQEntry, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %RecvBuffer) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %CQBuffer) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %RBLen) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %BLenHolder) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  %3 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %verbose, align 8, !tbaa !45
  %5 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %CP_Stream, align 8, !tbaa !41
  %7 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Rank = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %Rank, align 8, !tbaa !110
  call void (ptr, i32, ptr, ...) %4(ptr noundef %6, i32 noundef 5, ptr noundef @.str.73, i32 noundef %8, ptr noundef @__func__.PostPreload)
  %9 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %StepLog3 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %StepLog3, align 8, !tbaa !131
  store ptr %10, ptr %StepLog, align 8, !tbaa !32
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %11 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Timestep4 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %Timestep4, align 8, !tbaa !198
  %14 = load i64, ptr %Timestep.addr, align 8, !tbaa !88
  %cmp = icmp eq i64 %13, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %15 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Next = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %Next, align 8, !tbaa !132
  store ptr %16, ptr %StepLog, align 8, !tbaa !32
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %17 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %tobool5 = icmp ne ptr %17, null
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %while.end
  %18 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose7 = getelementptr inbounds %struct._CP_Services, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %verbose7, align 8, !tbaa !45
  %20 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream8 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %CP_Stream8, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %19(ptr noundef %21, i32 noundef 1, ptr noundef @.str.74)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %while.end
  %22 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %23 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %PreloadStepLog = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %23, i32 0, i32 7
  store ptr %22, ptr %PreloadStepLog, align 8, !tbaa !99
  %24 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %BufferSize = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %24, i32 0, i32 4
  %25 = load i64, ptr %BufferSize, align 8, !tbaa !106
  %mul = mul nsw i64 2, %25
  %26 = load ptr, ptr %PreloadBuffer, align 8, !tbaa !32
  %BufferLen = getelementptr inbounds %struct._RdmaBuffer, ptr %26, i32 0, i32 1
  store i64 %mul, ptr %BufferLen, align 8, !tbaa !89
  %27 = load ptr, ptr %PreloadBuffer, align 8, !tbaa !32
  %BufferLen10 = getelementptr inbounds %struct._RdmaBuffer, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %BufferLen10, align 8, !tbaa !89
  %call = call noalias ptr @malloc(i64 noundef %28) #12
  %29 = load ptr, ptr %PreloadBuffer, align 8, !tbaa !32
  %Handle = getelementptr inbounds %struct._RdmaBuffer, ptr %29, i32 0, i32 0
  %Block = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle, i32 0, i32 0
  store ptr %call, ptr %Block, align 8, !tbaa !105
  %30 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain = getelementptr inbounds %struct.fabric_state, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %domain, align 8, !tbaa !81
  %32 = load ptr, ptr %PreloadBuffer, align 8, !tbaa !32
  %Handle11 = getelementptr inbounds %struct._RdmaBuffer, ptr %32, i32 0, i32 0
  %Block12 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle11, i32 0, i32 0
  %33 = load ptr, ptr %Block12, align 8, !tbaa !105
  %34 = load ptr, ptr %PreloadBuffer, align 8, !tbaa !32
  %BufferLen13 = getelementptr inbounds %struct._RdmaBuffer, ptr %34, i32 0, i32 1
  %35 = load i64, ptr %BufferLen13, align 8, !tbaa !89
  %36 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %pbmr = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx = getelementptr inbounds %struct.fabric_state, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %ctx, align 8, !tbaa !82
  %call14 = call i32 @fi_mr_reg(ptr noundef %31, ptr noundef %33, i64 noundef %35, i64 noundef 8192, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %pbmr, ptr noundef %38)
  %39 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %pbmr15 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %39, i32 0, i32 9
  %40 = load ptr, ptr %pbmr15, align 8, !tbaa !222
  %call16 = call i64 @fi_mr_key(ptr noundef %40)
  store i64 %call16, ptr %PreloadKey, align 8, !tbaa !88
  %41 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %WRanks = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %41, i32 0, i32 5
  %42 = load i32, ptr %WRanks, align 8, !tbaa !199
  %conv = sext i32 %42 to i64
  %mul17 = mul i64 32, %conv
  store i64 %mul17, ptr %SBSize, align 8, !tbaa !88
  %43 = load i64, ptr %SBSize, align 8, !tbaa !88
  %call18 = call noalias ptr @malloc(i64 noundef %43) #12
  store ptr %call18, ptr %SendBuffer, align 8, !tbaa !32
  %44 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req = getelementptr inbounds %struct.fabric_state, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %local_mr_req, align 8, !tbaa !126
  %tobool19 = icmp ne i32 %45, 0
  br i1 %tobool19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end9
  %46 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain21 = getelementptr inbounds %struct.fabric_state, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %domain21, align 8, !tbaa !81
  %48 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %49 = load i64, ptr %SBSize, align 8, !tbaa !88
  %50 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx22 = getelementptr inbounds %struct.fabric_state, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %ctx22, align 8, !tbaa !82
  %call23 = call i32 @fi_mr_reg(ptr noundef %47, ptr noundef %48, i64 noundef %49, i64 noundef 512, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %sbmr, ptr noundef %51)
  %52 = load ptr, ptr %sbmr, align 8, !tbaa !32
  %call24 = call ptr @fi_mr_desc(ptr noundef %52)
  store ptr %call24, ptr %sbdesc, align 8, !tbaa !32
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end9
  %53 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %rx_cq_data = getelementptr inbounds %struct.fabric_state, ptr %53, i32 0, i32 3
  %54 = load i32, ptr %rx_cq_data, align 4, !tbaa !154
  %tobool26 = icmp ne i32 %54, 0
  br i1 %tobool26, label %if.then27, label %if.end53

if.then27:                                        ; preds = %if.end25
  %55 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Entries = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %Entries, align 8, !tbaa !200
  %mul28 = mul nsw i32 2, %56
  %mul29 = mul nsw i32 %mul28, 64
  %conv30 = sext i32 %mul29 to i64
  store i64 %conv30, ptr %RBLen, align 8, !tbaa !88
  %57 = load i64, ptr %RBLen, align 8, !tbaa !88
  %call31 = call noalias ptr @malloc(i64 noundef %57) #12
  %58 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %RecvDataBuffer = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %58, i32 0, i32 22
  store ptr %call31, ptr %RecvDataBuffer, align 8, !tbaa !223
  %59 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain32 = getelementptr inbounds %struct.fabric_state, ptr %59, i32 0, i32 7
  %60 = load ptr, ptr %domain32, align 8, !tbaa !81
  %61 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %RecvDataBuffer33 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %61, i32 0, i32 22
  %62 = load ptr, ptr %RecvDataBuffer33, align 8, !tbaa !223
  %63 = load i64, ptr %RBLen, align 8, !tbaa !88
  %64 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %rbmr = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %64, i32 0, i32 23
  %65 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx34 = getelementptr inbounds %struct.fabric_state, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %ctx34, align 8, !tbaa !82
  %call35 = call i32 @fi_mr_reg(ptr noundef %60, ptr noundef %62, i64 noundef %63, i64 noundef 1024, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %rbmr, ptr noundef %66)
  %67 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %rbmr36 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %67, i32 0, i32 23
  %68 = load ptr, ptr %rbmr36, align 8, !tbaa !224
  %call37 = call ptr @fi_mr_desc(ptr noundef %68)
  %69 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %rbdesc = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %69, i32 0, i32 24
  store ptr %call37, ptr %rbdesc, align 8, !tbaa !225
  %70 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %RecvDataBuffer38 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %70, i32 0, i32 22
  %71 = load ptr, ptr %RecvDataBuffer38, align 8, !tbaa !223
  store ptr %71, ptr %RecvBuffer, align 8, !tbaa !32
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then27
  %72 = load i32, ptr %i, align 4, !tbaa !67
  %73 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %Entries39 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %73, i32 0, i32 3
  %74 = load i32, ptr %Entries39, align 8, !tbaa !200
  %mul40 = mul nsw i32 2, %74
  %cmp41 = icmp slt i32 %72, %mul40
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %75 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %75, i32 0, i32 8
  %76 = load ptr, ptr %signal, align 8, !tbaa !53
  %77 = load ptr, ptr %RecvBuffer, align 8, !tbaa !32
  %78 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %rbdesc43 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %78, i32 0, i32 24
  %79 = load ptr, ptr %rbdesc43, align 8, !tbaa !225
  %80 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx44 = getelementptr inbounds %struct.fabric_state, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %ctx44, align 8, !tbaa !82
  %call45 = call i64 @fi_recv(ptr noundef %76, ptr noundef %77, i64 noundef 64, ptr noundef %79, i64 noundef -1, ptr noundef %81)
  %conv46 = trunc i64 %call45 to i32
  store i32 %conv46, ptr %rc, align 4, !tbaa !67
  %82 = load i32, ptr %rc, align 4, !tbaa !67
  %tobool47 = icmp ne i32 %82, 0
  br i1 %tobool47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %for.body
  %83 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose49 = getelementptr inbounds %struct._CP_Services, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %verbose49, align 8, !tbaa !45
  %85 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream50 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %85, i32 0, i32 1
  %86 = load ptr, ptr %CP_Stream50, align 8, !tbaa !41
  %87 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Rank51 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %87, i32 0, i32 2
  %88 = load i32, ptr %Rank51, align 8, !tbaa !110
  call void (ptr, i32, ptr, ...) %84(ptr noundef %86, i32 noundef 1, ptr noundef @.str.75, i32 noundef %88)
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %for.body
  %89 = load ptr, ptr %RecvBuffer, align 8, !tbaa !32
  %add.ptr = getelementptr inbounds i8, ptr %89, i64 64
  store ptr %add.ptr, ptr %RecvBuffer, align 8, !tbaa !32
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %90 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %90, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end53

if.end53:                                         ; preds = %for.end, %if.end25
  %91 = load ptr, ptr %PreloadBuffer, align 8, !tbaa !32
  %Handle54 = getelementptr inbounds %struct._RdmaBuffer, ptr %91, i32 0, i32 0
  %Block55 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle54, i32 0, i32 0
  %92 = load ptr, ptr %Block55, align 8, !tbaa !105
  store ptr %92, ptr %RawPLBuffer, align 8, !tbaa !32
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc144, %if.end53
  %93 = load i32, ptr %i, align 4, !tbaa !67
  %94 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %WriterCohortSize = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %94, i32 0, i32 14
  %95 = load i32, ptr %WriterCohortSize, align 8, !tbaa !95
  %cmp57 = icmp slt i32 %93, %95
  br i1 %cmp57, label %for.body59, label %for.end146

for.body59:                                       ; preds = %for.cond56
  %96 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %RankLog60 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %96, i32 0, i32 1
  %97 = load ptr, ptr %RankLog60, align 8, !tbaa !100
  %98 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom = sext i32 %98 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaRankReqLog, ptr %97, i64 %idxprom
  store ptr %arrayidx, ptr %RankLog, align 8, !tbaa !32
  %99 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries61 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %99, i32 0, i32 1
  %100 = load i32, ptr %Entries61, align 8, !tbaa !195
  %cmp62 = icmp sgt i32 %100, 0
  br i1 %cmp62, label %if.then64, label %if.end143

if.then64:                                        ; preds = %for.body59
  %101 = load ptr, ptr %RawPLBuffer, align 8, !tbaa !32
  %102 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %103 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %102, i32 0, i32 3
  store ptr %101, ptr %103, align 8, !tbaa !130
  %104 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %domain65 = getelementptr inbounds %struct.fabric_state, ptr %104, i32 0, i32 7
  %105 = load ptr, ptr %domain65, align 8, !tbaa !81
  %106 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %ReqLog66 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %ReqLog66, align 8, !tbaa !102
  %108 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries67 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %108, i32 0, i32 1
  %109 = load i32, ptr %Entries67, align 8, !tbaa !195
  %conv68 = sext i32 %109 to i64
  %mul69 = mul i64 32, %conv68
  %add = add i64 %mul69, 8
  %110 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %111 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %110, i32 0, i32 5
  %112 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %ctx70 = getelementptr inbounds %struct.fabric_state, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %ctx70, align 8, !tbaa !82
  %call71 = call i32 @fi_mr_reg(ptr noundef %105, ptr noundef %107, i64 noundef %add, i64 noundef 4096, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef %111, ptr noundef %113)
  store i32 0, ptr %j, align 4, !tbaa !67
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc85, %if.then64
  %114 = load i32, ptr %j, align 4, !tbaa !67
  %115 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries73 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %115, i32 0, i32 1
  %116 = load i32, ptr %Entries73, align 8, !tbaa !195
  %cmp74 = icmp slt i32 %114, %116
  br i1 %cmp74, label %for.body76, label %for.end87

for.body76:                                       ; preds = %for.cond72
  %117 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %ReqLog77 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %ReqLog77, align 8, !tbaa !102
  %119 = load i32, ptr %j, align 4, !tbaa !67
  %idxprom78 = sext i32 %119 to i64
  %arrayidx79 = getelementptr inbounds %struct._RdmaBuffer, ptr %118, i64 %idxprom78
  store ptr %arrayidx79, ptr %ReqLog, align 8, !tbaa !32
  %120 = load ptr, ptr %RawPLBuffer, align 8, !tbaa !32
  %121 = load ptr, ptr %ReqLog, align 8, !tbaa !32
  %Handle80 = getelementptr inbounds %struct._RdmaBuffer, ptr %121, i32 0, i32 0
  %Block81 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle80, i32 0, i32 0
  store ptr %120, ptr %Block81, align 8, !tbaa !105
  %122 = load i64, ptr %PreloadKey, align 8, !tbaa !88
  %123 = load ptr, ptr %ReqLog, align 8, !tbaa !32
  %Handle82 = getelementptr inbounds %struct._RdmaBuffer, ptr %123, i32 0, i32 0
  %Key = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle82, i32 0, i32 1
  store i64 %122, ptr %Key, align 8, !tbaa !221
  %124 = load ptr, ptr %ReqLog, align 8, !tbaa !32
  %BufferLen83 = getelementptr inbounds %struct._RdmaBuffer, ptr %124, i32 0, i32 1
  %125 = load i64, ptr %BufferLen83, align 8, !tbaa !89
  %126 = load ptr, ptr %RawPLBuffer, align 8, !tbaa !32
  %add.ptr84 = getelementptr inbounds i8, ptr %126, i64 %125
  store ptr %add.ptr84, ptr %RawPLBuffer, align 8, !tbaa !32
  br label %for.inc85

for.inc85:                                        ; preds = %for.body76
  %127 = load i32, ptr %j, align 4, !tbaa !67
  %inc86 = add nsw i32 %127, 1
  store i32 %inc86, ptr %j, align 4, !tbaa !67
  br label %for.cond72

for.end87:                                        ; preds = %for.cond72
  %128 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %ReqLog88 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %ReqLog88, align 8, !tbaa !102
  %130 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries89 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %130, i32 0, i32 1
  %131 = load i32, ptr %Entries89, align 8, !tbaa !195
  %idxprom90 = sext i32 %131 to i64
  %arrayidx91 = getelementptr inbounds %struct._RdmaBuffer, ptr %129, i64 %idxprom90
  store ptr %arrayidx91, ptr %BLenHolder, align 8, !tbaa !32
  %132 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %BufferSize92 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %132, i32 0, i32 4
  %133 = load i64, ptr %BufferSize92, align 8, !tbaa !106
  %134 = load ptr, ptr %BLenHolder, align 8, !tbaa !32
  store i64 %133, ptr %134, align 8, !tbaa !88
  %135 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries93 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %135, i32 0, i32 1
  %136 = load i32, ptr %Entries93, align 8, !tbaa !195
  %conv94 = sext i32 %136 to i64
  %mul95 = mul i64 %conv94, 32
  %add96 = add i64 %mul95, 8
  %137 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %138 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom97 = sext i32 %138 to i64
  %arrayidx98 = getelementptr inbounds %struct._RdmaBuffer, ptr %137, i64 %idxprom97
  %BufferLen99 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx98, i32 0, i32 1
  store i64 %add96, ptr %BufferLen99, align 8, !tbaa !89
  %139 = load i64, ptr %PreloadKey, align 8, !tbaa !88
  %140 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %141 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom100 = sext i32 %141 to i64
  %arrayidx101 = getelementptr inbounds %struct._RdmaBuffer, ptr %140, i64 %idxprom100
  %Offset = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx101, i32 0, i32 2
  store i64 %139, ptr %Offset, align 8, !tbaa !196
  %142 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %ReqLog102 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %ReqLog102, align 8, !tbaa !102
  %144 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %145 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom103 = sext i32 %145 to i64
  %arrayidx104 = getelementptr inbounds %struct._RdmaBuffer, ptr %144, i64 %idxprom103
  %Handle105 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx104, i32 0, i32 0
  %Block106 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle105, i32 0, i32 0
  store ptr %143, ptr %Block106, align 8, !tbaa !105
  %146 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %147 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %146, i32 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !130
  %call107 = call i64 @fi_mr_key(ptr noundef %148)
  %149 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %150 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom108 = sext i32 %150 to i64
  %arrayidx109 = getelementptr inbounds %struct._RdmaBuffer, ptr %149, i64 %idxprom108
  %Handle110 = getelementptr inbounds %struct._RdmaBuffer, ptr %arrayidx109, i32 0, i32 0
  %Key111 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %Handle110, i32 0, i32 1
  store i64 %call107, ptr %Key111, align 8, !tbaa !221
  %151 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %WriterRoll = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %151, i32 0, i32 18
  %152 = load ptr, ptr %WriterRoll, align 8, !tbaa !97
  %153 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom112 = sext i32 %153 to i64
  %arrayidx113 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %152, i64 %idxprom112
  %Block114 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %arrayidx113, i32 0, i32 0
  %154 = load ptr, ptr %Block114, align 8, !tbaa !80
  %155 = ptrtoint ptr %154 to i64
  %156 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %Rank115 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %156, i32 0, i32 2
  %157 = load i32, ptr %Rank115, align 8, !tbaa !110
  %conv116 = sext i32 %157 to i64
  %mul117 = mul i64 32, %conv116
  %add118 = add i64 %155, %mul117
  store i64 %add118, ptr %RollDest, align 8, !tbaa !88
  %158 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %signal119 = getelementptr inbounds %struct.fabric_state, ptr %158, i32 0, i32 8
  %159 = load ptr, ptr %signal119, align 8, !tbaa !53
  %160 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %161 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom120 = sext i32 %161 to i64
  %arrayidx121 = getelementptr inbounds %struct._RdmaBuffer, ptr %160, i64 %idxprom120
  %162 = load ptr, ptr %sbdesc, align 8, !tbaa !32
  %163 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %WriterAddr = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %163, i32 0, i32 17
  %164 = load ptr, ptr %WriterAddr, align 8, !tbaa !96
  %165 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom122 = sext i32 %165 to i64
  %arrayidx123 = getelementptr inbounds i64, ptr %164, i64 %idxprom122
  %166 = load i64, ptr %arrayidx123, align 8, !tbaa !88
  %167 = load i64, ptr %RollDest, align 8, !tbaa !88
  %168 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %WriterRoll124 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %168, i32 0, i32 18
  %169 = load ptr, ptr %WriterRoll124, align 8, !tbaa !97
  %170 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom125 = sext i32 %170 to i64
  %arrayidx126 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %169, i64 %idxprom125
  %Key127 = getelementptr inbounds %struct._RdmaBufferHandle, ptr %arrayidx126, i32 0, i32 1
  %171 = load i64, ptr %Key127, align 8, !tbaa !84
  %172 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %173 = load i32, ptr %WRidx, align 4, !tbaa !67
  %idxprom128 = sext i32 %173 to i64
  %arrayidx129 = getelementptr inbounds %struct._RdmaBuffer, ptr %172, i64 %idxprom128
  %call130 = call i64 @fi_write(ptr noundef %159, ptr noundef %arrayidx121, i64 noundef 32, ptr noundef %162, i64 noundef %166, i64 noundef %167, i64 noundef %171, ptr noundef %arrayidx129)
  %call131 = call noalias ptr @malloc(i64 noundef 16) #12
  %174 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %PreloadHandles = getelementptr inbounds %struct._RdmaRankReqLog, ptr %174, i32 0, i32 6
  store ptr %call131, ptr %PreloadHandles, align 8, !tbaa !104
  %175 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries132 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %175, i32 0, i32 1
  %176 = load i32, ptr %Entries132, align 8, !tbaa !195
  %conv133 = sext i32 %176 to i64
  %call134 = call noalias ptr @calloc(i64 noundef 48, i64 noundef %conv133) #13
  %177 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %PreloadHandles135 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %177, i32 0, i32 6
  %178 = load ptr, ptr %PreloadHandles135, align 8, !tbaa !104
  %arrayidx136 = getelementptr inbounds ptr, ptr %178, i64 0
  store ptr %call134, ptr %arrayidx136, align 8, !tbaa !32
  %179 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %Entries137 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %179, i32 0, i32 1
  %180 = load i32, ptr %Entries137, align 8, !tbaa !195
  %conv138 = sext i32 %180 to i64
  %call139 = call noalias ptr @calloc(i64 noundef 48, i64 noundef %conv138) #13
  %181 = load ptr, ptr %RankLog, align 8, !tbaa !32
  %PreloadHandles140 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %181, i32 0, i32 6
  %182 = load ptr, ptr %PreloadHandles140, align 8, !tbaa !104
  %arrayidx141 = getelementptr inbounds ptr, ptr %182, i64 1
  store ptr %call139, ptr %arrayidx141, align 8, !tbaa !32
  %183 = load i32, ptr %WRidx, align 4, !tbaa !67
  %inc142 = add nsw i32 %183, 1
  store i32 %inc142, ptr %WRidx, align 4, !tbaa !67
  br label %if.end143

if.end143:                                        ; preds = %for.end87, %for.body59
  br label %for.inc144

for.inc144:                                       ; preds = %if.end143
  %184 = load i32, ptr %i, align 4, !tbaa !67
  %inc145 = add nsw i32 %184, 1
  store i32 %inc145, ptr %i, align 4, !tbaa !67
  br label %for.cond56

for.end146:                                       ; preds = %for.cond56
  br label %while.cond147

while.cond147:                                    ; preds = %if.end161, %for.end146
  %185 = load i32, ptr %WRidx, align 4, !tbaa !67
  %cmp148 = icmp sgt i32 %185, 0
  br i1 %cmp148, label %while.body150, label %while.end162

while.body150:                                    ; preds = %while.cond147
  %186 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %cq_signal = getelementptr inbounds %struct.fabric_state, ptr %186, i32 0, i32 9
  %187 = load ptr, ptr %cq_signal, align 8, !tbaa !166
  %call151 = call i64 @fi_cq_sread(ptr noundef %187, ptr noundef %CQEntry, i64 noundef 1, ptr noundef null, i32 noundef -1)
  %op_context = getelementptr inbounds %struct.fi_cq_data_entry, ptr %CQEntry, i32 0, i32 0
  %188 = load ptr, ptr %op_context, align 8, !tbaa !202
  store ptr %188, ptr %CQBuffer, align 8, !tbaa !32
  %189 = load ptr, ptr %CQBuffer, align 8, !tbaa !32
  %190 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %cmp152 = icmp uge ptr %189, %190
  br i1 %cmp152, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body150
  %191 = load ptr, ptr %CQBuffer, align 8, !tbaa !32
  %192 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  %193 = load ptr, ptr %StepLog, align 8, !tbaa !32
  %WRanks154 = getelementptr inbounds %struct._RdmaStepLogEntry, ptr %193, i32 0, i32 5
  %194 = load i32, ptr %WRanks154, align 8, !tbaa !199
  %idx.ext = sext i32 %194 to i64
  %add.ptr155 = getelementptr inbounds %struct._RdmaBuffer, ptr %192, i64 %idx.ext
  %cmp156 = icmp ult ptr %191, %add.ptr155
  br i1 %cmp156, label %if.then158, label %if.else

if.then158:                                       ; preds = %land.lhs.true
  %195 = load i32, ptr %WRidx, align 4, !tbaa !67
  %dec = add nsw i32 %195, -1
  store i32 %dec, ptr %WRidx, align 4, !tbaa !67
  br label %if.end161

if.else:                                          ; preds = %land.lhs.true, %while.body150
  %196 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose159 = getelementptr inbounds %struct._CP_Services, ptr %196, i32 0, i32 0
  %197 = load ptr, ptr %verbose159, align 8, !tbaa !45
  %198 = load ptr, ptr %Stream.addr, align 8, !tbaa !32
  %CP_Stream160 = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %198, i32 0, i32 1
  %199 = load ptr, ptr %CP_Stream160, align 8, !tbaa !41
  call void (ptr, i32, ptr, ...) %197(ptr noundef %199, i32 noundef 1, ptr noundef @.str.76)
  br label %if.end161

if.end161:                                        ; preds = %if.else, %if.then158
  br label %while.cond147

while.end162:                                     ; preds = %while.cond147
  %200 = load ptr, ptr %Fabric, align 8, !tbaa !32
  %local_mr_req163 = getelementptr inbounds %struct.fabric_state, ptr %200, i32 0, i32 2
  %201 = load i32, ptr %local_mr_req163, align 8, !tbaa !126
  %tobool164 = icmp ne i32 %201, 0
  br i1 %tobool164, label %if.then165, label %if.end167

if.then165:                                       ; preds = %while.end162
  %202 = load ptr, ptr %sbmr, align 8, !tbaa !32
  %call166 = call i32 @fi_close(ptr noundef %202)
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %while.end162
  %203 = load ptr, ptr %SendBuffer, align 8, !tbaa !32
  call void @free(ptr noundef %203) #11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %BLenHolder) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RBLen) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %CQBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RecvBuffer) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr %CQEntry) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RollDest) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %WRidx) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RawPLBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %PreloadKey) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %ReqLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %SBSize) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbdesc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbmr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %SendBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %RankLog) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %PreloadBuffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fabric) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %StepLog) #11
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

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fi_recv(ptr noundef %ep, ptr noundef %buf, i64 noundef %len, ptr noundef %desc, i64 noundef %src_addr, ptr noundef %context) #9 {
entry:
  %ep.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  %src_addr.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !32
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  store i64 %len, ptr %len.addr, align 8, !tbaa !88
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !32
  store i64 %src_addr, ptr %src_addr.addr, align 8, !tbaa !88
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %msg = getelementptr inbounds %struct.fid_ep, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %msg, align 8, !tbaa !226
  %recv = getelementptr inbounds %struct.fi_ops_msg, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %recv, align 8, !tbaa !227
  %3 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !32
  %5 = load i64, ptr %len.addr, align 8, !tbaa !88
  %6 = load ptr, ptr %desc.addr, align 8, !tbaa !32
  %7 = load i64, ptr %src_addr.addr, align 8, !tbaa !88
  %8 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i64 %2(ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8)
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fi_write(ptr noundef %ep, ptr noundef %buf, i64 noundef %len, ptr noundef %desc, i64 noundef %dest_addr, i64 noundef %addr, i64 noundef %key, ptr noundef %context) #9 {
entry:
  %ep.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %desc.addr = alloca ptr, align 8
  %dest_addr.addr = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %key.addr = alloca i64, align 8
  %context.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !32
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  store i64 %len, ptr %len.addr, align 8, !tbaa !88
  store ptr %desc, ptr %desc.addr, align 8, !tbaa !32
  store i64 %dest_addr, ptr %dest_addr.addr, align 8, !tbaa !88
  store i64 %addr, ptr %addr.addr, align 8, !tbaa !88
  store i64 %key, ptr %key.addr, align 8, !tbaa !88
  store ptr %context, ptr %context.addr, align 8, !tbaa !32
  %0 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %rma = getelementptr inbounds %struct.fid_ep, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %rma, align 8, !tbaa !206
  %write = getelementptr inbounds %struct.fi_ops_rma, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %write, align 8, !tbaa !229
  %3 = load ptr, ptr %ep.addr, align 8, !tbaa !32
  %4 = load ptr, ptr %buf.addr, align 8, !tbaa !32
  %5 = load i64, ptr %len.addr, align 8, !tbaa !88
  %6 = load ptr, ptr %desc.addr, align 8, !tbaa !32
  %7 = load i64, ptr %dest_addr.addr, align 8, !tbaa !88
  %8 = load i64, ptr %addr.addr, align 8, !tbaa !88
  %9 = load i64, ptr %key.addr, align 8, !tbaa !88
  %10 = load ptr, ptr %context.addr, align 8, !tbaa !32
  %call = call i64 %2(ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %10)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @fini_fabric(ptr noundef %fabric, ptr noundef %Svcs, ptr noundef %CP_Stream) #0 {
entry:
  %fabric.addr = alloca ptr, align 8
  %Svcs.addr = alloca ptr, align 8
  %CP_Stream.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fabric, ptr %fabric.addr, align 8, !tbaa !32
  store ptr %Svcs, ptr %Svcs.addr, align 8, !tbaa !32
  store ptr %CP_Stream, ptr %CP_Stream.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #11
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %signal = getelementptr inbounds %struct.fabric_state, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %signal, align 8, !tbaa !53
  %call = call i32 @fi_close(ptr noundef %1)
  store i32 %call, ptr %res, align 4, !tbaa !67
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i32, ptr %res, align 4, !tbaa !67
  %cmp = icmp eq i32 %2, -16
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %res, align 4, !tbaa !67
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %4 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose = getelementptr inbounds %struct._CP_Services, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %verbose, align 8, !tbaa !45
  %6 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %7 = load i32, ptr %res, align 4, !tbaa !67
  %8 = load i32, ptr %res, align 4, !tbaa !67
  %call2 = call ptr @fi_strerror(i32 noundef %8)
  call void (ptr, i32, ptr, ...) %5(ptr noundef %6, i32 noundef 1, ptr noundef @.str.80, i32 noundef %7, ptr noundef %call2)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %cq_signal = getelementptr inbounds %struct.fabric_state, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %cq_signal, align 8, !tbaa !166
  %call3 = call i32 @fi_close(ptr noundef %10)
  store i32 %call3, ptr %res, align 4, !tbaa !67
  %11 = load i32, ptr %res, align 4, !tbaa !67
  %cmp4 = icmp ne i32 %11, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose6 = getelementptr inbounds %struct._CP_Services, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %verbose6, align 8, !tbaa !45
  %14 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %15 = load i32, ptr %res, align 4, !tbaa !67
  %16 = load i32, ptr %res, align 4, !tbaa !67
  %call7 = call ptr @fi_strerror(i32 noundef %16)
  call void (ptr, i32, ptr, ...) %13(ptr noundef %14, i32 noundef 1, ptr noundef @.str.81, i32 noundef %15, ptr noundef %call7)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %17 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %av = getelementptr inbounds %struct.fabric_state, ptr %17, i32 0, i32 10
  %18 = load ptr, ptr %av, align 8, !tbaa !73
  %call9 = call i32 @fi_close(ptr noundef %18)
  store i32 %call9, ptr %res, align 4, !tbaa !67
  %19 = load i32, ptr %res, align 4, !tbaa !67
  %cmp10 = icmp ne i32 %19, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  %20 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose12 = getelementptr inbounds %struct._CP_Services, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %verbose12, align 8, !tbaa !45
  %22 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %23 = load i32, ptr %res, align 4, !tbaa !67
  %24 = load i32, ptr %res, align 4, !tbaa !67
  %call13 = call ptr @fi_strerror(i32 noundef %24)
  call void (ptr, i32, ptr, ...) %21(ptr noundef %22, i32 noundef 1, ptr noundef @.str.82, i32 noundef %23, ptr noundef %call13)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8
  %25 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %domain = getelementptr inbounds %struct.fabric_state, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %domain, align 8, !tbaa !81
  %call15 = call i32 @fi_close(ptr noundef %26)
  store i32 %call15, ptr %res, align 4, !tbaa !67
  %27 = load i32, ptr %res, align 4, !tbaa !67
  %cmp16 = icmp ne i32 %27, 0
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  %28 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose18 = getelementptr inbounds %struct._CP_Services, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %verbose18, align 8, !tbaa !45
  %30 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %31 = load i32, ptr %res, align 4, !tbaa !67
  %32 = load i32, ptr %res, align 4, !tbaa !67
  %call19 = call ptr @fi_strerror(i32 noundef %32)
  call void (ptr, i32, ptr, ...) %29(ptr noundef %30, i32 noundef 1, ptr noundef @.str.83, i32 noundef %31, ptr noundef %call19)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %33 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %fabric21 = getelementptr inbounds %struct.fabric_state, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %fabric21, align 8, !tbaa !156
  %call22 = call i32 @fi_close(ptr noundef %34)
  store i32 %call22, ptr %res, align 4, !tbaa !67
  %35 = load i32, ptr %res, align 4, !tbaa !67
  %cmp23 = icmp ne i32 %35, 0
  br i1 %cmp23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  %36 = load ptr, ptr %Svcs.addr, align 8, !tbaa !32
  %verbose25 = getelementptr inbounds %struct._CP_Services, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %verbose25, align 8, !tbaa !45
  %38 = load ptr, ptr %CP_Stream.addr, align 8, !tbaa !32
  %39 = load i32, ptr %res, align 4, !tbaa !67
  %40 = load i32, ptr %res, align 4, !tbaa !67
  %call26 = call ptr @fi_strerror(i32 noundef %40)
  call void (ptr, i32, ptr, ...) %37(ptr noundef %38, i32 noundef 1, ptr noundef @.str.84, i32 noundef %39, ptr noundef %call26)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %41 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %info = getelementptr inbounds %struct.fabric_state, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %info, align 8, !tbaa !47
  call void @fi_freeinfo(ptr noundef %42)
  %43 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx = getelementptr inbounds %struct.fabric_state, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %ctx, align 8, !tbaa !82
  %tobool = icmp ne ptr %44, null
  br i1 %tobool, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end27
  %45 = load ptr, ptr %fabric.addr, align 8, !tbaa !32
  %ctx29 = getelementptr inbounds %struct.fabric_state, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %ctx29, align 8, !tbaa !82
  call void @free(ptr noundef %46) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then24, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #11
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

; Function Attrs: nounwind uwtable
define internal void @RdmaDestroyRankReqLog(ptr noundef %RS_Stream, ptr noundef %RankReqLog) #0 {
entry:
  %RS_Stream.addr = alloca ptr, align 8
  %RankReqLog.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %RS_Stream, ptr %RS_Stream.addr, align 8, !tbaa !32
  store ptr %RankReqLog, ptr %RankReqLog.addr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !67
  %1 = load ptr, ptr %RS_Stream.addr, align 8, !tbaa !32
  %WriterCohortSize = getelementptr inbounds %struct._Rdma_RS_Stream, ptr %1, i32 0, i32 14
  %2 = load i32, ptr %WriterCohortSize, align 8, !tbaa !95
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %RankReqLog.addr, align 8, !tbaa !32
  %4 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct._RdmaRankReqLog, ptr %3, i64 %idxprom
  %ReqLog = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx, i32 0, i32 0
  %5 = load ptr, ptr %ReqLog, align 8, !tbaa !102
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %RankReqLog.addr, align 8, !tbaa !32
  %7 = load i32, ptr %i, align 4, !tbaa !67
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %6, i64 %idxprom1
  %ReqLog3 = getelementptr inbounds %struct._RdmaRankReqLog, ptr %arrayidx2, i32 0, i32 0
  %8 = load ptr, ptr %ReqLog3, align 8, !tbaa !102
  call void @free(ptr noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !tbaa !67
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !67
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %RankReqLog.addr, align 8, !tbaa !32
  call void @free(ptr noundef %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"_CP_DP_Interface", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 8}
!10 = !{!5, !6, i64 16}
!11 = !{!5, !6, i64 24}
!12 = !{!5, !6, i64 32}
!13 = !{!5, !6, i64 40}
!14 = !{!5, !6, i64 48}
!15 = !{!5, !6, i64 56}
!16 = !{!5, !6, i64 64}
!17 = !{!5, !6, i64 72}
!18 = !{!5, !6, i64 80}
!19 = !{!5, !6, i64 88}
!20 = !{!5, !6, i64 96}
!21 = !{!5, !6, i64 112}
!22 = !{!5, !6, i64 120}
!23 = !{!5, !6, i64 136}
!24 = !{!5, !6, i64 144}
!25 = !{!5, !6, i64 128}
!26 = !{!5, !6, i64 104}
!27 = !{!5, !6, i64 152}
!28 = !{!5, !6, i64 160}
!29 = !{!5, !6, i64 168}
!30 = !{!5, !6, i64 176}
!31 = !{!5, !6, i64 184}
!32 = !{!6, !6, i64 0}
!33 = !{!34, !6, i64 24}
!34 = !{!"_CP_Services", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!35 = !{!36, !6, i64 24}
!36 = !{!"_Rdma_RS_Stream", !6, i64 0, !6, i64 8, !37, i64 16, !6, i64 24, !38, i64 32, !37, i64 40, !6, i64 48, !6, i64 56, !39, i64 64, !6, i64 96, !6, i64 104, !37, i64 112, !6, i64 120, !6, i64 128, !37, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !37, i64 176, !38, i64 184, !38, i64 192, !6, i64 200, !6, i64 208, !6, i64 216}
!37 = !{!"int", !7, i64 0}
!38 = !{!"long", !7, i64 0}
!39 = !{!"_RdmaBuffer", !40, i64 0, !38, i64 16, !38, i64 24}
!40 = !{!"_RdmaBufferHandle", !6, i64 0, !38, i64 8}
!41 = !{!36, !6, i64 8}
!42 = !{!43, !6, i64 0}
!43 = !{!"_RdmaReaderContactInfo", !6, i64 0, !38, i64 8, !6, i64 16}
!44 = !{!36, !6, i64 120}
!45 = !{!34, !6, i64 0}
!46 = !{!36, !37, i64 112}
!47 = !{!48, !6, i64 8}
!48 = !{!"fabric_state", !6, i64 0, !6, i64 8, !37, i64 16, !37, i64 20, !38, i64 24, !38, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !38, i64 80}
!49 = !{!50, !38, i64 32}
!50 = !{!"fi_info", !6, i64 0, !38, i64 8, !38, i64 16, !37, i64 24, !38, i64 32, !38, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112}
!51 = !{!43, !38, i64 8}
!52 = !{!43, !6, i64 16}
!53 = !{!48, !6, i64 56}
!54 = !{!36, !38, i64 32}
!55 = !{!36, !6, i64 128}
!56 = !{!36, !37, i64 40}
!57 = !{!36, !37, i64 176}
!58 = !{!36, !6, i64 104}
!59 = !{!36, !38, i64 184}
!60 = !{!36, !38, i64 192}
!61 = !{!62, !37, i64 16}
!62 = !{!"_Rdma_WS_Stream", !6, i64 0, !6, i64 8, !37, i64 16, !6, i64 24, !37, i64 32, !37, i64 36, !6, i64 40, !37, i64 48, !6, i64 56}
!63 = !{!62, !37, i64 36}
!64 = !{!62, !6, i64 24}
!65 = !{!62, !6, i64 8}
!66 = !{!62, !37, i64 32}
!67 = !{!37, !37, i64 0}
!68 = !{!69, !6, i64 0}
!69 = !{!"_Rdma_WSR_Stream", !6, i64 0, !6, i64 8, !37, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !37, i64 56, !37, i64 60, !37, i64 64, !6, i64 72, !6, i64 80, !7, i64 88}
!70 = !{!69, !6, i64 8}
!71 = !{!69, !37, i64 16}
!72 = !{!69, !6, i64 48}
!73 = !{!48, !6, i64 72}
!74 = !{!62, !6, i64 56}
!75 = !{!62, !37, i64 48}
!76 = !{!77, !6, i64 0}
!77 = !{!"_RdmaWriterContactInfo", !6, i64 0, !38, i64 8, !6, i64 16, !40, i64 24}
!78 = !{!77, !38, i64 8}
!79 = !{!77, !6, i64 16}
!80 = !{!40, !6, i64 0}
!81 = !{!48, !6, i64 48}
!82 = !{!48, !6, i64 0}
!83 = !{!69, !6, i64 40}
!84 = !{!40, !38, i64 8}
!85 = !{!69, !6, i64 24}
!86 = !{!69, !6, i64 32}
!87 = !{i64 0, i64 8, !32, i64 8, i64 8, !88}
!88 = !{!38, !38, i64 0}
!89 = !{!39, !38, i64 16}
!90 = !{!69, !37, i64 60}
!91 = !{!69, !37, i64 64}
!92 = !{!69, !37, i64 56}
!93 = !{!69, !6, i64 80}
!94 = !{!36, !6, i64 144}
!95 = !{!36, !37, i64 136}
!96 = !{!36, !6, i64 160}
!97 = !{!36, !6, i64 168}
!98 = !{!36, !6, i64 152}
!99 = !{!36, !6, i64 56}
!100 = !{!101, !6, i64 8}
!101 = !{!"_RdmaStepLogEntry", !38, i64 0, !6, i64 8, !6, i64 16, !37, i64 24, !38, i64 32, !37, i64 40}
!102 = !{!103, !6, i64 0}
!103 = !{!"_RdmaRankReqLog", !6, i64 0, !37, i64 8, !7, i64 12, !7, i64 16, !38, i64 24, !7, i64 32, !6, i64 40}
!104 = !{!103, !6, i64 40}
!105 = !{!39, !6, i64 0}
!106 = !{!101, !38, i64 32}
!107 = !{!108, !6, i64 40}
!108 = !{!"_RdmaCompletionHandle", !6, i64 0, !6, i64 8, !6, i64 16, !38, i64 24, !37, i64 32, !37, i64 36, !6, i64 40}
!109 = !{!108, !37, i64 36}
!110 = !{!36, !37, i64 16}
!111 = !{!108, !6, i64 8}
!112 = !{!108, !6, i64 16}
!113 = !{!108, !37, i64 32}
!114 = !{!108, !38, i64 24}
!115 = !{!116, !6, i64 8}
!116 = !{!"_TimestepEntry", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !38, i64 56, !38, i64 64, !37, i64 72}
!117 = !{!116, !38, i64 0}
!118 = !{!116, !6, i64 16}
!119 = !{!116, !37, i64 72}
!120 = !{!116, !6, i64 48}
!121 = !{!122, !6, i64 8}
!122 = !{!"_SstData", !38, i64 0, !6, i64 8}
!123 = !{!122, !38, i64 0}
!124 = !{!116, !6, i64 40}
!125 = !{!116, !38, i64 56}
!126 = !{!48, !37, i64 16}
!127 = !{!62, !6, i64 40}
!128 = !{!116, !6, i64 32}
!129 = !{!116, !6, i64 24}
!130 = !{!7, !7, i64 0}
!131 = !{!36, !6, i64 48}
!132 = !{!101, !6, i64 16}
!133 = !{!77, !6, i64 24}
!134 = !{!50, !38, i64 8}
!135 = !{!50, !38, i64 16}
!136 = !{!50, !6, i64 96}
!137 = !{!138, !37, i64 36}
!138 = !{!"fi_domain_attr", !6, i64 0, !6, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !37, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !6, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !37, i64 184}
!139 = !{!138, !7, i64 20}
!140 = !{!138, !7, i64 24}
!141 = !{!50, !6, i64 88}
!142 = !{!143, !7, i64 0}
!143 = !{!"fi_ep_attr", !7, i64 0, !37, i64 4, !37, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !6, i64 88}
!144 = !{!145, !6, i64 104}
!145 = !{!"_SstParams", !38, i64 0, !37, i64 8, !38, i64 16, !38, i64 24, !6, i64 32, !6, i64 40, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !38, i64 64, !37, i64 72, !37, i64 76, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !38, i64 112, !38, i64 120, !37, i64 128, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !37, i64 148, !6, i64 152}
!146 = !{!50, !6, i64 104}
!147 = !{!148, !6, i64 16}
!148 = !{!"fi_fabric_attr", !6, i64 0, !6, i64 8, !6, i64 16, !37, i64 24, !37, i64 28}
!149 = !{!138, !6, i64 8}
!150 = !{!50, !6, i64 48}
!151 = !{!50, !6, i64 0}
!152 = !{!143, !38, i64 24}
!153 = !{!48, !38, i64 32}
!154 = !{!48, !37, i64 20}
!155 = !{!48, !38, i64 24}
!156 = !{!48, !6, i64 40}
!157 = !{!158, !7, i64 0}
!158 = !{!"fi_av_attr", !7, i64 0, !37, i64 4, !38, i64 8, !38, i64 16, !6, i64 24, !6, i64 32, !38, i64 40}
!159 = !{!158, !38, i64 8}
!160 = !{!158, !38, i64 16}
!161 = !{!162, !38, i64 0}
!162 = !{!"fi_cq_attr", !38, i64 0, !38, i64 8, !7, i64 16, !7, i64 20, !37, i64 24, !7, i64 28, !6, i64 32}
!163 = !{!162, !7, i64 16}
!164 = !{!162, !7, i64 20}
!165 = !{!162, !7, i64 28}
!166 = !{!48, !6, i64 64}
!167 = !{!168, !6, i64 32}
!168 = !{!"fid_ep", !169, i64 0, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!169 = !{!"fid", !38, i64 0, !6, i64 8, !6, i64 16}
!170 = !{!171, !6, i64 16}
!171 = !{!"fi_ops_cm", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!172 = !{!173, !6, i64 24}
!173 = !{!"fid_fabric", !169, i64 0, !6, i64 24, !37, i64 32}
!174 = !{!175, !6, i64 8}
!175 = !{!"fi_ops_fabric", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!176 = !{!177, !6, i64 24}
!177 = !{!"fid_domain", !169, i64 0, !6, i64 24, !6, i64 32}
!178 = !{!179, !6, i64 24}
!179 = !{!"fi_ops_domain", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!180 = !{!179, !6, i64 8}
!181 = !{!168, !6, i64 16}
!182 = !{!183, !6, i64 16}
!183 = !{!"fi_ops", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!184 = !{!179, !6, i64 16}
!185 = !{!183, !6, i64 24}
!186 = !{!187, !6, i64 24}
!187 = !{!"fid_av", !169, i64 0, !6, i64 24}
!188 = !{!189, !6, i64 8}
!189 = !{!"fi_ops_av", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56}
!190 = !{!177, !6, i64 32}
!191 = !{!192, !6, i64 8}
!192 = !{!"fi_ops_mr", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!193 = !{!194, !38, i64 32}
!194 = !{!"fid_mr", !169, i64 0, !6, i64 24, !38, i64 32}
!195 = !{!103, !37, i64 8}
!196 = !{!39, !38, i64 24}
!197 = !{!108, !6, i64 0}
!198 = !{!101, !38, i64 0}
!199 = !{!101, !37, i64 40}
!200 = !{!101, !37, i64 24}
!201 = !{!103, !38, i64 24}
!202 = !{!203, !6, i64 0}
!203 = !{!"fi_cq_data_entry", !6, i64 0, !38, i64 8, !38, i64 16, !6, i64 24, !38, i64 32}
!204 = !{!203, !38, i64 8}
!205 = !{!194, !6, i64 24}
!206 = !{!168, !6, i64 48}
!207 = !{!208, !6, i64 8}
!208 = !{!"fi_ops_rma", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!209 = !{!210, !6, i64 24}
!210 = !{!"fid_cq", !169, i64 0, !6, i64 24}
!211 = !{!212, !6, i64 32}
!212 = !{!"fi_ops_cq", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56}
!213 = !{!169, !6, i64 16}
!214 = !{!183, !6, i64 8}
!215 = !{!203, !38, i64 32}
!216 = !{!203, !6, i64 24}
!217 = !{!203, !38, i64 16}
!218 = !{!69, !6, i64 72}
!219 = !{!116, !38, i64 64}
!220 = !{!208, !6, i64 64}
!221 = !{!39, !38, i64 8}
!222 = !{!36, !6, i64 96}
!223 = !{!36, !6, i64 200}
!224 = !{!36, !6, i64 208}
!225 = !{!36, !6, i64 216}
!226 = !{!168, !6, i64 40}
!227 = !{!228, !6, i64 8}
!228 = !{!"fi_ops_msg", !38, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!229 = !{!208, !6, i64 32}
