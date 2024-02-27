% Drucken Überschrift Intervallvektoren
\markup "Intervallvektoren:"

% Konvertierung der Intervallvektoren von Vektoren zu Listen
#(define lIntervallvektorA (vector->list vIntervallvektorA))
#(define lIntervallvektorB (vector->list vIntervallvektorB))
#(define lIntervallvektorC (vector->list vIntervallvektorC))
#(define lIntervallvektorD (vector->list vIntervallvektorD))
#(define lIntervallvektorE (vector->list vIntervallvektorE))
#(define lIntervallvektorF (vector->list vIntervallvektorF))

\markup \fill-line{\null}

% Drucken der Intervallvektoren
\markup {
  \hspace #8.7
  #(format #f "~s" lIntervallvektorA)
  \hspace #4.7
  #(format #f "~s" lIntervallvektorB)
  \hspace #4.7
  #(format #f "~s" lIntervallvektorC)
  \hspace #4.7
  #(format #f "~s" lIntervallvektorD)
  \hspace #4.7
  #(format #f "~s" lIntervallvektorE)
  \hspace #4.7
  #(format #f "~s" lIntervallvektorF)
}

% VSpace für Formatierung
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}


% Definition der Übergangswahrscheinlichkeiten für den Markov-Prozess

%Vektoren duplizieren
#(define vNormierterIntervallvektorA (vector-copy vIntervallvektorA))
#(define vNormierterIntervallvektorB (vector-copy vIntervallvektorB))
#(define vNormierterIntervallvektorC (vector-copy vIntervallvektorC))
#(define vNormierterIntervallvektorD (vector-copy vIntervallvektorD))
#(define vNormierterIntervallvektorE (vector-copy vIntervallvektorE))
#(define vNormierterIntervallvektorF (vector-copy vIntervallvektorF))

% Vektoren Normieren, sodass es zu einer stochastischen Matrix wird
#(vector-set! vNormierterIntervallvektorA 0 (/ (vector-ref vNormierterIntervallvektorA 0) (vector-ref vKumulierterIntervallvektorA 5)))
#(vector-set! vNormierterIntervallvektorA 1 (/ (vector-ref vNormierterIntervallvektorA 1) (vector-ref vKumulierterIntervallvektorA 5)))
#(vector-set! vNormierterIntervallvektorA 2 (/ (vector-ref vNormierterIntervallvektorA 2) (vector-ref vKumulierterIntervallvektorA 5)))
#(vector-set! vNormierterIntervallvektorA 3 (/ (vector-ref vNormierterIntervallvektorA 3) (vector-ref vKumulierterIntervallvektorA 5)))
#(vector-set! vNormierterIntervallvektorA 4 (/ (vector-ref vNormierterIntervallvektorA 4) (vector-ref vKumulierterIntervallvektorA 5)))
#(vector-set! vNormierterIntervallvektorA 5 (/ (vector-ref vNormierterIntervallvektorA 5) (vector-ref vKumulierterIntervallvektorA 5)))

#(vector-set! vNormierterIntervallvektorB 0 (/ (vector-ref vNormierterIntervallvektorB 0) (vector-ref vKumulierterIntervallvektorB 5)))
#(vector-set! vNormierterIntervallvektorB 1 (/ (vector-ref vNormierterIntervallvektorB 1) (vector-ref vKumulierterIntervallvektorB 5)))
#(vector-set! vNormierterIntervallvektorB 2 (/ (vector-ref vNormierterIntervallvektorB 2) (vector-ref vKumulierterIntervallvektorB 5)))
#(vector-set! vNormierterIntervallvektorB 3 (/ (vector-ref vNormierterIntervallvektorB 3) (vector-ref vKumulierterIntervallvektorB 5)))
#(vector-set! vNormierterIntervallvektorB 4 (/ (vector-ref vNormierterIntervallvektorB 4) (vector-ref vKumulierterIntervallvektorB 5)))
#(vector-set! vNormierterIntervallvektorB 5 (/ (vector-ref vNormierterIntervallvektorB 5) (vector-ref vKumulierterIntervallvektorB 5)))

#(vector-set! vNormierterIntervallvektorC 0 (/ (vector-ref vNormierterIntervallvektorC 0) (vector-ref vKumulierterIntervallvektorC 5)))
#(vector-set! vNormierterIntervallvektorC 1 (/ (vector-ref vNormierterIntervallvektorC 1) (vector-ref vKumulierterIntervallvektorC 5)))
#(vector-set! vNormierterIntervallvektorC 2 (/ (vector-ref vNormierterIntervallvektorC 2) (vector-ref vKumulierterIntervallvektorC 5)))
#(vector-set! vNormierterIntervallvektorC 3 (/ (vector-ref vNormierterIntervallvektorC 3) (vector-ref vKumulierterIntervallvektorC 5)))
#(vector-set! vNormierterIntervallvektorC 4 (/ (vector-ref vNormierterIntervallvektorC 4) (vector-ref vKumulierterIntervallvektorC 5)))
#(vector-set! vNormierterIntervallvektorC 5 (/ (vector-ref vNormierterIntervallvektorC 5) (vector-ref vKumulierterIntervallvektorC 5)))

