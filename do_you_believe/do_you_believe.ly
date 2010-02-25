\version "2.12.02"

\header {
  title = "Do You Believe"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=130
  \clef treble
  \key e \major
  \time 4/4
}

melody = \relative c'' {
\partial 16 r16 \bar "|:"
r1
r1
r1
r1
\bar "||"
r1
r1
\break
r8 b a a gis16 gis~ gis fis~ fis8 fis
e e d d16 b~ b4 r
r8 b' a a gis16 gis~ gis fis~ fis8 fis
e e d d16 cis~ cis4 r

r8 b' b b d~ d16 b~ b8 a
gis16 a~ a gis~ gis8 e a16 gis~ gis gis~ gis a~ a gis~
gis r e8 e e e16 e~ e fis~ fis8 g
a16 g fis8~ fis4 r4. b8
\bar "||"
%%%%%%%%%%%
b cis16 e~ e8 cis b16 cis~ cis e~ e8 cis16 cis
b8 cis16 e~ e gis,~ gis fis~ fis4 r8 fis8

fis gis16 b~ b8 gis fis16 gis~ gis b~ b r gis fis
r8 gis16 b~ b fis( gis) gis( e4) r

b'8 cis16 e~ e8 cis b16 cis~ cis e~ e8 cis16 cis
b8 cis16 e~ e gis,~ gis fis~ fis4 r8 fis8

fis gis16 b~ b8 gis fis16 gis~ gis b~ b8 gis
fis16 gis~ gis b~ b cis( dis) e~ e8 r d16 e d e
 \bar ":|"
}

secondVoice = \relative c' {

}

text = \lyricmode {
My head was buz -- zing when the tea -- chers stopped to preach
a -- bout the goals in life I am sup -- posed to reach
I don't re -- call that I vo -- lun -- teered for a -- ny of that shit
so long, you suc -- kers, I am sick of it


do you be -- lieve in rock -- n -- roll and the things for which it stands
buy a gui -- tar, learn how to sing or don't and form a band
do you be -- lieve there's more to life than ear -- ning mo -- ney fast
go sell your soul for rock -- n -- roll and you'll have fun at last
do you be -- lieve
}

textZwei = \lyricmode {
there seems to be a ta -- cit_con -- sent that I don't grok
get a de -- gree in some -- thing, find a de -- cent job
it's ex -- pec -- ta -- tions and fun -- ny looks from peo -- ple that you meet
it's not a law or some -- thing, is -- n't it?
}

textDrei = \lyricmode {


}

harmonies = \chordmode {
\germanChords
\partial 16 e16
e8 g g b a a16 g b g g e
e8 g g b a a16 g b d d e
e8 g g b a a16 g b g g e
e8 g g b a a16 g b g d8

e1
e

e1
e
g
a

e2 d e d
cis:m c b1

e4 a e a gis:m cis:m b2
fis4 b fis b fis b e2
e4 a e a gis:m cis:m b2
fis4 b fis b fis b d4.. e16
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