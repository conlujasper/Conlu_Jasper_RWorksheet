#1. Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output.Describe its output.
seq <- c(-5:5)
seq 
#a.The sequence displays the negative numbers from -5 then increases by 1 to positive 5 only
#-5 -4 -3 -2 -1  0  1  2  3  4  5
#b <- 1:7. What will be the value of x? 
x <- 1:7
x
#The value of x is 1 2 3 4 5 6 7


#2.
seq (1,3, by=0.2) 
#a.It increases its value by .2 until it reaches its maximum value at 3
#1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0



#3. 
worker_age <- list( 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                    22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                    24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                    18)
worker_age
#a
worker_age[3] 
#Its value is 22 

#b.
worker_age1 <- worker_age[c(2,4)]
worker_age1
#Its value is 28 & 36

#c
worker_age2 <- worker_age[-c(4,12)]
worker_age2 

#4
num4 <- c("first"=3, "second"=0, "third"=9)
num4 
num4[c("first", "third")] 
num4

#a. The output displays only the "first" and "third" variables using array.

#b
num4 <- c("first"=3, "second"=0, "third"=9)
num4
# first second  third 
#3      0      9 
num4[c("first", "third")]
# first third 
#     3     9

#5 Create a sequence x from -3:2.
num5 <- c(-3:2)
num5 
# -3 -2 -1 0 1 2 
#a. Modify 2nd element and change it to 0;
num5[2] <- 0
num5
#The second element in the array was changed to 0 and the result is when it is sequenced, the -2 was changed to 0


#6 a.
month <- c("Jan", "Feb", "March", "Apr", "May", "June")
price_per_liter <- c(52.50,57.25,60.00,65.00,74.25,54.00)
purchase_quantity <- c(25,30,40,50,10,45)
data.frame <- data.frame(month,  price_per_liter,  purchase_quantity)
data.frame
# month price_per_liter purchase_quantity
# 1   Jan           52.50                25
# 2   Feb           57.25                30
# 3 March           60.00                40
# 4   Apr           65.00                50
# 5   May           74.25                10
# 6  June           54.00                45

#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? 
weighted.mean(price_per_liter,purchase_quantity)
#The average fuel expenditure of Mr. Cruz from Jan to June is 59.2625

#7
#a
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data 
#b [1]141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000 
#c.
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data
#The results are 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

#8
#a
power_ranking <- c(1:25)
celebtrity_name <-c("Tom Cruise", "Rolling Stone", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", 
                    "Cast of Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas",
                    "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay   Lenon", "Celine Dion", "Kobe Bryant" )
pay <- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)

PowerRanking <- data.frame(power_ranking, celebtrity_name, pay)
PowerRanking
#b
power_ranking[19] <- 15
power_ranking 
pay[19] <- 90
pay

#c
csv_file <- "PowerRanking.csv"

write.csv(PowerRanking, file = csv_file)


PowerRankingCSV <- read.csv("PowerRanking.csv")

Power_Ranking <- PowerRankingCSV[10:20,]
Power_Ranking
#d
#                        power_ranking   celebtrity_name      pay
#           10            10                 Dan Brown        88
#           11            11              Bruce Springsteen   55
#           12            12                 Donald Trump     44
#           13            13                Muhammad Ali      55
#           14            14              Paul McCartney      40
#           15            15             George Lucas        233
#           16            16               Elton John         34
#           17            17             David Letterman      40
#           18            18              Phil Mickelson      47
#           19            19               J.K Rowling        75
#           20            20                Bradd Pitt        25

#e The  PowerRank result was change to 10 to 20 elements.
save(Power_Ranking, file = "Ranks.RData")
load("Ranks.RData")

#9. a.
library(readxl)
hotels_vienna<- read_excel("hotels-vienna.xlsx")
hotels_vienna

# b. How many dimensions does  the data set have? - [1] 428  24
dim(hotels_vienna)

# c. Output -  "country"            "neighbourhood"      "price"     "stars"              "accommodation_type" "rating"        
col <- colnames(hotels_vienna)
col
colnames1<-col[c(1,6,7,9, 22, 24)]
colnames1

# d. 
save(hotels_vienna, file="new.RData")
new<-load("new.RData")
View(new)

