select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails
INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
where (VehicleDetails.Year between 1950 and 2000)
group by Make
having COUNT(*) >12000
order by NumberOfVehicles desc

--Other Solving Without Having

select * from 
(
	select Makes.Make, count(*) as NumberOfVehicles from VehicleDetails
	INNER JOIN Makes ON VehicleDetails.MakeID = Makes.MakeID
	where (VehicleDetails.Year between 1950 and 2000)
	group by Make
	
)R1
where NumberOfVehicles>12000
order by NumberOfVehicles desc;