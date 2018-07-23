; ModuleID = 'ClangNoteBook/Chapter13/example-13.14.c'
source_filename = "ClangNoteBook/Chapter13/example-13.14.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [57 x i8] c"8 \E3\83\93\E3\83\83\E3\83\88\E7\AC\A6\E5\8F\B7\E3\81\AA\E3\81\97\E6\95\B4\E6\95\B0 %3d \E3\82\92\E3\82\B7\E3\83\95\E3\83\88\E3\81\99\E3\82\8B\E3\81\A8\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\E3\83\93\E3\83\83\E3\83\88 \E5\B7\A6 \E5\8F\B3\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" %1d %3d %3d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8 20, i8* %2, align 1
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 %7)
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 %10)
  store i32 1, i32* %5, align 4
  br label %12

; <label>:12:                                     ; preds = %32, %0
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %35

; <label>:15:                                     ; preds = %12
  %16 = load i8, i8* %2, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %17, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %3, align 1
  %21 = load i8, i8* %2, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %22, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %4, align 1
  %26 = load i32, i32* %5, align 4
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 %26, i32 %28, i32 %30)
  br label %32

; <label>:32:                                     ; preds = %15
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %12

; <label>:35:                                     ; preds = %12
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
