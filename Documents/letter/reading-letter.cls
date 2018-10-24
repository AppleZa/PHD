%%
%% This is file `readingLetter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% readingLetter.dtx  (with options: `class')
%%
%% =======================================================================
%%
%% Copyright (C) 1991-2003 Michael Lenzen.
%%
%% For additional copyright information see further down in this file.
%%
%% This file is part of the G-BRIEF package.
%% -----------------------------------------------------------------------
%%
%% It may be distributed under the terms of the LaTeX Project Public
%% License (LPPL), as described in lppl.txt in the base LaTeX distribution.
%% Either version 1.1 or, at your option, any later version.
%%
%% The latest version of this license is in
%%
%%          http://www.latex-project.org/lppl.txt
%%
%% LPPL Version 1.1 or later is part of all distributions of LaTeX
%% version 1999/06/01 or later.
%%
%%
%% Error reports in case of UNCHANGED versions to
%%
%%                            <lenzen@lenzen.com>
%%                            <m.lenzen@t-online.de>
%% Changed by Julian M. Kunkel for UoR design
%%
\def\filedate{2018/05/17}
\def\fileversion{4.0.2}
\def\filename{reading-letter.cls}
\NeedsTeXFormat{LaTeX2e}[2001/06/01]

\ProvidesClass{reading-letter}[\filedate\space v\fileversion\space reading-letter class]

\usepackage{graphicx}
\usepackage{xcolor}
\definecolor{readingRed}{HTML}{d2002e}
\usepackage{helvet}
\usepackage[hidelinks]{hyperref}
\renewcommand{\familydefault}{\sfdefault}
\setlength{\parskip}{1cm plus4mm minus3mm}

\newdimen\VorschubH
\newdimen\VorschubV
\VorschubH = 0.0mm
\VorschubV = 0.0mm

\def\sprache{english}
\def\telefontex{{\footnotesize Telefon\/:}}
\def\telefaxtext{{\footnotesize Telefax\/:}}
\def\telextext{{\footnotesize Telex\/:}}
\def\emailtext{{\footnotesize e--Mail\/:}}
\def\httptext{{\footnotesize HTTP\/:}}
\def\banktext{{\footnotesize Bankverbindung\/:}}
\def\blztext{{\footnotesize BLZ}}
\def\kontotext{{\footnotesize Kto.}}
\def\subjecttext{{\normalsize Betr.:}}
\def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
\def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
\def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
\def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
\def\datumtext{\footnotesize\textsc{Datum}}
\def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
  M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
  Oktober\or November\or Dezember\fi \space\number\year}

\DeclareOption{10pt}{\def\@schrift{0}}
\DeclareOption{11pt}{\def\@schrift{1}}
\DeclareOption{12pt}{\def\@schrift{2}}

\let\@docencoding\@empty
\DeclareOption{ansinew}{\def\@docencoding{ansinew}}
\DeclareOption{applemac}{\def\@docencoding{applemac}}
\DeclareOption{ascii}{\def\@docencoding{ascii}}
\DeclareOption{cp1250}{\def\@docencoding{cp1250}}
\DeclareOption{cp1252}{\def\@docencoding{cp1252}}
\DeclareOption{cp437de}{\def\@docencoding{cp437de}}
\DeclareOption{cp437}{\def\@docencoding{cp437}}
\DeclareOption{cp850}{\def\@docencoding{cp850}}
\DeclareOption{cp852}{\def\@docencoding{cp852}}
\DeclareOption{cp865}{\def\@docencoding{cp865}}
\DeclareOption{decmulti}{\def\@docencoding{decmulti}}
\DeclareOption{latin1}{\def\@docencoding{latin1}}
\DeclareOption{latin2}{\def\@docencoding{latin2}}
\DeclareOption{latin3}{\def\@docencoding{latin3}}
\DeclareOption{latin4}{\def\@docencoding{latin4}}
\DeclareOption{latin5}{\def\@docencoding{latin5}}
\DeclareOption{latin9}{\def\@docencoding{latin9}}
\DeclareOption{next}{\def\@docencoding{next}}

