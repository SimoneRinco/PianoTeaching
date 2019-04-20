\version "2.18.2"

\paper {
  #(set-paper-size "a4")
  %page-breaking = #ly:page-turn-breaking
}

\layout {
  ragged-right = ##f
}

global = {
  \key c \major
  \numericTimeSignature
  \override Staff.InstrumentName.self-alignment-X = #CENTER
  \override Staff.InstrumentName.font-size = 6
}

solfege_I = \relative c' {
  \global
  \time 4/4
  \clef treble
  c4 d c e | c f c g' | c,2 e | g e | d f | g4 f e d | e2 d | c1 \bar "|."  
}

solfege_II = \relative c' {
  \global
  \time 4/4
  \clef bass
  c4 b c a | c g c f, | c'2 a | f a | b g | f4 g a b | a2 b | c1 \bar "|."  
}

solfege_III = \relative c' {
  \global
  \time 4/4
  \clef treble
  g'2 a | b c | d4 c b a | g1 | b2 d | c4 a c a | g2 e4 f | g1 \bar "|."  
}

solfege_IV = \relative c' {
  \global
  \time 4/4
  \clef bass
  f,2 e | d c | b4 c d e | f1 | d2 b | c4 e c e | f2 d4 b | c1 \bar "|."  
}

solfege_V = \relative c' {
  \global
  \time 4/4
  \clef treble
  c4 r e r | g2 r2 | f4 d b r | c2 r | r4 e r g | c1 | e2 d | c2 r4 b | c1 |
  d4 c b a | r1 | c4 b a g | r2 f | e4 d c b | r2 g'2 | d4 f g b | c2 r2 |
  \bar "|."  
}

solfege_VI = \relative c' {
  \global
  \time 4/4
  \clef bass
  r4 c, r e | f2 g | a4 b c d | c2 r | b4 g f r | g f d r | g,2 b | c1 |
  r4 d e r | r f2 r4 | g b d b | c2 r4 b | g d b g | c2 r | e2 g | c1 |
  \bar "|."  
}

solfege_VII = \relative c' {
  \global
  \time 3/4
  \clef treble
  e'2 d4 | c2 g4 | b2. | r4 d2 | f4 d b | g2 r4 | g' g, g' | r b, r |
  g2. | r2 d4 | b c d | c2 g4 | a2 r4 | b d g | b2 d4 | c2. |
  \bar "|."  
}

solfege_VIII = \relative c' {
  \global
  \time 3/4
  \clef bass
  a,2 c4 | e2 c4 | d e f | e2. | a2 a4 | b e d | c2 b4 | a2 r4 |
  e4 d r | c2 b4 | a4 r e | g b g | e2 r4 | g2 r4 | r2. | a2. |
  \bar "|."  
}

solfege_IX = \relative c' {
  \global
  \time 4/4
  \clef treble
  e2. g4 | b2 r4 a4~ | a4 f2 d4~ | d2 e | b4 b' r4 b,~ | b4 r d2 | e2. e4 | b1 |
  b2 a | g2 f | a1 | r2. b4~ | b2 e2 | b' a4 d | e2 g4 e | e,1 |
  \bar "|."  
}

solfege_X = \relative c' {
  \global
  \time 4/4
  \clef bass
  b2 r4 a4~ | a4 r f2 | e2. f4 | a2 c | d4 c b a | b2 r2 | a4 f2 d4~ | d4 r e2 |
  f2 f,4 f | b2 r4 a | f d d r4 | c'2. a4~ | a f2 a4 | b2. b4~ | b2 a | b2. r4 |
  \bar "|."
}

solfege_XI = \relative c' {
  \global
  \time 3/4
  \clef treble
  d'2 c4~ | c r2 | a4 e' a | c2 b4~ | b r4 e, | b e b,~ | b r4 a~ | a r2 |
  f4 g f | a2.~ | a2 c4 | d a' f | d'2. | f4 a e | a2 c4 | d2. |
  \bar "|."
}

