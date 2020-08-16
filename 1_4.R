data("mtcars")
#1
#Создайте новую числовую переменную  new_var в данных mtcars, которая содержит
#единицы в строчках, если в машине не меньше четырёх карбюраторов (переменная
#"carb") или больше шести цилиндров (переменная "cyl"). В строчках, в которых
#условие не выполняется, должны стоять нули.
mtcars$new_var <- ifelse(mtcars$carb < 4  | mtcars$cyl > 6, 1, 0)

#2
#В уже существующей переменной my_vector сохранен вектор из 50 чисел.
# Решите задачу используя конструкцию if ... else

my_vector <- c(20.67, 23.34, 22.65, 17.11, 22.1, 26.32, 20.39, 21.04, 23.78,
               31.11, 21.13, 22.44, 23.21, 27.02, 18.64, 20.9, 20.77, 20.0,
               21.29, 23.48, 18.47, 25.02, 17.04, 30.97, 12.91, 23.88, 32.95,
               8.46, 23.15, 21.05, 20.63, 19.95, 17.38, 29.35, 24.43, 23.66,
               18.32, 30.13, 19.36, 19.67, 24.23, 20.82, 18.21, 9.91, 21.45,
               18.04, 18.31, 17.18, 10.99, 10.06)
if (mean(my_vector) > 20){
  result <- "My mean is great"
} else {
  result <- "My mean is not so great"
}

#3
#В встроенных в R данных AirPassengers хранится 144 значения (количество
#пассажиров в месяц) с 1949 по 1960 год.  Итак, ваша задача создать переменную
#good_months и сохранить в нее число пассажиров только в тех месяцах,
#в которых это число больше, чем показатель в предыдущем месяце.  

data("AirPassengers")
good_months <- c() # we should initialize vector
for(i in 2:length(AirPassengers))
  if (AirPassengers[i] > AirPassengers[i - 1])
    good_months <- c(good_months, AirPassengers[i])

# good_months <- c()    
# index <- 1    
# for (i in 2:length(AirPassengers)) {    
#   if (AirPassengers[i]>AirPassengers[i-1]){    
#     good_months[index] <- AirPassengers[i]    
#     index <- index + 1    
#   }    
# }
# good_months <- AirPassengers[-1][AirPassengers[-1] > AirPassengers[-144]]

#4
#Для встроенных в R данных AirPassengers рассчитайте скользящее среднее
#с интервалом сглаживания равным 10. Напечатайте получившийся результат
#(первым значением в выводе должно быть среднее для элементов 1:10, во втором
#значении - среднее для элементов 2:11 и т.д., в последнем  - среднее для
#элементов 135 :144). Все полученные значения средних сохраните в переменную
#moving_average.

MAGIC <- 10
size <- length(AirPassengers)
sums <- cumsum(AirPassengers)
moving_average <- (sums[(MAGIC+1):size] - sums[2:(size-MAGIC+1)]) #/ (1.0*MAGIC) 