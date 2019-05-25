# Help Commands

help.start()   # Help documantation
help(median)   # Help on R topic/objects
help("if")     # Help on keywords/reserved words
?median        # Same as help()
??logit        # Help search in documentation 
help.search("logit") # same as ??
library(utils)
apropos("mean") # search using partial match
?rowMeans
#=========================================

# Assignment and Expressions
x<-2  # Assignment Operator
x
1/x   #Expression
x
# Arithmetic Operators

x<-6
y<-2

x+y
x-y
x*y
x/y
x^y

x%/%y # Quotient 
x%%y  # Remainder


# Logical (relational) Operators
y<3
y>3
y>=2
y<=2
y==2
y!=2

# NA 
z<-NA
y==z

# Logical expressions

(y<3)&(x<7) # And 
(y<1)|(x<7) # Or
!(y==2) # Not operator

y<-y + (y<3)   # Logical vector in Ordinary Arithmetic TRUE=1 and FALSE=0 
y

# Grouping of Elementary Commands

{a<-2;b<-3;a-b;a+b} # Grouping of Command

# R Statements

# if else statement

if (a>b) a else b
if (a>b) a

# Nested if else

animal<-'t' # first letter

if (animal=='l') "lion" else 
  if (animal=='t') "tiger" else 
    if (animal=='z') "zebra" else "Not known"

# switch statement

# Character variable

animal<-'t' # first letter

  switch (animal,
        l='lion',
        t='tiger',
        z='zebra',
        'Not known')

# Integer or Factor variable (behaves differently)

sal <-600000
slab<-3

tax<-switch(slab,
            0,
            0.1*sal,
            0.15*sal,
            0.20*sal
            )
tax


# for loop
j=0

for (i in 1:10) { j<-j+i; print(j)}

for(i in c(-1:3, 10))  
  print(switch(i, 2, 3 , 4, 5,6,7,8,9,10))

# repeat and break

i<-0
repeat {print(i); if (i==10) break; i<-i+1}

# while and next
j<-0
while (j<10) {j<-j+1; if (j<6) next; print(j)} 

#==================================================================
# Data Structure in R
# Numeric Vector
x <- c(2,3,4,5,6) # c() combine values into a vector or list
x
y <- c(x,7,x)     # another vector y created from x having 11 elements
y
z<-264:500
z
# Arithmetic operations using vectors
1/x
x+y  # x is recycled to meet the length of y
x-y
x*y
x/y

myvec<-x
print(myvec)
exp(myvec)
log(x = myvec, base = 10) 
log (x = myvec, base = exp(1))
log(myvec, base=10)
log (x=myvec) # base = exp(1) is default
sqrt(myvec)
abs(-myvec)
sin(pi/myvec)
factorial(myvec)
round(myvec/y,digit = 2)
sign(-myvec)
-myvec
# More Vector functions
length(myvec) #Number of elements
min(myvec)
max(myvec)
range(myvec) # returns min and max
var(myvec) 
sd(myvec)
mean(myvec)
median(myvec)
sort(myvec) # Ascending order
sort(myvec,decreasing = TRUE)
sum(myvec)
prod(myvec)

# some vector functions do not work in the presence of null value 
# so they need to be removed before operations
# Missing Value NA

v <- c(1,2,3,NA)
#length(v) <- 4
v
is.na(v)
mode(v)
range(v)
range(v,na.rm = TRUE)
mean(v)
mean(v,na.rm = TRUE)

u<-c(1,2,3,"abcd")
u
mode(u)

# Index vector
xx<-1:30 # colon operator to create integer vector
xx
xx[10]
xx[10:15]
xx[c(5,10,15,20)]
xx[-30]
xx[-(20:30)]


# seq
seq(from = 5, to = 10)    # 5 6 7 8 9 10
seq(5,10) 		# 5 6 7 8 9 10
seq(0,10,by =2) 	# 0 2 4 6 8 10
seq(0,10,length.out = 10)  # Number of elements in length.out

# rep() repeat elements

rep(0, times = 10)
rep(1:5, times = 2) # whole series is repeated
rep(1:5, each = 2)  # each element is repeated
rep(1:5, times=2, each = 2)

# Logical Operations on Vectors and Logical Vectors
x
y
x>3   
x==y
l1<-x>3  # l1 is a Logical Vector
l1
x+l1

