%Strings To Music

% AKKORDE %

% Liest den sAbfolgeAkkorde aus und schreibt die jeweiligen Akkorde
% (Getrennte Funktionen, damit man auch zwei Markov-Stränge verfolgen könnte)
% Setzt den Zähler auf 0, um den Startpunkt für die sAbfolgeAkkorde zu markieren
#(define iCounterAkkordOben 0)
#(define iCounterAkkordUnten 0)

% Initialisiert die Variablen `cAkkordOben` und `cAkkordUnten`. Wert egal!
#(define cAkkordOben 0)
#(define cAkkordUnten cAkkordOben)

% START DER FUNKTION. ANFANGSAKKORD Festlegen mit `A` 
#(FktAbfolgeAkkordA (random (vector-ref vKumulierterIntervallvektorA 5)))

% Definiert eine LilyPond-Musikfunktion, die den Wert von 'cAkkordOben' aus der 'sAbfolgeAkkorde' liest und den Zähler erhöht.
Akk =
#(define-music-function (parser location) ()
   ;; Liest den cAkkordaben an der aktuellen Position des Zählers in der sAbfolgeAkkorde
   (set! cAkkordOben (string-ref sAbfolgeAkkorde iCounterAkkordOben))
   ;; Erhöht den Zähler für den nächsten Durchlauf
   (set! iCounterAkkordOben (+ iCounterAkkordOben 1))
   ;; Entsprechend dem gelesenen cAkkordaben 'cAkkord' werden LilyPond-Akkordanweisungen erzeugt.
   (cond
    ((eq? cAkkordOben '#\A) #{ \lilyAkkordAOben #})
    ((eq? cAkkordOben '#\B) #{ \lilyAkkordBOben #})
    ((eq? cAkkordOben '#\C) #{ \lilyAkkordCOben #})
    ((eq? cAkkordOben '#\D) #{ \lilyAkkordDOben #})
    ((eq? cAkkordOben '#\E) #{ \lilyAkkordEOben #})
    ((eq? cAkkordOben '#\F) #{ \lilyAkkordFOben #})
    )
   )

% Definiert eine LilyPond-Musikfunktion, die den Wert von 'cAkkordUnten' aus der 'sAbfolgeAkkorde' liest und den Zähler erhöht.
AkkU =
#(define-music-function (parser location) ()
   ;; Liest den cAkkordaben an der aktuellen Position des Zählers in der sAbfolgeAkkorde
   (set! cAkkordUnten (string-ref sAbfolgeAkkorde iCounterAkkordUnten))
   ;; Erhöht den Zähler für den nächsten Durchlauf
   (set! iCounterAkkordUnten (+ iCounterAkkordUnten 1))
   ;; Entsprechend dem gelesenen cAkkordaben 'cAkkord' werden LilyPond-Akkordanweisungen erzeugt.
   (cond
    ((eq? cAkkordUnten '#\A) #{ \lilyAkkordAUnten #})
    ((eq? cAkkordUnten '#\B) #{ \lilyAkkordBUnten #})
    ((eq? cAkkordUnten '#\C) #{ \lilyAkkordCUnten #})
    ((eq? cAkkordUnten '#\D) #{ \lilyAkkordDUnten #})
    ((eq? cAkkordUnten '#\E) #{ \lilyAkkordEUnten #})
    ((eq? cAkkordUnten '#\F) #{ \lilyAkkordFUnten #})
    )
   )

% Ende Akkorde %

% ARTIKULATION %

% Liest die sAbfolgeArtikulationOben / sAbfolgeArtikulationUnten aus und schreibt die jeweiligen Artikulation

% Setzt den iCounterArtikulationOben auf 0, um den Startpunkt für die sAbfolgeArtikulation zu markieren
#(define iCounterArtikulationOben 0)
#(define iCounterArtikulationUnten 0)

% Initialisiert die Variablen `cAbfolgeArtikulation` und `cArtikulationUnten`. Wert egal!
#(define cAbfolgeArtikulationOben 0)
#(define cAbfolgeArtikulationUnten 0)

% START DER FUNKTION. ARTIKULATIONUNTEN
#(FktAbfolgeArtikulationObenC (random (vector-ref vKumulierterIntervallvektorC 5)))
#(FktAbfolgeArtikulationUntenD (random (vector-ref vKumulierterIntervallvektorD 5)))

% Definiert eine LilyPond-Musikfunktion für dynamikamische Markierungen, die den Wert von 'cAbfolgeArtikulation' aus der 'sAbfolgeArtikulationOben' 
% liest und den Zähler inkrementiert.
ArtOben =
#(define-music-function (parser location) ()
   ;; Liest den Buchstaben an der aktuellen Position des Zählers in der Abfolge
   (set! cAbfolgeArtikulationOben (string-ref sAbfolgeArtikulationOben iCounterArtikulationOben))
   ;; Inkrementiert den Zähler für den nächsten Durchlauf
   (set! iCounterArtikulationOben (+ iCounterArtikulationOben 1))
   ;; Entsprechend dem gelesenen Buchstaben 'cAbfolgeArtikulation' werden LilyPond-dynamikamische Markierungen erzeugt.
   (cond
    ((eq? cAbfolgeArtikulationOben '#\A) #{ -! #})
    ((eq? cAbfolgeArtikulationOben '#\B) #{ -. #})
    ((eq? cAbfolgeArtikulationOben '#\C) #{ -^ #})
    ((eq? cAbfolgeArtikulationOben '#\D) #{ -_ #})
    ((eq? cAbfolgeArtikulationOben '#\E) #{ -> #})
    ((eq? cAbfolgeArtikulationOben '#\F) #{ -- #})
    )
   )

% Definiert eine LilyPond-Musikfunktion für dynamikamische Markierungen, die den Wert von 'cAbfolgeArtikulation' aus der 'sAbfolgeArtikulationUnten' 
% liest und den Zähler inkrementiert.
ArtUnten =
#(define-music-function (parser location) ()
   ;; Liest den Buchstaben an der aktuellen Position des Zählers in der Abfolge
   (set! cAbfolgeArtikulationUnten (string-ref sAbfolgeArtikulationUnten iCounterArtikulationUnten))
   ;; Inkrementiert den Zähler für den nächsten Durchlauf
   (set! iCounterArtikulationUnten (+ iCounterArtikulationUnten 1))
   ;; Entsprechend dem gelesenen Buchstaben 'cAbfolgeArtikulationUnten' werden LilyPond-dynamikamische Markierungen erzeugt.
   (cond
    ((eq? cAbfolgeArtikulationUnten '#\A) #{ -! #})
    ((eq? cAbfolgeArtikulationUnten '#\B) #{ -. #})
    ((eq? cAbfolgeArtikulationUnten '#\C) #{ -^ #})
    ((eq? cAbfolgeArtikulationUnten '#\D) #{ -_ #})
    ((eq? cAbfolgeArtikulationUnten '#\E) #{ -> #})
    ((eq? cAbfolgeArtikulationUnten '#\F) #{ -- #})
    )
   )

% Ende Artikulation %

% Dynamikamik %
%Liest die sAbfolgeDynamik aus und schreibt die jeweiligen Dynamiken

% Setzt den iCounterDynamik auf 0, um den Startpunkt für die sAbfolgeDynamik zu markieren
#(set! iCounterDynamik 0)

% Definiert eine LilyPond-Musikfunktion für dynamikamische Markierungen, die den Wert von 'cAbfolgeDynamik' aus der 'sAbfolgeDynamik' 
% liest und den Zähler inkrementiert.
Dyn =
#(define-music-function (parser location) ()
   ;; Liest den Buchstaben an der aktuellen Position des Zählers in der Abfolge
   (set! cAbfolgeDynamik (string-ref sAbfolgeDynamik iCounterDynamik))
   ;; Inkrementiert den Zähler für den nächsten Durchlauf
   (set! iCounterDynamik (+ iCounterDynamik 1))
   ;; Entsprechend dem gelesenen Buchstaben 'cAbfolgeDynamik' werden LilyPond-dynamikamische Markierungen erzeugt.
   (cond
    ((eq? cAbfolgeDynamik '#\A) #{ \pp #})
    ((eq? cAbfolgeDynamik '#\B) #{ \p #})
    ((eq? cAbfolgeDynamik '#\C) #{ \mp #})
    ((eq? cAbfolgeDynamik '#\D) #{ \mf #})
    ((eq? cAbfolgeDynamik '#\E) #{ \f #})
    ((eq? cAbfolgeDynamik '#\F) #{ \ff #})
    )
   )

% Ende Dynamikamik %