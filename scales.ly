\version "2.18.2"

\paper {
  #(set-paper-size "a4")
  left-margin = 1\cm
}

\layout {
  ragged-right = ##f
}


global = {
  \time 7/4
  \omit Score.Stem
  \omit Score.TimeSignature
  \omit Score.BarNumber
  \omit Score.BarLine
  \omit Score.SpanBar
}

c_maj_right = \relative c' {
  \global
  c-1 d-2 e-3 f-1 g-2 a-3 b-4
  c-1 d-2 e-3 f-1 g-2 a-3 b-4
  
  c-5 b-4 a-3 g-2 f-1 e-3 d-2
  c-1 b-4 a-3 g-2 f-1 e-3 d-2
  c-1
}

c_maj_left = \relative c {
  \global
  \clef bass
  c-5 d-4 e-3 f-2 g-1 a-3 b-2
  \clef treble
  c-1 d-4 e-3 f-2 g-1 a-3 b-2

  c-1 b-2 a-3 g-1 f-2 e-3 d-4
  \clef bass
  c-1 b-2 a-3 g-1 f-2 e-3 d-4
  c-5
}

a_min_mel_right = \relative c' {
  a-1 b-2 c-3 d-1 e-2 fis-3 gis-4
  a-1 b-2 c-3 d-1 e-2 fis-3 gis-4
  
  a-5 g!-4 f!-3 e-2 d-1 c-3 b-2
  a-1 g!-4 f!-3 e-2 d-1 c-3 b-2
  a-1
}

a_min_mel_left = \relative c {
  \clef bass
  a-5 b-4 c-3 d-2 e-1 fis-3 gis-2
  \clef treble
  a-1 b-4 c-3 d-2 e-1 fis-3 gis-2
  
  a-1 g!-2 f!-3 e-1 d-2 c-3 b-4
  \clef bass
  a-1 g!-2 f!-3 e-1 d-2 c-3 b-4
  a-5
}

a_min_har_right = \relative c' {
  a-1 b-2 c-3 d-1 e-2 f-3 gis-4
  a-1 b-2 c-3 d-1 e-2 f-3 gis-4
  
  a-5 gis-4 f-3 e-2 d-1 c-3 b-2
  a-1 gis-4 f-3 e-2 d-1 c-3 b-2
  a-1
}

a_min_har_left = \relative c {
  \clef bass
  a-5 b-4 c-3 d-2 e-1 f-3 gis-2
  \clef treble
  a-1 b-4 c-3 d-2 e-1 f-3 gis-2
  
  a-1 gis-2 f-3 e-1 d-2 c-3 b-4
  \clef bass
  a-1 gis-2 f-3 e-1 d-2 c-3 b-4
  a-5
}

final = {
  \undo \omit Score.BarLine
  \undo \omit Score.SpanBar
  \bar "||"
}


scales_func =
#(define-scheme-function
  (
    parser
    location
    major_name
    minor_name
    key_
    maj_right_hand
    maj_left_hand
    min_mel_right_hand
    min_mel_left_hand
    min_har_right_hand
    min_har_left_hand
  )
  (
    string?
    string?
    ly:music?
    ly:music?
    ly:music?
    ly:music?
    ly:music?
    ly:music?
    ly:music?
  )
   #{
    \score {
      <<
        \new PianoStaff \with {
          instrumentName = \markup \center-column {#major_name "major"}
        }
        {
        <<
          \new Staff = "right" {#key_ #maj_right_hand \final}
          \new Staff = "left" {#key_ #maj_left_hand \final}
        >>
        }
        
        \new PianoStaff \with {
          instrumentName = \markup \center-column {#minor_name "minor" "(melodic)"}
        }
        {
        <<
          \new Staff = "right" { #min_mel_right_hand \final }
          \new Staff = "left" { #min_mel_left_hand \final }
        >>
        }
        
        \new PianoStaff \with {
          instrumentName = \markup \center-column {#minor_name "minor" "(harmonic)"}
        }
        {
        <<
          \new Staff = "right" { #min_har_right_hand \final } 
          \new Staff = "left" { #min_har_left_hand \final }
        >>  
        }
      >>
    }
   #}
)


\scales_func "C" "A" {\key c \major} \c_maj_right \c_maj_left \a_min_mel_right \a_min_mel_left \a_min_har_right \a_min_har_left


