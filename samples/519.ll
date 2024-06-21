; ModuleID = 'samples/519.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qc8-dwconv/gen/up32x25-minmax-fp32-avx2-mul16-vpmovsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.4 = type { [8 x float], [16 x i16], [32 x i8] }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__loadu_ps = type { <8 x float> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(192) %params) #0 {
entry:
  %channels.addr = alloca i64, align 8
  %output_width.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %weights.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input_stride.addr = alloca i64, align 8
  %output_increment.addr = alloca i64, align 8
  %input_offset.addr = alloca i64, align 8
  %zero.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %i0 = alloca ptr, align 8
  %i1 = alloca ptr, align 8
  %i2 = alloca ptr, align 8
  %i3 = alloca ptr, align 8
  %i4 = alloca ptr, align 8
  %i5 = alloca ptr, align 8
  %i6 = alloca ptr, align 8
  %i7 = alloca ptr, align 8
  %i8 = alloca ptr, align 8
  %i9 = alloca ptr, align 8
  %i10 = alloca ptr, align 8
  %i11 = alloca ptr, align 8
  %i12 = alloca ptr, align 8
  %i13 = alloca ptr, align 8
  %i14 = alloca ptr, align 8
  %i15 = alloca ptr, align 8
  %i16 = alloca ptr, align 8
  %i17 = alloca ptr, align 8
  %i18 = alloca ptr, align 8
  %i19 = alloca ptr, align 8
  %i20 = alloca ptr, align 8
  %i21 = alloca ptr, align 8
  %i22 = alloca ptr, align 8
  %i23 = alloca ptr, align 8
  %i24 = alloca ptr, align 8
  %c = alloca i64, align 8
  %w = alloca ptr, align 8
  %vacc01234567 = alloca <4 x i64>, align 32
  %vacc89ABCDEF = alloca <4 x i64>, align 32
  %vaccGHIJKLMN = alloca <4 x i64>, align 32
  %vaccOPQRSTUV = alloca <4 x i64>, align 32
  %vi0x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk0x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi0xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk0xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod0x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod0x89ABCDEF = alloca <2 x i64>, align 16
  %vprod0xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod0xOPQRSTUV = alloca <2 x i64>, align 16
  %vi1x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk1x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi1xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk1xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod1x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod1x89ABCDEF = alloca <2 x i64>, align 16
  %vprod1xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod1xOPQRSTUV = alloca <2 x i64>, align 16
  %vi2x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk2x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi2xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk2xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod2x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod2x89ABCDEF = alloca <2 x i64>, align 16
  %vprod2xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod2xOPQRSTUV = alloca <2 x i64>, align 16
  %vi3x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk3x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi3xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk3xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod3x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod3x89ABCDEF = alloca <2 x i64>, align 16
  %vprod3xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod3xOPQRSTUV = alloca <2 x i64>, align 16
  %vi4x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk4x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi4xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk4xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod4x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod4x89ABCDEF = alloca <2 x i64>, align 16
  %vprod4xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod4xOPQRSTUV = alloca <2 x i64>, align 16
  %vi5x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk5x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi5xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk5xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod5x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod5x89ABCDEF = alloca <2 x i64>, align 16
  %vprod5xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod5xOPQRSTUV = alloca <2 x i64>, align 16
  %vi6x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk6x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi6xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk6xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod6x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod6x89ABCDEF = alloca <2 x i64>, align 16
  %vprod6xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod6xOPQRSTUV = alloca <2 x i64>, align 16
  %vi7x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk7x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi7xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk7xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod7x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod7x89ABCDEF = alloca <2 x i64>, align 16
  %vprod7xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod7xOPQRSTUV = alloca <2 x i64>, align 16
  %vi8x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk8x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi8xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk8xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod8x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod8x89ABCDEF = alloca <2 x i64>, align 16
  %vprod8xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod8xOPQRSTUV = alloca <2 x i64>, align 16
  %vi9x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk9x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi9xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk9xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod9x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod9x89ABCDEF = alloca <2 x i64>, align 16
  %vprod9xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod9xOPQRSTUV = alloca <2 x i64>, align 16
  %vi10x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk10x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi10xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk10xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod10x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod10x89ABCDEF = alloca <2 x i64>, align 16
  %vprod10xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod10xOPQRSTUV = alloca <2 x i64>, align 16
  %vi11x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk11x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi11xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk11xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod11x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod11x89ABCDEF = alloca <2 x i64>, align 16
  %vprod11xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod11xOPQRSTUV = alloca <2 x i64>, align 16
  %vi12x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk12x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi12xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk12xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod12x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod12x89ABCDEF = alloca <2 x i64>, align 16
  %vprod12xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod12xOPQRSTUV = alloca <2 x i64>, align 16
  %vi13x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk13x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi13xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk13xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod13x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod13x89ABCDEF = alloca <2 x i64>, align 16
  %vprod13xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod13xOPQRSTUV = alloca <2 x i64>, align 16
  %vi14x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk14x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi14xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk14xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod14x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod14x89ABCDEF = alloca <2 x i64>, align 16
  %vprod14xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod14xOPQRSTUV = alloca <2 x i64>, align 16
  %vi15x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk15x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi15xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk15xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod15x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod15x89ABCDEF = alloca <2 x i64>, align 16
  %vprod15xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod15xOPQRSTUV = alloca <2 x i64>, align 16
  %vi16x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk16x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi16xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk16xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod16x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod16x89ABCDEF = alloca <2 x i64>, align 16
  %vprod16xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod16xOPQRSTUV = alloca <2 x i64>, align 16
  %vi17x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk17x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi17xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk17xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod17x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod17x89ABCDEF = alloca <2 x i64>, align 16
  %vprod17xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod17xOPQRSTUV = alloca <2 x i64>, align 16
  %vi18x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk18x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi18xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk18xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod18x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod18x89ABCDEF = alloca <2 x i64>, align 16
  %vprod18xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod18xOPQRSTUV = alloca <2 x i64>, align 16
  %vi19x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk19x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi19xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk19xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod19x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod19x89ABCDEF = alloca <2 x i64>, align 16
  %vprod19xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod19xOPQRSTUV = alloca <2 x i64>, align 16
  %vi20x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk20x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi20xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk20xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod20x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod20x89ABCDEF = alloca <2 x i64>, align 16
  %vprod20xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod20xOPQRSTUV = alloca <2 x i64>, align 16
  %vi21x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk21x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi21xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk21xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod21x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod21x89ABCDEF = alloca <2 x i64>, align 16
  %vprod21xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod21xOPQRSTUV = alloca <2 x i64>, align 16
  %vi22x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk22x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi22xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk22xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod22x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod22x89ABCDEF = alloca <2 x i64>, align 16
  %vprod22xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod22xOPQRSTUV = alloca <2 x i64>, align 16
  %vi23x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk23x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi23xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk23xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod23x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod23x89ABCDEF = alloca <2 x i64>, align 16
  %vprod23xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod23xOPQRSTUV = alloca <2 x i64>, align 16
  %vi24x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk24x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vi24xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vk24xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod24x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod24x89ABCDEF = alloca <2 x i64>, align 16
  %vprod24xGHIJKLMNOPQRSTUV = alloca <4 x i64>, align 32
  %vprod24xOPQRSTUV = alloca <2 x i64>, align 16
  %vfpacc01234567 = alloca <8 x float>, align 32
  %vfpacc89ABCDEF = alloca <8 x float>, align 32
  %vfpaccGHIJKLMN = alloca <8 x float>, align 32
  %vfpaccOPQRSTUV = alloca <8 x float>, align 32
  %vscale01234567 = alloca <8 x float>, align 32
  %vscale89ABCDEF = alloca <8 x float>, align 32
  %vscaleGHIJKLMN = alloca <8 x float>, align 32
  %vscaleOPQRSTUV = alloca <8 x float>, align 32
  %voutput_max_less_zero_point = alloca <8 x float>, align 32
  %voutput_zero_point = alloca <4 x i64>, align 32
  %vout012389AB4567CDEF = alloca <4 x i64>, align 32
  %voutGHIJOPQRKLMNSTUV = alloca <4 x i64>, align 32
  %vout0123456789ABCDEF = alloca <2 x i64>, align 16
  %voutGHIJKLMNOPQRSTUV = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %k = alloca ptr, align 8
  %vacc012345671054 = alloca <4 x i64>, align 32
  %vacc89ABCDEF1056 = alloca <4 x i64>, align 32
  %vi0x0123456789ABCDEF1059 = alloca <4 x i64>, align 32
  %vk0x0123456789ABCDEF1062 = alloca <4 x i64>, align 32
  %vprod0x0123456789ABCDEF1066 = alloca <4 x i64>, align 32
  %vprod0x89ABCDEF1068 = alloca <2 x i64>, align 16
  %vi1x0123456789ABCDEF1075 = alloca <4 x i64>, align 32
  %vk1x0123456789ABCDEF1078 = alloca <4 x i64>, align 32
  %vprod1x0123456789ABCDEF1083 = alloca <4 x i64>, align 32
  %vprod1x89ABCDEF1085 = alloca <2 x i64>, align 16
  %vi2x0123456789ABCDEF1092 = alloca <4 x i64>, align 32
  %vk2x0123456789ABCDEF1095 = alloca <4 x i64>, align 32
  %vprod2x0123456789ABCDEF1100 = alloca <4 x i64>, align 32
  %vprod2x89ABCDEF1102 = alloca <2 x i64>, align 16
  %vi3x0123456789ABCDEF1109 = alloca <4 x i64>, align 32
  %vk3x0123456789ABCDEF1112 = alloca <4 x i64>, align 32
  %vprod3x0123456789ABCDEF1117 = alloca <4 x i64>, align 32
  %vprod3x89ABCDEF1119 = alloca <2 x i64>, align 16
  %vi4x0123456789ABCDEF1126 = alloca <4 x i64>, align 32
  %vk4x0123456789ABCDEF1129 = alloca <4 x i64>, align 32
  %vprod4x0123456789ABCDEF1134 = alloca <4 x i64>, align 32
  %vprod4x89ABCDEF1136 = alloca <2 x i64>, align 16
  %vi5x0123456789ABCDEF1143 = alloca <4 x i64>, align 32
  %vk5x0123456789ABCDEF1146 = alloca <4 x i64>, align 32
  %vprod5x0123456789ABCDEF1151 = alloca <4 x i64>, align 32
  %vprod5x89ABCDEF1153 = alloca <2 x i64>, align 16
  %vi6x0123456789ABCDEF1160 = alloca <4 x i64>, align 32
  %vk6x0123456789ABCDEF1163 = alloca <4 x i64>, align 32
  %vprod6x0123456789ABCDEF1168 = alloca <4 x i64>, align 32
  %vprod6x89ABCDEF1170 = alloca <2 x i64>, align 16
  %vi7x0123456789ABCDEF1177 = alloca <4 x i64>, align 32
  %vk7x0123456789ABCDEF1180 = alloca <4 x i64>, align 32
  %vprod7x0123456789ABCDEF1185 = alloca <4 x i64>, align 32
  %vprod7x89ABCDEF1187 = alloca <2 x i64>, align 16
  %vi8x0123456789ABCDEF1194 = alloca <4 x i64>, align 32
  %vk8x0123456789ABCDEF1197 = alloca <4 x i64>, align 32
  %vprod8x0123456789ABCDEF1202 = alloca <4 x i64>, align 32
  %vprod8x89ABCDEF1204 = alloca <2 x i64>, align 16
  %vi9x0123456789ABCDEF1211 = alloca <4 x i64>, align 32
  %vk9x0123456789ABCDEF1214 = alloca <4 x i64>, align 32
  %vprod9x0123456789ABCDEF1219 = alloca <4 x i64>, align 32
  %vprod9x89ABCDEF1221 = alloca <2 x i64>, align 16
  %vi10x0123456789ABCDEF1228 = alloca <4 x i64>, align 32
  %vk10x0123456789ABCDEF1231 = alloca <4 x i64>, align 32
  %vprod10x0123456789ABCDEF1236 = alloca <4 x i64>, align 32
  %vprod10x89ABCDEF1238 = alloca <2 x i64>, align 16
  %vi11x0123456789ABCDEF1245 = alloca <4 x i64>, align 32
  %vk11x0123456789ABCDEF1248 = alloca <4 x i64>, align 32
  %vprod11x0123456789ABCDEF1253 = alloca <4 x i64>, align 32
  %vprod11x89ABCDEF1255 = alloca <2 x i64>, align 16
  %vi12x0123456789ABCDEF1262 = alloca <4 x i64>, align 32
  %vk12x0123456789ABCDEF1265 = alloca <4 x i64>, align 32
  %vprod12x0123456789ABCDEF1270 = alloca <4 x i64>, align 32
  %vprod12x89ABCDEF1272 = alloca <2 x i64>, align 16
  %vi13x0123456789ABCDEF1279 = alloca <4 x i64>, align 32
  %vk13x0123456789ABCDEF1282 = alloca <4 x i64>, align 32
  %vprod13x0123456789ABCDEF1287 = alloca <4 x i64>, align 32
  %vprod13x89ABCDEF1289 = alloca <2 x i64>, align 16
  %vi14x0123456789ABCDEF1296 = alloca <4 x i64>, align 32
  %vk14x0123456789ABCDEF1299 = alloca <4 x i64>, align 32
  %vprod14x0123456789ABCDEF1304 = alloca <4 x i64>, align 32
  %vprod14x89ABCDEF1306 = alloca <2 x i64>, align 16
  %vi15x0123456789ABCDEF1313 = alloca <4 x i64>, align 32
  %vk15x0123456789ABCDEF1316 = alloca <4 x i64>, align 32
  %vprod15x0123456789ABCDEF1321 = alloca <4 x i64>, align 32
  %vprod15x89ABCDEF1323 = alloca <2 x i64>, align 16
  %vi16x0123456789ABCDEF1330 = alloca <4 x i64>, align 32
  %vk16x0123456789ABCDEF1333 = alloca <4 x i64>, align 32
  %vprod16x0123456789ABCDEF1338 = alloca <4 x i64>, align 32
  %vprod16x89ABCDEF1340 = alloca <2 x i64>, align 16
  %vi17x0123456789ABCDEF1347 = alloca <4 x i64>, align 32
  %vk17x0123456789ABCDEF1350 = alloca <4 x i64>, align 32
  %vprod17x0123456789ABCDEF1355 = alloca <4 x i64>, align 32
  %vprod17x89ABCDEF1357 = alloca <2 x i64>, align 16
  %vi18x0123456789ABCDEF1364 = alloca <4 x i64>, align 32
  %vk18x0123456789ABCDEF1367 = alloca <4 x i64>, align 32
  %vprod18x0123456789ABCDEF1372 = alloca <4 x i64>, align 32
  %vprod18x89ABCDEF1374 = alloca <2 x i64>, align 16
  %vi19x0123456789ABCDEF1381 = alloca <4 x i64>, align 32
  %vk19x0123456789ABCDEF1384 = alloca <4 x i64>, align 32
  %vprod19x0123456789ABCDEF1389 = alloca <4 x i64>, align 32
  %vprod19x89ABCDEF1391 = alloca <2 x i64>, align 16
  %vi20x0123456789ABCDEF1398 = alloca <4 x i64>, align 32
  %vk20x0123456789ABCDEF1401 = alloca <4 x i64>, align 32
  %vprod20x0123456789ABCDEF1406 = alloca <4 x i64>, align 32
  %vprod20x89ABCDEF1408 = alloca <2 x i64>, align 16
  %vi21x0123456789ABCDEF1415 = alloca <4 x i64>, align 32
  %vk21x0123456789ABCDEF1418 = alloca <4 x i64>, align 32
  %vprod21x0123456789ABCDEF1423 = alloca <4 x i64>, align 32
  %vprod21x89ABCDEF1425 = alloca <2 x i64>, align 16
  %vi22x0123456789ABCDEF1432 = alloca <4 x i64>, align 32
  %vk22x0123456789ABCDEF1435 = alloca <4 x i64>, align 32
  %vprod22x0123456789ABCDEF1440 = alloca <4 x i64>, align 32
  %vprod22x89ABCDEF1442 = alloca <2 x i64>, align 16
  %vi23x0123456789ABCDEF1449 = alloca <4 x i64>, align 32
  %vk23x0123456789ABCDEF1452 = alloca <4 x i64>, align 32
  %vprod23x0123456789ABCDEF1457 = alloca <4 x i64>, align 32
  %vprod23x89ABCDEF1459 = alloca <2 x i64>, align 16
  %vi24x0123456789ABCDEF1466 = alloca <4 x i64>, align 32
  %vk24x0123456789ABCDEF1469 = alloca <4 x i64>, align 32
  %vprod24x0123456789ABCDEF1474 = alloca <4 x i64>, align 32
  %vprod24x89ABCDEF1476 = alloca <2 x i64>, align 16
  %vfpacc012345671484 = alloca <8 x float>, align 32
  %vfpacc89ABCDEF1486 = alloca <8 x float>, align 32
  %vscale012345671488 = alloca <8 x float>, align 32
  %vscale89ABCDEF1492 = alloca <8 x float>, align 32
  %voutput_max_less_zero_point1499 = alloca <8 x float>, align 32
  %voutput_zero_point1508 = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout89ABCDEF = alloca <2 x i64>, align 16
  %voutput_min1520 = alloca <2 x i64>, align 16
  %vout0123456789ABCDEF1524 = alloca <2 x i64>, align 16
  store i64 %channels, ptr %channels.addr, align 8, !tbaa !5
  store i64 %output_width, ptr %output_width.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %weights, ptr %weights.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  store i64 %input_stride, ptr %input_stride.addr, align 8, !tbaa !5
  store i64 %output_increment, ptr %output_increment.addr, align 8, !tbaa !5
  store i64 %input_offset, ptr %input_offset.addr, align 8, !tbaa !5
  store ptr %zero, ptr %zero.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %do.cond1571, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i0) #6
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %1, ptr %i0, align 8, !tbaa !9
  %2 = load ptr, ptr %i0, align 8, !tbaa !9
  %3 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp = icmp ne ptr %2, %3
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !11

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr %i0, align 8, !tbaa !9
  %5 = ptrtoint ptr %4 to i64
  %6 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add = add i64 %5, %6
  %7 = inttoptr i64 %add to ptr
  store ptr %7, ptr %i0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #6
  %8 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  store ptr %9, ptr %i1, align 8, !tbaa !9
  %10 = load ptr, ptr %i1, align 8, !tbaa !9
  %11 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp3 = icmp ne ptr %10, %11
  %lnot5 = xor i1 %cmp3, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %if.then11, label %if.end13, !unpredictable !11

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %i1, align 8, !tbaa !9
  %13 = ptrtoint ptr %12 to i64
  %14 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add12 = add i64 %13, %14
  %15 = inttoptr i64 %add12 to ptr
  store ptr %15, ptr %i1, align 8, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #6
  %16 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx14, align 8, !tbaa !9
  store ptr %17, ptr %i2, align 8, !tbaa !9
  %18 = load ptr, ptr %i2, align 8, !tbaa !9
  %19 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp15 = icmp ne ptr %18, %19
  %lnot17 = xor i1 %cmp15, true
  %lnot19 = xor i1 %lnot17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %if.then23, label %if.end25, !unpredictable !11

if.then23:                                        ; preds = %if.end13
  %20 = load ptr, ptr %i2, align 8, !tbaa !9
  %21 = ptrtoint ptr %20 to i64
  %22 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add24 = add i64 %21, %22
  %23 = inttoptr i64 %add24 to ptr
  store ptr %23, ptr %i2, align 8, !tbaa !9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #6
  %24 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx26 = getelementptr inbounds ptr, ptr %24, i64 3
  %25 = load ptr, ptr %arrayidx26, align 8, !tbaa !9
  store ptr %25, ptr %i3, align 8, !tbaa !9
  %26 = load ptr, ptr %i3, align 8, !tbaa !9
  %27 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp27 = icmp ne ptr %26, %27
  %lnot29 = xor i1 %cmp27, true
  %lnot31 = xor i1 %lnot29, true
  %lnot.ext32 = zext i1 %lnot31 to i32
  %conv33 = sext i32 %lnot.ext32 to i64
  %tobool34 = icmp ne i64 %conv33, 0
  br i1 %tobool34, label %if.then35, label %if.end37, !unpredictable !11

if.then35:                                        ; preds = %if.end25
  %28 = load ptr, ptr %i3, align 8, !tbaa !9
  %29 = ptrtoint ptr %28 to i64
  %30 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add36 = add i64 %29, %30
  %31 = inttoptr i64 %add36 to ptr
  store ptr %31, ptr %i3, align 8, !tbaa !9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %i4) #6
  %32 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds ptr, ptr %32, i64 4
  %33 = load ptr, ptr %arrayidx38, align 8, !tbaa !9
  store ptr %33, ptr %i4, align 8, !tbaa !9
  %34 = load ptr, ptr %i4, align 8, !tbaa !9
  %35 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp39 = icmp ne ptr %34, %35
  %lnot41 = xor i1 %cmp39, true
  %lnot43 = xor i1 %lnot41, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %conv45 = sext i32 %lnot.ext44 to i64
  %tobool46 = icmp ne i64 %conv45, 0
  br i1 %tobool46, label %if.then47, label %if.end49, !unpredictable !11

if.then47:                                        ; preds = %if.end37
  %36 = load ptr, ptr %i4, align 8, !tbaa !9
  %37 = ptrtoint ptr %36 to i64
  %38 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add48 = add i64 %37, %38
  %39 = inttoptr i64 %add48 to ptr
  store ptr %39, ptr %i4, align 8, !tbaa !9
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %i5) #6
  %40 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx50 = getelementptr inbounds ptr, ptr %40, i64 5
  %41 = load ptr, ptr %arrayidx50, align 8, !tbaa !9
  store ptr %41, ptr %i5, align 8, !tbaa !9
  %42 = load ptr, ptr %i5, align 8, !tbaa !9
  %43 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp51 = icmp ne ptr %42, %43
  %lnot53 = xor i1 %cmp51, true
  %lnot55 = xor i1 %lnot53, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.end61, !unpredictable !11

if.then59:                                        ; preds = %if.end49
  %44 = load ptr, ptr %i5, align 8, !tbaa !9
  %45 = ptrtoint ptr %44 to i64
  %46 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add60 = add i64 %45, %46
  %47 = inttoptr i64 %add60 to ptr
  store ptr %47, ptr %i5, align 8, !tbaa !9
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end49
  call void @llvm.lifetime.start.p0(i64 8, ptr %i6) #6
  %48 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx62 = getelementptr inbounds ptr, ptr %48, i64 6
  %49 = load ptr, ptr %arrayidx62, align 8, !tbaa !9
  store ptr %49, ptr %i6, align 8, !tbaa !9
  %50 = load ptr, ptr %i6, align 8, !tbaa !9
  %51 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp63 = icmp ne ptr %50, %51
  %lnot65 = xor i1 %cmp63, true
  %lnot67 = xor i1 %lnot65, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %conv69 = sext i32 %lnot.ext68 to i64
  %tobool70 = icmp ne i64 %conv69, 0
  br i1 %tobool70, label %if.then71, label %if.end73, !unpredictable !11

if.then71:                                        ; preds = %if.end61
  %52 = load ptr, ptr %i6, align 8, !tbaa !9
  %53 = ptrtoint ptr %52 to i64
  %54 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add72 = add i64 %53, %54
  %55 = inttoptr i64 %add72 to ptr
  store ptr %55, ptr %i6, align 8, !tbaa !9
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %i7) #6
  %56 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx74 = getelementptr inbounds ptr, ptr %56, i64 7
  %57 = load ptr, ptr %arrayidx74, align 8, !tbaa !9
  store ptr %57, ptr %i7, align 8, !tbaa !9
  %58 = load ptr, ptr %i7, align 8, !tbaa !9
  %59 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp75 = icmp ne ptr %58, %59
  %lnot77 = xor i1 %cmp75, true
  %lnot79 = xor i1 %lnot77, true
  %lnot.ext80 = zext i1 %lnot79 to i32
  %conv81 = sext i32 %lnot.ext80 to i64
  %tobool82 = icmp ne i64 %conv81, 0
  br i1 %tobool82, label %if.then83, label %if.end85, !unpredictable !11

if.then83:                                        ; preds = %if.end73
  %60 = load ptr, ptr %i7, align 8, !tbaa !9
  %61 = ptrtoint ptr %60 to i64
  %62 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add84 = add i64 %61, %62
  %63 = inttoptr i64 %add84 to ptr
  store ptr %63, ptr %i7, align 8, !tbaa !9
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end73
  call void @llvm.lifetime.start.p0(i64 8, ptr %i8) #6
  %64 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx86 = getelementptr inbounds ptr, ptr %64, i64 8
  %65 = load ptr, ptr %arrayidx86, align 8, !tbaa !9
  store ptr %65, ptr %i8, align 8, !tbaa !9
  %66 = load ptr, ptr %i8, align 8, !tbaa !9
  %67 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp87 = icmp ne ptr %66, %67
  %lnot89 = xor i1 %cmp87, true
  %lnot91 = xor i1 %lnot89, true
  %lnot.ext92 = zext i1 %lnot91 to i32
  %conv93 = sext i32 %lnot.ext92 to i64
  %tobool94 = icmp ne i64 %conv93, 0
  br i1 %tobool94, label %if.then95, label %if.end97, !unpredictable !11

if.then95:                                        ; preds = %if.end85
  %68 = load ptr, ptr %i8, align 8, !tbaa !9
  %69 = ptrtoint ptr %68 to i64
  %70 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add96 = add i64 %69, %70
  %71 = inttoptr i64 %add96 to ptr
  store ptr %71, ptr %i8, align 8, !tbaa !9
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %i9) #6
  %72 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx98 = getelementptr inbounds ptr, ptr %72, i64 9
  %73 = load ptr, ptr %arrayidx98, align 8, !tbaa !9
  store ptr %73, ptr %i9, align 8, !tbaa !9
  %74 = load ptr, ptr %i9, align 8, !tbaa !9
  %75 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp99 = icmp ne ptr %74, %75
  %lnot101 = xor i1 %cmp99, true
  %lnot103 = xor i1 %lnot101, true
  %lnot.ext104 = zext i1 %lnot103 to i32
  %conv105 = sext i32 %lnot.ext104 to i64
  %tobool106 = icmp ne i64 %conv105, 0
  br i1 %tobool106, label %if.then107, label %if.end109, !unpredictable !11

if.then107:                                       ; preds = %if.end97
  %76 = load ptr, ptr %i9, align 8, !tbaa !9
  %77 = ptrtoint ptr %76 to i64
  %78 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add108 = add i64 %77, %78
  %79 = inttoptr i64 %add108 to ptr
  store ptr %79, ptr %i9, align 8, !tbaa !9
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end97
  call void @llvm.lifetime.start.p0(i64 8, ptr %i10) #6
  %80 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx110 = getelementptr inbounds ptr, ptr %80, i64 10
  %81 = load ptr, ptr %arrayidx110, align 8, !tbaa !9
  store ptr %81, ptr %i10, align 8, !tbaa !9
  %82 = load ptr, ptr %i10, align 8, !tbaa !9
  %83 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp111 = icmp ne ptr %82, %83
  %lnot113 = xor i1 %cmp111, true
  %lnot115 = xor i1 %lnot113, true
  %lnot.ext116 = zext i1 %lnot115 to i32
  %conv117 = sext i32 %lnot.ext116 to i64
  %tobool118 = icmp ne i64 %conv117, 0
  br i1 %tobool118, label %if.then119, label %if.end121, !unpredictable !11

