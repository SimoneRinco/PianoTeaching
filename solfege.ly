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
  \override StaffGroup.InstrumentName.self-alignment-X = #CENTER
  \override StaffGroup.InstrumentName.font-size = 6
}


% I: learning the notes
% - treble and bass clef
% - 1/4 2/4 3/4 4/4 values and rests, with ties
% - time signatures: 2/4 3/4 4/4

% II: eights values, the dot and ternary time signatures
% - additional time signatures: 3/8 6/8 9/8 12/8

% III: sixteenths values

% IV: irregular rhythms: triplets and duplets
% - 3:2 4
% - 3:2 2
% - 3:2 8
% - 2:3 4.

% V: cut time and other time signatures
% - time signatures: 2/2 3/2 4/2 6/4 9/4

% VI: thirty-seconds and multiple dots

% VII: other irregular rhythms
% - 6:4 4
% - 5:4 4
% - 7:4 4
% - 4:3 4.
% - ...

% VIII: Irregular and odd time signatures
% - 5/8
% - 7/8
% - 15/16
% - ...

% IX: All together


%%%%%%%%%%%
% Chapter I
%%%%%%%%%%%

% middle C up to G
solfege_I_I = \relative c' {
  \global
  \time 4/4
  \clef treble
  c4 d c e | c f c g' | c,2 e | g e | d f | g4 f e d | e2 d | c1
  d4 g e g | f2 g | f4 d f d | e c e c | d1 | c2 g' | c,4 f d f | e1 |
  \bar "|."  
}

% middle C down to F
solfege_I_II = \relative c' {
  \global
  \time 4/4
  \clef bass
  c4 b c a | c g c f, | c'2 a | f a | b g | f4 g a b | a2 b | c1
  b4 f a f | g2 f | g4 b g b | a c a c | b1 | c2 f, | c'4 g b g | a1 |
  \bar "|."  
}

% G up to D
solfege_I_III = \relative c' {
  \global
  \time 4/4
  \clef treble
  g'2 a | b c | d4 c b a | g1 | b2 d | c4 a c a | g2 a4 b | c1 |
  d4 g, a d | c g a2 | d1 | c2 d | b4 a2 g4 | a4 c d g, | a2 b | g1 |
  \bar "|."  
}

% F down to B
solfege_I_IV = \relative c' {
  \global
  \time 4/4
  \clef bass
  f,2 e | d c | b4 c d e | f1 | d2 b | c4 e c e | f2 d4 b | c1 |
  b4 f' e c | d2 f | b,4 c2 e4 | d4 b f'2 | e2 c | b4 c d e | f2 d | c1 |
  \bar "|."  
}

% rests and 3/4 notes
% C5 -> G5 
solfege_I_V = \relative c' {
  \global
  \time 4/4
  \clef treble
  c'4 d e f | g f e d | c2 e | g e | d2. r4 | f2. r4 | g2 r2 | e2 f4 g |
  r4 e r d | c1 | d2 r4 g | f2 r4 c | g'4 f e r | f e d r | e d c r | d1 |
  r1 | g2 c,4 g' | f2 c4 f | e2 c4 g' | g4 f d f | r2 e4 c | d2. e4 | f4 c2 r4 |
  r2. f4 | r2 e4 c | d4 e f r | g4 c,2. | g'4 f c e | d2 r2 | g1 | d1 |
  \bar "|."  
}

% rests and 3/4 notes
% C3 -> G3
solfege_I_VI = \relative c' {
  \global
  \time 4/4
  \clef bass
  c,2. d4 | e2. f4 | g2 r4 e | c4 d e2 | d4 e f2 | e4 f g2 | f1 | r1 |
  g4 c, f c | r2 e2 | r4 d2. | r2 c4 f | g1 | f2 d | c4 r r g' | f2. r4 |
  g4 f e d | c d e2 | c2 e4 g | f d r f | e c r e | d g c,2 | r1 | e2. r4 |
  g1 | c,4 f e2 | r4 d2 c4 | d4 e c g' | r2 d4 g | c,1 | d2 g | r4 f2. |
  \bar "|."  
}

% G5 -> D6
solfege_I_VII = \relative c' {
  \global
  \time 3/4
  \clef treble
  g''2 r4 | a4 b c | d c2 | b2 a4 | g4 b d | g, b d | c a c | a c a |
  g2. | a2 r4 | d2 r4 | r2. | g,4 c a | d r g, | a2. | r2. |
  b4 b c | d d c | b a r | a g r | a2 b4 | c2 d4 | b2. | g2. |
  a4 a2 | b4 b2 | c4 c2 | d2 d4 | g,4 d' g, | a4 a b | c2 d4 | b2 r4 |
  \bar "|."  
}


% F2 -> C3 
solfege_I_VIII = \relative c' {
  \global
  \time 3/4
  \clef bass
  c,2. | b4 c b | r a r | g r f | g2 r4 | c2 f,4 | r2. | g2 g4 |
  f4 c' b | r2 a4 | g2 a4 | f a c | b2. | c2. | a4 g f | a b a |
  b2 a4 | g2 f4 | c'2. | r2. | r4 b a | g2 f4 | r2 g4 | a2 r4 |
  c4 c b | a a g | f2 r4 | g2 r4 | r2. | c4 a f | r g b | c2. |
  \bar "|."  
}

% C4 -> G5
% ties
solfege_I_IX = \relative c' {
  \global
  \time 4/4
  \clef treble
  e2. g4 | b2 r4 a4~ | a4 f2 d4~ | d2 e | c1~ | c4 c' r2 | d2 e4 f~ | f4 r4 g2~ |
  g2. c,4 | d4 c b a | g f e  d~ | d4 r4 c2 | r2. g'4 | e2 g | c1 | r1 |
  g'4 f e2~ | e2 d2 | c4 g c r | d d, r4 d'~ | d e f r | r2 c2 | r2. g4~ | g e2. |
  c4 d e c | d e f d | e f g e | g2. a4~ | a2 b2~ | b4 c2. | r2 d2~ | d4 g, c2 |
  \bar "|."  
}