solfege_XII = \relative c' {
  \global
  \time 3/4
  \clef bass
  a2 a,4~ | a r2 | c'4 c, r4 | a2 g4~ | g e2 | d4 e g | a2.~ | a4 r e |
  a b c | e2 g4~ | g r e | d e b'~ | b r2 | e4 e, g, | a c2 | b2 a4~ |
  \bar "|."
}

solfege_XIII = \relative c' {
  \global
  \time 2/4
  \clef treble
  c4 d8 e | g f e d | c4 r | g4 g8 b | g2 | g8 b d f | g4 b | c2 |
  e4 d | c g8 e | c4 r | d4 g,8 g' | e2 | f8 e d c | g4 g | c2 |
  \bar "|."
}

solfege_XIV = \relative c' {
  \global
  \time 2/4
  \clef bass
  c4 e8 d | g f e d | c4 g | a f8 c | a2 | r4 b | d g,8 g | c2 |
  b4 a8 g | d g b, g' | e4 d~ | d r | b g'8 b | d2~ | d4 c | r4 c8 c |
  \bar "|."
}

solfege_XV = \relative c' {
  \global
  \time 4/4
  \clef treble
  a'2 e'8 c a4 | e2 e8 g b g | a2 r8 c r e | e4 d e8 d c b |
  a2 r4 e4~ | e4 b8 e r b r e | b e b' g b4 a | g2 g8 e a4 |
  r2 a4 e'8 e | a4 a8 g a4 a8 e' | e8 d c b a4 g4~ | g e2 e,8 g |
  a c e a e a c e | r8 d r c r c r b | a4 e2 g4~ | g4 r a2 |
  \bar "|."
}

solfege_XVI = \relative c' {
  \global
  \time 4/4
  \clef bass
  f,4 c8 c e4 f~ | f g2 r8 c, | d4 d b c8 c, | f2. r4 |
  e8 d c e g4 c,8 c  | d2 r8 e r g | r c c r r c' c r | d4 d8 c b4 a8 b |
  c4 c8 b a4 g8 a | b8 a r4 r8 g r c, | d2 r4 e4~ | e4 c8 e c8 e f4 |
  a8 c f2 f8 e | d8 c b a g c, c4 | c,2 r8 g' r e | f1 |  
  \bar "|."
}

solfege_XVII = \relative c' {
  \global
  \time 2/4
  \clef treble
  e'4 d | e8 d4 b8 | e4 g~ | g8 f4 b,8 |g4 b8 b~ | b g4 e8~ | e r r b~ | b e~ e4 |
  r4 d | f4~ f8 b | d4 f8 d | e b g e | b4~ b8 d | b4 r | b8 c d b | e2 |
  r8 g4 f8~ | f4 d | r2 | b4~ b8 a' | g4 r | a8 f d b | d4 r8 d' | e4 e, |
  f8 e r f | g f r f | a g r a | b a g f | b4 a4~ | a8 g4 f8~ | f4 d | e2 |
  \bar "|."
}

solfege_XVIII = \relative c' {
  \global
  \time 2/4
  \clef bass
  g4 f | r8 g d4 | a'4 f | r8 a d,4 | e8 b4 g8~ | g4 r | g'4 b~ | b4 c8 c~ |
  c4 b | a4 a8 b | a4 f | r g~ | g8 r a r | r4 d, | c8 a a f | d4~ d8 f |
  g2 | r2 | f4 r8 d~ | d r r c~ | c r r4 | b4 a | r4 c~ | c4 d8 r |
  g4 g8 a | b c d e | f4 d8 f~ | f d8~ d4 | a'8 d,8~ d4 | r4 d | d'4 d,8 d, | g4~ g8 r |
  \bar "|."
}

