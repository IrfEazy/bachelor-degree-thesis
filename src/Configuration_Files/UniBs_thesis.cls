\NeedsTeXFormat{LaTeX2e}
\ProcessOptions\relax

%--------------------------------------------------------------------------
%	HANDLING THE STYLE OF THE THESIS
%--------------------------------------------------------------------------
\LoadClass[12pt, twoside]{book} % 12 pt font, two-sided book style
\RequirePackage[a4paper, includehead, headheight=0.6cm, inner=3.0cm ,outer=2.0cm, top=2.5cm, bottom=2.5cm]{geometry}

\RequirePackage[bf, font=onehalfspacing]{caption} % caption: FIG in bold, 1.5 line spacing in figure and table captions
\newcommand{\thesisspacing}{\onehalfspacing}

% Define new command: numbered and un-numbered chapter in Polimi style. 

\let\latexchapter\chapter
\renewcommand{\chapter}{\@ifstar{\polimichapterstar}{\polimichapter}}

\newcommand{\polimichapter}[1]{
    \cleardoublepage % To make sure the previous headers are passed
    \phantomsection % To help hyperref link to the right page
    \latexchapter{#1}
    \renewcommand{\headrulewidth}{0pt} %removing the horizontal line in the header
    \fancyhead[LO, RE]{ \textbf{\textcolor{blueunibs}\thechapter\hsp\textcolor{blueunibs}{|   }\hsp \leftmark}}% Header
    \fancyhead[LE, RO]{\thepage}
    \vspace{-1cm}
}

\newcommand{\polimichapterstar}[1]{
    \cleardoublepage % To make sure the previous headers are passed
    \phantomsection % To help hyperref link to the right page
    \latexchapter*{#1}
    \renewcommand{\headrulewidth}{0pt} %removing the horizontal line in the header
    \addcontentsline{toc}{chapter}{#1} % Also adds the chapter name to the Contents
    \fancyhead[LO, RE]{ \bfseries \textcolor{blueunibs}{|   } #1} % Header \textbf{\leftmark} \hspace{1mm}}
    \fancyhead[LE, RO]{\thepage}
    \vspace{-1cm}
}

% Define new command: start preamble
\newcommand{\startpreamble}{
    \pagestyle{fancy} % Change the header style
    \fancyhf{} % Clear header and footer
    \renewcommand{\chaptermark}[1]{\markboth{##1}{}} % Getting the chapter name right
    \rhead{\thepage} % Page number at the right of the header
    \frontmatter % Use roman page numbering style (i, ii, iii, iv...) for the preamble pages
    \thesisspacing % Double or single spacing
}

%------------------------------------------------------------------------
%	BUILDING THE TITLE PAGE
%------------------------------------------------------------------------

% Define new command: adding background picture (halo) on bottom left (used for empty pages)
\newcommand\BackgroundPic{
    \put(-150,-200){%
        \parbox[b][\paperheight]{\paperwidth}{%
            \vfill
            \centering
            \transparent{0.4}
            \includegraphics[width=0.5\paperwidth]{./Images/raggiera}
            \vfill
        }
    }
}

\RequirePackage{xkeyval} % Handling keyword options.

% Define keys for title pages
\newif\if@cosupervisorexist\@cosupervisorexistfalse
\define@key[OIST]{title}{title}{\def\thesistitle{#1}}
\define@key[OIST]{title}{name}{\def\name{#1}}
\define@key[OIST]{title}{academicyear}{\def\academicyear{#1}}

\providecommand{\puttitle}{}
\renewcommand{\puttitle}[1]{
    \@puttitle{}{#1}
}

\providecommand{\@puttitle}{}
\renewcommand{\@puttitle}[2]{%
    \setkeys[OIST]{title}{#2}

    \begin{titlepage}
        \begin{minipage}{\textwidth}
        {\centering\includegraphics[trim={1.2cm 0 0 0},clip,width=72.4mm]{Images/02_ING_IND_INFORMAZIONE}\par}
        {\Large{\hfill}\par}
        {\Large{\hfill}\par}
        {\centering\Large DIPARTIMENTO DI INGEGNERIA DELL'INFORMAZIONE\par}
        {\centering\Large Corso di Laurea\par}
        {\centering\Large in Ingegneria Informatica\par}
        {\large{\hfill}\par}
        {\large{\hfill}\par}
        {\centering\LARGE\bf\color{blueunibs} Relazione Finale\par}
        {\centering\LARGE\bf\color{blueunibs}\thesistitle\par}
        {\large{\hfill}\par}
        {\large{\hfill}\par}
        {\large{\hfill}\par}
        {\Large{Relatore: Prof.\ Gian Franco Lamperti}\par}
        {\centering\includegraphics[width=0.5\linewidth]{Images/signature}\par}
        {\begin{flushright}
        {\Large{Laureando}\par}
        {\Large{\name}\par}
        {\Large{Matricola n.\ 725469}\par}
        \end{flushright}}
        {\large{\hfill}\par}
        {\large{\hfill}\par}
        {\large{\hfill}\par}
        {\centering\Large{Anno Accademico \academicyear}\par}
        \end{minipage}
    \end{titlepage}
}

\newcommand\blankpage{%
    \null
    \AddToShipoutPicture*{\BackgroundPic}
    \thispagestyle{empty}%
    \addtocounter{page}{-1}%
    \newpage
}