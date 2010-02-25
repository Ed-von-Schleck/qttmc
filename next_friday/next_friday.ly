%\version "2.11.33"

\header {
  title = "Next Friday"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 15)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c'' {
	\tempo 4=120
	\clef treble
	\key a \major
	\time 4/4
e8 e e e e e d cis 
d e~ e e~ e e e e~
e e e e e e d cis
d e~ e e~ e e e e~

e e e e e e d c
d e~ e e~ e d e e~
e d~ d4 r8 d e e~
e d~ d4 r2


e8 e e e e e d cis 
d e~ e e~ e e e e~
e e e e e e d cis
d e~ e e~ e e e e~

e e e e e e d c
d e~ e e~ e d e e~
e d~ d4 r8 d( e) e~
e d~ d4 r8 d8 d d~

\bar "||"

d d d d fis e~ e e~
e b~ b r a b~ b cis~
cis cis cis cis e cis~ cis a~
a4 r a8 b a d~

d d cis4 b8 a~ a e~
e4 r4 fis8 a a4
cis4 a8 b~ b a a4
r2 r8 cis cis d~

d4 d fis8 e~ e e~
e4 r a,8 b a cis~
cis cis cis cis e cis~ cis a~
a4 r a8 b a d~

d d cis4 b8 a~ a e~
e4 r fis8 a a4
cis4 a8 b~ b cis a4~
a2 r2
\bar "||"

R1*4
\bar "||"
e,8 e e4 e e8 e
gis4 gis8 gis~ gis4 r
b8 b b b b b b b
d d~ d d~ d4 r

e8 e e e e e e e
gis4 gis8 gis~ gis4 r
b8 b b b b b b b
e e~ e e~ e e e g~

g g g e g4 r8 e
g g g e g4 r4
g8 g g g g g g g
g g g g~ g e e e\laissezVibrer
\bar ":|"
}

text = \lyricmode {
\set stanza = "1. "
Fri -- day's gon -- na be a le -- gal ho -- li -- day
Ju -- dy's pa -- rent have an -- nounced they're gon -- na be a -- way
so I asked a -- round if we'd come o -- ver to her place
have a par -- ty, have a par -- ty

She don't feel so com -- fy with that, I can tell
but I say that Ja -- son sure's gon -- na be there as well
and I know that Ju -- dy got a crush on him like hell,
so let's par -- ty, let's par -- ty


e -- very bo -- dy's gon -- na be in -- vi -- ted 
to our par -- ty on that fri -- day night
and while her dad -- dy thinks it's al -- right
we're gon -- na have some fun all night

let the high school rock band play
I know the suck, but in that sport -- ful way
and while her mom -- my thinks it's o -- kay
we're gon -- na dance the night a -- way

Mon -- day sucks ass just like u -- su -- al
Tues -- day get -- ting bet -- ter but it's still not swell
Wednes -- day e -- ven bet -- ter but it's far from great
Thurs -- day I'm ex -- ci -- ted I can hard -- ly wait for the

day I'm gon -- na rock
the day I'm gon -- na roll
may -- be fuck a girl or two
I'm ou -- ta con -- trol, cause next Fri-
}

textZwei = \lyricmode {
\set stanza = "2. "
Fri -- day night is still two days a -- way from now
but the par -- ty is al -- rea -- dy the talk of the town
the whole school they know a -- bout it yeah word got a -- round
of the par -- ty, of the par -- ty

John, my ol -- der bro -- ther, or -- ga -- nized some beer
in ex -- change for let -- ting him and all his friends ap -- pear
which is fine, cause that's at -- trac -- ting girl of sen -- ior year
to our par -- ty, our par -- ty
}

harmonies = \chordmode {
	\germanChords
a4 a:6 a a:6
g g:6 e e:6
a4 a:6 a a:6
g g:6 e e:6
c c:6 c c:6 
d d:6 a a:6
e e:6 e e:6
e e:6 e e:6

a4 a:6 a a:6
g g:6 e e:6
a4 a:6 a a:6
g g:6 e e:6
c c:6 c c:6 
d d:6 a a:6
e e:6 e e:6
e e:6 e e:6

d1 e
cis:m d
b:m d
a a:7

d1 e
cis:m d
b:m d
a4. g f4~
f1

e4 e:6 e:7 e:6 
e e:6 e:7 e:6 
e e:6 e:7 e:6 
e e:6 e:7 e:6 

e4 e:6 e:7 e:6 
e e:6 e:7 e:6 
e e:6 e:7 e:6 
e e:6 e:7 e:6 

e4 e:6 e:7 e:6 
e e:6 e:7 e:6 
e e:6 e:7 e:6 
e e:6 e:7 e:6 
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