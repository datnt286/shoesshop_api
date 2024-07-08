USE Shoesshop

-- Thêm dữ liệu vào bảng ProductTypes
INSERT INTO ProductTypes (Name, ParentProductTypeId, Status)
VALUES (N'Giày', null, 1), (N'Phụ kiện khác', null, 1), (N'Giày cổ thấp', 1, 1), (N'Giày cổ trung', 1, 1), (N'Giày cổ cao', 1, 1), (N'Vớ', 2, 1), (N'Dây giày', 2, 1), (N'Miếng lót giày', 2, 1);

-- Thêm dữ liệu vào bảng Brands
INSERT INTO Brands (Name, Status)
VALUES ('Nike', 1), ('Adidas', 1), ('Puma', 1), ('Vans', 1);

-- Thêm dữ liệu vào bảng Suppliers
INSERT INTO Suppliers (Name, PhoneNumber, Email, Address, Status)
VALUES ('Nike', '0123456789', 'nike@example.com', N'Q. 1, TP. HCM', 1),
       ('Adidas', '0987654321', 'adidas@example.com', N'Q. Thủ Đức, TP. HCM', 1),
       ('Puma', '0123123123', 'puma@example.com', N'Q. 3, TP. HCM', 1),
	   ('Vans', '0123123113', 'vans@example.com', N'Q. 4, TP. HCM', 1);

-- Thêm dữ liệu vào bảng Colors
INSERT INTO Colors (Name, Status)
VALUES (N'Đen', 1), (N'Xám', 1), (N'Trắng', 1), (N'Đỏ', 1), (N'Cam', 1), (N'Vàng', 1), (N'Xanh lá', 1), (N'Xanh dương', 1), (N'Tím', 1), (N'Nâu', 1), ('Carbon', 1), (N'Hồng', 1);

-- Thêm dữ liệu vào bảng Sizes
INSERT INTO Sizes (Name, Status)
VALUES ('39', 1), ('40', 1), ('41', 1), ('42', 1), ('43', 1), ('44', 1);

-- Thêm dữ liệu vào bảng Sliders
INSERT INTO Sliders (Name, Image, Status)
VALUES ('Slider 1', 'slider-1.png', 1),
		('Slider 2', 'slider-2.png', 1),
		('Slider 3', 'slider-3.png', 1)

-- Thêm dữ liệu vào bảng Models
INSERT INTO Models (Name, ProductTypeId, BrandId, SupplierId, ImportPrice, Price, Status)
VALUES ('Nike Air Force 1 07', 3, 1, 1, 3000000, 4000000, 1),
	   ('Nike Air Force 1 07 Easyon', 3, 1, 1, 3200000, 4200000, 1),
       ('Nike Air Force 1 07 LV8', 3, 1, 1, 3500000, 4500000, 1),
       ('Nike Air Force 1 07 LV8 Evo', 3, 1, 1, 3500000, 4500000, 1),
	   ('Nike Air Force 1 07 Next Nature SE', 3, 1, 1, 2500000, 3000000, 1),
       ('Nike Air Force 1 Low Evo', 3, 1, 1, 3500000, 4500000, 1),
       ('Nike Air Force 1 Shadow', 3, 1, 1, 3500000, 4500000, 1),
       ('Nike Air Jordan 1 Low', 3, 1, 1, 3000000, 4000000, 1),
       ('Nike Air Jordan 1 Mid', 4, 1, 1, 3500000, 4500000, 1),
       ('Nike Air Jordan 1 High', 4, 1, 1, 4000000, 5000000, 1),

	   ('Adidas Avryn', 3, 2, 2, 2000000, 2600000, 1),
	   ('Adidas Ultraboost 1.0', 3, 2, 2, 2300000, 2900000, 1),
	   ('Adidas Pureboost 23', 3, 2, 2, 3000000, 3600000, 1),
	   ('Adidas Response Super', 3, 2, 2, 2500000, 3100000, 1),
	   ('Adidas Dropset 2 Earth', 3, 2, 2, 1800000, 2400000, 1),

	   ('Puma Rs-X 3D', 3, 3, 3, 2000000, 2500000, 1),
	   ('Puma Slipstream Expedition', 3, 3, 3, 2300000, 2800000, 1),
	   ('Puma Suede XL', 3, 3, 3, 2600000, 3100000, 1),
	   ('Puma Palermo Leather', 3, 3, 3, 2900000, 3400000, 1),
	   ('Puma 180 Perf', 3, 3, 3, 1800000, 2300000, 1),

	   ('Vans Knu Skool', 3, 4, 4, 2000000, 2500000, 1),
	   ('Vans Old Skool', 3, 4, 4, 2200000, 2700000, 1),
	   ('Vans Ave 2.0', 3, 4, 4, 2400000, 2900000, 1),
	   ('Vans Cruze Too Comfycush', 3, 4, 4, 2600000, 3100000, 1),
	   ('Vans SK8 Hi', 4, 4, 4, 2800000, 3300000, 1),

	   (N'Vớ', 6, 1, 1, 300000, 400000, 1),
	   (N'Dây giày', 7, 1, 1, 200000, 300000, 1),
	   (N'Miếng lót giày', 8, 1, 1, 100000, 200000, 1);
