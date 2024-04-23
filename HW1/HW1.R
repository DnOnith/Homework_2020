if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()
BiocManager::install("sva")

 install.packages(c("ggplot2", "dplyr", "tidyr", "HistData", "mvtnorm",
                   "reticulate"))
 # these packages are needed for HW2
 # affy and affyPLM are needed to read the microarray data and run RMA
 library(sva) # for batch effect correction. Contains ComBat and sva.
 library(ggplot2) # for plotting
 library(dplyr) # for data manipulation
 library(reticulate) # needed to run python in Rstudio
 # these next two are not essential to this course
 library(mvtnorm) # need this to simulate data from multivariate normal
 library(HistData) # need this for data
 # importing this is already p1
 x1_na <- c(1:10, 50, NA)

 x1_m <- mean(x1_na, na.rm=TRUE) # P2
 
 data(GaltonFamilies)
 head(GaltonFamilies)
 
View(GaltonFamilies)
 a <- GaltonFamilies$childHeight[10] #p3.a
 
 b <- GaltonFamilies %>% count(gender) #p3.b
 
 glimpse(GaltonFamilies) #p3.c
 d <- mean(GaltonFamilies$childHeight, childNum=1) #p3.d
 
 e_m <- mean(GaltonFamilies$childHeight, gender="male")
 e_f <- mean(GaltonFamilies$childHeight, gender="female")
 e <- data.frame(Gender = c("male", "female"), MeanHight = c(e_m, e_f)) #p3.e
 
 f_c <- GaltonFamilies %>% 
   group_by(family) %>% 
   summarise(avg_children = mean(children))
 f <- mean(f_c$avg_children) #p3.f
 
 GaltonFamilies <- mutate(GaltonFamilies, childHeight_cm = childHeight * 2.54) %>% 
   glimpse() #p3.g
 
 
 
