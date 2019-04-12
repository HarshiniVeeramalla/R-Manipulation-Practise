
# BASE R

setwd("D:\\jigsaW\\R\\data manipulation with R")

# sub - setting : selecting some rows out of a data frame

oj <- read.csv("oj.csv")


# nature of data

str(oj)

View(oj)

# to know 1st row 3rd col   # dataframe[rows,columns]

oj[1,3]

oj[c(1,2,8,456), c(1,3,6)]

oj[c(1:5),"brand"]


# logical subsetting

dat <- oj[oj$brand == "tropicana",]

View(dat)

# using 'OR' condition # ex : brand is tropicana or dominicks

dat1 <- oj[oj$brand == "tropicana" | oj$brand == "dominicks",]
View(dat1)


# using 'AND' condition # ex : brand = tropicana and no feature advertisement is one

dat2 <- oj[oj$brand == "tropicana" & oj$feat == 0,]
View(dat2)



# subsetting using which() operator (mostly used when data has missing values)

# ex : subset brand dominicks

index <- which(oj$brand == "dominicks")
head(index)
dat3 <- oj[index,]

View(dat3)





                  # SELECTING COLUMNS #


# only columns week and brand

dat4 <- oj[,c("week", "brand")]



# Slecting + Subsetting


# week no, store no, brand tropicana, feat = 0

dat5 <- oj[oj$brand == "tropicana" & oj$feat == 0, c("week", "store")]
View(dat5)

# when selecting some put it in rows, when selecting complete col put it in cols


# ADDING NEW COLUMNS #


oj$logInc <- log(oj$INCOME) # oj$column name <- what values to be given

dim(oj)

# revenue col, so we need no.of units sold, price of unit

# from the excel second sheet as we have units sold in log format we need to do exponent for it

oj$revenue <- exp(oj$logmove) * oj$price

dim(oj)

