USE GymManager;
GO

--- 1. Lấy thông tin thành viên, tài khoản và gói thành viên
SELECT M.Name AS [Họ Tên Thành Viên],
       A.Username AS [Tên Đăng Nhập],
       MT.Name AS [Gói Thành Viên]
FROM MEMBER M
INNER JOIN ACCOUNT A ON M.Account_ID = A.Account_ID
INNER JOIN MEMBERSHIP_TYPE MT ON M.Type_ID = MT.Type_ID;

--- 2. Lấy danh sách thanh toán
SELECT Payment_ID, Amount, Date
FROM PAYMENT;

--- 3. Thống kê tổng tiền thanh toán theo tài khoản (Tổng > 1,000,000)
SELECT Account_ID, SUM(Amount) AS Total
FROM PAYMENT
GROUP BY Account_ID
HAVING SUM(Amount) > 1000000;

--- 4. Lấy thông tin lịch tập (Hội viên, Huấn luyện viên, Bài tập)
SELECT M.Name AS [Tên Hội Viên],
       T.Name AS [Tên Huấn Luyện Viên],
       W.Name AS [Tên Bài Tập],
       P.Work_Out_Date AS [Ngày Tập]
FROM WORK_OUT_PLAN P
JOIN MEMBER M ON P.Membership_ID = M.Membership_ID
JOIN TRAINER T ON P.Trainer_ID = T.Trainer_ID
JOIN WORK_OUT W ON P.Work_Out_ID = W.Work_Out_ID;

--- 5. Thống kê số lượng thành viên theo loại gói
SELECT MT.Name AS [Loại Thành Viên],
       COUNT(M.Membership_ID) AS Total
FROM MEMBERSHIP_TYPE MT
LEFT JOIN MEMBER M ON MT.Type_ID = M.Type_ID
GROUP BY MT.Name;

--- 6. Tìm huấn luyện viên có số buổi tập nhiều nhất
SELECT TOP 1 
        T.Name, 
        COUNT(P.Plan_ID) AS SoBuoiTap
FROM TRAINER T
JOIN WORK_OUT_PLAN P ON T.Trainer_ID = P.Trainer_ID
GROUP BY T.Name
ORDER BY SoBuoiTap DESC;