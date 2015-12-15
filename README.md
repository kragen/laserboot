This is a notebook of laser-cutting experiments.

So far, I’ve only achieved some super basic stuff.

Purpose and background
----------------------

The purpose here is rather like the objective of RepRap: design a
machine that can make itself.  RepRap is a very inspiring project
which moves us a big step forward toward the glorious post-scarcity
future of universally accessible material abundance through
self-reproducing machinery and freely shared information.

However, I think RepRap’s focus on additive fabrication with FDM may
be a big handicap: while FDM, like other additive processes, lets you
do fairly free-form fabrication, the materials available are
relatively limited in their properties, and in particular, they are
inherently incapable of fabricating certain parts of the printer
itself: the hotend especially, but also kind of the heated bed.  And
FDM is very slow, both in terms of absolute quantity of material and
in terms of information bandwidth.  And its tolerances are not that
great, especially in the Z dimension.

Other additive processes, like powder-bed printing (whether
binder-based or sintering-based), Carbon3D and other optical
polymerization systems (including the original SLA), and especially
processes using DLP, have better bandwidths.

### Planar digital fabrication processes ###

There’s another family of digital fabrication processes which are more
limited in the shapes they can achieve than the additive processes
mentioned above, but which I think may actually work better for
RepRap’s aim of a personal-scale, environmentally sustainable
self-reproducing factory.  These processes work by cutting
prefabricated sheets of material into pieces with a precise kerf at
right angles to the surface following a two-dimensional design.

I can’t find a general term for this family of processes, so I’m going
to call them “planar fabrication processes”, even though that already
means a different process in semiconductor fabrication.  The most
accessible of these processes is laser cutting, but to some extent
these processes are interchangeable: they have very similar
capabilities.

Planar digital fabrication processes share FDM’s ability to produce
custom shapes from digital files at high bandwidth, but they have the
great advantage that they only need to apply energy to the edge of the
shape they’re creating, rather than its entire volume.  They have a
lot of scope for optimization processes and parametric design, but
work at one or two orders of magnitude higher speed, and they work
with a much larger range of materials, including materials with two to
three orders of magnitude better properties than the PLA and ABS used
in FDM.

#### Nonmetal laser cutting ####

The most accessible of these processes is laser cutting of plastics
and wood-based materials; although an entry-level Epilog laser cutter
costs US$8000, service bureaus throughout the urban world have these
machines available and are willing to do quantity-1 runs for costs
under US$10.

The particular laser cutter I’ve tried so far will cut MDF sheets of
up to 810×450mm with about 60μm precision and a kerf of about 100μm,
it has no minimum corner radius beyond that implied by the imprecision
of the kerf itself, and the kerf can start or stop anywhere.  The
laser cutter can additionally mark surfaces or engrave (“gouge”) them
to different depths.

MDF’s material properties are actually fairly similar to PLA, except
that MDF has about a third the tensile strength, doesn’t melt, and
falls apart in water.  But you can shape 100 grams of MDF on a laser
printer in about the time it takes to shape 1 gram of PLA on a Prusa
Mendel, depending on how elaborate your shape is.  And the same laser
cutter can also cut PMMA, which is several times stronger and
transparent to boot.

Several other processes share many of the same properties.

#### Metal laser cutting ####

Higher-powered laser systems can cut metals too; while a laser cutter
for cutting MDF and plastics might have a laser of 30 to 80 watts
output, a laser cutter for metals might have an output of 250 to 4000
watts, depending on the thickness, which means that the power to run
the laser is kilowatts up to tens of kilowatts.  I don’t know much
about these machines, and I’ve never seen one.

The lower-power machines I mentioned above can, at best, cut metal
foil.

#### CNC plasma cutting ####

I don’t have any experience with these yet, although I’ve used a
manual plasma cutting torch, which costs only about US$1000.

A CNC plasma cutter moves a plasma cutting torch over a cutting table
to cut planar shapes in a sheet of metal.  Instead of cutting the
shape with light, it generates a plasma arc between an internal
tungsten electrode and the workpiece, which is blown through a
water-cooled nozzle and the workpiece with a high-pressure air supply.
This is a lot more efficient than a laser, since nearly all of the
energy ends up being applied to the workpiece, but it’s also a lot
less precise, producing a much rougher cut surface that’s not as
perpendicular.

An entry-level plasma cutting table seems to cost about twice as much
as an entry-level laser cutter, at about US$15000 or US$20000.  The
Global Village Construction Set is working on an open-source torch
table, and Jacques Mattheij has open-sourced his own torch table
design at <http://jacquesmattheij.com/how-to-build-a-windmill-ii>,
which he used to build his own windmill power plant.

Plasma cutters are also capable of gouging surfaces and making cuts at
non-perpendicular angles to the workpiece surface.

