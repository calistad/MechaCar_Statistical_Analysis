demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

numlist <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)

library(jsonlite)
demo_table2 <- fromJSON(txt='demo.json')

demo_table[3,"Year"]
demo_table[3,3]

demo_table$"Vehicle_Class"
demo_table$"Vehicle_Class"[2]

filter_table <- demo_table2[demo_table2$price > 10000,]
filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status)
filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]

sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)
demo_table[sample(nrow(demo_table), 3),]

library(tidyverse)
#add columns to original data frame
demo_table <- demo_table %>% mutate(Mileage_per_Year=Total_Miles/(2020-Year),IsActive=TRUE)

#create summary table
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep')

#create summary table with multiple columns
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep')

demo_table3 <- read.csv('demo2.csv',check.names = F,stringsAsFactors = F)

long_table <- gather(demo_table3,key="Metric",value="Score",buying_price:popularity)
wide_table <- long_table %>% spread(key="Metric",value="Score")

#import dataset into ggplot2
plt <- ggplot(mpg,aes(x=class)) 
#plot a bar plot
plt + geom_bar()

mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep')
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) 
plt + geom_col() 

#plot bar plot with labels
plt + geom_col() + xlab("Manufacturing Company") + ylab("Number of Vehicles in Dataset") + 
theme(axis.text.x=element_text(angle=45,hjust=1)) #rotate the x-axis label 45 degrees

#line plot
mpg_summary <- subset(mpg,manufacturer=="toyota") %>% group_by(cyl) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')
plt <- ggplot(mpg_summary,aes(x=cyl,y=Mean_Hwy))
plt + geom_line()

#scatter plot
plt <- ggplot(mpg,aes(x=displ,y=cty))
plt + geom_point() + xlab("Engine Size (L)") + ylab("City Fuel-Efficiency (MPG)")

plt <- ggplot(mpg,aes(x=displ,y=cty,color=class))
plt + geom_point() + labs(x="Engine Size (L)", y="City Fuel-Efficiency (MPG)", color="Vehicle Class")

#box plot
plt <- ggplot(mpg,aes(y=hwy)) 
plt + geom_boxplot()

plt <- ggplot(mpg,aes(x=manufacturer,y=hwy))
plt + geom_boxplot() + theme(axis.text.x=element_text(angle=45,hjust=1)) 

#heatmap
mpg_summary <- mpg %>% group_by(model,year) %>% summarize(Mean_Hwy=mean(hwy), .groups = 'keep')
plt <- ggplot(mpg_summary, aes(x=model,y=factor(year),fill=Mean_Hwy))
plt + geom_tile() + labs(x="Model",y="Vehicle Year",fill="Mean Highway (MPG)") + 
  theme(axis.text.x = element_text(angle=90,hjust=1,vjust=.5))

mpg_data <- read.csv('mpg_modified.csv') 
mpg_1999 <- mpg_data %>% filter(year==1999) #select only data points where the year is 1999
mpg_2008 <- mpg_data %>% filter(year==2008) #select only data points where the year is 2008
#compare the mean difference between two samples
t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) 

#filter columns from mtcars dataset
mtcars_filt <- mtcars[,c("hp","cyl")]
#convert numeric column to factor
mtcars_filt$cyl <- factor(mtcars_filt$cyl) 
#compare means across multiple levels and get p-value
summary(aov(hp ~ cyl,data=mtcars_filt))

plt <- ggplot(mtcars,aes(x=hp,y=qsec)) 
plt + geom_point()

#calculate correlation coefficient
cor(mtcars$hp,mtcars$qsec)

#convert data frame into numeric matrix
ma <- as.matrix(mtcars[,c("hp", "cyl")])
cor(ma)

#create linear model
lm(cyl ~ hp,mtcars)

model <- lm(qsec ~ hp,mtcars)
#determine y-axis values (y = mx + b)
yvals <- model$coefficients['hp']*mtcars$hp + model$coefficients['(Intercept)'] 

plt <- ggplot(mtcars,aes(x=hp,y=qsec))
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

#generate multiple linear regression model
lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) 

tbl <- table(mpg$class,mpg$year) #generate contingency table
chisq.test(tbl) #compare categorical distributions
