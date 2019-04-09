--GameStore instance
insert into GameStore values(11223344, 'Phoenix, Arizona', 'GeraStore1', 1);
insert into GameStore values(22335545, 'Gilbert, Arizona', 'GeraStore2', 1);
insert into GameStore values(65637467, 'Chandler, Arizona', 'GeraStore3', 0);
insert into GameStore values(77665543, 'Scottsdale, Arizona', 'GeraStore4', 0);
insert into GameStore values(66753556, 'Mesa, Arizona', 'GeraStore5', 1);

--OnlineStore instance
insert into OnlineStore values(123233322);
insert into OnlineStore values(987654321);
insert into OnlineStore values(234567891);
insert into OnlineStore values(123456789);
insert into OnlineStore values(453772637);

--Membership instance
insert into Membership values(123, 'Bronze');
insert into Membership values(342, 'Silver');
insert into Membership values(874, 'Gold');
insert into Membership values(432, 'Gold');
insert into Membership values(555, 'Silver');

--Payment instance
insert into Payment values(56256382, '2018-01-16', 'Debit', 20.99);
insert into Payment values(23434564, '2018-04-09', 'Credit', 200.00);
insert into Payment values(12345678, '2018-07-23', 'Debit', 100.00);
insert into Payment values(21662712, '2019-02-10', 'Credit', 150.00);
insert into Payment values(45366272, '2019-03-23', 'Credit', 50.00);


--Customer instance
insert into Customer values(231323232, 'Randy', 'Malone','M','45 2nd st N Phoenix, Arizona', 'Randym@gmail.com' ,123233322, 342, 23434564, null);
insert into Customer values(323774838, 'Mary', 'Harmon','F','5536 S Mesa dr, Arizona', 'MaryH@yahoo.com' , null, 123, 56256382, 11223344);
insert into Customer values(123456789, 'John', 'Smith','M','32 Oakland St, Texas', 'Johns33@gmail.com' , 987654321, 874, 45366272, null);
insert into Customer values(342661772, 'Rob ', 'Williams','M','65 S Arizona Ave, Arizona', 'Rob4@gmail.com' , null, 432, 21662712, 65637467);
insert into Customer values(878665256, 'Mike', 'Porter','M','122 W BeachSide Maimi, Florida', 'Mike6@yahoo.com' , 234567891, 432, 12345678, null);
insert into Customer values(667766557, 'Emily ', 'Owens','F','5536 S Mesa dr, Arizona', 'Emily@gmail.com' , null, 555, 56256382, 66753556);

--Inventory instance
insert into Inventory values(1232, 500, 11223344);
insert into Inventory values(3232, 1000, 22335545);
insert into Inventory values(2222, 1000, 65637467);
insert into Inventory values(2312, 1000, 77665543);
insert into Inventory values(3231, 1500, 66753556);

--Employee instance
insert into Employee values(3332233, 'Alex', 'Powel', null, 'Alex22@gmail.com', '34 N Phoenix, Arizona', 231323232);
insert into Employee values(6577273, 'Beverly', 'Poole', 'BP', 'Poole22@yahoo.com', '2020 E baseline, Arizona', 342661772);
insert into Employee values(8899288, 'Tammy', 'Terry', 'TT', 'TammyT@yahoo.com', '553 Ironwood, Arizona', 123456789);
insert into Employee values(1253647, 'Angie', 'Matthews', 'AA', 'Angie45@yahoo.com', '66 N Mesa dr, Arizona', 667766557);
insert into Employee values(9977783, 'Mary', 'Harmon', null, 'Harmon777@gmail.com', '33 N Phoenix, Arizona', 323774838);

--Game instances
insert into Game  values(1, 'NetherRealm Studios, QLOC, Shiver', 'Warner Bros. Interactive Entertainment Studio', '2019-04-23', 'Mortal Kombat 11', 59.99);
insert into Game  values(3, 'Visual Concepts', '2K Games, 2K Sports', '2018-08-07', 'NBA 2K19', 59.99);
insert into Game  values(4, ' Electronic Arts', 'EA Sports', '2018-08-28', 'Fifa 19', 59.99);
insert into Game  values(5, ' EA Tiburon', 'EA Sports', '2018-10-01', 'Madden 2018', 59.99);
insert into Game  values(6, ' EA DICE, Criterion Software', 'Electronic Arts', '2018-11-09', 'Battlefield V', 59.99);