if.then119:                                       ; preds = %if.end109
  %84 = load ptr, ptr %i10, align 8, !tbaa !9
  %85 = ptrtoint ptr %84 to i64
  %86 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add120 = add i64 %85, %86
  %87 = inttoptr i64 %add120 to ptr
  store ptr %87, ptr %i10, align 8, !tbaa !9
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end109
  call void @llvm.lifetime.start.p0(i64 8, ptr %i11) #6
  %88 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx122 = getelementptr inbounds ptr, ptr %88, i64 11
  %89 = load ptr, ptr %arrayidx122, align 8, !tbaa !9
  store ptr %89, ptr %i11, align 8, !tbaa !9
  %90 = load ptr, ptr %i11, align 8, !tbaa !9
  %91 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp123 = icmp ne ptr %90, %91
  %lnot125 = xor i1 %cmp123, true
  %lnot127 = xor i1 %lnot125, true
  %lnot.ext128 = zext i1 %lnot127 to i32
  %conv129 = sext i32 %lnot.ext128 to i64
  %tobool130 = icmp ne i64 %conv129, 0
  br i1 %tobool130, label %if.then131, label %if.end133, !unpredictable !11

if.then131:                                       ; preds = %if.end121
  %92 = load ptr, ptr %i11, align 8, !tbaa !9
  %93 = ptrtoint ptr %92 to i64
  %94 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add132 = add i64 %93, %94
  %95 = inttoptr i64 %add132 to ptr
  store ptr %95, ptr %i11, align 8, !tbaa !9
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end121
  call void @llvm.lifetime.start.p0(i64 8, ptr %i12) #6
  %96 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx134 = getelementptr inbounds ptr, ptr %96, i64 12
  %97 = load ptr, ptr %arrayidx134, align 8, !tbaa !9
  store ptr %97, ptr %i12, align 8, !tbaa !9
  %98 = load ptr, ptr %i12, align 8, !tbaa !9
  %99 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp135 = icmp ne ptr %98, %99
  %lnot137 = xor i1 %cmp135, true
  %lnot139 = xor i1 %lnot137, true
  %lnot.ext140 = zext i1 %lnot139 to i32
  %conv141 = sext i32 %lnot.ext140 to i64
  %tobool142 = icmp ne i64 %conv141, 0
  br i1 %tobool142, label %if.then143, label %if.end145, !unpredictable !11

if.then143:                                       ; preds = %if.end133
  %100 = load ptr, ptr %i12, align 8, !tbaa !9
  %101 = ptrtoint ptr %100 to i64
  %102 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add144 = add i64 %101, %102
  %103 = inttoptr i64 %add144 to ptr
  store ptr %103, ptr %i12, align 8, !tbaa !9
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end133
  call void @llvm.lifetime.start.p0(i64 8, ptr %i13) #6
  %104 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx146 = getelementptr inbounds ptr, ptr %104, i64 13
  %105 = load ptr, ptr %arrayidx146, align 8, !tbaa !9
  store ptr %105, ptr %i13, align 8, !tbaa !9
  %106 = load ptr, ptr %i13, align 8, !tbaa !9
  %107 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp147 = icmp ne ptr %106, %107
  %lnot149 = xor i1 %cmp147, true
  %lnot151 = xor i1 %lnot149, true
  %lnot.ext152 = zext i1 %lnot151 to i32
  %conv153 = sext i32 %lnot.ext152 to i64
  %tobool154 = icmp ne i64 %conv153, 0
  br i1 %tobool154, label %if.then155, label %if.end157, !unpredictable !11

if.then155:                                       ; preds = %if.end145
  %108 = load ptr, ptr %i13, align 8, !tbaa !9
  %109 = ptrtoint ptr %108 to i64
  %110 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add156 = add i64 %109, %110
  %111 = inttoptr i64 %add156 to ptr
  store ptr %111, ptr %i13, align 8, !tbaa !9
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end145
  call void @llvm.lifetime.start.p0(i64 8, ptr %i14) #6
  %112 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx158 = getelementptr inbounds ptr, ptr %112, i64 14
  %113 = load ptr, ptr %arrayidx158, align 8, !tbaa !9
  store ptr %113, ptr %i14, align 8, !tbaa !9
  %114 = load ptr, ptr %i14, align 8, !tbaa !9
  %115 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp159 = icmp ne ptr %114, %115
  %lnot161 = xor i1 %cmp159, true
  %lnot163 = xor i1 %lnot161, true
  %lnot.ext164 = zext i1 %lnot163 to i32
  %conv165 = sext i32 %lnot.ext164 to i64
  %tobool166 = icmp ne i64 %conv165, 0
  br i1 %tobool166, label %if.then167, label %if.end169, !unpredictable !11

if.then167:                                       ; preds = %if.end157
  %116 = load ptr, ptr %i14, align 8, !tbaa !9
  %117 = ptrtoint ptr %116 to i64
  %118 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add168 = add i64 %117, %118
  %119 = inttoptr i64 %add168 to ptr
  store ptr %119, ptr %i14, align 8, !tbaa !9
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %if.end157
  call void @llvm.lifetime.start.p0(i64 8, ptr %i15) #6
  %120 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx170 = getelementptr inbounds ptr, ptr %120, i64 15
  %121 = load ptr, ptr %arrayidx170, align 8, !tbaa !9
  store ptr %121, ptr %i15, align 8, !tbaa !9
  %122 = load ptr, ptr %i15, align 8, !tbaa !9
  %123 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp171 = icmp ne ptr %122, %123
  %lnot173 = xor i1 %cmp171, true
  %lnot175 = xor i1 %lnot173, true
  %lnot.ext176 = zext i1 %lnot175 to i32
  %conv177 = sext i32 %lnot.ext176 to i64
  %tobool178 = icmp ne i64 %conv177, 0
  br i1 %tobool178, label %if.then179, label %if.end181, !unpredictable !11

if.then179:                                       ; preds = %if.end169
  %124 = load ptr, ptr %i15, align 8, !tbaa !9
  %125 = ptrtoint ptr %124 to i64
  %126 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add180 = add i64 %125, %126
  %127 = inttoptr i64 %add180 to ptr
  store ptr %127, ptr %i15, align 8, !tbaa !9
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.end169
  call void @llvm.lifetime.start.p0(i64 8, ptr %i16) #6
  %128 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx182 = getelementptr inbounds ptr, ptr %128, i64 16
  %129 = load ptr, ptr %arrayidx182, align 8, !tbaa !9
  store ptr %129, ptr %i16, align 8, !tbaa !9
  %130 = load ptr, ptr %i16, align 8, !tbaa !9
  %131 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp183 = icmp ne ptr %130, %131
  %lnot185 = xor i1 %cmp183, true
  %lnot187 = xor i1 %lnot185, true
  %lnot.ext188 = zext i1 %lnot187 to i32
  %conv189 = sext i32 %lnot.ext188 to i64
  %tobool190 = icmp ne i64 %conv189, 0
  br i1 %tobool190, label %if.then191, label %if.end193, !unpredictable !11

if.then191:                                       ; preds = %if.end181
  %132 = load ptr, ptr %i16, align 8, !tbaa !9
  %133 = ptrtoint ptr %132 to i64
  %134 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add192 = add i64 %133, %134
  %135 = inttoptr i64 %add192 to ptr
  store ptr %135, ptr %i16, align 8, !tbaa !9
  br label %if.end193

if.end193:                                        ; preds = %if.then191, %if.end181
  call void @llvm.lifetime.start.p0(i64 8, ptr %i17) #6
  %136 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx194 = getelementptr inbounds ptr, ptr %136, i64 17
  %137 = load ptr, ptr %arrayidx194, align 8, !tbaa !9
  store ptr %137, ptr %i17, align 8, !tbaa !9
  %138 = load ptr, ptr %i17, align 8, !tbaa !9
  %139 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp195 = icmp ne ptr %138, %139
  %lnot197 = xor i1 %cmp195, true
  %lnot199 = xor i1 %lnot197, true
  %lnot.ext200 = zext i1 %lnot199 to i32
  %conv201 = sext i32 %lnot.ext200 to i64
  %tobool202 = icmp ne i64 %conv201, 0
  br i1 %tobool202, label %if.then203, label %if.end205, !unpredictable !11

if.then203:                                       ; preds = %if.end193
  %140 = load ptr, ptr %i17, align 8, !tbaa !9
  %141 = ptrtoint ptr %140 to i64
  %142 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add204 = add i64 %141, %142
  %143 = inttoptr i64 %add204 to ptr
  store ptr %143, ptr %i17, align 8, !tbaa !9
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end193
  call void @llvm.lifetime.start.p0(i64 8, ptr %i18) #6
  %144 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx206 = getelementptr inbounds ptr, ptr %144, i64 18
  %145 = load ptr, ptr %arrayidx206, align 8, !tbaa !9
  store ptr %145, ptr %i18, align 8, !tbaa !9
  %146 = load ptr, ptr %i18, align 8, !tbaa !9
  %147 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp207 = icmp ne ptr %146, %147
  %lnot209 = xor i1 %cmp207, true
  %lnot211 = xor i1 %lnot209, true
  %lnot.ext212 = zext i1 %lnot211 to i32
  %conv213 = sext i32 %lnot.ext212 to i64
  %tobool214 = icmp ne i64 %conv213, 0
  br i1 %tobool214, label %if.then215, label %if.end217, !unpredictable !11

if.then215:                                       ; preds = %if.end205
  %148 = load ptr, ptr %i18, align 8, !tbaa !9
  %149 = ptrtoint ptr %148 to i64
  %150 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add216 = add i64 %149, %150
  %151 = inttoptr i64 %add216 to ptr
  store ptr %151, ptr %i18, align 8, !tbaa !9
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %if.end205
  call void @llvm.lifetime.start.p0(i64 8, ptr %i19) #6
  %152 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx218 = getelementptr inbounds ptr, ptr %152, i64 19
  %153 = load ptr, ptr %arrayidx218, align 8, !tbaa !9
  store ptr %153, ptr %i19, align 8, !tbaa !9
  %154 = load ptr, ptr %i19, align 8, !tbaa !9
  %155 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp219 = icmp ne ptr %154, %155
  %lnot221 = xor i1 %cmp219, true
  %lnot223 = xor i1 %lnot221, true
  %lnot.ext224 = zext i1 %lnot223 to i32
  %conv225 = sext i32 %lnot.ext224 to i64
  %tobool226 = icmp ne i64 %conv225, 0
  br i1 %tobool226, label %if.then227, label %if.end229, !unpredictable !11

if.then227:                                       ; preds = %if.end217
  %156 = load ptr, ptr %i19, align 8, !tbaa !9
  %157 = ptrtoint ptr %156 to i64
  %158 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add228 = add i64 %157, %158
  %159 = inttoptr i64 %add228 to ptr
  store ptr %159, ptr %i19, align 8, !tbaa !9
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %if.end217
  call void @llvm.lifetime.start.p0(i64 8, ptr %i20) #6
  %160 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx230 = getelementptr inbounds ptr, ptr %160, i64 20
  %161 = load ptr, ptr %arrayidx230, align 8, !tbaa !9
  store ptr %161, ptr %i20, align 8, !tbaa !9
  %162 = load ptr, ptr %i20, align 8, !tbaa !9
  %163 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp231 = icmp ne ptr %162, %163
  %lnot233 = xor i1 %cmp231, true
  %lnot235 = xor i1 %lnot233, true
  %lnot.ext236 = zext i1 %lnot235 to i32
  %conv237 = sext i32 %lnot.ext236 to i64
  %tobool238 = icmp ne i64 %conv237, 0
  br i1 %tobool238, label %if.then239, label %if.end241, !unpredictable !11

if.then239:                                       ; preds = %if.end229
  %164 = load ptr, ptr %i20, align 8, !tbaa !9
  %165 = ptrtoint ptr %164 to i64
  %166 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add240 = add i64 %165, %166
  %167 = inttoptr i64 %add240 to ptr
  store ptr %167, ptr %i20, align 8, !tbaa !9
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.end229
  call void @llvm.lifetime.start.p0(i64 8, ptr %i21) #6
  %168 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx242 = getelementptr inbounds ptr, ptr %168, i64 21
  %169 = load ptr, ptr %arrayidx242, align 8, !tbaa !9
  store ptr %169, ptr %i21, align 8, !tbaa !9
  %170 = load ptr, ptr %i21, align 8, !tbaa !9
  %171 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp243 = icmp ne ptr %170, %171
  %lnot245 = xor i1 %cmp243, true
  %lnot247 = xor i1 %lnot245, true
  %lnot.ext248 = zext i1 %lnot247 to i32
  %conv249 = sext i32 %lnot.ext248 to i64
  %tobool250 = icmp ne i64 %conv249, 0
  br i1 %tobool250, label %if.then251, label %if.end253, !unpredictable !11

if.then251:                                       ; preds = %if.end241
  %172 = load ptr, ptr %i21, align 8, !tbaa !9
  %173 = ptrtoint ptr %172 to i64
  %174 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add252 = add i64 %173, %174
  %175 = inttoptr i64 %add252 to ptr
  store ptr %175, ptr %i21, align 8, !tbaa !9
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end241
  call void @llvm.lifetime.start.p0(i64 8, ptr %i22) #6
  %176 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx254 = getelementptr inbounds ptr, ptr %176, i64 22
  %177 = load ptr, ptr %arrayidx254, align 8, !tbaa !9
  store ptr %177, ptr %i22, align 8, !tbaa !9
  %178 = load ptr, ptr %i22, align 8, !tbaa !9
  %179 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp255 = icmp ne ptr %178, %179
  %lnot257 = xor i1 %cmp255, true
  %lnot259 = xor i1 %lnot257, true
  %lnot.ext260 = zext i1 %lnot259 to i32
  %conv261 = sext i32 %lnot.ext260 to i64
  %tobool262 = icmp ne i64 %conv261, 0
  br i1 %tobool262, label %if.then263, label %if.end265, !unpredictable !11

if.then263:                                       ; preds = %if.end253
  %180 = load ptr, ptr %i22, align 8, !tbaa !9
  %181 = ptrtoint ptr %180 to i64
  %182 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add264 = add i64 %181, %182
  %183 = inttoptr i64 %add264 to ptr
  store ptr %183, ptr %i22, align 8, !tbaa !9
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end253
  call void @llvm.lifetime.start.p0(i64 8, ptr %i23) #6
  %184 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx266 = getelementptr inbounds ptr, ptr %184, i64 23
  %185 = load ptr, ptr %arrayidx266, align 8, !tbaa !9
  store ptr %185, ptr %i23, align 8, !tbaa !9
  %186 = load ptr, ptr %i23, align 8, !tbaa !9
  %187 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp267 = icmp ne ptr %186, %187
  %lnot269 = xor i1 %cmp267, true
  %lnot271 = xor i1 %lnot269, true
  %lnot.ext272 = zext i1 %lnot271 to i32
  %conv273 = sext i32 %lnot.ext272 to i64
  %tobool274 = icmp ne i64 %conv273, 0
  br i1 %tobool274, label %if.then275, label %if.end277, !unpredictable !11

if.then275:                                       ; preds = %if.end265
  %188 = load ptr, ptr %i23, align 8, !tbaa !9
  %189 = ptrtoint ptr %188 to i64
  %190 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add276 = add i64 %189, %190
  %191 = inttoptr i64 %add276 to ptr
  store ptr %191, ptr %i23, align 8, !tbaa !9
  br label %if.end277

if.end277:                                        ; preds = %if.then275, %if.end265
  call void @llvm.lifetime.start.p0(i64 8, ptr %i24) #6
  %192 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %arrayidx278 = getelementptr inbounds ptr, ptr %192, i64 24
  %193 = load ptr, ptr %arrayidx278, align 8, !tbaa !9
  store ptr %193, ptr %i24, align 8, !tbaa !9
  %194 = load ptr, ptr %i24, align 8, !tbaa !9
  %195 = load ptr, ptr %zero.addr, align 8, !tbaa !9
  %cmp279 = icmp ne ptr %194, %195
  %lnot281 = xor i1 %cmp279, true
  %lnot283 = xor i1 %lnot281, true
  %lnot.ext284 = zext i1 %lnot283 to i32
  %conv285 = sext i32 %lnot.ext284 to i64
  %tobool286 = icmp ne i64 %conv285, 0
  br i1 %tobool286, label %if.then287, label %if.end289, !unpredictable !11

if.then287:                                       ; preds = %if.end277
  %196 = load ptr, ptr %i24, align 8, !tbaa !9
  %197 = ptrtoint ptr %196 to i64
  %198 = load i64, ptr %input_offset.addr, align 8, !tbaa !5
  %add288 = add i64 %197, %198
  %199 = inttoptr i64 %add288 to ptr
  store ptr %199, ptr %i24, align 8, !tbaa !9
  br label %if.end289

