#1
#Вновь вернемся к данным mtcars. Рассчитайте среднее значение времени разгона
#(qsec) для автомобилей, число цилиндров (cyl) у которых не равняется 3
#и показатель количества миль на галлон топлива (mpg) больше 20.
data("mtcars")
df <- mtcars
result <- mean(df$qsec[df$cyl != 3 & df$mpg > 20])

#2
#При помощи функции aggregate рассчитайте стандартное отклонение переменной
#hp (лошадиные силы) и переменной disp (вместимости двигателя)  у машин
#с автоматической и ручной коробкой передач.
df <- mtcars
descriptions_stat <- aggregate(x = cbind(df$hp, df$disp), by = list(df$am), FUN = sd )
colnames(descriptions_stat)  <- c("am", "sd hp", "sd disp") #not needed
# Stepic
# descriptions_stat <- aggregate(cbind(hp,disp) ~ am, mtcars, sd)

#3
#Воспользуемся встроенными данными airquality. В новую переменную сохраните
#subset исходных данных, оставив наблюдения только для месяцев 7, 8 и 9.
#При помощи функции aggregate рассчитайте количество непропущенных наблюдений
#по переменной Ozone в 7, 8 и 9 месяце. Для определения количества наблюдений
#используйте функцию length(). Результат выполнения функции aggregate 
#сохраните в переменную result.
library(psych)
data('airquality')

df <- subset(airquality, Month %in% c(7, 8, 9))
result <- aggregate( Ozone ~ Month, df, length)

#4
#Примените функцию describeBy к количественным переменным данных
#airquality, группируя наблюдения по переменной Month. Чему равен
#коэффициент асимметрии (skew) переменной Wind в восьмом месяце?
describeBy(airquality, group=airquality$Month)

#df <- airquality
#describeBy(df$Wind,group=df$Month == 8) #not mine

#5
#Обратимся к встроенным данным iris. Соотнесите значения стандартного
#отклонения переменных.
data(iris)
describe(iris)

#6
#В данных iris расположите по убыванию значения медиан количественных
#переменных в группе virginica. #Species
#describeBy(iris, iris$Species)
describeBy(iris, iris$Species=='virginica')
#not mine
#sort(aggregate(. ~ Species, iris[iris$Species =='virginica',], median), d=T)

#7
#В переменной my_vector сохранен вектор с пропущенными значениями.
#Вам нужно создать новый вектор fixed_vector, в котором все пропущенные
#значения вектора my_vector будут заменены на среднее значение 
#по имеющимся наблюдениям. При этом исходный вектор оставьте без
#изменений!
my_vector <- c(1, 10, NA, 3,  NA)
fixed_vector <- replace(my_vector, is.na(my_vector), mean(my_vector, na.rm = TRUE))