% C3 -> D4
solfege_I_X = \relative c' {
  \global
  \time 4/4
  \clef bass
  b2 r4 a4~ | a4 r f2 | e2. f4 | a2 c | d4 c b a | b2 r2 | a4 f2 d4~ | d4 r e2 |
  f2 c4 c | e2 r4 a | f d d r4 | c'2. a4~ | a f2 a4 | b2. b4~ | b2 a | b2. r4 |
  a4 b c a | g a b g | f g a f | e2. d4~ | d2 c2~ | c4 e2 g4 | r1 | b2. c4~ |
  c4 d c r | r a e c~ | c d e2~ | e4 f g2 | a1 | g4 r2 c4 | d4 r g, r | c1 |
  \bar "|."
}

% G3 -> E5
solfege_I_XI = \relative c' {
  \global
  \time 2/4
  \clef treble
  c4 b | a b | r4 c~ | c g | e' d | r2 | g2 | a4 b |
  c e | d d, | r4 c~ | c a | g2 | g' | e4 c | d a'~ |
  a r | c2 | d~ | d4 r | e2 | c4 g | e c | g2 |
  a4 b | a e' | a, b~ | b r | c f | c2 | a'~ | a4 r |
  r b~ | b g~ | g c,~ | c r | a g | b g | a2 | r2 |
  c4 e | a e' | d2 | r2 | c2~ | c4 b | a a, | r2 |
  g4 b | d f | e2 | a,~ | a4 c | c'2 | b4 a | g a |
  r4 g | r f | r a, | b2 | r2 | r4 b4~ | b d~ | d c |
  \bar "|."
}

% D2 -> A3
solfege_I_XII = \relative c' {
  \global
  \time 2/4
  \clef bass
  a2 | g4 a | f d | r4 c~ | c a | r2 | g4 f~ | f e~ |
  e2 | d2 | r4 e | r f | d2 | d'4 c | r e | a2 |
  c,4 a' | c, g' | c, f~ | f r | e2 | e, | d4 r | g2~ |
  g2 | r2 | f4 g | a b | c2 | g'2~ | g4 f4 | a2~ |
  a4 r | r2 | d,4 c | b a | g2 | f4 d | e d | e2 |
  c'2 | b4 c | r d | r b | a2~ | a4 d, | d e~ | e r |
  e'2 | r2 | r4 f | e d | c b | a b | c2 | r2 |
  b4 a | g2 | f4 e | d2 | r4 e | r f | g d'~ | d c |
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%
% solfeges in both clefs
%%%%%%%%%%%%%%%%%%%%%%%%

solfege_I_XIII_up = \relative c' {
  \global
  \time 4/4
  \clef treble
  c2 d4 s4 | s1 | s2. c'4 | d4 b g2 | f2 b,4 s | s1 | s1 | s1 |
  s1 | s4 d2 a'4 | b4 d r e~ | e4 r4 a2~ | a4 r2 e'4 | f e d f | c2 a4 a, | g e s2 |
  s1 | s1 | s1 | s1 | s1 | s1 | s2. f4 | e2 f4 s4 |
  e4 s d s | c s b s | a2 s | s1 |  s1 |  s1 |  s1 |  s1 |
  s1 | s1 | s4 f'2. | r2 e4 g | c e d b~ | b2 r2 | g1~ | g4 c2. |
  \bar "|."
}

solfege_I_XIII_down = \relative c' {
  \global
  \time 4/4
  \clef bass  
  s2. g4~ | g a b g | c2. s4 | s1 | s2. a4 | g2 r4 g, | a4 c e g | f2 r2 |
  c4 d f a~ | a4 s2. | s1 | s1 | s1 | s1 | s1 | s2 c2 |
  b2. a4 | g2 b, | r4 c2 e,4~ | e f g e | a1 | r2. f'4 | g b d s4 | s2. a4 |
  s4 g s f | s f s e | s2 c4 b~ | b r b,2 | b4 a b c~ | c2 f4 g~ | g r a2 | b1 |
  c2. e4~ | e4 f2.~ | f4 s2. | s1 | s1 | s1 | s1 | s1 |
  \bar "|."
}

solfege_I_XIV_up = \relative c' {
  \global
  \time 3/4
  \clef treble
  \partial 4 s4 | s2. | s2. | s2. | s2 a'4 | e4 d c~ | c4 d2 | d'4 f e~ | e2. |
  c4 a e | r2 c4 | s2. | s | s | s | s | s |
  s | s | s | s | s | b2. | c2 f4 | g a d |
  e c b | a2 e'4~ | e4 r2 | c4 s b | s a s | g s2 | s2. | s |
  \bar "|."
}

solfege_I_XIV_down = \relative c' {
  \global
  \time 3/4
  \clef bass
  \partial 4  e,4 | a2 e4 | d4 c b | a2. | a'2 s4 | s2. | s2. | s2. | s2. |
   s2. |  s2. | a2. | b4 f d | e d r | b a r | e d c | b2. |
   a | r2 c4~ | c d2~ | d4 r d' | e c g' | s2. | s | s |
   s | s | s | s4 c s | b s a | s g a | e2 g4 | a2. | 
  \bar "|."
}

solfege_I_XV_up = \relative c' {
  \global
  \time 3/4
  \clef treble
  \partial 2 s2 | s2. | e4 d c | b2 s4 | s2. | s4 f'4 e | a2.~ | a4 f' d~ | d2 r4 |
  r4 f, d | s2. | s | s | s | s | s | s |
  c2. | e4 f a~ | a4 a' c | b2. | b,4 f b, | s2. | s | s |
  s | s | s | s | s | s | s | b2. |
  \bar "|."
}

solfege_I_XV_down = \relative c' {
  \global
  \time 3/4
  \clef bass
  \partial 2 f,2 | b4 c d | s2. | s2 b,4 | c4 f a | c s2 | s2. | s | s |
  s | b4 a f | e2 d4 | e2 f4~ | f f,2 | d4 f b | r e, b' | r c a' |
  s2. | s | s | s | s | a4 f a | g2 r4 | d4 g, d' |
  c2 d4~ | d e2~ | e2. | r2 f4 | g4 d b | g2 e4 | f4 f' a | s2. | 
  \bar "|."
}


solfege_II_I = \relative c' {
  \global
  \time 2/4
  \clef treble
  c4 d8 e | g f e d | c4 r | g4 g8 b | g2 | g8 b d f | g4 b | c2 |
  e4 d | c g8 e | c4 r | d4 g,8 g' | e2 | f8 e d c | g4 g | c2 |
  d4 d8 f | e4 a | b4 r8 g | a4 r | e'2 | f8 g a e | r8 d r c | b2 |
  d8 g, d f | e4 b | c8 e g,4 | f8 a c b | c2 | r4 a8 b | r4 e8 d | c2 |
  \bar "|."
}

