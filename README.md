[![l3build](https://github.com/yegor256/cfg/actions/workflows/l3build.yml/badge.svg)](https://github.com/yegor256/cfg/actions/workflows/l3build.yml)
[![CTAN](https://img.shields.io/ctan/v/cfg)](https://ctan.org/pkg/cfg)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/cfg/blob/master/LICENSE.txt)

This LaTeX package helps you typeset a
[Context-Free Grammar](https://en.wikipedia.org/wiki/Context-free_grammar) (CFG)
as [Extended Backus-Naur Form](https://en.wikipedia.org/wiki/Extended_Backus%E2%80%93Naur_form) (EBNF).

First, [install it](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
from [CTAN](https://ctan.org/pkg/cfg)
and then use in the preamble:

```tex
\documentclass{article}
\usepackage{cfg}
\begin{document}
\begin{cfg}
<Expression> := <Variable>
  | "$\lambda$" <Variable> "." <Expression>
  | "(" <Expression> <Expression> ")"
\end{cfg}
\end{document}
```

Otherwise, you can download [`cfg.sty`](https://raw.githubusercontent.com/yegor256/cfg/gh-pages/cfg/cfg.sty) and add to your project.

## How to Contribute

If you want to contribute yourself, make a fork, then create a branch, 
then run `l3build ctan` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `l3build ctan` again. If the build is
still clean, submit a pull request.
