library(ggplot2)
library(tidyverse)
James Dickens
4111 Lane Place NE
Yankees
#Creating a basic bar graph using raw counts values from data sets
#  (Tidyverse/ggplot method)  Chapter 1


#Let's create barg graphs from the mpg data frame

mpg

ggplot(data = mpg) +
  geom_bar(mapping = aes(x = fl))  #Recall that the variable fl is an
#abbreviation for fuel type


# Change the x axis name to fuel type

ggplot(data = mpg) +
  geom_bar(mapping = aes(x = fl)) +
  xlab("fuel type")

# color the bars of the graphs

ggplot(data = mpg) +
  geom_bar(mapping = aes(x = fl, fill = fl))


# Different Types of Bar Graphs

EmployeeInfo<- tribble(
  ~Name,  ~Gender,    ~Age,   ~PoliticalAffiliation, ~Salary,
  "Karen",   "Female", 32,        "Democrat",         63400,
  "Juan",   "Male",    42,        "Republican",       65000,
  "Alice",  "Female",  28,        "Democrat",         54500,
  "Robert", "Male",    32,        "Republican",       61200,
  "Fay",    "Female",  24,        "Independent",      66000,
  "Brian",  "Male",    30,        "Democrat",         72000,
  "Mary",   "Female",  25,        "Independent",      68000,
  "Anthony","Male",    32,        "Republican",       67000,
  "Aaron",  "Male",    27,        "Democrat",         67000
)

EmployeeInfo

#  A Bar Graph that shows counts of levels of a categorical variable
ggplot(data = EmployeeInfo) +
  geom_bar(mapping = aes(x = PoliticalAffiliation)) 

#  A Bar Graph that shows specific values for levels of a categorical variable
ggplot(data = EmployeeInfo) +
  geom_bar(mapping = aes(x = Name, y = Salary, fill = Name), stat = "identity")

  
# More Practice  Textbook problem.

# creating a bargraph using data with summary totals from created
#  data (Tidyverse Method)
library(tidyverse)

demo<-tribble(
  ~a,    ~b,
  "bar_1",  20,
  "bar_2",  30,
  "bar_3",  40
)

demo
# Now  create the bar graph  for created data.
ggplot (data = demo) +
  geom_bar(mapping = aes(x = a, y = b), stat = "identity") 

  
# Now create a colored bar graph
ggplot (data = demo) +
  geom_bar(mapping = aes(x = a, y = b ,fill = a), stat = "identity") 

#Let's create a pie chart using created data

#First let's create data

baseballdata<-tribble(
  ~Player,    ~StolenBases,
  "John",     32,
  "Ron",      16,
  "Phillip",  12,
  "Juan",     24
  
)

baseballdata

# First create a stacked bar plot

bp<- ggplot(baseballdata, aes(x="", y = StolenBases, fill=Player))+
  geom_bar(width = .5, stat = "identity") 
bp

# Now create the pie chart  
pie <- bp + coord_polar("y", start=0) 
pie


# Let's create a pie chart using existing data ( mpg data frame) regarding the variables 
# drivetrain (drv) and city mileage (cty)


# Again, first let's create a stacked bargraph

cp<- ggplot(data = mpg, aes(x="", y = cty, fill=drv))+
  geom_bar(width = .5, stat = "identity")
cp

# Now create the pie chart   Lets add a title
pie <- cp + coord_polar("y", start=0) + ggtitle("Drivetrain City Mileage")
pie


#More practice creating pie charts  Another Method  (Base R Method)
#Create data for the graph.

# Create data for the graph.
x <- c(21, 62, 10, 53)
x
labels <- c("London", "New York", "Singapore", "Mumbai")
labels

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

#Now produce a pie chart that shows percentages
    # Again, Create data for the graph.
x <-  c(21, 62, 10,53)
x
labels <-  c("London","New York","Singapore","Mumbai")
labels


#Assign the percentage calculation to a variable
piepercent<- round(100*x/sum(x), 1)


# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topleft", c("London","New York","Singapore","Mumbai"), cex = 1,
       fill = rainbow(length(x)))

)

#Now let's create a 3D pie chart
# Install the package plotrix

install.packages("plotrix")

library(plotrix)
Z <- c(21, 62, 10, 53)
Z

Cities <- c("London", "New York", "Singapore", "Mumbai")
Cities

pie3D(Z,labels = Cities, explode = .1, main = "3D Pie Chart ")


# Now create a 3D pie chart that reflects percentages

piepercent<- round(100*x/sum(x), 1)

Z <- c(21, 62, 10, 53)
Z

Cities <- c("London", "New York", "Singapore", "Mumbai")
Cities
pie3D(Z,labels =piepercent , explode = .1, main = "Pie Chart of Cities " )
      



Cities <- c("London", "New York", "Singapore", "Mumbai")
Cities
pie3D(Z,labels =piepercent , explode = .1, main = "Pie Chart of Cities " )
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 1,
       fill = rainbow(length(x)))

q()
y