solfege_II_II = \relative c' {
  \global
  \time 2/4
  \clef bass
  c4 e8 d | g f e d | c4 g | a f8 c | a2 | r4 b | d g,8 g | c2 |
  b4 a8 g | d g b, g' | e4 d~ | d r | b g'8 b | d2~ | d4 c | r4 c8 c |
  b8 d4 g,8~ | g a4 f8~ | f4 r | d8 e f a | g a b d~ | d4 r | e8 d c4~ | c8 b c4 |
  a8 a g4 | f8 e d e | c2 | b4 d | r g8 b | d2~ | d4 r4 | c8 c c4 |
  \bar "|."
}

solfege_II_III = \relative c' {
  \global
  \time 4/4
  \clef treble
  a'2 e'8 c a4 | e2 e8 g b g | a2 r8 c r e | e4 d e8 d c b |
  a2 r4 e4~ | e4 b8 e r b r e | b e b' g b4 a | g2 g8 e a4 |
  r2 a4 e'8 e | a4 a8 g a4 a8 e' | e8 d c b a4 g4~ | g e2 e,8 g |
  a c e a e a c e | r8 d r c r c r b | a4 e2 g4~ | g4 r a2 |
  \bar "|."
}

solfege_II_IV = \relative c' {
  \global
  \time 4/4
  \clef bass
  f,4 c8 c e4 f~ | f g2 r8 c, | d4 d b c8 c, | f2. r4 |
  e8 d c e g4 c,8 c  | d2 r8 e r g | r c c r r c' c r | d4 d8 c b4 a8 b |
  c4 c8 b a4 g8 a | b8 a r4 r8 g r c, | d2 r4 e4~ | e4 c8 e c8 e f4 |
  a8 c f2 f8 e | d8 c b a g c, c4 | c,2 r8 g' r e | f1 |  
  \bar "|."
}

solfege_II_V = \relative c' {
  \global
  \time 2/4
  \clef treble
  e'4 d | e8 d4 b8 | e4 g~ | g8 f4 b,8 |g4 b8 b~ | b g4 e8~ | e r r b~ | b e~ e4 |
  r4 d | f4~ f8 b | d4 f8 d | e b g e | b4~ b8 d | b4 r | b8 c d b | e2 |
  r8 g4 f8~ | f4 d | r2 | b4~ b8 a' | g4 r | a8 f d b | d4 r8 d' | e4 e, |
  f8 e r f | g f r f | a g r a | b a g f | b4 a4~ | a8 g4 f8~ | f4 d | e2 |
  \bar "|."
}

solfege_II_VI = \relative c' {
  \global
  \time 2/4
  \clef bass
  g4 f | r8 g d4 | a'4 f | r8 a d,4 | e8 b4 g8~ | g4 r | g'4 b~ | b4 c8 c~ |
  c4 b | a4 a8 b | a4 f | r g~ | g8 r a r | r4 d, | c8 a a f | d4~ d8 f |
  g2 | r2 | f4 r8 d~ | d r r c~ | c r r4 | b4 a | r4 c~ | c4 d8 r |
  g4 g8 a | b c d e | f4 d8 f~ | f d8~ d4 | a'8 d,8~ d4 | r4 d | d'4 d,8 d, | g4~ g8 r |
  \bar "|."
}

solfege_II_VII = \relative c' {
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

solfege_II_VIII = \relative c' {
  \global
  \time 4/4
  \clef bass
  e4. d8 c4. b8 | a4. g8 f4 e | r8 e, a b c4. d8~ | d4. f8 e2 |
  r8 d r d e4. g8~ | g a c e c4 e, | f8 g4 b8~ b a~ a4 | r2. a,4 |
  e8 d f e r4 g~ | g4. e'8 d4 d8 e~ | e4. g8 e4 g | a1 |
  r2 a,~ | a4 r e4. g8~ | g4 e' d8 c b a~ | a4 b8 c d e8~ e4 |
  \bar "|."
}

solfege_II_IX = \relative c' {
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

solfege_II_X = \relative c' {
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

solfege_II_XI = \relative c' {
  \global
  \time 3/8
  \clef treble
  f'4. | c4 d8 | f8 a c | d4 b8 | c4. | b8 a g~ | g4 f8~ | f4 r8 |
  c4 a8 | d4 a8 | f'4 a,8 | b4. | r4 d8 | e4. | f4.~ | f8 r4 |
  c8 a f~ | f g c,~ | c4 d8 | e4 f8 | g c, a' | b4.~ | b8 r4 | c4. |
  c8 g e | c' g e | g e c | g4. | b8 a g | b4. | b8 a g~ | g f4 |
  \bar "|."
}

solfege_II_XII = \relative c' {
  \global
  \time 3/8
  \clef bass
  \partial 8 e,8 | a4. | a8 b c | d4.~ | d4 f8 | e4.~ | e8 d c | r c b | a4. |
  b8 g e | g e b~ | b d f | a4 b8 | g4 r8 | e4. | b4 d8 | e4 r8 |
  f4.~ | f8 e d~ | d4. | r4. | e4 r8 | g8 g b | a4. | r4 a8 |
  b8 a g | a g f | g f e | f e e, | a4. | b4 d8~ | d4 e8 | a,4. |
  \bar "|."
}

solfege_II_XIII = \relative c' {
  \global
  \time 9/8
  \clef treble
  \partial 8 f'8 | b4. c4 d8 b4 a8 | g2. r4 e8 | f4 g a  b4. | r4. d,4. d8 e d |
  c8 b r e d r g f r | g4.~ g4 a8 r4. | r8 b4 r8 f'4 r8 e8 d | d c b b a g g f d~ |
  d c b~ b4 c8~ c4. | c8 a f r4. a8 f c~ | c4. a4. f8 g a | b2. r4. |
  c8 c4~ c8 e f~ f4. | d8 d4~ d8 f b~ b4. | c8 a f a f c f c' e | d4 c8 b2. |
  \bar "|."
}

solfege_II_XIV = \relative c' {
  \global
  \time 9/8
  \clef bass
  d4. f,8 a d~ d4. | c4. e,8 a c~ c4. | b4. d,8 e f f g a~ | a b4~ b8 a c d4. |
  d,4 r8 f4 r8 a,4 r8 | a8 f d~ d c d~ d a c | d4 e8 f4 a8 r4. | f4 a8 d4 f8 a4. |
  b8 f d d f b, d4 r8 | r c b~ b4 a8 r4. | r8 f' e~ e4 d8 r4. | r8 d' c~ c4 b8 r4. |
  a8 b f f g d d e b~ | b4. a4 c8 c'4 r8 | f8 e d d c b b f g | c4.~ c4 b8~ b4. |
  \bar "|."
}

