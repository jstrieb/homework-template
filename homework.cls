% Required for TeX classes
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2020/03/25 Custom homework class]

%%%%
% Imports and formatting
%%%%

% Based off of the `article' class
\LoadClass{article}

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
    
% Format section headers for use in writing ``Problem X'' in small caps with appropriate spacing
\usepackage{titlesec}
\titleformat{\section}{\large\sc}{}{0em}{}
\titlespacing{\section}{0em}{0em}{1em}
    
    
%%%%
% Custom commands
%%%%

% Format an email address with a valid mailto link and appropriate font
\newcommand{\emaillink}[1]\href{mailto:#1}{{\texttt{#1}}}

% Headers for numbered problems
\newcommand{\problem}[1]{\section{Problem #1}}

% Boxed ``to-do'' statements to make incomplete problems clear
\newcommand{\todo}{\fbox{TO-DO}\ \ }

% 75% measure rules to split problems into sections
\renewcommand{\split}{\begin{center} \rule{0.75\linewidth}{0.5pt} \\ \end{center}}