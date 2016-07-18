# Write your MySQL query statement below
select c.date as 'Day',
    ROUND(
    (
    	select count(1)
    	from Trips
    	where Trips.Request_at=c.date and Trips.Status!='completed' and exists(
    		select * from Users where Users.Users_Id=Trips.Client_Id  and Users.Banned='No')
    )/(
    	select count(1)
    	from Trips
    	where Trips.Request_at=c.date and exists(
    		select * from Users where Users.Users_Id=Trips.Client_Id  and Users.Banned='No')
    )
    ,2) as 'Cancellation Rate'
    from (  select date
    		from (select '2013-10-01' as date union select'2013-10-02'union select'2013-10-03') a 
    		natural join
    		(select distinct Request_at as date from Trips) b 
    )c;
