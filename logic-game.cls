\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{logic-game}[2017/06/13 Logic Game]

\LoadClass{standalone}

\RequirePackage{amssymb}
\RequirePackage{tikz}
\usetikzlibrary{shapes.geometric, arrows}

\tikzstyle{turn} = [rectangle, rounded corners, text centered, draw=black]
\tikzstyle{arrow} = [thick,->,>=stealth]
\tikzset{every picture/.style={node distance=1.5cm}}

\newcommand{\turnbox}[5]{\node(#5)[turn, fill=#1, #4]{$#2 #3$}}

\newcommand{\adversary}{\turnbox{orange!60}{\forall}}
\newcommand{\conj}{\turnbox{orange!60}{\wedge}{}}
\newcommand{\expositor}{\turnbox{green!60}{\exists}}
\newcommand{\disj}{\turnbox{green!60}{\vee}{}}
\newcommand{\terminal}{\turnbox{white!30}{}}

\newcommand{\after}[3]{%
    #2{right of=#1}{#3}; \draw[arrow] (#1) -- (#3)
}

\newcommand{\twoafter}[5]{%
    #2{above right of=#1}{#3};
    #4{below right of=#1}{#5};
    \draw[arrow] (#1) -- (#3);
    \draw[arrow] (#1) -- (#5)
}

\newcommand{\start}[2]{%
    #1{}{#2}
}
