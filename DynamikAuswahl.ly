%gibt Buchstabe aus in sAbfolgeDynamik, wählt nächsten Akkord GEWICHTET aus

% Zählt die Anzahl der Iterationen.
#(define iCounterDynamik 0)

%string "xxxxx" wird später überschrieben zu "AECxx" usw.
#(define sAbfolgeDynamik (make-string iPfade #\x))

% Definiert sind Funktionen wie etwa FktAbfolgeDynamikD, die das Zeichen 'x' in sAbfolgeDynamik mit 'D' ersetzen, den Zähler erhöhen
% und dann basierend auf der Gewichtung rekursiv eine andere Funktion aufrufen.
#(define FktAbfolgeDynamikA
   (lambda (x)
     (string-set! sAbfolgeDynamik iCounterDynamik #\A)
     (set! iCounterDynamik (+ iCounterDynamik 1))
     (if (< iCounterDynamik iPfade)
         (cond ((> (vector-ref vKumulierterIntervallvektorA 0) x) (FktAbfolgeDynamikA (random (vector-ref vKumulierterIntervallvektorA 5))))
           ((> (vector-ref vKumulierterIntervallvektorA 1) x) (FktAbfolgeDynamikB (random (vector-ref vKumulierterIntervallvektorB 5))))
           ((> (vector-ref vKumulierterIntervallvektorA 2) x) (FktAbfolgeDynamikC (random (vector-ref vKumulierterIntervallvektorC 5))))
           ((> (vector-ref vKumulierterIntervallvektorA 3) x) (FktAbfolgeDynamikD (random (vector-ref vKumulierterIntervallvektorD 5))))
           ((> (vector-ref vKumulierterIntervallvektorA 4) x) (FktAbfolgeDynamikE (random (vector-ref vKumulierterIntervallvektorE 5))))
           (else (FktAbfolgeDynamikF (random (vector-ref vKumulierterIntervallvektorF 5))))
           )
         )
     )
   )

#(define FktAbfolgeDynamikB
   (lambda (x)
     (string-set! sAbfolgeDynamik iCounterDynamik #\B)
     (set! iCounterDynamik (+ iCounterDynamik 1))
     (if (< iCounterDynamik iPfade)
         (cond ((> (vector-ref vKumulierterIntervallvektorB 0) x) (FktAbfolgeDynamikA (random (vector-ref vKumulierterIntervallvektorA 5))))
           ((> (vector-ref vKumulierterIntervallvektorB 1) x) (FktAbfolgeDynamikB (random (vector-ref vKumulierterIntervallvektorB 5))))
           ((> (vector-ref vKumulierterIntervallvektorB 2) x) (FktAbfolgeDynamikC (random (vector-ref vKumulierterIntervallvektorC 5))))
           ((> (vector-ref vKumulierterIntervallvektorB 3) x) (FktAbfolgeDynamikD (random (vector-ref vKumulierterIntervallvektorD 5))))
           ((> (vector-ref vKumulierterIntervallvektorB 4) x) (FktAbfolgeDynamikE (random (vector-ref vKumulierterIntervallvektorE 5))))
           (else (FktAbfolgeDynamikF (random (vector-ref vKumulierterIntervallvektorF 5))))
           )
         )
     )
   )

#(define FktAbfolgeDynamikC
   (lambda (x)
     (string-set! sAbfolgeDynamik iCounterDynamik #\C)
     (set! iCounterDynamik (+ iCounterDynamik 1))
     (if (< iCounterDynamik iPfade)
         (cond ((> (vector-ref vKumulierterIntervallvektorC 0) x) (FktAbfolgeDynamikA (random (vector-ref vKumulierterIntervallvektorA 5))))
           ((> (vector-ref vKumulierterIntervallvektorC 1) x) (FktAbfolgeDynamikB (random (vector-ref vKumulierterIntervallvektorB 5))))
           ((> (vector-ref vKumulierterIntervallvektorC 2) x) (FktAbfolgeDynamikC (random (vector-ref vKumulierterIntervallvektorC 5))))
           ((> (vector-ref vKumulierterIntervallvektorC 3) x) (FktAbfolgeDynamikD (random (vector-ref vKumulierterIntervallvektorD 5))))
           ((> (vector-ref vKumulierterIntervallvektorC 4) x) (FktAbfolgeDynamikE (random (vector-ref vKumulierterIntervallvektorE 5))))
           (else (FktAbfolgeDynamikF (random (vector-ref vKumulierterIntervallvektorF 5))))
           )
         )
     )
   )