\DeclareOption{german}{
  \def\sprache{german}
  \def\telefontex{{\footnotesize Telefon\/:}}
  \def\telefaxtext{{\footnotesize Telefax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize e--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bankverbindung\/:}}
  \def\blztext{{\footnotesize BLZ}}
  \def\kontotext{{\footnotesize Kto.}}
  \def\subjecttext{{\normalsize Betr.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
  \def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
  \def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
  \def\datumtext{\footnotesize\textsc{Datum}}
  \def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
    M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
    Oktober\or November\or Dezember\fi \space\number\year}}

\DeclareOption{ngerman}{
  \def\sprache{ngerman}
  \def\telefontex{{\footnotesize Telefon\/:}}
  \def\telefaxtext{{\footnotesize Telefax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize e--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bankverbindung\/:}}
  \def\blztext{{\footnotesize BLZ}}
  \def\kontotext{{\footnotesize Kto.}}
  \def\subjecttext{{\normalsize Betr.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize\textsc{Ihr Schreiben vom}}
  \def\meinzeichentext{\footnotesize\textsc{Mein Zeichen}}
  \def\unserzeichentext{\footnotesize\textsc{Unser Zeichen}}
  \def\datumtext{\footnotesize\textsc{Datum}}
  \def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
    M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
    Oktober\or November\or Dezember\fi \space\number\year}}

\DeclareOption{english}{
  \def\sprache{english}
  \def\telefontex{{\footnotesize phone\/}}
  \def\telefaxtext{{\footnotesize fax\/}}
  \def\telextext{{\footnotesize telex\/}}
  \def\emailtext{{\footnotesize email\/}}
  \def\httptext{{\footnotesize HTTP\/}}
  \def\banktext{{\footnotesize Bank\/}} \def\blztext{{\footnotesize
      code}} \def\kontotext{{\footnotesize acct}}
  \def\subjecttext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
  \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\datumtext{\footnotesize\textsc{Date}}}

\DeclareOption{american}{
  \def\sprache{american}
  \def\telefontex{{\footnotesize Phone\/:}}
  \def\telefaxtext{{\footnotesize Fax\/:}}
  \def\telextext{{\footnotesize Telex\/:}}
  \def\emailtext{{\footnotesize e--Mail\/:}}
  \def\httptext{{\footnotesize HTTP\/:}}
  \def\banktext{{\footnotesize Bank\/:}} \def\blztext{{\footnotesize
      code}} \def\kontotext{{\footnotesize acct}}
  \def\subjecttext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize\textsc{Your Ref.}}
  \def\ihrschreibentext{\footnotesize\textsc{Your Mail}}
  \def\meinzeichentext{\footnotesize\textsc{My Ref.}}
  \def\unserzeichentext{\footnotesize\textsc{Our Ref.}}
  \def\datumtext{\footnotesize\textsc{Date}}}

\ExecuteOptions{11pt,@sprache} \ProcessOptions
\LoadClass[1\@schrift pt, a4paper, oneside, final]{letter}[1999/04/29]
\normalsize

\setlength\oddsidemargin{0\p@}
\setlength\evensidemargin{\oddsidemargin}
\setlength\marginparwidth{90\p@}
\setlength\marginparsep{11\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{-12.69mm}
\setlength\headheight{4.23mm}
\setlength\headsep{6.35mm}
\setlength\topskip{3.38mm}
\addtolength\footskip{4.23mm}

\setlength\textheight{178.88mm}
\setlength\textwidth{165mm}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}

\renewcommand\baselinestretch{1}

\advance\topmargin by \VorschubV
\advance\oddsidemargin by \VorschubH
\setlength\evensidemargin{\oddsidemargin}

\AtEndOfClass{\pagestyle{regularpage}}

\def\Name#1{\def\name{#1}} \def\name{}
\def\Building#1{\def\building{#1}} \def\building{}
\def\POBox#1{\def\pobox{#1}} \def\pobox{}
\def\Unit#1{\def\unit{#1}} \def\unit{}
\def\Qualification#1{\def\qualification{#1}} \def\qualification{}
\def\JobTitle#1{\def\jobtitle{#1}} \def\jobtitle{}
\def\Campus#1{\def\campus{#1}} \def\campus{}
\def\Street#1{\def\strasse{#1}} \def\strasse{}
\def\StreetExtra#1{\def\zusatz{#1}} \def\zusatz{}
\def\City#1{\def\ort{#1}} \def\ort{}
\def\Country#1{\def\land{#1}} \def\land{}
\def\RetourAdress#1{\def\retouradresse{#1}} \def\retouradresse{}

\def\Telefax#1{\def\telefax{#1}} \def\telefax{}
\def\Telex#1{\def\telex{#1}} \def\telex{}
\def\EMail#1{\def\email{#1}} \def\email{}
\def\HTTP#1{\def\http{#1}} \def\http{}
\def\HTTPUnit#1{\def\httpunit{#1}} \def\httpunit{}

\def\Bank#1{\def\bank{#1}} \def\bank{}
\def\BLZ#1{\def\blz{#1}} \def\blz{}
\def\BankAccount#1{\def\konto{#1}} \def\konto{}

