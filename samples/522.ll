; ModuleID = 'samples/522.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/qs8-dwconv/gen/up16x25-minmax-fp32-avx2-mul16-vpmovsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.4 = type { [8 x float], [8 x float], [16 x i16], [32 x i8] }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx(i64 noundef %channels, i64 noundef %output_width, ptr noundef %input, ptr noundef %weights, ptr noundef %output, i64 noundef %input_stride, i64 noundef %output_increment, i64 noundef %input_offset, ptr noundef %zero, ptr noalias noundef align 64 dereferenceable(256) %params) #0 {
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
  %vi0x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk0x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod0x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod0x89ABCDEF = alloca <2 x i64>, align 16
  %vi1x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk1x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod1x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod1x89ABCDEF = alloca <2 x i64>, align 16
  %vi2x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk2x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod2x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod2x89ABCDEF = alloca <2 x i64>, align 16
  %vi3x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk3x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod3x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod3x89ABCDEF = alloca <2 x i64>, align 16
  %vi4x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk4x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod4x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod4x89ABCDEF = alloca <2 x i64>, align 16
  %vi5x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk5x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod5x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod5x89ABCDEF = alloca <2 x i64>, align 16
  %vi6x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk6x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod6x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod6x89ABCDEF = alloca <2 x i64>, align 16
  %vi7x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk7x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod7x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod7x89ABCDEF = alloca <2 x i64>, align 16
  %vi8x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk8x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod8x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod8x89ABCDEF = alloca <2 x i64>, align 16
  %vi9x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk9x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod9x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod9x89ABCDEF = alloca <2 x i64>, align 16
  %vi10x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk10x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod10x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod10x89ABCDEF = alloca <2 x i64>, align 16
  %vi11x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk11x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod11x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod11x89ABCDEF = alloca <2 x i64>, align 16
  %vi12x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk12x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod12x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod12x89ABCDEF = alloca <2 x i64>, align 16
  %vi13x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk13x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod13x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod13x89ABCDEF = alloca <2 x i64>, align 16
  %vi14x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk14x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod14x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod14x89ABCDEF = alloca <2 x i64>, align 16
  %vi15x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk15x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod15x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod15x89ABCDEF = alloca <2 x i64>, align 16
  %vi16x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk16x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod16x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod16x89ABCDEF = alloca <2 x i64>, align 16
  %vi17x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk17x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod17x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod17x89ABCDEF = alloca <2 x i64>, align 16
  %vi18x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk18x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod18x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod18x89ABCDEF = alloca <2 x i64>, align 16
  %vi19x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk19x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod19x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod19x89ABCDEF = alloca <2 x i64>, align 16
  %vi20x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk20x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod20x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod20x89ABCDEF = alloca <2 x i64>, align 16
  %vi21x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk21x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod21x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod21x89ABCDEF = alloca <2 x i64>, align 16
  %vi22x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk22x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod22x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod22x89ABCDEF = alloca <2 x i64>, align 16
  %vi23x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk23x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod23x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod23x89ABCDEF = alloca <2 x i64>, align 16
  %vi24x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vk24x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod24x0123456789ABCDEF = alloca <4 x i64>, align 32
  %vprod24x89ABCDEF = alloca <2 x i64>, align 16
  %vfpacc01234567 = alloca <8 x float>, align 32
  %vfpacc89ABCDEF = alloca <8 x float>, align 32
  %vscale = alloca <8 x float>, align 32
  %voutput_max_less_zero_point = alloca <8 x float>, align 32
  %voutput_zero_point = alloca <4 x i64>, align 32
  %vout012389AB4567CDEF = alloca <4 x i64>, align 32
  %vout0123456789ABCDEF = alloca <2 x i64>, align 16
  %voutput_min = alloca <2 x i64>, align 16
  %vacc01234567676 = alloca <4 x i64>, align 32
  %vacc89ABCDEF678 = alloca <4 x i64>, align 32
  %vi0x0123456789ABCDEF681 = alloca <4 x i64>, align 32
  %vk0x0123456789ABCDEF684 = alloca <4 x i64>, align 32
  %vprod0x0123456789ABCDEF689 = alloca <4 x i64>, align 32
  %vprod0x89ABCDEF691 = alloca <2 x i64>, align 16
  %vi1x0123456789ABCDEF698 = alloca <4 x i64>, align 32
  %vk1x0123456789ABCDEF701 = alloca <4 x i64>, align 32
  %vprod1x0123456789ABCDEF706 = alloca <4 x i64>, align 32
  %vprod1x89ABCDEF708 = alloca <2 x i64>, align 16
  %vi2x0123456789ABCDEF715 = alloca <4 x i64>, align 32
  %vk2x0123456789ABCDEF718 = alloca <4 x i64>, align 32
  %vprod2x0123456789ABCDEF723 = alloca <4 x i64>, align 32
  %vprod2x89ABCDEF725 = alloca <2 x i64>, align 16
  %vi3x0123456789ABCDEF732 = alloca <4 x i64>, align 32
  %vk3x0123456789ABCDEF735 = alloca <4 x i64>, align 32
  %vprod3x0123456789ABCDEF740 = alloca <4 x i64>, align 32
  %vprod3x89ABCDEF742 = alloca <2 x i64>, align 16
  %vi4x0123456789ABCDEF749 = alloca <4 x i64>, align 32
  %vk4x0123456789ABCDEF752 = alloca <4 x i64>, align 32
  %vprod4x0123456789ABCDEF757 = alloca <4 x i64>, align 32
  %vprod4x89ABCDEF759 = alloca <2 x i64>, align 16
  %vi5x0123456789ABCDEF766 = alloca <4 x i64>, align 32
  %vk5x0123456789ABCDEF769 = alloca <4 x i64>, align 32
  %vprod5x0123456789ABCDEF774 = alloca <4 x i64>, align 32
  %vprod5x89ABCDEF776 = alloca <2 x i64>, align 16
  %vi6x0123456789ABCDEF783 = alloca <4 x i64>, align 32
  %vk6x0123456789ABCDEF786 = alloca <4 x i64>, align 32
  %vprod6x0123456789ABCDEF791 = alloca <4 x i64>, align 32
  %vprod6x89ABCDEF793 = alloca <2 x i64>, align 16
  %vi7x0123456789ABCDEF800 = alloca <4 x i64>, align 32
  %vk7x0123456789ABCDEF803 = alloca <4 x i64>, align 32
  %vprod7x0123456789ABCDEF808 = alloca <4 x i64>, align 32
  %vprod7x89ABCDEF810 = alloca <2 x i64>, align 16
  %vi8x0123456789ABCDEF817 = alloca <4 x i64>, align 32
  %vk8x0123456789ABCDEF820 = alloca <4 x i64>, align 32
  %vprod8x0123456789ABCDEF825 = alloca <4 x i64>, align 32
  %vprod8x89ABCDEF827 = alloca <2 x i64>, align 16
  %vi9x0123456789ABCDEF834 = alloca <4 x i64>, align 32
  %vk9x0123456789ABCDEF837 = alloca <4 x i64>, align 32
  %vprod9x0123456789ABCDEF842 = alloca <4 x i64>, align 32
  %vprod9x89ABCDEF844 = alloca <2 x i64>, align 16
  %vi10x0123456789ABCDEF851 = alloca <4 x i64>, align 32
  %vk10x0123456789ABCDEF854 = alloca <4 x i64>, align 32
  %vprod10x0123456789ABCDEF859 = alloca <4 x i64>, align 32
  %vprod10x89ABCDEF861 = alloca <2 x i64>, align 16
  %vi11x0123456789ABCDEF868 = alloca <4 x i64>, align 32
  %vk11x0123456789ABCDEF871 = alloca <4 x i64>, align 32
  %vprod11x0123456789ABCDEF876 = alloca <4 x i64>, align 32
  %vprod11x89ABCDEF878 = alloca <2 x i64>, align 16
  %vi12x0123456789ABCDEF885 = alloca <4 x i64>, align 32
  %vk12x0123456789ABCDEF888 = alloca <4 x i64>, align 32
  %vprod12x0123456789ABCDEF893 = alloca <4 x i64>, align 32
  %vprod12x89ABCDEF895 = alloca <2 x i64>, align 16
  %vi13x0123456789ABCDEF902 = alloca <4 x i64>, align 32
  %vk13x0123456789ABCDEF905 = alloca <4 x i64>, align 32
  %vprod13x0123456789ABCDEF910 = alloca <4 x i64>, align 32
  %vprod13x89ABCDEF912 = alloca <2 x i64>, align 16
  %vi14x0123456789ABCDEF919 = alloca <4 x i64>, align 32
  %vk14x0123456789ABCDEF922 = alloca <4 x i64>, align 32
  %vprod14x0123456789ABCDEF927 = alloca <4 x i64>, align 32
  %vprod14x89ABCDEF929 = alloca <2 x i64>, align 16
  %vi15x0123456789ABCDEF936 = alloca <4 x i64>, align 32
  %vk15x0123456789ABCDEF939 = alloca <4 x i64>, align 32
  %vprod15x0123456789ABCDEF944 = alloca <4 x i64>, align 32
  %vprod15x89ABCDEF946 = alloca <2 x i64>, align 16
  %vi16x0123456789ABCDEF953 = alloca <4 x i64>, align 32
  %vk16x0123456789ABCDEF956 = alloca <4 x i64>, align 32
  %vprod16x0123456789ABCDEF961 = alloca <4 x i64>, align 32
  %vprod16x89ABCDEF963 = alloca <2 x i64>, align 16
  %vi17x0123456789ABCDEF970 = alloca <4 x i64>, align 32
  %vk17x0123456789ABCDEF973 = alloca <4 x i64>, align 32
  %vprod17x0123456789ABCDEF978 = alloca <4 x i64>, align 32
  %vprod17x89ABCDEF980 = alloca <2 x i64>, align 16
  %vi18x0123456789ABCDEF987 = alloca <4 x i64>, align 32
  %vk18x0123456789ABCDEF990 = alloca <4 x i64>, align 32
  %vprod18x0123456789ABCDEF995 = alloca <4 x i64>, align 32
  %vprod18x89ABCDEF997 = alloca <2 x i64>, align 16
  %vi19x0123456789ABCDEF1004 = alloca <4 x i64>, align 32
  %vk19x0123456789ABCDEF1007 = alloca <4 x i64>, align 32
  %vprod19x0123456789ABCDEF1012 = alloca <4 x i64>, align 32
  %vprod19x89ABCDEF1014 = alloca <2 x i64>, align 16
  %vi20x0123456789ABCDEF1021 = alloca <4 x i64>, align 32
  %vk20x0123456789ABCDEF1024 = alloca <4 x i64>, align 32
  %vprod20x0123456789ABCDEF1029 = alloca <4 x i64>, align 32
  %vprod20x89ABCDEF1031 = alloca <2 x i64>, align 16
  %vi21x0123456789ABCDEF1038 = alloca <4 x i64>, align 32
  %vk21x0123456789ABCDEF1041 = alloca <4 x i64>, align 32
  %vprod21x0123456789ABCDEF1046 = alloca <4 x i64>, align 32
  %vprod21x89ABCDEF1048 = alloca <2 x i64>, align 16
  %vi22x0123456789ABCDEF1055 = alloca <4 x i64>, align 32
  %vk22x0123456789ABCDEF1058 = alloca <4 x i64>, align 32
  %vprod22x0123456789ABCDEF1063 = alloca <4 x i64>, align 32
  %vprod22x89ABCDEF1065 = alloca <2 x i64>, align 16
  %vi23x0123456789ABCDEF1072 = alloca <4 x i64>, align 32
  %vk23x0123456789ABCDEF1075 = alloca <4 x i64>, align 32
  %vprod23x0123456789ABCDEF1080 = alloca <4 x i64>, align 32
  %vprod23x89ABCDEF1082 = alloca <2 x i64>, align 16
  %vi24x0123456789ABCDEF1089 = alloca <4 x i64>, align 32
  %vk24x0123456789ABCDEF1092 = alloca <4 x i64>, align 32
  %vprod24x0123456789ABCDEF1097 = alloca <4 x i64>, align 32
  %vprod24x89ABCDEF1099 = alloca <2 x i64>, align 16
  %vfpacc012345671106 = alloca <8 x float>, align 32
  %vfpacc89ABCDEF1108 = alloca <8 x float>, align 32
  %vscale1110 = alloca <8 x float>, align 32
  %voutput_max_less_zero_point1116 = alloca <8 x float>, align 32
  %voutput_zero_point1124 = alloca <2 x i64>, align 16
  %vout01234567 = alloca <2 x i64>, align 16
  %vout89ABCDEF = alloca <2 x i64>, align 16
  %voutput_min1136 = alloca <2 x i64>, align 16
  %vout0123456789ABCDEF1140 = alloca <2 x i64>, align 16
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

