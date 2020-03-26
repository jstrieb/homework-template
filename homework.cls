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
    
% Formatting titles
    
    
%%%%
% Custom commands
%%%%

% Command to linkify email
\newcommand{\emaillink}[1]{\texttt{\href{mailto:#1}{#1}}}