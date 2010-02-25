\version "2.11.57"

\header {
  title = "Alternate Reality"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=90
	\clef treble
	\key e \minor
	\time 4/4
%%%%
\repeat volta 3 {
b8 b b b b b b b
a a a b a g16 e~ e8 r
b'8 b b b b b b b
a a a b a g16 e~ e8 r

b'8 b b b b b b b
a a a b a g16 e~ e8 r
b'8 b b b b b b b
a a a b a g16 e~ e8 r
\bar "||" \break
c'8 c c c b b b b
b b b b b a16 g~ g8 r
c8 c c c b b b b
b b b b b a16 g~ g8 r

c8 c c c b b b b
b b b b b a16 g~ g8 r
c8 c c c b b b b
b b b b b a16 g~ g8 r
}
\break
c8 c c c b b b r
b4( a g) r
c8 c c c b b b r
b4( a g) r
c8 c c c b b b r
b4( a g) r
c8 c c c b b b r
b4( a g) r \bar "|."
}

secondVoice = \relative c' {
	\tempo 4=80
	\clef treble
	\key e \minor
	\time 4/4
%%%%
\repeat volta 3 {
e8 e e fis g g g g
fis fis fis fis e d16 e~ e8 r
e8 e e fis g g g g
fis fis fis fis e d16 e~ e8 r

e8 e e fis g g g g
fis fis fis fis e d16 e~ e8 r
e8 e e fis g g g g
fis fis fis fis e d16 e~ e8 r

e8 e e fis g g g g
fis fis fis fis g fis16 e~ e8 r
e8 e e fis g g g g
fis fis fis fis g fis16 e~ e8 r

e8 e e fis g g g g
fis fis fis fis g fis16 e~ e8 r
e8 e e fis g g g g
fis fis fis fis g fis16 e~ e8 r
}
e8 e e fis g g g r
fis2( e4) r
e8 e e fis g g g r
fis2( e4) r
e8 e e fis g g g r
fis2( e4) r
e8 e e fis g g g r
fis2( e4) r
}

text = \lyricmode {
Deep with -- in that si -- li -- con, be -- hind mun -- dane pro -- fa -- ni -- ty
lies a land of won -- der in an al -- ter -- nate re -- a -- li -- ty
just in -- sert the disk, click on the but -- ton, and you're star -- ting it
and for fif -- teen dol -- lars month -- ly you be -- come a part of it

it's not ou -- r fault if you get stuck in -- side that world of us
we are not res -- pon -- si -- ble if your life is -- n't what it was
some call it ad -- dic -- tion, we are cal -- ling it a stra -- te -- gy
sel -- ling you a one -- way trip a -- way from this re -- a -- li -- ty

some -- one get me out of here uh __
please don't get me out of here uh __
some -- one get me out of here uh __
please don't get me out of here uh __
}

textZwei = \lyricmode {
Li -- ne -- ar pro -- gres -- sion si -- mu -- lates ad -- vance -- ment ea -- si -- ly
fic -- tio -- nal pos -- ses -- sions fill your cha -- rac -- ter's in -- ven -- tu -- ry
res -- ting on a -- chieve -- ments is no op -- tion, there's no end to fight
sta -- tus quo feels hol -- low when there's yet a -- no -- ther goal in sight
}

harmonies = \chordmode {
	\germanChords
e2:m g d a
e2:m g d a
e2:m g d a
e2:m g d a

c g b e:m
c g b e:m
c g b e:m
c g b e:m
}

\score {
	<<
		\new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}
		\context Staff = gesang <<
		  \context Voice =
                    christian { \voiceOne <<  \melody >> }
		  \context Voice =
                    stephan { \voiceTwo <<  \secondVoice >> }

		>>
		\new Lyrics \lyricsto "christian" \text
		\new Lyrics \lyricsto "christian" \textZwei
	>>
	\layout { }
	\midi { }
}