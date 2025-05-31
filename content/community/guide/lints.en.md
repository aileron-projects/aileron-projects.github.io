---
title: Lints
linkTitle: Lints
type: docs
categories: ["community"]
tags: ["community", "guide", "lint"]
weight: 20
---


Common scripts including running linters are stored in the [_scripts](https://github.com/aileron-projects/_scripts) repository.
By using those scripts, following linting should be applied for all AILERON projects.
It depends on the project which lints are applied.

## Go

### fmt

[go fmt](https://pkg.go.dev/cmd/gofmt) should be applied for all go codes.

See the following resources.

- Makefile: [makefiles/go.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/go.mk)
- Github Action: [go-fmt/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/go-fmt/action.yaml)

This command runs prettier when using the Makefile.

```bash
make go-fmt
```

### vet

[go vet](https://pkg.go.dev/cmd/vet) should be applied for all go codes.

See the following resources.

- Makefile: [makefiles/go.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/go.mk)
- Github Action: [go-vet/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/go-vet/action.yaml)

This command runs prettier when using the Makefile.

```bash
make go-vet
```

### golangci-lint

[golangci-lint](https://golangci-lint.run/) is widely used linters for go projects.
It should be applied for all AILERON Projects.
Applied rule sets depends on the projects.

See the following resources.

- Makefile: [makefiles/golangci-lint.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/golangci-lint.mk)
- Github Action: [golangci-lint/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/golangci-lint/action.yaml)

This command runs prettier when using the Makefile.

```bash
make golangci-lint-run
```

## Markdown

### markdownlint

[markdownlint](https://github.com/DavidAnson/markdownlint) should be applied for all markdown documents.

See the following resources.

- Makefile: [makefiles/markdownlint.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/markdownlint.mk)
- Github Action: [markdownlint/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/markdownlint/action.yaml)
- VSCode Plugin: [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

This command runs prettier when using the Makefile.

```bash
make markdownlint-run
```

## JSON/YAML/TOML/XML

### prettier

[Prettier](https://prettier.io/) should be applied for json, yaml, toms and xml documents if applicable.

See the following resources.

- Makefile: [makefiles/prettier.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/prettier.mk)
- Github Action: [prettier/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/prettier/action.yaml)
- VSCode Plugin: [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

This command runs prettier when using the Makefile.

```bash
make prettier-run
```

## ShellScript

### shellcheck

[ShellCheck](https://www.shellcheck.net/) is widely used shell linter.
It should be applied for shell scripts if applicable.

See the following resources.

- Makefile: [makefiles/shellcheck.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/shellcheck.mk)
- Github Action: [shellcheck/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/shellcheck/action.yaml)
- VSCode Plugin: [ShellCheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck)

This command runs shecllcheck when using the Makefile.

```bash
make shellcheck-run
```

## shfmt

[shfmt](https://github.com/mvdan/sh) formats shell scripts.
It should be applied for shell scripts if applicable.

See the following resources.

- Makefile: [makefiles/shfmt.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/shfmt.mk)
- Github Action: [shfmt/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/shfmt/action.yaml)
- VSCode Plugin: [shfmt](https://marketplace.visualstudio.com/items?itemName=mkhl.shfmt)

This command runs shfmt when using the Makefile.

```bash
make shfmt-run
```