-- Thêm dữ liệu vào bảng Images
INSERT INTO Images (Name, ModelId)
VALUES ('nike-air-force-1-07-white-1.png', 1),
	   ('nike-air-force-1-07-white-2.png', 1),
       ('nike-air-force-1-07-white-3.png', 1),
	   ('nike-air-force-1-07-white-4.png', 1),
       ('nike-air-force-1-07-white-5.png', 1),

	   ('nike-air-force-1-07-black-1.png', 1),
	   ('nike-air-force-1-07-black-2.png', 1),
       ('nike-air-force-1-07-black-3.png', 1),
	   ('nike-air-force-1-07-black-4.png', 1),
       ('nike-air-force-1-07-black-5.png', 1),

	   ('nike-air-force-1-07-easyon-white-1.png', 2),
	   ('nike-air-force-1-07-easyon-white-2.png', 2),
       ('nike-air-force-1-07-easyon-white-3.png', 2),
	   ('nike-air-force-1-07-easyon-white-4.png', 2),
       ('nike-air-force-1-07-easyon-white-5.png', 2),

	   ('nike-air-force-1-07-easyon-black-1.png', 2),
	   ('nike-air-force-1-07-easyon-black-2.png', 2),
       ('nike-air-force-1-07-easyon-black-3.png', 2),
	   ('nike-air-force-1-07-easyon-black-4.png', 2),
       ('nike-air-force-1-07-easyon-black-5.png', 2),

	   ('nike-air-force-1-07-easyon-blue-1.png', 2),
	   ('nike-air-force-1-07-easyon-blue-2.png', 2),
       ('nike-air-force-1-07-easyon-blue-3.png', 2),
	   ('nike-air-force-1-07-easyon-blue-4.png', 2),
       ('nike-air-force-1-07-easyon-blue-5.png', 2),

	   ('nike-air-force-1-07-lv8-white-1.png', 3),
	   ('nike-air-force-1-07-lv8-white-2.png', 3),
       ('nike-air-force-1-07-lv8-white-3.png', 3),
	   ('nike-air-force-1-07-lv8-white-4.png', 3),
       ('nike-air-force-1-07-lv8-white-5.png', 3),

	   ('nike-air-force-1-07-lv8-grey-1.png', 3),
	   ('nike-air-force-1-07-lv8-grey-2.png', 3),
       ('nike-air-force-1-07-lv8-grey-3.png', 3),
	   ('nike-air-force-1-07-lv8-grey-4.png', 3),
       ('nike-air-force-1-07-lv8-grey-5.png', 3),

	   ('nike-air-force-1-07-lv8-brown-1.png', 3),
	   ('nike-air-force-1-07-lv8-brown-2.png', 3),
       ('nike-air-force-1-07-lv8-brown-3.png', 3),
	   ('nike-air-force-1-07-lv8-brown-4.png', 3),
       ('nike-air-force-1-07-lv8-brown-5.png', 3),

	   ('nike-air-force-1-07-lv8-evo-1.png', 4),
	   ('nike-air-force-1-07-lv8-evo-2.png', 4),
       ('nike-air-force-1-07-lv8-evo-3.png', 4),
	   ('nike-air-force-1-07-lv8-evo-4.png', 4),
       ('nike-air-force-1-07-lv8-evo-5.png', 4),

	   ('nike-air-force-1-07-next-nature-se-white-1.png', 5),
	   ('nike-air-force-1-07-next-nature-se-white-2.png', 5),
       ('nike-air-force-1-07-next-nature-se-white-3.png', 5),
	   ('nike-air-force-1-07-next-nature-se-white-4.png', 5),
       ('nike-air-force-1-07-next-nature-se-white-5.png', 5),

	   ('nike-air-force-1-07-next-nature-se-green-1.png', 5),
	   ('nike-air-force-1-07-next-nature-se-green-2.png', 5),
       ('nike-air-force-1-07-next-nature-se-green-3.png', 5),
	   ('nike-air-force-1-07-next-nature-se-green-4.png', 5),
       ('nike-air-force-1-07-next-nature-se-green-5.png', 5),

	   ('nike-air-force-1-low-evo-1.png', 6),
	   ('nike-air-force-1-low-evo-2.png', 6),
       ('nike-air-force-1-low-evo-3.png', 6),
	   ('nike-air-force-1-low-evo-4.png', 6),
       ('nike-air-force-1-low-evo-5.png', 6),

	   ('nike-air-force-1-shadow-1.png', 7),
	   ('nike-air-force-1-shadow-2.png', 7),
       ('nike-air-force-1-shadow-3.png', 7),
	   ('nike-air-force-1-shadow-4.png', 7),
       ('nike-air-force-1-shadow-5.png', 7),

	   ('nike-air-jordan-1-low-white-1.png', 8),
	   ('nike-air-jordan-1-low-white-2.png', 8),
       ('nike-air-jordan-1-low-white-3.png', 8),
	   ('nike-air-jordan-1-low-white-4.png', 8),
       ('nike-air-jordan-1-low-white-5.png', 8),

	   ('nike-air-jordan-1-low-red-1.png', 8),
	   ('nike-air-jordan-1-low-red-2.png', 8),
       ('nike-air-jordan-1-low-red-3.png', 8),
	   ('nike-air-jordan-1-low-red-4.png', 8),
       ('nike-air-jordan-1-low-red-5.png', 8),

	   ('nike-air-jordan-1-low-blue-1.png', 8),
	   ('nike-air-jordan-1-low-blue-2.png', 8),
       ('nike-air-jordan-1-low-blue-3.png', 8),
	   ('nike-air-jordan-1-low-blue-4.png', 8),
       ('nike-air-jordan-1-low-blue-5.png', 8),

	   ('nike-air-jordan-1-mid-white-1.png', 9),
	   ('nike-air-jordan-1-mid-white-2.png', 9),
       ('nike-air-jordan-1-mid-white-3.png', 9),
	   ('nike-air-jordan-1-mid-white-4.png', 9),
       ('nike-air-jordan-1-mid-white-5.png', 9),

	   ('nike-air-jordan-1-mid-gray-1.png', 9),
	   ('nike-air-jordan-1-mid-gray-2.png', 9),
       ('nike-air-jordan-1-mid-gray-3.png', 9),
	   ('nike-air-jordan-1-mid-gray-4.png', 9),
       ('nike-air-jordan-1-mid-gray-5.png', 9),

	   ('nike-air-jordan-1-mid-purple-1.png', 9),
	   ('nike-air-jordan-1-mid-purple-2.png', 9),
       ('nike-air-jordan-1-mid-purple-3.png', 9),
	   ('nike-air-jordan-1-mid-purple-4.png', 9),
       ('nike-air-jordan-1-mid-purple-5.png', 9),

	   ('nike-air-jordan-i-high-g-golf-black-1.png', 10),
	   ('nike-air-jordan-i-high-g-golf-black-2.png', 10),
       ('nike-air-jordan-i-high-g-golf-black-3.png', 10),
	   ('nike-air-jordan-i-high-g-golf-black-4.png', 10),
       ('nike-air-jordan-i-high-g-golf-black-5.png', 10),

	   ('nike-air-jordan-i-high-g-golf-blue-1.png', 10),
	   ('nike-air-jordan-i-high-g-golf-blue-2.png', 10),
       ('nike-air-jordan-i-high-g-golf-blue-3.png', 10),
	   ('nike-air-jordan-i-high-g-golf-blue-4.png', 10),
       ('nike-air-jordan-i-high-g-golf-blue-5.png', 10),

	   ('nike-air-jordan-i-high-g-golf-orange-1.png', 10),
	   ('nike-air-jordan-i-high-g-golf-orange-2.png', 10),
       ('nike-air-jordan-i-high-g-golf-orange-3.png', 10),
	   ('nike-air-jordan-i-high-g-golf-orange-4.png', 10),
       ('nike-air-jordan-i-high-g-golf-orange-5.png', 10),

	   --Adidas

	   ('adidas-avryn-white-1.png', 11),
	   ('adidas-avryn-white-2.png', 11),
       ('adidas-avryn-white-3.png', 11),
	   ('adidas-avryn-white-4.png', 11),
       ('adidas-avryn-white-5.png', 11),

	   ('adidas-avryn-grey-1.png', 11),
	   ('adidas-avryn-grey-2.png', 11),
       ('adidas-avryn-grey-3.png', 11),
	   ('adidas-avryn-grey-4.png', 11),
       ('adidas-avryn-grey-5.png', 11),

	   ('adidas-avryn-black-1.png', 11),
	   ('adidas-avryn-black-2.png', 11),
       ('adidas-avryn-black-3.png', 11),
	   ('adidas-avryn-black-4.png', 11),
       ('adidas-avryn-black-5.png', 11),

	   ('adidas-ultraboost-v1-white-1.png', 12),
	   ('adidas-ultraboost-v1-white-2.png', 12),
       ('adidas-ultraboost-v1-white-3.png', 12),
	   ('adidas-ultraboost-v1-white-4.png', 12),
       ('adidas-ultraboost-v1-white-5.png', 12),

	   ('adidas-ultraboost-v1-black-1.png', 12),
	   ('adidas-ultraboost-v1-black-2.png', 12),
       ('adidas-ultraboost-v1-black-3.png', 12),
	   ('adidas-ultraboost-v1-black-4.png', 12),
       ('adidas-ultraboost-v1-black-5.png', 12),

	   ('adidas-ultraboost-v1-green-1.png', 12),
	   ('adidas-ultraboost-v1-green-2.png', 12),
       ('adidas-ultraboost-v1-green-3.png', 12),
	   ('adidas-ultraboost-v1-green-4.png', 12),
       ('adidas-ultraboost-v1-green-5.png', 12),

	   ('adidas-pureboost-23-black-1.png', 13),
	   ('adidas-pureboost-23-black-2.png', 13),
       ('adidas-pureboost-23-black-3.png', 13),
	   ('adidas-pureboost-23-black-4.png', 13),
       ('adidas-pureboost-23-black-5.png', 13),

	   ('adidas-pureboost-23-carbon-1.png', 13),
	   ('adidas-pureboost-23-carbon-2.png', 13),
       ('adidas-pureboost-23-carbon-3.png', 13),
	   ('adidas-pureboost-23-carbon-4.png', 13),
       ('adidas-pureboost-23-carbon-5.png', 13),

	   ('adidas-response-super-white-1.png', 14),
	   ('adidas-response-super-white-2.png', 14),
       ('adidas-response-super-white-3.png', 14),
	   ('adidas-response-super-white-4.png', 14),
       ('adidas-response-super-white-5.png', 14),

	   ('adidas-response-super-black-1.png', 14),
	   ('adidas-response-super-black-2.png', 14),
       ('adidas-response-super-black-3.png', 14),
	   ('adidas-response-super-black-4.png', 14),
       ('adidas-response-super-black-5.png', 14),

	   ('adidas-dropset-2-earth-1.png', 15),
	   ('adidas-dropset-2-earth-2.png', 15),
       ('adidas-dropset-2-earth-3.png', 15),
	   ('adidas-dropset-2-earth-4.png', 15),
       ('adidas-dropset-2-earth-5.png', 15),

	   --Puma

	   ('puma-rs-x-3d-black-1.png', 16),
	   ('puma-rs-x-3d-black-2.png', 16),
       ('puma-rs-x-3d-black-3.png', 16),
	   ('puma-rs-x-3d-black-4.png', 16),
       ('puma-rs-x-3d-black-5.png', 16),

	   ('puma-rs-x-3d-red-1.png', 16),
	   ('puma-rs-x-3d-red-2.png', 16),
       ('puma-rs-x-3d-red-3.png', 16),
	   ('puma-rs-x-3d-red-4.png', 16),
       ('puma-rs-x-3d-red-5.png', 16),

	   ('puma-slipstream-expedition-yellow-1.png', 17),
	   ('puma-slipstream-expedition-yellow-2.png', 17),
       ('puma-slipstream-expedition-yellow-3.png', 17),
	   ('puma-slipstream-expedition-yellow-4.png', 17),
       ('puma-slipstream-expedition-yellow-5.png', 17),

	   ('puma-slipstream-expedition-brown-1.png', 17),
	   ('puma-slipstream-expedition-brown-2.png', 17),
       ('puma-slipstream-expedition-brown-3.png', 17),
	   ('puma-slipstream-expedition-brown-4.png', 17),
       ('puma-slipstream-expedition-brown-5.png', 17),

	   ('puma-suede-xl-black-1.png', 18),
	   ('puma-suede-xl-black-2.png', 18),
       ('puma-suede-xl-black-3.png', 18),
	   ('puma-suede-xl-black-4.png', 18),
       ('puma-suede-xl-black-5.png', 18),

	   ('puma-suede-xl-blue-1.png', 18),
	   ('puma-suede-xl-blue-2.png', 18),
       ('puma-suede-xl-blue-3.png', 18),
	   ('puma-suede-xl-blue-4.png', 18),
       ('puma-suede-xl-blue-5.png', 18),

	   ('puma-palermo-leather-white-1.png', 19),
	   ('puma-palermo-leather-white-2.png', 19),
       ('puma-palermo-leather-white-3.png', 19),
	   ('puma-palermo-leather-white-4.png', 19),
       ('puma-palermo-leather-white-5.png', 19),

	   ('puma-palermo-leather-grey-1.png', 19),
	   ('puma-palermo-leather-grey-2.png', 19),
       ('puma-palermo-leather-grey-3.png', 19),
	   ('puma-palermo-leather-grey-4.png', 19),
       ('puma-palermo-leather-grey-5.png', 19),

	   ('puma-180-perf-1.png', 20),
	   ('puma-180-perf-2.png', 20),
       ('puma-180-perf-3.png', 20),
	   ('puma-180-perf-4.png', 20),
       ('puma-180-perf-5.png', 20),

	   -- Vans

	   ('vans-knu-skool-black-1.png', 21),
	   ('vans-knu-skool-black-2.png', 21),
       ('vans-knu-skool-black-3.png', 21),
	   ('vans-knu-skool-black-4.png', 21),
       ('vans-knu-skool-black-5.png', 21),
	   
	   ('vans-knu-skool-red-1.png', 21),
	   ('vans-knu-skool-red-2.png', 21),
       ('vans-knu-skool-red-3.png', 21),
	   ('vans-knu-skool-red-4.png', 21),
       ('vans-knu-skool-red-5.png', 21),

	   ('vans-knu-skool-pink-1.png', 21),
	   ('vans-knu-skool-pink-2.png', 21),
       ('vans-knu-skool-pink-3.png', 21),
	   ('vans-knu-skool-pink-4.png', 21),
       ('vans-knu-skool-pink-5.png', 21),

	   ('vans-old-skool-white-1.png', 22),
	   ('vans-old-skool-white-2.png', 22),
       ('vans-old-skool-white-3.png', 22),
	   ('vans-old-skool-white-4.png', 22),
       ('vans-old-skool-white-5.png', 22),
	   
	   ('vans-old-skool-blue-1.png', 22),
	   ('vans-old-skool-blue-2.png', 22),
       ('vans-old-skool-blue-3.png', 22),
	   ('vans-old-skool-blue-4.png', 22),
       ('vans-old-skool-blue-5.png', 22),

	   ('vans-old-skool-yellow-1.png', 22),
	   ('vans-old-skool-yellow-2.png', 22),
       ('vans-old-skool-yellow-3.png', 22),
	   ('vans-old-skool-yellow-4.png', 22),
       ('vans-old-skool-yellow-5.png', 22),

	   ('vans-ave-v2-grey-1.png', 23),
	   ('vans-ave-v2-grey-2.png', 23),
       ('vans-ave-v2-grey-3.png', 23),
	   ('vans-ave-v2-grey-4.png', 23),
       ('vans-ave-v2-grey-5.png', 23),
	   
	   ('vans-ave-v2-black-1.png', 23),
	   ('vans-ave-v2-black-2.png', 23),
       ('vans-ave-v2-black-3.png', 23),
	   ('vans-ave-v2-black-4.png', 23),
       ('vans-ave-v2-black-5.png', 23),

	   ('vans-ave-v2-purple-1.png', 23),
	   ('vans-ave-v2-purple-2.png', 23),
       ('vans-ave-v2-purple-3.png', 23),
	   ('vans-ave-v2-purple-4.png', 23),
       ('vans-ave-v2-purple-5.png', 23),

	   ('vans-cruze-too-comfycush-brown-1.png', 24),
	   ('vans-cruze-too-comfycush-brown-2.png', 24),
       ('vans-cruze-too-comfycush-brown-3.png', 24),
	   ('vans-cruze-too-comfycush-brown-4.png', 24),
       ('vans-cruze-too-comfycush-brown-5.png', 24),
	   
	   ('vans-cruze-too-comfycush-green-1.png', 24),
	   ('vans-cruze-too-comfycush-green-2.png', 24),
       ('vans-cruze-too-comfycush-green-3.png', 24),
	   ('vans-cruze-too-comfycush-green-4.png', 24),
       ('vans-cruze-too-comfycush-green-5.png', 24),

	   ('vans-sk8-hi-black-1.png', 25),
	   ('vans-sk8-hi-black-2.png', 25),
       ('vans-sk8-hi-black-3.png', 25),
	   ('vans-sk8-hi-black-4.png', 25),
       ('vans-sk8-hi-black-5.png', 25);


