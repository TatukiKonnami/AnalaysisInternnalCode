; ModuleID = 'ClangNoteBook/Chapter4/example-4.6.c'
source_filename = "ClangNoteBook/Chapter4/example-4.6.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [17 x i8] c"1 : 0 \EF\BD\9E 5 \E6\AD\B3\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"2 : 6 \EF\BD\9E 18 \E6\AD\B3\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"3 : 19 \E6\AD\B3\E4\BB\A5\E4\B8\8A\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\E7\95\AA\E5\8F\B7\E3\82\92\E9\81\B8\E3\82\93\E3\81\A7\E3\81\8F\E3\81\A0\E3\81\95\E3\81\84 -> \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\E5\B0\8F\E4\BA\BA 100 \E5\86\86\E3\81\A7\E3\81\99\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\E4\B8\AD\E4\BA\BA 200 \E5\86\86\E3\81\A7\E3\81\99\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\E5\A4\A7\E4\BA\BA 300 \E5\86\86\E3\81\A7\E3\81\99\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\E7\95\AA\E5\8F\B7\E3\81\8C\E9\81\95\E3\81\84\E3\81\BE\E3\81\99\EF\BC\8C\E3\82\84\E3\82\8A\E7\9B\B4\E3\81\97\E3\81\A6\E3\81\8F\E3\81\A0\E3\81\95\E3\81\84\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32* %2)
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %15 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
  ]

; <label>:9:                                      ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %17

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0))
  br label %17

; <label>:13:                                     ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %17

; <label>:15:                                     ; preds = %0
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %15, %13, %11, %9
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
