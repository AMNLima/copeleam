%% This is file `copeleam.cls'
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cls/copeleam}[2005/04/02 v2.0 Non Standard LaTeX document class]
\usepackage[a4paper,left=3cm,right=2cm,top=3cm,bottom=2cm]{geometry}%
\usepackage{nomencl}
%
\newcommand{\simbolo}{\nomenclature}
\newcommand{\abreviatura}{\nomenclature}
\newcommand{\bibnameam}{Refer\^{e}ncias bibliogr\'{a}ficas}
\newcommand{\contentsnameam}{Sum\'{a}rio}
\renewcommand{\nomname}{Lista de s\'{i}mbolos e abreviaturas}
\renewcommand{\pagedeclaration}[1]{\hfill\nobreakspace#1}
%
\makenomenclature
%
\newif\if@twoside
\@twosidefalse
\newif\if@restonecol
\@restonecolfalse
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\@openrightfalse
\newif\if@openbib
\@openbibfalse
%
\newif\if@msc
\@mscfalse
\newif\if@prm
\@prmfalse
\newif\if@dsc
\@dscfalse
\newif\if@prd
\@prdfalse
\newif\if@qlf
\@qlffalse
%
\setlength\paperheight{845\p@}
\setlength\paperwidth{597\p@}
\setlength\overfullrule{0pt}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openbib}{\@openbibtrue}
\DeclareOption{msc}{\@msctrue \input{cls/mestrado.sty}}
\DeclareOption{dsc}{\@dsctrue \input{cls/doutorad.sty}}
\DeclareOption{prm}{\@prmtrue \input{cls/projetom.sty}}
\DeclareOption{prd}{\@prdtrue \input{cls/projetod.sty}}
\DeclareOption{qlf}{\@qlftrue \input{cls/qualifye.sty}}
\ExecuteOptions{12pt}
\ProcessOptions
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xiipt{14.5}%
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 9\p@ \@plus3\p@ \@minus5\p@
               \parsep 4.5\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xivpt{18}}
\newcommand\Large{\@setfontsize\Large\@xviipt{22}}
\newcommand\LARGE{\@setfontsize\LARGE\@xxpt{25}}
\newcommand\huge{\@setfontsize\huge\@xxvpt{30}}
\let\Huge=\huge
%
\setlength\parindent{1.5em}
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\headheight{12\p@}
\setlength\headsep   {25\p@}
\setlength\topskip   {12\p@}
\setlength\footskip{30\p@}
%
\if@compatibility
    \setlength\maxdepth{4\p@}
    \setlength\textwidth{390\p@}
    \setlength\textheight{36\baselineskip}
%
  \if@twoside
     \setlength\oddsidemargin   {21\p@}
     \setlength\evensidemargin  {59\p@}
     \setlength\marginparwidth {85\p@}
  \else
     \setlength\oddsidemargin   {39.5\p@}
     \setlength\evensidemargin  {39.5\p@}
     \setlength\marginparwidth  {68\p@}
  \fi
%
  \setlength\topmargin{27pt}
\else
  \setlength\maxdepth{.5\topskip}
  \setlength\@tempdima{\paperwidth}
  \addtolength\@tempdima{-1.8in}% aqui -2 -> -1.8
  \setlength\@tempdimb{545\p@}% aqui 390 -> 545
%
    \ifdim\@tempdima>\@tempdimb\relax
      \setlength\textwidth{\@tempdimb}
    \else
      \setlength\textwidth{\@tempdima}
    \fi
%
  \@settopoint\textwidth
  \setlength\@tempdima{\paperheight}
  \addtolength\@tempdima{-1.0in}% aqui -2 -> -1.0
  \addtolength\@tempdima{-1.5in}
  \divide\@tempdima\baselineskip
  \@tempcnta=\@tempdima
  \setlength\textheight{\@tempcnta\baselineskip}
%
  \if@twoside
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.4\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.6\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
  \else
    \setlength\@tempdima        {\paperwidth}
    \addtolength\@tempdima      {-\textwidth}
    \setlength\oddsidemargin    {.5\@tempdima}
    \addtolength\oddsidemargin  {-1in}
    \setlength\marginparwidth   {.5\@tempdima}
    \addtolength\marginparwidth {-\marginparsep}
    \addtolength\marginparwidth {-0.4in}
    \addtolength\marginparwidth {-0.4in}
  \fi
%
  \ifdim \marginparwidth >2in
     \setlength\marginparwidth{2in}
  \fi
%
  \@settopoint\oddsidemargin
  \@settopoint\marginparwidth
  \setlength\evensidemargin  {\paperwidth}
  \addtolength\evensidemargin{-2in}
  \addtolength\evensidemargin{-\textwidth}
  \addtolength\evensidemargin{-\oddsidemargin}
  \@settopoint\evensidemargin
  \setlength\topmargin{\paperheight}
  \addtolength\topmargin{-2in}
  \addtolength\topmargin{-\headheight}
  \addtolength\topmargin{-\headsep}
  \addtolength\topmargin{-\textheight}
  \addtolength\topmargin{-\footskip}     % this might be wrong!
  \addtolength\topmargin{-.5\topmargin}
  \@settopoint\topmargin
\fi
%
\addtolength\textheight{\topskip}
\setlength\marginparsep{10\p@}
\setlength\marginparpush{7\p@}
\setlength\footnotesep{8.4\p@}
\setlength{\skip\footins}{10.8\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {14\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\dblfloatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{10\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{10\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{3\p@ \@plus 2\p@ \@minus 2\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 5\p@  \@plus2.5\p@ \@minus\p@
            \topsep 10\p@ \@plus4\p@   \@minus6\p@
            \itemsep5\p@  \@plus2.5\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    5\p@   \@plus2.5\p@ \@minus\p@
              \parsep    2.5\p@ \@plus\p@    \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2.5\p@\@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand{\topfraction}{.7}
\setcounter{bottomnumber}{1}
\renewcommand{\bottomfraction}{.3}
\setcounter{totalnumber}{3}
\renewcommand{\textfraction}{.2}
\renewcommand{\floatpagefraction}{.5}
\setcounter{dbltopnumber}{2}
\renewcommand{\dbltopfraction}{.7}
\renewcommand{\dblfloatpagefraction}{.5}
\renewcommand{\baselinestretch}{1.5}
%
\def\Sumario{\tableofcontents}
\def\ListadeTabelas{\listoftables}
\def\ListadeFiguras{\listoffigures}
% Dados para a pagina de rosto
\def\Titulo#1{\gdef\@Titulo{#1}}
\def\Autor#1{\gdef\@Autor{#1}}
\def\Data#1{\gdef\@Data{#1}}
\def\Area#1{\gdef\@Area{#1}}
%
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth { {%
%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
%
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright { {%
%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
%
        ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright { {%
%
        \ifnum \c@secnumdepth >\m@ne
            \@chapapp\ \thechapter. \ %
        \fi
%
        ##1}}}}
\fi
%
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
\pagenumbering{roman}
\if@titlepage
  \newcommand{\PaginadeRosto}{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
%  \null\vfil
%  \vspace{-20ex}
\noindent
\begin{minipage}[t]{2cm}\centering\raisebox{\dimexpr\topskip-\height}%
{\includegraphics[width=2cm]{ufcg}}
\end{minipage}\hfill
\begin{minipage}[t]{\textwidth-2cm}\centering
{\large{Universidade Federal de Campina Grande}}\\
{\large{Centro de Engenharia El\'{e}trica e Inform\'{a}tica}}\\
{\large{Programa de P\'{o}s-Gradua\c{c}\~{a}o em Engenharia El\'{e}trica}}
\end{minipage}\vskip 4em%
  \begin{center}%
    {\LARGE \@Titulo \par}%
    {\LARGE
    \vskip 2em%
      \begin{tabular}[t]{c}%
        \@Autor
      \end{tabular}\par}%
    \vskip 2em%
   \parbox[t]{122mm}{
   \if@msc
   \manuscrito\ de \grau\ submetida \`{a} Coordenadoria do
   Programa de P\'{o}s-Gradua\c{c}\~{a}o em Engenharia
   El\'{e}trica da Universidade Federal de Campina Grande - Campus de Campina Grande como
   parte dos requisitos necess\'{a}rios para a obten\c{c}\~{a}o do grau de
   \Grau . \ \begin{center} \'{A}rea de
   Concentra\c{c}\~{a}o: \@Area
   \end{center}
   \fi
   \if@prm
   \manuscrito\ de \grau\ submetida \`{a} Coordenadoria do
   Programa de P\'{o}s-Gradu\c{c}\~{a}o em Engenharia
   El\'{e}trica da Universidade Federal de Campina Grande - Campus de Campina Grande como
   parte dos requisitos necess\'{a}rios para obten\c{c}\~{a}o do grau de
   \Grau . \ \begin{center} \'{A}rea de
   Concentra\c{c}\~{a}o: \@Area
   \end{center}
   \fi
   \if@dsc
   \manuscrito\ de \grau\ submetida \`{a} Coordenadoria do
   Programa de P\'{o}s-Gradu\c{c}\~{a}o em Engenharia
   El\'{e}trica da Universidade Federal de Campina Grande - Campus de Campina Grande como
   parte dos requisitos necess\'{a}rios para obten\c{c}\~{a}o do grau de
   \Grau . \ \begin{center} \'{A}rea de
   Concentra\c{c}\~{a}o: \@Area
   \end{center}
   \fi
   \if@prd
   \manuscrito\ de \grau\ submetido \'{a} Coordenadoria do
   Programa de P\'{o}s-Gradu\c{c}\~{a}o em Engenharia
   El\'{e}trica da Universidade Federal de Campina Grande - Campus de Campina Grande como
   parte dos requisitos necess\'{a}rios para obten\c{c}\~{a}o do grau de
   \Grau . \ \begin{center} \'{A}rea de
   Concentra\c{c}\~{a}o: \@Area
   \end{center}
   \fi
   \if@qlf
   \manuscrito\ de \grau\ submetida \`{a} Coordenadoria do
   Programa de P\'{o}s-Gradu\c{c}\~{a}o em Engenharia
   El\'{e}trica da Universidade Federal de Campina Grande - Campus de Campina Grande como
   parte dos requisitos necess\'{a}rios para obten\c{c}\~{a}o do grau de
   \Grau . \ \begin{center} \'{A}rea de
   Concentra\c{c}\~{a}o: \@Area
   \end{center}
   \fi
   }
   \vskip 2em%
   \Orientadores \par
  \@thanks
  \vfil\null
   Campina Grande, Para\'{i}ba, Brasil \par
   \copyright\@Autor, \@Data \par
  \end{center}\par
\if@msc
 \newpage
 \thispagestyle{plain}
  \begin{center}
    {\LARGE \@Titulo \par}
    \vskip 3em%
    {\LARGE
      \begin{tabular}[t]{c}
        \@Autor
      \end{tabular}\par}
    \vskip 3em%
    {\sl \manuscrito\ de \grau\ apresentada em \@Data}
    \vskip 3em%
    \Orientadores \par
    \vskip 3em%
    \Membros \par
    \vfil\null
   Campina Grande, Para\'{i}ba, Brasil, \@Data \par
  \end{center} \par
\fi
\if@dsc
 \newpage
 \thispagestyle{plain}
  \begin{center}
    {\LARGE \@Titulo \par}
    \vskip 3em%
    {\LARGE
      \begin{tabular}[t]{c}
        \@Autor
      \end{tabular}\par}
    \vskip 3em%
    {\sl \manuscrito\ de \grau\ apresentada em \@Data}
    \vskip 3em%
    \Orientadores \par
    \vskip 3em%
    \Membros \par
    \vfil\null
   Campina Grande, Para\'{i}ba, Brasil, \@Data \par
  \end{center} \par
\fi
  \end{titlepage}%
  \setcounter{footnote}{0}
  \let\thanks\relax\let\PaginadeRosto\relax
  \gdef\@thanks{}\gdef\@Autor{}\gdef\@Titulo{}}
\else
\newcommand{\PaginadeRosto}{\par
  \begingroup
    \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
    \def\@makefnmark{\hbox to\z@{$\m@th^{\@thefnmark}$\hss}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hbox to1.8em{\hss$\m@th^{\@thefnmark}$}##1}%
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@PaginadeRosto
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \let\thanks\relax
  \let\PaginadeRosto\relax\let\@PaginadeRosto\relax
  \gdef\@thanks{}\gdef\@Autor{}\gdef\@Titulo{}}
\def\@PaginadeRosto{%
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
    {\LARGE \@Titulo \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@Autor
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
\newcommand*{\chaptermark}[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand{\thepart}         {\Roman{part}}
\renewcommand{\thechapter}      {\arabic{chapter}}
\renewcommand{\thesection}      {\thechapter.\arabic{section}}
\renewcommand{\thesubsection}   {\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection .\arabic{subsubsection}}
\renewcommand{\theparagraph}    {\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph} {\theparagraph.\arabic{subparagraph}}
\newcommand{\@chapapp}{\chaptername}
\newcommand{\part}{\cleardoublepage
                 \thispagestyle{plain}%
                     \@tempswafalse
                 \hbox{}\vfil
                 \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}
    {\centering
     \interlinepenalty \@M
     \reset@font
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname~\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \reset@font
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{empty}%
                \newpage
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand{\chapter}{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{empty}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{
%
\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
%
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                      \@makechapterhead{#2}%
                      \@afterheading
                    }
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \reset@font
%
    \ifnum \c@secnumdepth >\m@ne
        \huge\bfseries \@chapapp{} \thechapter
        \par\nobreak
        \vskip 20\p@
    \fi
%
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\@makeschapterhead{#1}%
                   \@afterheading}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \reset@font
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
\newcommand{\section}{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\reset@font\Large\bfseries}}
\newcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\large\bfseries}}
\newcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\reset@font\normalsize\bfseries}}
\newcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize\bfseries}}
\newcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize\bfseries}}
\setlength\leftmargini  {2.5em}
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}
\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\theenumiv}{\Alph{enumiv}}
\newcommand{\labelenumi}{\theenumi.}
\newcommand{\labelenumii}{(\theenumii)}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}
\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi(\theenumii)}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}
\newcommand{\labelitemi}{$\m@th\bullet$}
\newcommand{\labelitemii}{\normalfont\bfseries --}
\newcommand{\labelitemiii}{$\m@th\ast$}
\newcommand{\labelitemiv}{$\m@th\cdot$}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand{\descriptionlabel}[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
%
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
      \null\vfil
      \begin{center}
        \bfseries \abstractname
      \end{center}}
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      }
      {\endquotation}
\fi
%
\newenvironment{verse}
               {\let\\=\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item[]}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}
\newenvironment{titlepage}
    {%
        \@restonecolfalse\newpage
      \thispagestyle{empty}%
%
      \if@compatibility
        \setcounter{page}{0}
      \else
        \setcounter{page}{0}%
      \fi}%
%
    {\if@restonecol\twocolumn \else \newpage \fi
      \setcounter{page}{1}%
    }
\newcommand{\appendix}{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{\Alph{chapter}}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset{equation}{chapter}
\renewcommand{\theequation}{\thechapter.\arabic{equation}}
\newcounter{figure}[chapter]
\renewcommand{\thefigure}{\thechapter.\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand{\thetable}{\thechapter.\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
%
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand*{\mit}{\@fontswitch{\relax}{\mathnormal}}
\newcommand{\@pnumwidth}{1.55em}
\newcommand{\@tocrmarg} {2.55em}
\newcommand{\@dotsep}{4.5}
\setcounter{tocdepth}{2}
\newcommand{\tableofcontents}{%
      \@restonecolfalse
    \chapter*{\contentsnameam}
        \@mkboth{\contentsnameam}{\contentsnameam}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*{\l@part}[2]{%
%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
  \fi}
%
\newcommand*{\l@chapter}[2]{%
%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
%
\newcommand*{\l@section}      {\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*{\l@subsection}   {\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*{\l@subsubsection}{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*{\l@paragraph}    {\@dottedtocline{4}{10em}{5em}}
\newcommand*{\l@subparagraph} {\@dottedtocline{5}{12em}{6em}}
\newcommand{\ListadeSimbolos}{%
      %\newpage\pagestyle{headings}\pagenumbering{roman}
      \@restonecolfalse
      \@mkboth{\nomname}{\nomname}
      \printnomenclature
    \clearpage
    \if@restonecol\twocolumn\fi
    }
%
\newcommand{\listoftables}{%
      %\newpage\pagestyle{headings}\pagenumbering{roman}
      \@restonecolfalse
    \chapter*{\listtablename}
      \@mkboth{\listtablename}{\listtablename}%
    \@starttoc{lot}%
    \clearpage
    \if@restonecol\twocolumn\fi
    }
%
\newcommand{\listoffigures}{%
      %\newpage\pagestyle{headings}\pagenumbering{roman}
      \@restonecolfalse
    \chapter*{\listfigurename}
      \@mkboth{\listfigurename}{\listfigurename}%
    \@starttoc{lof}%
    \clearpage
    \if@restonecol\twocolumn\fi
    }
\newcommand*{\l@figure}{\@dottedtocline{1}{1.5em}{2.3em}}
%
\newcommand{\Orientadores}{%
      \IfFileExists{\@currdir src/etc/orientad.tex}{
      \input{src/etc/orientad.tex}}{\centerline{MISSING FILE: src/etc/orientad.tex}}
    }
%
\newcommand{\Membros}{%
      \IfFileExists{\@currdir src/etc/membrosb.tex}{
      \input{src/etc/membrosb.tex}}{\centerline{MISSING FILE: src/etc/membrosb.tex}}
    }
%
\newcommand{\Dedicatoria}{%
      \IfFileExists{\@currdir src/etc/dedicato.tex}{
      \newpage
      \setcounter{page}{2}
      \thispagestyle{plain}
      \null\vfil
      \centerline{\LARGE\bfseries Dedicat\'{o}ria}
      \par
      \medskip
      \noindent\input{src/etc/dedicato.tex}}{\typeout{MISSING FILE: src/etc/dedicato.tex}}
    }
%
\newcommand{\Agradecimentos}{%
      \IfFileExists{\@currdir src/etc/agradece.tex}{
      \newpage
      \thispagestyle{plain}
      \null\vfil
      \centerline{\LARGE\bfseries Agradecimentos}
      \par
      \medskip
      \noindent\input{src/etc/agradece.tex}}{\typeout{MISSING FILE: src/etc/agradece.tex}}
    }
%
\newcommand{\ResumoPt}{%
      \IfFileExists{\@currdir src/etc/resumopt.tex}{
      \newpage
      \thispagestyle{plain}
      \null\vfil
      \centerline{\LARGE\bfseries Resumo}
      \par
      \medskip
      \noindent\input{src/etc/resumopt.tex}}{\typeout{MISSING FILE: src/etc/resumopt.tex}}
    }
%
\newcommand{\ResumoEn}{%
      \IfFileExists{\@currdir src/etc/resumoen.tex}{
      \newpage
      \thispagestyle{plain}
      \null\vfil
      \centerline{\LARGE\bfseries Abstract}
      \par
      \medskip
      \noindent\input{src/etc/resumoen.tex}}{\typeout{MISSING FILE: src/etc/resumoen.tex}}
    }
%
\newcommand{\Introducao}{%
      \newpage
      \pagestyle{headings}
      \pagenumbering{arabic}
      \@restonecolfalse
      \IfFileExists{\@currdir src/etc/introduc.tex}{
      \chapter{Introdu\c{c}\~{a}o}
      \@mkboth{\chaptername\ \thechapter. Introdu\c{c}\~{a}o}{\chaptername\ \thechapter. Introdu\c{c}\~{a}o}
      \input{src/etc/introduc.tex}}{\typeout{MISSING FILE: src/etc/introduc.tex}}
    \if@restonecol\twocolumn\fi
    }
%
\newcommand{\Conclusao}{%
      \newpage
      \pagestyle{headings}
      \pagenumbering{arabic}
      \@restonecolfalse
      \IfFileExists{\@currdir src/etc/conclusa.tex}{
      \chapter{Conclus\~{a}o}
      \@mkboth{\chaptername\ \thechapter. Conclus\~{a}o}{\chaptername\ \thechapter. Conclus\~{a}o}
      \input{src/etc/conclusa.tex}}{\typeout{MISSING FILE: src/etc/conclusa.tex}}
    \if@restonecol\twocolumn\fi
    }
%
\let\l@table\l@figure
\newdimen\bibindent
\bibindent=1.5em
\newenvironment{thebibliography}[1]
     {\chapter*{\bibnameam
        \@mkboth{\bibnameam}{\bibnameam}}%
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{}\bibnameam}%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
%
            \if@openbib
              \advance\leftmargin\bibindent
              \itemindent -\bibindent
              \listparindent \itemindent
              \parsep \z@
            \fi
%
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand{\theenumiv}{\arabic{enumiv}}}%
%
      \if@openbib
        \renewcommand{\newblock}{\par}
      \else
        \renewcommand{\newblock}{\hskip .11em \@plus.33em \@minus.07em}%
      \fi
%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand{\newblock}{}
\newenvironment{theindex}
               {\@restonecoltrue
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\uppercase{\indexname}}%
                        {\uppercase{\indexname}}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand{\@idxitem}  {\par\hangindent 40\p@}
\newcommand{\subitem}   {\par\hangindent 40\p@ \hspace*{20\p@}}
\newcommand{\subsubitem}{\par\hangindent 40\p@ \hspace*{30\p@}}
\newcommand{\indexspace}{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand{\footnoterule}{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}
\@addtoreset{footnote}{chapter}
\long\def\@makefntext#1{%
    \parindent 1em%
    \noindent
    \hbox to 1.8em{\hss\@makefnmark}#1}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\if@twoside
\else
  \raggedbottom
\fi
%
\onecolumn
\endinput
%%
%% End of file `copeleam.cls'.