do.body:                                          ; preds = %do.cond, %entry
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
  %cmp291 = icmp uge i64 %206, 16
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x0123456789ABCDEF) #6
  %211 = load ptr, ptr %i0, align 8, !tbaa !9
  %call295 = call <2 x i64> @_mm_loadu_si128(ptr noundef %211)
  %call296 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call295)
  store <4 x i64> %call296, ptr %vi0x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x0123456789ABCDEF) #6
  %212 = load ptr, ptr %w, align 8, !tbaa !9
  %213 = ptrtoint ptr %212 to i64
  %add297 = add i64 %213, 64
  %add298 = add i64 %add297, 0
  %214 = inttoptr i64 %add298 to ptr
  %call299 = call <2 x i64> @_mm_loadu_si128(ptr noundef %214)
  %call300 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call299)
  store <4 x i64> %call300, ptr %vk0x0123456789ABCDEF, align 32, !tbaa !12
  %215 = load ptr, ptr %i0, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %215, i64 16
  store ptr %add.ptr, ptr %i0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod0x0123456789ABCDEF) #6
  %216 = load <4 x i64>, ptr %vi0x0123456789ABCDEF, align 32, !tbaa !12
  %217 = load <4 x i64>, ptr %vk0x0123456789ABCDEF, align 32, !tbaa !12
  %call301 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %216, <4 x i64> noundef %217)
  store <4 x i64> %call301, ptr %vprod0x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x89ABCDEF) #6
  %218 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF, align 32, !tbaa !12
  %extract = shufflevector <4 x i64> %218, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract, ptr %vprod0x89ABCDEF, align 16, !tbaa !12
  %219 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %220 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF, align 32, !tbaa !12
  %call302 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %220)
  %call303 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call302)
  %call304 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %219, <4 x i64> noundef %call303)
  store <4 x i64> %call304, ptr %vacc01234567, align 32, !tbaa !12
  %221 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %222 = load <2 x i64>, ptr %vprod0x89ABCDEF, align 16, !tbaa !12
  %call305 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %222)
  %call306 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %221, <4 x i64> noundef %call305)
  store <4 x i64> %call306, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x0123456789ABCDEF) #6
  %223 = load ptr, ptr %i1, align 8, !tbaa !9
  %call307 = call <2 x i64> @_mm_loadu_si128(ptr noundef %223)
  %call308 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call307)
  store <4 x i64> %call308, ptr %vi1x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x0123456789ABCDEF) #6
  %224 = load ptr, ptr %w, align 8, !tbaa !9
  %225 = ptrtoint ptr %224 to i64
  %add309 = add i64 %225, 64
  %add310 = add i64 %add309, 16
  %226 = inttoptr i64 %add310 to ptr
  %call311 = call <2 x i64> @_mm_loadu_si128(ptr noundef %226)
  %call312 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call311)
  store <4 x i64> %call312, ptr %vk1x0123456789ABCDEF, align 32, !tbaa !12
  %227 = load ptr, ptr %i1, align 8, !tbaa !9
  %add.ptr313 = getelementptr inbounds i8, ptr %227, i64 16
  store ptr %add.ptr313, ptr %i1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod1x0123456789ABCDEF) #6
  %228 = load <4 x i64>, ptr %vi1x0123456789ABCDEF, align 32, !tbaa !12
  %229 = load <4 x i64>, ptr %vk1x0123456789ABCDEF, align 32, !tbaa !12
  %call314 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %228, <4 x i64> noundef %229)
  store <4 x i64> %call314, ptr %vprod1x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x89ABCDEF) #6
  %230 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF, align 32, !tbaa !12
  %extract315 = shufflevector <4 x i64> %230, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract315, ptr %vprod1x89ABCDEF, align 16, !tbaa !12
  %231 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %232 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF, align 32, !tbaa !12
  %call316 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %232)
  %call317 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call316)
  %call318 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %231, <4 x i64> noundef %call317)
  store <4 x i64> %call318, ptr %vacc01234567, align 32, !tbaa !12
  %233 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %234 = load <2 x i64>, ptr %vprod1x89ABCDEF, align 16, !tbaa !12
  %call319 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %234)
  %call320 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %233, <4 x i64> noundef %call319)
  store <4 x i64> %call320, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x0123456789ABCDEF) #6
  %235 = load ptr, ptr %i2, align 8, !tbaa !9
  %call321 = call <2 x i64> @_mm_loadu_si128(ptr noundef %235)
  %call322 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call321)
  store <4 x i64> %call322, ptr %vi2x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x0123456789ABCDEF) #6
  %236 = load ptr, ptr %w, align 8, !tbaa !9
  %237 = ptrtoint ptr %236 to i64
  %add323 = add i64 %237, 64
  %add324 = add i64 %add323, 32
  %238 = inttoptr i64 %add324 to ptr
  %call325 = call <2 x i64> @_mm_loadu_si128(ptr noundef %238)
  %call326 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call325)
  store <4 x i64> %call326, ptr %vk2x0123456789ABCDEF, align 32, !tbaa !12
  %239 = load ptr, ptr %i2, align 8, !tbaa !9
  %add.ptr327 = getelementptr inbounds i8, ptr %239, i64 16
  store ptr %add.ptr327, ptr %i2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod2x0123456789ABCDEF) #6
  %240 = load <4 x i64>, ptr %vi2x0123456789ABCDEF, align 32, !tbaa !12
  %241 = load <4 x i64>, ptr %vk2x0123456789ABCDEF, align 32, !tbaa !12
  %call328 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %240, <4 x i64> noundef %241)
  store <4 x i64> %call328, ptr %vprod2x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x89ABCDEF) #6
  %242 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF, align 32, !tbaa !12
  %extract329 = shufflevector <4 x i64> %242, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract329, ptr %vprod2x89ABCDEF, align 16, !tbaa !12
  %243 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %244 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF, align 32, !tbaa !12
  %call330 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %244)
  %call331 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call330)
  %call332 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %243, <4 x i64> noundef %call331)
  store <4 x i64> %call332, ptr %vacc01234567, align 32, !tbaa !12
  %245 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %246 = load <2 x i64>, ptr %vprod2x89ABCDEF, align 16, !tbaa !12
  %call333 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %246)
  %call334 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %245, <4 x i64> noundef %call333)
  store <4 x i64> %call334, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x0123456789ABCDEF) #6
  %247 = load ptr, ptr %i3, align 8, !tbaa !9
  %call335 = call <2 x i64> @_mm_loadu_si128(ptr noundef %247)
  %call336 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call335)
  store <4 x i64> %call336, ptr %vi3x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x0123456789ABCDEF) #6
  %248 = load ptr, ptr %w, align 8, !tbaa !9
  %249 = ptrtoint ptr %248 to i64
  %add337 = add i64 %249, 64
  %add338 = add i64 %add337, 48
  %250 = inttoptr i64 %add338 to ptr
  %call339 = call <2 x i64> @_mm_loadu_si128(ptr noundef %250)
  %call340 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call339)
  store <4 x i64> %call340, ptr %vk3x0123456789ABCDEF, align 32, !tbaa !12
  %251 = load ptr, ptr %i3, align 8, !tbaa !9
  %add.ptr341 = getelementptr inbounds i8, ptr %251, i64 16
  store ptr %add.ptr341, ptr %i3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod3x0123456789ABCDEF) #6
  %252 = load <4 x i64>, ptr %vi3x0123456789ABCDEF, align 32, !tbaa !12
  %253 = load <4 x i64>, ptr %vk3x0123456789ABCDEF, align 32, !tbaa !12
  %call342 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %252, <4 x i64> noundef %253)
  store <4 x i64> %call342, ptr %vprod3x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x89ABCDEF) #6
  %254 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF, align 32, !tbaa !12
  %extract343 = shufflevector <4 x i64> %254, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract343, ptr %vprod3x89ABCDEF, align 16, !tbaa !12
  %255 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %256 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF, align 32, !tbaa !12
  %call344 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %256)
  %call345 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call344)
  %call346 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %255, <4 x i64> noundef %call345)
  store <4 x i64> %call346, ptr %vacc01234567, align 32, !tbaa !12
  %257 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %258 = load <2 x i64>, ptr %vprod3x89ABCDEF, align 16, !tbaa !12
  %call347 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %258)
  %call348 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %257, <4 x i64> noundef %call347)
  store <4 x i64> %call348, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x0123456789ABCDEF) #6
  %259 = load ptr, ptr %i4, align 8, !tbaa !9
  %call349 = call <2 x i64> @_mm_loadu_si128(ptr noundef %259)
  %call350 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call349)
  store <4 x i64> %call350, ptr %vi4x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x0123456789ABCDEF) #6
  %260 = load ptr, ptr %w, align 8, !tbaa !9
  %261 = ptrtoint ptr %260 to i64
  %add351 = add i64 %261, 64
  %add352 = add i64 %add351, 64
  %262 = inttoptr i64 %add352 to ptr
  %call353 = call <2 x i64> @_mm_loadu_si128(ptr noundef %262)
  %call354 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call353)
  store <4 x i64> %call354, ptr %vk4x0123456789ABCDEF, align 32, !tbaa !12
  %263 = load ptr, ptr %i4, align 8, !tbaa !9
  %add.ptr355 = getelementptr inbounds i8, ptr %263, i64 16
  store ptr %add.ptr355, ptr %i4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod4x0123456789ABCDEF) #6
  %264 = load <4 x i64>, ptr %vi4x0123456789ABCDEF, align 32, !tbaa !12
  %265 = load <4 x i64>, ptr %vk4x0123456789ABCDEF, align 32, !tbaa !12
  %call356 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %264, <4 x i64> noundef %265)
  store <4 x i64> %call356, ptr %vprod4x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x89ABCDEF) #6
  %266 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF, align 32, !tbaa !12
  %extract357 = shufflevector <4 x i64> %266, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract357, ptr %vprod4x89ABCDEF, align 16, !tbaa !12
  %267 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %268 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF, align 32, !tbaa !12
  %call358 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %268)
  %call359 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call358)
  %call360 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %267, <4 x i64> noundef %call359)
  store <4 x i64> %call360, ptr %vacc01234567, align 32, !tbaa !12
  %269 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %270 = load <2 x i64>, ptr %vprod4x89ABCDEF, align 16, !tbaa !12
  %call361 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %270)
  %call362 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %269, <4 x i64> noundef %call361)
  store <4 x i64> %call362, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x0123456789ABCDEF) #6
  %271 = load ptr, ptr %i5, align 8, !tbaa !9
  %call363 = call <2 x i64> @_mm_loadu_si128(ptr noundef %271)
  %call364 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call363)
  store <4 x i64> %call364, ptr %vi5x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x0123456789ABCDEF) #6
  %272 = load ptr, ptr %w, align 8, !tbaa !9
  %273 = ptrtoint ptr %272 to i64
  %add365 = add i64 %273, 64
  %add366 = add i64 %add365, 80
  %274 = inttoptr i64 %add366 to ptr
  %call367 = call <2 x i64> @_mm_loadu_si128(ptr noundef %274)
  %call368 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call367)
  store <4 x i64> %call368, ptr %vk5x0123456789ABCDEF, align 32, !tbaa !12
  %275 = load ptr, ptr %i5, align 8, !tbaa !9
  %add.ptr369 = getelementptr inbounds i8, ptr %275, i64 16
  store ptr %add.ptr369, ptr %i5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod5x0123456789ABCDEF) #6
  %276 = load <4 x i64>, ptr %vi5x0123456789ABCDEF, align 32, !tbaa !12
  %277 = load <4 x i64>, ptr %vk5x0123456789ABCDEF, align 32, !tbaa !12
  %call370 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %276, <4 x i64> noundef %277)
  store <4 x i64> %call370, ptr %vprod5x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x89ABCDEF) #6
  %278 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF, align 32, !tbaa !12
  %extract371 = shufflevector <4 x i64> %278, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract371, ptr %vprod5x89ABCDEF, align 16, !tbaa !12
  %279 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %280 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF, align 32, !tbaa !12
  %call372 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %280)
  %call373 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call372)
  %call374 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %279, <4 x i64> noundef %call373)
  store <4 x i64> %call374, ptr %vacc01234567, align 32, !tbaa !12
  %281 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %282 = load <2 x i64>, ptr %vprod5x89ABCDEF, align 16, !tbaa !12
  %call375 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %282)
  %call376 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %281, <4 x i64> noundef %call375)
  store <4 x i64> %call376, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x0123456789ABCDEF) #6
  %283 = load ptr, ptr %i6, align 8, !tbaa !9
  %call377 = call <2 x i64> @_mm_loadu_si128(ptr noundef %283)
  %call378 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call377)
  store <4 x i64> %call378, ptr %vi6x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x0123456789ABCDEF) #6
  %284 = load ptr, ptr %w, align 8, !tbaa !9
  %285 = ptrtoint ptr %284 to i64
  %add379 = add i64 %285, 64
  %add380 = add i64 %add379, 96
  %286 = inttoptr i64 %add380 to ptr
  %call381 = call <2 x i64> @_mm_loadu_si128(ptr noundef %286)
  %call382 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call381)
  store <4 x i64> %call382, ptr %vk6x0123456789ABCDEF, align 32, !tbaa !12
  %287 = load ptr, ptr %i6, align 8, !tbaa !9
  %add.ptr383 = getelementptr inbounds i8, ptr %287, i64 16
  store ptr %add.ptr383, ptr %i6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod6x0123456789ABCDEF) #6
  %288 = load <4 x i64>, ptr %vi6x0123456789ABCDEF, align 32, !tbaa !12
  %289 = load <4 x i64>, ptr %vk6x0123456789ABCDEF, align 32, !tbaa !12
  %call384 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %288, <4 x i64> noundef %289)
  store <4 x i64> %call384, ptr %vprod6x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x89ABCDEF) #6
  %290 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF, align 32, !tbaa !12
  %extract385 = shufflevector <4 x i64> %290, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract385, ptr %vprod6x89ABCDEF, align 16, !tbaa !12
  %291 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %292 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF, align 32, !tbaa !12
  %call386 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %292)
  %call387 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call386)
  %call388 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %291, <4 x i64> noundef %call387)
  store <4 x i64> %call388, ptr %vacc01234567, align 32, !tbaa !12
  %293 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %294 = load <2 x i64>, ptr %vprod6x89ABCDEF, align 16, !tbaa !12
  %call389 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %294)
  %call390 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %293, <4 x i64> noundef %call389)
  store <4 x i64> %call390, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x0123456789ABCDEF) #6
  %295 = load ptr, ptr %i7, align 8, !tbaa !9
  %call391 = call <2 x i64> @_mm_loadu_si128(ptr noundef %295)
  %call392 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call391)
  store <4 x i64> %call392, ptr %vi7x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x0123456789ABCDEF) #6
  %296 = load ptr, ptr %w, align 8, !tbaa !9
  %297 = ptrtoint ptr %296 to i64
  %add393 = add i64 %297, 64
  %add394 = add i64 %add393, 112
  %298 = inttoptr i64 %add394 to ptr
  %call395 = call <2 x i64> @_mm_loadu_si128(ptr noundef %298)
  %call396 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call395)
  store <4 x i64> %call396, ptr %vk7x0123456789ABCDEF, align 32, !tbaa !12
  %299 = load ptr, ptr %i7, align 8, !tbaa !9
  %add.ptr397 = getelementptr inbounds i8, ptr %299, i64 16
  store ptr %add.ptr397, ptr %i7, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod7x0123456789ABCDEF) #6
  %300 = load <4 x i64>, ptr %vi7x0123456789ABCDEF, align 32, !tbaa !12
  %301 = load <4 x i64>, ptr %vk7x0123456789ABCDEF, align 32, !tbaa !12
  %call398 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %300, <4 x i64> noundef %301)
  store <4 x i64> %call398, ptr %vprod7x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x89ABCDEF) #6
  %302 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF, align 32, !tbaa !12
  %extract399 = shufflevector <4 x i64> %302, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract399, ptr %vprod7x89ABCDEF, align 16, !tbaa !12
  %303 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %304 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF, align 32, !tbaa !12
  %call400 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %304)
  %call401 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call400)
  %call402 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %303, <4 x i64> noundef %call401)
  store <4 x i64> %call402, ptr %vacc01234567, align 32, !tbaa !12
  %305 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %306 = load <2 x i64>, ptr %vprod7x89ABCDEF, align 16, !tbaa !12
  %call403 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %306)
  %call404 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %305, <4 x i64> noundef %call403)
  store <4 x i64> %call404, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x0123456789ABCDEF) #6
  %307 = load ptr, ptr %i8, align 8, !tbaa !9
  %call405 = call <2 x i64> @_mm_loadu_si128(ptr noundef %307)
  %call406 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call405)
  store <4 x i64> %call406, ptr %vi8x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x0123456789ABCDEF) #6
  %308 = load ptr, ptr %w, align 8, !tbaa !9
  %309 = ptrtoint ptr %308 to i64
  %add407 = add i64 %309, 64
  %add408 = add i64 %add407, 128
  %310 = inttoptr i64 %add408 to ptr
  %call409 = call <2 x i64> @_mm_loadu_si128(ptr noundef %310)
  %call410 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call409)
  store <4 x i64> %call410, ptr %vk8x0123456789ABCDEF, align 32, !tbaa !12
  %311 = load ptr, ptr %i8, align 8, !tbaa !9
  %add.ptr411 = getelementptr inbounds i8, ptr %311, i64 16
  store ptr %add.ptr411, ptr %i8, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod8x0123456789ABCDEF) #6
  %312 = load <4 x i64>, ptr %vi8x0123456789ABCDEF, align 32, !tbaa !12
  %313 = load <4 x i64>, ptr %vk8x0123456789ABCDEF, align 32, !tbaa !12
  %call412 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %312, <4 x i64> noundef %313)
  store <4 x i64> %call412, ptr %vprod8x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x89ABCDEF) #6
  %314 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF, align 32, !tbaa !12
  %extract413 = shufflevector <4 x i64> %314, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract413, ptr %vprod8x89ABCDEF, align 16, !tbaa !12
  %315 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %316 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF, align 32, !tbaa !12
  %call414 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %316)
  %call415 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call414)
  %call416 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %315, <4 x i64> noundef %call415)
  store <4 x i64> %call416, ptr %vacc01234567, align 32, !tbaa !12
  %317 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %318 = load <2 x i64>, ptr %vprod8x89ABCDEF, align 16, !tbaa !12
  %call417 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %318)
  %call418 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %317, <4 x i64> noundef %call417)
  store <4 x i64> %call418, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x0123456789ABCDEF) #6
  %319 = load ptr, ptr %i9, align 8, !tbaa !9
  %call419 = call <2 x i64> @_mm_loadu_si128(ptr noundef %319)
  %call420 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call419)
  store <4 x i64> %call420, ptr %vi9x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x0123456789ABCDEF) #6
  %320 = load ptr, ptr %w, align 8, !tbaa !9
  %321 = ptrtoint ptr %320 to i64
  %add421 = add i64 %321, 64
  %add422 = add i64 %add421, 144
  %322 = inttoptr i64 %add422 to ptr
  %call423 = call <2 x i64> @_mm_loadu_si128(ptr noundef %322)
  %call424 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call423)
  store <4 x i64> %call424, ptr %vk9x0123456789ABCDEF, align 32, !tbaa !12
  %323 = load ptr, ptr %i9, align 8, !tbaa !9
  %add.ptr425 = getelementptr inbounds i8, ptr %323, i64 16
  store ptr %add.ptr425, ptr %i9, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod9x0123456789ABCDEF) #6
  %324 = load <4 x i64>, ptr %vi9x0123456789ABCDEF, align 32, !tbaa !12
  %325 = load <4 x i64>, ptr %vk9x0123456789ABCDEF, align 32, !tbaa !12
  %call426 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %324, <4 x i64> noundef %325)
  store <4 x i64> %call426, ptr %vprod9x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod9x89ABCDEF) #6
  %326 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF, align 32, !tbaa !12
  %extract427 = shufflevector <4 x i64> %326, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract427, ptr %vprod9x89ABCDEF, align 16, !tbaa !12
  %327 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %328 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF, align 32, !tbaa !12
  %call428 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %328)
  %call429 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call428)
  %call430 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %327, <4 x i64> noundef %call429)
  store <4 x i64> %call430, ptr %vacc01234567, align 32, !tbaa !12
  %329 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %330 = load <2 x i64>, ptr %vprod9x89ABCDEF, align 16, !tbaa !12
  %call431 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %330)
  %call432 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %329, <4 x i64> noundef %call431)
  store <4 x i64> %call432, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x0123456789ABCDEF) #6
  %331 = load ptr, ptr %i10, align 8, !tbaa !9
  %call433 = call <2 x i64> @_mm_loadu_si128(ptr noundef %331)
  %call434 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call433)
  store <4 x i64> %call434, ptr %vi10x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x0123456789ABCDEF) #6
  %332 = load ptr, ptr %w, align 8, !tbaa !9
  %333 = ptrtoint ptr %332 to i64
  %add435 = add i64 %333, 64
  %add436 = add i64 %add435, 160
  %334 = inttoptr i64 %add436 to ptr
  %call437 = call <2 x i64> @_mm_loadu_si128(ptr noundef %334)
  %call438 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call437)
  store <4 x i64> %call438, ptr %vk10x0123456789ABCDEF, align 32, !tbaa !12
  %335 = load ptr, ptr %i10, align 8, !tbaa !9
  %add.ptr439 = getelementptr inbounds i8, ptr %335, i64 16
  store ptr %add.ptr439, ptr %i10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod10x0123456789ABCDEF) #6
  %336 = load <4 x i64>, ptr %vi10x0123456789ABCDEF, align 32, !tbaa !12
  %337 = load <4 x i64>, ptr %vk10x0123456789ABCDEF, align 32, !tbaa !12
  %call440 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %336, <4 x i64> noundef %337)
  store <4 x i64> %call440, ptr %vprod10x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod10x89ABCDEF) #6
  %338 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF, align 32, !tbaa !12
  %extract441 = shufflevector <4 x i64> %338, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract441, ptr %vprod10x89ABCDEF, align 16, !tbaa !12
  %339 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %340 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF, align 32, !tbaa !12
  %call442 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %340)
  %call443 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call442)
  %call444 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %339, <4 x i64> noundef %call443)
  store <4 x i64> %call444, ptr %vacc01234567, align 32, !tbaa !12
  %341 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %342 = load <2 x i64>, ptr %vprod10x89ABCDEF, align 16, !tbaa !12
  %call445 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %342)
  %call446 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %341, <4 x i64> noundef %call445)
  store <4 x i64> %call446, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x0123456789ABCDEF) #6
  %343 = load ptr, ptr %i11, align 8, !tbaa !9
  %call447 = call <2 x i64> @_mm_loadu_si128(ptr noundef %343)
  %call448 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call447)
  store <4 x i64> %call448, ptr %vi11x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x0123456789ABCDEF) #6
  %344 = load ptr, ptr %w, align 8, !tbaa !9
  %345 = ptrtoint ptr %344 to i64
  %add449 = add i64 %345, 64
  %add450 = add i64 %add449, 176
  %346 = inttoptr i64 %add450 to ptr
  %call451 = call <2 x i64> @_mm_loadu_si128(ptr noundef %346)
  %call452 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call451)
  store <4 x i64> %call452, ptr %vk11x0123456789ABCDEF, align 32, !tbaa !12
  %347 = load ptr, ptr %i11, align 8, !tbaa !9
  %add.ptr453 = getelementptr inbounds i8, ptr %347, i64 16
  store ptr %add.ptr453, ptr %i11, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod11x0123456789ABCDEF) #6
  %348 = load <4 x i64>, ptr %vi11x0123456789ABCDEF, align 32, !tbaa !12
  %349 = load <4 x i64>, ptr %vk11x0123456789ABCDEF, align 32, !tbaa !12
  %call454 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %348, <4 x i64> noundef %349)
  store <4 x i64> %call454, ptr %vprod11x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod11x89ABCDEF) #6
  %350 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF, align 32, !tbaa !12
  %extract455 = shufflevector <4 x i64> %350, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract455, ptr %vprod11x89ABCDEF, align 16, !tbaa !12
  %351 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %352 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF, align 32, !tbaa !12
  %call456 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %352)
  %call457 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call456)
  %call458 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %351, <4 x i64> noundef %call457)
  store <4 x i64> %call458, ptr %vacc01234567, align 32, !tbaa !12
  %353 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %354 = load <2 x i64>, ptr %vprod11x89ABCDEF, align 16, !tbaa !12
  %call459 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %354)
  %call460 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %353, <4 x i64> noundef %call459)
  store <4 x i64> %call460, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x0123456789ABCDEF) #6
  %355 = load ptr, ptr %i12, align 8, !tbaa !9
  %call461 = call <2 x i64> @_mm_loadu_si128(ptr noundef %355)
  %call462 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call461)
  store <4 x i64> %call462, ptr %vi12x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x0123456789ABCDEF) #6
  %356 = load ptr, ptr %w, align 8, !tbaa !9
  %357 = ptrtoint ptr %356 to i64
  %add463 = add i64 %357, 64
  %add464 = add i64 %add463, 192
  %358 = inttoptr i64 %add464 to ptr
  %call465 = call <2 x i64> @_mm_loadu_si128(ptr noundef %358)
  %call466 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call465)
  store <4 x i64> %call466, ptr %vk12x0123456789ABCDEF, align 32, !tbaa !12
  %359 = load ptr, ptr %i12, align 8, !tbaa !9
  %add.ptr467 = getelementptr inbounds i8, ptr %359, i64 16
  store ptr %add.ptr467, ptr %i12, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod12x0123456789ABCDEF) #6
  %360 = load <4 x i64>, ptr %vi12x0123456789ABCDEF, align 32, !tbaa !12
  %361 = load <4 x i64>, ptr %vk12x0123456789ABCDEF, align 32, !tbaa !12
  %call468 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %360, <4 x i64> noundef %361)
  store <4 x i64> %call468, ptr %vprod12x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod12x89ABCDEF) #6
  %362 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF, align 32, !tbaa !12
  %extract469 = shufflevector <4 x i64> %362, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract469, ptr %vprod12x89ABCDEF, align 16, !tbaa !12
  %363 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %364 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF, align 32, !tbaa !12
  %call470 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %364)
  %call471 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call470)
  %call472 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %363, <4 x i64> noundef %call471)
  store <4 x i64> %call472, ptr %vacc01234567, align 32, !tbaa !12
  %365 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %366 = load <2 x i64>, ptr %vprod12x89ABCDEF, align 16, !tbaa !12
  %call473 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %366)
  %call474 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %365, <4 x i64> noundef %call473)
  store <4 x i64> %call474, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x0123456789ABCDEF) #6
  %367 = load ptr, ptr %i13, align 8, !tbaa !9
  %call475 = call <2 x i64> @_mm_loadu_si128(ptr noundef %367)
  %call476 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call475)
  store <4 x i64> %call476, ptr %vi13x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x0123456789ABCDEF) #6
  %368 = load ptr, ptr %w, align 8, !tbaa !9
  %369 = ptrtoint ptr %368 to i64
  %add477 = add i64 %369, 64
  %add478 = add i64 %add477, 208
  %370 = inttoptr i64 %add478 to ptr
  %call479 = call <2 x i64> @_mm_loadu_si128(ptr noundef %370)
  %call480 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call479)
  store <4 x i64> %call480, ptr %vk13x0123456789ABCDEF, align 32, !tbaa !12
  %371 = load ptr, ptr %i13, align 8, !tbaa !9
  %add.ptr481 = getelementptr inbounds i8, ptr %371, i64 16
  store ptr %add.ptr481, ptr %i13, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod13x0123456789ABCDEF) #6
  %372 = load <4 x i64>, ptr %vi13x0123456789ABCDEF, align 32, !tbaa !12
  %373 = load <4 x i64>, ptr %vk13x0123456789ABCDEF, align 32, !tbaa !12
  %call482 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %372, <4 x i64> noundef %373)
  store <4 x i64> %call482, ptr %vprod13x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod13x89ABCDEF) #6
  %374 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF, align 32, !tbaa !12
  %extract483 = shufflevector <4 x i64> %374, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract483, ptr %vprod13x89ABCDEF, align 16, !tbaa !12
  %375 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %376 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF, align 32, !tbaa !12
  %call484 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %376)
  %call485 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call484)
  %call486 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %375, <4 x i64> noundef %call485)
  store <4 x i64> %call486, ptr %vacc01234567, align 32, !tbaa !12
  %377 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %378 = load <2 x i64>, ptr %vprod13x89ABCDEF, align 16, !tbaa !12
  %call487 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %378)
  %call488 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %377, <4 x i64> noundef %call487)
  store <4 x i64> %call488, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x0123456789ABCDEF) #6
  %379 = load ptr, ptr %i14, align 8, !tbaa !9
  %call489 = call <2 x i64> @_mm_loadu_si128(ptr noundef %379)
  %call490 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call489)
  store <4 x i64> %call490, ptr %vi14x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x0123456789ABCDEF) #6
  %380 = load ptr, ptr %w, align 8, !tbaa !9
  %381 = ptrtoint ptr %380 to i64
  %add491 = add i64 %381, 64
  %add492 = add i64 %add491, 224
  %382 = inttoptr i64 %add492 to ptr
  %call493 = call <2 x i64> @_mm_loadu_si128(ptr noundef %382)
  %call494 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call493)
  store <4 x i64> %call494, ptr %vk14x0123456789ABCDEF, align 32, !tbaa !12
  %383 = load ptr, ptr %i14, align 8, !tbaa !9
  %add.ptr495 = getelementptr inbounds i8, ptr %383, i64 16
  store ptr %add.ptr495, ptr %i14, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod14x0123456789ABCDEF) #6
  %384 = load <4 x i64>, ptr %vi14x0123456789ABCDEF, align 32, !tbaa !12
  %385 = load <4 x i64>, ptr %vk14x0123456789ABCDEF, align 32, !tbaa !12
  %call496 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %384, <4 x i64> noundef %385)
  store <4 x i64> %call496, ptr %vprod14x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod14x89ABCDEF) #6
  %386 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF, align 32, !tbaa !12
  %extract497 = shufflevector <4 x i64> %386, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract497, ptr %vprod14x89ABCDEF, align 16, !tbaa !12
  %387 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %388 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF, align 32, !tbaa !12
  %call498 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %388)
  %call499 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call498)
  %call500 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %387, <4 x i64> noundef %call499)
  store <4 x i64> %call500, ptr %vacc01234567, align 32, !tbaa !12
  %389 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %390 = load <2 x i64>, ptr %vprod14x89ABCDEF, align 16, !tbaa !12
  %call501 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %390)
  %call502 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %389, <4 x i64> noundef %call501)
  store <4 x i64> %call502, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x0123456789ABCDEF) #6
  %391 = load ptr, ptr %i15, align 8, !tbaa !9
  %call503 = call <2 x i64> @_mm_loadu_si128(ptr noundef %391)
  %call504 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call503)
  store <4 x i64> %call504, ptr %vi15x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x0123456789ABCDEF) #6
  %392 = load ptr, ptr %w, align 8, !tbaa !9
  %393 = ptrtoint ptr %392 to i64
  %add505 = add i64 %393, 64
  %add506 = add i64 %add505, 240
  %394 = inttoptr i64 %add506 to ptr
  %call507 = call <2 x i64> @_mm_loadu_si128(ptr noundef %394)
  %call508 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call507)
  store <4 x i64> %call508, ptr %vk15x0123456789ABCDEF, align 32, !tbaa !12
  %395 = load ptr, ptr %i15, align 8, !tbaa !9
  %add.ptr509 = getelementptr inbounds i8, ptr %395, i64 16
  store ptr %add.ptr509, ptr %i15, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod15x0123456789ABCDEF) #6
  %396 = load <4 x i64>, ptr %vi15x0123456789ABCDEF, align 32, !tbaa !12
  %397 = load <4 x i64>, ptr %vk15x0123456789ABCDEF, align 32, !tbaa !12
  %call510 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %396, <4 x i64> noundef %397)
  store <4 x i64> %call510, ptr %vprod15x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod15x89ABCDEF) #6
  %398 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF, align 32, !tbaa !12
  %extract511 = shufflevector <4 x i64> %398, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract511, ptr %vprod15x89ABCDEF, align 16, !tbaa !12
  %399 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %400 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF, align 32, !tbaa !12
  %call512 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %400)
  %call513 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call512)
  %call514 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %399, <4 x i64> noundef %call513)
  store <4 x i64> %call514, ptr %vacc01234567, align 32, !tbaa !12
  %401 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %402 = load <2 x i64>, ptr %vprod15x89ABCDEF, align 16, !tbaa !12
  %call515 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %402)
  %call516 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %401, <4 x i64> noundef %call515)
  store <4 x i64> %call516, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x0123456789ABCDEF) #6
  %403 = load ptr, ptr %i16, align 8, !tbaa !9
  %call517 = call <2 x i64> @_mm_loadu_si128(ptr noundef %403)
  %call518 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call517)
  store <4 x i64> %call518, ptr %vi16x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x0123456789ABCDEF) #6
  %404 = load ptr, ptr %w, align 8, !tbaa !9
  %405 = ptrtoint ptr %404 to i64
  %add519 = add i64 %405, 64
  %add520 = add i64 %add519, 256
  %406 = inttoptr i64 %add520 to ptr
  %call521 = call <2 x i64> @_mm_loadu_si128(ptr noundef %406)
  %call522 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call521)
  store <4 x i64> %call522, ptr %vk16x0123456789ABCDEF, align 32, !tbaa !12
  %407 = load ptr, ptr %i16, align 8, !tbaa !9
  %add.ptr523 = getelementptr inbounds i8, ptr %407, i64 16
  store ptr %add.ptr523, ptr %i16, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod16x0123456789ABCDEF) #6
  %408 = load <4 x i64>, ptr %vi16x0123456789ABCDEF, align 32, !tbaa !12
  %409 = load <4 x i64>, ptr %vk16x0123456789ABCDEF, align 32, !tbaa !12
  %call524 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %408, <4 x i64> noundef %409)
  store <4 x i64> %call524, ptr %vprod16x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod16x89ABCDEF) #6
  %410 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF, align 32, !tbaa !12
  %extract525 = shufflevector <4 x i64> %410, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract525, ptr %vprod16x89ABCDEF, align 16, !tbaa !12
  %411 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %412 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF, align 32, !tbaa !12
  %call526 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %412)
  %call527 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call526)
  %call528 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %411, <4 x i64> noundef %call527)
  store <4 x i64> %call528, ptr %vacc01234567, align 32, !tbaa !12
  %413 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %414 = load <2 x i64>, ptr %vprod16x89ABCDEF, align 16, !tbaa !12
  %call529 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %414)
  %call530 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %413, <4 x i64> noundef %call529)
  store <4 x i64> %call530, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x0123456789ABCDEF) #6
  %415 = load ptr, ptr %i17, align 8, !tbaa !9
  %call531 = call <2 x i64> @_mm_loadu_si128(ptr noundef %415)
  %call532 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call531)
  store <4 x i64> %call532, ptr %vi17x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x0123456789ABCDEF) #6
  %416 = load ptr, ptr %w, align 8, !tbaa !9
  %417 = ptrtoint ptr %416 to i64
  %add533 = add i64 %417, 64
  %add534 = add i64 %add533, 272
  %418 = inttoptr i64 %add534 to ptr
  %call535 = call <2 x i64> @_mm_loadu_si128(ptr noundef %418)
  %call536 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call535)
  store <4 x i64> %call536, ptr %vk17x0123456789ABCDEF, align 32, !tbaa !12
  %419 = load ptr, ptr %i17, align 8, !tbaa !9
  %add.ptr537 = getelementptr inbounds i8, ptr %419, i64 16
  store ptr %add.ptr537, ptr %i17, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod17x0123456789ABCDEF) #6
  %420 = load <4 x i64>, ptr %vi17x0123456789ABCDEF, align 32, !tbaa !12
  %421 = load <4 x i64>, ptr %vk17x0123456789ABCDEF, align 32, !tbaa !12
  %call538 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %420, <4 x i64> noundef %421)
  store <4 x i64> %call538, ptr %vprod17x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod17x89ABCDEF) #6
  %422 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF, align 32, !tbaa !12
  %extract539 = shufflevector <4 x i64> %422, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract539, ptr %vprod17x89ABCDEF, align 16, !tbaa !12
  %423 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %424 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF, align 32, !tbaa !12
  %call540 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %424)
  %call541 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call540)
  %call542 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %423, <4 x i64> noundef %call541)
  store <4 x i64> %call542, ptr %vacc01234567, align 32, !tbaa !12
  %425 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %426 = load <2 x i64>, ptr %vprod17x89ABCDEF, align 16, !tbaa !12
  %call543 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %426)
  %call544 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %425, <4 x i64> noundef %call543)
  store <4 x i64> %call544, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x0123456789ABCDEF) #6
  %427 = load ptr, ptr %i18, align 8, !tbaa !9
  %call545 = call <2 x i64> @_mm_loadu_si128(ptr noundef %427)
  %call546 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call545)
  store <4 x i64> %call546, ptr %vi18x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x0123456789ABCDEF) #6
  %428 = load ptr, ptr %w, align 8, !tbaa !9
  %429 = ptrtoint ptr %428 to i64
  %add547 = add i64 %429, 64
  %add548 = add i64 %add547, 288
  %430 = inttoptr i64 %add548 to ptr
  %call549 = call <2 x i64> @_mm_loadu_si128(ptr noundef %430)
  %call550 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call549)
  store <4 x i64> %call550, ptr %vk18x0123456789ABCDEF, align 32, !tbaa !12
  %431 = load ptr, ptr %i18, align 8, !tbaa !9
  %add.ptr551 = getelementptr inbounds i8, ptr %431, i64 16
  store ptr %add.ptr551, ptr %i18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod18x0123456789ABCDEF) #6
  %432 = load <4 x i64>, ptr %vi18x0123456789ABCDEF, align 32, !tbaa !12
  %433 = load <4 x i64>, ptr %vk18x0123456789ABCDEF, align 32, !tbaa !12
  %call552 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %432, <4 x i64> noundef %433)
  store <4 x i64> %call552, ptr %vprod18x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod18x89ABCDEF) #6
  %434 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF, align 32, !tbaa !12
  %extract553 = shufflevector <4 x i64> %434, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract553, ptr %vprod18x89ABCDEF, align 16, !tbaa !12
  %435 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %436 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF, align 32, !tbaa !12
  %call554 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %436)
  %call555 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call554)
  %call556 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %435, <4 x i64> noundef %call555)
  store <4 x i64> %call556, ptr %vacc01234567, align 32, !tbaa !12
  %437 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %438 = load <2 x i64>, ptr %vprod18x89ABCDEF, align 16, !tbaa !12
  %call557 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %438)
  %call558 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %437, <4 x i64> noundef %call557)
  store <4 x i64> %call558, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x0123456789ABCDEF) #6
  %439 = load ptr, ptr %i19, align 8, !tbaa !9
  %call559 = call <2 x i64> @_mm_loadu_si128(ptr noundef %439)
  %call560 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call559)
  store <4 x i64> %call560, ptr %vi19x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x0123456789ABCDEF) #6
  %440 = load ptr, ptr %w, align 8, !tbaa !9
  %441 = ptrtoint ptr %440 to i64
  %add561 = add i64 %441, 64
  %add562 = add i64 %add561, 304
  %442 = inttoptr i64 %add562 to ptr
  %call563 = call <2 x i64> @_mm_loadu_si128(ptr noundef %442)
  %call564 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call563)
  store <4 x i64> %call564, ptr %vk19x0123456789ABCDEF, align 32, !tbaa !12
  %443 = load ptr, ptr %i19, align 8, !tbaa !9
  %add.ptr565 = getelementptr inbounds i8, ptr %443, i64 16
  store ptr %add.ptr565, ptr %i19, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod19x0123456789ABCDEF) #6
  %444 = load <4 x i64>, ptr %vi19x0123456789ABCDEF, align 32, !tbaa !12
  %445 = load <4 x i64>, ptr %vk19x0123456789ABCDEF, align 32, !tbaa !12
  %call566 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %444, <4 x i64> noundef %445)
  store <4 x i64> %call566, ptr %vprod19x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod19x89ABCDEF) #6
  %446 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF, align 32, !tbaa !12
  %extract567 = shufflevector <4 x i64> %446, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract567, ptr %vprod19x89ABCDEF, align 16, !tbaa !12
  %447 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %448 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF, align 32, !tbaa !12
  %call568 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %448)
  %call569 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call568)
  %call570 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %447, <4 x i64> noundef %call569)
  store <4 x i64> %call570, ptr %vacc01234567, align 32, !tbaa !12
  %449 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %450 = load <2 x i64>, ptr %vprod19x89ABCDEF, align 16, !tbaa !12
  %call571 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %450)
  %call572 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %449, <4 x i64> noundef %call571)
  store <4 x i64> %call572, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x0123456789ABCDEF) #6
  %451 = load ptr, ptr %i20, align 8, !tbaa !9
  %call573 = call <2 x i64> @_mm_loadu_si128(ptr noundef %451)
  %call574 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call573)
  store <4 x i64> %call574, ptr %vi20x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x0123456789ABCDEF) #6
  %452 = load ptr, ptr %w, align 8, !tbaa !9
  %453 = ptrtoint ptr %452 to i64
  %add575 = add i64 %453, 64
  %add576 = add i64 %add575, 320
  %454 = inttoptr i64 %add576 to ptr
  %call577 = call <2 x i64> @_mm_loadu_si128(ptr noundef %454)
  %call578 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call577)
  store <4 x i64> %call578, ptr %vk20x0123456789ABCDEF, align 32, !tbaa !12
  %455 = load ptr, ptr %i20, align 8, !tbaa !9
  %add.ptr579 = getelementptr inbounds i8, ptr %455, i64 16
  store ptr %add.ptr579, ptr %i20, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod20x0123456789ABCDEF) #6
  %456 = load <4 x i64>, ptr %vi20x0123456789ABCDEF, align 32, !tbaa !12
  %457 = load <4 x i64>, ptr %vk20x0123456789ABCDEF, align 32, !tbaa !12
  %call580 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %456, <4 x i64> noundef %457)
  store <4 x i64> %call580, ptr %vprod20x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod20x89ABCDEF) #6
  %458 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF, align 32, !tbaa !12
  %extract581 = shufflevector <4 x i64> %458, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract581, ptr %vprod20x89ABCDEF, align 16, !tbaa !12
  %459 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %460 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF, align 32, !tbaa !12
  %call582 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %460)
  %call583 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call582)
  %call584 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %459, <4 x i64> noundef %call583)
  store <4 x i64> %call584, ptr %vacc01234567, align 32, !tbaa !12
  %461 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %462 = load <2 x i64>, ptr %vprod20x89ABCDEF, align 16, !tbaa !12
  %call585 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %462)
  %call586 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %461, <4 x i64> noundef %call585)
  store <4 x i64> %call586, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x0123456789ABCDEF) #6
  %463 = load ptr, ptr %i21, align 8, !tbaa !9
  %call587 = call <2 x i64> @_mm_loadu_si128(ptr noundef %463)
  %call588 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call587)
  store <4 x i64> %call588, ptr %vi21x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x0123456789ABCDEF) #6
  %464 = load ptr, ptr %w, align 8, !tbaa !9
  %465 = ptrtoint ptr %464 to i64
  %add589 = add i64 %465, 64
  %add590 = add i64 %add589, 336
  %466 = inttoptr i64 %add590 to ptr
  %call591 = call <2 x i64> @_mm_loadu_si128(ptr noundef %466)
  %call592 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call591)
  store <4 x i64> %call592, ptr %vk21x0123456789ABCDEF, align 32, !tbaa !12
  %467 = load ptr, ptr %i21, align 8, !tbaa !9
  %add.ptr593 = getelementptr inbounds i8, ptr %467, i64 16
  store ptr %add.ptr593, ptr %i21, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod21x0123456789ABCDEF) #6
  %468 = load <4 x i64>, ptr %vi21x0123456789ABCDEF, align 32, !tbaa !12
  %469 = load <4 x i64>, ptr %vk21x0123456789ABCDEF, align 32, !tbaa !12
  %call594 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %468, <4 x i64> noundef %469)
  store <4 x i64> %call594, ptr %vprod21x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod21x89ABCDEF) #6
  %470 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF, align 32, !tbaa !12
  %extract595 = shufflevector <4 x i64> %470, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract595, ptr %vprod21x89ABCDEF, align 16, !tbaa !12
  %471 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %472 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF, align 32, !tbaa !12
  %call596 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %472)
  %call597 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call596)
  %call598 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %471, <4 x i64> noundef %call597)
  store <4 x i64> %call598, ptr %vacc01234567, align 32, !tbaa !12
  %473 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %474 = load <2 x i64>, ptr %vprod21x89ABCDEF, align 16, !tbaa !12
  %call599 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %474)
  %call600 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %473, <4 x i64> noundef %call599)
  store <4 x i64> %call600, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x0123456789ABCDEF) #6
  %475 = load ptr, ptr %i22, align 8, !tbaa !9
  %call601 = call <2 x i64> @_mm_loadu_si128(ptr noundef %475)
  %call602 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call601)
  store <4 x i64> %call602, ptr %vi22x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x0123456789ABCDEF) #6
  %476 = load ptr, ptr %w, align 8, !tbaa !9
  %477 = ptrtoint ptr %476 to i64
  %add603 = add i64 %477, 64
  %add604 = add i64 %add603, 352
  %478 = inttoptr i64 %add604 to ptr
  %call605 = call <2 x i64> @_mm_loadu_si128(ptr noundef %478)
  %call606 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call605)
  store <4 x i64> %call606, ptr %vk22x0123456789ABCDEF, align 32, !tbaa !12
  %479 = load ptr, ptr %i22, align 8, !tbaa !9
  %add.ptr607 = getelementptr inbounds i8, ptr %479, i64 16
  store ptr %add.ptr607, ptr %i22, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod22x0123456789ABCDEF) #6
  %480 = load <4 x i64>, ptr %vi22x0123456789ABCDEF, align 32, !tbaa !12
  %481 = load <4 x i64>, ptr %vk22x0123456789ABCDEF, align 32, !tbaa !12
  %call608 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %480, <4 x i64> noundef %481)
  store <4 x i64> %call608, ptr %vprod22x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod22x89ABCDEF) #6
  %482 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF, align 32, !tbaa !12
  %extract609 = shufflevector <4 x i64> %482, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract609, ptr %vprod22x89ABCDEF, align 16, !tbaa !12
  %483 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %484 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF, align 32, !tbaa !12
  %call610 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %484)
  %call611 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call610)
  %call612 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %483, <4 x i64> noundef %call611)
  store <4 x i64> %call612, ptr %vacc01234567, align 32, !tbaa !12
  %485 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %486 = load <2 x i64>, ptr %vprod22x89ABCDEF, align 16, !tbaa !12
  %call613 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %486)
  %call614 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %485, <4 x i64> noundef %call613)
  store <4 x i64> %call614, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x0123456789ABCDEF) #6
  %487 = load ptr, ptr %i23, align 8, !tbaa !9
  %call615 = call <2 x i64> @_mm_loadu_si128(ptr noundef %487)
  %call616 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call615)
  store <4 x i64> %call616, ptr %vi23x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x0123456789ABCDEF) #6
  %488 = load ptr, ptr %w, align 8, !tbaa !9
  %489 = ptrtoint ptr %488 to i64
  %add617 = add i64 %489, 64
  %add618 = add i64 %add617, 368
  %490 = inttoptr i64 %add618 to ptr
  %call619 = call <2 x i64> @_mm_loadu_si128(ptr noundef %490)
  %call620 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call619)
  store <4 x i64> %call620, ptr %vk23x0123456789ABCDEF, align 32, !tbaa !12
  %491 = load ptr, ptr %i23, align 8, !tbaa !9
  %add.ptr621 = getelementptr inbounds i8, ptr %491, i64 16
  store ptr %add.ptr621, ptr %i23, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod23x0123456789ABCDEF) #6
  %492 = load <4 x i64>, ptr %vi23x0123456789ABCDEF, align 32, !tbaa !12
  %493 = load <4 x i64>, ptr %vk23x0123456789ABCDEF, align 32, !tbaa !12
  %call622 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %492, <4 x i64> noundef %493)
  store <4 x i64> %call622, ptr %vprod23x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod23x89ABCDEF) #6
  %494 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF, align 32, !tbaa !12
  %extract623 = shufflevector <4 x i64> %494, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract623, ptr %vprod23x89ABCDEF, align 16, !tbaa !12
  %495 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %496 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF, align 32, !tbaa !12
  %call624 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %496)
  %call625 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call624)
  %call626 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %495, <4 x i64> noundef %call625)
  store <4 x i64> %call626, ptr %vacc01234567, align 32, !tbaa !12
  %497 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %498 = load <2 x i64>, ptr %vprod23x89ABCDEF, align 16, !tbaa !12
  %call627 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %498)
  %call628 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %497, <4 x i64> noundef %call627)
  store <4 x i64> %call628, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x0123456789ABCDEF) #6
  %499 = load ptr, ptr %i24, align 8, !tbaa !9
  %call629 = call <2 x i64> @_mm_loadu_si128(ptr noundef %499)
  %call630 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call629)
  store <4 x i64> %call630, ptr %vi24x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x0123456789ABCDEF) #6
  %500 = load ptr, ptr %w, align 8, !tbaa !9
  %501 = ptrtoint ptr %500 to i64
  %add631 = add i64 %501, 64
  %add632 = add i64 %add631, 384
  %502 = inttoptr i64 %add632 to ptr
  %call633 = call <2 x i64> @_mm_loadu_si128(ptr noundef %502)
  %call634 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call633)
  store <4 x i64> %call634, ptr %vk24x0123456789ABCDEF, align 32, !tbaa !12
  %503 = load ptr, ptr %i24, align 8, !tbaa !9
  %add.ptr635 = getelementptr inbounds i8, ptr %503, i64 16
  store ptr %add.ptr635, ptr %i24, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod24x0123456789ABCDEF) #6
  %504 = load <4 x i64>, ptr %vi24x0123456789ABCDEF, align 32, !tbaa !12
  %505 = load <4 x i64>, ptr %vk24x0123456789ABCDEF, align 32, !tbaa !12
  %call636 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %504, <4 x i64> noundef %505)
  store <4 x i64> %call636, ptr %vprod24x0123456789ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod24x89ABCDEF) #6
  %506 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF, align 32, !tbaa !12
  %extract637 = shufflevector <4 x i64> %506, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract637, ptr %vprod24x89ABCDEF, align 16, !tbaa !12
  %507 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %508 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF, align 32, !tbaa !12
  %call638 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %508)
  %call639 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call638)
  %call640 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %507, <4 x i64> noundef %call639)
  store <4 x i64> %call640, ptr %vacc01234567, align 32, !tbaa !12
  %509 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %510 = load <2 x i64>, ptr %vprod24x89ABCDEF, align 16, !tbaa !12
  %call641 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %510)
  %call642 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %509, <4 x i64> noundef %call641)
  store <4 x i64> %call642, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %511 = load ptr, ptr %w, align 8, !tbaa !9
  %512 = ptrtoint ptr %511 to i64
  %add643 = add i64 %512, 64
  %add644 = add i64 %add643, 400
  %513 = inttoptr i64 %add644 to ptr
  store ptr %513, ptr %w, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc01234567) #6
  %514 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %call645 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %514)
  store <8 x float> %call645, ptr %vfpacc01234567, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc89ABCDEF) #6
  %515 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %call646 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %515)
  store <8 x float> %call646, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale) #6
  %516 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale = getelementptr inbounds %struct.anon.4, ptr %516, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %scale, i64 0, i64 0
  %call647 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call647, ptr %vscale, align 32, !tbaa !12
  %517 = load <8 x float>, ptr %vfpacc01234567, align 32, !tbaa !12
  %518 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call648 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %517, <8 x float> noundef %518)
  store <8 x float> %call648, ptr %vfpacc01234567, align 32, !tbaa !12
  %519 = load <8 x float>, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %520 = load <8 x float>, ptr %vscale, align 32, !tbaa !12
  %call649 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %519, <8 x float> noundef %520)
  store <8 x float> %call649, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_max_less_zero_point) #6
  %521 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point = getelementptr inbounds %struct.anon.4, ptr %521, i32 0, i32 1
  %arraydecay650 = getelementptr inbounds [8 x float], ptr %output_max_less_zero_point, i64 0, i64 0
  %call651 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay650)
  store <8 x float> %call651, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %522 = load <8 x float>, ptr %vfpacc01234567, align 32, !tbaa !12
  %523 = load <8 x float>, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %call652 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %522, <8 x float> noundef %523)
  store <8 x float> %call652, ptr %vfpacc01234567, align 32, !tbaa !12
  %524 = load <8 x float>, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %525 = load <8 x float>, ptr %voutput_max_less_zero_point, align 32, !tbaa !12
  %call653 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %524, <8 x float> noundef %525)
  store <8 x float> %call653, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %526 = load <8 x float>, ptr %vfpacc01234567, align 32, !tbaa !12
  %call654 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %526)
  store <4 x i64> %call654, ptr %vacc01234567, align 32, !tbaa !12
  %527 = load <8 x float>, ptr %vfpacc89ABCDEF, align 32, !tbaa !12
  %call655 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %527)
  store <4 x i64> %call655, ptr %vacc89ABCDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_zero_point) #6
  %528 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point = getelementptr inbounds %struct.anon.4, ptr %528, i32 0, i32 2
  %arraydecay656 = getelementptr inbounds [16 x i16], ptr %output_zero_point, i64 0, i64 0
  %call657 = call <4 x i64> @_mm256_load_si256(ptr noundef %arraydecay656)
  store <4 x i64> %call657, ptr %voutput_zero_point, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vout012389AB4567CDEF) #6
  %529 = load <4 x i64>, ptr %vacc01234567, align 32, !tbaa !12
  %530 = load <4 x i64>, ptr %vacc89ABCDEF, align 32, !tbaa !12
  %call658 = call <4 x i64> @_mm256_packs_epi32(<4 x i64> noundef %529, <4 x i64> noundef %530)
  %531 = load <4 x i64>, ptr %voutput_zero_point, align 32, !tbaa !12
  %call659 = call <4 x i64> @_mm256_adds_epi16(<4 x i64> noundef %call658, <4 x i64> noundef %531)
  store <4 x i64> %call659, ptr %vout012389AB4567CDEF, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456789ABCDEF) #6
  %532 = load <4 x i64>, ptr %vout012389AB4567CDEF, align 32, !tbaa !12
  %call660 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %532)
  %533 = load <4 x i64>, ptr %vout012389AB4567CDEF, align 32, !tbaa !12
  %extract661 = shufflevector <4 x i64> %533, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call662 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %call660, <2 x i64> noundef %extract661)
  %534 = bitcast <2 x i64> %call662 to <4 x i32>
  %permil = shufflevector <4 x i32> %534, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %535 = bitcast <4 x i32> %permil to <2 x i64>
  store <2 x i64> %535, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min) #6
  %536 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min = getelementptr inbounds %struct.anon.4, ptr %536, i32 0, i32 3
  %arraydecay663 = getelementptr inbounds [32 x i8], ptr %output_min, i64 0, i64 0
  %call664 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay663)
  store <2 x i64> %call664, ptr %voutput_min, align 16, !tbaa !12
  %537 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  %538 = load <2 x i64>, ptr %voutput_min, align 16, !tbaa !12
  %call665 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %537, <2 x i64> noundef %538)
  store <2 x i64> %call665, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  %539 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %540 = load <2 x i64>, ptr %vout0123456789ABCDEF, align 16, !tbaa !12
  call void @_mm_storeu_si128(ptr noundef %539, <2 x i64> noundef %540)
  %541 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr666 = getelementptr inbounds i8, ptr %541, i64 16
  store ptr %add.ptr666, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vout012389AB4567CDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_max_less_zero_point) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod24x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod24x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod23x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod23x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod22x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod22x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod21x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod21x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod20x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod20x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod19x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod19x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod18x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod18x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod17x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod17x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod16x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod16x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod15x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod15x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod14x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod14x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod13x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod13x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod12x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod12x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod11x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod11x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod10x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod10x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod9x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod9x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod8x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod7x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod6x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod5x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod4x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod3x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod2x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod1x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod0x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x0123456789ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %542 = load i64, ptr %c, align 8, !tbaa !5
  %sub = sub i64 %542, 16
  store i64 %sub, ptr %c, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %543 = load i64, ptr %c, align 8, !tbaa !5
  %cmp667 = icmp ne i64 %543, 0
  %lnot669 = xor i1 %cmp667, true
  %lnot671 = xor i1 %lnot669, true
  %lnot.ext672 = zext i1 %lnot671 to i32
  %conv673 = sext i32 %lnot.ext672 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv673, i64 0)
  %tobool674 = icmp ne i64 %expval, 0
  br i1 %tobool674, label %if.then675, label %if.end1170

