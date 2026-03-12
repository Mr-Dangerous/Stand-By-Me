\version "2.24.0"

\header {
  title = "Stand By Me — Guiro Ostinato"
  subtitle = "Prince Royce (Key of C)"
  composer = "Arranged for Classroom Performance"
}

\paper {
  #(set-paper-size "letter" 'landscape)
}

#(set-global-staff-size 26)

#(define guiro-style '(
  (highhat cross #f 1 normal)
  (bassdrum default #f -1 normal)
))

tap = \drummode { hh }
scrape = \drummode { bd }

\score {
  \new DrumStaff \with {
    instrumentName = "Guiro"
    \override StaffSymbol.line-count = #2
    \override StaffSymbol.line-positions = #'(-2 2)
    drumStyleTable = #(alist->hash-table guiro-style)
  } {
    \drummode {
      \tempo 4 = 120
      \time 4/4
      \repeat unfold 8 {
        hh8 bd16 bd16 bd8 bd8 bd8 bd8 bd8 bd8 |
      }
    }
  }
  \layout { }
  \midi { }
}
