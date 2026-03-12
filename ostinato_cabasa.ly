\version "2.24.0"

\header {
  title = "Stand By Me — Cabasa Ostinato"
  subtitle = "Prince Royce (Key of C)"
  composer = "Arranged for Classroom Performance"
}

\paper {
  #(set-paper-size "letter" 'landscape)
}

#(set-global-staff-size 26)

\score {
  \new DrumStaff \with {
    instrumentName = "Cabasa"
    \override StaffSymbol.line-count = #1
    drumStyleTable = #(alist->hash-table '(
      (bassdrum default #f 0 normal)
    ))
  } {
    \drummode {
      \tempo 4 = 120
      \time 4/4
      \repeat unfold 8 {
        bd8\accent bd8 bd8 bd8\accent bd8 bd8 bd8 bd8 |
      }
    }
  }
  \layout { }
  \midi { }
}
