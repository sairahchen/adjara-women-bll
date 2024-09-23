# HEADER ----------------------

# Title: Exploring Adjara women data

# Date: 12.09.2024
# Author: Sairah Lai Fa Chen


# Description

# There are several datasets that Lotta sent


# INSTALL AND LOAD PACKAGES ------------

packages <- c("haven", "tidyverse", "openxlsx")
install.packages(packages)
invisible(lapply(packages, library, character.only =T))


# LOAD DATA ----------------------------

women_gbr_bll <- read_dta("./data/adjara_women_120924.dta")
geocode_village <- read.xlsx("./data/Copy of Geocoded villages and BLL_2022_211023.xlsx")
coor <- read.csv("./data/Villages_with_coordinates.csv")
# CLEAN VARIABLE NAMES -----------------

women_gbr_bll <- women_gbr_bll %>%
  mutate(
    urban_rural = case_when(
      urban == 1 ~ "urban",
      urban == 2 ~ "rural",
      TRUE ~ NA_character_
    )
  )


  