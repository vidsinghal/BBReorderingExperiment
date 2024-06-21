; ModuleID = 'samples/953.bc'
source_filename = "crypto/x509/v3_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, ptr, i64, ptr, i64, ptr }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, ptr, ptr }
%struct.v3_ext_method = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.IPAddressFamily_st = type { ptr, ptr }
%struct.asn1_string_st = type { i32, i32, ptr, i64 }
%struct.IPAddressChoice_st = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.IPAddressOrRange_st = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.IPAddressRange_st = type { ptr, ptr }
%struct.CONF_VALUE = type { ptr, ptr, ptr }
%struct.x509_store_ctx_st = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, %struct.crypto_ex_data_st, ptr, i32, ptr, ptr }
%struct.crypto_ex_data_st = type { ptr, ptr }
%struct.x509_st = type { %struct.x509_cinf_st, %struct.X509_algor_st, %struct.asn1_string_st, %struct.x509_sig_info_st, i32, %struct.crypto_ex_data_st, i64, i64, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [20 x i8], ptr, ptr, i32, ptr, ptr, ptr }
%struct.x509_cinf_st = type { ptr, %struct.asn1_string_st, %struct.X509_algor_st, ptr, %struct.X509_val_st, ptr, ptr, ptr, ptr, ptr, %struct.ASN1_ENCODING_st }
%struct.X509_val_st = type { ptr, ptr }
%struct.ASN1_ENCODING_st = type { ptr, i64, i32 }
%struct.X509_algor_st = type { ptr, ptr }
%struct.x509_sig_info_st = type { i32, i32, i32, i32 }

@IPAddressRange_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, ptr @IPAddressRange_seq_tt, i64 2, ptr null, i64 16, ptr @.str }, align 8
@IPAddressRange_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, ptr @.str.4, ptr @ASN1_BIT_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, ptr @.str.5, ptr @ASN1_BIT_STRING_it }], align 16
@.str = private unnamed_addr constant [15 x i8] c"IPAddressRange\00", align 1
@IPAddressOrRange_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, ptr @IPAddressOrRange_ch_tt, i64 2, ptr null, i64 16, ptr @.str.1 }, align 8
@IPAddressOrRange_ch_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, ptr @.str.6, ptr @ASN1_BIT_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, ptr @.str.7, ptr @IPAddressRange_it }], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"IPAddressOrRange\00", align 1
@IPAddressChoice_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, ptr @IPAddressChoice_ch_tt, i64 2, ptr null, i64 16, ptr @.str.2 }, align 8
@IPAddressChoice_ch_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, ptr @.str.8, ptr @ASN1_NULL_it }, %struct.ASN1_TEMPLATE_st { i64 4, i64 0, i64 8, ptr @.str.9, ptr @IPAddressOrRange_it }], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c"IPAddressChoice\00", align 1
@IPAddressFamily_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, ptr @IPAddressFamily_seq_tt, i64 2, ptr null, i64 16, ptr @.str.3 }, align 8
@IPAddressFamily_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, ptr @.str.10, ptr @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, ptr @.str.11, ptr @IPAddressChoice_it }], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"IPAddressFamily\00", align 1
@ossl_v3_addr = constant %struct.v3_ext_method { i32 290, i32 0, ptr @IPAddrBlocks_it, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v2i_IPAddrBlocks, ptr @i2r_IPAddrBlocks, ptr null, ptr null }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"u.addressPrefix\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"u.addressRange\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"u.inherit\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"u.addressesOrRanges\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"addressFamily\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ipAddressChoice\00", align 1
@IPAddrBlocks_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 0, i64 -1, ptr @IPAddrBlocks_item_tt, i64 0, ptr null, i64 0, ptr @.str.12 }, align 8
@IPAddrBlocks_item_tt = internal constant %struct.ASN1_TEMPLATE_st { i64 4, i64 0, i64 0, ptr @.str.12, ptr @IPAddressFamily_it }, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"IPAddrBlocks\00", align 1
@v2i_IPAddrBlocks.v4addr_chars = internal constant [12 x i8] c"0123456789.\00", align 1
@v2i_IPAddrBlocks.v6addr_chars = internal constant [25 x i8] c"0123456789.:abcdefABCDEF\00", align 16
@.str.13 = private unnamed_addr constant [22 x i8] c"crypto/x509/v3_addr.c\00", align 1
@__func__.v2i_IPAddrBlocks = private unnamed_addr constant [17 x i8] c"v2i_IPAddrBlocks\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"IPv4\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"IPv6\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"IPv4-SAFI\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"IPv6-SAFI\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c", value=\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%*sIPv4\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"%*sIPv6\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"%*sUnknown AFI %u\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c" (Unicast)\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c" (Multicast)\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c" (Unicast/Multicast)\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c" (MPLS)\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c" (Tunnel)\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c" (VPLS)\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c" (BGP MDT)\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c" (MPLS-labeled VPN)\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c" (Unknown SAFI %u)\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c": inherit\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"/%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%x%s\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@__func__.addr_validate_path_internal = private unnamed_addr constant [28 x i8] c"addr_validate_path_internal\00", align 1

; Function Attrs: nounwind uwtable
define ptr @IPAddressRange_it() #0 {
entry:
  ret ptr @IPAddressRange_it.local_it
}

; Function Attrs: nounwind uwtable
define ptr @IPAddressOrRange_it() #0 {
entry:
  ret ptr @IPAddressOrRange_it.local_it
}

; Function Attrs: nounwind uwtable
define ptr @IPAddressChoice_it() #0 {
entry:
  ret ptr @IPAddressChoice_it.local_it
}

; Function Attrs: nounwind uwtable
define ptr @IPAddressFamily_it() #0 {
entry:
  ret ptr @IPAddressFamily_it.local_it
}

; Function Attrs: nounwind uwtable
define ptr @d2i_IPAddressRange(ptr noundef %a, ptr noundef %in, i64 noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !8
  %call = call ptr @IPAddressRange_it()
  %call1 = call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %call)
  ret ptr %call1
}

declare ptr @ASN1_item_d2i(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @i2d_IPAddressRange(ptr noundef %a, ptr noundef %out) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressRange_it()
  %call1 = call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef %call)
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @IPAddressRange_new() #0 {
entry:
  %call = call ptr @IPAddressRange_it()
  %call1 = call ptr @ASN1_item_new(ptr noundef %call)
  ret ptr %call1
}

declare ptr @ASN1_item_new(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @IPAddressRange_free(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressRange_it()
  call void @ASN1_item_free(ptr noundef %0, ptr noundef %call)
  ret void
}

declare void @ASN1_item_free(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define ptr @d2i_IPAddressOrRange(ptr noundef %a, ptr noundef %in, i64 noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !8
  %call = call ptr @IPAddressOrRange_it()
  %call1 = call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define i32 @i2d_IPAddressOrRange(ptr noundef %a, ptr noundef %out) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressOrRange_it()
  %call1 = call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define ptr @IPAddressOrRange_new() #0 {
entry:
  %call = call ptr @IPAddressOrRange_it()
  %call1 = call ptr @ASN1_item_new(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define void @IPAddressOrRange_free(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressOrRange_it()
  call void @ASN1_item_free(ptr noundef %0, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @d2i_IPAddressChoice(ptr noundef %a, ptr noundef %in, i64 noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !8
  %call = call ptr @IPAddressChoice_it()
  %call1 = call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define i32 @i2d_IPAddressChoice(ptr noundef %a, ptr noundef %out) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressChoice_it()
  %call1 = call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define ptr @IPAddressChoice_new() #0 {
entry:
  %call = call ptr @IPAddressChoice_it()
  %call1 = call ptr @ASN1_item_new(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define void @IPAddressChoice_free(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressChoice_it()
  call void @ASN1_item_free(ptr noundef %0, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @d2i_IPAddressFamily(ptr noundef %a, ptr noundef %in, i64 noundef %len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %in, ptr %in.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %in.addr, align 8, !tbaa !4
  %2 = load i64, ptr %len.addr, align 8, !tbaa !8
  %call = call ptr @IPAddressFamily_it()
  %call1 = call ptr @ASN1_item_d2i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define i32 @i2d_IPAddressFamily(ptr noundef %a, ptr noundef %out) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressFamily_it()
  %call1 = call i32 @ASN1_item_i2d(ptr noundef %0, ptr noundef %1, ptr noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define ptr @IPAddressFamily_new() #0 {
entry:
  %call = call ptr @IPAddressFamily_it()
  %call1 = call ptr @ASN1_item_new(ptr noundef %call)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
define void @IPAddressFamily_free(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call ptr @IPAddressFamily_it()
  call void @ASN1_item_free(ptr noundef %0, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_get_afi(ptr noundef %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %addressFamily = getelementptr inbounds %struct.IPAddressFamily_st, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %addressFamily, align 8, !tbaa !10
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %addressFamily3 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %addressFamily3, align 8, !tbaa !10
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %data, align 8, !tbaa !12
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %addressFamily6 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %addressFamily6, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %length, align 8, !tbaa !15
  %cmp7 = icmp slt i32 %8, 2
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %9 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %addressFamily8 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %addressFamily8, align 8, !tbaa !10
  %data9 = getelementptr inbounds %struct.asn1_string_st, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %data9, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %12 to i32
  %shl = shl i32 %conv, 8
  %13 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %addressFamily10 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %addressFamily10, align 8, !tbaa !10
  %data11 = getelementptr inbounds %struct.asn1_string_st, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %data11, align 8, !tbaa !12
  %arrayidx12 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx12, align 1, !tbaa !16
  %conv13 = zext i8 %16 to i32
  %or = or i32 %shl, %conv13
  store i32 %or, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_add_inherit(ptr noundef %addr, i32 noundef %afi, ptr noundef %safi) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %safi.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  store ptr %safi, ptr %safi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %0 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %2 = load ptr, ptr %safi.addr, align 8, !tbaa !4
  %call = call ptr @make_IPAddressFamily(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  store ptr %call, ptr %f, align 8, !tbaa !4
  %3 = load ptr, ptr %f, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice3 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ipAddressChoice3, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.IPAddressChoice_st, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %type, align 8, !tbaa !19
  %cmp4 = icmp eq i32 %8, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %9 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice5 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %ipAddressChoice5, align 8, !tbaa !18
  %u = getelementptr inbounds %struct.IPAddressChoice_st, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %u, align 8, !tbaa !16
  %cmp6 = icmp ne ptr %11, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  %12 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice7 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %ipAddressChoice7, align 8, !tbaa !18
  %type8 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %type8, align 8, !tbaa !19
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %land.lhs.true10, label %if.end15

land.lhs.true10:                                  ; preds = %if.end
  %15 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice11 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %ipAddressChoice11, align 8, !tbaa !18
  %u12 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %u12, align 8, !tbaa !16
  %cmp13 = icmp ne ptr %17, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true10
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true10, %if.end
  %18 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice16 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %ipAddressChoice16, align 8, !tbaa !18
  %u17 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %u17, align 8, !tbaa !16
  %cmp18 = icmp eq ptr %20, null
  br i1 %cmp18, label %land.lhs.true19, label %if.end25

land.lhs.true19:                                  ; preds = %if.end15
  %call20 = call ptr @ASN1_NULL_new()
  %21 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice21 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %ipAddressChoice21, align 8, !tbaa !18
  %u22 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %22, i32 0, i32 1
  store ptr %call20, ptr %u22, align 8, !tbaa !16
  %cmp23 = icmp eq ptr %call20, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true19
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true19, %if.end15
  %23 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice26 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %ipAddressChoice26, align 8, !tbaa !18
  %type27 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %24, i32 0, i32 0
  store i32 0, ptr %type27, align 8, !tbaa !19
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal ptr @make_IPAddressFamily(ptr noundef %addr, i32 noundef %afi, ptr noundef %safi) #0 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %safi.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %key = alloca [3 x i8], align 1
  %keylen = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  store ptr %safi, ptr %safi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr %key) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %keylen) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %arrayidx = getelementptr inbounds [3 x i8], ptr %key, i64 0, i64 0
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !16
  %1 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %and1 = and i32 %1, 255
  %conv2 = trunc i32 %and1 to i8
  %arrayidx3 = getelementptr inbounds [3 x i8], ptr %key, i64 0, i64 1
  store i8 %conv2, ptr %arrayidx3, align 1, !tbaa !16
  %2 = load ptr, ptr %safi.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %safi.addr, align 8, !tbaa !4
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %and5 = and i32 %4, 255
  %conv6 = trunc i32 %and5 to i8
  %arrayidx7 = getelementptr inbounds [3 x i8], ptr %key, i64 0, i64 2
  store i8 %conv6, ptr %arrayidx7, align 1, !tbaa !16
  store i32 3, ptr %keylen, align 4, !tbaa !17
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 2, ptr %keylen, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !17
  %6 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %6)
  %call8 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp9 = icmp slt i32 %5, %call8
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call11 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %7)
  %8 = load i32, ptr %i, align 4, !tbaa !17
  %call12 = call ptr @OPENSSL_sk_value(ptr noundef %call11, i32 noundef %8)
  store ptr %call12, ptr %f, align 8, !tbaa !4
  %9 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily = getelementptr inbounds %struct.IPAddressFamily_st, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %addressFamily, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %length, align 8, !tbaa !15
  %12 = load i32, ptr %keylen, align 4, !tbaa !17
  %cmp13 = icmp eq i32 %11, %12
  br i1 %cmp13, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily15 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %addressFamily15, align 8, !tbaa !10
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %data, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds [3 x i8], ptr %key, i64 0, i64 0
  %16 = load i32, ptr %keylen, align 4, !tbaa !17
  %conv16 = sext i32 %16 to i64
  %call17 = call i32 @memcmp(ptr noundef %15, ptr noundef %arraydecay, i64 noundef %conv16) #9
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %f, align 8, !tbaa !4
  store ptr %17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %18 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %call20 = call ptr @IPAddressFamily_new()
  store ptr %call20, ptr %f, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end
  br label %err

if.end24:                                         ; preds = %for.end
  %19 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %cmp25 = icmp eq ptr %20, null
  br i1 %cmp25, label %land.lhs.true27, label %if.end33

land.lhs.true27:                                  ; preds = %if.end24
  %call28 = call ptr @IPAddressChoice_new()
  %21 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice29 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %21, i32 0, i32 1
  store ptr %call28, ptr %ipAddressChoice29, align 8, !tbaa !18
  %cmp30 = icmp eq ptr %call28, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true27
  br label %err

if.end33:                                         ; preds = %land.lhs.true27, %if.end24
  %22 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily34 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %addressFamily34, align 8, !tbaa !10
  %cmp35 = icmp eq ptr %23, null
  br i1 %cmp35, label %land.lhs.true37, label %if.end43

land.lhs.true37:                                  ; preds = %if.end33
  %call38 = call ptr @ASN1_OCTET_STRING_new()
  %24 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily39 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %24, i32 0, i32 0
  store ptr %call38, ptr %addressFamily39, align 8, !tbaa !10
  %cmp40 = icmp eq ptr %call38, null
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true37
  br label %err

if.end43:                                         ; preds = %land.lhs.true37, %if.end33
  %25 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily44 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %addressFamily44, align 8, !tbaa !10
  %arraydecay45 = getelementptr inbounds [3 x i8], ptr %key, i64 0, i64 0
  %27 = load i32, ptr %keylen, align 4, !tbaa !17
  %call46 = call i32 @ASN1_OCTET_STRING_set(ptr noundef %26, ptr noundef %arraydecay45, i32 noundef %27)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end43
  br label %err

if.end49:                                         ; preds = %if.end43
  %28 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call50 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %28)
  %29 = load ptr, ptr %f, align 8, !tbaa !4
  %call51 = call ptr @ossl_check_IPAddressFamily_type(ptr noundef %29)
  %call52 = call i32 @OPENSSL_sk_push(ptr noundef %call50, ptr noundef %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end49
  br label %err

if.end55:                                         ; preds = %if.end49
  %30 = load ptr, ptr %f, align 8, !tbaa !4
  store ptr %30, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then54, %if.then48, %if.then42, %if.then32, %if.then23
  %31 = load ptr, ptr %f, align 8, !tbaa !4
  call void @IPAddressFamily_free(ptr noundef %31)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end55, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %keylen) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr %key) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
}

declare ptr @ASN1_NULL_new() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_add_prefix(ptr noundef %addr, i32 noundef %afi, ptr noundef %safi, ptr noundef %a, i32 noundef %prefixlen) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %safi.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %prefixlen.addr = alloca i32, align 4
  %aors = alloca ptr, align 8
  %aor = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  store ptr %safi, ptr %safi.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i32 %prefixlen, ptr %prefixlen.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %aors) #8
  %0 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %2 = load ptr, ptr %safi.addr, align 8, !tbaa !4
  %call = call ptr @make_prefix_or_range(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  store ptr %call, ptr %aors, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aor) #8
  %3 = load ptr, ptr %aors, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load i32, ptr %prefixlen.addr, align 4, !tbaa !17
  %6 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %call1 = call i32 @length_from_afi(i32 noundef %6)
  %call2 = call i32 @make_addressPrefix(ptr noundef %aor, ptr noundef %4, i32 noundef %5, i32 noundef %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %aors, align 8, !tbaa !4
  %call3 = call ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %7)
  %8 = load ptr, ptr %aor, align 8, !tbaa !4
  %call4 = call ptr @ossl_check_IPAddressOrRange_type(ptr noundef %8)
  %call5 = call i32 @OPENSSL_sk_push(ptr noundef %call3, ptr noundef %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %aor, align 8, !tbaa !4
  call void @IPAddressOrRange_free(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %aor) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %aors) #8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal ptr @make_prefix_or_range(ptr noundef %addr, i32 noundef %afi, ptr noundef %safi) #0 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %safi.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %aors = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  store ptr %safi, ptr %safi.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %0 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %2 = load ptr, ptr %safi.addr, align 8, !tbaa !4
  %call = call ptr @make_IPAddressFamily(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  store ptr %call, ptr %f, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aors) #8
  store ptr null, ptr %aors, align 8, !tbaa !4
  %3 = load ptr, ptr %f, align 8, !tbaa !4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice3 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ipAddressChoice3, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.IPAddressChoice_st, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %type, align 8, !tbaa !19
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %9 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice5 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %ipAddressChoice5, align 8, !tbaa !18
  %u = getelementptr inbounds %struct.IPAddressChoice_st, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %u, align 8, !tbaa !16
  %cmp6 = icmp ne ptr %11, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  %12 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice7 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %ipAddressChoice7, align 8, !tbaa !18
  %type8 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %type8, align 8, !tbaa !19
  %cmp9 = icmp eq i32 %14, 1
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  %15 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice11 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %ipAddressChoice11, align 8, !tbaa !18
  %u12 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %u12, align 8, !tbaa !16
  store ptr %17, ptr %aors, align 8, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  %18 = load ptr, ptr %aors, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %18, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %19 = load ptr, ptr %aors, align 8, !tbaa !4
  store ptr %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call17 = call ptr @OPENSSL_sk_new_null()
  store ptr %call17, ptr %aors, align 8, !tbaa !4
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %20 = load i32, ptr %afi.addr, align 4, !tbaa !17
  switch i32 %20, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.end20
  %21 = load ptr, ptr %aors, align 8, !tbaa !4
  %call21 = call ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %21)
  %call22 = call ptr @ossl_check_IPAddressOrRange_compfunc_type(ptr noundef @v4IPAddressOrRange_cmp)
  %call23 = call ptr @OPENSSL_sk_set_cmp_func(ptr noundef %call21, ptr noundef %call22)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end20
  %22 = load ptr, ptr %aors, align 8, !tbaa !4
  %call25 = call ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %22)
  %call26 = call ptr @ossl_check_IPAddressOrRange_compfunc_type(ptr noundef @v6IPAddressOrRange_cmp)
  %call27 = call ptr @OPENSSL_sk_set_cmp_func(ptr noundef %call25, ptr noundef %call26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end20, %sw.bb24, %sw.bb
  %23 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice28 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %ipAddressChoice28, align 8, !tbaa !18
  %type29 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %24, i32 0, i32 0
  store i32 1, ptr %type29, align 8, !tbaa !19
  %25 = load ptr, ptr %aors, align 8, !tbaa !4
  %26 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice30 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %ipAddressChoice30, align 8, !tbaa !18
  %u31 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %27, i32 0, i32 1
  store ptr %25, ptr %u31, align 8, !tbaa !16
  %28 = load ptr, ptr %aors, align 8, !tbaa !4
  store ptr %28, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then19, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %aors) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define internal i32 @make_addressPrefix(ptr noundef %result, ptr noundef %addr, i32 noundef %prefixlen, i32 noundef %afilen) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %prefixlen.addr = alloca i32, align 4
  %afilen.addr = alloca i32, align 4
  %bytelen = alloca i32, align 4
  %bitlen = alloca i32, align 4
  %aor = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store i32 %prefixlen, ptr %prefixlen.addr, align 4, !tbaa !17
  store i32 %afilen, ptr %afilen.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytelen) #8
  %0 = load i32, ptr %prefixlen.addr, align 4, !tbaa !17
  %add = add nsw i32 %0, 7
  %div = sdiv i32 %add, 8
  store i32 %div, ptr %bytelen, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitlen) #8
  %1 = load i32, ptr %prefixlen.addr, align 4, !tbaa !17
  %rem = srem i32 %1, 8
  store i32 %rem, ptr %bitlen, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %aor) #8
  %call = call ptr @IPAddressOrRange_new()
  store ptr %call, ptr %aor, align 8, !tbaa !4
  %2 = load i32, ptr %prefixlen.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %prefixlen.addr, align 4, !tbaa !17
  %4 = load i32, ptr %afilen.addr, align 4, !tbaa !17
  %mul = mul nsw i32 %4, 8
  %cmp1 = icmp sgt i32 %3, %mul
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %aor, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %aor, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %6, i32 0, i32 0
  store i32 0, ptr %type, align 8, !tbaa !23
  %7 = load ptr, ptr %aor, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %u, align 8, !tbaa !16
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end4
  %call6 = call ptr @ASN1_BIT_STRING_new()
  %9 = load ptr, ptr %aor, align 8, !tbaa !4
  %u7 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %9, i32 0, i32 1
  store ptr %call6, ptr %u7, align 8, !tbaa !16
  %cmp8 = icmp eq ptr %call6, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  br label %err

if.end10:                                         ; preds = %land.lhs.true, %if.end4
  %10 = load ptr, ptr %aor, align 8, !tbaa !4
  %u11 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %u11, align 8, !tbaa !16
  %12 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %13 = load i32, ptr %bytelen, align 4, !tbaa !17
  %call12 = call i32 @ASN1_BIT_STRING_set(ptr noundef %11, ptr noundef %12, i32 noundef %13)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  br label %err

if.end14:                                         ; preds = %if.end10
  %14 = load ptr, ptr %aor, align 8, !tbaa !4
  %u15 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %u15, align 8, !tbaa !16
  %flags = getelementptr inbounds %struct.asn1_string_st, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %flags, align 8, !tbaa !25
  %and = and i64 %16, -8
  store i64 %and, ptr %flags, align 8, !tbaa !25
  %17 = load ptr, ptr %aor, align 8, !tbaa !4
  %u16 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %u16, align 8, !tbaa !16
  %flags17 = getelementptr inbounds %struct.asn1_string_st, ptr %18, i32 0, i32 3
  %19 = load i64, ptr %flags17, align 8, !tbaa !25
  %or = or i64 %19, 8
  store i64 %or, ptr %flags17, align 8, !tbaa !25
  %20 = load i32, ptr %bitlen, align 4, !tbaa !17
  %cmp18 = icmp sgt i32 %20, 0
  br i1 %cmp18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end14
  %21 = load i32, ptr %bitlen, align 4, !tbaa !17
  %shr = ashr i32 255, %21
  %not = xor i32 %shr, -1
  %22 = load ptr, ptr %aor, align 8, !tbaa !4
  %u20 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %u20, align 8, !tbaa !16
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %data, align 8, !tbaa !12
  %25 = load i32, ptr %bytelen, align 4, !tbaa !17
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %26 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %26 to i32
  %and21 = and i32 %conv, %not
  %conv22 = trunc i32 %and21 to i8
  store i8 %conv22, ptr %arrayidx, align 1, !tbaa !16
  %27 = load i32, ptr %bitlen, align 4, !tbaa !17
  %sub23 = sub nsw i32 8, %27
  %conv24 = sext i32 %sub23 to i64
  %28 = load ptr, ptr %aor, align 8, !tbaa !4
  %u25 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %u25, align 8, !tbaa !16
  %flags26 = getelementptr inbounds %struct.asn1_string_st, ptr %29, i32 0, i32 3
  %30 = load i64, ptr %flags26, align 8, !tbaa !25
  %or27 = or i64 %30, %conv24
  store i64 %or27, ptr %flags26, align 8, !tbaa !25
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.end14
  %31 = load ptr, ptr %aor, align 8, !tbaa !4
  %32 = load ptr, ptr %result.addr, align 8, !tbaa !4
  store ptr %31, ptr %32, align 8, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then13, %if.then9
  %33 = load ptr, ptr %aor, align 8, !tbaa !4
  call void @IPAddressOrRange_free(ptr noundef %33)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end28, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %aor) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytelen) #8
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @length_from_afi(i32 noundef %afi) #0 {
entry:
  %retval = alloca i32, align 4
  %afi.addr = alloca i32, align 4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  %0 = load i32, ptr %afi.addr, align 4, !tbaa !17
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 16, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_IPAddressOrRange_type(ptr noundef %ptr) #3 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_add_range(ptr noundef %addr, i32 noundef %afi, ptr noundef %safi, ptr noundef %min, ptr noundef %max) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %safi.addr = alloca ptr, align 8
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %aors = alloca ptr, align 8
  %aor = alloca ptr, align 8
  %length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  store ptr %safi, ptr %safi.addr, align 8, !tbaa !4
  store ptr %min, ptr %min.addr, align 8, !tbaa !4
  store ptr %max, ptr %max.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aors) #8
  %0 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %1 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %2 = load ptr, ptr %safi.addr, align 8, !tbaa !4
  %call = call ptr @make_prefix_or_range(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  store ptr %call, ptr %aors, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %aor) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #8
  %3 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %call1 = call i32 @length_from_afi(i32 noundef %3)
  store i32 %call1, ptr %length, align 4, !tbaa !17
  %4 = load ptr, ptr %aors, align 8, !tbaa !4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %7 = load i32, ptr %length, align 4, !tbaa !17
  %call2 = call i32 @make_addressRange(ptr noundef %aor, ptr noundef %5, ptr noundef %6, i32 noundef %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %aors, align 8, !tbaa !4
  %call5 = call ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %8)
  %9 = load ptr, ptr %aor, align 8, !tbaa !4
  %call6 = call ptr @ossl_check_IPAddressOrRange_type(ptr noundef %9)
  %call7 = call i32 @OPENSSL_sk_push(ptr noundef %call5, ptr noundef %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %10 = load ptr, ptr %aor, align 8, !tbaa !4
  call void @IPAddressOrRange_free(ptr noundef %10)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %aor) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %aors) #8
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @make_addressRange(ptr noundef %result, ptr noundef %min, ptr noundef %max, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %aor = alloca ptr, align 8
  %i = alloca i32, align 4
  %prefixlen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %b = alloca i8, align 1
  %j = alloca i32, align 4
  %b105 = alloca i8, align 1
  %j109 = alloca i32, align 4
  store ptr %result, ptr %result.addr, align 8, !tbaa !4
  store ptr %min, ptr %min.addr, align 8, !tbaa !4
  store ptr %max, ptr %max.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %aor) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefixlen) #8
  %0 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %2 = load i32, ptr %length.addr, align 4, !tbaa !17
  %conv = sext i32 %2 to i64
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %conv) #9
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %5 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call2 = call i32 @range_should_be_prefix(ptr noundef %3, ptr noundef %4, i32 noundef %5)
  store i32 %call2, ptr %prefixlen, align 4, !tbaa !17
  %cmp3 = icmp sge i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %result.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %8 = load i32, ptr %prefixlen, align 4, !tbaa !17
  %9 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call6 = call i32 @make_addressPrefix(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9)
  store i32 %call6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @IPAddressOrRange_new()
  store ptr %call8, ptr %aor, align 8, !tbaa !4
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %10 = load ptr, ptr %aor, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %10, i32 0, i32 0
  store i32 1, ptr %type, align 8, !tbaa !23
  %call13 = call ptr @IPAddressRange_new()
  %11 = load ptr, ptr %aor, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %11, i32 0, i32 1
  store ptr %call13, ptr %u, align 8, !tbaa !16
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  br label %err

