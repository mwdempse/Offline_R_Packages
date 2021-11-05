# Get package dependencies
getDependencies <- function(packs){
  dependencyNames <- unlist(
    tools::package_dependencies(packages = packs, db = available.packages(), 
                                which = c('Depends', 'Imports'),
                                recursive = TRUE))
  packageNames <- union(packs, dependencyNames)
  packageNames
}

# Calculate dependencies
packages <- getDependencies(c('tidyverse',
                              'readxl',
                              'caret',
                              'psych',
                              'randomForest',
                              'xgboost',
                              'Rmisc',
                              'ggrepel',
                              'corrplot',
                              'rmarkdown'))


# Download the packages to the working directory.
# Package names and filenames are returned in a matrix.
setwd('C:/Users/.../R Working Directory/packages')
pkgInfo <-
  download.packages(pkgs = packages,
                    destdir = getwd(),
                    type = 'win.binary')

# Save just the package file names (basename() strips off the full paths leaving just the filename)
write.csv(file = 'pkgFilenames.csv',
          basename(pkgInfo[, 2]),row.names = FALSE)