if.end289:                                        ; preds = %if.then287, %if.end277
  %200 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %201 = ptrtoint ptr %200 to i64
  %202 = load i64, ptr %input_stride.addr, align 8, !tbaa !5
  %add290 = add i64 %201, %202
  %203 = inttoptr i64 %add290 to ptr
  store ptr %203, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6
  %204 = load i64, ptr %channels.addr, align 8, !tbaa !5
  store i64 %204, ptr %c, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #6
  %205 = load ptr, ptr %weights.addr, align 8, !tbaa !9
  store ptr %205, ptr %w, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end289
  %206 = load i64, ptr %c, align 8, !tbaa !5
  %cmp291 = icmp uge i64 %206, 32
  br i1 %cmp291, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567) #6
  %207 = load ptr, ptr %w, align 8, !tbaa !9
  %call = call <4 x i64> @_mm256_loadu_si256(ptr noundef %207)
  store <4 x i64> %call, ptr %vacc01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc89ABCDEF) #6
  %208 = load ptr, ptr %w, align 8, !tbaa !9
  %209 = ptrtoint ptr %208 to i64
  %add293 = add i64 %209, 32
  %210 = inttoptr i64 %add293 to ptr
  %call294 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %210)
  store <4 x i64> %call294, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccGHIJKLMN) #6
  %211 = load ptr, ptr %w, align 8, !tbaa !9
  %212 = ptrtoint ptr %211 to i64
  %add295 = add i64 %212, 64
  %213 = inttoptr i64 %add295 to ptr
  %call296 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %213)
  store <4 x i64> %call296, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vaccOPQRSTUV) #6
  %214 = load ptr, ptr %w, align 8, !tbaa !9
  %215 = ptrtoint ptr %214 to i64
  %add297 = add i64 %215, 96
  %216 = inttoptr i64 %add297 to ptr
  %call298 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %216)
  store <4 x i64> %call298, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x0123456789ABCDEF) #6
  %217 = load ptr, ptr %i0, align 8, !tbaa !9
  %call299 = call <2 x i64> @_mm_loadu_si128(ptr noundef %217)
  %call300 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call299)
  store <4 x i64> %call300, ptr %vi0x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x0123456789ABCDEF) #6
  %218 = load ptr, ptr %w, align 8, !tbaa !9
  %219 = ptrtoint ptr %218 to i64
  %add301 = add i64 %219, 128
  %add302 = add i64 %add301, 0
  %220 = inttoptr i64 %add302 to ptr
  %call303 = call <2 x i64> @_mm_loadu_si128(ptr noundef %220)
  %call304 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call303)
  store <4 x i64> %call304, ptr %vk0x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0xGHIJKLMNOPQRSTUV) #6
  %221 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %221, i64 16
  %call305 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr)
  %call306 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call305)
  store <4 x i64> %call306, ptr %vi0xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0xGHIJKLMNOPQRSTUV) #6
  %222 = load ptr, ptr %w, align 8, !tbaa !9
  %223 = ptrtoint ptr %222 to i64
  %add307 = add i64 %223, 128
  %add308 = add i64 %add307, 16
  %224 = inttoptr i64 %add308 to ptr
  %call309 = call <2 x i64> @_mm_loadu_si128(ptr noundef %224)
  %call310 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call309)
  store <4 x i64> %call310, ptr %vk0xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %225 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr311 = getelementptr inbounds i8, ptr %225, i64 32
  store ptr %add.ptr311, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod0x0123456789ABCDEF) #6
  %226 = load <4 x i64>, ptr %vi0x0123456789ABCDEF, align 32, !tbaa !12
  %227 = load <4 x i64>, ptr %vk0x0123456789ABCDEF, align 32, !tbaa !12
  %call312 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %226, <4 x i64> noundef %227)
  store <4 x i64> %call312, ptr %vprod0x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x89ABCDEF) #6
  %228 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF, align 32, !tbaa !12
  %extract = shufflevector <4 x i64> %228, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract, ptr %vprod0x89ABCDEF, align 16, !tbaa !12
  %229 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %230 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF, align 32, !tbaa !12
  %call313 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %230)
  %call314 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call313)
  %call315 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %229, <4 x i64> noundef %call314)
  store <4 x i64> %call315, ptr %vacc01234567, align 32, !tbaa !12
  %231 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %232 = load <2 x i64>, ptr %vprod0x89ABCDEF, align 16, !tbaa !12
  %call316 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %232)
  %call317 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %231, <4 x i64> noundef %call316)
  store <4 x i64> %call317, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod0xGHIJKLMNOPQRSTUV) #6
  %233 = load <4 x i64>, ptr %vi0xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %234 = load <4 x i64>, ptr %vk0xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call318 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %233, <4 x i64> noundef %234)
  store <4 x i64> %call318, ptr %vprod0xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0xOPQRSTUV) #6
  %235 = load <4 x i64>, ptr %vprod0xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract319 = shufflevector <4 x i64> %235, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract319, ptr %vprod0xOPQRSTUV, align 16, !tbaa !12
  %236 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %237 = load <4 x i64>, ptr %vprod0xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call320 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %237)
  %call321 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call320)
  %call322 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %236, <4 x i64> noundef %call321)
  store <4 x i64> %call322, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %238 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %239 = load <2 x i64>, ptr %vprod0xOPQRSTUV, align 16, !tbaa !12
  %call323 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %239)
  %call324 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %238, <4 x i64> noundef %call323)
  store <4 x i64> %call324, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x0123456789ABCDEF) #6
  %240 = load ptr, ptr %i1, align 8, !tbaa !9
  %call325 = call <2 x i64> @_mm_loadu_si128(ptr noundef %240)
  %call326 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call325)
  store <4 x i64> %call326, ptr %vi1x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x0123456789ABCDEF) #6
  %241 = load ptr, ptr %w, align 8, !tbaa !9
  %242 = ptrtoint ptr %241 to i64
  %add327 = add i64 %242, 128
  %add328 = add i64 %add327, 32
  %243 = inttoptr i64 %add328 to ptr
  %call329 = call <2 x i64> @_mm_loadu_si128(ptr noundef %243)
  %call330 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call329)
  store <4 x i64> %call330, ptr %vk1x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1xGHIJKLMNOPQRSTUV) #6
  %244 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr331 = getelementptr inbounds i8, ptr %244, i64 16
  %call332 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr331)
  %call333 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call332)
  store <4 x i64> %call333, ptr %vi1xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1xGHIJKLMNOPQRSTUV) #6
  %245 = load ptr, ptr %w, align 8, !tbaa !9
  %246 = ptrtoint ptr %245 to i64
  %add334 = add i64 %246, 128
  %add335 = add i64 %add334, 48
  %247 = inttoptr i64 %add335 to ptr
  %call336 = call <2 x i64> @_mm_loadu_si128(ptr noundef %247)
  %call337 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call336)
  store <4 x i64> %call337, ptr %vk1xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %248 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr338 = getelementptr inbounds i8, ptr %248, i64 32
  store ptr %add.ptr338, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod1x0123456789ABCDEF) #6
  %249 = load <4 x i64>, ptr %vi1x0123456789ABCDEF, align 32, !tbaa !12
  %250 = load <4 x i64>, ptr %vk1x0123456789ABCDEF, align 32, !tbaa !12
  %call339 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %249, <4 x i64> noundef %250)
  store <4 x i64> %call339, ptr %vprod1x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x89ABCDEF) #6
  %251 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF, align 32, !tbaa !12
  %extract340 = shufflevector <4 x i64> %251, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract340, ptr %vprod1x89ABCDEF, align 16, !tbaa !12
  %252 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %253 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF, align 32, !tbaa !12
  %call341 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %253)
  %call342 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call341)
  %call343 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %252, <4 x i64> noundef %call342)
  store <4 x i64> %call343, ptr %vacc01234567, align 32, !tbaa !12
  %254 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %255 = load <2 x i64>, ptr %vprod1x89ABCDEF, align 16, !tbaa !12
  %call344 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %255)
  %call345 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %254, <4 x i64> noundef %call344)
  store <4 x i64> %call345, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod1xGHIJKLMNOPQRSTUV) #6
  %256 = load <4 x i64>, ptr %vi1xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %257 = load <4 x i64>, ptr %vk1xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call346 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %256, <4 x i64> noundef %257)
  store <4 x i64> %call346, ptr %vprod1xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1xOPQRSTUV) #6
  %258 = load <4 x i64>, ptr %vprod1xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract347 = shufflevector <4 x i64> %258, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract347, ptr %vprod1xOPQRSTUV, align 16, !tbaa !12
  %259 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %260 = load <4 x i64>, ptr %vprod1xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call348 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %260)
  %call349 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call348)
  %call350 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %259, <4 x i64> noundef %call349)
  store <4 x i64> %call350, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %261 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %262 = load <2 x i64>, ptr %vprod1xOPQRSTUV, align 16, !tbaa !12
  %call351 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %262)
  %call352 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %261, <4 x i64> noundef %call351)
  store <4 x i64> %call352, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x0123456789ABCDEF) #6
  %263 = load ptr, ptr %i2, align 8, !tbaa !9
  %call353 = call <2 x i64> @_mm_loadu_si128(ptr noundef %263)
  %call354 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call353)
  store <4 x i64> %call354, ptr %vi2x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x0123456789ABCDEF) #6
  %264 = load ptr, ptr %w, align 8, !tbaa !9
  %265 = ptrtoint ptr %264 to i64
  %add355 = add i64 %265, 128
  %add356 = add i64 %add355, 64
  %266 = inttoptr i64 %add356 to ptr
  %call357 = call <2 x i64> @_mm_loadu_si128(ptr noundef %266)
  %call358 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call357)
  store <4 x i64> %call358, ptr %vk2x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2xGHIJKLMNOPQRSTUV) #6
  %267 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr359 = getelementptr inbounds i8, ptr %267, i64 16
  %call360 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr359)
  %call361 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call360)
  store <4 x i64> %call361, ptr %vi2xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2xGHIJKLMNOPQRSTUV) #6
  %268 = load ptr, ptr %w, align 8, !tbaa !9
  %269 = ptrtoint ptr %268 to i64
  %add362 = add i64 %269, 128
  %add363 = add i64 %add362, 80
  %270 = inttoptr i64 %add363 to ptr
  %call364 = call <2 x i64> @_mm_loadu_si128(ptr noundef %270)
  %call365 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call364)
  store <4 x i64> %call365, ptr %vk2xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %271 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr366 = getelementptr inbounds i8, ptr %271, i64 32
  store ptr %add.ptr366, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod2x0123456789ABCDEF) #6
  %272 = load <4 x i64>, ptr %vi2x0123456789ABCDEF, align 32, !tbaa !12
  %273 = load <4 x i64>, ptr %vk2x0123456789ABCDEF, align 32, !tbaa !12
  %call367 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %272, <4 x i64> noundef %273)
  store <4 x i64> %call367, ptr %vprod2x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x89ABCDEF) #6
  %274 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF, align 32, !tbaa !12
  %extract368 = shufflevector <4 x i64> %274, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract368, ptr %vprod2x89ABCDEF, align 16, !tbaa !12
  %275 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %276 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF, align 32, !tbaa !12
  %call369 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %276)
  %call370 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call369)
  %call371 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %275, <4 x i64> noundef %call370)
  store <4 x i64> %call371, ptr %vacc01234567, align 32, !tbaa !12
  %277 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %278 = load <2 x i64>, ptr %vprod2x89ABCDEF, align 16, !tbaa !12
  %call372 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %278)
  %call373 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %277, <4 x i64> noundef %call372)
  store <4 x i64> %call373, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod2xGHIJKLMNOPQRSTUV) #6
  %279 = load <4 x i64>, ptr %vi2xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %280 = load <4 x i64>, ptr %vk2xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call374 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %279, <4 x i64> noundef %280)
  store <4 x i64> %call374, ptr %vprod2xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2xOPQRSTUV) #6
  %281 = load <4 x i64>, ptr %vprod2xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract375 = shufflevector <4 x i64> %281, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract375, ptr %vprod2xOPQRSTUV, align 16, !tbaa !12
  %282 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %283 = load <4 x i64>, ptr %vprod2xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call376 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %283)
  %call377 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call376)
  %call378 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %282, <4 x i64> noundef %call377)
  store <4 x i64> %call378, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %284 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %285 = load <2 x i64>, ptr %vprod2xOPQRSTUV, align 16, !tbaa !12
  %call379 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %285)
  %call380 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %284, <4 x i64> noundef %call379)
  store <4 x i64> %call380, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x0123456789ABCDEF) #6
  %286 = load ptr, ptr %i3, align 8, !tbaa !9
  %call381 = call <2 x i64> @_mm_loadu_si128(ptr noundef %286)
  %call382 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call381)
  store <4 x i64> %call382, ptr %vi3x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x0123456789ABCDEF) #6
  %287 = load ptr, ptr %w, align 8, !tbaa !9
  %288 = ptrtoint ptr %287 to i64
  %add383 = add i64 %288, 128
  %add384 = add i64 %add383, 96
  %289 = inttoptr i64 %add384 to ptr
  %call385 = call <2 x i64> @_mm_loadu_si128(ptr noundef %289)
  %call386 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call385)
  store <4 x i64> %call386, ptr %vk3x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3xGHIJKLMNOPQRSTUV) #6
  %290 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr387 = getelementptr inbounds i8, ptr %290, i64 16
  %call388 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr387)
  %call389 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call388)
  store <4 x i64> %call389, ptr %vi3xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3xGHIJKLMNOPQRSTUV) #6
  %291 = load ptr, ptr %w, align 8, !tbaa !9
  %292 = ptrtoint ptr %291 to i64
  %add390 = add i64 %292, 128
  %add391 = add i64 %add390, 112
  %293 = inttoptr i64 %add391 to ptr
  %call392 = call <2 x i64> @_mm_loadu_si128(ptr noundef %293)
  %call393 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call392)
  store <4 x i64> %call393, ptr %vk3xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %294 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr394 = getelementptr inbounds i8, ptr %294, i64 32
  store ptr %add.ptr394, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod3x0123456789ABCDEF) #6
  %295 = load <4 x i64>, ptr %vi3x0123456789ABCDEF, align 32, !tbaa !12
  %296 = load <4 x i64>, ptr %vk3x0123456789ABCDEF, align 32, !tbaa !12
  %call395 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %295, <4 x i64> noundef %296)
  store <4 x i64> %call395, ptr %vprod3x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x89ABCDEF) #6
  %297 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF, align 32, !tbaa !12
  %extract396 = shufflevector <4 x i64> %297, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract396, ptr %vprod3x89ABCDEF, align 16, !tbaa !12
  %298 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %299 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF, align 32, !tbaa !12
  %call397 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %299)
  %call398 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call397)
  %call399 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %298, <4 x i64> noundef %call398)
  store <4 x i64> %call399, ptr %vacc01234567, align 32, !tbaa !12
  %300 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %301 = load <2 x i64>, ptr %vprod3x89ABCDEF, align 16, !tbaa !12
  %call400 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %301)
  %call401 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %300, <4 x i64> noundef %call400)
  store <4 x i64> %call401, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod3xGHIJKLMNOPQRSTUV) #6
  %302 = load <4 x i64>, ptr %vi3xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %303 = load <4 x i64>, ptr %vk3xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call402 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %302, <4 x i64> noundef %303)
  store <4 x i64> %call402, ptr %vprod3xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3xOPQRSTUV) #6
  %304 = load <4 x i64>, ptr %vprod3xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract403 = shufflevector <4 x i64> %304, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract403, ptr %vprod3xOPQRSTUV, align 16, !tbaa !12
  %305 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %306 = load <4 x i64>, ptr %vprod3xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call404 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %306)
  %call405 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call404)
  %call406 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %305, <4 x i64> noundef %call405)
  store <4 x i64> %call406, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %307 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %308 = load <2 x i64>, ptr %vprod3xOPQRSTUV, align 16, !tbaa !12
  %call407 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %308)
  %call408 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %307, <4 x i64> noundef %call407)
  store <4 x i64> %call408, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x0123456789ABCDEF) #6
  %309 = load ptr, ptr %i4, align 8, !tbaa !9
  %call409 = call <2 x i64> @_mm_loadu_si128(ptr noundef %309)
  %call410 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call409)
  store <4 x i64> %call410, ptr %vi4x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x0123456789ABCDEF) #6
  %310 = load ptr, ptr %w, align 8, !tbaa !9
  %311 = ptrtoint ptr %310 to i64
  %add411 = add i64 %311, 128
  %add412 = add i64 %add411, 128
  %312 = inttoptr i64 %add412 to ptr
  %call413 = call <2 x i64> @_mm_loadu_si128(ptr noundef %312)
  %call414 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call413)
  store <4 x i64> %call414, ptr %vk4x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4xGHIJKLMNOPQRSTUV) #6
  %313 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr415 = getelementptr inbounds i8, ptr %313, i64 16
  %call416 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr415)
  %call417 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call416)
  store <4 x i64> %call417, ptr %vi4xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4xGHIJKLMNOPQRSTUV) #6
  %314 = load ptr, ptr %w, align 8, !tbaa !9
  %315 = ptrtoint ptr %314 to i64
  %add418 = add i64 %315, 128
  %add419 = add i64 %add418, 144
  %316 = inttoptr i64 %add419 to ptr
  %call420 = call <2 x i64> @_mm_loadu_si128(ptr noundef %316)
  %call421 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call420)
  store <4 x i64> %call421, ptr %vk4xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %317 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr422 = getelementptr inbounds i8, ptr %317, i64 32
  store ptr %add.ptr422, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod4x0123456789ABCDEF) #6
  %318 = load <4 x i64>, ptr %vi4x0123456789ABCDEF, align 32, !tbaa !12
  %319 = load <4 x i64>, ptr %vk4x0123456789ABCDEF, align 32, !tbaa !12
  %call423 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %318, <4 x i64> noundef %319)
  store <4 x i64> %call423, ptr %vprod4x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x89ABCDEF) #6
  %320 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF, align 32, !tbaa !12
  %extract424 = shufflevector <4 x i64> %320, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract424, ptr %vprod4x89ABCDEF, align 16, !tbaa !12
  %321 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %322 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF, align 32, !tbaa !12
  %call425 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %322)
  %call426 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call425)
  %call427 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %321, <4 x i64> noundef %call426)
  store <4 x i64> %call427, ptr %vacc01234567, align 32, !tbaa !12
  %323 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %324 = load <2 x i64>, ptr %vprod4x89ABCDEF, align 16, !tbaa !12
  %call428 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %324)
  %call429 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %323, <4 x i64> noundef %call428)
  store <4 x i64> %call429, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod4xGHIJKLMNOPQRSTUV) #6
  %325 = load <4 x i64>, ptr %vi4xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %326 = load <4 x i64>, ptr %vk4xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call430 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %325, <4 x i64> noundef %326)
  store <4 x i64> %call430, ptr %vprod4xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4xOPQRSTUV) #6
  %327 = load <4 x i64>, ptr %vprod4xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract431 = shufflevector <4 x i64> %327, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract431, ptr %vprod4xOPQRSTUV, align 16, !tbaa !12
  %328 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %329 = load <4 x i64>, ptr %vprod4xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call432 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %329)
  %call433 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call432)
  %call434 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %328, <4 x i64> noundef %call433)
  store <4 x i64> %call434, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %330 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %331 = load <2 x i64>, ptr %vprod4xOPQRSTUV, align 16, !tbaa !12
  %call435 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %331)
  %call436 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %330, <4 x i64> noundef %call435)
  store <4 x i64> %call436, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x0123456789ABCDEF) #6
  %332 = load ptr, ptr %i5, align 8, !tbaa !9
  %call437 = call <2 x i64> @_mm_loadu_si128(ptr noundef %332)
  %call438 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call437)
  store <4 x i64> %call438, ptr %vi5x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x0123456789ABCDEF) #6
  %333 = load ptr, ptr %w, align 8, !tbaa !9
  %334 = ptrtoint ptr %333 to i64
  %add439 = add i64 %334, 128
  %add440 = add i64 %add439, 160
  %335 = inttoptr i64 %add440 to ptr
  %call441 = call <2 x i64> @_mm_loadu_si128(ptr noundef %335)
  %call442 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call441)
  store <4 x i64> %call442, ptr %vk5x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5xGHIJKLMNOPQRSTUV) #6
  %336 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr443 = getelementptr inbounds i8, ptr %336, i64 16
  %call444 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr443)
  %call445 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call444)
  store <4 x i64> %call445, ptr %vi5xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5xGHIJKLMNOPQRSTUV) #6
  %337 = load ptr, ptr %w, align 8, !tbaa !9
  %338 = ptrtoint ptr %337 to i64
  %add446 = add i64 %338, 128
  %add447 = add i64 %add446, 176
  %339 = inttoptr i64 %add447 to ptr
  %call448 = call <2 x i64> @_mm_loadu_si128(ptr noundef %339)
  %call449 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call448)
  store <4 x i64> %call449, ptr %vk5xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %340 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr450 = getelementptr inbounds i8, ptr %340, i64 32
  store ptr %add.ptr450, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod5x0123456789ABCDEF) #6
  %341 = load <4 x i64>, ptr %vi5x0123456789ABCDEF, align 32, !tbaa !12
  %342 = load <4 x i64>, ptr %vk5x0123456789ABCDEF, align 32, !tbaa !12
  %call451 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %341, <4 x i64> noundef %342)
  store <4 x i64> %call451, ptr %vprod5x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x89ABCDEF) #6
  %343 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF, align 32, !tbaa !12
  %extract452 = shufflevector <4 x i64> %343, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract452, ptr %vprod5x89ABCDEF, align 16, !tbaa !12
  %344 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %345 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF, align 32, !tbaa !12
  %call453 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %345)
  %call454 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call453)
  %call455 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %344, <4 x i64> noundef %call454)
  store <4 x i64> %call455, ptr %vacc01234567, align 32, !tbaa !12
  %346 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %347 = load <2 x i64>, ptr %vprod5x89ABCDEF, align 16, !tbaa !12
  %call456 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %347)
  %call457 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %346, <4 x i64> noundef %call456)
  store <4 x i64> %call457, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod5xGHIJKLMNOPQRSTUV) #6
  %348 = load <4 x i64>, ptr %vi5xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %349 = load <4 x i64>, ptr %vk5xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call458 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %348, <4 x i64> noundef %349)
  store <4 x i64> %call458, ptr %vprod5xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5xOPQRSTUV) #6
  %350 = load <4 x i64>, ptr %vprod5xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract459 = shufflevector <4 x i64> %350, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract459, ptr %vprod5xOPQRSTUV, align 16, !tbaa !12
  %351 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %352 = load <4 x i64>, ptr %vprod5xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call460 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %352)
  %call461 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call460)
  %call462 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %351, <4 x i64> noundef %call461)
  store <4 x i64> %call462, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %353 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %354 = load <2 x i64>, ptr %vprod5xOPQRSTUV, align 16, !tbaa !12
  %call463 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %354)
  %call464 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %353, <4 x i64> noundef %call463)
  store <4 x i64> %call464, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x0123456789ABCDEF) #6
  %355 = load ptr, ptr %i6, align 8, !tbaa !9
  %call465 = call <2 x i64> @_mm_loadu_si128(ptr noundef %355)
  %call466 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call465)
  store <4 x i64> %call466, ptr %vi6x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x0123456789ABCDEF) #6
  %356 = load ptr, ptr %w, align 8, !tbaa !9
  %357 = ptrtoint ptr %356 to i64
  %add467 = add i64 %357, 128
  %add468 = add i64 %add467, 192
  %358 = inttoptr i64 %add468 to ptr
  %call469 = call <2 x i64> @_mm_loadu_si128(ptr noundef %358)
  %call470 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call469)
  store <4 x i64> %call470, ptr %vk6x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6xGHIJKLMNOPQRSTUV) #6
  %359 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr471 = getelementptr inbounds i8, ptr %359, i64 16
  %call472 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr471)
  %call473 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call472)
  store <4 x i64> %call473, ptr %vi6xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6xGHIJKLMNOPQRSTUV) #6
  %360 = load ptr, ptr %w, align 8, !tbaa !9
  %361 = ptrtoint ptr %360 to i64
  %add474 = add i64 %361, 128
  %add475 = add i64 %add474, 208
  %362 = inttoptr i64 %add475 to ptr
  %call476 = call <2 x i64> @_mm_loadu_si128(ptr noundef %362)
  %call477 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call476)
  store <4 x i64> %call477, ptr %vk6xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %363 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr478 = getelementptr inbounds i8, ptr %363, i64 32
  store ptr %add.ptr478, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod6x0123456789ABCDEF) #6
  %364 = load <4 x i64>, ptr %vi6x0123456789ABCDEF, align 32, !tbaa !12
  %365 = load <4 x i64>, ptr %vk6x0123456789ABCDEF, align 32, !tbaa !12
  %call479 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %364, <4 x i64> noundef %365)
  store <4 x i64> %call479, ptr %vprod6x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x89ABCDEF) #6
  %366 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF, align 32, !tbaa !12
  %extract480 = shufflevector <4 x i64> %366, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract480, ptr %vprod6x89ABCDEF, align 16, !tbaa !12
  %367 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %368 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF, align 32, !tbaa !12
  %call481 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %368)
  %call482 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call481)
  %call483 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %367, <4 x i64> noundef %call482)
  store <4 x i64> %call483, ptr %vacc01234567, align 32, !tbaa !12
  %369 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %370 = load <2 x i64>, ptr %vprod6x89ABCDEF, align 16, !tbaa !12
  %call484 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %370)
  %call485 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %369, <4 x i64> noundef %call484)
  store <4 x i64> %call485, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod6xGHIJKLMNOPQRSTUV) #6
  %371 = load <4 x i64>, ptr %vi6xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %372 = load <4 x i64>, ptr %vk6xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call486 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %371, <4 x i64> noundef %372)
  store <4 x i64> %call486, ptr %vprod6xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6xOPQRSTUV) #6
  %373 = load <4 x i64>, ptr %vprod6xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract487 = shufflevector <4 x i64> %373, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract487, ptr %vprod6xOPQRSTUV, align 16, !tbaa !12
  %374 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %375 = load <4 x i64>, ptr %vprod6xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call488 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %375)
  %call489 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call488)
  %call490 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %374, <4 x i64> noundef %call489)
  store <4 x i64> %call490, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %376 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %377 = load <2 x i64>, ptr %vprod6xOPQRSTUV, align 16, !tbaa !12
  %call491 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %377)
  %call492 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %376, <4 x i64> noundef %call491)
  store <4 x i64> %call492, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x0123456789ABCDEF) #6
  %378 = load ptr, ptr %i7, align 8, !tbaa !9
  %call493 = call <2 x i64> @_mm_loadu_si128(ptr noundef %378)
  %call494 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call493)
  store <4 x i64> %call494, ptr %vi7x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x0123456789ABCDEF) #6
  %379 = load ptr, ptr %w, align 8, !tbaa !9
  %380 = ptrtoint ptr %379 to i64
  %add495 = add i64 %380, 128
  %add496 = add i64 %add495, 224
  %381 = inttoptr i64 %add496 to ptr
  %call497 = call <2 x i64> @_mm_loadu_si128(ptr noundef %381)
  %call498 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call497)
  store <4 x i64> %call498, ptr %vk7x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7xGHIJKLMNOPQRSTUV) #6
  %382 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr499 = getelementptr inbounds i8, ptr %382, i64 16
  %call500 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr499)
  %call501 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call500)
  store <4 x i64> %call501, ptr %vi7xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7xGHIJKLMNOPQRSTUV) #6
  %383 = load ptr, ptr %w, align 8, !tbaa !9
  %384 = ptrtoint ptr %383 to i64
  %add502 = add i64 %384, 128
  %add503 = add i64 %add502, 240
  %385 = inttoptr i64 %add503 to ptr
  %call504 = call <2 x i64> @_mm_loadu_si128(ptr noundef %385)
  %call505 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call504)
  store <4 x i64> %call505, ptr %vk7xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %386 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr506 = getelementptr inbounds i8, ptr %386, i64 32
  store ptr %add.ptr506, ptr %i7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod7x0123456789ABCDEF) #6
  %387 = load <4 x i64>, ptr %vi7x0123456789ABCDEF, align 32, !tbaa !12
  %388 = load <4 x i64>, ptr %vk7x0123456789ABCDEF, align 32, !tbaa !12
  %call507 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %387, <4 x i64> noundef %388)
  store <4 x i64> %call507, ptr %vprod7x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x89ABCDEF) #6
  %389 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF, align 32, !tbaa !12
  %extract508 = shufflevector <4 x i64> %389, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract508, ptr %vprod7x89ABCDEF, align 16, !tbaa !12
  %390 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %391 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF, align 32, !tbaa !12
  %call509 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %391)
  %call510 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call509)
  %call511 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %390, <4 x i64> noundef %call510)
  store <4 x i64> %call511, ptr %vacc01234567, align 32, !tbaa !12
  %392 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %393 = load <2 x i64>, ptr %vprod7x89ABCDEF, align 16, !tbaa !12
  %call512 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %393)
  %call513 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %392, <4 x i64> noundef %call512)
  store <4 x i64> %call513, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod7xGHIJKLMNOPQRSTUV) #6
  %394 = load <4 x i64>, ptr %vi7xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %395 = load <4 x i64>, ptr %vk7xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call514 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %394, <4 x i64> noundef %395)
  store <4 x i64> %call514, ptr %vprod7xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7xOPQRSTUV) #6
  %396 = load <4 x i64>, ptr %vprod7xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract515 = shufflevector <4 x i64> %396, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract515, ptr %vprod7xOPQRSTUV, align 16, !tbaa !12
  %397 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %398 = load <4 x i64>, ptr %vprod7xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call516 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %398)
  %call517 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call516)
  %call518 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %397, <4 x i64> noundef %call517)
  store <4 x i64> %call518, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %399 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %400 = load <2 x i64>, ptr %vprod7xOPQRSTUV, align 16, !tbaa !12
  %call519 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %400)
  %call520 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %399, <4 x i64> noundef %call519)
  store <4 x i64> %call520, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x0123456789ABCDEF) #6
  %401 = load ptr, ptr %i8, align 8, !tbaa !9
  %call521 = call <2 x i64> @_mm_loadu_si128(ptr noundef %401)
  %call522 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call521)
  store <4 x i64> %call522, ptr %vi8x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x0123456789ABCDEF) #6
  %402 = load ptr, ptr %w, align 8, !tbaa !9
  %403 = ptrtoint ptr %402 to i64
  %add523 = add i64 %403, 128
  %add524 = add i64 %add523, 256
  %404 = inttoptr i64 %add524 to ptr
  %call525 = call <2 x i64> @_mm_loadu_si128(ptr noundef %404)
  %call526 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call525)
  store <4 x i64> %call526, ptr %vk8x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8xGHIJKLMNOPQRSTUV) #6
  %405 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr527 = getelementptr inbounds i8, ptr %405, i64 16
  %call528 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr527)
  %call529 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call528)
  store <4 x i64> %call529, ptr %vi8xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8xGHIJKLMNOPQRSTUV) #6
  %406 = load ptr, ptr %w, align 8, !tbaa !9
  %407 = ptrtoint ptr %406 to i64
  %add530 = add i64 %407, 128
  %add531 = add i64 %add530, 272
  %408 = inttoptr i64 %add531 to ptr
  %call532 = call <2 x i64> @_mm_loadu_si128(ptr noundef %408)
  %call533 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call532)
  store <4 x i64> %call533, ptr %vk8xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %409 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr534 = getelementptr inbounds i8, ptr %409, i64 32
  store ptr %add.ptr534, ptr %i8, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod8x0123456789ABCDEF) #6
  %410 = load <4 x i64>, ptr %vi8x0123456789ABCDEF, align 32, !tbaa !12
  %411 = load <4 x i64>, ptr %vk8x0123456789ABCDEF, align 32, !tbaa !12
  %call535 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %410, <4 x i64> noundef %411)
  store <4 x i64> %call535, ptr %vprod8x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x89ABCDEF) #6
  %412 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF, align 32, !tbaa !12
  %extract536 = shufflevector <4 x i64> %412, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract536, ptr %vprod8x89ABCDEF, align 16, !tbaa !12
  %413 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %414 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF, align 32, !tbaa !12
  %call537 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %414)
  %call538 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call537)
  %call539 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %413, <4 x i64> noundef %call538)
  store <4 x i64> %call539, ptr %vacc01234567, align 32, !tbaa !12
  %415 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %416 = load <2 x i64>, ptr %vprod8x89ABCDEF, align 16, !tbaa !12
  %call540 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %416)
  %call541 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %415, <4 x i64> noundef %call540)
  store <4 x i64> %call541, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod8xGHIJKLMNOPQRSTUV) #6
  %417 = load <4 x i64>, ptr %vi8xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %418 = load <4 x i64>, ptr %vk8xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call542 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %417, <4 x i64> noundef %418)
  store <4 x i64> %call542, ptr %vprod8xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8xOPQRSTUV) #6
  %419 = load <4 x i64>, ptr %vprod8xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract543 = shufflevector <4 x i64> %419, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract543, ptr %vprod8xOPQRSTUV, align 16, !tbaa !12
  %420 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %421 = load <4 x i64>, ptr %vprod8xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call544 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %421)
  %call545 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call544)
  %call546 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %420, <4 x i64> noundef %call545)
  store <4 x i64> %call546, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %422 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %423 = load <2 x i64>, ptr %vprod8xOPQRSTUV, align 16, !tbaa !12
  %call547 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %423)
  %call548 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %422, <4 x i64> noundef %call547)
  store <4 x i64> %call548, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x0123456789ABCDEF) #6
  %424 = load ptr, ptr %i9, align 8, !tbaa !9
  %call549 = call <2 x i64> @_mm_loadu_si128(ptr noundef %424)
  %call550 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call549)
  store <4 x i64> %call550, ptr %vi9x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x0123456789ABCDEF) #6
  %425 = load ptr, ptr %w, align 8, !tbaa !9
  %426 = ptrtoint ptr %425 to i64
  %add551 = add i64 %426, 128
  %add552 = add i64 %add551, 288
  %427 = inttoptr i64 %add552 to ptr
  %call553 = call <2 x i64> @_mm_loadu_si128(ptr noundef %427)
  %call554 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call553)
  store <4 x i64> %call554, ptr %vk9x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9xGHIJKLMNOPQRSTUV) #6
  %428 = load ptr, ptr %i9, align 8, !tbaa !9
  %add.ptr555 = getelementptr inbounds i8, ptr %428, i64 16
  %call556 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr555)
  %call557 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call556)
  store <4 x i64> %call557, ptr %vi9xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9xGHIJKLMNOPQRSTUV) #6
  %429 = load ptr, ptr %w, align 8, !tbaa !9
  %430 = ptrtoint ptr %429 to i64
  %add558 = add i64 %430, 128
  %add559 = add i64 %add558, 304
  %431 = inttoptr i64 %add559 to ptr
  %call560 = call <2 x i64> @_mm_loadu_si128(ptr noundef %431)
  %call561 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call560)
  store <4 x i64> %call561, ptr %vk9xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %432 = load ptr, ptr %i9, align 8, !tbaa !9
  %add.ptr562 = getelementptr inbounds i8, ptr %432, i64 32
  store ptr %add.ptr562, ptr %i9, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod9x0123456789ABCDEF) #6
  %433 = load <4 x i64>, ptr %vi9x0123456789ABCDEF, align 32, !tbaa !12
  %434 = load <4 x i64>, ptr %vk9x0123456789ABCDEF, align 32, !tbaa !12
  %call563 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %433, <4 x i64> noundef %434)
  store <4 x i64> %call563, ptr %vprod9x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod9x89ABCDEF) #6
  %435 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF, align 32, !tbaa !12
  %extract564 = shufflevector <4 x i64> %435, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract564, ptr %vprod9x89ABCDEF, align 16, !tbaa !12
  %436 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %437 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF, align 32, !tbaa !12
  %call565 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %437)
  %call566 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call565)
  %call567 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %436, <4 x i64> noundef %call566)
  store <4 x i64> %call567, ptr %vacc01234567, align 32, !tbaa !12
  %438 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %439 = load <2 x i64>, ptr %vprod9x89ABCDEF, align 16, !tbaa !12
  %call568 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %439)
  %call569 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %438, <4 x i64> noundef %call568)
  store <4 x i64> %call569, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod9xGHIJKLMNOPQRSTUV) #6
  %440 = load <4 x i64>, ptr %vi9xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %441 = load <4 x i64>, ptr %vk9xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call570 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %440, <4 x i64> noundef %441)
  store <4 x i64> %call570, ptr %vprod9xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod9xOPQRSTUV) #6
  %442 = load <4 x i64>, ptr %vprod9xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract571 = shufflevector <4 x i64> %442, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract571, ptr %vprod9xOPQRSTUV, align 16, !tbaa !12
  %443 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %444 = load <4 x i64>, ptr %vprod9xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call572 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %444)
  %call573 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call572)
  %call574 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %443, <4 x i64> noundef %call573)
  store <4 x i64> %call574, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %445 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %446 = load <2 x i64>, ptr %vprod9xOPQRSTUV, align 16, !tbaa !12
  %call575 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %446)
  %call576 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %445, <4 x i64> noundef %call575)
  store <4 x i64> %call576, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x0123456789ABCDEF) #6
  %447 = load ptr, ptr %i10, align 8, !tbaa !9
  %call577 = call <2 x i64> @_mm_loadu_si128(ptr noundef %447)
  %call578 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call577)
  store <4 x i64> %call578, ptr %vi10x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x0123456789ABCDEF) #6
  %448 = load ptr, ptr %w, align 8, !tbaa !9
  %449 = ptrtoint ptr %448 to i64
  %add579 = add i64 %449, 128
  %add580 = add i64 %add579, 320
  %450 = inttoptr i64 %add580 to ptr
  %call581 = call <2 x i64> @_mm_loadu_si128(ptr noundef %450)
  %call582 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call581)
  store <4 x i64> %call582, ptr %vk10x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10xGHIJKLMNOPQRSTUV) #6
  %451 = load ptr, ptr %i10, align 8, !tbaa !9
  %add.ptr583 = getelementptr inbounds i8, ptr %451, i64 16
  %call584 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr583)
  %call585 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call584)
  store <4 x i64> %call585, ptr %vi10xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10xGHIJKLMNOPQRSTUV) #6
  %452 = load ptr, ptr %w, align 8, !tbaa !9
  %453 = ptrtoint ptr %452 to i64
  %add586 = add i64 %453, 128
  %add587 = add i64 %add586, 336
  %454 = inttoptr i64 %add587 to ptr
  %call588 = call <2 x i64> @_mm_loadu_si128(ptr noundef %454)
  %call589 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call588)
  store <4 x i64> %call589, ptr %vk10xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %455 = load ptr, ptr %i10, align 8, !tbaa !9
  %add.ptr590 = getelementptr inbounds i8, ptr %455, i64 32
  store ptr %add.ptr590, ptr %i10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod10x0123456789ABCDEF) #6
  %456 = load <4 x i64>, ptr %vi10x0123456789ABCDEF, align 32, !tbaa !12
  %457 = load <4 x i64>, ptr %vk10x0123456789ABCDEF, align 32, !tbaa !12
  %call591 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %456, <4 x i64> noundef %457)
  store <4 x i64> %call591, ptr %vprod10x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod10x89ABCDEF) #6
  %458 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF, align 32, !tbaa !12
  %extract592 = shufflevector <4 x i64> %458, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract592, ptr %vprod10x89ABCDEF, align 16, !tbaa !12
  %459 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %460 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF, align 32, !tbaa !12
  %call593 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %460)
  %call594 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call593)
  %call595 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %459, <4 x i64> noundef %call594)
  store <4 x i64> %call595, ptr %vacc01234567, align 32, !tbaa !12
  %461 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %462 = load <2 x i64>, ptr %vprod10x89ABCDEF, align 16, !tbaa !12
  %call596 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %462)
  %call597 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %461, <4 x i64> noundef %call596)
  store <4 x i64> %call597, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod10xGHIJKLMNOPQRSTUV) #6
  %463 = load <4 x i64>, ptr %vi10xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %464 = load <4 x i64>, ptr %vk10xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call598 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %463, <4 x i64> noundef %464)
  store <4 x i64> %call598, ptr %vprod10xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod10xOPQRSTUV) #6
  %465 = load <4 x i64>, ptr %vprod10xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract599 = shufflevector <4 x i64> %465, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract599, ptr %vprod10xOPQRSTUV, align 16, !tbaa !12
  %466 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %467 = load <4 x i64>, ptr %vprod10xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call600 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %467)
  %call601 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call600)
  %call602 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %466, <4 x i64> noundef %call601)
  store <4 x i64> %call602, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %468 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %469 = load <2 x i64>, ptr %vprod10xOPQRSTUV, align 16, !tbaa !12
  %call603 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %469)
  %call604 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %468, <4 x i64> noundef %call603)
  store <4 x i64> %call604, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x0123456789ABCDEF) #6
  %470 = load ptr, ptr %i11, align 8, !tbaa !9
  %call605 = call <2 x i64> @_mm_loadu_si128(ptr noundef %470)
  %call606 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call605)
  store <4 x i64> %call606, ptr %vi11x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x0123456789ABCDEF) #6
  %471 = load ptr, ptr %w, align 8, !tbaa !9
  %472 = ptrtoint ptr %471 to i64
  %add607 = add i64 %472, 128
  %add608 = add i64 %add607, 352
  %473 = inttoptr i64 %add608 to ptr
  %call609 = call <2 x i64> @_mm_loadu_si128(ptr noundef %473)
  %call610 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call609)
  store <4 x i64> %call610, ptr %vk11x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11xGHIJKLMNOPQRSTUV) #6
  %474 = load ptr, ptr %i11, align 8, !tbaa !9
  %add.ptr611 = getelementptr inbounds i8, ptr %474, i64 16
  %call612 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr611)
  %call613 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call612)
  store <4 x i64> %call613, ptr %vi11xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11xGHIJKLMNOPQRSTUV) #6
  %475 = load ptr, ptr %w, align 8, !tbaa !9
  %476 = ptrtoint ptr %475 to i64
  %add614 = add i64 %476, 128
  %add615 = add i64 %add614, 368
  %477 = inttoptr i64 %add615 to ptr
  %call616 = call <2 x i64> @_mm_loadu_si128(ptr noundef %477)
  %call617 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call616)
  store <4 x i64> %call617, ptr %vk11xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %478 = load ptr, ptr %i11, align 8, !tbaa !9
  %add.ptr618 = getelementptr inbounds i8, ptr %478, i64 32
  store ptr %add.ptr618, ptr %i11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod11x0123456789ABCDEF) #6
  %479 = load <4 x i64>, ptr %vi11x0123456789ABCDEF, align 32, !tbaa !12
  %480 = load <4 x i64>, ptr %vk11x0123456789ABCDEF, align 32, !tbaa !12
  %call619 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %479, <4 x i64> noundef %480)
  store <4 x i64> %call619, ptr %vprod11x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod11x89ABCDEF) #6
  %481 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF, align 32, !tbaa !12
  %extract620 = shufflevector <4 x i64> %481, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract620, ptr %vprod11x89ABCDEF, align 16, !tbaa !12
  %482 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %483 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF, align 32, !tbaa !12
  %call621 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %483)
  %call622 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call621)
  %call623 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %482, <4 x i64> noundef %call622)
  store <4 x i64> %call623, ptr %vacc01234567, align 32, !tbaa !12
  %484 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %485 = load <2 x i64>, ptr %vprod11x89ABCDEF, align 16, !tbaa !12
  %call624 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %485)
  %call625 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %484, <4 x i64> noundef %call624)
  store <4 x i64> %call625, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod11xGHIJKLMNOPQRSTUV) #6
  %486 = load <4 x i64>, ptr %vi11xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %487 = load <4 x i64>, ptr %vk11xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call626 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %486, <4 x i64> noundef %487)
  store <4 x i64> %call626, ptr %vprod11xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod11xOPQRSTUV) #6
  %488 = load <4 x i64>, ptr %vprod11xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract627 = shufflevector <4 x i64> %488, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract627, ptr %vprod11xOPQRSTUV, align 16, !tbaa !12
  %489 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %490 = load <4 x i64>, ptr %vprod11xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call628 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %490)
  %call629 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call628)
  %call630 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %489, <4 x i64> noundef %call629)
  store <4 x i64> %call630, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %491 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %492 = load <2 x i64>, ptr %vprod11xOPQRSTUV, align 16, !tbaa !12
  %call631 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %492)
  %call632 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %491, <4 x i64> noundef %call631)
  store <4 x i64> %call632, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x0123456789ABCDEF) #6
  %493 = load ptr, ptr %i12, align 8, !tbaa !9
  %call633 = call <2 x i64> @_mm_loadu_si128(ptr noundef %493)
  %call634 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call633)
  store <4 x i64> %call634, ptr %vi12x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x0123456789ABCDEF) #6
  %494 = load ptr, ptr %w, align 8, !tbaa !9
  %495 = ptrtoint ptr %494 to i64
  %add635 = add i64 %495, 128
  %add636 = add i64 %add635, 384
  %496 = inttoptr i64 %add636 to ptr
  %call637 = call <2 x i64> @_mm_loadu_si128(ptr noundef %496)
  %call638 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call637)
  store <4 x i64> %call638, ptr %vk12x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12xGHIJKLMNOPQRSTUV) #6
  %497 = load ptr, ptr %i12, align 8, !tbaa !9
  %add.ptr639 = getelementptr inbounds i8, ptr %497, i64 16
  %call640 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr639)
  %call641 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call640)
  store <4 x i64> %call641, ptr %vi12xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12xGHIJKLMNOPQRSTUV) #6
  %498 = load ptr, ptr %w, align 8, !tbaa !9
  %499 = ptrtoint ptr %498 to i64
  %add642 = add i64 %499, 128
  %add643 = add i64 %add642, 400
  %500 = inttoptr i64 %add643 to ptr
  %call644 = call <2 x i64> @_mm_loadu_si128(ptr noundef %500)
  %call645 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call644)
  store <4 x i64> %call645, ptr %vk12xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %501 = load ptr, ptr %i12, align 8, !tbaa !9
  %add.ptr646 = getelementptr inbounds i8, ptr %501, i64 32
  store ptr %add.ptr646, ptr %i12, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod12x0123456789ABCDEF) #6
  %502 = load <4 x i64>, ptr %vi12x0123456789ABCDEF, align 32, !tbaa !12
  %503 = load <4 x i64>, ptr %vk12x0123456789ABCDEF, align 32, !tbaa !12
  %call647 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %502, <4 x i64> noundef %503)
  store <4 x i64> %call647, ptr %vprod12x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod12x89ABCDEF) #6
  %504 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF, align 32, !tbaa !12
  %extract648 = shufflevector <4 x i64> %504, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract648, ptr %vprod12x89ABCDEF, align 16, !tbaa !12
  %505 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %506 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF, align 32, !tbaa !12
  %call649 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %506)
  %call650 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call649)
  %call651 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %505, <4 x i64> noundef %call650)
  store <4 x i64> %call651, ptr %vacc01234567, align 32, !tbaa !12
  %507 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %508 = load <2 x i64>, ptr %vprod12x89ABCDEF, align 16, !tbaa !12
  %call652 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %508)
  %call653 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %507, <4 x i64> noundef %call652)
  store <4 x i64> %call653, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod12xGHIJKLMNOPQRSTUV) #6
  %509 = load <4 x i64>, ptr %vi12xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %510 = load <4 x i64>, ptr %vk12xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call654 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %509, <4 x i64> noundef %510)
  store <4 x i64> %call654, ptr %vprod12xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod12xOPQRSTUV) #6
  %511 = load <4 x i64>, ptr %vprod12xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract655 = shufflevector <4 x i64> %511, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract655, ptr %vprod12xOPQRSTUV, align 16, !tbaa !12
  %512 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %513 = load <4 x i64>, ptr %vprod12xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call656 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %513)
  %call657 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call656)
  %call658 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %512, <4 x i64> noundef %call657)
  store <4 x i64> %call658, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %514 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %515 = load <2 x i64>, ptr %vprod12xOPQRSTUV, align 16, !tbaa !12
  %call659 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %515)
  %call660 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %514, <4 x i64> noundef %call659)
  store <4 x i64> %call660, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x0123456789ABCDEF) #6
  %516 = load ptr, ptr %i13, align 8, !tbaa !9
  %call661 = call <2 x i64> @_mm_loadu_si128(ptr noundef %516)
  %call662 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call661)
  store <4 x i64> %call662, ptr %vi13x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x0123456789ABCDEF) #6
  %517 = load ptr, ptr %w, align 8, !tbaa !9
  %518 = ptrtoint ptr %517 to i64
  %add663 = add i64 %518, 128
  %add664 = add i64 %add663, 416
  %519 = inttoptr i64 %add664 to ptr
  %call665 = call <2 x i64> @_mm_loadu_si128(ptr noundef %519)
  %call666 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call665)
  store <4 x i64> %call666, ptr %vk13x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13xGHIJKLMNOPQRSTUV) #6
  %520 = load ptr, ptr %i13, align 8, !tbaa !9
  %add.ptr667 = getelementptr inbounds i8, ptr %520, i64 16
  %call668 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr667)
  %call669 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call668)
  store <4 x i64> %call669, ptr %vi13xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13xGHIJKLMNOPQRSTUV) #6
  %521 = load ptr, ptr %w, align 8, !tbaa !9
  %522 = ptrtoint ptr %521 to i64
  %add670 = add i64 %522, 128
  %add671 = add i64 %add670, 432
  %523 = inttoptr i64 %add671 to ptr
  %call672 = call <2 x i64> @_mm_loadu_si128(ptr noundef %523)
  %call673 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call672)
  store <4 x i64> %call673, ptr %vk13xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %524 = load ptr, ptr %i13, align 8, !tbaa !9
  %add.ptr674 = getelementptr inbounds i8, ptr %524, i64 32
  store ptr %add.ptr674, ptr %i13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod13x0123456789ABCDEF) #6
  %525 = load <4 x i64>, ptr %vi13x0123456789ABCDEF, align 32, !tbaa !12
  %526 = load <4 x i64>, ptr %vk13x0123456789ABCDEF, align 32, !tbaa !12
  %call675 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %525, <4 x i64> noundef %526)
  store <4 x i64> %call675, ptr %vprod13x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod13x89ABCDEF) #6
  %527 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF, align 32, !tbaa !12
  %extract676 = shufflevector <4 x i64> %527, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract676, ptr %vprod13x89ABCDEF, align 16, !tbaa !12
  %528 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %529 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF, align 32, !tbaa !12
  %call677 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %529)
  %call678 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call677)
  %call679 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %528, <4 x i64> noundef %call678)
  store <4 x i64> %call679, ptr %vacc01234567, align 32, !tbaa !12
  %530 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %531 = load <2 x i64>, ptr %vprod13x89ABCDEF, align 16, !tbaa !12
  %call680 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %531)
  %call681 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %530, <4 x i64> noundef %call680)
  store <4 x i64> %call681, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod13xGHIJKLMNOPQRSTUV) #6
  %532 = load <4 x i64>, ptr %vi13xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %533 = load <4 x i64>, ptr %vk13xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call682 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %532, <4 x i64> noundef %533)
  store <4 x i64> %call682, ptr %vprod13xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod13xOPQRSTUV) #6
  %534 = load <4 x i64>, ptr %vprod13xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract683 = shufflevector <4 x i64> %534, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract683, ptr %vprod13xOPQRSTUV, align 16, !tbaa !12
  %535 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %536 = load <4 x i64>, ptr %vprod13xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call684 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %536)
  %call685 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call684)
  %call686 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %535, <4 x i64> noundef %call685)
  store <4 x i64> %call686, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %537 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %538 = load <2 x i64>, ptr %vprod13xOPQRSTUV, align 16, !tbaa !12
  %call687 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %538)
  %call688 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %537, <4 x i64> noundef %call687)
  store <4 x i64> %call688, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x0123456789ABCDEF) #6
  %539 = load ptr, ptr %i14, align 8, !tbaa !9
  %call689 = call <2 x i64> @_mm_loadu_si128(ptr noundef %539)
  %call690 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call689)
  store <4 x i64> %call690, ptr %vi14x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x0123456789ABCDEF) #6
  %540 = load ptr, ptr %w, align 8, !tbaa !9
  %541 = ptrtoint ptr %540 to i64
  %add691 = add i64 %541, 128
  %add692 = add i64 %add691, 448
  %542 = inttoptr i64 %add692 to ptr
  %call693 = call <2 x i64> @_mm_loadu_si128(ptr noundef %542)
  %call694 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call693)
  store <4 x i64> %call694, ptr %vk14x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14xGHIJKLMNOPQRSTUV) #6
  %543 = load ptr, ptr %i14, align 8, !tbaa !9
  %add.ptr695 = getelementptr inbounds i8, ptr %543, i64 16
  %call696 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr695)
  %call697 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call696)
  store <4 x i64> %call697, ptr %vi14xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14xGHIJKLMNOPQRSTUV) #6
  %544 = load ptr, ptr %w, align 8, !tbaa !9
  %545 = ptrtoint ptr %544 to i64
  %add698 = add i64 %545, 128
  %add699 = add i64 %add698, 464
  %546 = inttoptr i64 %add699 to ptr
  %call700 = call <2 x i64> @_mm_loadu_si128(ptr noundef %546)
  %call701 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call700)
  store <4 x i64> %call701, ptr %vk14xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %547 = load ptr, ptr %i14, align 8, !tbaa !9
  %add.ptr702 = getelementptr inbounds i8, ptr %547, i64 32
  store ptr %add.ptr702, ptr %i14, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod14x0123456789ABCDEF) #6
  %548 = load <4 x i64>, ptr %vi14x0123456789ABCDEF, align 32, !tbaa !12
  %549 = load <4 x i64>, ptr %vk14x0123456789ABCDEF, align 32, !tbaa !12
  %call703 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %548, <4 x i64> noundef %549)
  store <4 x i64> %call703, ptr %vprod14x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod14x89ABCDEF) #6
  %550 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF, align 32, !tbaa !12
  %extract704 = shufflevector <4 x i64> %550, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract704, ptr %vprod14x89ABCDEF, align 16, !tbaa !12
  %551 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %552 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF, align 32, !tbaa !12
  %call705 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %552)
  %call706 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call705)
  %call707 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %551, <4 x i64> noundef %call706)
  store <4 x i64> %call707, ptr %vacc01234567, align 32, !tbaa !12
  %553 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %554 = load <2 x i64>, ptr %vprod14x89ABCDEF, align 16, !tbaa !12
  %call708 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %554)
  %call709 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %553, <4 x i64> noundef %call708)
  store <4 x i64> %call709, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod14xGHIJKLMNOPQRSTUV) #6
  %555 = load <4 x i64>, ptr %vi14xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %556 = load <4 x i64>, ptr %vk14xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call710 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %555, <4 x i64> noundef %556)
  store <4 x i64> %call710, ptr %vprod14xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod14xOPQRSTUV) #6
  %557 = load <4 x i64>, ptr %vprod14xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract711 = shufflevector <4 x i64> %557, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract711, ptr %vprod14xOPQRSTUV, align 16, !tbaa !12
  %558 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %559 = load <4 x i64>, ptr %vprod14xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call712 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %559)
  %call713 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call712)
  %call714 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %558, <4 x i64> noundef %call713)
  store <4 x i64> %call714, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %560 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %561 = load <2 x i64>, ptr %vprod14xOPQRSTUV, align 16, !tbaa !12
  %call715 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %561)
  %call716 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %560, <4 x i64> noundef %call715)
  store <4 x i64> %call716, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x0123456789ABCDEF) #6
  %562 = load ptr, ptr %i15, align 8, !tbaa !9
  %call717 = call <2 x i64> @_mm_loadu_si128(ptr noundef %562)
  %call718 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call717)
  store <4 x i64> %call718, ptr %vi15x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x0123456789ABCDEF) #6
  %563 = load ptr, ptr %w, align 8, !tbaa !9
  %564 = ptrtoint ptr %563 to i64
  %add719 = add i64 %564, 128
  %add720 = add i64 %add719, 480
  %565 = inttoptr i64 %add720 to ptr
  %call721 = call <2 x i64> @_mm_loadu_si128(ptr noundef %565)
  %call722 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call721)
  store <4 x i64> %call722, ptr %vk15x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15xGHIJKLMNOPQRSTUV) #6
  %566 = load ptr, ptr %i15, align 8, !tbaa !9
  %add.ptr723 = getelementptr inbounds i8, ptr %566, i64 16
  %call724 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr723)
  %call725 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call724)
  store <4 x i64> %call725, ptr %vi15xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15xGHIJKLMNOPQRSTUV) #6
  %567 = load ptr, ptr %w, align 8, !tbaa !9
  %568 = ptrtoint ptr %567 to i64
  %add726 = add i64 %568, 128
  %add727 = add i64 %add726, 496
  %569 = inttoptr i64 %add727 to ptr
  %call728 = call <2 x i64> @_mm_loadu_si128(ptr noundef %569)
  %call729 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call728)
  store <4 x i64> %call729, ptr %vk15xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %570 = load ptr, ptr %i15, align 8, !tbaa !9
  %add.ptr730 = getelementptr inbounds i8, ptr %570, i64 32
  store ptr %add.ptr730, ptr %i15, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod15x0123456789ABCDEF) #6
  %571 = load <4 x i64>, ptr %vi15x0123456789ABCDEF, align 32, !tbaa !12
  %572 = load <4 x i64>, ptr %vk15x0123456789ABCDEF, align 32, !tbaa !12
  %call731 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %571, <4 x i64> noundef %572)
  store <4 x i64> %call731, ptr %vprod15x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod15x89ABCDEF) #6
  %573 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF, align 32, !tbaa !12
  %extract732 = shufflevector <4 x i64> %573, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract732, ptr %vprod15x89ABCDEF, align 16, !tbaa !12
  %574 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %575 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF, align 32, !tbaa !12
  %call733 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %575)
  %call734 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call733)
  %call735 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %574, <4 x i64> noundef %call734)
  store <4 x i64> %call735, ptr %vacc01234567, align 32, !tbaa !12
  %576 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %577 = load <2 x i64>, ptr %vprod15x89ABCDEF, align 16, !tbaa !12
  %call736 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %577)
  %call737 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %576, <4 x i64> noundef %call736)
  store <4 x i64> %call737, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod15xGHIJKLMNOPQRSTUV) #6
  %578 = load <4 x i64>, ptr %vi15xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %579 = load <4 x i64>, ptr %vk15xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call738 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %578, <4 x i64> noundef %579)
  store <4 x i64> %call738, ptr %vprod15xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod15xOPQRSTUV) #6
  %580 = load <4 x i64>, ptr %vprod15xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract739 = shufflevector <4 x i64> %580, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract739, ptr %vprod15xOPQRSTUV, align 16, !tbaa !12
  %581 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %582 = load <4 x i64>, ptr %vprod15xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call740 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %582)
  %call741 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call740)
  %call742 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %581, <4 x i64> noundef %call741)
  store <4 x i64> %call742, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %583 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %584 = load <2 x i64>, ptr %vprod15xOPQRSTUV, align 16, !tbaa !12
  %call743 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %584)
  %call744 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %583, <4 x i64> noundef %call743)
  store <4 x i64> %call744, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x0123456789ABCDEF) #6
  %585 = load ptr, ptr %i16, align 8, !tbaa !9
  %call745 = call <2 x i64> @_mm_loadu_si128(ptr noundef %585)
  %call746 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call745)
  store <4 x i64> %call746, ptr %vi16x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x0123456789ABCDEF) #6
  %586 = load ptr, ptr %w, align 8, !tbaa !9
  %587 = ptrtoint ptr %586 to i64
  %add747 = add i64 %587, 128
  %add748 = add i64 %add747, 512
  %588 = inttoptr i64 %add748 to ptr
  %call749 = call <2 x i64> @_mm_loadu_si128(ptr noundef %588)
  %call750 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call749)
  store <4 x i64> %call750, ptr %vk16x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16xGHIJKLMNOPQRSTUV) #6
  %589 = load ptr, ptr %i16, align 8, !tbaa !9
  %add.ptr751 = getelementptr inbounds i8, ptr %589, i64 16
  %call752 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr751)
  %call753 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call752)
  store <4 x i64> %call753, ptr %vi16xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16xGHIJKLMNOPQRSTUV) #6
  %590 = load ptr, ptr %w, align 8, !tbaa !9
  %591 = ptrtoint ptr %590 to i64
  %add754 = add i64 %591, 128
  %add755 = add i64 %add754, 528
  %592 = inttoptr i64 %add755 to ptr
  %call756 = call <2 x i64> @_mm_loadu_si128(ptr noundef %592)
  %call757 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call756)
  store <4 x i64> %call757, ptr %vk16xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %593 = load ptr, ptr %i16, align 8, !tbaa !9
  %add.ptr758 = getelementptr inbounds i8, ptr %593, i64 32
  store ptr %add.ptr758, ptr %i16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod16x0123456789ABCDEF) #6
  %594 = load <4 x i64>, ptr %vi16x0123456789ABCDEF, align 32, !tbaa !12
  %595 = load <4 x i64>, ptr %vk16x0123456789ABCDEF, align 32, !tbaa !12
  %call759 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %594, <4 x i64> noundef %595)
  store <4 x i64> %call759, ptr %vprod16x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod16x89ABCDEF) #6
  %596 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF, align 32, !tbaa !12
  %extract760 = shufflevector <4 x i64> %596, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract760, ptr %vprod16x89ABCDEF, align 16, !tbaa !12
  %597 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %598 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF, align 32, !tbaa !12
  %call761 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %598)
  %call762 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call761)
  %call763 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %597, <4 x i64> noundef %call762)
  store <4 x i64> %call763, ptr %vacc01234567, align 32, !tbaa !12
  %599 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %600 = load <2 x i64>, ptr %vprod16x89ABCDEF, align 16, !tbaa !12
  %call764 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %600)
  %call765 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %599, <4 x i64> noundef %call764)
  store <4 x i64> %call765, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod16xGHIJKLMNOPQRSTUV) #6
  %601 = load <4 x i64>, ptr %vi16xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %602 = load <4 x i64>, ptr %vk16xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call766 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %601, <4 x i64> noundef %602)
  store <4 x i64> %call766, ptr %vprod16xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod16xOPQRSTUV) #6
  %603 = load <4 x i64>, ptr %vprod16xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract767 = shufflevector <4 x i64> %603, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract767, ptr %vprod16xOPQRSTUV, align 16, !tbaa !12
  %604 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %605 = load <4 x i64>, ptr %vprod16xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call768 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %605)
  %call769 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call768)
  %call770 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %604, <4 x i64> noundef %call769)
  store <4 x i64> %call770, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %606 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %607 = load <2 x i64>, ptr %vprod16xOPQRSTUV, align 16, !tbaa !12
  %call771 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %607)
  %call772 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %606, <4 x i64> noundef %call771)
  store <4 x i64> %call772, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x0123456789ABCDEF) #6
  %608 = load ptr, ptr %i17, align 8, !tbaa !9
  %call773 = call <2 x i64> @_mm_loadu_si128(ptr noundef %608)
  %call774 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call773)
  store <4 x i64> %call774, ptr %vi17x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x0123456789ABCDEF) #6
  %609 = load ptr, ptr %w, align 8, !tbaa !9
  %610 = ptrtoint ptr %609 to i64
  %add775 = add i64 %610, 128
  %add776 = add i64 %add775, 544
  %611 = inttoptr i64 %add776 to ptr
  %call777 = call <2 x i64> @_mm_loadu_si128(ptr noundef %611)
  %call778 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call777)
  store <4 x i64> %call778, ptr %vk17x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17xGHIJKLMNOPQRSTUV) #6
  %612 = load ptr, ptr %i17, align 8, !tbaa !9
  %add.ptr779 = getelementptr inbounds i8, ptr %612, i64 16
  %call780 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr779)
  %call781 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call780)
  store <4 x i64> %call781, ptr %vi17xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17xGHIJKLMNOPQRSTUV) #6
  %613 = load ptr, ptr %w, align 8, !tbaa !9
  %614 = ptrtoint ptr %613 to i64
  %add782 = add i64 %614, 128
  %add783 = add i64 %add782, 560
  %615 = inttoptr i64 %add783 to ptr
  %call784 = call <2 x i64> @_mm_loadu_si128(ptr noundef %615)
  %call785 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call784)
  store <4 x i64> %call785, ptr %vk17xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %616 = load ptr, ptr %i17, align 8, !tbaa !9
  %add.ptr786 = getelementptr inbounds i8, ptr %616, i64 32
  store ptr %add.ptr786, ptr %i17, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod17x0123456789ABCDEF) #6
  %617 = load <4 x i64>, ptr %vi17x0123456789ABCDEF, align 32, !tbaa !12
  %618 = load <4 x i64>, ptr %vk17x0123456789ABCDEF, align 32, !tbaa !12
  %call787 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %617, <4 x i64> noundef %618)
  store <4 x i64> %call787, ptr %vprod17x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod17x89ABCDEF) #6
  %619 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF, align 32, !tbaa !12
  %extract788 = shufflevector <4 x i64> %619, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract788, ptr %vprod17x89ABCDEF, align 16, !tbaa !12
  %620 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %621 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF, align 32, !tbaa !12
  %call789 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %621)
  %call790 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call789)
  %call791 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %620, <4 x i64> noundef %call790)
  store <4 x i64> %call791, ptr %vacc01234567, align 32, !tbaa !12
  %622 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %623 = load <2 x i64>, ptr %vprod17x89ABCDEF, align 16, !tbaa !12
  %call792 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %623)
  %call793 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %622, <4 x i64> noundef %call792)
  store <4 x i64> %call793, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod17xGHIJKLMNOPQRSTUV) #6
  %624 = load <4 x i64>, ptr %vi17xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %625 = load <4 x i64>, ptr %vk17xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call794 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %624, <4 x i64> noundef %625)
  store <4 x i64> %call794, ptr %vprod17xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod17xOPQRSTUV) #6
  %626 = load <4 x i64>, ptr %vprod17xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract795 = shufflevector <4 x i64> %626, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract795, ptr %vprod17xOPQRSTUV, align 16, !tbaa !12
  %627 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %628 = load <4 x i64>, ptr %vprod17xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call796 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %628)
  %call797 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call796)
  %call798 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %627, <4 x i64> noundef %call797)
  store <4 x i64> %call798, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %629 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %630 = load <2 x i64>, ptr %vprod17xOPQRSTUV, align 16, !tbaa !12
  %call799 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %630)
  %call800 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %629, <4 x i64> noundef %call799)
  store <4 x i64> %call800, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x0123456789ABCDEF) #6
  %631 = load ptr, ptr %i18, align 8, !tbaa !9
  %call801 = call <2 x i64> @_mm_loadu_si128(ptr noundef %631)
  %call802 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call801)
  store <4 x i64> %call802, ptr %vi18x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x0123456789ABCDEF) #6
  %632 = load ptr, ptr %w, align 8, !tbaa !9
  %633 = ptrtoint ptr %632 to i64
  %add803 = add i64 %633, 128
  %add804 = add i64 %add803, 576
  %634 = inttoptr i64 %add804 to ptr
  %call805 = call <2 x i64> @_mm_loadu_si128(ptr noundef %634)
  %call806 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call805)
  store <4 x i64> %call806, ptr %vk18x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18xGHIJKLMNOPQRSTUV) #6
  %635 = load ptr, ptr %i18, align 8, !tbaa !9
  %add.ptr807 = getelementptr inbounds i8, ptr %635, i64 16
  %call808 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr807)
  %call809 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call808)
  store <4 x i64> %call809, ptr %vi18xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18xGHIJKLMNOPQRSTUV) #6
  %636 = load ptr, ptr %w, align 8, !tbaa !9
  %637 = ptrtoint ptr %636 to i64
  %add810 = add i64 %637, 128
  %add811 = add i64 %add810, 592
  %638 = inttoptr i64 %add811 to ptr
  %call812 = call <2 x i64> @_mm_loadu_si128(ptr noundef %638)
  %call813 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call812)
  store <4 x i64> %call813, ptr %vk18xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %639 = load ptr, ptr %i18, align 8, !tbaa !9
  %add.ptr814 = getelementptr inbounds i8, ptr %639, i64 32
  store ptr %add.ptr814, ptr %i18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod18x0123456789ABCDEF) #6
  %640 = load <4 x i64>, ptr %vi18x0123456789ABCDEF, align 32, !tbaa !12
  %641 = load <4 x i64>, ptr %vk18x0123456789ABCDEF, align 32, !tbaa !12
  %call815 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %640, <4 x i64> noundef %641)
  store <4 x i64> %call815, ptr %vprod18x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod18x89ABCDEF) #6
  %642 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF, align 32, !tbaa !12
  %extract816 = shufflevector <4 x i64> %642, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract816, ptr %vprod18x89ABCDEF, align 16, !tbaa !12
  %643 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %644 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF, align 32, !tbaa !12
  %call817 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %644)
  %call818 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call817)
  %call819 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %643, <4 x i64> noundef %call818)
  store <4 x i64> %call819, ptr %vacc01234567, align 32, !tbaa !12
  %645 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %646 = load <2 x i64>, ptr %vprod18x89ABCDEF, align 16, !tbaa !12
  %call820 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %646)
  %call821 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %645, <4 x i64> noundef %call820)
  store <4 x i64> %call821, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod18xGHIJKLMNOPQRSTUV) #6
  %647 = load <4 x i64>, ptr %vi18xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %648 = load <4 x i64>, ptr %vk18xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call822 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %647, <4 x i64> noundef %648)
  store <4 x i64> %call822, ptr %vprod18xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod18xOPQRSTUV) #6
  %649 = load <4 x i64>, ptr %vprod18xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract823 = shufflevector <4 x i64> %649, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract823, ptr %vprod18xOPQRSTUV, align 16, !tbaa !12
  %650 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %651 = load <4 x i64>, ptr %vprod18xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call824 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %651)
  %call825 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call824)
  %call826 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %650, <4 x i64> noundef %call825)
  store <4 x i64> %call826, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %652 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %653 = load <2 x i64>, ptr %vprod18xOPQRSTUV, align 16, !tbaa !12
  %call827 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %653)
  %call828 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %652, <4 x i64> noundef %call827)
  store <4 x i64> %call828, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x0123456789ABCDEF) #6
  %654 = load ptr, ptr %i19, align 8, !tbaa !9
  %call829 = call <2 x i64> @_mm_loadu_si128(ptr noundef %654)
  %call830 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call829)
  store <4 x i64> %call830, ptr %vi19x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x0123456789ABCDEF) #6
  %655 = load ptr, ptr %w, align 8, !tbaa !9
  %656 = ptrtoint ptr %655 to i64
  %add831 = add i64 %656, 128
  %add832 = add i64 %add831, 608
  %657 = inttoptr i64 %add832 to ptr
  %call833 = call <2 x i64> @_mm_loadu_si128(ptr noundef %657)
  %call834 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call833)
  store <4 x i64> %call834, ptr %vk19x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19xGHIJKLMNOPQRSTUV) #6
  %658 = load ptr, ptr %i19, align 8, !tbaa !9
  %add.ptr835 = getelementptr inbounds i8, ptr %658, i64 16
  %call836 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr835)
  %call837 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call836)
  store <4 x i64> %call837, ptr %vi19xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19xGHIJKLMNOPQRSTUV) #6
  %659 = load ptr, ptr %w, align 8, !tbaa !9
  %660 = ptrtoint ptr %659 to i64
  %add838 = add i64 %660, 128
  %add839 = add i64 %add838, 624
  %661 = inttoptr i64 %add839 to ptr
  %call840 = call <2 x i64> @_mm_loadu_si128(ptr noundef %661)
  %call841 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call840)
  store <4 x i64> %call841, ptr %vk19xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %662 = load ptr, ptr %i19, align 8, !tbaa !9
  %add.ptr842 = getelementptr inbounds i8, ptr %662, i64 32
  store ptr %add.ptr842, ptr %i19, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod19x0123456789ABCDEF) #6
  %663 = load <4 x i64>, ptr %vi19x0123456789ABCDEF, align 32, !tbaa !12
  %664 = load <4 x i64>, ptr %vk19x0123456789ABCDEF, align 32, !tbaa !12
  %call843 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %663, <4 x i64> noundef %664)
  store <4 x i64> %call843, ptr %vprod19x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod19x89ABCDEF) #6
  %665 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF, align 32, !tbaa !12
  %extract844 = shufflevector <4 x i64> %665, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract844, ptr %vprod19x89ABCDEF, align 16, !tbaa !12
  %666 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %667 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF, align 32, !tbaa !12
  %call845 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %667)
  %call846 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call845)
  %call847 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %666, <4 x i64> noundef %call846)
  store <4 x i64> %call847, ptr %vacc01234567, align 32, !tbaa !12
  %668 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %669 = load <2 x i64>, ptr %vprod19x89ABCDEF, align 16, !tbaa !12
  %call848 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %669)
  %call849 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %668, <4 x i64> noundef %call848)
  store <4 x i64> %call849, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod19xGHIJKLMNOPQRSTUV) #6
  %670 = load <4 x i64>, ptr %vi19xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %671 = load <4 x i64>, ptr %vk19xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call850 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %670, <4 x i64> noundef %671)
  store <4 x i64> %call850, ptr %vprod19xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod19xOPQRSTUV) #6
  %672 = load <4 x i64>, ptr %vprod19xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract851 = shufflevector <4 x i64> %672, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract851, ptr %vprod19xOPQRSTUV, align 16, !tbaa !12
  %673 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %674 = load <4 x i64>, ptr %vprod19xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call852 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %674)
  %call853 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call852)
  %call854 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %673, <4 x i64> noundef %call853)
  store <4 x i64> %call854, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %675 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %676 = load <2 x i64>, ptr %vprod19xOPQRSTUV, align 16, !tbaa !12
  %call855 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %676)
  %call856 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %675, <4 x i64> noundef %call855)
  store <4 x i64> %call856, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x0123456789ABCDEF) #6
  %677 = load ptr, ptr %i20, align 8, !tbaa !9
  %call857 = call <2 x i64> @_mm_loadu_si128(ptr noundef %677)
  %call858 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call857)
  store <4 x i64> %call858, ptr %vi20x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x0123456789ABCDEF) #6
  %678 = load ptr, ptr %w, align 8, !tbaa !9
  %679 = ptrtoint ptr %678 to i64
  %add859 = add i64 %679, 128
  %add860 = add i64 %add859, 640
  %680 = inttoptr i64 %add860 to ptr
  %call861 = call <2 x i64> @_mm_loadu_si128(ptr noundef %680)
  %call862 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call861)
  store <4 x i64> %call862, ptr %vk20x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20xGHIJKLMNOPQRSTUV) #6
  %681 = load ptr, ptr %i20, align 8, !tbaa !9
  %add.ptr863 = getelementptr inbounds i8, ptr %681, i64 16
  %call864 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr863)
  %call865 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call864)
  store <4 x i64> %call865, ptr %vi20xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20xGHIJKLMNOPQRSTUV) #6
  %682 = load ptr, ptr %w, align 8, !tbaa !9
  %683 = ptrtoint ptr %682 to i64
  %add866 = add i64 %683, 128
  %add867 = add i64 %add866, 656
  %684 = inttoptr i64 %add867 to ptr
  %call868 = call <2 x i64> @_mm_loadu_si128(ptr noundef %684)
  %call869 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call868)
  store <4 x i64> %call869, ptr %vk20xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %685 = load ptr, ptr %i20, align 8, !tbaa !9
  %add.ptr870 = getelementptr inbounds i8, ptr %685, i64 32
  store ptr %add.ptr870, ptr %i20, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod20x0123456789ABCDEF) #6
  %686 = load <4 x i64>, ptr %vi20x0123456789ABCDEF, align 32, !tbaa !12
  %687 = load <4 x i64>, ptr %vk20x0123456789ABCDEF, align 32, !tbaa !12
  %call871 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %686, <4 x i64> noundef %687)
  store <4 x i64> %call871, ptr %vprod20x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod20x89ABCDEF) #6
  %688 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF, align 32, !tbaa !12
  %extract872 = shufflevector <4 x i64> %688, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract872, ptr %vprod20x89ABCDEF, align 16, !tbaa !12
  %689 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %690 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF, align 32, !tbaa !12
  %call873 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %690)
  %call874 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call873)
  %call875 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %689, <4 x i64> noundef %call874)
  store <4 x i64> %call875, ptr %vacc01234567, align 32, !tbaa !12
  %691 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %692 = load <2 x i64>, ptr %vprod20x89ABCDEF, align 16, !tbaa !12
  %call876 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %692)
  %call877 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %691, <4 x i64> noundef %call876)
  store <4 x i64> %call877, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod20xGHIJKLMNOPQRSTUV) #6
  %693 = load <4 x i64>, ptr %vi20xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %694 = load <4 x i64>, ptr %vk20xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call878 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %693, <4 x i64> noundef %694)
  store <4 x i64> %call878, ptr %vprod20xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod20xOPQRSTUV) #6
  %695 = load <4 x i64>, ptr %vprod20xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract879 = shufflevector <4 x i64> %695, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract879, ptr %vprod20xOPQRSTUV, align 16, !tbaa !12
  %696 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %697 = load <4 x i64>, ptr %vprod20xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call880 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %697)
  %call881 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call880)
  %call882 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %696, <4 x i64> noundef %call881)
  store <4 x i64> %call882, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %698 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %699 = load <2 x i64>, ptr %vprod20xOPQRSTUV, align 16, !tbaa !12
  %call883 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %699)
  %call884 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %698, <4 x i64> noundef %call883)
  store <4 x i64> %call884, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x0123456789ABCDEF) #6
  %700 = load ptr, ptr %i21, align 8, !tbaa !9
  %call885 = call <2 x i64> @_mm_loadu_si128(ptr noundef %700)
  %call886 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call885)
  store <4 x i64> %call886, ptr %vi21x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x0123456789ABCDEF) #6
  %701 = load ptr, ptr %w, align 8, !tbaa !9
  %702 = ptrtoint ptr %701 to i64
  %add887 = add i64 %702, 128
  %add888 = add i64 %add887, 672
  %703 = inttoptr i64 %add888 to ptr
  %call889 = call <2 x i64> @_mm_loadu_si128(ptr noundef %703)
  %call890 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call889)
  store <4 x i64> %call890, ptr %vk21x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21xGHIJKLMNOPQRSTUV) #6
  %704 = load ptr, ptr %i21, align 8, !tbaa !9
  %add.ptr891 = getelementptr inbounds i8, ptr %704, i64 16
  %call892 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr891)
  %call893 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call892)
  store <4 x i64> %call893, ptr %vi21xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21xGHIJKLMNOPQRSTUV) #6
  %705 = load ptr, ptr %w, align 8, !tbaa !9
  %706 = ptrtoint ptr %705 to i64
  %add894 = add i64 %706, 128
  %add895 = add i64 %add894, 688
  %707 = inttoptr i64 %add895 to ptr
  %call896 = call <2 x i64> @_mm_loadu_si128(ptr noundef %707)
  %call897 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call896)
  store <4 x i64> %call897, ptr %vk21xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %708 = load ptr, ptr %i21, align 8, !tbaa !9
  %add.ptr898 = getelementptr inbounds i8, ptr %708, i64 32
  store ptr %add.ptr898, ptr %i21, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod21x0123456789ABCDEF) #6
  %709 = load <4 x i64>, ptr %vi21x0123456789ABCDEF, align 32, !tbaa !12
  %710 = load <4 x i64>, ptr %vk21x0123456789ABCDEF, align 32, !tbaa !12
  %call899 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %709, <4 x i64> noundef %710)
  store <4 x i64> %call899, ptr %vprod21x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod21x89ABCDEF) #6
  %711 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF, align 32, !tbaa !12
  %extract900 = shufflevector <4 x i64> %711, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract900, ptr %vprod21x89ABCDEF, align 16, !tbaa !12
  %712 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %713 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF, align 32, !tbaa !12
  %call901 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %713)
  %call902 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call901)
  %call903 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %712, <4 x i64> noundef %call902)
  store <4 x i64> %call903, ptr %vacc01234567, align 32, !tbaa !12
  %714 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %715 = load <2 x i64>, ptr %vprod21x89ABCDEF, align 16, !tbaa !12
  %call904 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %715)
  %call905 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %714, <4 x i64> noundef %call904)
  store <4 x i64> %call905, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod21xGHIJKLMNOPQRSTUV) #6
  %716 = load <4 x i64>, ptr %vi21xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %717 = load <4 x i64>, ptr %vk21xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call906 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %716, <4 x i64> noundef %717)
  store <4 x i64> %call906, ptr %vprod21xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod21xOPQRSTUV) #6
  %718 = load <4 x i64>, ptr %vprod21xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract907 = shufflevector <4 x i64> %718, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract907, ptr %vprod21xOPQRSTUV, align 16, !tbaa !12
  %719 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %720 = load <4 x i64>, ptr %vprod21xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call908 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %720)
  %call909 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call908)
  %call910 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %719, <4 x i64> noundef %call909)
  store <4 x i64> %call910, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %721 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %722 = load <2 x i64>, ptr %vprod21xOPQRSTUV, align 16, !tbaa !12
  %call911 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %722)
  %call912 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %721, <4 x i64> noundef %call911)
  store <4 x i64> %call912, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x0123456789ABCDEF) #6
  %723 = load ptr, ptr %i22, align 8, !tbaa !9
  %call913 = call <2 x i64> @_mm_loadu_si128(ptr noundef %723)
  %call914 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call913)
  store <4 x i64> %call914, ptr %vi22x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x0123456789ABCDEF) #6
  %724 = load ptr, ptr %w, align 8, !tbaa !9
  %725 = ptrtoint ptr %724 to i64
  %add915 = add i64 %725, 128
  %add916 = add i64 %add915, 704
  %726 = inttoptr i64 %add916 to ptr
  %call917 = call <2 x i64> @_mm_loadu_si128(ptr noundef %726)
  %call918 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call917)
  store <4 x i64> %call918, ptr %vk22x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22xGHIJKLMNOPQRSTUV) #6
  %727 = load ptr, ptr %i22, align 8, !tbaa !9
  %add.ptr919 = getelementptr inbounds i8, ptr %727, i64 16
  %call920 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr919)
  %call921 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call920)
  store <4 x i64> %call921, ptr %vi22xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22xGHIJKLMNOPQRSTUV) #6
  %728 = load ptr, ptr %w, align 8, !tbaa !9
  %729 = ptrtoint ptr %728 to i64
  %add922 = add i64 %729, 128
  %add923 = add i64 %add922, 720
  %730 = inttoptr i64 %add923 to ptr
  %call924 = call <2 x i64> @_mm_loadu_si128(ptr noundef %730)
  %call925 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call924)
  store <4 x i64> %call925, ptr %vk22xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %731 = load ptr, ptr %i22, align 8, !tbaa !9
  %add.ptr926 = getelementptr inbounds i8, ptr %731, i64 32
  store ptr %add.ptr926, ptr %i22, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod22x0123456789ABCDEF) #6
  %732 = load <4 x i64>, ptr %vi22x0123456789ABCDEF, align 32, !tbaa !12
  %733 = load <4 x i64>, ptr %vk22x0123456789ABCDEF, align 32, !tbaa !12
  %call927 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %732, <4 x i64> noundef %733)
  store <4 x i64> %call927, ptr %vprod22x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod22x89ABCDEF) #6
  %734 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF, align 32, !tbaa !12
  %extract928 = shufflevector <4 x i64> %734, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract928, ptr %vprod22x89ABCDEF, align 16, !tbaa !12
  %735 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %736 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF, align 32, !tbaa !12
  %call929 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %736)
  %call930 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call929)
  %call931 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %735, <4 x i64> noundef %call930)
  store <4 x i64> %call931, ptr %vacc01234567, align 32, !tbaa !12
  %737 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %738 = load <2 x i64>, ptr %vprod22x89ABCDEF, align 16, !tbaa !12
  %call932 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %738)
  %call933 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %737, <4 x i64> noundef %call932)
  store <4 x i64> %call933, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod22xGHIJKLMNOPQRSTUV) #6
  %739 = load <4 x i64>, ptr %vi22xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %740 = load <4 x i64>, ptr %vk22xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call934 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %739, <4 x i64> noundef %740)
  store <4 x i64> %call934, ptr %vprod22xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod22xOPQRSTUV) #6
  %741 = load <4 x i64>, ptr %vprod22xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract935 = shufflevector <4 x i64> %741, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract935, ptr %vprod22xOPQRSTUV, align 16, !tbaa !12
  %742 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %743 = load <4 x i64>, ptr %vprod22xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call936 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %743)
  %call937 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call936)
  %call938 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %742, <4 x i64> noundef %call937)
  store <4 x i64> %call938, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %744 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %745 = load <2 x i64>, ptr %vprod22xOPQRSTUV, align 16, !tbaa !12
  %call939 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %745)
  %call940 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %744, <4 x i64> noundef %call939)
  store <4 x i64> %call940, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x0123456789ABCDEF) #6
  %746 = load ptr, ptr %i23, align 8, !tbaa !9
  %call941 = call <2 x i64> @_mm_loadu_si128(ptr noundef %746)
  %call942 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call941)
  store <4 x i64> %call942, ptr %vi23x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x0123456789ABCDEF) #6
  %747 = load ptr, ptr %w, align 8, !tbaa !9
  %748 = ptrtoint ptr %747 to i64
  %add943 = add i64 %748, 128
  %add944 = add i64 %add943, 736
  %749 = inttoptr i64 %add944 to ptr
  %call945 = call <2 x i64> @_mm_loadu_si128(ptr noundef %749)
  %call946 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call945)
  store <4 x i64> %call946, ptr %vk23x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23xGHIJKLMNOPQRSTUV) #6
  %750 = load ptr, ptr %i23, align 8, !tbaa !9
  %add.ptr947 = getelementptr inbounds i8, ptr %750, i64 16
  %call948 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr947)
  %call949 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call948)
  store <4 x i64> %call949, ptr %vi23xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23xGHIJKLMNOPQRSTUV) #6
  %751 = load ptr, ptr %w, align 8, !tbaa !9
  %752 = ptrtoint ptr %751 to i64
  %add950 = add i64 %752, 128
  %add951 = add i64 %add950, 752
  %753 = inttoptr i64 %add951 to ptr
  %call952 = call <2 x i64> @_mm_loadu_si128(ptr noundef %753)
  %call953 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call952)
  store <4 x i64> %call953, ptr %vk23xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %754 = load ptr, ptr %i23, align 8, !tbaa !9
  %add.ptr954 = getelementptr inbounds i8, ptr %754, i64 32
  store ptr %add.ptr954, ptr %i23, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod23x0123456789ABCDEF) #6
  %755 = load <4 x i64>, ptr %vi23x0123456789ABCDEF, align 32, !tbaa !12
  %756 = load <4 x i64>, ptr %vk23x0123456789ABCDEF, align 32, !tbaa !12
  %call955 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %755, <4 x i64> noundef %756)
  store <4 x i64> %call955, ptr %vprod23x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod23x89ABCDEF) #6
  %757 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF, align 32, !tbaa !12
  %extract956 = shufflevector <4 x i64> %757, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract956, ptr %vprod23x89ABCDEF, align 16, !tbaa !12
  %758 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %759 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF, align 32, !tbaa !12
  %call957 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %759)
  %call958 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call957)
  %call959 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %758, <4 x i64> noundef %call958)
  store <4 x i64> %call959, ptr %vacc01234567, align 32, !tbaa !12
  %760 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %761 = load <2 x i64>, ptr %vprod23x89ABCDEF, align 16, !tbaa !12
  %call960 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %761)
  %call961 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %760, <4 x i64> noundef %call960)
  store <4 x i64> %call961, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod23xGHIJKLMNOPQRSTUV) #6
  %762 = load <4 x i64>, ptr %vi23xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %763 = load <4 x i64>, ptr %vk23xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call962 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %762, <4 x i64> noundef %763)
  store <4 x i64> %call962, ptr %vprod23xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod23xOPQRSTUV) #6
  %764 = load <4 x i64>, ptr %vprod23xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract963 = shufflevector <4 x i64> %764, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract963, ptr %vprod23xOPQRSTUV, align 16, !tbaa !12
  %765 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %766 = load <4 x i64>, ptr %vprod23xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call964 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %766)
  %call965 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call964)
  %call966 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %765, <4 x i64> noundef %call965)
  store <4 x i64> %call966, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %767 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %768 = load <2 x i64>, ptr %vprod23xOPQRSTUV, align 16, !tbaa !12
  %call967 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %768)
  %call968 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %767, <4 x i64> noundef %call967)
  store <4 x i64> %call968, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x0123456789ABCDEF) #6
  %769 = load ptr, ptr %i24, align 8, !tbaa !9
  %call969 = call <2 x i64> @_mm_loadu_si128(ptr noundef %769)
  %call970 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call969)
  store <4 x i64> %call970, ptr %vi24x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x0123456789ABCDEF) #6
  %770 = load ptr, ptr %w, align 8, !tbaa !9
  %771 = ptrtoint ptr %770 to i64
  %add971 = add i64 %771, 128
  %add972 = add i64 %add971, 768
  %772 = inttoptr i64 %add972 to ptr
  %call973 = call <2 x i64> @_mm_loadu_si128(ptr noundef %772)
  %call974 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call973)
  store <4 x i64> %call974, ptr %vk24x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24xGHIJKLMNOPQRSTUV) #6
  %773 = load ptr, ptr %i24, align 8, !tbaa !9
  %add.ptr975 = getelementptr inbounds i8, ptr %773, i64 16
  %call976 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr975)
  %call977 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call976)
  store <4 x i64> %call977, ptr %vi24xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24xGHIJKLMNOPQRSTUV) #6
  %774 = load ptr, ptr %w, align 8, !tbaa !9
  %775 = ptrtoint ptr %774 to i64
  %add978 = add i64 %775, 128
  %add979 = add i64 %add978, 784
  %776 = inttoptr i64 %add979 to ptr
  %call980 = call <2 x i64> @_mm_loadu_si128(ptr noundef %776)
  %call981 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call980)
  store <4 x i64> %call981, ptr %vk24xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %777 = load ptr, ptr %i24, align 8, !tbaa !9
  %add.ptr982 = getelementptr inbounds i8, ptr %777, i64 32
  store ptr %add.ptr982, ptr %i24, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod24x0123456789ABCDEF) #6
  %778 = load <4 x i64>, ptr %vi24x0123456789ABCDEF, align 32, !tbaa !12
  %779 = load <4 x i64>, ptr %vk24x0123456789ABCDEF, align 32, !tbaa !12
  %call983 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %778, <4 x i64> noundef %779)
  store <4 x i64> %call983, ptr %vprod24x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod24x89ABCDEF) #6
  %780 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF, align 32, !tbaa !12
  %extract984 = shufflevector <4 x i64> %780, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract984, ptr %vprod24x89ABCDEF, align 16, !tbaa !12
  %781 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %782 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF, align 32, !tbaa !12
  %call985 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %782)
  %call986 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call985)
  %call987 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %781, <4 x i64> noundef %call986)
  store <4 x i64> %call987, ptr %vacc01234567, align 32, !tbaa !12
  %783 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %784 = load <2 x i64>, ptr %vprod24x89ABCDEF, align 16, !tbaa !12
  %call988 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %784)
  %call989 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %783, <4 x i64> noundef %call988)
  store <4 x i64> %call989, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod24xGHIJKLMNOPQRSTUV) #6
  %785 = load <4 x i64>, ptr %vi24xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %786 = load <4 x i64>, ptr %vk24xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call990 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %785, <4 x i64> noundef %786)
  store <4 x i64> %call990, ptr %vprod24xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod24xOPQRSTUV) #6
  %787 = load <4 x i64>, ptr %vprod24xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %extract991 = shufflevector <4 x i64> %787, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract991, ptr %vprod24xOPQRSTUV, align 16, !tbaa !12
  %788 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %789 = load <4 x i64>, ptr %vprod24xGHIJKLMNOPQRSTUV, align 32, !tbaa !12
  %call992 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %789)
  %call993 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call992)
  %call994 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %788, <4 x i64> noundef %call993)
  store <4 x i64> %call994, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %790 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %791 = load <2 x i64>, ptr %vprod24xOPQRSTUV, align 16, !tbaa !12
  %call995 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %791)
  %call996 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %790, <4 x i64> noundef %call995)
  store <4 x i64> %call996, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %792 = load ptr, ptr %w, align 8, !tbaa !9
  %793 = ptrtoint ptr %792 to i64
  %add997 = add i64 %793, 128
  %add998 = add i64 %add997, 800
  %794 = inttoptr i64 %add998 to ptr
  store ptr %794, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc01234567) #6
  %795 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %call999 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %795)
  store <8 x float> %call999, ptr %vfpacc01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc89ABCDEF) #6
  %796 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %call1000 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %796)
  store <8 x float> %call1000, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpaccGHIJKLMN) #6
  %797 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %call1001 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %797)
  store <8 x float> %call1001, ptr %vfpaccGHIJKLMN, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpaccOPQRSTUV) #6
  %798 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %call1002 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %798)
  store <8 x float> %call1002, ptr %vfpaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale01234567) #6
  %799 = load ptr, ptr %w, align 8, !tbaa !9
  %call1003 = call <8 x float> @_mm256_loadu_ps(ptr noundef %799)
  store <8 x float> %call1003, ptr %vscale01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale89ABCDEF) #6
  %800 = load ptr, ptr %w, align 8, !tbaa !9
  %801 = ptrtoint ptr %800 to i64
  %add1004 = add i64 %801, 32
  %802 = inttoptr i64 %add1004 to ptr
  %call1005 = call <8 x float> @_mm256_loadu_ps(ptr noundef %802)
  store <8 x float> %call1005, ptr %vscale89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscaleGHIJKLMN) #6
  %803 = load ptr, ptr %w, align 8, !tbaa !9
  %804 = ptrtoint ptr %803 to i64
  %add1006 = add i64 %804, 64
  %805 = inttoptr i64 %add1006 to ptr
  %call1007 = call <8 x float> @_mm256_loadu_ps(ptr noundef %805)
  store <8 x float> %call1007, ptr %vscaleGHIJKLMN, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscaleOPQRSTUV) #6
  %806 = load ptr, ptr %w, align 8, !tbaa !9
  %807 = ptrtoint ptr %806 to i64
  %add1008 = add i64 %807, 96
  %808 = inttoptr i64 %add1008 to ptr
  %call1009 = call <8 x float> @_mm256_loadu_ps(ptr noundef %808)
  store <8 x float> %call1009, ptr %vscaleOPQRSTUV, align 32, !tbaa !12
  %809 = load ptr, ptr %w, align 8, !tbaa !9
  %810 = ptrtoint ptr %809 to i64
  %add1010 = add i64 %810, 128
  %811 = inttoptr i64 %add1010 to ptr
  store ptr %811, ptr %w, align 8, !tbaa !9
  %812 = load <8 x float>, ptr %vfpacc01234567, align 32, !tbaa !12
  %813 = load <8 x float>, ptr %vscale01234567, align 32, !tbaa !12
  %call1011 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %812, <8 x float> noundef %813)
  store <8 x float> %call1011, ptr %vfpacc01234567, align 32, !tbaa !12
  %814 = load <8 x float>, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %815 = load <8 x float>, ptr %vscale89ABCDEF, align 32, !tbaa !12
  %call1012 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %814, <8 x float> noundef %815)
  store <8 x float> %call1012, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %816 = load <8 x float>, ptr %vfpaccGHIJKLMN, align 32, !tbaa !12
  %817 = load <8 x float>, ptr %vscaleGHIJKLMN, align 32, !tbaa !12
  %call1013 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %816, <8 x float> noundef %817)
  store <8 x float> %call1013, ptr %vfpaccGHIJKLMN, align 32, !tbaa !12
  %818 = load <8 x float>, ptr %vfpaccOPQRSTUV, align 32, !tbaa !12
  %819 = load <8 x float>, ptr %vscaleOPQRSTUV, align 32, !tbaa !12
  %call1014 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %818, <8 x float> noundef %819)
  store <8 x float> %call1014, ptr %vfpaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_max_less_zero_point) #6
  %820 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.4, ptr %820, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call1015 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call1015, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %821 = load <8 x float>, ptr %vfpacc01234567, align 32, !tbaa !12
  %822 = load <8 x float>, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %call1016 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %821, <8 x float> noundef %822)
  store <8 x float> %call1016, ptr %vfpacc01234567, align 32, !tbaa !12
  %823 = load <8 x float>, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %824 = load <8 x float>, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %call1017 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %823, <8 x float> noundef %824)
  store <8 x float> %call1017, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %825 = load <8 x float>, ptr %vfpaccGHIJKLMN, align 32, !tbaa !12
  %826 = load <8 x float>, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %call1018 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %825, <8 x float> noundef %826)
  store <8 x float> %call1018, ptr %vfpaccGHIJKLMN, align 32, !tbaa !12
  %827 = load <8 x float>, ptr %vfpaccOPQRSTUV, align 32, !tbaa !12
  %828 = load <8 x float>, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %call1019 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %827, <8 x float> noundef %828)
  store <8 x float> %call1019, ptr %vfpaccOPQRSTUV, align 32, !tbaa !12
  %829 = load <8 x float>, ptr %vfpacc01234567, align 32, !tbaa !12
  %call1020 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %829)
  store <4 x i64> %call1020, ptr %vacc01234567, align 32, !tbaa !12
  %830 = load <8 x float>, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %call1021 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %830)
  store <4 x i64> %call1021, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %831 = load <8 x float>, ptr %vfpaccGHIJKLMN, align 32, !tbaa !12
  %call1022 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %831)
  store <4 x i64> %call1022, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %832 = load <8 x float>, ptr %vfpaccOPQRSTUV, align 32, !tbaa !12
  %call1023 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %832)
  store <4 x i64> %call1023, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_zero_point) #6
  %833 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.4, ptr %833, i32 0, i32 1
  %arraydecay1024 = getelementptr inbounds [16 x i16], ptr %output_zero_point, i64 0, i64 0
  %call1025 = call <4 x i64> @_mm256_load_si256(ptr noundef %arraydecay1024)
  store <4 x i64> %call1025, ptr %voutput_zero_point, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout012389AB4567CDEF) #6
  %834 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %835 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %call1026 = call <4 x i64> @_mm256_packs_epi32(<4 x i64> noundef %834, <4 x i64> noundef %835)
  %836 = load <4 x i64>, ptr %voutput_zero_point, align 32, !tbaa !12
  %call1027 = call <4 x i64> @_mm256_adds_epi16(<4 x i64> noundef %call1026, <4 x i64> noundef %836)
  store <4 x i64> %call1027, ptr %vout012389AB4567CDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutGHIJOPQRKLMNSTUV) #6
  %837 = load <4 x i64>, ptr %vaccGHIJKLMN, align 32, !tbaa !12
  %838 = load <4 x i64>, ptr %vaccOPQRSTUV, align 32, !tbaa !12
  %call1028 = call <4 x i64> @_mm256_packs_epi32(<4 x i64> noundef %837, <4 x i64> noundef %838)
  %839 = load <4 x i64>, ptr %voutput_zero_point, align 32, !tbaa !12
  %call1029 = call <4 x i64> @_mm256_adds_epi16(<4 x i64> noundef %call1028, <4 x i64> noundef %839)
  store <4 x i64> %call1029, ptr %voutGHIJOPQRKLMNSTUV, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456789ABCDEF) #6
  %840 = load <4 x i64>, ptr %vout012389AB4567CDEF, align 32, !tbaa !12
  %call1030 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %840)
  %841 = load <4 x i64>, ptr %vout012389AB4567CDEF, align 32, !tbaa !12
  %extract1031 = shufflevector <4 x i64> %841, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call1032 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %call1030, <2 x i64> noundef %extract1031)
  %842 = bitcast <2 x i64> %call1032 to <4 x i32>
  %permil = shufflevector <4 x i32> %842, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %843 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %843, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutGHIJKLMNOPQRSTUV) #6
  %844 = load <4 x i64>, ptr %voutGHIJOPQRKLMNSTUV, align 32, !tbaa !12
  %call1033 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %844)
  %845 = load <4 x i64>, ptr %voutGHIJOPQRKLMNSTUV, align 32, !tbaa !12
  %extract1034 = shufflevector <4 x i64> %845, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call1035 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %call1033, <2 x i64> noundef %extract1034)
  %846 = bitcast <2 x i64> %call1035 to <4 x i32>
  %permil1036 = shufflevector <4 x i32> %846, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %847 = bitcast <4 x i32> %permil1036 to <2 x i64>
  store <2 x i64> %847, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %848 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.4, ptr %848, i32 0, i32 2
  %arraydecay1037 = getelementptr inbounds [32 x i8], ptr %output_min, i64 0, i64 0
  %call1038 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay1037)
  store <2 x i64> %call1038, ptr %voutput_min, align 16, !tbaa !12
  %849 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  %850 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call1039 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %849, <2 x i64> noundef %850)
  store <2 x i64> %call1039, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  %851 = load <2 x i64>, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !12
  %852 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call1040 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %851, <2 x i64> noundef %852)
  store <2 x i64> %call1040, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !12
  %853 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %854 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %853, <2 x i64> noundef %854)
  %855 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1041 = getelementptr inbounds i8, ptr %855, i64 16
  %856 = load <2 x i64>, ptr %voutGHIJKLMNOPQRSTUV, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %add.ptr1041, <2 x i64> noundef %856)
  %857 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1042 = getelementptr inbounds i8, ptr %857, i64 32
  store ptr %add.ptr1042, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutGHIJOPQRKLMNSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout012389AB4567CDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscaleOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscaleGHIJKLMN) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpaccOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpaccGHIJKLMN) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod24xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod24xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod24x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod24x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod23xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod23xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod23x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod23x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod22xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod22xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod22x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod22x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod21xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod21xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod21x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod21x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod20xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod20xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod20x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod20x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod19xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod19xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod19x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod19x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod18xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod18xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod18x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod18x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod17xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod17xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod17x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod17x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod16xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod16xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod16x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod16x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod15xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod15xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod15x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod15x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod14xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod14xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod14x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod14x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod13xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod13xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod13x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod13x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod12xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod12xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod12x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod12x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod11xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod11xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod11x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod11x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod10xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod10xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod10x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod10x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod9xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod9xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod9x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod9x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod8xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod8x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod7xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod7x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod6xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod6x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod5xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod5x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod4xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod4x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod3xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod3x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod2xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod2x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod1xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod1x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0xOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod0xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod0x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0xGHIJKLMNOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccOPQRSTUV) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vaccGHIJKLMN) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %858 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %858, 32
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %859 = load i64, ptr %c, align 8, !tbaa !5
  %cmp1043 = icmp ne i64 %859, 0
  %lnot1045 = xor i1 %cmp1043, true
  %lnot1047 = xor i1 %lnot1045, true
  %lnot.ext1048 = zext i1 %lnot1047 to i32
  %conv1049 = sext i32 %lnot.ext1048 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv1049, i64 0)
  %tobool1050 = icmp ne i64 %expval, 0
  br i1 %tobool1050, label %if.then1051, label %if.end1569