solfege_II_XV_up = \relative c' {
  \global
  \time 4/4
  \clef treble
  \partial 8 s8 | s2. s8 d | s1 | s2 d4~ d8 e | d2 c |
  g'8 f e g f a, s4 | s4 c8 a s4 f'8 e | d4. e8 a4 c | d2. r4 |
  e8 g b a~ a g4 e8~ | e4 r d8 d, c b | s1 | s |
  s | s | r8 e d c r e' d c | r a' g f g f4 e8 |
  f1 | f,4 c s2 | s1 | s |
  s | s | s4 b8 c e8 d4 e8 | f2. r4 |
  \bar "|."
}

solfege_II_XV_down = \relative c' {
  \global
  \time 4/4
  \clef bass
  \partial 8 e,8 | f4. a8 c4. s8 | c2 b4 r8 d, | g4~ g8 b s2 | s1 |
  s2. g4 | f8 a s4 b8 f s4 | s1 | s |
  s | s | a8 g f4 g8 e c4~ | c8 d4. b8 e4. |
  r4 d2 f4~ | f4 c'2. | s1 | s |
  s1 | s2 b8 c g e | f8 e4 d c b8~ | b4. g8~ g4 e8 e |
  f2. r4 | c'8 d e f e f g a | g a s2. | s1 |
  \bar "|."
}

solfege_II_XVI_up = \relative c' {
  \global
  \time 3/4
  \clef treble
  \partial 8 d''8 | e4 d8 e r4 | c8 a e d~ d4 | c8 a e d~ d4 | s2. |
  s | s | s | e'4 g8 e d b |
  c8 a e4 r | r2 d4~ | d8 c4 s8 s4 | s2. |
  s | s | a'4 b8 a g d' | c4 b g |
  r2 a4 | f'8 d b a s4 | s2. | s |
  s | s | b4 b4. a'8 | g2. |
  \bar "|."
}

solfege_II_XVI_down = \relative c' {
  \global
  \time 3/4
  \clef bass
  \partial 8 s8 | s2. | s | s |  c4. b8~ b4 |
  e,8 b' g e~ e4 | b2 d,4 | e2. | s2. |
  s2. | s | s4. b''8 a4 | a,8 g a c d f |
  e e4. g8 a | b8 c4 d4 e8 | s2. | s |
  s | s2 b8 a | g2.~ | g8 f4 e8~ e4 |
  d4. e8 f4 | b,4. d8 a'4 | s2. | s |
  \bar "|."
}

solfege_II_XVII_up = \relative c' {
  \global
  \time 9/8
  \clef treble
  s2. s4. | s2. s4. | s2. c8 d e | g a g~ g f g~ g4 b8 |
  c4 e8~ e8 c'4 r4 b,8 | c8 a f r e d r c b | c4. s2. | s2. s4. |
  s2. s4. |  s2. s4. | c4.~ c8 e a b4 r8 | g'4 a8 b4 c8 d4. |
  g,2.~ g4 f8 | e d c~ c g e c4. | s2. s4. | s2. s4. |
  \bar "|."
}

solfege_II_XVII_down = \relative c' {
  \global
  \time 9/8
  \clef bass
  c,,8 b c g a b d c d | a b c e f e g c e | f4 g8 a4. s4. | s2. s4. |
  s2. s4. | s2. s4. | s2. a4 c,8 | b8 c4 g8 c4 r4 d,8 |
  e4.~ e8 f g a4. | r2. b4 b'8 | s2. s4. | s2. s4. |
  s2. s4. | s2. s4. | b8 g d g d b~ b g4~ | g4 c8~ c4. r4. |
  \bar "|."
}

solfege_II_XVIII_up = \relative c' {
  \global
  \time 2/4
  \clef treble
  g''4 f8 g | e d c b | c4 b8 c | b g f d | c4. s8 | s2 | s | s |
  s | s | s | e4. d8 | a'4. c,8 | d4 r | d'4 r8 f | r a b r |
  g d b g~ | g f4.~ | f4 r | d8 c s4 | s2 | s | s | s |
  s | s | s | s | f4 g8 a~ | a f d4~ | d2 | r4 g4 |
  \bar "|."
}

solfege_II_XVIII_down = \relative c' {
  \global
  \time 2/4
  \clef bass
  s2 | s | s | s | s4. a8 | g f e4 | c8 b4 c8~ | c e,4. |
  c2 | d8 f a c | d f a c | s2 | s | s | s | s |
  s | s | s | s4 b8 g | f4 r | e2 | r8 d a4 | r8 b d,4 |
  c8 b a b | a4 c | r8 d e f | r a c e | s2 | s | s | s |
  \bar "|."
}


solfege_III_I = \relative c' {
  \global
  \time 4/4
  \clef treble
  c4 c8 d c16 d e f g4 | a4 a8 b c16 b a b c4 | d16 c b a c b a g b a g f e4 | f4. g 8 a4. b8 |
  c2 c8 b a g | c,4 e8 g c,16 e g e  c8 d16 e | g4. f8~ f8 d16 e f4 | d2.~ d8 e |
  f8 a c16 b a g a8 f f4 | e4 g c16 b a b c4 | c,8 d4 e8 c4. d16 e | f8 f16 g a8 a16 b c4 e |
  r8 g r e r c b4 | r8 d16 d r8 b16 b g8 g16 g16 d8 b | g16 a b c b c d e d e f a~ a8 g | c4. c16 c c,4 r |
  \bar "|."
}

solfege_III_II = \relative c' {
  \global
  \time 4/4
  \clef bass
  e,4 b8 e4 d8 b16 c d b | c4. e8 g4. g16 b | c4. e8 f16 e d c d c b a | g4. e16 g a4 r |
  b8 b,4 b'16 b a8 a,4 a'16 a | g8 e4 f4 f16 g a4 | a16 g f r g f e r f e d r e d c r |c4. b8~  b4 b8 b16 d |
  e4. f16 g e4 r4 | r16 e f g r f g a r b d f d8 f | f4. d8~ d16 c b a b8 d | e4 g8 e e16 d c b a4 |
  r4. f8 r4. g16 g | a8 a16 b c d e8 r2 | d8 b16 d f4 f8 b,16 a g4 | f4. b,16 b e2 |
  \bar "|."
}

