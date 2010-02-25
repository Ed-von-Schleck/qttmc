%\version "2.11.27"

\header {
  title = "Belief"
%  composer = "Text & Musik: Christian Schramm"
}

%Größe der Partitur
#(set-global-staff-size 18)

#(set-default-paper-size "a4")

%Abschalten von Point&Click
#(ly:set-option 'point-and-click #f)

global = {
	\tempo 4=120
	\clef treble
	\key g \major
	\time 4/4
}

melody = \relative c' {
g8 g~ g8 r g4 b8 d~
d d~ d4 r8 c~ c b
e,2 r2
r2 e8 g~ g a~
a4 a8 a~ a4 b
g4 r e8 g~ g a~
a4 a a b
a2 r

g8 g~ g8 r g4 b8 d~
d d~ d4 r8 c~ c b
e,2 r2
r2 e8 g~ g a~
a4 a8 a~ a4 b
g4 r e8 g~ g a~
a4 a a b
a2 r4. g8

a4 g a g
a g a g
a8 g~ g4 a g8 a~
a4 g8 a~ a b~ b4

g4 a bes a
g2 r4. d8
g4 a8 bes~ bes4 c8 d~
d2 r2

%%%%%%
r4 d d d
d d d8 e~ e e~
e1
r1

d4 d d d8 d~
d4 d d e8 e~
e1
r1

d8 d~ d d~ d4 d
d8 c~ c4 c  b8 b~
b2 r2
b4 b c d8 e~
e4 g,2 g4~
g2 r
g4 a g a8 bes~
bes4 c d8 es~ es4

d1
R1*15

 \bar ":|"


}

textEins = \lyricmode {
No -- thing lasts for -- e -- ver but the sky
or at least it seems that way on a clear, cold au -- tumn day
e -- very -- thing will slow -- ly pass me by
and some time not far a -- head I'll be in the realm of dead

but some -- how that won't scare me,
I am ve -- ry well a -- ware
the on -- ly thing that gives me grief
is per -- so -- nal be -- lief

we don't need a -- ny -- thing at all
we -- ve been hap -- pi -- er, as I recall,
in those times we did -- n't have to cling
on -- to such a need -- less thing;
we don't need be -- lief when we got love
}

textZwei = \lyricmode {



}

textDrei = \lyricmode {

}

harmonies = \chordmode {
\germanChords

	
}

upper = \relative c' {
<b d g>1
r2 <b d f>
r4 g <g c e> g
r g <g c e> g

r8 <c e> r4 <a c e> <g c e>
b <g b e> r4 g'8 fis
r8 <c e> r4 <a c e> <g cis e>
a <a d fis> r8 <g c e>4.

<b d g>1
r2 <b d f>
r4 g <g c e> g
r g <g c e> g

r8 <c e> r4 <a c e> <g c e>
b <g b e> r4 g'8 fis
r8 <c e> r4 <a c e> <g cis e>
a <a d fis> r8 <a c g>4.

<d fis a>8 r <d fis a> r <d fis a> r <d fis a> r 
<d fis a> r <d fis a> b' d <fis, a d>~ <fis a d> g
<d fis a>8 r <d fis a> r <d fis a> r <d fis a> r 
<d fis a>4 <fis a d> <fis a c> <c fis a>
<e g bes>8 r <e g bes> r <e g bes> r <e g bes> r 
<e g bes> r <e g bes> c' es <g, bes c es>4.
<e g bes>8 r <e g bes> r <e g bes> r <e g bes> r 
<e g bes>4 <fis g bes> <c~ g'~ bes(>8 <c g' a)> <c d fis>4

%%%%%%%
r2 <d g b> 
<d g a>4 <fis a d>2 <fis a d>4
<g c e>1
r8 <g bes e>4. <g bes es>8  <g bes es>4.

r2 <d g b> 
<d g a>4 <fis a d>2 <fis a d>4
<g c e>1
r8 <g bes e>4. <g bes es>4  <a c es>4

d2 <d, g b>4 b'8 c
d2 <d, fis a>4 b'8 d
e4 b g <a,~ dis~ fis~>
<a dis fis>1
<e' g c>1
r4 <e g c>4 a b

r8 <e, g c> r4 <g~ c~ e>8  <g c d> <e~ g~ c> <e g b>
<es g bes>4 r8 fis \times 2/3 {g a bes} c16 d e fis

%%%

<b, d g>4 r <b d g>2
<a d fis>4 <a d g> a' <g,~ c~ g'>
<g c g'> <g c e>2 r8 d'
e d bes a g e a bes

g4 r  <b d g>2
<a d fis>4 <a d g> a' <g,~ c~ g'>
<g c g'> <g c e>2  <g~ c~ g'>4
<g c g'> <c e a>2 <d~ g~ b~>4

<d g b>2 r4 <d g b>
<d fis a> <a d g> fis' <b,~ e~ g~>
<b e g>2 r4 <b e g>
<dis b fis> <dis b g> a' <g,~ c~ g'>

<g c g'> <g c e>2  <g~ bes~ g'>4
<g c g'> <g c e>2  <g~ bes~ g'>4
<g bes g'> <g bes es>2 <g~ bes~ g'>4
<g bes g'>4 <bes es g>2.
}
lower = \relative c {
\clef bass

g'1
r4 g,8 r g a b4
c4 c r c
b b r b
a b c d
e e r b
a b c cis
d d r8 d4.

g1
r4 g,8 r g a b4
c4 c r c
b b r b
a b c d
e e r b
a b c cis
d d r8 a4.

d8 r d r d r d c
d8 r d d'~ d a g4
d8 r d r d r d r 
d4 a d g,
c8 r c r c r c r
c8 r c r4 g4.
c8 r c r c r c r
c4 d e fis

%%%%%%

g,2 r4 d'~
d fis, d2
c1
r4 d8 e g c4.
 
g2 r4 d'~
d fis, d2
c1
r4 c' bes8 g a es

g4 g r g
fis fis r fis
e e r b'~
b a fis8 e d4
c2 r4 c'~
c g e d
c8 r c r c r c r
es r es r es r es r

g2 r4 d'~
d fis, d2
c1
r4 d8 e g c4.
 
g2 r4 d'~
d fis, d2
c1
r4 c' bes8 g a es

g4 g r g
fis fis r fis
e e r b'~
b a fis8 e d4
c2 r4 c'~
c g e d
c8 r c r c r c r
es r es r es r es r
}

\score {
   <<
     \new ChordNames {
	\set chordChanges = ##t
%	\harmonies
      }
      \new Voice = "mel" {
%          \autoBeamOff
          \global \melody
      }
      \new Lyrics \lyricsto mel \textEins
      \new Lyrics \lyricsto mel \textZwei
      \new Lyrics \lyricsto mel \textDrei

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