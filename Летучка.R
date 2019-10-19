# Вариант 11

library(MASS)
library(DAAG)
library(carData)

# Задание 1:
# посмотрим, что там лежит
str(Soils)
# рассчитаем корреляцию
cor.test(Soils$Conduc, Soils$Na, method="spearman")
# кэффициент корреляции Спирмена равен 0.9599653 и он статистически значим (p-value < 2.2e-16), значит у нас эти значения сильно скоррелированы

# Задание 2:
# Что-то пока что не то
result <- Soils %>% group_by(Group) %>% filter(pH > 5 && Conduc < 3) %>% mutate(count = n())
