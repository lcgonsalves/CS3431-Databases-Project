-- Q5: Report the room number that has an equipment unit with serial number ‘A01-02X’.
SELECT room_num
FROM Equipment
WHERE Equipment.serial_num = 'A01-02X';
