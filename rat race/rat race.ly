\version "2.11.33"

\header {
  title = "Rat Race"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 21)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=120
	\clef treble
	\key c \minor
	\time 4/4
%%%%
c8 c d d es4 g,8 g
c d~ d es~ es8 r g,8 g
c c d d es es g, g
c d~ d es~ es8 g as g~
g4. d8~ d2
r2 r8 g as g~
g4. d8~ d2
r2. g,8 g

c4 d4 es8 es g,8 g
c d~ d es~ es8 r g,8 g
c c d es~ es4 g,4
c8 d~ d es~ es8 g as g~
g4. d8~ d2
r2 r8 g as g~
g4. g8~ g4 r8 g
g4 g8 g g g g4

%%%%%%%
c4 g e c
as' as8 bes~ bes as g4
c4 g e c
as'8 as~ as bes~ bes as g4

c4 g e c
as'8 as~ as bes~ bes as g4
g4 g g g
r8 


\bar ":|"
}

text = \lyricmode {
bet -- ter brush your teeth, bet -- ter comb your hair,
com -- pe -- ti -- tion is -- n't slee -- ping, bet -- ter be a -- ware
there's a pres -- sure to be fre -- sher

have you done your home -- work, have you worked your style,
are you rea -- dy to go that ex -- tra mile
to be be -- ter, climb the lad -- der, you know it's a dog eat dog

world out there so raise the bar no -- one's
figh -- ting fair you won't get far if you
still be -- lieve you don't take part in the
fast pace rat race 
}

harmonies = \chordmode {
	\germanChords
c1*4:m
g
c1*4:m
g
c1 f:m
c1 f:m
c1 f:m
g1*2
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