-- Thêm dữ liệu vào bảng Products
INSERT INTO Products (Name, ModelId, ColorId, SizeId, Quantity, ImportPrice, Price, Image, Status)
VALUES	(N'Nike Air Force 1 07 - Trắng - 39', 1, 3, 1, 50, 3000000, 4000000, 'nike-air-force-1-07-trang.png', 1),
		(N'Nike Air Force 1 07 - Trắng - 40', 1, 3, 2, 50, 3000000, 4000000, 'nike-air-force-1-07-trang.png', 1),
		(N'Nike Air Force 1 07 - Trắng - 41', 1, 3, 3, 50, 3000000, 4000000, 'nike-air-force-1-07-trang.png', 1),
		(N'Nike Air Force 1 07 - Trắng - 42', 1, 3, 4, 50, 3000000, 4000000, 'nike-air-force-1-07-trang.png', 1),
		(N'Nike Air Force 1 07 - Trắng - 43', 1, 3, 5, 50, 3000000, 4000000, 'nike-air-force-1-07-trang.png', 1),
		(N'Nike Air Force 1 07 - Trắng - 44', 1, 3, 6, 50, 3000000, 4000000, 'nike-air-force-1-07-trang.png', 1),

		(N'Nike Air Force 1 07 - Đen - 39', 1, 1, 1, 50, 3000000, 4000000, 'nike-air-force-1-07-den.png', 1),
		(N'Nike Air Force 1 07 - Đen - 40', 1, 1, 2, 50, 3000000, 4000000, 'nike-air-force-1-07-den.png', 1),
		(N'Nike Air Force 1 07 - Đen - 41', 1, 1, 3, 50, 3000000, 4000000, 'nike-air-force-1-07-den.png', 1),
		(N'Nike Air Force 1 07 - Đen - 42', 1, 1, 4, 50, 3000000, 4000000, 'nike-air-force-1-07-den.png', 1),
		(N'Nike Air Force 1 07 - Đen - 43', 1, 1, 5, 50, 3000000, 4000000, 'nike-air-force-1-07-den.png', 1),
		(N'Nike Air Force 1 07 - Đen - 44', 1, 1, 6, 50, 3000000, 4000000, 'nike-air-force-1-07-den.png', 1),

		(N'Nike Air Force 1 07 Easyon - Trắng - 39', 2, 3, 1, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-trang.png', 1),
		(N'Nike Air Force 1 07 Easyon - Trắng - 40', 2, 3, 2, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-trang.png', 1),
		(N'Nike Air Force 1 07 Easyon - Trắng - 41', 2, 3, 3, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-trang.png', 1),
		(N'Nike Air Force 1 07 Easyon - Trắng - 42', 2, 3, 4, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-trang.png', 1),
		(N'Nike Air Force 1 07 Easyon - Trắng - 43', 2, 3, 5, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-trang.png', 1),
		(N'Nike Air Force 1 07 Easyon - Trắng - 44', 2, 3, 6, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-trang.png', 1),

		(N'Nike Air Force 1 07 Easyon - Đen - 39', 2, 1, 1, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-den.png', 1),
		(N'Nike Air Force 1 07 Easyon - Đen - 40', 2, 1, 2, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-den.png', 1),
		(N'Nike Air Force 1 07 Easyon - Đen - 41', 2, 1, 3, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-den.png', 1),
		(N'Nike Air Force 1 07 Easyon - Đen - 42', 2, 1, 4, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-den.png', 1),
		(N'Nike Air Force 1 07 Easyon - Đen - 43', 2, 1, 5, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-den.png', 1),
		(N'Nike Air Force 1 07 Easyon - Đen - 44', 2, 1, 6, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-den.png', 1),

		(N'Nike Air Force 1 07 Easyon - Xanh dương - 39', 2, 8, 1, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-xanh-duong.png', 1),
		(N'Nike Air Force 1 07 Easyon - Xanh dương - 40', 2, 8, 2, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-xanh-duong.png', 1),
		(N'Nike Air Force 1 07 Easyon - Xanh dương - 41', 2, 8, 3, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-xanh-duong.png', 1),
		(N'Nike Air Force 1 07 Easyon - Xanh dương - 42', 2, 8, 4, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-xanh-duong.png', 1),
		(N'Nike Air Force 1 07 Easyon - Xanh dương - 43', 2, 8, 5, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-xanh-duong.png', 1),
		(N'Nike Air Force 1 07 Easyon - Xanh dương - 44', 2, 8, 6, 50, 3200000, 4200000, 'nike-air-force-1-07-easyon-xanh-duong.png', 1),

		(N'Nike Air Force 1 07 LV8 - Trắng - 39', 3, 3, 1, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 - Trắng - 40', 3, 3, 2, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 - Trắng - 41', 3, 3, 3, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 - Trắng - 42', 3, 3, 4, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 - Trắng - 43', 3, 3, 5, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 - Trắng - 44', 3, 3, 6, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-trang.png', 1),

		(N'Nike Air Force 1 07 LV8 - Xám - 39', 3, 2, 1, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-xam.png', 1),
		(N'Nike Air Force 1 07 LV8 - Xám - 40', 3, 2, 2, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-xam.png', 1),
		(N'Nike Air Force 1 07 LV8 - Xám - 41', 3, 2, 3, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-xam.png', 1),
		(N'Nike Air Force 1 07 LV8 - Xám - 42', 3, 2, 4, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-xam.png', 1),
		(N'Nike Air Force 1 07 LV8 - Xám - 43', 3, 2, 5, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-xam.png', 1),
		(N'Nike Air Force 1 07 LV8 - Xám - 44', 3, 2, 6, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-xam.png', 1),

		(N'Nike Air Force 1 07 LV8 - Nâu - 39', 3, 10, 1, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-nau.png', 1),
		(N'Nike Air Force 1 07 LV8 - Nâu - 40', 3, 10, 2, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-nau.png', 1),
		(N'Nike Air Force 1 07 LV8 - Nâu - 41', 3, 10, 3, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-nau.png', 1),
		(N'Nike Air Force 1 07 LV8 - Nâu - 42', 3, 10, 4, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-nau.png', 1),
		(N'Nike Air Force 1 07 LV8 - Nâu - 43', 3, 10, 5, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-nau.png', 1),
		(N'Nike Air Force 1 07 LV8 - Nâu - 44', 3, 10, 6, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-nau.png', 1),

		(N'Nike Air Force 1 07 LV8 Evo - 39', 4, 3, 1, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-evo-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 Evo - 40', 4, 3, 2, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-evo-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 Evo - 41', 4, 3, 3, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-evo-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 Evo - 42', 4, 3, 4, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-evo-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 Evo - 43', 4, 3, 5, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-evo-trang.png', 1),
		(N'Nike Air Force 1 07 LV8 Evo - 44', 4, 3, 6, 50, 3500000, 4500000, 'nike-air-force-1-07-lv8-evo-trang.png', 1),

		(N'Nike Air Force 1 07 Next Nature SE - Trắng - 39', 5, 3, 1, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-trang.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Trắng - 40', 5, 3, 2, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-trang.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Trắng - 41', 5, 3, 3, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-trang.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Trắng - 42', 5, 3, 4, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-trang.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Trắng - 43', 5, 3, 5, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-trang.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Trắng - 44', 5, 3, 6, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-trang.png', 1),

		(N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 39', 5, 7, 1, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-xanh-la.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 40', 5, 7, 2, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-xanh-la.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 41', 5, 7, 3, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-xanh-la.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 42', 5, 7, 4, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-xanh-la.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 43', 5, 7, 5, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-xanh-la.png', 1),
		(N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 44', 5, 7, 6, 50, 2500000, 3000000, 'nike-air-force-1-07-next-nature-se-xanh-la.png', 1),

		(N'Nike Air Force 1 Low Evo - Trắng - 39', 6, 3, 1, 50, 3500000, 4500000, 'nike-air-force-1-low-evo-trang.png', 1),
		(N'Nike Air Force 1 Low Evo - Trắng - 40', 6, 3, 2, 50, 3500000, 4500000, 'nike-air-force-1-low-evo-trang.png', 1),
		(N'Nike Air Force 1 Low Evo - Trắng - 41', 6, 3, 3, 50, 3500000, 4500000, 'nike-air-force-1-low-evo-trang.png', 1),
		(N'Nike Air Force 1 Low Evo - Trắng - 42', 6, 3, 4, 50, 3500000, 4500000, 'nike-air-force-1-low-evo-trang.png', 1),
		(N'Nike Air Force 1 Low Evo - Trắng - 43', 6, 3, 5, 50, 3500000, 4500000, 'nike-air-force-1-low-evo-trang.png', 1),
		(N'Nike Air Force 1 Low Evo - Trắng - 44', 6, 3, 6, 50, 3500000, 4500000, 'nike-air-force-1-low-evo-trang.png', 1),

		(N'Nike Air Force 1 Shadow - Trắng - 39', 7, 3, 1, 50, 3500000, 4500000, 'nike-air-force-1-shadow-trang.png', 1),
		(N'Nike Air Force 1 Shadow - Trắng - 40', 7, 3, 2, 50, 3500000, 4500000, 'nike-air-force-1-shadow-trang.png', 1),
		(N'Nike Air Force 1 Shadow - Trắng - 41', 7, 3, 3, 50, 3500000, 4500000, 'nike-air-force-1-shadow-trang.png', 1),
		(N'Nike Air Force 1 Shadow - Trắng - 42', 7, 3, 4, 50, 3500000, 4500000, 'nike-air-force-1-shadow-trang.png', 1),
		(N'Nike Air Force 1 Shadow - Trắng - 43', 7, 3, 5, 50, 3500000, 4500000, 'nike-air-force-1-shadow-trang.png', 1),
		(N'Nike Air Force 1 Shadow - Trắng - 44', 7, 3, 6, 50, 3500000, 4500000, 'nike-air-force-1-shadow-trang.png', 1),

		(N'Nike Air Jordan 1 Low - Trắng - 39', 8, 3, 1, 50, 3000000, 4000000, 'nike-air-jordan-1-low-trang.png', 1),
		(N'Nike Air Jordan 1 Low - Trắng - 40', 8, 3, 2, 50, 3000000, 4000000, 'nike-air-jordan-1-low-trang.png', 1),
		(N'Nike Air Jordan 1 Low - Trắng - 41', 8, 3, 3, 50, 3000000, 4000000, 'nike-air-jordan-1-low-trang.png', 1),
		(N'Nike Air Jordan 1 Low - Trắng - 42', 8, 3, 4, 50, 3000000, 4000000, 'nike-air-jordan-1-low-trang.png', 1),
		(N'Nike Air Jordan 1 Low - Trắng - 43', 8, 3, 5, 50, 3000000, 4000000, 'nike-air-jordan-1-low-trang.png', 1),
		(N'Nike Air Jordan 1 Low - Trắng - 44', 8, 3, 6, 50, 3000000, 4000000, 'nike-air-jordan-1-low-trang.png', 1),

		(N'Nike Air Jordan 1 Low - Đỏ - 39', 8, 4, 1, 50, 3000000, 4000000, 'nike-air-jordan-1-low-do.png', 1),
		(N'Nike Air Jordan 1 Low - Đỏ - 40', 8, 4, 2, 50, 3000000, 4000000, 'nike-air-jordan-1-low-do.png', 1),
		(N'Nike Air Jordan 1 Low - Đỏ - 41', 8, 4, 3, 50, 3000000, 4000000, 'nike-air-jordan-1-low-do.png', 1),
		(N'Nike Air Jordan 1 Low - Đỏ - 42', 8, 4, 4, 50, 3000000, 4000000, 'nike-air-jordan-1-low-do.png', 1),
		(N'Nike Air Jordan 1 Low - Đỏ - 43', 8, 4, 5, 50, 3000000, 4000000, 'nike-air-jordan-1-low-do.png', 1),
		(N'Nike Air Jordan 1 Low - Đỏ - 44', 8, 4, 6, 50, 3000000, 4000000, 'nike-air-jordan-1-low-do.png', 1),

		(N'Nike Air Jordan 1 Low - Xanh dương - 39', 8, 8, 1, 50, 3000000, 4000000, 'nike-air-jordan-1-low-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 Low - Xanh dương - 40', 8, 8, 2, 50, 3000000, 4000000, 'nike-air-jordan-1-low-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 Low - Xanh dương - 41', 8, 8, 3, 50, 3000000, 4000000, 'nike-air-jordan-1-low-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 Low - Xanh dương - 42', 8, 8, 4, 50, 3000000, 4000000, 'nike-air-jordan-1-low-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 Low - Xanh dương - 43', 8, 8, 5, 50, 3000000, 4000000, 'nike-air-jordan-1-low-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 Low - Xanh dương - 44', 8, 8, 6, 50, 3000000, 4000000, 'nike-air-jordan-1-low-xanh-duong.png', 1),

		(N'Nike Air Jordan 1 Mid - Trắng - 39', 9, 3, 1, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-trang.png', 1),
		(N'Nike Air Jordan 1 Mid - Trắng - 40', 9, 3, 2, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-trang.png', 1),
		(N'Nike Air Jordan 1 Mid - Trắng - 41', 9, 3, 3, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-trang.png', 1),
		(N'Nike Air Jordan 1 Mid - Trắng - 42', 9, 3, 4, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-trang.png', 1),
		(N'Nike Air Jordan 1 Mid - Trắng - 43', 9, 3, 5, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-trang.png', 1),
		(N'Nike Air Jordan 1 Mid - Trắng - 44', 9, 3, 6, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-trang.png', 1),

		(N'Nike Air Jordan 1 Mid - Xám - 39', 9, 2, 1, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-xam.png', 1),
		(N'Nike Air Jordan 1 Mid - Xám - 40', 9, 2, 2, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-xam.png', 1),
		(N'Nike Air Jordan 1 Mid - Xám - 41', 9, 2, 3, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-xam.png', 1),
		(N'Nike Air Jordan 1 Mid - Xám - 42', 9, 2, 4, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-xam.png', 1),
		(N'Nike Air Jordan 1 Mid - Xám - 43', 9, 2, 5, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-xam.png', 1),
		(N'Nike Air Jordan 1 Mid - Xám - 44', 9, 2, 6, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-xam.png', 1),

		(N'Nike Air Jordan 1 Mid - Tím - 39', 9, 9, 1, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-tim.png', 1),
		(N'Nike Air Jordan 1 Mid - Tím - 40', 9, 9, 2, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-tim.png', 1),
		(N'Nike Air Jordan 1 Mid - Tím - 41', 9, 9, 3, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-tim.png', 1),
		(N'Nike Air Jordan 1 Mid - Tím - 42', 9, 9, 4, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-tim.png', 1),
		(N'Nike Air Jordan 1 Mid - Tím - 43', 9, 9, 5, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-tim.png', 1),
		(N'Nike Air Jordan 1 Mid - Tím - 44', 9, 9, 6, 50, 3500000, 4500000, 'nike-air-jordan-1-mid-tim.png', 1),

		(N'Nike Air Jordan 1 I High G - Đen - 39', 10, 1, 1, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-den.png', 1),
		(N'Nike Air Jordan 1 I High G - Đen - 40', 10, 1, 2, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-den.png', 1),
		(N'Nike Air Jordan 1 I High G - Đen - 41', 10, 1, 3, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-den.png', 1),
		(N'Nike Air Jordan 1 I High G - Đen - 42', 10, 1, 4, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-den.png', 1),
		(N'Nike Air Jordan 1 I High G - Đen - 43', 10, 1, 5, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-den.png', 1),
		(N'Nike Air Jordan 1 I High G - Đen - 44', 10, 1, 6, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-den.png', 1),

		(N'Nike Air Jordan 1 I High G - Xanh dương - 39', 10, 8, 1, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 I High G - Xanh dương - 40', 10, 8, 2, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 I High G - Xanh dương - 41', 10, 8, 3, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 I High G - Xanh dương - 42', 10, 8, 4, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 I High G - Xanh dương - 43', 10, 8, 5, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-xanh-duong.png', 1),
		(N'Nike Air Jordan 1 I High G - Xanh dương - 44', 10, 8, 6, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-xanh-duong.png', 1),

		(N'Nike Air Jordan 1 I High G - Cam - 39', 10, 5, 1, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-cam.png', 1),
		(N'Nike Air Jordan 1 I High G - Cam - 40', 10, 5, 2, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-cam.png', 1),
		(N'Nike Air Jordan 1 I High G - Cam - 41', 10, 5, 3, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-cam.png', 1),
		(N'Nike Air Jordan 1 I High G - Cam - 42', 10, 5, 4, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-cam.png', 1),
		(N'Nike Air Jordan 1 I High G - Cam - 43', 10, 5, 5, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-cam.png', 1),
		(N'Nike Air Jordan 1 I High G - Cam - 44', 10, 5, 6, 50, 4000000, 5000000, 'nike-air-jordan-i-high-g-golf-cam.png', 1),

		--Adidas

		(N'Adidas Avryn - Trắng - 39', 11, 3, 1, 50, 2000000, 2600000, 'adidas-avryn-trang.png', 1),
		(N'Adidas Avryn - Trắng - 40', 11, 3, 2, 50, 2000000, 2600000, 'adidas-avryn-trang.png', 1),
		(N'Adidas Avryn - Trắng - 41', 11, 3, 3, 50, 2000000, 2600000, 'adidas-avryn-trang.png', 1),
		(N'Adidas Avryn - Trắng - 42', 11, 3, 4, 50, 2000000, 2600000, 'adidas-avryn-trang.png', 1),
		(N'Adidas Avryn - Trắng - 43', 11, 3, 5, 50, 2000000, 2600000, 'adidas-avryn-trang.png', 1),
		(N'Adidas Avryn - Trắng - 44', 11, 3, 6, 50, 2000000, 2600000, 'adidas-avryn-trang.png', 1),

		(N'Adidas Avryn - Xám - 39', 11, 2, 1, 50, 2000000, 2600000, 'adidas-avryn-xam.png', 1),
		(N'Adidas Avryn - Xám - 40', 11, 2, 2, 50, 2000000, 2600000, 'adidas-avryn-xam.png', 1),
		(N'Adidas Avryn - Xám - 41', 11, 2, 3, 50, 2000000, 2600000, 'adidas-avryn-xam.png', 1),
		(N'Adidas Avryn - Xám - 42', 11, 2, 4, 50, 2000000, 2600000, 'adidas-avryn-xam.png', 1),
		(N'Adidas Avryn - Xám - 43', 11, 2, 5, 50, 2000000, 2600000, 'adidas-avryn-xam.png', 1),
		(N'Adidas Avryn - Xám - 44', 11, 2, 6, 50, 2000000, 2600000, 'adidas-avryn-xam.png', 1),

		(N'Adidas Avryn - Đen - 39', 11, 1, 1, 50, 2000000, 2600000, 'adidas-avryn-den.png', 1),
		(N'Adidas Avryn - Đen - 40', 11, 1, 2, 50, 2000000, 2600000, 'adidas-avryn-den.png', 1),
		(N'Adidas Avryn - Đen - 41', 11, 1, 3, 50, 2000000, 2600000, 'adidas-avryn-den.png', 1),
		(N'Adidas Avryn - Đen - 42', 11, 1, 4, 50, 2000000, 2600000, 'adidas-avryn-den.png', 1),
		(N'Adidas Avryn - Đen - 43', 11, 1, 5, 50, 2000000, 2600000, 'adidas-avryn-den.png', 1),
		(N'Adidas Avryn - Đen - 44', 11, 1, 6, 50, 2000000, 2600000, 'adidas-avryn-den.png', 1),

		(N'Adidas Ultraboost 1.0 - Trắng - 39', 12, 3, 1, 50, 2300000, 2900000, 'adidas-ultraboost-v1-trang.png', 1),
		(N'Adidas Ultraboost 1.0 - Trắng - 40', 12, 3, 2, 50, 2300000, 2900000, 'adidas-ultraboost-v1-trang.png', 1),
		(N'Adidas Ultraboost 1.0 - Trắng - 41', 12, 3, 3, 50, 2300000, 2900000, 'adidas-ultraboost-v1-trang.png', 1),
		(N'Adidas Ultraboost 1.0 - Trắng - 42', 12, 3, 4, 50, 2300000, 2900000, 'adidas-ultraboost-v1-trang.png', 1),
		(N'Adidas Ultraboost 1.0 - Trắng - 43', 12, 3, 5, 50, 2300000, 2900000, 'adidas-ultraboost-v1-trang.png', 1),
		(N'Adidas Ultraboost 1.0 - Trắng - 44', 12, 3, 6, 50, 2300000, 2900000, 'adidas-ultraboost-v1-trang.png', 1),

		(N'Adidas Ultraboost 1.0 - Đen - 39', 12, 1, 1, 50, 2300000, 2900000, 'adidas-ultraboost-v1-den.png', 1),
		(N'Adidas Ultraboost 1.0 - Đen - 40', 12, 1, 2, 50, 2300000, 2900000, 'adidas-ultraboost-v1-den.png', 1),
		(N'Adidas Ultraboost 1.0 - Đen - 41', 12, 1, 3, 50, 2300000, 2900000, 'adidas-ultraboost-v1-den.png', 1),
		(N'Adidas Ultraboost 1.0 - Đen - 42', 12, 1, 4, 50, 2300000, 2900000, 'adidas-ultraboost-v1-den.png', 1),
		(N'Adidas Ultraboost 1.0 - Đen - 43', 12, 1, 5, 50, 2300000, 2900000, 'adidas-ultraboost-v1-den.png', 1),
		(N'Adidas Ultraboost 1.0 - Đen - 44', 12, 1, 6, 50, 2300000, 2900000, 'adidas-ultraboost-v1-den.png', 1),

		(N'Adidas Ultraboost 1.0 - Xanh lá - 39', 12, 7, 1, 50, 2300000, 2900000, 'adidas-ultraboost-v1-xanh-la.png', 1),
		(N'Adidas Ultraboost 1.0 - Xanh lá - 40', 12, 7, 2, 50, 2300000, 2900000, 'adidas-ultraboost-v1-xanh-la.png', 1),
		(N'Adidas Ultraboost 1.0 - Xanh lá - 41', 12, 7, 3, 50, 2300000, 2900000, 'adidas-ultraboost-v1-xanh-la.png', 1),
		(N'Adidas Ultraboost 1.0 - Xanh lá - 42', 12, 7, 4, 50, 2300000, 2900000, 'adidas-ultraboost-v1-xanh-la.png', 1),
		(N'Adidas Ultraboost 1.0 - Xanh lá - 43', 12, 7, 5, 50, 2300000, 2900000, 'adidas-ultraboost-v1-xanh-la.png', 1),
		(N'Adidas Ultraboost 1.0 - Xanh lá - 44', 12, 7, 6, 50, 2300000, 2900000, 'adidas-ultraboost-v1-xanh-la.png', 1),

		(N'Adidas Pureboost 23 - Đen - 39', 13, 1, 1, 50, 3000000, 3600000, 'adidas-pureboost-23-den.png', 1),
		(N'Adidas Pureboost 23 - Đen - 40', 13, 1, 2, 50, 3000000, 3600000, 'adidas-pureboost-23-den.png', 1),
		(N'Adidas Pureboost 23 - Đen - 41', 13, 1, 3, 50, 3000000, 3600000, 'adidas-pureboost-23-den.png', 1),
		(N'Adidas Pureboost 23 - Đen - 42', 13, 1, 4, 50, 3000000, 3600000, 'adidas-pureboost-23-den.png', 1),
		(N'Adidas Pureboost 23 - Đen - 43', 13, 1, 5, 50, 3000000, 3600000, 'adidas-pureboost-23-den.png', 1),
		(N'Adidas Pureboost 23 - Đen - 44', 13, 1, 6, 50, 3000000, 3600000, 'adidas-pureboost-23-den.png', 1),

		(N'Adidas Pureboost 23 - Carbon - 39', 13, 11, 1, 50, 3000000, 3600000, 'adidas-pureboost-23-carbon-1.png', 1),
		(N'Adidas Pureboost 23 - Carbon - 40', 13, 11, 2, 50, 3000000, 3600000, 'adidas-pureboost-23-carbon-1.png', 1),
		(N'Adidas Pureboost 23 - Carbon - 41', 13, 11, 3, 50, 3000000, 3600000, 'adidas-pureboost-23-carbon-1.png', 1),
		(N'Adidas Pureboost 23 - Carbon - 42', 13, 11, 4, 50, 3000000, 3600000, 'adidas-pureboost-23-carbon-1.png', 1),
		(N'Adidas Pureboost 23 - Carbon - 43', 13, 11, 5, 50, 3000000, 3600000, 'adidas-pureboost-23-carbon-1.png', 1),
		(N'Adidas Pureboost 23 - Carbon - 44', 13, 11, 6, 50, 3000000, 3600000, 'adidas-pureboost-23-carbon-1.png', 1),

		(N'Adidas Response Super - Trắng - 39', 14, 3, 1, 50, 2500000, 3100000, 'adidas-response-super-trang.png', 1),
		(N'Adidas Response Super - Trắng - 40', 14, 3, 2, 50, 2500000, 3100000, 'adidas-response-super-trang.png', 1),
		(N'Adidas Response Super - Trắng - 41', 14, 3, 3, 50, 2500000, 3100000, 'adidas-response-super-trang.png', 1),
		(N'Adidas Response Super - Trắng - 42', 14, 3, 4, 50, 2500000, 3100000, 'adidas-response-super-trang.png', 1),
		(N'Adidas Response Super - Trắng - 43', 14, 3, 5, 50, 2500000, 3100000, 'adidas-response-super-trang.png', 1),
		(N'Adidas Response Super - Trắng - 44', 14, 3, 6, 50, 2500000, 3100000, 'adidas-response-super-trang.png', 1),

		(N'Adidas Response Super - Đen - 39', 14, 1, 1, 50, 2500000, 3100000, 'adidas-response-super-den.png', 1),
		(N'Adidas Response Super - Đen - 40', 14, 1, 2, 50, 2500000, 3100000, 'adidas-response-super-den.png', 1),
		(N'Adidas Response Super - Đen - 41', 14, 1, 3, 50, 2500000, 3100000, 'adidas-response-super-den.png', 1),
		(N'Adidas Response Super - Đen - 42', 14, 1, 4, 50, 2500000, 3100000, 'adidas-response-super-den.png', 1),
		(N'Adidas Response Super - Đen - 43', 14, 1, 5, 50, 2500000, 3100000, 'adidas-response-super-den.png', 1),
		(N'Adidas Response Super - Đen - 44', 14, 1, 6, 50, 2500000, 3100000, 'adidas-response-super-den.png', 1),

		(N'Adidas Dropset 2 Earth - Xanh lá - 39', 15, 7, 1, 50, 1800000, 2600000, 'adidas-dropset-2-earth-xanh-la.png', 1),
		(N'Adidas Dropset 2 Earth - Xanh lá - 40', 15, 7, 2, 50, 1800000, 2600000, 'adidas-dropset-2-earth-xanh-la.png', 1),
		(N'Adidas Dropset 2 Earth - Xanh lá - 41', 15, 7, 3, 50, 1800000, 2600000, 'adidas-dropset-2-earth-xanh-la.png', 1),
		(N'Adidas Dropset 2 Earth - Xanh lá - 42', 15, 7, 4, 50, 1800000, 2600000, 'adidas-dropset-2-earth-xanh-la.png', 1),
		(N'Adidas Dropset 2 Earth - Xanh lá - 43', 15, 7, 5, 50, 1800000, 2600000, 'adidas-dropset-2-earth-xanh-la.png', 1),
		(N'Adidas Dropset 2 Earth - Xanh lá - 44', 15, 7, 6, 50, 1800000, 2600000, 'adidas-dropset-2-earth-xanh-la.png', 1),

		--Puma

		(N'Puma Rs-X 3D - Đen - 39', 16, 1, 1, 50, 2000000, 2500000, 'puma-rs-x-3d-den.png', 1),
		(N'Puma Rs-X 3D - Đen - 40', 16, 1, 2, 50, 2000000, 2500000, 'puma-rs-x-3d-den.png', 1),
		(N'Puma Rs-X 3D - Đen - 41', 16, 1, 4, 50, 2000000, 2500000, 'puma-rs-x-3d-den.png', 1),
		(N'Puma Rs-X 3D - Đen - 42', 16, 1, 4, 50, 2000000, 2500000, 'puma-rs-x-3d-den.png', 1),
		(N'Puma Rs-X 3D - Đen - 43', 16, 1, 5, 50, 2000000, 2500000, 'puma-rs-x-3d-den.png', 1),
		(N'Puma Rs-X 3D - Đen - 44', 16, 1, 6, 50, 2000000, 2500000, 'puma-rs-x-3d-den.png', 1),

		(N'Puma Rs-X 3D - Đỏ - 39', 16, 4, 1, 50, 2000000, 2500000, 'puma-rs-x-3d-do.png', 1),
		(N'Puma Rs-X 3D - Đỏ - 40', 16, 4, 2, 50, 2000000, 2500000, 'puma-rs-x-3d-do.png', 1),
		(N'Puma Rs-X 3D - Đỏ - 41', 16, 4, 3, 50, 2000000, 2500000, 'puma-rs-x-3d-do.png', 1),
		(N'Puma Rs-X 3D - Đỏ - 42', 16, 4, 4, 50, 2000000, 2500000, 'puma-rs-x-3d-do.png', 1),
		(N'Puma Rs-X 3D - Đỏ - 43', 16, 4, 5, 50, 2000000, 2500000, 'puma-rs-x-3d-do.png', 1),
		(N'Puma Rs-X 3D - Đỏ - 44', 16, 4, 6, 50, 2000000, 2500000, 'puma-rs-x-3d-do.png', 1),

		(N'Puma Slipstream Expedition - Vàng - 39', 17, 6, 1, 50, 2300000, 2800000, 'puma-slipstream-expedition-vang.png', 1),
		(N'Puma Slipstream Expedition - Vàng - 40', 17, 6, 2, 50, 2300000, 2800000, 'puma-slipstream-expedition-vang.png', 1),
		(N'Puma Slipstream Expedition - Vàng - 41', 17, 6, 4, 50, 2300000, 2800000, 'puma-slipstream-expedition-vang.png', 1),
		(N'Puma Slipstream Expedition - Vàng - 42', 17, 6, 4, 50, 2300000, 2800000, 'puma-slipstream-expedition-vang.png', 1),
		(N'Puma Slipstream Expedition - Vàng - 43', 17, 6, 5, 50, 2300000, 2800000, 'puma-slipstream-expedition-vang.png', 1),
		(N'Puma Slipstream Expedition - Vàng - 44', 17, 6, 6, 50, 2300000, 2800000, 'puma-slipstream-expedition-vang.png', 1),

		(N'Puma Slipstream Expedition - Nâu - 39', 17, 10, 1, 50, 2300000, 2800000, 'puma-slipstream-expedition-nau.png', 1),
		(N'Puma Slipstream Expedition - Nâu - 40', 17, 10, 2, 50, 2300000, 2800000, 'puma-slipstream-expedition-nau.png', 1),
		(N'Puma Slipstream Expedition - Nâu - 41', 17, 10, 3, 50, 2300000, 2800000, 'puma-slipstream-expedition-nau.png', 1),
		(N'Puma Slipstream Expedition - Nâu - 42', 17, 10, 4, 50, 2300000, 2800000, 'puma-slipstream-expedition-nau.png', 1),
		(N'Puma Slipstream Expedition - Nâu - 43', 17, 10, 5, 50, 2300000, 2800000, 'puma-slipstream-expedition-nau.png', 1),
		(N'Puma Slipstream Expedition - Nâu - 44', 17, 10, 6, 50, 2300000, 2800000, 'puma-slipstream-expedition-nau.png', 1),

		(N'Puma Suede XL - Đen - 39', 18, 1, 1, 50, 2600000, 3100000, 'puma-suede-xl-den.png', 1),
		(N'Puma Suede XL - Đen - 40', 18, 1, 2, 50, 2600000, 3100000, 'puma-suede-xl-den.png', 1),
		(N'Puma Suede XL - Đen - 41', 18, 1, 4, 50, 2600000, 3100000, 'puma-suede-xl-den.png', 1),
		(N'Puma Suede XL - Đen - 42', 18, 1, 4, 50, 2600000, 3100000, 'puma-suede-xl-den.png', 1),
		(N'Puma Suede XL - Đen - 43', 18, 1, 5, 50, 2600000, 3100000, 'puma-suede-xl-den.png', 1),
		(N'Puma Suede XL - Đen - 44', 18, 1, 6, 50, 2600000, 3100000, 'puma-suede-xl-den.png', 1),

		(N'Puma Suede XL - Xanh dương - 39', 18, 8, 1, 50, 2600000, 3100000, 'puma-suede-xl-xanh-duong.png', 1),
		(N'Puma Suede XL - Xanh dương - 40', 18, 8, 2, 50, 2600000, 3100000, 'puma-suede-xl-xanh-duong.png', 1),
		(N'Puma Suede XL - Xanh dương - 41', 18, 8, 3, 50, 2600000, 3100000, 'puma-suede-xl-xanh-duong.png', 1),
		(N'Puma Suede XL - Xanh dương - 42', 18, 8, 4, 50, 2600000, 3100000, 'puma-suede-xl-xanh-duong.png', 1),
		(N'Puma Suede XL - Xanh dương - 43', 18, 8, 5, 50, 2600000, 3100000, 'puma-suede-xl-xanh-duong.png', 1),
		(N'Puma Suede XL - Xanh dương - 44', 18, 8, 6, 50, 2600000, 3100000, 'puma-suede-xl-xanh-duong.png', 1),

		(N'Adidas Palermo Leather - Trắng - 39', 19, 3, 1, 50, 2900000, 3400000, 'puma-palermo-leather-trang.png', 1),
		(N'Adidas Palermo Leather - Trắng - 40', 19, 3, 2, 50, 2900000, 3400000, 'puma-palermo-leather-trang.png', 1),
		(N'Adidas Palermo Leather - Trắng - 41', 19, 3, 3, 50, 2900000, 3400000, 'puma-palermo-leather-trang.png', 1),
		(N'Adidas Palermo Leather - Trắng - 42', 19, 3, 4, 50, 2900000, 3400000, 'puma-palermo-leather-trang.png', 1),
		(N'Adidas Palermo Leather - Trắng - 43', 19, 3, 5, 50, 2900000, 3400000, 'puma-palermo-leather-trang.png', 1),
		(N'Adidas Palermo Leather - Trắng - 44', 19, 3, 6, 50, 2900000, 3400000, 'puma-palermo-leather-trang.png', 1),

		(N'Adidas Palermo Leather - Xám - 39', 19, 2, 1, 50, 2900000, 3400000, 'puma-palermo-leather-xam.png', 1),
		(N'Adidas Palermo Leather - Xám - 40', 19, 2, 2, 50, 2900000, 3400000, 'puma-palermo-leather-xam.png', 1),
		(N'Adidas Palermo Leather - Xám - 41', 19, 2, 3, 50, 2900000, 3400000, 'puma-palermo-leather-xam.png', 1),
		(N'Adidas Palermo Leather - Xám - 42', 19, 2, 4, 50, 2900000, 3400000, 'puma-palermo-leather-xam.png', 1),
		(N'Adidas Palermo Leather - Xám - 43', 19, 2, 5, 50, 2900000, 3400000, 'puma-palermo-leather-xam.png', 1),
		(N'Adidas Palermo Leather - Xám - 44', 19, 2, 6, 50, 2900000, 3400000, 'puma-palermo-leather-xam.png', 1),

		(N'Puma 180 Perf - Trắng - 39', 20, 3, 1, 50, 1800000, 2300000, 'puma-180-perf-trang.png', 1),
		(N'Puma 180 Perf - Trắng - 40', 20, 3, 2, 50, 1800000, 2300000, 'puma-180-perf-trang.png', 1),
		(N'Puma 180 Perf - Trắng - 41', 20, 3, 3, 50, 1800000, 2300000, 'puma-180-perf-trang.png', 1),
		(N'Puma 180 Perf - Trắng - 42', 20, 3, 4, 50, 1800000, 2300000, 'puma-180-perf-trang.png', 1),
		(N'Puma 180 Perf - Trắng - 43', 20, 3, 5, 50, 1800000, 2300000, 'puma-180-perf-trang.png', 1),
		(N'Puma 180 Perf - Trắng - 44', 20, 3, 6, 50, 1800000, 2300000, 'puma-180-perf-trang.png', 1),

		--Vans

		(N'Vans Knu Skool - Đen - 39', 21, 1, 1, 50, 2000000, 2500000, 'vans-knu-skool-den.png', 1),
		(N'Vans Knu Skool - Đen - 40', 21, 1, 2, 50, 2000000, 2500000, 'vans-knu-skool-den.png', 1),
		(N'Vans Knu Skool - Đen - 41', 21, 1, 3, 50, 2000000, 2500000, 'vans-knu-skool-den.png', 1),
		(N'Vans Knu Skool - Đen - 42', 21, 1, 4, 50, 2000000, 2500000, 'vans-knu-skool-den.png', 1),
		(N'Vans Knu Skool - Đen - 43', 21, 1, 5, 50, 2000000, 2500000, 'vans-knu-skool-den.png', 1),
		(N'Vans Knu Skool - Đen - 44', 21, 1, 6, 50, 2000000, 2500000, 'vans-knu-skool-den.png', 1),

		(N'Vans Knu Skool - Đỏ - 39', 21, 4, 1, 50, 2000000, 2500000, 'vans-knu-skool-do.png', 1),
		(N'Vans Knu Skool - Đỏ - 40', 21, 4, 2, 50, 2000000, 2500000, 'vans-knu-skool-do.png', 1),
		(N'Vans Knu Skool - Đỏ - 41', 21, 4, 3, 50, 2000000, 2500000, 'vans-knu-skool-do.png', 1),
		(N'Vans Knu Skool - Đỏ - 42', 21, 4, 4, 50, 2000000, 2500000, 'vans-knu-skool-do.png', 1),
		(N'Vans Knu Skool - Đỏ - 43', 21, 4, 5, 50, 2000000, 2500000, 'vans-knu-skool-do.png', 1),
		(N'Vans Knu Skool - Đỏ - 44', 21, 4, 6, 50, 2000000, 2500000, 'vans-knu-skool-do.png', 1),
		
		(N'Vans Knu Skool - Hồng - 39', 21, 12, 1, 50, 2000000, 2500000, 'vans-knu-skool-hong.png', 1),
		(N'Vans Knu Skool - Hồng - 40', 21, 12, 2, 50, 2000000, 2500000, 'vans-knu-skool-hong.png', 1),
		(N'Vans Knu Skool - Hồng - 41', 21, 12, 3, 50, 2000000, 2500000, 'vans-knu-skool-hong.png', 1),
		(N'Vans Knu Skool - Hồng - 42', 21, 12, 4, 50, 2000000, 2500000, 'vans-knu-skool-hong.png', 1),
		(N'Vans Knu Skool - Hồng - 43', 21, 12, 5, 50, 2000000, 2500000, 'vans-knu-skool-hong.png', 1),
		(N'Vans Knu Skool - Hồng - 44', 21, 12, 6, 50, 2000000, 2500000, 'vans-knu-skool-hong.png', 1),

		(N'Vans Old Skool - Trắng - 39', 22, 3, 1, 50, 2200000, 2700000, 'vans-old-skool-trang.png', 1),
		(N'Vans Old Skool - Trắng - 40', 22, 3, 2, 50, 2200000, 2700000, 'vans-old-skool-trang.png', 1),
		(N'Vans Old Skool - Trắng - 41', 22, 3, 3, 50, 2200000, 2700000, 'vans-old-skool-trang.png', 1),
		(N'Vans Old Skool - Trắng - 42', 22, 3, 4, 50, 2200000, 2700000, 'vans-old-skool-trang.png', 1),
		(N'Vans Old Skool - Trắng - 43', 22, 3, 5, 50, 2200000, 2700000, 'vans-old-skool-trang.png', 1),
		(N'Vans Old Skool - Trắng - 44', 22, 3, 6, 50, 2200000, 2700000, 'vans-old-skool-trang.png', 1),

		(N'Vans Old Skool - Xanh dương - 39', 22, 8, 1, 50, 2200000, 2700000, 'vans-old-skool-xanh-duong.png', 1),
		(N'Vans Old Skool - Xanh dương - 40', 22, 8, 2, 50, 2200000, 2700000, 'vans-old-skool-xanh-duong.png', 1),
		(N'Vans Old Skool - Xanh dương - 41', 22, 8, 3, 50, 2200000, 2700000, 'vans-old-skool-xanh-duong.png', 1),
		(N'Vans Old Skool - Xanh dương - 42', 22, 8, 4, 50, 2200000, 2700000, 'vans-old-skool-xanh-duong.png', 1),
		(N'Vans Old Skool - Xanh dương - 43', 22, 8, 5, 50, 2200000, 2700000, 'vans-old-skool-xanh-duong.png', 1),
		(N'Vans Old Skool - Xanh dương - 44', 22, 8, 6, 50, 2200000, 2700000, 'vans-old-skool-xanh-duong.png', 1),
		
		(N'Vans Old Skool - Vàng - 39', 22, 6, 1, 50, 2200000, 2700000, 'vans-old-skool-vang.png', 1),
		(N'Vans Old Skool - Vàng - 40', 22, 6, 2, 50, 2200000, 2700000, 'vans-old-skool-vang.png', 1),
		(N'Vans Old Skool - Vàng - 41', 22, 6, 3, 50, 2200000, 2700000, 'vans-old-skool-vang.png', 1),
		(N'Vans Old Skool - Vàng - 42', 22, 6, 4, 50, 2200000, 2700000, 'vans-old-skool-vang.png', 1),
		(N'Vans Old Skool - Vàng - 43', 22, 6, 5, 50, 2200000, 2700000, 'vans-old-skool-vang.png', 1),
		(N'Vans Old Skool - Vàng - 44', 22, 6, 6, 50, 2200000, 2700000, 'vans-old-skool-vang.png', 1),

		(N'Vans Ave 2.0 - Xám - 39', 23, 2, 1, 50, 2400000, 2900000, 'vans-ave-v2-xam.png', 1),
		(N'Vans Ave 2.0 - Xám - 40', 23, 2, 2, 50, 2400000, 2900000, 'vans-ave-v2-xam.png', 1),
		(N'Vans Ave 2.0 - Xám - 41', 23, 2, 3, 50, 2400000, 2900000, 'vans-ave-v2-xam.png', 1),
		(N'Vans Ave 2.0 - Xám - 42', 23, 2, 4, 50, 2400000, 2900000, 'vans-ave-v2-xam.png', 1),
		(N'Vans Ave 2.0 - Xám - 43', 23, 2, 5, 50, 2400000, 2900000, 'vans-ave-v2-xam.png', 1),
		(N'Vans Ave 2.0 - Xám - 44', 23, 2, 6, 50, 2400000, 2900000, 'vans-ave-v2-xam.png', 1),

		(N'Vans Ave 2.0 - Đen - 39', 23, 1, 1, 50, 2400000, 2900000, 'vans-ave-v2-den.png', 1),
		(N'Vans Ave 2.0 - Đen - 40', 23, 1, 2, 50, 2400000, 2900000, 'vans-ave-v2-den.png', 1),
		(N'Vans Ave 2.0 - Đen - 41', 23, 1, 3, 50, 2400000, 2900000, 'vans-ave-v2-den.png', 1),
		(N'Vans Ave 2.0 - Đen - 42', 23, 1, 4, 50, 2400000, 2900000, 'vans-ave-v2-den.png', 1),
		(N'Vans Ave 2.0 - Đen - 43', 23, 1, 5, 50, 2400000, 2900000, 'vans-ave-v2-den.png', 1),
		(N'Vans Ave 2.0 - Đen - 44', 23, 1, 6, 50, 2400000, 2900000, 'vans-ave-v2-den.png', 1),
		
		(N'Vans Ave 2.0 - Tím - 39', 23, 9, 1, 50, 2400000, 2900000, 'vans-ave-v2-tim.png', 1),
		(N'Vans Ave 2.0 - Tím - 40', 23, 9, 2, 50, 2400000, 2900000, 'vans-ave-v2-tim.png', 1),
		(N'Vans Ave 2.0 - Tím - 41', 23, 9, 3, 50, 2400000, 2900000, 'vans-ave-v2-tim.png', 1),
		(N'Vans Ave 2.0 - Tím - 42', 23, 9, 4, 50, 2400000, 2900000, 'vans-ave-v2-tim.png', 1),
		(N'Vans Ave 2.0 - Tím - 43', 23, 9, 5, 50, 2400000, 2900000, 'vans-ave-v2-tim.png', 1),
		(N'Vans Ave 2.0 - Tím - 44', 23, 9, 6, 50, 2400000, 2900000, 'vans-ave-v2-tim.png', 1),

		(N'Vans Cruze Too Comfycush - Nâu - 39', 24, 10, 1, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-nau.png', 1),
		(N'Vans Cruze Too Comfycush - Nâu - 40', 24, 10, 2, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-nau.png', 1),
		(N'Vans Cruze Too Comfycush - Nâu - 41', 24, 10, 3, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-nau.png', 1),
		(N'Vans Cruze Too Comfycush - Nâu - 42', 24, 10, 4, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-nau.png', 1),
		(N'Vans Cruze Too Comfycush - Nâu - 43', 24, 10, 5, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-nau.png', 1),
		(N'Vans Cruze Too Comfycush - Nâu - 44', 24, 10, 6, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-nau.png', 1),

		(N'Vans Cruze Too Comfycush - Xanh lá - 39', 24, 7, 1, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-xanh-la.png', 1),
		(N'Vans Cruze Too Comfycush - Xanh lá - 40', 24, 7, 2, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-xanh-la.png', 1),
		(N'Vans Cruze Too Comfycush - Xanh lá - 41', 24, 7, 3, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-xanh-la.png', 1),
		(N'Vans Cruze Too Comfycush - Xanh lá - 42', 24, 7, 4, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-xanh-la.png', 1),
		(N'Vans Cruze Too Comfycush - Xanh lá - 43', 24, 7, 5, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-xanh-la.png', 1),
		(N'Vans Cruze Too Comfycush - Xanh lá - 44', 24, 7, 6, 50, 2600000, 3100000, 'vans-cruze-too-comfycush-xanh-la.png', 1),

		(N'Vans SK8 Hi - Đen - 39', 25, 1, 1, 50, 2800000, 3300000, 'vans-sk8-hi-den.png', 1),
		(N'Vans SK8 Hi - Đen - 40', 25, 1, 2, 50, 2800000, 3300000, 'vans-sk8-hi-den.png', 1),
		(N'Vans SK8 Hi - Đen - 41', 25, 1, 3, 50, 2800000, 3300000, 'vans-sk8-hi-den.png', 1),
		(N'Vans SK8 Hi - Đen - 42', 25, 1, 4, 50, 2800000, 3300000, 'vans-sk8-hi-den.png', 1),
		(N'Vans SK8 Hi - Đen - 43', 25, 1, 5, 50, 2800000, 3300000, 'vans-sk8-hi-den.png', 1),
		(N'Vans SK8 Hi - Đen - 44', 25, 1, 6, 50, 2800000, 3300000, 'vans-sk8-hi-den.png', 1);