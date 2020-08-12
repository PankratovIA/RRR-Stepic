#3
number_1 <- 3
number_2 <- 7
number_3 <- 6

result <- (number_1 + number_2) > number_3
result

#4
the_best_vector = c(1:5000,7000:10000)

#5
my_numbers <- c(6, 13, 13, 1, 18, 15, 6, 13, 19, 17,
               19, 17, 18, 6, 0, 15, 10, 19, 10, 15)
my_numbers_2 <- my_numbers[c(2, 5, 7, 9, 12, 16, 20)]
my_numbers_2

#6
my_vector <- c(8, 13, 9, 18, 7, 2, 15, 2, 8, 18, 6, 8, 9,
               6, 12, 11, 3, 1, 2, 14)
my_sum <- sum(my_vector[my_vector > 10])
my_sum


#7
my_vector <- c(21, 18, 21, 19, 25, 20, 17, 17, 18, 22, 17, 18, 18,
               19, 19, 27, 21, 20, 24, 17, 15, 24, 24, 29, 19, 14,
               21, 17, 19, 18, 18, 20, 21, 21, 19, 19, 17, 21, 13,
               17, 13, 23, 15, 23, 24, 16, 17, 25, 24, 22)

my_mean <- mean(my_vector)
my_sd <- sd(my_vector)
my_vector_2 <- my_vector[abs(my_vector - my_mean) < my_sd]
my_vector_2