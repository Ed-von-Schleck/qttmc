%\version "2.11.33"

\header {
  title = "Laws of Attraction"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 19)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=80
	\clef treble
	\key g \major
	\time 2/4
%%%%
g16 g a a b e, e e
g a g b~ b e, e e
g g a a b e, e e
g g a b~ b e, e e

e e e8 fis16 fis fis fis
e e e8 fis fis16 fis
g g a a b e, e e
g a( g) b~ b e, e e

e'8 d g,16 a g bes~ bes4 r8 g16 g
bes8 bes bes16 c bes8 a8 g16 fis~ fis8 g
r1 r
 \bar ":|" \break
r4 fis16 fis fis g~ g8. fis16~ fis8 r
r4 g8 a b a g16 a~ a fis~
fis8 r fis16 fis fis fis g8. fis16~ fis8 r
r4 g8 a b a g16 a~ a fis~

fis8 r fis16 fis fis g~ g8. fis16~ fis8 r
r4. fis8 b( a) g fis
g4~( g16 a16 g e~ e4 ~ e16 d c) b~
b2 r2

 \bar "|."
}

text = \lyricmode {
\set stanza = "1. "
I blame Mis -- ter New -- ton
and the laws of at -- trac -- tion
for the state of mind I'm in while
lack -- ing a -- ny re -- ac -- tion

to the sim -- ple fact be -- ing I'm
not in my right mind
could you help me get -- ting 'way from her
please be so kind

yeah I'm at -- tached so firm that it hurts
to my girl, it's get -- ting ab -- surd you heard it

There is a rea -- son
but I don't know what it is
I could be a free man
if this thing would not e -- xist.

More than a fact can:
the laws of at -- trac -- tion
}

textZwei = \lyricmode {
\set stanza = "2. "
Let me in -- tro -- duce you to a 
good friend of mine,
he is a sa -- viour and he vi -- sites me
when things are ma -- lign,

but then  he al -- ways stays lon -- ger than he's
sup -- posed to be
and my faith -- ful good old friend calles him -- self
a -- pa -- thy

}

harmonies = \chordmode {
\germanChords
g4 e g e g e g e
a fis a d g e g e
c2 bes es d
g4 e g e g e g e

d1
c2 g4 e:m
d1 
c2 g4 e:m

d1
b 
c
e:m
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