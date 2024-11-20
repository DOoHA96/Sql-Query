SELECT Makes.Make , COUNT(*) as numberOfVehicles
FROM     VehicleDetails INNER JOIN
         Makes ON VehicleDetails.MakeID = Makes.MakeID
		group by Makes.Make
		order by numberOfVehicles desc