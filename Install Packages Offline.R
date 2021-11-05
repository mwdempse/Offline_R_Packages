# Set working directory to the location of the pachage files
setwd('C:/Users/.../R Working Directory/packages')
# Read the package files and install
pkgFilenames <- read.csv('pkgFilenames.csv', stringsAsFactors =F)[,1]
install.packages(pkgFilemanes, repos = NULL, type = 'win.binary')
# Reset wrokingdirectory
setwd('~/R Working Directory')