solfege_III_III = \relative c' {
  \global
  \time 3/4
  \clef treble
  g'4. b8 d16 c b a | g4. a16 b g8 e16 f | e4 d r8 d | g8 g16 b d8 d16 f a8. g16 |
  g2 r4 | f8 d16 d e8. d16 e8. c16 | b4. a8~ a g16 f | e4. d8 c8 c16 d |
  e2 r8. d16 | g4. g16 b c8. d16 | c8. b16 a2 | d8 d16 e f g a8 r4 |
  e8 e16 f g a b8 r4 | a8 f a,4. g16 f | a4 g4. f8 | g8. g16 g4 r |
  \bar "|."
}

solfege_III_IV = \relative c' {
  \global
  \time 3/4
  \clef bass
  f,4 f16 g a b c8 c | r2. | g4 g16 a b c d8 d8 | r2 r8 e |
  g8. f16 f8. e16 f8 r | c8 c8 r c16 c a4~ | a8 b4 a16 g f4 | r8 e r e16 e f8 r |
  g16 f e d c8. c16 c4 | f16 e d c b8. b16 b4 | a16 b a b c b c b a g f e | g8. f16 f4 r |
  e16 f g e c8 e4 g8~ | g8 a4 b8 r8 c16 c | f8 c16 c e8 c16 c g'4 | f2 r4 |
  \bar "|."
}

solfege_III_V = \relative c' {
  \global
  \time 12/8
  \clef treble
  \partial 8 f8 | b8 d b c8 b16 a g f e4. d8 e f | g8 b g a g16 f e d c4. c8 f a |
  b4 c8 a4 g16 a f8 a f~ f r e | d4.~ d8 c a r4 a16 b c8 e16 f g e |
  f8 g16 a b8 g8 a16 b c8 d4 c8~ c4 b16 a | g4 f8 g4 c,16 d e4. f4 r8 |
  e4 f8 c16 b c8 a' d,16 c d8 b' e,16 d e8 c' | d8 b' c~ c b a b2. |
  \bar "|."
}

solfege_III_VI = \relative c' {
  \global
  \time 12/8
  \clef bass
  \partial 8 d,16 f | g8 b g a b16 c d e f4. g4.~ | g8 f e16 d c4 b16 a g4 r8 f4 r8 |
  g8 d b g g16 c b a f4.~ f8 d' f | g8 g, g' f f, f' e e,4 d'8 d, f |
  g8 a b16 g' a,8 b c16 a' b,8 d c b a8. f16 | g4 a8 g8. a16 b8 a8. b16 c8 d4~ d16 e |
  f4. g8 d b f' c f,~ f g4~ | g8 a c d4~ d16 f g4.~ g8 r4 |
  \bar "|."
}

solfege_III_VII = \relative c' {
  \global
  \time 2/4
  \clef treble
  \partial 8 e8 | a8. c16 b8. d16 | e8. g16 f4 | e16 g e g f a c, e | d e f g a4 |
  b16 a8. b16 g8. | e4. d16 e | c16 b8 a16 b16 a8 g16 | a4. e8 |
  f16 e8 d16~ d16 c8 a16~ | a8 c4 e8 | f2 | e8 e' f16 e d8 |
  e16 d c8 b16 c d e | f8 r16 e c8 r16 a | r8 g4 f16 e | d16 c d c b4 |
  a8 b~ b16 c8 e16 | d4. f16 a | b8 r r g~ | g8 a4. |
  \bar "|."
}

solfege_III_VIII = \relative c' {
  \global
  \time 2/4
  \clef bass
  \partial 16 e,16~ | e16 d8. c8 d | d16 c8 b16 a g8 f16 | e4 d | c8 c4 e16 g |
  f8. a16 c8. e16 | d8 e f d~ | d c b8. d16 | r8 c4. |
  r8 d16 b r8 g16 b | r16 c8. r16 d8. | e8 f4 a8~ | a4 r4 |
  g8 g16 f e8 c16 a~ | a b c8 b16 c g'8~ | g f~ f16 e8. | r8 e r e16 e | 
  \bar "|."
}


solfege_III_IX_up = \relative c' {
  \global
  \time 4/4
  \clef treble
  \partial 8  g'8 | a8. b16 c8. a16 g8. e16 d8. e16 | f4. e16 d c8 b4 s8 | s1 | s |
  c16 d8.~ d c16~ c8 r 8 r4 | e'4. d8 b4. b'8 | a1 | b16 a g f e d b g a8 f16 g s4 |
  s1 | s | d8. c16 d8 f e8. b16 g'4 | d'16 c b a b8 g a16 g f e d b c8 |
  s1 | s | s4. e8 d16 e f e d8 g~ | g4 r16 a8. r8 a a'4 |
  \bar "|."
}

solfege_III_IX_down = \relative c' {
  \global
  \time 4/4
  \clef bass
  \partial 8 s8 | s1 | s2 s4. a8 | g16 f e d b c d8 a16 c d8 r4 | e2~ e8 d e16 d g b |
  s1 | s1 | s | s2. a4 |
  b16 a8 g16 e4 d16 e8 b16 a4 | e16 g a g a4 b8 c d a' | s1 | s |
  a4. g16 a~ a8 e r e, | d16 e8 f16~ f8 g~ g16 a8. r4 | a'4. s8 s2 | s1 |
  \bar "|."
}

solfege_III_X_up = \relative c' {
  \global
  \time 6/8
  \clef treble
  s2. | s | e16 f g e b'8 a16 b d a a'8 | b8 r a g r c, |
  d4 c8 a4. | c,8 b a s4. |
  \bar "|."
}

solfege_III_X_down = \relative c' {
  \global
  \time 6/8
  \clef bass
  d,8 e f e4 f16 g | a4. d | s2. | s |
  s2. | s4. g,4 e8 |
  \bar "|."
}

solfege_III_XI_up = \relative c' {
  \global
  \time 3/4
  \clef treble
  \bar "|."
}

solfege_III_XI_down = \relative c' {
  \global
  \time 3/4
  \clef bass
  \bar "|."
}

solfege_III_XII_up = \relative c' {
  \global
  \time 12/8
  \clef treble
  \bar "|."
}

solfege_III_XII_down = \relative c' {
  \global
  \time 12/8
  \clef bass
  \bar "|."
}