if.end17:                                         ; preds = %if.end12
  %12 = load ptr, ptr %aor, align 8, !tbaa !4
  %u18 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %u18, align 8, !tbaa !16
  %min19 = getelementptr inbounds %struct.IPAddressRange_st, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %min19, align 8, !tbaa !26
  %cmp20 = icmp eq ptr %14, null
  br i1 %cmp20, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end17
  %call22 = call ptr @ASN1_BIT_STRING_new()
  %15 = load ptr, ptr %aor, align 8, !tbaa !4
  %u23 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %u23, align 8, !tbaa !16
  %min24 = getelementptr inbounds %struct.IPAddressRange_st, ptr %16, i32 0, i32 0
  store ptr %call22, ptr %min24, align 8, !tbaa !26
  %cmp25 = icmp eq ptr %call22, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  br label %err

if.end28:                                         ; preds = %land.lhs.true, %if.end17
  %17 = load ptr, ptr %aor, align 8, !tbaa !4
  %u29 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %u29, align 8, !tbaa !16
  %max30 = getelementptr inbounds %struct.IPAddressRange_st, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %max30, align 8, !tbaa !28
  %cmp31 = icmp eq ptr %19, null
  br i1 %cmp31, label %land.lhs.true33, label %if.end40

land.lhs.true33:                                  ; preds = %if.end28
  %call34 = call ptr @ASN1_BIT_STRING_new()
  %20 = load ptr, ptr %aor, align 8, !tbaa !4
  %u35 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %u35, align 8, !tbaa !16
  %max36 = getelementptr inbounds %struct.IPAddressRange_st, ptr %21, i32 0, i32 1
  store ptr %call34, ptr %max36, align 8, !tbaa !28
  %cmp37 = icmp eq ptr %call34, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true33
  br label %err

if.end40:                                         ; preds = %land.lhs.true33, %if.end28
  %22 = load i32, ptr %length.addr, align 4, !tbaa !17
  store i32 %22, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end40
  %23 = load i32, ptr %i, align 4, !tbaa !17
  %cmp41 = icmp sgt i32 %23, 0
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %24 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %25 = load i32, ptr %i, align 4, !tbaa !17
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %26 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv43 = zext i8 %26 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %27 = phi i1 [ false, %for.cond ], [ %cmp44, %land.rhs ]
  br i1 %27, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4, !tbaa !17
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %land.end
  %29 = load ptr, ptr %aor, align 8, !tbaa !4
  %u46 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %u46, align 8, !tbaa !16
  %min47 = getelementptr inbounds %struct.IPAddressRange_st, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %min47, align 8, !tbaa !26
  %32 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !17
  %call48 = call i32 @ASN1_BIT_STRING_set(ptr noundef %31, ptr noundef %32, i32 noundef %33)
  %tobool = icmp ne i32 %call48, 0
  br i1 %tobool, label %if.end50, label %if.then49

if.then49:                                        ; preds = %for.end
  br label %err

if.end50:                                         ; preds = %for.end
  %34 = load ptr, ptr %aor, align 8, !tbaa !4
  %u51 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %u51, align 8, !tbaa !16
  %min52 = getelementptr inbounds %struct.IPAddressRange_st, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %min52, align 8, !tbaa !26
  %flags = getelementptr inbounds %struct.asn1_string_st, ptr %36, i32 0, i32 3
  %37 = load i64, ptr %flags, align 8, !tbaa !25
  %and = and i64 %37, -8
  store i64 %and, ptr %flags, align 8, !tbaa !25
  %38 = load ptr, ptr %aor, align 8, !tbaa !4
  %u53 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %u53, align 8, !tbaa !16
  %min54 = getelementptr inbounds %struct.IPAddressRange_st, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %min54, align 8, !tbaa !26
  %flags55 = getelementptr inbounds %struct.asn1_string_st, ptr %40, i32 0, i32 3
  %41 = load i64, ptr %flags55, align 8, !tbaa !25
  %or = or i64 %41, 8
  store i64 %or, ptr %flags55, align 8, !tbaa !25
  %42 = load i32, ptr %i, align 4, !tbaa !17
  %cmp56 = icmp sgt i32 %42, 0
  br i1 %cmp56, label %if.then58, label %if.end72

if.then58:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #8
  %43 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %44 = load i32, ptr %i, align 4, !tbaa !17
  %sub59 = sub nsw i32 %44, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %43, i64 %idxprom60
  %45 = load i8, ptr %arrayidx61, align 1, !tbaa !16
  store i8 %45, ptr %b, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 1, ptr %j, align 4, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then58
  %46 = load i8, ptr %b, align 1, !tbaa !16
  %conv62 = zext i8 %46 to i32
  %47 = load i32, ptr %j, align 4, !tbaa !17
  %shr = lshr i32 255, %47
  %and63 = and i32 %conv62, %shr
  %cmp64 = icmp ne i32 %and63, 0
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %48 = load i32, ptr %j, align 4, !tbaa !17
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %j, align 4, !tbaa !17
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  %49 = load i32, ptr %j, align 4, !tbaa !17
  %sub66 = sub nsw i32 8, %49
  %conv67 = sext i32 %sub66 to i64
  %50 = load ptr, ptr %aor, align 8, !tbaa !4
  %u68 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %u68, align 8, !tbaa !16
  %min69 = getelementptr inbounds %struct.IPAddressRange_st, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %min69, align 8, !tbaa !26
  %flags70 = getelementptr inbounds %struct.asn1_string_st, ptr %52, i32 0, i32 3
  %53 = load i64, ptr %flags70, align 8, !tbaa !25
  %or71 = or i64 %53, %conv67
  store i64 %or71, ptr %flags70, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #8
  br label %if.end72

if.end72:                                         ; preds = %while.end, %if.end50
  %54 = load i32, ptr %length.addr, align 4, !tbaa !17
  store i32 %54, ptr %i, align 4, !tbaa !17
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc85, %if.end72
  %55 = load i32, ptr %i, align 4, !tbaa !17
  %cmp74 = icmp sgt i32 %55, 0
  br i1 %cmp74, label %land.rhs76, label %land.end83

land.rhs76:                                       ; preds = %for.cond73
  %56 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %57 = load i32, ptr %i, align 4, !tbaa !17
  %sub77 = sub nsw i32 %57, 1
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %56, i64 %idxprom78
  %58 = load i8, ptr %arrayidx79, align 1, !tbaa !16
  %conv80 = zext i8 %58 to i32
  %cmp81 = icmp eq i32 %conv80, 255
  br label %land.end83

land.end83:                                       ; preds = %land.rhs76, %for.cond73
  %59 = phi i1 [ false, %for.cond73 ], [ %cmp81, %land.rhs76 ]
  br i1 %59, label %for.body84, label %for.end87

for.body84:                                       ; preds = %land.end83
  br label %for.inc85

for.inc85:                                        ; preds = %for.body84
  %60 = load i32, ptr %i, align 4, !tbaa !17
  %dec86 = add nsw i32 %60, -1
  store i32 %dec86, ptr %i, align 4, !tbaa !17
  br label %for.cond73, !llvm.loop !31

for.end87:                                        ; preds = %land.end83
  %61 = load ptr, ptr %aor, align 8, !tbaa !4
  %u88 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %u88, align 8, !tbaa !16
  %max89 = getelementptr inbounds %struct.IPAddressRange_st, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %max89, align 8, !tbaa !28
  %64 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %65 = load i32, ptr %i, align 4, !tbaa !17
  %call90 = call i32 @ASN1_BIT_STRING_set(ptr noundef %63, ptr noundef %64, i32 noundef %65)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %for.end87
  br label %err

if.end93:                                         ; preds = %for.end87
  %66 = load ptr, ptr %aor, align 8, !tbaa !4
  %u94 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %u94, align 8, !tbaa !16
  %max95 = getelementptr inbounds %struct.IPAddressRange_st, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %max95, align 8, !tbaa !28
  %flags96 = getelementptr inbounds %struct.asn1_string_st, ptr %68, i32 0, i32 3
  %69 = load i64, ptr %flags96, align 8, !tbaa !25
  %and97 = and i64 %69, -8
  store i64 %and97, ptr %flags96, align 8, !tbaa !25
  %70 = load ptr, ptr %aor, align 8, !tbaa !4
  %u98 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %u98, align 8, !tbaa !16
  %max99 = getelementptr inbounds %struct.IPAddressRange_st, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %max99, align 8, !tbaa !28
  %flags100 = getelementptr inbounds %struct.asn1_string_st, ptr %72, i32 0, i32 3
  %73 = load i64, ptr %flags100, align 8, !tbaa !25
  %or101 = or i64 %73, 8
  store i64 %or101, ptr %flags100, align 8, !tbaa !25
  %74 = load i32, ptr %i, align 4, !tbaa !17
  %cmp102 = icmp sgt i32 %74, 0
  br i1 %cmp102, label %if.then104, label %if.end126

if.then104:                                       ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 1, ptr %b105) #8
  %75 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %76 = load i32, ptr %i, align 4, !tbaa !17
  %sub106 = sub nsw i32 %76, 1
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %75, i64 %idxprom107
  %77 = load i8, ptr %arrayidx108, align 1, !tbaa !16
  store i8 %77, ptr %b105, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %j109) #8
  store i32 1, ptr %j109, align 4, !tbaa !17
  br label %while.cond110

while.cond110:                                    ; preds = %while.body117, %if.then104
  %78 = load i8, ptr %b105, align 1, !tbaa !16
  %conv111 = zext i8 %78 to i32
  %79 = load i32, ptr %j109, align 4, !tbaa !17
  %shr112 = lshr i32 255, %79
  %and113 = and i32 %conv111, %shr112
  %80 = load i32, ptr %j109, align 4, !tbaa !17
  %shr114 = lshr i32 255, %80
  %cmp115 = icmp ne i32 %and113, %shr114
  br i1 %cmp115, label %while.body117, label %while.end119

while.body117:                                    ; preds = %while.cond110
  %81 = load i32, ptr %j109, align 4, !tbaa !17
  %inc118 = add nsw i32 %81, 1
  store i32 %inc118, ptr %j109, align 4, !tbaa !17
  br label %while.cond110, !llvm.loop !32

while.end119:                                     ; preds = %while.cond110
  %82 = load i32, ptr %j109, align 4, !tbaa !17
  %sub120 = sub nsw i32 8, %82
  %conv121 = sext i32 %sub120 to i64
  %83 = load ptr, ptr %aor, align 8, !tbaa !4
  %u122 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %u122, align 8, !tbaa !16
  %max123 = getelementptr inbounds %struct.IPAddressRange_st, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %max123, align 8, !tbaa !28
  %flags124 = getelementptr inbounds %struct.asn1_string_st, ptr %85, i32 0, i32 3
  %86 = load i64, ptr %flags124, align 8, !tbaa !25
  %or125 = or i64 %86, %conv121
  store i64 %or125, ptr %flags124, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %j109) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %b105) #8
  br label %if.end126

if.end126:                                        ; preds = %while.end119, %if.end93
  %87 = load ptr, ptr %aor, align 8, !tbaa !4
  %88 = load ptr, ptr %result.addr, align 8, !tbaa !4
  store ptr %87, ptr %88, align 8, !tbaa !4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then92, %if.then49, %if.then39, %if.then27, %if.then16
  %89 = load ptr, ptr %aor, align 8, !tbaa !4
  call void @IPAddressOrRange_free(ptr noundef %89)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end126, %if.then11, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefixlen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %aor) #8
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_get_range(ptr noundef %aor, i32 noundef %afi, ptr noundef %min, ptr noundef %max, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %aor.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %afi_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %aor, ptr %aor.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  store ptr %min, ptr %min.addr, align 8, !tbaa !4
  store ptr %max, ptr %max.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %afi_length) #8
  %0 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %call = call i32 @length_from_afi(i32 noundef %0)
  store i32 %call, ptr %afi_length, align 4, !tbaa !17
  %1 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, ptr %afi_length, align 4, !tbaa !17
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %5 = load i32, ptr %length.addr, align 4, !tbaa !17
  %6 = load i32, ptr %afi_length, align 4, !tbaa !17
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %7 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %type, align 8, !tbaa !23
  %cmp9 = icmp ne i32 %8, 0
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false12

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %9 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %type10 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %type10, align 8, !tbaa !23
  %cmp11 = icmp ne i32 %10, 1
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true, %lor.lhs.false8
  %11 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %14 = load i32, ptr %afi_length, align 4, !tbaa !17
  %call13 = call i32 @extract_min_max(ptr noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %14)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false12, %land.lhs.true, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %15 = load i32, ptr %afi_length, align 4, !tbaa !17
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %afi_length) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @extract_min_max(ptr noundef %aor, ptr noundef %min, ptr noundef %max, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %aor.addr = alloca ptr, align 8
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  store ptr %aor, ptr %aor.addr, align 8, !tbaa !4
  store ptr %min, ptr %min.addr, align 8, !tbaa !4
  store ptr %max, ptr %max.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !17
  %0 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %type, align 8, !tbaa !23
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %u, align 8, !tbaa !16
  %8 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call = call i32 @addr_expand(ptr noundef %5, ptr noundef %7, i32 noundef %8, i8 noundef zeroext 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb
  %9 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %u4 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %u4, align 8, !tbaa !16
  %12 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call5 = call i32 @addr_expand(ptr noundef %9, ptr noundef %11, i32 noundef %12, i8 noundef zeroext -1)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %13 = phi i1 [ false, %sw.bb ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %if.end
  %14 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %u8 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %u8, align 8, !tbaa !16
  %min9 = getelementptr inbounds %struct.IPAddressRange_st, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %min9, align 8, !tbaa !26
  %18 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call10 = call i32 @addr_expand(ptr noundef %14, ptr noundef %17, i32 noundef %18, i8 noundef zeroext 0)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs12, label %land.end17

land.rhs12:                                       ; preds = %sw.bb7
  %19 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %aor.addr, align 8, !tbaa !4
  %u13 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %u13, align 8, !tbaa !16
  %max14 = getelementptr inbounds %struct.IPAddressRange_st, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %max14, align 8, !tbaa !28
  %23 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call15 = call i32 @addr_expand(ptr noundef %19, ptr noundef %22, i32 noundef %23, i8 noundef zeroext -1)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end17

land.end17:                                       ; preds = %land.rhs12, %sw.bb7
  %24 = phi i1 [ false, %sw.bb7 ], [ %tobool16, %land.rhs12 ]
  %land.ext18 = zext i1 %24 to i32
  store i32 %land.ext18, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %land.end17, %land.end, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_is_canonical(ptr noundef %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %a_min = alloca [16 x i8], align 16
  %a_max = alloca [16 x i8], align 16
  %b_min = alloca [16 x i8], align 16
  %b_max = alloca [16 x i8], align 16
  %aors = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %f = alloca ptr, align 8
  %length = alloca i32, align 4
  %a48 = alloca ptr, align 8
  %b51 = alloca ptr, align 8
  %a125 = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_min) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_max) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_min) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_max) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %aors) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %0 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup166

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !tbaa !17
  %2 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %2)
  %call1 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %sub = sub nsw i32 %call1, 1
  %cmp2 = icmp slt i32 %1, %sub
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #8
  %3 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call3 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %3)
  %4 = load i32, ptr %i, align 4, !tbaa !17
  %call4 = call ptr @OPENSSL_sk_value(ptr noundef %call3, i32 noundef %4)
  store ptr %call4, ptr %a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8
  %5 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call5 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %5)
  %6 = load i32, ptr %i, align 4, !tbaa !17
  %add = add nsw i32 %6, 1
  %call6 = call ptr @OPENSSL_sk_value(ptr noundef %call5, i32 noundef %add)
  store ptr %call6, ptr %b, align 8, !tbaa !4
  %7 = load ptr, ptr %a, align 8, !tbaa !4
  %call7 = call i32 @IPAddressFamily_check_len(ptr noundef %7)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %b, align 8, !tbaa !4
  %call8 = call i32 @IPAddressFamily_check_len(ptr noundef %8)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = call i32 @IPAddressFamily_cmp(ptr noundef %a, ptr noundef %b)
  %cmp13 = icmp sge i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup166 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc163, %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !17
  %11 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call18 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %11)
  %call19 = call i32 @OPENSSL_sk_num(ptr noundef %call18)
  %cmp20 = icmp slt i32 %10, %call19
  br i1 %cmp20, label %for.body21, label %for.end165

