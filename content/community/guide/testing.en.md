---
title: Go Testing Guide
linkTitle: Go Testing Guide
type: docs
categories: ["community"]
tags: ["community", "guide", "test"]
weight: 50
---

## Testing Go

This document shows the testing direction for Go projects.

See also:

- [https://go.dev/doc/code#Testing](https://go.dev/doc/code#Testing)
- [https://go.dev/wiki/TestComments](https://go.dev/wiki/TestComments)
- [https://go.dev/wiki/TableDrivenTests](https://go.dev/wiki/TableDrivenTests)
- [https://go.dev/doc/faq#testing_framework](https://go.dev/doc/faq#testing_framework)

## Test files

Test files for an example `foo` package will becomes as follows.
Foo package contains package-level test files and file-level test files.

```text
foo/
├── testdata/                 ----- testdata for the package.
├── example_test.go           ----- package-level example test.
├── benchmark_test.go         ----- package-level benchmark test
├── fuzz_test.go              ----- package-level fuzz test
├── foo.go                    ----- a go code (package foo)
├── foo_test.go               ----- unit test for foo.go (package foo_test)
├── foo_internal_test.go      ----- unit test for foo.go (package foo)
├── foo_example_test.go       ----- example test for foo.go
├── foo_benchmark_test.go     ----- benchmark test for foo.go
└── foo_fuzz_test.go          ----- fuzz test for foo.go
```

## Example Test

[Example Tests](https://pkg.go.dev/testing#hdr-Examples) should be written to show the example usage of functions or methods.

See also:

- [https://pkg.go.dev/testing#hdr-Examples](https://pkg.go.dev/testing#hdr-Examples)
- [https://go.dev/blog/examples](https://go.dev/blog/examples)

### Example Test Namings

Function names should follow the following naming conventions.

```go
func Example()
func Example_<counter>()
func Example_<variation>()
func Example_<variation>_<counter>()
func Example<Type|Func>()
func Example<Type|Func>_<counter>()
func Example<Type|Func>_<variation>()
func Example<Type|Func>_<variation>_<counter>()
func Example<Type|Func>_<Method|Field>_<counter>()
func Example<Type|Func>_<Method|Field>_<variation>()
func Example<Type|Func>_<Method|Field>_<variation>_<counter>()
```

Here,

- `<Type|Func>`: Type name or function name. `UpperCamelCase`.
- `<Method|Field>`: Method name or field name. `UpperCamelCase`.
- `<variation>`: Arbitrary words describing the test. `lowerCamelCase`.
- `<counter>`: Counter. e.g. `one`, `two`, `three`.

### Example Test Samples

Try on [The Go Playground](https://go.dev/play/p/KuOvrdfByqc).

```go
func ExampleToUpper() {
	fmt.Println(strings.ToUpper("abc"))
	fmt.Println(strings.ToUpper("DEf"))
	// Output:
	// ABC
	// DEF
}
```

## Unit Test

### Unit Test Namings

Unit test function names should follow the following naming conventions.

```go
func Test<Type|Func>(t *testing.T)
func Test<Type|Func>_<counter>(t *testing.T)
func Test<Type|Func>_<variation>(t *testing.T)
func Test<Type|Func>_<variation>_<counter>(t *testing.T)
func Test<Type|Func>_<Method|Field>_<counter>(t *testing.T)
func Test<Type|Func>_<Method|Field>_<variation>(t *testing.T)
func Test<Type|Func>_<Method|Field>_<variation>_<counter>(t *testing.T)
```

Here,

- `<Type|Func>`: Type name or function name. `UpperCamelCase`.
- `<Method|Field>`: Method name or field name. `UpperCamelCase`.
- `<variation>`: Arbitrary words describing the test. `lowerCamelCase`.
- `<counter>`: Counter. e.g. `one`, `two`, `three`.

### Unit Test Samples

Try on [The Go Playground](https://go.dev/play/p/7VeE-vPYNvF).

```go
// Write sub tests one by one.
func TestToUpper_one(t *testing.T) {
	t.Parallel() // Run parallel if possible.

	t.Run("contain lower char", func(t *testing.T) {
		got := strings.ToUpper("AbC")
		if got != "ABC" {
			t.Errorf("wrong value. -want:%s +got:%s", "ABC", got)
		}
	})

	t.Run("all lower chars", func(t *testing.T) {
		got := strings.ToUpper("abc")
		if got != "ABC" {
			t.Errorf("wrong value. -want:%s +got:%s", "ABC", got)
		}
	})
}

// Write table driven test. 
func TestToUpper_two(t *testing.T) {
	t.Parallel() // Run parallel if possible.

	// Test cases are defined as map.
	testCases := map[string]struct {
		target string
		want   string
	}{
		"contain lower char": {"AbC", "ABC"},
		"all lower chars":    {"abc", "ABC"},
	}

	for name, tc := range testCases {
		t.Run(name, func(t *testing.T) {
			got := strings.ToUpper(tc.target)
			if got != tc.want {
				t.Errorf("wrong value. -want:%s +got:%s", tc.want, got)
			}
		})
	}
}

// Write table driven test. 
func TestToUpper_three(t *testing.T) {
	t.Parallel() // Run parallel if possible.

	// Test cases are defined as slice.
	testCases := []struct {
		target string
		want   string
	}{
		00: {"AbC", "ABC"},
		01: {"abc", "ABC"},
	}

	for i, tc := range testCases {
		t.Run(fmt.Sprintf("case%02d", i), func(t *testing.T) {
			got := strings.ToUpper(tc.target)
			if got != tc.want {
				t.Errorf("wrong value. -want:%s +got:%s", tc.want, got)
			}
		})
	}
}
```

## Benchmark Test

### Benchmark Test Namings

Test functions for unit tests should follow the following namings.

```go
func Benchmark<Type|Func>(b *testing.B)
func Benchmark<Type|Func>_<counter>(b *testing.B)
func Benchmark<Type|Func>_<variation>(b *testing.B)
func Benchmark<Type|Func>_<variation>_<counter>(b *testing.B)
func Benchmark<Type|Func>_<Method|Field>_<counter>(b *testing.B)
func Benchmark<Type|Func>_<Method|Field>_<variation>(b *testing.B)
func Benchmark<Type|Func>_<Method|Field>_<variation>_<counter>(b *testing.B)
```

Here,

- `<Type|Func>`: Type name or function name. `UpperCamelCase`.
- `<Method|Field>`: Method name or field name. `UpperCamelCase`.
- `<variation>`: Arbitrary words describing the test. `lowerCamelCase`.
- `<counter>`: Counter. e.g. `one`, `two`, `three`.

### Benchmark Test Samples

```go
func BenchmarkToUpper(b *testing.B) {
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		strings.ToUpper("abc")
	}
}
```

## Fuzz Test

### Fuzz Test Namings

Test functions for unit tests should follow the following namings.

```go
func Fuzz<Type|Func>(f *testing.F)
func Fuzz<Type|Func>_<counter>(f *testing.F)
func Fuzz<Type|Func>_<variation>(f *testing.F)
func Fuzz<Type|Func>_<variation>_<counter>(f *testing.F)
func Fuzz<Type|Func>_<Method|Field>_<counter>(f *testing.F)
func Fuzz<Type|Func>_<Method|Field>_<variation>(f *testing.F)
func Fuzz<Type|Func>_<Method|Field>_<variation>_<counter>(f *testing.F)
```

Here,

- `<Type|Func>`: Type name or function name. `UpperCamelCase`.
- `<Method|Field>`: Method name or field name. `UpperCamelCase`.
- `<variation>`: Arbitrary words describing the test. `lowerCamelCase`.
- `<counter>`: Counter. e.g. `one`, `two`, `three`.

### Fuzz Test Samples
