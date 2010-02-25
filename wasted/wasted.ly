\version "2.11.33"

\header {
  title = "Wasted"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)


melody = \relative c' {
	\tempo 4=120
	\clef treble
	\key b \minor
	\time 4/4
%%%%

\bar ":|"
}

text = \lyricmode {
\set stanza = "1. "
1, 2, 3 I'm was -- ted
I've got e -- very rea -- son to be
I'm was -- ted
my head is all de -- bris

my en -- gine runs on e -- tha -- nol
which saves the cli -- mate as a whole

}

textZwei = \lyricmode {
\set stanza = "2. "

}

harmonies = \chordmode {
	\germanChords

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