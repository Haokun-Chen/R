head(international_booking)
international_single <- filter(international_booking,(srch_adults_cnt+srch_children_cnt)==1)
international_group <- filter(international_booking,(srch_adults_cnt+srch_children_cnt)>1)
head(international_group)
table(international_group$prop_is_branded)

table(international_group$prop_starrating)
table(international_group$distance_band)
table(international_group$hist_price_band)
table(international_group$popularity_band)
table(international_group$is_package)
table(international_group$is_mobile)

temp3 <- as.Date(international_group$srch_ci)-as.Date(international_group$date_time)
temp3 <- temp3[!is.na(temp3)]
international_click_checkin_diff <- temp3