if.then675:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc01234567676) #6
  %544 = load ptr, ptr %w, align 8, !tbaa !9
  %call677 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %544)
  store <4 x i64> %call677, ptr %vacc01234567676, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc89ABCDEF678) #6
  %545 = load ptr, ptr %w, align 8, !tbaa !9
  %546 = ptrtoint ptr %545 to i64
  %add679 = add i64 %546, 32
  %547 = inttoptr i64 %add679 to ptr
  %call680 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %547)
  store <4 x i64> %call680, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi0x0123456789ABCDEF681) #6
  %548 = load ptr, ptr %i0, align 8, !tbaa !9
  %call682 = call <2 x i64> @_mm_loadu_si128(ptr noundef %548)
  %call683 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call682)
  store <4 x i64> %call683, ptr %vi0x0123456789ABCDEF681, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk0x0123456789ABCDEF684) #6
  %549 = load ptr, ptr %w, align 8, !tbaa !9
  %550 = ptrtoint ptr %549 to i64
  %add685 = add i64 %550, 64
  %add686 = add i64 %add685, 0
  %551 = inttoptr i64 %add686 to ptr
  %call687 = call <2 x i64> @_mm_loadu_si128(ptr noundef %551)
  %call688 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call687)
  store <4 x i64> %call688, ptr %vk0x0123456789ABCDEF684, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod0x0123456789ABCDEF689) #6
  %552 = load <4 x i64>, ptr %vi0x0123456789ABCDEF681, align 32, !tbaa !12
  %553 = load <4 x i64>, ptr %vk0x0123456789ABCDEF684, align 32, !tbaa !12
  %call690 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %552, <4 x i64> noundef %553)
  store <4 x i64> %call690, ptr %vprod0x0123456789ABCDEF689, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod0x89ABCDEF691) #6
  %554 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF689, align 32, !tbaa !12
  %extract692 = shufflevector <4 x i64> %554, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract692, ptr %vprod0x89ABCDEF691, align 16, !tbaa !12
  %555 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %556 = load <4 x i64>, ptr %vprod0x0123456789ABCDEF689, align 32, !tbaa !12
  %call693 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %556)
  %call694 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call693)
  %call695 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %555, <4 x i64> noundef %call694)
  store <4 x i64> %call695, ptr %vacc01234567676, align 32, !tbaa !12
  %557 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %558 = load <2 x i64>, ptr %vprod0x89ABCDEF691, align 16, !tbaa !12
  %call696 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %558)
  %call697 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %557, <4 x i64> noundef %call696)
  store <4 x i64> %call697, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi1x0123456789ABCDEF698) #6
  %559 = load ptr, ptr %i1, align 8, !tbaa !9
  %call699 = call <2 x i64> @_mm_loadu_si128(ptr noundef %559)
  %call700 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call699)
  store <4 x i64> %call700, ptr %vi1x0123456789ABCDEF698, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk1x0123456789ABCDEF701) #6
  %560 = load ptr, ptr %w, align 8, !tbaa !9
  %561 = ptrtoint ptr %560 to i64
  %add702 = add i64 %561, 64
  %add703 = add i64 %add702, 16
  %562 = inttoptr i64 %add703 to ptr
  %call704 = call <2 x i64> @_mm_loadu_si128(ptr noundef %562)
  %call705 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call704)
  store <4 x i64> %call705, ptr %vk1x0123456789ABCDEF701, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod1x0123456789ABCDEF706) #6
  %563 = load <4 x i64>, ptr %vi1x0123456789ABCDEF698, align 32, !tbaa !12
  %564 = load <4 x i64>, ptr %vk1x0123456789ABCDEF701, align 32, !tbaa !12
  %call707 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %563, <4 x i64> noundef %564)
  store <4 x i64> %call707, ptr %vprod1x0123456789ABCDEF706, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod1x89ABCDEF708) #6
  %565 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF706, align 32, !tbaa !12
  %extract709 = shufflevector <4 x i64> %565, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract709, ptr %vprod1x89ABCDEF708, align 16, !tbaa !12
  %566 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %567 = load <4 x i64>, ptr %vprod1x0123456789ABCDEF706, align 32, !tbaa !12
  %call710 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %567)
  %call711 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call710)
  %call712 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %566, <4 x i64> noundef %call711)
  store <4 x i64> %call712, ptr %vacc01234567676, align 32, !tbaa !12
  %568 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %569 = load <2 x i64>, ptr %vprod1x89ABCDEF708, align 16, !tbaa !12
  %call713 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %569)
  %call714 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %568, <4 x i64> noundef %call713)
  store <4 x i64> %call714, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi2x0123456789ABCDEF715) #6
  %570 = load ptr, ptr %i2, align 8, !tbaa !9
  %call716 = call <2 x i64> @_mm_loadu_si128(ptr noundef %570)
  %call717 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call716)
  store <4 x i64> %call717, ptr %vi2x0123456789ABCDEF715, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk2x0123456789ABCDEF718) #6
  %571 = load ptr, ptr %w, align 8, !tbaa !9
  %572 = ptrtoint ptr %571 to i64
  %add719 = add i64 %572, 64
  %add720 = add i64 %add719, 32
  %573 = inttoptr i64 %add720 to ptr
  %call721 = call <2 x i64> @_mm_loadu_si128(ptr noundef %573)
  %call722 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call721)
  store <4 x i64> %call722, ptr %vk2x0123456789ABCDEF718, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod2x0123456789ABCDEF723) #6
  %574 = load <4 x i64>, ptr %vi2x0123456789ABCDEF715, align 32, !tbaa !12
  %575 = load <4 x i64>, ptr %vk2x0123456789ABCDEF718, align 32, !tbaa !12
  %call724 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %574, <4 x i64> noundef %575)
  store <4 x i64> %call724, ptr %vprod2x0123456789ABCDEF723, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod2x89ABCDEF725) #6
  %576 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF723, align 32, !tbaa !12
  %extract726 = shufflevector <4 x i64> %576, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract726, ptr %vprod2x89ABCDEF725, align 16, !tbaa !12
  %577 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %578 = load <4 x i64>, ptr %vprod2x0123456789ABCDEF723, align 32, !tbaa !12
  %call727 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %578)
  %call728 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call727)
  %call729 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %577, <4 x i64> noundef %call728)
  store <4 x i64> %call729, ptr %vacc01234567676, align 32, !tbaa !12
  %579 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %580 = load <2 x i64>, ptr %vprod2x89ABCDEF725, align 16, !tbaa !12
  %call730 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %580)
  %call731 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %579, <4 x i64> noundef %call730)
  store <4 x i64> %call731, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi3x0123456789ABCDEF732) #6
  %581 = load ptr, ptr %i3, align 8, !tbaa !9
  %call733 = call <2 x i64> @_mm_loadu_si128(ptr noundef %581)
  %call734 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call733)
  store <4 x i64> %call734, ptr %vi3x0123456789ABCDEF732, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk3x0123456789ABCDEF735) #6
  %582 = load ptr, ptr %w, align 8, !tbaa !9
  %583 = ptrtoint ptr %582 to i64
  %add736 = add i64 %583, 64
  %add737 = add i64 %add736, 48
  %584 = inttoptr i64 %add737 to ptr
  %call738 = call <2 x i64> @_mm_loadu_si128(ptr noundef %584)
  %call739 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call738)
  store <4 x i64> %call739, ptr %vk3x0123456789ABCDEF735, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod3x0123456789ABCDEF740) #6
  %585 = load <4 x i64>, ptr %vi3x0123456789ABCDEF732, align 32, !tbaa !12
  %586 = load <4 x i64>, ptr %vk3x0123456789ABCDEF735, align 32, !tbaa !12
  %call741 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %585, <4 x i64> noundef %586)
  store <4 x i64> %call741, ptr %vprod3x0123456789ABCDEF740, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod3x89ABCDEF742) #6
  %587 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF740, align 32, !tbaa !12
  %extract743 = shufflevector <4 x i64> %587, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract743, ptr %vprod3x89ABCDEF742, align 16, !tbaa !12
  %588 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %589 = load <4 x i64>, ptr %vprod3x0123456789ABCDEF740, align 32, !tbaa !12
  %call744 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %589)
  %call745 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call744)
  %call746 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %588, <4 x i64> noundef %call745)
  store <4 x i64> %call746, ptr %vacc01234567676, align 32, !tbaa !12
  %590 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %591 = load <2 x i64>, ptr %vprod3x89ABCDEF742, align 16, !tbaa !12
  %call747 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %591)
  %call748 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %590, <4 x i64> noundef %call747)
  store <4 x i64> %call748, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi4x0123456789ABCDEF749) #6
  %592 = load ptr, ptr %i4, align 8, !tbaa !9
  %call750 = call <2 x i64> @_mm_loadu_si128(ptr noundef %592)
  %call751 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call750)
  store <4 x i64> %call751, ptr %vi4x0123456789ABCDEF749, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk4x0123456789ABCDEF752) #6
  %593 = load ptr, ptr %w, align 8, !tbaa !9
  %594 = ptrtoint ptr %593 to i64
  %add753 = add i64 %594, 64
  %add754 = add i64 %add753, 64
  %595 = inttoptr i64 %add754 to ptr
  %call755 = call <2 x i64> @_mm_loadu_si128(ptr noundef %595)
  %call756 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call755)
  store <4 x i64> %call756, ptr %vk4x0123456789ABCDEF752, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod4x0123456789ABCDEF757) #6
  %596 = load <4 x i64>, ptr %vi4x0123456789ABCDEF749, align 32, !tbaa !12
  %597 = load <4 x i64>, ptr %vk4x0123456789ABCDEF752, align 32, !tbaa !12
  %call758 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %596, <4 x i64> noundef %597)
  store <4 x i64> %call758, ptr %vprod4x0123456789ABCDEF757, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod4x89ABCDEF759) #6
  %598 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF757, align 32, !tbaa !12
  %extract760 = shufflevector <4 x i64> %598, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract760, ptr %vprod4x89ABCDEF759, align 16, !tbaa !12
  %599 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %600 = load <4 x i64>, ptr %vprod4x0123456789ABCDEF757, align 32, !tbaa !12
  %call761 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %600)
  %call762 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call761)
  %call763 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %599, <4 x i64> noundef %call762)
  store <4 x i64> %call763, ptr %vacc01234567676, align 32, !tbaa !12
  %601 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %602 = load <2 x i64>, ptr %vprod4x89ABCDEF759, align 16, !tbaa !12
  %call764 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %602)
  %call765 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %601, <4 x i64> noundef %call764)
  store <4 x i64> %call765, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi5x0123456789ABCDEF766) #6
  %603 = load ptr, ptr %i5, align 8, !tbaa !9
  %call767 = call <2 x i64> @_mm_loadu_si128(ptr noundef %603)
  %call768 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call767)
  store <4 x i64> %call768, ptr %vi5x0123456789ABCDEF766, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk5x0123456789ABCDEF769) #6
  %604 = load ptr, ptr %w, align 8, !tbaa !9
  %605 = ptrtoint ptr %604 to i64
  %add770 = add i64 %605, 64
  %add771 = add i64 %add770, 80
  %606 = inttoptr i64 %add771 to ptr
  %call772 = call <2 x i64> @_mm_loadu_si128(ptr noundef %606)
  %call773 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call772)
  store <4 x i64> %call773, ptr %vk5x0123456789ABCDEF769, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod5x0123456789ABCDEF774) #6
  %607 = load <4 x i64>, ptr %vi5x0123456789ABCDEF766, align 32, !tbaa !12
  %608 = load <4 x i64>, ptr %vk5x0123456789ABCDEF769, align 32, !tbaa !12
  %call775 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %607, <4 x i64> noundef %608)
  store <4 x i64> %call775, ptr %vprod5x0123456789ABCDEF774, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod5x89ABCDEF776) #6
  %609 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF774, align 32, !tbaa !12
  %extract777 = shufflevector <4 x i64> %609, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract777, ptr %vprod5x89ABCDEF776, align 16, !tbaa !12
  %610 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %611 = load <4 x i64>, ptr %vprod5x0123456789ABCDEF774, align 32, !tbaa !12
  %call778 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %611)
  %call779 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call778)
  %call780 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %610, <4 x i64> noundef %call779)
  store <4 x i64> %call780, ptr %vacc01234567676, align 32, !tbaa !12
  %612 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %613 = load <2 x i64>, ptr %vprod5x89ABCDEF776, align 16, !tbaa !12
  %call781 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %613)
  %call782 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %612, <4 x i64> noundef %call781)
  store <4 x i64> %call782, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi6x0123456789ABCDEF783) #6
  %614 = load ptr, ptr %i6, align 8, !tbaa !9
  %call784 = call <2 x i64> @_mm_loadu_si128(ptr noundef %614)
  %call785 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call784)
  store <4 x i64> %call785, ptr %vi6x0123456789ABCDEF783, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk6x0123456789ABCDEF786) #6
  %615 = load ptr, ptr %w, align 8, !tbaa !9
  %616 = ptrtoint ptr %615 to i64
  %add787 = add i64 %616, 64
  %add788 = add i64 %add787, 96
  %617 = inttoptr i64 %add788 to ptr
  %call789 = call <2 x i64> @_mm_loadu_si128(ptr noundef %617)
  %call790 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call789)
  store <4 x i64> %call790, ptr %vk6x0123456789ABCDEF786, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod6x0123456789ABCDEF791) #6
  %618 = load <4 x i64>, ptr %vi6x0123456789ABCDEF783, align 32, !tbaa !12
  %619 = load <4 x i64>, ptr %vk6x0123456789ABCDEF786, align 32, !tbaa !12
  %call792 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %618, <4 x i64> noundef %619)
  store <4 x i64> %call792, ptr %vprod6x0123456789ABCDEF791, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod6x89ABCDEF793) #6
  %620 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF791, align 32, !tbaa !12
  %extract794 = shufflevector <4 x i64> %620, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract794, ptr %vprod6x89ABCDEF793, align 16, !tbaa !12
  %621 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %622 = load <4 x i64>, ptr %vprod6x0123456789ABCDEF791, align 32, !tbaa !12
  %call795 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %622)
  %call796 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call795)
  %call797 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %621, <4 x i64> noundef %call796)
  store <4 x i64> %call797, ptr %vacc01234567676, align 32, !tbaa !12
  %623 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %624 = load <2 x i64>, ptr %vprod6x89ABCDEF793, align 16, !tbaa !12
  %call798 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %624)
  %call799 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %623, <4 x i64> noundef %call798)
  store <4 x i64> %call799, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi7x0123456789ABCDEF800) #6
  %625 = load ptr, ptr %i7, align 8, !tbaa !9
  %call801 = call <2 x i64> @_mm_loadu_si128(ptr noundef %625)
  %call802 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call801)
  store <4 x i64> %call802, ptr %vi7x0123456789ABCDEF800, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk7x0123456789ABCDEF803) #6
  %626 = load ptr, ptr %w, align 8, !tbaa !9
  %627 = ptrtoint ptr %626 to i64
  %add804 = add i64 %627, 64
  %add805 = add i64 %add804, 112
  %628 = inttoptr i64 %add805 to ptr
  %call806 = call <2 x i64> @_mm_loadu_si128(ptr noundef %628)
  %call807 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call806)
  store <4 x i64> %call807, ptr %vk7x0123456789ABCDEF803, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod7x0123456789ABCDEF808) #6
  %629 = load <4 x i64>, ptr %vi7x0123456789ABCDEF800, align 32, !tbaa !12
  %630 = load <4 x i64>, ptr %vk7x0123456789ABCDEF803, align 32, !tbaa !12
  %call809 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %629, <4 x i64> noundef %630)
  store <4 x i64> %call809, ptr %vprod7x0123456789ABCDEF808, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod7x89ABCDEF810) #6
  %631 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF808, align 32, !tbaa !12
  %extract811 = shufflevector <4 x i64> %631, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract811, ptr %vprod7x89ABCDEF810, align 16, !tbaa !12
  %632 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %633 = load <4 x i64>, ptr %vprod7x0123456789ABCDEF808, align 32, !tbaa !12
  %call812 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %633)
  %call813 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call812)
  %call814 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %632, <4 x i64> noundef %call813)
  store <4 x i64> %call814, ptr %vacc01234567676, align 32, !tbaa !12
  %634 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %635 = load <2 x i64>, ptr %vprod7x89ABCDEF810, align 16, !tbaa !12
  %call815 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %635)
  %call816 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %634, <4 x i64> noundef %call815)
  store <4 x i64> %call816, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi8x0123456789ABCDEF817) #6
  %636 = load ptr, ptr %i8, align 8, !tbaa !9
  %call818 = call <2 x i64> @_mm_loadu_si128(ptr noundef %636)
  %call819 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call818)
  store <4 x i64> %call819, ptr %vi8x0123456789ABCDEF817, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk8x0123456789ABCDEF820) #6
  %637 = load ptr, ptr %w, align 8, !tbaa !9
  %638 = ptrtoint ptr %637 to i64
  %add821 = add i64 %638, 64
  %add822 = add i64 %add821, 128
  %639 = inttoptr i64 %add822 to ptr
  %call823 = call <2 x i64> @_mm_loadu_si128(ptr noundef %639)
  %call824 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call823)
  store <4 x i64> %call824, ptr %vk8x0123456789ABCDEF820, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod8x0123456789ABCDEF825) #6
  %640 = load <4 x i64>, ptr %vi8x0123456789ABCDEF817, align 32, !tbaa !12
  %641 = load <4 x i64>, ptr %vk8x0123456789ABCDEF820, align 32, !tbaa !12
  %call826 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %640, <4 x i64> noundef %641)
  store <4 x i64> %call826, ptr %vprod8x0123456789ABCDEF825, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod8x89ABCDEF827) #6
  %642 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF825, align 32, !tbaa !12
  %extract828 = shufflevector <4 x i64> %642, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract828, ptr %vprod8x89ABCDEF827, align 16, !tbaa !12
  %643 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %644 = load <4 x i64>, ptr %vprod8x0123456789ABCDEF825, align 32, !tbaa !12
  %call829 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %644)
  %call830 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call829)
  %call831 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %643, <4 x i64> noundef %call830)
  store <4 x i64> %call831, ptr %vacc01234567676, align 32, !tbaa !12
  %645 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %646 = load <2 x i64>, ptr %vprod8x89ABCDEF827, align 16, !tbaa !12
  %call832 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %646)
  %call833 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %645, <4 x i64> noundef %call832)
  store <4 x i64> %call833, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi9x0123456789ABCDEF834) #6
  %647 = load ptr, ptr %i9, align 8, !tbaa !9
  %call835 = call <2 x i64> @_mm_loadu_si128(ptr noundef %647)
  %call836 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call835)
  store <4 x i64> %call836, ptr %vi9x0123456789ABCDEF834, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk9x0123456789ABCDEF837) #6
  %648 = load ptr, ptr %w, align 8, !tbaa !9
  %649 = ptrtoint ptr %648 to i64
  %add838 = add i64 %649, 64
  %add839 = add i64 %add838, 144
  %650 = inttoptr i64 %add839 to ptr
  %call840 = call <2 x i64> @_mm_loadu_si128(ptr noundef %650)
  %call841 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call840)
  store <4 x i64> %call841, ptr %vk9x0123456789ABCDEF837, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod9x0123456789ABCDEF842) #6
  %651 = load <4 x i64>, ptr %vi9x0123456789ABCDEF834, align 32, !tbaa !12
  %652 = load <4 x i64>, ptr %vk9x0123456789ABCDEF837, align 32, !tbaa !12
  %call843 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %651, <4 x i64> noundef %652)
  store <4 x i64> %call843, ptr %vprod9x0123456789ABCDEF842, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod9x89ABCDEF844) #6
  %653 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF842, align 32, !tbaa !12
  %extract845 = shufflevector <4 x i64> %653, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract845, ptr %vprod9x89ABCDEF844, align 16, !tbaa !12
  %654 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %655 = load <4 x i64>, ptr %vprod9x0123456789ABCDEF842, align 32, !tbaa !12
  %call846 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %655)
  %call847 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call846)
  %call848 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %654, <4 x i64> noundef %call847)
  store <4 x i64> %call848, ptr %vacc01234567676, align 32, !tbaa !12
  %656 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %657 = load <2 x i64>, ptr %vprod9x89ABCDEF844, align 16, !tbaa !12
  %call849 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %657)
  %call850 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %656, <4 x i64> noundef %call849)
  store <4 x i64> %call850, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi10x0123456789ABCDEF851) #6
  %658 = load ptr, ptr %i10, align 8, !tbaa !9
  %call852 = call <2 x i64> @_mm_loadu_si128(ptr noundef %658)
  %call853 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call852)
  store <4 x i64> %call853, ptr %vi10x0123456789ABCDEF851, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk10x0123456789ABCDEF854) #6
  %659 = load ptr, ptr %w, align 8, !tbaa !9
  %660 = ptrtoint ptr %659 to i64
  %add855 = add i64 %660, 64
  %add856 = add i64 %add855, 160
  %661 = inttoptr i64 %add856 to ptr
  %call857 = call <2 x i64> @_mm_loadu_si128(ptr noundef %661)
  %call858 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call857)
  store <4 x i64> %call858, ptr %vk10x0123456789ABCDEF854, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod10x0123456789ABCDEF859) #6
  %662 = load <4 x i64>, ptr %vi10x0123456789ABCDEF851, align 32, !tbaa !12
  %663 = load <4 x i64>, ptr %vk10x0123456789ABCDEF854, align 32, !tbaa !12
  %call860 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %662, <4 x i64> noundef %663)
  store <4 x i64> %call860, ptr %vprod10x0123456789ABCDEF859, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod10x89ABCDEF861) #6
  %664 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF859, align 32, !tbaa !12
  %extract862 = shufflevector <4 x i64> %664, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract862, ptr %vprod10x89ABCDEF861, align 16, !tbaa !12
  %665 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %666 = load <4 x i64>, ptr %vprod10x0123456789ABCDEF859, align 32, !tbaa !12
  %call863 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %666)
  %call864 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call863)
  %call865 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %665, <4 x i64> noundef %call864)
  store <4 x i64> %call865, ptr %vacc01234567676, align 32, !tbaa !12
  %667 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %668 = load <2 x i64>, ptr %vprod10x89ABCDEF861, align 16, !tbaa !12
  %call866 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %668)
  %call867 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %667, <4 x i64> noundef %call866)
  store <4 x i64> %call867, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi11x0123456789ABCDEF868) #6
  %669 = load ptr, ptr %i11, align 8, !tbaa !9
  %call869 = call <2 x i64> @_mm_loadu_si128(ptr noundef %669)
  %call870 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call869)
  store <4 x i64> %call870, ptr %vi11x0123456789ABCDEF868, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk11x0123456789ABCDEF871) #6
  %670 = load ptr, ptr %w, align 8, !tbaa !9
  %671 = ptrtoint ptr %670 to i64
  %add872 = add i64 %671, 64
  %add873 = add i64 %add872, 176
  %672 = inttoptr i64 %add873 to ptr
  %call874 = call <2 x i64> @_mm_loadu_si128(ptr noundef %672)
  %call875 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call874)
  store <4 x i64> %call875, ptr %vk11x0123456789ABCDEF871, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod11x0123456789ABCDEF876) #6
  %673 = load <4 x i64>, ptr %vi11x0123456789ABCDEF868, align 32, !tbaa !12
  %674 = load <4 x i64>, ptr %vk11x0123456789ABCDEF871, align 32, !tbaa !12
  %call877 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %673, <4 x i64> noundef %674)
  store <4 x i64> %call877, ptr %vprod11x0123456789ABCDEF876, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod11x89ABCDEF878) #6
  %675 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF876, align 32, !tbaa !12
  %extract879 = shufflevector <4 x i64> %675, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract879, ptr %vprod11x89ABCDEF878, align 16, !tbaa !12
  %676 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %677 = load <4 x i64>, ptr %vprod11x0123456789ABCDEF876, align 32, !tbaa !12
  %call880 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %677)
  %call881 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call880)
  %call882 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %676, <4 x i64> noundef %call881)
  store <4 x i64> %call882, ptr %vacc01234567676, align 32, !tbaa !12
  %678 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %679 = load <2 x i64>, ptr %vprod11x89ABCDEF878, align 16, !tbaa !12
  %call883 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %679)
  %call884 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %678, <4 x i64> noundef %call883)
  store <4 x i64> %call884, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi12x0123456789ABCDEF885) #6
  %680 = load ptr, ptr %i12, align 8, !tbaa !9
  %call886 = call <2 x i64> @_mm_loadu_si128(ptr noundef %680)
  %call887 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call886)
  store <4 x i64> %call887, ptr %vi12x0123456789ABCDEF885, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk12x0123456789ABCDEF888) #6
  %681 = load ptr, ptr %w, align 8, !tbaa !9
  %682 = ptrtoint ptr %681 to i64
  %add889 = add i64 %682, 64
  %add890 = add i64 %add889, 192
  %683 = inttoptr i64 %add890 to ptr
  %call891 = call <2 x i64> @_mm_loadu_si128(ptr noundef %683)
  %call892 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call891)
  store <4 x i64> %call892, ptr %vk12x0123456789ABCDEF888, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod12x0123456789ABCDEF893) #6
  %684 = load <4 x i64>, ptr %vi12x0123456789ABCDEF885, align 32, !tbaa !12
  %685 = load <4 x i64>, ptr %vk12x0123456789ABCDEF888, align 32, !tbaa !12
  %call894 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %684, <4 x i64> noundef %685)
  store <4 x i64> %call894, ptr %vprod12x0123456789ABCDEF893, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod12x89ABCDEF895) #6
  %686 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF893, align 32, !tbaa !12
  %extract896 = shufflevector <4 x i64> %686, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract896, ptr %vprod12x89ABCDEF895, align 16, !tbaa !12
  %687 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %688 = load <4 x i64>, ptr %vprod12x0123456789ABCDEF893, align 32, !tbaa !12
  %call897 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %688)
  %call898 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call897)
  %call899 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %687, <4 x i64> noundef %call898)
  store <4 x i64> %call899, ptr %vacc01234567676, align 32, !tbaa !12
  %689 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %690 = load <2 x i64>, ptr %vprod12x89ABCDEF895, align 16, !tbaa !12
  %call900 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %690)
  %call901 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %689, <4 x i64> noundef %call900)
  store <4 x i64> %call901, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi13x0123456789ABCDEF902) #6
  %691 = load ptr, ptr %i13, align 8, !tbaa !9
  %call903 = call <2 x i64> @_mm_loadu_si128(ptr noundef %691)
  %call904 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call903)
  store <4 x i64> %call904, ptr %vi13x0123456789ABCDEF902, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk13x0123456789ABCDEF905) #6
  %692 = load ptr, ptr %w, align 8, !tbaa !9
  %693 = ptrtoint ptr %692 to i64
  %add906 = add i64 %693, 64
  %add907 = add i64 %add906, 208
  %694 = inttoptr i64 %add907 to ptr
  %call908 = call <2 x i64> @_mm_loadu_si128(ptr noundef %694)
  %call909 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call908)
  store <4 x i64> %call909, ptr %vk13x0123456789ABCDEF905, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod13x0123456789ABCDEF910) #6
  %695 = load <4 x i64>, ptr %vi13x0123456789ABCDEF902, align 32, !tbaa !12
  %696 = load <4 x i64>, ptr %vk13x0123456789ABCDEF905, align 32, !tbaa !12
  %call911 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %695, <4 x i64> noundef %696)
  store <4 x i64> %call911, ptr %vprod13x0123456789ABCDEF910, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod13x89ABCDEF912) #6
  %697 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF910, align 32, !tbaa !12
  %extract913 = shufflevector <4 x i64> %697, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract913, ptr %vprod13x89ABCDEF912, align 16, !tbaa !12
  %698 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %699 = load <4 x i64>, ptr %vprod13x0123456789ABCDEF910, align 32, !tbaa !12
  %call914 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %699)
  %call915 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call914)
  %call916 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %698, <4 x i64> noundef %call915)
  store <4 x i64> %call916, ptr %vacc01234567676, align 32, !tbaa !12
  %700 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %701 = load <2 x i64>, ptr %vprod13x89ABCDEF912, align 16, !tbaa !12
  %call917 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %701)
  %call918 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %700, <4 x i64> noundef %call917)
  store <4 x i64> %call918, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi14x0123456789ABCDEF919) #6
  %702 = load ptr, ptr %i14, align 8, !tbaa !9
  %call920 = call <2 x i64> @_mm_loadu_si128(ptr noundef %702)
  %call921 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call920)
  store <4 x i64> %call921, ptr %vi14x0123456789ABCDEF919, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk14x0123456789ABCDEF922) #6
  %703 = load ptr, ptr %w, align 8, !tbaa !9
  %704 = ptrtoint ptr %703 to i64
  %add923 = add i64 %704, 64
  %add924 = add i64 %add923, 224
  %705 = inttoptr i64 %add924 to ptr
  %call925 = call <2 x i64> @_mm_loadu_si128(ptr noundef %705)
  %call926 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call925)
  store <4 x i64> %call926, ptr %vk14x0123456789ABCDEF922, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod14x0123456789ABCDEF927) #6
  %706 = load <4 x i64>, ptr %vi14x0123456789ABCDEF919, align 32, !tbaa !12
  %707 = load <4 x i64>, ptr %vk14x0123456789ABCDEF922, align 32, !tbaa !12
  %call928 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %706, <4 x i64> noundef %707)
  store <4 x i64> %call928, ptr %vprod14x0123456789ABCDEF927, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod14x89ABCDEF929) #6
  %708 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF927, align 32, !tbaa !12
  %extract930 = shufflevector <4 x i64> %708, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract930, ptr %vprod14x89ABCDEF929, align 16, !tbaa !12
  %709 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %710 = load <4 x i64>, ptr %vprod14x0123456789ABCDEF927, align 32, !tbaa !12
  %call931 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %710)
  %call932 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call931)
  %call933 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %709, <4 x i64> noundef %call932)
  store <4 x i64> %call933, ptr %vacc01234567676, align 32, !tbaa !12
  %711 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %712 = load <2 x i64>, ptr %vprod14x89ABCDEF929, align 16, !tbaa !12
  %call934 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %712)
  %call935 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %711, <4 x i64> noundef %call934)
  store <4 x i64> %call935, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi15x0123456789ABCDEF936) #6
  %713 = load ptr, ptr %i15, align 8, !tbaa !9
  %call937 = call <2 x i64> @_mm_loadu_si128(ptr noundef %713)
  %call938 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call937)
  store <4 x i64> %call938, ptr %vi15x0123456789ABCDEF936, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk15x0123456789ABCDEF939) #6
  %714 = load ptr, ptr %w, align 8, !tbaa !9
  %715 = ptrtoint ptr %714 to i64
  %add940 = add i64 %715, 64
  %add941 = add i64 %add940, 240
  %716 = inttoptr i64 %add941 to ptr
  %call942 = call <2 x i64> @_mm_loadu_si128(ptr noundef %716)
  %call943 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call942)
  store <4 x i64> %call943, ptr %vk15x0123456789ABCDEF939, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod15x0123456789ABCDEF944) #6
  %717 = load <4 x i64>, ptr %vi15x0123456789ABCDEF936, align 32, !tbaa !12
  %718 = load <4 x i64>, ptr %vk15x0123456789ABCDEF939, align 32, !tbaa !12
  %call945 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %717, <4 x i64> noundef %718)
  store <4 x i64> %call945, ptr %vprod15x0123456789ABCDEF944, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod15x89ABCDEF946) #6
  %719 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF944, align 32, !tbaa !12
  %extract947 = shufflevector <4 x i64> %719, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract947, ptr %vprod15x89ABCDEF946, align 16, !tbaa !12
  %720 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %721 = load <4 x i64>, ptr %vprod15x0123456789ABCDEF944, align 32, !tbaa !12
  %call948 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %721)
  %call949 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call948)
  %call950 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %720, <4 x i64> noundef %call949)
  store <4 x i64> %call950, ptr %vacc01234567676, align 32, !tbaa !12
  %722 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %723 = load <2 x i64>, ptr %vprod15x89ABCDEF946, align 16, !tbaa !12
  %call951 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %723)
  %call952 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %722, <4 x i64> noundef %call951)
  store <4 x i64> %call952, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi16x0123456789ABCDEF953) #6
  %724 = load ptr, ptr %i16, align 8, !tbaa !9
  %call954 = call <2 x i64> @_mm_loadu_si128(ptr noundef %724)
  %call955 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call954)
  store <4 x i64> %call955, ptr %vi16x0123456789ABCDEF953, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk16x0123456789ABCDEF956) #6
  %725 = load ptr, ptr %w, align 8, !tbaa !9
  %726 = ptrtoint ptr %725 to i64
  %add957 = add i64 %726, 64
  %add958 = add i64 %add957, 256
  %727 = inttoptr i64 %add958 to ptr
  %call959 = call <2 x i64> @_mm_loadu_si128(ptr noundef %727)
  %call960 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call959)
  store <4 x i64> %call960, ptr %vk16x0123456789ABCDEF956, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod16x0123456789ABCDEF961) #6
  %728 = load <4 x i64>, ptr %vi16x0123456789ABCDEF953, align 32, !tbaa !12
  %729 = load <4 x i64>, ptr %vk16x0123456789ABCDEF956, align 32, !tbaa !12
  %call962 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %728, <4 x i64> noundef %729)
  store <4 x i64> %call962, ptr %vprod16x0123456789ABCDEF961, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod16x89ABCDEF963) #6
  %730 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF961, align 32, !tbaa !12
  %extract964 = shufflevector <4 x i64> %730, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract964, ptr %vprod16x89ABCDEF963, align 16, !tbaa !12
  %731 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %732 = load <4 x i64>, ptr %vprod16x0123456789ABCDEF961, align 32, !tbaa !12
  %call965 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %732)
  %call966 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call965)
  %call967 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %731, <4 x i64> noundef %call966)
  store <4 x i64> %call967, ptr %vacc01234567676, align 32, !tbaa !12
  %733 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %734 = load <2 x i64>, ptr %vprod16x89ABCDEF963, align 16, !tbaa !12
  %call968 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %734)
  %call969 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %733, <4 x i64> noundef %call968)
  store <4 x i64> %call969, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi17x0123456789ABCDEF970) #6
  %735 = load ptr, ptr %i17, align 8, !tbaa !9
  %call971 = call <2 x i64> @_mm_loadu_si128(ptr noundef %735)
  %call972 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call971)
  store <4 x i64> %call972, ptr %vi17x0123456789ABCDEF970, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk17x0123456789ABCDEF973) #6
  %736 = load ptr, ptr %w, align 8, !tbaa !9
  %737 = ptrtoint ptr %736 to i64
  %add974 = add i64 %737, 64
  %add975 = add i64 %add974, 272
  %738 = inttoptr i64 %add975 to ptr
  %call976 = call <2 x i64> @_mm_loadu_si128(ptr noundef %738)
  %call977 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call976)
  store <4 x i64> %call977, ptr %vk17x0123456789ABCDEF973, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod17x0123456789ABCDEF978) #6
  %739 = load <4 x i64>, ptr %vi17x0123456789ABCDEF970, align 32, !tbaa !12
  %740 = load <4 x i64>, ptr %vk17x0123456789ABCDEF973, align 32, !tbaa !12
  %call979 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %739, <4 x i64> noundef %740)
  store <4 x i64> %call979, ptr %vprod17x0123456789ABCDEF978, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod17x89ABCDEF980) #6
  %741 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF978, align 32, !tbaa !12
  %extract981 = shufflevector <4 x i64> %741, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract981, ptr %vprod17x89ABCDEF980, align 16, !tbaa !12
  %742 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %743 = load <4 x i64>, ptr %vprod17x0123456789ABCDEF978, align 32, !tbaa !12
  %call982 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %743)
  %call983 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call982)
  %call984 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %742, <4 x i64> noundef %call983)
  store <4 x i64> %call984, ptr %vacc01234567676, align 32, !tbaa !12
  %744 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %745 = load <2 x i64>, ptr %vprod17x89ABCDEF980, align 16, !tbaa !12
  %call985 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %745)
  %call986 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %744, <4 x i64> noundef %call985)
  store <4 x i64> %call986, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi18x0123456789ABCDEF987) #6
  %746 = load ptr, ptr %i18, align 8, !tbaa !9
  %call988 = call <2 x i64> @_mm_loadu_si128(ptr noundef %746)
  %call989 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call988)
  store <4 x i64> %call989, ptr %vi18x0123456789ABCDEF987, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk18x0123456789ABCDEF990) #6
  %747 = load ptr, ptr %w, align 8, !tbaa !9
  %748 = ptrtoint ptr %747 to i64
  %add991 = add i64 %748, 64
  %add992 = add i64 %add991, 288
  %749 = inttoptr i64 %add992 to ptr
  %call993 = call <2 x i64> @_mm_loadu_si128(ptr noundef %749)
  %call994 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call993)
  store <4 x i64> %call994, ptr %vk18x0123456789ABCDEF990, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod18x0123456789ABCDEF995) #6
  %750 = load <4 x i64>, ptr %vi18x0123456789ABCDEF987, align 32, !tbaa !12
  %751 = load <4 x i64>, ptr %vk18x0123456789ABCDEF990, align 32, !tbaa !12
  %call996 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %750, <4 x i64> noundef %751)
  store <4 x i64> %call996, ptr %vprod18x0123456789ABCDEF995, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod18x89ABCDEF997) #6
  %752 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF995, align 32, !tbaa !12
  %extract998 = shufflevector <4 x i64> %752, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract998, ptr %vprod18x89ABCDEF997, align 16, !tbaa !12
  %753 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %754 = load <4 x i64>, ptr %vprod18x0123456789ABCDEF995, align 32, !tbaa !12
  %call999 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %754)
  %call1000 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call999)
  %call1001 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %753, <4 x i64> noundef %call1000)
  store <4 x i64> %call1001, ptr %vacc01234567676, align 32, !tbaa !12
  %755 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %756 = load <2 x i64>, ptr %vprod18x89ABCDEF997, align 16, !tbaa !12
  %call1002 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %756)
  %call1003 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %755, <4 x i64> noundef %call1002)
  store <4 x i64> %call1003, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi19x0123456789ABCDEF1004) #6
  %757 = load ptr, ptr %i19, align 8, !tbaa !9
  %call1005 = call <2 x i64> @_mm_loadu_si128(ptr noundef %757)
  %call1006 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1005)
  store <4 x i64> %call1006, ptr %vi19x0123456789ABCDEF1004, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk19x0123456789ABCDEF1007) #6
  %758 = load ptr, ptr %w, align 8, !tbaa !9
  %759 = ptrtoint ptr %758 to i64
  %add1008 = add i64 %759, 64
  %add1009 = add i64 %add1008, 304
  %760 = inttoptr i64 %add1009 to ptr
  %call1010 = call <2 x i64> @_mm_loadu_si128(ptr noundef %760)
  %call1011 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1010)
  store <4 x i64> %call1011, ptr %vk19x0123456789ABCDEF1007, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod19x0123456789ABCDEF1012) #6
  %761 = load <4 x i64>, ptr %vi19x0123456789ABCDEF1004, align 32, !tbaa !12
  %762 = load <4 x i64>, ptr %vk19x0123456789ABCDEF1007, align 32, !tbaa !12
  %call1013 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %761, <4 x i64> noundef %762)
  store <4 x i64> %call1013, ptr %vprod19x0123456789ABCDEF1012, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod19x89ABCDEF1014) #6
  %763 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF1012, align 32, !tbaa !12
  %extract1015 = shufflevector <4 x i64> %763, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1015, ptr %vprod19x89ABCDEF1014, align 16, !tbaa !12
  %764 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %765 = load <4 x i64>, ptr %vprod19x0123456789ABCDEF1012, align 32, !tbaa !12
  %call1016 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %765)
  %call1017 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1016)
  %call1018 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %764, <4 x i64> noundef %call1017)
  store <4 x i64> %call1018, ptr %vacc01234567676, align 32, !tbaa !12
  %766 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %767 = load <2 x i64>, ptr %vprod19x89ABCDEF1014, align 16, !tbaa !12
  %call1019 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %767)
  %call1020 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %766, <4 x i64> noundef %call1019)
  store <4 x i64> %call1020, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi20x0123456789ABCDEF1021) #6
  %768 = load ptr, ptr %i20, align 8, !tbaa !9
  %call1022 = call <2 x i64> @_mm_loadu_si128(ptr noundef %768)
  %call1023 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1022)
  store <4 x i64> %call1023, ptr %vi20x0123456789ABCDEF1021, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk20x0123456789ABCDEF1024) #6
  %769 = load ptr, ptr %w, align 8, !tbaa !9
  %770 = ptrtoint ptr %769 to i64
  %add1025 = add i64 %770, 64
  %add1026 = add i64 %add1025, 320
  %771 = inttoptr i64 %add1026 to ptr
  %call1027 = call <2 x i64> @_mm_loadu_si128(ptr noundef %771)
  %call1028 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1027)
  store <4 x i64> %call1028, ptr %vk20x0123456789ABCDEF1024, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod20x0123456789ABCDEF1029) #6
  %772 = load <4 x i64>, ptr %vi20x0123456789ABCDEF1021, align 32, !tbaa !12
  %773 = load <4 x i64>, ptr %vk20x0123456789ABCDEF1024, align 32, !tbaa !12
  %call1030 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %772, <4 x i64> noundef %773)
  store <4 x i64> %call1030, ptr %vprod20x0123456789ABCDEF1029, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod20x89ABCDEF1031) #6
  %774 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF1029, align 32, !tbaa !12
  %extract1032 = shufflevector <4 x i64> %774, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1032, ptr %vprod20x89ABCDEF1031, align 16, !tbaa !12
  %775 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %776 = load <4 x i64>, ptr %vprod20x0123456789ABCDEF1029, align 32, !tbaa !12
  %call1033 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %776)
  %call1034 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1033)
  %call1035 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %775, <4 x i64> noundef %call1034)
  store <4 x i64> %call1035, ptr %vacc01234567676, align 32, !tbaa !12
  %777 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %778 = load <2 x i64>, ptr %vprod20x89ABCDEF1031, align 16, !tbaa !12
  %call1036 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %778)
  %call1037 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %777, <4 x i64> noundef %call1036)
  store <4 x i64> %call1037, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi21x0123456789ABCDEF1038) #6
  %779 = load ptr, ptr %i21, align 8, !tbaa !9
  %call1039 = call <2 x i64> @_mm_loadu_si128(ptr noundef %779)
  %call1040 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1039)
  store <4 x i64> %call1040, ptr %vi21x0123456789ABCDEF1038, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk21x0123456789ABCDEF1041) #6
  %780 = load ptr, ptr %w, align 8, !tbaa !9
  %781 = ptrtoint ptr %780 to i64
  %add1042 = add i64 %781, 64
  %add1043 = add i64 %add1042, 336
  %782 = inttoptr i64 %add1043 to ptr
  %call1044 = call <2 x i64> @_mm_loadu_si128(ptr noundef %782)
  %call1045 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1044)
  store <4 x i64> %call1045, ptr %vk21x0123456789ABCDEF1041, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod21x0123456789ABCDEF1046) #6
  %783 = load <4 x i64>, ptr %vi21x0123456789ABCDEF1038, align 32, !tbaa !12
  %784 = load <4 x i64>, ptr %vk21x0123456789ABCDEF1041, align 32, !tbaa !12
  %call1047 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %783, <4 x i64> noundef %784)
  store <4 x i64> %call1047, ptr %vprod21x0123456789ABCDEF1046, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod21x89ABCDEF1048) #6
  %785 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF1046, align 32, !tbaa !12
  %extract1049 = shufflevector <4 x i64> %785, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1049, ptr %vprod21x89ABCDEF1048, align 16, !tbaa !12
  %786 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %787 = load <4 x i64>, ptr %vprod21x0123456789ABCDEF1046, align 32, !tbaa !12
  %call1050 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %787)
  %call1051 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1050)
  %call1052 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %786, <4 x i64> noundef %call1051)
  store <4 x i64> %call1052, ptr %vacc01234567676, align 32, !tbaa !12
  %788 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %789 = load <2 x i64>, ptr %vprod21x89ABCDEF1048, align 16, !tbaa !12
  %call1053 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %789)
  %call1054 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %788, <4 x i64> noundef %call1053)
  store <4 x i64> %call1054, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi22x0123456789ABCDEF1055) #6
  %790 = load ptr, ptr %i22, align 8, !tbaa !9
  %call1056 = call <2 x i64> @_mm_loadu_si128(ptr noundef %790)
  %call1057 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1056)
  store <4 x i64> %call1057, ptr %vi22x0123456789ABCDEF1055, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk22x0123456789ABCDEF1058) #6
  %791 = load ptr, ptr %w, align 8, !tbaa !9
  %792 = ptrtoint ptr %791 to i64
  %add1059 = add i64 %792, 64
  %add1060 = add i64 %add1059, 352
  %793 = inttoptr i64 %add1060 to ptr
  %call1061 = call <2 x i64> @_mm_loadu_si128(ptr noundef %793)
  %call1062 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1061)
  store <4 x i64> %call1062, ptr %vk22x0123456789ABCDEF1058, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod22x0123456789ABCDEF1063) #6
  %794 = load <4 x i64>, ptr %vi22x0123456789ABCDEF1055, align 32, !tbaa !12
  %795 = load <4 x i64>, ptr %vk22x0123456789ABCDEF1058, align 32, !tbaa !12
  %call1064 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %794, <4 x i64> noundef %795)
  store <4 x i64> %call1064, ptr %vprod22x0123456789ABCDEF1063, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod22x89ABCDEF1065) #6
  %796 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF1063, align 32, !tbaa !12
  %extract1066 = shufflevector <4 x i64> %796, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1066, ptr %vprod22x89ABCDEF1065, align 16, !tbaa !12
  %797 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %798 = load <4 x i64>, ptr %vprod22x0123456789ABCDEF1063, align 32, !tbaa !12
  %call1067 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %798)
  %call1068 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1067)
  %call1069 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %797, <4 x i64> noundef %call1068)
  store <4 x i64> %call1069, ptr %vacc01234567676, align 32, !tbaa !12
  %799 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %800 = load <2 x i64>, ptr %vprod22x89ABCDEF1065, align 16, !tbaa !12
  %call1070 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %800)
  %call1071 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %799, <4 x i64> noundef %call1070)
  store <4 x i64> %call1071, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi23x0123456789ABCDEF1072) #6
  %801 = load ptr, ptr %i23, align 8, !tbaa !9
  %call1073 = call <2 x i64> @_mm_loadu_si128(ptr noundef %801)
  %call1074 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1073)
  store <4 x i64> %call1074, ptr %vi23x0123456789ABCDEF1072, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk23x0123456789ABCDEF1075) #6
  %802 = load ptr, ptr %w, align 8, !tbaa !9
  %803 = ptrtoint ptr %802 to i64
  %add1076 = add i64 %803, 64
  %add1077 = add i64 %add1076, 368
  %804 = inttoptr i64 %add1077 to ptr
  %call1078 = call <2 x i64> @_mm_loadu_si128(ptr noundef %804)
  %call1079 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1078)
  store <4 x i64> %call1079, ptr %vk23x0123456789ABCDEF1075, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod23x0123456789ABCDEF1080) #6
  %805 = load <4 x i64>, ptr %vi23x0123456789ABCDEF1072, align 32, !tbaa !12
  %806 = load <4 x i64>, ptr %vk23x0123456789ABCDEF1075, align 32, !tbaa !12
  %call1081 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %805, <4 x i64> noundef %806)
  store <4 x i64> %call1081, ptr %vprod23x0123456789ABCDEF1080, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod23x89ABCDEF1082) #6
  %807 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF1080, align 32, !tbaa !12
  %extract1083 = shufflevector <4 x i64> %807, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1083, ptr %vprod23x89ABCDEF1082, align 16, !tbaa !12
  %808 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %809 = load <4 x i64>, ptr %vprod23x0123456789ABCDEF1080, align 32, !tbaa !12
  %call1084 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %809)
  %call1085 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1084)
  %call1086 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %808, <4 x i64> noundef %call1085)
  store <4 x i64> %call1086, ptr %vacc01234567676, align 32, !tbaa !12
  %810 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %811 = load <2 x i64>, ptr %vprod23x89ABCDEF1082, align 16, !tbaa !12
  %call1087 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %811)
  %call1088 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %810, <4 x i64> noundef %call1087)
  store <4 x i64> %call1088, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vi24x0123456789ABCDEF1089) #6
  %812 = load ptr, ptr %i24, align 8, !tbaa !9
  %call1090 = call <2 x i64> @_mm_loadu_si128(ptr noundef %812)
  %call1091 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1090)
  store <4 x i64> %call1091, ptr %vi24x0123456789ABCDEF1089, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vk24x0123456789ABCDEF1092) #6
  %813 = load ptr, ptr %w, align 8, !tbaa !9
  %814 = ptrtoint ptr %813 to i64
  %add1093 = add i64 %814, 64
  %add1094 = add i64 %add1093, 384
  %815 = inttoptr i64 %add1094 to ptr
  %call1095 = call <2 x i64> @_mm_loadu_si128(ptr noundef %815)
  %call1096 = call <4 x i64> @_mm256_cvtepi8_epi16(<2 x i64> noundef %call1095)
  store <4 x i64> %call1096, ptr %vk24x0123456789ABCDEF1092, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vprod24x0123456789ABCDEF1097) #6
  %816 = load <4 x i64>, ptr %vi24x0123456789ABCDEF1089, align 32, !tbaa !12
  %817 = load <4 x i64>, ptr %vk24x0123456789ABCDEF1092, align 32, !tbaa !12
  %call1098 = call <4 x i64> @_mm256_mullo_epi16(<4 x i64> noundef %816, <4 x i64> noundef %817)
  store <4 x i64> %call1098, ptr %vprod24x0123456789ABCDEF1097, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vprod24x89ABCDEF1099) #6
  %818 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF1097, align 32, !tbaa !12
  %extract1100 = shufflevector <4 x i64> %818, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %extract1100, ptr %vprod24x89ABCDEF1099, align 16, !tbaa !12
  %819 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %820 = load <4 x i64>, ptr %vprod24x0123456789ABCDEF1097, align 32, !tbaa !12
  %call1101 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %820)
  %call1102 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %call1101)
  %call1103 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %819, <4 x i64> noundef %call1102)
  store <4 x i64> %call1103, ptr %vacc01234567676, align 32, !tbaa !12
  %821 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %822 = load <2 x i64>, ptr %vprod24x89ABCDEF1099, align 16, !tbaa !12
  %call1104 = call <4 x i64> @_mm256_cvtepi16_epi32(<2 x i64> noundef %822)
  %call1105 = call <4 x i64> @_mm256_add_epi32(<4 x i64> noundef %821, <4 x i64> noundef %call1104)
  store <4 x i64> %call1105, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc012345671106) #6
  %823 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %call1107 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %823)
  store <8 x float> %call1107, ptr %vfpacc012345671106, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vfpacc89ABCDEF1108) #6
  %824 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %call1109 = call <8 x float> @_mm256_cvtepi32_ps(<4 x i64> noundef %824)
  store <8 x float> %call1109, ptr %vfpacc89ABCDEF1108, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %vscale1110) #6
  %825 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %scale1111 = getelementptr inbounds %struct.anon.4, ptr %825, i32 0, i32 0
  %arraydecay1112 = getelementptr inbounds [8 x float], ptr %scale1111, i64 0, i64 0
  %call1113 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1112)
  store <8 x float> %call1113, ptr %vscale1110, align 32, !tbaa !12
  %826 = load <8 x float>, ptr %vfpacc012345671106, align 32, !tbaa !12
  %827 = load <8 x float>, ptr %vscale1110, align 32, !tbaa !12
  %call1114 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %826, <8 x float> noundef %827)
  store <8 x float> %call1114, ptr %vfpacc012345671106, align 32, !tbaa !12
  %828 = load <8 x float>, ptr %vfpacc89ABCDEF1108, align 32, !tbaa !12
  %829 = load <8 x float>, ptr %vscale1110, align 32, !tbaa !12
  %call1115 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %828, <8 x float> noundef %829)
  store <8 x float> %call1115, ptr %vfpacc89ABCDEF1108, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 32, ptr %voutput_max_less_zero_point1116) #6
  %830 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_max_less_zero_point1117 = getelementptr inbounds %struct.anon.4, ptr %830, i32 0, i32 1
  %arraydecay1118 = getelementptr inbounds [8 x float], ptr %output_max_less_zero_point1117, i64 0, i64 0
  %call1119 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1118)
  store <8 x float> %call1119, ptr %voutput_max_less_zero_point1116, align 32, !tbaa !12
  %831 = load <8 x float>, ptr %vfpacc012345671106, align 32, !tbaa !12
  %832 = load <8 x float>, ptr %voutput_max_less_zero_point1116, align 32, !tbaa !12
  %call1120 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %831, <8 x float> noundef %832)
  store <8 x float> %call1120, ptr %vfpacc012345671106, align 32, !tbaa !12
  %833 = load <8 x float>, ptr %vfpacc89ABCDEF1108, align 32, !tbaa !12
  %834 = load <8 x float>, ptr %voutput_max_less_zero_point1116, align 32, !tbaa !12
  %call1121 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %833, <8 x float> noundef %834)
  store <8 x float> %call1121, ptr %vfpacc89ABCDEF1108, align 32, !tbaa !12
  %835 = load <8 x float>, ptr %vfpacc012345671106, align 32, !tbaa !12
  %call1122 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %835)
  store <4 x i64> %call1122, ptr %vacc01234567676, align 32, !tbaa !12
  %836 = load <8 x float>, ptr %vfpacc89ABCDEF1108, align 32, !tbaa !12
  %call1123 = call <4 x i64> @_mm256_cvtps_epi32(<8 x float> noundef %836)
  store <4 x i64> %call1123, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_zero_point1124) #6
  %837 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_zero_point1125 = getelementptr inbounds %struct.anon.4, ptr %837, i32 0, i32 2
  %arraydecay1126 = getelementptr inbounds [16 x i16], ptr %output_zero_point1125, i64 0, i64 0
  %call1127 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay1126)
  store <2 x i64> %call1127, ptr %voutput_zero_point1124, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout01234567) #6
  %838 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %call1128 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %838)
  %839 = load <4 x i64>, ptr %vacc01234567676, align 32, !tbaa !12
  %extract1129 = shufflevector <4 x i64> %839, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call1130 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call1128, <2 x i64> noundef %extract1129)
  %840 = load <2 x i64>, ptr %voutput_zero_point1124, align 16, !tbaa !12
  %call1131 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call1130, <2 x i64> noundef %840)
  store <2 x i64> %call1131, ptr %vout01234567, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout89ABCDEF) #6
  %841 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %call1132 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %841)
  %842 = load <4 x i64>, ptr %vacc89ABCDEF678, align 32, !tbaa !12
  %extract1133 = shufflevector <4 x i64> %842, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %call1134 = call <2 x i64> @_mm_packs_epi32(<2 x i64> noundef %call1132, <2 x i64> noundef %extract1133)
  %843 = load <2 x i64>, ptr %voutput_zero_point1124, align 16, !tbaa !12
  %call1135 = call <2 x i64> @_mm_adds_epi16(<2 x i64> noundef %call1134, <2 x i64> noundef %843)
  store <2 x i64> %call1135, ptr %vout89ABCDEF, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %voutput_min1136) #6
  %844 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %output_min1137 = getelementptr inbounds %struct.anon.4, ptr %844, i32 0, i32 3
  %arraydecay1138 = getelementptr inbounds [32 x i8], ptr %output_min1137, i64 0, i64 0
  %call1139 = call <2 x i64> @_mm_load_si128(ptr noundef %arraydecay1138)
  store <2 x i64> %call1139, ptr %voutput_min1136, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 16, ptr %vout0123456789ABCDEF1140) #6
  %845 = load <2 x i64>, ptr %vout01234567, align 16, !tbaa !12
  %846 = load <2 x i64>, ptr %vout89ABCDEF, align 16, !tbaa !12
  %call1141 = call <2 x i64> @_mm_packs_epi16(<2 x i64> noundef %845, <2 x i64> noundef %846)
  store <2 x i64> %call1141, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %847 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %848 = load <2 x i64>, ptr %voutput_min1136, align 16, !tbaa !12
  %call1142 = call <2 x i64> @_mm_max_epi8(<2 x i64> noundef %847, <2 x i64> noundef %848)
  store <2 x i64> %call1142, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %849 = load i64, ptr %c, align 8, !tbaa !5
  %and = and i64 %849, 8
  %tobool1143 = icmp ne i64 %and, 0
  br i1 %tobool1143, label %if.then1144, label %if.end1147

