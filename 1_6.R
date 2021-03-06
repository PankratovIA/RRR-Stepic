#1
#При помощи функции ggplot() или boxplot() постройте график boxplot,
#используя встроенные в R данные airquality. По оси x отложите номер
#месяца, по оси y — значения переменной Ozone.
#На графике boxplot отдельными точками отображаются наблюдения,
#отклоняющиеся от 1 или 3 квартиля больше чем на полтора
#межквартильных размаха. Сколько таких наблюдений присутствует
#в сентябре (месяц №9)?
#Обратите внимание, что для корректного отображения графика
#ggplot ожидает факторную переменную по оси x.

df  <- airquality
df$Month  <- factor(df$Month,
                    labels = c("May", "Jun", "Jul", "Ago", "Sep"))

library(ggplot2)
ggplot(df, aes(x = Month, y = Ozone, fill=Month))+
  geom_boxplot()+
  xlab("Month")+
  ylab("Ozone")+
  ggtitle("Ozone during 5 months")