# e. 
head(hotels_vienna, 6)
#Output -
#country city_actual rating_count center1label center2label
#<chr>   <chr>       <chr>        <chr>        <chr>       
 # 1 Austria Vienna      36           City centre  Donauturm   
# 2 Austria Vienna      189          City centre  Donauturm   
# 3 Austria Vienna      53           City centre  Donauturm   
# 4 Austria Vienna      55           City centre  Donauturm   
# 5 Austria Vienna      33           City centre  Donauturm   
# 6 Austria Vienna      25           City centre  Donauturm 

#10. Create a list of 10 vegetables you ate during your lifetime. 
#a. 
vegetables<-list("potato","carrots","cabbage","squash","string beans","spinach","onion","cucumber","radish","eggplant")
vegetables
#[[1]]
#[1] "potato"

#[[2]]
#[1] "carrots"

#[[3]]
#[1] "cabbage"

#[[4]]
#[1] "squash"

#[[5]]
#[1] "string beans"

#[[6]]
#[1] "spinach"

#[[7]]
#[1] "onion"

#[[8]]
#[1] "cucumber"

#[[9]]
#[1] "radish"

#[[10]]
#[1] "eggplant"

#b. Add 2 additional vegetables after the last vegetables in the list.
addVegetables<-c(vegetables, "corn","garlic")
addVegetables
#[[1]]
#[1] "potato"

#[[2]]
#[1] "carrots"

#[[3]]
#[1] "cabbage"

#[[4]]
#[1] "squash"

#[[5]]
#[1] "string beans"

#[[6]]
#[1] "spinach"

#[[7]]
#[1] "onion"

#[[8]]
#[1] "cucumber"

#[[9]]
#[1] "radish"

#[[10]]
#[1] "eggplant"

#[[11]]
#[1] "corn"

#[[12]]
#[1] "garlic"

#c. Add 4 additional vegetables after index 5.
addVegetables4<-append(addVegetables, c ("ginger","malunggay","turnip","okra"),after=5)
addVegetables4
#[[1]]
#[1] "potato"

#[[2]]
#[1] "carrots"

#[[3]]
#[1] "cabbage"

#[[4]]
#[1] "squash"

#[[5]]
#[1] "string beans"

[[6]]
[1] "spinach"

[[7]]
[1] "onion"

[[8]]
[1] "cucumber"

[[9]]
[1] "radish"

[[10]]
[1] "eggplant"

[[11]]
[1] "corn"

[[12]]
[1] "garlic"

> #c. Add 4 additional vegetables after index 5.
  > addVegetables4<-append(addVegetables, c ("ginger","malunggay","turnip","okra"),after=5)
> addVegetables4
#[[1]]
#[1] "potato"

#[[2]]
#[1] "carrots"

#[[3]]
#[1] "cabbage"

#[[4]]
#[1] "squash"

#[[5]]
#[1] "string beans"

#[[6]]
#[1] "ginger"

#[[7]]
#[1] "malunggay"

#[[8]]
#[1] "turnip"

#[[9]]
#[1] "okra"

#[[10]]
#[1] "spinach"

#[[11]]
#[1] "onion"

#[[12]]
#[1] "cucumber"

#[[13]]
#[1] "radish"

#[[14]]
#[1] "eggplant"

#[[15]]
#[1] "corn"

#[[16]]
#[1] "garlic"
num_vegetables<-length(addVegetables4)
num_vegetables
#16 data points

#d.
addVegetables5<-addVegetables4[-c(5,10,15)]
addVegetables5

#[[1]]
#[1] "potato"

#[[2]]
#[1] "carrots"

#[[3]]
#[1] "cabbage"

#[[4]]
#[1] "squash"

#[[5]]
#[1] "ginger"

#[[6]]
#[1] "malunggay"

#[[7]]
#[1] "turnip"

#[[8]]
#[1] "okra"

#[[9]]
#[1] "onion"

#[[10]]
#[1] "cucumber"

#[[11]]
#[1] "radish"

#[[12]]
#[1] "eggplant"

#[[13]]
#[1] "garlic"

num_addVegetables5<-length(addVegetables5)
num_addVegetables5
#13 data points