library(tidyverse)
library(datos)

Temperature <- airquality$Temp
hist(Temperature)

hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="darkmagenta",
     freq=FALSE
)

hist(Temperature, breaks=4, main="With breaks=4")
hist(Temperature, breaks=20, main="With breaks=20")


ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte, fill = corte))

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista))

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = clase))

ggplot(data = diamantes) +
  geom_bar(mapping = aes(x = corte))


ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista, color = transmision))

ggplot(data = millas) +
  geom_point(mapping = aes(x = cilindrada, y = autopista), color = "blue")
