# LaTeX Template for Homework Problem Sets

This simple LaTeX class file and shortcut package contain document style settings and shortcut commands (respectively). Designed specifically for typesetting solutions to math and computer science problem sets, this homework template is intended to make typing solutions as quick, painless, and visually consistent as possible.

In particular, the class is designed to be consistent with best-practices from the authoritative [_Elements of Typographic Style_ by Robert Bringhurst](https://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style). By default, the text is set in the [Palatino](https://en.wikipedia.org/wiki/Palatino) typeface, created by the late [Hermann Zapf](https://en.wikipedia.org/wiki/Hermann_Zapf) (who worked with Don Knuth to create some of the first [digital typefaces for setting mathematics](http://ultrasparky.org/school/pdf/DanielRhatigan_Dissertation.pdf)). Palatino (via the `mathpazo` package with the `osf` option) was chosen specifically because it uses [old-style figures](https://en.wikipedia.org/wiki/Text_figures) for numbers outside of math mode, as opposed to the typical—improper—lining figures, which should ideally be exclusively reserved for setting math. It also contains tasteful small caps for setting the section headers that title each problem. Moreover, Palatino is a splendid face in general.


# Minimal Example

The included [`example.tex`](example.tex) utilizes some of the macros included in the class. The generated [`example.pdf`](example.pdf) provides a sample of what a multi-page typeset assignment might look like. An additional example is included below:
![Single-page example](example.png?raw=true)


# Local Installation

1. Clone the repository and navigate to the proper directory.
```
git clone https://github.com/jstrieb/homework-template.git && cd homework-template
```

2. Use the builtin `Makefile` target to try and install the class in a folder accessible to the local TeX distribution.
```
make install
```

3. If the previous steps did not work, consult the sage wisdom of Stack Exchange for where to install the `.cls` file. In particular, [this answer](https://tex.stackexchange.com/a/1138/150811) may be helpful.


# Usage & Notes

Once the installed, using the template is as simple as invoking `homework` as the designated document class and including some additional options. For example:
```
\documentclass[name=Jacob\ Strieb, andrewid=jstrieb, course=69-420, num=8]{homework}

\begin{document}
    Content...
\end{document}
```

## Document Class Options

The following key-value parameters are accepted by the document class at declaration.
- `name` (required) – name of the student typing the assignment
- `num` (required) – homework assignment number
- `course` (required) – course identifier
- `andrewid` (required) – Andrew ID
- `type` (optional) – assignment type; defaults to "Homework"
- `emaildomain` (optional) – email address domain to be used with Andrew ID; defaults to `cmu.edu`


## Math Shortcuts

To use the custom math shortcuts, use the `hw-shortcuts` package. This package does not take any parameters. The contents of the shortcuts package will likely change significantly over time as I add macros based on what is required for my homework. 
```
\usepackage{hw-shortcuts}
```
