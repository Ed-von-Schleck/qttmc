\version "2.12.02"

\header {
  title = "One Way Love Affair"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 20)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=96
  \clef treble
  \key e \major
  \time 4/4
}

melody = \relative c'' {
e8 e16 e~ e e~ e dis~ dis8 cis b a
gis16 gis~ gis gis r8 a8 gis fis fis e
e cis e cis \times 2/3 {gis'4 cis, cis(}
b2) r

e'8 e e16 e~ e dis~ dis cis~ cis b~ b8 a
gis gis gis16 a~ a gis~ gis fis~ fis fis~ fis8 e
e cis r4 \times 2/3 {gis'4 cis, cis(}
b2) r4. cis8

%%%%%%

e cis e cis gis'8. b16~ b8 e,~
e cis e cis gis'8. b16~ b8 e,~
e cis e cis gis'8. b16~ b8 e,~
e2 r4. cis8

e cis e cis gis'8. b16~ b8 e,~
e cis e cis gis'8. b16~ b8 e,~
e cis e cis gis'8 gis16 b~ b8 e,~
e2 r4.. e16

%%%%%%
fis16 e~ e fis~ fis8 e fis16 e~ e fis~ fis e~ e fis~
fis8 e16 fis r8 e8 fis e fis16 e~ e8
gis b16 gis~ gis8 r gis b16 gis~ gis8 r16 gis
gis8 fis gis16 fis~ fis gis~ gis fis~ fis gis~ gis b~ b b
\bar ":|"
}

secondVoice = \relative c' {

}

text = \lyricmode {
Fill my glass with wine
a -- no -- ther ci -- ga -- rette, I'm fine, thanks,
it's her voice, her smell, her lips, her hair __

god, I coul -- dn't love her more
but she's al -- rea -- dy spo -- ken for
a one way love af -- fair __

I know she's got the right one
I en -- joy to -- night
and know I will go home a -- lone __

I pro -- mise I won't flirt
I don't want to get hurt
I don't want to break a -- ny -- one's heart __

I ha -- ven't dreamed of a -- ny -- thing
but her for weeks, I feel like sing -- ing:
I'm in love, I'm in love,
but she must ne -- ver know, please go on and
}

textZwei = \lyricmode {

}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords
e2 a:6 b:6 a:6
e2 a:6 b:6 a:6
e2 a:6 b:6 a:6
e2 a:6 b:6 a:6

fis2:m7 b:6 e cis:m7
fis:m7 b:6 e1
fis2:m7 b:6 e cis:m7
fis:m7 b:6 e1

a1 d:7 b:6 a:6
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