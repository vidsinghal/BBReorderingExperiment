; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @fs_build_range(i1 %cmp209, i1 %cmp214, i1 %cmp234) {
entry:
  br label %for.cond195

for.cond195:                                      ; preds = %for.cond207, %entry
  %col11339.0 = phi i32 [ undef, %entry ], [ %col11339.1, %for.cond207 ]
  br label %expand_glyph_range

expand_glyph_range:                               ; preds = %land.lhs.true240, %for.cond195
  %col11339.1 = phi i32 [ %col11339.0, %for.cond195 ], [ %and245, %land.lhs.true240 ]
  br label %for.cond207

for.cond207:                                      ; preds = %lor.lhs.false236, %expand_glyph_range
  br i1 %cmp209, label %for.body211, label %for.cond195

for.body211:                                      ; preds = %for.cond207
  br i1 %cmp214, label %if.then226, label %cond.false217

cond.false217:                                    ; preds = %for.body211
  ret i32 0

if.then226:                                       ; preds = %for.body211
  br i1 %cmp234, label %land.lhs.true240, label %lor.lhs.false236

lor.lhs.false236:                                 ; preds = %if.then226
  %call26721 = call i32 @add_range()
  br label %for.cond207

land.lhs.true240:                                 ; preds = %if.then226
  %and245 = and i32 %col11339.0, 1
  br label %expand_glyph_range
}

declare i32 @add_range()
