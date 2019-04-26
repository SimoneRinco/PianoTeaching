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

g_maj_right = \relative c {
  \global
  \clef treble
  \key g \major
}

g_maj_left = \relative c {
  \global
  \clef bass
  \key g \major
}

e_min_mel_right = \relative c {
  \global
  \clef treble
  \key e \minor
}

e_min_mel_left = \relative c {
  \global
  \clef bass
  \key e \minor
}

e_min_har_right = \relative c {
  \global
  \clef treble
  \key e \minor
}

e_min_har_left = \relative c {
  \global
  \clef bass
  \key e \minor
}

d_maj_right = \relative c {
  \global
  \clef treble
  \key d \major
}

d_maj_left = \relative c {
  \global
  \clef bass
  \key d \major
}

b_min_mel_right = \relative c {
  \global
  \clef treble
  \key b \minor
}

b_min_mel_left = \relative c {
  \global
  \clef bass
  \key b \minor
}

b_min_har_right = \relative c {
  \global
  \clef treble
  \key b \minor
}

b_min_har_left = \relative c {
  \global
  \clef bass
  \key b \minor
}

a_maj_right = \relative c {
  \global
  \clef treble
  \key a \major
}

a_maj_left = \relative c {
  \global
  \clef bass
  \key a \major
}

fis_min_mel_right = \relative c {
  \global
  \clef treble
  \key fis \minor
}

fis_min_mel_left = \relative c {
  \global
  \clef bass
  \key fis \minor
}

fis_min_har_right = \relative c {
  \global
  \clef treble
  \key fis \minor
}

fis_min_har_left = \relative c {
  \global
  \clef bass
  \key fis \minor
}

e_maj_right = \relative c {
  \global
  \clef treble
  \key e \major
}

e_maj_left = \relative c {
  \global
  \clef bass
  \key e \major
}

cis_min_mel_right = \relative c {
  \global
  \clef treble
  \key cis \minor
}

cis_min_mel_left = \relative c {
  \global
  \clef bass
  \key cis \minor
}

cis_min_har_right = \relative c {
  \global
  \clef treble
  \key cis \minor
}

cis_min_har_left = \relative c {
  \global
  \clef bass
  \key cis \minor
}

b_maj_right = \relative c {
  \global
  \clef treble
  \key b \major
}

b_maj_left = \relative c {
  \global
  \clef bass
  \key b \major
}

gis_min_mel_right = \relative c {
  \global
  \clef treble
  \key gis \minor
}

gis_min_mel_left = \relative c {
  \global
  \clef bass
  \key gis \minor
}

gis_min_har_right = \relative c {
  \global
  \clef treble
  \key gis \minor
}

gis_min_har_left = \relative c {
  \global
  \clef bass
  \key gis \minor
}

fis_maj_right = \relative c {
  \global
  \clef treble
  \key fis \major
}

fis_maj_left = \relative c {
  \global
  \clef bass
  \key fis \major
}

dis_min_mel_right = \relative c {
  \global
  \clef treble
  \key dis \minor
}

dis_min_mel_left = \relative c {
  \global
  \clef bass
  \key dis \minor
}

dis_min_har_right = \relative c {
  \global
  \clef treble
  \key dis \minor
}

dis_min_har_left = \relative c {
  \global
  \clef bass
  \key dis \minor
}

f_maj_right = \relative c {
  \global
  \clef treble
  \key f \major
}

f_maj_left = \relative c {
  \global
  \clef bass
  \key f \major
}

d_min_mel_right = \relative c {
  \global
  \clef treble
  \key d \minor
}

d_min_mel_left = \relative c {
  \global
  \clef bass
  \key d \minor
}

d_min_har_right = \relative c {
  \global
  \clef treble
  \key d \minor
}

d_min_har_left = \relative c {
  \global
  \clef bass
  \key d \minor
}

bes_maj_right = \relative c {
  \global
  \clef treble
  \key bes \major
}

bes_maj_left = \relative c {
  \global
  \clef bass
  \key bes \major
}

g_min_mel_right = \relative c {
  \global
  \clef treble
  \key g \minor
}

g_min_mel_left = \relative c {
  \global
  \clef bass
  \key g \minor
}

g_min_har_right = \relative c {
  \global
  \clef treble
  \key g \minor
}

g_min_har_left = \relative c {
  \global
  \clef bass
  \key g \minor
}

ees_maj_right = \relative c {
  \global
  \clef treble
  \key ees \major
}

ees_maj_left = \relative c {
  \global
  \clef bass
  \key ees \major
}

c_min_mel_right = \relative c {
  \global
  \clef treble
  \key c \minor
}

c_min_mel_left = \relative c {
  \global
  \clef bass
  \key c \minor
}

c_min_har_right = \relative c {
  \global
  \clef treble
  \key c \minor
}

c_min_har_left = \relative c {
  \global
  \clef bass
  \key c \minor
}

