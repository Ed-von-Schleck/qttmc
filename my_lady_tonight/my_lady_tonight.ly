\version "2.11.57"

\header {
  title = "(You Could Be) My Lady Tonight"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=130
  \clef treble
  \key g \minor
  \time 4/4
}

melody = \relative c' {
%%%% Intro
  f8 r f r f f f r
  f f f f f f f r
  f f f f f f d f~
  f2 r2

  f8 r f r f f f r
  f f f f f f f r
  f f f f f f d g~
  g2 r8 g bes c

%%%% Refrain
  \bar "|:"
  d8( c) bes c d( c) bes c
  d c bes f g bes~ bes d
  r c bes c d c bes bes(
  g2) r8 g bes c

  d8( c) bes c d( c) bes c
  d c bes f g bes~ bes d
  r c bes c d c bes bes(
  g2) r2

%%%% Verse
  r2. f8 f
  e e~ e f~ f e~ e e~
  e d~ d4 r4 g,8 a
  bes c~ c d( c bes~ bes4)

  r2 r8 f' f f
  e e~ e f~ f e~ e e~
  e d~ d4 r4 g,8 a
  bes c~ c d( c bes~ bes4)

  r2 r8 f' f f
  e e~ e f~ f e~ e e~
  e d~ d4 r4 g,8 a
  bes c~ c d( c bes~ bes4)

  r2 r8 f' f f
  e e~ e f~ f e~ e e~
  e d~ d4 r4. g8~
  g2 r8 g bes c \bar ":|"
}

secondVoice = \relative c' {


}

text = \lyricmode {
  damped light, fri -- day night,
  lots of pret -- ty ass in sight,
  e -- very -- where a girl to a -- dore

  hot stuff, play -- in tough,
  beau -- ti -- ful is not e -- nough,
  you have got that some -- thing and more

  cause when you do __ what you do __
  and you're mo -- ving like that, ho -- ney,
  you could be my la -- dy to -- night __

  go on and do __ what you do __
  don't stop mo -- ving like that, ho -- ney,
  you could be my la -- dy to -- night __

  and you know just what that means, girl,
  it's called ma -- king love __
  we're gon -- na do it all night long, girl,
  ne -- ver get e -- nough __

  so keep on dan -- cing like a god -- dess
  keep it go -- in on __
  you make me cra -- ving for your hot -- ness
  yeah __ cause when you
  
  
}

textZwei = \lyricmode {

}

textDrei = \lyricmode {

}

harmonies = \chordmode {
  \germanChords
  g1:m7
  g:m7
  g:m7
  cis

  g1:m7
  g:m7
  g:m7
  es

  bes2 f
  g:m es
  bes f
  g1:m

  bes2 f
  g:m es
  bes f
  g1:m

  bes1
  c
  g:m
  g:m

  bes1
  c
  g:m
  g:m

  bes1
  c
  g:m
  g:m

  bes1
  c
  g:m
  es
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \context Staff = gesang <<
      \context Voice = christian { <<  \global \melody  >> }
%      \context Voice = stephan { \voiceTwo <<   \global \secondVoice  >> }
    >>
    \new Lyrics \lyricsto "christian" \text
%    \new Lyrics \lyricsto "christian" \textZwei
%    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}