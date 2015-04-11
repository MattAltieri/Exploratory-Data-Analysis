## Base Plotting System
#### Intro
- Initialized w/ `plot` or `hist`
	- This launches a graphics device
	- `plot` has a lot of arguments, as it is general purpose

#### The base graphics system is tweaked via `par`
- `pch` - plotting symbol (default is open circle)
- `lty` - line type (default is solid line)
- `lwd` - line width, specified as an integer multiple
- `col` - plotting color, as #, string, or hex code; "colors()" gives you a vector of colors by name
- `xlab` - x-axis label
- `ylab` - y-axis label
- `las` - the orientation of the axis labels
- `bg` - the background color
- `mar` - the margin size (bottom, left, top, right)
- `oma` - the outer margin size
- `mfrow` - number of plots (graphs) per row, column (plots are filled row-wise)
- `mfcol` - number of plots per row, column (plots are filled column-wise)

#### Key base plotting functions
- `plot` - makes a scatterplot (also generic)
- `lines` - add lines to a plot, given a vector x values and a corresponding vector of y values (or a 2-col matrix); this just connects the dots
- `points` - add points to a plot
- `text` - add text labels to a plot using x, y coords
- `title` - add annotation to x, y axis labels, title, subtitle, outer margin
- `mtext` - add arbitrary text to the margins (inner or outer) of the plot
- `axis` - adding axis ticks/labels

#### Summary
- Plots in the base plotting system are created by calling successive R functions to "build up" a plot
- Plotting occurs in two stages:
	- Creation of a plot
	- Annotation of a plot(adding lines, points, text, legends)
- The base plotting system is very flexible and offers a high degree of control over plotting