#(vector-set! vNormierterIntervallvektorD 0 (/ (vector-ref vNormierterIntervallvektorD 0) (vector-ref vKumulierterIntervallvektorD 5)))
#(vector-set! vNormierterIntervallvektorD 1 (/ (vector-ref vNormierterIntervallvektorD 1) (vector-ref vKumulierterIntervallvektorD 5)))
#(vector-set! vNormierterIntervallvektorD 2 (/ (vector-ref vNormierterIntervallvektorD 2) (vector-ref vKumulierterIntervallvektorD 5)))
#(vector-set! vNormierterIntervallvektorD 3 (/ (vector-ref vNormierterIntervallvektorD 3) (vector-ref vKumulierterIntervallvektorD 5)))
#(vector-set! vNormierterIntervallvektorD 4 (/ (vector-ref vNormierterIntervallvektorD 4) (vector-ref vKumulierterIntervallvektorD 5)))
#(vector-set! vNormierterIntervallvektorD 5 (/ (vector-ref vNormierterIntervallvektorD 5) (vector-ref vKumulierterIntervallvektorD 5)))

#(vector-set! vNormierterIntervallvektorE 0 (/ (vector-ref vNormierterIntervallvektorE 0) (vector-ref vKumulierterIntervallvektorE 5)))
#(vector-set! vNormierterIntervallvektorE 1 (/ (vector-ref vNormierterIntervallvektorE 1) (vector-ref vKumulierterIntervallvektorE 5)))
#(vector-set! vNormierterIntervallvektorE 2 (/ (vector-ref vNormierterIntervallvektorE 2) (vector-ref vKumulierterIntervallvektorE 5)))
#(vector-set! vNormierterIntervallvektorE 3 (/ (vector-ref vNormierterIntervallvektorE 3) (vector-ref vKumulierterIntervallvektorE 5)))
#(vector-set! vNormierterIntervallvektorE 4 (/ (vector-ref vNormierterIntervallvektorE 4) (vector-ref vKumulierterIntervallvektorE 5)))
#(vector-set! vNormierterIntervallvektorE 5 (/ (vector-ref vNormierterIntervallvektorE 5) (vector-ref vKumulierterIntervallvektorE 5)))

#(vector-set! vNormierterIntervallvektorF 0 (/ (vector-ref vNormierterIntervallvektorF 0) (vector-ref vKumulierterIntervallvektorF 5)))
#(vector-set! vNormierterIntervallvektorF 1 (/ (vector-ref vNormierterIntervallvektorF 1) (vector-ref vKumulierterIntervallvektorF 5)))
#(vector-set! vNormierterIntervallvektorF 2 (/ (vector-ref vNormierterIntervallvektorF 2) (vector-ref vKumulierterIntervallvektorF 5)))
#(vector-set! vNormierterIntervallvektorF 3 (/ (vector-ref vNormierterIntervallvektorF 3) (vector-ref vKumulierterIntervallvektorF 5)))
#(vector-set! vNormierterIntervallvektorF 4 (/ (vector-ref vNormierterIntervallvektorF 4) (vector-ref vKumulierterIntervallvektorF 5)))
#(vector-set! vNormierterIntervallvektorF 5 (/ (vector-ref vNormierterIntervallvektorF 5) (vector-ref vKumulierterIntervallvektorF 5)))

% Drucken der Übergangsmatrix
\markup {
  \translate #'(45 . 0)  %Verschiebt matrix (horiz. vert)
  "Übergangsmatrix:"
}

\markup \fill-line{\null}
\markup \fill-line{\null}

\markuplist {
  \translate #'(36 . 0)  %Verschiebt matrix (horiz. vert)
  \override #'(padding . 2)
  \table
  #'(0 0 0 0 0 0)
  {
    #(format #f "~s" (vector-ref vNormierterIntervallvektorA 0))  #(format #f "~s" (vector-ref vNormierterIntervallvektorA 1))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorA 2))  #(format #f "~s" (vector-ref vNormierterIntervallvektorA 3))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorA 4))  #(format #f "~s" (vector-ref vNormierterIntervallvektorA 5))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorB 0))  #(format #f "~s" (vector-ref vNormierterIntervallvektorB 1))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorB 2))  #(format #f "~s" (vector-ref vNormierterIntervallvektorB 3))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorB 4))  #(format #f "~s" (vector-ref vNormierterIntervallvektorB 5))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorC 0))  #(format #f "~s" (vector-ref vNormierterIntervallvektorC 1))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorC 2))  #(format #f "~s" (vector-ref vNormierterIntervallvektorC 3))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorC 4))  #(format #f "~s" (vector-ref vNormierterIntervallvektorC 5))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorD 0))  #(format #f "~s" (vector-ref vNormierterIntervallvektorD 1))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorD 2))  #(format #f "~s" (vector-ref vNormierterIntervallvektorD 3))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorD 4))  #(format #f "~s" (vector-ref vNormierterIntervallvektorD 5))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorE 0))  #(format #f "~s" (vector-ref vNormierterIntervallvektorE 1))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorE 2))  #(format #f "~s" (vector-ref vNormierterIntervallvektorE 3))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorE 4))  #(format #f "~s" (vector-ref vNormierterIntervallvektorE 5))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorF 0))  #(format #f "~s" (vector-ref vNormierterIntervallvektorF 1))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorF 2))  #(format #f "~s" (vector-ref vNormierterIntervallvektorF 3))
    #(format #f "~s" (vector-ref vNormierterIntervallvektorF 4))  #(format #f "~s" (vector-ref vNormierterIntervallvektorF 5))

  }
}

% Klammern der Übergangsmatrix
\markup { \postscript "36 1 moveto 0 0 -4 9 0 18 rcurveto stroke" }
\markup { \postscript "74 2 moveto 0 0 4 9 0 18 rcurveto stroke" }

% Vspace für Formatierung
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}