if.then1144:                                      ; preds = %if.then675
  %850 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %851 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  call void @_mm_storel_epi64(ptr noundef %850, <2 x i64> noundef %851)
  %852 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %853 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %call1145 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %852, <2 x i64> noundef %853)
  store <2 x i64> %call1145, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %854 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1146 = getelementptr inbounds i8, ptr %854, i64 8
  store ptr %add.ptr1146, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1147

if.end1147:                                       ; preds = %if.then1144, %if.then675
  %855 = load i64, ptr %c, align 8, !tbaa !5
  %and1148 = and i64 %855, 4
  %tobool1149 = icmp ne i64 %and1148, 0
  br i1 %tobool1149, label %if.then1150, label %if.end1154

if.then1150:                                      ; preds = %if.end1147
  %856 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %call1151 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %856)
  %857 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i32 %call1151, ptr %857, align 4, !tbaa !15
  %858 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %call1152 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %858, i32 noundef 32)
  store <2 x i64> %call1152, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %859 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1153 = getelementptr inbounds i8, ptr %859, i64 4
  store ptr %add.ptr1153, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1154

if.end1154:                                       ; preds = %if.then1150, %if.end1147
  %860 = load i64, ptr %c, align 8, !tbaa !5
  %and1155 = and i64 %860, 2
  %tobool1156 = icmp ne i64 %and1155, 0
  br i1 %tobool1156, label %if.then1157, label %if.end1162