if.then1051:                                      ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #6
  %860 = load ptr, ptr %w, align 8, !tbaa !9
  %861 = ptrtoint ptr %860 to i64
  %add1052 = add i64 %861, 128
  %862 = inttoptr i64 %add1052 to ptr
  store ptr %862, ptr %k, align 8, !tbaa !9
  br label %do.body1053

do.body1053:                                      ; preds = %do.cond, %if.then1051
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc012345671054) #6
  %863 = load ptr, ptr %w, align 8, !tbaa !9
  %call1055 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %863)
  store <4 x i64> %call1055, ptr %vacc012345671054, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc89ABCDEF1056) #6
  %864 = load ptr, ptr %w, align 8, !tbaa !9
  %865 = ptrtoint ptr %864 to i64
  %add1057 = add i64 %865, 32
  %866 = inttoptr i64 %add1057 to ptr
  %call1058 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %866)
  store <4 x i64> %call1058, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x0123456789ABCDEF1059) #6
  %867 = load ptr, ptr %i0, align 8, !tbaa !9
  %call1060 = call <2 x i64> @_mm_loadu_si128(ptr noundef %867)
  %call1061 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1060)
  store <4 x i64> %call1061, ptr %vi0x0123456789ABCDEF1059, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x0123456789ABCDEF1062) #6
  %868 = load ptr, ptr %k, align 8, !tbaa !9
  %call1063 = call <2 x i64> @_mm_loadu_si128(ptr noundef %868)
  %call1064 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1063)
  store <4 x i64> %call1064, ptr %vk0x0123456789ABCDEF1062, align 32, !tbaa !12
  %869 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr1065 = getelementptr inbounds i8, ptr %869, i64 16
  store ptr %add.ptr1065, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod0x0123456789ABCDEF1066) #6
  %870 = load <4 x i64>, ptr %vi0x0123456789ABCDEF1059, align 32, !tbaa !12
  %871 = load <4 x i64>, ptr %vk0x0123456789ABCDEF1062, align 32, !tbaa !12
  %call1067 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %870, <4 x i64> noundef %871)
  store <4 x i64> %call1067, ptr %vprod0x0123456789ABCDEF1066, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x89ABCDEF1068) #6
  %872 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF1066, align 32, !tbaa !12
  %extract1069 = shufflevector <4 x i64> %872, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1069, ptr %vprod0x89ABCDEF1068, align 16, !tbaa !12
  %873 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %874 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF1066, align 32, !tbaa !12
  %call1070 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %874)
  %call1071 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1070)
  %call1072 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %873, <4 x i64> noundef %call1071)
  store <4 x i64> %call1072, ptr %vacc012345671054, align 32, !tbaa !12
  %875 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %876 = load <2 x i64>, ptr %vprod0x89ABCDEF1068, align 16, !tbaa !12
  %call1073 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %876)
  %call1074 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %875, <4 x i64> noundef %call1073)
  store <4 x i64> %call1074, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x0123456789ABCDEF1075) #6
  %877 = load ptr, ptr %i1, align 8, !tbaa !9
  %call1076 = call <2 x i64> @_mm_loadu_si128(ptr noundef %877)
  %call1077 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1076)
  store <4 x i64> %call1077, ptr %vi1x0123456789ABCDEF1075, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x0123456789ABCDEF1078) #6
  %878 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1079 = getelementptr inbounds i8, ptr %878, i64 32
  %call1080 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1079)
  %call1081 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1080)
  store <4 x i64> %call1081, ptr %vk1x0123456789ABCDEF1078, align 32, !tbaa !12
  %879 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr1082 = getelementptr inbounds i8, ptr %879, i64 16
  store ptr %add.ptr1082, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod1x0123456789ABCDEF1083) #6
  %880 = load <4 x i64>, ptr %vi1x0123456789ABCDEF1075, align 32, !tbaa !12
  %881 = load <4 x i64>, ptr %vk1x0123456789ABCDEF1078, align 32, !tbaa !12
  %call1084 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %880, <4 x i64> noundef %881)
  store <4 x i64> %call1084, ptr %vprod1x0123456789ABCDEF1083, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x89ABCDEF1085) #6
  %882 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF1083, align 32, !tbaa !12
  %extract1086 = shufflevector <4 x i64> %882, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1086, ptr %vprod1x89ABCDEF1085, align 16, !tbaa !12
  %883 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %884 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF1083, align 32, !tbaa !12
  %call1087 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %884)
  %call1088 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1087)
  %call1089 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %883, <4 x i64> noundef %call1088)
  store <4 x i64> %call1089, ptr %vacc012345671054, align 32, !tbaa !12
  %885 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %886 = load <2 x i64>, ptr %vprod1x89ABCDEF1085, align 16, !tbaa !12
  %call1090 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %886)
  %call1091 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %885, <4 x i64> noundef %call1090)
  store <4 x i64> %call1091, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x0123456789ABCDEF1092) #6
  %887 = load ptr, ptr %i2, align 8, !tbaa !9
  %call1093 = call <2 x i64> @_mm_loadu_si128(ptr noundef %887)
  %call1094 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1093)
  store <4 x i64> %call1094, ptr %vi2x0123456789ABCDEF1092, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x0123456789ABCDEF1095) #6
  %888 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1096 = getelementptr inbounds i8, ptr %888, i64 64
  %call1097 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1096)
  %call1098 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1097)
  store <4 x i64> %call1098, ptr %vk2x0123456789ABCDEF1095, align 32, !tbaa !12
  %889 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr1099 = getelementptr inbounds i8, ptr %889, i64 16
  store ptr %add.ptr1099, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod2x0123456789ABCDEF1100) #6
  %890 = load <4 x i64>, ptr %vi2x0123456789ABCDEF1092, align 32, !tbaa !12
  %891 = load <4 x i64>, ptr %vk2x0123456789ABCDEF1095, align 32, !tbaa !12
  %call1101 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %890, <4 x i64> noundef %891)
  store <4 x i64> %call1101, ptr %vprod2x0123456789ABCDEF1100, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x89ABCDEF1102) #6
  %892 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF1100, align 32, !tbaa !12
  %extract1103 = shufflevector <4 x i64> %892, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1103, ptr %vprod2x89ABCDEF1102, align 16, !tbaa !12
  %893 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %894 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF1100, align 32, !tbaa !12
  %call1104 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %894)
  %call1105 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1104)
  %call1106 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %893, <4 x i64> noundef %call1105)
  store <4 x i64> %call1106, ptr %vacc012345671054, align 32, !tbaa !12
  %895 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %896 = load <2 x i64>, ptr %vprod2x89ABCDEF1102, align 16, !tbaa !12
  %call1107 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %896)
  %call1108 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %895, <4 x i64> noundef %call1107)
  store <4 x i64> %call1108, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x0123456789ABCDEF1109) #6
  %897 = load ptr, ptr %i3, align 8, !tbaa !9
  %call1110 = call <2 x i64> @_mm_loadu_si128(ptr noundef %897)
  %call1111 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1110)
  store <4 x i64> %call1111, ptr %vi3x0123456789ABCDEF1109, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x0123456789ABCDEF1112) #6
  %898 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1113 = getelementptr inbounds i8, ptr %898, i64 96
  %call1114 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1113)
  %call1115 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1114)
  store <4 x i64> %call1115, ptr %vk3x0123456789ABCDEF1112, align 32, !tbaa !12
  %899 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr1116 = getelementptr inbounds i8, ptr %899, i64 16
  store ptr %add.ptr1116, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod3x0123456789ABCDEF1117) #6
  %900 = load <4 x i64>, ptr %vi3x0123456789ABCDEF1109, align 32, !tbaa !12
  %901 = load <4 x i64>, ptr %vk3x0123456789ABCDEF1112, align 32, !tbaa !12
  %call1118 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %900, <4 x i64> noundef %901)
  store <4 x i64> %call1118, ptr %vprod3x0123456789ABCDEF1117, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x89ABCDEF1119) #6
  %902 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF1117, align 32, !tbaa !12
  %extract1120 = shufflevector <4 x i64> %902, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1120, ptr %vprod3x89ABCDEF1119, align 16, !tbaa !12
  %903 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %904 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF1117, align 32, !tbaa !12
  %call1121 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %904)
  %call1122 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1121)
  %call1123 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %903, <4 x i64> noundef %call1122)
  store <4 x i64> %call1123, ptr %vacc012345671054, align 32, !tbaa !12
  %905 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %906 = load <2 x i64>, ptr %vprod3x89ABCDEF1119, align 16, !tbaa !12
  %call1124 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %906)
  %call1125 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %905, <4 x i64> noundef %call1124)
  store <4 x i64> %call1125, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x0123456789ABCDEF1126) #6
  %907 = load ptr, ptr %i4, align 8, !tbaa !9
  %call1127 = call <2 x i64> @_mm_loadu_si128(ptr noundef %907)
  %call1128 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1127)
  store <4 x i64> %call1128, ptr %vi4x0123456789ABCDEF1126, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x0123456789ABCDEF1129) #6
  %908 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1130 = getelementptr inbounds i8, ptr %908, i64 128
  %call1131 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1130)
  %call1132 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1131)
  store <4 x i64> %call1132, ptr %vk4x0123456789ABCDEF1129, align 32, !tbaa !12
  %909 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr1133 = getelementptr inbounds i8, ptr %909, i64 16
  store ptr %add.ptr1133, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod4x0123456789ABCDEF1134) #6
  %910 = load <4 x i64>, ptr %vi4x0123456789ABCDEF1126, align 32, !tbaa !12
  %911 = load <4 x i64>, ptr %vk4x0123456789ABCDEF1129, align 32, !tbaa !12
  %call1135 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %910, <4 x i64> noundef %911)
  store <4 x i64> %call1135, ptr %vprod4x0123456789ABCDEF1134, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x89ABCDEF1136) #6
  %912 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF1134, align 32, !tbaa !12
  %extract1137 = shufflevector <4 x i64> %912, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1137, ptr %vprod4x89ABCDEF1136, align 16, !tbaa !12
  %913 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %914 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF1134, align 32, !tbaa !12
  %call1138 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %914)
  %call1139 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1138)
  %call1140 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %913, <4 x i64> noundef %call1139)
  store <4 x i64> %call1140, ptr %vacc012345671054, align 32, !tbaa !12
  %915 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %916 = load <2 x i64>, ptr %vprod4x89ABCDEF1136, align 16, !tbaa !12
  %call1141 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %916)
  %call1142 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %915, <4 x i64> noundef %call1141)
  store <4 x i64> %call1142, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x0123456789ABCDEF1143) #6
  %917 = load ptr, ptr %i5, align 8, !tbaa !9
  %call1144 = call <2 x i64> @_mm_loadu_si128(ptr noundef %917)
  %call1145 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1144)
  store <4 x i64> %call1145, ptr %vi5x0123456789ABCDEF1143, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x0123456789ABCDEF1146) #6
  %918 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1147 = getelementptr inbounds i8, ptr %918, i64 160
  %call1148 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1147)
  %call1149 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1148)
  store <4 x i64> %call1149, ptr %vk5x0123456789ABCDEF1146, align 32, !tbaa !12
  %919 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr1150 = getelementptr inbounds i8, ptr %919, i64 16
  store ptr %add.ptr1150, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod5x0123456789ABCDEF1151) #6
  %920 = load <4 x i64>, ptr %vi5x0123456789ABCDEF1143, align 32, !tbaa !12
  %921 = load <4 x i64>, ptr %vk5x0123456789ABCDEF1146, align 32, !tbaa !12
  %call1152 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %920, <4 x i64> noundef %921)
  store <4 x i64> %call1152, ptr %vprod5x0123456789ABCDEF1151, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x89ABCDEF1153) #6
  %922 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF1151, align 32, !tbaa !12
  %extract1154 = shufflevector <4 x i64> %922, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1154, ptr %vprod5x89ABCDEF1153, align 16, !tbaa !12
  %923 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %924 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF1151, align 32, !tbaa !12
  %call1155 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %924)
  %call1156 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1155)
  %call1157 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %923, <4 x i64> noundef %call1156)
  store <4 x i64> %call1157, ptr %vacc012345671054, align 32, !tbaa !12
  %925 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %926 = load <2 x i64>, ptr %vprod5x89ABCDEF1153, align 16, !tbaa !12
  %call1158 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %926)
  %call1159 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %925, <4 x i64> noundef %call1158)
  store <4 x i64> %call1159, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x0123456789ABCDEF1160) #6
  %927 = load ptr, ptr %i6, align 8, !tbaa !9
  %call1161 = call <2 x i64> @_mm_loadu_si128(ptr noundef %927)
  %call1162 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1161)
  store <4 x i64> %call1162, ptr %vi6x0123456789ABCDEF1160, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x0123456789ABCDEF1163) #6
  %928 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1164 = getelementptr inbounds i8, ptr %928, i64 192
  %call1165 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1164)
  %call1166 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1165)
  store <4 x i64> %call1166, ptr %vk6x0123456789ABCDEF1163, align 32, !tbaa !12
  %929 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr1167 = getelementptr inbounds i8, ptr %929, i64 16
  store ptr %add.ptr1167, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod6x0123456789ABCDEF1168) #6
  %930 = load <4 x i64>, ptr %vi6x0123456789ABCDEF1160, align 32, !tbaa !12
  %931 = load <4 x i64>, ptr %vk6x0123456789ABCDEF1163, align 32, !tbaa !12
  %call1169 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %930, <4 x i64> noundef %931)
  store <4 x i64> %call1169, ptr %vprod6x0123456789ABCDEF1168, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x89ABCDEF1170) #6
  %932 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF1168, align 32, !tbaa !12
  %extract1171 = shufflevector <4 x i64> %932, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1171, ptr %vprod6x89ABCDEF1170, align 16, !tbaa !12
  %933 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %934 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF1168, align 32, !tbaa !12
  %call1172 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %934)
  %call1173 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1172)
  %call1174 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %933, <4 x i64> noundef %call1173)
  store <4 x i64> %call1174, ptr %vacc012345671054, align 32, !tbaa !12
  %935 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %936 = load <2 x i64>, ptr %vprod6x89ABCDEF1170, align 16, !tbaa !12
  %call1175 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %936)
  %call1176 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %935, <4 x i64> noundef %call1175)
  store <4 x i64> %call1176, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x0123456789ABCDEF1177) #6
  %937 = load ptr, ptr %i7, align 8, !tbaa !9
  %call1178 = call <2 x i64> @_mm_loadu_si128(ptr noundef %937)
  %call1179 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1178)
  store <4 x i64> %call1179, ptr %vi7x0123456789ABCDEF1177, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x0123456789ABCDEF1180) #6
  %938 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1181 = getelementptr inbounds i8, ptr %938, i64 224
  %call1182 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1181)
  %call1183 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1182)
  store <4 x i64> %call1183, ptr %vk7x0123456789ABCDEF1180, align 32, !tbaa !12
  %939 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr1184 = getelementptr inbounds i8, ptr %939, i64 16
  store ptr %add.ptr1184, ptr %i7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod7x0123456789ABCDEF1185) #6
  %940 = load <4 x i64>, ptr %vi7x0123456789ABCDEF1177, align 32, !tbaa !12
  %941 = load <4 x i64>, ptr %vk7x0123456789ABCDEF1180, align 32, !tbaa !12
  %call1186 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %940, <4 x i64> noundef %941)
  store <4 x i64> %call1186, ptr %vprod7x0123456789ABCDEF1185, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x89ABCDEF1187) #6
  %942 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF1185, align 32, !tbaa !12
  %extract1188 = shufflevector <4 x i64> %942, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1188, ptr %vprod7x89ABCDEF1187, align 16, !tbaa !12
  %943 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %944 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF1185, align 32, !tbaa !12
  %call1189 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %944)
  %call1190 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1189)
  %call1191 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %943, <4 x i64> noundef %call1190)
  store <4 x i64> %call1191, ptr %vacc012345671054, align 32, !tbaa !12
  %945 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %946 = load <2 x i64>, ptr %vprod7x89ABCDEF1187, align 16, !tbaa !12
  %call1192 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %946)
  %call1193 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %945, <4 x i64> noundef %call1192)
  store <4 x i64> %call1193, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x0123456789ABCDEF1194) #6
  %947 = load ptr, ptr %i8, align 8, !tbaa !9
  %call1195 = call <2 x i64> @_mm_loadu_si128(ptr noundef %947)
  %call1196 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1195)
  store <4 x i64> %call1196, ptr %vi8x0123456789ABCDEF1194, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x0123456789ABCDEF1197) #6
  %948 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1198 = getelementptr inbounds i8, ptr %948, i64 256
  %call1199 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1198)
  %call1200 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1199)
  store <4 x i64> %call1200, ptr %vk8x0123456789ABCDEF1197, align 32, !tbaa !12
  %949 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr1201 = getelementptr inbounds i8, ptr %949, i64 16
  store ptr %add.ptr1201, ptr %i8, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod8x0123456789ABCDEF1202) #6
  %950 = load <4 x i64>, ptr %vi8x0123456789ABCDEF1194, align 32, !tbaa !12
  %951 = load <4 x i64>, ptr %vk8x0123456789ABCDEF1197, align 32, !tbaa !12
  %call1203 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %950, <4 x i64> noundef %951)
  store <4 x i64> %call1203, ptr %vprod8x0123456789ABCDEF1202, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x89ABCDEF1204) #6
  %952 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF1202, align 32, !tbaa !12
  %extract1205 = shufflevector <4 x i64> %952, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1205, ptr %vprod8x89ABCDEF1204, align 16, !tbaa !12
  %953 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %954 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF1202, align 32, !tbaa !12
  %call1206 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %954)
  %call1207 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1206)
  %call1208 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %953, <4 x i64> noundef %call1207)
  store <4 x i64> %call1208, ptr %vacc012345671054, align 32, !tbaa !12
  %955 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %956 = load <2 x i64>, ptr %vprod8x89ABCDEF1204, align 16, !tbaa !12
  %call1209 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %956)
  %call1210 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %955, <4 x i64> noundef %call1209)
  store <4 x i64> %call1210, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x0123456789ABCDEF1211) #6
  %957 = load ptr, ptr %i9, align 8, !tbaa !9
  %call1212 = call <2 x i64> @_mm_loadu_si128(ptr noundef %957)
  %call1213 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1212)
  store <4 x i64> %call1213, ptr %vi9x0123456789ABCDEF1211, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x0123456789ABCDEF1214) #6
  %958 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1215 = getelementptr inbounds i8, ptr %958, i64 288
  %call1216 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1215)
  %call1217 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1216)
  store <4 x i64> %call1217, ptr %vk9x0123456789ABCDEF1214, align 32, !tbaa !12
  %959 = load ptr, ptr %i9, align 8, !tbaa !9
  %add.ptr1218 = getelementptr inbounds i8, ptr %959, i64 16
  store ptr %add.ptr1218, ptr %i9, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod9x0123456789ABCDEF1219) #6
  %960 = load <4 x i64>, ptr %vi9x0123456789ABCDEF1211, align 32, !tbaa !12
  %961 = load <4 x i64>, ptr %vk9x0123456789ABCDEF1214, align 32, !tbaa !12
  %call1220 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %960, <4 x i64> noundef %961)
  store <4 x i64> %call1220, ptr %vprod9x0123456789ABCDEF1219, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod9x89ABCDEF1221) #6
  %962 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF1219, align 32, !tbaa !12
  %extract1222 = shufflevector <4 x i64> %962, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1222, ptr %vprod9x89ABCDEF1221, align 16, !tbaa !12
  %963 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %964 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF1219, align 32, !tbaa !12
  %call1223 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %964)
  %call1224 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1223)
  %call1225 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %963, <4 x i64> noundef %call1224)
  store <4 x i64> %call1225, ptr %vacc012345671054, align 32, !tbaa !12
  %965 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %966 = load <2 x i64>, ptr %vprod9x89ABCDEF1221, align 16, !tbaa !12
  %call1226 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %966)
  %call1227 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %965, <4 x i64> noundef %call1226)
  store <4 x i64> %call1227, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x0123456789ABCDEF1228) #6
  %967 = load ptr, ptr %i10, align 8, !tbaa !9
  %call1229 = call <2 x i64> @_mm_loadu_si128(ptr noundef %967)
  %call1230 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1229)
  store <4 x i64> %call1230, ptr %vi10x0123456789ABCDEF1228, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x0123456789ABCDEF1231) #6
  %968 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1232 = getelementptr inbounds i8, ptr %968, i64 320
  %call1233 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1232)
  %call1234 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1233)
  store <4 x i64> %call1234, ptr %vk10x0123456789ABCDEF1231, align 32, !tbaa !12
  %969 = load ptr, ptr %i10, align 8, !tbaa !9
  %add.ptr1235 = getelementptr inbounds i8, ptr %969, i64 16
  store ptr %add.ptr1235, ptr %i10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod10x0123456789ABCDEF1236) #6
  %970 = load <4 x i64>, ptr %vi10x0123456789ABCDEF1228, align 32, !tbaa !12
  %971 = load <4 x i64>, ptr %vk10x0123456789ABCDEF1231, align 32, !tbaa !12
  %call1237 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %970, <4 x i64> noundef %971)
  store <4 x i64> %call1237, ptr %vprod10x0123456789ABCDEF1236, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod10x89ABCDEF1238) #6
  %972 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF1236, align 32, !tbaa !12
  %extract1239 = shufflevector <4 x i64> %972, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1239, ptr %vprod10x89ABCDEF1238, align 16, !tbaa !12
  %973 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %974 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF1236, align 32, !tbaa !12
  %call1240 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %974)
  %call1241 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1240)
  %call1242 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %973, <4 x i64> noundef %call1241)
  store <4 x i64> %call1242, ptr %vacc012345671054, align 32, !tbaa !12
  %975 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %976 = load <2 x i64>, ptr %vprod10x89ABCDEF1238, align 16, !tbaa !12
  %call1243 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %976)
  %call1244 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %975, <4 x i64> noundef %call1243)
  store <4 x i64> %call1244, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x0123456789ABCDEF1245) #6
  %977 = load ptr, ptr %i11, align 8, !tbaa !9
  %call1246 = call <2 x i64> @_mm_loadu_si128(ptr noundef %977)
  %call1247 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1246)
  store <4 x i64> %call1247, ptr %vi11x0123456789ABCDEF1245, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x0123456789ABCDEF1248) #6
  %978 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1249 = getelementptr inbounds i8, ptr %978, i64 352
  %call1250 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1249)
  %call1251 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1250)
  store <4 x i64> %call1251, ptr %vk11x0123456789ABCDEF1248, align 32, !tbaa !12
  %979 = load ptr, ptr %i11, align 8, !tbaa !9
  %add.ptr1252 = getelementptr inbounds i8, ptr %979, i64 16
  store ptr %add.ptr1252, ptr %i11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod11x0123456789ABCDEF1253) #6
  %980 = load <4 x i64>, ptr %vi11x0123456789ABCDEF1245, align 32, !tbaa !12
  %981 = load <4 x i64>, ptr %vk11x0123456789ABCDEF1248, align 32, !tbaa !12
  %call1254 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %980, <4 x i64> noundef %981)
  store <4 x i64> %call1254, ptr %vprod11x0123456789ABCDEF1253, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod11x89ABCDEF1255) #6
  %982 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF1253, align 32, !tbaa !12
  %extract1256 = shufflevector <4 x i64> %982, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1256, ptr %vprod11x89ABCDEF1255, align 16, !tbaa !12
  %983 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %984 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF1253, align 32, !tbaa !12
  %call1257 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %984)
  %call1258 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1257)
  %call1259 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %983, <4 x i64> noundef %call1258)
  store <4 x i64> %call1259, ptr %vacc012345671054, align 32, !tbaa !12
  %985 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %986 = load <2 x i64>, ptr %vprod11x89ABCDEF1255, align 16, !tbaa !12
  %call1260 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %986)
  %call1261 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %985, <4 x i64> noundef %call1260)
  store <4 x i64> %call1261, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x0123456789ABCDEF1262) #6
  %987 = load ptr, ptr %i12, align 8, !tbaa !9
  %call1263 = call <2 x i64> @_mm_loadu_si128(ptr noundef %987)
  %call1264 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1263)
  store <4 x i64> %call1264, ptr %vi12x0123456789ABCDEF1262, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x0123456789ABCDEF1265) #6
  %988 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1266 = getelementptr inbounds i8, ptr %988, i64 384
  %call1267 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1266)
  %call1268 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1267)
  store <4 x i64> %call1268, ptr %vk12x0123456789ABCDEF1265, align 32, !tbaa !12
  %989 = load ptr, ptr %i12, align 8, !tbaa !9
  %add.ptr1269 = getelementptr inbounds i8, ptr %989, i64 16
  store ptr %add.ptr1269, ptr %i12, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod12x0123456789ABCDEF1270) #6
  %990 = load <4 x i64>, ptr %vi12x0123456789ABCDEF1262, align 32, !tbaa !12
  %991 = load <4 x i64>, ptr %vk12x0123456789ABCDEF1265, align 32, !tbaa !12
  %call1271 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %990, <4 x i64> noundef %991)
  store <4 x i64> %call1271, ptr %vprod12x0123456789ABCDEF1270, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod12x89ABCDEF1272) #6
  %992 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF1270, align 32, !tbaa !12
  %extract1273 = shufflevector <4 x i64> %992, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1273, ptr %vprod12x89ABCDEF1272, align 16, !tbaa !12
  %993 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %994 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF1270, align 32, !tbaa !12
  %call1274 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %994)
  %call1275 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1274)
  %call1276 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %993, <4 x i64> noundef %call1275)
  store <4 x i64> %call1276, ptr %vacc012345671054, align 32, !tbaa !12
  %995 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %996 = load <2 x i64>, ptr %vprod12x89ABCDEF1272, align 16, !tbaa !12
  %call1277 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %996)
  %call1278 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %995, <4 x i64> noundef %call1277)
  store <4 x i64> %call1278, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x0123456789ABCDEF1279) #6
  %997 = load ptr, ptr %i13, align 8, !tbaa !9
  %call1280 = call <2 x i64> @_mm_loadu_si128(ptr noundef %997)
  %call1281 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1280)
  store <4 x i64> %call1281, ptr %vi13x0123456789ABCDEF1279, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x0123456789ABCDEF1282) #6
  %998 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1283 = getelementptr inbounds i8, ptr %998, i64 416
  %call1284 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1283)
  %call1285 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1284)
  store <4 x i64> %call1285, ptr %vk13x0123456789ABCDEF1282, align 32, !tbaa !12
  %999 = load ptr, ptr %i13, align 8, !tbaa !9
  %add.ptr1286 = getelementptr inbounds i8, ptr %999, i64 16
  store ptr %add.ptr1286, ptr %i13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod13x0123456789ABCDEF1287) #6
  %1000 = load <4 x i64>, ptr %vi13x0123456789ABCDEF1279, align 32, !tbaa !12
  %1001 = load <4 x i64>, ptr %vk13x0123456789ABCDEF1282, align 32, !tbaa !12
  %call1288 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1000, <4 x i64> noundef %1001)
  store <4 x i64> %call1288, ptr %vprod13x0123456789ABCDEF1287, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod13x89ABCDEF1289) #6
  %1002 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF1287, align 32, !tbaa !12
  %extract1290 = shufflevector <4 x i64> %1002, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1290, ptr %vprod13x89ABCDEF1289, align 16, !tbaa !12
  %1003 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1004 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF1287, align 32, !tbaa !12
  %call1291 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1004)
  %call1292 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1291)
  %call1293 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1003, <4 x i64> noundef %call1292)
  store <4 x i64> %call1293, ptr %vacc012345671054, align 32, !tbaa !12
  %1005 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1006 = load <2 x i64>, ptr %vprod13x89ABCDEF1289, align 16, !tbaa !12
  %call1294 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1006)
  %call1295 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1005, <4 x i64> noundef %call1294)
  store <4 x i64> %call1295, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x0123456789ABCDEF1296) #6
  %1007 = load ptr, ptr %i14, align 8, !tbaa !9
  %call1297 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1007)
  %call1298 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1297)
  store <4 x i64> %call1298, ptr %vi14x0123456789ABCDEF1296, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x0123456789ABCDEF1299) #6
  %1008 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1300 = getelementptr inbounds i8, ptr %1008, i64 448
  %call1301 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1300)
  %call1302 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1301)
  store <4 x i64> %call1302, ptr %vk14x0123456789ABCDEF1299, align 32, !tbaa !12
  %1009 = load ptr, ptr %i14, align 8, !tbaa !9
  %add.ptr1303 = getelementptr inbounds i8, ptr %1009, i64 16
  store ptr %add.ptr1303, ptr %i14, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod14x0123456789ABCDEF1304) #6
  %1010 = load <4 x i64>, ptr %vi14x0123456789ABCDEF1296, align 32, !tbaa !12
  %1011 = load <4 x i64>, ptr %vk14x0123456789ABCDEF1299, align 32, !tbaa !12
  %call1305 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1010, <4 x i64> noundef %1011)
  store <4 x i64> %call1305, ptr %vprod14x0123456789ABCDEF1304, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod14x89ABCDEF1306) #6
  %1012 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF1304, align 32, !tbaa !12
  %extract1307 = shufflevector <4 x i64> %1012, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1307, ptr %vprod14x89ABCDEF1306, align 16, !tbaa !12
  %1013 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1014 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF1304, align 32, !tbaa !12
  %call1308 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1014)
  %call1309 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1308)
  %call1310 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1013, <4 x i64> noundef %call1309)
  store <4 x i64> %call1310, ptr %vacc012345671054, align 32, !tbaa !12
  %1015 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1016 = load <2 x i64>, ptr %vprod14x89ABCDEF1306, align 16, !tbaa !12
  %call1311 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1016)
  %call1312 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1015, <4 x i64> noundef %call1311)
  store <4 x i64> %call1312, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x0123456789ABCDEF1313) #6
  %1017 = load ptr, ptr %i15, align 8, !tbaa !9
  %call1314 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1017)
  %call1315 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1314)
  store <4 x i64> %call1315, ptr %vi15x0123456789ABCDEF1313, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x0123456789ABCDEF1316) #6
  %1018 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1317 = getelementptr inbounds i8, ptr %1018, i64 480
  %call1318 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1317)
  %call1319 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1318)
  store <4 x i64> %call1319, ptr %vk15x0123456789ABCDEF1316, align 32, !tbaa !12
  %1019 = load ptr, ptr %i15, align 8, !tbaa !9
  %add.ptr1320 = getelementptr inbounds i8, ptr %1019, i64 16
  store ptr %add.ptr1320, ptr %i15, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod15x0123456789ABCDEF1321) #6
  %1020 = load <4 x i64>, ptr %vi15x0123456789ABCDEF1313, align 32, !tbaa !12
  %1021 = load <4 x i64>, ptr %vk15x0123456789ABCDEF1316, align 32, !tbaa !12
  %call1322 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1020, <4 x i64> noundef %1021)
  store <4 x i64> %call1322, ptr %vprod15x0123456789ABCDEF1321, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod15x89ABCDEF1323) #6
  %1022 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF1321, align 32, !tbaa !12
  %extract1324 = shufflevector <4 x i64> %1022, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1324, ptr %vprod15x89ABCDEF1323, align 16, !tbaa !12
  %1023 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1024 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF1321, align 32, !tbaa !12
  %call1325 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1024)
  %call1326 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1325)
  %call1327 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1023, <4 x i64> noundef %call1326)
  store <4 x i64> %call1327, ptr %vacc012345671054, align 32, !tbaa !12
  %1025 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1026 = load <2 x i64>, ptr %vprod15x89ABCDEF1323, align 16, !tbaa !12
  %call1328 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1026)
  %call1329 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1025, <4 x i64> noundef %call1328)
  store <4 x i64> %call1329, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x0123456789ABCDEF1330) #6
  %1027 = load ptr, ptr %i16, align 8, !tbaa !9
  %call1331 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1027)
  %call1332 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1331)
  store <4 x i64> %call1332, ptr %vi16x0123456789ABCDEF1330, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x0123456789ABCDEF1333) #6
  %1028 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1334 = getelementptr inbounds i8, ptr %1028, i64 512
  %call1335 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1334)
  %call1336 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1335)
  store <4 x i64> %call1336, ptr %vk16x0123456789ABCDEF1333, align 32, !tbaa !12
  %1029 = load ptr, ptr %i16, align 8, !tbaa !9
  %add.ptr1337 = getelementptr inbounds i8, ptr %1029, i64 16
  store ptr %add.ptr1337, ptr %i16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod16x0123456789ABCDEF1338) #6
  %1030 = load <4 x i64>, ptr %vi16x0123456789ABCDEF1330, align 32, !tbaa !12
  %1031 = load <4 x i64>, ptr %vk16x0123456789ABCDEF1333, align 32, !tbaa !12
  %call1339 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1030, <4 x i64> noundef %1031)
  store <4 x i64> %call1339, ptr %vprod16x0123456789ABCDEF1338, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod16x89ABCDEF1340) #6
  %1032 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF1338, align 32, !tbaa !12
  %extract1341 = shufflevector <4 x i64> %1032, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1341, ptr %vprod16x89ABCDEF1340, align 16, !tbaa !12
  %1033 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1034 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF1338, align 32, !tbaa !12
  %call1342 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1034)
  %call1343 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1342)
  %call1344 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1033, <4 x i64> noundef %call1343)
  store <4 x i64> %call1344, ptr %vacc012345671054, align 32, !tbaa !12
  %1035 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1036 = load <2 x i64>, ptr %vprod16x89ABCDEF1340, align 16, !tbaa !12
  %call1345 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1036)
  %call1346 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1035, <4 x i64> noundef %call1345)
  store <4 x i64> %call1346, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x0123456789ABCDEF1347) #6
  %1037 = load ptr, ptr %i17, align 8, !tbaa !9
  %call1348 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1037)
  %call1349 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1348)
  store <4 x i64> %call1349, ptr %vi17x0123456789ABCDEF1347, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x0123456789ABCDEF1350) #6
  %1038 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1351 = getelementptr inbounds i8, ptr %1038, i64 544
  %call1352 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1351)
  %call1353 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1352)
  store <4 x i64> %call1353, ptr %vk17x0123456789ABCDEF1350, align 32, !tbaa !12
  %1039 = load ptr, ptr %i17, align 8, !tbaa !9
  %add.ptr1354 = getelementptr inbounds i8, ptr %1039, i64 16
  store ptr %add.ptr1354, ptr %i17, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod17x0123456789ABCDEF1355) #6
  %1040 = load <4 x i64>, ptr %vi17x0123456789ABCDEF1347, align 32, !tbaa !12
  %1041 = load <4 x i64>, ptr %vk17x0123456789ABCDEF1350, align 32, !tbaa !12
  %call1356 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1040, <4 x i64> noundef %1041)
  store <4 x i64> %call1356, ptr %vprod17x0123456789ABCDEF1355, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod17x89ABCDEF1357) #6
  %1042 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF1355, align 32, !tbaa !12
  %extract1358 = shufflevector <4 x i64> %1042, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1358, ptr %vprod17x89ABCDEF1357, align 16, !tbaa !12
  %1043 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1044 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF1355, align 32, !tbaa !12
  %call1359 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1044)
  %call1360 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1359)
  %call1361 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1043, <4 x i64> noundef %call1360)
  store <4 x i64> %call1361, ptr %vacc012345671054, align 32, !tbaa !12
  %1045 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1046 = load <2 x i64>, ptr %vprod17x89ABCDEF1357, align 16, !tbaa !12
  %call1362 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1046)
  %call1363 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1045, <4 x i64> noundef %call1362)
  store <4 x i64> %call1363, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x0123456789ABCDEF1364) #6
  %1047 = load ptr, ptr %i18, align 8, !tbaa !9
  %call1365 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1047)
  %call1366 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1365)
  store <4 x i64> %call1366, ptr %vi18x0123456789ABCDEF1364, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x0123456789ABCDEF1367) #6
  %1048 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1368 = getelementptr inbounds i8, ptr %1048, i64 576
  %call1369 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1368)
  %call1370 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1369)
  store <4 x i64> %call1370, ptr %vk18x0123456789ABCDEF1367, align 32, !tbaa !12
  %1049 = load ptr, ptr %i18, align 8, !tbaa !9
  %add.ptr1371 = getelementptr inbounds i8, ptr %1049, i64 16
  store ptr %add.ptr1371, ptr %i18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod18x0123456789ABCDEF1372) #6
  %1050 = load <4 x i64>, ptr %vi18x0123456789ABCDEF1364, align 32, !tbaa !12
  %1051 = load <4 x i64>, ptr %vk18x0123456789ABCDEF1367, align 32, !tbaa !12
  %call1373 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1050, <4 x i64> noundef %1051)
  store <4 x i64> %call1373, ptr %vprod18x0123456789ABCDEF1372, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod18x89ABCDEF1374) #6
  %1052 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF1372, align 32, !tbaa !12
  %extract1375 = shufflevector <4 x i64> %1052, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1375, ptr %vprod18x89ABCDEF1374, align 16, !tbaa !12
  %1053 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1054 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF1372, align 32, !tbaa !12
  %call1376 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1054)
  %call1377 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1376)
  %call1378 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1053, <4 x i64> noundef %call1377)
  store <4 x i64> %call1378, ptr %vacc012345671054, align 32, !tbaa !12
  %1055 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1056 = load <2 x i64>, ptr %vprod18x89ABCDEF1374, align 16, !tbaa !12
  %call1379 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1056)
  %call1380 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1055, <4 x i64> noundef %call1379)
  store <4 x i64> %call1380, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x0123456789ABCDEF1381) #6
  %1057 = load ptr, ptr %i19, align 8, !tbaa !9
  %call1382 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1057)
  %call1383 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1382)
  store <4 x i64> %call1383, ptr %vi19x0123456789ABCDEF1381, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x0123456789ABCDEF1384) #6
  %1058 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1385 = getelementptr inbounds i8, ptr %1058, i64 608
  %call1386 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1385)
  %call1387 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1386)
  store <4 x i64> %call1387, ptr %vk19x0123456789ABCDEF1384, align 32, !tbaa !12
  %1059 = load ptr, ptr %i19, align 8, !tbaa !9
  %add.ptr1388 = getelementptr inbounds i8, ptr %1059, i64 16
  store ptr %add.ptr1388, ptr %i19, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod19x0123456789ABCDEF1389) #6
  %1060 = load <4 x i64>, ptr %vi19x0123456789ABCDEF1381, align 32, !tbaa !12
  %1061 = load <4 x i64>, ptr %vk19x0123456789ABCDEF1384, align 32, !tbaa !12
  %call1390 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1060, <4 x i64> noundef %1061)
  store <4 x i64> %call1390, ptr %vprod19x0123456789ABCDEF1389, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod19x89ABCDEF1391) #6
  %1062 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF1389, align 32, !tbaa !12
  %extract1392 = shufflevector <4 x i64> %1062, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1392, ptr %vprod19x89ABCDEF1391, align 16, !tbaa !12
  %1063 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1064 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF1389, align 32, !tbaa !12
  %call1393 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1064)
  %call1394 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1393)
  %call1395 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1063, <4 x i64> noundef %call1394)
  store <4 x i64> %call1395, ptr %vacc012345671054, align 32, !tbaa !12
  %1065 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1066 = load <2 x i64>, ptr %vprod19x89ABCDEF1391, align 16, !tbaa !12
  %call1396 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1066)
  %call1397 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1065, <4 x i64> noundef %call1396)
  store <4 x i64> %call1397, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x0123456789ABCDEF1398) #6
  %1067 = load ptr, ptr %i20, align 8, !tbaa !9
  %call1399 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1067)
  %call1400 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1399)
  store <4 x i64> %call1400, ptr %vi20x0123456789ABCDEF1398, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x0123456789ABCDEF1401) #6
  %1068 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1402 = getelementptr inbounds i8, ptr %1068, i64 640
  %call1403 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1402)
  %call1404 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1403)
  store <4 x i64> %call1404, ptr %vk20x0123456789ABCDEF1401, align 32, !tbaa !12
  %1069 = load ptr, ptr %i20, align 8, !tbaa !9
  %add.ptr1405 = getelementptr inbounds i8, ptr %1069, i64 16
  store ptr %add.ptr1405, ptr %i20, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod20x0123456789ABCDEF1406) #6
  %1070 = load <4 x i64>, ptr %vi20x0123456789ABCDEF1398, align 32, !tbaa !12
  %1071 = load <4 x i64>, ptr %vk20x0123456789ABCDEF1401, align 32, !tbaa !12
  %call1407 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1070, <4 x i64> noundef %1071)
  store <4 x i64> %call1407, ptr %vprod20x0123456789ABCDEF1406, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod20x89ABCDEF1408) #6
  %1072 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF1406, align 32, !tbaa !12
  %extract1409 = shufflevector <4 x i64> %1072, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1409, ptr %vprod20x89ABCDEF1408, align 16, !tbaa !12
  %1073 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1074 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF1406, align 32, !tbaa !12
  %call1410 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1074)
  %call1411 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1410)
  %call1412 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1073, <4 x i64> noundef %call1411)
  store <4 x i64> %call1412, ptr %vacc012345671054, align 32, !tbaa !12
  %1075 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1076 = load <2 x i64>, ptr %vprod20x89ABCDEF1408, align 16, !tbaa !12
  %call1413 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1076)
  %call1414 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1075, <4 x i64> noundef %call1413)
  store <4 x i64> %call1414, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x0123456789ABCDEF1415) #6
  %1077 = load ptr, ptr %i21, align 8, !tbaa !9
  %call1416 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1077)
  %call1417 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1416)
  store <4 x i64> %call1417, ptr %vi21x0123456789ABCDEF1415, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x0123456789ABCDEF1418) #6
  %1078 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1419 = getelementptr inbounds i8, ptr %1078, i64 672
  %call1420 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1419)
  %call1421 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1420)
  store <4 x i64> %call1421, ptr %vk21x0123456789ABCDEF1418, align 32, !tbaa !12
  %1079 = load ptr, ptr %i21, align 8, !tbaa !9
  %add.ptr1422 = getelementptr inbounds i8, ptr %1079, i64 16
  store ptr %add.ptr1422, ptr %i21, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod21x0123456789ABCDEF1423) #6
  %1080 = load <4 x i64>, ptr %vi21x0123456789ABCDEF1415, align 32, !tbaa !12
  %1081 = load <4 x i64>, ptr %vk21x0123456789ABCDEF1418, align 32, !tbaa !12
  %call1424 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1080, <4 x i64> noundef %1081)
  store <4 x i64> %call1424, ptr %vprod21x0123456789ABCDEF1423, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod21x89ABCDEF1425) #6
  %1082 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF1423, align 32, !tbaa !12
  %extract1426 = shufflevector <4 x i64> %1082, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1426, ptr %vprod21x89ABCDEF1425, align 16, !tbaa !12
  %1083 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1084 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF1423, align 32, !tbaa !12
  %call1427 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1084)
  %call1428 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1427)
  %call1429 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1083, <4 x i64> noundef %call1428)
  store <4 x i64> %call1429, ptr %vacc012345671054, align 32, !tbaa !12
  %1085 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1086 = load <2 x i64>, ptr %vprod21x89ABCDEF1425, align 16, !tbaa !12
  %call1430 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1086)
  %call1431 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1085, <4 x i64> noundef %call1430)
  store <4 x i64> %call1431, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x0123456789ABCDEF1432) #6
  %1087 = load ptr, ptr %i22, align 8, !tbaa !9
  %call1433 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1087)
  %call1434 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1433)
  store <4 x i64> %call1434, ptr %vi22x0123456789ABCDEF1432, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x0123456789ABCDEF1435) #6
  %1088 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1436 = getelementptr inbounds i8, ptr %1088, i64 704
  %call1437 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1436)
  %call1438 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1437)
  store <4 x i64> %call1438, ptr %vk22x0123456789ABCDEF1435, align 32, !tbaa !12
  %1089 = load ptr, ptr %i22, align 8, !tbaa !9
  %add.ptr1439 = getelementptr inbounds i8, ptr %1089, i64 16
  store ptr %add.ptr1439, ptr %i22, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod22x0123456789ABCDEF1440) #6
  %1090 = load <4 x i64>, ptr %vi22x0123456789ABCDEF1432, align 32, !tbaa !12
  %1091 = load <4 x i64>, ptr %vk22x0123456789ABCDEF1435, align 32, !tbaa !12
  %call1441 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1090, <4 x i64> noundef %1091)
  store <4 x i64> %call1441, ptr %vprod22x0123456789ABCDEF1440, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod22x89ABCDEF1442) #6
  %1092 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF1440, align 32, !tbaa !12
  %extract1443 = shufflevector <4 x i64> %1092, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1443, ptr %vprod22x89ABCDEF1442, align 16, !tbaa !12
  %1093 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1094 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF1440, align 32, !tbaa !12
  %call1444 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1094)
  %call1445 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1444)
  %call1446 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1093, <4 x i64> noundef %call1445)
  store <4 x i64> %call1446, ptr %vacc012345671054, align 32, !tbaa !12
  %1095 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1096 = load <2 x i64>, ptr %vprod22x89ABCDEF1442, align 16, !tbaa !12
  %call1447 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1096)
  %call1448 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1095, <4 x i64> noundef %call1447)
  store <4 x i64> %call1448, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x0123456789ABCDEF1449) #6
  %1097 = load ptr, ptr %i23, align 8, !tbaa !9
  %call1450 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1097)
  %call1451 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1450)
  store <4 x i64> %call1451, ptr %vi23x0123456789ABCDEF1449, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x0123456789ABCDEF1452) #6
  %1098 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1453 = getelementptr inbounds i8, ptr %1098, i64 736
  %call1454 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1453)
  %call1455 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1454)
  store <4 x i64> %call1455, ptr %vk23x0123456789ABCDEF1452, align 32, !tbaa !12
  %1099 = load ptr, ptr %i23, align 8, !tbaa !9
  %add.ptr1456 = getelementptr inbounds i8, ptr %1099, i64 16
  store ptr %add.ptr1456, ptr %i23, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod23x0123456789ABCDEF1457) #6
  %1100 = load <4 x i64>, ptr %vi23x0123456789ABCDEF1449, align 32, !tbaa !12
  %1101 = load <4 x i64>, ptr %vk23x0123456789ABCDEF1452, align 32, !tbaa !12
  %call1458 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1100, <4 x i64> noundef %1101)
  store <4 x i64> %call1458, ptr %vprod23x0123456789ABCDEF1457, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod23x89ABCDEF1459) #6
  %1102 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF1457, align 32, !tbaa !12
  %extract1460 = shufflevector <4 x i64> %1102, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1460, ptr %vprod23x89ABCDEF1459, align 16, !tbaa !12
  %1103 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1104 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF1457, align 32, !tbaa !12
  %call1461 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1104)
  %call1462 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1461)
  %call1463 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1103, <4 x i64> noundef %call1462)
  store <4 x i64> %call1463, ptr %vacc012345671054, align 32, !tbaa !12
  %1105 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1106 = load <2 x i64>, ptr %vprod23x89ABCDEF1459, align 16, !tbaa !12
  %call1464 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1106)
  %call1465 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1105, <4 x i64> noundef %call1464)
  store <4 x i64> %call1465, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x0123456789ABCDEF1466) #6
  %1107 = load ptr, ptr %i24, align 8, !tbaa !9
  %call1467 = call <2 x i64> @_mm_loadu_si128(ptr noundef %1107)
  %call1468 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1467)
  store <4 x i64> %call1468, ptr %vi24x0123456789ABCDEF1466, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x0123456789ABCDEF1469) #6
  %1108 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1470 = getelementptr inbounds i8, ptr %1108, i64 768
  %call1471 = call <2 x i64> @_mm_loadu_si128(ptr noundef %add.ptr1470)
  %call1472 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1471)
  store <4 x i64> %call1472, ptr %vk24x0123456789ABCDEF1469, align 32, !tbaa !12
  %1109 = load ptr, ptr %i24, align 8, !tbaa !9
  %add.ptr1473 = getelementptr inbounds i8, ptr %1109, i64 16
  store ptr %add.ptr1473, ptr %i24, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod24x0123456789ABCDEF1474) #6
  %1110 = load <4 x i64>, ptr %vi24x0123456789ABCDEF1466, align 32, !tbaa !12
  %1111 = load <4 x i64>, ptr %vk24x0123456789ABCDEF1469, align 32, !tbaa !12
  %call1475 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %1110, <4 x i64> noundef %1111)
  store <4 x i64> %call1475, ptr %vprod24x0123456789ABCDEF1474, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod24x89ABCDEF1476) #6
  %1112 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF1474, align 32, !tbaa !12
  %extract1477 = shufflevector <4 x i64> %1112, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1477, ptr %vprod24x89ABCDEF1476, align 16, !tbaa !12
  %1113 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %1114 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF1474, align 32, !tbaa !12
  %call1478 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1114)
  %call1479 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1478)
  %call1480 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1113, <4 x i64> noundef %call1479)
  store <4 x i64> %call1480, ptr %vacc012345671054, align 32, !tbaa !12
  %1115 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1116 = load <2 x i64>, ptr %vprod24x89ABCDEF1476, align 16, !tbaa !12
  %call1481 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %1116)
  %call1482 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %1115, <4 x i64> noundef %call1481)
  store <4 x i64> %call1482, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1117 = load ptr, ptr %k, align 8, !tbaa !9
  %add.ptr1483 = getelementptr inbounds i8, ptr %1117, i64 16
  store ptr %add.ptr1483, ptr %k, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc012345671484) #6
  %1118 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %call1485 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %1118)
  store <8 x float> %call1485, ptr %vfpacc012345671484, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc89ABCDEF1486) #6
  %1119 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %call1487 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %1119)
  store <8 x float> %call1487, ptr %vfpacc89ABCDEF1486, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale012345671488) #6
  %1120 = load ptr, ptr %w, align 8, !tbaa !9
  %1121 = ptrtoint ptr %1120 to i64
  %add1489 = add i64 %1121, 128
  %add1490 = add i64 %add1489, 800
  %1122 = inttoptr i64 %add1490 to ptr
  %call1491 = call <8 x float> @_mm256_loadu_ps(ptr noundef %1122)
  store <8 x float> %call1491, ptr %vscale012345671488, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale89ABCDEF1492) #6
  %1123 = load ptr, ptr %w, align 8, !tbaa !9
  %1124 = ptrtoint ptr %1123 to i64
  %add1493 = add i64 %1124, 128
  %add1494 = add i64 %add1493, 800
  %add1495 = add i64 %add1494, 32
  %1125 = inttoptr i64 %add1495 to ptr
  %call1496 = call <8 x float> @_mm256_loadu_ps(ptr noundef %1125)
  store <8 x float> %call1496, ptr %vscale89ABCDEF1492, align 32, !tbaa !12
  %1126 = load <8 x float>, ptr %vfpacc012345671484, align 32, !tbaa !12
  %1127 = load <8 x float>, ptr %vscale012345671488, align 32, !tbaa !12
  %call1497 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %1126, <8 x float> noundef %1127)
  store <8 x float> %call1497, ptr %vfpacc012345671484, align 32, !tbaa !12
  %1128 = load <8 x float>, ptr %vfpacc89ABCDEF1486, align 32, !tbaa !12
  %1129 = load <8 x float>, ptr %vscale89ABCDEF1492, align 32, !tbaa !12
  %call1498 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %1128, <8 x float> noundef %1129)
  store <8 x float> %call1498, ptr %vfpacc89ABCDEF1486, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_max_less_zero_point1499) #6
  %1130 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point1500 = getelementptr inbounds %struct.anon.4, ptr %1130, i32 0, i32 0
  %arraydecay1501 = getelementptr inbounds [8 x float], ptr %output_max_less_zero_point1500, i64 0, i64 0
  %call1502 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1501)
  store <8 x float> %call1502, ptr %voutput_max_less_zero_point1499, align 32, !tbaa !12
  %1131 = load <8 x float>, ptr %vfpacc012345671484, align 32, !tbaa !12
  %1132 = load <8 x float>, ptr %voutput_max_less_zero_point1499, align 32, !tbaa !12
  %call1503 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %1131, <8 x float> noundef %1132)
  store <8 x float> %call1503, ptr %vfpacc012345671484, align 32, !tbaa !12
  %1133 = load <8 x float>, ptr %vfpacc89ABCDEF1486, align 32, !tbaa !12
  %1134 = load <8 x float>, ptr %voutput_max_less_zero_point1499, align 32, !tbaa !12
  %call1504 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %1133, <8 x float> noundef %1134)
  store <8 x float> %call1504, ptr %vfpacc89ABCDEF1486, align 32, !tbaa !12
  %1135 = load <8 x float>, ptr %vfpacc012345671484, align 32, !tbaa !12
  %call1505 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %1135)
  store <4 x i64> %call1505, ptr %vacc012345671054, align 32, !tbaa !12
  %1136 = load <8 x float>, ptr %vfpacc89ABCDEF1486, align 32, !tbaa !12
  %call1506 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %1136)
  store <4 x i64> %call1506, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %1137 = load ptr, ptr %w, align 8, !tbaa !9
  %1138 = ptrtoint ptr %1137 to i64
  %add1507 = add i64 %1138, 64
  %1139 = inttoptr i64 %add1507 to ptr
  store ptr %1139, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point1508) #6
  %1140 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point1509 = getelementptr inbounds %struct.anon.4, ptr %1140, i32 0, i32 1
  %arraydecay1510 = getelementptr inbounds [16 x i16], ptr %output_zero_point1509, i64 0, i64 0
  %call1511 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay1510)
  store <2 x i64> %call1511, ptr %voutput_zero_point1508, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #6
  %1141 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %call1512 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1141)
  %1142 = load <4 x i64>, ptr %vacc012345671054, align 32, !tbaa !12
  %extract1513 = shufflevector <4 x i64> %1142, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call1514 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call1512, <2 x i64> noundef %extract1513)
  %1143 = load <2 x i64>, ptr %voutput_zero_point1508, align 16, !tbaa !12
  %call1515 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call1514, <2 x i64> noundef %1143)
  store <2 x i64> %call1515, ptr %vout01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout89ABCDEF) #6
  %1144 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %call1516 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %1144)
  %1145 = load <4 x i64>, ptr %vacc89ABCDEF1056, align 32, !tbaa !12
  %extract1517 = shufflevector <4 x i64> %1145, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call1518 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call1516, <2 x i64> noundef %extract1517)
  %1146 = load <2 x i64>, ptr %voutput_zero_point1508, align 16, !tbaa !12
  %call1519 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call1518, <2 x i64> noundef %1146)
  store <2 x i64> %call1519, ptr %vout89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min1520) #6
  %1147 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min1521 = getelementptr inbounds %struct.anon.4, ptr %1147, i32 0, i32 2
  %arraydecay1522 = getelementptr inbounds [32 x i8], ptr %output_min1521, i64 0, i64 0
  %call1523 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay1522)
  store <2 x i64> %call1523, ptr %voutput_min1520, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456789ABCDEF1524) #6
  %1148 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !12
  %1149 = load <2 x i64>, ptr %vout89ABCDEF, align 16, !tbaa !12
  %call1525 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %1148, <2 x i64> noundef %1149)
  store <2 x i64> %call1525, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1150 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1151 = load <2 x i64>, ptr %voutput_min1520, align 16, !tbaa !12
  %call1526 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %1150, <2 x i64> noundef %1151)
  store <2 x i64> %call1526, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1152 = load i64, ptr %c, align 8, !tbaa !5
  %cmp1527 = icmp uge i64 %1152, 16
  %lnot1529 = xor i1 %cmp1527, true
  %lnot1531 = xor i1 %lnot1529, true
  %lnot.ext1532 = zext i1 %lnot1531 to i32
  %conv1533 = sext i32 %lnot.ext1532 to i64
  %expval1534 = call i64 @llvm.expect.i64(i64 %conv1533, i64 1)
  %tobool1535 = icmp ne i64 %expval1534, 0
  br i1 %tobool1535, label %if.then1536, label %if.else

