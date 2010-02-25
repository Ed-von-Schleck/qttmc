\version "2.12.02"

\header {
  title = "Messiah"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=80
  \clef treble
  \key b \minor
  \time 4/4
}

melody = \relative c'' {
R1*4
d2 \times 2/3 {d4 cis b}
a4. g8~ g4( fis8) r
d'2 \times 2/3 {d4 cis b}
a4. g8~ g4( fis8) r

d'2 \times 2/3 {d4 cis b}
a4. g8~ g4( fis8) r
d'2 \times 2/3 {d4 cis b}
a4. g8~ g4( fis8) r

d'2 \times 2/3 {d4 cis d}
fis8 cis~( cis b ais2)
d4. d8 e d~ d cis~
cis a fis2.

d'2 \times 2/3 {d4 cis d}
fis8 cis~( cis b ais2)
d4 d e d
f e d bes

b1
R1*3
 \bar ":|"

d4. r8 d cis~ \times 2/3 {cis b cis}
d4. r8 d c~ \times 2/3 {c bes c}
a4. r8 a8 g f g \break
a16 a~ a a~ a8 a a a a cis16 d~

d4. r8 d cis~ \times 2/3 {cis b cis}
d4 r8 d16 d d8 d d16 e~ e f~
f4. r16 f f8 f f f
e16 e~ e e~ e8 e e e e e16 fis~

fis1\fermata \bar "|."
}

secondVoice = \relative c' {

}

text = \lyricmode {
don't cut off the wi -- re
post -- mo -- dern mes -- si -- ah
words on the ho -- ri -- zon
real -- world ad -- ver -- tise -- ment

all things be -- ing e -- qual __
I pre -- fer it di -- gi -- tal
I'll ne -- ver get dir -- ty __
si -- lence is my mu -- sic in this world

pain, I don't know what's pain
pain does not e -- xist
may -- be once my bo -- dy felt it
it will not be missed

u -- ni -- form -- ly spread
o -- ver all e -- ter -- ne -- ty
the tick -- ling of e -- mo -- tion 
is a dis -- tant me -- mo -- ry
}

textZwei = \lyricmode {
suns in e -- very co -- lor
worth e -- ve -- ry dol -- lar
life on worlds un -- mea -- sured
all cor -- po -- rate trea -- sure
}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords
b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m
b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m

b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m
b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m

b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m
b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m

b1:m fis:7 g d:maj7
b1:m fis:7 g g:m7

b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m
b4.:m b8:sus4 b4.:m a8:^1
d4. d8:sus2~ d:sus2 e4.:m

b1:m bes f d
b:m bes f e fis:7
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
%    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}