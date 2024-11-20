SELECT Makes.Make , COUNT(*) as numberOfVehicles
FROM     VehicleDetails INNER JOIN
         Makes ON VehicleDetails.MakeID = Makes.MakeID
		group by Makes.Make
		having COUNT(*) >20000
		order by numberOfVehicles desc

		--OR

select * from 
(
        SELECT Makes.Make , COUNT(*) as numberOfVehicles
        FROM     VehicleDetails INNER JOIN
			Makes ON VehicleDetails.MakeID = Makes.MakeID
        group by Makes.Make
)R1 
	where numberOfVehicles>20000