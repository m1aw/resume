% Intro Options
\ProvidesClass{hieudo-build}[2016/07/26 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.5cm, vmargin=1.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome}
\pagenumbering{gobble}
\usepackage{datetime2}

% Color definitions
\definecolor{date}{HTML}{bd93f9} 
\definecolor{primary}{HTML}{282a36}
\definecolor{highlight}{HTML}{ffb86c}
\definecolor{headings}{HTML}{44475a}
\definecolor{subheadings}{HTML}{44475a}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/OpenSans/, Scale=1.09]{OpenSans-Light}
\newcommand{\custombold}[1]
{\color{subheadings}\fontspec[Path = fonts/OpenSans/]{OpenSans-Light}\selectfont #1 \normalfont}
\linespread{1.1}

% Date format
\DTMnewdatestyle{mylastupdate}{%
  %\renewcommand*{\DTMdisplaydate}[4]{\DTMtwodigits{##2}.\DTMtwodigits{##3}.##1}\color{date}\fontspec[Path = fonts/OpenSans/]{OpenSans-Light}\fontsize{10pt}{10pt}\selectfont%
  \renewcommand*{\DTMDisplaydate}{\DTMdisplaydate}%
}

% Name command
\newcommand{\namesection}[2]{
	\color{highlight}\hspace{-1.7em}\raggedright{\parbox[b]{30em}{\fontspec[Path = fonts/OpenSans/]{OpenSans-Bold}\fontsize{38pt}{0cm}\selectfont #1}}
    \hfill
    \raggedleft{\parbox[b]{15em}{\color{subheadings}\fontspec[Path = fonts/OpenSans/]{OpenSans-Light}\fontsize{10pt}{14pt}\selectfont #2}}
   	\vspace{2.2em} 
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/OpenSans/]{OpenSans-Light}\fontsize{18pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/OpenSans/]{OpenSans-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/OpenSans/]{OpenSans-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Jobtitle command
\newcommand{\workplace}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/OpenSans/]{OpenSans-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = fonts/OpenSans/]{OpenSans-Regular}\fontsize{12pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Education Title
\newcommand{\education}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/OpenSans/]{OpenSans-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = fonts/OpenSans/]{OpenSans-Regular}\fontsize{12pt}{12pt}\selectfont\bfseries {#2} \normalfont
}
\titlespacing{\section}{0pt}{0pt}{5pt}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/OpenSans/]{OpenSans-Regular}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Positions command
\newcommand{\position}[2]{	\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/OpenSans/]{OpenSans-Regular}\fontsize{11pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/OpenSans/]{OpenSans-Regular}\fontsize{11pt}{13pt}\selectfont {#2\\}\normalfont
}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Location command
\newcommand{\location}[1]{\color{primary}\raggedright\fontspec[Path = fonts/OpenSans/]{OpenSans-Regular}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}
\titlespacing{\section}{0pt}{0pt}{3pt}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}