if.then1536:                                      ; preds = %do.body1053
  %1153 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %1154 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %1153, <2 x i64> noundef %1154)
  %1155 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1537 = getelementptr inbounds i8, ptr %1155, i64 16
  store ptr %add.ptr1537, ptr %output.addr, align 8, !tbaa !9
  %1156 = load i64, ptr %c, align 8, !tbaa !5
  %sub1538 = sub i64 %1156, 16
  store i64 %sub1538, ptr %c, align 8, !tbaa !5
  br label %if.end1566

if.else:                                          ; preds = %do.body1053
  %1157 = load i64, ptr %c, align 8, !tbaa !5
  %and = and i64 %1157, 8
  %tobool1539 = icmp ne i64 %and, 0
  br i1 %tobool1539, label %if.then1540, label %if.end1543

if.then1540:                                      ; preds = %if.else
  %1158 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %1159 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %1158, <2 x i64> noundef %1159)
  %1160 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1161 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %call1541 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %1160, <2 x i64> noundef %1161)
  store <2 x i64> %call1541, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1162 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1542 = getelementptr inbounds i8, ptr %1162, i64 8
  store ptr %add.ptr1542, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1543

if.end1543:                                       ; preds = %if.then1540, %if.else
  %1163 = load i64, ptr %c, align 8, !tbaa !5
  %and1544 = and i64 %1163, 4
  %tobool1545 = icmp ne i64 %and1544, 0
  br i1 %tobool1545, label %if.then1546, label %if.end1550

