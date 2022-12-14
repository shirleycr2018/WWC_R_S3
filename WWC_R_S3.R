#import library to use functionality 
library(dplyr)
#Read file that will be used for class
url <-  "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
msleep <- read.csv(url)
head(msleep)
#select
sleepData <- select(msleep, name, sleep_total)
head(sleepData)
head(select(msleep, -name))
head(select(msleep, starts_with("sl")))

#Pipes
head(select(msleep, name, sleep_total))

msleep %>% 
  select(name, sleep_total) %>% 
  head

#filter 
filter(msleep, sleep_total >= 16)
filter(msleep, sleep_total >= 16, bodywt >= 1)

#Arrange
msleep %>% arrange(order) %>% head

msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, sleep_total) %>% 
  filter(sleep_total >= 16)

# Mutate 
msleep %>% 
  mutate(rem_proportion = sleep_rem / sleep_total) %>%
  head

msleep %>% 
  mutate(rem_proportion = sleep_rem / sleep_total, 
         bodywt_grams = bodywt * 1000) %>%
  head


#summarise
msleep %>% 
  summarise(avg_sleep = mean(sleep_total))

msleep %>% 
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total),
            max_sleep = max(sleep_total),
            total = n())


msleep %>% 
  group_by(order) %>%
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total), 
            max_sleep = max(sleep_total),
            total = n())

names(msleep)


# Funciones 


mostrar_nulos <- function(df) {
  n <- sum(is.na(df))
  cat("Valores Nulos: ", n, "\n", sep = "")
  
  invisible(df)
}
nulsleep <-  msleep 
mostrar_nulos(nulsleep)