for.body21:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %12 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call22 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %12)
  %13 = load i32, ptr %i, align 4, !tbaa !17
  %call23 = call ptr @OPENSSL_sk_value(ptr noundef %call22, i32 noundef %13)
  store ptr %call23, ptr %f, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #8
  %14 = load ptr, ptr %f, align 8, !tbaa !4
  %call24 = call i32 @X509v3_addr_get_afi(ptr noundef %14)
  %call25 = call i32 @length_from_afi(i32 noundef %call24)
  store i32 %call25, ptr %length, align 4, !tbaa !17
  %15 = load ptr, ptr %f, align 8, !tbaa !4
  %cmp26 = icmp eq ptr %15, null
  br i1 %cmp26, label %if.then29, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %for.body21
  %16 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %cmp28 = icmp eq ptr %17, null
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %lor.lhs.false27, %for.body21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

if.end30:                                         ; preds = %lor.lhs.false27
  %18 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice31 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %ipAddressChoice31, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.IPAddressChoice_st, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %type, align 8, !tbaa !19
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.end30
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

sw.default:                                       ; preds = %if.end30
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

sw.epilog:                                        ; preds = %if.end30
  %21 = load ptr, ptr %f, align 8, !tbaa !4
  %call32 = call i32 @IPAddressFamily_check_len(ptr noundef %21)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %sw.epilog
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

if.end35:                                         ; preds = %sw.epilog
  %22 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice36 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %ipAddressChoice36, align 8, !tbaa !18
  %u = getelementptr inbounds %struct.IPAddressChoice_st, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %u, align 8, !tbaa !16
  store ptr %24, ptr %aors, align 8, !tbaa !4
  %25 = load ptr, ptr %aors, align 8, !tbaa !4
  %call37 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %25)
  %call38 = call i32 @OPENSSL_sk_num(ptr noundef %call37)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end35
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

if.end41:                                         ; preds = %if.end35
  store i32 0, ptr %j, align 4, !tbaa !17
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc119, %if.end41
  %26 = load i32, ptr %j, align 4, !tbaa !17
  %27 = load ptr, ptr %aors, align 8, !tbaa !4
  %call43 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %27)
  %call44 = call i32 @OPENSSL_sk_num(ptr noundef %call43)
  %sub45 = sub nsw i32 %call44, 1
  %cmp46 = icmp slt i32 %26, %sub45
  br i1 %cmp46, label %for.body47, label %for.end121

for.body47:                                       ; preds = %for.cond42
  call void @llvm.lifetime.start.p0(i64 8, ptr %a48) #8
  %28 = load ptr, ptr %aors, align 8, !tbaa !4
  %call49 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %28)
  %29 = load i32, ptr %j, align 4, !tbaa !17
  %call50 = call ptr @OPENSSL_sk_value(ptr noundef %call49, i32 noundef %29)
  store ptr %call50, ptr %a48, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b51) #8
  %30 = load ptr, ptr %aors, align 8, !tbaa !4
  %call52 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %30)
  %31 = load i32, ptr %j, align 4, !tbaa !17
  %add53 = add nsw i32 %31, 1
  %call54 = call ptr @OPENSSL_sk_value(ptr noundef %call52, i32 noundef %add53)
  store ptr %call54, ptr %b51, align 8, !tbaa !4
  %32 = load ptr, ptr %a48, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay55 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %33 = load i32, ptr %length, align 4, !tbaa !17
  %call56 = call i32 @extract_min_max(ptr noundef %32, ptr noundef %arraydecay, ptr noundef %arraydecay55, i32 noundef %33)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %lor.lhs.false58, label %if.then63

lor.lhs.false58:                                  ; preds = %for.body47
  %34 = load ptr, ptr %b51, align 8, !tbaa !4
  %arraydecay59 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %arraydecay60 = getelementptr inbounds [16 x i8], ptr %b_max, i64 0, i64 0
  %35 = load i32, ptr %length, align 4, !tbaa !17
  %call61 = call i32 @extract_min_max(ptr noundef %34, ptr noundef %arraydecay59, ptr noundef %arraydecay60, i32 noundef %35)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %lor.lhs.false58, %for.body47
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

if.end64:                                         ; preds = %lor.lhs.false58
  %arraydecay65 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay66 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %36 = load i32, ptr %length, align 4, !tbaa !17
  %conv = sext i32 %36 to i64
  %call67 = call i32 @memcmp(ptr noundef %arraydecay65, ptr noundef %arraydecay66, i64 noundef %conv) #9
  %cmp68 = icmp sge i32 %call67, 0
  br i1 %cmp68, label %if.then84, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end64
  %arraydecay71 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay72 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %37 = load i32, ptr %length, align 4, !tbaa !17
  %conv73 = sext i32 %37 to i64
  %call74 = call i32 @memcmp(ptr noundef %arraydecay71, ptr noundef %arraydecay72, i64 noundef %conv73) #9
  %cmp75 = icmp sgt i32 %call74, 0
  br i1 %cmp75, label %if.then84, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false70
  %arraydecay78 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %arraydecay79 = getelementptr inbounds [16 x i8], ptr %b_max, i64 0, i64 0
  %38 = load i32, ptr %length, align 4, !tbaa !17
  %conv80 = sext i32 %38 to i64
  %call81 = call i32 @memcmp(ptr noundef %arraydecay78, ptr noundef %arraydecay79, i64 noundef %conv80) #9
  %cmp82 = icmp sgt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %lor.lhs.false77, %lor.lhs.false70, %if.end64
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

if.end85:                                         ; preds = %lor.lhs.false77
  %39 = load i32, ptr %length, align 4, !tbaa !17
  %sub86 = sub nsw i32 %39, 1
  store i32 %sub86, ptr %k, align 4, !tbaa !17
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc94, %if.end85
  %40 = load i32, ptr %k, align 4, !tbaa !17
  %cmp88 = icmp sge i32 %40, 0
  br i1 %cmp88, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond87
  %41 = load i32, ptr %k, align 4, !tbaa !17
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 %idxprom
  %42 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %dec = add i8 %42, -1
  store i8 %dec, ptr %arrayidx, align 1, !tbaa !16
  %conv90 = zext i8 %42 to i32
  %cmp91 = icmp eq i32 %conv90, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond87
  %43 = phi i1 [ false, %for.cond87 ], [ %cmp91, %land.rhs ]
  br i1 %43, label %for.body93, label %for.end96

for.body93:                                       ; preds = %land.end
  br label %for.inc94

for.inc94:                                        ; preds = %for.body93
  %44 = load i32, ptr %k, align 4, !tbaa !17
  %dec95 = add nsw i32 %44, -1
  store i32 %dec95, ptr %k, align 4, !tbaa !17
  br label %for.cond87, !llvm.loop !34

for.end96:                                        ; preds = %land.end
  %arraydecay97 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %arraydecay98 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %45 = load i32, ptr %length, align 4, !tbaa !17
  %conv99 = sext i32 %45 to i64
  %call100 = call i32 @memcmp(ptr noundef %arraydecay97, ptr noundef %arraydecay98, i64 noundef %conv99) #9
  %cmp101 = icmp sge i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %for.end96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

if.end104:                                        ; preds = %for.end96
  %46 = load ptr, ptr %a48, align 8, !tbaa !4
  %type105 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %46, i32 0, i32 0
  %47 = load i32, ptr %type105, align 8, !tbaa !23
  %cmp106 = icmp eq i32 %47, 1
  br i1 %cmp106, label %land.lhs.true, label %if.end114

land.lhs.true:                                    ; preds = %if.end104
  %arraydecay108 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay109 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %48 = load i32, ptr %length, align 4, !tbaa !17
  %call110 = call i32 @range_should_be_prefix(ptr noundef %arraydecay108, ptr noundef %arraydecay109, i32 noundef %48)
  %cmp111 = icmp sge i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

if.end114:                                        ; preds = %land.lhs.true, %if.end104
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup115

cleanup115:                                       ; preds = %if.end114, %if.then113, %if.then103, %if.then84, %if.then63
  call void @llvm.lifetime.end.p0(i64 8, ptr %b51) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a48) #8
  %cleanup.dest117 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest117, label %cleanup159 [
    i32 0, label %cleanup.cont118
  ]

cleanup.cont118:                                  ; preds = %cleanup115
  br label %for.inc119

for.inc119:                                       ; preds = %cleanup.cont118
  %49 = load i32, ptr %j, align 4, !tbaa !17
  %inc120 = add nsw i32 %49, 1
  store i32 %inc120, ptr %j, align 4, !tbaa !17
  br label %for.cond42, !llvm.loop !35

for.end121:                                       ; preds = %for.cond42
  %50 = load ptr, ptr %aors, align 8, !tbaa !4
  %call122 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %50)
  %call123 = call i32 @OPENSSL_sk_num(ptr noundef %call122)
  %sub124 = sub nsw i32 %call123, 1
  store i32 %sub124, ptr %j, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %a125) #8
  %51 = load ptr, ptr %aors, align 8, !tbaa !4
  %call126 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %51)
  %52 = load i32, ptr %j, align 4, !tbaa !17
  %call127 = call ptr @OPENSSL_sk_value(ptr noundef %call126, i32 noundef %52)
  store ptr %call127, ptr %a125, align 8, !tbaa !4
  %53 = load ptr, ptr %a125, align 8, !tbaa !4
  %cmp128 = icmp ne ptr %53, null
  br i1 %cmp128, label %land.lhs.true130, label %if.end155

land.lhs.true130:                                 ; preds = %for.end121
  %54 = load ptr, ptr %a125, align 8, !tbaa !4
  %type131 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %type131, align 8, !tbaa !23
  %cmp132 = icmp eq i32 %55, 1
  br i1 %cmp132, label %if.then134, label %if.end155

if.then134:                                       ; preds = %land.lhs.true130
  %56 = load ptr, ptr %a125, align 8, !tbaa !4
  %arraydecay135 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay136 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %57 = load i32, ptr %length, align 4, !tbaa !17
  %call137 = call i32 @extract_min_max(ptr noundef %56, ptr noundef %arraydecay135, ptr noundef %arraydecay136, i32 noundef %57)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.then134
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

if.end140:                                        ; preds = %if.then134
  %arraydecay141 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay142 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %58 = load i32, ptr %length, align 4, !tbaa !17
  %conv143 = sext i32 %58 to i64
  %call144 = call i32 @memcmp(ptr noundef %arraydecay141, ptr noundef %arraydecay142, i64 noundef %conv143) #9
  %cmp145 = icmp sgt i32 %call144, 0
  br i1 %cmp145, label %if.then153, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end140
  %arraydecay148 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay149 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %59 = load i32, ptr %length, align 4, !tbaa !17
  %call150 = call i32 @range_should_be_prefix(ptr noundef %arraydecay148, ptr noundef %arraydecay149, i32 noundef %59)
  %cmp151 = icmp sge i32 %call150, 0
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %lor.lhs.false147, %if.end140
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

if.end154:                                        ; preds = %lor.lhs.false147
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %land.lhs.true130, %for.end121
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup156

cleanup156:                                       ; preds = %if.end155, %if.then153, %if.then139
  call void @llvm.lifetime.end.p0(i64 8, ptr %a125) #8
  %cleanup.dest157 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest157, label %cleanup159 [
    i32 0, label %cleanup.cont158
  ]

cleanup.cont158:                                  ; preds = %cleanup156
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup159

cleanup159:                                       ; preds = %cleanup.cont158, %cleanup156, %cleanup115, %if.then40, %if.then34, %sw.default, %sw.bb, %if.then29
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %cleanup.dest161 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest161, label %cleanup166 [
    i32 0, label %cleanup.cont162
    i32 7, label %for.inc163
  ]

cleanup.cont162:                                  ; preds = %cleanup159
  br label %for.inc163

for.inc163:                                       ; preds = %cleanup.cont162, %cleanup159
  %60 = load i32, ptr %i, align 4, !tbaa !17
  %inc164 = add nsw i32 %60, 1
  store i32 %inc164, ptr %i, align 4, !tbaa !17
  br label %for.cond17, !llvm.loop !36

for.end165:                                       ; preds = %for.cond17
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup166

cleanup166:                                       ; preds = %for.end165, %cleanup159, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %aors) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_max) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_min) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_max) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_min) #8
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

declare i32 @OPENSSL_sk_num(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @IPAddressFamily_check_len(ptr noundef %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %addressFamily = getelementptr inbounds %struct.IPAddressFamily_st, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %addressFamily, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %length, align 8, !tbaa !15
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %addressFamily1 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %addressFamily1, align 8, !tbaa !10
  %length2 = getelementptr inbounds %struct.asn1_string_st, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %length2, align 8, !tbaa !15
  %cmp3 = icmp sgt i32 %5, 3
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @IPAddressFamily_cmp(ptr noundef %a_, ptr noundef %b_) #0 {
entry:
  %a_.addr = alloca ptr, align 8
  %b_.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %len = alloca i32, align 4
  %cmp5 = alloca i32, align 4
  store ptr %a_, ptr %a_.addr, align 8, !tbaa !4
  store ptr %b_, ptr %b_.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #8
  %0 = load ptr, ptr %a_.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %addressFamily = getelementptr inbounds %struct.IPAddressFamily_st, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %addressFamily, align 8, !tbaa !10
  store ptr %2, ptr %a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8
  %3 = load ptr, ptr %b_.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %3, align 8, !tbaa !4
  %addressFamily1 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %addressFamily1, align 8, !tbaa !10
  store ptr %5, ptr %b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8
  %6 = load ptr, ptr %a, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %length, align 8, !tbaa !15
  %8 = load ptr, ptr %b, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.asn1_string_st, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %length2, align 8, !tbaa !15
  %cmp = icmp sle i32 %7, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load ptr, ptr %a, align 8, !tbaa !4
  %length3 = getelementptr inbounds %struct.asn1_string_st, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %length3, align 8, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load ptr, ptr %b, align 8, !tbaa !4
  %length4 = getelementptr inbounds %struct.asn1_string_st, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %length4, align 8, !tbaa !15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, ptr %len, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmp5) #8
  %14 = load ptr, ptr %a, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %data, align 8, !tbaa !12
  %16 = load ptr, ptr %b, align 8, !tbaa !4
  %data6 = getelementptr inbounds %struct.asn1_string_st, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %data6, align 8, !tbaa !12
  %18 = load i32, ptr %len, align 4, !tbaa !17
  %conv = sext i32 %18 to i64
  %call = call i32 @memcmp(ptr noundef %15, ptr noundef %17, i64 noundef %conv) #9
  store i32 %call, ptr %cmp5, align 4, !tbaa !17
  %19 = load i32, ptr %cmp5, align 4, !tbaa !17
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  %20 = load i32, ptr %cmp5, align 4, !tbaa !17
  br label %cond.end11

cond.false8:                                      ; preds = %cond.end
  %21 = load ptr, ptr %a, align 8, !tbaa !4
  %length9 = getelementptr inbounds %struct.asn1_string_st, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %length9, align 8, !tbaa !15
  %23 = load ptr, ptr %b, align 8, !tbaa !4
  %length10 = getelementptr inbounds %struct.asn1_string_st, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %length10, align 8, !tbaa !15
  %sub = sub nsw i32 %22, %24
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false8, %cond.true7
  %cond12 = phi i32 [ %20, %cond.true7 ], [ %sub, %cond.false8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmp5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #8
  ret i32 %cond12
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @range_should_be_prefix(ptr noundef %min, ptr noundef %max, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %mask = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %min, ptr %min.addr, align 8, !tbaa !4
  store ptr %max, ptr %max.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 1, ptr %mask) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !17
  %1 = load i32, ptr %length.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %3 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %idxprom1
  %7 = load i8, ptr %arrayidx2, align 1, !tbaa !16
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %land.end
  %10 = load i32, ptr %length.addr, align 4, !tbaa !17
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr %j, align 4, !tbaa !17
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc22, %for.end
  %11 = load i32, ptr %j, align 4, !tbaa !17
  %cmp7 = icmp sge i32 %11, 0
  br i1 %cmp7, label %land.lhs.true, label %land.end20

land.lhs.true:                                    ; preds = %for.cond6
  %12 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %13 = load i32, ptr %j, align 4, !tbaa !17
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 %idxprom9
  %14 = load i8, ptr %arrayidx10, align 1, !tbaa !16
  %conv11 = zext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %land.rhs14, label %land.end20

land.rhs14:                                       ; preds = %land.lhs.true
  %15 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %16 = load i32, ptr %j, align 4, !tbaa !17
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 %idxprom15
  %17 = load i8, ptr %arrayidx16, align 1, !tbaa !16
  %conv17 = zext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 255
  br label %land.end20

land.end20:                                       ; preds = %land.rhs14, %land.lhs.true, %for.cond6
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond6 ], [ %cmp18, %land.rhs14 ]
  br i1 %18, label %for.body21, label %for.end23

for.body21:                                       ; preds = %land.end20
  br label %for.inc22

for.inc22:                                        ; preds = %for.body21
  %19 = load i32, ptr %j, align 4, !tbaa !17
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %j, align 4, !tbaa !17
  br label %for.cond6, !llvm.loop !38

for.end23:                                        ; preds = %land.end20
  %20 = load i32, ptr %i, align 4, !tbaa !17
  %21 = load i32, ptr %j, align 4, !tbaa !17
  %cmp24 = icmp slt i32 %20, %21
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.end23
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end23
  %22 = load i32, ptr %i, align 4, !tbaa !17
  %23 = load i32, ptr %j, align 4, !tbaa !17
  %cmp26 = icmp sgt i32 %22, %23
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end
  %24 = load i32, ptr %i, align 4, !tbaa !17
  %mul = mul nsw i32 %24, 8
  store i32 %mul, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %25 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %25, i64 %idxprom30
  %27 = load i8, ptr %arrayidx31, align 1, !tbaa !16
  %conv32 = zext i8 %27 to i32
  %28 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %29 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %28, i64 %idxprom33
  %30 = load i8, ptr %arrayidx34, align 1, !tbaa !16
  %conv35 = zext i8 %30 to i32
  %xor = xor i32 %conv32, %conv35
  %conv36 = trunc i32 %xor to i8
  store i8 %conv36, ptr %mask, align 1, !tbaa !16
  %31 = load i8, ptr %mask, align 1, !tbaa !16
  %conv37 = zext i8 %31 to i32
  switch i32 %conv37, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb38
    i32 7, label %sw.bb39
    i32 15, label %sw.bb40
    i32 31, label %sw.bb41
    i32 63, label %sw.bb42
    i32 127, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end29
  store i32 7, ptr %j, align 4, !tbaa !17
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end29
  store i32 6, ptr %j, align 4, !tbaa !17
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end29
  store i32 5, ptr %j, align 4, !tbaa !17
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end29
  store i32 4, ptr %j, align 4, !tbaa !17
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end29
  store i32 3, ptr %j, align 4, !tbaa !17
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end29
  store i32 2, ptr %j, align 4, !tbaa !17
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end29
  store i32 1, ptr %j, align 4, !tbaa !17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end29
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb
  %32 = load ptr, ptr %min.addr, align 8, !tbaa !4
  %33 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %32, i64 %idxprom44
  %34 = load i8, ptr %arrayidx45, align 1, !tbaa !16
  %conv46 = zext i8 %34 to i32
  %35 = load i8, ptr %mask, align 1, !tbaa !16
  %conv47 = zext i8 %35 to i32
  %and = and i32 %conv46, %conv47
  %cmp48 = icmp ne i32 %and, 0
  br i1 %cmp48, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %36 = load ptr, ptr %max.addr, align 8, !tbaa !4
  %37 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %36, i64 %idxprom50
  %38 = load i8, ptr %arrayidx51, align 1, !tbaa !16
  %conv52 = zext i8 %38 to i32
  %39 = load i8, ptr %mask, align 1, !tbaa !16
  %conv53 = zext i8 %39 to i32
  %and54 = and i32 %conv52, %conv53
  %40 = load i8, ptr %mask, align 1, !tbaa !16
  %conv55 = zext i8 %40 to i32
  %cmp56 = icmp ne i32 %and54, %conv55
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %lor.lhs.false, %sw.epilog
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %41 = load i32, ptr %i, align 4, !tbaa !17
  %mul59 = mul nsw i32 %41, 8
  %42 = load i32, ptr %j, align 4, !tbaa !17
  %add = add nsw i32 %mul59, %42
  store i32 %add, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then58, %sw.default, %if.then28, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %mask) #8
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_canonize(ptr noundef %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %f = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !17
  %1 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %1)
  %call1 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp = icmp slt i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %2 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call2 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %2)
  %3 = load i32, ptr %i, align 4, !tbaa !17
  %call3 = call ptr @OPENSSL_sk_value(ptr noundef %call2, i32 noundef %3)
  store ptr %call3, ptr %f, align 8, !tbaa !4
  %4 = load ptr, ptr %f, align 8, !tbaa !4
  %call4 = call i32 @IPAddressFamily_check_len(ptr noundef %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.IPAddressChoice_st, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type, align 8, !tbaa !19
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice6 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %ipAddressChoice6, align 8, !tbaa !18
  %u = getelementptr inbounds %struct.IPAddressChoice_st, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %u, align 8, !tbaa !16
  %11 = load ptr, ptr %f, align 8, !tbaa !4
  %call7 = call i32 @X509v3_addr_get_afi(ptr noundef %11)
  %call8 = call i32 @IPAddressOrRanges_canonize(ptr noundef %10, i32 noundef %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup20 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %12 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call12 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %13)
  %call13 = call ptr @ossl_check_IPAddressFamily_compfunc_type(ptr noundef @IPAddressFamily_cmp)
  %call14 = call ptr @OPENSSL_sk_set_cmp_func(ptr noundef %call12, ptr noundef %call13)
  %14 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call15 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %14)
  call void @OPENSSL_sk_sort(ptr noundef %call15)
  %15 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call16 = call i32 @X509v3_addr_is_canonical(ptr noundef %15)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

