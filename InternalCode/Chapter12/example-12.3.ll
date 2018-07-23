; ModuleID = 'ClangNoteBook/Chapter12/example-12.3.c'
source_filename = "ClangNoteBook/Chapter12/example-12.3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [30 x i8] c"\EF\BC\B8\E3\81\AF0\E3\80\9C999\E3\81\AE\E6\95\B0\E3\81\A7\E3\81\99\EF\BC\8E\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%d\E5\9B\9E\E7\9B\AE\EF\BC\9A\E3\81\84\E3\81\8F\E3\81\A4\EF\BC\9F \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c" \E3\82\82\E3\81\A3\E3\81\A8\E5\B0\8F\E3\81\95\E3\81\84\E3\81\A7\E3\81\99\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c" \E3\82\82\E3\81\A3\E3\81\A8\E5\A4\A7\E3\81\8D\E3\81\84\E3\81\A7\E3\81\99\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" \E5\BD\93\E3\82\8A\E3\81\BE\E3\81\97\E3\81\9F\EF\BC\81\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i64 @time(i64* null)
  %6 = trunc i64 %5 to i32
  call void @srand(i32 %6)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  %8 = call i32 @rand()
  %9 = srem i32 %8, 1000
  store i32 %9, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %10

; <label>:10:                                     ; preds = %0, %28
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %13)
  %15 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %10
  br label %29

; <label>:20:                                     ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %28

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0))
  br label %28

; <label>:28:                                     ; preds = %26, %24
  br label %10

; <label>:29:                                     ; preds = %19
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  ret i32 0
}

declare void @srand(i32) #1

declare i64 @time(i64*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @rand() #1

declare i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
