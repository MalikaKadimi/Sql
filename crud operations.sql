select * from zomato.user;
insert into zomato.user(id,name,email,street,location,city,state,pincode)
			values('3','malika','b@gmail.com','shanthi nagar','kukatpally','hyderabad','TS',534250); 

update zomato.user set city='palakol' where  id=3;

delete from zomato.user where id=3

