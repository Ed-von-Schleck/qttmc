\version "2.11.33"

\header {
  title = "Enemy"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 19)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=120
	\clef treble
	\key e \minor
	\time 4/4
%%%%
e16 e~ e e~ e8 r d d16 d~ d8 r
cis8 cis cis16 cis~ cis d~ d4 r

e8 e16 e~ e8 r d d d r
cis8 cis cis b16 a~ a4 r

e'8 e e r d d16 d~ d8 r
cis8 cis cis16 cis~ cis d~ d4 r

e8 e16 e~ e8 r d d16 d~ d8 r
cis8 cis cis b16 a~ a4 r8. e16

e8 e g16 a~ a b~ b b~ b a~ a g e8
e8 e g16 a~ a b~ b4 r4
e,8 e g16 a~ a b~ b b~ b a~ a g e8
e16 e~ e g~ g a~ a b~ b4 r4

e,8 e g16 a~ a b~ b b~ b a~ a g e8
e8 e g16 a~ a b~ b4 r4
e,8 e g16 a~ a b~ b b~ b a~ a g e8
b'8 b b b b g' g g


g16 e~ e e~ e8 r8 r2
r2 r8 g8 g g
g e16 e~ e8 r8 r2
r2 r8 g8 g g
g16 e~ e e~ e8 r8 r2
r2 r8 g8 g g
g e16 e~ e8 r8 r2
r1
\bar ":|"
}

text = \lyricmode {
mo -- dern man
home a -- gain
back in the well -- known

sim -- ple creed
there's no need
for tes -- tos -- te -- rone

stream -- lined live
op -- ti -- mized
for ef -- fi -- cien -- cy

gol -- den cage
lost my rage
don't we all ag -- ree


but some -- where in the not -- so -- well -- ex -- plored
re -- gions of my brain
I have found a source of po -- wer that
has -- n't yet been tamed

it could be my last re -- sort to 
re -- solve my le -- thar -- gy
on -- ly prob -- lem that re -- main is I
need you as the key:


please be my e -- ne -- my
es -- sen -- tial part of me
I need an e -- ne -- my
to make my -- self com -- plete

}

harmonies = \chordmode {
	\germanChords
e2 g a d
e2 g a d
e2 g a d
e2 g a d

e1:m e:m
e:m e:m
e:m e:m
e:m b:7

e1:m a2 g
e1:m a2 g
e1:m a2 g
e1:m a2 g
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