if.end19:                                         ; preds = %for.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %if.end19, %if.then18, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @IPAddressOrRanges_canonize(ptr noundef %aors, i32 noundef %afi) #0 {
entry:
  %retval = alloca i32, align 4
  %aors.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %length = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %a_min = alloca [16 x i8], align 16
  %a_max = alloca [16 x i8], align 16
  %b_min = alloca [16 x i8], align 16
  %b_max = alloca [16 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %merged = alloca ptr, align 8
  %a77 = alloca ptr, align 8
  %a_min85 = alloca [16 x i8], align 16
  %a_max86 = alloca [16 x i8], align 16
  store ptr %aors, ptr %aors.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #8
  %0 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %call = call i32 @length_from_afi(i32 noundef %0)
  store i32 %call, ptr %length, align 4, !tbaa !17
  %1 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call1 = call ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %1)
  call void @OPENSSL_sk_sort(ptr noundef %call1)
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc72, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !17
  %3 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call2 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %3)
  %call3 = call i32 @OPENSSL_sk_num(ptr noundef %call2)
  %sub = sub nsw i32 %call3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end73

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #8
  %4 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call4 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %4)
  %5 = load i32, ptr %i, align 4, !tbaa !17
  %call5 = call ptr @OPENSSL_sk_value(ptr noundef %call4, i32 noundef %5)
  store ptr %call5, ptr %a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8
  %6 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call6 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %6)
  %7 = load i32, ptr %i, align 4, !tbaa !17
  %add = add nsw i32 %7, 1
  %call7 = call ptr @OPENSSL_sk_value(ptr noundef %call6, i32 noundef %add)
  store ptr %call7, ptr %b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_min) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_max) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_min) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_max) #8
  %8 = load ptr, ptr %a, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %9 = load i32, ptr %length, align 4, !tbaa !17
  %call9 = call i32 @extract_min_max(ptr noundef %8, ptr noundef %arraydecay, ptr noundef %arraydecay8, i32 noundef %9)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %10 = load ptr, ptr %b, align 8, !tbaa !4
  %arraydecay10 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [16 x i8], ptr %b_max, i64 0, i64 0
  %11 = load i32, ptr %length, align 4, !tbaa !17
  %call12 = call i32 @extract_min_max(ptr noundef %10, ptr noundef %arraydecay10, ptr noundef %arraydecay11, i32 noundef %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay14 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %12 = load i32, ptr %length, align 4, !tbaa !17
  %conv = sext i32 %12 to i64
  %call16 = call i32 @memcmp(ptr noundef %arraydecay14, ptr noundef %arraydecay15, i64 noundef %conv) #9
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %if.then26, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %arraydecay20 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %b_max, i64 0, i64 0
  %13 = load i32, ptr %length, align 4, !tbaa !17
  %conv22 = sext i32 %13 to i64
  %call23 = call i32 @memcmp(ptr noundef %arraydecay20, ptr noundef %arraydecay21, i64 noundef %conv22) #9
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false19, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end27:                                         ; preds = %lor.lhs.false19
  %arraydecay28 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %arraydecay29 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %14 = load i32, ptr %length, align 4, !tbaa !17
  %conv30 = sext i32 %14 to i64
  %call31 = call i32 @memcmp(ptr noundef %arraydecay28, ptr noundef %arraydecay29, i64 noundef %conv30) #9
  %cmp32 = icmp sge i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end27
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end35:                                         ; preds = %if.end27
  %15 = load i32, ptr %length, align 4, !tbaa !17
  %sub36 = sub nsw i32 %15, 1
  store i32 %sub36, ptr %j, align 4, !tbaa !17
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %if.end35
  %16 = load i32, ptr %j, align 4, !tbaa !17
  %cmp38 = icmp sge i32 %16, 0
  br i1 %cmp38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond37
  %17 = load i32, ptr %j, align 4, !tbaa !17
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %dec = add i8 %18, -1
  store i8 %dec, ptr %arrayidx, align 1, !tbaa !16
  %conv40 = zext i8 %18 to i32
  %cmp41 = icmp eq i32 %conv40, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond37
  %19 = phi i1 [ false, %for.cond37 ], [ %cmp41, %land.rhs ]
  br i1 %19, label %for.body43, label %for.end

for.body43:                                       ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body43
  %20 = load i32, ptr %j, align 4, !tbaa !17
  %dec44 = add nsw i32 %20, -1
  store i32 %dec44, ptr %j, align 4, !tbaa !17
  br label %for.cond37, !llvm.loop !40

for.end:                                          ; preds = %land.end
  %arraydecay45 = getelementptr inbounds [16 x i8], ptr %a_max, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [16 x i8], ptr %b_min, i64 0, i64 0
  %21 = load i32, ptr %length, align 4, !tbaa !17
  %conv47 = sext i32 %21 to i64
  %call48 = call i32 @memcmp(ptr noundef %arraydecay45, ptr noundef %arraydecay46, i64 noundef %conv47) #9
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end65

if.then51:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %merged) #8
  %arraydecay52 = getelementptr inbounds [16 x i8], ptr %a_min, i64 0, i64 0
  %arraydecay53 = getelementptr inbounds [16 x i8], ptr %b_max, i64 0, i64 0
  %22 = load i32, ptr %length, align 4, !tbaa !17
  %call54 = call i32 @make_addressRange(ptr noundef %merged, ptr noundef %arraydecay52, ptr noundef %arraydecay53, i32 noundef %22)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.then51
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.then51
  %23 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call58 = call ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %23)
  %24 = load i32, ptr %i, align 4, !tbaa !17
  %25 = load ptr, ptr %merged, align 8, !tbaa !4
  %call59 = call ptr @ossl_check_IPAddressOrRange_type(ptr noundef %25)
  %call60 = call ptr @OPENSSL_sk_set(ptr noundef %call58, i32 noundef %24, ptr noundef %call59)
  %26 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call61 = call ptr @ossl_check_IPAddressOrRange_sk_type(ptr noundef %26)
  %27 = load i32, ptr %i, align 4, !tbaa !17
  %add62 = add nsw i32 %27, 1
  %call63 = call ptr @OPENSSL_sk_delete(ptr noundef %call61, i32 noundef %add62)
  %28 = load ptr, ptr %a, align 8, !tbaa !4
  call void @IPAddressOrRange_free(ptr noundef %28)
  %29 = load ptr, ptr %b, align 8, !tbaa !4
  call void @IPAddressOrRange_free(ptr noundef %29)
  %30 = load i32, ptr %i, align 4, !tbaa !17
  %dec64 = add nsw i32 %30, -1
  store i32 %dec64, ptr %i, align 4, !tbaa !17
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then56
  call void @llvm.lifetime.end.p0(i64 8, ptr %merged) #8
  br label %cleanup66

if.end65:                                         ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

cleanup66:                                        ; preds = %if.end65, %cleanup, %if.then34, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_max) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_min) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_max) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_min) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup109 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc72
  ]

cleanup.cont:                                     ; preds = %cleanup66
  br label %for.inc72

for.inc72:                                        ; preds = %cleanup.cont, %cleanup66
  %31 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !41

for.end73:                                        ; preds = %for.cond
  %32 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call74 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %32)
  %call75 = call i32 @OPENSSL_sk_num(ptr noundef %call74)
  %sub76 = sub nsw i32 %call75, 1
  store i32 %sub76, ptr %j, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %a77) #8
  %33 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call78 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %33)
  %34 = load i32, ptr %j, align 4, !tbaa !17
  %call79 = call ptr @OPENSSL_sk_value(ptr noundef %call78, i32 noundef %34)
  store ptr %call79, ptr %a77, align 8, !tbaa !4
  %35 = load ptr, ptr %a77, align 8, !tbaa !4
  %cmp80 = icmp ne ptr %35, null
  br i1 %cmp80, label %land.lhs.true, label %if.end105

land.lhs.true:                                    ; preds = %for.end73
  %36 = load ptr, ptr %a77, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %type, align 8, !tbaa !23
  %cmp82 = icmp eq i32 %37, 1
  br i1 %cmp82, label %if.then84, label %if.end105

if.then84:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_min85) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_max86) #8
  %38 = load ptr, ptr %a77, align 8, !tbaa !4
  %arraydecay87 = getelementptr inbounds [16 x i8], ptr %a_min85, i64 0, i64 0
  %arraydecay88 = getelementptr inbounds [16 x i8], ptr %a_max86, i64 0, i64 0
  %39 = load i32, ptr %length, align 4, !tbaa !17
  %call89 = call i32 @extract_min_max(ptr noundef %38, ptr noundef %arraydecay87, ptr noundef %arraydecay88, i32 noundef %39)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.then84
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101

if.end92:                                         ; preds = %if.then84
  %arraydecay93 = getelementptr inbounds [16 x i8], ptr %a_min85, i64 0, i64 0
  %arraydecay94 = getelementptr inbounds [16 x i8], ptr %a_max86, i64 0, i64 0
  %40 = load i32, ptr %length, align 4, !tbaa !17
  %conv95 = sext i32 %40 to i64
  %call96 = call i32 @memcmp(ptr noundef %arraydecay93, ptr noundef %arraydecay94, i64 noundef %conv95) #9
  %cmp97 = icmp sgt i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end92
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101

if.end100:                                        ; preds = %if.end92
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup101

cleanup101:                                       ; preds = %if.end100, %if.then99, %if.then91
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_max86) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_min85) #8
  %cleanup.dest103 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest103, label %cleanup106 [
    i32 0, label %cleanup.cont104
  ]

cleanup.cont104:                                  ; preds = %cleanup101
  br label %if.end105

if.end105:                                        ; preds = %cleanup.cont104, %land.lhs.true, %for.end73
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup106

cleanup106:                                       ; preds = %if.end105, %cleanup101
  call void @llvm.lifetime.end.p0(i64 8, ptr %a77) #8
  %cleanup.dest107 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest107, label %cleanup109 [
    i32 0, label %cleanup.cont108
  ]

cleanup.cont108:                                  ; preds = %cleanup106
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %cleanup.cont108, %cleanup106, %cleanup66
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

declare ptr @OPENSSL_sk_set_cmp_func(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_IPAddressFamily_compfunc_type(ptr noundef %cmp) #3 {
entry:
  %cmp.addr = alloca ptr, align 8
  store ptr %cmp, ptr %cmp.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cmp.addr, align 8, !tbaa !4
  ret ptr %0
}

declare void @OPENSSL_sk_sort(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @IPAddrBlocks_it() #0 {
entry:
  ret ptr @IPAddrBlocks_it.local_it
}

; Function Attrs: nounwind uwtable
define internal ptr @v2i_IPAddrBlocks(ptr noundef %method, ptr noundef %ctx, ptr noundef %values) #0 {
entry:
  %retval = alloca ptr, align 8
  %method.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %values.addr = alloca ptr, align 8
  %addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %val = alloca ptr, align 8
  %min = alloca [16 x i8], align 16
  %max = alloca [16 x i8], align 16
  %afi = alloca i32, align 4
  %safi = alloca ptr, align 8
  %safi_ = alloca i32, align 4
  %addr_chars = alloca ptr, align 8
  %prefixlen = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %delim = alloca i32, align 4
  %length = alloca i32, align 4
  store ptr %method, ptr %method.addr, align 8, !tbaa !4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %values, ptr %values.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #8
  store ptr null, ptr %addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #8
  store ptr null, ptr %s, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %call = call ptr @ossl_check_IPAddressFamily_compfunc_type(ptr noundef @IPAddressFamily_cmp)
  %call1 = call ptr @OPENSSL_sk_new(ptr noundef %call)
  store ptr %call1, ptr %addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 932, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, ptr noundef null)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4, !tbaa !17
  %1 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %call2 = call ptr @ossl_check_const_CONF_VALUE_sk_type(ptr noundef %1)
  %call3 = call i32 @OPENSSL_sk_num(ptr noundef %call2)
  %cmp4 = icmp slt i32 %0, %call3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8
  %2 = load ptr, ptr %values.addr, align 8, !tbaa !4
  %call5 = call ptr @ossl_check_const_CONF_VALUE_sk_type(ptr noundef %2)
  %3 = load i32, ptr %i, align 4, !tbaa !17
  %call6 = call ptr @OPENSSL_sk_value(ptr noundef %call5, i32 noundef %3)
  store ptr %call6, ptr %val, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %min) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %max) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %afi) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %safi) #8
  store ptr null, ptr %safi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %safi_) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr_chars) #8
  store ptr null, ptr %addr_chars, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefixlen) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %delim) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #8
  %4 = load ptr, ptr %val, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.CONF_VALUE, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %name, align 8, !tbaa !42
  %call7 = call i32 @ossl_v3_name_cmp(ptr noundef %5, ptr noundef @.str.14)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  store i32 1, ptr %afi, align 4, !tbaa !17
  br label %if.end28

if.else:                                          ; preds = %for.body
  %6 = load ptr, ptr %val, align 8, !tbaa !4
  %name9 = getelementptr inbounds %struct.CONF_VALUE, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %name9, align 8, !tbaa !42
  %call10 = call i32 @ossl_v3_name_cmp(ptr noundef %7, ptr noundef @.str.15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.else
  store i32 2, ptr %afi, align 4, !tbaa !17
  br label %if.end27

if.else13:                                        ; preds = %if.else
  %8 = load ptr, ptr %val, align 8, !tbaa !4
  %name14 = getelementptr inbounds %struct.CONF_VALUE, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %name14, align 8, !tbaa !42
  %call15 = call i32 @ossl_v3_name_cmp(ptr noundef %9, ptr noundef @.str.16)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.else13
  store i32 1, ptr %afi, align 4, !tbaa !17
  store ptr %safi_, ptr %safi, align 8, !tbaa !4
  br label %if.end26

if.else18:                                        ; preds = %if.else13
  %10 = load ptr, ptr %val, align 8, !tbaa !4
  %name19 = getelementptr inbounds %struct.CONF_VALUE, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %name19, align 8, !tbaa !42
  %call20 = call i32 @ossl_v3_name_cmp(ptr noundef %11, ptr noundef @.str.17)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else23, label %if.then22

if.then22:                                        ; preds = %if.else18
  store i32 2, ptr %afi, align 4, !tbaa !17
  store ptr %safi_, ptr %safi, align 8, !tbaa !4
  br label %if.end25

if.else23:                                        ; preds = %if.else18
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 954, ptr noundef @__func__.v2i_IPAddrBlocks)
  %12 = load ptr, ptr %val, align 8, !tbaa !4
  %name24 = getelementptr inbounds %struct.CONF_VALUE, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %name24, align 8, !tbaa !42
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 115, ptr noundef @.str.18, ptr noundef %13)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.then22
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then12
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then8
  %14 = load i32, ptr %afi, align 4, !tbaa !17
  switch i32 %14, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end28
  store ptr @v2i_IPAddrBlocks.v4addr_chars, ptr %addr_chars, align 8, !tbaa !4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end28
  store ptr @v2i_IPAddrBlocks.v6addr_chars, ptr %addr_chars, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end28, %sw.bb29, %sw.bb
  %15 = load i32, ptr %afi, align 4, !tbaa !17
  %call30 = call i32 @length_from_afi(i32 noundef %15)
  store i32 %call30, ptr %length, align 4, !tbaa !17
  %16 = load ptr, ptr %safi, align 8, !tbaa !4
  %cmp31 = icmp ne ptr %16, null
  br i1 %cmp31, label %if.then32, label %if.else47

if.then32:                                        ; preds = %sw.epilog
  %17 = load ptr, ptr %val, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.CONF_VALUE, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %value, align 8, !tbaa !44
  %call33 = call i64 @strtoul(ptr noundef %18, ptr noundef %t, i32 noundef 0) #8
  %conv = trunc i64 %call33 to i32
  %19 = load ptr, ptr %safi, align 8, !tbaa !4
  store i32 %conv, ptr %19, align 4, !tbaa !17
  %20 = load ptr, ptr %t, align 8, !tbaa !4
  %call34 = call i64 @strspn(ptr noundef %20, ptr noundef @.str.19) #9
  %21 = load ptr, ptr %t, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %21, i64 %call34
  store ptr %add.ptr, ptr %t, align 8, !tbaa !4
  %22 = load ptr, ptr %safi, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %cmp35 = icmp ugt i32 %23, 255
  br i1 %cmp35, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then32
  %24 = load ptr, ptr %t, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr, ptr %t, align 8, !tbaa !4
  %25 = load i8, ptr %24, align 1, !tbaa !16
  %conv37 = sext i8 %25 to i32
  %cmp38 = icmp ne i32 %conv37, 58
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %lor.lhs.false, %if.then32
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 978, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 164, ptr noundef null)
  %26 = load ptr, ptr %val, align 8, !tbaa !4
  %name41 = getelementptr inbounds %struct.CONF_VALUE, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %name41, align 8, !tbaa !42
  %28 = load ptr, ptr %val, align 8, !tbaa !4
  %value42 = getelementptr inbounds %struct.CONF_VALUE, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %value42, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %27, ptr noundef @.str.21, ptr noundef %29)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false
  %30 = load ptr, ptr %t, align 8, !tbaa !4
  %call44 = call i64 @strspn(ptr noundef %30, ptr noundef @.str.19) #9
  %31 = load ptr, ptr %t, align 8, !tbaa !4
  %add.ptr45 = getelementptr inbounds i8, ptr %31, i64 %call44
  store ptr %add.ptr45, ptr %t, align 8, !tbaa !4
  %32 = load ptr, ptr %t, align 8, !tbaa !4
  %call46 = call noalias ptr @CRYPTO_strdup(ptr noundef %32, ptr noundef @.str.13, i32 noundef 983)
  store ptr %call46, ptr %s, align 8, !tbaa !4
  br label %if.end50

