% ====================================================================================
% Classe para formatação de documentos Insper, baseada no abnTeX2
%
% Esta classe é destinada à formatação de TCC's, Dissertações e Teses, seguindo
% as normas ABNT e especificações do Insper - Instituto de Ensino e Pesquisa.
%
% IMPORTANTE: Este arquivo não deverá ser alterado, exceto se absolutamente
%             necessário para manutenção. Quaisquer modificações podem comprometer
%             as normas estabelecidas.
% ====================================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{insper-abntex2}[2025/01/21 Classe Insper baseada no abnTeX2]
\typeout{insper-abntex2. Modelo desenvolvido por Gabriel Ávila Campos Canaan}

% ====================================================================
% Pacotes essenciais
% ====================================================================
\RequirePackage{etoolbox}   % manipulação de opções e variáveis
\RequirePackage{pgffor}     % laço de repetição \foreach para manipulação de listas
\RequirePackage{lastpage}   % retornar número da última página do documento (para ficha catalográfica)

% ====================================================================
% Passando as opções para a classe abnTeX2
% ====================================================================
\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{abntex2}
}
\ProcessOptions\relax
\LoadClass{abntex2}

% ====================================================================
% Estilos de página
% ====================================================================
\makepagestyle{abntheadings}
\makeevenhead{abntheadings}{\ABNTEXfontereduzida\thepage}{}{}
\makeoddhead{abntheadings}{}{}{\ABNTEXfontereduzida\thepage}

% ====================================================================
% Comandos para definir elementos do documento
% ====================================================================

% alias para autor(a)
\let\autora\autor

% armazena e imprime o subtítulo
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% imprime o subtítulo junto ao título
\renewcommand{\imprimirtitulo}{\thetitle: \imprimirsubtitulo}

