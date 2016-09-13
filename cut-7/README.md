Laser boot, cut 7: Heckballs with overcuts and logos
====================================================

This is a refinement of [Cut 5 Heckballs][2]; Heckballs is an edge-lap
construction-set design I developed based on some ideas Matt Heck
showed me in 2005 or 2006.  [PDF output to send to laser cutter][3],
[parametric model in PostScript][4].

[2]: ../cut-5
[3]: ./heckballs.pdf
[4]: ./heckballs.ps

Cut 5 was super awesome to play with, but it still tears the octagons
if you twist the joints, for example by squishing a ball flat.  So it
occurred to me that instead of just trying to round corners, I could
make some further cuts so that that particular twisting motion
wouldn’t produce such extreme deformations.  As a bonus, this extra
cut doesn’t add slow-to-cut corners the way the outside divots do.
But it might turn out to make strength worse rather than better, since
it creates a sharper corner, the sharpest possible corner in fact.

I’m trying a variety of different overcut depths on the octagons on
this cut to see what works best.

This version also adds a laser-engraved logo,
tapers the ends of the beams so that they won’t
collide if you stick them all over a ball,
and moves the parts away from the edge
of the stock (since they asked me to do that).

Here are the things I still want to do but haven’t done yet:

1. Slit the scrap squares so they also work as connectable pieces.

2. The octagons (and divots, if any) should be hexadecagons so their corners
   aren’t as sharp, both to reduce the stress concentration factor and
   to make them easier on your hands.

3. The engineer at Max58 suggested that maybe I should let the divot
   slope go down into the bottom of the slits instead of letting the
   slit bottom be perfectly flat, thus reducing the width of the
   divot.  Presumably after some crushing this would lead to a kind of
   Pringle shape at the bottom of the slit.

4. Sprung snap joints!  That will escape the conflict between being
   easy to assemble and not falling apart a lot better than just
   fine-tuning slit widths.  Even Tinkertoys have sprung joints,
   although without snaps; that’s what the slits in the ends of
   Tinkertoy beams are for.

5. Take more photos.

Shitty code
-----------

The code of this version is really messy from just hacking some things
in, using the smallest change that would make them work.  But that’s
kind of a general feature of this design, because for things like
chamfers, nesting, common-cut elimination (which is sort of part of
nesting), retaining tabs (there’s probably a real name for this?), and
assembly interference avoidance, I’d really benefit from a more
capable CAD representation with constraint solvers and 3-D
visualization and whatnot.

At some point I feel like I’m going to have to bite the bullet and
either switch to a real parametric CAD system or write one.
ImplicitCAD, BRL-CAD, FreeCAD, and SolveSpace have been suggested as
options.  I’m pretty sure I’d be unhappy with ImplicitCAD because, by
design, it doesn’t have a GUI.

Beam tapering
-------------

The worst case for beam collision is when they’re at 45° to the common
axis of the two octagons in a ball; they’re both almost touching the
center of the ball in that case.  So the question is what angle I need
to taper the beams at so that their tapered sides are parallel with
those of the neighboring beam in this case, and would intersect just
before the center ball.

The planes of the beams are at a 1:1 slope to the common axis, and so
their intersection line is at *x*=*y*=*z*.  The center line of one of
the beams, by contrast, is at *x*=*z* and *y*=0.  So cos θ =
normalized([1, 1, 1]) · normalized([1, 1, 0]); these have components
of respectively 1/√3 and 1/√2, so we have 2/√6 = 2√6/6 = √6/3 = √⅔.
This suggests that θ ≈ 35.26°, which is an unexpected result, but
I think correct.

It took me a while to get the math for this right, and I’m still not
totally confident that the taper is okay.  And I had to cut the
chamfering to zero to get it to not overlap.

I shortened the slit part of the beam in order to be able to chamfer
properly.

Costs
-----

Max58 responded to my Saturday-morning email with a quote in 26
minutes, but didn’t have availability to do the cut until a few hours
later.

My original cost estimate was 897" and AR$359 (if engraving was free)
to AR$397 (if it cost the same as cutting), but instead the quote they
sent was $540.  Also, they suggested that since the laser-cutter
rasters horizontally to do surface engraving, maybe I should rotate
the logos (and the pieces, if necessary) to be horizontal on the sheet
in order to reduce the engraving time.  On changing the engraving to
marking, the cost went down to $420, suggesting that the cost of
marking is about 1.6 times the cost of cutting, although I may be
exaggerating the precision of that AR$359 number.

It took 2'25" to do the marking, which was all first.  I unfortunately
didn’t properly note the time to do the entire cutting and marking
operation, but I think it was 17 minutes and change.  The engraving
involved 967 vertices and 893.2 mm of cutting (!!).  If we estimate
that the vertices take the same 60 ms each, they account for 58.02
seconds, leaving about 87 seconds, for about 10.3 mm/s of cutting
speed.

This 2'25" would account for AR$58 at the estimated cost of AR$0.40
per second, leaving $362, almost exactly my $359 estimate.

While not exact, this should enable me to extend the cost model in a
reasonably accurate way to future cuts:

- 10.3 mm/s for marking;
- 24 mm/s for cutting;
- 60 ms per vertex;
- AR$0.40/s, or US$0.026/s.

Observations
------------

The overcut thing doesn’t really work at any of the lengths tried,
0.5 mm to 9.5 mm.  Twisting connected octagons until they are flat
still tears the MDF; the square “tongue” at the bottom of the slit
gets *twisted* by the other slit, which I didn’t anticipate, but
should have.

This is a disappointment, because it was a lot cheaper than any of the
other things I’ve tried to reduce the cracking.

The beam taper is almost exactly right, although since I didn’t
account for the beam thickness, they press against each other a bit,
which would be fine except that it has a tendency to lever balls
apart.  The shortened beams interact in a very unfortunate way with
overcuts: bending stresses in beam-beam joints apply a large moment to
the “tongue”, breaking it off.

I brought out Heckballs at the birthday party of my roommate’s
8-year-old son.  Very rapidly I had eight or ten parents playing with
them.  Later, lots of six-to-ten-year-olds came inside and started
playing with them.  Unfortunately, one of the adults came up with the
stupid idea of setting up a tower-height competition among the kids;
this generated competition for resources, exclusion of the less
physically aggressive kids, and unimaginative architecture.

This spectacle of a height competition with structures unavoidably
consisting almost entirely of beams joined end-to-end, a metaphorical
penis size competition, often listing over at one or another awkward
angle, made me realize that I’d inadvertently designed the beam taper
as an almost perfect cartoon penis head.

In addition to the designed-in cube and octahedron geometrical
possibilities, I found that it’s possible to join twelve octagons in a
ring with sixfold rotational symmetry.  Each octagon is at a 135°
angle to an octagon two prior to it; such alternating octagons around
the ring are on a six-sided pyramid.  I wasn’t expecting to be able to
get sixfold rotational symmetry out of 45° and 90° angles.

The variable slit width due to laser-cutting imprecision continues to
make fit tightness inconsistent and unpredictable, since I still
haven’t done snap joints.

<link rel="stylesheet" href="http://canonical.org/~kragen/style.css" />

<style>
img { float: right; margin: 0.5em }
</style>