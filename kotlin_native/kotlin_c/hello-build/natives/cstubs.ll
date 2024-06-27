; ModuleID = 'cstubs.bc'
source_filename = "-"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.0.0"

@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@"\01knifunptr_hello0_sayHello" = local_unnamed_addr global i8* bitcast (void ()* @hello_sayHello_wrapper0 to i8*), align 8
@"\01knifunptr_hello1_callstruct" = local_unnamed_addr global i8* bitcast ([2 x i64] ([2 x i64])* @hello_callstruct_wrapper1 to i8*), align 8
@"\01knifunptr_hello2_callint" = local_unnamed_addr global i8* bitcast (i32* (i32, i32)* @hello_callint_wrapper2 to i8*), align 8
@str = private unnamed_addr constant [20 x i8] c"Hello Kotlin Native\00", align 1

; Function Attrs: nofree nounwind uwtable
define void @sayHello() local_unnamed_addr #0 {
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind uwtable
define [2 x i64] @callstruct([2 x i64] %0) local_unnamed_addr #2 {
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 2)
  ret [2 x i64] [i64 2, i64 0]
}

; Function Attrs: nofree noinline nounwind uwtable
define noalias nonnull i32* @callint(i32 %0, i32 %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %0, i32 %1)
  ret i32* %3
}

; Function Attrs: alwaysinline nofree nounwind uwtable
define void @hello_sayHello_wrapper0() #3 {
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: alwaysinline nofree nounwind uwtable
define [2 x i64] @hello_callstruct_wrapper1([2 x i64] %0) #3 {
  %2 = extractvalue [2 x i64] %0, 1
  %3 = and i64 %2, 4294967295
  %4 = insertvalue [2 x i64] %0, i64 %3, 1
  %5 = tail call [2 x i64] @callstruct([2 x i64] %4)
  ret [2 x i64] [i64 2, i64 0]
}

; Function Attrs: alwaysinline nofree nounwind uwtable
define noalias nonnull i32* @hello_callint_wrapper2(i32 %0, i32 %1) #3 {
  %3 = tail call i32* @callint(i32 %0, i32 %1)
  ret i32* %3
}

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="non-leaf" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-a7" "target-features"="+aes,+crypto,+fp-armv8,+neon,+sha2,+zcm,+zcz" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{!"clang version 11.1.0 (https://github.com/apple/llvm-project 9205ffc7869a87cf3906b80dbd45b969c5794ef7)"}