% armazena e imprime o curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% armazena e imprime a titulação
\providecommand{\imprimirtitulacao}{}
\newcommand{\titulacao}[1]{\renewcommand{\imprimirtitulacao}{#1}}

% armazena e imprime a área de estudo
\providecommand{\imprimirareaestudo}{}
\newcommand{\areaestudo}[1]{\renewcommand{\imprimirareaestudo}{#1}}

% ajusta o tamanho das fontes dos capítulos, seções e subseções
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

% ====================================================================
% Impressão de listas (figuras, tabelas e sumário)
% ====================================================================

% lista de ilustrações
\newcommand{\imprimirlistadeilustracoes}{
    \pdfbookmark[0]{\listfigurename}{lof}
    \listoffigures*
    \cleardoublepage
}

% lista de tabelas
\newcommand{\imprimirlistadetabelas}{
    \pdfbookmark[0]{\listtablename}{lot}
    \listoftables*
    \cleardoublepage
}

% sumário
\newcommand{\imprimirsumario}{
    \pdfbookmark[0]{\contentsname}{toc}
    \tableofcontents*
    \cleardoublepage
}

% ====================================================================
% Formatar nome de autor na forma 'Sobrenome, Nome'
% (uso na ficha catalográfica)
% ====================================================================

\protected\def\invnome#1{\xinvnome{}#1, \relax}
\def\xinvnome#1#2 #3{%
  \ifx\relax#3%
    #2#1%
    \expandafter\xthree
  \fi
\xinvnome{#1 #2}#3}
\def\xthree#1#2#3{}

% ====================================================================
% Formatar palavras-chaves
% ====================================================================

% Comando para armazenar palavras-chaves
\newcommand{\palavraschaves}[1]{%
  \def\palavrasLista{#1}%
}

% Comando para imprimir palavras-chaves na forma do resumo
\newcommand{\imprimirpalavraschavesresumo}{%
  \def\termossemicolon{}%
  \foreach \termo in \palavrasLista {%
    \ifx\termossemicolon\empty
      \xdef\termossemicolon{\termo}%
    \else
      \xdef\termossemicolon{\termossemicolon; \termo}%
    \fi
  }%
  \termossemicolon
}

% Comando para imprimir palavras-chaves na forma da ficha catalográfica
\newcommand{\imprimirpalavraschavesficha}{%
  \def\termosnumerados{}%
  \newcounter{count}%
  \setcounter{count}{0}%
  \foreach \termo in \palavrasLista {%
    \stepcounter{count}%
    \ifx\termosnumerados\empty
      \xdef\termosnumerados{\thecount. \termo.}%
    \else
      \xdef\termosnumerados{\termosnumerados\ \thecount. \termo.}%
    \fi
  }%
  \termosnumerados
}

% Comando para armazenar palavras-chaves em inglês
\newcommand{\keywords}[1]{%
  \def\wordsList{#1}%
}

% Comando para imprimir palavras-chaves em inglês na forma do resumo
\newcommand{\thekeywordsabstract}{%
  \def\termssemicolon{}%
  \foreach \term in \wordsList {%
    \ifx\termssemicolon\empty
      \xdef\termssemicolon{\term}%
    \else
      \xdef\termssemicolon{\termssemicolon; \term}%
    \fi
  }%
  \termssemicolon
}

% ====================================================================
% Capa
% ====================================================================

\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \ABNTEXchapterfont\large\imprimirautor\\
    \ABNTEXchapterfont\large\imprimircurso

    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo
    \end{center}
    \vfill
    
    \large\imprimirlocal

    \large\imprimirdata
    
    \vspace*{1cm}
  \end{capa}
}

% ====================================================================
% Ficha catalográfica
% ====================================================================

\newcommand{\imprimirfichacatalografica}{
\begin{fichacatalografica}
	\vspace*{\fill}					% Posição vertical
	\hrule							% Linha horizontal
	\begin{center}					% Minipage Centralizado
	\begin{minipage}[c]{12.5cm}		% Largura
	
	\expandafter\invnome\expandafter{\theauthor}
	
	\hspace{0.5cm} \imprimirtitulo\ /
    
    \imprimirautor. --
	\imprimirlocal, \imprimirdata.
	
	\hspace{0.5cm} \pageref{LastPage} f.\\
	
	\hspace{0.5cm}
	\parbox[t]{\textwidth}{\imprimirtipotrabalho~--~\imprimirinstituicao,
	\imprimirdata.}
    
        \hspace{0.5cm} \imprimirorientadorRotulo~\imprimirorientador
        
        \hspace{0.5cm} \imprimircoorientadorRotulo~\imprimircoorientador\\
	
	\hspace{0.5cm}
		\imprimirpalavraschavesficha\ 
		I. \expandafter\invnome\expandafter{\theauthor}.
            II. \thetitle
	
	\end{minipage}
	\end{center}
	\hrule
\end{fichacatalografica}
}

% ====================================================================
% Folha de aprovação
% ====================================================================

\newcommand{\professores}[1]{%
  \def\listaProfessores{#1}%
}

\newcommand{\imprimirprofessores}{%
  \newcounter{profCount}%
  \setcounter{profCount}{1}%
  \foreach \professor in \listaProfessores {%
    \assinatura{\textbf{\professor} \\ Convidado \theprofCount}%
    \stepcounter{profCount}%
  }%
}

\newcommand{\imprimirfolhadeaprovacao}{
\begin{folhadeaprovacao}

  \begin{center}
    {\ABNTEXchapterfont\large\imprimirautor}

    \vspace*{\fill}\vspace*{\fill}
    \begin{center}
      \ABNTEXchapterfont\bfseries\Large\imprimirtitulo
    \end{center}
    \vspace*{\fill}
    
    \hspace{.45\textwidth}
    \begin{minipage}{.5\textwidth}
        \imprimirpreambulo
    \end{minipage}%
    \vspace*{\fill}
   \end{center}
        
   \assinatura{\textbf{\imprimirorientador} \\ Orientador} 
   \imprimirprofessores
      
   \begin{center}
    \vspace*{0.5cm}
    {\large\imprimirlocal}
    \par
    {\large\imprimirdata}
    \vspace*{1cm}
  \end{center}
  
\end{folhadeaprovacao}
}

% ====================================================================
% Glossário
% ====================================================================

\newcommand{\imprimirglossario}{
\printglossaries
\addcontentsline{toc}{chapter}{GLOSS\'ARIO}
}

% ====================================================================
% Índice
% ====================================================================

\newcommand{\imprimirindice}{
\printindex
\addcontentsline{toc}{chapter}{\'INDICE}
}