if.then1546:                                      ; preds = %if.end1543
  %1164 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %call1547 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %1164)
  %1165 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call1547, ptr %1165, align 4, !tbaa !15
  %1166 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %call1548 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %1166, i32 noundef 32)
  store <2 x i64> %call1548, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1167 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1549 = getelementptr inbounds i8, ptr %1167, i64 4
  store ptr %add.ptr1549, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1550

if.end1550:                                       ; preds = %if.then1546, %if.end1543
  %1168 = load i64, ptr %c, align 8, !tbaa !5
  %and1551 = and i64 %1168, 2
  %tobool1552 = icmp ne i64 %and1551, 0
  br i1 %tobool1552, label %if.then1553, label %if.end1558

if.then1553:                                      ; preds = %if.end1550
  %1169 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1170 = bitcast <2 x i64> %1169 to <8 x i16>
  %1171 = extractelement <8 x i16> %1170, i64 0
  %conv1554 = zext i16 %1171 to i32
  %conv1555 = trunc i32 %conv1554 to i16
  %1172 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv1555, ptr %1172, align 2, !tbaa !17
  %1173 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %call1556 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %1173, i32 noundef 16)
  store <2 x i64> %call1556, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1174 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1557 = getelementptr inbounds i8, ptr %1174, i64 2
  store ptr %add.ptr1557, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1558

