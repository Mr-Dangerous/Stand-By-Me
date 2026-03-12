\version "2.24.0"

\header {
  title = "Stand By Me — Full Ostinato Score"
  subtitle = "Prince Royce (Key of C)"
  composer = "Arranged for Classroom Performance"
}

\paper {
  #(set-paper-size "letter" 'landscape)
}

#(set-global-staff-size 20)

\include "predefined-ukulele-fretboards.ly"

% ===================== GUIRO STYLE =====================

#(define guiro-style '(
  (highhat cross #f 1 normal)
  (bassdrum default #f -1 normal)
))

% ===================== CUSTOM UKULELE CHORDS =====================

% C = 0003
\storePredefinedDiagram #default-fret-table
  \chordmode { c }
  #ukulele-tuning
  #"o;o;o;3;"

% Am = 2000
\storePredefinedDiagram #default-fret-table
  \chordmode { a:m }
  #ukulele-tuning
  #"2;o;o;o;"

% F = 2010
\storePredefinedDiagram #default-fret-table
  \chordmode { f }
  #ukulele-tuning
  #"2;o;1;o;"

% G = 0232
\storePredefinedDiagram #default-fret-table
  \chordmode { g }
  #ukulele-tuning
  #"o;2;3;2;"

% ===================== SHARED VARIABLES =====================

theChords = \chordmode {
  c1 c |
  a1:m a:m |
  f1 g |
  c1 c |
}

% ===================== SCORE =====================

\score {
  <<
    \new ChordNames { \theChords }

    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \set predefinedDiagramTable = #default-fret-table
      \theChords
    }

    \new StaffGroup <<

      % ---- UKULELE ----
      \new Staff \with {
        instrumentName = "Ukulele"
        \override StaffSymbol.line-count = #1
        \override NoteHead.staff-position = #0
      } {
        \time 4/4
        \tempo 4 = 120
        \clef percussion
        \stemUp

        c'8^\markup { \italic "Palm mute throughout" } r4 c'8 r4 r4 |
        \repeat unfold 7 {
          c'8 r4 c'8 r4 r4 |
        }
      }

      % ---- GUIRO ----
      \new DrumStaff \with {
        instrumentName = "Guiro"
        \override StaffSymbol.line-count = #2
        \override StaffSymbol.line-positions = #'(-2 2)
        drumStyleTable = #(alist->hash-table guiro-style)
      } {
        \drummode {
          \time 4/4
          \repeat unfold 8 {
            hh8 bd16 bd16 bd8 bd8 bd8 bd8 bd8 bd8 |
          }
        }
      }

      % ---- BASS ----
      \new Staff \with {
        instrumentName = "Bass"
      } {
        \clef bass
        \time 4/4

        % Measure 1 - C
        c8 r4 c4. g,8 b,8 |
        % Measure 2 - C
        c8 r4 c4. c8 b,8 |
        % Measure 3 - Am
        a,8 r4 a,4. g,4 |
        % Measure 4 - Am
        a,8 r4 a,4. a,8 g,8 |
        % Measure 5 - F
        f,8 r4 f,4. f,8 a,8 |
        % Measure 6 - G
        g,8 r4 g,4. b,4 |
        % Measure 7 - C
        c8 r4 c4. g,8 b,8 |
        % Measure 8 - C (same as m7)
        c8 r4 c4. g,8 b,8 |
      }

      % ---- CABASA ----
      \new DrumStaff \with {
        instrumentName = "Cabasa"
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table '(
          (bassdrum default #f 0 normal)
        ))
      } {
        \drummode {
          \time 4/4
          \repeat unfold 8 {
            bd8\accent bd8 bd8 bd8\accent bd8 bd8 bd8 bd8 |
          }
        }
      }

      % ---- BASS DRUM ----
      \new DrumStaff \with {
        instrumentName = "Bass Drum"
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table '(
          (bassdrum default #f 0 normal)
        ))
      } {
        \drummode {
          \time 4/4
          \repeat unfold 7 { bd4. bd8 r4 r4 | }
          bd4 bd4 bd4 bd4 |
        }
      }

    >>
  >>
  \layout {
    \context {
      \Score
      \override SystemStartBracket.collapse-height = #1
    }
  }
  \midi { }
}
