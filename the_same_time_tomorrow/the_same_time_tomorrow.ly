\version "2.11.57"

\header {
  title = "The Same Time Tomorrow"
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
  \key d \minor
  \time 4/4
}

melody = \relative c' {
%%%% Intro
r8^\markup{\italic shuffled} f f d f r f r
f r f r f f f r
f f f f f r f r
f r f r f f f r
f f f f f r f r
f r f r f f f r
e e e e e r e r
e r e r e e e r

r f f f f r f r
f r f r f f f r
f f f f f r f r
f r f r f f f r
f f f f f r f r
f r f r f f f r
e e e e e r e r
e r e r e e e r

r2 r8 d' d d
d4 d8 c d a~ a4
r2 r8 a a g
a c~ c c( a~) a4
r2 r8 d d d
d4 d8 c d a~ a4
r2 r8 a a g
a c~ c c( a~) a4

r2 r8 d d d
d4 d8 c d a~ a4
r2 r8 a a g
a c~ c c( a~) a4
r2 r8 d d d
d4 d8 c d a~ a4
r2 r8 a a g
a c~ c c( a) a d,\bar "|."
}

secondVoice = \relative c' {


}

text = \lyricmode {
you're loo -- king like a school -- boy's fan -- ta -- sy
tell -- ing me that late -- ly you've been wat -- ching me
I'm af -- raid I can -- not say the same of you
I have ne -- ver no -- ticed you be -- fore, I do

be -- lieve you're ab -- so -- lute -- ly gor -- geous, I
won -- der how I ne -- ver saw you round; I lie:
girl, I tell you, we've got some -- thing go -- in on
how a -- bout we leave this place and get it on

and at the same time to -- mor -- row
I'll wear that kno -- wing smile
you might re -- turn it, but you know
it stays that way, and I'll

be -- come the same man I used to
I used to be be -- fore
I know that I'll ne -- ver lose you
and so you won't get more
of me
  
}

textZwei = \lyricmode {

}

textDrei = \lyricmode {

}

harmonies = \chordmode {
  \germanChords
d1*2:m bes g a1:m c
d1*2:m bes g a1:m c


bes1*2 d bes d
bes d bes d 
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