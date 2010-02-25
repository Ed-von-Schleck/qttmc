\version "2.12.0"

\header {
  title = "Zurück"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
	\tempo 4=140
	\clef treble
	\key a \minor
	\time 4/4
}

melody = \relative c'' {

%%%% Refrain %%%%
\partial 2. c4 c b8 a~
\repeat volta 2 {
a4 r2.
r4 a a c8 a~(
a g4.) r2
r4 c4 c b8 a~

a4 r2.
r4 a a c8 a~(
a g4.) r2
r4 c c b8 a~

%%%% Strophe %%%%
a4^\markup{\italic fine} \new Voice = "verse" { r r8 c c a
c4 c c d
c8 b~ b b~ b2
r4 c c b8 a~

a4 r r8 c c a
c4 c c d
c8 b~ b b~ b2
r2. c8 a

c4 c c c8 c~
c b~ b4 r b8 b
e4 d c b8 c~
c4 r2 c8 a

c4 c c8 d~ d c~
c b~ b4 r b8 b
e4 e e d8 e
}
}
\alternative {
{r4 c c b8 a\laissezVibrer}
{r1}
}

%%%% Bridge %%%%
r4 c8 a c4 a
b a8 b~ b b b b~
b r b4 b8 b~ b e~
e4 r2.

r4 c8 a c4 a
b8 a~ a b~ b b b b~
b4 r4 c a8 b~
b4 r2.

r4 c4 b a
g8 f~ f e~ e d~ d4
r e e8 d~ d c~
c4 r4. c8 c d

e4 d8 c~ c d~ d e~
e4 r4. c8 d4 
e4. c8~ c2
r2 r8 c c d 

e4 r4. c8 d4
e2 e4 e~
e2 r2
r2 r8 c c d

e4 d8 c~ c d~ d e~
e4 c c8 d~ d4
e2( d)
c2 r8 c c d

es4 d8 c~ c4 d
es c r4 c8 c
g'4 g g g8 g~
\partial 4 g^\markup{ \italic {da capo al fine}} \bar "|."
}

Refrain = \lyricmode {
Ich will zu -- rück
Ich will zu -- rück
Ich will zu -- rück
Ich will zu -- rück
Ich will zu -- rück
Ich will zu -- rück

Da -- rin steckt ein Scheiß -- Rep -- til, das uns sagt: Friß o -- der stirb
Kei -- ne Chance, ihm zu ent -- fliehn, weil es uns kon -- trol -- liert
Und es gibt kei -- nen ders uns raus -- o -- pe -- riert
Weil wir nicht halb so mensch -- lich sind wie wir glaub -- en
stirbt mit dem Tier auch der Mensch in uns
Es tut uns kei -- ner den Ge -- falln uns zu er -- lö -- sen
Drum ist die Ge -- gen -- wart so grau -- sam und da -- rum will ich zu -- rück
}

textEins = \lyricmode {
in ein -- e gol -- de -- ne Ver -- gan -- gen -- heit,
Ich will zu -- rück
in ein -- e mensch -- li -- che und hel -- le Zeit. 
Doch die hat es nie geg -- eb -- en,
und das weiß ich ganz ge -- nau,
aber in mir ist die -- se Sehn -- sucht
_ ich halt's hier nicht mehr aus:
Ich will zu -- rück
}

textZwei = \lyricmode {
weil frü -- her Zu -- kunft noch Ver -- hei -- ßung hieß,
Ich will zu -- rück
weil uns der Fort -- schritt stän -- dig hof -- fen ließ.
Doch das wird es nicht mehr ge -- ben
denn die Zu -- kunft ist vor -- bei
je -- den Tag wird al -- les an -- ders
ab -- er nie wer -- den wir frei:
Ich will zu -- rück
}

textDrei = \lyricmode {
mir geht's nicht schlecht, ich find mich schon zu -- recht
Ich will zu -- rück
mich stört die Un -- voll -- kom -- men -- heit des Jetzt
Da -- ran kann kei -- ner etwas än -- dern
kei -- ne Schuld von ir -- gend -- wem
auch kein Grund, sich zu ent -- schul -- digen
un -- ser Hirn ist das Pro -- blem:
}

harmonies = \chordmode {
\germanChords
\partial 2. s2.
a1:m d:m g e
a:m f c e

a:m d:m g e
a:m f g e

f g e f
f g e g g

a:m b:7 e1*2:7
a1:m b:7 e1*2:7
d1:m g e f

a:m g f1*2
a1:m g f1*2
a1:m g e:7 f
f1*2:m g1*2
}

upper = \relative c'' {
\partial 2. r2.
<c, a'>4 e <e c'>8~ <f c'> <g b>~ <e b'>
a4 f c' b
g d b' a
gis e c' b

a4 e c' b
a f c' b
g e c' b
gis e c' b
}

lower = \relative c {
\clef bass
\partial 2. r2.
a4 r c cis
d4 r c b
g4 r g a
e4 r g gis
}

\score {
   <<
     \new ChordNames {
	\set chordChanges = ##t
	\harmonies
      }
      \new Voice = "melody" {
%          \autoBeamOff
          \global \melody
      }
     \new Lyrics \lyricsto melody \Refrain
     \new Lyrics \lyricsto verse \textEins
     \new Lyrics \lyricsto verse \textZwei
     \new Lyrics \lyricsto verse \textDrei

      \new PianoStaff <<
         \new Staff = "upper" { \global \upper }
         \new Staff = "lower" { \global \lower }
      >>
   >>
   \layout {
      \context { \RemoveEmptyStaffContext }
   }
   \midi { }
}