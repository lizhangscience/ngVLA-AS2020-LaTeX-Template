% ngVLA AS2020 LaTeX class file
% version 1.0, 31 Oct 2018
% C. Hales (NRAO SOC), chales@nrao.edu
% https://github.com/chrishales/ngVLA-AS2020-LaTeX-Template
%
% Change Record: Version, Date, Comment
% 1.0, 2018/10/31, initial version
%

% NOTE: This class file assumes that there is only one document "Approver"
%       and one document "Releaser" (these names are shown on the document front
%       page).  If you require more table rows, you will need to manually modify
%       this class file (sorry, I didn't have time to automate this).
%       Search for "MODIFY HERE" to locate the relevant lines.


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ngVLA_AS2020}[2018/10/31 ngVLA LaTeX class]

\LoadClass[11pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\renewcommand*\familydefault{\sfdefault} % sans serif
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{xcolor}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{titlesec}
\RequirePackage{setspace}
\RequirePackage{hyperref}
\RequirePackage[hmargin=2.5cm,top=5cm,headheight=3.5cm,headsep=1.5em,footskip=40pt]{geometry}

\setlength{\parindent}{0em}
\setlength{\parskip}{1em}
\newlength{\deftabcolsep}
\setlength{\deftabcolsep}{\tabcolsep}
\renewcommand*{\contentsname}{Table of Contents}

\titleclass{\subsubsubsection}{straight}[\subsection]

\newcounter{subsubsubsection}[subsubsection]
\renewcommand*\thesubsubsubsection{\thesubsubsection.\arabic{subsubsubsection}}
\renewcommand*\theparagraph{\thesubsubsubsection.\arabic{paragraph}}

\titleformat{\subsubsubsection}
  {\normalfont\normalsize\bfseries}{\thesubsubsubsection}{1em}{}
\titlespacing*{\subsubsubsection}
{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\makeatletter
\renewcommand*\paragraph{\@startsection{paragraph}{5}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {1.5ex plus .2ex}%
  {\normalfont\normalsize\bfseries}}
\renewcommand*\subparagraph{\@startsection{subparagraph}{6}{\parindent}%
  {3.25ex \@plus1ex \@minus .2ex}%
  {1.5ex plus .2ex}%
  {\normalfont\normalsize\bfseries}}
\def\toclevel@subsubsubsection{4}
\def\toclevel@paragraph{5}
\def\toclevel@paragraph{6}
\def\l@subsubsubsection{\@dottedtocline{4}{7em}{4em}}
\def\l@paragraph{\@dottedtocline{5}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{6}{14em}{6em}}
\makeatother

\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{6}
\newcommand*{\makeTOC}{\setstretch{0.5}\tableofcontents\setstretch{1}}

\pagestyle{fancy}
\renewcommand*{\headrulewidth}{0pt}
\fancyhf{} % clear all header and footer fields
\fancyhead[C]{
\renewcommand*{\arraystretch}{0}
\setlength{\tabcolsep}{0pt}
\begin{tabular}{@{}m{\dimexpr 0.16\linewidth}m{\dimexpr 0.84\linewidth}@{}}
    \includegraphics[trim={1cm 0.5cm 0 0},clip,width=2.5cm]{logo_ngVLA.jpg} &
    \setlength{\tabcolsep}{\deftabcolsep}
    \begin{tabular}{|m{\dimexpr 0.7\linewidth-2.1\tabcolsep}|m{\dimexpr 0.3\linewidth-2.1\tabcolsep}|}
        \hline
        \parbox[c][1.25cm][c]{0cm}{}
        \begin{tabular}{@{}m{\dimexpr 0.13\linewidth-2\tabcolsep}m{\dimexpr 0.77\linewidth-2\tabcolsep}@{}}
            Title:\vphantom{ngVLA \myTITLE} & ngVLA \myTITLE
        \end{tabular}
        &
        \begin{tabular}{@{}m{\dimexpr 0.35\linewidth-2\tabcolsep}m{\dimexpr 0.65\linewidth-2\tabcolsep}@{}}
            Date:\vphantom{\myDATE} & \myDATE
        \end{tabular}
        \\
        \hline
        \parbox[c][1.25cm][c]{0cm}{}
        \begin{tabular}{@{}m{\dimexpr 0.13\linewidth-2\tabcolsep}m{\dimexpr 0.77\linewidth-2\tabcolsep}@{}}
            Doc:\vphantom{\myNAME} & \myNAME
        \end{tabular}
        &
        \begin{tabular}{@{}m{\dimexpr 0.5\linewidth-2\tabcolsep}m{\dimexpr 0.5\linewidth-2\tabcolsep}@{}}
            Version:\vphantom{\myVERSION} & \myVERSION
        \end{tabular}
        \\
        \hline  
    \end{tabular}
    \tabularnewline
\end{tabular}
}
\fancyfoot[R]{Page \thepage\ of \pageref{LastPage}}

\newcommand*{\ngVLAtitleprefix}{Next Generation Very Large Array (ngVLA):\\}
\title{\ngVLAtitleprefix \myTITLE}

\renewcommand*{\arraystretch}{1.1}

\makeatletter
    \def\@maketitle{
  \newpage
  %\null
  %\vskip 1em
  \begin{center}
    \includegraphics[height=5cm]{logo_ngVLA.jpg}
    \vskip -0.5em
    \let \footnote \thanks
    {\LARGE {\bf \@title} \par}
    \vskip 0.5em
    {\Large Version \myVERSION: \myDATE \\ Status: \mySTATUS \par}
    \vskip 1.5em
    {\large
    \begin{tabular}{|m{\dimexpr \linewidth-2\tabcolsep}|@{}m{0pt}@{}}
        \hline
        {\bf Prepared By:}
        & \\ \hline
        \authorlist
        & \\[2em] \hline
    \end{tabular}\par
    \vskip 1.5em
    \begin{tabular}{|m{\dimexpr 0.33\linewidth-2\tabcolsep}|m{\dimexpr 0.34\linewidth-2\tabcolsep}|m{\dimexpr 0.33\linewidth-2\tabcolsep}|@{}m{0pt}@{}}
        \hline
        % MODIFY HERE --------------
        \multicolumn{3}{|l|}{{\bf Approved By:}} & \\ \hline
        {\bf Name} & {\bf Role} & {\bf Signature} & \\ \hline
        \approverNAME & \approverTITLE & \approverSIGNATURE & \\[2em] \hline
        \multicolumn{3}{|l|}{{\bf Released By:}} & \\ \hline
        {\bf Name} & {\bf Role} & {\bf Signature} & \\ \hline
        \releaserNAME & \releaserTITLE & \releaserSIGNATURE & \\[2em] \hline
        % --------------------------
    \end{tabular}\par}
  \end{center}
  \par
  \vskip 1.5em}
\makeatother

\newcommand*{\maketitlepage}{
    \maketitle
    \thispagestyle{fancy}
    \newpage
}

\newcolumntype{L}[1]{m{\dimexpr #1\linewidth-2\tabcolsep}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{\dimexpr #1\linewidth-2\tabcolsep}}
\definecolor{LightBlue}{rgb}{0.777,0.848,0.960}
\definecolor{LightGray}{gray}{0.871}
\newcommand*{\shadeHeaderBlue}{\rowcolor{LightBlue}}
\newcommand*{\shadeHeaderGray}{\rowcolor{LightGray}}
