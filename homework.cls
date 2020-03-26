% Required for TeX classes
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2020/03/25 Custom homework class]

%%%%
% Imports and formatting
%%%%

% Based off of the `extarticle' class
\LoadClass{article}

% Layout

% Lists and formatting thereof
\RequirePackage{enumitem}
\RequirePackage{multicol}
    
% Formatting titles
    
    
%%%%
% Custom commands
%%%%

% Command to linkify email
\newcommand{\emaillink}[1]{\texttt{\href{mailto:#1}{#1}}}