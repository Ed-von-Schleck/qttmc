\version "2.11.33"

\header {
  title = "She Never"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 17)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
	\tempo 4=80
	\clef treble
	\key a \minor
	\time 4/4
}

melody = \relative c'' {
\repeat volta 2 {
R1 * 4
a8 a a a a16 a~ a a~ a8 r
a8 a a a a16 b~ b c~ c e, e e
e8 d r4.. g16 r e e e
e8 d r2.

a'8 a a a a a16 a~ a8 r
a8 a a a a16 b~ b c~ c e, e e
e8 d r4.. g16 r e e e
e8 d r2. \break

%%%%%%
r4 e16 d~ d d~ d8 c16 c~ c8 a16 e'~
e2 r2
r4 e8 d16 d~ d8 c c16 a~ a e'~
}
\alternative {
{e d~ d4.( a'2)}
{e16 d~ d4.( a'4) r16 a a b}
}

\bar ":|"

%%%%%%
c8 c r8. c16 b8( a) g16 a~ a b~ 
b8 a~ a4 r4 r16 a a b
c8 c r16 c c8 b a g a16 a~
a2  r4 r16 a a b

c8 c r16 c16c 8 b8 a g  a16 b~ 
b8 a~ a4 r4. a8
c a b r a f e r
g g g g gis r gis r
\bar ":|"
}

secondVoice = \relative c' {
s1 * 5
s2 s4 s16 a a a
bes8 bes s2 s16 a a a
bes8 bes s2.

s1
s2 s4 s16 a a a
bes8 bes s2 s16 a a a
bes8 bes s2.

}

text = \lyricmode {
Ly -- ing on the bath -- room floor
I can't take it a -- ny -- more
she ne -- ver loved me, whoa,
she ne -- ver loved me

stoned and drunk and well -- pre -- pared
no -- one asks me if I'm scared
she ne -- ver loved me, whoa,
she ne -- ver loved me

what am I sup -- posed to do?
No -- one knows what I have gone through

gone through

she said she loves me
but now I know bet -- ter
she said she loves me
but these words were just a lie

she said she loves me
and she swore that it's for -- e -- ver
but what she's done
proves her wrong
girl I say good -- by, good-
}

textZwei = \lyricmode {
Bought a brand -- new ra -- zor -- blade
far too late to be a -- fraid
she ne -- ver loved me, whoa,
she ne -- ver loved me

it's the last chance to re -- sist
I give up and cut my wrist
she ne -- ver loved me, whoa,
she ne -- ver loved me
}

textDrei = \lyricmode {
Red and white is now in style
blood looks good on bath -- rooms tiles
she ne -- ver loved me, whoa,
she ne -- ver loved me

ly -- ing on the bath -- room floor
there's no fee -- lings a -- ny -- more
she ne -- ver loved me, whoa,
she ne -- ver loved me
}

harmonies = \chordmode {
\germanChords
a4:m d a2:m
a4:m d a2:m
g4:m c g2:m
g4:m c e2:7

a4:m d a:m d
a:m d a:m d
g:m c g:m c
g:m c g:m c
a4:m d a:m d
a:m d a:m d
g:m c g:m c
g:m c g:m c

e2 f d1:9
e2 f d2:9 d:m

d2:9 d:m

a2:m g d f
a:m g d f
a:m g d f
a4:m g f c g2 e:7
}

\score {
    
	<<
%     \new ChordNames {
%	\set chordChanges = ##t
%	\harmonies
%      }
%      \new Voice = "christian" {
%          \autoBeamOff
%          \global \melody
%	}
		\new ChordNames {
			\set chordChanges = ##t
			 \harmonies
		}
		\context Staff = gesang <<
		  \context Voice =
                    christian { <<  \global \melody  >> }
		  \context Voice =
                    stephan { \voiceTwo <<   \global \secondVoice  >> }

		>>
		\new Lyrics \lyricsto "christian" \text
		\new Lyrics \lyricsto "christian" \textZwei
		\new Lyrics \lyricsto "christian" \textDrei
	>>
	\layout { }
	\midi { }
}