\def\PostInfo#1{\def\postvermerk{#1}} \def\postvermerk{}
\def\Adress#1{\def\adresse{#1}} \def\adresse{}

\def\IhrZeichen#1{\def\ihrzeichen{#1}} \def\ihrzeichen{}
\def\IhrSchreiben#1{\def\ihrschreiben{#1}} \def\ihrschreiben{}
\def\MeinZeichen#1{\def\meinzeichen{#1}} \def\meinzeichen{}
\def\Date#1{\def\datum{#1}} \def\datum{\today}
\def\Reference#1{\def\reference{#1}} \def\reference{}

\def\Subject#1{\def\subject{#1}} \def\subject{}

\def\Opening#1{\def\anrede{#1}} \def\anrede{}
\def\Greeting#1#2{\def\gruss{#1} \def\grussskip{#2}}
    \def\gruss{} \def\grussskip{}

\def\Signature#1{\def\unterschrift{#1}} \def\unterschrift{}

\def\Anlagen#1{\def\anlagen{#1}} \def\anlagen{}
\def\Verteiler#1{\def\verteiler{#1}} \def\verteiler{}

\long\def\Einrueckung#1{\par\begin{tabular}{@{\hspace{1in}}p{5in}@{}}
    #1\end{tabular}\par}

\newif\ifklassisch\klassischfalse
\def\klassisch{\klassischtrue}

\newif\iflochermarke\lochermarkefalse
\def\lochermarke{\lochermarketrue}

\newif\iffaltmarken\faltmarkenfalse
\def\faltmarken{\faltmarkentrue}

\newif\iffenstermarken\fenstermarkenfalse
\def\fenstermarken{\fenstermarkentrue}

\newif\ifunserzeichen\unserzeichenfalse
\def\unserzeichen{\unserzeichentrue}

\newenvironment{readingLetter}{
  \thispagestyle{firstpage}
  \setlength\unitlength{1mm}

  \c@page\@ne
  \interlinepenalty=200
  \clearpage

  \strut
  \vspace{8mm}

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \subject\empty \else \ifklassisch \subjecttext \space \space
  \subject \else \textbf{\subject} \fi \mbox{}
  \par \vspace{-1\parskip} \vspace{8mm} \fi

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \anrede\empty \else \anrede \par \fi\nobreak
  \addtolength\textheight{63mm}
  }
{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi

  \vspace{\grussskip} \par \nobreak \stopbreaks \noindent
  \parbox[t]{3.5in}{\raggedright \ignorespaces {\normalsize \ifx
      \gruss\empty \else \gruss \mbox{} \\[8.92mm] \fi \ifx
      \unterschrift\empty \relax \else \ifklassisch
      \textsl{(\unterschrift)} \else \unterschrift \fi
    \fi}\strut} \ifx \anlagen\empty \else \vspace{4mm} \par \anlagen
  \par \fi \ifx \verteiler\empty \else \ifx \anlagen\empty
  \vspace{4mm}\par \fi \verteiler \fi
  \label{pg:lastpage}
}

