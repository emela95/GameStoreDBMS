Create table GameStore(
	GameStoreID int not null,
	Location varchar(30) not null,
	Name varchar(15),
	OnlineStoreFlag int not null
);


Create table OnlineStore(
	OnlineStoreID int not null
);


Create table Membership(
	MembershipID int not null,
	Type varchar(10) not null
);

Create table Payment(
	PaymentID int not null,
	PaymentDate DATE not null,
	PaymentType varchar(10) not null,
	Amount DECIMAL(19,4)
);



Create table Customer(
	CustomerID int not null,
	Fname varchar(15),
	Lname varchar(15),
	Gender char(1),
	Address varchar(30),
	Email varchar(30),
	OnlineStoreID int,
	MembershipID int,
	PaymentID int not null,
	GameStoreID int
);


Create table Inventory(
	InventoryID int not null,
	Quantity int not null,
	Has_GameStoreID int not null
);




Create table Employee(
	EmpID int not null,
	Fname varchar(15) not null,
	Lname varchar(15) not null,
	minit char(2),
	Email varchar(30),
	Address varchar(30),
	CustomerID int not null
);



Create table Game(
	GameID int not null,
	Developer varchar(40),
	Publisher varchar(50),
	ReleaseDate DATE,
	Name varchar(20),
	Price DECIMAL(19,4)
);

Create table Game_Console(
	Name varchar(20) not null,
	Developer varchar(40),
	Price DECIMAL(19,4)
);


Create table Figurine(
	Name varchar(15) not null,
	Brand varchar(10)
);


Create table Game_Accessory(
	Type int not null,
	Name varchar(15) not null,
	Price DECIMAL(19,4)
);


Create table Shipping(
	ShippingID int not null,
	OnlineStoreID int not null,
	Location varchar(40),
	ShippingDate DATE,
	Email varchar(20)
);


Create table WishList(
	WishListID int not null,
	OnlineStoreID int not null,
	WDate DATE,
	CustomerID int not null,
	ProductName varchar(15)
);

Create table Orders(
	OrderID int not null,
	OnlineStoreID int not null,
	Quantity int not null,
	ShippingDate DATE
);


Create table Invoice(
	InvoiceID int not null,
	PaymentID int not null,
	Name varchar(15),
	OrderQty int,
	TotalAmountDue DECIMAL(19,4)
);


Create table Subscription(
	SubscriptionID int not null,
	MembershipID int not null,
	SubscriptionType varchar(15) not null,
	DueDate DATE
);


Create table Purchases(
	CustomerIDnum int not null,
	Game_ConsoleNames varchar(30),
	GameIDs int,
	Game_AccessoryType int,
	FigurineName varchar(20) 
);




Alter table GameStore Add primary key(GameStoreID);
Alter table OnlineStore Add primary key(OnlineStoreID);
Alter table Membership Add primary key(MembershipID);
Alter table Payment Add primary key(PaymentID);
Alter table Customer Add primary key(CustomerID);
Alter table Inventory Add primary key (InventoryID);
Alter table Employee Add primary key(EmpID);
Alter table Game Add primary key(GameID);
Alter table Game_Console Add primary key(Name);
Alter table Figurine Add primary key(Name);
Alter table Game_Accessory Add primary key(Type);
Alter table Shipping Add primary key(ShippingID, OnlineStoreID);
Alter table WishList Add primary key(WishListID, OnlineStoreID);
Alter table Orders Add primary key(OrderID, OnlineStoreID);
Alter table Invoice Add primary key(InvoiceID, PaymentID);
Alter table Subscription Add primary key(SubscriptionID, MembershipID);
Alter table Purchases Add primary key(CustomerIDnum, Game_ConsoleNames, GameIDs, Game_AccessoryType, FigurineName);

Alter table Inventory Add CONSTRAINT Inventory_fk0 foreign key(Has_GameStoreID) references GameStore(GameStoreID);
Alter table Customer Add CONSTRAINT Customer_fk0 foreign key(OnlineStoreID) references OnlineStore(OnlineStoreID);
Alter table Customer Add CONSTRAINT Customer_fk1 foreign key(MembershipID) references Membership(MembershipID);
Alter table Customer Add CONSTRAINT Customer_fk2 foreign key(PaymentID) references Payment(PaymentID);
Alter table Customer Add CONSTRAINT Customer_fk3 foreign key(GameStoreID) references GameStore(GameStoreID);
Alter table Employee Add CONSTRAINT Employee_fk0 foreign key(CustomerID) references Customer(CustomerID);
Alter table Shipping Add CONSTRAINT Shipping_fk0 foreign key(OnlineStoreID) references OnlineStore(OnlineStoreID);
Alter table WishList Add CONSTRAINT WishList_fk0 foreign key(OnlineStoreID) references OnlineStore(OnlineStoreID);
Alter table Orders Add CONSTRAINT Order_fk0 foreign key(OnlineStoreID) references OnlineStore(OnlineStoreID);
Alter table Invoice Add CONSTRAINT Invoice_fk0 foreign key(PaymentID) references Payment(PaymentID);
Alter table Subscription Add CONSTRAINT Subscription_fk0 foreign key(MembershipID) references Membership(MembershipID);
Alter table Purchases Add CONSTRAINT Purchases_fk0 foreign key(CustomerIDnum) references Customer(CustomerID);
Alter table Purchases Add CONSTRAINT Purchases_fk1 foreign key(Game_ConsoleNames) references Game_Console(Name);
Alter table Purchases Add CONSTRAINT Purchases_fk2 foreign key(GameIDs) references Game(GameID);
Alter table Purchases Add CONSTRAINT Purchases_fk3 foreign key(Game_AccessoryType) references Game_Accessory(Type);
Alter table Purchases Add CONSTRAINT Purchases_fk4 foreign key(FigurineName) references Figurine(Name);



































