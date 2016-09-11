Notes on some idle time
=======================

It’s 2016-09-10, and it’s been a week since I cut anything; I barely
got out of bed this week.  On the plus side, my budget has thus
accumulated a hefty surplus; I can think about making even some very
elaborate things.  On the minus side, that’s a week I haven’t learned
anything new.

For the Heckballs I think I have a new springy slit design which
should stop breakage from twisting and also provide a firm snap fit,
eliminating the problems having to do with slit width imprecision.

I've been watching YouTube videos of, among other things, Nadya Peek
at the MTM project and FreeCAD videos.

FreeCAD looks like it does the things I want a design program to
do — it’s 3D, scriptable, lets you indicate things by pointing at
them, and supports constraint-driven polymorphism — so maybe I can
ditch my janky PostScript code with its procedural polymorphism.

Nadya points out that laser cutters take some time to accelerate from
rest up to some maximum speed and then decelerate again to avoid
overshooting at the end of the line, while adjusting the duty cycle of
the laser.  This probably explains the divergence between my
observation of three seconds or so for the divots in Cut 5 and the
60-ms-per-vertex cost model I have.  I wonder if I already have enough
data points to fit a model with a peak acceleration in place of the
per-vertex delay.

Dave Long pointed out that I could handle chamfers by transforming a
turtle-graphics sequence into another turtle-graphics sequence, which
is kind of promising. I don’t think it will work in that form for
things like the inside divots on the slits in Cut 5.  Also, he
sugested using PostScript’s flattenpath operator to approximate curves
with line segments, which is probably a much quicker hack than the
cost-model optimization I was thinking of doing.

Other fairly immediate things to try fabricating include:

- A ruler, being the simplest of all measuring instruments.

- A flexural weighing scale, using the standard linear-motion flexure
  to measure weight or force.

- A visual vernier scale.  I don’t know why I haven’t seen this done
  before: the idea is that by printing the vernier scale on a
  transparent substance (ideally something like fused quartz, but I’ll
  be using acrylic) with a 50% duty cycle, the visible color should
  shift between 100% fill and 50% fill according to whether it's in
  phase with the scale underneath or not.  Unfortunately,
  laser-engraving acrylic can only generate white marks, not black
  ones, and they aren’t so much white as they are translucent, so the
  maximum achievable contrast is only 2:1, but I think that will be
  good enough.  The scale underneath could be black acrylic etched
  with white marks or beige MDF marked with black marks.  This should
  enable directly measuring displacements down to about a quarter of
  the maximum resolution (white lines plus black lines per mm or
  whatever) of the marking process; I estimate that this will be about
  50 microns.

- A flexural lever displacement amplification system, which should be
  able to achieve 15:1 mechanical amplification of displacements; with
  the vernier, this should enable the measurement of displacements
  down to about three microns.

- A Jecval toybox to contain the so-far-fabricated Heckballs.

- Long finger-joint square tubular beams, to test the extent to which
  that approach can strengthen and stiffen MDF.

- Twisted tubular beams, too.

- A movement stage fabricated with step-down levers to produce
  high-precision movements, in two dimensions if I can figure out how
  to do that.

- The grabber for the piece of the stove that is lost.

- Joinery-style wedge joints, both at right angles and at weird
  angles.

- An octahedral stool.

- Eventually, a bed: 2000 mm × 1500 mm × 400 mm supporting a static
  load of 250 kg with a dynamic load factor of 10 or so.

- Some experimentation with 1.5-mm MDF to see if I can get costs down
  further.

This list of 12 “immediate” things is kind of overwhelming.  Even if I
were to do one per day it would take me two weeks to get through all
of them.  I’d really have to do several per day to get through them
“immediately”, and in practice it’s going to take me several
iterations to get each one working.  But each of them is a really
significant step toward self-replicating machinery, even the ones that
don't appear to be concerned with that — the bed and stool concern
withstanding large dynamic loads without breaking, and the toybox
concerns putting together enclosures.

The measuring instruments in particular should make it possible to
build an apparatus to plot the stress-strain behavior of different
material samples.

On top of all of this, I also want to take a day next week to travel
to a metals fabrication company I’ve been referred to out in the
province next week to get a steel version of Heckballs fabricated,
which I think will cost me under AR$1000.

I think I will drop my fabrication budget to US$10 per day, since so
far I have been unable to even keep up with the US$20 per day budget,
which is also a lot of money.