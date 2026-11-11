# Diamond Price Analysis Using R

## Project Overview

This project explores the factors associated with diamond pricing through Exploratory Data Analysis (EDA), data cleaning, visualization, and statistical hypothesis testing using R.

Using the built-in `diamonds` dataset from the `ggplot2` package, the analysis investigates how diamond characteristics such as carat, cut, color, and clarity relate to diamond prices.

The project follows a structured data analysis workflow, from initial data inspection and cleaning to statistical analysis and interpretation of findings.

## Project Objectives

- Understand the structure and characteristics of the diamonds dataset.
- Identify and handle duplicate records and invalid dimension values.
- Explore the distribution of diamond prices.
- Investigate relationships between diamond characteristics and prices.
- Visualize patterns and distributions using `ggplot2`.
- Apply statistical tests to evaluate relationships and differences between variables.
- Interpret statistical results and derive meaningful insights.

## Dataset Description

- **Dataset:** `diamonds`
- **Source:** Built-in dataset from the `ggplot2` R package.
- **Original observations:** 53,940
- **Total variables:** 10

### Dataset Variables

| Variable | Description |
|---|---|
| carat | Weight of the diamond |
| cut | Quality of the diamond cut |
| color | Diamond color grade |
| clarity | Diamond clarity grade |
| depth | Total depth percentage |
| table | Width of the top of the diamond |
| price | Diamond price in USD |
| x | Length in mm |
| y | Width in mm |
| z | Depth in mm |

## Tools & Technologies

- **Programming Language:** R
- **Data Manipulation:** dplyr, tidyverse
- **Data Visualization:** ggplot2
- **Data Inspection:** skimr
- **Data Cleaning:** Base R and dplyr
- **Statistical Analysis:** Base R statistical functions
- **Reporting:** R Markdown and HTML

## Project Workflow

### 1. Data Understanding

- Inspected the first few observations using `head()`.
- Examined dataset structure using `str()` and `glimpse()`.
- Reviewed descriptive statistics using `summary()`.
- Generated a detailed data overview using `skim()`.

### 2. Data Cleaning

The following data quality checks were performed:

- Checked for missing values across all variables.
- Identified and removed duplicate observations.
- Examined diamond dimensions for invalid zero values.
- Removed records where the dimensions (`x`, `y`, or `z`) were zero.

**Cleaning Summary:**

| Metric | Records |
|---|---:|
| Original observations | 53,940 |
| Duplicate observations removed | 146 |
| Invalid dimension observations removed | 19 |
| Final cleaned observations | 53,775 |

No missing values were identified in the original dataset.

### 3. Exploratory Data Analysis (EDA)

Five visualizations were created to explore diamond pricing patterns:

1. **Distribution of Diamond Prices:** Histogram to examine the distribution and frequency of diamond prices.
2. **Carat vs. Price:** Scatter plot with a linear regression trend line to investigate the relationship between diamond weight and price.
3. **Average Price by Cut:** Bar chart comparing average prices across cut categories.
4. **Price Distribution by Clarity:** Boxplot to examine price distributions across clarity grades.
5. **Average Price by Color:** Bar chart comparing average prices across diamond color grades.

### 4. Statistical Analysis

Three statistical techniques were applied:

#### A. Pearson Correlation Test

- **Variables:** Carat and Price
- **Purpose:** To examine the strength and direction of the linear relationship between diamond weight and price.
- **Result:** Correlation coefficient (r) = 0.9215.
- **Interpretation:** A very strong positive and statistically significant relationship exists between carat and price.

#### B. Chi-Square Test of Independence

- **Variables:** Cut and Color
- **Purpose:** To determine whether diamond cut and color are statistically independent.
- **Result:** Chi-square statistic = 306.7, df = 24.
- **Interpretation:** A statistically significant association exists between diamond cut and color.

#### C. One-Way ANOVA

- **Independent Variable:** Cut
- **Dependent Variable:** Price
- **Purpose:** To determine whether average diamond prices differ across cut categories.
- **Result:** F-statistic = 171.9.
- **Interpretation:** Statistically significant differences exist in average diamond prices across cut categories.

All three statistical tests produced p-values below 0.05.

## Key Findings

The analysis revealed the following observations:

- **Price Distribution:** Diamond prices exhibit a right-skewed distribution, with most observations concentrated in the lower price ranges.
- **Carat and Price:** Diamond carat weight has a very strong positive correlation with price (r = 0.9215).
- **Cut and Price:** Premium-cut diamonds have the highest average price among the cut categories in this dataset.
- **Clarity and Price:** Price distributions vary across clarity categories, with substantial variation and outliers.
- **Color and Price:** J-color diamonds have the highest average price in the dataset, suggesting that other characteristics, particularly carat weight, may also influence average prices.
- **Cut and Color:** The Chi-Square test indicates a statistically significant association between cut and color.

## Repository Structure

```text
diamond-price-analysis-r/
│
├── Diamond_Price_Analysis.R
│
├── Diamond_Data_Analysis.Rmd
│
├── Diamond_Data_Analysis.html
│
└── README.md
```

## How to Run the Project

**Prerequisites:** R and RStudio.

### Step 1: Clone the Repository

```bash
git clone https://github.com/sashant-25/diamond-price-analysis-r.git
```

### Step 2: Open the Project

Open the cloned repository in RStudio.

### Step 3: Install the Required Packages

```r
install.packages(c(
  "tidyverse",
  "skimr",
  "janitor",
  "rmarkdown"
))
```

### Step 4: Run the R Script

Open `Diamond_Price_Analysis.R` and execute the code to reproduce the data inspection, cleaning, visualizations, and statistical tests.

### Step 5: Generate the HTML Report

Open `Diamond_Data_Analysis.Rmd` in RStudio and knit it to HTML.

Alternatively, run:

```r
rmarkdown::render("Diamond_Data_Analysis.Rmd")
```

## Conclusion

This project demonstrates the application of R for data cleaning, exploratory data analysis, data visualization, and statistical hypothesis testing.

It provides practical experience in identifying data quality issues, exploring relationships between variables, applying statistical methods, and interpreting analytical results.

---

**Project Type:** Exploratory Data Analysis (EDA)  
**Domain:** Data Analytics  
**Language:** R  
**Author:** Sashant Bhagat
