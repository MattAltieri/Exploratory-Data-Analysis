# How Does a Plot Get Created
# Type 1 - Default device
library(datasets)
with(faithful, plot(eruptions, waiting)) # Make plot appear on screen device
title(main="Old Faithful Geyser Data")   # Annotate with a title

# Type 2 - Explicit device call
pdf(file="./myplot.pdf") # Open PDF device; create 'myplot.pdf' in my working
                         # directory
# Create plot and send to a file (no plot will appear on screen)
with(faithful, plot(eruptions, waiting))
title(main="Old Faithful Geuser data") # Annotate plot; still nothing on screen
dev.off() # Close the PDF device; VERY IMPORTANT
# Now you can view the file 'myplot.pdf' on your computer

# Copying a plot examples
library(datasets)
with(faithful, plot(eruptions, waiting)) # Create plot on screen device
title(main="Old Faithful Geyser data")   # Add a main title
dev.copy(png, file="geyserplot.png")     # Copy my plot to a PNG file
dev.off() # Don't forget to close the PNG device!