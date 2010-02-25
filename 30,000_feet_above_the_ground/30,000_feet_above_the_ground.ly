\version "2.12.02"

\header {
  title = "30,000 Feet Above The Ground"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 15)
#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
  \tempo 4=80
  \clef treble
  \key fis \minor
  \time 4/4
}

melody = \relative c' {
\partial 8 e8
fis fis~ fis fis~ fis r fis fis
fis4 e cis e8 cis~
cis2 r2
r2.. e8

fis4 fis fis8 fis r e 
fis4 e cis e8 cis~
cis2 r2
r2.. e8

fis4 fis fis8 fis r e 
fis4 e cis8 e~ e cis~
cis2 r2
r2.. e8

fis4 fis fis8 fis~ fis fis~
fis4 e8 cis~ cis4 e8 cis~
cis2 r2
r2.. cis8

d4 cis8 d~ d e~ e fis~
fis e~ e fis~ fis gis~ gis4
a gis a8 b~ b cis~
cis2 r4. cis,8

d4 cis8 d~ d e~ e fis~
fis e~ e fis~ fis gis~ gis4
a gis a8 b~ b cis~
cis2 r4. cis,8

d4 cis8 d~ d e~ e fis~
fis e~ e fis~ fis gis~ gis4
a gis a8 b~ b cis~
cis2 r4 cis,8 cis

d4 cis8 d~ d e~ e fis~
fis e~ e fis~ fis gis~ gis4
a gis a8 b~ b cis~
cis2 r4 cis8 cis

b2. b8 a~
a2. d,8 cis~
cis1
r2. cis'8 cis

b2. b8 a~
a2. d,8 cis~
cis1
r2. cis'8 cis

b2. b8 a~
a2. d,8 cis~
cis1
r2. cis'8 cis

b2. b8 a~
a2. d,8 cis~
cis1
r2. cis'8 cis

\bar ":|"

b2. b8 a~
a2. d,8 cis~
cis1
r2. cis'8 cis

b2. b8 a~
a2. d,8 cis~
cis1
r2. cis'8 cis

b2. b8 a~
a2. d,8 cis~
cis1
r2. cis'8 cis

b2. b8 a~
a2. d,8 cis~
cis1
r2..
\bar "|."
}

secondVoice = \relative c' {

}

text = \lyricmode {
the to -- wer's go and the en -- gines start to roar
a fi -- nal se -- cond, I have been here be -- fore
a gen -- tle pre -- sure, I pushed in -- to my seat
I feel strange -- ly in -- ert des -- pite the speed

and while the world that we be -- live in starts to dis -- ap -- pear
and is re -- placed by struc -- tures man has made o -- ver the years
and struc -- tures for -- ming pat -- terns but no mes -- sage can be found
for a vie -- wer fly -- ing thir -- ty -- thou -- send feet a -- bove the ground

how we worked with -- out a scheme
how we failed to find a theme
how se -- clu -- ded are our dreams
from each o -- ther so it seams
}

textZwei = \lyricmode {
I try to put my -- self _  in -- to the minds
of_the peo -- ple _ who have lived be -- force manned flight
how they dreamed to gain a_su -- pe -- rior point of view
would they be dis -- il -- lu -- sioned by it, too?

I come to the con -- clu -- sion that it's bet -- ter not to know
the so -- be -- ring re -- a -- li -- ty will al -- ways feel re -- mote
when -- e -- ver we ex -- pect a hid -- den truth to be a -- round
_ we still can't see it thir -- ty -- thou -- send feet a -- bove the ground

and we dream of truth in vain
and the void in -- side re -- mains
it is built in -- to our brains
it is flow -- ing through our veins

I am fly -- ing in a plane
I am fly -- ing in a plane
I am fly -- ing in a plane
I am fly -- ing in a plane
}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords
\partial 8 r8
d1 b:m fis:m fis2:m e
d1 b:m fis:m fis2:m e
d1 b:m fis:m fis2:m e
d1 b:m fis:m fis2:m e

b1:m d fis:m a
b:m d fis:m a
b:m d fis:m a
b:m d fis:m a

b:m d a fis:m
b:m d a fis:m
b:m d a fis:m
b:m d a fis:m

b:m d a fis:m
b:m d a fis:m
b:m d a fis:m
b:m d a fis:m
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