[![l3build](https://github.com/yegor256/naive-ebnf/actions/workflows/l3build.yml/badge.svg)](https://github.com/yegor256/naive-ebnf/actions/workflows/l3build.yml)
[![CTAN](https://img.shields.io/ctan/v/naive-ebnf)](https://ctan.org/pkg/naive-ebnf)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/naive-ebnf/blob/master/LICENSE.txt)

This LaTeX package helps you typeset an
[Extended Backus-Naur Form](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form) (EBNF)
using plain text format.

First, [install it](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
from [CTAN](https://ctan.org/pkg/naive-ebnf)
and then use in the preamble:

```text
\documentclass{article}
\usepackage{naive-ebnf}
\begin{document}
\begin{ebnf}
<Expression> := <Variable>
  | "$\lambda$" <Variable> "." <Expression>
  | "(" <Expression> <Expression> ")"
\end{ebnf}
\end{document}
```

Otherwise, you can download [`naive-ebnf.sty`](https://raw.githubusercontent.com/yegor256/naive-ebnf/gh-pages/naive-ebnf/naive-ebnf.sty) and add to your project.

## How to Contribute

If you want to contribute yourself, make a fork, then create a branch, 
then run `l3build ctan` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `l3build ctan` again. If the build is
still clean, submit a pull request.