if.else47:                                        ; preds = %sw.epilog
  %33 = load ptr, ptr %val, align 8, !tbaa !4
  %value48 = getelementptr inbounds %struct.CONF_VALUE, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %value48, align 8, !tbaa !44
  %call49 = call noalias ptr @CRYPTO_strdup(ptr noundef %34, ptr noundef @.str.13, i32 noundef 985)
  store ptr %call49, ptr %s, align 8, !tbaa !4
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.end43
  %35 = load ptr, ptr %s, align 8, !tbaa !4
  %cmp51 = icmp eq ptr %35, null
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 988, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, ptr noundef null)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %36 = load ptr, ptr %s, align 8, !tbaa !4
  %call55 = call i32 @strcmp(ptr noundef %36, ptr noundef @.str.22) #9
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.end54
  %37 = load ptr, ptr %addr, align 8, !tbaa !4
  %38 = load i32, ptr %afi, align 4, !tbaa !17
  %39 = load ptr, ptr %safi, align 8, !tbaa !4
  %call59 = call i32 @X509v3_addr_add_inherit(ptr noundef %37, i32 noundef %38, ptr noundef %39)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.then58
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 998, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 165, ptr noundef null)
  %40 = load ptr, ptr %val, align 8, !tbaa !4
  %name62 = getelementptr inbounds %struct.CONF_VALUE, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %name62, align 8, !tbaa !42
  %42 = load ptr, ptr %val, align 8, !tbaa !4
  %value63 = getelementptr inbounds %struct.CONF_VALUE, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %value63, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %41, ptr noundef @.str.21, ptr noundef %43)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.then58
  %44 = load ptr, ptr %s, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %44, ptr noundef @.str.13, i32 noundef 1002)
  store ptr null, ptr %s, align 8, !tbaa !4
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end54
  %45 = load ptr, ptr %s, align 8, !tbaa !4
  %46 = load ptr, ptr %addr_chars, align 8, !tbaa !4
  %call66 = call i64 @strspn(ptr noundef %45, ptr noundef %46) #9
  %conv67 = trunc i64 %call66 to i32
  store i32 %conv67, ptr %i1, align 4, !tbaa !17
  %47 = load i32, ptr %i1, align 4, !tbaa !17
  %conv68 = sext i32 %47 to i64
  %48 = load ptr, ptr %s, align 8, !tbaa !4
  %49 = load i32, ptr %i1, align 4, !tbaa !17
  %idx.ext = sext i32 %49 to i64
  %add.ptr69 = getelementptr inbounds i8, ptr %48, i64 %idx.ext
  %call70 = call i64 @strspn(ptr noundef %add.ptr69, ptr noundef @.str.19) #9
  %add = add i64 %conv68, %call70
  %conv71 = trunc i64 %add to i32
  store i32 %conv71, ptr %i2, align 4, !tbaa !17
  %50 = load ptr, ptr %s, align 8, !tbaa !4
  %51 = load i32, ptr %i2, align 4, !tbaa !17
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %i2, align 4, !tbaa !17
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds i8, ptr %50, i64 %idxprom
  %52 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv72 = sext i8 %52 to i32
  store i32 %conv72, ptr %delim, align 4, !tbaa !17
  %53 = load ptr, ptr %s, align 8, !tbaa !4
  %54 = load i32, ptr %i1, align 4, !tbaa !17
  %idxprom73 = sext i32 %54 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %53, i64 %idxprom73
  store i8 0, ptr %arrayidx74, align 1, !tbaa !16
  %arraydecay = getelementptr inbounds [16 x i8], ptr %min, i64 0, i64 0
  %55 = load ptr, ptr %s, align 8, !tbaa !4
  %call75 = call i32 @ossl_a2i_ipadd(ptr noundef %arraydecay, ptr noundef %55)
  %56 = load i32, ptr %length, align 4, !tbaa !17
  %cmp76 = icmp ne i32 %call75, %56
  br i1 %cmp76, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end65
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1013, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 166, ptr noundef null)
  %57 = load ptr, ptr %val, align 8, !tbaa !4
  %name79 = getelementptr inbounds %struct.CONF_VALUE, ptr %57, i32 0, i32 1
  %58 = load ptr, ptr %name79, align 8, !tbaa !42
  %59 = load ptr, ptr %val, align 8, !tbaa !4
  %value80 = getelementptr inbounds %struct.CONF_VALUE, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %value80, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %58, ptr noundef @.str.21, ptr noundef %60)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end65
  %61 = load i32, ptr %delim, align 4, !tbaa !17
  switch i32 %61, label %sw.default [
    i32 47, label %sw.bb82
    i32 45, label %sw.bb110
    i32 0, label %sw.bb162
  ]

sw.bb82:                                          ; preds = %if.end81
  %62 = load ptr, ptr %s, align 8, !tbaa !4
  %63 = load i32, ptr %i2, align 4, !tbaa !17
  %idx.ext83 = sext i32 %63 to i64
  %add.ptr84 = getelementptr inbounds i8, ptr %62, i64 %idx.ext83
  %call85 = call i64 @strtoul(ptr noundef %add.ptr84, ptr noundef %t, i32 noundef 10) #8
  %conv86 = trunc i64 %call85 to i32
  store i32 %conv86, ptr %prefixlen, align 4, !tbaa !17
  %64 = load ptr, ptr %t, align 8, !tbaa !4
  %65 = load ptr, ptr %s, align 8, !tbaa !4
  %66 = load i32, ptr %i2, align 4, !tbaa !17
  %idx.ext87 = sext i32 %66 to i64
  %add.ptr88 = getelementptr inbounds i8, ptr %65, i64 %idx.ext87
  %cmp89 = icmp eq ptr %64, %add.ptr88
  br i1 %cmp89, label %if.then101, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %sw.bb82
  %67 = load ptr, ptr %t, align 8, !tbaa !4
  %68 = load i8, ptr %67, align 1, !tbaa !16
  %conv92 = sext i8 %68 to i32
  %cmp93 = icmp ne i32 %conv92, 0
  br i1 %cmp93, label %if.then101, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false91
  %69 = load i32, ptr %prefixlen, align 4, !tbaa !17
  %70 = load i32, ptr %length, align 4, !tbaa !17
  %mul = mul nsw i32 %70, 8
  %cmp96 = icmp sgt i32 %69, %mul
  br i1 %cmp96, label %if.then101, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false95
  %71 = load i32, ptr %prefixlen, align 4, !tbaa !17
  %cmp99 = icmp slt i32 %71, 0
  br i1 %cmp99, label %if.then101, label %if.end104

if.then101:                                       ; preds = %lor.lhs.false98, %lor.lhs.false95, %lor.lhs.false91, %sw.bb82
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1025, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, ptr noundef null)
  %72 = load ptr, ptr %val, align 8, !tbaa !4
  %name102 = getelementptr inbounds %struct.CONF_VALUE, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %name102, align 8, !tbaa !42
  %74 = load ptr, ptr %val, align 8, !tbaa !4
  %value103 = getelementptr inbounds %struct.CONF_VALUE, ptr %74, i32 0, i32 2
  %75 = load ptr, ptr %value103, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %73, ptr noundef @.str.21, ptr noundef %75)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %lor.lhs.false98
  %76 = load ptr, ptr %addr, align 8, !tbaa !4
  %77 = load i32, ptr %afi, align 4, !tbaa !17
  %78 = load ptr, ptr %safi, align 8, !tbaa !4
  %arraydecay105 = getelementptr inbounds [16 x i8], ptr %min, i64 0, i64 0
  %79 = load i32, ptr %prefixlen, align 4, !tbaa !17
  %call106 = call i32 @X509v3_addr_add_prefix(ptr noundef %76, i32 noundef %77, ptr noundef %78, ptr noundef %arraydecay105, i32 noundef %79)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.end109, label %if.then108

if.then108:                                       ; preds = %if.end104
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1030, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, ptr noundef null)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.end104
  br label %sw.epilog171

sw.bb110:                                         ; preds = %if.end81
  %80 = load i32, ptr %i2, align 4, !tbaa !17
  %conv111 = sext i32 %80 to i64
  %81 = load ptr, ptr %s, align 8, !tbaa !4
  %82 = load i32, ptr %i2, align 4, !tbaa !17
  %idx.ext112 = sext i32 %82 to i64
  %add.ptr113 = getelementptr inbounds i8, ptr %81, i64 %idx.ext112
  %call114 = call i64 @strspn(ptr noundef %add.ptr113, ptr noundef @.str.19) #9
  %add115 = add i64 %conv111, %call114
  %conv116 = trunc i64 %add115 to i32
  store i32 %conv116, ptr %i1, align 4, !tbaa !17
  %83 = load i32, ptr %i1, align 4, !tbaa !17
  %conv117 = sext i32 %83 to i64
  %84 = load ptr, ptr %s, align 8, !tbaa !4
  %85 = load i32, ptr %i1, align 4, !tbaa !17
  %idx.ext118 = sext i32 %85 to i64
  %add.ptr119 = getelementptr inbounds i8, ptr %84, i64 %idx.ext118
  %86 = load ptr, ptr %addr_chars, align 8, !tbaa !4
  %call120 = call i64 @strspn(ptr noundef %add.ptr119, ptr noundef %86) #9
  %add121 = add i64 %conv117, %call120
  %conv122 = trunc i64 %add121 to i32
  store i32 %conv122, ptr %i2, align 4, !tbaa !17
  %87 = load i32, ptr %i1, align 4, !tbaa !17
  %88 = load i32, ptr %i2, align 4, !tbaa !17
  %cmp123 = icmp eq i32 %87, %88
  br i1 %cmp123, label %if.then131, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %sw.bb110
  %89 = load ptr, ptr %s, align 8, !tbaa !4
  %90 = load i32, ptr %i2, align 4, !tbaa !17
  %idxprom126 = sext i32 %90 to i64
  %arrayidx127 = getelementptr inbounds i8, ptr %89, i64 %idxprom126
  %91 = load i8, ptr %arrayidx127, align 1, !tbaa !16
  %conv128 = sext i8 %91 to i32
  %cmp129 = icmp ne i32 %conv128, 0
  br i1 %cmp129, label %if.then131, label %if.end134

if.then131:                                       ; preds = %lor.lhs.false125, %sw.bb110
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1038, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, ptr noundef null)
  %92 = load ptr, ptr %val, align 8, !tbaa !4
  %name132 = getelementptr inbounds %struct.CONF_VALUE, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %name132, align 8, !tbaa !42
  %94 = load ptr, ptr %val, align 8, !tbaa !4
  %value133 = getelementptr inbounds %struct.CONF_VALUE, ptr %94, i32 0, i32 2
  %95 = load ptr, ptr %value133, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %93, ptr noundef @.str.21, ptr noundef %95)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end134:                                        ; preds = %lor.lhs.false125
  %arraydecay135 = getelementptr inbounds [16 x i8], ptr %max, i64 0, i64 0
  %96 = load ptr, ptr %s, align 8, !tbaa !4
  %97 = load i32, ptr %i1, align 4, !tbaa !17
  %idx.ext136 = sext i32 %97 to i64
  %add.ptr137 = getelementptr inbounds i8, ptr %96, i64 %idx.ext136
  %call138 = call i32 @ossl_a2i_ipadd(ptr noundef %arraydecay135, ptr noundef %add.ptr137)
  %98 = load i32, ptr %length, align 4, !tbaa !17
  %cmp139 = icmp ne i32 %call138, %98
  br i1 %cmp139, label %if.then141, label %if.end144

if.then141:                                       ; preds = %if.end134
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1043, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 166, ptr noundef null)
  %99 = load ptr, ptr %val, align 8, !tbaa !4
  %name142 = getelementptr inbounds %struct.CONF_VALUE, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %name142, align 8, !tbaa !42
  %101 = load ptr, ptr %val, align 8, !tbaa !4
  %value143 = getelementptr inbounds %struct.CONF_VALUE, ptr %101, i32 0, i32 2
  %102 = load ptr, ptr %value143, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %100, ptr noundef @.str.21, ptr noundef %102)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end144:                                        ; preds = %if.end134
  %arraydecay145 = getelementptr inbounds [16 x i8], ptr %min, i64 0, i64 0
  %arraydecay146 = getelementptr inbounds [16 x i8], ptr %max, i64 0, i64 0
  %103 = load i32, ptr %afi, align 4, !tbaa !17
  %call147 = call i32 @length_from_afi(i32 noundef %103)
  %conv148 = sext i32 %call147 to i64
  %call149 = call i32 @memcmp(ptr noundef %arraydecay145, ptr noundef %arraydecay146, i64 noundef %conv148) #9
  %cmp150 = icmp sgt i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.end155

if.then152:                                       ; preds = %if.end144
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1048, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, ptr noundef null)
  %104 = load ptr, ptr %val, align 8, !tbaa !4
  %name153 = getelementptr inbounds %struct.CONF_VALUE, ptr %104, i32 0, i32 1
  %105 = load ptr, ptr %name153, align 8, !tbaa !42
  %106 = load ptr, ptr %val, align 8, !tbaa !4
  %value154 = getelementptr inbounds %struct.CONF_VALUE, ptr %106, i32 0, i32 2
  %107 = load ptr, ptr %value154, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %105, ptr noundef @.str.21, ptr noundef %107)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end155:                                        ; preds = %if.end144
  %108 = load ptr, ptr %addr, align 8, !tbaa !4
  %109 = load i32, ptr %afi, align 4, !tbaa !17
  %110 = load ptr, ptr %safi, align 8, !tbaa !4
  %arraydecay156 = getelementptr inbounds [16 x i8], ptr %min, i64 0, i64 0
  %arraydecay157 = getelementptr inbounds [16 x i8], ptr %max, i64 0, i64 0
  %call158 = call i32 @X509v3_addr_add_range(ptr noundef %108, i32 noundef %109, ptr noundef %110, ptr noundef %arraydecay156, ptr noundef %arraydecay157)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.end161, label %if.then160

if.then160:                                       ; preds = %if.end155
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1053, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, ptr noundef null)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end161:                                        ; preds = %if.end155
  br label %sw.epilog171

sw.bb162:                                         ; preds = %if.end81
  %111 = load ptr, ptr %addr, align 8, !tbaa !4
  %112 = load i32, ptr %afi, align 4, !tbaa !17
  %113 = load ptr, ptr %safi, align 8, !tbaa !4
  %arraydecay163 = getelementptr inbounds [16 x i8], ptr %min, i64 0, i64 0
  %114 = load i32, ptr %length, align 4, !tbaa !17
  %mul164 = mul nsw i32 %114, 8
  %call165 = call i32 @X509v3_addr_add_prefix(ptr noundef %111, i32 noundef %112, ptr noundef %113, ptr noundef %arraydecay163, i32 noundef %mul164)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.end168, label %if.then167

if.then167:                                       ; preds = %sw.bb162
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1059, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, ptr noundef null)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end168:                                        ; preds = %sw.bb162
  br label %sw.epilog171

sw.default:                                       ; preds = %if.end81
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1064, ptr noundef @__func__.v2i_IPAddrBlocks)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 116, ptr noundef null)
  %115 = load ptr, ptr %val, align 8, !tbaa !4
  %name169 = getelementptr inbounds %struct.CONF_VALUE, ptr %115, i32 0, i32 1
  %116 = load ptr, ptr %name169, align 8, !tbaa !42
  %117 = load ptr, ptr %val, align 8, !tbaa !4
  %value170 = getelementptr inbounds %struct.CONF_VALUE, ptr %117, i32 0, i32 2
  %118 = load ptr, ptr %value170, align 8, !tbaa !44
  call void (i32, ...) @ERR_add_error_data(i32 noundef 4, ptr noundef @.str.20, ptr noundef %116, ptr noundef @.str.21, ptr noundef %118)
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog171:                                     ; preds = %if.end168, %if.end161, %if.end109
  %119 = load ptr, ptr %s, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %119, ptr noundef @.str.13, i32 noundef 1069)
  store ptr null, ptr %s, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then167, %if.then160, %if.then152, %if.then141, %if.then131, %if.then108, %if.then101, %if.then78, %if.then61, %if.then53, %if.then40, %if.else23, %sw.epilog171, %if.end64
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %delim) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefixlen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr_chars) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %safi_) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %safi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %afi) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %max) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %min) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup190 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 5, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %120 = load i32, ptr %i, align 4, !tbaa !17
  %inc183 = add nsw i32 %120, 1
  store i32 %inc183, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %121 = load ptr, ptr %addr, align 8, !tbaa !4
  %call184 = call i32 @X509v3_addr_canonize(ptr noundef %121)
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.end187, label %if.then186

if.then186:                                       ; preds = %for.end
  br label %err

if.end187:                                        ; preds = %for.end
  %122 = load ptr, ptr %addr, align 8, !tbaa !4
  store ptr %122, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190

err:                                              ; preds = %cleanup, %if.then186
  %123 = load ptr, ptr %s, align 8, !tbaa !4
  call void @CRYPTO_free(ptr noundef %123, ptr noundef @.str.13, i32 noundef 1081)
  %124 = load ptr, ptr %addr, align 8, !tbaa !4
  %call188 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %124)
  %call189 = call ptr @ossl_check_IPAddressFamily_freefunc_type(ptr noundef @IPAddressFamily_free)
  call void @OPENSSL_sk_pop_free(ptr noundef %call188, ptr noundef %call189)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup190

cleanup190:                                       ; preds = %err, %if.end187, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #8
  %125 = load ptr, ptr %retval, align 8
  ret ptr %125
}

; Function Attrs: nounwind uwtable
define internal i32 @i2r_IPAddrBlocks(ptr noundef %method, ptr noundef %ext, ptr noundef %out, i32 noundef %indent) #0 {
entry:
  %retval = alloca i32, align 4
  %method.addr = alloca ptr, align 8
  %ext.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  %addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %f = alloca ptr, align 8
  %afi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %method, ptr %method.addr, align 8, !tbaa !4
  store ptr %ext, ptr %ext.addr, align 8, !tbaa !4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #8
  %0 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  store ptr %0, ptr %addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !17
  %2 = load ptr, ptr %addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %2)
  %call1 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp = icmp slt i32 %1, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %3 = load ptr, ptr %addr, align 8, !tbaa !4
  %call2 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %3)
  %4 = load i32, ptr %i, align 4, !tbaa !17
  %call3 = call ptr @OPENSSL_sk_value(ptr noundef %call2, i32 noundef %4)
  store ptr %call3, ptr %f, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %afi) #8
  %5 = load ptr, ptr %f, align 8, !tbaa !4
  %call4 = call i32 @X509v3_addr_get_afi(ptr noundef %5)
  store i32 %call4, ptr %afi, align 4, !tbaa !17
  %6 = load i32, ptr %afi, align 4, !tbaa !17
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %for.body
  %7 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %8 = load i32, ptr %indent.addr, align 4, !tbaa !17
  %call5 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %7, ptr noundef @.str.23, i32 noundef %8, ptr noundef @.str.24)
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %9 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %10 = load i32, ptr %indent.addr, align 4, !tbaa !17
  %call7 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %9, ptr noundef @.str.25, i32 noundef %10, ptr noundef @.str.24)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %11 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %12 = load i32, ptr %indent.addr, align 4, !tbaa !17
  %13 = load i32, ptr %afi, align 4, !tbaa !17
  %call8 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %11, ptr noundef @.str.26, i32 noundef %12, ptr noundef @.str.24, i32 noundef %13)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb
  %14 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily = getelementptr inbounds %struct.IPAddressFamily_st, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %addressFamily, align 8, !tbaa !10
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %length, align 8, !tbaa !15
  %cmp9 = icmp sgt i32 %16, 2
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %17 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily10 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %addressFamily10, align 8, !tbaa !10
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %data, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %20 to i32
  switch i32 %conv, label %sw.default27 [
    i32 1, label %sw.bb11
    i32 2, label %sw.bb13
    i32 3, label %sw.bb15
    i32 4, label %sw.bb17
    i32 64, label %sw.bb19
    i32 65, label %sw.bb21
    i32 66, label %sw.bb23
    i32 128, label %sw.bb25
  ]

sw.bb11:                                          ; preds = %if.then
  %21 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call12 = call i32 @BIO_puts(ptr noundef %21, ptr noundef @.str.27)
  br label %sw.epilog33

sw.bb13:                                          ; preds = %if.then
  %22 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call14 = call i32 @BIO_puts(ptr noundef %22, ptr noundef @.str.28)
  br label %sw.epilog33

sw.bb15:                                          ; preds = %if.then
  %23 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call16 = call i32 @BIO_puts(ptr noundef %23, ptr noundef @.str.29)
  br label %sw.epilog33

sw.bb17:                                          ; preds = %if.then
  %24 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call18 = call i32 @BIO_puts(ptr noundef %24, ptr noundef @.str.30)
  br label %sw.epilog33

sw.bb19:                                          ; preds = %if.then
  %25 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call20 = call i32 @BIO_puts(ptr noundef %25, ptr noundef @.str.31)
  br label %sw.epilog33

sw.bb21:                                          ; preds = %if.then
  %26 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call22 = call i32 @BIO_puts(ptr noundef %26, ptr noundef @.str.32)
  br label %sw.epilog33

sw.bb23:                                          ; preds = %if.then
  %27 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call24 = call i32 @BIO_puts(ptr noundef %27, ptr noundef @.str.33)
  br label %sw.epilog33

sw.bb25:                                          ; preds = %if.then
  %28 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call26 = call i32 @BIO_puts(ptr noundef %28, ptr noundef @.str.34)
  br label %sw.epilog33

