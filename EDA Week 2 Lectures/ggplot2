## What is ggplot2?

- An implementation of the _Grammar of Graphics_ by Leland Wilkinson
- Written by Hadley Wickham (while he was a graduate student at Iowa State)
- A "third" graphics system for R (along with **base** and **lattice**)
- Available from CRAN via `install.packages()`
- Website: [http://ggplot2.org](http://ggplot2.org) (better documentation)
- Grammar of graphics represents an abstraction of graphics ideas/objects
- This "verb", "noun", "adjective" for graphics
- Allows for a "theory" of graphics on which to build new graphics and graphics objects
- "Shorten the distance from mind to page"

>"In brief, the grammar tells us that a statistical graphic is a **mapping** from data to **aesthetic** attributes (coloru, shape, size) of **geometric** objects (points, lines, bars). The plot may also contain statistical transformations of the data and is drawn on a specific coordinate system." -- from _ggplot2_ book                         

## The Basics: `qplot()`

- Works much like the `plot` function in base graphics system
- Looks for data in a data frame, similar to lattice, or in the parent environment
- Plots are made up of _aesthetics_ (size, shape, color) and _geoms_ (points, lines)
- Factors are important for indicating subsets of the data (if they are to have different properties); they should be **labeled**
- The `qplot()` hides what goes on underneath, which is okay for most operations
- `ggplot()` is the core function and very flexible for doing things `qplot()` cannot do

## Example Dataset

``` r
library(ggplot2)
str(mpg)
'data.frame':	234 obs. of  11 variables:
 $ manufacturer: Factor w/ 15 levels "audi","chevrolet",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ model       : Factor w/ 38 levels "4runner 4wd",..: 2 2 2 2 2 2 2 3 3 3 ...
 $ displ       : num  1.8 1.8 2 2 2.8 2.8 3.1 1.8 1.8 2 ...
 $ year        : int  1999 1999 2008 2008 1999 1999 2008 1999 1999 2008 ...
 $ cyl         : int  4 4 4 4 6 6 6 4 4 4 ...
 $ trans       : Factor w/ 10 levels "auto(av)","auto(l3)",..: 4 9 10 1 4 9 1 9 4 10 ...
 $ drv         : Factor w/ 3 levels "4","f","r": 2 2 2 2 2 2 2 1 1 1 ...
 $ cty         : int  18 21 20 21 16 18 18 18 16 20 ...
 $ hwy         : int  29 29 31 30 26 26 27 26 25 28 ...
 $ fl          : Factor w/ 5 levels "c","d","e","p",..: 4 4 4 4 4 4 4 4 4 4 ...
 $ class       : Factor w/ 7 levels "2seater","compact",..: 2 2 2 2 2 2 2 2 2 2 ...
```

#### Factor variables are labeled appropriately (manufacturer, drv, etc.)

## ggplot2 "Hello, world!"

``` r
library(ggplot2)
qplot(displ, hwy, data=mpg)
```

![](qplot1.jpeg)

## Modifying aesthetics

``` r
library(ggplot2)
qplot(displ, hwy, data=mpg, color=drv) # color aesthetic, auto legend placement
```

![](qplot2.jpeg)

## Adding a geom

``` r
library(ggplot2)
qplot(displ, hwy, data=mpg, geom=c("point", "smooth"))
```

![](qplot3.jpeg)

## Histograms

``` r
library(ggplot2)
qplot(hwy, data=mpg, fill=drv) # Only one variable creates a histogram
```

![](qplot4.jpeg)

## Facets

``` r
library(ggplot2)
qplot(displ, hwy, data=mpg, facets=. ~ drv)
```

![](qplot5.jpeg)

``` r
library(ggplot2)
qplot(hwy, data=mpg, facets=drv ~ ., binwidth=2)
```

![](qplot6.jpeg)

#### For `facets`, left of the ~ indicates source of columns, right indicates source for rows. A `.` indicates no variable for either rows or columns.

- `facets=. ~ drv` indicates 1 row, and a column for every value of _drv_
- `facets=drv ~ .` indicates a row for every value of _drv_, and ` column

## MACS Cohort

- Mouse Allergen and Asthma Cohort Study
- Baltimore children (aged 5-17)
- Persistent asthma, exacerbation in past year
- Study indoor environment and its relationship with asthma morbidity
- Recent publication: [http://goo.gl/WqE9j8](http://goo.gl/WqE9j8)

#### NOTE: The MAACS data are currently not publicly available

## Example: MACS

![](MAACS1.jpg)

![](MAACS2.jpg)

![](MAACS3.jpg)

![](MAACS4.jpg)

![](MAACS5.jpg)

![](MAACS6.jpg)

![](MAACS7.jpg)

## Simulating MAACS analyses w/ the mpg dataset

``` r 
# mpg-maacs1
qplot(log(displ), data=mpg)
```

![](mpg-maacs1.jpeg)

``` r
# mpg-maacs2
qplot(log(displ), data=mpg, fill=drv)
```

![](mpg-maacs2.jpg)

``` r
# mpg-maacs3
qplot(log(displ), data=mpg, geom="density")
```

![](mpg-maacs3.jpg)

``` r
# mpg-maacs4
qplot(log(displ), data=mpg, geom="density", color=drv)
```

![](mpg-maacs4.jpg)

``` r
# mpg-maacs5
qplot(log(hwy), log(displ), data=mpg)
```

![](mpg-maacs5.jpg)

``` r
# mpg-maacs6
qplot(log(hwy), log(displ), data=mpg, shape=drv)
```

![](mpg-maacs6.jpg)

``` r
# mpg-maacs7
qplot(log(hwy), log(displ), data=mpg, color=drv)
```

![](mpg-maacs7.jpg)

``` r
# mpg-maacs8
qplot(log(hwy), log(displ), data=mpg, color=drv, geom=c("point", "smooth"),
      method="lm")
```

![](mpg-maacs8.jpg)

``` r
# mpg-maacs9
qplot(log(hwy), log(displ), data=mpg, geom=c("point", "smooth"), method="lm",
      facets=. ~ drv)
```

![](mpg-maacs9.jpg)

## Summary of `qplot()`

- The `qplot()` function is the analog to `plot()` but with many built-in features
- Syntax somewhere between base and lattice
- Produces very nice graphics, essentially publication ready (if you like the design)
- Difficult to go against the grain/customize (don't bother; use full ggplot2 power in that case)

## Resources

- The _ggplot2_ book by Hadley Wickham
- The _R Graphics Cookbook_ by Winston Chang (examples in base plots and in ggplot2)
- ggplot1 wehsite ([http://ggplot2.org](http://ggplot2.org))
- ggplot2 mailing list ([http://goo.gl/OdW3uB](http://goo.gl/OdW3uB))

## Basic Components of a ggplot2 Plot

- A **data frame**
- **aesthetic mappings:** how data are mapped to color, size, etx
- **geoms:** geometric objects like points, lines, shapes.
- **facets:** for conditional plots
- **stats:** statistical transformations like binning, quantiles, smoothing
- **scales:** what scale an aesthetic map uses (example: male = red, female = blue)
- **coordinate system**

## Building Plots with ggplot2

- When building plots in ggplot2 (rather than using qplot) the "artist's palette" model may be the closest analogy
- Plots are built up in layers
	- Plot the data
	- Overlay a summary
	- Metadata and annotation

## Example: BMI, PM2.5, Asthma

- Mouse Allergen And Asthma Cohort Study
- Baltimore children (age 5-17)
- Persistent asthma, exacerbation in past year
- Does BMI (normal vs. overweight) modify the relationship between PM2.5 and asthma symptoms?

![](2MAACS1.jpg)

![](2MAACS2.jpg)

![](2MAACS3.jpg)

![](2MAACS4.jpg)

![](2MAACS5.jpg)

![](2MAACS6.jpg)

## Annotation

- Labels: `xlab()`, `ylab()`, `labs()`, `ggtitle()`
- Each of the "geom" functions has options to modify
- For things that only make sense globally, use `theme()`
	- Example: `theme(legend.position="none")`
- Two standard appearance themes are included
	- `theme_gray()`: The default theme (gray background)
	- `theme_bw()`: More stark/plain

![](2MAACS7.jpg)

![](2MAACS8.jpg)

![](2MAACS9.jpg)

## Simulating MAACS analyses w/ the mpg dataset

``` r
# 2mpg-maacs1
qplot(log(displ), log(hwy), data=mpg, facets=. ~ drv, geom=c("point", "smooth"),
      method="lm")
```

![](2mpg-maacs1.jpeg)

``` r
# Initial ggplot setup
g <- ggplot(mpg, aes(log(displ), log(hwy)))
summary(g)
```

``` r
# Explicitly save and pring ggplot
p <- g + geom_point()
print(p)
# Auto-print without saving
g + geom_point()
```

``` r
# 2mpg-maacs2
g <- ggplot(mpg, aes(log(displ), log(hwy)))
g + geom_point() # Add points -- now this is printable
```

![](2mpg-maacs2.jpeg)

``` r
# 2mpg-maacs3
g + geom_point() + geom_smooth() # Add an auto-smooth
```

![](2mpg-maacs3.jpeg)

``` r
# 2mpg-maacs4
g + geom_point() + geom_smooth(method="lm") # Linear regression smooth
```

![](2mpg-maacs4.jpeg)

``` r
# 2mpg-maacs5
## Add a facet grid
g + geom_point() + facet_grid(. ~ drv) + geom_smooth(method="lm")
```

![](2mpg-maacs5.jpeg)

``` r
# 2mpg-maacs6
g + geom_point(color="steelblue", size=4, alpha=1/2) # Using constants
```

![](2mpg-maacs6.jpeg)

``` r
# 2mpg-maacs7
g + geom_point(aes(color=drv), size=4, alpha=1/2) # Using factors in the data
```

![](2mpg-maacs7.jpeg)

``` r
# 2mpg-maacs8
## Modifying labels
g + geom_point(aes(color=drv)) + labs(title = "MPG-MAACS Fake") + 
    labs(x=expression("log " * displ), y="log hwy")
```

![](2mpg-maacs8.jpeg)

``` r
# 2mpg-maacs9
## Customizing the smooth
g + geom_point(aes(color=drv), size=2, alpha=1/2) +
    geom_smooth(size=4, linetype=3, method="lm", se=F)
```

![](2mpg-maacs9.jpeg)

``` r
# 2mpg-maacs10
g + geom_point(aes(color=drv)) +
    theme_bw(base_family="Times")
```

![](2mpg-maacs10.jpeg)

## Notes about axis limits

``` r
# Base plotting system...
testdat <- data.frame(x=1:100, y=rnorm(100))
testdat[50, 2] <- 100 # Outlier!
plot(testdat$x, testdat$y, type="l", ylim=c(-3, 3))
```

![](axis-limits-base.jpeg)

``` r
# ... vs. ggplot2
g <- ggplot(testdat, aes(x=x, y=y))
g + geom_line()
```

![](axis-limits-ggplot2.jpeg)

## Careful how you limit your axis in ggplot2!

``` r
# If you introduct a y-limit, ggplot2 will subset the data to exclude the
# outlier
g + geom_line() + ylim(-3, 3)
```

![](axis-limit-ggplot2-mistake.jpeg)

## The right way to do it!

``` r
g + geom_line() + coord_cartesian(ylim=c(-3, 3))
```

![](axis-limits-ggplot2-correct.jpeg)

## More Complex Example

- How does the relationship between PM2. and nocturnal symptoms vary by BMI and NO2?
- Unlike our previous BMI variable, NO2 is continuous
- We need to make NO2 categorical so we can condition on it in the plotting
	- Use the `cut()` function for this

![](3MAACS1.jpg)

![](3MAACS2.jpg)

![](3MAACS3.jpg)

## Steps for cutting continuous data

1. Use `quantile()` to find the fixed points for your segments, and store to a variable (i.e. `cutpoints <- quantile(maacs$logno2_new, seq(0, 1, length=4), na.rm=T)`)
2. Pass the field and the cutting segments to the `cut()` function and create a new factor variable in the data frame (i.e. `maacs$no2dec <- cut(maacs$logno2_new, cutpoints)`)
	a. You can examine your new discrete variable like any other factor using `levels()` (i.e. `levels(maacs$no2dec)`)
3. You can then use the factor to do anything you would normally do with a factor, such as condition the plot by creating separate panels/facets. See code example below.

``` r
g <- ggplot(maacs, aes(logpm25, NocturnalSympt))
g + geom_point(alpha=1/3)
  + facet_wrap(bmicat ~ no2dec, nrow=2, ncol=4)
  + geom_smooth(method="lm", se=F, col="steelblue")
  + theme_bw(base_family="Avenir", base_size=10)
  + labs(x=expression("log " * PM[2.5])
  + labs(y="Nocturnal Symptoms")
  + labs(title="MAACS Cohort")
```

## Summary
- ggplot2 is very powerful and flexible if you learn the "grammar" and the various elements that can be tuned/modified
- Many more types of plots can be made; explore and mess around with the package (references mentioned in Part 2 are useful)