\version "2.11.33"

\header {
  title = "Happy Girl"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 16)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
	\tempo 4=85
	\clef treble
	\key a \major
	\time 2/4
}

melody = \relative c {

r8 fis a cis fis fis8. e16~ e cis~
cis2 r
r8 fis, a cis fis fis16 fis~ fis8 e
cis8 cis16 cis~ cis b a gis~ gis4 r

r8 fis a cis fis fis8. e16~ e cis~
cis2 r
r8 fis, a cis fis fis16 fis~ fis8 e
cis8 cis16 cis~ cis b a gis~ gis4 r

dis'8 dis dis dis dis r fis, gis
a a16 a~ a b cis8  e8 r cis b

%%%%%%%%

a8 a e' e e16 fis~ fis d~ d8 cis
cis16 d~ d b~ b8 a cis16 d~ d b~ b8 r

a8 a e' e e16 fis~ fis d~ d8 cis
cis16 d~ d b~ b8 a cis16 d~ d b~ b8 a

a a a b cis16 d~ d e~ e8 e
fis e e d16 cis~ cis4 r8 a
a a a b cis16 d~ d e~ e8 a,
cis b b16 cis~ cis b~ b8 r8. cis16~ cis a~

a2 r
r r


\bar ":|"
}

secondVoice = \relative c {

r8 fis fis gis a a8. gis16~ gis a~
a2 r
r8 fis fis gis a a16 a~ a8 gis
a8 a16 a~  a gis fis e~ e4 r

r8 fis fis gis a a8. gis16~ gis a~
a2 r
r8 fis fis gis a a16 a~ a8 gis
a8 a16 a~  a gis fis e~ e4 r

b'8 b b b b r fis gis
fis fis16 fis~ fis gis a8 gis8 r fis gis \bar "||" \break

%%%%%%%%
a8 a cis cis cis16 d~ d a~ a8 a
a16 b~ b fis~ fis8 fis e16 e~ e gis~ gis8 r

a8 a cis cis cis16 d~ d a~ a8 a
a16 b~ b fis~ fis8 fis e16 e~ e gis~ gis8 a

fis fis fis gis a16 b~ b cis~ cis8 cis
b b gis gis16 a~ a4 r8 a
fis fis fis gis a16 b~ b cis~ cis8 a
fis fis fis16 fis~ fis gis~ gis8 r8. e16~ e fis~

fis2 r
r r

\bar ":|"
}

text = \lyricmode {
Long time no see, young Ms. Brown 
how come you're  wea -- ring such an ac -- ri -- mo -- ni -- ous frown
has your life trea -- ted you bad
or is it some -- thing in the past that you ne -- ver had

when did it oc -- cur
cause you're not the girl that you were, they say

you've been such a hap -- py girl
what hap -- pened to your hap -- py world
ha -- ven't you been o -- pen -- min -- ded,
ea -- sy -- go -- ing, now I find it

hard to stand your a -- ti -- tude
of suf -- fering and dis -- pair,
your mis -- strust and your bit -- ter looks
don't come from a -- ny -- where, Ms. Brown

}

textZwei = \lyricmode {
I knew you when_you were a child
you used to have friends that your pa -- rents thought were too wild
you have been laughing all the time
no game too dan -- ge -- rous, no tree -- top too high to climb

when did it go bad
was it some -- thing _ with your dad
}

textDrei = \lyricmode {
I feel for you, young Ms. Brown
in a ge -- ne -- ric way, cause I don't know why you're down
it ne -- ver will_be like be -- fore
but one day it will get too tough to bear a -- ny -- more

o -- pen up your heart
there's no bet -- ter mo -- ment to start
}
harmonies = \chordmode {
\germanChords

fis2:m d a1 
fis2:m d a cis:m
fis2:m d a1
fis2:m d a cis:m

b1 d2 e

a2 d b:m e:7
a2 d b:m e:7
d a e fis:m
d cis:m b:m e

fis2:m fis:m fis:m fis:m
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
			\transpose c f { \harmonies }
		}
		\context Staff = gesang <<
		  \context Voice =
                    christian { \voiceOne <<  \transpose c f { \global \melody } >> }
		  \context Voice =
                    stephan { \voiceTwo <<  \transpose c f { \global \secondVoice } >> }

		>>
		\new Lyrics \lyricsto "christian" \text
		\new Lyrics \lyricsto "christian" \textZwei
		\new Lyrics \lyricsto "christian" \textDrei
	>>
	\layout { }
	\midi { }
}