sw.default27:                                     ; preds = %if.then
  %29 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %f, align 8, !tbaa !4
  %addressFamily28 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %addressFamily28, align 8, !tbaa !10
  %data29 = getelementptr inbounds %struct.asn1_string_st, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %data29, align 8, !tbaa !12
  %arrayidx30 = getelementptr inbounds i8, ptr %32, i64 2
  %33 = load i8, ptr %arrayidx30, align 1, !tbaa !16
  %conv31 = zext i8 %33 to i32
  %call32 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %29, ptr noundef @.str.35, i32 noundef %conv31)
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11
  br label %if.end

if.end:                                           ; preds = %sw.epilog33, %sw.epilog
  %34 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.IPAddressChoice_st, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %type, align 8, !tbaa !19
  switch i32 %36, label %sw.epilog42 [
    i32 0, label %sw.bb34
    i32 1, label %sw.bb36
  ]

sw.bb34:                                          ; preds = %if.end
  %37 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call35 = call i32 @BIO_puts(ptr noundef %37, ptr noundef @.str.36)
  br label %sw.epilog42

sw.bb36:                                          ; preds = %if.end
  %38 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call37 = call i32 @BIO_puts(ptr noundef %38, ptr noundef @.str.37)
  %39 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %40 = load i32, ptr %indent.addr, align 4, !tbaa !17
  %add = add nsw i32 %40, 2
  %41 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice38 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %ipAddressChoice38, align 8, !tbaa !18
  %u = getelementptr inbounds %struct.IPAddressChoice_st, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %u, align 8, !tbaa !16
  %44 = load i32, ptr %afi, align 4, !tbaa !17
  %call39 = call i32 @i2r_IPAddressOrRanges(ptr noundef %39, i32 noundef %add, ptr noundef %43, i32 noundef %44)
  %tobool = icmp ne i32 %call39, 0
  br i1 %tobool, label %if.end41, label %if.then40

if.then40:                                        ; preds = %sw.bb36
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %sw.bb36
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %if.end, %if.end41, %sw.bb34
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog42, %if.then40
  call void @llvm.lifetime.end.p0(i64 4, ptr %afi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %45 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #8
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_inherits(ptr noundef %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4, !tbaa !17
  %2 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %2)
  %call1 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp2 = icmp slt i32 %1, %call1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %3 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %call3 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %3)
  %4 = load i32, ptr %i, align 4, !tbaa !17
  %call4 = call ptr @OPENSSL_sk_value(ptr noundef %call3, i32 noundef %4)
  store ptr %call4, ptr %f, align 8, !tbaa !4
  %5 = load ptr, ptr %f, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.IPAddressChoice_st, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type, align 8, !tbaa !19
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_subset(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %fa = alloca ptr, align 8
  %j = alloca i32, align 4
  %fb = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then7, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call = call i32 @X509v3_addr_inherits(ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false3
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call5 = call i32 @X509v3_addr_inherits(ptr noundef %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false4, %lor.lhs.false3, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42

if.end8:                                          ; preds = %lor.lhs.false4
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call9 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %6)
  %call10 = call ptr @ossl_check_IPAddressFamily_compfunc_type(ptr noundef @IPAddressFamily_cmp)
  %call11 = call ptr @OPENSSL_sk_set_cmp_func(ptr noundef %call9, ptr noundef %call10)
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %7 = load i32, ptr %i, align 4, !tbaa !17
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call12 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %8)
  %call13 = call i32 @OPENSSL_sk_num(ptr noundef %call12)
  %cmp14 = icmp slt i32 %7, %call13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fa) #8
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %call15 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %9)
  %10 = load i32, ptr %i, align 4, !tbaa !17
  %call16 = call ptr @OPENSSL_sk_value(ptr noundef %call15, i32 noundef %10)
  store ptr %call16, ptr %fa, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  %11 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call17 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %11)
  %12 = load ptr, ptr %fa, align 8, !tbaa !4
  %call18 = call ptr @ossl_check_IPAddressFamily_type(ptr noundef %12)
  %call19 = call i32 @OPENSSL_sk_find(ptr noundef %call17, ptr noundef %call18)
  store i32 %call19, ptr %j, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %fb) #8
  %13 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call20 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %13)
  %14 = load i32, ptr %j, align 4, !tbaa !17
  %call21 = call ptr @OPENSSL_sk_value(ptr noundef %call20, i32 noundef %14)
  store ptr %call21, ptr %fb, align 8, !tbaa !4
  %15 = load ptr, ptr %fb, align 8, !tbaa !4
  %cmp22 = icmp eq ptr %15, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %16 = load ptr, ptr %fa, align 8, !tbaa !4
  %call25 = call i32 @IPAddressFamily_check_len(ptr noundef %16)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then30

lor.lhs.false27:                                  ; preds = %if.end24
  %17 = load ptr, ptr %fb, align 8, !tbaa !4
  %call28 = call i32 @IPAddressFamily_check_len(ptr noundef %17)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27, %if.end24
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false27
  %18 = load ptr, ptr %fb, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %u = getelementptr inbounds %struct.IPAddressChoice_st, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %u, align 8, !tbaa !16
  %21 = load ptr, ptr %fa, align 8, !tbaa !4
  %ipAddressChoice32 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %ipAddressChoice32, align 8, !tbaa !18
  %u33 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %u33, align 8, !tbaa !16
  %24 = load ptr, ptr %fb, align 8, !tbaa !4
  %call34 = call i32 @X509v3_addr_get_afi(ptr noundef %24)
  %call35 = call i32 @length_from_afi(i32 noundef %call34)
  %call36 = call i32 @addr_contains(ptr noundef %20, ptr noundef %23, i32 noundef %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end31
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then30, %if.then23
  call void @llvm.lifetime.end.p0(i64 8, ptr %fb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fa) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %25 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %for.end, %cleanup, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

declare i32 @OPENSSL_sk_find(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_IPAddressFamily_type(ptr noundef %ptr) #3 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal i32 @addr_contains(ptr noundef %parent, ptr noundef %child, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %p_min = alloca [16 x i8], align 16
  %p_max = alloca [16 x i8], align 16
  %c_min = alloca [16 x i8], align 16
  %c_max = alloca [16 x i8], align 16
  %p = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8, !tbaa !4
  store ptr %child, ptr %child.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr %p_min) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %p_max) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %c_min) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %c_max) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #8
  %0 = load ptr, ptr %child.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %child.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %p, align 4, !tbaa !17
  store i32 0, ptr %c, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %if.end4
  %4 = load i32, ptr %c, align 4, !tbaa !17
  %5 = load ptr, ptr %child.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %5)
  %call5 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp6 = icmp slt i32 %4, %call5
  br i1 %cmp6, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %child.addr, align 8, !tbaa !4
  %call7 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %6)
  %7 = load i32, ptr %c, align 4, !tbaa !17
  %call8 = call ptr @OPENSSL_sk_value(ptr noundef %call7, i32 noundef %7)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %c_min, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %c_max, i64 0, i64 0
  %8 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call10 = call i32 @extract_min_max(ptr noundef %call8, ptr noundef %arraydecay, ptr noundef %arraydecay9, i32 noundef %8)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %for.body
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %if.end12
  %9 = load i32, ptr %p, align 4, !tbaa !17
  %10 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %call14 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %10)
  %call15 = call i32 @OPENSSL_sk_num(ptr noundef %call14)
  %cmp16 = icmp sge i32 %9, %call15
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.cond13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %for.cond13
  %11 = load ptr, ptr %parent.addr, align 8, !tbaa !4
  %call19 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %11)
  %12 = load i32, ptr %p, align 4, !tbaa !17
  %call20 = call ptr @OPENSSL_sk_value(ptr noundef %call19, i32 noundef %12)
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %p_min, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [16 x i8], ptr %p_max, i64 0, i64 0
  %13 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call23 = call i32 @extract_min_max(ptr noundef %call20, ptr noundef %arraydecay21, ptr noundef %arraydecay22, i32 noundef %13)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %arraydecay27 = getelementptr inbounds [16 x i8], ptr %p_max, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [16 x i8], ptr %c_max, i64 0, i64 0
  %14 = load i32, ptr %length.addr, align 4, !tbaa !17
  %conv = sext i32 %14 to i64
  %call29 = call i32 @memcmp(ptr noundef %arraydecay27, ptr noundef %arraydecay28, i64 noundef %conv) #9
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end26
  br label %for.inc

if.end33:                                         ; preds = %if.end26
  %arraydecay34 = getelementptr inbounds [16 x i8], ptr %p_min, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [16 x i8], ptr %c_min, i64 0, i64 0
  %15 = load i32, ptr %length.addr, align 4, !tbaa !17
  %conv36 = sext i32 %15 to i64
  %call37 = call i32 @memcmp(ptr noundef %arraydecay34, ptr noundef %arraydecay35, i64 noundef %conv36) #9
  %cmp38 = icmp sgt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end33
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  br label %for.end

for.inc:                                          ; preds = %if.then32
  %16 = load i32, ptr %p, align 4, !tbaa !17
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %p, align 4, !tbaa !17
  br label %for.cond13

for.end:                                          ; preds = %if.end41
  br label %for.inc42

for.inc42:                                        ; preds = %for.end
  %17 = load i32, ptr %c, align 4, !tbaa !17
  %inc43 = add nsw i32 %17, 1
  store i32 %inc43, ptr %c, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !49

for.end44:                                        ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.then40, %if.then25, %if.then17, %if.then11, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %c_max) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %c_min) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %p_max) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %p_min) #8
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_validate_path(ptr noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %chain = getelementptr inbounds %struct.x509_store_ctx_st, ptr %0, i32 0, i32 20
  %1 = load ptr, ptr %chain, align 8, !tbaa !50
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %chain1 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %2, i32 0, i32 20
  %3 = load ptr, ptr %chain1, align 8, !tbaa !50
  %call = call ptr @ossl_check_const_X509_sk_type(ptr noundef %3)
  %call2 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %verify_cb, align 8, !tbaa !53
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct.x509_store_ctx_st, ptr %6, i32 0, i32 24
  store i32 1, ptr %error, align 8, !tbaa !54
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %chain6 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %8, i32 0, i32 20
  %9 = load ptr, ptr %chain6, align 8, !tbaa !50
  %call7 = call i32 @addr_validate_path_internal(ptr noundef %7, ptr noundef %9, ptr noundef null)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_X509_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal i32 @addr_validate_path_internal(ptr noundef %ctx, ptr noundef %chain, ptr noundef %ext) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %chain.addr = alloca ptr, align 8
  %ext.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %rv = alloca i32, align 4
  %x = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fc = alloca ptr, align 8
  %fc118 = alloca ptr, align 8
  %k = alloca i32, align 4
  %fp = alloca ptr, align 8
  %fp215 = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !4
  store ptr %ext, ptr %ext.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #8
  store ptr null, ptr %child, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 0, ptr %ret, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #8
  %0 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_X509_sk_type(ptr noundef %1)
  %call1 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp2 = icmp sgt i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  %cmp3 = icmp ne i32 %land.ext, 0
  br i1 %cmp3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.end
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %3, null
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %cmp5 = icmp ne ptr %4, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false
  %5 = phi i1 [ true, %lor.lhs.false ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %cmp6 = icmp ne i32 %lor.ext, 0
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.end
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp8 = icmp eq ptr %6, null
  br i1 %cmp8, label %lor.end11, label %lor.rhs9

lor.rhs9:                                         ; preds = %lor.lhs.false7
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb = getelementptr inbounds %struct.x509_store_ctx_st, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %verify_cb, align 8, !tbaa !53
  %cmp10 = icmp ne ptr %8, null
  br label %lor.end11

lor.end11:                                        ; preds = %lor.rhs9, %lor.lhs.false7
  %9 = phi i1 [ true, %lor.lhs.false7 ], [ %cmp10, %lor.rhs9 ]
  %lor.ext12 = zext i1 %9 to i32
  %cmp13 = icmp ne i32 %lor.ext12, 0
  br i1 %cmp13, label %if.end16, label %if.then

if.then:                                          ; preds = %lor.end11, %lor.end, %land.end
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp14 = icmp ne ptr %10, null
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error = getelementptr inbounds %struct.x509_store_ctx_st, ptr %11, i32 0, i32 24
  store i32 1, ptr %error, align 8, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup255

if.end16:                                         ; preds = %lor.end11
  %12 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %cmp17 = icmp ne ptr %12, null
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  store i32 -1, ptr %i, align 4, !tbaa !17
  store ptr null, ptr %x, align 8, !tbaa !4
  br label %if.end24

if.else:                                          ; preds = %if.end16
  store i32 0, ptr %i, align 4, !tbaa !17
  %13 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %call19 = call ptr @ossl_check_const_X509_sk_type(ptr noundef %13)
  %14 = load i32, ptr %i, align 4, !tbaa !17
  %call20 = call ptr @OPENSSL_sk_value(ptr noundef %call19, i32 noundef %14)
  store ptr %call20, ptr %x, align 8, !tbaa !4
  %15 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr = getelementptr inbounds %struct.x509_st, ptr %15, i32 0, i32 18
  %16 = load ptr, ptr %rfc3779_addr, align 8, !tbaa !55
  store ptr %16, ptr %ext.addr, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %16, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup255

if.end23:                                         ; preds = %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then18
  %17 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %call25 = call i32 @X509v3_addr_is_canonical(ptr noundef %17)
  %tobool = icmp ne i32 %call25, 0
  br i1 %tobool, label %if.end37, label %if.then26

if.then26:                                        ; preds = %if.end24
  br label %do.body

do.body:                                          ; preds = %if.then26
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp27 = icmp ne ptr %18, null
  br i1 %cmp27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %do.body
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error29 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %19, i32 0, i32 24
  store i32 41, ptr %error29, align 8, !tbaa !54
  %20 = load i32, ptr %i, align 4, !tbaa !17
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error_depth = getelementptr inbounds %struct.x509_store_ctx_st, ptr %21, i32 0, i32 23
  store i32 %20, ptr %error_depth, align 4, !tbaa !62
  %22 = load ptr, ptr %x, align 8, !tbaa !4
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %current_cert = getelementptr inbounds %struct.x509_store_ctx_st, ptr %23, i32 0, i32 25
  store ptr %22, ptr %current_cert, align 8, !tbaa !63
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb30 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %verify_cb30, align 8, !tbaa !53
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call31 = call i32 %25(i32 noundef 0, ptr noundef %26)
  store i32 %call31, ptr %rv, align 4, !tbaa !17
  br label %if.end33

if.else32:                                        ; preds = %do.body
  store i32 0, ptr %rv, align 4, !tbaa !17
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then28
  %27 = load i32, ptr %rv, align 4, !tbaa !17
  %cmp34 = icmp eq i32 %27, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end33
  br label %done

if.end36:                                         ; preds = %if.end33
  br label %do.cond

do.cond:                                          ; preds = %if.end36
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.end24
  %28 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %call38 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %28)
  %call39 = call ptr @ossl_check_IPAddressFamily_compfunc_type(ptr noundef @IPAddressFamily_cmp)
  %call40 = call ptr @OPENSSL_sk_set_cmp_func(ptr noundef %call38, ptr noundef %call39)
  %29 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %call41 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %29)
  %call42 = call ptr @OPENSSL_sk_dup(ptr noundef %call41)
  store ptr %call42, ptr %child, align 8, !tbaa !4
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end37
  call void @ERR_new()
  call void @ERR_set_debug(ptr noundef @.str.13, i32 noundef 1243, ptr noundef @__func__.addr_validate_path_internal)
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 786688, ptr noundef null)
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp45 = icmp ne ptr %30, null
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then44
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error47 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %31, i32 0, i32 24
  store i32 17, ptr %error47, align 8, !tbaa !54
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then44
  br label %done

if.end49:                                         ; preds = %if.end37
  %32 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc203, %if.end49
  %33 = load i32, ptr %i, align 4, !tbaa !17
  %34 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %call50 = call ptr @ossl_check_const_X509_sk_type(ptr noundef %34)
  %call51 = call i32 @OPENSSL_sk_num(ptr noundef %call50)
  %cmp52 = icmp slt i32 %33, %call51
  br i1 %cmp52, label %for.body, label %for.end205

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %call53 = call ptr @ossl_check_const_X509_sk_type(ptr noundef %35)
  %36 = load i32, ptr %i, align 4, !tbaa !17
  %call54 = call ptr @OPENSSL_sk_value(ptr noundef %call53, i32 noundef %36)
  store ptr %call54, ptr %x, align 8, !tbaa !4
  %37 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr55 = getelementptr inbounds %struct.x509_st, ptr %37, i32 0, i32 18
  %38 = load ptr, ptr %rfc3779_addr55, align 8, !tbaa !55
  %call56 = call i32 @X509v3_addr_is_canonical(ptr noundef %38)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end74, label %if.then58

if.then58:                                        ; preds = %for.body
  br label %do.body59

do.body59:                                        ; preds = %if.then58
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp60 = icmp ne ptr %39, null
  br i1 %cmp60, label %if.then61, label %if.else67

if.then61:                                        ; preds = %do.body59
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error62 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %40, i32 0, i32 24
  store i32 41, ptr %error62, align 8, !tbaa !54
  %41 = load i32, ptr %i, align 4, !tbaa !17
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error_depth63 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %42, i32 0, i32 23
  store i32 %41, ptr %error_depth63, align 4, !tbaa !62
  %43 = load ptr, ptr %x, align 8, !tbaa !4
  %44 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %current_cert64 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %44, i32 0, i32 25
  store ptr %43, ptr %current_cert64, align 8, !tbaa !63
  %45 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb65 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %verify_cb65, align 8, !tbaa !53
  %47 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call66 = call i32 %46(i32 noundef 0, ptr noundef %47)
  store i32 %call66, ptr %rv, align 4, !tbaa !17
  br label %if.end68

if.else67:                                        ; preds = %do.body59
  store i32 0, ptr %rv, align 4, !tbaa !17
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then61
  %48 = load i32, ptr %rv, align 4, !tbaa !17
  %cmp69 = icmp eq i32 %48, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end68
  br label %done

if.end71:                                         ; preds = %if.end68
  br label %do.cond72

do.cond72:                                        ; preds = %if.end71
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  br label %if.end74

if.end74:                                         ; preds = %do.end73, %for.body
  %49 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr75 = getelementptr inbounds %struct.x509_st, ptr %49, i32 0, i32 18
  %50 = load ptr, ptr %rfc3779_addr75, align 8, !tbaa !55
  %cmp76 = icmp eq ptr %50, null
  br i1 %cmp76, label %if.then77, label %if.end108

if.then77:                                        ; preds = %if.end74
  store i32 0, ptr %j, align 4, !tbaa !17
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc, %if.then77
  %51 = load i32, ptr %j, align 4, !tbaa !17
  %52 = load ptr, ptr %child, align 8, !tbaa !4
  %call79 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %52)
  %call80 = call i32 @OPENSSL_sk_num(ptr noundef %call79)
  %cmp81 = icmp slt i32 %51, %call80
  br i1 %cmp81, label %for.body82, label %for.end

for.body82:                                       ; preds = %for.cond78
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc) #8
  %53 = load ptr, ptr %child, align 8, !tbaa !4
  %call83 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %53)
  %54 = load i32, ptr %j, align 4, !tbaa !17
  %call84 = call ptr @OPENSSL_sk_value(ptr noundef %call83, i32 noundef %54)
  store ptr %call84, ptr %fc, align 8, !tbaa !4
  %55 = load ptr, ptr %fc, align 8, !tbaa !4
  %call85 = call i32 @IPAddressFamily_check_len(ptr noundef %55)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %for.body82
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end88:                                         ; preds = %for.body82
  %56 = load ptr, ptr %fc, align 8, !tbaa !4
  %ipAddressChoice = getelementptr inbounds %struct.IPAddressFamily_st, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %ipAddressChoice, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.IPAddressChoice_st, ptr %57, i32 0, i32 0
  %58 = load i32, ptr %type, align 8, !tbaa !19
  %cmp89 = icmp ne i32 %58, 0
  br i1 %cmp89, label %if.then90, label %if.end106

if.then90:                                        ; preds = %if.end88
  br label %do.body91

do.body91:                                        ; preds = %if.then90
  %59 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp92 = icmp ne ptr %59, null
  br i1 %cmp92, label %if.then93, label %if.else99

if.then93:                                        ; preds = %do.body91
  %60 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error94 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %60, i32 0, i32 24
  store i32 46, ptr %error94, align 8, !tbaa !54
  %61 = load i32, ptr %i, align 4, !tbaa !17
  %62 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error_depth95 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %62, i32 0, i32 23
  store i32 %61, ptr %error_depth95, align 4, !tbaa !62
  %63 = load ptr, ptr %x, align 8, !tbaa !4
  %64 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %current_cert96 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %64, i32 0, i32 25
  store ptr %63, ptr %current_cert96, align 8, !tbaa !63
  %65 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb97 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %65, i32 0, i32 7
  %66 = load ptr, ptr %verify_cb97, align 8, !tbaa !53
  %67 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call98 = call i32 %66(i32 noundef 0, ptr noundef %67)
  store i32 %call98, ptr %rv, align 4, !tbaa !17
  br label %if.end100