solfege_IV_I = \relative c' {
  \global
  \time 4/4
  \clef treble
  d4 \tuplet 3/2 {d8 e f} d4 d8 f | g4 \tuplet 3/2 {g8 a b} g8 g f4 |
  g16 f e d \tuplet 3/2 {c8 d e~} e8 f4 g8 | a2 r4 \tuplet 3/2 {g8 a b} |
  g4. a16 b \tuplet 3/2 {g8 d b} r4 | a4. g16 f~ \tuplet 3/2 {f8 c' f} r4 |
  g8. d16 \tuplet 3/2 {e8 g b} c8. a16 \tuplet 3/2 {c8 e a} | b2~ \tuplet 3/2 4 {b8 a b a g a} |
  e4 d8 e d4 \tuplet 3/2 {c8 d e} | f4 r8 f' r f, r d~ |
  \tuplet 3/2 {d c d} e8. d16 c8. a16 g8. g16 | f2 r4 e8 f~ |
  f8 g a16 g f e f8 a16 g c4 | r16 d c b r c b a~ \tuplet 3/2 4 {a8 b c a c e} |
  d8 b4 a8~ \tuplet 3/2 {a8 g f} e4~ | e8. d16~ \tuplet 3/2 {d8 c d~} d2 |  
  \bar "|."
}


solfege_XXXIII = \relative c' {
  \global
  \time 2/2
  \clef treble
  \partial 4 a4 | d2 e | a4 c b d | d1~ | d2 d, | c2. e4 | a,2 g4 a | e g2 b4~ | b4 a2. |
  c2 r4 d8 e | r4 f4~ f4. g8 | e2. r4 | d4. e8 d4. e8 | c4 c'2 c,4 | b4 b'2 b,4~ | b2 a~ | a4 a8 a r2 |
  d4 d8 e f g a4 | c,4 c8 d e f g4 | b,4 b8 c~ c4 g4~ | g4 f r2 | r8 a'4. r8 g4. | a4 g f2 | g4. f8 f4 r | e2 f |
  a1 | a2 a | a4 a a' r4 | b8 c d e r4 c | d2. c4~ | c2 b2~ | b4 a2. | g8 f e d c4 d |
  \bar "|."
}

solfege_XXXIV = \relative c' {
  \global
  \time 2/2
  \clef bass
  \partial 8 b,8 | e4 e8 g b4. c8 | f,4 f8 g a4. b8 | e,4 e'8 d c b a4~ | a8 f a4 b8 a g f~ | f4 e2 d4 | e2. r4 | r4 b' r b | r8 e, e2. |
  d4 d8 e f d e4 | c4 c8 d e c d4~ | d4. c8 c2 | b4 b' a, c' | c8 b a g a4 r | b8 c d b a b c a | g e b g' b4. a8~ | a4 g r2 |
  f4 f8 g e4. d8 | b d f a g4 g8 f~ | f4 e2 r4 | d1 | r1 | r8 b b r r a' a r | b8 a g f e4 b | e2. r4 |
  f8 b, a' b, b' b, c' b, | d'2 r2 | e8 f g e d e f d | c d e c b c d b | a4 g2 f4~ | f4 d2 b4~ | b2 d | e1 |
  
  \bar "|."
}

solfege_XXXV = \relative c' {
  \global
  \time 3/2
  \clef treble
  f2 f f4 g | e2. f4 g a4 | a2~ a4 b a g | f1. | f'4 a2 g b4~ | b4 c2. r8 d8 c a | b g e c b4. c8~ c4 c8 e | g2 f1 |
  e4. c8~ c d4. r2 | f4. b,8~ b a4. r2 | r4. g8 c4 r e,2 | r4. f8 a4 r c,2 |
  b8 c d e c e g b~ b4 a | a'8 b c d~ d4 c2 b4 | a8 g e c b c g4 r e | f1 r2 |
  \bar "|."
}

solfege_XXXVI = \relative c' {
  \global
  \time 3/2
  \clef bass
  \partial 4 c,,4 | d2. e4 f4. g8 | a2. a2. | d4 c2 b4 a a8 b | a g e c~ c4 r r a |
  d4 r8 e r f r g a4 r | b8 c d b a4 a8 b a4 r | g8 b d f~ f4 e2 c4 | d1. |
  d,2 b a | g4. a8 b2 c4 r | e2. d4 e8 a g c~ | c4 d r8 c r d r2 |
  e4 a,2 e'8 a, g4. a8 | b4 e,2 b'8 e, c4. d8 | r4 c' r a r g | f4 a8 e' d4 r r2 |
  \bar "|."
}

solfege_XXXVII = \relative c' {
  \global
  \time 6/4
  \clef treble
  \partial 4 g4 | c2 d4 e2. | d2 f4 a2. | g4 g8 a b d f4 e8 d c b | g2 b c |
  g'4. f8 g4 e4. f8 e4 | d4 c8 b a g r8 g a b c4 | r4 e2 r4 d2 | b2 a8 b c2. |
  c'2.~ c4 a2 | b8 g f d r4 c8 d e f r4 | r2 g4 r2 b4 | d1.~ |
  d4 c4. b8 c4 b4. a8 | b4 g8 a b g f2 e4 | d2 e4 f2~ f8 g | c,1 r2 |
  \bar "|."
}

solfege_XXXVIII = \relative c' {
  \global
  \time 6/4
  \clef bass
  b,,2 f'4 r e8 f r4 | a4 a8 g f c d4 d8 e f d | b4. c8 d4 e2. | f2 a4~ a2. |
  b4 d f b2 a8 b | g4 b e g2 f8 e | d4 c a8 f d4 b a8 b | e2~ e8 f b,2. |
  a2~ a8 c f2~ f8 c, | b c d e f g a b c d e f | g4. f8 e f b,4. a8 f' f, | a2.~ a2 c4 |
  b4 b8 c b4~ b8 a b c d4 |  c4 c8 e c4~ c8 b a g f4 | r4 f2 r4 c' r | b1. |
  \bar "|."
}

