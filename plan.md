# Stand By Me — Teaching Resource Plan
### Prince Royce (Spanglish Version)

---

## Overview

Creating a complete set of classroom resources for teaching "Stand By Me" by Prince Royce. This is the bachata-style Spanglish version that mixes English and Spanish lyrics. The arrangement is customized for classroom performance.

## Key: C | Chords: C Am F G

## Chord Progression (8 measures)

| Measure | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| Chord | C | C | Am | Am | F | G | C | C |

## Stand By Me Rhythm

`eighth — quarter rest — eighth — quarter rest — quarter rest`

This rhythm is the foundational pattern used across multiple parts (ukulele strum, body percussion accents, etc.)

---

## Tasks

### 1. Lyric Sheets — COMPLETE
- **File:** `Stand_By_Me_Lyric_Sheet.md`
- Clean lyrics (no interludes) with sections: Verse 1, Chorus, Verse 2, Verse 3, Chorus, Break (64 beat instrumental interlude), Chorus Final, Chorus Outro
- Spanish vocabulary key included
- Rendered via `viewer.html` as a single-page, two-column layout with vocab spanning the bottom

### 2. Chord Sheets — COMPLETE
- **Files:** `Stand_By_Me_Chords.md` (Key of A), `Stand_By_Me_Chords_C.md` (Key of C)
- Chord symbols positioned over lyrics using monospace font for alignment
- Rendered via `viewer.html` with ukulele chord diagrams (colored dots) on top and guitar chord diagrams (black) below
- Chord sheets can span multiple pages

### 3. HTML Viewer — COMPLETE
- **File:** `viewer.html`
- Three views: Lyric Sheet, Chords (Key of A), Chords (Key of C)
- Dynamically parses the `.md` files — edit markdown, hit "Reload Files" to update
- Print / Save PDF button for single-page printouts
- Styled in black & white with friendly fonts (Patrick Hand, Coming Soon)
- Ukulele dot colors: F/Am = red, C = blue, G = gold; Guitar = all black
- Requires local server: `python3 -m http.server 8000`

### 4. Ostinato Patterns — IN PROGRESS
- **Spec file:** `ostinato_specifications.md`
- 8 measures (32 beats) each, rendered as PDFs via LilyPond
- **Instruments:**
  1. **Drums** — COMPLETE (`ostinato_drums.ly`): Single-line staff, bass drum. Measures 1–7: dotted quarter + eighth note + two quarter rests. Measure 8: four quarter notes.
  2. **Guiro** — COMPLETE (`ostinato_guiro.ly`): Two-line staff. Top line = tap (x notehead), bottom line = scrape (regular notehead). Pattern: eighth note tap, two sixteenth scrapes, six eighth scrapes.
  3. **Ukuleles** — COMPLETE (`ostinato_ukulele.ly`): Single-line staff with chord symbols and ukulele fret diagrams. Strum pattern follows the Stand By Me rhythm. Palm mute on rests.
  4. **Bass** — COMPLETE (`ostinato_bass.ly`): Bass clef with chord symbols. Walking bass line within F2–C3 range.
  5. **Cabasa** — TBD: Constant eighth notes with accents on the Stand By Me rhythm beats.
  6. **Guitar** — TBD
  7. **Body Percussion** — TBD

### 5. Slides — PENDING
- Presentation slides for teaching the song
- Content TBD (lyrics, vocabulary, cultural context, musical elements)

### 6. Recording — PENDING
- Identify and organize the Prince Royce recording for classroom use
- Playback notes and cue points for teaching

---

## File Structure

```
Stand By Me/
├── plan.md                        ← this file
├── viewer.html                    ← HTML viewer/printer for sheets
├── Stand_By_Me_Lyric_Sheet.md     ← lyrics + vocab
├── Stand_By_Me_Chords.md          ← chords in Key of A
├── Stand_By_Me_Chords_C.md        ← chords in Key of C
├── ostinato_specifications.md     ← instrument/pattern specs
├── ostinato_drums.ly              ← LilyPond drum part
├── ostinato_drums.pdf             ← compiled drum part
├── ostinato_guiro.ly              ← LilyPond guiro part
└── ostinato_guiro.pdf             ← compiled guiro part
```
