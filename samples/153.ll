; ModuleID = 'samples/153.bc'
source_filename = "config/zen2/bli_cntx_init_zen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blksz_s = type { [4 x i64], [4 x i64] }

; Function Attrs: nounwind uwtable
define hidden void @bli_cntx_init_zen2(ptr noundef %cntx) #0 {
entry:
  %cntx.addr = alloca ptr, align 8
  %blkszs = alloca [11 x %struct.blksz_s], align 16
  %thresh = alloca [3 x %struct.blksz_s], align 16
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 704, ptr %blkszs) #3
  call void @llvm.lifetime.start.p0(i64 192, ptr %thresh) #3
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void @bli_cntx_init_zen2_ref(ptr noundef %0)
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l3_nat_ukrs(i64 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef @bli_sgemm_haswell_asm_6x16, i32 noundef 1, i32 noundef 0, i32 noundef 2, ptr noundef @bli_dgemm_haswell_asm_6x8, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef @bli_cgemm_haswell_asm_3x8, i32 noundef 1, i32 noundef 0, i32 noundef 3, ptr noundef @bli_zgemm_haswell_asm_3x4, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef @bli_sgemmtrsm_l_haswell_asm_6x16, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef @bli_dgemmtrsm_l_haswell_asm_6x8, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef @bli_sgemmtrsm_u_haswell_asm_6x16, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef @bli_dgemmtrsm_u_haswell_asm_6x8, i32 noundef 1, ptr noundef %1)
  %2 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l3_thresh_funcs(i64 noundef 2, i32 noundef 10, ptr noundef @bli_cntx_gemmtsup_thresh_is_met_zen, i32 noundef 5, ptr noundef @bli_cntx_syrksup_thresh_is_met_zen, ptr noundef %2)
  %3 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_packm_kers(i64 noundef 8, i32 noundef 6, i32 noundef 0, ptr noundef @bli_spackm_haswell_asm_6xk, i32 noundef 16, i32 noundef 0, ptr noundef @bli_spackm_haswell_asm_16xk, i32 noundef 6, i32 noundef 2, ptr noundef @bli_dpackm_haswell_asm_6xk, i32 noundef 8, i32 noundef 2, ptr noundef @bli_dpackm_haswell_asm_8xk, i32 noundef 3, i32 noundef 1, ptr noundef @bli_cpackm_haswell_asm_3xk, i32 noundef 8, i32 noundef 1, ptr noundef @bli_cpackm_haswell_asm_8xk, i32 noundef 3, i32 noundef 3, ptr noundef @bli_zpackm_haswell_asm_3xk, i32 noundef 4, i32 noundef 3, ptr noundef @bli_zpackm_haswell_asm_4xk, ptr noundef %3)
  %4 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l1f_kers(i64 noundef 12, i32 noundef 2, i32 noundef 0, ptr noundef @bli_saxpyf_zen_int_5, i32 noundef 2, i32 noundef 2, ptr noundef @bli_daxpyf_zen_int_5, i32 noundef 2, i32 noundef 1, ptr noundef @bli_caxpyf_zen_int_5, i32 noundef 2, i32 noundef 3, ptr noundef @bli_zaxpyf_zen_int_5, i32 noundef 4, i32 noundef 1, ptr noundef @bli_cdotxaxpyf_zen_int_8, i32 noundef 4, i32 noundef 3, ptr noundef @bli_zdotxaxpyf_zen_int_8, i32 noundef 3, i32 noundef 0, ptr noundef @bli_sdotxf_zen_int_8, i32 noundef 3, i32 noundef 2, ptr noundef @bli_ddotxf_zen_int_8, i32 noundef 3, i32 noundef 3, ptr noundef @bli_zdotxf_zen_int_6, i32 noundef 3, i32 noundef 1, ptr noundef @bli_cdotxf_zen_int_6, i32 noundef 0, i32 noundef 2, ptr noundef @bli_daxpy2v_zen_int, i32 noundef 0, i32 noundef 3, ptr noundef @bli_zaxpy2v_zen_int, ptr noundef %4)
  %5 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l1v_kers(i64 noundef 29, i32 noundef 1, i32 noundef 0, ptr noundef @bli_samaxv_zen_int, i32 noundef 1, i32 noundef 2, ptr noundef @bli_damaxv_zen_int, i32 noundef 3, i32 noundef 0, ptr noundef @bli_saxpbyv_zen_int10, i32 noundef 3, i32 noundef 2, ptr noundef @bli_daxpbyv_zen_int10, i32 noundef 3, i32 noundef 1, ptr noundef @bli_caxpbyv_zen_int, i32 noundef 3, i32 noundef 3, ptr noundef @bli_zaxpbyv_zen_int, i32 noundef 4, i32 noundef 0, ptr noundef @bli_saxpyv_zen_int10, i32 noundef 4, i32 noundef 2, ptr noundef @bli_daxpyv_zen_int10, i32 noundef 4, i32 noundef 1, ptr noundef @bli_caxpyv_zen_int5, i32 noundef 4, i32 noundef 3, ptr noundef @bli_zaxpyv_zen_int5, i32 noundef 6, i32 noundef 0, ptr noundef @bli_sdotv_zen_int10, i32 noundef 6, i32 noundef 2, ptr noundef @bli_ddotv_zen_int10, i32 noundef 6, i32 noundef 1, ptr noundef @bli_cdotv_zen_int5, i32 noundef 6, i32 noundef 3, ptr noundef @bli_zdotv_zen_int5, i32 noundef 7, i32 noundef 0, ptr noundef @bli_sdotxv_zen_int, i32 noundef 7, i32 noundef 2, ptr noundef @bli_ddotxv_zen_int, i32 noundef 7, i32 noundef 3, ptr noundef @bli_zdotxv_zen_int, i32 noundef 7, i32 noundef 1, ptr noundef @bli_cdotxv_zen_int, i32 noundef 9, i32 noundef 0, ptr noundef @bli_sscalv_zen_int10, i32 noundef 9, i32 noundef 2, ptr noundef @bli_dscalv_zen_int10, i32 noundef 9, i32 noundef 3, ptr noundef @bli_zscalv_zen_int, i32 noundef 13, i32 noundef 0, ptr noundef @bli_sswapv_zen_int8, i32 noundef 13, i32 noundef 2, ptr noundef @bli_dswapv_zen_int8, i32 noundef 5, i32 noundef 0, ptr noundef @bli_scopyv_zen_int, i32 noundef 5, i32 noundef 2, ptr noundef @bli_dcopyv_zen_int, i32 noundef 5, i32 noundef 3, ptr noundef @bli_zcopyv_zen_int, i32 noundef 11, i32 noundef 0, ptr noundef @bli_ssetv_zen_int, i32 noundef 11, i32 noundef 2, ptr noundef @bli_dsetv_zen_int, i32 noundef 10, i32 noundef 3, ptr noundef @bli_zscal2v_zen_int, ptr noundef %5)
  %arrayidx = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 1
  call void @bli_blksz_init_easy(ptr noundef %arrayidx, i64 noundef 6, i64 noundef 6, i64 noundef 3, i64 noundef 3)
  %arrayidx1 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 2
  call void @bli_blksz_init_easy(ptr noundef %arrayidx1, i64 noundef 16, i64 noundef 8, i64 noundef 8, i64 noundef 4)
  %arrayidx2 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 3
  call void @bli_blksz_init_easy(ptr noundef %arrayidx2, i64 noundef 144, i64 noundef 72, i64 noundef 144, i64 noundef 18)
  %arrayidx3 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 4
  call void @bli_blksz_init_easy(ptr noundef %arrayidx3, i64 noundef 256, i64 noundef 256, i64 noundef 256, i64 noundef 566)
  %arrayidx4 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 5
  call void @bli_blksz_init_easy(ptr noundef %arrayidx4, i64 noundef 4080, i64 noundef 4080, i64 noundef 4080, i64 noundef 256)
  %arrayidx5 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 8
  call void @bli_blksz_init_easy(ptr noundef %arrayidx5, i64 noundef 5, i64 noundef 5, i64 noundef -1, i64 noundef -1)
  %arrayidx6 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 9
  call void @bli_blksz_init_easy(ptr noundef %arrayidx6, i64 noundef 8, i64 noundef 8, i64 noundef -1, i64 noundef -1)
  %arrayidx7 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 5
  %arrayidx8 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 4
  %arrayidx9 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 3
  %arrayidx10 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 2
  %arrayidx11 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 1
  %arrayidx12 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 8
  %arrayidx13 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 9
  %6 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i32, i64, ...) @bli_cntx_set_blkszs(i32 noundef 6, i64 noundef 7, i32 noundef 5, ptr noundef %arrayidx7, i32 noundef 2, i32 noundef 4, ptr noundef %arrayidx8, i32 noundef 0, i32 noundef 3, ptr noundef %arrayidx9, i32 noundef 1, i32 noundef 2, ptr noundef %arrayidx10, i32 noundef 2, i32 noundef 1, ptr noundef %arrayidx11, i32 noundef 1, i32 noundef 8, ptr noundef %arrayidx12, i32 noundef 8, i32 noundef 9, ptr noundef %arrayidx13, i32 noundef 9, ptr noundef %6)
  %arrayidx14 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 3
  call void @bli_blksz_init_easy(ptr noundef %arrayidx14, i64 noundef 144, i64 noundef 72, i64 noundef 144, i64 noundef 72)
  %arrayidx15 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 4
  call void @bli_blksz_init_easy(ptr noundef %arrayidx15, i64 noundef 256, i64 noundef 492, i64 noundef 256, i64 noundef 256)
  %arrayidx16 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 5
  call void @bli_blksz_init_easy(ptr noundef %arrayidx16, i64 noundef 4080, i64 noundef 1600, i64 noundef 4080, i64 noundef 4080)
  %arrayidx17 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 5
  %arrayidx18 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 4
  %arrayidx19 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 3
  %arrayidx20 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 2
  %arrayidx21 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 1
  %7 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_trsm_blkszs(i64 noundef 5, i32 noundef 5, ptr noundef %arrayidx17, i32 noundef 4, ptr noundef %arrayidx18, i32 noundef 3, ptr noundef %arrayidx19, i32 noundef 2, ptr noundef %arrayidx20, i32 noundef 1, ptr noundef %arrayidx21, ptr noundef %7)
  %arrayidx22 = getelementptr inbounds [3 x %struct.blksz_s], ptr %thresh, i64 0, i64 0
  call void @bli_blksz_init_easy(ptr noundef %arrayidx22, i64 noundef 512, i64 noundef 256, i64 noundef 380, i64 noundef 110)
  %arrayidx23 = getelementptr inbounds [3 x %struct.blksz_s], ptr %thresh, i64 0, i64 1
  call void @bli_blksz_init_easy(ptr noundef %arrayidx23, i64 noundef 200, i64 noundef 256, i64 noundef 256, i64 noundef 128)
  %arrayidx24 = getelementptr inbounds [3 x %struct.blksz_s], ptr %thresh, i64 0, i64 2
  call void @bli_blksz_init_easy(ptr noundef %arrayidx24, i64 noundef 240, i64 noundef 220, i64 noundef 220, i64 noundef 110)
  %arrayidx25 = getelementptr inbounds [3 x %struct.blksz_s], ptr %thresh, i64 0, i64 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.blksz_s], ptr %thresh, i64 0, i64 1
  %arrayidx27 = getelementptr inbounds [3 x %struct.blksz_s], ptr %thresh, i64 0, i64 2
  %8 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l3_sup_thresh(i64 noundef 3, i32 noundef 0, ptr noundef %arrayidx25, i32 noundef 1, ptr noundef %arrayidx26, i32 noundef 2, ptr noundef %arrayidx27, ptr noundef %8)
  %9 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l3_sup_handlers(i64 noundef 2, i32 noundef 0, ptr noundef @bli_gemmsup_ref, i32 noundef 10, ptr noundef @bli_gemmtsup_ref, ptr noundef %9)
  %10 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l3_sup_kers(i64 noundef 30, i32 noundef 0, i32 noundef 2, ptr noundef @bli_dgemmsup_rv_haswell_asm_6x8m, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef @bli_dgemmsup_rd_haswell_asm_6x8m, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef @bli_dgemmsup_rv_haswell_asm_6x8m, i32 noundef 1, i32 noundef 3, i32 noundef 2, ptr noundef @bli_dgemmsup_rv_haswell_asm_6x8n, i32 noundef 1, i32 noundef 4, i32 noundef 2, ptr noundef @bli_dgemmsup_rv_haswell_asm_6x8m, i32 noundef 1, i32 noundef 5, i32 noundef 2, ptr noundef @bli_dgemmsup_rd_haswell_asm_6x8n, i32 noundef 1, i32 noundef 6, i32 noundef 2, ptr noundef @bli_dgemmsup_rv_haswell_asm_6x8n, i32 noundef 1, i32 noundef 7, i32 noundef 2, ptr noundef @bli_dgemmsup_rv_haswell_asm_6x8n, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef @bli_sgemmsup_rv_zen_asm_6x16m, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef @bli_sgemmsup_rd_zen_asm_6x16m, i32 noundef 1, i32 noundef 2, i32 noundef 0, ptr noundef @bli_sgemmsup_rv_zen_asm_6x16m, i32 noundef 1, i32 noundef 3, i32 noundef 0, ptr noundef @bli_sgemmsup_rv_zen_asm_6x16n, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef @bli_sgemmsup_rv_zen_asm_6x16m, i32 noundef 1, i32 noundef 5, i32 noundef 0, ptr noundef @bli_sgemmsup_rd_zen_asm_6x16n, i32 noundef 1, i32 noundef 6, i32 noundef 0, ptr noundef @bli_sgemmsup_rv_zen_asm_6x16n, i32 noundef 1, i32 noundef 7, i32 noundef 0, ptr noundef @bli_sgemmsup_rv_zen_asm_6x16n, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef @bli_cgemmsup_rv_zen_asm_3x8m, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef @bli_cgemmsup_rv_zen_asm_3x8m, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef @bli_cgemmsup_rv_zen_asm_3x8m, i32 noundef 1, i32 noundef 3, i32 noundef 1, ptr noundef @bli_cgemmsup_rv_zen_asm_3x8n, i32 noundef 1, i32 noundef 6, i32 noundef 1, ptr noundef @bli_cgemmsup_rv_zen_asm_3x8n, i32 noundef 1, i32 noundef 7, i32 noundef 1, ptr noundef @bli_cgemmsup_rv_zen_asm_3x8n, i32 noundef 1, i32 noundef 0, i32 noundef 3, ptr noundef @bli_zgemmsup_rv_zen_asm_3x4m, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef @bli_zgemmsup_rd_zen_asm_3x4m, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef @bli_zgemmsup_rv_zen_asm_3x4m, i32 noundef 1, i32 noundef 3, i32 noundef 3, ptr noundef @bli_zgemmsup_rv_zen_asm_3x4n, i32 noundef 1, i32 noundef 4, i32 noundef 3, ptr noundef @bli_zgemmsup_rv_zen_asm_3x4m, i32 noundef 1, i32 noundef 5, i32 noundef 3, ptr noundef @bli_zgemmsup_rd_zen_asm_3x4n, i32 noundef 1, i32 noundef 6, i32 noundef 3, ptr noundef @bli_zgemmsup_rv_zen_asm_3x4n, i32 noundef 1, i32 noundef 7, i32 noundef 3, ptr noundef @bli_zgemmsup_rv_zen_asm_3x4n, i32 noundef 1, ptr noundef %10)
  %arrayidx28 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 1
  call void @bli_blksz_init(ptr noundef %arrayidx28, i64 noundef 6, i64 noundef 6, i64 noundef 3, i64 noundef 3, i64 noundef 9, i64 noundef 9, i64 noundef 3, i64 noundef 3)
  %arrayidx29 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 2
  call void @bli_blksz_init_easy(ptr noundef %arrayidx29, i64 noundef 16, i64 noundef 8, i64 noundef 8, i64 noundef 4)
  %arrayidx30 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 3
  call void @bli_blksz_init_easy(ptr noundef %arrayidx30, i64 noundef 144, i64 noundef 72, i64 noundef 72, i64 noundef 36)
  %arrayidx31 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 4
  call void @bli_blksz_init_easy(ptr noundef %arrayidx31, i64 noundef 512, i64 noundef 256, i64 noundef 128, i64 noundef 64)
  %arrayidx32 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 5
  call void @bli_blksz_init_easy(ptr noundef %arrayidx32, i64 noundef 8160, i64 noundef 4080, i64 noundef 2040, i64 noundef 1020)
  %arrayidx33 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 5
  %arrayidx34 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 4
  %arrayidx35 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 3
  %arrayidx36 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 2
  %arrayidx37 = getelementptr inbounds [11 x %struct.blksz_s], ptr %blkszs, i64 0, i64 1
  %11 = load ptr, ptr %cntx.addr, align 8, !tbaa !4
  call void (i64, ...) @bli_cntx_set_l3_sup_blkszs(i64 noundef 5, i32 noundef 5, ptr noundef %arrayidx33, i32 noundef 4, ptr noundef %arrayidx34, i32 noundef 3, ptr noundef %arrayidx35, i32 noundef 2, ptr noundef %arrayidx36, i32 noundef 1, ptr noundef %arrayidx37, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 192, ptr %thresh) #3
  call void @llvm.lifetime.end.p0(i64 704, ptr %blkszs) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @bli_cntx_init_zen2_ref(ptr noundef) #2

