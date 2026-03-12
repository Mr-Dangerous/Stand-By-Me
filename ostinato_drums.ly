\version "2.24.0"

\header {
  title = "Stand By Me — Drum Ostinato"
  subtitle = "Prince Royce (Key of C)"
  composer = "Arranged for Classroom Performance"
}

\paper {
  #(set-paper-size "letter" 'landscape)
}

#(set-global-staff-size 26)

\score {
  \new DrumStaff \with {
    instrumentName = "Bass Drum"
    \override StaffSymbol.line-count = #1
    drumStyleTable = #(alist->hash-table '(
      (bassdrum default #f 0 normal)
    ))
  } {
    \drummode {
      \tempo 4 = 120
      \time 4/4
      \repeat unfold 7 { bd4. bd8 r4 r4 | }
      bd4 bd4 bd4 bd4 |
    }
  }
  \layout { }
  \midi { }
}