Quarters <- paste("Quarter",1:4,sep = "-")
Quarters
cat("Quarter",1:4,sep = "-") # concatenate. Notice the difference in out from paste. In memory

#MASS
#dplyr
#xlsx

length(Quarters)
substr(Quarters, start=9, stop=9)
strsplit(Quarters,split ="-")
nchar(Quarters)
toupper(Quarters)
tolower(Quarters)
paste(Quarters,Quarters,sep = ", ")  # concatenate
m2<-c("do","do not","not")
m2
grep("do",m2)                   # pattern matching
m2<-c(m2,"1")
m2
grep("[a-z]",m2) 
gsub("do","did",m2)            # pattern replacement
m2<-c(m2,"not do")
m2
regexpr("do",m2)

# ifelse function for vectors
f<-c(5,6,7)
s<-c(4,7,6)
ifelse(f>s,f,s) # Returns bigger value

# Managing NA in vector
v<-c(1,2,3,NA,5,NA)
v1<-v[!is.na(v)] # recreates v with non NA values
v1

v2<-v[-c(4,6)] # negative index vector specifies values to be excluded
v2

# Matrix
M3 <- matrix(c(4,5,6,7), nrow = 2, ncol = 2) 
# Matrix by directly inputing values
M3
M1<-matrix(data = 1, nrow = 3, ncol = 3)      
# 3 by 3 Matrix filled with 1s
M1
dim(M1) # returns dimension of the matrix  rows by columns
M2<- matrix(NA, nrow = 2, ncol = 2)
M2
dim(M2)
V1<- 1:12      # Vector with 12 elements
V1
# Create Matrix from Vector
M4 <- matrix(V1,nrow = 5)  # Default filled by column
M4
M5 <- matrix(V1, nrow = 4, byrow = TRUE)
M5
V2 <- 1:5
V3 <- V2^2
M6 <- cbind(V2,V3) # creating matrix by column bind
M6
M6 <- cbind(M6,V3*2)
M6
M7 <- rbind(V2,V3) # creating matrix by row bind
M7
dim(M7)
V2<-c(V2,6)
V2
M8 <- rbind(V1,V2) # Vectors of unequal length
M8
# Manipulating row names and column names
colnames(M6)   # returns column names
rownames(M6)   # returns row names
colnames(M6) <- c("A","B","C")
rownames(M6) <- c("a","b","c","d","e")
M6
# Creating identity matrix
M9 <- diag(4)   # create 4 by 4 identity matrix, values in diagonal only
M9
M10 <- diag(V2) # Vector V2 across the diagonal 
M10
diag(M10)   # Extracts diagonal elements from marix
# Indexing Matrix
M4
M4[4,2]  # Extracts element corresponding to 4th row 2nd column
M4[,2]   # Extracts 2nd column
M4[3,]   # Extracts third row
M4[,1:2] # Extracts 1st and 2nd col
M4[c(2,4),] # Extracts 2nd and 4th row
M4          # Extracts entire Matrix
#==================================================
M4>4
M4[c(FALSE,TRUE,TRUE,FALSE, FALSE),2]
M4[c(TRUE,FALSE),1]  
M4[TRUE,1]  # TRUE gets repeated five times
M4[,2]>6
M4[M4[,2]>6,]
M4[M4[,1]>4,]

#==============================================================
  
# Matrix Multiplication

# Solving simultaneous equaations %*%  
# AX = B
# X = Inverse(A)*B

library(MASS)
A<-matrix(c(1,2,1,2,3,1,3,1,5),3,3) # filled column wise
A
B<-c(6,6,7)
B
ginv(A)%*%A
X<-ginv(A)%*%B  
X
#===========================================================================

# Arrays (more than two dimensions)
A11<-array(1:8,c(2,2,2))

V5<-1:8
d1<-c(2,2,2)

A1<-array(V5,d1)
A1


V4<-1:27
V4
dim(V4)<-c(3,3,3)
V4
V4[1,1,1]
V4[,1,1]
V4[,,1]
V4[,,2]
V4[,2,]

V5<-1:6
d1<-c(2,2,2)
A1<-array(V5,d1)
A1
V6<-1
A2<-array(V6,d1)
A2

# Lists
Lst <- list(name="Fred", wife="Mary", 
            no.children=3, child.ages=c(4,7,9))