solfege_XLII = \relative c' {
  \global
  \time 4/4
  \clef bass
  \partial 8 c,8 | f8 f16 g a8 a16 c f4. e16 d | c8 d16 c \tuplet 3/2 4 {a8 c a e a e c d e} |
  r8 d4 d16 e f8. e16 f8. a16 | b4~ \tuplet 3/2 {b8 a d} a4~ \tuplet 3/2 {a8 b c} |
  d4~ d8 a b4~ b8 a16 d, | \tuplet 3/2 4 {e8 f g a f a a, b c} e8 d~ |
  d4 r4. c8 b4~ | b16 a g f e c b c r16 c e f \tuplet 3/2 {c8 d e} |
  f8. f16 g16 g8 a16 b8. b16 c16 c8 d16 | e8 d4 c16 d e8. f16~ f8 r |
  g16 f g f e c g c g8 e \tuplet 3/2 {c8 d e} | g8 f a g \tuplet 3/2 4 {a8 b c b c e} |
  f16 e d c e d c b c b a g a g f e | d8 e4 f g a16 g |
  \tuplet 3/2 4 {f8 a c a c f c f a f a c} | c8 c16 c r16 c,8. f4. r8 |
  \bar "|."
}

solfege_XLIII = \relative c' {
  \global
  \time 3/4
  \clef treble
  e4. g8 \tuplet 3/2 {e8 f g} | g4. a8 \tuplet 3/2 {g8 a b} |
  c2 r4 | d16 c b c b8 a16 g f8 e16 d |
  \tuplet 3/2 4 {b8 c d c d e f g a} | b4. a8 \tuplet 3/2 {b8 a g} |
  f4. d8 \tuplet 3/2 {b8 c d} | r8 e r f r f16 a |
  b4~ \tuplet 3/2 {b8 c d} e8 b | a4~ \tuplet 3/2 {a8 f e} d8 b |
  r4 a2 | \tuplet 3/2 4 {r8 g a r a b r b d} |
  r8 d4 b8 r4 | b16 c d e f g a b \tuplet 3/2 {a8 b d} |
  \tuplet 3/2 4 {e8 d c d c b c b a} | g8 g16 f e8. d16 r8 d |
  e8 e16 d c8. b16 r8 b | a16 g8. \tuplet 3/2 4 {a8 c e c e a} |
  \tuplet 3/2 {b8 d f~} f8 d e4 | r16 f f8 r16 d d8 e4 |
  \bar "|."
}

solfege_XLIV = \relative c' {
  \global
  \time 3/4
  \clef bass
  \partial 8 f,8 | \tuplet 3/2 4 {b8 d f d b f} e8 c | \tuplet 3/2 4 {a8 c f c a f} a,8 b |
  a8 c8 f4 g8. a16 | b8 d4 b8 c8. d16 |
  e2 r8 f~ | f16 e8. f16 d8. d8 a |
  g16 a b c d4~ \tuplet 3/2 {d8 a f} | d4. e16 f g8 g16 a |
  \tuplet 3/2 4 {b8 c d f d e g a g} | g4 d8 b f16 g a f |
  b8. a16 g8. f16~ f16 a8.~ | a8 b c d e d16 c |
  b16 c e a, g a b8 r4 | r16 a8. r16 c,8. d8 a' |
  \tuplet 3/2 4 {c8 d e b c d a b a~} | a8 b~ b4 r |
  \bar "|."
}

solfege_XLV = \relative c' {
  \global
  \time 2/2
  \clef treble
  a2 g4 a | b2. e4 | \tuplet 3/2 2 {f4 e d e d c} | d4 r b g |
  a8 b c d e4. d8 | c4 c8 b \tuplet 3/2 {a4 e' b} | \tuplet 3/2 2 {e4 c' e, f d' f,} | c8 d4 e8 d8 e4 g8 |
  a4 e8 a g4 d8 g | \tuplet 3/2 {f4 c f} e2 | d8 e4. b8 e4. | a,1 |
  r2 g8 a b e~ | \tuplet 3/2 2 {e4 g b d e g} | a4. g8 f4 e | f4. e8 \tuplet 3/2 {d4 c g} |
  a8 b c e d e f g~ | g4. a8~ \tuplet 3/2 {a4 e' g~} | \tuplet 3/2 2 {g4 e g~ g b, r} | a1 |
  \bar "|."
}

solfege_XLVI = \relative c' {
  \global
  \time 2/2
  \clef bass
  \partial 4 c,4 | f8 g a f \tuplet 3/2 {g4 a b} | a8 b c a \tuplet 3/2 {b4 c d} |
  e4 f8 e d4 d8 b | f4 f8 e d c b c |
  a2 r | g4 b \tuplet 3/2 {g4 a b } |
  c4 e \tuplet 3/2 {f4 e f } | c4 g' \tuplet 3/2 {c, g' b} |
  a4. g8 f4. e8 | f1 |
  \tuplet 3/2 2 {r4 f e r e d} | c4 d r c8 e |
  \tuplet 3/2 2 {f4 a r a c r} | c4 g8 e c4. b8|
  a2. b8 c | \tuplet 3/2 {c4 g' e} f2 |
  \bar "|."
}

solfege_XLVII = \relative c' {
  \global
  \time 6/8
  \clef treble
  b'8 f16 b c d c8 f,16 c d e | d8 f b f b d |
  e4 d8 c4 a8 | b2. |
  a8 g f \tuplet 2/3 {a8 f} | b8 a g \tuplet 2/3 {b8 g} |
  f8 g4 c,8 g'4 | e16 g b d r8 d16 b a f r8 |
  \tuplet 2/3 4. {c8 d e f} | g4 a8 a4 b8 |
  d2. | r4. d8 a f |
  d8 e f~ f4 g8 | \tuplet 2/3 4. {a8 b~ b c} |
  d8 c b d4 b8 | f16 g a f d8~ d c a'~ |
  a4. \tuplet 2/3 {b8 a} | g8 e c~ c4 b8~ |
  b8 a f~ \tuplet 2/3 {f8 a} | b2. |
  \bar "|."
}

solfege_XLVIII = \relative c' {
  \global
  \time 6/8
  \clef bass
  \bar "|."
}

% trentaduesimi
% doppio punto
% terzine di quarti in tempo binario
% terzine di sedicesimi in tempo binario
% terzine di ottavi in tempo tagliato
% sestine in tempo semplice
% quartine in tempo composto
% cinquine e settimine in tempo semplice


