## make sure to have the ggpubr package loaded to get this code to run


#make a QQ plot for each dependent variable that is continuous
ggpubr::ggqqplot(
  data = ___,               #put the data frame name here 
  "___",                  #put the continuous variable name here
  color = "___",       #put one factor here (remove if no factors)
  facet.by = "___"  #put another factor here (remove if only 1 factor)
)  