international_group_oneroom <- filter(international_group,srch_rm_cnt ==1 )
table(international_group_oneroom$prop_is_branded)

international_group_multiroom <- filter(international_group,srch_rm_cnt > 1 )

international_single_multiroom <- filter(international_single,srch_rm_cnt > 1)
table(international_single_multiroom$prop_is_branded)
table(international_single$prop_is_branded)
table(international_single$prop_starrating)


table(international_group_multiroom$prop_is_branded)
table(domestic_booking$hist_price_band)
unique(dest$srch_destination_type_id)
head(dataset)
head(dataset)
user_id <- table(dataset$user_id)