solfege_XIX = \relative c' {
  \global
  \time 4/4
  \clef treble
  b''4. c8 d4 b | a4. b8 c4 a | g8 f4 d r8 d4~ | d r4 f4. a8~ |
  a4. d,8 f2 | g8 b d b d4. d8 | c8 a f d e4. c8~ | c4 d4 r8 c d4 |
  c8 a4. a8 f4. | d4 a8 d e f d d' | e4 r r8 f4.~ | f4 g r g~ |
  g8 d d4 r8 e d4 | a8 d, a' a, r4. f8 | g2 r4 g'~ | g d'2 r8 f |
  g4 d8 g~ g a4 b8~ | b4 c r2 | d d,4. f8 | f4 g2. |
  \bar "|."
}

solfege_XX = \relative c' {
  \global
  \time 4/4
  \clef bass
  e4. d8 c4. b8 | a4. g8 f4 e | r8 e, a b c4. d8~ | d4. f8 e2 |
  r8 d r d e4. g8~ | g a c e c4 e, | f8 g4 b8~ b a~ a4 | r2. a,4 |
  e8 d f e r4 g~ | g4. e'8 d4 d8 e~ | e4. g8 e4 g | a1 |
  r2 a,~ | a4 r e4. g8~ | g4 e' d8 c b a~ | a4 b8 c d e8~ e4 |
  \bar "|."
}

solfege_XXI = \relative c' {
  \global
  \time 6/8
  \clef treble
  c4. e4. | d8 e f e f g | c4. g4. | e'2. |
  e8 f g g a c, | b4. a4 b8 | c4 d8 e4. | r4. g4. |
  g,8 a r a b r | d4.~ d8 c g | e'2. | r4. c8 c r |
  r8 g g r e e | d4. d8 b g~ | g4 b8 c4 e8 | g2. |
  g'4 g8 e8 e4 | r2. | a4. e4. | c4. c8 b a |
  g e e a e e | b' e e c'4 r8 | d4. b4. | c2. |
  \bar "|."
}

solfege_XXII = \relative c' {
  \global
  \time 6/8
  \clef bass
  e,4. e4 f8 | g4. f4. | b4. b8 d f~ | f4 e8~ e4. |
  e8 b g e e' e, | f4. b,4.~ | b8 b d e4 r8 | b'4.~ b8 e r |
  g2. | f4. b,4. | b8 a g f e d | e4 d8 c4 b8 |
  a4. r4. | f4. b4.~ | b4 d8~ d e f | g4. r4 e8~ |
  e f g~ g a b~ | b4. b,4 r8 | r2. | e4. g'4. |
  a8 g f b,4. | d8 b f b f d~ | d4 b8~ b4. | e4.~ e4 r8 |
  \bar "|."
}

solfege_XXIII = \relative c' {
  \global
  \time 3/8
  \clef treble
  f'4. | c4 d8 | f8 a c | d4 b8 | c4. | b8 a g~ | g4 f8~ | f4 r8 |
  c4 a8 | d4 a8 | f'4 a,8 | b4. | r4 d8 | e4. | f4.~ | f8 r4 |
  c8 a f~ | f g c,~ | c4 d8 | e4 f8 | g c, a' | b4.~ | b8 r4 | c4. |
  c8 g e | c' g e | g e c | g4. | b8 a g | b4. | b8 a g~ | g f4 |
  \bar "|."
}

solfege_XXIV = \relative c' {
  \global
  \time 3/8
  \clef bass
  \partial 8 e,8 | a4. | a8 b c | d4.~ | d4 f8 | e4.~ | e8 d c | r c b | a4. |
  b8 g e | g e b~ | b d f | a4 b8 | g4 r8 | e4. | b4 d8 | e4 r8 |
  f4.~ | f8 e d~ | d4. | r4. | e4 r8 | g8 g b | a4. | r4 a8 |
  b8 a g | a g f | g f e | f e e, | a4. | b4 d8~ | d4 e8 | a,4. |
  \bar "|."
}