aes_maj_right = \relative c {
  \global
  \clef treble
  \key aes \major
}

aes_maj_left = \relative c {
  \global
  \clef bass
  \key aes \major
}

f_min_mel_right = \relative c {
  \global
  \clef treble
  \key f \minor
}

f_min_mel_left = \relative c {
  \global
  \clef bass
  \key f \minor
}

f_min_har_right = \relative c {
  \global
  \clef treble
  \key f \minor
}

f_min_har_left = \relative c {
  \global
  \clef bass
  \key f \minor
}

des_maj_right = \relative c {
  \global
  \clef treble
  \key des \major
}

des_maj_left = \relative c {
  \global
  \clef bass
  \key des \major
}

bes_min_mel_right = \relative c {
  \global
  \clef treble
  \key bes \minor
}

bes_min_mel_left = \relative c {
  \global
  \clef bass
  \key bes \minor
}

bes_min_har_right = \relative c {
  \global
  \clef treble
  \key bes \minor
}

bes_min_har_left = \relative c {
  \global
  \clef treble
  \key bes \minor
}

ges_maj_right = \relative c {
  \global
  \clef treble
  \key ges \major
}

ges_maj_left = \relative c {
  \global
  \clef bass
  \key ges \major
}

ees_min_mel_right = \relative c {
  \global
  \clef treble
  \key ees \minor
}

ees_min_mel_left = \relative c {
  \global
  \clef bass
  \key ees \minor
}

ees_min_har_right = \relative c {
  \global
  \clef treble
  \key ees \minor
}

ees_min_har_left = \relative c {
  \global
  \clef bass
  \key ees \minor
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
  )
   #{
    \score {
      <<
        \new PianoStaff \with {
          instrumentName = \markup \center-column {#major_name "major"}
        }
        {
        <<
          \new Staff = "right" {#maj_right_hand \final}
          \new Staff = "left" {#maj_left_hand \final}
        >>
        }
        
        \new PianoStaff \with {
          instrumentName = \markup \center-column {#minor_name "minor" "(melodic)"}
        }
        {
        <<
          \new Staff = "right" {#min_mel_right_hand \final }
          \new Staff = "left" {#min_mel_left_hand \final }
        >>
        }
        
        \new PianoStaff \with {
          instrumentName = \markup \center-column {#minor_name "minor" "(harmonic)"}
        }
        {
        <<
          \new Staff = "right" {#min_har_right_hand \final } 
          \new Staff = "left" {#min_har_left_hand \final }
        >>  
        }
      >>
    }
   #}
)


%\scales_func "C" "A" {\key c \major} c c \c_maj_right \c_maj_left \a_min_mel_right \a_min_mel_left \a_min_har_right \a_min_har_left
\scales_func "C" "A" \c_maj_right \c_maj_left \a_min_mel_right \a_min_mel_left \a_min_har_right \a_min_har_left

\scales_func "G" "E" \g_maj_right \g_maj_left \e_min_mel_right \e_min_mel_left \e_min_har_right \e_min_har_left
\scales_func "D" "B" \d_maj_right \d_maj_left \b_min_mel_right \b_min_mel_left \b_min_har_right \b_min_har_left
\scales_func "A" "Fis" \a_maj_right \a_maj_left \fis_min_mel_right \fis_min_mel_left \fis_min_har_right \fis_min_har_left
\scales_func "E" "Cis" \e_maj_right \e_maj_left \cis_min_mel_right \cis_min_mel_left \cis_min_har_right \cis_min_har_left
\scales_func "B" "Gis" \b_maj_right \b_maj_left \gis_min_mel_right \gis_min_mel_left \gis_min_har_right \gis_min_har_left
\scales_func "Fis" "Dis" \fis_maj_right \fis_maj_left \dis_min_mel_right \dis_min_mel_left \dis_min_har_right \dis_min_har_left

\scales_func "F" "D" \f_maj_right \f_maj_left \d_min_mel_right \d_min_mel_left \d_min_har_right \d_min_har_left
\scales_func "Bes" "G" \bes_maj_right \bes_maj_left \g_min_mel_right \g_min_mel_left \g_min_har_right \g_min_har_left
\scales_func "Ees" "C" \ees_maj_right \ees_maj_left \c_min_mel_right \c_min_mel_left \c_min_har_right \c_min_har_left
\scales_func "Aes" "F" \aes_maj_right \aes_maj_left \f_min_mel_right \f_min_mel_left \f_min_har_right \f_min_har_left
\scales_func "Des" "Bes" \des_maj_right \des_maj_left \bes_min_mel_right \bes_min_mel_left \bes_min_har_right \bes_min_har_left
\scales_func "Ges" "Ees" \ges_maj_right \ges_maj_left \ees_min_mel_right \ees_min_mel_left \ees_min_har_right \ees_min_har_left
