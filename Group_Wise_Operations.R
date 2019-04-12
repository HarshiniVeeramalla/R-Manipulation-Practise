
# GroupWise Operations

# mostly used for factor variables. for example here brand is factor variable and has 3 levels

str(oj)

# mean price of juice across brands


# SYNTAX :

# aggregate(variable to be summerized, by = list(variable by which grouping is to done), function)

aggregate(oj$price, by = list(oj$brand), mean)  # vertical output

#always the output will be in dataframe

class(aggregate(oj$price, by = list(oj$brand), mean))


# Another function as aggregate is tapply

# tapply

tapply(oj$price, oj$brand, mean)   # here we are not storing in list

class(tapply(oj$price, oj$brand, mean))   # stored as array. horizontal output


# example : mean income of people by brand

aggregate(oj$INCOME, by = list(oj$brand), mean)

class(aggregate(oj$INCOME, by = list(oj$brand), mean))

tapply(oj$INCOME, oj$brand, mean)

class(tapply(oj$INCOME, oj$brand, mean))




