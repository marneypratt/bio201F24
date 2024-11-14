#the code below uses the rstatix package to complete a 2-way mixed ANOVA
#in this code, one factor is within subjects, and the other factor is between


#avoids scientific notation
options(scipen = 99)

# Perform 2-way mixed ANOVA with the rstatix package
mixed_anova <- rstatix::anova_test(
  data = ___,   #dataframe 
  dv = ___,   #dependent variable column
  wid = ___,  #subjects column
  between = ___,    #between-subjects factor variable
  within = ___)  #within-subjects factor variable 

# Print the results as a dataframe
mixed_anova.table <- 
  as.data.frame(get_anova_table(mixed_anova))
mixed_anova.table

#save the results as a csv file
write_csv(mixed_anova.table, "results/mixed_anova.table.csv")

# We are comparing to an F-distribution (F-test) here 
# DFn indicates the degrees of freedom in the numerator 
# DFd indicates the degrees of freedom in the denomenator 
# F is the F-statistic value
# p specifies the p-value
# ges is the generalized effect size 