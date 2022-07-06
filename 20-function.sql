SET GLOBAL log_bin_trust_function_creators = 1;

SELECT * FROM orders;

SELECT getOrderPriority(1);