Laser boot, cut 6: a Sierpiński cutout
======================================

I thought I’d take a break from [Heckballs](../cut-5) for a bit and
try something different, like a fractal.  I was thinking maybe a tree
but I decided that an L-system-generated Sierpiński arrowhead curve
cutout would be easier.

Cost model
----------

For this one I wrote a cost-estimating model in PostScript, roughly
calibrating it from my previous experiences.  At first it was
completely broken; the costs it computes were wildly wrong.  Applied to
[Cut 5 Heckballs](../cut-5) it said:

> Totals: 2339 vertices; 14689.6 mm drawn.
> Estimated cutting time 1603.31 seconds, estimated Max58 cost AR$673.389.

The reality was that it took 827 seconds, just over half of this
estimate, and consequently cost AR$350.  The cost per second is about
right, but that's because I took the cost per second from that cut
(which was about 5% higher than previous cuts).  For [Cut 4
Heckballs](../cut-4), the results were even more wildly off:

> Totals: 4549 vertices; 13990.2 mm drawn.
> Estimated cutting time 2455.52 seconds, estimated Max58 cost AR$1031.32.

The reality was 832 seconds and AR$320.

For [Cut 3 Heckballs](../cut-3), its estimate was again absurdly high:

> Totals: 1512 vertices; 23544.4 mm drawn.
> Estimated cutting time 1675.0 seconds, estimated Max58 cost AR$703.499.

The reality was 1046 seconds and AR$400.

I had estimated Cut 3 to be 21.9 m of cutting, so the distance here is
probably within 10% of correct.

R is happy to analyze these three data points and give me a shitty
linear model:

    > vertices <- c(2339, 4549, 1512)
    > mm <- c(14689.6, 13990.2, 23544.4)
    > s <- c(827, 832, 1046)
    > summary(lm(s ~ vertices + mm))

    Call:
    lm(formula = s ~ vertices + mm)

    Residuals:
    ALL 3 residuals are 0: no residual degrees of freedom!

    Coefficients:
                Estimate Std. Error t value Pr(>|t|)
    (Intercept) 425.1097         NA      NA       NA
    vertices      0.0104         NA      NA       NA
    mm            0.0257         NA      NA       NA

    Residual standard error: NaN on 0 degrees of freedom
    Multiple R-squared:     1,	Adjusted R-squared:   NaN 
    F-statistic:   NaN on 2 and 0 DF,  p-value: NA 

So linear regression on three points says that a laser-cutting job
takes 425 seconds plus 10 ms per vertex and 26 ms per mm.

This kind of makes no sense.  I *saw* the laser take 12 seconds to cut
259-mm-long cuts, so I know that straight-line cutting happens at
between 20 and 23 mm/s, which is 42 to 50 ms per mm; the numbers can’t
be that far off.

If I jam some zeroes in the arrays to persuade R to use a near-zero
intercept, I get an intercept of 5, 60 ms per vertex, and 42 ms per
mm.  This is maybe more legit, although maybe it’s counting vertices
that don’t slow the laser down, too.

(One of the troublesome things is the Max58-requested outline box,
some of which has at times been included and at times not in what was
actually cut, but this is not a major part of the total cutting time.
That box takes about a minute actually.)

For the current Sierpiński cutout, I got this report instead:

> Totals: 739 vertices; 8129.49 mm drawn.
> Estimated cutting time 665.122 seconds, estimated Max58 cost AR$279.351.

If I correct that to use something like the linear model I described
above from R (60 ms per vertex, a second per 24 mm of cutting), and to
use AR$0.40 per second, I get this instead:

> Totals: 739 vertices; 8129.49 mm drawn.
> Estimated cutting time 388.069 seconds, estimated Max58 cost AR$155.227.
