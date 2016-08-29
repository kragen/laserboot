This was the first cut, of laser000.ps with Max58.  This was made from
a slightly earlier (and hopefully functionally equivalent) version of
laser000.ps.

This was an experiment designed to measure fit between laser-cut MDF
pieces.

Summary
-------

This MDF can be compressed or stretched lengthwise without damage by
about 1%, but not much more.  Its density is about 700 g/ℓ.  Though
nominally 3 mm, it’s probably about 3.1 mm thick.

The Max58 laser cutter marks and cuts lines about 100μm in thickness
in this MDF (250dpi), positioned to an accuracy of about 60μm
(400dpi).  Kerf taper is under 100μm, too small to detect mechanically
in this experiment.

This MDF swells about 30% when wet, but only in the direction
perpendicular to its surface.  Parallel to its surface, it swells by
less than 1%.

Unfortunately I don’t currently have a reasonable way to measure
strength properties other than elongation (or really compression) at
break.

Initial observations
------------

The slot is too narrow to measure what I want to measure, because it
grabs the pieces crosswise, making a super strong joint. I had to use
pliers to pull the 20.3mm one out of the slot, damaging its surface.
The 20.5 mm male tongue enters the 20 mm female slot successfully; the
20.7 mm male tongue does not enter the 20 mm female slot successfully.

In the 20 mm width of the hole from which the 20 mm × 30 mm female piece
was removed, pieces up to 20.1mm fall out from either side, the 20.2 mm
piece fits snugly from either side, the 20.3 mm piece fits snugger, the
20.5 piece enters with great difficulty, the 20.7 mm piece enters with
difficulty and some damage, the 20.9 mm piece enters with force,
leverage, and substantial damage, and the 21.1 mm piece enters only
when it’s badly torn up.

From this I think we can infer that the kerf width is actually
somewhere between 50 and 100 μm and is relatively consistent through
the material, even though the kerf looks thicker on the front than on
the back; eyeballing, I think it’s about 300 μm on the front and 100 μm
on the back.

Also, I think we can infer that it’s possible to compress and stretch
the MDF by about 0.4 mm over 20mm (2%, probably about half compressing
the tab and half stretching the slot) before damaging it, and with
relatively little force.

I probably should have done experiments to measure its stiffness and
strength.

- the kerfs do not quite close on the back at a few corners
- the text marking was the slowest part.
- the tongues do not quite reach the bottom of the cut-through slit,
  leaving a burned surface slightly recessed on the other side
- the surface-engraved slit is too shallow to fit tongues into
- there is substantial surface discoloration near the cuts from
  smoke and/or scorching, especially on the back
- the unpainted MDF discolors rapidly when I handle it with my dirty
  bus hands, although less than from the smoke
- 3mm MDF is unreasonably difficult to bend or to break with your
  hands, and I should probably use 1mm MDF or cardboard for most
  things, which should be cheaper too.
- I think I can probably do a nominally 500μm hole with no
  problem.

Kerf and line width measurements
------

In 20151210_162023.jpg I measure the “top” edge on the left of the
20.5mm piece at about (1119, 902) to (1124, 902), or (1119, 822) to
(1124, 822).  The “bottom” edge on the right is from about (1272, 809)
to (1277, 809), or (1236, 927) to (1242, 927).  This means that the
top+bottom kerf is about 10 or 11 pixels wide.  The center of the top
edge kerf runs from about (1122, 596) to about (1122, 948), or about
352 pixels; this is nominally 30mm, or about 11.7 pixels per mm.  That
means that the entire dark kerf size is about 500μm, which I am pretty
sure is much wider than the actual kerf, so maybe much of it is
scorch.  The dark lines in the lettering in this image are about two
pixels or 200μm wide.  This is consistent in different parts of the
image, so it doesn’t have good enough quality to measure the
positioning error of the laser cutter.

In 20151210_162036.jpg, a photo of the back of the piece, the line
along the “top” of the male piece at the top left (the first one) runs
from about (841, 633) to (844, 969), or about 336 pixels, and it’s
about 3 pixels wide, while the part along the “bottom” is about 2
pixels wide.  This is about 11.2 pixels per mm, and the bottom kerf is
thus about 200μm across, some of which might also be scorching rather
than actual cut.

20151210_162050.jpg is a closer view of the back.  The “top” edge of
one of the pieces in it runs from about (1659, 313) to about (1661,
1143), at both of which points it has a bit of extra burning or
cutting into the outside part.  This is nominally 30mm, so this is
about 27.7 pixels per mm.  The kerf is about 2 pixels wide along the
“top” and about 5 pixels wide along the “bottom”, so we have about
130μm of kerf width here.

One of the presumably unintentional uncut tabs in this image is at
about (2215, 313) and is about 3 or 4 pixels wide (100μm) and is
holding the kerf open to about 3 or 4 pixels at that point.

20151210_162057.jpg is a similar closer view of the front.  The “top”
edge of the 19.9mm piece runs from about (919, 305) to about (936,
1218), which is 913 pixels, or nominally 30.4 pixels per mm.  The top
kerf there appears to be some 10 pixels wide while the bottom kerf is
some 15 pixels wide, replicating the initial result of an apparent
500μm top kerf.  The marked lines are about 4 or 5 pixels wide, which
is about 150μm.

Corner radius on the outside of cut in this seems to be about 5 or 10
pixels, somewhat variably, which would be about 150 to 300 μm.  These
are what you would normally call “inside corners” from the point of
view of the part they’re on.  “Outside corners”, the ones the cut is
curving around, are about 3 to 5 pixels radius, which would be about
100 to 150 μm.

I think I can see some jaggies in the lettering.  In
20151210_162102.jpg there are visible jaggies in the first “9” of
“19.9” around (1173, 1276) which is noticeably different from the
other "9" at (1173, 1208).  These seem to be deviations of about 2
pixels, about 60μm.

I tried to get some closeups later in 20151210_165900.jpg.  Here the
3mm-wide engraved slot has one short edge running from (1504, 1214) to
(1627, 1189), which is 126 pixels, or 41.8 pixels per mm.  The
parallel 3mm thickness edge of the male block runs from (1222, 1436)
to (1358, 1409), or 139 pixels, 10% more, which is possible since it’s
a bit closer to the camera.  One main objective here was to estimate
corner radii of the join between cut and uncut surfaces; all we can
really say is that it’s less than about 2 or 3 pixels (75μm) but it’s
impossible to say whether it’s much less (like 5μm or 10μm) or just a
little less.

20151210_191254.jpg was an experiment to test the effect of soaking
the 19.5mm piece in water for an hour or two, which is known to cause
MDF to swell substantially.  Here the “top” edge of the dry 19.3mm
piece runs from (1259, 519) to (1288, 1179), 660 pixels, while the
“top” edge of the wet 19.5mm piece runs from (1353, 1170) to (1333,
505), 665 pixels.  This is probably within measurement error, but it
would amount to 250μm or 1%.  So the MDF experiences relatively little
swell in the dimension parallel to its surface.

However, in 20151210_191356.jpg, we can clearly see the significant
swell perpendicular to the surface: the 19.3mm piece’s 3mm thickness
runs from (1185, 900) to (1179, 1037) (137 pixels) while the wet
19.9mm piece’s thickness runs from (1484, 881) to (1491, 1055), 174
pixels, a 27% increase.

This anisotropy is presumably due to biaxial fiber orientation, which
probably makes its mechanical properties anisotropic when dry as well.
When it’s damaged, the damage tends to be a sort of delamination,
which also suggests anisotropic mechanical properties.