if.else99:                                        ; preds = %do.body91
  store i32 0, ptr %rv, align 4, !tbaa !17
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then93
  %68 = load i32, ptr %rv, align 4, !tbaa !17
  %cmp101 = icmp eq i32 %68, 0
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end100
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %if.end100
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.end88
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.then87, %if.end106, %do.end105
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup255 [
    i32 0, label %cleanup.cont
    i32 10, label %for.end
    i32 4, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %69 = load i32, ptr %j, align 4, !tbaa !17
  %inc107 = add nsw i32 %69, 1
  store i32 %inc107, ptr %j, align 4, !tbaa !17
  br label %for.cond78, !llvm.loop !64

for.end:                                          ; preds = %cleanup, %for.cond78
  br label %for.inc203

if.end108:                                        ; preds = %if.end74
  %70 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr109 = getelementptr inbounds %struct.x509_st, ptr %70, i32 0, i32 18
  %71 = load ptr, ptr %rfc3779_addr109, align 8, !tbaa !55
  %call110 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %71)
  %call111 = call ptr @ossl_check_IPAddressFamily_compfunc_type(ptr noundef @IPAddressFamily_cmp)
  %call112 = call ptr @OPENSSL_sk_set_cmp_func(ptr noundef %call110, ptr noundef %call111)
  store i32 0, ptr %j, align 4, !tbaa !17
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc200, %if.end108
  %72 = load i32, ptr %j, align 4, !tbaa !17
  %73 = load ptr, ptr %child, align 8, !tbaa !4
  %call114 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %73)
  %call115 = call i32 @OPENSSL_sk_num(ptr noundef %call114)
  %cmp116 = icmp slt i32 %72, %call115
  br i1 %cmp116, label %for.body117, label %for.end202

for.body117:                                      ; preds = %for.cond113
  call void @llvm.lifetime.start.p0(i64 8, ptr %fc118) #8
  %74 = load ptr, ptr %child, align 8, !tbaa !4
  %call119 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %74)
  %75 = load i32, ptr %j, align 4, !tbaa !17
  %call120 = call ptr @OPENSSL_sk_value(ptr noundef %call119, i32 noundef %75)
  store ptr %call120, ptr %fc118, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  %76 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr121 = getelementptr inbounds %struct.x509_st, ptr %76, i32 0, i32 18
  %77 = load ptr, ptr %rfc3779_addr121, align 8, !tbaa !55
  %call122 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %77)
  %78 = load ptr, ptr %fc118, align 8, !tbaa !4
  %call123 = call ptr @ossl_check_IPAddressFamily_type(ptr noundef %78)
  %call124 = call i32 @OPENSSL_sk_find(ptr noundef %call122, ptr noundef %call123)
  store i32 %call124, ptr %k, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #8
  %79 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr125 = getelementptr inbounds %struct.x509_st, ptr %79, i32 0, i32 18
  %80 = load ptr, ptr %rfc3779_addr125, align 8, !tbaa !55
  %call126 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %80)
  %81 = load i32, ptr %k, align 4, !tbaa !17
  %call127 = call ptr @OPENSSL_sk_value(ptr noundef %call126, i32 noundef %81)
  store ptr %call127, ptr %fp, align 8, !tbaa !4
  %82 = load ptr, ptr %fp, align 8, !tbaa !4
  %cmp128 = icmp eq ptr %82, null
  br i1 %cmp128, label %if.then129, label %if.end150

if.then129:                                       ; preds = %for.body117
  %83 = load ptr, ptr %fc118, align 8, !tbaa !4
  %ipAddressChoice130 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %ipAddressChoice130, align 8, !tbaa !18
  %type131 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %84, i32 0, i32 0
  %85 = load i32, ptr %type131, align 8, !tbaa !19
  %cmp132 = icmp eq i32 %85, 1
  br i1 %cmp132, label %if.then133, label %if.end149

if.then133:                                       ; preds = %if.then129
  br label %do.body134

do.body134:                                       ; preds = %if.then133
  %86 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp135 = icmp ne ptr %86, null
  br i1 %cmp135, label %if.then136, label %if.else142

if.then136:                                       ; preds = %do.body134
  %87 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error137 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %87, i32 0, i32 24
  store i32 46, ptr %error137, align 8, !tbaa !54
  %88 = load i32, ptr %i, align 4, !tbaa !17
  %89 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error_depth138 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %89, i32 0, i32 23
  store i32 %88, ptr %error_depth138, align 4, !tbaa !62
  %90 = load ptr, ptr %x, align 8, !tbaa !4
  %91 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %current_cert139 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %91, i32 0, i32 25
  store ptr %90, ptr %current_cert139, align 8, !tbaa !63
  %92 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb140 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %92, i32 0, i32 7
  %93 = load ptr, ptr %verify_cb140, align 8, !tbaa !53
  %94 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call141 = call i32 %93(i32 noundef 0, ptr noundef %94)
  store i32 %call141, ptr %rv, align 4, !tbaa !17
  br label %if.end143

if.else142:                                       ; preds = %do.body134
  store i32 0, ptr %rv, align 4, !tbaa !17
  br label %if.end143

if.end143:                                        ; preds = %if.else142, %if.then136
  %95 = load i32, ptr %rv, align 4, !tbaa !17
  %cmp144 = icmp eq i32 %95, 0
  br i1 %cmp144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end143
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

if.end146:                                        ; preds = %if.end143
  br label %do.cond147

do.cond147:                                       ; preds = %if.end146
  br label %do.end148

do.end148:                                        ; preds = %do.cond147
  store i32 15, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

if.end149:                                        ; preds = %if.then129
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

if.end150:                                        ; preds = %for.body117
  %96 = load ptr, ptr %fc118, align 8, !tbaa !4
  %call151 = call i32 @IPAddressFamily_check_len(ptr noundef %96)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %lor.lhs.false153, label %if.then156

lor.lhs.false153:                                 ; preds = %if.end150
  %97 = load ptr, ptr %fp, align 8, !tbaa !4
  %call154 = call i32 @IPAddressFamily_check_len(ptr noundef %97)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end157, label %if.then156

if.then156:                                       ; preds = %lor.lhs.false153, %if.end150
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

if.end157:                                        ; preds = %lor.lhs.false153
  %98 = load ptr, ptr %fp, align 8, !tbaa !4
  %ipAddressChoice158 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %98, i32 0, i32 1
  %99 = load ptr, ptr %ipAddressChoice158, align 8, !tbaa !18
  %type159 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %99, i32 0, i32 0
  %100 = load i32, ptr %type159, align 8, !tbaa !19
  %cmp160 = icmp eq i32 %100, 1
  br i1 %cmp160, label %if.then161, label %if.end194

if.then161:                                       ; preds = %if.end157
  %101 = load ptr, ptr %fc118, align 8, !tbaa !4
  %ipAddressChoice162 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %ipAddressChoice162, align 8, !tbaa !18
  %type163 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %102, i32 0, i32 0
  %103 = load i32, ptr %type163, align 8, !tbaa !19
  %cmp164 = icmp eq i32 %103, 0
  br i1 %cmp164, label %if.then173, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %if.then161
  %104 = load ptr, ptr %fp, align 8, !tbaa !4
  %ipAddressChoice166 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %104, i32 0, i32 1
  %105 = load ptr, ptr %ipAddressChoice166, align 8, !tbaa !18
  %u = getelementptr inbounds %struct.IPAddressChoice_st, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %u, align 8, !tbaa !16
  %107 = load ptr, ptr %fc118, align 8, !tbaa !4
  %ipAddressChoice167 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %107, i32 0, i32 1
  %108 = load ptr, ptr %ipAddressChoice167, align 8, !tbaa !18
  %u168 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %108, i32 0, i32 1
  %109 = load ptr, ptr %u168, align 8, !tbaa !16
  %110 = load ptr, ptr %fc118, align 8, !tbaa !4
  %call169 = call i32 @X509v3_addr_get_afi(ptr noundef %110)
  %call170 = call i32 @length_from_afi(i32 noundef %call169)
  %call171 = call i32 @addr_contains(ptr noundef %106, ptr noundef %109, i32 noundef %call170)
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then173, label %if.else177

if.then173:                                       ; preds = %lor.lhs.false165, %if.then161
  %111 = load ptr, ptr %child, align 8, !tbaa !4
  %call174 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %111)
  %112 = load i32, ptr %j, align 4, !tbaa !17
  %113 = load ptr, ptr %fp, align 8, !tbaa !4
  %call175 = call ptr @ossl_check_IPAddressFamily_type(ptr noundef %113)
  %call176 = call ptr @OPENSSL_sk_set(ptr noundef %call174, i32 noundef %112, ptr noundef %call175)
  br label %if.end193

if.else177:                                       ; preds = %lor.lhs.false165
  br label %do.body178

do.body178:                                       ; preds = %if.else177
  %114 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp179 = icmp ne ptr %114, null
  br i1 %cmp179, label %if.then180, label %if.else186

if.then180:                                       ; preds = %do.body178
  %115 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error181 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %115, i32 0, i32 24
  store i32 46, ptr %error181, align 8, !tbaa !54
  %116 = load i32, ptr %i, align 4, !tbaa !17
  %117 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error_depth182 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %117, i32 0, i32 23
  store i32 %116, ptr %error_depth182, align 4, !tbaa !62
  %118 = load ptr, ptr %x, align 8, !tbaa !4
  %119 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %current_cert183 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %119, i32 0, i32 25
  store ptr %118, ptr %current_cert183, align 8, !tbaa !63
  %120 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb184 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %120, i32 0, i32 7
  %121 = load ptr, ptr %verify_cb184, align 8, !tbaa !53
  %122 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call185 = call i32 %121(i32 noundef 0, ptr noundef %122)
  store i32 %call185, ptr %rv, align 4, !tbaa !17
  br label %if.end187

if.else186:                                       ; preds = %do.body178
  store i32 0, ptr %rv, align 4, !tbaa !17
  br label %if.end187

if.end187:                                        ; preds = %if.else186, %if.then180
  %123 = load i32, ptr %rv, align 4, !tbaa !17
  %cmp188 = icmp eq i32 %123, 0
  br i1 %cmp188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.end187
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

if.end190:                                        ; preds = %if.end187
  br label %do.cond191

do.cond191:                                       ; preds = %if.end190
  br label %do.end192

do.end192:                                        ; preds = %do.cond191
  br label %if.end193

if.end193:                                        ; preds = %do.end192, %if.then173
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end157
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup195

cleanup195:                                       ; preds = %if.then189, %if.then156, %if.then145, %if.end194, %if.end149, %do.end148
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fc118) #8
  %cleanup.dest198 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest198, label %cleanup255 [
    i32 0, label %cleanup.cont199
    i32 15, label %for.end202
    i32 17, label %for.inc200
    i32 4, label %done
  ]

cleanup.cont199:                                  ; preds = %cleanup195
  br label %for.inc200

for.inc200:                                       ; preds = %cleanup.cont199, %cleanup195
  %124 = load i32, ptr %j, align 4, !tbaa !17
  %inc201 = add nsw i32 %124, 1
  store i32 %inc201, ptr %j, align 4, !tbaa !17
  br label %for.cond113, !llvm.loop !65

for.end202:                                       ; preds = %cleanup195, %for.cond113
  br label %for.inc203

for.inc203:                                       ; preds = %for.end202, %for.end
  %125 = load i32, ptr %i, align 4, !tbaa !17
  %inc204 = add nsw i32 %125, 1
  store i32 %inc204, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !66

for.end205:                                       ; preds = %for.cond
  %126 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr206 = getelementptr inbounds %struct.x509_st, ptr %126, i32 0, i32 18
  %127 = load ptr, ptr %rfc3779_addr206, align 8, !tbaa !55
  %cmp207 = icmp ne ptr %127, null
  br i1 %cmp207, label %if.then208, label %if.end253

if.then208:                                       ; preds = %for.end205
  store i32 0, ptr %j, align 4, !tbaa !17
  br label %for.cond209

for.cond209:                                      ; preds = %for.inc250, %if.then208
  %128 = load i32, ptr %j, align 4, !tbaa !17
  %129 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr210 = getelementptr inbounds %struct.x509_st, ptr %129, i32 0, i32 18
  %130 = load ptr, ptr %rfc3779_addr210, align 8, !tbaa !55
  %call211 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %130)
  %call212 = call i32 @OPENSSL_sk_num(ptr noundef %call211)
  %cmp213 = icmp slt i32 %128, %call212
  br i1 %cmp213, label %for.body214, label %for.end252

for.body214:                                      ; preds = %for.cond209
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp215) #8
  %131 = load ptr, ptr %x, align 8, !tbaa !4
  %rfc3779_addr216 = getelementptr inbounds %struct.x509_st, ptr %131, i32 0, i32 18
  %132 = load ptr, ptr %rfc3779_addr216, align 8, !tbaa !55
  %call217 = call ptr @ossl_check_const_IPAddressFamily_sk_type(ptr noundef %132)
  %133 = load i32, ptr %j, align 4, !tbaa !17
  %call218 = call ptr @OPENSSL_sk_value(ptr noundef %call217, i32 noundef %133)
  store ptr %call218, ptr %fp215, align 8, !tbaa !4
  %134 = load ptr, ptr %fp215, align 8, !tbaa !4
  %call219 = call i32 @IPAddressFamily_check_len(ptr noundef %134)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.end222, label %if.then221

if.then221:                                       ; preds = %for.body214
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup247

if.end222:                                        ; preds = %for.body214
  %135 = load ptr, ptr %fp215, align 8, !tbaa !4
  %ipAddressChoice223 = getelementptr inbounds %struct.IPAddressFamily_st, ptr %135, i32 0, i32 1
  %136 = load ptr, ptr %ipAddressChoice223, align 8, !tbaa !18
  %type224 = getelementptr inbounds %struct.IPAddressChoice_st, ptr %136, i32 0, i32 0
  %137 = load i32, ptr %type224, align 8, !tbaa !19
  %cmp225 = icmp eq i32 %137, 0
  br i1 %cmp225, label %land.lhs.true, label %if.end246

land.lhs.true:                                    ; preds = %if.end222
  %138 = load ptr, ptr %child, align 8, !tbaa !4
  %call226 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %138)
  %139 = load ptr, ptr %fp215, align 8, !tbaa !4
  %call227 = call ptr @ossl_check_IPAddressFamily_type(ptr noundef %139)
  %call228 = call i32 @OPENSSL_sk_find(ptr noundef %call226, ptr noundef %call227)
  %cmp229 = icmp sge i32 %call228, 0
  br i1 %cmp229, label %if.then230, label %if.end246

if.then230:                                       ; preds = %land.lhs.true
  br label %do.body231

do.body231:                                       ; preds = %if.then230
  %140 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp232 = icmp ne ptr %140, null
  br i1 %cmp232, label %if.then233, label %if.else239

if.then233:                                       ; preds = %do.body231
  %141 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error234 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %141, i32 0, i32 24
  store i32 46, ptr %error234, align 8, !tbaa !54
  %142 = load i32, ptr %i, align 4, !tbaa !17
  %143 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %error_depth235 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %143, i32 0, i32 23
  store i32 %142, ptr %error_depth235, align 4, !tbaa !62
  %144 = load ptr, ptr %x, align 8, !tbaa !4
  %145 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %current_cert236 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %145, i32 0, i32 25
  store ptr %144, ptr %current_cert236, align 8, !tbaa !63
  %146 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %verify_cb237 = getelementptr inbounds %struct.x509_store_ctx_st, ptr %146, i32 0, i32 7
  %147 = load ptr, ptr %verify_cb237, align 8, !tbaa !53
  %148 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %call238 = call i32 %147(i32 noundef 0, ptr noundef %148)
  store i32 %call238, ptr %rv, align 4, !tbaa !17
  br label %if.end240

if.else239:                                       ; preds = %do.body231
  store i32 0, ptr %rv, align 4, !tbaa !17
  br label %if.end240

if.end240:                                        ; preds = %if.else239, %if.then233
  %149 = load i32, ptr %rv, align 4, !tbaa !17
  %cmp241 = icmp eq i32 %149, 0
  br i1 %cmp241, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.end240
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup247

if.end243:                                        ; preds = %if.end240
  br label %do.cond244

do.cond244:                                       ; preds = %if.end243
  br label %do.end245

do.end245:                                        ; preds = %do.cond244
  br label %if.end246

if.end246:                                        ; preds = %do.end245, %land.lhs.true, %if.end222
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup247

cleanup247:                                       ; preds = %if.then242, %if.then221, %if.end246
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp215) #8
  %cleanup.dest248 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest248, label %cleanup255 [
    i32 0, label %cleanup.cont249
    i32 4, label %done
  ]

cleanup.cont249:                                  ; preds = %cleanup247
  br label %for.inc250

for.inc250:                                       ; preds = %cleanup.cont249
  %150 = load i32, ptr %j, align 4, !tbaa !17
  %inc251 = add nsw i32 %150, 1
  store i32 %inc251, ptr %j, align 4, !tbaa !17
  br label %for.cond209, !llvm.loop !67

for.end252:                                       ; preds = %for.cond209
  br label %if.end253

if.end253:                                        ; preds = %for.end252, %for.end205
  store i32 1, ptr %ret, align 4, !tbaa !17
  br label %done

done:                                             ; preds = %if.end253, %cleanup247, %cleanup195, %cleanup, %if.then70, %if.end48, %if.then35
  %151 = load ptr, ptr %child, align 8, !tbaa !4
  %call254 = call ptr @ossl_check_IPAddressFamily_sk_type(ptr noundef %151)
  call void @OPENSSL_sk_free(ptr noundef %call254)
  %152 = load i32, ptr %ret, align 4, !tbaa !17
  store i32 %152, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup255

cleanup255:                                       ; preds = %done, %cleanup247, %cleanup195, %cleanup, %if.then22, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #8
  %153 = load i32, ptr %retval, align 4
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_addr_validate_resource_set(ptr noundef %chain, ptr noundef %ext, i32 noundef %allow_inheritance) #0 {
entry:
  %retval = alloca i32, align 4
  %chain.addr = alloca ptr, align 8
  %ext.addr = alloca ptr, align 8
  %allow_inheritance.addr = alloca i32, align 4
  store ptr %chain, ptr %chain.addr, align 8, !tbaa !4
  store ptr %ext, ptr %ext.addr, align 8, !tbaa !4
  store i32 %allow_inheritance, ptr %allow_inheritance.addr, align 4, !tbaa !17
  %0 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_X509_sk_type(ptr noundef %2)
  %call2 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %3 = load i32, ptr %allow_inheritance.addr, align 4, !tbaa !17
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %4 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %call6 = call i32 @X509v3_addr_inherits(ptr noundef %4)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %5 = load ptr, ptr %chain.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ext.addr, align 8, !tbaa !4
  %call10 = call i32 @addr_validate_path_internal(ptr noundef null, ptr noundef %5, ptr noundef %6)
  store i32 %call10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare ptr @ASN1_BIT_STRING_it() #1

declare ptr @ASN1_NULL_it() #1

declare ptr @ASN1_OCTET_STRING_it() #1

declare ptr @ASN1_OCTET_STRING_new() #1

