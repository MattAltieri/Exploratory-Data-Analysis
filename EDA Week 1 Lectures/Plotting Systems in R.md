#### Base Plotting System
- Artist's palette
- Blank canvas
- Add things one by one
- Generations, then annotation(text, lines, points, axis)
- Pros & Cons
	- Convenient, mirrors how we thing about plots
	- Difficult to undo
	- Difficult to translate to others once a new plot is created
	- Plot is just a series of R commands


#### Lattice System
- Implemented in the `lattice` package
- Plots created in a single function(`xyplot`, `bwplot`, etc)
- Pros
	- Most useful for conditioning types of plots: Looking at how y changes with x across levels of z
	- Things like margins/spacing set automatically
	- Good for putting many, many plots on a screen
	- Sometimes called Panel Plots
- Cons
	- Awkward to specify in one function call
	- Annotation is not intuitive
	- Panel functions and subscripts are difficult to wield and require intense preparation
	- Cannot "add" to the plot once it's created

`ggplot2` System
- "gg" stands for "Grammar of Graphics"
- Splits the difference between base & lattice
- Pros
	- Superficial similarity to lattice but generally more intuitive to use
	- Automatically deals with spacings, text, titles, but also allows you to annotate by adding to a plot
	- Default mode makes many choices for you, but still customizable
- Cons
	- Possibly a steeper learning curve for new R users

# NOTE! In general you can't mix and match between systems!