Laser boot, cut 4: Divoted Heckballs
====================================

This is a refinement of [Cut 3 Heckballs][2]; Heckballs is an edge-lap
construction-set design I developed based on some ideas Matt Heck
showed me in 2005 or 2006.

[2]: ../cut-3

I spent a couple of hours making these changes from cut 3 tonight:

1. The basic octagon size across the flats is reduced from 100 mm to
   50 mm.

2. The tabs that prevent the thing from falling apart during cutting
   are increased from 750 μm to 1 mm in width.  Also, they include the
   scraps.

3. The slop on the slot width is reduced from 150 μm to 30 μm.  I
   still want to get rid of that by designing a snap joint.

4. I also laid it out in 9 rows of 4 octagons instead of 4 rows of 8,
   in order to nest better on the sheet.

5. I eliminated the top and right of the outer box in order to
   eliminate the possibility of double cuts.

6. The slot bottoms have 6-mm-diameter outside divots to prevent
   breakage.  For now I’m using regular octagons rather than circles,
   since laser-cutting circles seems to be a lot slower.  I want to
   use hexadecagons but I also need to sleep.

Here are the things I still want to do but haven’t done yet:

1. Beams!

2. Slot the scrap squares so they also work as connectable pieces.

3. The octagons and divots should be hexadecagons so their corners
   aren’t as sharp, both to reduce the stress concentration factor and
   to make them easier on your hands.

Turtle graphics
---------------

I’m still just using PostScript for this version, but I needed a way
to describe the divots in a way that allows rotation.

PostScript’s imaging model allows you to rotate and translate the
coordinate system, so I could just use that.  But I thought it would
be easier to use turtle graphics instead, so I wrote a simple turtle
graphics system in PostScript.  This allows you to draw with the
PostScript currentpoint using Logo commands: `seth` to set the
turtle's angle in degrees (0 being straight up, as in Logo or the
compass, not to the right) `lt` and `rt` to rotate the turtle left and
right in degrees, `fd` to move it forward by some distance drawing a
line if the pen is down, `pu` to pick up the pen, and `pd` to put down
the pen.  Additionally you can save the turtle’s state (pen state,
angle, and position) onto the PostScript stack with `here` and restore
it with `return`.

You need to position the turtle with `moveto` before you can start
drawing with `fd`.

Here’s the whole implementation of turtle graphics for PostScript:

    /seth { /theta exch def } def
    /rt { theta add seth } def
    /lt { neg rt } def
    /pd { /turtle-pen {rlineto} def } def
    /pu { /turtle-pen {rmoveto} def } def
    /here { [ /turtle-pen load  theta  currentpoint ] } def
    /return { aload pop  moveto  seth  /turtle-pen exch def } def
    /fd { dup  theta sin mul  exch theta cos mul  turtle-pen } def
    pd  0 seth

Observations
------------

I was hoping that this version would take something like 9 minutes to
cut, because of the smaller size and cost between AR$200 and AR$300,
but instead it took 13'52" and cost AR$320.  Also, I was hoping that
it would be less breakable in two ways: the outside divots on the
slots would reduce stress concentrations, and the smaller size would
reduce the leverage available to break it with.

Instead, it was more breakable: both the divots and the smaller scale
reduced the distance between slots, with the consequence that it was
far more fragile.  The divots also probably accounted for the
longer-than-expected cutting time.

Still, it has enough elasticity that I was able to throw an assembly
against a wall repeatedly with no visible damage.

I was also hoping to have time to add slots to the square scraps in
between the octagons, but my attempts to do that failed, in part
because of the big divots, and in part because I was at a loud party
that made it hard to concentrate.  The whole thing looks like a jigsaw
puzzle, which is cool, and the scraps do hold together a little bit
better with their knobs, but not really well enough.

I gave some of the previous (100-mm) Heckballs to a baby, who enjoyed
them and was not able to put them together or to break them.  If you
broke one of the tabs off, it would be 34 mm wide, probably too wide
to choke on.  This version might be less suitable for that, because it
has lots of small pieces that could break off pretty easily.

The smaller amount of slop (30 μm) was intended to eliminate the
problem of assemblies simply falling apart under the weight of the
octagons.  It did greatly reduce it, but it didn’t eliminate it.
Also, it made them noticeably trickier to assemble, since I still
haven’t managed to add corner chamfers.

The 1-mm tabs to hold the sheet together during cutting were
annoyingly difficult to break apart.

<link rel="stylesheet" href="http://canonical.org/~kragen/style.css" />

<style>
img { float: right; margin: 0.5em }
</style> 