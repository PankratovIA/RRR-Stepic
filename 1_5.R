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