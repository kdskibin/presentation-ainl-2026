verbatimtex
\documentclass{beamer}
\usepackage[utf8]{inputenc}
\renewcommand{\arraystretch}{0.7}

\DeclareSymbolFont{greek}{U}{eur}{m}{n}                                                        
\SetSymbolFont{greek}{bold}{U}{eur}{b}{n}                                                      
\DeclareSymbolFontAlphabet{\gr}{greek}                                                         
\DeclareMathSymbol{\alpha}{\mathord}{greek}{"0B}                                               
\DeclareMathSymbol{\beta}{\mathord}{greek}{"0C}                                                
\DeclareMathSymbol{\gamma}{\mathord}{greek}{"0D}                                               
\DeclareMathSymbol{\delta}{\mathord}{greek}{"0E}                                               
\DeclareMathSymbol{\epsilon}{\mathord}{greek}{"0F}                                             
\DeclareMathSymbol{\zeta}{\mathord}{greek}{"10}                                                
\DeclareMathSymbol{\eta}{\mathord}{greek}{"11}                                                 
\DeclareMathSymbol{\theta}{\mathord}{greek}{"12}                                               
\DeclareMathSymbol{\iota}{\mathord}{greek}{"13}                                                
\DeclareMathSymbol{\kappa}{\mathord}{greek}{"14}                                               
\DeclareMathSymbol{\lambda}{\mathord}{greek}{"15}                                              
\DeclareMathSymbol{\mu}{\mathord}{greek}{"16}                                                  
\DeclareMathSymbol{\nu}{\mathord}{greek}{"17}                                                  
\DeclareMathSymbol{\xi}{\mathord}{greek}{"18}                                                  
\DeclareMathSymbol{\pi}{\mathord}{greek}{"19}                                                  
\DeclareMathSymbol{\rho}{\mathord}{greek}{"1A}                                                 
\DeclareMathSymbol{\sigma}{\mathord}{greek}{"1B}                                               
\DeclareMathSymbol{\tau}{\mathord}{greek}{"1C}                                                 
\DeclareMathSymbol{\upsilon}{\mathord}{greek}{"1D}                                             
\DeclareMathSymbol{\phi}{\mathord}{greek}{"1E}                                                 
\DeclareMathSymbol{\chi}{\mathord}{greek}{"1F}                                                 
\DeclareMathSymbol{\psi}{\mathord}{greek}{"20}                                                 
\DeclareMathSymbol{\omega}{\mathord}{greek}{"21}                                               
\DeclareMathSymbol{\varepsilon}{\mathord}{greek}{"22}                                          
\DeclareMathSymbol{\vartheta}{\mathord}{greek}{"23}                                            
\DeclareMathSymbol{\varpi}{\mathord}{greek}{"24}                                               
\let\varrho\rho                                                                                
\let\varsigma\sigma                                                                            
\DeclareMathSymbol{\varphi}{\mathord}{greek}{"27}                                              

\begin{document}

etex

filenametemplate "arch.mps";
beginfig(1)

def BW = 2.2cm enddef;
def BH = 0.8cm enddef;
def HS = 1.3cm enddef;
def WS = 3.0cm enddef;
def RAD = 0.1cm enddef;
color fillcol;
fillcol = (.8, .8, 1.0);

drawarrow (BW / 2, BH + RAD) -- (BW / 2, HS - RAD);

drawarrow (BW / 2, BH + RAD + HS) -- (BW / 2, (2 * HS) - RAD);
drawarrow (BW / 2, BH + RAD + HS) -- (BW * 0.25, (2 * HS) - RAD);
drawarrow (BW / 2, BH + RAD + HS) -- (BW * 0.75, (2 * HS) - RAD);


drawarrow (BW / 2, BH + RAD + (2 * HS)) -- (BW / 2, (3 * HS) - RAD);

%%Second column
drawarrow (BW + RAD, (BH / 2) + (3 * HS)) -- (WS - RAD, (BH / 2) + (3 * HS));
drawarrow (BW + RAD, (BH / 2) + (3 * HS)) -- (WS - RAD, (BH * 0.25) + (3 * HS));
drawarrow (BW + RAD, (BH / 2) + (3 * HS)) -- (WS - RAD, (BH * 0.75) + (3 * HS));

drawarrow (BW / 2 + WS, (3 * HS) - RAD) -- (BW / 2 + WS, BH + RAD + (2 * HS));
drawarrow (BW / 2 + WS, (2 * HS) - RAD) -- (BW / 2 + WS, BH + RAD + HS);
drawarrow (BW / 2 + WS, HS - RAD) -- (BW / 2 + WS, BH + RAD);




for i=0 upto 3:
  fill (0, i * HS) -- (0, i * HS + BH) -- (BW, i * HS + BH) -- (BW, i * HS) -- cycle withcolor fillcol;
  fill (WS, i * HS) -- (WS, i * HS + BH) -- (BW + WS, i * HS + BH) -- (BW + WS, i * HS) -- cycle withcolor fillcol;
endfor;

pickup pencircle scaled (RAD * 2);
for i=0 upto 3:
  draw (0, i * HS) -- (0, i * HS + BH) -- (BW, i * HS + BH) -- (BW, i * HS) -- cycle withcolor fillcol;
  draw (WS, i * HS) -- (WS, i * HS + BH) -- (BW + WS, i * HS + BH) -- (BW + WS, i * HS) -- cycle withcolor fillcol;
endfor;



label(btex {\tiny \begin{tabular}{@{}c@{}} Token\\embeddings\end{tabular}} etex, (BW / 2, BH / 2));
label(btex {\tiny \begin{tabular}{@{}c@{}} Positional encoding\\for subwords \end{tabular}} etex, (BW / 2, (BH / 2) + HS));
label(btex {\tiny \begin{tabular}{@{}c@{}} Subwords tokens\\agregation \end{tabular}} etex, (BW / 2, (BH / 2) + (HS * 2)));
label(btex {\tiny \begin{tabular}{@{}c@{}} Positional encoding\\for words \end{tabular}} etex, (BW / 2, (BH / 2) + (3 * HS)));

label(btex {\tiny \begin{tabular}{@{}c@{}} Final probability\\of grammatical \\ categories \end{tabular}} etex, (BW / 2 + WS, BH / 2));
label(btex {\tiny \begin{tabular}{@{}c@{}} Feed-forward networks\\for classification  \end{tabular}} etex, (BW / 2 + WS, (BH / 2) + HS));
label(btex {\tiny \begin{tabular}{@{}c@{}} Normalization  \end{tabular}} etex, (BW / 2 + WS, (BH / 2) + (HS * 2)));
label(btex {\tiny \begin{tabular}{@{}c@{}} Multiple layers\\of the coder \end{tabular}} etex, (BW / 2 + WS, (BH / 2) + (3 * HS)));

endfig;
