CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTransactions`()
BEGIN
		SELECT * FROM transactions;
END