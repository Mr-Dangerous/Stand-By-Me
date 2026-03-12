\version "2.24.0"

\header {
  title = "Stand By Me — Bass Ostinato"
  subtitle = "Prince Royce (Key of C)"
  composer = "Arranged for Classroom Performance"
}

\paper {
  #(set-paper-size "letter" 'landscape)
}

#(set-global-staff-size 26)

\score {
  <<
    \new ChordNames {
      \chordmode {
        c1 c |
        a1:m a:m |
        f1 g |
        c1 c |
      }
    }
    \new Staff \with {
      instrumentName = "Bass"
    } {
      \clef bass
      \time 4/4
      \tempo 4 = 120

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
      % Measure 7 - C (same as m1)
      c8 r4 c4. g,8 b,8 |
      % Measure 8 - C (same as m7)
      c8 r4 c4. g,8 b,8 |
    }
  >>
  \layout { }
  \midi { }
}
