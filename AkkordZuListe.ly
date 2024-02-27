% Akkord zu Vektor: {<c' e' f' bes'>4^"A"} -> AkkordListA = '(c e f bes)

% LilyPond zu Scheme-String inkl. Tonlänge, Markup etc. Bsp.: "{ < c' ees' g' b' >1^\"A\" }"
FktLilyAkkordZuSchemeString = #(define-scheme-function (parser location myChord) (ly:music?)
                                 ((@ (lily display-lily) music->lily-string) myChord)
                                 )

% Diese Zeichen sind aus dem String zu löschen
#(define sDeleteChars "<>,'{}^!?123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\"")

%Entfernt die Zeichen von `sDeleteChars` aus dem Input-String
#(define (string-remove str1)
   (let ((l1 (string->list str1)) (l2 (string->list sDeleteChars)))
     (with-output-to-string
      (lambda ()
        (for-each (lambda (c)(unless (memv c l2) (display c)))l1)
        )
      )
     )
   )

% Zerlegt eine Liste durch Aufteilung an Leerzeichen (\space) und gibt eine Liste von Listen zurück, wobei jede innere Liste eine Zerlegung darstellt.
% (tokenize '(hello world)) ; Returns ((hello) (world))
#(define (tokenize l)
   (let loop ((t '()) (l l))
     (if (pair? l)
         (let ((c (car l)))
           (if (char=? c #\space)
               (cons (reverse t) (loop '() (cdr l)))
               (loop (cons (car l) t) (cdr l))))
         (if (null? t)
             '()
             (list (reverse t))
             )
         )
     )
   )

% Zerlegt eine Zeichenkette in Wörter durch Tokenisierung anhand von Leerzeichen und gibt eine Liste von Zeichenfolgen zurück,
%    wobei jede Zeichenfolge ein Wort in der ursprünglichen Zeichenfolge darstellt.
#(define (string-split s)
   (map list->string (tokenize (string->list s)))
   )

% Ändert Liste von Strings zu Liste von Symbolen
#(define (StrToSym l)
   (map (lambda (x) (string->symbol x)) l)
   )

% Die folgenden Definitionen von `lAkkord` verarbeiten Ausdrücke durch verschiedene Schritte:
% 1. Der LilyPond Akkord wird in die Scheme Sprache übersetzt. Bsp: { < des c' e' f' bes' >4^"A" } -> '(des c e f bes)
% 2. Entfernt bestimmte Zeichen basierend auf der Definition von `sDeleteChars`. Bsp: "des c e f bes"
% 3. Entfernt Leerzeichen am Beginn und am Ende unter Verwendung der vorher implementierten Funktion `string-trim`. "des c e f bes"
% 4. Teilt den resultierenden String in Wörter (Symbole) auf. (des c e f bes) unter Verwendung der Funktion `StrToSym`.
% 5. Verbindet das obere und untere System zu einer Liste / hängt die Liste des unteren Systems an die Liste des oberen Systems an durch
%    Verwendung der vorimplementierten Funktion `append`
% Das Endergebnis ist eine Liste von Symbolen (Tonnamen), die aus den ursprünglichen zusammenhängenden Strings extrahiert wurden.
#(define lAkkordA (append (StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordAOben)))))(StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordAUnten)))))))
#(define lAkkordB (append (StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordBOben)))))(StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordBUnten)))))))
#(define lAkkordC (append (StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordCOben)))))(StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordCUnten)))))))
#(define lAkkordD (append (StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordDOben)))))(StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordDUnten)))))))
#(define lAkkordE (append (StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordEOben)))))(StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordEUnten)))))))
#(define lAkkordF (append (StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordFOben)))))(StrToSym (string-split (string-trim (string-remove (FktLilyAkkordZuSchemeString lilyAkkordFUnten)))))))