\version "2.18.2"

global = {
  \key c \major
  \numericTimeSignature
  \override Staff.InstrumentName.self-alignment-X = #CENTER
  \override Staff.InstrumentName.font-size = 6
  \override StaffGroup.InstrumentName.self-alignment-X = #CENTER
  \override StaffGroup.InstrumentName.font-size = 6
  \omit Score.BarLine
  \omit Score.TimeSignature
  \omit Score.BarNumber
  \override Stem.transparent = ##t
}

get_notes =
#(define-music-function
  (parser location notes exercise_notes)
  (ly:music? ly:music?)
    #{
      \global
      \time 10/4
      \override NoteHead.color = #red
      \override Score.LedgerLineSpanner.color = #red
      #notes 
      \undo \omit Score.BarLine
      \bar "||"
      \stopStaff
      \override NoteHead.color = #black
      \override Score.LedgerLineSpanner.color = #black
      \time 4/4
      \startStaff
      \time 1/4
      s4
      \time 4/4
      \omit Score.BarLine  
      #exercise_notes
      \undo \omit Score.BarLine
      \bar "|."     
   #}
)

treble_notes_I = \relative c' {
  \clef treble
  c4 s d s e s f s g s 
}

treble_exercise_I = \relative c' {
  c4 d e d | f e f d | g f g d | g f e d |
  f e d c | d e g c, | g' e c d | d f d e |
  f d f c | g' c, g' e | d g e c | d e f g |
  c, d e f | c f d g | e f d c | e g f c |
}

treble_notes_II = \relative c' {
  \clef treble
  g'4 s a s b s c s d s 
}

treble_exercise_II = \relative c' {
  a' d c b | g c a d | g, a c b | a g d' c |
  a b c g | a d c b | c a g d' | a g c d |
  b g b a | c d b g | a c a d | g, a d c |
  b a c g | a b d c | b g a b | c a g d' |
}

treble_notes_III = \relative c' {
  \clef treble
  d'4 s e s f s g s a s 
}

treble_exercise_III = \relative c' {
  f'4 e a d, | g a f e | d e f d | e a g a |
  g d e d | a' g a f | e d f g | a d, e d |
  f g e a | f e d f | g e a f | d e g a |
  f g e d | e g a d, | e f g a | e d f e |
}

treble_notes_IV = \relative c' {
  \clef treble
  b'' s c s d s e s f s 
}

treble_exercise_IV = \relative c' {
  e''4 f d c | b d e c | d e f d | f b, c b |
  d e c d | b c f e | d c b d | e c d f |
  b, c b d | e d e f | c d b e | d c b e |
  f e d f | b, c e f | c b f' e | c d e b |
}

treble_notes_V = \relative c' {
  \clef treble
  c4 s b s a s g s f s 
}

treble_exercise_V = \relative c' {
  b4 c f, g | b a c b | g a f c' | a g b c |
  g f a f | g c b f | c' b g f | b a g c |
  a g b c | a c f, g | b g f c' | g c b f |
  g f a c | b g a f | g b a c | g f b c |
}

bass_notes_I = \relative c' {
  \clef bass
  c4 s b s a s g s f s
}

bass_exercise_I = \relative c' {
  g a b c | a g f b | f a g c | b a b g | 
  f a c b | g b g a | b g b a | c b a g |
  b f c' f, | b g c a | f g a b | g f c' b |
  b c g a | f g c b | g f c' a | b g a c |
}

bass_notes_II = \relative c' {
  \clef bass
  f,4 s e s d s c s b s
}

bass_exercise_II = \relative c' {
  c,4 d e b | f' d f e | d c e f | b, c d c |
  b d f e | d e b c | d c e f | e c b f' |
  b, c b e | d e f c | b d c e | d f b, c |
  e f b, d | c e d f | e f c b | c e d b |
}

bass_notes_III = \relative c' {
  \clef bass
  b,4 s a s g s f s e s
}

bass_exercise_III = \relative c' {
  f,,4 g e a | g e b' a | f e g e | f b a g |
  a b f e | b' a g e | a b e, f | g f a b |
  g e f a | b a g f | a g b a | g e f a |
  b g e f | a f a b | g f a e | b' a b e, |
}

bass_notes_IV = \relative c' {
  \clef bass
  d,,4 s c s b s a s g s

}

bass_exercise_IV = \relative c' {
  c,,4 b c d | g, a b d | c g a c | d c a g |
  a c b d | a g b d | c a c b | d g, c b |
  a c d g, | c a g b | a g d' b | c d c g |
  a g b c | d a g c | b a b g | d' a c g |
}

bass_notes_V = \relative c' {
  \clef bass
  c4 s d s e s f s g s
}

