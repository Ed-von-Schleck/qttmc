%\version "2.11.33"

\header {
  title = "Stereo"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 19)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=120
	\clef treble
	\key bes \major
	\time 4/4
R1*8 \bar "||"
%%%%
c8 es c es c es c es 
c es c es c~ c16 f,8. c'8~
c es c es c es c es 
c es c es c~ c16 f,8. c'8~
c8 es c es c es c es 
c es c es c~ c16 f,8. c'8~
c8 es c es c es c es 
c es c es c~ c16 f,8. r8
\bar "||"

r8 bes bes bes as bes bes4
r4. bes8 des des bes( as)
r8 bes bes bes as bes bes4
r8 des bes des~ des4 r
r8 f es des es des bes( as)
r4. as8 bes des bes r
c[ c bes] c[ c bes] c[ c 
bes] c[ c bes] c4 c
\bar ":|"
bes4 bes8 g bes4 g8 bes~
bes bes bes bes bes4 r
bes4 bes8 g bes4 g8 bes~
bes bes bes bes bes4 r
bes4 bes8 g bes4 g8 bes~
bes bes bes bes bes4 r
bes4 bes8 g bes4 g8 bes~
bes bes bes bes bes4 r
\bar ".|"
}

text = \lyricmode {
twen -- ty thou -- sand chan -- nels and the num -- bers dai -- ly rai -- sing
o -- ver -- sa -- tu -- ra -- ted co -- lors make my t -- v bla -- zing
al -- ways keep my win -- dows shut don't ans -- wer when the phone rings
ne -- ver turn my eyes from all those mi -- ra -- cles the tube brings

don't want to hear it all in ste -- re -- o
don't want to see it all in three d
don't want the world to be so na -- tu -- ral
would -- n't it be so much bet -- er if things were like t -- v

I can -- not feel my heart beat a -- ny -- more
I can -- not feel my heart beat a -- ny -- more
I can -- not feel my heart beat a -- ny -- more
I can -- not feel my heart beat a -- ny -- more
}

harmonies = \chordmode {
	\germanChords
bes2 as des es
bes2 as des es
bes2 as des es
f1*2

f1*8:7

bes2 as des es
bes2 as des es
bes2 as des es
f1*2

g1:m
g2:m f
g1:m
g2:m f
g1:m
g2:m f
g1*2:m

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
	>>
	\layout { }
	\midi { }
}