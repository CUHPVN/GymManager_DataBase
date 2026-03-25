USE GymManager;
GO
INSERT INTO ACCOUNT (Username, Password) VALUES 
('nguyenvananh', 'HashP@ss123'), 
('lethib', 'Sure!9988'), 
('tranvancanh', 'tran@2026!'), 
('hoangthidung09', 'Dhoang//'), 
('phamminhhp', 'MinhE#2024'), 
('vuthiphuong', 'vuPhuong11@'), 
('dangvangiap', 'Giapdang1994'), 
('buithihuong', 'Huongbui99@'), 
('dovantinh', 'tinh@2026'), 
('ngothihanh', 'hanh#123'), 
('duongvanlinh', 'LDuong99'), 
('lythimy', 'Myly22@'), 
('phanvannam', 'Namphan@987'), 
('truongtanphong', 'phOngtruong87'), 
('trinhvantuan', 'Tuantrinh2024'), 
('hathily', 'lythiha55'), 
('caovanmanh', 'manhcao12'), 
('lamthisinh', 'Sinh123!'), 
('phungvantung', 'Tungphung@2026'), 
('maithinhung', 'nhUngmai_9988');


--Nhập dữ liệu cho bảng MEMBERSHIP_TYPE--
INSERT INTO MEMBERSHIP_TYPE (Name, Description, Membership_Fee) VALUES
 ('Basic', N'Gói cơ bản, miễn phí', 0),
 ('Silver', N'Gói bạc, ưu đãi 5%', 100000), 
 ('Gold', N'Gói vàng, ưu đãi 15%', 500000), 
 ('Diamond', N'Gói kim cương, ưu đãi 30%', 2000000);


 --Nhập dữ liệu cho bảng WORK_OUT--
 INSERT INTO WORK_OUT (Name, Description) VALUES 
(N'Chạy bộ trên máy', N'Tập trung đốt cháy calo và cải thiện sức bền tim mạch.'),
(N'Đạp xe trong nhà', N'Bài tập cardio cường độ thấp, tốt cho khớp gối.'),
(N'Squat với tạ đòn', N'Bài tập phức hợp giúp phát triển cơ đùi trước, đùi sau và mông.'),
(N'Deadlift', N'Tập trung vào cơ lưng dưới, mông và đùi sau.'),
(N'Bench Press', N'Bài tập đẩy ngực ngang với tạ đòn để phát triển cơ ngực.'),
(N'Pull-up', N'Hít xà đơn để phát triển cơ xô và cơ lưng giữa.'),
(N'Plank cơ bản', N'Giữ tư thế để tăng cường sức mạnh cơ lõi (core).'),
(N'Biceps Curl', N'Cuốn tạ đơn giúp phát triển cơ nhị đầu (cơ tay trước).'),
(N'Triceps Pushdown', N'Tập luyện cơ tam đầu (cơ tay sau) với máy kéo cáp.'),
(N'Shoulder Press', N'Đẩy tạ đôi qua đầu để phát triển cơ vai.'),
(N'Lunges', N'Bước chân chùng gối giúp cải thiện thăng bằng và cơ mông.'),
(N'Leg Press', N'Đạp đùi với máy giúp cô lập cơ chân hiệu quả.'),
(N'Yoga Flow', N'Các chuỗi động tác giúp tăng sự dẻo dai và giảm căng thẳng.'),
(N'HIIT Cardio', N'Tập luyện cường độ cao ngắt quãng để đốt mỡ tối đa.'),
(N'Lat Pulldown', N'Kéo xô với máy để mở rộng độ rộng của lưng.');



--Nhập dữ liệu cho bảng MEMBER--
INSERT INTO MEMBER (Name, Gender, Date_Of_Birth, Email, Phone_Number, Address, Account_ID, Type_ID) VALUES
(N'Nguyễn Văn An', N'Nam', '1995-01-01', 'nguyenvana@gmail.com', '0912345001', N'Quận 1, TP.HCM', 1, 1),
(N'Lê Thị Bảo', N'Nữ', '1998-05-12', 'lethibao@gmail.com', '0912345002', N'Quận 7, TP.HCM', 2, 2),
(N'Trần Văn Cảnh', N'Nam', '1990-11-20', 'tranvancanh@gmail.com', '0912345003', N'Quận 3, TP.HCM', 3, 3),
(N'Hoàng Thị Dung', N'Nữ', '1997-03-15', 'hoangthidung@gmail.com', '0912345004', N'Bình Thạnh, TP.HCM', 4, 1),
(N'Phạm Minh Nam', N'Nam', '1993-07-22', 'phamminnam@gmail.com', '0912345005', N'Tân Bình, TP.HCM', 5, 2),
(N'Vũ Thị Phương', N'Nữ', '1996-12-01', 'vuthiphuong@gmail.com', '0912345006', N'Quận 10, TP.HCM', 6, 1),
(N'Đặng Văn Giang', N'Nam', '1992-08-10', 'dangvangiang@gmail.com', '0912345007', N'Gò Vấp, TP.HCM', 7, 3),
(N'Bùi Thị Hạnh', N'Nữ', '1999-04-25', 'buithihanh@gmail.com', '0912345008', N'Phú Nhuận, TP.HCM', 8, 2),
(N'Đỗ Văn Long', N'Nam', '1994-10-05', 'dovanlong@gmail.com', '0912345009', N'Quận 5, TP.HCM', 9, 1),
(N'Ngô Thị Kiều', N'Nữ', '1991-02-14', 'ngothikieu@gmail.com', '0912345010', N'Ba Đình, Hà Nội', 10, 3),
(N'Dương Văn Lợi', N'Nam', '1993-06-30', 'duongvanloi@gmail.com', '0912345011', N'Cầu Giấy, Hà Nội', 11, 2),
(N'Lý Thị Mai', N'Nữ', '1995-09-18', 'lythimai@gmail.com', '0912345012', N'Hoàn Kiếm, Hà Nội', 12, 1),
(N'Phan Văn Nam', N'Nam', '1997-12-25', 'phanvannam123@gmail.com', '0912345013', N'Quận 12, TP.HCM', 13, 2),
(N'Trương Thị Oanh', N'Nữ', '2000-01-01', 'truongthioanho@gmail.com', '0912345014', N'Thủ Đức, TP.HCM', 14, 3),
(N'Trịnh Văn Phát', N'Nam', '1994-03-03', 'trinhvanphat@gmail.com', '0912345015', N'Tân Phú, TP.HCM', 15, 1);


