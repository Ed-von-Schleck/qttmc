\version "2.11.57"

\header {
  title = "Love Is Easy"
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
  \key e \minor
  \time 4/4
}

melody = \relative c'' {
%%%% Intro
r2 r8 e e16 d e8
\repeat volta 2 {
e4 d b a8. e16
e8 e g a16 b~ b8 r4.
e4 d b a8. e16
e8 e g a16 b~ b8 r4.
e4 d b a8. e16
e8 e g a16 b~ b8 r4.
e4 d b a8. e16
e8 e g e16 e~ e8 r4.

fis8 fis fis16 e fis g~ g8 e e e
fis fis16 fis~ fis e~ e g~ g8 r4 e8

fis8 fis16 fis fis8 e16 g~ g8 e e e
cis' a fis16 fis~ fis fis( e8) r4 e8

fis8 fis fis e16 g~ g e~ e  e~ e e~ e8
fis fis16 fis~ fis e~ e g~ g8 r4 e8

fis8 fis fis e16 g~ g8 e e e
b'8 b b b b e e16 d e8
}
}

secondVoice = \relative c' {

}

text = \lyricmode {
I'm fin -- ding out:
Love is ea -- sy if it's not what you want
come and please me but it won't be for long
gua -- ran -- tee me to lis -- ten to this song
love is ea -- sy but it's not what I want

re -- cent po -- pu -- lar cul -- ture
o -- ver -- es -- ti -- mates this thing
the mis -- sion to find the right one
and the hap -- pi -- ness it brings

they act as if a ma -- ting part -- ner
makes your life full -- filled,
if you can't get your life straight then
no o -- ther per -- son will
I'm fin -- ding out:
}

textZwei = \lyricmode {
_ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _

I turn on _ my t -- v
all I see is a cli -- che
an o -- ver -- ro -- man -- tic mo -- del
from the world of yes -- ter -- day

so I don't buy their con -- cept
cause it does -- n't seem to fit
I look for in -- de -- pen -- dance and not
a re -- la -- tion -- ship
I'm tel -- ling you:
}

textDrei = \lyricmode {

}

harmonies = \chordmode {
  \germanChords
b1:7.9+

e1:m7 a4.. e16:m7~  e2:m7
e1:m7 a4.. e16:m7~  e2:m7
e1:m7 a4.. e16:m7~  e2:m7
e1:m7 a4.. e16:m7~  e2:m7

d2:maj7 c:maj7 d2:maj7 c:maj7
d2:maj7 c:maj7 d2:maj7 c:maj7
d2:maj7 c:maj7 d2:maj7 c:maj7
d2:maj7 c:maj7 b1:7.9+
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