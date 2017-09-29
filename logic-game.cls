\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{logic-game}[2017/06/13 Logic Game]

\LoadClass{standalone}

\RequirePackage{amssymb}
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric, arrows}
\usetikzlibrary{positioning}

\tikzstyle{turn} = [rectangle, rounded corners, text centered, draw=black]
\tikzstyle{arrow} = [thick,->,>=stealth]
\tikzset{every picture/.style={node distance=0.5cm}}

\newcommand{\turnbox}[5]{\node(#5)[turn, fill=#1, #4]{$#2 #3$}}

\newcommand{\beginning}[1]{\node(#1)[circle,fill=black,minimum size=0.1cm] at (0,0) {}}
\newcommand{\adversary}{\turnbox{orange!60}{\forall}}
\newcommand{\conj}{\turnbox{orange!60}{\wedge}{}}
\newcommand{\expositor}{\turnbox{green!60}{\exists}}
\newcommand{\disj}{\turnbox{green!60}{\vee}{}}
\newcommand{\terminal}{\turnbox{white!30}{}}

\newcommand{\after}[3]{%
    #2{right=of #1}{#3}; \draw[arrow] (#1) -- (#3)
}

\newcommand{\twoafterc}[6]{%
    #3{above right=#1 cm and 0.5 cm of #2}{#4};
    #5{below right=#1 cm and 0.5 cm of #2}{#6};
    \draw[arrow] (#2) -- (#4);
    \draw[arrow] (#2) -- (#6)
}

\newcommand{\twoafter}{\twoafterc{0.3}}

\newcommand{\simultaneousc}[8]{%
    #3{above right=#1 cm and 0.25 cm of #2}{#4};
    #5{below right=#1 cm and 0.25 cm of #2}{#6};
    #7{right=1.6 cm of #2}{#8};
    \draw[arrow] (#2) -- (#4);
    \draw[arrow] (#2) -- (#6);
    \draw[arrow] (#4) -- (#8);
    \draw[arrow] (#6) -- (#8)
}

\newcommand{\start}[2]{%
    #1{}{#2}
}
