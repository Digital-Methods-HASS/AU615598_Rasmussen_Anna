Start with R
================

## R Markdown

QUESTION 1: How many elements in the vector are greater than 2?

``` r
rooms <- c(1, 2, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA)
na.omit(rooms)
```

    ##  [1] 1 2 1 3 1 3 1 3 2 1 1 8 3 1 4 1 3 1 2 1 7 1
    ## attr(,"na.action")
    ## [1]  6 12 18 26
    ## attr(,"class")
    ## [1] "omit"

``` r
rooms <- na.omit(rooms)
rooms[rooms>2]
```

    ## [1] 3 3 3 8 3 4 3 7

``` r
length(rooms[rooms>2])
```

    ## [1] 8

QUESTION 2: What is the result of running median function?

``` r
median(rooms)
```

    ## [1] 1.5

QUESTION 3:

``` r
library(tidyverse)
```

    ## ── Attaching packages ───────────────── tidyverse 1.3.0 ──

    ## ✓ ggplot2 3.3.2     ✓ purrr   0.3.4
    ## ✓ tibble  3.0.3     ✓ dplyr   1.0.2
    ## ✓ tidyr   1.1.2     ✓ stringr 1.4.0
    ## ✓ readr   1.3.1     ✓ forcats 0.5.0

    ## ── Conflicts ──────────────────── tidyverse_conflicts() ──
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
interviews <- read_csv("data/SAFI_clean.csv", na = "NULL")
```

    ## Parsed with column specification:
    ## cols(
    ##   key_ID = col_double(),
    ##   village = col_character(),
    ##   interview_date = col_datetime(format = ""),
    ##   no_membrs = col_double(),
    ##   years_liv = col_double(),
    ##   respondent_wall_type = col_character(),
    ##   rooms = col_double(),
    ##   memb_assoc = col_character(),
    ##   affect_conflicts = col_character(),
    ##   liv_count = col_double(),
    ##   items_owned = col_character(),
    ##   no_meals = col_double(),
    ##   months_lack_food = col_character(),
    ##   instanceID = col_character()
    ## )
