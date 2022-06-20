CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangeTransactionStatus`(IN tID integer, IN MEmail char(50), IN stat ENUM('Approved', 'Rejected'))
BEGIN
IF EXISTS (SELECT * FROM transactions where TransactionID <=> tID AND employeeEmail != MEmail)
    THEN
		UPDATE transactions SET managerEmail = MEmail WHERE TransactionID = tID;
		UPDATE transactions SET status = stat WHERE TransactionID = tID;
	END IF;
    
END