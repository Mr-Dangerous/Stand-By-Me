\version "2.24.0"

\header {
  title = "Stand By Me — Ukulele Ostinato"
  subtitle = "Prince Royce (Key of C)"
  composer = "Arranged for Classroom Performance"
}

\paper {
  #(set-paper-size "letter" 'landscape)
}

#(set-global-staff-size 26)

\include "predefined-ukulele-fretboards.ly"

% Custom ukulele chord diagrams (strings: G C E A)
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

theChords = \chordmode {
  c1 c |
  a1:m a:m |
  f1 g |
  c1 c |
}

\score {
  <<
    \new ChordNames { \theChords }
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \set predefinedDiagramTable = #default-fret-table
      \theChords
    }
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
  >>
  \layout { }
  \midi { }
}