#(define FktAbfolgeDynamikD
   (lambda (x)
     (string-set! sAbfolgeDynamik iCounterDynamik #\D)
     (set! iCounterDynamik (+ iCounterDynamik 1))
     (if (< iCounterDynamik iPfade)
         (cond ((> (vector-ref vKumulierterIntervallvektorD 0) x) (FktAbfolgeDynamikA (random (vector-ref vKumulierterIntervallvektorA 5))))
           ((> (vector-ref vKumulierterIntervallvektorD 1) x) (FktAbfolgeDynamikB (random (vector-ref vKumulierterIntervallvektorB 5))))
           ((> (vector-ref vKumulierterIntervallvektorD 2) x) (FktAbfolgeDynamikC (random (vector-ref vKumulierterIntervallvektorC 5))))
           ((> (vector-ref vKumulierterIntervallvektorD 3) x) (FktAbfolgeDynamikD (random (vector-ref vKumulierterIntervallvektorD 5))))
           ((> (vector-ref vKumulierterIntervallvektorD 4) x) (FktAbfolgeDynamikE (random (vector-ref vKumulierterIntervallvektorE 5))))
           (else (FktAbfolgeDynamikF (random (vector-ref vKumulierterIntervallvektorF 5))))
           )
         )
     )
   )

#(define FktAbfolgeDynamikE
   (lambda (x)
     (string-set! sAbfolgeDynamik iCounterDynamik #\E)
     (set! iCounterDynamik (+ iCounterDynamik 1))
     (if (< iCounterDynamik iPfade)
         (cond ((> (vector-ref vKumulierterIntervallvektorE 0) x) (FktAbfolgeDynamikA (random (vector-ref vKumulierterIntervallvektorA 5))))
           ((> (vector-ref vKumulierterIntervallvektorE 1) x) (FktAbfolgeDynamikB (random (vector-ref vKumulierterIntervallvektorB 5))))
           ((> (vector-ref vKumulierterIntervallvektorE 2) x) (FktAbfolgeDynamikC (random (vector-ref vKumulierterIntervallvektorC 5))))
           ((> (vector-ref vKumulierterIntervallvektorE 3) x) (FktAbfolgeDynamikD (random (vector-ref vKumulierterIntervallvektorD 5))))
           ((> (vector-ref vKumulierterIntervallvektorE 4) x) (FktAbfolgeDynamikE (random (vector-ref vKumulierterIntervallvektorE 5))))
           (else (FktAbfolgeDynamikF (random (vector-ref vKumulierterIntervallvektorF 5))))
           )
         )
     )
   )

#(define FktAbfolgeDynamikF
   (lambda (x)
     (string-set! sAbfolgeDynamik iCounterDynamik #\F)
     (set! iCounterDynamik (+ iCounterDynamik 1))
     (if (< iCounterDynamik iPfade)
         (cond ((> (vector-ref vKumulierterIntervallvektorF 0) x) (FktAbfolgeDynamikA (random (vector-ref vKumulierterIntervallvektorA 5))))
           ((> (vector-ref vKumulierterIntervallvektorF 1) x) (FktAbfolgeDynamikB (random (vector-ref vKumulierterIntervallvektorB 5))))
           ((> (vector-ref vKumulierterIntervallvektorF 2) x) (FktAbfolgeDynamikC (random (vector-ref vKumulierterIntervallvektorC 5))))
           ((> (vector-ref vKumulierterIntervallvektorF 3) x) (FktAbfolgeDynamikD (random (vector-ref vKumulierterIntervallvektorD 5))))
           ((> (vector-ref vKumulierterIntervallvektorF 4) x) (FktAbfolgeDynamikE (random (vector-ref vKumulierterIntervallvektorE 5))))
           (else (FktAbfolgeDynamikF (random (vector-ref vKumulierterIntervallvektorF 5))))
           )
         )
     )
   )


% Initialisiert die Variable 'cAbfolgeDynamik' mit dem Wert 'B'
#(define cAbfolgeDynamik '#\B)

% START DER FUNKTION. ANFANGSDYNANMIK
#(FktAbfolgeDynamikB (random (vector-ref vKumulierterIntervallvektorB 5)))