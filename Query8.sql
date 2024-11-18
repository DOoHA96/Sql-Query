SELECT Makes.Make, FuelTypes.FuelTypeName,count(VehicleDetails.ID) as NumoberOfVehicles 
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID INNER JOIN
                  FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
	where (VehicleDetails.Year BETWEEN 1950 AND 2000)
	group by Makes.Make,FuelTypeName
	order by Make