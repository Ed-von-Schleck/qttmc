\version "2.11.33"

\header {
  title = "f***ed up again"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=120
	\clef treble
	\key c \major
	\time 2/4
%%%%
e8 e g e f16 e~ e d~ d8 c
e8 e g e f16 e~ e d~ d8 c
e8 e e d c d16 e~ e8 e
e gis e d c b16 a~ a8 e'
f e d16 c~ c g~ g8 r4 e'8
f e f fis g g16 a~ a8 g8

e8 e g e f16 e~ e d~ d8 c
e8 e g e f16 e~ e d~ d8 c
e8 e e d c d16 e~ e e~ e8
e gis e d c b16 a~ a8 e'
f e d16 c~ c g~ g8 r4 e'8
f e f fis g g16 a~ a8 g8 \bar "||"

\time 4/4
g8 a c a g a16 c~ c8 a
es' e es16 e16~ e a,~ a4 r4
g8 a c a g a16 c~ c8 a
es' e es16 e16~ e a,~ a4 r4

c8 d c d c d c d
c d c d e d c d
d1~
d8 d d d e d d c(

a4) r2.
r4 d8 d e d d c~
c4 r2.
r4 d8 d e d d c(

a4) r2.
r4 d8 d e d d c~
c4 r2.
r8 b b g16 f~ f4 r4 \bar ":|"
}

text = \lyricmode {
\set stanza = "1. "
first of all, it's not my job to
tell you a -- bout e -- very thought that
la -- tely might have crossed my mind
I just want to e -- xem -- pli -- fy
that I know what it means
to have some -- thing bet -- ween the legs that

some -- times does the thin -- king part when
my brain does -- n't feel it's smart e -- 
nough to han -- dle si -- ti -- a -- tions
where there's im -- mi -- nent temp -- ta -- tion
make this sto -- ry short: I
meet a girl, I think by my -- self

I should tell her 'bout my girl
but in the end I don't
this is go -- ing way too far
but I don't say I won't

I can't stop it now it's go -- ing
woa  -- woa -- woa the next thing that I
know is: I have fucked up a -- gain

I have fucked up a -- gain
I have fucked up a -- gain
I have fucked up a -- gain
please not a -- gain
}

textZwei = \lyricmode {
\set stanza = "2. "
Let's get quick -- ly out of bed and
boy I need a ci -- ga -- rette but
wait! who is that pret -- ty girl
and where am I? I guess, it's her
a -- part -- ment, and I know,
I've real -- ly got to go! I make it

of of here and off to work
I'm fee -- ling like a fu -- cking jerk
I real -- ly wan -- ted to be true, but
it is so not ea -- sy to be
ho -- nest when I see
a girl that's real -- ly in -- to me, yeah


}

harmonies = \chordmode {
	\germanChords
c2 f c f
e:7 a:m e:7 a:m
d:m g d4.:m d8 g2:7

c2 f c f
e:7 a:m e:7 a:m
d:m g d4.:m d8 g2:7

c4 f c f e2:7 a4:m g:7
c4 f c f e2:7 a4:m g:7

f2 f:m d:m d:7 g1 e:7

a1:m d:m f e:7
a1:m d:m f g:7
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