% Required for TeX classes
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2020/03/25 Custom homework class]

% Based off of the `article' class
\LoadClass{article}


%%%%
% Package options and document metadata
%%%%

\RequirePackage{xkeyval}

% Take key=val options from the \documentclass declaration
\DeclareOptionX{name}[]{\newcommand{\name}{#1}}
\DeclareOptionX{num}[]{\newcommand{\hwnum}{#1}}
\DeclareOptionX{course}[]{\newcommand{\course}{#1}}
\DeclareOptionX{andrewid}[]{\newcommand{\andrewid}{#1}}
\DeclareOptionX{type}[Homework]{\newcommand{\assignmenttype}{#1}}
\DeclareOptionX{emaildomain}[cmu.edu]{\newcommand{\emaildomain}{#1}}

\ProcessOptionsX\relax

% Raise errors if any of the options are undefined
\@ifundefined{name}{ \ClassError{homework}{name option required}{} }{}
\@ifundefined{hwnum}{ \ClassError{homework}{hwnum option required}{} }{}
\@ifundefined{course}{ \ClassError{homework}{course option required}{} }{}
\@ifundefined{andrewid}{ \ClassError{homework}{andrewid option required}{} }{}

% Set default values if optional options are undefined
\@ifundefined{emaildomain}{ \newcommand{\emaildomain}{cmu.edu} }{}
\@ifundefined{assignmenttype}{ \newcommand{\assignmenttype}{Homework} }{}

% Define commands depending on components passed as key/values or default options
\newcommand{\assignmentname}{\assignmenttype{} \hwnum}
\newcommand{\email}{\andrewid @\emaildomain}

% Set PDF metadata based on the global variables
\RequirePackage[pdftex,
    pdfauthor={\name},
    pdftitle={\course{} -- \assignmentname}]{hyperref}


%%%%
% Imports and formatting
%%%%

% Set the page on letter paper with microtype improvements and better list formatting
\RequirePackage[letterpaper]{geometry}
\RequirePackage{microtype}
\RequirePackage{enumerate}
\RequirePackage{multicol}

% Skip lines and don't indent
\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

% Import math fonts and symbols
\RequirePackage{amsfonts}
\RequirePackage{amsmath,amsthm,amssymb}

% Palatino typeface -- includes (old-style) text figures
\RequirePackage[osf]{mathpazo}

% Page header
\RequirePackage{fancyhdr}
\lhead{\name \\ \texttt{\email}}
\rhead{\today \\ \course{} -- \assignmentname}
\pagestyle{fancyplain}
    
% Format section headers for use in writing ``Problem X'' in small caps with appropriate spacing
\RequirePackage{titlesec}
\titleformat{\section}{\large\sc}{}{0em}{}
\titlespacing{\section}{0em}{0em}{1em}
    
    
%%%%
% Custom commands -- words, environments, and formatting
%%%%

% Headers for numbered problems
\newcommand{\problem}[1]{\section{Problem #1}}

% Boxed ``to-do'' statements to make incomplete problems clear
\newcommand{\todo}{\fbox{TO-DO}\ \ }

% 75% measure rules to split problems into sections
\newcommand{\separator}{\vfill \begin{center} \rule{0.75\linewidth}{0.5pt} \\ \end{center} \vfill}

% Environment for consistently-formatted claim statements
\newenvironment{claim}{\textit{Claim.}}{\vspace{-1em}}


%%%%
% Custom commands -- redefined
%%%%

% Redefine the ampersand to use the italic version by default - as-per Elements of Typographic Style
% See: https://tex.stackexchange.com/a/47353/150811
\let\textand\&
\renewcommand{\&}{\textit{\textand}}

% Redefine epsilon and empty set commands to use better-looking versions
\renewcommand{\epsilon}{\ensuremath{\varepsilon}}
\renewcommand{\emptyset}{\varnothing}

% Redefine the bar and vec commands to use larger overlines and bold-faced vectors
\renewcommand{\bar}{\overline}
\renewcommand{\vec}{\mathbf}


%%%%
% Custom commands -- math symbols and math shortcuts
%%%%

% Shortcuts for left/right parentheses, square brackets, and curly braces
\newcommand{\lrp}[1]{\left( #1 \right)}
\newcommand{\lrs}[1]{\left[ #1 \right]}
\newcommand{\lrc}[1]{\left{ #1 \right}}

% Commonly-used sets
\newcommand{\N}{\ensuremath{\mathbb{N}}}
\newcommand{\Z}{\ensuremath{\mathbb{Z}}}
\newcommand{\R}{\ensuremath{\mathbb{R}}}
\newcommand{\Q}{\ensuremath{\mathbb{Q}}}
\newcommand{\C}{\ensuremath{\mathbb{C}}}

% Powerset and shortcut for derivative
\newcommand{\powerset}{\ensuremath{\mathcal{P}}}
\newcommand{\ddx}{\ensuremath{\frac{d}{dx}}}

% Probability measure, expectation, and variance formatting
\newcommand{\E}[1]{\mathbb{E}\left[ #1 \right]}
\renewcommand{\P}[1]{\mathbb{P}\left[ #1 \right]}
\newcommand{\var}[1]{\mathrm{var}\left( #1 \right)}

% Commonly-used computer science languages
\newcommand{\NP}{\ensuremath{\mathsf{NP}}}
\newcommand{\coNP}{\ensuremath{\mathsf{coNP}}}

% Commonly-used reductions add semantic clarity
\newcommand{\CookReducesTo}{\ensuremath{\leq^P_T}}
\newcommand{\KarpReducesTo}{\ensuremath{\leq^P_m}}