select *,Cast(NumberOfVehicles as float)/Cast(TotalVehicles as float) from 
(
	select	 Makes.Make, count(*) as NumberOfVehicles,(Select count(VehicleDetails.ID)  
	from		VehicleDetails)As TotalVehicles from VehicleDetails INNER JOIN 
					Makes ON VehicleDetails.MakeID = Makes.MakeID
	where (VehicleDetails.Year between 1950 and 2000)
	group by Make
)R1
	order by NumberOfVehicles desc;