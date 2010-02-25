\version "2.11.57"

\header {
  title = "Havana Cola"
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
\partial 8 bes8
\bar "|:"
c d~ d es~ es es c8 bes
c d~ d es~ es es r bes
c4 d8 d es4 c8 bes
c d~ d es~ es es r bes
c c d4  es c8 bes
c d~ d es~ es c f e8
r2. e8 e
es4 es8 es es es r8 bes

c d~ d es~ es es c8 bes
c d~ d es~ es es r bes
c4 d8 d es4 c8 bes
c d~ d es~ es es r bes
c c d4  es c8 bes
c d~ d es~ es c f e8
r2. e8 e
es4 es8 es es es r8 d~

\bar "||"
d2 r8 d8 d c~
c a~ a g~ g a~ a g~
g1
r2 r8 es' es d~

d2 r8 d8 d c~
c a~ a g~ g a~ a g~
g1
r2 r8 es' es d~

d2 r8 d8 d c~
c a~ a g~ g a~ a g~
g1
r2 r8 es' es d~

d2 r8 d8 d c~
c a~ a g~ g a~ a g~
g1
r2 r4 c8 c
\bar ":|"
}

secondVoice = \relative c' {

}

text = \lyricmode {
My fa -- vourite band is play -- ing rock -- 'n -- roll -- a,
a girl by my side, a ha -- va -- na co -- la,
I got a good life, just un -- til the time I wake up
but it does -- n't get bet -- ter

my fa -- vourite band is play -- ing rock -- 'n -- roll -- a,
a girl by my side, a ha -- va -- na co -- la,
I got a good life, so you bet -- ter don't I wake up
but I don't think it mat -- ters

now __ cause I'm go -- ing back to sleep __
please al -- low __ to ig -- nore the a -- larm beep __
a -- ny -- how __ I won't go to work to -- day __
I don't care __ what the o -- ther peo -- ple say __
cause my
}

textZwei = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _
why __ does the world re -- volve so fast __
time goes by __ and turns pre -- sent in -- to past __
e -- very -- where __ peo -- ple try and plan a -- head __
I don't care __ when I'm ly -- ing in my bed

}

textDrei = \lyricmode {

}

harmonies = \chordmode {
  \germanChords
r8
as4 as:6 as as:6 f f:6 f f:6
as as:6 as as:6 f f:6 f f:6
as as:6 as as:6 f f:6 f f:6
c1 es

as4 as:6 as as:6 f f:6 f f:6
as as:6 as as:6 f f:6 f f:6
as as:6 as as:6 f f:6 f f:6
c1 es

bes1 f
c es
bes1 f
c es
bes1 f
c es
bes1 f
g bes
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \context Staff = gesang <<
      \context Voice = christian { <<  \global \melody  >> }
%      \context Voice = stephan {\voiceTwo <<   \global \secondVoice  >> }
    >>
    \new Lyrics \lyricsto "christian" \text
    \new Lyrics \lyricsto "christian" \textZwei
%    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}