They have some disadvantages.  They can’t cut nonmetals because the
arc needs to terminate on the workpiece.  The moving nozzle has more
mass than the mirrors of a laser cutter, and the plasma arc has to
continue running at a somewhat constant power in order to maintain a
consistent kerf, and consequently at least some of these machines have
a minimum turning radius.  Sharp outside corners are achievable even
then at the cost of a sort of cloverleaf approach.  I think that when
you start a new kerf, it starts out a bit wider and sloppy.  Finally,
they generate a heat-affected zone near the kerf, altering the
material properties.

Metals have a lot of advantages over plastics and MDF for many
applications: they are on the order of 100 times stronger and stiffer,
have about 10 times the strength-to-weight ratio, and have about a
tenth of the thermal coefficient of expansion.  Their main
disadvantages are that they are more expensive and harder to shape.

#### Wire EDM ####

I have no experience with this either.

Wire EDM also cuts a metal workpiece by vaporizing it with plasma, but
instead of blowing the plasma through the metal with air pressure, it
generates the plasma in many tiny sparks underwater in between a tiny
brass wire and the workpiece.  The water cools the workpiece and
minimizes the heat-affected zone; the wire is continuously fed through
the workpiece in order to get rid of the wire that has already been
exposed to plasma.

Wire EDM is a much more precise process than those mentioned above,
with a typical kerf width of some 300μm and precision of better than
10μm.  The process can cut arbitrarily tight corners, but can’t start
a cut in the middle of the workpiece unless you drill a starter hole
first and then feed the wire through it.

Homebuilt hobbyist wire EDM machines are all over YouTube, but I don’t
think they get very good precision.  Commercial wire EDM machines seem
to be relatively inexpensive, starting around US$1000.  They have
higher operating costs than the other machines mentioned above,
though, because of the brass consumption.  As a result, I don’t think
wire EDM is a great bet for self-reproducing machinery.

#### Scrollsaws ####

Scrollsaws cut curved kerfs in wood workpieces using a thin
reciprocating saw blade.  They are far and away cheaper than any of
the above-mentioned processes, starting at around US$100, but also
less precise, and with a kerf width of as much as 1mm.  As with wire
EDM, you have to predrill holes if you want to start a cut in the
middle of the workpiece.  The blade width imposes a minimum curve
radius, but the biggest issue is that typically you have to rotate
either the workpiece or the saw as you curve, and consequently CNC
scrollsaws are apparently unknown.  Spiral scrollsaw blades, which
helically cut in any direction, are available; I think they cut a
wider kerf than a regular scrollsaw.

However, if you have a design for planar fabrication, a totally ghetto
alternative to laser cutting is to print it out on a printer, glue or
toner-transfer the printout onto wood, and cut it out by hand with a
scrollsaw, jigsaw, or coping saw.

#### CNC routers ####

A CNC router is essentially a CNC milling machine.  Rather than
reciprocating up and down like a scrollsaw blade, the router bit
rotates around a vertical axis, and so it can cut equally well in any
horizontal direction.  CNC routers for cutting wood are available from
about US$500, and they have better precision than scrollsaws, but they
leave much wider kerfs.  Because the bit cuts a round hole, inside
corners have a minimum radius of half the kerf width.

However, CNC routers are capable of extensive non-planar fabrication
as well, particularly if you vary the bit shape.

These are very noisy machines.

#### Abrasive waterjet cutters ####

I have no experience with these.  They’re fairly new, dating only from
the 1980s, and still extremely expensive.

A waterjet cutter sends a supersonic jet of water a few tens of
microns wide, typically formed by a tiny orifice in a synthetic ruby,
through your workpiece, dragging fine abrasive with it.  Waterjets can
cut any material: paper, wood, MDF, steel, titanium, granite, Invar,
beryllium, glass, quartz, tungsten carbide, you name it.  When this
process isn’t completely submerged, it often throws off sparks,
despite the water.  The only requirement is that the abrasive be at
least as hard as the material.  Garnet, the standard abrasive, is
about as hard as quartz; cutting ultrahard materials like silicon
nitride or ruby requires using a harder abrasive such as ruby
(aluminum oxide).  I think cubic boron nitride, boron carbide, and
diamond can be cut using abrasive waterjets, but they would require
one of those three materials themselves as an abrasive — and I can’t
find references to anyone doing it.

Waterjet cutters often are capable of varying the cutting angle as
well (“multi-axis cutting”) but, like the other processes described
above, can’t limit the depth of cut.

Waterjet cutting doesn’t produce a heat-affected zone, doesn’t have a
minimum turning radius, typically has a kerf of around 1mm with a
precision of around 100μm, more precise than any of the other
processes mentioned above except for wire EDM.  The kerf, as with most
of these processes, is tapered; in this case the far side of the cut
is narrower.

