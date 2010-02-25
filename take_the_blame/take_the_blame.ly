\version "2.11.33"

\header {
  title = "Take the Blame"
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
	\key a \major
	\time 4/4
}

melody = \relative c' {
e16 fis a r a8 fis16 e a16 r fis r r4
e16 fis a r a8 fis16 e a16 r cis r b a fis r
e16 fis a r a8 fis16 e a16 r fis r r4
e16 fis a r a8 fis16 e a16 r cis r b a fis r

R1*2
cis'8 cis cis16 cis cis cis cis8 cis16 cis cis cis cis cis
cis8 cis cis16 b~ b cis~( cis ais~ ais8) r8. cis16

cis8 cis cis16 cis cis cis cis8 cis16 cis cis cis cis cis
cis cis cis8 b16 b~ b  cis~( cis ais~ ais8) r8 fis16 fis

fis'8 e16 e cis8 b16 a b a~ a cis~ cis r cis16 cis
cis cis cis8 cis16 cis b cis~ cis ais~ ais fis~ fis r fis fis

fis fis fis8 a16 b a cis~ cis8 r4.
cis16 cis cis cis cis8 cis16 cis~ cis8 r fis,8 fis16 fis'~(


fis8 e4.) r4 a,8 b16 cis~(
cis b a fis~ fis4) r a8 b16 cis~
cis4 r2.
r2. fis,8 fis16 fis'~(


fis8 e4.) r4 a,8 b16 cis~(
cis b a fis~ fis4) r a8 fis16 fis~
fis4 r2.
r1
\bar ":|"
}

secondVoice = \relative c' {


}

text = \lyricmode {
da -- ba -- dap da da -- ba -- dap da
da -- ba -- dap da da -- ba -- dap dap da -- ba -- da
da -- ba -- dap da da -- ba -- dap da
da -- ba -- dap da da -- ba -- dap dap da -- ba -- da

don't know jack
but what I know for a fact
is that I'm right and you are wrong

there's not much more
and I ad -- mit, real -- ly you're
the on -- ly rea -- son I wrote this song

you can say what you want,
I don't give a damn
you can call me what -- e -- ver you
think I am

you can can -- cel our friend -- ship but still
some -- one's got -- ta pay that bill

say your name __
say your name __
take the blame

say your name __
say your name __
take the blame
}

textZwei = \lyricmode {

}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords
e4 a a8 fis4.
e4 a2 b4
e4 a a8 fis4.
e4 a2 b4

fis1*2

fis2 a e fis
fis2 a e fis
fis2 a e fis
fis2 a e fis

d1 b
fis1*2
d1 b
fis1*2
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
%		  \context Voice =
%                    stephan { \voiceTwo <<   \global \secondVoice  >> }

		>>
		\new Lyrics \lyricsto "christian" \text
		\new Lyrics \lyricsto "christian" \textZwei
		\new Lyrics \lyricsto "christian" \textDrei
	>>
	\layout { }
	\midi { }
}