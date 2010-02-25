\version "2.12.02"

\header {
  title = " A Part Of It"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=140
  \clef treble
  \key e \minor
  \time 4/4
}

melody = \relative c'' {
\repeat volta 2 {
\mark \default
r4 b b b
r b b b
r d d d
e d8 b~ b4 d8 b~

b8 r b4 b b
r b b b
r d d d
e d8 b~ b4 d8 b~

b8 r b4 b b
r b b b
r d d d
e d8 b~ b4 d8 b~

b8 r b4 b b
r b b b
r d d d
e d8 b~ b4 d8 b~ \bar "||"
\mark \default

b8 r8 e,4 e e8 e
e e~ e e~ e g( fis e~
e) r e4 e e8 e
e e~ e e~ e g( fis e~
e) r e4 e e8 e
e e~ e e~ e g( fis e~
e) r e4 e fis
g fis2.

r4 e e e8 e
e e~ e e~ e g( fis e~
e) r e4 e e8 e
e e~ e e~ e g( fis e~
e) r e4 e e8 e
e e~ e e~ e g( fis e~
e) r e4 e fis
g fis e8 d~ d d~ \bar "||"
\mark \default

d2 r8 b d e~
e b~ b4 r8 e~ e d~
d2 r8 b d g~ 
g fis~ fis e~ e d~ d b~

b2 r8 b b dis~
dis dis~ dis e~ e fis~ fis b~
b4 a gis8 a b a(~
a g? e2.\fermata) \bar "||"
\mark \default

b'8 b e, e b'4 e,
b'8 e,~ e b'~ b e, r b'~
b8 b e, e b'4 e,
b'8 e,~ e b'~ b4 r8 b~

b8 b e, e b'4 e,
b'8 e,~ e b'~ b e, r b'~
b8 b e, e b'4 e,
b'8 e,~ e b'~ b4 r
}
}

secondVoice = \relative c' {
r4 e e e
r g g g
r fis fis fis
g fis8 g~ g4 fis8 e~

e8 r e4 e e
r g g g
r fis fis fis
g fis8 g~ g4 fis8 e~

e8 r e4 e e
r g g g
r fis fis fis
g fis8 g~ g4 fis8 e~

e8 r e4 e e
r g g g
r fis fis fis
g fis8 g~ g4 fis8 e~

e8
}

text = \lyricmode {
it's going to be so cool
you want to be a part of it
you're going to be see -- through
you want to be a part of it
your friend say it's o -- kay
you want to be a part of it
the new world's a brave world
you want to be a part of it

they know e -- very -- thing you see, oh __
they know e -- very -- thing you say, oh __
they know e -- very -- one you like, oh __
you don't know no -- thing 

they know e -- very song you hear, oh __
the know e -- very blog you read, oh __
the know e -- very flick you watch, oh __
you don't know  no -- thing a -- bout them

they don't tell you, cause they
don't tell a -- ny -- bo -- dy
oh, it's all love and peace and
no -- one's gon -- na get hurt

what is it they do with all you da -- ta
what is it they want from all your friends
could it be you might re -- gret it la -- ter
do you feed a mon -- ster with your hands
}

textZwei = \lyricmode {

}

textDrei = \lyricmode {


}

harmonies = \chordmode {
\germanChords
e1:m g d c
e1:m g d c
e1:m g d c
e1:m g d c

e1*2:m e:m c a1 g
e1*2:m e:m c a1 g

d e:m d c
g b e a:m

e2:m a g b
e2:m a g b
e2:m a g b
e2:m a g b
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \context Staff = gesang <<
      \context Voice = christian {\voiceOne <<  \global \melody  >> }
      \context Voice = stephan {\voiceTwo <<   \global \secondVoice  >> }
    >>
    \new Lyrics \lyricsto "christian" \text
    \new Lyrics \lyricsto "christian" \textZwei
%    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}