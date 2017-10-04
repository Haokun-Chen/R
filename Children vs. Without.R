international_group_child <- filter(international_group,srch_children_cnt>=1)

domestic_group <- filter(domestic_booking,(srch_children_cnt+srch_adults_cnt)>1)

