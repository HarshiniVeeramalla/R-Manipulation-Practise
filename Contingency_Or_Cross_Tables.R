
# Contingency Tables (table)

# also called as cross tabulations

# used when we have categorical variables in data

# example : gender

# units of diff brands sold based on if feat = 0 or 1

table(oj$brand, oj$feat)

class(table(oj$brand, oj$feat))   # class is always table


# xtabs (used when using more than 2 variables)

# syntax : (variables which has to be summerised are to left and which has to be grouped are on right)

# ex : dstrbtn of income by brand and if feat is o or 1

xtabs(oj$INCOME ~ oj$brand + oj$feat)  