--Game_Console instance
insert into Game_Console values('Play Station 4', 'Sony Interactive Entertainment', 200.00);
insert into Game_Console values('Xbox 360', 'Microsoft', 250.00);
insert into Game_Console values('Wii', 'Nintendo', 249.00);
insert into Game_Console values('TurboGrafx-16', 'NEC Home Electronics', 100.00);
insert into Game_Console values('Play Station 3', 'Sony Interactive Entertainment', 200.00);

--Figurine insatnces
insert into Figurine values('Batman', 'Comic');
insert into Figurine values('Spider man', 'Comic');
insert into Figurine values('Ironman', 'Action');
insert into Figurine values('BlackPander', 'Action');
insert into Figurine values('SuperMan', 'Action');

--Game_Accessory instances
insert into Game_Accessory values(1 , 'Controllers', 20.00);
insert into Game_Accessory values(2 , 'Headphones', 30.00);
insert into Game_Accessory values(3 , 'Cables', 10.00);
insert into Game_Accessory values(4 , 'Chargers', 15.00);
insert into Game_Accessory values(5 , 'Memory card', 20.00);

--shipping instance
insert into Shipping values(12323, 123233322, '45 2nd st N Phoenix, Arizona', '2018-03-08', 'Randym@gmail.com');
insert into Shipping values(22333, 987654321, '32 Oakland St, Texas', '2019-06-23', 'Johns33@gmail.com');
insert into Shipping values(12345, 987654321, '54 S Luis Ave, Florida', '2019-01-18', 'wendy@gmail.com');
insert into Shipping values(55663, 453772637, '3 garry Arizona', '2019-02-25', 'garry3@gmail.com');
insert into Shipping values(12328, 123233322, '45 2nd st N Phoenix, Arizona', '2019-03-22', 'Randym@gmail.com');


--WishList instance
insert into WishList values(1232, 987654321, '2018-11-03', 231323232, 'Xbox 360');
insert into WishList values(2222, 234567891, '2019-01-22', 123456789, 'PlayStation 4');
insert into WishList values(6626, 453772637, '2019-03-12', 231323232, 'PlayStation 4');
insert into WishList values(7755, 123233322, '2019-02-05', 667766557, 'PlayStation 4');
insert into WishList values(2332, 453772637, '2018-12-12', 667766557, 'Xbox 360');


--order instance
insert into Orders values(1232222, 123233322, 2, '2019-01-22');
insert into Orders values(6677755, 453772637, 1, '2018-11-02');
insert into Orders values(5536628, 234567891, 5, '2019-01-11');
insert into Orders values(2233445, 987654321, 1, '2019-02-06');
insert into Orders values(1111223, 453772637, 1, '2019-03-02');


--invoice instance
insert into Invoice values(2222122,56256382, 'Controllers', 1, 21.55);
insert into Invoice values(6677266,23434564, 'Xbox 360', 1, 210.00);
insert into Invoice values(7765255,12345678, 'TurboGrafx-16', 2, 210.00);
insert into Invoice values(5526663,56256382, 'Controllers', 1, 21.55);
insert into Invoice values(6677288,23434564, 'PlayStation 4', 2, 420.00);

--subscription instance
insert into Subscription values(321232, 123, 'Bronze', '2019-01-01');
insert into Subscription values(887755, 342, 'Silver', '2018-11-28');
insert into Subscription values(233443, 432, 'Gold', '2018-01-28');
insert into Subscription values(778826, 432, 'Gold', '2019-02-15');
insert into Subscription values(446677, 342, 'Silver', '2019-03-01');

--purchase instance
insert into Purchases values(231323232, 'Play Station 4', 1, 2, 'Batman' );
insert into Purchases values(667766557, 'Xbox 360', 3, 1, 'Spider man' );
insert into Purchases values(667766557, 'Play Station 4', 1, 4, 'Ironman' );
insert into Purchases values(878665256, 'Xbox 360', 1, 2, 'Spider man' );
insert into Purchases values(342661772, 'Xbox 360', 5, 3, 'SuperMan' );

























