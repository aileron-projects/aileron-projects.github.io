---
title: "Bob Title"
linkTitle: "Bob Link Title"
identifier: "Bob Identifier"
type: docs
weight: 3
categories: []
tags: []
description: "aileron documentation example"
---

This file is `website/baz/bob.en.md`.

Tag is `{{< tag >}}`.

Prj is `{{< prj >}}`.

Date is `{{< date >}}`.

Images should go in the `bob/` folder.

It can be embedded with file name without folder name `bob/`.

{{% image source="aileron.png" %}}

```go {title="aileron.go" linenos=inline hl_lines=[3,"9-11"] style=emacs}
{{% code source="aileron.go" %}}
```

```go {linenos=inline hl_lines=[3,"6-8"]}
{{% snippet source="aileron.go" id="main" %}}
```
