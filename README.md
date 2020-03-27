# LaTeX Homework Template for Submitting Online

This simple LaTeX homework template consists of a class file and shortcut package that contain best-practice document style settings and shortcut commands (respectively). Designed specifically for typesetting solutions to math and computer science problem sets that will be graded online, this homework template is intended to make typing solutions as quick, painless, and visually consistent as possible.

In particular, the class is designed to be consistent with best-practices from the authoritative [_Elements of Typographic Style_ by Robert Bringhurst](https://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style). By default, the text is set in the [Palatino](https://en.wikipedia.org/wiki/Palatino) typeface, created by the late [Hermann Zapf](https://en.wikipedia.org/wiki/Hermann_Zapf) (who worked with Don Knuth to create some of the first [digital typefaces for setting mathematics](http://ultrasparky.org/school/pdf/DanielRhatigan_Dissertation.pdf)). Palatino (via the `mathpazo` package with the `osf` option) was chosen specifically because it uses [old-style figures](https://en.wikipedia.org/wiki/Text_figures) for numbers outside of math mode, as opposed to the typical—improper—lining figures, which should ideally be exclusively reserved for setting math. It also contains tasteful small caps for setting the section headers that title each problem. Moreover, Palatino is a splendid face for digital reading in general.

## Online Optimizations

At the time of this template's release, university classes are primarily being conducted remotely. As such, homework submission and grading are primarily performed digitally. This template includes a number of typographic optimizations that make homework assignments easy to read and grade using online platforms such as Gradescope:

- Header with student information is included on every page for quick reference
- Palatino typeface is optimized for digital reading at various sizes, unlike Computer Modern, the default LaTeX font
- Page layout such that a moderately-sized solution can fit on a single page, set on letter paper
- PDF metadata is automatically included
- Microtype is employed to improve [numerous typographic aspects](http://www.khirevich.com/latex/microtype/) of the text, maximizing readability and compactness


# Minimal Example

The included [`example.tex`](example.tex) utilizes some of the macros included in the class. The generated [`example.pdf`](example.pdf) provides a sample of what a multi-page typeset assignment might look like. Alternatively, [open the example in Overleaf](https://www.overleaf.com/read/tskjhbypnhgc)

An additional example is included below:
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

3. If the previous steps did not work, consult the sage wisdom of Stack Exchange for where to install the `.cls` and `.sty` files. In particular, [this answer](https://tex.stackexchange.com/a/1138/150811) may be helpful. Note that both the `homework.cls` and `hw-shortcuts.sty` files should be moved to the same directory to make them accessible.


## Overleaf & ShareLaTeX

Instead of using the template with a local `tex` installation, it is also possible to use the template with Overleaf/ShareLaTeX. 

1. Download the repository as a `zip` file by clicking [here](https://github.com/jstrieb/homework-template/archive/master.zip), or by using the green "Clone" button near the top-right of this page. 

2. Create a new project on Overleaf/ShareLaTeX and upload the `zip` file there.

3. Either create a new `tex` file, or overwrite the contents of the `example.tex` file to typeset your document.

The template is currently in the process of being added to the OVerleaf gallery, after which a link will be available that allows for streamlined cloning and use. In the meantime, it may be possible to copy the project from [this overleaf project](https://www.overleaf.com/read/tskjhbypnhgc).


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
- `andrewid` (required) – Student ID (used for student email)
- `type` (optional) – assignment type; defaults to "Homework"
- `emaildomain` (optional) – email address domain to be used with student ID; defaults to `cmu.edu`


## Math Shortcuts

To use the custom math shortcuts, use the `hw-shortcuts` package. This package does not take any parameters. The contents of the shortcuts package will likely change significantly over time as I add macros based on what is required for my homework. Most users will likely not want to use the math shortcuts without amendment, because they are fairly specific to the homework I have been doing.
```
\usepackage{hw-shortcuts}
```