if.end1558:                                       ; preds = %if.then1553, %if.end1550
  %1175 = load i64, ptr %c, align 8, !tbaa !5
  %and1559 = and i64 %1175, 1
  %tobool1560 = icmp ne i64 %and1559, 0
  br i1 %tobool1560, label %if.then1561, label %if.end1565

if.then1561:                                      ; preds = %if.end1558
  %1176 = load <2 x i64>, ptr %vout0123456789ABCDEF1524, align 16, !tbaa !12
  %1177 = bitcast <2 x i64> %1176 to <16 x i8>
  %1178 = extractelement <16 x i8> %1177, i64 0
  %conv1562 = zext i8 %1178 to i32
  %conv1563 = trunc i32 %conv1562 to i8
  %1179 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv1563, ptr %1179, align 1, !tbaa !12
  %1180 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1564 = getelementptr inbounds i8, ptr %1180, i64 1
  store ptr %add.ptr1564, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1565

if.end1565:                                       ; preds = %if.then1561, %if.end1558
  store i64 0, ptr %c, align 8, !tbaa !5
  br label %if.end1566

if.end1566:                                       ; preds = %if.end1565, %if.then1536
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456789ABCDEF1524) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min1520) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point1508) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_max_less_zero_point1499) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale89ABCDEF1492) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale012345671488) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc89ABCDEF1486) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc012345671484) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod24x89ABCDEF1476) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod24x0123456789ABCDEF1474) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x0123456789ABCDEF1469) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x0123456789ABCDEF1466) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod23x89ABCDEF1459) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod23x0123456789ABCDEF1457) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x0123456789ABCDEF1452) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x0123456789ABCDEF1449) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod22x89ABCDEF1442) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod22x0123456789ABCDEF1440) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x0123456789ABCDEF1435) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x0123456789ABCDEF1432) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod21x89ABCDEF1425) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod21x0123456789ABCDEF1423) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x0123456789ABCDEF1418) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x0123456789ABCDEF1415) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod20x89ABCDEF1408) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod20x0123456789ABCDEF1406) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x0123456789ABCDEF1401) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x0123456789ABCDEF1398) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod19x89ABCDEF1391) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod19x0123456789ABCDEF1389) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x0123456789ABCDEF1384) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x0123456789ABCDEF1381) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod18x89ABCDEF1374) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod18x0123456789ABCDEF1372) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x0123456789ABCDEF1367) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x0123456789ABCDEF1364) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod17x89ABCDEF1357) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod17x0123456789ABCDEF1355) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x0123456789ABCDEF1350) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x0123456789ABCDEF1347) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod16x89ABCDEF1340) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod16x0123456789ABCDEF1338) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x0123456789ABCDEF1333) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x0123456789ABCDEF1330) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod15x89ABCDEF1323) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod15x0123456789ABCDEF1321) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x0123456789ABCDEF1316) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x0123456789ABCDEF1313) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod14x89ABCDEF1306) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod14x0123456789ABCDEF1304) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x0123456789ABCDEF1299) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x0123456789ABCDEF1296) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod13x89ABCDEF1289) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod13x0123456789ABCDEF1287) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x0123456789ABCDEF1282) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x0123456789ABCDEF1279) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod12x89ABCDEF1272) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod12x0123456789ABCDEF1270) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x0123456789ABCDEF1265) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x0123456789ABCDEF1262) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod11x89ABCDEF1255) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod11x0123456789ABCDEF1253) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x0123456789ABCDEF1248) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x0123456789ABCDEF1245) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod10x89ABCDEF1238) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod10x0123456789ABCDEF1236) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x0123456789ABCDEF1231) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x0123456789ABCDEF1228) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod9x89ABCDEF1221) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod9x0123456789ABCDEF1219) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x0123456789ABCDEF1214) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x0123456789ABCDEF1211) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x89ABCDEF1204) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod8x0123456789ABCDEF1202) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x0123456789ABCDEF1197) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x0123456789ABCDEF1194) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x89ABCDEF1187) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod7x0123456789ABCDEF1185) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x0123456789ABCDEF1180) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x0123456789ABCDEF1177) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x89ABCDEF1170) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod6x0123456789ABCDEF1168) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x0123456789ABCDEF1163) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x0123456789ABCDEF1160) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x89ABCDEF1153) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod5x0123456789ABCDEF1151) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x0123456789ABCDEF1146) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x0123456789ABCDEF1143) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x89ABCDEF1136) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod4x0123456789ABCDEF1134) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x0123456789ABCDEF1129) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x0123456789ABCDEF1126) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x89ABCDEF1119) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod3x0123456789ABCDEF1117) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x0123456789ABCDEF1112) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x0123456789ABCDEF1109) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x89ABCDEF1102) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod2x0123456789ABCDEF1100) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x0123456789ABCDEF1095) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x0123456789ABCDEF1092) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x89ABCDEF1085) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod1x0123456789ABCDEF1083) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x0123456789ABCDEF1078) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x0123456789ABCDEF1075) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x89ABCDEF1068) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod0x0123456789ABCDEF1066) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x0123456789ABCDEF1062) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x0123456789ABCDEF1059) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc89ABCDEF1056) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc012345671054) #6
  br label %do.cond

