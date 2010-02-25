\version "2.11.27"

\header {
  title = "A Mark on You"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 19)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
    \tempo 4=140
	\clef treble
	\key g \major
	\time 4/4

%%%%
d,1~ <d a'> <e g>1~<e g>
<d fis>~<d fis> <e g>~<e g>
<d a'>~<d a'> <e c'>~<e c'>
<fis a>~<fis a> <e c'>~<e c'>


a2^\markup{\italic shuffled} g4 fis
g8 fis e d~ d4 a8 a
c4 d e c8 a~
a2 r2

a'2 g4 fis
g8 fis e d~ d4 a8 a
c4 d e fis8 d~
d2 r4 a4

c d e c
d8 a~ a4 r4 a8 a
c8 d~ d4 e8 fis~ fis d~
d2 r4 a8 a

c4 d e c
d4 a8 a~ a a~ a4
c d8 e~ e fis~ fis d~
d4 d e8 fis~ fis4

%%%%%%
g4 d b8 g'~ g fis~
fis d~ d b~ b b fis'4
e c g8 e'~ e d~
d2 r

a4 b8 c~ c4 d
e8 fis~ fis g~ g4 a
a g fis e8 d~
d4 d e8 fis~ fis4

g4 d b8 g'~ g a~	
a b~ b b~b b b c~
c b~ b g~ g e~ e c'~
c b~ b g~ g es~ es4

d4 e g8 a~ a bes~
bes2 r8 a~ a g
bes2. r8 c~
c a~ a2. \bar ":|"
}

textEins = \lyricmode {
ah __ ah __  ah __ ah __ 
ah __ ah __  ah __ ah __ 

How come I'm sit -- ting a -- gain
in the same pub as last night
there is no time to ex -- plain
as the beer comes in al -- right

And one goes down like no -- thing
and the se -- cond one as well
then there's three and four and five,
then it got more than I could tell

but then I stare in -- to the star -- lit night
and I won -- der who I am
peo -- ple think they ne -- ver change and al -- ways stay the same

but when I stare in -- to the star -- lit night
I do won -- der: Is it true what they say
e -- every -- thing you do
leaves a mark on you
}

textZwei  = \lyricmode {
_ _ _ _ _ _ _ _
How come I'm ly -- ing a -- gain
in the same bed as last night
there is no time to ex -- plain
as I get a kiss al -- right

And one feels great like hea -- ven
and the se -- cond one as well
then there's three and four and five,
then it got more than I could tell
}

harmonies = \chordmode {
	\germanChords
    d1*2 c/d d c/d
    d c/d d c/d
    
	d1 d c/d d
	d d c/d d
	c/d d c/d d
	c/d d c/d d2 d:7
	
	g1 b:m c g
	a1*2:m d:7
	g1 b:m c c:m
	g2. f4 es1 es a:7
	
	
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
		\new Lyrics \lyricsto "one" \textEins
        \new Lyrics \lyricsto "one" \textZwei
	>>
	\layout { }
	\midi { }
}