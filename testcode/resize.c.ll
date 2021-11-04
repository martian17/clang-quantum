; ModuleID = 'resize.c'
source_filename = "resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vecint = type { i64, i64, i32* }

@__const.main.nums = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@.str = private unnamed_addr constant [9 x i8] c"%zu: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_vecint(%struct.vecint* noalias sret %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %1, i32** %4, align 8
  store i64 %2, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = udiv i64 %10, 4
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = mul i64 %12, 2
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 %14, 4
  %16 = call noalias i8* @malloc(i64 %15) #4
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %30, %3
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %18

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.vecint, %struct.vecint* %0, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.vecint, %struct.vecint* %0, i32 0, i32 1
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds %struct.vecint, %struct.vecint* %0, i32 0, i32 2
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %38, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vecint_push_back(%struct.vecint* %0, i32 %1) #0 {
  %3 = alloca %struct.vecint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.vecint* %0, %struct.vecint** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vecint*, %struct.vecint** %3, align 8
  %9 = getelementptr inbounds %struct.vecint, %struct.vecint* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, 1
  %12 = load %struct.vecint*, %struct.vecint** %3, align 8
  %13 = getelementptr inbounds %struct.vecint, %struct.vecint* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.vecint*, %struct.vecint** %3, align 8
  %18 = getelementptr inbounds %struct.vecint, %struct.vecint* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %19, 2
  %21 = load %struct.vecint*, %struct.vecint** %3, align 8
  %22 = getelementptr inbounds %struct.vecint, %struct.vecint* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.vecint*, %struct.vecint** %3, align 8
  %24 = getelementptr inbounds %struct.vecint, %struct.vecint* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  %26 = load %struct.vecint*, %struct.vecint** %3, align 8
  %27 = getelementptr inbounds %struct.vecint, %struct.vecint* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 %28, 4
  %30 = call noalias i8* @malloc(i64 %29) #4
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %46, %16
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.vecint*, %struct.vecint** %3, align 8
  %35 = getelementptr inbounds %struct.vecint, %struct.vecint* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %32

49:                                               ; preds = %32
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.vecint*, %struct.vecint** %3, align 8
  %52 = getelementptr inbounds %struct.vecint, %struct.vecint* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = bitcast i32* %53 to i8*
  call void @free(i8* %54) #4
  br label %55

55:                                               ; preds = %49, %2
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.vecint*, %struct.vecint** %3, align 8
  %58 = getelementptr inbounds %struct.vecint, %struct.vecint* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.vecint*, %struct.vecint** %3, align 8
  %61 = getelementptr inbounds %struct.vecint, %struct.vecint* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %56, i32* %63, align 4
  %64 = load %struct.vecint*, %struct.vecint** %3, align 8
  %65 = getelementptr inbounds %struct.vecint, %struct.vecint* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = load %struct.vecint*, %struct.vecint** %3, align 8
  %69 = getelementptr inbounds %struct.vecint, %struct.vecint* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_vecint(%struct.vecint* %0) #0 {
  %2 = alloca %struct.vecint*, align 8
  store %struct.vecint* %0, %struct.vecint** %2, align 8
  %3 = load %struct.vecint*, %struct.vecint** %2, align 8
  %4 = getelementptr inbounds %struct.vecint, %struct.vecint* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = bitcast i32* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca %struct.vecint, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([5 x i32]* @__const.main.nums to i8*), i64 20, i1 false)
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  call void @new_vecint(%struct.vecint* sret %3, i32* %7, i64 20)
  store i64 6, i64* %4, align 8
  br label %8

8:                                                ; preds = %14, %0
  %9 = load i64, i64* %4, align 8
  %10 = icmp ult i64 %9, 200
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  call void @vecint_push_back(%struct.vecint* %3, i32 %13)
  br label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %4, align 8
  br label %8

17:                                               ; preds = %8
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.vecint, %struct.vecint* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.vecint, %struct.vecint* %3, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %18

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.vecint, %struct.vecint* %3, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  call void @destroy_vecint(%struct.vecint* %3)
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
