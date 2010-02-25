\version "2.11.33"

\header {
  title = "Move On"
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
	\key b \major
	\time 4/4
%%%%
R1*11
r2 r8 b b cis

dis4 dis cis cis8 b
dis bis~ bis gis~ gis gis b cis
dis dis dis b cis b cis4
dis8 bis~ bis gis~ gis4 gis8 fis

gis4 gis fis8 fis fis fis
gis b~ b cis~ cis cis~ cis cis
cis cis~ cis cis~ cis cis cis b
dis cis b dis~ dis cis~ cis r

dis4 dis8 b cis b cis4
dis8 bis~ bis gis~ gis gis b cis
dis4 dis cis8 cis cis b
dis bis~ bis gis~ gis4 gis8 fis

gis gis gis gis fis8 fis fis4
gis8 b~ b cis~ cis cis~ cis cis
cis cis cis cis~ cis cis~ cis b
dis cis b dis~ dis cis~ cis r

%%%%
r2 r8 cis8 dis b~
b4 gis8 b b4 gis8 b
cis dis~ dis cis~ cis dis~ dis4

r2 r8 cis8 dis b~
b4 gis8 b b4 gis8 b
cis dis~ dis cis~ cis dis~ dis4

r2 r8 cis8 dis b~
b4 gis8 b b b gis8 b
cis dis~ dis cis~ cis dis~ dis4

r2 r8 cis8 dis b~
b4 gis8 b b4 gis8 b
cis dis~ dis cis~ cis dis~ dis4
b2 r2
\bar ":|"
}

text = \lyricmode {
I take my dai -- ly walk down the bou -- le -- vard
a new re -- li -- on burns an ef -- fi -- gy in the park
C -- N -- N polls peo -- ple what the la -- test hype is
the cli -- mate cri -- sis or the ga -- so -- line pri -- ces

good -- loo -- king M -- T -- V a -- gents are
in e -- very phone booth, cas -- ting the next su -- per -- star
ma -- king mo -- ney off the doc -- trine of An -- dy War -- hol
they rise and they all fall, end up in the town mall

and the sun's ha -- ving fun loo -- king down at us, oh
we're so bu -- sy, we miss the im -- por -- tant stuff, oh
none -- the -- less be -- ing blessed with the a -- bi -- li -- ty to
stay the same, yet main -- tain the il -- lu -- sion to move on

}

harmonies = \chordmode {
	\germanChords
b2.. d8/e~
d1/e
b2.. d8/e~
d1/e
b2.. d8/e~
d1/e
cis2..:m7 g8:7~
g4.:7 fis8:7 fis2:7

b1*4

b2 fis
gis gis:7
b2 fis
gis gis:7
cis:m7 dis:m7 
e fis
a1
fis:7

b2 fis
gis gis:7
b2 fis
gis gis:7
cis:m7 dis:m7 
e fis
a1
fis:7

dis1
e2 b
cis fis
dis1
e2 b
cis fis
dis1
e2 b
cis fis
dis1
e2 b
cis fis
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