\version "2.11.33"

\header {
  title = "Give It All Back"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=120
	\clef treble
	\key b \minor
	\time 4/4
%%%%
\repeat volta 2 {
  r8 fis fis fis e fis e cis~
  cis4 r ais8 ais16 b~ b cis~ cis b~
  b r fis'8 fis fis e fis e cis~
  cis4 r ais8 ais16 b~ b cis~ cis d~

  d r fis8 fis fis e fis e cis~
  cis4 r ais8 ais16 b~ b cis~ cis b~
  b r fis'8 fis fis e fis e cis~
  cis4 r ais8 ais16 b~ b cis~ cis d~

  \bar "||"
  d r g8 g g fis e e d
  e fis e d b r4.
  r8 b' b b a fis fis gis~
  gis2 r2

  r8 g? g g fis e e d
  e fis e d b r4.
  r8 b'~ b b a fis fis gis~
  } \alternative {
  {gis2 r2}
  {gis2\repeatTie r8 gis gis ais8~}
  }
ais2 r8 b cis d~

d cis b a( fis) fis fis d'~
d cis b a( fis) fis~ fis4
g8 g g g( fis) d~ d4
g8 g g g( fis) fis~ fis4

d'8 cis b a( fis) fis fis d'~
d cis b a( fis) fis~ fis4
g8 g g g( fis) d~ d4
g8 g g g( fis) fis~ fis4
\bar ":|"
}

text = \lyricmode {
\set stanza = "1. "
we had those won -- der -- ful years
now they look so black
can't make them all dis -- ap -- pear
I'm a men -- tal wrack

I'm_a -- fraid you lost me my dear
I'm a -- bout to crack
we had those won -- der -- ful years
now I want them back

give me my un -- a -- dul -- te -- ra -- ted e -- mo -- tions
give me my hopes and my dreams __
I was too care -- less with my heart, I should know when's
time to get up and leave __

_ up and leave __
it's the time that we spent
that I real -- ly re -- sent now
give me this time back
I want my time back

way too much time I have
was -- ted in life so
give me this time back
I want my time back
}

textZwei = \lyricmode {
\set stanza = "2. "
we had those won -- der -- ful years
I think I was glad
was I mis -- ta -- ken to_be -- lieve
that_you knew what you had

you don't de -- serve a -- ny tears
I would ra -- ther bleed
we had those won -- der -- ful years
give them back to me

}

harmonies = \chordmode {
	\germanChords
b2:m e a fis
b:m e a fis
b:m e a fis
b:m e a fis

g e a b:m
g d e e
g e a b:m
g d e e

e e fis fis

b:m fis:m b:m fis:m
g d g fis:7
b:m fis:m b:m fis:m
g d g fis:7
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}
		\new Voice = "one" {
			\autoBeamOn
			\melody
		}
		\new Lyrics \lyricsto "one" \text
    \new Lyrics \lyricsto "one" \textZwei
	>>
	\layout { }
	\midi { }
}