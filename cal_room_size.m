function [ size ] = cal_room_size( num_people, stay_length )
%cal_room_size calculate the number of square meters that need to be
% dedicated to habitations for the people living on mars.
% Num_people = number of people in the settlement (linear scaler)
% Stay_length = duration of stay in days (0 - 1825 days)
% size = square meters of that need to be dedicated to habitations
params;
one_room_size = (del_size/pi)*atan((stay_length-center_offset)...
    *15/tran_len) + del_size/2 + min_size;
size = num_people * one_room_size;

end
