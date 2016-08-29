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

<link rel="stylesheet" href="http://canonical.org/~kragen/style.css" />

<style>
img { float: right; margin: 0.5em }
</style> 