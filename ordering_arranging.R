
# ordering data / Sorting data

# descending or ascending

numbers <- c(10,100,5,8)

 # gives index 

order(numbers)    # ascending order (default)

order(-numbers)   # descending order (as "minus" is given)


# ex : sort all coll in ascndng order by week nmbr

dat6 <- oj[order(oj$week),] # ascending order
View(dat6)

min(oj$week)    # to ensure data is in ascending order

dat7 <- oj[order(-oj$week),]
View(dat7)

max(oj$week)
