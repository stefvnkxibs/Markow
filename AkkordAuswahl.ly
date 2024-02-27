% gibt Buchstabe aus in `sAbfolgeAkkorde`, wählt nächsten Akkord GEWICHTET aus

% Zählt die Anzahl der Iterationen.
#(define iCounterAkkord 0)

% string "xxxxx" / wird später überschrieben zu einem String der Abfolge "AECxx" usw.
#(define sAbfolgeAkkorde (make-string iPfade #\x))

% Definiert sind Funktionen wie etwa `FktAbfolgeAkkordD`, die das Zeichen 'x' in `sAbfolgeAkkorde` mit 'D' ersetzen, den Zähler erhöhen und dann basierend auf der Gewichtung rekursiv eine andere Funktion aufrufen.
#(define FktAbfolgeAkkordA
   (lambda (x)
     (string-set! sAbfolgeAkkorde iCounterAkkord #\A)
     (set! iCounterAkkord (+ iCounterAkkord 1))
     (if (< iCounterAkkord iPfade)
         (cond
          ((> (vector-ref vKumulierterIntervallvektorA 0) x) (FktAbfolgeAkkordA (random (vector-ref vKumulierterIntervallvektorA 5))))
          ((> (vector-ref vKumulierterIntervallvektorA 1) x) (FktAbfolgeAkkordB (random (vector-ref vKumulierterIntervallvektorB 5))))
          ((> (vector-ref vKumulierterIntervallvektorA 2) x) (FktAbfolgeAkkordC (random (vector-ref vKumulierterIntervallvektorC 5))))
          ((> (vector-ref vKumulierterIntervallvektorA 3) x) (FktAbfolgeAkkordD (random (vector-ref vKumulierterIntervallvektorD 5))))
          ((> (vector-ref vKumulierterIntervallvektorA 4) x) (FktAbfolgeAkkordE (random (vector-ref vKumulierterIntervallvektorE 5))))
          (else (FktAbfolgeAkkordF (random (vector-ref vKumulierterIntervallvektorF 5))))
          )
         )
     )
   )

#(define FktAbfolgeAkkordB
   (lambda (x)
     (string-set! sAbfolgeAkkorde iCounterAkkord #\B)
     (set! iCounterAkkord (+ iCounterAkkord 1))
     (if (< iCounterAkkord iPfade)
         (cond
          ((> (vector-ref vKumulierterIntervallvektorB 0) x) (FktAbfolgeAkkordA (random (vector-ref vKumulierterIntervallvektorA 5))))
          ((> (vector-ref vKumulierterIntervallvektorB 1) x) (FktAbfolgeAkkordB (random (vector-ref vKumulierterIntervallvektorB 5))))
          ((> (vector-ref vKumulierterIntervallvektorB 2) x) (FktAbfolgeAkkordC (random (vector-ref vKumulierterIntervallvektorC 5))))
          ((> (vector-ref vKumulierterIntervallvektorB 3) x) (FktAbfolgeAkkordD (random (vector-ref vKumulierterIntervallvektorD 5))))
          ((> (vector-ref vKumulierterIntervallvektorB 4) x) (FktAbfolgeAkkordE (random (vector-ref vKumulierterIntervallvektorE 5))))
          (else (FktAbfolgeAkkordF (random (vector-ref vKumulierterIntervallvektorF 5))))
          )
         )
     )
   )

#(define FktAbfolgeAkkordC
   (lambda (x)
     (string-set! sAbfolgeAkkorde iCounterAkkord #\C)
     (set! iCounterAkkord (+ iCounterAkkord 1))
     (if (< iCounterAkkord iPfade)
         (cond
          ((> (vector-ref vKumulierterIntervallvektorC 0) x) (FktAbfolgeAkkordA (random (vector-ref vKumulierterIntervallvektorA 5))))
          ((> (vector-ref vKumulierterIntervallvektorC 1) x) (FktAbfolgeAkkordB (random (vector-ref vKumulierterIntervallvektorB 5))))
          ((> (vector-ref vKumulierterIntervallvektorC 2) x) (FktAbfolgeAkkordC (random (vector-ref vKumulierterIntervallvektorC 5))))
          ((> (vector-ref vKumulierterIntervallvektorC 3) x) (FktAbfolgeAkkordD (random (vector-ref vKumulierterIntervallvektorD 5))))
          ((> (vector-ref vKumulierterIntervallvektorC 4) x) (FktAbfolgeAkkordE (random (vector-ref vKumulierterIntervallvektorE 5))))
          (else (FktAbfolgeAkkordF (random (vector-ref vKumulierterIntervallvektorF 5))))
          )
         )
     )
   )

