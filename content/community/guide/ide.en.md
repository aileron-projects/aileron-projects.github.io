---
title: IDE
linkTitle: IDE
type: docs
categories: ["community"]
tags: ["community", "guide", "ide"]
weight: 10
---

To share the developer experience, we share our standard IDE environment.
These IDE environment is recommended but not required to develop the AILERON Projects.

## IDE

Most of the maintainers use [Visual Studio Code](https://code.visualstudio.com/).

See

- [Go Developer Survey 2024 H2 Results](https://go.dev/blog/survey2024-h2-results)
- [Go Developer Survey 2024 H1 Results](https://go.dev/blog/survey2024-h1-results)

Following section describes recommended VSCode plugins.

## BASIC

### [Go](https://marketplace.visualstudio.com/items?itemName=golang.go)

[Go](https://marketplace.visualstudio.com/items?itemName=golang.go) is the official Go plugin for VSCode.
Almost all Go developers using VSCode install this plugin.

### [Go Test Explorer](https://marketplace.visualstudio.com/items?itemName=ethan-reesor.vscode-go-test-adapter) or [Go Test Explorer](https://marketplace.visualstudio.com/items?itemName=premparihar.gotestexplorer)

[Go Test Explorer](https://marketplace.visualstudio.com/items?itemName=ethan-reesor.vscode-go-test-adapter) or [Go Test Explorer](https://marketplace.visualstudio.com/items?itemName=premparihar.gotestexplorer) supports Go testing.
These plugins are not required but highly recommended.

## RECOMMENDED

### [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

Many AILERON projects run [markdownlint](https://github.com/DavidAnson/markdownlint) on CICD pipeline.
It will be run on pipelines but recommended to run locally before pushing changes.
So, use [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) plugin.

### [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

Some AILERON projects run [cSpell](https://cspell.org/) on CICD pipeline.
It will be run on pipelines but recommended to run locally before pushing changes.
So, use [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) plugin.
It helps you to find misspellings.

## OPTIONAL

### [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens)

[Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) highlights the entire line wherever a diagnostic is generated by the language and also prints the message inline.

### [Error Gutters](https://marketplace.visualstudio.com/items?itemName=IgorSbitnev.error-gutters)

[Error Gutters](https://marketplace.visualstudio.com/items?itemName=IgorSbitnev.error-gutters) put gutters to the right from the line of code, containing any diagnostic issue.

### [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)

[indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow) colorizes the indentation.

### [Trailing Spaces](https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces)

[Trailing Spaces](https://marketplace.visualstudio.com/items?itemName=shardulm94.trailing-spaces) highlight trailing spaces.
