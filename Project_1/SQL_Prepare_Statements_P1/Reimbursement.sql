CREATE DEFINER=`root`@`localhost` PROCEDURE `Reimbursement`(IN employee char(50), IN reimbursement double, IN reciept char(100))
BEGIN
IF EXISTS(SELECT * FROM users WHERE Email = employee)
Then
    IF(reciept IS NOT NULL AND reimbursement > 0)
        then
        INSERT INTO transactions (employeeEmail, reimbursementAmount, proof, status, notify, timestamp) VALUES (employee, reimbursement, reciept, "Pending", "Not Notified", now());
    ELSE
        INSERT INTO transactions (employeeEmail, reimbursementAmount, status, notify, timestamp) VALUES (employee, reimbursement, "Pending", "Not Notified", now());
End IF;
End IF;
END