declare i32 @ASN1_OCTET_STRING_set(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @OPENSSL_sk_new_null() #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_IPAddressOrRange_compfunc_type(ptr noundef %cmp) #3 {
entry:
  %cmp.addr = alloca ptr, align 8
  store ptr %cmp, ptr %cmp.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %cmp.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal i32 @v4IPAddressOrRange_cmp(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %call = call i32 @IPAddressOrRange_cmp(ptr noundef %1, ptr noundef %3, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @v6IPAddressOrRange_cmp(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %call = call i32 @IPAddressOrRange_cmp(ptr noundef %1, ptr noundef %3, i32 noundef 16)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @IPAddressOrRange_cmp(ptr noundef %a, ptr noundef %b, i32 noundef %length) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %addr_a = alloca [16 x i8], align 16
  %addr_b = alloca [16 x i8], align 16
  %prefixlen_a = alloca i32, align 4
  %prefixlen_b = alloca i32, align 4
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr %addr_a) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr %addr_b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefixlen_a) #8
  store i32 0, ptr %prefixlen_a, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %prefixlen_b) #8
  store i32 0, ptr %prefixlen_b, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %type, align 8, !tbaa !23
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8], ptr %addr_a, i64 0, i64 0
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %u, align 8, !tbaa !16
  %4 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call = call i32 @addr_expand(ptr noundef %arraydecay, ptr noundef %3, i32 noundef %4, i8 noundef zeroext 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %u1 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %u1, align 8, !tbaa !16
  %length2 = getelementptr inbounds %struct.asn1_string_st, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %length2, align 8, !tbaa !15
  %mul = mul nsw i32 %7, 8
  %conv = sext i32 %mul to i64
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %u3 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %u3, align 8, !tbaa !16
  %flags = getelementptr inbounds %struct.asn1_string_st, ptr %9, i32 0, i32 3
  %10 = load i64, ptr %flags, align 8, !tbaa !25
  %and = and i64 %10, 7
  %sub = sub nsw i64 %conv, %and
  %conv4 = trunc i64 %sub to i32
  store i32 %conv4, ptr %prefixlen_a, align 4, !tbaa !17
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %addr_a, i64 0, i64 0
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %u7 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %u7, align 8, !tbaa !16
  %min = getelementptr inbounds %struct.IPAddressRange_st, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %min, align 8, !tbaa !26
  %14 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call8 = call i32 @addr_expand(ptr noundef %arraydecay6, ptr noundef %13, i32 noundef %14, i8 noundef zeroext 0)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %sw.bb5
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %sw.bb5
  %15 = load i32, ptr %length.addr, align 4, !tbaa !17
  %mul12 = mul nsw i32 %15, 8
  store i32 %mul12, ptr %prefixlen_a, align 4, !tbaa !17
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end11, %if.end
  %16 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %type13 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %type13, align 8, !tbaa !23
  switch i32 %17, label %sw.epilog39 [
    i32 0, label %sw.bb14
    i32 1, label %sw.bb30
  ]

sw.bb14:                                          ; preds = %sw.epilog
  %arraydecay15 = getelementptr inbounds [16 x i8], ptr %addr_b, i64 0, i64 0
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %u16 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %u16, align 8, !tbaa !16
  %20 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call17 = call i32 @addr_expand(ptr noundef %arraydecay15, ptr noundef %19, i32 noundef %20, i8 noundef zeroext 0)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %sw.bb14
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %sw.bb14
  %21 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %u21 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %u21, align 8, !tbaa !16
  %length22 = getelementptr inbounds %struct.asn1_string_st, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %length22, align 8, !tbaa !15
  %mul23 = mul nsw i32 %23, 8
  %conv24 = sext i32 %mul23 to i64
  %24 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %u25 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %u25, align 8, !tbaa !16
  %flags26 = getelementptr inbounds %struct.asn1_string_st, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %flags26, align 8, !tbaa !25
  %and27 = and i64 %26, 7
  %sub28 = sub nsw i64 %conv24, %and27
  %conv29 = trunc i64 %sub28 to i32
  store i32 %conv29, ptr %prefixlen_b, align 4, !tbaa !17
  br label %sw.epilog39

sw.bb30:                                          ; preds = %sw.epilog
  %arraydecay31 = getelementptr inbounds [16 x i8], ptr %addr_b, i64 0, i64 0
  %27 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %u32 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %u32, align 8, !tbaa !16
  %min33 = getelementptr inbounds %struct.IPAddressRange_st, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %min33, align 8, !tbaa !26
  %30 = load i32, ptr %length.addr, align 4, !tbaa !17
  %call34 = call i32 @addr_expand(ptr noundef %arraydecay31, ptr noundef %29, i32 noundef %30, i8 noundef zeroext 0)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %sw.bb30
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %sw.bb30
  %31 = load i32, ptr %length.addr, align 4, !tbaa !17
  %mul38 = mul nsw i32 %31, 8
  store i32 %mul38, ptr %prefixlen_b, align 4, !tbaa !17
  br label %sw.epilog39

sw.epilog39:                                      ; preds = %sw.epilog, %if.end37, %if.end20
  %arraydecay40 = getelementptr inbounds [16 x i8], ptr %addr_a, i64 0, i64 0
  %arraydecay41 = getelementptr inbounds [16 x i8], ptr %addr_b, i64 0, i64 0
  %32 = load i32, ptr %length.addr, align 4, !tbaa !17
  %conv42 = sext i32 %32 to i64
  %call43 = call i32 @memcmp(ptr noundef %arraydecay40, ptr noundef %arraydecay41, i64 noundef %conv42) #9
  store i32 %call43, ptr %r, align 4, !tbaa !17
  %cmp = icmp ne i32 %call43, 0
  br i1 %cmp, label %if.then45, label %if.else

if.then45:                                        ; preds = %sw.epilog39
  %33 = load i32, ptr %r, align 4, !tbaa !17
  store i32 %33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.epilog39
  %34 = load i32, ptr %prefixlen_a, align 4, !tbaa !17
  %35 = load i32, ptr %prefixlen_b, align 4, !tbaa !17
  %sub46 = sub nsw i32 %34, %35
  store i32 %sub46, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then45, %if.then36, %if.then19, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefixlen_b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %prefixlen_a) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %addr_b) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %addr_a) #8
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @addr_expand(ptr noundef %addr, ptr noundef %bs, i32 noundef %length, i8 noundef zeroext %fill) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %bs.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %fill.addr = alloca i8, align 1
  %mask = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8, !tbaa !4
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  store i32 %length, ptr %length.addr, align 4, !tbaa !17
  store i8 %fill, ptr %fill.addr, align 1, !tbaa !16
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length1 = getelementptr inbounds %struct.asn1_string_st, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %length1, align 8, !tbaa !15
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length2 = getelementptr inbounds %struct.asn1_string_st, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %length2, align 8, !tbaa !15
  %4 = load i32, ptr %length.addr, align 4, !tbaa !17
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length4 = getelementptr inbounds %struct.asn1_string_st, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %length4, align 8, !tbaa !15
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end33

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %data, align 8, !tbaa !12
  %10 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length7 = getelementptr inbounds %struct.asn1_string_st, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %length7, align 8, !tbaa !15
  %conv = sext i32 %11 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 %conv, i1 false)
  %12 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.asn1_string_st, ptr %12, i32 0, i32 3
  %13 = load i64, ptr %flags, align 8, !tbaa !25
  %and = and i64 %13, 7
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %if.then10, label %if.end32

if.then10:                                        ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 1, ptr %mask) #8
  %14 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %flags11 = getelementptr inbounds %struct.asn1_string_st, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %flags11, align 8, !tbaa !25
  %and12 = and i64 %15, 7
  %sub = sub nsw i64 8, %and12
  %sh_prom = trunc i64 %sub to i32
  %shr = ashr i32 255, %sh_prom
  %conv13 = trunc i32 %shr to i8
  store i8 %conv13, ptr %mask, align 1, !tbaa !16
  %16 = load i8, ptr %fill.addr, align 1, !tbaa !16
  %conv14 = zext i8 %16 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then10
  %17 = load i8, ptr %mask, align 1, !tbaa !16
  %conv18 = zext i8 %17 to i32
  %not = xor i32 %conv18, -1
  %18 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length19 = getelementptr inbounds %struct.asn1_string_st, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %length19, align 8, !tbaa !15
  %sub20 = sub nsw i32 %20, 1
  %idxprom = sext i32 %sub20 to i64
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %21 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv21 = zext i8 %21 to i32
  %and22 = and i32 %conv21, %not
  %conv23 = trunc i32 %and22 to i8
  store i8 %conv23, ptr %arrayidx, align 1, !tbaa !16
  br label %if.end31

if.else:                                          ; preds = %if.then10
  %22 = load i8, ptr %mask, align 1, !tbaa !16
  %conv24 = zext i8 %22 to i32
  %23 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length25 = getelementptr inbounds %struct.asn1_string_st, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %length25, align 8, !tbaa !15
  %sub26 = sub nsw i32 %25, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %23, i64 %idxprom27
  %26 = load i8, ptr %arrayidx28, align 1, !tbaa !16
  %conv29 = zext i8 %26 to i32
  %or = or i32 %conv29, %conv24
  %conv30 = trunc i32 %or to i8
  store i8 %conv30, ptr %arrayidx28, align 1, !tbaa !16
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then17
  call void @llvm.lifetime.end.p0(i64 1, ptr %mask) #8
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then6
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end
  %27 = load ptr, ptr %addr.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length34 = getelementptr inbounds %struct.asn1_string_st, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %length34, align 8, !tbaa !15
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  %30 = load i8, ptr %fill.addr, align 1, !tbaa !16
  %conv35 = zext i8 %30 to i32
  %31 = trunc i32 %conv35 to i8
  %32 = load i32, ptr %length.addr, align 4, !tbaa !17
  %33 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length36 = getelementptr inbounds %struct.asn1_string_st, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %length36, align 8, !tbaa !15
  %sub37 = sub nsw i32 %32, %34
  %conv38 = sext i32 %sub37 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 %31, i64 %conv38, i1 false)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @ASN1_BIT_STRING_new() #1

declare i32 @ASN1_BIT_STRING_set(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @OPENSSL_sk_set(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @OPENSSL_sk_delete(ptr noundef, i32 noundef) #1

declare ptr @OPENSSL_sk_new(ptr noundef) #1

declare void @ERR_new() #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_const_CONF_VALUE_sk_type(ptr noundef %sk) #3 {
entry:
  %sk.addr = alloca ptr, align 8
  store ptr %sk, ptr %sk.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %sk.addr, align 8, !tbaa !4
  ret ptr %0
}

declare i32 @ossl_v3_name_cmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strspn(ptr noundef, ptr noundef) #4

declare void @ERR_add_error_data(i32 noundef, ...) #1

declare noalias ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @ossl_a2i_ipadd(ptr noundef, ptr noundef) #1

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ossl_check_IPAddressFamily_freefunc_type(ptr noundef %fr) #3 {
entry:
  %fr.addr = alloca ptr, align 8
  store ptr %fr, ptr %fr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %fr.addr, align 8, !tbaa !4
  ret ptr %0
}

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) #1

declare i32 @BIO_puts(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @i2r_IPAddressOrRanges(ptr noundef %out, i32 noundef %indent, ptr noundef %aors, i32 noundef %afi) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %indent.addr = alloca i32, align 4
  %aors.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %aor = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !17
  store ptr %aors, ptr %aors.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !17
  %1 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %1)
  %call1 = call i32 @OPENSSL_sk_num(ptr noundef %call)
  %cmp = icmp slt i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %aor) #8
  %2 = load ptr, ptr %aors.addr, align 8, !tbaa !4
  %call2 = call ptr @ossl_check_const_IPAddressOrRange_sk_type(ptr noundef %2)
  %3 = load i32, ptr %i, align 4, !tbaa !17
  %call3 = call ptr @OPENSSL_sk_value(ptr noundef %call2, i32 noundef %3)
  store ptr %call3, ptr %aor, align 8, !tbaa !4
  %4 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %5 = load i32, ptr %indent.addr, align 4, !tbaa !17
  %call4 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %4, ptr noundef @.str.38, i32 noundef %5, ptr noundef @.str.24)
  %6 = load ptr, ptr %aor, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %type, align 8, !tbaa !23
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

sw.bb:                                            ; preds = %for.body
  %8 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %9 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %10 = load ptr, ptr %aor, align 8, !tbaa !4
  %u = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %u, align 8, !tbaa !16
  %call5 = call i32 @i2r_address(ptr noundef %8, i32 noundef %9, i8 noundef zeroext 0, ptr noundef %11)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %12 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %aor, align 8, !tbaa !4
  %u6 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %u6, align 8, !tbaa !16
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %length, align 8, !tbaa !15
  %mul = mul nsw i32 %15, 8
  %conv = sext i32 %mul to i64
  %16 = load ptr, ptr %aor, align 8, !tbaa !4
  %u7 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %u7, align 8, !tbaa !16
  %flags = getelementptr inbounds %struct.asn1_string_st, ptr %17, i32 0, i32 3
  %18 = load i64, ptr %flags, align 8, !tbaa !25
  %and = and i64 %18, 7
  %sub = sub nsw i64 %conv, %and
  %conv8 = trunc i64 %sub to i32
  %call9 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %12, ptr noundef @.str.39, i32 noundef %conv8)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %for.body
  %19 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %20 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %21 = load ptr, ptr %aor, align 8, !tbaa !4
  %u11 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %u11, align 8, !tbaa !16
  %min = getelementptr inbounds %struct.IPAddressRange_st, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %min, align 8, !tbaa !26
  %call12 = call i32 @i2r_address(ptr noundef %19, i32 noundef %20, i8 noundef zeroext 0, ptr noundef %23)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %sw.bb10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %sw.bb10
  %24 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call16 = call i32 @BIO_puts(ptr noundef %24, ptr noundef @.str.40)
  %25 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %26 = load i32, ptr %afi.addr, align 4, !tbaa !17
  %27 = load ptr, ptr %aor, align 8, !tbaa !4
  %u17 = getelementptr inbounds %struct.IPAddressOrRange_st, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %u17, align 8, !tbaa !16
  %max = getelementptr inbounds %struct.IPAddressRange_st, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %max, align 8, !tbaa !28
  %call18 = call i32 @i2r_address(ptr noundef %25, i32 noundef %26, i8 noundef zeroext -1, ptr noundef %29)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %30 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call22 = call i32 @BIO_puts(ptr noundef %30, ptr noundef @.str.41)
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end21, %if.then20, %if.then14, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %aor) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %31 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23

cleanup23:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @i2r_address(ptr noundef %out, i32 noundef %afi, i8 noundef zeroext %fill, ptr noundef %bs) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca ptr, align 8
  %afi.addr = alloca i32, align 4
  %fill.addr = alloca i8, align 1
  %bs.addr = alloca ptr, align 8
  %addr = alloca [16 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8, !tbaa !4
  store i32 %afi, ptr %afi.addr, align 4, !tbaa !17
  store i8 %fill, ptr %fill.addr, align 1, !tbaa !16
  store ptr %bs, ptr %bs.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %addr) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  %0 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length = getelementptr inbounds %struct.asn1_string_st, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %length, align 8, !tbaa !15
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %afi.addr, align 4, !tbaa !17
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 0
  %3 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %4 = load i8, ptr %fill.addr, align 1, !tbaa !16
  %call = call i32 @addr_expand(ptr noundef %arraydecay, ptr noundef %3, i32 noundef 4, i8 noundef zeroext %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 0
  %6 = load i8, ptr %arrayidx, align 16, !tbaa !16
  %conv = zext i8 %6 to i32
  %arrayidx3 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 1
  %7 = load i8, ptr %arrayidx3, align 1, !tbaa !16
  %conv4 = zext i8 %7 to i32
  %arrayidx5 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 2
  %8 = load i8, ptr %arrayidx5, align 2, !tbaa !16
  %conv6 = zext i8 %8 to i32
  %arrayidx7 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 3
  %9 = load i8, ptr %arrayidx7, align 1, !tbaa !16
  %conv8 = zext i8 %9 to i32
  %call9 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %5, ptr noundef @.str.42, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 0
  %10 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %11 = load i8, ptr %fill.addr, align 1, !tbaa !16
  %call12 = call i32 @addr_expand(ptr noundef %arraydecay11, ptr noundef %10, i32 noundef 16, i8 noundef zeroext %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %sw.bb10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %sw.bb10
  store i32 16, ptr %n, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %12 = load i32, ptr %n, align 4, !tbaa !17
  %cmp16 = icmp sgt i32 %12, 1
  br i1 %cmp16, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %13 = load i32, ptr %n, align 4, !tbaa !17
  %sub = sub nsw i32 %13, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 %idxprom
  %14 = load i8, ptr %arrayidx18, align 1, !tbaa !16
  %conv19 = zext i8 %14 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load i32, ptr %n, align 4, !tbaa !17
  %sub22 = sub nsw i32 %15, 2
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 %idxprom23
  %16 = load i8, ptr %arrayidx24, align 1, !tbaa !16
  %conv25 = zext i8 %16 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp26, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %n, align 4, !tbaa !17
  %sub28 = sub nsw i32 %18, 2
  store i32 %sub28, ptr %n, align 4, !tbaa !17
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %land.end
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc42, %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !17
  %20 = load i32, ptr %n, align 4, !tbaa !17
  %cmp30 = icmp slt i32 %19, %20
  br i1 %cmp30, label %for.body32, label %for.end44

for.body32:                                       ; preds = %for.cond29
  %21 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %22 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 %idxprom33
  %23 = load i8, ptr %arrayidx34, align 1, !tbaa !16
  %conv35 = zext i8 %23 to i32
  %shl = shl i32 %conv35, 8
  %24 = load i32, ptr %i, align 4, !tbaa !17
  %add = add nsw i32 %24, 1
  %idxprom36 = sext i32 %add to i64
  %arrayidx37 = getelementptr inbounds [16 x i8], ptr %addr, i64 0, i64 %idxprom36
  %25 = load i8, ptr %arrayidx37, align 1, !tbaa !16
  %conv38 = zext i8 %25 to i32
  %or = or i32 %shl, %conv38
  %26 = load i32, ptr %i, align 4, !tbaa !17
  %cmp39 = icmp slt i32 %26, 14
  %27 = zext i1 %cmp39 to i64
  %cond = select i1 %cmp39, ptr @.str.44, ptr @.str.24
  %call41 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %21, ptr noundef @.str.43, i32 noundef %or, ptr noundef %cond)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body32
  %28 = load i32, ptr %i, align 4, !tbaa !17
  %add43 = add nsw i32 %28, 2
  store i32 %add43, ptr %i, align 4, !tbaa !17
  br label %for.cond29, !llvm.loop !70

for.end44:                                        ; preds = %for.cond29
  %29 = load i32, ptr %i, align 4, !tbaa !17
  %cmp45 = icmp slt i32 %29, 16
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.end44
  %30 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call48 = call i32 @BIO_puts(ptr noundef %30, ptr noundef @.str.44)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.end44
  %31 = load i32, ptr %i, align 4, !tbaa !17
  %cmp50 = icmp eq i32 %31, 0
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  %32 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %call53 = call i32 @BIO_puts(ptr noundef %32, ptr noundef @.str.44)
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %i, align 4, !tbaa !17
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc67, %sw.default
  %33 = load i32, ptr %i, align 4, !tbaa !17
  %34 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %length56 = getelementptr inbounds %struct.asn1_string_st, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %length56, align 8, !tbaa !15
  %cmp57 = icmp slt i32 %33, %35
  br i1 %cmp57, label %for.body59, label %for.end68

for.body59:                                       ; preds = %for.cond55
  %36 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %37 = load i32, ptr %i, align 4, !tbaa !17
  %cmp60 = icmp sgt i32 %37, 0
  %38 = zext i1 %cmp60 to i64
  %cond62 = select i1 %cmp60, ptr @.str.44, ptr @.str.24
  %39 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.asn1_string_st, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %data, align 8, !tbaa !12
  %41 = load i32, ptr %i, align 4, !tbaa !17
  %idxprom63 = sext i32 %41 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %40, i64 %idxprom63
  %42 = load i8, ptr %arrayidx64, align 1, !tbaa !16
  %conv65 = zext i8 %42 to i32
  %call66 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %36, ptr noundef @.str.45, ptr noundef %cond62, i32 noundef %conv65)
  br label %for.inc67

for.inc67:                                        ; preds = %for.body59
  %43 = load i32, ptr %i, align 4, !tbaa !17
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %i, align 4, !tbaa !17
  br label %for.cond55, !llvm.loop !71

for.end68:                                        ; preds = %for.cond55
  %44 = load ptr, ptr %out.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %bs.addr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.asn1_string_st, ptr %45, i32 0, i32 3
  %46 = load i64, ptr %flags, align 8, !tbaa !25
  %and = and i64 %46, 7
  %conv69 = trunc i64 %and to i32
  %call70 = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %44, ptr noundef @.str.46, i32 noundef %conv69)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end68, %if.end54, %if.end2
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then14, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %addr) #8
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

declare ptr @OPENSSL_sk_dup(ptr noundef) #1

declare void @OPENSSL_sk_free(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"IPAddressFamily_st", !5, i64 0, !5, i64 8}
!12 = !{!13, !5, i64 8}
!13 = !{!"asn1_string_st", !14, i64 0, !14, i64 4, !5, i64 8, !9, i64 16}
!14 = !{!"int", !6, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!11, !5, i64 8}
!19 = !{!20, !14, i64 0}
!20 = !{!"IPAddressChoice_st", !14, i64 0, !6, i64 8}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !14, i64 0}
!24 = !{!"IPAddressOrRange_st", !14, i64 0, !6, i64 8}
!25 = !{!13, !9, i64 16}
!26 = !{!27, !5, i64 0}
!27 = !{!"IPAddressRange_st", !5, i64 0, !5, i64 8}
!28 = !{!27, !5, i64 8}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = !{!43, !5, i64 8}
!43 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!44 = !{!43, !5, i64 16}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = !{!51, !5, i64 152}
!51 = !{!"x509_store_ctx_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !14, i64 144, !14, i64 148, !5, i64 152, !5, i64 160, !14, i64 168, !14, i64 172, !14, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !14, i64 208, !14, i64 212, !5, i64 216, !52, i64 224, !5, i64 240, !14, i64 248, !5, i64 256, !5, i64 264}
!52 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!53 = !{!51, !5, i64 56}
!54 = !{!51, !14, i64 176}
!55 = !{!56, !5, i64 296}
!56 = !{!"x509_st", !57, i64 0, !58, i64 136, !13, i64 152, !61, i64 176, !6, i64 192, !52, i64 200, !9, i64 216, !9, i64 224, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !6, i64 312, !5, i64 336, !5, i64 344, !14, i64 352, !5, i64 360, !5, i64 368, !5, i64 376}
!57 = !{!"x509_cinf_st", !5, i64 0, !13, i64 8, !58, i64 32, !5, i64 48, !59, i64 56, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !60, i64 112}
!58 = !{!"X509_algor_st", !5, i64 0, !5, i64 8}
!59 = !{!"X509_val_st", !5, i64 0, !5, i64 8}
!60 = !{!"ASN1_ENCODING_st", !5, i64 0, !9, i64 8, !14, i64 16}
!61 = !{!"x509_sig_info_st", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!62 = !{!51, !14, i64 172}
!63 = !{!51, !5, i64 184}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