if.then1157:                                      ; preds = %if.end1154
  %861 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %862 = bitcast <2 x i64> %861 to <8 x i16>
  %863 = extractelement <8 x i16> %862, i64 0
  %conv1158 = zext i16 %863 to i32
  %conv1159 = trunc i32 %conv1158 to i16
  %864 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i16 %conv1159, ptr %864, align 2, !tbaa !17
  %865 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %call1160 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %865, i32 noundef 16)
  store <2 x i64> %call1160, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %866 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1161 = getelementptr inbounds i8, ptr %866, i64 2
  store ptr %add.ptr1161, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1162

if.end1162:                                       ; preds = %if.then1157, %if.end1154
  %867 = load i64, ptr %c, align 8, !tbaa !5
  %and1163 = and i64 %867, 1
  %tobool1164 = icmp ne i64 %and1163, 0
  br i1 %tobool1164, label %if.then1165, label %if.end1169

if.then1165:                                      ; preds = %if.end1162
  %868 = load <2 x i64>, ptr %vout0123456789ABCDEF1140, align 16, !tbaa !12
  %869 = bitcast <2 x i64> %868 to <16 x i8>
  %870 = extractelement <16 x i8> %869, i64 0
  %conv1166 = zext i8 %870 to i32
  %conv1167 = trunc i32 %conv1166 to i8
  %871 = load ptr, ptr %output.addr, align 8, !tbaa !9
  store i8 %conv1167, ptr %871, align 1, !tbaa !12
  %872 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr1168 = getelementptr inbounds i8, ptr %872, i64 1
  store ptr %add.ptr1168, ptr %output.addr, align 8, !tbaa !9
  br label %if.end1169