#(define FktAbfolgeAkkordD
   (lambda (x)
     (string-set! sAbfolgeAkkorde iCounterAkkord #\D)
     (set! iCounterAkkord (+ iCounterAkkord 1))
     (if (< iCounterAkkord iPfade)
         (cond
          ((> (vector-ref vKumulierterIntervallvektorD 0) x) (FktAbfolgeAkkordA (random (vector-ref vKumulierterIntervallvektorA 5))))
          ((> (vector-ref vKumulierterIntervallvektorD 1) x) (FktAbfolgeAkkordB (random (vector-ref vKumulierterIntervallvektorB 5))))
          ((> (vector-ref vKumulierterIntervallvektorD 2) x) (FktAbfolgeAkkordC (random (vector-ref vKumulierterIntervallvektorC 5))))
          ((> (vector-ref vKumulierterIntervallvektorD 3) x) (FktAbfolgeAkkordD (random (vector-ref vKumulierterIntervallvektorD 5))))
          ((> (vector-ref vKumulierterIntervallvektorD 4) x) (FktAbfolgeAkkordE (random (vector-ref vKumulierterIntervallvektorE 5))))
          (else (FktAbfolgeAkkordF (random (vector-ref vKumulierterIntervallvektorF 5))))
          )
         )
     )
   )

#(define FktAbfolgeAkkordE
   (lambda (x)
     (string-set! sAbfolgeAkkorde iCounterAkkord #\E)
     (set! iCounterAkkord (+ iCounterAkkord 1))
     (if (< iCounterAkkord iPfade)
         (cond
          ((> (vector-ref vKumulierterIntervallvektorE 0) x) (FktAbfolgeAkkordA (random (vector-ref vKumulierterIntervallvektorA 5))))
          ((> (vector-ref vKumulierterIntervallvektorE 1) x) (FktAbfolgeAkkordB (random (vector-ref vKumulierterIntervallvektorB 5))))
          ((> (vector-ref vKumulierterIntervallvektorE 2) x) (FktAbfolgeAkkordC (random (vector-ref vKumulierterIntervallvektorC 5))))
          ((> (vector-ref vKumulierterIntervallvektorE 3) x) (FktAbfolgeAkkordD (random (vector-ref vKumulierterIntervallvektorD 5))))
          ((> (vector-ref vKumulierterIntervallvektorE 4) x) (FktAbfolgeAkkordE (random (vector-ref vKumulierterIntervallvektorE 5))))
          (else (FktAbfolgeAkkordF (random (vector-ref vKumulierterIntervallvektorF 5))))
          )
         )
     )
   )

#(define FktAbfolgeAkkordF
   (lambda (x)
     (string-set! sAbfolgeAkkorde iCounterAkkord #\F)
     (set! iCounterAkkord (+ iCounterAkkord 1))
     (if (< iCounterAkkord iPfade)
         (cond
          ((> (vector-ref vKumulierterIntervallvektorF 0) x) (FktAbfolgeAkkordA (random (vector-ref vKumulierterIntervallvektorA 5))))
          ((> (vector-ref vKumulierterIntervallvektorF 1) x) (FktAbfolgeAkkordB (random (vector-ref vKumulierterIntervallvektorB 5))))
          ((> (vector-ref vKumulierterIntervallvektorF 2) x) (FktAbfolgeAkkordC (random (vector-ref vKumulierterIntervallvektorC 5))))
          ((> (vector-ref vKumulierterIntervallvektorF 3) x) (FktAbfolgeAkkordD (random (vector-ref vKumulierterIntervallvektorD 5))))
          ((> (vector-ref vKumulierterIntervallvektorF 4) x) (FktAbfolgeAkkordE (random (vector-ref vKumulierterIntervallvektorE 5))))
          (else (FktAbfolgeAkkordF (random (vector-ref vKumulierterIntervallvektorF 5))))
          )
         )
     )
   )