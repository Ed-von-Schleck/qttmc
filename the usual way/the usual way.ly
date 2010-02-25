\version "2.11.27"

\header {
  title = "the usual way"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=80
	\clef treble
	\key d \major
	\time 3/8
%%%%
fis8 fis fis
fis r d
e16 d b8 r
dis e16 fis~ fis8
g g g
fis e d16 cis~
cis4.
r8. a'16 a8
a a d16 g,~
g4 g16 g
fis8 fis b
fis4 fis16 fis
g8 g g
fis e d
e4.
r

fis8 fis fis
fis r d
e16 d b8 r
dis e16 fis~ fis8
g g g
fis e16 d~ d8
cis4.
r8. a'16 a8
a a d16 g,~
g4 g16 g
fis8 fis b
fis4 fis16 fis
g8 g g
fis e d
e4.
r4 cis16 cis

cis8 cis d
e4 e8
e e fis
g4 a8

%%%%%
a8 fis16 a~ a8
ais8 fis16 ais~ ais8
b8 fis fis16 fis~ 
fis8 e16 d~ d8

a'8 fis16 a~ a8
ais8 fis ais
b8 fis16 fis~ fis8
fis8 e d

a'8 fis16 a~ a8
ais8 fis ais
b8 cis d
d,8 r d

a' g16 d~ d8
a' g16 d~ d8
a' g16 d~ d8
bes e16 fis~ fis8

d4.
r
r
r \bar ":|"
}

secondMelody = \relative c' {
	\tempo 4=80
	\clef treble
	\key d \major
	\time 3/8
%%%%
d8 d d
a r a
b16 b b8 r
a a16 a~ a8
b b cis
d a b16 a~
a4.

r8. cis16 cis8
d e fis16 d~
d4 b16 b
d8 d d
cis4 cis16 cis
e8 e e
b b b
cis4.
r

d8 d d
cis r a
b16 b b8 r
a a16 a~ a8
b b cis
d a16 b~ b8
cis4.

r8. cis16 cis8
d e fis16 d~
d4 b16 b
d8 d d
cis4 cis16 cis
e8 e e
b b b
cis4.
r4 a16 a

a8 a b
cis4 cis8
cis cis d
cis4 cis8

%%%%%
d8 d16 d~ d8
cis8 cis16 cis~ cis8
d8 d d16 cis~ 
cis8 cis16 a~ a8

d8 d16 d~ d8
cis8 cis cis
d8 d16 d~ d8
cis8 cis a

d8 d16 d~ d8
cis8 cis cis
d8 e d
b8 r b

d b16 b~ b8
d b16 b~ b8
d b16 b~ b8
bes bes16 g~ g8

fis4.
}
text = \lyricmode {
I do en -- crypt my in -- ner life,
I'm be -- ing cau -- tious 'bout what I re -- veal
I say it's my af -- fair
but you know it's all there
in the way how I don't say I feel

No -- tice how I ter -- gi -- ver -- sate
when you en -- gage me in what you call talk
and you feel so as -- sured
that what's ill can be cured
just by say -- ing it will quite a lot

not a small sign of doubt
but see, I'm a -- bout to

break, you don't get what I don't dare to say, oh I
try to get through while not lo -- sing my face, it's not
ea -- sy to see through the per -- son I play
we talk un -- til e -- very -- one's lost in the u -- su -- al way


}

harmonies = \chordmode {
	\germanChords
d4. fis:m7/cis b:m b:7
e:m d a a:7
d g b:m fis:m
e:m e:7 a a:7

d4. fis:m7/cis b:m b:7
e:m d a a:7
d g b:m fis:m
e:m e:7 a a

a4.*4:7

d4. fis:7/cis b:m a
d4. fis:7/cis b:m a
d4. fis:7/cis b:m g
g4.*3 g4.:m

d4.*4
}

\score {
	<<  \new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}
		
        \new Staff <<
        
		\new Voice = "one" {
			\autoBeamOn
			\voiceOne
            \melody
        }
        \new Voice = "two" {
			\autoBeamOn
			\voiceTwo
            \secondMelody
        }
		\new Lyrics \lyricsto "one" \text
        >>
	>>
	\layout { }
	\midi { }
}