if.end1169:                                       ; preds = %if.then1165, %if.end1162
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout0123456789ABCDEF1140) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_min1136) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vout01234567) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %voutput_zero_point1124) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %voutput_max_less_zero_point1116) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vscale1110) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc89ABCDEF1108) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vfpacc012345671106) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod24x89ABCDEF1099) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod24x0123456789ABCDEF1097) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk24x0123456789ABCDEF1092) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi24x0123456789ABCDEF1089) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod23x89ABCDEF1082) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod23x0123456789ABCDEF1080) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk23x0123456789ABCDEF1075) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi23x0123456789ABCDEF1072) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod22x89ABCDEF1065) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod22x0123456789ABCDEF1063) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk22x0123456789ABCDEF1058) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi22x0123456789ABCDEF1055) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod21x89ABCDEF1048) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod21x0123456789ABCDEF1046) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk21x0123456789ABCDEF1041) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi21x0123456789ABCDEF1038) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod20x89ABCDEF1031) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod20x0123456789ABCDEF1029) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk20x0123456789ABCDEF1024) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi20x0123456789ABCDEF1021) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod19x89ABCDEF1014) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod19x0123456789ABCDEF1012) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk19x0123456789ABCDEF1007) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi19x0123456789ABCDEF1004) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod18x89ABCDEF997) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod18x0123456789ABCDEF995) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk18x0123456789ABCDEF990) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi18x0123456789ABCDEF987) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod17x89ABCDEF980) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod17x0123456789ABCDEF978) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk17x0123456789ABCDEF973) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi17x0123456789ABCDEF970) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod16x89ABCDEF963) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod16x0123456789ABCDEF961) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk16x0123456789ABCDEF956) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi16x0123456789ABCDEF953) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod15x89ABCDEF946) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod15x0123456789ABCDEF944) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk15x0123456789ABCDEF939) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi15x0123456789ABCDEF936) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod14x89ABCDEF929) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod14x0123456789ABCDEF927) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk14x0123456789ABCDEF922) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi14x0123456789ABCDEF919) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod13x89ABCDEF912) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod13x0123456789ABCDEF910) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk13x0123456789ABCDEF905) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi13x0123456789ABCDEF902) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod12x89ABCDEF895) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod12x0123456789ABCDEF893) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk12x0123456789ABCDEF888) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi12x0123456789ABCDEF885) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod11x89ABCDEF878) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod11x0123456789ABCDEF876) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk11x0123456789ABCDEF871) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi11x0123456789ABCDEF868) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod10x89ABCDEF861) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod10x0123456789ABCDEF859) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk10x0123456789ABCDEF854) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi10x0123456789ABCDEF851) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod9x89ABCDEF844) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod9x0123456789ABCDEF842) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk9x0123456789ABCDEF837) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi9x0123456789ABCDEF834) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod8x89ABCDEF827) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod8x0123456789ABCDEF825) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk8x0123456789ABCDEF820) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi8x0123456789ABCDEF817) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod7x89ABCDEF810) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod7x0123456789ABCDEF808) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk7x0123456789ABCDEF803) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi7x0123456789ABCDEF800) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod6x89ABCDEF793) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod6x0123456789ABCDEF791) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk6x0123456789ABCDEF786) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi6x0123456789ABCDEF783) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod5x89ABCDEF776) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod5x0123456789ABCDEF774) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk5x0123456789ABCDEF769) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi5x0123456789ABCDEF766) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod4x89ABCDEF759) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod4x0123456789ABCDEF757) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk4x0123456789ABCDEF752) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi4x0123456789ABCDEF749) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod3x89ABCDEF742) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod3x0123456789ABCDEF740) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk3x0123456789ABCDEF735) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi3x0123456789ABCDEF732) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod2x89ABCDEF725) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod2x0123456789ABCDEF723) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk2x0123456789ABCDEF718) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi2x0123456789ABCDEF715) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod1x89ABCDEF708) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod1x0123456789ABCDEF706) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk1x0123456789ABCDEF701) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi1x0123456789ABCDEF698) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vprod0x89ABCDEF691) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vprod0x0123456789ABCDEF689) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vk0x0123456789ABCDEF684) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vi0x0123456789ABCDEF681) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc89ABCDEF678) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc01234567676) #6
  br label %if.end1170

if.end1170:                                       ; preds = %if.end1169, %for.end
  %873 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %874 = ptrtoint ptr %873 to i64
  %875 = load i64, ptr %output_increment.addr, align 8, !tbaa !5
  %add1171 = add i64 %874, %875
  %876 = inttoptr i64 %add1171 to ptr
  store ptr %876, ptr %output.addr, align 8, !tbaa !9
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
  br label %do.cond

do.cond:                                          ; preds = %if.end1170
  %877 = load i64, ptr %output_width.addr, align 8, !tbaa !5
  %dec = add i64 %877, -1
  store i64 %dec, ptr %output_width.addr, align 8, !tbaa !5
  %cmp1172 = icmp ne i64 %dec, 0
  br i1 %cmp1172, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
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
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !12
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
