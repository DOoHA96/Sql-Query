select count(*) as TotalMakesRunsOnGas
from 
(
SELECT distinct Makes.Make, FuelTypes.FuelTypeName
FROM     VehicleDetails INNER JOIN
                  Makes ON VehicleDetails.MakeID = Makes.MakeID INNER JOIN
                  FuelTypes ON VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
where (FuelTypes.FuelTypeName='GAS')
)R1 