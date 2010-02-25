\version "2.11.57"

\header {
  title = "Everybody Loves Me"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=90
  \clef treble
  \key c \minor
  \time 4/4
}

melody = \relative c'' {
%%%% Intro
\key c \minor
r4. g8 f g as g~
g4 r2.
r4. g8 f g as g~
g d~ d f~ f es~ es r8

r4.  g8 f g as g~
g4 r2.
r4. g8 f g as g~
g d~ d f~ f es~ es r

r4.  g8 f g as g~
g4 r2.
r4. g8 f g as g~
g d~ d f~ f es~ es r

r4.  g8 f g as g~
g4 r2.
r4. g8 f g as g~
g g~ g b~ b c~ c r

\bar "||" \key c \major
c8 c c c b8. c16 r8 c~
c c c e b8. a16 r4
c8 c c g b8. c16~ c8 c~(
c16 a g8) r2. 

c8 c c c b8. c16 r8 c~
c c c e b8. a16 r4
c8 c c g b8. c16~ c8 c~(
c2~ c8 bes as g) 
 \bar "|."
}

secondVoice = \relative c' {
r4. c8 c c c b~
b4 r2.
r4. c8 c c c  b~
b b~ b b~ b b~ b r8

r4. c8 c c c b~
b4 r2.
r4. c8 c c c  b~
b b~ b b~ b b~ b r8

r4. c8 c c c b~
b4 r2.
r4. c8 c c c  b~
b b~ b b~ b b~ b r8

r4. c8 c c c b~
b4 r2.
r4. c8 c c c  b~
b b~ b d~ d g~ g r8

f8 f f f d8. d16 r8 e~
e e e e e8. e16 r4
f8 f f f d8. d16~ d8 e~
e4 r2. 

f8 f f f d8. d16 r8 e~
e e e e e8. e16 r4
f8 f f f d8. d16~ d8 es~(
es2~ es8 d4 c8)
}

text = \lyricmode {
I've cut my hair skew
it looks just like Rus -- sell Lis -- sack's
and bought a brand new
old a -- di -- das track -- suit jac -- ket

I've dyed my hair black
and bleached it to not look e -- mo
I watch ar -- te tracks
I'm in -- die like all guys I know

e -- very -- bo -- dy loves me
e -- very -- bo -- dy loves me
e -- very -- bo -- dy loves me now __

e -- very -- bo -- dy loves me
e -- very -- bo -- dy loves me
e -- very -- bo -- dy loves me now __
}

textZwei = \lyricmode {
Each sum -- mer I go 
by train, but pre -- tend to hitch -- hike
to rock -- n -- roll shows
buy shit -- loads of band mer -- chan -- dize

I know what is on
and sneer at the com -- mon peo -- ple
I tota -- ly con -- form
to all in -- de -- pen -- dent  fea -- tures
}

textDrei = \lyricmode {
I vague -- ly con -- sent
to an -- ti -- a -- meri -- can fee -- lings
don't quite un -- der -- stand
what -- e -- ver it is Thom Yorke sings

I like to pro -- test
it feels like a -- chie -- ving some -- thing
I'm liked as I am
if I let them do my thin -- king
}

harmonies = \chordmode {
  \germanChords
c2:m f:m g g:7
c2:m f:m g g:7
c2:m f:m g g:7
c2:m f:m g g:7
c2:m f:m g g:7
c2:m f:m g g:7
c2:m f:m g g:7
c2:m f:m g g:7

d:m7 g:7 c a:7
d:m7 g:7 c cis:dim
d:m7 g:7 c a:7
d:m7 g:7 as2 bes2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \context Staff = gesang <<
      \context Voice = christian { \voiceOne <<  \global \melody  >> }
      \context Voice = stephan { \voiceTwo <<   \global \secondVoice  >> }
    >>
    \new Lyrics \lyricsto "christian" \text
    \new Lyrics \lyricsto "christian" \textZwei
    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}