% Erstelle Intervallvektoren:
% AkkordlistA = '(c es g b) -> IntervallvektorA = #'('1 '0 '1 '3 '1 '0)
% Prüft, ob Element in der Liste der AkkordTöne (lAkkordA) ist, und zählt dann die entsprechenden Intervalle
#(define vIntervallvektorA #(0 0 0 0 0 0))
#(define vIntervallvektorB #(0 0 0 0 0 0))
#(define vIntervallvektorC #(0 0 0 0 0 0))
#(define vIntervallvektorD #(0 0 0 0 0 0))
#(define vIntervallvektorE #(0 0 0 0 0 0))
#(define vIntervallvektorF #(0 0 0 0 0 0))

% Funktion zur Bestimmung des Intervallvektors. Bsp: '(c e g) --> '(0 0 1 1 1 0)
#(define (IntervallvektorFkt Akk Interv)
   (
     ;; Überprüft jedes mögliche Intervall für jedes Mitglied des Akkords.
     ;; Inkrementiert den entsprechenden Wert im Intervallvektor, falls gefunden.
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'cis Akk) (member 'des Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (member 'd Akk) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'dis Akk) (member 'ees Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'e Akk) (member 'fes Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'eis Akk) (member 'f Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'fis Akk)(member 'ges Akk)) (vector-set! Interv 5 (+ (vector-ref Interv 5) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (member 'g Akk) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (member 'a Akk) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'c Akk) (member 'his Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))

     (if (or (member 'cis Akk) (member 'des Akk)) (if (member 'd Akk) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (or (member 'dis Akk) (member 'ees Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (or (member 'e Akk) (member 'fes Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (or (member 'eis Akk) (member 'f Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (or (member 'fis Akk)(member 'ges Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (member 'g Akk) (vector-set! Interv 5 (+ (vector-ref Interv 5) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (or (member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (member 'a Akk) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'cis Akk) (member 'des Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))

     (if (member 'd Akk) (if (or (member 'dis Akk) (member 'ees Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (member 'd Akk) (if (or (member 'e Akk) (member 'fes Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (member 'd Akk) (if (or (member 'eis Akk) (member 'f Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (member 'd Akk) (if (or (member 'fis Akk)(member 'ges Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (member 'd Akk) (if (member 'g Akk) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (member 'd Akk) (if (or (member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 5 (+ (vector-ref Interv 5) 1))))
     (if (member 'd Akk) (if (member 'a Akk) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (member 'd Akk) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (member 'd Akk) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))

     (if (or (member 'dis Akk) (member 'ees Akk)) (if (or (member 'e Akk) (member 'fes Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (or (member 'dis Akk) (member 'ees Akk)) (if (or (member 'eis Akk) (member 'f Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'dis Akk) (member 'ees Akk)) (if (or (member 'fis Akk)(member 'ges Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'dis Akk) (member 'ees Akk)) (if (member 'g Akk) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'dis Akk) (member 'ees Akk)) (if (or (member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'dis Akk) (member 'ees Akk)) (if (member 'a Akk) (vector-set! Interv 5 (+ (vector-ref Interv 5) 1))))
     (if (or (member 'dis Akk) (member 'ees Akk)) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'dis Akk) (member 'ees Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))

     (if (or (member 'e Akk) (member 'fes Akk)) (if (or (member 'eis Akk) (member 'f Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (or (member 'e Akk) (member 'fes Akk)) (if (or (member 'fis Akk)(member 'ges Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'e Akk) (member 'fes Akk)) (if (member 'g Akk) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'e Akk) (member 'fes Akk)) (if (or (member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'e Akk) (member 'fes Akk)) (if (member 'a Akk) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'e Akk) (member 'fes Akk)) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 5 (+ (vector-ref Interv 5) 1))))
     (if (or (member 'e Akk) (member 'fes Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))

     (if (or (member 'eis Akk) (member 'f Akk)) (if (or (member 'fis Akk)(member 'ges Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (or (member 'eis Akk) (member 'f Akk)) (if (member 'g Akk) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'eis Akk) (member 'f Akk)) (if (or (member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'eis Akk) (member 'f Akk)) (if (member 'a Akk) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'eis Akk) (member 'f Akk)) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))
     (if (or (member 'eis Akk) (member 'f Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 5 (+ (vector-ref Interv 5) 1))))

     (if (or (member 'fis Akk)(member 'ges Akk)) (if (member 'g Akk) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (or (member 'fis Akk)(member 'ges Akk)) (if (or (member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'fis Akk)(member 'ges Akk)) (if (member 'a Akk) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (or (member 'fis Akk)(member 'ges Akk)) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))
     (if (or (member 'fis Akk)(member 'ges Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 4 (+ (vector-ref Interv 4) 1))))

     (if (member 'g Akk) (if (or(member 'gis Akk)(member 'aes Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (member 'g Akk) (if (member 'a Akk) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (member 'g Akk) (if (or (member 'ais Akk)(member 'bes Akk))(vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))
     (if (member 'g Akk) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 3 (+ (vector-ref Interv 3) 1))))


     (if (or (member 'gis Akk)(member 'aes Akk)) (if (member 'a Akk) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (or (member 'gis Akk)(member 'aes Akk)) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))
     (if (or (member 'gis Akk)(member 'aes Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 2 (+ (vector-ref Interv 2) 1))))

     (if (member 'a Akk) (if (or (member 'ais Akk)(member 'bes Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))
     (if (member 'a Akk) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 1 (+ (vector-ref Interv 1) 1))))

     (if (or (member 'ais Akk)(member 'bes Akk)) (if (or (member 'b Akk)(member 'ces Akk)) (vector-set! Interv 0 (+ (vector-ref Interv 0) 1))))

     ;; Gibt den resultierenden Intervallvektor aus (nicht notwendig für die Berechnung).
     ;; aus der unteren Zeile die beiden Semikolons entfernen für einen Output des Zwischenergebnisses
     ;; (display Interv)
     )
   )

% Setzt die Intervallvektoren für verschiedene Akkorde.
#(IntervallvektorFkt lAkkordA vIntervallvektorA)
#(IntervallvektorFkt lAkkordB vIntervallvektorB)
#(IntervallvektorFkt lAkkordC vIntervallvektorC)
#(IntervallvektorFkt lAkkordD vIntervallvektorD)
#(IntervallvektorFkt lAkkordE vIntervallvektorE)
#(IntervallvektorFkt lAkkordF vIntervallvektorF)

%Intervallvektoren, Verteilungs-Funktion // P(x<N) = XXX
#(define vKumulierterIntervallvektorA (vector-copy vIntervallvektorA))
#(define vKumulierterIntervallvektorB (vector-copy vIntervallvektorB))
#(define vKumulierterIntervallvektorC (vector-copy vIntervallvektorC))
#(define vKumulierterIntervallvektorD (vector-copy vIntervallvektorD))
#(define vKumulierterIntervallvektorE (vector-copy vIntervallvektorE))
#(define vKumulierterIntervallvektorF (vector-copy vIntervallvektorF))

% Definition der kumulierten Werte für Intervallvektor A
#(vector-set! vKumulierterIntervallvektorA 1 (+ (vector-ref vKumulierterIntervallvektorA 0) (vector-ref vKumulierterIntervallvektorA 1)))
#(vector-set! vKumulierterIntervallvektorA 2 (+ (vector-ref vKumulierterIntervallvektorA 1) (vector-ref vKumulierterIntervallvektorA 2)))
#(vector-set! vKumulierterIntervallvektorA 3 (+ (vector-ref vKumulierterIntervallvektorA 2) (vector-ref vKumulierterIntervallvektorA 3)))
#(vector-set! vKumulierterIntervallvektorA 4 (+ (vector-ref vKumulierterIntervallvektorA 3) (vector-ref vKumulierterIntervallvektorA 4)))
#(vector-set! vKumulierterIntervallvektorA 5 (+ (vector-ref vKumulierterIntervallvektorA 4) (vector-ref vKumulierterIntervallvektorA 5)))

%Definition der kumulierten Werte für Intervallvektor B
#(vector-set! vKumulierterIntervallvektorB 1 (+ (vector-ref vKumulierterIntervallvektorB 0) (vector-ref vKumulierterIntervallvektorB 1)))
#(vector-set! vKumulierterIntervallvektorB 2 (+ (vector-ref vKumulierterIntervallvektorB 1) (vector-ref vKumulierterIntervallvektorB 2)))
#(vector-set! vKumulierterIntervallvektorB 3 (+ (vector-ref vKumulierterIntervallvektorB 2) (vector-ref vKumulierterIntervallvektorB 3)))
#(vector-set! vKumulierterIntervallvektorB 4 (+ (vector-ref vKumulierterIntervallvektorB 3) (vector-ref vKumulierterIntervallvektorB 4)))
#(vector-set! vKumulierterIntervallvektorB 5 (+ (vector-ref vKumulierterIntervallvektorB 4) (vector-ref vKumulierterIntervallvektorB 5)))

% Definition der kumulierten Werte für Intervallvektor C
#(vector-set! vKumulierterIntervallvektorC 1 (+ (vector-ref vKumulierterIntervallvektorC 0) (vector-ref vKumulierterIntervallvektorC 1)))
#(vector-set! vKumulierterIntervallvektorC 2 (+ (vector-ref vKumulierterIntervallvektorC 1) (vector-ref vKumulierterIntervallvektorC 2)))
#(vector-set! vKumulierterIntervallvektorC 3 (+ (vector-ref vKumulierterIntervallvektorC 2) (vector-ref vKumulierterIntervallvektorC 3)))
#(vector-set! vKumulierterIntervallvektorC 4 (+ (vector-ref vKumulierterIntervallvektorC 3) (vector-ref vKumulierterIntervallvektorC 4)))
#(vector-set! vKumulierterIntervallvektorC 5 (+ (vector-ref vKumulierterIntervallvektorC 4) (vector-ref vKumulierterIntervallvektorC 5)))

% Definition der kumulierten Werte für Intervallvektor D
#(vector-set! vKumulierterIntervallvektorD 1 (+ (vector-ref vKumulierterIntervallvektorD 0) (vector-ref vKumulierterIntervallvektorD 1)))
#(vector-set! vKumulierterIntervallvektorD 2 (+ (vector-ref vKumulierterIntervallvektorD 1) (vector-ref vKumulierterIntervallvektorD 2)))
#(vector-set! vKumulierterIntervallvektorD 3 (+ (vector-ref vKumulierterIntervallvektorD 2) (vector-ref vKumulierterIntervallvektorD 3)))
#(vector-set! vKumulierterIntervallvektorD 4 (+ (vector-ref vKumulierterIntervallvektorD 3) (vector-ref vKumulierterIntervallvektorD 4)))
#(vector-set! vKumulierterIntervallvektorD 5 (+ (vector-ref vKumulierterIntervallvektorD 4) (vector-ref vKumulierterIntervallvektorD 5)))

% Definition der kumulierten Werte für Intervallvektor E
#(vector-set! vKumulierterIntervallvektorE 1 (+ (vector-ref vKumulierterIntervallvektorE 0) (vector-ref vKumulierterIntervallvektorE 1)))
#(vector-set! vKumulierterIntervallvektorE 2 (+ (vector-ref vKumulierterIntervallvektorE 1) (vector-ref vKumulierterIntervallvektorE 2)))
#(vector-set! vKumulierterIntervallvektorE 3 (+ (vector-ref vKumulierterIntervallvektorE 2) (vector-ref vKumulierterIntervallvektorE 3)))
#(vector-set! vKumulierterIntervallvektorE 4 (+ (vector-ref vKumulierterIntervallvektorE 3) (vector-ref vKumulierterIntervallvektorE 4)))
#(vector-set! vKumulierterIntervallvektorE 5 (+ (vector-ref vKumulierterIntervallvektorE 4) (vector-ref vKumulierterIntervallvektorE 5)))

% Definition der kumulierten Werte für Intervallvektor F
#(vector-set! vKumulierterIntervallvektorF 1 (+ (vector-ref vKumulierterIntervallvektorF 0) (vector-ref vKumulierterIntervallvektorF 1)))
#(vector-set! vKumulierterIntervallvektorF 2 (+ (vector-ref vKumulierterIntervallvektorF 1) (vector-ref vKumulierterIntervallvektorF 2)))
#(vector-set! vKumulierterIntervallvektorF 3 (+ (vector-ref vKumulierterIntervallvektorF 2) (vector-ref vKumulierterIntervallvektorF 3)))
#(vector-set! vKumulierterIntervallvektorF 4 (+ (vector-ref vKumulierterIntervallvektorF 3) (vector-ref vKumulierterIntervallvektorF 4)))
#(vector-set! vKumulierterIntervallvektorF 5 (+ (vector-ref vKumulierterIntervallvektorF 4) (vector-ref vKumulierterIntervallvektorF 5)))