declare void @bli_cntx_set_l3_nat_ukrs(i64 noundef, ...) #2

declare void @bli_sgemm_haswell_asm_6x16(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_dgemm_haswell_asm_6x8(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_cgemm_haswell_asm_3x8(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemm_haswell_asm_3x4(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sgemmtrsm_l_haswell_asm_6x16(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_dgemmtrsm_l_haswell_asm_6x8(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sgemmtrsm_u_haswell_asm_6x16(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_dgemmtrsm_u_haswell_asm_6x8(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_cntx_set_l3_thresh_funcs(i64 noundef, ...) #2

declare zeroext i1 @bli_cntx_gemmtsup_thresh_is_met_zen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare zeroext i1 @bli_cntx_syrksup_thresh_is_met_zen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bli_cntx_set_packm_kers(i64 noundef, ...) #2

declare void @bli_spackm_haswell_asm_6xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_spackm_haswell_asm_16xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_dpackm_haswell_asm_6xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_dpackm_haswell_asm_8xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_cpackm_haswell_asm_3xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_cpackm_haswell_asm_8xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zpackm_haswell_asm_3xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zpackm_haswell_asm_4xk(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_cntx_set_l1f_kers(i64 noundef, ...) #2

declare void @bli_saxpyf_zen_int_5(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_daxpyf_zen_int_5(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_caxpyf_zen_int_5(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zaxpyf_zen_int_5(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_cdotxaxpyf_zen_int_8(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zdotxaxpyf_zen_int_8(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_sdotxf_zen_int_8(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_ddotxf_zen_int_8(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zdotxf_zen_int_6(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_cdotxf_zen_int_6(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_daxpy2v_zen_int(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zaxpy2v_zen_int(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_cntx_set_l1v_kers(i64 noundef, ...) #2

declare void @bli_samaxv_zen_int(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_damaxv_zen_int(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_saxpbyv_zen_int10(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_daxpbyv_zen_int10(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_caxpbyv_zen_int(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zaxpbyv_zen_int(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_saxpyv_zen_int10(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_daxpyv_zen_int10(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_caxpyv_zen_int5(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zaxpyv_zen_int5(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_sdotv_zen_int10(i32 noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_ddotv_zen_int10(i32 noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_cdotv_zen_int5(i32 noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zdotv_zen_int5(i32 noundef, i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sdotxv_zen_int(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bli_ddotxv_zen_int(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bli_zdotxv_zen_int(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bli_cdotxv_zen_int(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bli_sscalv_zen_int10(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_dscalv_zen_int10(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zscalv_zen_int(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_sswapv_zen_int8(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_dswapv_zen_int8(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_scopyv_zen_int(i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_dcopyv_zen_int(i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zcopyv_zen_int(i32 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_ssetv_zen_int(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_dsetv_zen_int(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_zscal2v_zen_int(i32 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @bli_blksz_init_easy(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

declare void @bli_cntx_set_blkszs(i32 noundef, i64 noundef, ...) #2

declare void @bli_cntx_set_trsm_blkszs(i64 noundef, ...) #2

declare void @bli_cntx_set_l3_sup_thresh(i64 noundef, ...) #2

declare void @bli_cntx_set_l3_sup_handlers(i64 noundef, ...) #2

declare i32 @bli_gemmsup_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @bli_gemmtsup_ref(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bli_cntx_set_l3_sup_kers(i64 noundef, ...) #2

declare void @bli_dgemmsup_rv_haswell_asm_6x8m(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_dgemmsup_rd_haswell_asm_6x8m(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_dgemmsup_rv_haswell_asm_6x8n(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_dgemmsup_rd_haswell_asm_6x8n(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sgemmsup_rv_zen_asm_6x16m(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sgemmsup_rd_zen_asm_6x16m(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sgemmsup_rv_zen_asm_6x16n(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_sgemmsup_rd_zen_asm_6x16n(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_cgemmsup_rv_zen_asm_3x8m(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_cgemmsup_rv_zen_asm_3x8n(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemmsup_rv_zen_asm_3x4m(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemmsup_rd_zen_asm_3x4m(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemmsup_rv_zen_asm_3x4n(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemmsup_rd_zen_asm_3x4n(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_blksz_init(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

declare void @bli_cntx_set_l3_sup_blkszs(i64 noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
