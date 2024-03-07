--問題7-2
create table carFee (
	carcode char(3),
	carmodelname varchar(20),
	price integer
);

create table carRental (
	rentalID char(4),
	carcode char(3),
	rentalDays integer
);
