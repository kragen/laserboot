Laser boot, cut 7: Heckballs with overcuts and logos
====================================================

This is a refinement of [Cut 5 Heckballs][2]; Heckballs is an edge-lap
construction-set design I developed based on some ideas Matt Heck
showed me in 2005 or 2006.

[2]: ../cut-5

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

This version also adds a laser-engraved logo.

Still to do on it:

This version also tapers the ends of the beams so that they won’t
collide if you stick them all over a ball and moves away from the edge
of the stock (since they asked me to do that).

Here are the things I still want to do but haven’t done yet:

1. Slit the scrap squares so they also work as connectable pieces.

2. The octagons and divots should be hexadecagons so their corners
   aren’t as sharp, both to reduce the stress concentration factor and
   to make them easier on your hands.

3. I’d like to add some kind of engraved “JECVALZ” logo so that
   curious people can google it.  I don’t know how much extra laser
   time that will add.

4. The engineer at Max58 suggested that maybe I should let the divot
   slope go down into the bottom of the slits instead of letting the
   slit bottom be perfectly flat, thus reducing the width of the
   divot.  Presumably after some crushing this would lead to a kind of
   Pringle shape at the bottom of the slit.

5. Sprung snap joints!  That will escape the conflict between being
   easy to assemble and not falling apart a lot better than just
   fine-tuning slit widths.  Even Tinkertoys have sprung joints,
   although without snaps; that’s what the slits in the ends of
   Tinkertoy beams are for.

6. Take more photos.

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

At some point I feel like I'm going to have to bite the bullet and
either switch to a real parametric CAD system or write one.
ImplicitCAD, BRL-CAD, FreeCAD, and SolveSpace have been suggested as
options.

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

After fiddling around with this for a while, I got some tapers on the
beams, but they’re not quite right yet; I have some kind of math error
that is giving me the wrong beam width.

<link rel="stylesheet" href="http://canonical.org/~kragen/style.css" />

<style>
img { float: right; margin: 0.5em }
</style>