solfege_XXV = \relative c' {
  \global
  \time 9/8
  \clef treble
  \partial 8 f'8 | b4. c4 d8 b4 a8 | g2. r4 e8 | f4 g a  b4. | r4. d,4. d8 e d |
  c8 b r e d r g f r | g4.~ g4 a8 r4. | r8 b4 r8 f'4 r8 e8 d | d c b b a g g f d~ |
  d c b~ b4 c8~ c4. | c8 a f r4. a8 f c~ | c4. a4. f8 g a | b2. r4. |
  c8 c4~ c8 e f~ f4. | d8 d4~ d8 f b~ b4. | c8 a f a f c f c' e | d4 c8 b2. |
  \bar "|."
}

solfege_XXVI = \relative c' {
  \global
  \time 9/8
  \clef bass
  d4. f,8 a d~ d4. | c4. e,8 a c~ c4. | b4. d,8 e f f g a~ | a b4~ b8 a c d4. |
  d,4 r8 f4 r8 a,4 r8 | a8 f d~ d c d~ d a c | d4 e8 f4 a8 r4. | f4 a8 d4 f8 a4. |
  b8 f d d f b, d4 r8 | r c b~ b4 a8 r4. | r8 f' e~ e4 d8 r4. | r8 d' c~ c4 b8 r4. |
  a8 b f f g d d e b~ | b4. a4 c8 c'4 r8 | f8 e d d c b b f g | c4.~ c4 b8~ b4. |
  \bar "|."
}

solfege_XXVII = \relative c' {
  \global
  \time 4/4
  \clef treble
  c4 c8 d c16 d e f g4 | a4 a8 b c16 b a b c4 | d16 c b a c b a g b a g f e4 | f4. g 8 a4. b8 |
  c2 c8 b a g | c,4 e8 g c,16 e g e  c8 d16 e | g4. f8~ f8 d16 e f4 | d2.~ d8 e |
  f8 a c16 b a g a8 f f4 | e4 g c16 b a b c4 | c,8 d4 e8 c4. d16 e | f8 f16 g a8 a16 b c4 e |
  r8 g r e r c b4 | r8 d16 d r8 b16 b g8 g16 g16 d8 b | g16 a b c b c d e d e f a~ a8 g | c4. c16 c c,4 r |
  \bar "|."
}

solfege_XXVIII = \relative c' {
  \global
  \time 4/4
  \clef bass
  e,4 b8 e4 d8 b16 c d b | c4. e8 g4. g16 b | c4. e8 f16 e d c d c b a | g4. e16 g a4 r |
  b8 b,4 b'16 b a8 a,4 a'16 a | g8 e4 f4 f16 g a4 | a16 g f r g f e r f e d r e d c r |c4. b8~  b4 b8 b16 d |
  e4. f16 g e4 r4 | r16 e f g r f g a r b d f d8 f | f4. d8~ d16 c b a b8 d | e4 g8 e e16 d c b a4 |
  r4. f8 r4. g16 g | a8 a16 b c d e8 r2 | d8 b16 d f4 f8 b,16 a g4 | f4. b,16 b e2 |
  \bar "|."
}

solfege_XXIX = \relative c' {
  \global
  \time 3/4
  \clef treble
  g'4. b8 d16 c b a | g4. a16 b g8 e16 f | e4 d r8 d | g8 g16 b d8 d16 f a8. g16 |
  g2 r4 | f8 d16 d e8. d16 e8. c16 | b4. a8~ a g16 f | e4. d8 c8 c16 d |
  e2 r8. d16 | g4. g16 b c8. d16 | c8. b16 a2 | d8 d16 e f g a8 r4 |
  e8 e16 f g a b8 r4 | a8 f a,4. g16 f | a4 g4. f8 | g8. g16 g4 r |
  \bar "|."
}

