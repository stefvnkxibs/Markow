% DAMIT DER USER NICHTS KAPUTT MACHT%

\paper  {
  myStaffSize = #20
}

% Wie viele Akkorde werden ausgerechnet
#(define iPfade 64)

% LILYPOND-AKKORDE ZU SCHEME SYMBOL-LISTE
% lilyAkkordA = {<c' ees' g' b'>1^"A"} --> listAkkordA = ('c 'ees 'g 'b)
\include "AkkordZuListe.ly"

% INTERVALLVEKTOREN AUS SCHEME LISTEN ERSTELLEN
% listAkkodA = ('c 'ees 'g 'b) --> IntervallvektorA = #'('1 '0 '1 '3 '1 '0)
% VEKTOR INITIALISIERUNG, KUMULATIVE VERTEILUNGSFUNKTION P(x<n)
% IntervallvektorA = #'('1 '0 '1 '3 '1 '0) --> IntervallvektorA = #'('1 '1 '2 '5 '6 '6)
\include "Intervallvektoren.ly"

% STRING DER AKKORD-ABFOLGE
% --> "AABCEEDFEA" der Länge der Pfade
\include "AkkordAuswahl.ly"

% STRING DER DYNAMIK-ABFOLGE
% --> "AABCEEDFEA" der Länge der Pfade
\include "DynamikAuswahl.ly"

% STRING DER ARTS-ABFOLGE DES OBEREN SYSTEMS
% --> "AABCEEDFEA" der Länge der Pfade
\include "ArtikulationAuswahl.ly"

% AkkordAuswahl-STRING ZU AKKORDEN
% AAB zu AkkordA AkkordA AkkordB
% ArtAuswahl oben und unten-STRING ZU Art
% C D E zu verschiedenen Arten
% D E F zu verschiedenen Arten
% DynamikAuswahl-STRING ZU DYNAMIK
% B C D zu "p" "mp" "mf"
\include "StringsZuMusik.ly"


% Hier werden Metadaten für das LilyPond-Dokument festgelegt, einschließlich Titel und Copyright-Hinweis.
\header {
  title =  "Markov-Kette"
  composer = "Stefan Kribs"
  tagline = "HfMDK Frankfurt, WS 2023/24"
}

% Hier wird der Notentext für das LilyPond-Dokument definiert.
musicTrebel = {
  % Festlegen des MIDI-Instruments für den Notenbereich.
  \set Staff.midiInstrument = "acoustic grand"
  % Wiederholungsmuster für Akkorde und Dynamik
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben         % 4
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 8
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 16
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 24
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 32
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 40
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 48
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 56
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben
  \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \Akk \Dyn \ArtOben \break  % 64
  \bar "|."
}

musicBass = {
  % Festlegen des MIDI-Instruments für den Notenbereich.
  \set Staff.midiInstrument = "acoustic grand"
  % Wiederholungsmuster für Akkorde und Dynamik
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break  %8
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break  %16
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break  %24
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break %32
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break  %40
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break  %48
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break  %56
  \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \AkkU \ArtUnten \break  %64
}

% Input-Akkorde anzeigen
\score {
  \header {
    piece = "Ihre Akkordeingabe:"
  }
  \new PianoStaff
  <<
    \new Staff {
      \absolute {
        \cadenzaOn \lilyAkkordAOben \lilyAkkordBOben \lilyAkkordCOben \lilyAkkordDOben \lilyAkkordEOben \lilyAkkordFOben \cadenzaOff \bar "|." \break
      }
    }
    \new Staff {
      \absolute {
        \clef bass \cadenzaOn \lilyAkkordAUnten \lilyAkkordBUnten \lilyAkkordCUnten \lilyAkkordDUnten \lilyAkkordEUnten \lilyAkkordFUnten \cadenzaOff \bar "|." \break
      }
    }
  >>
  \layout {
    \context {
      \Staff \remove "Time_signature_engraver"
    }
    \context{
      \Score proportionalNotationDuration = #(ly:make-moment 1/50)
    }
  }
}

% Ausgabe der Intervallvektoren
% print (1 2 3 4 5 6) (1 2 3 4 5 6) ...
% Ausgabe Matrix
% print
% ( 1 2 3 4 5 6 )
% ( 8 6 8 5 4 4 )
% ( 0 5 7 8 6 1 )
\include "Postscript.ly"

\score {
  \header {
    piece = "vorgegebene Artikulationen und Dynamiken:"
  }
  <<
    \new Staff {
      \absolute {
        \cadenzaOn c''-!\pp^"A" c''-.\p^"B" c''-^\mp^"C" c''-_\mf^"D" c''->\f^"E" c''--\ff^"F" \bar "|." \break
      }
    }
  >>

  \layout {
    \context {
      \Staff \remove "Time_signature_engraver"
    }
    \context{
      \Score proportionalNotationDuration = #(ly:make-moment 1/50)
    }
  }
}

\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}
\markup \fill-line{\null}

\score {
  \header {
    piece =  "generierte Musik:"
  }
  \new PianoStaff
  <<
    \new Staff {
      \accidentalStyle Score.forget
      \time 4/4
      \musicTrebel
    }
    \new Staff {
      \clef bass
      \accidentalStyle Score.forget
      \musicBass
    }
  >>
  \layout {}
  \midi {}
}