These machines are more expensive than the others mentioned above,
with even entry-level machines starting above US$100k.  Worse, their
operating expenses are also high, as they consume massive quantities
of garnet abrasive and energy.  Building a waterjet cutter requires
high-pressure plumbing and exotic materials.  For these reasons, I
don’t think waterjet is currently a viable way to build a small-scale
self-reproducing factory.

### Parametric modeling ###

An ordinary design is a single, fixed shape and set of dimensions.  A
parametric design is a potentially infinite set of shapes of different
dimensions; it can be adapted to different circumstances.  For
example, [BoxMaker](http://boxmaker.connectionlab.org/) is a
parametric design for a right rectangular parallelepiped to be cut on
a laser cutter, presented as a web site.

In some cases, a parametric model is defined with certain parameters
as inputs — in the case of BoxMaker, the parameters are width, depth,
height, units, material thickness, notch length, cut width, and a
couple of booleans — while others are outputs.  Such a parametric
model can be thought of as merely a procedure which computes a design
given those inputs.

[OpenSCAD](http://openscad.org/) is a popular system for such
procedural parametric design, commonly used for FDM design (most of
the parametric designs on Thingiverse are designed with OpenSCAD), but
it is very limited; because the model procedures have no access to the
generated geometry, it’s impossible to do something as simple as a
fillet or a gusset in a generic way, and often quite difficult to do
it for a given design.

Some more advanced parametric modeling systems, like that in
[SolveSpace](http://solvespace.com/), use a more flexible “constraint
satisfaction” paradigm.  A constraint-satisfaction parametric model
consists mostly of a set of constraints relating its various
parameters.  For example, a square might have eleven parameters: upper
left, upper center, upper right, left center, center, right center,
lower left, lower center, lower right, side length, and rotation.
From any three of these parameters, and any two other than side length
and rotation, the other nine can be computed.  Although parametric
constraint models are more flexible than procedural parametric models,
the adoption of such systems is somewhat impeded by the difficulty in
making them work and figuring out why they don’t work when they don’t.

### Optimization ###

The enormous potential of digital fabrication is to enable design
through *optimization*, a word I use in a fairly technical sense here.
The “optimization” problem is, given

1. a multidimensional design space;
2. constraints on feasible designs; and
3. an objective function to minimize;

to find the point in the feasible subset of the design space that
minimizes that objective function.  For example, to build a bridge,
your design space might be all of the different possible ways the
available materials could be connected together, you are subject to
constraints of connecting to both sides of some space, supporting a
given load and resisting wind and so on, and you might want to
minimize the cost of building the bridge subject to those constraints.

An already-mainstream example of this approach is “topology
optimization”, in which typically the dimensions of the design space
are density of a single material in different cuboidal
finite-element-analysis cells of a physical space, the constraint is
typically a maximum amount of total material to use, and the objective
function is typically stiffness (or rather its reciprocal,
compliance.)  There are a variety of existing proprietary software
packages that do this; solidThinking Inspire, Abaqus, ANSYS,
HyperMesh, and Midas NFX are some examples.  But topology optimization
research continues, exploring constraints and objective functions
touching on manufacturability, thermodynamics, and computational fluid
dynamics.

Except in special cases where the problem has low dimensionality and
strong continuity properties, finding the actual global optimum is
computationally infeasible.  If I understand correctly, topology
optimization is typically done with simple gradient descent.  Other
general optimization algorithms that could be applied include simple
random sampling, gradient descent with random restart, genetic
algorithms, tree search, pathfinding, and non-chronological
backtracking, along with more advanced forms of design-space sampling
that attempt to generate “interesting” starting points by recombining
patterns that are already known to work under some circumstances.
Several of these approaches can get orders-of-magnitude speedup from
incremental computation.

(Topology-optimization results often look nothing at all like human
designs, resembling trees, corals, jellyfish, or bones more than
traditional industrial designs.)

But all of these are iterative algorithms: they take a proposed
design, evaluate it in simulation, and use the results to come up with
more proposed designs.  Doing this for the design of a physical thing
requires a sufficiently accurate simulation of the performance of the
thing to make the optimization process useful rather than
counterproductive.

The more of the design and fabrication process that the optimization
process can model, the better it can do.  For example, if it knows the
limitations and imprecisions of the fabrication process, it can work
around them; to the extent that it can model the production cost, it
can reduce it rather than increasing it.  Current mainstream topology
optimization systems are still far too primitive to take into account
such things.  But these optimization concerns cut across these
traditional abstraction layers; to the point that you can allow the
optimizer to cut across those layers, it can produce a much better
design.

Optimization is in some sense a generalization of constraint
satisfaction: constraints are absolute, all-or-none requirements,
while optimization seeks to fulfill requirements as much as possible,
including greatly exceeding minimal requirements, if possible.  You
can define an objective function to take into account as many
constraints as needed.

Status
------

Right now I’ve successfully done some really basic tests and very
simple constraint-propagation-driven gear designs.