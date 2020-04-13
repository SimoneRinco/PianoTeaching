\version "2.18.2"

\header {
  title = "Fly me to the moon"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Adagio, molto expressivo"
}

right = \relative c'' {
  \global
  c4. b8 a8 g4 f8~ | f4. g8 a4. c8 | b4. a8 g f4 e8~ | e1 |
  <c f a>4. g'8 f e4 d8~ | d4. e8 f4 a | gis4. f8 e d4 c8~ | c2 a4. cis8 |
  d8[ a'~] a a4.~ a4~ | <c, a'>4. c'8~ c4 b | <d, e g>1 | << {d4. cis8~ cis2} \\ {g1} >> |
  << {r8 f'4 f8~ f2~ f4.} \\ {c!2~ c4. c8~ c4.} >> <c f a>8~ <c f a>4. <d e g>8 | <c d f>4. <b c e>8~ <b c e>4. << {<a e'>8} \\ {\once \hide Stem a8~} \\ {\once \tweak Stem.length #14 \once \hideNotes e'8~} >> | << {s1} \\ {a,2 s} \\ {e'8 d4 e8~ e4. e8} >> |
  <c e c'>4.\arpeggio b'8 a8 g4 f8~ | f4. g8 a4. c8 | <d, f b>4. <d e a>8 <d e g> <c d f>4 <d e>8~ | <d e>4 << {s4 r8 e4.} \\ {b8 bes~ bes4 bes8 a} >> |
  r8 <c a'>4 g'8 f8 << {e4 d8~ d4. e8 f4. a8} \\ {a,4.~ a1} >> | gis'4. f8 e8 d4 c8~ | c2~ <a bes c e>4. cis8 |
  d8 a'4 a8~ a4. <c, d>8~ | <c d>4. <f a c>8~ <f~ a c> <f b>~ <f b>4 | << {g1~ g2.. gis8} \\ {s1 r4. e8~ e2} >> |
  a8 c,4 c8~ c2 | <f, a c>2 << {<a c>4. d8} \\ {f,2~ <f g c>4. g8~ g d' e f~ f e d c b4 gis4 } >> |
  <c e c'>4.\arpeggio-> b'8 a g4 <a, c d f>8~ | <a c d f> <c d g>4 <c d f a>4 <c d f a c>4. | <d e g b>4. <c d f a>8 <b c e g> <a b d f>4 <g b c e>8~ | <g b c e>4. <f g bes d>4. <e c'>4 | 
  <c' e f a>4.\arpeggio g'8 f e4 d8~ | d4. e8 <b d f>4 <b d f a> | <gis b gis'>4. <b f'>8 << {e8 d4 <a c>8~ <a c>2 <g bes cis e>4. cis8} \\ {gis4. s1} >> |
  << {d'8 a'4 a8~ a2~ <a, c a'>4.} \\ {d1 s4.} >> <c d f a c>8~ <c d f a c> <d e g b>4. | <b d e g>1 | r8 d4 cis8~ cis2 |
  <a c f>4. <a c f>8~-> <a c f>2 | <a c f>4. <c d f a>8~ <c d f a>8 <b c e g>4. | <c d f>4. <d e>8~ <d e>4. <a d>8~ | <a d>2.. c8 |
  <<{<c e c'>4.\arpeggio} \\ {r8 e[ c]} >> b'8 a g4 <c, d f>8~ | <c d f>8 <c d g>4 <c d f a>4 <c d f a c>8~ <c d f a c>4 | <d e g b>4. <d e f a>8 <c d g> <d f>4 <b e>8~ | <b e>8 g e' <bes d>~ <bes~ d>4 <bes c> |
  <c e f a>4.\arpeggio g'8 <c, e f>8 <c e>4 <f, a d>8~ | <f a d>8 e'4 <a, b d f>8~ <a b d f>4 <a b d f a> | <b gis'>4. f'8 e d4 <e, c'>8~ | <e c'> a4 <g bes cis e>8~ <g bes cis e>4 g8 cis |
  << {r8 a'4 a8~ a2~ a4.} \\ {<c,! d>2~ <c d>8 <c d>4.~ <c d>} >> <f a c>8~ <f a c> <d f g b>4. | <d e g bes e>2~ <d e g bes e>8 d bes' e | <e, g a e'>2~ <e g a e'>8 e4 e'8 |
  <e, a c e>8\arpeggio c' c4~ c8 e, f a~ | <b, d a'>4 c8 d~ d b f' g' | << {g8 ees ees4~ ees2} \\ {<aes, c ees>1} >> | <<{ees8 g4 g8~ g2} \\ {<aes, c ees>2 s2 } \\ {s2 r4. e''!8} >> |
  << {e8 c~ c2.} \\ {<f, a c>1\arpeggio} >> | <a c>8 c, f4~ f8 g d'4 | << {c1} \\ {<d, e g>4.\arpeggio <d e g>8~ <d e g>2} >> \bar "|."
  
}

left = \relative c' {
  \global
  a8 c e2. |
  d,1 | g,8 d'8 g4~ g8 b,8~ b4 | << {c8[ b'~] b bes4. ges,4} \\ {c2. s4} >> |
  f,1 | b | e,2~ e8 gis4. | a8 e'4. <cis g'>2 |
  <d f a>1 | << {<g, d' f a>1} \\ {d'4. d8~ d2} >> | << {r4. e8~ e2} \\ {c,1} >> | e4. a8~ a2 |
  d2 <d f a> | <g, f'>1 | c1 | b2 << {gis8 e'4.} \\ {gis,2} >> |
  << {e'2 a} \\ {a,1} >> | << {d,8 a' d4~ d2} \\ {d,1} >> | g1 | << {r8 e'8~ e2} \\ {c2.} >> <ges e'>4 |
  f1 | b | e2 gis | << {r8 e4.~ e2} \\ {a, 2 cis} >> |
  << {f2 a} \\ {d,1} >> | g,8 d' f g~ g a d4 | e,,4. e'8 bes'2 | < a, a'>1 |
  << {<d a'>1} \\ {f2~ f8 f4.} >> | <g, d'>1 | c1 | b2 e, |
  a2 e'4. a,8 | << {r2 a'} \\ {d,,1} >> | g1 | << {c,8 g'4 g8~ g4 ges4} \\ {c,2. s4} >> |
  <f c'>1 | << {b1} \\ {r8 a'8~ a2.} >> | e,1 | << {a8 e'~ e2.} \\ {s2 cis} >> |
  <d f a>2 <f a c> | <g, d' f>1 | << {c4. e8~ e d c g'~ g1} \\ {s1 e,2 a} >> |
  <d, a' d>2 f'4 a | <g, d' f>1 | << {c8 aes'4 g8~ g2} \\ {c,1} >> | b8 f' a <e gis>~ <e gis> b gis4 |
  <<{r4. e'8 a2 d,,8 a'4 d f8~ f4} \\ {a,,1 d} >> | g4. g'8 a, b4 c8~ | c4. <g f'>8~ <g f'>4 
  << {<ges e'~>4 e'2 <f a>8 <f a>4.} \\ {s4 f,1} >> | d'4. b8~ b2 | e,2~ e8 gis4 r8 | a2~ a8 cis4. |
  << {<f a>2 <f a> g,8 d' f a~ a g f4} \\ {d1 g,2 s} >> | e4. <g' bes>8~ <g bes>2 | << {<a, g'>1} \\ {a4. cis8~ cis2} >> |
  <d a' c>4. a'8~ a2 | << {g,1} \\ {r8 f'8~ f2.} >> | << {c'4. c8~ c2} \\ {f,1} >> | <<{ees4. d8~ d2} \\ {<bes f'>1} >> |
  d,8 a' f' a c \clef treble f a c | \clef bass | <g,, f'>1 | c,8 g' e' c'~ c2 |
}


dynamics = {
  s1\p s s s
  s s s s
  s s s s
  s s s s
  s s s s
  s s s s
  s s2\< s\> s1\! s
  s s s2 s2\< s1\>
  s\! s1\< s1\!
  s s s\< s\> s\!
  s s s s 
  s s\pp s\cresc s
  s\mf s s s
  s s s s
  s s\< s1\f s\> s\mf s2 s2\< s1\f s\p s2^"rit." s2\< s1\> s1\!
  
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \right
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "left" { \clef bass \left }
  >>
  \layout {    
  }
}