do.cond:                                          ; preds = %if.end1566
  %1181 = load i64, ptr %c, align 8, !tbaa !5
  %cmp1567 = icmp ne i64 %1181, 0
  br i1 %cmp1567, label %do.body1053, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #6
  br label %if.end1569

if.end1569:                                       ; preds = %do.end, %for.end
  %1182 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %1183 = ptrtoint ptr %1182 to i64
  %1184 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add1570 = add i64 %1183, %1184
  %1185 = inttoptr i64 %add1570 to ptr
  store ptr %1185, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i24) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i23) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i21) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i20) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i19) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i18) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i16) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i15) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i14) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i9) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %i0) #6
  br label %do.cond1571

do.cond1571:                                      ; preds = %if.end1569
  %1186 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %1186, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp1572 = icmp ne i64 %dec, 0
  br i1 %cmp1572, label %do.body, label %do.end1574, !llvm.loop !20

do.end1574:                                       ; preds = %do.cond1571
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_loadu_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si256, ptr %0, i32 0, i32 0
  %1 = load <4 x i64>, ptr %__v, align 1, !tbaa !12
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %conv = sext <16 x i8> %1 to <16 x i16>
  %2 = bitcast <16 x i16> %conv to <4 x i64>
  ret <4 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !12
  %1 = bitcast <4 x i64> %0 to <16 x i16>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !12
  %3 = bitcast <4 x i64> %2 to <16 x i16>
  %mul = mul <16 x i16> %1, %3
  %4 = bitcast <16 x i16> %mul to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !12
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !12
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %add = add <8 x i32> %1, %3
  %4 = bitcast <8 x i32> %add to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %__V) #2 {
entry:
  %__V.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V, ptr %__V.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %conv = sext <8 x i16> %1 to <8 x i32>
  %2 = bitcast <8 x i32> %conv to <4 x i64>
  ret <4 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !12
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !12
  %shuffle = shufflevector <4 x i64> %0, <4 x i64> %1, <2 x i32> <i32 0, i32 1>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !12
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !12
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %conv = sitofp <8 x i32> %1 to <8 x float>
  ret <8 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <8 x float>, ptr %__v, align 1, !tbaa !12
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !12
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_min_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !12
  %2 = call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !12
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !12
  %1 = call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %0)
  %2 = bitcast <8 x i32> %1 to <4 x i64>
  ret <4 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_load_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x i64>, ptr %0, align 32, !tbaa !12
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_adds_epi16(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !12
  %1 = bitcast <4 x i64> %0 to <16 x i16>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !12
  %3 = bitcast <4 x i64> %2 to <16 x i16>
  %elt.sat = call <16 x i16> @llvm.sadd.sat.v16i16(<16 x i16> %1, <16 x i16> %3)
  %4 = bitcast <16 x i16> %elt.sat to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_packs_epi32(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !12
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !12
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !12
  %1 = bitcast <4 x i64> %0 to <8 x i32>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !12
  %3 = bitcast <4 x i64> %2 to <8 x i32>
  %4 = call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %1, <8 x i32> %3)
  %5 = bitcast <16 x i16> %4 to <4 x i64>
  ret <4 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !12
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_max_epi8(<2 x i64> noundef %__V1, <2 x i64> noundef %__V2) #3 {
entry:
  %__V1.addr = alloca <2 x i64>, align 16
  %__V2.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__V1, ptr %__V1.addr, align 16, !tbaa !12
  store <2 x i64> %__V2, ptr %__V2.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__V1.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__V2.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.max = call <16 x i8> @llvm.smax.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.max to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %elt.sat = call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %1, <8 x i16> %3)
  %4 = bitcast <8 x i16> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %4 = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %1, <4 x i32> %3)
  %5 = bitcast <8 x i16> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !12
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !12
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !12
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #6
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !12
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !12
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #6
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !12
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !15
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !12
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !15
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.sadd.sat.v16i16(<16 x i16>, <16 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.smax.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
