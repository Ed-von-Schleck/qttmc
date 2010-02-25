\version "2.12.02"

\header {
  title = "Gone For The Better"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=110
  \clef treble
  \key bes \minor
  \time 4/4
}

melody = \relative c'' {
r2^"shuffled" c8 c~ c bes~
bes as~ as2.
r4. c8 c c~ c bes~
bes as~ as ges~ ges as~ as f~

f4 r c'8 c~ c bes~
bes as~ as2.
r2 c8 c c bes~
bes as~ as ges~ ges as~ as f~

f4 r c'8 c~ c f~
f es~ es2.
r2 c8 c c f~
f es~ es des~ des es~ es c~

c4 r c8 c~ c c~
c c~ c c~ c4 r8 c
c4 c8 c~ c c~ c c~
c2 r2

es2 c
bes es~
es\glissando c4 r8 c
des c~ c des~ des( c~ c) r

es2 c
bes es~
es\glissando c4 r8 c
des c~ c des~ des( c~ c) c


bes4 r4. bes8 bes des~
des bes \times 2/3 {bes bes bes~} bes c des c~
c a~ a f~ f4 r8 f16 f
f'4 es8 des es des( bes4)

r2 r8 bes bes des~
des bes \times 2/3 {bes bes bes~} bes c des c~
c a~ a f~ f4 r8 f16 f
f'4 es8 des es des( bes4)

r2 r8 bes bes des~
des bes \times 2/3 {bes bes bes~} bes c des c~
c a~ a f~ f4 r8 f16 f
f'4 es8 des es des( bes4)

r2 r8 bes bes des~
des bes \times 2/3 {bes bes bes~} bes c des c~
c a~ a f~ f4 r8 f16 f
f'4 es8 des es des( bes4)
}

secondVoice = \relative c' {

}

text = \lyricmode {
no hard fee -- lings
or a -- ny o -- ther sen -- ti -- ments
I am brea -- thing
was -- n't it mu -- tu -- al con -- sent

If you knew me
you would -- n't no -- tice a -- ny -- thing
on my left -- hand side
the ink -- ling of a sting

see how big's the moon
he does -- n't care
sing a litt -- le tune
it's no -- thing there but me

and at times I re -- a -- lize what a fool I've been
but she's gone for the bet -- ter
my re -- ac -- tions are as plain as a slot ma -- chines
and she's gone for the bet -- ter

take your time and be my guest, find my in -- ner voice
yeah she's gone for the bet -- ter
let -- ting go, what's the big deal, it's the ob -- vious choice
now she's gone for the bet -- ter
}

textZwei = \lyricmode {

}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords
f1 ges f ges
f1 ges f ges
f1 ges f ges
f1 ges f ges

es2:m f:m ges as f1*2
es2:m f:m ges as f1*2

bes1:m bes2:m ges f1 f2 f:7
bes1:m bes2:m ges f1 f2 f:7
bes1:m bes2:m ges f1 f2 f:7
bes1:m bes2:m ges f1 f2 f:7
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