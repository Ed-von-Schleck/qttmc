\version "2.12.02"

\header {
  title = "What We Wanted"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 20)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=80
  \clef treble
  \key a \minor
  \time 2/4
}

melody = \relative c'' {
r8^shuffled e16 d e8 e16 d
e d c a~ a e' c es~
es8 es d16 c~ c as~
as4 r

r8 e'16 d e8 e
e16 d c a~ a e' c es~
es8 es d16 c~ c as~
as4 r4

g8 a16 b~ b c~ c d~
d e~ e8 f g16 gis~
gis gis e8 d e16 e~
e4 r16 e e e~

e4 r16 e e e~
e4 r16 e e8
e e e16 e e e~
e4 r4


r8 c b16 a~ a d~ 
d e~ e4.
r8 cis b16 a~ a e'~ 
e2

r8 c b16 a~ a8 
e' e e e
e g16 e~ e4~
e4 r

r8 c b16 a~ a d~ 
d e~ e4.
r8 cis b16 a~ a e'~ 
e2

r8 c b16 a~ a8 
e' e e e
e g16 e~ e4~
e4 r8 e

e g16 e~ e4
r16 gis, gis8 gis a16 c~
c8 r4.
r2
 \bar ":|"
}

secondVoice = \relative c' {

}

text = \lyricmode {
made a list of the peo -- ple I hate
and I put it on my blog
spawned a so -- lid four -- hun -- dred flames
and got men -- tioned on slash -- dot

it's with -- out pre -- ce -- dent what at -- ten -- tion whores we be -- came
give me five, give me ten,
give me fif -- ten mi -- nutes of fame

it's what we wan -- ted
it's what we got
it's what we al -- ways have been drea -- ming of

it's what we wan -- ted
it's what we got
it's what we al -- ways have been drea -- ming of been drea -- ming of
there's no tur -- ning back
}

textZwei = \lyricmode {
killed a cat in my base -- ment to -- day 
cap -- tured it on vi -- de -- o
you -- tube earned me ten -- thou -- send plays
for my lit -- tle hor -- ror show

is it me, or is it all those peo -- ple _  who's to blame?
}

textDrei = \lyricmode {
found some hookers that don't mind be -- ing filmed
and I booked them o -- ver night
got some hand -- some pro -- fit of it
on my slick ama -- teur porn site

conti -- nu -- ous pub -- lic ex -- po -- sure _ takes a -- way all shame
}

harmonies = \chordmode {
\germanChords
a1:m f:m a:m f:m
g e a2:m g e1:7
f2 d a c f d a c
f d a c f d a g f e a1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff = gesang <<
      \new Voice = christian { <<  \global \melody  >> }
%      \new Voice = stephan {\voiceTwo <<   \global \secondVoice  >> }
    >>
    \new Lyrics \lyricsto "christian" \text
    \new Lyrics \lyricsto "christian" \textZwei
    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}