Lst
# Retrieve components in a list
# using $ operator
Lst$name
Lst$wife
Lst$no.children
Lst$child.ages[2]
# using [[]] operator
Lst[[1]]
Lst[[2]]
Lst[[3]]
Lst[[4]]
Lst[[4]][2] # Extract elements within a component (vector)

# Factor (Ordinal and Nominal Data)

# Ratings for a Survey: Should Sale of Guns be controlled?
# SD=strongly disagree,DI=disagree,NE=neutral,
# AG=agree,SA=strongly agree

survey.result <- factor(c("SD","AG","SD","SA","DI","NE",
                          "SA", "DI","AG"), 
                        levels = c("SD","DI","NE","AG","SA"), 
                        ordered = TRUE)
survey.result
levels(survey.result)
table(survey.result)
# internally stored in numeric format
mode(survey.result)
# Structure of the "survey.result"
str(survey.result)

# Passive Survey: Gender of students coming out of library

gender<-factor(c("F","M","F","M","F","M","F","M"), 
               levels = c("M","F"), ordered = FALSE)

gender

# data.frame()

student <- data.frame(roll.no = c(1:4), 
              student.name = c("Anil","Bikash","Chintan","Sunil"))

student
nrow(student)
ncol(student)
row.names(student)<-c("First","Second","Third","Fourth")
student

student<-edit(student)

#data.table package is more faster and more efficient version of data.frame
#============================================================

# Managing Data in R

# get working directory of current R session
getwd() 
# List of all files in your working directory
dir() 
# Create a new directory within the current working directory
dir.create("etlhive_9.30am-A")  

# Set this new directory as working directory
setwd("C:/Users/Abhinav Srivastava/Documents") 
setwd("C:\\Users\\Abhinav Srivastava\\Documents\\etlhive_9.30am-A")

# check if proper working directory is set
getwd()
# check if new directory has been successfully created

#Importing files in R

# Scan() function
numb.in.file<- scan("numb_in_file.txt")
numb.in.file
mode(numb.in.file)
numb.in.file<- scan("numb_in_file.txt", what = character())
numb.in.file
numb.in.file<- scan("numb_in_file.txt", what = "character", nmax = 5)
numb.in.file
numb.in.file<- scan("numb_in_file.txt", what = "character", 
                    sep = " ", skip = 1)
numb.in.file
numb.in.file<- scan("numb_in_file.txt", what = "character", 
                    sep = " ", skip = 1, nlines = 1)

# Import file using data.table
empdata<-read.table("EMP.csv", sep = ",")
head(empdata)
empdata<-read.table("EMP.csv", header = TRUE, sep = ",")
head(empdata)
str(empdata)
empdata<-read.table("EMP.csv", header = TRUE, sep = ",",nrows = 10)
empdata
empdata<-read.table("EMP.csv", header = FALSE, sep = ",",
                    nrows = 10,skip=5)
empdata
empdata<-read.table("EMP.csv", header = FALSE, sep = ",",nrows = 1)
empdata
# Import files using data.csv

empdata<-read.csv("EMP.csv")
head(empdata)

#======================================================================

# dplyr package for manipulating data frames

library(dplyr)

str(empdata)    # Exploring the structure of data
names(empdata)
head(empdata)

# select
head(select(empdata, FIRST_NAME, LAST_NAME, SALARY))
head(select(empdata, FIRST_NAME:SALARY))
head(select(empdata, -(EMAIL:SALARY)))

# filter
head(filter(empdata, SALARY>15000))
head(filter(empdata, SALARY>15000 & JOB_ID == "AD_VP"))
filter(select(empdata, FIRST_NAME, LAST_NAME, SALARY), SALARY>15000)
# arrange (or sort)
head(arrange(empdata,SALARY))
tail(arrange(empdata,SALARY))
head(arrange(empdata,desc(SALARY)))
# rename col name
empdata <- rename(empdata, EMPID = EMPLOYEE_ID, 
                  FN = FIRST_NAME, LN = LAST_NAME)
head(empdata)
# Mutate - transform existing variable or create new variable
empdata <- mutate(empdata, 
                  z_salary=((SALARY - mean(SALARY))/sd(SALARY)))
head(select(empdata, SALARY,z_salary))
tail(select(empdata, SALARY,z_salary))
# Group_by
job_group <- group_by(empdata,JOB_ID)
summarize(job_group, sal = mean(SALARY), nos = length(SALARY))


