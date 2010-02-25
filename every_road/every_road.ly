\version "2.11.57"

\header {
  title = "Every Road"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=120
  \clef treble
  \key a \minor
  \time 4/4
}

melody = \relative c' {
%%%% Intro
a4 e' e e
d8 c~ c d~ d4 d8 c
d4 d d8 e~ e d~ 
d c~ c4 r2

a4 e' e e
d8 c~ c d~ d4 d8 c
d4 d d8 e~ e d~ 
d c~ c4 r4 e8 e

e4 e g8 g g g
e4 e g g8 g
g4 g g a8 g~
g f~ f4 r8 f f f

e4 e g g
e8 e~ e g~ g4 r8 g
g4 g b8( a) g a~
a4 r4 g a8 a~

%%%% Refrain %%%%
a1
r2 e'8 e~ e f~
f4 f f e
d4. d8~ d4 e~

e1
r2 e8 e~ e f~
f4 f f e
d4. d8~ d4 e~

e1
r2. e4
f f r e
d d r d

e e r d
c c r c
d d r c
b4. b8~ b4 a~

a1~
a
\bar ":|"
}

secondVoice = \relative c' {

}

text = \lyricmode {
Post -- cards on the kit -- chen wall make me dream of fo -- reign pla -- ces
un -- fa -- mi -- liar voi -- ces, noize and the smile of friend -- ly fa -- ces
but I got no mo -- ney and it won't change soon so there's no -- where I'll be go -- ing
but e -- ven if I flew up to the moon I ne -- ver would be gone away from you

e -- very road is lea -- ding back to you
e -- very word is spel -- ling on -- ly you
no mo -- ney could buy my
a roc -- ket to fly me
to pla -- ces a -- way from you 
}

textZwei = \lyricmode {
I don't need to tra -- vel far _ for girls, don't spend a pen -- ny
try -- ing to re -- sort to sex_as an es -- cape, and I had plen -- ty
but it ain't no use with e -- very girl se -- duced and with e -- very heart I've bro -- ken
I have -- n't gotten any clo -- ser to my goal to fi -- na -- ly for -- get bout you _

e -- very girl is just a shadow of you
e -- very mor -- ning I wake up to_miss you
no wo -- man could give me
a fee -- ling that leaves me
not thin -- king 'bout on -- ly you
}

textDrei = \lyricmode {
smo -- king weed on rai -- ny days, wai -- ting till the day is o -- ver, 
wri -- ting me -- lan -- cho -- lic songs just to sing them in the sho -- wer
it is strange, but I can -- not lo -- cate the hurt, e -- very -- where I search, it_feels emp -- ty
each time I try to put my fin -- ger on_it, a phan -- tom it be -- comes like you _

e -- very song I sing I sing for you
e -- very thought I think I think of you
_ e -- ve -- ry mo -- ment
don't know where the time went
my heart's mel -- ting with -- out you
}

harmonies = \chordmode {
\germanChords
a1:m e:m7 g d:m7
a:m e:m7 g d:m7
a:m e:m7 g d:m7
a:m e:m7 g d:m7

a1*2 d1:m g
a1*2 d1:m g
a1*2 d1:m g
c f d:m e:m

a1*2
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
    \new Lyrics \lyricsto "christian" \textDrei
  >>
  \layout { }
  \midi { }
}