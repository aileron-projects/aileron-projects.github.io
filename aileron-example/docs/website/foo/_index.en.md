---
title: "Foo Title"
linkTitle: "Foo Link Title"
identifier: "Foo Identifier"
type: docs
weight: 1
categories: []
tags: []
description: "aileron documentation example"
---

This file is `website/foo/_index.en.md`.

Tag is `{{< tag >}}`.

Prj is `{{< prj >}}`.

Date is `{{< date >}}`.

Images can be embedded with relative path.

![aileron.png](aileron.png)

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

Collapsible codes.

<details>
<summary>Example code</summary>
<p>

```go {linenos=inline hl_lines=[3,"6-8"]}
{{% snippet source="aileron.go" id="main" %}}
```

</p>
</details>
