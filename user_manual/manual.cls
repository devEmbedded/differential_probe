\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{manual}[2020/11/13 LaTeX document class for user guides]

% The class is based on the article class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% Useful symbol and color definitions
\RequirePackage{gensymb}
\RequirePackage{xcolor}

% These packages allow full-width tables and combining cells in tables.
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{tabularx}
\RequirePackage{threeparttable}

% Use Roman font for math environment by default, this is more usual in datasheets
% which have a lot of units in math, this avoids needing to use \mathrm{} all the time.
\RequirePackage{mathastext}

% Align figure and table captions to left.
\RequirePackage[font=bf, skip=5pt, justification=raggedright, format=hang, singlelinecheck=off]{caption}

% Format hyperlinks as blue and set PDF title based on \title{} in the document.
\RequirePackage[pdfusetitle]{hyperref}
\hypersetup{
    pdftex,
    breaklinks=true,
    colorlinks=true,
    linkcolor=.,
    urlcolor=blue
}

% Configure page margins
\RequirePackage{geometry}
\geometry{left=2cm, top=2cm, right=2cm, bottom=3cm}

% Command \companylogo{} can be used in document to specify a logo for the first page.
\gdef\@companylogo{}
\newcommand{\companylogo}[1]{\gdef\@companylogo{#1}}

% Command \revision{} can be used to include a document revision number in footer.
\gdef\@revision{}
\newcommand{\revision}[1]{\gdef\@revision{#1}}

\gdef\@subtitle{}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}

% First page title layout is defined here
\renewcommand{\maketitle}{%
        {\@companylogo}\\
        \vspace{7cm}\\
        {\Huge\sffamily\bfseries\hspace*{0.5cm}\@title}\\
        \noindent\rule{\textwidth}{1pt}
        \vspace{0.2cm} \\
        {\huge\sffamily\bfseries\hspace*{0.5cm}\@subtitle}\\
        \medskip
        \pagestyle{normalpage}
        \thispagestyle{firstpage}
}

% First page has footer but no header
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\fancypagestyle{firstpage}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0.5pt}
    \fancyfoot[L]{\@revision}
    \fancyfoot[C]{\@date}
    \fancyfoot[R]{Page \thepage\ of \pageref{LastPage}}
}

% Rest of the pages have both header and footer
\fancypagestyle{normalpage}{
    \renewcommand{\headrulewidth}{0.5pt}
    \renewcommand{\footrulewidth}{0.5pt}
    \fancyhead[L]{\@author}
    \fancyhead[C]{\slshape\@title}
    \fancyhead[R]{\@date}
    \fancyfoot[L]{\@revision}
    \fancyfoot[C]{\@date}
    \fancyfoot[R]{Page \thepage\ of \pageref{LastPage}}
}

% No line above footnotes
\renewcommand\footnoterule{}

% Section header size and spacing
\renewcommand{\section}{%
    \@startsection
    {section}{1}{0pt}{-3.5ex plus -2ex minus -1ex}%
    {2.5ex plus .5ex}{\Large\bfseries\sffamily}%
}

% Spacing between paragraphs
\setlength{\parskip}{2ex plus 0.5ex minus 0.2ex}
\setlength{\parindent}{0pt}

% Spacing for tables.
% Other alternative is to use booktabs package, but I think normal LaTeX tables
% are more fitting in the usual data sheet style.
\renewcommand{\arraystretch}{1.5}
\newcommand{\thickhline}{\noalign {\ifnum 0=`}\fi \hrule height 1pt \futurelet \reserved@a \@xhline}

% No numbering for section titles
\setcounter{secnumdepth}{0}

% Warning symbol
\usepackage{stackengine}
\usepackage{scalerel}
\newcommand\warning[1][2ex]{%
  \renewcommand\stacktype{L}%
  \stackon[3pt]{\Huge$\triangle$}{\large\bfseries !}%
}