## -----------------------------------------------------------------------
## Printing Graphical Output
## -----------------------------------------------------------------------
# Prepare data

# Open png file of high and width 480 pixels each

png(filename="./plot1.png",width=900,height=480,units="px") #opens png device

# Set one row and one column for plotting

par(mfrow=c(1,2)) # set graphical parameter 

## Printing Output - Plotting graph

hist(empdata$SALARY) # plot histigram
boxplot(empdata$SALARY)
dev.off()  # close png device

## -----------------------------------------------------------------------

#======================================================================
# Managing data in R
# using GUI
# Saving Data Objects
# saving multiple objects in a file

#student <- data.frame(roll.no = c(1:4), 
#              student.name = c("Anil","Bikash","Chintan","Sunil"))
#student
#student <- edit(student)
#student
#x<-2
#y<-3

save(list = c("empdata","x","y"),file = "empdata1.RData")
# removing the objects from R environment
rm(empdata,x,y)
head(empdata)
x
y
# loading the object back to R
load("empdata1.RData")
head(empdata)
x
y

# Run a batch script
source("example.R")
# Divert output to file
sink("record.lis") 
# Output diverted to "record.lis" in working directory
o1<-35
o2<-36
print("The output is diverted to file") # printed in "record.lis"
print(o1*o2)  # printed in "record.lis"
sink() # Output diverted to console
o2-o1

#====================================================================
#Importing files in R (contd)

# Read excel data
library(xlsx)
F.statistic<-read.xlsx("./F-statistic.xlsx",sheetIndex=1,
                       header=TRUE)
head(F.statistic)

# Export data from R

write.table(empdata,file = "./EMP1.txt", sep = "|", 
            col.names = TRUE)
write.csv(empdata,file = "./EMP1.csv")
write.xlsx(F.statistic,"./F-statistic.xlsx",sheetName = "Sheet2",
           append = TRUE)

#====================================================================

# Download data from url

fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(fileurl,"Dataset.zip")
unzip("Dataset.zip") # Unzip downloaded data
# Read RDS file
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#===================================================================


#=================================================================
# Looping in command line
# lapply function 
# Loop over a *list* and evaluate a function on each element
# If input is not a list then it will be coerced to a list. 
# lapply always returns a list

x <- list(a = 1:5, b = rnorm(10))
x[[1]]
x[[2]]
mean(x) #mean cannot be run on list type of data structure
lapply(x,mean)
lapply(x,sqrt)  # NaN for negative values

# sapply
# Same as lapply but try to simplify the results
# If the result is a list where every element is length 1 then a vector is returned
# If the result is a list where every element is a vector of the same length (>1) then a matrix is returned
# If it can's figure things out then a list is returned

x <- list(a = 1:5, b = rnorm(10))
x
sapply(x,mean) # Vector is returned
sapply(x,range) # Matrix is returned 
sapply(x,sqrt)# List is returned


# vapply
# is similar to sapply but has a pre-specified type 
# of return value so it is safer to use

fivenum(x$b)

vapply(x, fivenum,
       c(Min. = 0, "1st Qu." = 0, Median = 0, "3rd Qu." = 0, Max. = 0))

# apply
# apply is used to evaluate a function over the margins of an array

x <- matrix((1:50),10,5)
x
apply(x,2,mean) # 1 means *rows* and 2 means *columns* 
apply(x,1,sum)
y <- array((1:40),c(2,2,10))
y
apply(y,c(1,2),sum) # sums over both rows and columns
apply(y,3,mean) # sums over pages

# tapply
# Is used to apply a function over subset of a vector

x<- c(rnorm(5,150,170),rnorm(5,160,180))
x
f<-c(rep("F",5),rep("M",5))
f
tapply(x,f,mean, simplify = TRUE) # tapply(x, INDEX, FUN, simplify)


# mapply
# multivariate apply which applies a function in parallel 
# over a set of arguments
# mapply(FUN, ARGS, FUN_ARGS, SIMPLIFY) 
# FUN is the function to apply
# ARGS is the arguments to apply over
# FUN_ARGS are the function arguments

mapply(rep,c(1,2),c(1,2))

mapply(seq,c(5,6),c(10,20),c(0.5,1))

#=================================================
