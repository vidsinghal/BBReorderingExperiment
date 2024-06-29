; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//556/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @PKCS5_v2_PBKDF2_keyivgen_ex(i32 %call10, i1 %cmp11, i1 %tobool.not) local_unnamed_addr {
entry:
  %call101 = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr null)
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %err

if.end14:                                         ; preds = %entry
  br i1 %tobool.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %call16 = load volatile i64, ptr null, align 4294967296
  br label %err

err:                                              ; preds = %land.lhs.true, %if.end14, %if.then13
  %keylen.0 = phi i32 [ 0, %if.then13 ], [ %call10, %land.lhs.true ], [ %call10, %if.end14 ]
  %conv64 = zext i32 %keylen.0 to i64
  store volatile i64 %conv64, ptr null, align 4294967296
  ret i32 0
}

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr) local_unnamed_addr
