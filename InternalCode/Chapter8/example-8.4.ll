; ModuleID = 'ClangNoteBook/Chapter8/example-8.4.c'
source_filename = "ClangNoteBook/Chapter8/example-8.4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [34 x i8] c"1 \E3\81\A4\E3\82\81\E3\81\AE\E8\8B\B1\E5\8D\98\E8\AA\9E\E3\82\92\E5\85\A5\E3\82\8C\E3\81\A6 \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"2 \E3\81\A4\E3\82\81\E3\81\AE\E8\8B\B1\E5\8D\98\E8\AA\9E\E3\82\92\E5\85\A5\E3\82\8C\E3\81\A6 \00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\E8\BE\9E\E6\9B\B8\E3\81\A7\E3\81\AF %s \E3\81\8C %s \E3\82\88\E3\82\8A\E5\89\8D\E3\81\AB\E3\81\82\E3\82\8A\E3\81\BE\E3\81\99\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\E5\90\8C\E3\81\98\E5\8D\98\E8\AA\9E\E3\81\A7\E3\81\99\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [30 x i8], align 16
  %6 = alloca [30 x i8], align 16
  store i32 0, i32* %1, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  %8 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i32 0, i32 0
  %9 = call i8* @gets(i8* %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  %11 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i32 0, i32 0
  %12 = call i8* @gets(i8* %11)
  store i32 0, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %20, %0
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @tolower(i32 %25) #3
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 %29
  store i8 %27, i8* %30, align 1
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %13

; <label>:33:                                     ; preds = %13
  store i32 0, i32* %2, align 4
  br label %34

; <label>:34:                                     ; preds = %41, %33
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 @tolower(i32 %46) #3
  %48 = trunc i32 %47 to i8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i64 0, i64 %50
  store i8 %48, i8* %51, align 1
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %34

; <label>:54:                                     ; preds = %34
  %55 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i32 0, i32 0
  %56 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i32 0, i32 0
  %57 = call i32 @strcmp(i8* %55, i8* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %54
  %61 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i32 0, i32 0
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i32 0, i32 0
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i8* %61, i8* %62)
  br label %74

; <label>:64:                                     ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds [30 x i8], [30 x i8]* %6, i32 0, i32 0
  %69 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i32 0, i32 0
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0), i8* %68, i8* %69)
  br label %73

; <label>:71:                                     ; preds = %64
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %73

; <label>:73:                                     ; preds = %71, %67
  br label %74

; <label>:74:                                     ; preds = %73, %60
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i8* @gets(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
