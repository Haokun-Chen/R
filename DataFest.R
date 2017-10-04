yes_book_user <- filter(data,is_booking==1)
yes_book_user_list <- unique(yes_book_user$user_id)
all_user_list <- unique(data$user_id)

booking_record <- filter(data,is_booking==1)
family_booking_record <- filter(booking_record,srch_children_cnt>0)

family_notbooking_record <- filter(data,is_booking==0,user_id %in% family_booking_record$user_id,srch_children_cnt>0)
summary(family_notbooking_record$distance_band)

non_family_booking_record <- filter(booking_record,srch_children_cnt==0)
non_family_notbooking_record <- filter(ddata,is_booking==0,user_id %in% non_family_booking_record)