\def\ps@firstpage{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi
  \headheight16pt\headsep63mm
  \def\@oddhead{
    \unitlength1mm
    \begin{picture}(0,0)
      \put(-9, 0){\parbox{180mm}{\Large \includegraphics[width=4cm]{reading-logo}}}

      %\textsc{\name}
      %\put(-9,-7){\rule{180mm}{0.5pt}}
      \iflochermarke \put(-20,- 130.50){\line(1,0){4}} \fi
      \iffaltmarken \put(-15,- 75.16){\line(1,0){3}}
      \put(-15,-182.16){\line(1,0){3}} \fi
      \put( -9, -22.00){\makebox(85,4)
        {\scriptsize \ifx \retouradresse\empty
          \textrm{\textrm{University of Reading\ $\cdot$\ \name\ $\cdot$\ \building}} \else
            \textrm{\retouradresse} \fi}}


      \put( -9, -26.00){\makebox(85,4)
      {\scriptsize \ifx \retouradresse\empty
        \campus\ \ifx \pobox\empty \else \ $\cdot$\ \pobox \fi $\cdot$\ \ort \ifx \land\empty \else \ $\cdot$\ \land \fi  \else
      \fi}}

      \put( -9, -26.10){\line(1,0){85}}
      \put(-1,-28.15){\parbox[t]{3in}{\ifx \postvermerk\empty \hfill \par
          \else \textbf{\postvermerk} \par \vspace{2mm} \fi \adresse}}
      \iffenstermarken
      \put(-9,-18.15){\line( 1, 0){1}} \put(-9,-18.15){\line( 0,-1){1}}
      \put(76,-18.15){\line(-1, 0){1}} \put(76,-18.15){\line( 0,-1){1}}
      \put(-9,-61.00){\line( 1, 0){1}} \put(-9,-61.00){\line( 0, 1){1}}
      \put(76,-61.00){\line(-1, 0){1}} \put(76,-61.00){\line( 0, 1){1}}
      \fi

      \put(100, -61){\datum}
      \put(100, -51){\small \reference}

      \put(50, 5){
      \begin{minipage}[t]{4cm}
      \scriptsize
          \ifx \jobtitle\empty \else \strut\hfill \jobtitle\\ \fi
          \strut \hfill \textcolor{readingRed}{\name} \ifx \qualification\empty \else \qualification \fi \\
          \strut \hfill\telefon \\
              \ifx \telefax\empty \else \strut \hfill \telefax \\ \fi
              \ifx \telex\empty   \else \strut \hfill \telex \\ \fi
              \ifx \email\empty   \else \strut \hfill \href{mailto:\email}{\email} \\ \fi
              \ifx \http\empty    \else \strut \hfill \href{\http}{\http} \\ \fi
      \end{minipage}
      }

      \put(100, 4.4){
      \begin{minipage}[t]{6cm}
      \small
      \ifx \unit\empty \else \textbf{\unit} \\ \fi
      \scriptsize
      \ifx \httpunit\empty \else \href{\httpunit}{\httpunit} \\ \fi

      \vspace*{-0.5em}

      \ifx \building\empty \else {\building} \\ \fi
      \ifx \campus\empty \else  {\campus}  \fi
      \ifx \pobox\empty \else, PO Box {\pobox} \\ \fi

      \ort\ifx \land\empty \else, {\land} \\ \fi

      \end{minipage}
      }
    \end{picture}
    \hfill}
  \def\@oddfoot{\unitlength1mm
    \begin{picture}(0,0)
      \put(-9,5){\parbox{180mm}{\footnotesize
          \rule{180mm}{0.5pt}

          \hfill
          \textcolor{readingRed}{LIMITLESS} POTENTIAL \hspace{0cm} \textbar \hspace{0.2cm} \textcolor{readingRed}{LIMITLESS} AMBITION \hspace{0cm} \textbar \hspace{0.2cm} \textcolor{readingRed}{LIMITLESS} IMPACT
          }}
    \end{picture} \hfill}
  \def\@evenhead{\@oddhead} \def\@evenfoot{\@oddfoot}}

\def\ps@regularpage{ \headheight36pt\def\@oddhead{\unitlength1mm
    \begin{picture}(0,0)
      \put(0,9){\normalsize{\textcolor{readingRed}{\name}}}
      \put(148,9){\normalsize{\pagename\ \thepage/\pageref{pg:lastpage}} }
      \put(-9,0){\rule{180mm}{0.5pt}}
      \put(0,3){\normalsize {\datum}} %\textsc

      \put(60,9){\normalsize \textbf{\unit}}
      \put(60,3){\normalsize University of Reading}



    \end{picture}\hfill}
    \def\@oddfoot{\unitlength1mm
      \begin{picture}(0,0)
        \put(-9,5){\parbox{180mm}{\footnotesize
            \rule{180mm}{0.5pt}

            \hfill
            \textcolor{readingRed}{LIMITLESS} POTENTIAL \hspace{0cm} \textbar \hspace{0.2cm} \textcolor{readingRed}{LIMITLESS} AMBITION \hspace{0cm} \textbar \hspace{0.2cm} \textcolor{readingRed}{LIMITLESS} IMPACT
            }}
      \end{picture} \hfill}
  \def\@evenhead{\@oddhead}
  \def\@evenfoot{\@oddfoot}}

\IfFileExists{babel.sty}
  {\RequirePackage[\sprache]{babel}[2001/03/01]}
  {\ClassError{readingLetter}
    {Babel not installed !!!}
    {Get babel package !!!}}

\ifx \@docencoding\empty \else
\IfFileExists{inputenc.sty}
  {\RequirePackage[\@docencoding]{inputenc}}
  {\ClassError{readingLetter}
    {LaTeX2e not complete installed or out of date !!!}
    {Get current LaTeX2e !!!}}
\fi

\IfFileExists{marvosym.sty}
  {\RequirePackage{marvosym}}
  {}
  \def\Phone#1{\def\telefon{#1}} \def\telefon{}
\IfFileExists{europs.sty}
  {\RequirePackage{europs}}
  {}{}
\IfFileExists{eurosym.sty}
  {\RequirePackage{eurosym}}
  {}{}


\endinput
%%
%% End of file `readingLetter.cls'.
