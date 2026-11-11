library(tidyverse)
library(skimr)
library(janitor)

data("diamonds")

#Data Understanding
head(diamonds)
str(diamonds)
summary(diamonds)
glimpse(diamonds)
skim(diamonds)


#Data Cleaning

colSums(is.na(diamonds))              #Checking missing values.
sum(duplicated(diamonds))             #Checking Duplicate Rows.
diamonds_unique <- unique(diamonds)   #Remove Duplicate Rows.
sum(duplicated(diamonds_unique))

diamonds_unique %>%
  filter(x == 0 | y == 0 | z == 0)    #Checking Invalid values.

diamonds_clean <- diamonds_unique %>%
  filter(x > 0, y > 0, z > 0)

summary(diamonds_clean)



#Exploratory Data Analysis (EDA) through Visualization

#1. Distribution of Diamond Prices
ggplot(diamonds_clean, aes(x = price)) +
  geom_histogram(bins = 50, fill = "steelblue") +
  labs(
    title = "Distribution of Diamond Prices",
    x = "Price",
    y = "Frequency"
  )

#2. Carat vs Price
ggplot(diamonds_clean, aes(x = carat, y = price)) +
  geom_point(alpha = 0.3, color = "steelblue") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(
    title = "Relationship Between Carat and Price",
    x = "Carat (Size)",
    y = "Price (USD)"
  )

#3. Average Price by Cut
diamonds_clean %>%
  group_by(cut) %>%
  summarise(avg_price = mean(price)) %>%
  ggplot(aes(x = cut, y = avg_price, fill = cut)) +
  geom_col() +
  labs(
    title = "Average Diamond Price by Cut",
    x = "Cut",
    y = "Average Price (USD)"
  )

#4. Boxplot of Price by Clarity
ggplot(diamonds_clean, aes(x = clarity, y = price, fill = clarity)) +
  geom_boxplot() +
  labs(
    title = "Price Distribution by Clarity",
    x = "Clarity",
    y = "Price (USD)"
  )

#5. Average Price by Diamond Color
diamonds_clean %>%
  group_by(color) %>%
  summarise(avg_price = mean(price)) %>%
  ggplot(aes(x = color, y = avg_price, fill = color)) +
  geom_col() +
  labs(
    title = "Average Diamond Price by Color",
    x = "Diamond Color",
    y = "Average Price (USD)"
  )


#Statistical Analysis

options(scipen = 999) #forces R to show standard decimal numbers

#1. Correlation Test between Carat (size) and Price of Diamond
cor.test(diamonds_clean$carat,
         diamonds_clean$price)

#2. Chi-Square Test of Independence to identify significant relationship between Cut and Color
chisq.test(diamonds_clean$cut,
           diamonds_clean$color)

#3. One Way ANOVA to test does different cut categories have significant different prices
anova_model <- aov(price ~ cut,
                   data = diamonds_clean)
summary(anova_model)