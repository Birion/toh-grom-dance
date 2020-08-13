\version "2.21.4"
\language "deutsch"

\header {
  title = "Luz and Amity's Dance"
  subtitle = "The Owl House S1E16"
  composer = "Show created by Dana Terrace"
  arranger = "Arranged by u/Pyromo12"
  tagline = ##f
}

\paper {
  #(set-paper-size "a5landscape")
}


global = {
  \key e \major
  \time 4/4
  \set Staff.midiMinimumVolume = #0.7
}

right = \relative c' {
  \global
  \tempo 4=120
  r8 e2~ e4.~
  e4.~ e8 e4 r
  \repeat volta 2 { 
    cis'4-. gis-. gis16 fis e h' ais4-.
    fis16 gis8-. gis16 fis fis gis8 his fis16 fis his8 his
    cis8 gis4-. gis8 gis16 fis e h' ais4
    his,16 h ais8-. ais8 ais16 ais his'8 fis16 fis his8 his
  }
  \break
  r2 cis,8 cis eis eis
  cis'16 cis a8 gis cis, cis'16 cis a8 gis cis,~
  cis4~ cis4. dis4.
  e1~
  e4 dis'2.~
  dis2 e4 r
  \bar "|."
}


\score {
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \layout {
    indent = #0
  }
}

\score {
  \unfoldRepeats { \right }
  \midi {
    \tempo 4=120
  }
}