--Nhập dữ liệu cho bảng TRAINER--
INSERT INTO TRAINER (Name, Gender, Phone_Number, Email, Account_ID) VALUES
(N'Nguyễn Hoàng Đức', N'Nam', '0367981222', 'duc.trainer@gym.com', 1), -- Được thuê bởi Member có Account_ID = 1
(N'Lê Thu Thảo', N'Nữ', '0987333444', 'thao.trainer@gym.com', 2),    -- Được thuê bởi Member có Account_ID = 2
(N'Trần Minh Hùng', N'Nam', '0988555666', 'hung.trainer@gym.com', 3), -- Được thuê bởi Member có Account_ID = 3
(N'Phạm Ngọc Lan', N'Nữ', '0998777888', 'lan.trainer@gym.com', 4),    -- Được thuê bởi Member có Account_ID = 4
(N'Đặng Quốc Trung', N'Nam', '0358999000', 'trung.trainer@gym.com', 5); -- Được thuê bởi Member có Account_ID = 5


--Nhập dữ liệu cho bảng WORK_OUT_PLAN--
INSERT INTO WORK_OUT_PLAN (Work_Out_Date, Trainer_ID, Membership_ID, Work_Out_ID) VALUES 
('2026-03-24 08:00:00', 1, 1, 3),  -- HLV Đức hướng dẫn An tập Squat
('2026-03-24 09:30:00', 2, 2, 13), -- HLV Thảo hướng dẫn Bảo tập Yoga
('2026-03-24 14:00:00', 3, 3, 5),  -- HLV Hùng hướng dẫn Cảnh tập Bench Press
('2026-03-25 08:00:00', 4, 4, 1),  -- HLV Lan hướng dẫn Dung chạy bộ
('2026-03-25 10:00:00', 5, 5, 4),  -- HLV Trung hướng dẫn Khang tập Deadlift
('2026-03-26 07:00:00', 1, 6, 7),  -- HLV Đức hướng dẫn Phương tập Plank
('2026-03-26 15:30:00', 2, 7, 14), -- HLV Thảo hướng dẫn Giang tập HIIT
('2026-03-27 08:30:00', 3, 8, 8),  -- HLV Hùng hướng dẫn Hạnh tập Biceps Curl
('2026-03-27 16:00:00', 4, 9, 15), -- HLV Lan hướng dẫn Long tập Lat Pulldown
('2026-03-28 09:00:00', 5, 10, 2), -- HLV Trung hướng dẫn Kiều đạp xe
('2026-03-28 14:00:00', 1, 11, 11),-- HLV Đức hướng dẫn Lợi tập Lunges
('2026-03-29 08:00:00', 2, 12, 12),-- HLV Thảo hướng dẫn Mai tập Leg Press
('2026-03-29 15:00:00', 3, 13, 6), -- HLV Hùng hướng dẫn Nam tập Pull-up
('2026-03-30 07:30:00', 4, 14, 10),-- HLV Lan hướng dẫn Oanh tập Shoulder Press
('2026-03-30 17:00:00', 5, 15, 9);  -- HLV Trung hướng dẫn Phát tập Triceps


--Nhập dữ liệu cho bảng PAYMENT--
INSERT INTO PAYMENT (Amount, Date, Account_ID) VALUES 
(500000, '2026-03-01 08:30:00', 1),   -- Member An
(200000, '2026-03-01 10:15:00', 16),  -- [Khách lẻ] Quyên
(1200000, '2026-03-02 09:00:00', 2),  -- Member Bảo
(3000000, '2026-03-02 14:00:00', 3),  -- Member Cảnh
(150000, '2026-03-03 08:20:00', 17),  -- [Khách lẻ] Trinh
(500000, '2026-03-03 16:45:00', 4),   -- Member Dung
(1200000, '2026-03-04 11:00:00', 5),  -- Member Manh
(200000, '2026-03-05 19:30:00', 18),  -- [Khách lẻ] Sang
(500000, '2026-03-05 08:00:00', 6),   -- Member Phương
(3000000, '2026-03-06 09:00:00', 7),  -- Member Giang
(500000, '2026-03-07 20:00:00', 19),  -- [Khách lẻ] Tâm (Thuê PT lẻ)
(1200000, '2026-03-08 13:30:00', 8),  -- Member Hạnh
(500000, '2026-03-09 08:00:00', 9),   -- Member Long
(200000, '2026-03-10 18:15:00', 20),  -- [Khách lẻ] Uyên
(3000000, '2026-03-11 15:10:00', 10), -- Member Kiều
(1200000, '2026-03-12 10:20:00', 11), -- Member Lợi
(500000, '2026-03-13 14:00:00', 12),  -- Member Mai
(1200000, '2026-03-14 09:40:00', 13), -- Member Nam
(3000000, '2026-03-15 16:00:00', 14), -- Member Oanh
(500000, '2026-03-16 08:30:00', 15);  -- Member Phát
