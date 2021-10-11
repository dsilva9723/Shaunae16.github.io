--sql query one all content
Select * from Passengers 
  
--sql query two all content grouped by flightid
Select * from Passengers 
    Group by flightid

--sql query three Count flights per flight
Select count(*) from Passengers
    Group by flightid

--sql query four count flights per carrier
Select carrier, count(*) from Passengers
    Group by carrier

--sql query five Top-k airports in terms of flight count
Select origin, count(*) as AirportCount
from Passengers
    Group by origin
    Order by AirportCount DESC 

--sql query six count flights per aiport
Select origin, count(*) as AirportCount
from Passengers
    Group by origin
    Order by AirportCount DESC
    Limit 3 

--SQL query seven passenger origin airport faa
Select P.First_Name, P.Last_Name, a.faa
from Passengers P
join airports a on a.faa = P.origin

--SQL query eight passenger destination airport faa
Select P.First_Name, P.Last_Name, a.faa
from Passengers P
join airports a on a.faa = P.destination

--SQL query nine passenger origin flight airport name
Select P.First_Name, P.Last_Name, a.name as departure 
from Passengers P
join airports a on a.faa = P.origin

--SQL query ten passenger destination airport name 
Select P.First_Name, P.Last_Name, a.name as arrival
from Passengers P
join airports a on a.faa = P.destination

--SQL query eleven passenger flight duration 
Select P.First_Name, P.Last_Name, P.flightid, f.duration
from Passengers P
join flights f on f.id = P.flightid 