\bookpart {

\header {
  title = "Chapter I"
  subsubtitle =  "Learning the notes"
}

\score {
  \new Staff \with {
    instrumentName = "1.1"
  } \solfege_I_I
}

\score {
  \new Staff \with {
    instrumentName = "1.2"
  } \solfege_I_II
}

\score {
  \new Staff \with {
    instrumentName = "1.3"
  } \solfege_I_III
}

\score {
  \new Staff \with {
    instrumentName = "1.4"
  } \solfege_I_IV
}

\score {
  \new Staff \with {
    instrumentName = "1.5"
  } \solfege_I_V
}

\score {
  \new Staff \with {
    instrumentName = "1.6"
  } \solfege_I_VI
}

\score {
  \new Staff \with {
    instrumentName = "1.7"
  } \solfege_I_VII
}

\score {
  \new Staff \with {
    instrumentName = "1.8"
  } \solfege_I_VIII
}

\score {
  \new Staff \with {
    instrumentName = "1.9"
  } \solfege_I_IX
}

\score {
  \new Staff \with {
    instrumentName = "1.10"
  } \solfege_I_X
}

\score {
  \new Staff \with {
    instrumentName = "1.11"
  } \solfege_I_XI
}

\score {
  \new Staff \with {
    instrumentName = "1.12"
  } \solfege_I_XII
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "1.13"
    \new Staff \solfege_I_XIII_up
    \new Staff \solfege_I_XIII_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "1.14"
    \new Staff \solfege_I_XIV_up
    \new Staff \solfege_I_XIV_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "1.15"
    \new Staff \solfege_I_XV_up
    \new Staff \solfege_I_XV_down
  >>
  }
}


}

\bookpart {

\header {
  title = "Chapter II"
  subsubtitle = "Eights, the dot and compound time signatures"
}

\score {
  \new Staff \with {
    instrumentName = "2.1"
  } \solfege_II_I
}

\score {
  \new Staff \with {
    instrumentName = "2.2"
  } \solfege_II_II
}

\score {
  \new Staff \with {
    instrumentName = "2.3"
  } \solfege_II_III
}

\score {
  \new Staff \with {
    instrumentName = "2.4"
  } \solfege_II_IV
}

\score {
  \new Staff \with {
    instrumentName = "2.5"
  } \solfege_II_V
}

\score {
  \new Staff \with {
    instrumentName = "2.6"
  } \solfege_II_VI
}

\score {
  \new Staff \with {
    instrumentName = "2.7"
  } \solfege_II_VII
}

\score {
  \new Staff \with {
    instrumentName = "2.8"
  } \solfege_II_VIII
}

\score {
  \new Staff \with {
    instrumentName = "2.9"
  } \solfege_II_IX
}

\score {
  \new Staff \with {
    instrumentName = "2.10"
  } \solfege_II_X
}

\score {
  \new Staff \with {
    instrumentName = "2.11"
  } \solfege_II_XI
}

\score {
  \new Staff \with {
    instrumentName = "2.12"
  } \solfege_II_XII
}

\score {
  \new Staff \with {
    instrumentName = "2.13"
  } \solfege_II_XIII
}

\score {
  \new Staff \with {
    instrumentName = "2.14"
  } \solfege_II_XIV
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "2.15"
    \new Staff \solfege_II_XV_up
    \new Staff \solfege_II_XV_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "2.16"
    \new Staff \solfege_II_XVI_up
    \new Staff \solfege_II_XVI_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "2.17"
    \new Staff \solfege_II_XVII_up
    \new Staff \solfege_II_XVII_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "2.18"
    \new Staff \solfege_II_XVIII_up
    \new Staff \solfege_II_XVIII_down
  >>
  }
}


}

\bookpart {
  

\header {
  title = "Chapter III"
  subsubtitle = "Sixteenths"
}

\score {
  \new Staff \with {
    instrumentName = "3.1"
  } \solfege_III_I
}

\score {
  \new Staff \with {
    instrumentName = "3.2"
  } \solfege_III_II
}

\score {
  \new Staff \with {
    instrumentName = "3.3"
  } \solfege_III_III
}

\score {
  \new Staff \with {
    instrumentName = "3.4"
  } \solfege_III_IV
}

\score {
  \new Staff \with {
    instrumentName = "3.5"
  } \solfege_III_V
}

\score {
  \new Staff \with {
    instrumentName = "3.6"
  } \solfege_III_VI
}

\score {
  \new Staff \with {
    instrumentName = "3.7"
  } \solfege_III_VII
}

\score {
  \new Staff \with {
    instrumentName = "3.8"
  } \solfege_III_VIII
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "3.9"
    \new Staff \solfege_III_IX_up
    \new Staff \solfege_III_IX_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "3.10"
    \new Staff \solfege_III_X_up
    \new Staff \solfege_III_X_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "3.11"
    \new Staff \solfege_III_XI_up
    \new Staff \solfege_III_XI_down
  >>
  }
}

\score {
  \new StaffGroup {
  <<
    \set StaffGroup.systemStartDelimiter = #'SystemStartBrace
    \set StaffGroup.instrumentName = "3.12"
    \new Staff \solfege_III_XII_up
    \new Staff \solfege_III_XII_down
  >>
  }
}

}

\bookpart {
  

\header {
  title = "Chapter IV"
  subsubtitle = "Irregular rhythms: triplets and duplets"
}

\score {
  \new Staff \with {
    instrumentName = "4.1"
  } \solfege_IV_I
}


}

\score {
  \new Staff \with {
    instrumentName = "33"
  } \solfege_XXXIII
}

\score {
  \new Staff \with {
    instrumentName = "34"
  } \solfege_XXXIV
}

\score {
  \new Staff \with {
    instrumentName = "35"
  } \solfege_XXXV
}

\score {
  \new Staff \with {
    instrumentName = "36"
  } \solfege_XXXVI
}

\score {
  \new Staff \with {
    instrumentName = "37"
  } \solfege_XXXVII
}

\score {
  \new Staff \with {
    instrumentName = "38"
  } \solfege_XXXVIII
}



\score {
  \new Staff \with {
    instrumentName = "42"
  } \solfege_XLII
}

\score {
  \new Staff \with {
    instrumentName = "43"
  } \solfege_XLIII
}

\score {
  \new Staff \with {
    instrumentName = "44"
  } \solfege_XLIV
}

\score {
  \new Staff \with {
    instrumentName = "45"
  } \solfege_XLV
}

\score {
  \new Staff \with {
    instrumentName = "46"
  } \solfege_XLVI
}

\score {
  \new Staff \with {
    instrumentName = "47"
  } \solfege_XLVII
}

\score {
  \new Staff \with {
    instrumentName = "48"
  } \solfege_XLVIII
}

