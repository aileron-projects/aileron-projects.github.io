---
title: "Alice Title"
linkTitle: "Alice Link Title"
identifier: "Alice Identifier"
type: docs
weight: 3
categories: []
tags: []
description: "aileron documentation example"
---

This file is `website/baz/alice.en.md`.

Tag is `{{< tag >}}`.

Prj is `{{< prj >}}`.

Date is `{{< date >}}`.

Images should go in the `alice/` folder.

It can be embedded with file name without folder name `alice/`.

![aileron.png](aileron.png)

```go {title="aileron.go" linenos=inline hl_lines=[3,"9-11"] style=emacs}
{{% code source="aileron.go" %}}
```

```go {linenos=inline hl_lines=[3,"6-8"]}
{{% snippet source="aileron.go" id="main" %}}
```
