-- Q1: Report the hospital rooms (the room number) that are currently occupied.
SELECT room_num
FROM Room
WHERE is_occupied = 1;
