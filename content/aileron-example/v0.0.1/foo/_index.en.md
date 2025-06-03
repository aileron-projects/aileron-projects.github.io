---
title: "Foo Title"
linkTitle: "Foo Link Title"
identifier: "Foo Identifier"
type: docs
weight: 1
categories: ["foo"]
tags: ["foo"]
description: "aileron documentation example"
---

This file is `website/foo/_index.en.md`.

Tag is `{{< tag >}}`.

Prj is `{{< prj >}}`.

Date is `{{< date >}}`.

Images can be embedded with relative path.

{{% image source="aileron.png" %}}

```go:aileron.go {linenos=inline hl_lines=[3,"6-8"] style=emacs}
package main

import "fmt"

func main() {
    for i := 0; i < 3; i++ {
        fmt.Println("Value of i:", i)
    }
}
```

```go {title="aileron.go" linenos=inline hl_lines=[3,"9-11"] style=emacs}
{{% code source="aileron.go" %}}
```

```go {linenos=inline hl_lines=[3,"6-8"]}
{{% snippet source="aileron.go" id="main" %}}
```
