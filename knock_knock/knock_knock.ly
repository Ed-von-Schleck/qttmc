%\version "2.11.33"

\header {
  title = "Knock, knock"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 20)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=120
	\clef treble
	\key a \minor
	\time 4/4

r8 e d c d c a4
r8 g g g g16 g g a~ a4
r8 e' d c d c a4
r8 g g g g16 g g a~ a4
r8 e' d c d c a4
r8 g g g g16 g g a~ a4
r8 e' d c d c a4
r8 g g g g16 g g a r8 a \bar "||" \break

c8. a16~ a8 e g8. e16~ e8 g
c8. a16~ a8 e g8. e16~ e8 a
c8. a16~ a8 e g8. e16~ e8 g
c8. a16~ a8 e g8. e16~ e8 a
c8. a16~ a8 e g8. e16~ e8 g
c8. a16~ a8 e g8. e16~ e8 a
c8. a16~ a8 e g8. e16~ e8 g
c8. a16~ a8 e g8  r4. \bar "||" \break

r8 d' d d  e( a,) a16 g a8~ 
a2 r2
r8 d d d e( a,) a16 g a8~ 
a2 r2 \bar "||" \break

e'8 r4 b8 b b c r
e8 r4 b8 b b c r
e8 r4 b8 b b c r
e8 e e e e r4.
 \bar "|."
}

text = \lyricmode {
I don't ex -- pect you here
knock knock knock knock on my door
there no -- thing left to fear
not not not not a -- ny -- more

you wis -- per in my ear
how how how how do you feel
your end is com -- ing near
now now now now make it real


you know that you got it
you can write a pop hit
now why don't you get up
your ass, get your head up

make use of your ta -- lent
who knows where the time went
you was -- ted it all now
your life looks so small


don't stall your time a -- ny -- more
don't stall your time a -- ny -- more


hey, get off from me
don't want the -- ra -- py
know I need some help
don't need no ad -- vise
}


harmonies = \chordmode {
	\germanChords

f2 g4 a:m g2 c4 d
f2 g4 a:m g2 c4 d
f2 g4 a:m g2 c4 d
f2 g4 a:m g2 c4 d

a2:m e:m f c
a2:m e:m f c
a2:m e:m f c
a2:m e:m f c

g a:m f1
g2 a:m f1

e2 e8 g f4
e2 e8 g f4
e2 e8 g f4
e1
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