bass_exercise_V = \relative c' {
  f4 e c g' | e f d c | d g f g | e c f e |
  d g f c | e g c, d | e c d f | g e f c |
  d g f d | c e d g | f c g' f | e f g c, |
  d c e f | g c, d c | g' f d e | c d f e |
}

final_exercise_lines = \relative c' {
  \global
  \override Score.Clef.color = #red
  \clef bass
  g,4 d' f c' a e, c g' f' \clef treble c' b' f' d g, e f' c' a g,
  \clef bass e c f, d a' c d, g, c, e a, g' \clef treble a' c e b' a' d, b g c'
  \clef bass c,, b, f' a b, e, a, c b' \clef treble e' d' f g, a' e' c f, d 
  \clef bass a, d, c' g, b a, e' f' a d, c' \clef treble e b' f' d a' g, c, a
  \clef bass a c f, g, d' b g
  \undo \omit Score.BarLine
  \bar "|."
}

final_exercise_spaces = \relative c' {
  \global
  \override Score.Clef.color = #red
  \clef treble
  d4 c' f, a e' c g' \clef bass b,, a, c f, d a' e' \clef treble g d' f b, a' c g' e a,
  \clef bass g, a, f b, d a' c b' \clef treble d f c' a g' b c, f, a d,
  \clef bass g, c, a d, f \clef treble e''' d' b a, d, c' a f g,
  \clef bass e f, c' a g' b c, \clef treble f''' d c, e f, a d, g,
  \clef bass f' d c, g' e f, a
  \undo \omit Score.BarLine
  \bar "|."
}

final_exercise = \relative c' {
  \global
  \override Score.Clef.color = #red
  \clef treble
  c4 d e c g' f f' a c e g, a b, \clef bass c, g e, f g c, d f a c b
  \clef treble g' f' e c b g' \clef bass c,, d f g, e b c c' \clef treble  f a b g' c b f' d
  c' g e c d d, \clef bass g, c, d f e \clef treble c'' g, a' b f g b, e c'
  \clef bass f, g c, f, e g g, d e a, b \clef treble c'' g'' d b b' a c, g e f \clef bass c,
  d g, f g f' a d, \clef treble g f c' e d a' e e' g, a d, \clef bass e c, f g, f d g, a c
  \clef treble b'' g e' a c b a' g \clef bass c,,, c, d g, a f' g d' c a b g e f' \clef treble
  a c d' a g' f e b c a
  \undo \omit Score.BarLine
  \bar "|."
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.1"
      } {
      \new Voice = "v" {
        \get_notes \treble_notes_I \treble_exercise_I
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        do re mi fa sol
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        C D E F G
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.2"
      } {
      \new Voice = "v" {
        \get_notes \bass_notes_I \bass_exercise_I
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        do si la sol fa
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        C B A G F
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.3"
      } {
      \new Voice = "v" {
        \get_notes \treble_notes_II \treble_exercise_II
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        sol la si do re
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        G A B C D
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.4"
      } {
      \new Voice = "v" {
        \get_notes \bass_notes_II \bass_exercise_II
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        fa mi re do si
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        F E D C B 
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.5"
      } {
      \new Voice = "v" {
        \get_notes \treble_notes_III \treble_exercise_III
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        re mi fa sol la
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        D E F G A
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.6"
      } {
      \new Voice = "v" {
        \get_notes \bass_notes_III \bass_exercise_III
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        si la sol fa mi
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        B A G F E
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.7"
      } {
      \new Voice = "v" {
        \get_notes \treble_notes_IV \treble_exercise_IV
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        si do re mi fa
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        B C D E F
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.8"
      } {
      \new Voice = "v" {
        \get_notes \bass_notes_IV \bass_exercise_IV
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        re do si la sol
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        D C B A G
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.9"
      } {
      \new Voice = "v" {
        \get_notes \treble_notes_V \treble_exercise_V
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        do si la sol fa
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        C B A G F
      }
    }
  >>
}

\score {
  <<
    \new Staff = "s" \with {
        instrumentName = "0.10"
      } {
      \new Voice = "v" {
        \get_notes \bass_notes_V \bass_exercise_V
      }
    }
    \new Lyrics \with { alignAboveContext = "s" } {
      \lyricsto "v" {
        do re mi fa sol
      }
    }
    \new Lyrics \with { alignBelowContext = "s" } {
      \lyricsto "v" {
        C D E F G
      }
    }
  >>
}

\score {
  \new Staff \with {
    instrumentName = "0.11"
  }
  \final_exercise_lines
}

\score {
  \new Staff \with {
    instrumentName = "0.12"
  }
  \final_exercise_spaces
}

\score {
  \new Staff \with {
    instrumentName = "0.13"
  }
  \final_exercise
}


