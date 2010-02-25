\version "2.11.33"

\header {
  title = "You Remind Me"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=120
	\clef treble
	\key c \minor
	\time 2/4
%%%%
\partial 4. g8 g es'~

\repeat volta 2 {
es es es d~ d d d d~
d c~ c4 r8 g g bes~
bes bes~ bes a~ a a~ a g~
g2 r8 g8 g es'~

es es es d~ d d d d~
d c~ c4 r8 g g bes~
bes bes~ bes a~ a a~ a g~
g2
} \alternative {
{ r8 g8 g es'}
{ r8 bes8 bes bes}
}

bes8 r bes r c es c r
bes g bes g~ g4 g8 g
as as as as bes bes bes g~
g2 r8 bes bes bes

bes8 r bes r c es c r
bes g bes g~ g4 g8 g
as as as as g g~ g g(
es2) r4 g8 g

g g~ g g~ g g~ g g'~
g f~ f es~ es d~ d d~
d es~ es c~ c g~ g bes~
bes as~ as g~ g f~ f g~

g2~
g2~
g2~
g2
r2
r2
r2
r8 g8 g es' \bar ":|"
}

text = \lyricmode {
\set stanza = "1. "
You re -- mind, you re -- mind, you re -- mind me
of a girl that I have known
she was mine, she was mine, she was mine 'till
some -- one turned her heart to stone, you re -- mind

she was a free mind, un -- re -- fined, one -- of -- a -- kind,
not the type of girl you tend to for -- get
she smelled like fresh air, cur -- ly hair, de -- vil -- may -- care,
oh, I loved to make my la -- dy sweat

it was pro -- bab -- ly
not meant to be, but
I re -- gret that
I have let her
go __ you re -- mind

}

textZwei = \lyricmode {
\set stanza = "2. "

}

harmonies = \chordmode {
	\germanChords
\partial 4. s4.
c2:m bes as1
es2 f c1:m
c2:m bes as1
es2 f g1 s2

es2 as g:m c:m
f:m bes:6 es bes 
es2 as g:m c:m
f:m bes:6 es1 

g1*2 as1 f:m g1*4:7
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
%    \new Lyrics \lyricsto "one" \textZwei
	>>
	\layout { }
	\midi { }
}