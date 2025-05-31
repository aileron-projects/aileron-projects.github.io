---
title: Checks
linkTitle: Checks
type: docs
categories: ["community"]
tags: ["community", "guide", "checks"]
weight: 30
---


Common scripts includes some check scripts in its repository [_scripts](https://github.com/aileron-projects/_scripts) as well as linting.

Following section describes check that are applied for AILERON Projects to keep projects cleat from the stand point view of governance.

## License Check

AILERON Projects adopt APache License 2.0.
All depending libraries must compatible with the Apache License 2.0.

It is checked by using [go-licenses](https://github.com/google/go-licenses) and currently following licenses are allowed by default.

```text
MIT,Apache-2.0,BSD-2-Clause,BSD-3-Clause,BSD-4-Clause,ISC
```

See the following resources.

- Makefile: [makefiles/go-licenses.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/go-licenses.mk)
- Github Action: [go-licenses/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/go-licenses/action.yaml)

This command runs prettier when using the Makefile.

```bash
make go-licenses-run
```

## Copyright Checks

AILERON Projects cannot and must not contain source codes that are distributed under copyleft license.
It is checked by using [scanoss](https://github.com/scanoss/scanoss.py).

See the following resources.

- Makefile: [makefiles/scanoss.mk](https://github.com/aileron-projects/_scripts/blob/main/makefiles/scanoss.mk)
- Github Action: [scanoss/action.yaml](https://github.com/aileron-projects/_scripts/blob/main/.github/actions/scanoss/action.yaml)

This command runs prettier when using the Makefile.

```bash
make scanoss-run
```

Note that the scanoss has API rate limits.
