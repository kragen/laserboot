Laser boot, cut 5: Chamfered Heckballs with beams
=================================================

This is a refinement of [Cut 4 Heckballs][2]; Heckballs is an edge-lap
construction-set design I developed based on some ideas Matt Heck
showed me in 2005 or 2006.

[2]: ../cut-4

Cut 4 came out more fragile than I wanted, and the smaller scale
didn’t help its strength the way I thought it would.  So this version
makes the following changes, which took me a couple of hours:

1. The **octagon size is increased** back to 100 mm across the flats
   again.

2. The **array of octagons is just 4×4** this time on the theory that I
   can reduce costs that way.

3. The tabs that hold the parts together during cutting are reduced
   back down to **800 μm tab width**.

4. The **divot diameter is reduced** from 6 mm to 3 mm, which isn’t much
   stress relief, but also won’t weaken the pieces as much.

5. The corners of the slits are generously **chamfered to ease assembly**.

6. The **slit opposite the elongated slit is removed**, for strength and
   stiffness, because you can’t use them both at once anyway, and to
   cut down on cutting time.

7. **Beams** are added!  They should put octagon centers four times as far
   apart as if the octagons were just edge-lapped at their edges.
   Also, the octagons they link should be coplanar, while they would
   have been in perpendicular planes if they had been connected with
   three intermediate octagons.  The beams are a bit more area than
   the octagons.  They still won’t work for the angled constructions I
   was originally envisioning because they will collide with other
   beams, and they have sharp corners, but it’s a start.

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

Observations
------------

This is by far the best version yet!  This version is super awesome!
The divots don’t prevent damage when octagon balls are squished, but
they do reduce it noticeably.  The 30-micron slop means that some
slits still slide apart under the weight of just an octagon, while
others are comfortably snug, but the chamfers greatly reduce the
assembly difficulty I noticed with the tight 50mm version.  Snap-fit
joints (or bent or curved slits) will eliminate this inconsistency.

When I first compared the beam length against a string of octagons, I
thought I had screwed up the beam length calculation, but I think I
just hadn’t put the octagons together tightly.  If it’s incorrect,
it’s very close to correct.

### Time, cost, and equipment ###

This version took 13 minutes and 47 seconds to cut, almost exactly the
same as the version yesterday, which didn’t have beams but had 32
small octagons instead of 16 big ones.  The long sides of the new
259-mm-long beams took about 12 seconds each to cut, about 22 mm per
second.  The small octagonal double-divot slit bottoms took about 3
seconds each to cut, which is closer to 3 mm per second, so we can
confidently say that the cutting cost there was due primarily to the 8
corners, so we can estimate that each corner costs about 400 ms.

All of this is happening on Max58’s fabulous Universal Laser Systems
cutter (whose model number I haven’t noticed), driven by
VLS6.60 with a 60-watt CO₂ laser.  This means potentially about 24
joules per corner or about 2.7 joules per millimeter.

This works out to a higher cost of about AR$0.42 per second of
cutting, including the materials and setup, while the previous two
jobs were roughly AR$0.38 per second.  This allows us to calculate
that, within about 5%, each millimeter of cut on 3-mm MDF costs about
AR$0.018 (US$0.0012), and each vertex costs about AR$0.16 (US$0.011).

When I write some code to measure the edge length and count vertices
from the PostScript designs, I should be able to refine these numbers
a bit, but I think it already provides me with an adequate linear
model to use for cost optimization!

### Beam collision limits composability ###

The beams still collide if I try to use a pair of octagons to assemble
a vertex of an octahedron with beams for the octahedron edges.  I can
taper the beam tips to prevent this in the next version.  For now,
I’ve assembled a partial octahedron with five octagons at its top and
bottom vertices, no horizontal edges (since I only have 8 beams), and
an octagon or two at each of the other four vertices.

### Cut logo cost would be high ###

The 400 ms per corner means that cutting the “JECVALZ” or “JECVALS”
logo I've been thinking about, which would contain 23 vertices, would
cost about 9.2 seconds per logo.  This would have added 2½', or about
18%, to the fabrication time.  Laser-engraving the surface is likely
to be faster, cheaper, and adequately durable.

### Creosote exposure is annoying but not dangerous ###

I noticed my hands were itching a little, maybe from the creosote
generated by the laser cutting, so I read through the US EPA’s
information on creosote exposure.  Apparently wood creosote can cause
contact dermatitis and “comedones”, which are blackheads, and in
serious cases can sensitize skin to sunburn; if eaten, it can lead to
liver damage, but they say this is not a danger from dermal exposure.
It also mentioned that rats died from being fed creosote-contaminated
food for 96 weeks; the proportional amount of creosote fed to the rats
would be 6.6 kilograms for a 25-kg kid.  I think the amount of
creosote you could plausibly absorb from Heckballs is about four or
five orders of magnitude lower than that.

But I also plan to air them out for a period of time in order to
reduce creosote levels, both for the smell and to prevent itching.

### 800-μm tabs are great ###

The 800-micron-wide breakable tabs on the parts were enough to keep
the sheet from falling apart during fabrication; none of them got cut
by the laser.  But they broke apart easily by hand, unlike yesterday’s
1mm tabs.

### Scrap hangs nicely ###

An unexpected benefit of reduced outside divot size is that the
resulting knobs on the ends of the scraps no longer easily slip
through the divot holes, so now if you turn the scrap pieces sideways,
you can slide them into the slits and hang them there.

Next plans
----------

1. Try the nonflat-slit-bottom thing suggested by the engineer at
   Max58.

2. Slit the scrap squares to make them connectable.

3. Taper the beam ends.

4. Write a predictive cost model.

5. Add snap joints or at least bent slits to make the fit consistent.

6. Add engraved JECVALZ logos.

7. Take more photos.

<link rel="stylesheet" href="http://canonical.org/~kragen/style.css" />

<style>
img { float: right; margin: 0.5em }
</style>