solfege_XXX = \relative c' {
  \global
  \time 3/4
  \clef bass
  f,4 f16 g a b c8 c | r2. | g4 g16 a b c d8 d8 | r2 r8 e |
  g8. f16 f8. e16 f8 r | c8 c8 r c16 c a4~ | a8 b4 a16 g f4 | r8 e r e16 e f8 r |
  g16 f e d c8. c16 c4 | f16 e d c b8. b16 b4 | a16 b a b c b c b a g f e | g8. f16 f4 r |
  e16 f g e c8 e4 g8~ | g8 a4 b8 r8 c16 c | f8 c16 c e8 c16 c g'4 | f2 r4 |
  \bar "|."
}

solfege_XXXI = \relative c' {
  \global
  \time 12/8
  \clef treble
  \bar "|."
}

solfege_XXXII = \relative c' {
  \global
  \time 12/8
  \clef bass
  \bar "|."
}


\bookpart {

\score {
  \new Staff \with {
    instrumentName = "1"
  } \solfege_I
}

\score {
  \new Staff \with {
    instrumentName = "2"
  } \solfege_II
}

\score {
  \new Staff \with {
    instrumentName = "3"
  } \solfege_III
}

\score {
  \new Staff \with {
    instrumentName = "4"
  } \solfege_IV
}

\score {
  \new Staff \with {
    instrumentName = "5"
  } \solfege_V
}

\score {
  \new Staff \with {
    instrumentName = "6"
  } \solfege_VI
}

\score {
  \new Staff \with {
    instrumentName = "7"
  } \solfege_VII
}

\score {
  \new Staff \with {
    instrumentName = "8"
  } \solfege_VIII
}

\score {
  \new Staff \with {
    instrumentName = "9"
  } \solfege_IX
}

\score {
  \new Staff \with {
    instrumentName = "10"
  } \solfege_X
}

\score {
  \new Staff \with {
    instrumentName = "11"
  } \solfege_XI
}

\score {
  \new Staff \with {
    instrumentName = "12"
  } \solfege_XII
}

\score {
  \new Staff \with {
    instrumentName = "13"
  } \solfege_XIII
}

\score {
  \new Staff \with {
    instrumentName = "14"
  } \solfege_XIV
}

\score {
  \new Staff \with {
    instrumentName = "15"
  } \solfege_XV
}

\score {
  \new Staff \with {
    instrumentName = "16"
  } \solfege_XVI
}

\score {
  \new Staff \with {
    instrumentName = "17"
  } \solfege_XVII
}

\score {
  \new Staff \with {
    instrumentName = "18"
  } \solfege_XVIII
}

\score {
  \new Staff \with {
    instrumentName = "19"
  } \solfege_XIX
}

\score {
  \new Staff \with {
    instrumentName = "20"
  } \solfege_XX
}

\score {
  \new Staff \with {
    instrumentName = "21"
  } \solfege_XXI
}

\score {
  \new Staff \with {
    instrumentName = "22"
  } \solfege_XXII
}

\score {
  \new Staff \with {
    instrumentName = "23"
  } \solfege_XXIII
}

\score {
  \new Staff \with {
    instrumentName = "24"
  } \solfege_XXIV
}

\score {
  \new Staff \with {
    instrumentName = "25"
  } \solfege_XXV
}

\score {
  \new Staff \with {
    instrumentName = "26"
  } \solfege_XXVI
}

\score {
  \new Staff \with {
    instrumentName = "27"
  } \solfege_XXVII
}

\score {
  \new Staff \with {
    instrumentName = "28"
  } \solfege_XXVIII
}

\score {
  \new Staff \with {
    instrumentName = "29"
  } \solfege_XXIX
}

\score {
  \new Staff \with {
    instrumentName = "30"
  } \solfege_XXX
}

\score {
  \new Staff \with {
    instrumentName = "31"
  } \solfege_XXXI
}

\score {
  \new Staff \with {
    instrumentName = "32"
  } \solfege_XXXII
}


}
